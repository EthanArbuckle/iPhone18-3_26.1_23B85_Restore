@interface PBFGenericDisplayContext
+ (id)displayContextForDisplayConfiguration:(id)a3;
+ (id)displayContextForDisplayIdentifier:(id)a3;
+ (id)displayContextForPersistenceIdentifier:(id)a3;
+ (id)displayContextForScreen:(id)a3;
+ (id)displayContextForScreen:(id)a3 traitCollection:(id)a4;
+ (id)genericDisplayContextWithDisplayContext:(id)a3;
+ (id)mainScreen;
+ (id)mainScreenDisplayContextsForKnownOrientations;
+ (id)mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles:(id)a3;
- (BOOL)geometryIsEqualTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDisplayContext:(id)a3;
- (CGRect)pbf_frame;
- (CGRect)pbf_referenceBounds;
- (NSString)description;
- (NSString)pbf_displayContextPersistenceIdentifier;
- (PBFGenericDisplayContext)displayContextWithUpdatedAccessibilityContrast:(int64_t)a3;
- (PBFGenericDisplayContext)displayContextWithUpdatedInterfaceOrientation:(int64_t)a3;
- (PBFGenericDisplayContext)displayContextWithUpdatedSignificantEventsCounter:(unint64_t)a3;
- (PBFGenericDisplayContext)displayContextWithUpdatedUserInterfaceStyle:(int64_t)a3;
- (PBFGenericDisplayContext)initWithBounds:(CGRect)a3 scale:(double)a4 interfaceOrientation:(int64_t)a5 sigEventsCounter:(unint64_t)a6 userInterfaceStyle:(int64_t)a7 accessibilityContrast:(int64_t)a8;
- (unint64_t)hash;
@end

@implementation PBFGenericDisplayContext

+ (id)mainScreen
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [a1 displayContextForScreen:v3];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 keyWindow];
  v7 = [v6 _windowInterfaceOrientation];

  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v4 displayContextWithUpdatedInterfaceOrientation:v8];

  v10 = [MEMORY[0x277D75128] sharedApplication];
  v11 = [v10 keyWindow];
  v12 = [v11 traitCollection];

  if (v12)
  {
    v13 = [MEMORY[0x277D75128] sharedApplication];
    v14 = [v13 keyWindow];
    v15 = [v14 traitCollection];
    v16 = PBFUserInterfaceStyleFromUIUserInterfaceStyle([v15 userInterfaceStyle]);

    v17 = [v9 pbf_userInterfaceStyle];
    if (v16)
    {
      if (v16 != v17)
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
  v2 = [a1 mainScreen];
  v3 = objc_opt_new();
  v4 = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 keyWindow];
  v7 = [v6 _windowInterfaceOrientation];

  if (v4)
  {
    v8 = [v2 displayContextWithUpdatedInterfaceOrientation:v4];
    [v3 addObject:v8];
  }

  if (v7)
  {
    v9 = v7 == v4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v2 displayContextWithUpdatedInterfaceOrientation:v4];
    [v3 addObject:v10];
  }

  return v3;
}

+ (id)mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 mainScreenDisplayContextsForKnownOrientations];
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
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
          [v4 enumerateIndexesUsingBlock:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v5 = [v6 array];
  }

  return v5;
}

void __96__PBFGenericDisplayContext_mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayContextWithUpdatedUserInterfaceStyle:a2];
  [v2 addObject:v3];
}

+ (id)displayContextForScreen:(id)a3
{
  v4 = [a3 displayConfiguration];
  v5 = [a1 displayContextForDisplayConfiguration:v4];

  return v5;
}

+ (id)displayContextForScreen:(id)a3 traitCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [PBFGenericDisplayContext displayContextForScreen:a2 traitCollection:a1];
  if (!v9)
  {
LABEL_3:
    v9 = [v7 traitCollection];
  }

LABEL_4:
  v10 = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  v11 = objc_allocWithZone(a1);
  [v7 _referenceBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v7 scale];
  v21 = v20;
  v22 = PBFUserInterfaceStyleFromUIUserInterfaceStyle([v9 userInterfaceStyle]);
  v23 = [v11 initWithBounds:v10 scale:0 interfaceOrientation:v22 sigEventsCounter:PBFAccessibilityContrastFromUIAccessibilityContrast(objc_msgSend(v9 userInterfaceStyle:"accessibilityContrast")) accessibilityContrast:{v13, v15, v17, v19, v21}];

  return v23;
}

+ (id)displayContextForDisplayIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PBFGenericDisplayContext *)a2 displayContextForDisplayIdentifier:a1];
  }

  v6 = [MEMORY[0x277D0AD38] pui_sharedDisplayMonitor];
  v7 = [v6 configurationForIdentity:v5];
  v8 = [a1 displayContextForDisplayConfiguration:v7];

  return v8;
}

+ (id)displayContextForDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PBFGenericDisplayContext *)a2 displayContextForDisplayConfiguration:a1];
  }

  v6 = MEMORY[0x277D759A0];
  v7 = [v5 identity];
  v8 = [v6 _screenWithFBSDisplayIdentity:v7];

  v9 = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  v10 = [v8 traitCollection];
  v11 = objc_allocWithZone(a1);
  [v5 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v5 scale];
  v21 = v20;
  v22 = PBFUserInterfaceStyleFromUIUserInterfaceStyle([v10 userInterfaceStyle]);
  v23 = [v11 initWithBounds:v9 scale:0 interfaceOrientation:v22 sigEventsCounter:PBFAccessibilityContrastFromUIAccessibilityContrast(objc_msgSend(v10 userInterfaceStyle:"accessibilityContrast")) accessibilityContrast:{v13, v15, v17, v19, v21}];

  return v23;
}

+ (id)displayContextForPersistenceIdentifier:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (displayContextForPersistenceIdentifier__onceToken != -1)
  {
    +[PBFGenericDisplayContext displayContextForPersistenceIdentifier:];
  }

  v29 = v3;
  v4 = [v3 componentsSeparatedByString:{@"]-", a1}];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v9 = PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v11)
  {
    v13 = 0;
    v15 = 0.0;
    v30 = 0;
    v31 = -1;
    goto LABEL_26;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v33;
  v30 = 0;
  v31 = -1;
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
          v9 = [v20 unsignedIntegerValue];
        }

        else if ([v17 hasPrefix:@"ui"])
        {
          v23 = displayContextForPersistenceIdentifier__numberFormatter;
          v18 = [v17 substringFromIndex:2];
          v20 = [v23 numberFromString:v18];
          v13 = [v20 unsignedIntegerValue];
        }

        else if ([v17 hasPrefix:@"ax"])
        {
          v24 = displayContextForPersistenceIdentifier__numberFormatter;
          v18 = [v17 substringFromIndex:2];
          v20 = [v24 numberFromString:v18];
          v31 = [v20 unsignedIntegerValue];
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
          v30 = [v20 unsignedIntegerValue];
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v12);
LABEL_26:

  v26 = [objc_alloc(objc_opt_class()) initWithBounds:v9 scale:v30 interfaceOrientation:v13 sigEventsCounter:v31 userInterfaceStyle:x accessibilityContrast:{y, width, height, v15}];

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

+ (id)genericDisplayContextWithDisplayContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v4;
  }

  else
  {
    v8 = [a1 alloc];
    [v4 pbf_referenceBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v4 pbf_scale];
    v7 = [v8 initWithBounds:objc_msgSend(v4 scale:"pbf_interfaceOrientation") interfaceOrientation:objc_msgSend(v4 sigEventsCounter:"pbf_significantEventsCounter") userInterfaceStyle:objc_msgSend(v4 accessibilityContrast:{"pbf_userInterfaceStyle"), objc_msgSend(v4, "pbf_accessibilityContrast"), v10, v12, v14, v16, v17}];
  }

  v18 = v7;

  return v18;
}

- (PBFGenericDisplayContext)initWithBounds:(CGRect)a3 scale:(double)a4 interfaceOrientation:(int64_t)a5 sigEventsCounter:(unint64_t)a6 userInterfaceStyle:(int64_t)a7 accessibilityContrast:(int64_t)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    [PBFGenericDisplayContext initWithBounds:a2 scale:? interfaceOrientation:? sigEventsCounter:? userInterfaceStyle:? accessibilityContrast:?];
  }

  if (a4 <= 0.0)
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
    result->_scale = a4;
    result->_significantEventsCounter = a6;
    result->_userInterfaceStyle = a7;
    result->_accessibilityContrast = a8;
    result->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
    result->_interfaceOrientation = a5;
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
    v4 = [MEMORY[0x277CF0C40] builder];
    v5 = [v4 appendInteger:self->_interfaceOrientation];
    v6 = [v4 appendInteger:self->_userInterfaceStyle];
    v7 = [v4 appendInteger:self->_accessibilityContrast];
    v8 = [v4 appendCGRect:{self->_referenceBounds.origin.x, self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height}];
    v9 = [v4 appendDouble:self->_scale];
    self->_cachedHash = [v4 hash];

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

- (PBFGenericDisplayContext)displayContextWithUpdatedSignificantEventsCounter:(unint64_t)a3
{
  if (self->_significantEventsCounter == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [objc_allocWithZone(objc_opt_class()) initWithBounds:self->_interfaceOrientation scale:a3 interfaceOrientation:self->_userInterfaceStyle sigEventsCounter:self->_accessibilityContrast userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return v3;
}

- (PBFGenericDisplayContext)displayContextWithUpdatedUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [objc_allocWithZone(objc_opt_class()) initWithBounds:self->_interfaceOrientation scale:self->_significantEventsCounter interfaceOrientation:a3 sigEventsCounter:self->_accessibilityContrast userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return v3;
}

- (PBFGenericDisplayContext)displayContextWithUpdatedAccessibilityContrast:(int64_t)a3
{
  if (self->_accessibilityContrast == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [objc_allocWithZone(objc_opt_class()) initWithBounds:self->_interfaceOrientation scale:self->_significantEventsCounter interfaceOrientation:self->_userInterfaceStyle sigEventsCounter:a3 userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return v3;
}

- (PBFGenericDisplayContext)displayContextWithUpdatedInterfaceOrientation:(int64_t)a3
{
  if (self->_interfaceOrientation == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [objc_allocWithZone(objc_opt_class()) initWithBounds:a3 scale:self->_significantEventsCounter interfaceOrientation:self->_userInterfaceStyle sigEventsCounter:self->_accessibilityContrast userInterfaceStyle:self->_referenceBounds.origin.x accessibilityContrast:{self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height, self->_scale}];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

    v6 = [(PBFGenericDisplayContext *)self isEqualToDisplayContext:v4];
  }

LABEL_8:

  return v6;
}

- (BOOL)isEqualToDisplayContext:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    [(PBFGenericDisplayContext *)self pbf_scale];
    [(PBFGenericDisplayContext *)v4 pbf_scale];
    if (BSFloatEqualToFloat() && ([(PBFGenericDisplayContext *)self pbf_referenceBounds], [(PBFGenericDisplayContext *)v4 pbf_referenceBounds], BSRectEqualToRect()) && (v5 = [(PBFGenericDisplayContext *)self pbf_accessibilityContrast], v5 == [(PBFGenericDisplayContext *)v4 pbf_accessibilityContrast]) && (v6 = [(PBFGenericDisplayContext *)self pbf_userInterfaceStyle], v6 == [(PBFGenericDisplayContext *)v4 pbf_userInterfaceStyle]))
    {
      v7 = [(PBFGenericDisplayContext *)self pbf_interfaceOrientation];
      v8 = v7 == [(PBFGenericDisplayContext *)v4 pbf_interfaceOrientation];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)geometryIsEqualTo:(id)a3
{
  v4 = a3;
  [(PBFGenericDisplayContext *)self pbf_scale];
  [v4 pbf_scale];
  if (BSFloatEqualToFloat())
  {
    [(PBFGenericDisplayContext *)self pbf_referenceBounds];
    [v4 pbf_referenceBounds];
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
  v9 = [v3 build];

  return v9;
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