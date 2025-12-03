@interface PBFGenericDisplayContext
+ (id)displayContextForDisplayConfiguration:(id)configuration;
+ (id)displayContextForDisplayIdentifier:(id)identifier;
+ (id)displayContextForPersistenceIdentifier:(id)identifier;
+ (id)displayContextForScreen:(id)screen;
+ (id)displayContextForScreen:(id)screen traitCollection:(id)collection;
+ (id)genericDisplayContextWithDisplayContext:(id)context;
+ (id)mainScreen;
+ (id)mainScreenDisplayContextsForKnownOrientations;
+ (id)mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles:(id)styles;
- (BOOL)geometryIsEqualTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDisplayContext:(id)context;
- (CGRect)pbf_frame;
- (CGRect)pbf_referenceBounds;
- (NSString)description;
- (NSString)pbf_displayContextPersistenceIdentifier;
- (PBFGenericDisplayContext)displayContextWithUpdatedAccessibilityContrast:(int64_t)contrast;
- (PBFGenericDisplayContext)displayContextWithUpdatedInterfaceOrientation:(int64_t)orientation;
- (PBFGenericDisplayContext)displayContextWithUpdatedSignificantEventsCounter:(unint64_t)counter;
- (PBFGenericDisplayContext)displayContextWithUpdatedUserInterfaceStyle:(int64_t)style;
- (PBFGenericDisplayContext)initWithBounds:(CGRect)bounds scale:(double)scale interfaceOrientation:(int64_t)orientation sigEventsCounter:(unint64_t)counter userInterfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast;
- (unint64_t)hash;
@end

@implementation PBFGenericDisplayContext

+ (id)mainScreen
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v4 = [self displayContextForScreen:mainScreen];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  _windowInterfaceOrientation = [keyWindow _windowInterfaceOrientation];

  if (_windowInterfaceOrientation <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = _windowInterfaceOrientation;
  }

  v9 = [v4 displayContextWithUpdatedInterfaceOrientation:v8];

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  keyWindow2 = [mEMORY[0x277D75128]2 keyWindow];
  traitCollection = [keyWindow2 traitCollection];

  if (traitCollection)
  {
    mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
    keyWindow3 = [mEMORY[0x277D75128]3 keyWindow];
    traitCollection2 = [keyWindow3 traitCollection];
    v16 = PBFUserInterfaceStyleFromUIUserInterfaceStyle([traitCollection2 userInterfaceStyle]);

    pbf_userInterfaceStyle = [v9 pbf_userInterfaceStyle];
    if (v16)
    {
      if (v16 != pbf_userInterfaceStyle)
      {
        v18 = [v9 displayContextWithUpdatedUserInterfaceStyle:v16];

        v9 = v18;
      }
    }
  }

  return v9;
}

+ (id)mainScreenDisplayContextsForKnownOrientations
{
  mainScreen = [self mainScreen];
  v3 = objc_opt_new();
  v4 = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  _windowInterfaceOrientation = [keyWindow _windowInterfaceOrientation];

  if (v4)
  {
    v8 = [mainScreen displayContextWithUpdatedInterfaceOrientation:v4];
    [v3 addObject:v8];
  }

  if (_windowInterfaceOrientation)
  {
    v9 = _windowInterfaceOrientation == v4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [mainScreen displayContextWithUpdatedInterfaceOrientation:v4];
    [v3 addObject:v10];
  }

  return v3;
}

+ (id)mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles:(id)styles
{
  v22 = *MEMORY[0x277D85DE8];
  stylesCopy = styles;
  mainScreenDisplayContextsForKnownOrientations = [self mainScreenDisplayContextsForKnownOrientations];
  if (stylesCopy)
  {
    v6 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(stylesCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = mainScreenDisplayContextsForKnownOrientations;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __96__PBFGenericDisplayContext_mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles___block_invoke;
          v14[3] = &unk_2782C9378;
          v15 = v6;
          v16 = v12;
          [stylesCopy enumerateIndexesUsingBlock:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    mainScreenDisplayContextsForKnownOrientations = [v6 array];
  }

  return mainScreenDisplayContextsForKnownOrientations;
}

void __96__PBFGenericDisplayContext_mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayContextWithUpdatedUserInterfaceStyle:a2];
  [v2 addObject:v3];
}

+ (id)displayContextForScreen:(id)screen
{
  displayConfiguration = [screen displayConfiguration];
  v5 = [self displayContextForDisplayConfiguration:displayConfiguration];

  return v5;
}

+ (id)displayContextForScreen:(id)screen traitCollection:(id)collection
{
  screenCopy = screen;
  collectionCopy = collection;
  traitCollection = collectionCopy;
  if (screenCopy)
  {
    if (collectionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [PBFGenericDisplayContext displayContextForScreen:a2 traitCollection:self];
  if (!traitCollection)
  {
LABEL_3:
    traitCollection = [screenCopy traitCollection];
  }

LABEL_4:
  v10 = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  v11 = objc_allocWithZone(self);
  [screenCopy _referenceBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [screenCopy scale];
  v21 = v20;
  v22 = PBFUserInterfaceStyleFromUIUserInterfaceStyle([traitCollection userInterfaceStyle]);
  v23 = [v11 initWithBounds:v10 scale:0 interfaceOrientation:v22 sigEventsCounter:PBFAccessibilityContrastFromUIAccessibilityContrast(objc_msgSend(traitCollection userInterfaceStyle:"accessibilityContrast")) accessibilityContrast:{v13, v15, v17, v19, v21}];

  return v23;
}

+ (id)displayContextForDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(PBFGenericDisplayContext *)a2 displayContextForDisplayIdentifier:self];
  }

  pui_sharedDisplayMonitor = [MEMORY[0x277D0AD38] pui_sharedDisplayMonitor];
  v7 = [pui_sharedDisplayMonitor configurationForIdentity:identifierCopy];
  v8 = [self displayContextForDisplayConfiguration:v7];

  return v8;
}

+ (id)displayContextForDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [(PBFGenericDisplayContext *)a2 displayContextForDisplayConfiguration:self];
  }

  v6 = MEMORY[0x277D759A0];
  identity = [configurationCopy identity];
  v8 = [v6 _screenWithFBSDisplayIdentity:identity];

  v9 = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  traitCollection = [v8 traitCollection];
  v11 = objc_allocWithZone(self);
  [configurationCopy bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [configurationCopy scale];
  v21 = v20;
  v22 = PBFUserInterfaceStyleFromUIUserInterfaceStyle([traitCollection userInterfaceStyle]);
  v23 = [v11 initWithBounds:v9 scale:0 interfaceOrientation:v22 sigEventsCounter:PBFAccessibilityContrastFromUIAccessibilityContrast(objc_msgSend(traitCollection userInterfaceStyle:"accessibilityContrast")) accessibilityContrast:{v13, v15, v17, v19, v21}];

  return v23;
}

+ (id)displayContextForPersistenceIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (displayContextForPersistenceIdentifier__onceToken != -1)
  {
    +[PBFGenericDisplayContext displayContextForPersistenceIdentifier:];
  }

  v29 = identifierCopy;
  v4 = [identifierCopy componentsSeparatedByString:{@"]-", self}];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  unsignedIntegerValue = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v11)
  {
    unsignedIntegerValue2 = 0;
    v15 = 0.0;
    unsignedIntegerValue4 = 0;
    unsignedIntegerValue3 = -1;
    goto LABEL_26;
  }

  v12 = v11;
  unsignedIntegerValue2 = 0;
  v14 = *v33;
  unsignedIntegerValue4 = 0;
  unsignedIntegerValue3 = -1;
  v15 = 0.0;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v32 + 1) + 8 * i);
      if ([v17 hasPrefix:@"b"])
      {
        v18 = [v17 substringFromIndex:1];
        v39 = CGRectFromString(v18);
        x = v39.origin.x;
        y = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;
      }

      else
      {
        if ([v17 hasPrefix:@"s"])
        {
          v19 = displayContextForPersistenceIdentifier__numberFormatter;
          v18 = [v17 substringFromIndex:1];
          v20 = [v19 numberFromString:v18];
          [v20 doubleValue];
          v15 = v21;
        }

        else if ([v17 hasPrefix:@"o"])
        {
          v22 = displayContextForPersistenceIdentifier__numberFormatter;
          v18 = [v17 substringFromIndex:1];
          v20 = [v22 numberFromString:v18];
          unsignedIntegerValue = [v20 unsignedIntegerValue];
        }

        else if ([v17 hasPrefix:@"ui"])
        {
          v23 = displayContextForPersistenceIdentifier__numberFormatter;
          v18 = [v17 substringFromIndex:2];
          v20 = [v23 numberFromString:v18];
          unsignedIntegerValue2 = [v20 unsignedIntegerValue];
        }

        else if ([v17 hasPrefix:@"ax"])
        {
          v24 = displayContextForPersistenceIdentifier__numberFormatter;
          v18 = [v17 substringFromIndex:2];
          v20 = [v24 numberFromString:v18];
          unsignedIntegerValue3 = [v20 unsignedIntegerValue];
        }

        else
        {
          if (![v17 hasPrefix:@"s"])
          {
            continue;
          }

          v25 = displayContextForPersistenceIdentifier__numberFormatter;
          v18 = [v17 substringFromIndex:1];
          v20 = [v25 numberFromString:v18];
          unsignedIntegerValue4 = [v20 unsignedIntegerValue];
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v12);
LABEL_26:

  v26 = [objc_alloc(objc_opt_class()) initWithBounds:unsignedIntegerValue scale:unsignedIntegerValue4 interfaceOrientation:unsignedIntegerValue2 sigEventsCounter:unsignedIntegerValue3 userInterfaceStyle:x accessibilityContrast:{y, width, height, v15}];

  return v26;
}

void __67__PBFGenericDisplayContext_displayContextForPersistenceIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = displayContextForPersistenceIdentifier__numberFormatter;
  displayContextForPersistenceIdentifier__numberFormatter = v0;

  v2 = displayContextForPersistenceIdentifier__numberFormatter;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
}

+ (id)genericDisplayContextWithDisplayContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = contextCopy;
  }

  else
  {
    v8 = [self alloc];
    [contextCopy pbf_referenceBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [contextCopy pbf_scale];
    v7 = [v8 initWithBounds:objc_msgSend(contextCopy scale:"pbf_interfaceOrientation") interfaceOrientation:objc_msgSend(contextCopy sigEventsCounter:"pbf_significantEventsCounter") userInterfaceStyle:objc_msgSend(contextCopy accessibilityContrast:{"pbf_userInterfaceStyle"), objc_msgSend(contextCopy, "pbf_accessibilityContrast"), v10, v12, v14, v16, v17}];
  }

  v18 = v7;

  return v18;
}

- (PBFGenericDisplayContext)initWithBounds:(CGRect)bounds scale:(double)scale interfaceOrientation:(int64_t)orientation sigEventsCounter:(unint64_t)counter userInterfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (CGRectIsEmpty(bounds))
  {
    [PBFGenericDisplayContext initWithBounds:a2 scale:? interfaceOrientation:? sigEventsCounter:? userInterfaceStyle:? accessibilityContrast:?];
  }

  if (scale <= 0.0)
  {
    [PBFGenericDisplayContext initWithBounds:a2 scale:? interfaceOrientation:? sigEventsCounter:? userInterfaceStyle:? accessibilityContrast:?];
  }

  v20.receiver = self;
  v20.super_class = PBFGenericDisplayContext;
  result = [(PBFGenericDisplayContext *)&v20 init];
  if (result)
  {
    result->_referenceBounds.origin.x = x;
    result->_referenceBounds.origin.y = y;
    result->_referenceBounds.size.width = width;
    result->_referenceBounds.size.height = height;
    result->_scale = scale;
    result->_significantEventsCounter = counter;
    result->_userInterfaceStyle = style;
    result->_accessibilityContrast = contrast;
    result->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
    result->_interfaceOrientation = orientation;
  }

  return result;
}

- (CGRect)pbf_frame
{
  [(PBFGenericDisplayContext *)self pbf_referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PBFGenericDisplayContext *)self pbf_interfaceOrientation];
  IsLandscape = BSInterfaceOrientationIsLandscape();
  v12 = v8 < v10;
  if ((IsLandscape & v12) != 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if ((IsLandscape & v12) != 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v8;
  }

  v15 = v4;
  v16 = v6;
  result.size.height = v13;
  result.size.width = v14;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (unint64_t)hash
{
  result = self->_cachedHash;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    builder = [MEMORY[0x277CF0C40] builder];
    v5 = [builder appendInteger:self->_interfaceOrientation];
    v6 = [builder appendInteger:self->_userInterfaceStyle];
    v7 = [builder appendInteger:self->_accessibilityContrast];
    v8 = [builder appendCGRect:{self->_referenceBounds.origin.x, self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height}];
    v9 = [builder appendDouble:self->_scale];
    self->_cachedHash = [builder hash];

    return self->_cachedHash;
  }

  return result;
}

- (NSString)pbf_displayContextPersistenceIdentifier
{
  pbf_displayContextPersistenceIdentifier = self->_pbf_displayContextPersistenceIdentifier;
  if (!pbf_displayContextPersistenceIdentifier)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = NSStringFromCGRect(self->_referenceBounds);
    v6 = [v4 stringWithFormat:@"b[%@]-s[%f]-o[%lu]-ui[%lu]-ax[%lu]-s[%lu]", v5, *&self->_scale, self->_interfaceOrientation, self->_userInterfaceStyle, self->_accessibilityContrast, self->_significantEventsCounter];
    v7 = self->_pbf_displayContextPersistenceIdentifier;
    self->_pbf_displayContextPersistenceIdentifier = v6;

    pbf_displayContextPersistenceIdentifier = self->_pbf_displayContextPersistenceIdentifier;
  }

  v8 = pbf_displayContextPersistenceIdentifier;

  return v8;
}

- (PBFGenericDisplayContext)displayContextWithUpdatedSignificantEventsCounter:(unint64_t)counter
{
  if (self->_significantEventsCounter == counter)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_allocWithZone(objc_opt_class()) initWithBounds:self->_interfaceOrientation scale:counter interfaceOrientation:self->_userInterfaceStyle sigEventsCounter:self->_accessibilityContrast userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return selfCopy;
}

- (PBFGenericDisplayContext)displayContextWithUpdatedUserInterfaceStyle:(int64_t)style
{
  if (self->_userInterfaceStyle == style)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_allocWithZone(objc_opt_class()) initWithBounds:self->_interfaceOrientation scale:self->_significantEventsCounter interfaceOrientation:style sigEventsCounter:self->_accessibilityContrast userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return selfCopy;
}

- (PBFGenericDisplayContext)displayContextWithUpdatedAccessibilityContrast:(int64_t)contrast
{
  if (self->_accessibilityContrast == contrast)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_allocWithZone(objc_opt_class()) initWithBounds:self->_interfaceOrientation scale:self->_significantEventsCounter interfaceOrientation:self->_userInterfaceStyle sigEventsCounter:contrast userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return selfCopy;
}

- (PBFGenericDisplayContext)displayContextWithUpdatedInterfaceOrientation:(int64_t)orientation
{
  if (self->_interfaceOrientation == orientation)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_allocWithZone(objc_opt_class()) initWithBounds:orientation scale:self->_significantEventsCounter interfaceOrientation:self->_userInterfaceStyle sigEventsCounter:self->_accessibilityContrast userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v7 = objc_opt_respondsToSelector();

      if ((v7 & 1) == 0)
      {
        v6 = 0;
        goto LABEL_8;
      }
    }

    v6 = [(PBFGenericDisplayContext *)self isEqualToDisplayContext:equalCopy];
  }

LABEL_8:

  return v6;
}

- (BOOL)isEqualToDisplayContext:(id)context
{
  contextCopy = context;
  if (contextCopy == self)
  {
    v8 = 1;
  }

  else
  {
    [(PBFGenericDisplayContext *)self pbf_scale];
    [(PBFGenericDisplayContext *)contextCopy pbf_scale];
    if (BSFloatEqualToFloat() && ([(PBFGenericDisplayContext *)self pbf_referenceBounds], [(PBFGenericDisplayContext *)contextCopy pbf_referenceBounds], BSRectEqualToRect()) && (v5 = [(PBFGenericDisplayContext *)self pbf_accessibilityContrast], v5 == [(PBFGenericDisplayContext *)contextCopy pbf_accessibilityContrast]) && (v6 = [(PBFGenericDisplayContext *)self pbf_userInterfaceStyle], v6 == [(PBFGenericDisplayContext *)contextCopy pbf_userInterfaceStyle]))
    {
      pbf_interfaceOrientation = [(PBFGenericDisplayContext *)self pbf_interfaceOrientation];
      v8 = pbf_interfaceOrientation == [(PBFGenericDisplayContext *)contextCopy pbf_interfaceOrientation];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)geometryIsEqualTo:(id)to
{
  toCopy = to;
  [(PBFGenericDisplayContext *)self pbf_scale];
  [toCopy pbf_scale];
  if (BSFloatEqualToFloat())
  {
    [(PBFGenericDisplayContext *)self pbf_referenceBounds];
    [toCopy pbf_referenceBounds];
    v5 = BSRectEqualToRect();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = BSInterfaceOrientationToString(self->_interfaceOrientation);
  [v3 appendString:v4 withName:@"interfaceOrientation"];

  v5 = NSStringFromPBFUserInterfaceStyle(self->_userInterfaceStyle);
  [v3 appendString:v5 withName:@"userInterfaceStyle"];

  [(PBFGenericDisplayContext *)self pbf_referenceBounds];
  v6 = [v3 appendRect:@"bounds" withName:?];
  [(PBFGenericDisplayContext *)self pbf_frame];
  v7 = [v3 appendRect:@"frame" withName:?];
  [(PBFGenericDisplayContext *)self pbf_scale];
  v8 = [v3 appendFloat:@"scale" withName:?];
  build = [v3 build];

  return build;
}

- (CGRect)pbf_referenceBounds
{
  x = self->_referenceBounds.origin.x;
  y = self->_referenceBounds.origin.y;
  width = self->_referenceBounds.size.width;
  height = self->_referenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (void)displayContextForScreen:(uint64_t)a1 traitCollection:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBFDisplayContext.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
}

+ (void)displayContextForDisplayIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBFDisplayContext.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
}

+ (void)displayContextForDisplayConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBFDisplayContext.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
}

- (void)initWithBounds:(const char *)a1 scale:interfaceOrientation:sigEventsCounter:userInterfaceStyle:accessibilityContrast:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"scale > 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFDisplayContext.m";
    v9 = 1024;
    v10 = 155;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithBounds:(const char *)a1 scale:interfaceOrientation:sigEventsCounter:userInterfaceStyle:accessibilityContrast:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!CGRectIsEmpty(bounds)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFDisplayContext.m";
    v9 = 1024;
    v10 = 154;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end