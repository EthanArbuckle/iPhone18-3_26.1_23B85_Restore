@interface SBIcon
+ (SBIcon)genericApplicationIcon;
+ (id)backgroundGenerationQueue;
+ (id)backgroundGenericGenerationQueue;
+ (id)fallbackGenericIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
+ (id)genericIconImageWithInfo:(SBIconImageInfo *)info;
+ (id)genericIconLayerViewWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
+ (id)iconImageFromUnmaskedImage:(id)image info:(SBIconImageInfo *)info;
+ (id)iconLayerViewForApplicationWithBundleIdentifier:(id)identifier iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority;
+ (id)makeEmptyIconLayerViewWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority;
+ (id)makeIconLayerFromImage:(id)image;
+ (unsigned)qosClassForPriority:(int64_t)priority;
+ (void)configureIconContentLayer:(id)layer iconImageInfo:(SBIconImageInfo *)info options:(unint64_t)options;
+ (void)genericIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options completionHandler:(id)handler;
+ (void)performBackgroundGenerationActivityWithPriority:(int64_t)priority usingBlock:(id)block;
+ (void)performBackgroundGenerationActivityWithQOSClass:(unsigned int)class usingBlock:(id)block;
+ (void)setMissingIconLayerOnLayerView:(id)view iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (BOOL)allowsGlass;
- (BOOL)canBeAddedToSubfolder;
- (BOOL)canGenerateIconsInBackground;
- (BOOL)consumePrefetchedRealIconLayerContentsMatchingInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options consumptionHandler:(id)handler;
- (BOOL)containsNodeIdentifier:(id)identifier;
- (BOOL)hasIconImage;
- (BOOL)isGridSizeClassAllowed:(id)allowed;
- (BOOL)isPlaceholder;
- (BOOL)setIconContentLayerForIconLayerView:(id)view possibleContentLayer:(id)layer imageGeneration:(unint64_t)generation iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options skipIfMissing:(BOOL)missing;
- (BOOL)setIconContentLayerForIconLayerView:(id)view possibleContentLayer:(id)layer imageGeneration:(unint64_t)generation iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options skipIfMissing:(BOOL)missing animated:(BOOL)self0;
- (BOOL)takeIconLayerIfDesired:(id)desired;
- (NSDictionary)imageLoadContext;
- (NSString)automationID;
- (NSString)displayName;
- (NSString)uninstallAlertCancelTitle;
- (NSString)uninstallAlertConfirmTitle;
- (NSString)uninstallAlertTitle;
- (SBIcon)init;
- (SBIconDelegate)delegate;
- (id)_sbhIconLibraryCollationString;
- (id)accessoryTextForLocation:(id)location;
- (id)badgeNumberOrString;
- (id)containedNodeIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)fallbackLoadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)genericIconImageWithInfo:(SBIconImageInfo *)info;
- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance masked:(BOOL)masked;
- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection masked:(BOOL)masked;
- (id)iconImageIdentityWithImageAppearance:(id)appearance masked:(BOOL)masked;
- (id)iconImageIdentityWithTraitCollection:(id)collection masked:(BOOL)masked;
- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)iconLayerViewWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority;
- (id)iconLibraryQueryingFilterStrings;
- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path;
- (id)loadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)loadingIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)makeEmptyIconLayerViewWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority;
- (id)makeIconLayerFromImage:(id)image;
- (id)makeIconLayerFromImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)nodeDescriptionWithPrefix:(id)prefix;
- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes;
- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options priority:(int64_t)priority reason:(id)reason prefetchBehavior:(int64_t)behavior;
- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection imageOptions:(unint64_t)options priority:(int64_t)priority reason:(id)reason prefetchBehavior:(int64_t)behavior;
- (id)succinctDescription;
- (int64_t)accessoryTypeForLocation:(id)location;
- (int64_t)badgeValue;
- (int64_t)labelAccessoryType;
- (int64_t)localizedCompareDisplayNames:(id)names;
- (unint64_t)adjustImageOptions:(unint64_t)options;
- (void)_notifyAccessoriesDidUpdate;
- (void)_notifyImageDidUpdate;
- (void)_notifyLaunchEnabledDidChange;
- (void)_notifyProgressDidChange;
- (void)_setPropertiesFromIcon:(id)icon;
- (void)addObserver:(id)observer;
- (void)applyTreatmentsToMiniGridCellView:(id)view;
- (void)archivableStateDidChange;
- (void)completeUninstall;
- (void)enumerateObserversUsingBlock:(id)block;
- (void)launchFromLocation:(id)location context:(id)context;
- (void)loadIconLayerInBackgroundWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options priority:(int64_t)priority completionHandler:(id)handler;
- (void)loadRealIconContentLayerForLayerView:(id)view iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority;
- (void)loadRealIconContentLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority completionHandler:(id)handler;
- (void)prefetchAssertionDidInvalidate:(id)invalidate;
- (void)reloadIconImage;
- (void)removeObserver:(id)observer;
- (void)setBadge:(id)badge;
- (void)setGridSizeClass:(id)class;
- (void)setLoadingIconLayerOnLayerView:(id)view iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (void)setOverrideBadgeNumberOrString:(id)string;
- (void)updateIconLayerView:(id)view traitCollection:(id)collection options:(unint64_t)options animated:(BOOL)animated completionHandler:(id)handler;
- (void)updateImageInIconLayerView:(id)view;
@end

@implementation SBIcon

+ (id)backgroundGenerationQueue
{
  if (backgroundGenerationQueue_onceToken != -1)
  {
    +[SBIcon backgroundGenerationQueue];
  }

  v3 = backgroundGenerationQueue_backgroundGenerationWorkloop;

  return v3;
}

- (BOOL)isPlaceholder
{
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)backgroundGenericGenerationQueue
{
  if (backgroundGenericGenerationQueue_onceToken != -1)
  {
    +[SBIcon backgroundGenericGenerationQueue];
  }

  v3 = backgroundGenericGenerationQueue_backgroundGenerationQueue;

  return v3;
}

- (void)_notifyAccessoriesDidUpdate
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconAccessoriesDidUpdate:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyLaunchEnabledDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconLaunchEnabledDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyProgressDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconProgressDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyImageDidUpdate
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconImageDidUpdate:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (SBIcon)init
{
  v10.receiver = self;
  v10.super_class = SBIcon;
  v2 = [(SBIcon *)&v10 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_gridSizeClass, @"SBHIconGridSizeClassDefault");
    v3->_imageGeneration = 1;
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@:%p>", v6, v3];
    logIdentifier = v3->_logIdentifier;
    v3->_logIdentifier = v7;
  }

  return v3;
}

- (void)reloadIconImage
{
  v13 = *MEMORY[0x1E69E9840];
  [(SBIcon *)self setImageGeneration:[(SBIcon *)self imageGeneration]+ 1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_iconLayerViews;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBIcon *)self updateImageInIconLayerView:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(SBIcon *)self _notifyImageDidUpdate];
}

uint64_t __35__SBIcon_backgroundGenerationQueue__block_invoke()
{
  backgroundGenerationQueue_backgroundGenerationWorkloop = dispatch_workloop_create("com.apple.SpringBoardHome.SBIconBackgroundLayerGenerationQueue");

  return MEMORY[0x1EEE66BB8]();
}

- (id)badgeNumberOrString
{
  overrideBadgeNumberOrString = self->_overrideBadgeNumberOrString;
  if (!overrideBadgeNumberOrString)
  {
    overrideBadgeNumberOrString = self->_badgeNumberOrString;
  }

  v3 = overrideBadgeNumberOrString;

  return v3;
}

- (id)iconLibraryQueryingFilterStrings
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationAppLibrarySearch"];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_sbhIconLibraryCollationString
{
  v2 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationAppLibrarySearch"];
  v3 = v2;
  if (!v2)
  {
    v2 = &stru_1F3D472A8;
  }

  localizedUppercaseString = [(__CFString *)v2 localizedUppercaseString];

  return localizedUppercaseString;
}

- (void)applyTreatmentsToMiniGridCellView:(id)view
{
  v9[1] = *MEMORY[0x1E69E9840];
  layer = [view layer];
  if ([(SBIcon *)self isTimedOut]|| [(SBIcon *)self progressState])
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    cGColor = [v6 CGColor];
    [v5 setValue:cGColor forKey:*MEMORY[0x1E6979AA0]];

    v9[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [layer setFilters:v8];
  }

  else
  {
    [layer setFilters:MEMORY[0x1E695E0F0]];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 _setPropertiesFromIcon:self];
    v6 = v5;
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v9 = observerCopy;
  if (observerCopy)
  {
    if (![(NSHashTable *)self->_observers containsObject:observerCopy])
    {
      observers = self->_observers;
      v6 = v9;
      if (!observers)
      {
        weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = weakObjectsHashTable;

        v6 = v9;
        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v6];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ cannot be observed by a nil object", objc_opt_class()}];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)enumerateObserversUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects copy];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = 0;
      blockCopy[2](blockCopy, v11, &v12);
      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)containsNodeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nodeIdentifier = [(SBIcon *)self nodeIdentifier];
  v6 = [nodeIdentifier isEqual:identifierCopy];

  return v6;
}

- (id)containedNodeIdentifiers
{
  v2 = MEMORY[0x1E695DFA8];
  nodeIdentifier = [(SBIcon *)self nodeIdentifier];
  v4 = [v2 setWithObject:nodeIdentifier];

  return v4;
}

- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  nodeIdentifier = [(SBIcon *)self nodeIdentifier];
  v9 = [nodeIdentifier isEqual:identifierCopy];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFA8] setWithObject:pathCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes
{
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:indexes + 1];
  [v5 insertObject:self atIndex:0];

  return v5;
}

- (id)nodeDescriptionWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (!prefixCopy)
  {
    prefixCopy = [MEMORY[0x1E696AEC0] string];
  }

  nodeIdentifier = [(SBIcon *)self nodeIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", prefixCopy, nodeIdentifier];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationNone"];
    v8 = [v7 stringWithFormat:@"%@%@-%p (%@)", prefixCopy, v9, nodeIdentifier, v10];
  }

  return v8;
}

- (NSString)displayName
{
  v2 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationNone"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F3D472A8;
  }

  v5 = v4;

  return &v4->isa;
}

- (int64_t)localizedCompareDisplayNames:(id)names
{
  namesCopy = names;
  v5 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationNone"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F3D472A8;
  }

  v7 = [namesCopy displayNameForLocation:@"SBIconLocationNone"];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F3D472A8;
  }

  v9 = [(__CFString *)v6 localizedStandardCompare:v8];

  return v9;
}

+ (id)iconImageFromUnmaskedImage:(id)image info:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v26[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v11 = objc_alloc(MEMORY[0x1E69A8988]);
  cGImage = [imageCopy CGImage];
  [imageCopy scale];
  v13 = [v11 initWithCGImage:cGImage scale:?];
  v14 = objc_alloc(MEMORY[0x1E69A8A00]);
  v26[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v16 = [v14 initWithImages:v15];

  v17 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v9 scale:{v8, v7}];
  [v17 setShape:1];
  v18 = [v16 prepareImageForDescriptor:v17];
  v19 = v18;
  if (v18)
  {
    v20 = MEMORY[0x1E69DCAB8];
    cGImage2 = [v18 CGImage];
    [v19 scale];
    v22 = [v20 imageWithCGImage:cGImage2 scale:0 orientation:?];
  }

  else
  {
    v22 = imageCopy;
  }

  v23 = v22;
  if ([imageCopy flipsForRightToLeftLayoutDirection])
  {
    imageFlippedForRightToLeftLayoutDirection = [v23 imageFlippedForRightToLeftLayoutDirection];

    v23 = imageFlippedForRightToLeftLayoutDirection;
  }

  return v23;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  imageLoadContext = [(SBIcon *)self imageLoadContext];
  v17 = [(SBIcon *)self iconImageWithInfo:infoCopy traitCollection:imageLoadContext context:collection options:v13, v12, v11, v10];

  return v17;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  collectionCopy = collection;
  if ((context & 2) != 0 && ![(SBIcon *)self supportsCachedIconLookup])
  {
    v19 = 0;
  }

  else
  {
    v19 = [(SBIcon *)self makeIconImageWithInfo:infoCopy traitCollection:collectionCopy context:context options:v15, v14, v13, v12];
    v20 = [(SBIcon *)self iconImageIdentityWithIconImageInfo:infoCopy traitCollection:context & 1 masked:v15, v14, v13, v12];
    [v19 sbh_setIconImageIdentity:v20];
  }

  return v19;
}

- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  imageLoadContext = [(SBIcon *)self imageLoadContext];
  v17 = [(SBIcon *)self makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:infoCopy traitCollection:imageLoadContext context:collection options:v13, v12, v11, v10];

  return v17;
}

- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  if ((context & 0x10) != 0)
  {
    [SBIcon makeIconLayerFromImageWithInfo:"makeIconLayerFromImageWithInfo:traitCollection:context:options:" traitCollection:info context:collection options:?];
  }

  else
  {
    [SBIcon makeIconLayerWithInfo:"makeIconLayerWithInfo:traitCollection:context:options:" traitCollection:info context:collection options:?];
  }
  v6 = ;

  return v6;
}

- (id)makeIconLayerFromImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v7 = [(SBIcon *)self iconImageWithInfo:info traitCollection:collection context:context options:options];
  if (v7)
  {
    v8 = [(SBIcon *)self makeIconLayerFromImage:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)makeIconLayerFromImage:(id)image
{
  imageCopy = image;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v5 = objc_alloc_init(MEMORY[0x1E6979398]);
  v6 = v5;
  if (isMainThread)
  {
    [v5 setContents:{objc_msgSend(imageCopy, "CGImage")}];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__SBIcon_makeIconLayerFromImage___block_invoke;
    v8[3] = &unk_1E8088F18;
    v9 = v5;
    v10 = imageCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  return v6;
}

uint64_t __33__SBIcon_makeIconLayerFromImage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) CGImage];

  return [v1 setContents:v2];
}

- (id)makeIconLayerFromImage:(id)image
{
  imageCopy = image;
  v4 = [objc_opt_class() makeIconLayerFromImage:imageCopy];

  return v4;
}

- (id)iconLayerViewWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  v18 = [(SBIcon *)self makeEmptyIconLayerViewWithInfo:infoCopy traitCollection:collection options:options priority:v15, v14, v13, v12];
  [(SBIcon *)self loadRealIconContentLayerForLayerView:v18 iconImageInfo:infoCopy traitCollection:collection options:options priority:v15, v14, v13, v12];

  return v18;
}

+ (id)iconLayerViewForApplicationWithBundleIdentifier:(id)identifier iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  infoCopy = info;
  identifierCopy = identifier;
  v20 = [[SBHImageOnlyApplication alloc] initWithBundleIdentifier:identifierCopy];

  v21 = [[SBHApplicationIcon alloc] initWithApplication:v20];
  v22 = [(SBIcon *)v21 iconLayerViewWithInfo:infoCopy traitCollection:collection options:options priority:v16, v15, v14, v13];

  return v22;
}

+ (id)makeEmptyIconLayerViewWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority
{
  v13 = v9;
  v14 = v8;
  v15 = v7;
  if (collection)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = MEMORY[0x1E69DD1B8];
  infoCopy = info;
  iconCopy = icon;
  v21 = [v18 sbh_iconImageStyleConfigurationFromTraitCollection:infoCopy];
  v22 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:infoCopy];

  v23 = [[SBHIconLayerView alloc] initWithIcon:iconCopy iconImageInfo:v21 iconImageStyleConfiguration:v22 iconImageAppearance:collection iconImageOptions:v15, v14, v13, v17];
  [(SBHIconLayerView *)v23 setIconImageLoadPriority:options];

  return v23;
}

- (id)makeEmptyIconLayerViewWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  v18 = [objc_opt_class() makeEmptyIconLayerViewWithIcon:self iconImageInfo:infoCopy traitCollection:collection options:options priority:{v15, v14, v13, v12}];

  iconLayerViews = self->_iconLayerViews;
  if (!iconLayerViews)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v21 = self->_iconLayerViews;
    self->_iconLayerViews = weakObjectsHashTable;

    iconLayerViews = self->_iconLayerViews;
  }

  [(NSHashTable *)iconLayerViews addObject:v18];

  return v18;
}

- (BOOL)setIconContentLayerForIconLayerView:(id)view possibleContentLayer:(id)layer imageGeneration:(unint64_t)generation iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options skipIfMissing:(BOOL)missing
{
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  viewCopy = view;
  layerCopy = layer;
  infoCopy = info;
  iconImageAppearance = [viewCopy iconImageAppearance];
  iconContentType = [viewCopy iconContentType];
  contentVisibility = [viewCopy contentVisibility];
  if (iconContentType == 2 || !contentVisibility)
  {
    isOpaque = [iconImageAppearance isOpaque];
  }

  else
  {
    isOpaque = 0;
  }

  LOBYTE(v32) = isOpaque;
  v30 = [(SBIcon *)self setIconContentLayerForIconLayerView:viewCopy possibleContentLayer:layerCopy imageGeneration:generation iconImageInfo:infoCopy traitCollection:collection options:options skipIfMissing:v19 animated:v18, v17, v16, v32];

  return v30;
}

- (BOOL)setIconContentLayerForIconLayerView:(id)view possibleContentLayer:(id)layer imageGeneration:(unint64_t)generation iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options skipIfMissing:(BOOL)missing animated:(BOOL)self0
{
  optionsCopy = options;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  viewCopy = view;
  layerCopy = layer;
  infoCopy = info;
  if (layerCopy)
  {
    [objc_opt_class() configureIconContentLayer:layerCopy iconImageInfo:collection options:{v20, v19, v18, v17}];
    [(SBIcon *)self takeIconLayerIfDesired:viewCopy];
    [viewCopy setIconContentLayer:layerCopy generation:generation type:2 animated:missing];
  }

  else if ((optionsCopy & 1) == 0)
  {
    [objc_opt_class() setMissingIconLayerOnLayerView:viewCopy iconImageInfo:infoCopy traitCollection:collection options:{v20, v19, v18, v17}];
  }

  return layerCopy != 0;
}

- (void)loadRealIconContentLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority completionHandler:(id)handler
{
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  infoCopy = info;
  priorityCopy = priority;
  if (![(SBIcon *)self hasIconImage])
  {
    goto LABEL_8;
  }

  if ([(SBIcon *)self consumePrefetchedRealIconLayerContentsMatchingInfo:infoCopy traitCollection:collection options:priorityCopy consumptionHandler:v17, v16, v15, v14])
  {
    goto LABEL_14;
  }

  if ((collection & 2) == 0 || [(SBIcon *)self supportsCachedIconLookup])
  {
    imageLoadContext = [(SBIcon *)self imageLoadContext];
    v21 = [(SBIcon *)self adjustImageOptions:collection];
    if (![(SBIcon *)self canGenerateIconsInBackground]|| (v21 & 0x20) != 0)
    {
      v22 = [(SBIcon *)self makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:infoCopy traitCollection:imageLoadContext context:v21 options:v17, v16, v15, v14];
      if (priorityCopy)
      {
        priorityCopy[2](priorityCopy, v22, [(SBIcon *)self imageGeneration]);
      }
    }

    else
    {
      [(SBIcon *)self loadIconLayerInBackgroundWithInfo:infoCopy traitCollection:imageLoadContext context:v21 options:options priority:priorityCopy completionHandler:v17, v16, v15, v14];
    }
  }

  else
  {
LABEL_8:
    if (priorityCopy)
    {
      priorityCopy[2](priorityCopy, 0, 0);
    }
  }

LABEL_14:
}

- (unint64_t)adjustImageOptions:(unint64_t)options
{
  if ([(SBIcon *)self supportsIconLayers])
  {
    return options;
  }

  else
  {
    return options | 0x10;
  }
}

- (NSDictionary)imageLoadContext
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(SBIcon *)self prepareImageLoadContext:v3];
  v4 = [v3 copy];

  return v4;
}

- (void)loadIconLayerInBackgroundWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options priority:(int64_t)priority completionHandler:(id)handler
{
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  infoCopy = info;
  collectionCopy = collection;
  priorityCopy = priority;
  imageGeneration = [(SBIcon *)self imageGeneration];
  v25 = objc_opt_class();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __103__SBIcon_loadIconLayerInBackgroundWithInfo_traitCollection_context_options_priority_completionHandler___block_invoke;
  v29[3] = &unk_1E8090E50;
  v33 = v19;
  v34 = v18;
  v35 = v17;
  v36 = v16;
  v29[4] = self;
  v30 = infoCopy;
  contextCopy = context;
  v38 = imageGeneration;
  optionsCopy = options;
  v31 = collectionCopy;
  v32 = priorityCopy;
  v26 = priorityCopy;
  v27 = collectionCopy;
  v28 = infoCopy;
  [v25 performBackgroundGenerationActivityWithPriority:options usingBlock:v29];
}

void __103__SBIcon_loadIconLayerInBackgroundWithInfo_traitCollection_context_options_priority_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:*(a1 + 40) traitCollection:*(a1 + 48) context:*(a1 + 96) options:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v3 = v2;
  BSDispatchMain();
}

uint64_t __103__SBIcon_loadIconLayerInBackgroundWithInfo_traitCollection_context_options_priority_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) imageGeneration];
  if (*(a1 + 40) && *(a1 + 72) != v2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 112);
    v9 = *(a1 + 120);
    v10 = *(a1 + 64);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    v13 = *(a1 + 96);
    v14 = *(a1 + 104);

    return [v5 loadIconLayerInBackgroundWithInfo:v6 traitCollection:v7 context:v8 options:v9 priority:v10 completionHandler:{v11, v12, v13, v14}];
  }

  else
  {
    result = *(a1 + 64);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

- (void)loadRealIconContentLayerForLayerView:(id)view iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options priority:(int64_t)priority
{
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  viewCopy = view;
  infoCopy = info;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __94__SBIcon_loadRealIconContentLayerForLayerView_iconImageInfo_traitCollection_options_priority___block_invoke;
  v23[3] = &unk_1E8090E78;
  v23[4] = self;
  v21 = viewCopy;
  v24 = v21;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  v30 = v14;
  v22 = infoCopy;
  collectionCopy = collection;
  v25 = v22;
  v26 = &v32;
  [(SBIcon *)self loadRealIconContentLayerWithInfo:v22 traitCollection:collection options:options priority:v23 completionHandler:v17, v16, v15, v14];
  if ((v33[3] & 1) == 0)
  {
    [(SBIcon *)self setLoadingIconLayerOnLayerView:v21 iconImageInfo:v22 traitCollection:collection options:v17, v16, v15, v14];
  }

  _Block_object_dispose(&v32, 8);
}

uint64_t __94__SBIcon_loadRealIconContentLayerForLayerView_iconImageInfo_traitCollection_options_priority___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) setIconContentLayerForIconLayerView:*(a1 + 40) possibleContentLayer:a2 imageGeneration:a3 iconImageInfo:*(a1 + 48) traitCollection:*(a1 + 96) options:0 skipIfMissing:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

+ (void)configureIconContentLayer:(id)layer iconImageInfo:(SBIconImageInfo *)info options:(unint64_t)options
{
  infoCopy = info;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  layerCopy = layer;
  [layerCopy setContentsScale:v11];
  [layerCopy setBounds:{0.0, 0.0, v13, v12}];
  if (infoCopy)
  {
    [layerCopy setCornerRadius:v10];
    [layerCopy setCornerCurve:*MEMORY[0x1E69796E8]];
  }
}

- (void)updateIconLayerView:(id)view traitCollection:(id)collection options:(unint64_t)options animated:(BOOL)animated completionHandler:(id)handler
{
  viewCopy = view;
  collectionCopy = collection;
  handlerCopy = handler;
  [viewCopy iconImageInfo];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  iconImageLoadPriority = [viewCopy iconImageLoadPriority];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__SBIcon_updateIconLayerView_traitCollection_options_animated_completionHandler___block_invoke;
  v27[3] = &unk_1E8090EA0;
  v27[4] = self;
  v28 = viewCopy;
  v31 = v16;
  v32 = v18;
  v33 = v20;
  v34 = v22;
  optionsCopy = options;
  animatedCopy = animated;
  v29 = collectionCopy;
  v30 = handlerCopy;
  v24 = handlerCopy;
  v25 = collectionCopy;
  v26 = viewCopy;
  [(SBIcon *)self loadRealIconContentLayerWithInfo:v25 traitCollection:options options:iconImageLoadPriority priority:v27 completionHandler:v16, v18, v20, v22];
}

uint64_t __81__SBIcon_updateIconLayerView_traitCollection_options_animated_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v6) = *(a1 + 104);
  [*(a1 + 32) setIconContentLayerForIconLayerView:*(a1 + 40) possibleContentLayer:a2 imageGeneration:a3 iconImageInfo:*(a1 + 48) traitCollection:*(a1 + 96) options:0 skipIfMissing:*(a1 + 64) animated:{*(a1 + 72), *(a1 + 80), *(a1 + 88), v6}];
  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection imageOptions:(unint64_t)options priority:(int64_t)priority reason:(id)reason prefetchBehavior:(int64_t)behavior
{
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  v21 = MEMORY[0x1E69DD1B8];
  priorityCopy = priority;
  v23 = [v21 sbh_iconImageAppearanceFromTraitCollection:info];
  v24 = [(SBIcon *)self prefetchIconLayerWithInfo:v23 imageAppearance:collection imageOptions:options priority:priorityCopy reason:reason prefetchBehavior:v19, v18, v17, v16];

  return v24;
}

- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options priority:(int64_t)priority reason:(id)reason prefetchBehavior:(int64_t)behavior
{
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  infoCopy = info;
  priorityCopy = priority;
  if ([objc_opt_class() allowsPrefetch])
  {
    v23 = [[SBIconPrefetchAssertion alloc] initWithIcon:self iconImageInfo:infoCopy imageAppearance:options priority:appearance imageOptions:priorityCopy reason:reason prefetchBehavior:v19, v18, v17, v16];
    iconPrefetchAssertions = self->_iconPrefetchAssertions;
    if (!iconPrefetchAssertions)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v26 = self->_iconPrefetchAssertions;
      self->_iconPrefetchAssertions = weakObjectsHashTable;

      iconPrefetchAssertions = self->_iconPrefetchAssertions;
    }

    [(NSHashTable *)iconPrefetchAssertions addObject:v23];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)consumePrefetchedRealIconLayerContentsMatchingInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options consumptionHandler:(id)handler
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v40 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  optionsCopy = options;
  if ((collection & 8) != 0)
  {
    v31 = 0;
  }

  else
  {
    v19 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:infoCopy];
    allObjects = [(NSHashTable *)self->_iconPrefetchAssertions allObjects];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = [allObjects countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v33 = optionsCopy;
      v34 = infoCopy;
      v23 = 0;
      v24 = 0;
      v25 = *v36;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(allObjects);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          v28 = [v27 priorityForProvidingContentLayerIfMatchesImageInfo:v19 imageAppearance:collection imageOptions:{v15, v14, v13, v12, v33}];
          if (v28 > v24)
          {
            v29 = v28;
            v30 = v27;

            v23 = v30;
            v24 = v29;
          }
        }

        v22 = [allObjects countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);
      if (v23)
      {
        optionsCopy = v33;
        v31 = [v23 consumeContentLayerIfMatchesImageInfo:v19 imageAppearance:collection imageOptions:v33 consumptionHandler:{v15, v14, v13, v12}];
      }

      else
      {
        v31 = 0;
        optionsCopy = v33;
      }

      infoCopy = v34;
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (void)prefetchAssertionDidInvalidate:(id)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  [(NSHashTable *)self->_iconPrefetchAssertions removeObject:invalidateCopy];
  if ([invalidateCopy state] == 1)
  {
    [(NSHashTable *)self->_iconPrefetchAssertions allObjects];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * v9) takeIconLayerFromPrefetchAssertionIfDesired:{invalidateCopy, v10}])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

+ (void)performBackgroundGenerationActivityWithPriority:(int64_t)priority usingBlock:(id)block
{
  blockCopy = block;
  [self performBackgroundGenerationActivityWithQOSClass:objc_msgSend(objc_opt_class() usingBlock:{"qosClassForPriority:", priority), blockCopy}];
}

+ (void)performBackgroundGenerationActivityWithQOSClass:(unsigned int)class usingBlock:(id)block
{
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, block);
  v5 = os_transaction_create();
  backgroundGenerationQueue = [objc_opt_class() backgroundGenerationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SBIcon_performBackgroundGenerationActivityWithQOSClass_usingBlock___block_invoke;
  v9[3] = &unk_1E80898D8;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(backgroundGenerationQueue, v9);
}

+ (unsigned)qosClassForPriority:(int64_t)priority
{
  if ((priority + 2) > 4)
  {
    return 0;
  }

  else
  {
    return dword_1BEE887E8[priority + 2];
  }
}

uint64_t __42__SBIcon_backgroundGenericGenerationQueue__block_invoke()
{
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  v1 = backgroundGenericGenerationQueue_backgroundGenerationQueue;
  backgroundGenericGenerationQueue_backgroundGenerationQueue = SerialWithQoS;

  return MEMORY[0x1EEE66BB8](SerialWithQoS, v1);
}

- (void)updateImageInIconLayerView:(id)view
{
  viewCopy = view;
  iconImageAppearance = [viewCopy iconImageAppearance];
  v5 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:iconImageAppearance];
  [(SBIcon *)self updateIconLayerView:viewCopy traitCollection:v5 options:1 animated:1 completionHandler:0];
}

- (BOOL)takeIconLayerIfDesired:(id)desired
{
  v16 = *MEMORY[0x1E69E9840];
  desiredCopy = desired;
  if ([desiredCopy iconContentType] == 2)
  {
    iconIdentifier = [desiredCopy iconIdentifier];
    [(NSHashTable *)self->_iconPrefetchAssertions allObjects];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v14 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v11 + 1) + 8 * i) takeIconLayerIfDesired:{desiredCopy, v11}])
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)genericIconImageWithInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = objc_opt_class();

  return [v11 genericIconImageWithInfo:{v10, v9, v8, v7}];
}

+ (id)genericIconImageWithInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v28 = *MEMORY[0x1E69E9840];
  genericApplicationIcon = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v10 scale:{v9, v8}];
  v13 = [genericApplicationIcon prepareImageForDescriptor:v12];
  v14 = v13;
  if (!v13 || (v15 = MEMORY[0x1E69DCAB8], v16 = [v13 CGImage], objc_msgSend(v14, "scale"), objc_msgSend(v15, "imageWithCGImage:scale:orientation:", v16, 0), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = SBLogIcon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = genericApplicationIcon;
      v26 = 2112;
      v27 = v12;
      _os_log_error_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_ERROR, "Could not create generic application icon via IconServices. isImage=%@, genericIcon=%@, imageDescriptor=%@", buf, 0x20u);
    }

    v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __35__SBIcon_genericIconImageWithInfo___block_invoke;
    v21[3] = &__block_descriptor_64_e5_v8__0l;
    *&v21[4] = v10;
    *&v21[5] = v9;
    *&v21[6] = v8;
    v21[7] = v7;
    v17 = [MEMORY[0x1E69DCAB8] sbf_imageFromBGRAContextWithSize:v19 scale:1 colorSpace:0 withAlpha:v21 pool:0 drawing:v10 encapsulation:{v9, v8}];
    CGColorSpaceRelease(v19);
  }

  return v17;
}

void __35__SBIcon_genericIconImageWithInfo___block_invoke(double *a1)
{
  v2 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a1[4], a1[5], a1[7]}];
  [v2 addClip];

  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v3 set];

  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = 0;
  v7 = 0;

  UIRectFill(*&v6);
}

+ (id)genericIconLayerViewWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  genericApplicationIcon = [self genericApplicationIcon];
  v17 = [genericApplicationIcon iconLayerViewWithInfo:infoCopy traitCollection:collection options:{v13, v12, v11, v10}];

  return v17;
}

+ (void)genericIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options completionHandler:(id)handler
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  optionsCopy = options;
  v19 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:infoCopy];
  backgroundGenericGenerationQueue = [objc_opt_class() backgroundGenericGenerationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SBIcon_genericIconLayerWithInfo_traitCollection_options_completionHandler___block_invoke;
  block[3] = &unk_1E8090EE8;
  v28 = v15;
  v29 = v14;
  v30 = v13;
  v31 = v12;
  collectionCopy = collection;
  selfCopy = self;
  v25 = v19;
  v26 = infoCopy;
  v27 = optionsCopy;
  v21 = optionsCopy;
  v22 = infoCopy;
  v23 = v19;
  dispatch_async(backgroundGenericGenerationQueue, block);
}

void __77__SBIcon_genericIconLayerWithInfo_traitCollection_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v3 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:*(a1 + 56) scale:{*(a1 + 64), *(a1 + 72)}];
  v4 = SBHIconServicesOptionsForImageOptions(*(a1 + 88));
  v5 = v4 | 4;
  v6 = SBHIconServicesImageForDescriptor(v2, v3, v4 | 4);
  v7 = SBHGetIconLayerFromIconServicesImage(v6, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 32), v5);
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v8 = v6;
  v9 = v7;
  BSDispatchMain();
}

uint64_t __77__SBIcon_genericIconLayerWithInfo_traitCollection_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = SBHGetIconLayerFromIconServicesImage(*(a1 + 40), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 48), *(a1 + 104));
    if (!v2)
    {
      v2 = [*(a1 + 112) fallbackGenericIconLayerWithInfo:*(a1 + 56) traitCollection:*(a1 + 120) options:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    }
  }

  v3 = v2;
  v4 = *(a1 + 64);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x1EEE66BB8](v4, v3);
}

+ (id)fallbackGenericIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  v16 = objc_alloc_init(MEMORY[0x1E6979398]);
  v17 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:infoCopy];
  if (SBHIconImageAppearanceTypeIsDark([v17 appearanceType]))
  {
    [MEMORY[0x1E69DC888] darkGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v18 = ;
  [v16 setBackgroundColor:{objc_msgSend(v18, "CGColor")}];
  [self configureIconContentLayer:v16 iconImageInfo:collection options:{v13, v12, v11, v10}];
  SBHIconServicesAddDebugLayerOverlayWithTraitCollection(v16, infoCopy, 0, v13, v12, v11, v10);

  return v16;
}

+ (SBIcon)genericApplicationIcon
{
  if (genericApplicationIcon_onceToken != -1)
  {
    +[SBIcon genericApplicationIcon];
  }

  v3 = genericApplicationIcon_icon;

  return v3;
}

uint64_t __32__SBIcon_genericApplicationIcon__block_invoke()
{
  v0 = objc_alloc_init(SBHGenericApplicationIcon);
  v1 = genericApplicationIcon_icon;
  genericApplicationIcon_icon = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)setLoadingIconLayerOnLayerView:(id)view iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  viewCopy = view;
  infoCopy = info;
  hasIconImage = [(SBIcon *)self hasIconImage];
  if ((collection & 4) == 0 && hasIconImage)
  {
    v19 = [(SBIcon *)self loadingIconLayerWithInfo:infoCopy traitCollection:collection options:v15, v14, v13, v12];
    [viewCopy setIconContentLayer:v19 generation:0 type:1 animated:0];
  }
}

- (id)loadingIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v8 = v7;
  if (v5 < 20.0 && v6 < 20.0)
  {
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v12 setCornerRadius:v8];
    [v12 setCornerCurve:*MEMORY[0x1E69796E8]];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:0.3];
    [v12 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];
  }

  else
  {
    v11 = [(SBIcon *)self loadingIconImageWithInfo:info traitCollection:collection options:options];
    v12 = [(SBIcon *)self makeIconLayerFromImage:v11];
  }

  return v12;
}

- (id)loadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  v16 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:infoCopy];
  placeholderIcon = [MEMORY[0x1E69A8A00] placeholderIcon];
  v18 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v13 scale:{v12, v11}];
  v19 = SBHIconServicesOptionsForImageOptions(collection);
  v20 = SBHIconServicesImageForDescriptor(placeholderIcon, v18, v19);
  v21 = SBHGetIconImageFromIconServicesImage(v20);
  if (!v21)
  {
    v21 = [(SBIcon *)self fallbackLoadingIconImageWithInfo:infoCopy traitCollection:collection options:v13, v12, v11, v10];
  }

  return v21;
}

- (id)fallbackLoadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  if ([(SBIconImageInfo *)info userInterfaceStyle]== 2)
  {
    v14 = 0.2;
    v15 = 0.6;
  }

  else
  {
    v14 = 0.75;
    v15 = 0.25;
  }

  v16 = [MEMORY[0x1E69DC888] colorWithWhite:v14 alpha:v15];
  v17 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v17 setScale:v11];
  v18 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v17 format:{v13, v12}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__SBIcon_fallbackLoadingIconImageWithInfo_traitCollection_options___block_invoke;
  v22[3] = &unk_1E808FA00;
  v24 = v13;
  v25 = v12;
  v26 = v11;
  v27 = v10;
  collectionCopy = collection;
  v23 = v16;
  v19 = v16;
  v20 = [v18 imageWithActions:v22];

  return v20;
}

void __67__SBIcon_fallbackLoadingIconImageWithInfo_traitCollection_options___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (*(a1 + 72))
  {
    v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, *(a1 + 40), *(a1 + 48), *(a1 + 64)}];
    [v5 addClip];
  }

  [*(a1 + 32) set];
  [v6 fillRect:0 blendMode:{0.0, 0.0, v3, v4}];
}

+ (void)setMissingIconLayerOnLayerView:(id)view iconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  viewCopy = view;
  infoCopy = info;
  hasIconImage = [self hasIconImage];
  if ((collection & 4) == 0 && hasIconImage && ![viewCopy iconContentType])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __79__SBIcon_setMissingIconLayerOnLayerView_iconImageInfo_traitCollection_options___block_invoke;
    v25 = &unk_1E8090F10;
    v20 = viewCopy;
    v26 = v20;
    v27 = &v28;
    [self genericIconLayerWithInfo:infoCopy traitCollection:collection options:&v22 completionHandler:{v15, v14, v13, v12}];
    if ((v29[3] & 1) == 0)
    {
      v21 = [self fallbackGenericIconLayerWithInfo:infoCopy traitCollection:collection options:{v15, v14, v13, v12, v22, v23, v24, v25}];
      [v20 setIconContentLayer:v21 generation:0 type:1 animated:0];
    }

    _Block_object_dispose(&v28, 8);
  }
}

void __79__SBIcon_setMissingIconLayerOnLayerView_iconImageInfo_traitCollection_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isDisplayingRealIconContent] & 1) == 0)
  {
    [*(a1 + 32) setIconContentLayer:v3 generation:0 type:1 animated:0];
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (BOOL)canGenerateIconsInBackground
{
  v2 = objc_opt_class();

  return [v2 canGenerateIconsInBackground];
}

- (BOOL)hasIconImage
{
  v2 = objc_opt_class();

  return [v2 hasIconImage];
}

- (BOOL)allowsGlass
{
  v2 = objc_opt_class();

  return [v2 allowsGlass];
}

- (id)iconImageIdentityWithTraitCollection:(id)collection masked:(BOOL)masked
{
  maskedCopy = masked;
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:collection];
  v7 = [(SBIcon *)self iconImageIdentityWithImageAppearance:v6 masked:maskedCopy];

  return v7;
}

- (id)iconImageIdentityWithImageAppearance:(id)appearance masked:(BOOL)masked
{
  maskedCopy = masked;
  appearanceCopy = appearance;
  v7 = [[SBHIconImageIdentity alloc] initWithIcon:self iconImageInfo:[(SBIcon *)self imageGeneration] imageGeneration:appearanceCopy imageAppearance:maskedCopy masked:0.0, 0.0, 0.0, 0.0];

  return v7;
}

- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)info traitCollection:(id)collection masked:(BOOL)masked
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:{info, collection, masked}];
  v16 = [(SBIcon *)self iconImageIdentityWithIconImageInfo:v15 imageAppearance:collection masked:v13, v12, v11, v10];

  return v16;
}

- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance masked:(BOOL)masked
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  v16 = [[SBHIconImageIdentity alloc] initWithIcon:self iconImageInfo:[(SBIcon *)self imageGeneration] imageGeneration:infoCopy imageAppearance:appearance masked:v13, v12, v11, v10];

  return v16;
}

- (void)setOverrideBadgeNumberOrString:(id)string
{
  stringCopy = string;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [stringCopy copy];
    overrideBadgeNumberOrString = self->_overrideBadgeNumberOrString;
    self->_overrideBadgeNumberOrString = v4;

    [(SBIcon *)self noteBadgeDidChange];
  }
}

- (int64_t)badgeValue
{
  if (self->_overrideBadgeNumberOrString)
  {
    overrideBadgeNumberOrString = self->_overrideBadgeNumberOrString;

    return [overrideBadgeNumberOrString integerValue];
  }

  else
  {
    badgeNumberOrString = [(SBIcon *)self badgeNumberOrString];
    integerValue = [badgeNumberOrString integerValue];

    return integerValue;
  }
}

- (id)accessoryTextForLocation:(id)location
{
  badgeNumberOrString = [(SBIcon *)self badgeNumberOrString];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = badgeNumberOrString;
  v6 = v5;
  v7 = v5;
  if (isKindOfClass)
  {
    if ([v5 integerValue] < 1)
    {
      v7 = 0;
    }

    else
    {
      sbf_cachedDecimalNumberFormatter = [MEMORY[0x1E696ADA0] sbf_cachedDecimalNumberFormatter];
      v7 = [sbf_cachedDecimalNumberFormatter stringFromNumber:v6];
    }
  }

  return v7;
}

- (int64_t)accessoryTypeForLocation:(id)location
{
  v3 = [(SBIcon *)self accessoryTextForLocation:location];
  v4 = v3 != 0;

  return v4;
}

- (void)setBadge:(id)badge
{
  badgeCopy = badge;
  if (([self->_badgeNumberOrString isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_badgeNumberOrString, badge);
    [(SBIcon *)self noteBadgeDidChange];
  }
}

- (int64_t)labelAccessoryType
{
  if ([(SBIcon *)self isTimedOut])
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (NSString)automationID
{
  v2 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationNone"];
  v3 = [@"BTN " stringByAppendingString:v2];

  return v3;
}

- (void)launchFromLocation:(id)location context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  contextCopy = context;
  delegate = [(SBIcon *)self delegate];
  v9 = SBLogIcon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    selfCopy = self;
    v12 = 2114;
    v13 = locationCopy;
    v14 = 2112;
    v15 = contextCopy;
    v16 = 2112;
    v17 = delegate;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "SBIcon %@ launchFromLocation:%{public}@ context:%@ delegate:%@", &v10, 0x2Au);
  }

  if (![(SBIcon *)self performLaunchFromLocation:locationCopy context:contextCopy])
  {
    [delegate icon:self launchFromLocation:locationCopy context:contextCopy];
  }
}

- (void)completeUninstall
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = SBLogIcon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Complete uninstall for icon: %@", &v4, 0xCu);
  }
}

- (NSString)uninstallAlertTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = SBHBundle();
  v5 = [v4 localizedStringForKey:@"UNINSTALL_ICON_TITLE_DELETE_WITH_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v6 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationNone"];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (NSString)uninstallAlertConfirmTitle
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"UNINSTALL_ICON_BUTTON_DELETE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (NSString)uninstallAlertCancelTitle
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"UNINSTALL_ICON_BUTTON_CANCEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (BOOL)canBeAddedToSubfolder
{
  gridSizeClass = [(SBIcon *)self gridSizeClass];
  if (gridSizeClass == @"SBHIconGridSizeClassDefault")
  {
    v5 = 1;
  }

  else
  {
    gridSizeClass2 = [(SBIcon *)self gridSizeClass];
    v5 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];
  }

  return v5;
}

- (void)setGridSizeClass:(id)class
{
  v19 = *MEMORY[0x1E69E9840];
  classCopy = class;
  v5 = classCopy;
  if (self->_gridSizeClass != classCopy && ![(NSString *)classCopy isEqualToString:?]&& [(SBIcon *)self isGridSizeClassAllowed:v5])
  {
    v6 = [(NSString *)v5 copy];
    gridSizeClass = self->_gridSizeClass;
    self->_gridSizeClass = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 iconGridSizeClassDidChange:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)isGridSizeClassAllowed:(id)allowed
{
  allowedCopy = allowed;
  supportedGridSizeClasses = [(SBIcon *)self supportedGridSizeClasses];
  v6 = [supportedGridSizeClasses containsGridSizeClass:allowedCopy];

  return v6;
}

- (void)archivableStateDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconArchivableStateDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_setPropertiesFromIcon:(id)icon
{
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  [(SBIcon *)self setGridSizeClass:gridSizeClass];

  -[SBIcon setImageGeneration:](self, "setImageGeneration:", [iconCopy imageGeneration]);
  badgeNumberOrString = [iconCopy badgeNumberOrString];
  [(SBIcon *)self setBadge:badgeNumberOrString];

  overrideBadgeNumberOrString = [iconCopy overrideBadgeNumberOrString];
  [(SBIcon *)self setOverrideBadgeNumberOrString:overrideBadgeNumberOrString];

  LODWORD(overrideBadgeNumberOrString) = [iconCopy isUninstalled];
  if (overrideBadgeNumberOrString)
  {

    [(SBIcon *)self setUninstalled];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIcon *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIcon *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  nodeIdentifier = [(SBIcon *)self nodeIdentifier];
  if (nodeIdentifier == self)
  {
    v7 = [v4 appendPointer:nodeIdentifier withName:@"nodeID"];
  }

  else
  {
    v6 = [v4 appendObject:nodeIdentifier withName:@"nodeID"];
  }

  if ([(SBIcon *)self isLeafIcon])
  {
    applicationBundleID = [(SBIcon *)self applicationBundleID];
    [v4 appendString:applicationBundleID withName:@"bundleID" skipIfEmpty:1];
  }

  gridSizeClass = [(SBIcon *)self gridSizeClass];
  v10 = gridSizeClass;
  if (gridSizeClass != @"SBHIconGridSizeClassDefault" && ([(__CFString *)gridSizeClass isEqualToString:?]& 1) == 0)
  {
    v11 = SBHStringForIconGridSizeClass(v10);
    [v4 appendString:v11 withName:@"gridSizeClass"];
  }

  return v4;
}

- (SBIconDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end