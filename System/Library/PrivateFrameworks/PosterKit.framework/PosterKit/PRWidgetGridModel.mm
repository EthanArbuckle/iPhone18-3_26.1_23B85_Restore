@interface PRWidgetGridModel
+ (id)effectiveContainerBundleIdentifierForComplicationDescriptor:(id)descriptor;
+ (id)effectiveContainerBundleIdentifierForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)canAddComplicationDescriptor:(id)descriptor;
- (NSArray)complicationDescriptors;
- (NSDictionary)iconLayout;
- (NSDictionary)intentsByDescriptorIdentifier;
- (NSString)description;
- (PRWidgetGridModel)init;
- (PRWidgetGridModel)initWithComplicationDescriptors:(id)descriptors iconLayout:(id)layout type:(unint64_t)type;
- (PRWidgetGridModelPresenting)presenter;
- (SBIconListModel)listModel;
- (SBRootFolder)rootFolder;
- (id)_makeWidgetIconForComplicationDescriptor:(id)descriptor;
- (id)_removeIconForDescriptor:(id)descriptor animated:(BOOL)animated;
- (id)complicationDescriptorForIdentifier:(id)identifier;
- (id)gridSizeClassSizesForIconModel:(id)model;
- (id)iconModel:(id)model allowedGridSizeClassesForFolderClass:(Class)class;
- (void)_addIconForDescriptor:(id)descriptor withGridIndex:(id)index animated:(BOOL)animated;
- (void)_fireDidUpdateIconLayout:(id)layout observers:(id)observers;
- (void)_fireDidUpdateLayoutInsetsMode:(unint64_t)mode observers:(id)observers;
- (void)_fireDidUpdateListModel:(id)model observers:(id)observers;
- (void)_fireObserversForSelector:(SEL)selector observers:(id)observers withBlock:(id)block;
- (void)_fireWidgetGridModelDidUpdateContent:(id)content;
- (void)_fireWidgetGridModelDidUpdateIntents:(id)intents;
- (void)_iconModelDidLayoutIconState:(id)state;
- (void)_setupFixedPositionsForRowLayout;
- (void)_updateLayoutInsetsMode;
- (void)addWidgetGridModelObserver:(id)observer;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)iconList:(id)list didAddIcon:(id)icon;
- (void)iconList:(id)list didMoveIcon:(id)icon;
- (void)iconList:(id)list didRemoveIcon:(id)icon;
- (void)iconModel:(id)model didAddIcon:(id)icon;
- (void)iconModel:(id)model launchIcon:(id)icon fromLocation:(id)location context:(id)context;
- (void)invalidate;
- (void)saveIconStateIfNeeded;
- (void)setComplicationDescriptors:(id)descriptors;
- (void)setComplicationDescriptors:(id)descriptors iconLayout:(id)layout;
- (void)setIconLayout:(id)layout;
- (void)setLayoutInsetsMode:(unint64_t)mode;
- (void)updateIntent:(id)intent forWidgetWithIdentifier:(id)identifier;
- (void)validateIconsForAvailableWidgets;
@end

@implementation PRWidgetGridModel

- (NSArray)complicationDescriptors
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  complicationDescriptors = [WeakRetained complicationDescriptors];
  v4 = complicationDescriptors;
  if (complicationDescriptors)
  {
    v5 = complicationDescriptors;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (SBIconListModel)listModel
{
  rootFolder = [(PRWidgetGridModel *)self rootFolder];
  firstList = [rootFolder firstList];

  return firstList;
}

- (SBRootFolder)rootFolder
{
  iconModel = [(PRWidgetGridModel *)self iconModel];
  rootFolder = [iconModel rootFolder];

  return rootFolder;
}

- (PRWidgetGridModel)initWithComplicationDescriptors:(id)descriptors iconLayout:(id)layout type:(unint64_t)type
{
  v34 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  layoutCopy = layout;
  v32.receiver = self;
  v32.super_class = PRWidgetGridModel;
  v10 = [(PRWidgetGridModel *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_17;
  }

  v10->_type = type;
  v12 = [[_PRWidgetGridModelStore alloc] initWithComplicationDescriptors:descriptorsCopy iconLayout:layoutCopy];
  [(_PRWidgetGridModelStore *)v12 setDelegate:v11];
  if (type == 1)
  {
    sidebarGridHeight = [MEMORY[0x1E6999618] sidebarGridHeight];
    v11->_gridSize.columns = 2;
    goto LABEL_6;
  }

  if (!type)
  {
    v11->_gridSize.columns = 4;
    sidebarGridHeight = 1;
LABEL_6:
    v11->_gridSize.rows = sidebarGridHeight;
  }

  v14 = [objc_alloc(MEMORY[0x1E69D40A8]) initWithStore:v12];
  iconModel = v11->_iconModel;
  v11->_iconModel = v14;

  [(SBHIconModel *)v11->_iconModel setDelegate:v11];
  objc_storeWeak(&v11->_store, v12);
  v11->_layoutInsetsMode = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v11 selector:sel__iconModelDidLayoutIconState_ name:*MEMORY[0x1E69D4160] object:v11->_iconModel];

  [(SBHIconModel *)v11->_iconModel layoutIfNeeded];
  v17 = PRSharedWidgetExtensionProvider();
  [v17 registerObserver:v11];

  [(PRWidgetGridModel *)v11 _updateLayoutInsetsMode];
  if (!layoutCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = descriptorsCopy;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(PRWidgetGridModel *)v11 _addIconForDescriptor:*(*(&v28 + 1) + 8 * v22++) withGridIndex:0 animated:0, v28];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v20);
    }
  }

  subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v24 = [subjectMonitorRegistry addMonitor:v11 subjectMask:1 subscriptionOptions:1];
  objc_storeWeak(&v11->_appProtectionSubjectMonitorSubscription, v24);

  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  observers = v11->_observers;
  v11->_observers = weakObjectsHashTable;

LABEL_17:
  return v11;
}

- (PRWidgetGridModel)init
{
  [(PRWidgetGridModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(PRWidgetGridModel *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRWidgetGridModel;
  [(PRWidgetGridModel *)&v3 dealloc];
}

- (void)addWidgetGridModelObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)setLayoutInsetsMode:(unint64_t)mode
{
  if (self->_layoutInsetsMode != mode)
  {
    self->_layoutInsetsMode = mode;
    [PRWidgetGridModel _fireDidUpdateLayoutInsetsMode:"_fireDidUpdateLayoutInsetsMode:observers:" observers:?];
  }
}

- (NSDictionary)iconLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  iconLayout = [WeakRetained iconLayout];

  return iconLayout;
}

- (void)setIconLayout:(id)layout
{
  iconModel = [(PRWidgetGridModel *)self iconModel];
  iconLayout = [(PRWidgetGridModel *)self iconLayout];
  [iconModel importIconState:iconLayout];

  iconLayout2 = [(PRWidgetGridModel *)self iconLayout];
  [(PRWidgetGridModel *)self _fireDidUpdateIconLayout:iconLayout2 observers:0];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  iconLayout = [(PRWidgetGridModel *)self iconLayout];
  [v3 appendDictionarySection:iconLayout withName:@"iconLayout" skipIfEmpty:1];

  if (self->_type)
  {
    v5 = @"PRWidgetGridTypeSidebar";
  }

  else
  {
    v5 = @"PRWidgetGridTypeRow";
  }

  [v3 appendString:v5 withName:@"gridType"];
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v7 = [v3 appendObject:WeakRetained withName:@"iconStore" skipIfNil:0];

  build = [v3 build];

  return build;
}

- (id)complicationDescriptorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = [WeakRetained complicationDescriptorForIdentifier:identifierCopy];

  return v6;
}

- (BOOL)canAddComplicationDescriptor:(id)descriptor
{
  widget = [descriptor widget];
  v5 = PRIconGridSizeClassForWidgetFamily([widget family]);

  listModel = [(PRWidgetGridModel *)self listModel];
  LOBYTE(widget) = [listModel firstFreeGridCellIndexOfRangeOfSizeClass:v5 gridCellInfoOptions:0] != 0x7FFFFFFFFFFFFFFFLL;

  return widget;
}

- (void)updateIntent:(id)intent forWidgetWithIdentifier:(id)identifier
{
  intentCopy = intent;
  v6 = [(PRWidgetGridModel *)self complicationDescriptorForIdentifier:identifier];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v8 = [WeakRetained updateIntent:intentCopy forComplicationDescriptor:v6];

    if (v8)
    {
      [(PRWidgetGridModel *)self _updateLayoutInsetsMode];
      iconModel = [(PRWidgetGridModel *)self iconModel];
      [iconModel saveIconStateIfNeeded];

      [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateContent:0];
      [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateIntents:0];
    }
  }
}

- (void)saveIconStateIfNeeded
{
  iconModel = [(PRWidgetGridModel *)self iconModel];
  [iconModel saveIconStateIfNeeded];
}

- (void)setComplicationDescriptors:(id)descriptors iconLayout:(id)layout
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  layoutCopy = layout;
  [(PRWidgetGridModel *)self setComplicationDescriptors:descriptorsCopy];
  iconModel = [(PRWidgetGridModel *)self iconModel];
  [iconModel importIconState:layoutCopy];

  if (!layoutCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = descriptorsCopy;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(PRWidgetGridModel *)self _addIconForDescriptor:*(*(&v14 + 1) + 8 * v13++) withGridIndex:0 animated:0, v14];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateIntents:0, v14];
  [(PRWidgetGridModel *)self _fireDidUpdateIconLayout:layoutCopy observers:0];
}

- (NSDictionary)intentsByDescriptorIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  intentsByDescriptorIdentifier = [WeakRetained intentsByDescriptorIdentifier];
  v4 = intentsByDescriptorIdentifier;
  if (intentsByDescriptorIdentifier)
  {
    v5 = intentsByDescriptorIdentifier;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (void)setComplicationDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = [WeakRetained updateComplicationsWithArray:descriptorsCopy];

  if (v6)
  {
    [(PRWidgetGridModel *)self _updateLayoutInsetsMode];
    [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateIntents:0];

    [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateContent:0];
  }
}

- (void)_updateLayoutInsetsMode
{
  if (!self->_type)
  {
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v5 = [WeakRetained containsComplicationPassingTest:&__block_literal_global_39];

    [(PRWidgetGridModel *)self setLayoutInsetsMode:v5 ^ 1u];
  }
}

BOOL __44__PRWidgetGridModel__updateLayoutInsetsMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 widget];
  v3 = [v2 family] != 10;

  return v3;
}

- (void)_setupFixedPositionsForRowLayout
{
  if (![(PRWidgetGridModel *)self type])
  {
    [(PRWidgetGridModel *)self setConfiguringFixedPositions:1];
    iconModel = [(PRWidgetGridModel *)self iconModel];
    rootFolder = [iconModel rootFolder];
    firstList = [rootFolder firstList];

    [firstList removeAllFixedIconLocations];
    icons = [firstList icons];
    v6 = [icons bs_filter:&__block_literal_global_20];

    icons2 = [firstList icons];
    v8 = [icons2 bs_filter:&__block_literal_global_23];

    if ([v6 count] == 1 && objc_msgSend(v8, "count") == 1)
    {
      v9 = [firstList gridSize] - 1;
      firstObject = [v8 firstObject];
      v11 = [firstList moveContainedIcon:firstObject toGridCellIndex:v9 gridCellInfoOptions:0 mutationOptions:128];
    }

    if ([v6 count] == 1 && objc_msgSend(v8, "count") == 2)
    {
      firstObject2 = [v6 firstObject];
      [firstList moveContainedIcon:firstObject2 toIndex:0 options:0];
    }

    [(PRWidgetGridModel *)self setConfiguringFixedPositions:0];
  }
}

BOOL __53__PRWidgetGridModel__setupFixedPositionsForRowLayout__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 gridSizeClass];

  v8 = PRWidgetFamilyForIconGridSizeClass(v7);
  return v8 == 11;
}

BOOL __53__PRWidgetGridModel__setupFixedPositionsForRowLayout__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 gridSizeClass];

  v8 = PRWidgetFamilyForIconGridSizeClass(v7);
  return v8 == 10;
}

- (void)_iconModelDidLayoutIconState:(id)state
{
  listModel = [(PRWidgetGridModel *)self listModel];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRIconGridSizeClassCircular", @"PRIconGridSizeClassRectangular", @"PRIconGridSizeClassSystemSmall", 0}];
  v5 = [objc_alloc(MEMORY[0x1E69D4090]) initWithGridSizeClasses:v4];
  [listModel setAllowedGridSizeClasses:v5];
  [listModel setIconLayoutBehavior:3];
  [listModel setFixedIconLocationBehavior:1];
  [listModel addListObserver:self];
  [(PRWidgetGridModel *)self validateIconsForAvailableWidgets];
  [(PRWidgetGridModel *)self _fireDidUpdateListModel:listModel observers:0];
}

- (void)validateIconsForAvailableWidgets
{
  selfCopy = self;
  v40 = *MEMORY[0x1E69E9840];
  iconModel = [(PRWidgetGridModel *)self iconModel];
  rootFolder = [iconModel rootFolder];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [rootFolder icons];
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    *&v6 = 138543618;
    v25 = v6;
    v26 = rootFolder;
    v27 = *v32;
    do
    {
      v9 = 0;
      v28 = v7;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        if ([v10 isLeafIcon])
        {
          v11 = v10;
          leafIdentifier = [v11 leafIdentifier];
          v13 = [(PRWidgetGridModel *)selfCopy complicationDescriptorForIdentifier:leafIdentifier];
          if (([v13 hasMatchingDescriptor] & 1) == 0)
          {
            firstList = [rootFolder firstList];
            [firstList removeIcon:v11];
          }

          WeakRetained = objc_loadWeakRetained(&selfCopy->_store);
          v30 = 0;
          v16 = [WeakRetained applicationRecordForComplication:v13 error:&v30];
          v17 = v30;

          if (v17)
          {
            firstList2 = PRLogCommon();
            if (os_log_type_enabled(firstList2, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v36 = leafIdentifier;
              v37 = 2112;
              v38 = v17;
              _os_log_error_impl(&dword_1A8AA7000, firstList2, OS_LOG_TYPE_ERROR, "unable to lookup application record for complication %{public}@: %@", buf, 0x16u);
            }
          }

          else
          {
            applicationState = [v16 applicationState];
            isRestricted = [applicationState isRestricted];

            if (isRestricted)
            {
              v21 = PRLogCommon();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v36 = leafIdentifier;
                _os_log_impl(&dword_1A8AA7000, v21, OS_LOG_TYPE_DEFAULT, "%@ is restricted. Removing widget icon.", buf, 0xCu);
              }

              firstList2 = [rootFolder firstList];
              [firstList2 removeIcon:v11];
            }

            else
            {
              firstList2 = [objc_opt_class() effectiveContainerBundleIdentifierForComplicationDescriptor:v13];
              v22 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:firstList2];
              if (([v22 isLocked] & 1) != 0 || objc_msgSend(v22, "isHidden"))
              {
                [rootFolder firstList];
                v24 = v23 = selfCopy;
                [v24 removeIcon:v11];

                selfCopy = v23;
                rootFolder = v26;
              }
            }
          }

          v8 = v27;
          v7 = v28;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
  }
}

+ (id)effectiveContainerBundleIdentifierForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (-[__CFString isEqualToString:](identifierCopy, "isEqualToString:", @"com.apple.Health.Sleep") && [bundleIdentifierCopy isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {

    identifierCopy = @"com.apple.Health";
  }

  return identifierCopy;
}

+ (id)effectiveContainerBundleIdentifierForComplicationDescriptor:(id)descriptor
{
  widget = [descriptor widget];
  extensionIdentity = [widget extensionIdentity];

  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  v7 = [PRWidgetGridModel effectiveContainerBundleIdentifierForContainerBundleIdentifier:containerBundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier];

  return v7;
}

- (void)_addIconForDescriptor:(id)descriptor withGridIndex:(id)index animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  indexCopy = index;
  iconModel = [(PRWidgetGridModel *)self iconModel];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];
  v12 = [iconModel leafIconForIdentifier:uniqueIdentifier];

  if (!v12)
  {
    widget = [descriptorCopy widget];
    v14 = PRWidgetGridSupportsFamily([widget family]);

    if (v14)
    {
      complicationDescriptors = [(PRWidgetGridModel *)self complicationDescriptors];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __66__PRWidgetGridModel__addIconForDescriptor_withGridIndex_animated___block_invoke;
      v31[3] = &unk_1E7844750;
      v16 = descriptorCopy;
      v32 = v16;
      if (([complicationDescriptors bs_containsObjectPassingTest:v31]& 1) == 0)
      {
        v17 = [complicationDescriptors arrayByAddingObject:v16];
        [(PRWidgetGridModel *)self setComplicationDescriptors:v17];
      }

      v30 = [(PRWidgetGridModel *)self _makeWidgetIconForComplicationDescriptor:v16];
      unsignedLongValue = [indexCopy unsignedLongValue];
      iconModel2 = [(PRWidgetGridModel *)self iconModel];
      rootFolder = [iconModel2 rootFolder];
      firstList = [rootFolder firstList];
      v22 = [firstList isValidGridCellIndex:unsignedLongValue options:4];

      listModel = [(PRWidgetGridModel *)self listModel];
      v24 = listModel;
      if (indexCopy && (v22 & 1) != 0)
      {
        v25 = v30;
        v26 = [listModel insertIcon:v30 atGridCellIndex:unsignedLongValue gridCellInfoOptions:4 mutationOptions:8];
      }

      else
      {
        v25 = v30;
        v27 = [listModel addIcon:v30];
      }

      if (animatedCopy)
      {
        presenter = [(PRWidgetGridModel *)self presenter];
        [presenter performAnimatedInsertionForIcon:v25];
      }

      [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
      iconModel3 = [(PRWidgetGridModel *)self iconModel];
      [iconModel3 saveIconStateIfNeeded];

      [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateIntents:0];
    }

    else
    {
      complicationDescriptors = PRLogCommon();
      if (os_log_type_enabled(complicationDescriptors, OS_LOG_TYPE_ERROR))
      {
        [PRWidgetGridModel _addIconForDescriptor:descriptorCopy withGridIndex:complicationDescriptors animated:?];
      }
    }
  }
}

uint64_t __66__PRWidgetGridModel__addIconForDescriptor_withGridIndex_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = BSEqualStrings();

  return v5;
}

- (id)_removeIconForDescriptor:(id)descriptor animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  iconModel = [(PRWidgetGridModel *)self iconModel];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];

  v9 = [iconModel leafIconForIdentifier:uniqueIdentifier];

  if (v9)
  {
    iconModel2 = [(PRWidgetGridModel *)self iconModel];
    rootFolder = [iconModel2 rootFolder];
    firstList = [rootFolder firstList];

    v13 = [firstList gridCellInfoWithOptions:0];
    v14 = [firstList gridCellIndexForIcon:v9 gridCellInfo:v13];
    iconModel3 = [(PRWidgetGridModel *)self iconModel];
    [iconModel3 removeIcon:v9];

    if (animatedCopy)
    {
      presenter = [(PRWidgetGridModel *)self presenter];
      [presenter performAnimatedRemovalForIcon:v9];
    }

    [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
    iconModel4 = [(PRWidgetGridModel *)self iconModel];
    [iconModel4 saveIconStateIfNeeded];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_makeWidgetIconForComplicationDescriptor:(id)descriptor
{
  v3 = MEMORY[0x1E69D40E8];
  descriptorCopy = descriptor;
  v21 = [v3 alloc];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];
  widget = [descriptorCopy widget];
  kind = [widget kind];
  widget2 = [descriptorCopy widget];
  extensionIdentity = [widget2 extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  widget3 = [descriptorCopy widget];
  extensionIdentity2 = [widget3 extensionIdentity];
  containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
  v22 = [v21 initWithUniqueIdentifier:uniqueIdentifier kind:kind extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier];

  v14 = [objc_alloc(MEMORY[0x1E69D4118]) initWithWidget:v22];
  uniqueIdentifier2 = [descriptorCopy uniqueIdentifier];
  v16 = [v14 copyWithLeafIdentifier:uniqueIdentifier2];

  widget4 = [descriptorCopy widget];

  family = [widget4 family];
  v19 = PRIconGridSizeClassForWidgetFamily(family);
  [v16 setGridSizeClass:v19];

  return v16;
}

- (void)_fireDidUpdateListModel:(id)model observers:(id)observers
{
  modelCopy = model;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PRWidgetGridModel__fireDidUpdateListModel_observers___block_invoke;
  v8[3] = &unk_1E78451A0;
  v8[4] = self;
  v9 = modelCopy;
  v7 = modelCopy;
  [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModel_didUpdateListModel_ observers:observers withBlock:v8];
}

- (void)_fireDidUpdateIconLayout:(id)layout observers:(id)observers
{
  layoutCopy = layout;
  observersCopy = observers;
  if (!self->_lastFiredIconLayout || (BSEqualObjects() & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:layoutCopy copyItems:1];
    lastFiredIconLayout = self->_lastFiredIconLayout;
    self->_lastFiredIconLayout = v8;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__PRWidgetGridModel__fireDidUpdateIconLayout_observers___block_invoke;
    v10[3] = &unk_1E78451A0;
    v10[4] = self;
    v11 = layoutCopy;
    [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModel_didUpdateIconLayout_ observers:observersCopy withBlock:v10];
  }
}

- (void)_fireDidUpdateLayoutInsetsMode:(unint64_t)mode observers:(id)observers
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PRWidgetGridModel__fireDidUpdateLayoutInsetsMode_observers___block_invoke;
  v4[3] = &unk_1E78451C8;
  v4[4] = self;
  v4[5] = mode;
  [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModel_didUpdateLayoutInsetsMode_ observers:observers withBlock:v4];
}

- (void)_fireWidgetGridModelDidUpdateIntents:(id)intents
{
  intentsCopy = intents;
  if (!self->_lastFiredIntentsDictionary || (v5 = objc_loadWeakRetained(&self->_store), [v5 intentsByDescriptorIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, v5, (v7 & 1) == 0))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    WeakRetained = objc_loadWeakRetained(&self->_store);
    intentsByDescriptorIdentifier = [WeakRetained intentsByDescriptorIdentifier];
    v11 = [v8 initWithDictionary:intentsByDescriptorIdentifier copyItems:1];
    lastFiredIntentsDictionary = self->_lastFiredIntentsDictionary;
    self->_lastFiredIntentsDictionary = v11;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PRWidgetGridModel__fireWidgetGridModelDidUpdateIntents___block_invoke;
    v13[3] = &unk_1E78451F0;
    v13[4] = self;
    [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModelDidUpdateIntents_ observers:intentsCopy withBlock:v13];
  }
}

- (void)_fireWidgetGridModelDidUpdateContent:(id)content
{
  contentCopy = content;
  if (!self->_lastFiredIconLayout || (v5 = objc_loadWeakRetained(&self->_store), [v5 complicationDescriptorsByUniqueIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, v5, (v7 & 1) == 0))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    WeakRetained = objc_loadWeakRetained(&self->_store);
    complicationDescriptorsByUniqueIdentifier = [WeakRetained complicationDescriptorsByUniqueIdentifier];
    v11 = [v8 initWithDictionary:complicationDescriptorsByUniqueIdentifier copyItems:1];
    lastFiredIconLayout = self->_lastFiredIconLayout;
    self->_lastFiredIconLayout = v11;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PRWidgetGridModel__fireWidgetGridModelDidUpdateContent___block_invoke;
    v13[3] = &unk_1E78451F0;
    v13[4] = self;
    [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModelDidUpdateContent_ observers:contentCopy withBlock:v13];
  }
}

- (void)_fireObserversForSelector:(SEL)selector observers:(id)observers withBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  blockCopy = block;
  if (blockCopy)
  {
    if (!observersCopy)
    {
      allObjects = [(NSHashTable *)self->_observers allObjects];
      observersCopy = [allObjects copy];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    observersCopy = observersCopy;
    v10 = [observersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(observersCopy);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v14);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [observersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)invalidate
{
  [(PRWidgetGridModel *)self setIconModel:0];
  v3 = PRSharedWidgetExtensionProvider();
  [v3 unregisterObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);
  [WeakRetained invalidate];
}

- (void)iconList:(id)list didAddIcon:(id)icon
{
  if (![(PRWidgetGridModel *)self isConfiguringFixedPositions:list])
  {
    [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  iconModel = [(PRWidgetGridModel *)self iconModel];
  [iconModel saveIconStateIfNeeded];
}

- (void)iconList:(id)list didMoveIcon:(id)icon
{
  if (![(PRWidgetGridModel *)self isConfiguringFixedPositions:list])
  {
    [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  iconModel = [(PRWidgetGridModel *)self iconModel];
  [iconModel saveIconStateIfNeeded];
}

- (void)iconList:(id)list didRemoveIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isLeafIcon])
  {
    v5 = iconCopy;
    WeakRetained = objc_loadWeakRetained(&self->_store);
    leafIdentifier = [v5 leafIdentifier];

    [WeakRetained removeComplicationDescriptorForIdentifier:leafIdentifier];
    [(PRWidgetGridModel *)self _updateLayoutInsetsMode];
  }
}

- (id)gridSizeClassSizesForIconModel:(id)model
{
  v3 = [objc_alloc(MEMORY[0x1E69D4098]) initWithGridSizeClassesAndGridSizes:{@"PRIconGridSizeClassCircular", 65537, @"PRIconGridSizeClassRectangular", 65538, @"PRIconGridSizeClassSystemSmall", 131074, 0}];

  return v3;
}

- (id)iconModel:(id)model allowedGridSizeClassesForFolderClass:(Class)class
{
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRIconGridSizeClassCircular", class, @"PRIconGridSizeClassRectangular", @"PRIconGridSizeClassSystemSmall", 0}];
  v5 = [objc_alloc(MEMORY[0x1E69D4090]) initWithGridSizeClasses:v4];

  return v5;
}

- (void)iconModel:(id)model didAddIcon:(id)icon
{
  modelCopy = model;
  iconCopy = icon;
  if ([iconCopy isLeafIcon])
  {
    v7 = iconCopy;
    leafIdentifier = [v7 leafIdentifier];
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v10 = [WeakRetained containsComplicationForIdentifier:leafIdentifier];

    if ((v10 & 1) == 0)
    {
      v11 = objc_opt_class();
      v12 = v7;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      activeWidget = [v14 activeWidget];
      gridSizeClass = [v12 gridSizeClass];

      v16 = PRWidgetFamilyForIconGridSizeClass(gridSizeClass);
      v17 = objc_alloc(MEMORY[0x1E6994290]);
      extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
      containerBundleIdentifier = [activeWidget containerBundleIdentifier];
      v29 = [v17 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

      v20 = objc_alloc(MEMORY[0x1E6994370]);
      kind = [activeWidget kind];
      v22 = [v20 initWithExtensionIdentity:v29 kind:kind family:v16 intent:0 activityIdentifier:0];

      v23 = [[PRComplicationDescriptor alloc] initWithUniqueIdentifier:leafIdentifier widget:v22];
      v24 = objc_loadWeakRetained(&self->_store);
      [v24 addComplicationDescriptor:v23];

      v25 = objc_loadWeakRetained(&self->_store);
      complicationDescriptors = [v25 complicationDescriptors];
      v27 = [complicationDescriptors mutableCopy];

      [v27 addObject:v23];
      v28 = [v27 copy];
      [(PRWidgetGridModel *)self setComplicationDescriptors:v28];

      [modelCopy saveIconStateIfNeeded];
    }
  }
}

- (void)iconModel:(id)model launchIcon:(id)icon fromLocation:(id)location context:(id)context
{
  iconCopy = icon;
  presenter = [(PRWidgetGridModel *)self presenter];
  [presenter handleLaunchRequestForIcon:iconCopy];
}

void __61__PRWidgetGridModel_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 iconLayout];
  [v1 setIconLayout:v2];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PRWidgetGridModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E7843070;
  v8 = subscriptionCopy;
  selfCopy = self;
  v6 = subscriptionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __66__PRWidgetGridModel_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appProtectionSubjectMonitorSubscription];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [v4 iconLayout];
    [v4 setIconLayout:v5];
  }
}

- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);

  return WeakRetained;
}

- (PRWidgetGridModelPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)_addIconForDescriptor:(void *)a1 withGridIndex:(NSObject *)a2 animated:.cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 widget];
  v5 = 134218242;
  v6 = [v4 family];
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "Unable to add widget grid icon: unsupported family %ld for descriptor %@", &v5, 0x16u);
}

@end