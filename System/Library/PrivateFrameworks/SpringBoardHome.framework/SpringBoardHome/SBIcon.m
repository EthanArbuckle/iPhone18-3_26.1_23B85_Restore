@interface SBIcon
+ (SBIcon)genericApplicationIcon;
+ (id)backgroundGenerationQueue;
+ (id)backgroundGenericGenerationQueue;
+ (id)fallbackGenericIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
+ (id)genericIconImageWithInfo:(SBIconImageInfo *)a3;
+ (id)genericIconLayerViewWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
+ (id)iconImageFromUnmaskedImage:(id)a3 info:(SBIconImageInfo *)a4;
+ (id)iconLayerViewForApplicationWithBundleIdentifier:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7;
+ (id)makeEmptyIconLayerViewWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7;
+ (id)makeIconLayerFromImage:(id)a3;
+ (unsigned)qosClassForPriority:(int64_t)a3;
+ (void)configureIconContentLayer:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 options:(unint64_t)a5;
+ (void)genericIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
+ (void)performBackgroundGenerationActivityWithPriority:(int64_t)a3 usingBlock:(id)a4;
+ (void)performBackgroundGenerationActivityWithQOSClass:(unsigned int)a3 usingBlock:(id)a4;
+ (void)setMissingIconLayerOnLayerView:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6;
- (BOOL)allowsGlass;
- (BOOL)canBeAddedToSubfolder;
- (BOOL)canGenerateIconsInBackground;
- (BOOL)consumePrefetchedRealIconLayerContentsMatchingInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 consumptionHandler:(id)a6;
- (BOOL)containsNodeIdentifier:(id)a3;
- (BOOL)hasIconImage;
- (BOOL)isGridSizeClassAllowed:(id)a3;
- (BOOL)isPlaceholder;
- (BOOL)setIconContentLayerForIconLayerView:(id)a3 possibleContentLayer:(id)a4 imageGeneration:(unint64_t)a5 iconImageInfo:(SBIconImageInfo *)a6 traitCollection:(id)a7 options:(unint64_t)a8 skipIfMissing:(BOOL)a9;
- (BOOL)setIconContentLayerForIconLayerView:(id)a3 possibleContentLayer:(id)a4 imageGeneration:(unint64_t)a5 iconImageInfo:(SBIconImageInfo *)a6 traitCollection:(id)a7 options:(unint64_t)a8 skipIfMissing:(BOOL)a9 animated:(BOOL)a10;
- (BOOL)takeIconLayerIfDesired:(id)a3;
- (NSDictionary)imageLoadContext;
- (NSString)automationID;
- (NSString)displayName;
- (NSString)uninstallAlertCancelTitle;
- (NSString)uninstallAlertConfirmTitle;
- (NSString)uninstallAlertTitle;
- (SBIcon)init;
- (SBIconDelegate)delegate;
- (id)_sbhIconLibraryCollationString;
- (id)accessoryTextForLocation:(id)a3;
- (id)badgeNumberOrString;
- (id)containedNodeIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)fallbackLoadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)genericIconImageWithInfo:(SBIconImageInfo *)a3;
- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 masked:(BOOL)a5;
- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 masked:(BOOL)a5;
- (id)iconImageIdentityWithImageAppearance:(id)a3 masked:(BOOL)a4;
- (id)iconImageIdentityWithTraitCollection:(id)a3 masked:(BOOL)a4;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)iconLayerViewWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 priority:(int64_t)a6;
- (id)iconLibraryQueryingFilterStrings;
- (id)indexPathsForContainedNodeIdentifier:(id)a3 prefixPath:(id)a4;
- (id)loadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)loadingIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)makeEmptyIconLayerViewWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 priority:(int64_t)a6;
- (id)makeIconLayerFromImage:(id)a3;
- (id)makeIconLayerFromImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)nodeDescriptionWithPrefix:(id)a3;
- (id)nodesAlongIndexPath:(id)a3 consumedIndexes:(unint64_t)a4;
- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5 priority:(int64_t)a6 reason:(id)a7 prefetchBehavior:(int64_t)a8;
- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 imageOptions:(unint64_t)a5 priority:(int64_t)a6 reason:(id)a7 prefetchBehavior:(int64_t)a8;
- (id)succinctDescription;
- (int64_t)accessoryTypeForLocation:(id)a3;
- (int64_t)badgeValue;
- (int64_t)labelAccessoryType;
- (int64_t)localizedCompareDisplayNames:(id)a3;
- (unint64_t)adjustImageOptions:(unint64_t)a3;
- (void)_notifyAccessoriesDidUpdate;
- (void)_notifyImageDidUpdate;
- (void)_notifyLaunchEnabledDidChange;
- (void)_notifyProgressDidChange;
- (void)_setPropertiesFromIcon:(id)a3;
- (void)addObserver:(id)a3;
- (void)applyTreatmentsToMiniGridCellView:(id)a3;
- (void)archivableStateDidChange;
- (void)completeUninstall;
- (void)enumerateObserversUsingBlock:(id)a3;
- (void)launchFromLocation:(id)a3 context:(id)a4;
- (void)loadIconLayerInBackgroundWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7 completionHandler:(id)a8;
- (void)loadRealIconContentLayerForLayerView:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7;
- (void)loadRealIconContentLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 priority:(int64_t)a6 completionHandler:(id)a7;
- (void)prefetchAssertionDidInvalidate:(id)a3;
- (void)reloadIconImage;
- (void)removeObserver:(id)a3;
- (void)setBadge:(id)a3;
- (void)setGridSizeClass:(id)a3;
- (void)setLoadingIconLayerOnLayerView:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6;
- (void)setOverrideBadgeNumberOrString:(id)a3;
- (void)updateIconLayerView:(id)a3 traitCollection:(id)a4 options:(unint64_t)a5 animated:(BOOL)a6 completionHandler:(id)a7;
- (void)updateImageInIconLayerView:(id)a3;
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
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconAccessoriesDidUpdate:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconLaunchEnabledDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconProgressDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconImageDidUpdate:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

  v4 = [(__CFString *)v2 localizedUppercaseString];

  return v4;
}

- (void)applyTreatmentsToMiniGridCellView:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 layer];
  if ([(SBIcon *)self isTimedOut]|| [(SBIcon *)self progressState])
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    v7 = [v6 CGColor];
    [v5 setValue:v7 forKey:*MEMORY[0x1E6979AA0]];

    v9[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v4 setFilters:v8];
  }

  else
  {
    [v4 setFilters:MEMORY[0x1E695E0F0]];
  }
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    if (![(NSHashTable *)self->_observers containsObject:v4])
    {
      observers = self->_observers;
      v6 = v9;
      if (!observers)
      {
        v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = v7;

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

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)enumerateObserversUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 copy];

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
      v4[2](v4, v11, &v12);
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

- (BOOL)containsNodeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBIcon *)self nodeIdentifier];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (id)containedNodeIdentifiers
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = [(SBIcon *)self nodeIdentifier];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)indexPathsForContainedNodeIdentifier:(id)a3 prefixPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBIcon *)self nodeIdentifier];
  v9 = [v8 isEqual:v7];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFA8] setWithObject:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)nodesAlongIndexPath:(id)a3 consumedIndexes:(unint64_t)a4
{
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4 + 1];
  [v5 insertObject:self atIndex:0];

  return v5;
}

- (id)nodeDescriptionWithPrefix:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AEC0] string];
  }

  v5 = [(SBIcon *)self nodeIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationNone"];
    v8 = [v7 stringWithFormat:@"%@%@-%p (%@)", v4, v9, v5, v10];
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

- (int64_t)localizedCompareDisplayNames:(id)a3
{
  v4 = a3;
  v5 = [(SBIcon *)self displayNameForLocation:@"SBIconLocationNone"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F3D472A8;
  }

  v7 = [v4 displayNameForLocation:@"SBIconLocationNone"];

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

+ (id)iconImageFromUnmaskedImage:(id)a3 info:(SBIconImageInfo *)a4
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = objc_alloc(MEMORY[0x1E69A8988]);
  v12 = [v10 CGImage];
  [v10 scale];
  v13 = [v11 initWithCGImage:v12 scale:?];
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
    v21 = [v18 CGImage];
    [v19 scale];
    v22 = [v20 imageWithCGImage:v21 scale:0 orientation:?];
  }

  else
  {
    v22 = v10;
  }

  v23 = v22;
  if ([v10 flipsForRightToLeftLayoutDirection])
  {
    v24 = [v23 imageFlippedForRightToLeftLayoutDirection];

    v23 = v24;
  }

  return v23;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [(SBIcon *)self imageLoadContext];
  v17 = [(SBIcon *)self iconImageWithInfo:v15 traitCollection:v16 context:a4 options:v13, v12, v11, v10];

  return v17;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = a4;
  if ((a5 & 2) != 0 && ![(SBIcon *)self supportsCachedIconLookup])
  {
    v19 = 0;
  }

  else
  {
    v19 = [(SBIcon *)self makeIconImageWithInfo:v17 traitCollection:v18 context:a5 options:v15, v14, v13, v12];
    v20 = [(SBIcon *)self iconImageIdentityWithIconImageInfo:v17 traitCollection:a5 & 1 masked:v15, v14, v13, v12];
    [v19 sbh_setIconImageIdentity:v20];
  }

  return v19;
}

- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [(SBIcon *)self imageLoadContext];
  v17 = [(SBIcon *)self makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:v15 traitCollection:v16 context:a4 options:v13, v12, v11, v10];

  return v17;
}

- (id)makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  if ((a5 & 0x10) != 0)
  {
    [SBIcon makeIconLayerFromImageWithInfo:"makeIconLayerFromImageWithInfo:traitCollection:context:options:" traitCollection:a3 context:a4 options:?];
  }

  else
  {
    [SBIcon makeIconLayerWithInfo:"makeIconLayerWithInfo:traitCollection:context:options:" traitCollection:a3 context:a4 options:?];
  }
  v6 = ;

  return v6;
}

- (id)makeIconLayerFromImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v7 = [(SBIcon *)self iconImageWithInfo:a3 traitCollection:a4 context:a5 options:a6];
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

+ (id)makeIconLayerFromImage:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AF00] isMainThread];
  v5 = objc_alloc_init(MEMORY[0x1E6979398]);
  v6 = v5;
  if (v4)
  {
    [v5 setContents:{objc_msgSend(v3, "CGImage")}];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__SBIcon_makeIconLayerFromImage___block_invoke;
    v8[3] = &unk_1E8088F18;
    v9 = v5;
    v10 = v3;
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

- (id)makeIconLayerFromImage:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() makeIconLayerFromImage:v3];

  return v4;
}

- (id)iconLayerViewWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 priority:(int64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = [(SBIcon *)self makeEmptyIconLayerViewWithInfo:v17 traitCollection:a4 options:a5 priority:v15, v14, v13, v12];
  [(SBIcon *)self loadRealIconContentLayerForLayerView:v18 iconImageInfo:v17 traitCollection:a4 options:a5 priority:v15, v14, v13, v12];

  return v18;
}

+ (id)iconLayerViewForApplicationWithBundleIdentifier:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v18 = a4;
  v19 = a3;
  v20 = [[SBHImageOnlyApplication alloc] initWithBundleIdentifier:v19];

  v21 = [[SBHApplicationIcon alloc] initWithApplication:v20];
  v22 = [(SBIcon *)v21 iconLayerViewWithInfo:v18 traitCollection:a5 options:a6 priority:v16, v15, v14, v13];

  return v22;
}

+ (id)makeEmptyIconLayerViewWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7
{
  v13 = v9;
  v14 = v8;
  v15 = v7;
  if (a5)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = MEMORY[0x1E69DD1B8];
  v19 = a4;
  v20 = a3;
  v21 = [v18 sbh_iconImageStyleConfigurationFromTraitCollection:v19];
  v22 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v19];

  v23 = [[SBHIconLayerView alloc] initWithIcon:v20 iconImageInfo:v21 iconImageStyleConfiguration:v22 iconImageAppearance:a5 iconImageOptions:v15, v14, v13, v17];
  [(SBHIconLayerView *)v23 setIconImageLoadPriority:a6];

  return v23;
}

- (id)makeEmptyIconLayerViewWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 priority:(int64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = [objc_opt_class() makeEmptyIconLayerViewWithIcon:self iconImageInfo:v17 traitCollection:a4 options:a5 priority:{v15, v14, v13, v12}];

  iconLayerViews = self->_iconLayerViews;
  if (!iconLayerViews)
  {
    v20 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v21 = self->_iconLayerViews;
    self->_iconLayerViews = v20;

    iconLayerViews = self->_iconLayerViews;
  }

  [(NSHashTable *)iconLayerViews addObject:v18];

  return v18;
}

- (BOOL)setIconContentLayerForIconLayerView:(id)a3 possibleContentLayer:(id)a4 imageGeneration:(unint64_t)a5 iconImageInfo:(SBIconImageInfo *)a6 traitCollection:(id)a7 options:(unint64_t)a8 skipIfMissing:(BOOL)a9
{
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  v23 = a3;
  v24 = a4;
  v25 = a6;
  v26 = [v23 iconImageAppearance];
  v27 = [v23 iconContentType];
  v28 = [v23 contentVisibility];
  if (v27 == 2 || !v28)
  {
    v29 = [v26 isOpaque];
  }

  else
  {
    v29 = 0;
  }

  LOBYTE(v32) = v29;
  v30 = [(SBIcon *)self setIconContentLayerForIconLayerView:v23 possibleContentLayer:v24 imageGeneration:a5 iconImageInfo:v25 traitCollection:a7 options:a8 skipIfMissing:v19 animated:v18, v17, v16, v32];

  return v30;
}

- (BOOL)setIconContentLayerForIconLayerView:(id)a3 possibleContentLayer:(id)a4 imageGeneration:(unint64_t)a5 iconImageInfo:(SBIconImageInfo *)a6 traitCollection:(id)a7 options:(unint64_t)a8 skipIfMissing:(BOOL)a9 animated:(BOOL)a10
{
  v14 = a8;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  if (v25)
  {
    [objc_opt_class() configureIconContentLayer:v25 iconImageInfo:a7 options:{v20, v19, v18, v17}];
    [(SBIcon *)self takeIconLayerIfDesired:v24];
    [v24 setIconContentLayer:v25 generation:a5 type:2 animated:a9];
  }

  else if ((v14 & 1) == 0)
  {
    [objc_opt_class() setMissingIconLayerOnLayerView:v24 iconImageInfo:v26 traitCollection:a7 options:{v20, v19, v18, v17}];
  }

  return v25 != 0;
}

- (void)loadRealIconContentLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 priority:(int64_t)a6 completionHandler:(id)a7
{
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v23 = a3;
  v19 = a6;
  if (![(SBIcon *)self hasIconImage])
  {
    goto LABEL_8;
  }

  if ([(SBIcon *)self consumePrefetchedRealIconLayerContentsMatchingInfo:v23 traitCollection:a4 options:v19 consumptionHandler:v17, v16, v15, v14])
  {
    goto LABEL_14;
  }

  if ((a4 & 2) == 0 || [(SBIcon *)self supportsCachedIconLookup])
  {
    v20 = [(SBIcon *)self imageLoadContext];
    v21 = [(SBIcon *)self adjustImageOptions:a4];
    if (![(SBIcon *)self canGenerateIconsInBackground]|| (v21 & 0x20) != 0)
    {
      v22 = [(SBIcon *)self makeIconLayerNativelyOrFromImageIfNecessaryWithInfo:v23 traitCollection:v20 context:v21 options:v17, v16, v15, v14];
      if (v19)
      {
        v19[2](v19, v22, [(SBIcon *)self imageGeneration]);
      }
    }

    else
    {
      [(SBIcon *)self loadIconLayerInBackgroundWithInfo:v23 traitCollection:v20 context:v21 options:a5 priority:v19 completionHandler:v17, v16, v15, v14];
    }
  }

  else
  {
LABEL_8:
    if (v19)
    {
      v19[2](v19, 0, 0);
    }
  }

LABEL_14:
}

- (unint64_t)adjustImageOptions:(unint64_t)a3
{
  if ([(SBIcon *)self supportsIconLayers])
  {
    return a3;
  }

  else
  {
    return a3 | 0x10;
  }
}

- (NSDictionary)imageLoadContext
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(SBIcon *)self prepareImageLoadContext:v3];
  v4 = [v3 copy];

  return v4;
}

- (void)loadIconLayerInBackgroundWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7 completionHandler:(id)a8
{
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  v21 = a3;
  v22 = a4;
  v23 = a7;
  v24 = [(SBIcon *)self imageGeneration];
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
  v30 = v21;
  v37 = a5;
  v38 = v24;
  v39 = a6;
  v31 = v22;
  v32 = v23;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  [v25 performBackgroundGenerationActivityWithPriority:a6 usingBlock:v29];
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

- (void)loadRealIconContentLayerForLayerView:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 priority:(int64_t)a7
{
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v19 = a3;
  v20 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __94__SBIcon_loadRealIconContentLayerForLayerView_iconImageInfo_traitCollection_options_priority___block_invoke;
  v23[3] = &unk_1E8090E78;
  v23[4] = self;
  v21 = v19;
  v24 = v21;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  v30 = v14;
  v22 = v20;
  v31 = a5;
  v25 = v22;
  v26 = &v32;
  [(SBIcon *)self loadRealIconContentLayerWithInfo:v22 traitCollection:a5 options:a6 priority:v23 completionHandler:v17, v16, v15, v14];
  if ((v33[3] & 1) == 0)
  {
    [(SBIcon *)self setLoadingIconLayerOnLayerView:v21 iconImageInfo:v22 traitCollection:a5 options:v17, v16, v15, v14];
  }

  _Block_object_dispose(&v32, 8);
}

uint64_t __94__SBIcon_loadRealIconContentLayerForLayerView_iconImageInfo_traitCollection_options_priority___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) setIconContentLayerForIconLayerView:*(a1 + 40) possibleContentLayer:a2 imageGeneration:a3 iconImageInfo:*(a1 + 48) traitCollection:*(a1 + 96) options:0 skipIfMissing:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

+ (void)configureIconContentLayer:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 options:(unint64_t)a5
{
  v9 = a4;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = a3;
  [v14 setContentsScale:v11];
  [v14 setBounds:{0.0, 0.0, v13, v12}];
  if (v9)
  {
    [v14 setCornerRadius:v10];
    [v14 setCornerCurve:*MEMORY[0x1E69796E8]];
  }
}

- (void)updateIconLayerView:(id)a3 traitCollection:(id)a4 options:(unint64_t)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  [v12 iconImageInfo];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v12 iconImageLoadPriority];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__SBIcon_updateIconLayerView_traitCollection_options_animated_completionHandler___block_invoke;
  v27[3] = &unk_1E8090EA0;
  v27[4] = self;
  v28 = v12;
  v31 = v16;
  v32 = v18;
  v33 = v20;
  v34 = v22;
  v35 = a5;
  v36 = a6;
  v29 = v13;
  v30 = v14;
  v24 = v14;
  v25 = v13;
  v26 = v12;
  [(SBIcon *)self loadRealIconContentLayerWithInfo:v25 traitCollection:a5 options:v23 priority:v27 completionHandler:v16, v18, v20, v22];
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

- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 imageOptions:(unint64_t)a5 priority:(int64_t)a6 reason:(id)a7 prefetchBehavior:(int64_t)a8
{
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  v21 = MEMORY[0x1E69DD1B8];
  v22 = a6;
  v23 = [v21 sbh_iconImageAppearanceFromTraitCollection:a3];
  v24 = [(SBIcon *)self prefetchIconLayerWithInfo:v23 imageAppearance:a4 imageOptions:a5 priority:v22 reason:a7 prefetchBehavior:v19, v18, v17, v16];

  return v24;
}

- (id)prefetchIconLayerWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5 priority:(int64_t)a6 reason:(id)a7 prefetchBehavior:(int64_t)a8
{
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  v21 = a3;
  v22 = a6;
  if ([objc_opt_class() allowsPrefetch])
  {
    v23 = [[SBIconPrefetchAssertion alloc] initWithIcon:self iconImageInfo:v21 imageAppearance:a5 priority:a4 imageOptions:v22 reason:a7 prefetchBehavior:v19, v18, v17, v16];
    iconPrefetchAssertions = self->_iconPrefetchAssertions;
    if (!iconPrefetchAssertions)
    {
      v25 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v26 = self->_iconPrefetchAssertions;
      self->_iconPrefetchAssertions = v25;

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

- (BOOL)consumePrefetchedRealIconLayerContentsMatchingInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 consumptionHandler:(id)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v40 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a5;
  if ((a4 & 8) != 0)
  {
    v31 = 0;
  }

  else
  {
    v19 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v17];
    v20 = [(NSHashTable *)self->_iconPrefetchAssertions allObjects];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v33 = v18;
      v34 = v17;
      v23 = 0;
      v24 = 0;
      v25 = *v36;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          v28 = [v27 priorityForProvidingContentLayerIfMatchesImageInfo:v19 imageAppearance:a4 imageOptions:{v15, v14, v13, v12, v33}];
          if (v28 > v24)
          {
            v29 = v28;
            v30 = v27;

            v23 = v30;
            v24 = v29;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);
      if (v23)
      {
        v18 = v33;
        v31 = [v23 consumeContentLayerIfMatchesImageInfo:v19 imageAppearance:a4 imageOptions:v33 consumptionHandler:{v15, v14, v13, v12}];
      }

      else
      {
        v31 = 0;
        v18 = v33;
      }

      v17 = v34;
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (void)prefetchAssertionDidInvalidate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSHashTable *)self->_iconPrefetchAssertions removeObject:v4];
  if ([v4 state] == 1)
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

        if ([*(*(&v10 + 1) + 8 * v9) takeIconLayerFromPrefetchAssertionIfDesired:{v4, v10}])
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

+ (void)performBackgroundGenerationActivityWithPriority:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  [a1 performBackgroundGenerationActivityWithQOSClass:objc_msgSend(objc_opt_class() usingBlock:{"qosClassForPriority:", a3), v6}];
}

+ (void)performBackgroundGenerationActivityWithQOSClass:(unsigned int)a3 usingBlock:(id)a4
{
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, a4);
  v5 = os_transaction_create();
  v6 = [objc_opt_class() backgroundGenerationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SBIcon_performBackgroundGenerationActivityWithQOSClass_usingBlock___block_invoke;
  v9[3] = &unk_1E80898D8;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
}

+ (unsigned)qosClassForPriority:(int64_t)a3
{
  if ((a3 + 2) > 4)
  {
    return 0;
  }

  else
  {
    return dword_1BEE887E8[a3 + 2];
  }
}

uint64_t __42__SBIcon_backgroundGenericGenerationQueue__block_invoke()
{
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  v1 = backgroundGenericGenerationQueue_backgroundGenerationQueue;
  backgroundGenericGenerationQueue_backgroundGenerationQueue = SerialWithQoS;

  return MEMORY[0x1EEE66BB8](SerialWithQoS, v1);
}

- (void)updateImageInIconLayerView:(id)a3
{
  v4 = a3;
  v6 = [v4 iconImageAppearance];
  v5 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:v6];
  [(SBIcon *)self updateIconLayerView:v4 traitCollection:v5 options:1 animated:1 completionHandler:0];
}

- (BOOL)takeIconLayerIfDesired:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 iconContentType] == 2)
  {
    v5 = [v4 iconIdentifier];
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

          if ([*(*(&v11 + 1) + 8 * i) takeIconLayerIfDesired:{v4, v11}])
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

- (id)genericIconImageWithInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = objc_opt_class();

  return [v11 genericIconImageWithInfo:{v10, v9, v8, v7}];
}

+ (id)genericIconImageWithInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v28 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v10 scale:{v9, v8}];
  v13 = [v11 prepareImageForDescriptor:v12];
  v14 = v13;
  if (!v13 || (v15 = MEMORY[0x1E69DCAB8], v16 = [v13 CGImage], objc_msgSend(v14, "scale"), objc_msgSend(v15, "imageWithCGImage:scale:orientation:", v16, 0), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = SBLogIcon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = v11;
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

+ (id)genericIconLayerViewWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [a1 genericApplicationIcon];
  v17 = [v16 iconLayerViewWithInfo:v15 traitCollection:a4 options:{v13, v12, v11, v10}];

  return v17;
}

+ (void)genericIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = a5;
  v19 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v17];
  v20 = [objc_opt_class() backgroundGenericGenerationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SBIcon_genericIconLayerWithInfo_traitCollection_options_completionHandler___block_invoke;
  block[3] = &unk_1E8090EE8;
  v28 = v15;
  v29 = v14;
  v30 = v13;
  v31 = v12;
  v32 = a4;
  v33 = a1;
  v25 = v19;
  v26 = v17;
  v27 = v18;
  v21 = v18;
  v22 = v17;
  v23 = v19;
  dispatch_async(v20, block);
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

+ (id)fallbackGenericIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = objc_alloc_init(MEMORY[0x1E6979398]);
  v17 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v15];
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
  [a1 configureIconContentLayer:v16 iconImageInfo:a4 options:{v13, v12, v11, v10}];
  SBHIconServicesAddDebugLayerOverlayWithTraitCollection(v16, v15, 0, v13, v12, v11, v10);

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

- (void)setLoadingIconLayerOnLayerView:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v20 = a3;
  v17 = a4;
  v18 = [(SBIcon *)self hasIconImage];
  if ((a5 & 4) == 0 && v18)
  {
    v19 = [(SBIcon *)self loadingIconLayerWithInfo:v17 traitCollection:a5 options:v15, v14, v13, v12];
    [v20 setIconContentLayer:v19 generation:0 type:1 animated:0];
  }
}

- (id)loadingIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
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
    v11 = [(SBIcon *)self loadingIconImageWithInfo:a3 traitCollection:a4 options:a5];
    v12 = [(SBIcon *)self makeIconLayerFromImage:v11];
  }

  return v12;
}

- (id)loadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v15];
  v17 = [MEMORY[0x1E69A8A00] placeholderIcon];
  v18 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v13 scale:{v12, v11}];
  v19 = SBHIconServicesOptionsForImageOptions(a4);
  v20 = SBHIconServicesImageForDescriptor(v17, v18, v19);
  v21 = SBHGetIconImageFromIconServicesImage(v20);
  if (!v21)
  {
    v21 = [(SBIcon *)self fallbackLoadingIconImageWithInfo:v15 traitCollection:a4 options:v13, v12, v11, v10];
  }

  return v21;
}

- (id)fallbackLoadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  if ([(SBIconImageInfo *)a3 userInterfaceStyle]== 2)
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
  v28 = a4;
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

+ (void)setMissingIconLayerOnLayerView:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = a4;
  v19 = [a1 hasIconImage];
  if ((a5 & 4) == 0 && v19 && ![v17 iconContentType])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __79__SBIcon_setMissingIconLayerOnLayerView_iconImageInfo_traitCollection_options___block_invoke;
    v25 = &unk_1E8090F10;
    v20 = v17;
    v26 = v20;
    v27 = &v28;
    [a1 genericIconLayerWithInfo:v18 traitCollection:a5 options:&v22 completionHandler:{v15, v14, v13, v12}];
    if ((v29[3] & 1) == 0)
    {
      v21 = [a1 fallbackGenericIconLayerWithInfo:v18 traitCollection:a5 options:{v15, v14, v13, v12, v22, v23, v24, v25}];
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

- (id)iconImageIdentityWithTraitCollection:(id)a3 masked:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:a3];
  v7 = [(SBIcon *)self iconImageIdentityWithImageAppearance:v6 masked:v4];

  return v7;
}

- (id)iconImageIdentityWithImageAppearance:(id)a3 masked:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[SBHIconImageIdentity alloc] initWithIcon:self iconImageInfo:[(SBIcon *)self imageGeneration] imageGeneration:v6 imageAppearance:v4 masked:0.0, 0.0, 0.0, 0.0];

  return v7;
}

- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 masked:(BOOL)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:{a3, a4, a5}];
  v16 = [(SBIcon *)self iconImageIdentityWithIconImageInfo:v15 imageAppearance:a4 masked:v13, v12, v11, v10];

  return v16;
}

- (id)iconImageIdentityWithIconImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 masked:(BOOL)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [[SBHIconImageIdentity alloc] initWithIcon:self iconImageInfo:[(SBIcon *)self imageGeneration] imageGeneration:v15 imageAppearance:a4 masked:v13, v12, v11, v10];

  return v16;
}

- (void)setOverrideBadgeNumberOrString:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
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
    v5 = [(SBIcon *)self badgeNumberOrString];
    v6 = [v5 integerValue];

    return v6;
  }
}

- (id)accessoryTextForLocation:(id)a3
{
  v3 = [(SBIcon *)self badgeNumberOrString];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v3;
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
      v8 = [MEMORY[0x1E696ADA0] sbf_cachedDecimalNumberFormatter];
      v7 = [v8 stringFromNumber:v6];
    }
  }

  return v7;
}

- (int64_t)accessoryTypeForLocation:(id)a3
{
  v3 = [(SBIcon *)self accessoryTextForLocation:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)setBadge:(id)a3
{
  v5 = a3;
  if (([self->_badgeNumberOrString isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_badgeNumberOrString, a3);
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

- (void)launchFromLocation:(id)a3 context:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBIcon *)self delegate];
  v9 = SBLogIcon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    v11 = self;
    v12 = 2114;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "SBIcon %@ launchFromLocation:%{public}@ context:%@ delegate:%@", &v10, 0x2Au);
  }

  if (![(SBIcon *)self performLaunchFromLocation:v6 context:v7])
  {
    [v8 icon:self launchFromLocation:v6 context:v7];
  }
}

- (void)completeUninstall
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = SBLogIcon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
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
  v3 = [(SBIcon *)self gridSizeClass];
  if (v3 == @"SBHIconGridSizeClassDefault")
  {
    v5 = 1;
  }

  else
  {
    v4 = [(SBIcon *)self gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"];
  }

  return v5;
}

- (void)setGridSizeClass:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_gridSizeClass != v4 && ![(NSString *)v4 isEqualToString:?]&& [(SBIcon *)self isGridSizeClassAllowed:v5])
  {
    v6 = [(NSString *)v5 copy];
    gridSizeClass = self->_gridSizeClass;
    self->_gridSizeClass = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(NSHashTable *)self->_observers allObjects];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 iconGridSizeClassDidChange:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)isGridSizeClassAllowed:(id)a3
{
  v4 = a3;
  v5 = [(SBIcon *)self supportedGridSizeClasses];
  v6 = [v5 containsGridSizeClass:v4];

  return v6;
}

- (void)archivableStateDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconArchivableStateDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_setPropertiesFromIcon:(id)a3
{
  v4 = a3;
  v5 = [v4 gridSizeClass];
  [(SBIcon *)self setGridSizeClass:v5];

  -[SBIcon setImageGeneration:](self, "setImageGeneration:", [v4 imageGeneration]);
  v6 = [v4 badgeNumberOrString];
  [(SBIcon *)self setBadge:v6];

  v7 = [v4 overrideBadgeNumberOrString];
  [(SBIcon *)self setOverrideBadgeNumberOrString:v7];

  LODWORD(v7) = [v4 isUninstalled];
  if (v7)
  {

    [(SBIcon *)self setUninstalled];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIcon *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIcon *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(SBIcon *)self nodeIdentifier];
  if (v5 == self)
  {
    v7 = [v4 appendPointer:v5 withName:@"nodeID"];
  }

  else
  {
    v6 = [v4 appendObject:v5 withName:@"nodeID"];
  }

  if ([(SBIcon *)self isLeafIcon])
  {
    v8 = [(SBIcon *)self applicationBundleID];
    [v4 appendString:v8 withName:@"bundleID" skipIfEmpty:1];
  }

  v9 = [(SBIcon *)self gridSizeClass];
  v10 = v9;
  if (v9 != @"SBHIconGridSizeClassDefault" && ([(__CFString *)v9 isEqualToString:?]& 1) == 0)
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