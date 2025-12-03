@interface PRGadgetGridModel
+ (id)correctedContainerBundleIdentifierForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)canAddGadgetDescriptor:(id)descriptor;
- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)saveCurrentIconState:(id)state error:(id *)error;
- (PRGadgetGridModel)initWithGadgetDescriptors:(id)descriptors iconLayout:(id)layout type:(unint64_t)type;
- (PRGadgetGridModelDelegate)delegate;
- (PRGadgetGridModelPresenting)presenter;
- (SBIconListModel)listModel;
- (SBRootFolder)rootFolder;
- (id)_makeControlIconForDescriptor:(id)descriptor;
- (id)_makeIconForDescriptor:(id)descriptor;
- (id)_makeWidgetIconForComplicationDescriptor:(id)descriptor;
- (id)_removeIconForDescriptor:(id)descriptor animated:(BOOL)animated;
- (id)_sizeClassFromDescriptor:(id)descriptor;
- (id)_sizeClassFromIcon:(id)icon;
- (id)gridSizeClassSizesForIconModel:(id)model;
- (id)iconModel:(id)model allowedGridSizeClassesForFolderClass:(Class)class;
- (void)_addIconForDescriptor:(id)descriptor withGridIndex:(id)index animated:(BOOL)animated;
- (void)_iconModelDidLayoutIconState:(id)state;
- (void)_populateIntentsByDescriptorIdentifier;
- (void)_setupFixedPositionsForRowLayout;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)iconList:(id)list didAddIcon:(id)icon;
- (void)iconList:(id)list didMoveIcon:(id)icon;
- (void)iconList:(id)list didRemoveIcon:(id)icon;
- (void)iconModel:(id)model didAddIcon:(id)icon;
- (void)iconModel:(id)model launchIcon:(id)icon fromLocation:(id)location context:(id)context;
- (void)saveIconStateIfNeeded;
- (void)setGadgetDescriptors:(id)descriptors;
- (void)setGadgetDescriptors:(id)descriptors iconLayout:(id)layout;
- (void)updateIntent:(id)intent forGadgetWithIdentifier:(id)identifier;
- (void)validateIconsForAvailableApps;
@end

@implementation PRGadgetGridModel

+ (id)correctedContainerBundleIdentifierForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (-[__CFString isEqualToString:](identifierCopy, "isEqualToString:", @"com.apple.Health.Sleep") && [bundleIdentifierCopy isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {

    identifierCopy = @"com.apple.Health";
  }

  return identifierCopy;
}

- (PRGadgetGridModel)initWithGadgetDescriptors:(id)descriptors iconLayout:(id)layout type:(unint64_t)type
{
  v48 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  layoutCopy = layout;
  v45.receiver = self;
  v45.super_class = PRGadgetGridModel;
  v11 = [(PRGadgetGridModel *)&v45 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v11->_gadgetDescriptors, descriptors);
  objc_storeStrong(&v12->_iconLayout, layout);
  v12->_type = type;
  if (type < 3)
  {
    v12->_gridSize.columns = 4;
    sidebarGridHeight = 1;
LABEL_6:
    v12->_gridSize.rows = sidebarGridHeight;
    goto LABEL_7;
  }

  if (type == 3)
  {
    sidebarGridHeight = [MEMORY[0x1E6999618] sidebarGridHeight];
    v12->_gridSize.columns = 2;
    goto LABEL_6;
  }

LABEL_7:
  v14 = [objc_alloc(MEMORY[0x1E69D40A8]) initWithStore:v12];
  iconModel = v12->_iconModel;
  v12->_iconModel = v14;

  [(SBHIconModel *)v12->_iconModel setDelegate:v12];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  gadgetDescriptorsByUniqueIdentifier = v12->_gadgetDescriptorsByUniqueIdentifier;
  v12->_gadgetDescriptorsByUniqueIdentifier = v16;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = descriptorsCopy;
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v41 + 1) + 8 * i);
        v24 = v12->_gadgetDescriptorsByUniqueIdentifier;
        uniqueIdentifier = [v23 uniqueIdentifier];
        [(NSMutableDictionary *)v24 setObject:v23 forKey:uniqueIdentifier];
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v20);
  }

  v12->_layoutInsetsMode = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v12 selector:sel__iconModelWillLayoutIconState_ name:*MEMORY[0x1E69D4168] object:v12->_iconModel];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v12 selector:sel__iconModelDidLayoutIconState_ name:*MEMORY[0x1E69D4160] object:v12->_iconModel];

  [(SBHIconModel *)v12->_iconModel layoutIfNeeded];
  v28 = PRSharedWidgetExtensionProvider();
  [v28 registerObserver:v12];

  [(PRGadgetGridModel *)v12 _populateIntentsByDescriptorIdentifier];
  if (!layoutCopy)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v18;
    v30 = [v29 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [(PRGadgetGridModel *)v12 _addIconForDescriptor:*(*(&v37 + 1) + 8 * j) withGridIndex:0 animated:0, v37];
        }

        v31 = [v29 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v31);
    }
  }

  subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v35 = [subjectMonitorRegistry addMonitor:v12 subjectMask:1 subscriptionOptions:1];
  objc_storeWeak(&v12->_appProtectionSubjectMonitorSubscription, v35);

LABEL_24:
  return v12;
}

- (void)dealloc
{
  v3 = PRSharedWidgetExtensionProvider();
  [v3 unregisterObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  v5.receiver = self;
  v5.super_class = PRGadgetGridModel;
  [(PRGadgetGridModel *)&v5 dealloc];
}

- (void)setGadgetDescriptors:(id)descriptors
{
  v20 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_gadgetDescriptors, descriptors);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = descriptorsCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          gadgetDescriptorsByUniqueIdentifier = self->_gadgetDescriptorsByUniqueIdentifier;
          uniqueIdentifier = [v11 uniqueIdentifier];
          [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier setObject:v11 forKey:uniqueIdentifier];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(PRGadgetGridModel *)self _populateIntentsByDescriptorIdentifier];
    delegate = [(PRGadgetGridModel *)self delegate];
    [delegate gadgetGridModelDidUpdateContent:self];
  }
}

- (void)setGadgetDescriptors:(id)descriptors iconLayout:(id)layout
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  layoutCopy = layout;
  [(PRGadgetGridModel *)self setGadgetDescriptors:descriptorsCopy];
  iconModel = [(PRGadgetGridModel *)self iconModel];
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

          [(PRGadgetGridModel *)self _addIconForDescriptor:*(*(&v14 + 1) + 8 * v13++) withGridIndex:0 animated:0, v14];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)canAddGadgetDescriptor:(id)descriptor
{
  v4 = [(PRGadgetGridModel *)self _sizeClassFromDescriptor:descriptor];
  listModel = [(PRGadgetGridModel *)self listModel];
  v6 = [listModel firstFreeGridCellIndexOfRangeOfSizeClass:v4 gridCellInfoOptions:0] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

- (void)updateIntent:(id)intent forGadgetWithIdentifier:(id)identifier
{
  intentCopy = intent;
  v6 = [(PRGadgetGridModel *)self gadgetDescriptorForIdentifier:identifier];
  v7 = [(NSArray *)self->_gadgetDescriptors indexOfObject:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [v6 copyWithIntent:intentCopy];
    v10 = [(NSArray *)self->_gadgetDescriptors mutableCopy];
    [v10 replaceObjectAtIndex:v8 withObject:v9];
    v11 = [v10 copy];
    [(PRGadgetGridModel *)self setGadgetDescriptors:v11];
  }
}

- (void)saveIconStateIfNeeded
{
  iconModel = [(PRGadgetGridModel *)self iconModel];
  [iconModel saveIconStateIfNeeded];
}

- (void)validateIconsForAvailableApps
{
  v40 = *MEMORY[0x1E69E9840];
  iconModel = [(PRGadgetGridModel *)self iconModel];
  rootFolder = [iconModel rootFolder];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = rootFolder;
  obj = [rootFolder icons];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v32;
    *&v5 = 138412546;
    v27 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        gadgetDescriptorsByUniqueIdentifier = self->_gadgetDescriptorsByUniqueIdentifier;
        uniqueIdentifier = [v9 uniqueIdentifier];
        v12 = [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier objectForKeyedSubscript:uniqueIdentifier];

        providerHasMatchingDescriptor = [v12 providerHasMatchingDescriptor];
        if ((providerHasMatchingDescriptor & 1) == 0)
        {
          v14 = PRLogModel();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            uniqueIdentifier2 = [v12 uniqueIdentifier];
            *buf = v27;
            v36 = v12;
            v37 = 2112;
            v38 = uniqueIdentifier2;
            _os_log_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEFAULT, "Removing descriptor %@ with identifier %@ from gadget grid model because descriptor not found", buf, 0x16u);
          }
        }

        extensionIdentity = [v12 extensionIdentity];
        containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
        extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
        v19 = [PRGadgetGridModel correctedContainerBundleIdentifierForContainerBundleIdentifier:containerBundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier];

        if (!providerHasMatchingDescriptor)
        {
          goto LABEL_20;
        }

        firstList = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v19 allowPlaceholder:0 error:0];
        applicationState = [firstList applicationState];
        isRestricted = [applicationState isRestricted];

        if (isRestricted)
        {
          v23 = PRLogModel();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            uniqueIdentifier3 = [v12 uniqueIdentifier];
            *buf = v27;
            v36 = v12;
            v37 = 2112;
            v38 = uniqueIdentifier3;
            v25 = v23;
            v26 = "Removing descriptor %@ with identifier %@ from gadget grid model because application restricted";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        firstList = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v19];
        if (([firstList isLocked] & 1) != 0 || objc_msgSend(firstList, "isHidden"))
        {
          v23 = PRLogModel();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            uniqueIdentifier3 = [v12 uniqueIdentifier];
            *buf = v27;
            v36 = v12;
            v37 = 2112;
            v38 = uniqueIdentifier3;
            v25 = v23;
            v26 = "Removing descriptor %@ with identifier %@ from gadget grid model because application hidden or locked";
LABEL_18:
            _os_log_impl(&dword_1A8AA7000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
          }

LABEL_19:

LABEL_20:
          firstList = [v29 firstList];
          [firstList removeIcon:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v6);
  }
}

- (SBIconListModel)listModel
{
  rootFolder = [(PRGadgetGridModel *)self rootFolder];
  firstList = [rootFolder firstList];

  return firstList;
}

- (SBRootFolder)rootFolder
{
  iconModel = [(PRGadgetGridModel *)self iconModel];
  rootFolder = [iconModel rootFolder];

  return rootFolder;
}

- (void)_setupFixedPositionsForRowLayout
{
  if ([(PRGadgetGridModel *)self type]!= 3)
  {
    [(PRGadgetGridModel *)self setConfiguringFixedPositions:1];
    iconModel = [(PRGadgetGridModel *)self iconModel];
    rootFolder = [iconModel rootFolder];
    firstList = [rootFolder firstList];

    [firstList removeAllFixedIconLocations];
    icons = [firstList icons];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PRGadgetGridModel__setupFixedPositionsForRowLayout__block_invoke;
    v15[3] = &unk_1E7846000;
    v15[4] = self;
    v7 = [icons bs_filter:v15];

    icons2 = [firstList icons];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__PRGadgetGridModel__setupFixedPositionsForRowLayout__block_invoke_2;
    v14[3] = &unk_1E7846000;
    v14[4] = self;
    v9 = [icons2 bs_filter:v14];

    if ([v7 count] == 1 && objc_msgSend(v9, "count") == 1)
    {
      v10 = [firstList gridSize] - 1;
      firstObject = [v9 firstObject];
      v12 = [firstList moveContainedIcon:firstObject toGridCellIndex:v10 gridCellInfoOptions:0 mutationOptions:128];
    }

    if ([v7 count] == 1 && objc_msgSend(v9, "count") == 2)
    {
      firstObject2 = [v7 firstObject];
      [firstList moveContainedIcon:firstObject2 toIndex:0 options:0];
    }

    [(PRGadgetGridModel *)self setConfiguringFixedPositions:0];
  }
}

BOOL __53__PRGadgetGridModel__setupFixedPositionsForRowLayout__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _sizeClassFromIcon:a2];
  v3 = v2 == @"PRIconGridSizeClassRectangular";

  return v3;
}

BOOL __53__PRGadgetGridModel__setupFixedPositionsForRowLayout__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _sizeClassFromIcon:a2];
  v3 = v2 == @"PRIconGridSizeClassCircular";

  return v3;
}

- (void)_iconModelDidLayoutIconState:(id)state
{
  listModel = [(PRGadgetGridModel *)self listModel];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRIconGridSizeClassCircular", @"PRIconGridSizeClassRectangular", @"PRIconGridSizeClassSystemSmall", 0}];
  v5 = [objc_alloc(MEMORY[0x1E69D4090]) initWithGridSizeClasses:v4];
  [listModel setAllowedGridSizeClasses:v5];
  [listModel setIconLayoutBehavior:3];
  [listModel setFixedIconLocationBehavior:1];
  [listModel addListObserver:self];
  [(PRGadgetGridModel *)self validateIconsForAvailableApps];
  [(PRGadgetGridModel *)self didChangeValueForKey:@"listModel"];
}

- (void)_addIconForDescriptor:(id)descriptor withGridIndex:(id)index animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  indexCopy = index;
  iconModel = [(PRGadgetGridModel *)self iconModel];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];
  v12 = [iconModel leafIconForIdentifier:uniqueIdentifier];

  if (!v12)
  {
    gadgetDescriptors = self->_gadgetDescriptors;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__PRGadgetGridModel__addIconForDescriptor_withGridIndex_animated___block_invoke;
    v28[3] = &unk_1E7846028;
    v14 = descriptorCopy;
    v29 = v14;
    if (([(NSArray *)gadgetDescriptors bs_containsObjectPassingTest:v28]& 1) == 0)
    {
      v15 = [(NSArray *)self->_gadgetDescriptors arrayByAddingObject:v14];
      [(PRGadgetGridModel *)self setGadgetDescriptors:v15];
    }

    v16 = [(PRGadgetGridModel *)self _makeIconForDescriptor:v14];
    unsignedLongValue = [indexCopy unsignedLongValue];
    iconModel2 = [(PRGadgetGridModel *)self iconModel];
    rootFolder = [iconModel2 rootFolder];
    firstList = [rootFolder firstList];
    v21 = [firstList isValidGridCellIndex:unsignedLongValue options:4];

    listModel = [(PRGadgetGridModel *)self listModel];
    v23 = listModel;
    if (indexCopy && (v21 & 1) != 0)
    {
      v24 = [listModel insertIcon:v16 atGridCellIndex:unsignedLongValue gridCellInfoOptions:4 mutationOptions:8];
    }

    else
    {
      v25 = [listModel addIcon:v16];
    }

    if (animatedCopy)
    {
      presenter = [(PRGadgetGridModel *)self presenter];
      [presenter performAnimatedInsertionForIcon:v16];
    }

    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
    iconModel3 = [(PRGadgetGridModel *)self iconModel];
    [iconModel3 saveIconStateIfNeeded];
  }
}

uint64_t __66__PRGadgetGridModel__addIconForDescriptor_withGridIndex_animated___block_invoke(uint64_t a1, void *a2)
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
  iconModel = [(PRGadgetGridModel *)self iconModel];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];

  v9 = [iconModel leafIconForIdentifier:uniqueIdentifier];

  if (v9)
  {
    iconModel2 = [(PRGadgetGridModel *)self iconModel];
    rootFolder = [iconModel2 rootFolder];
    firstList = [rootFolder firstList];

    v13 = [firstList gridCellInfoWithOptions:0];
    v14 = [firstList gridCellIndexForIcon:v9 gridCellInfo:v13];
    iconModel3 = [(PRGadgetGridModel *)self iconModel];
    [iconModel3 removeIcon:v9];

    if (animatedCopy)
    {
      presenter = [(PRGadgetGridModel *)self presenter];
      [presenter performAnimatedRemovalForIcon:v9];
    }

    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
    iconModel4 = [(PRGadgetGridModel *)self iconModel];
    [iconModel4 saveIconStateIfNeeded];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_makeIconForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy gadgetType])
  {
    if ([descriptorCopy gadgetType] != 1)
    {
      v11 = 0;
      goto LABEL_17;
    }

    v5 = objc_opt_class();
    v6 = descriptorCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v12 = v7;

    v13 = [(PRGadgetGridModel *)self _makeControlIconForDescriptor:v12];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = descriptorCopy;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    v13 = [(PRGadgetGridModel *)self _makeWidgetIconForComplicationDescriptor:v12];
  }

  v11 = v13;

LABEL_17:

  return v11;
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

- (id)_makeControlIconForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [PRControlIcon alloc];
  controlIdentity = [descriptorCopy controlIdentity];
  controlType = [descriptorCopy controlType];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];

  v8 = [(PRControlIcon *)v4 initWithControlIdentity:controlIdentity controlType:controlType leafIdentifier:uniqueIdentifier];
  [(SBIcon *)v8 setGridSizeClass:@"PRIconGridSizeClassCircular"];

  return v8;
}

- (void)_populateIntentsByDescriptorIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_gadgetDescriptors;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        intent = [v9 intent];
        uniqueIdentifier = [v9 uniqueIdentifier];
        [v3 setObject:intent forKeyedSubscript:uniqueIdentifier];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  [(PRGadgetGridModel *)self setIntentsByDescriptorIdentifier:v12];
}

- (id)_sizeClassFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy gadgetType])
  {
    if ([descriptorCopy gadgetType] == 1)
    {
      v4 = objc_opt_class();
      v5 = descriptorCopy;
      if (v4)
      {
        v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v5 : 0;
      }

      else
      {
        v6 = 0;
      }

      v13 = v6;

      if (v13)
      {
        v12 = @"PRIconGridSizeClassCircular";

        goto LABEL_20;
      }
    }
  }

  else
  {
    v7 = objc_opt_class();
    v8 = descriptorCopy;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      widget = [v10 widget];
      v12 = PRIconGridSizeClassForWidgetFamily([widget family]);

      goto LABEL_20;
    }
  }

  v14 = PRLogModel();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [PRGadgetGridModel _sizeClassFromDescriptor:descriptorCopy];
  }

  v12 = @"PRIconGridSizeClassCircular";
LABEL_20:

  return v12;
}

- (id)_sizeClassFromIcon:(id)icon
{
  iconCopy = icon;
  v4 = objc_opt_class();
  v5 = iconCopy;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    gridSizeClass = [v7 gridSizeClass];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = v5;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (!v12)
    {
      v13 = PRLogModel();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PRGadgetGridModel _sizeClassFromIcon:v10];
      }
    }

    gridSizeClass = @"PRIconGridSizeClassCircular";
  }

  return gridSizeClass;
}

- (void)iconList:(id)list didAddIcon:(id)icon
{
  if (![(PRGadgetGridModel *)self isConfiguringFixedPositions:list])
  {
    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  iconModel = [(PRGadgetGridModel *)self iconModel];
  [iconModel saveIconStateIfNeeded];
}

- (void)iconList:(id)list didMoveIcon:(id)icon
{
  if (![(PRGadgetGridModel *)self isConfiguringFixedPositions:list])
  {
    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  iconModel = [(PRGadgetGridModel *)self iconModel];
  [iconModel saveIconStateIfNeeded];
}

- (void)iconList:(id)list didRemoveIcon:(id)icon
{
  iconCopy = icon;
  gadgetDescriptorsByUniqueIdentifier = self->_gadgetDescriptorsByUniqueIdentifier;
  v15 = iconCopy;
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  v8 = [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier objectForKeyedSubscript:uniqueIdentifier];

  v9 = [(NSArray *)self->_gadgetDescriptors indexOfObject:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    v11 = [(NSArray *)self->_gadgetDescriptors mutableCopy];
    [v11 removeObjectAtIndex:v10];
    v12 = [v11 copy];
    [(PRGadgetGridModel *)self setGadgetDescriptors:v12];
  }

  v13 = self->_gadgetDescriptorsByUniqueIdentifier;
  uniqueIdentifier2 = [v15 uniqueIdentifier];
  [(NSMutableDictionary *)v13 removeObjectForKey:uniqueIdentifier2];
}

- (BOOL)saveCurrentIconState:(id)state error:(id *)error
{
  objc_storeStrong(&self->_iconLayout, state);
  delegate = [(PRGadgetGridModel *)self delegate];
  [delegate gadgetGridModelDidUpdateContent:self];

  return 1;
}

- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)options error:(id *)error
{
  iconLayout = self->_iconLayout;
  self->_iconLayout = 0;

  delegate = [(PRGadgetGridModel *)self delegate];
  [delegate gadgetGridModelDidUpdateContent:self];

  return 1;
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
  allKeys = [(NSMutableDictionary *)self->_gadgetDescriptorsByUniqueIdentifier allKeys];
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  v9 = [allKeys containsObject:uniqueIdentifier];

  if ((v9 & 1) == 0)
  {
    v10 = objc_opt_class();
    v11 = iconCopy;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      activeWidget = [v13 activeWidget];
      gridSizeClass = [v11 gridSizeClass];
      v16 = PRWidgetFamilyForIconGridSizeClass(gridSizeClass);
      v17 = objc_alloc(MEMORY[0x1E6994290]);
      extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
      containerBundleIdentifier = [activeWidget containerBundleIdentifier];
      v20 = [v17 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

      v21 = objc_alloc(MEMORY[0x1E6994370]);
      kind = [activeWidget kind];
      v23 = [v21 initWithExtensionIdentity:v20 kind:kind family:v16 intent:0 activityIdentifier:0];

      v24 = [PRComplicationDescriptor alloc];
      uniqueIdentifier2 = [v11 uniqueIdentifier];
      v26 = [(PRComplicationDescriptor *)v24 initWithUniqueIdentifier:uniqueIdentifier2 widget:v23];
    }

    else
    {
      v26 = 0;
    }

    v27 = objc_opt_class();
    v28 = v11;
    if (v27)
    {
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (v30)
    {
      v31 = [PRControlDescriptor alloc];
      uniqueIdentifier3 = [v28 uniqueIdentifier];
      controlIdentity = [v30 controlIdentity];
      v34 = -[PRControlDescriptor initWithUniqueIdentifier:controlIdentity:controlType:](v31, "initWithUniqueIdentifier:controlIdentity:controlType:", uniqueIdentifier3, controlIdentity, [v30 controlType]);

      v26 = v34;
    }

    if (v26)
    {
      gadgetDescriptorsByUniqueIdentifier = self->_gadgetDescriptorsByUniqueIdentifier;
      uniqueIdentifier4 = [v28 uniqueIdentifier];
      [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier setObject:v26 forKey:uniqueIdentifier4];

      v37 = [(NSArray *)self->_gadgetDescriptors mutableCopy];
      [v37 addObject:v26];
      v38 = [v37 copy];
      [(PRGadgetGridModel *)self setGadgetDescriptors:v38];

      [modelCopy saveIconStateIfNeeded];
    }
  }
}

- (void)iconModel:(id)model launchIcon:(id)icon fromLocation:(id)location context:(id)context
{
  iconCopy = icon;
  presenter = [(PRGadgetGridModel *)self presenter];
  [presenter handleLaunchRequestForIcon:iconCopy];
}

void __61__PRGadgetGridModel_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) iconModel];
  v2 = [*(a1 + 32) iconLayout];
  [v3 importIconState:v2];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PRGadgetGridModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E7843070;
  v8 = subscriptionCopy;
  selfCopy = self;
  v6 = subscriptionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __66__PRGadgetGridModel_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appProtectionSubjectMonitorSubscription];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v5 = [*(a1 + 40) iconModel];
    v4 = [*(a1 + 40) iconLayout];
    [v5 importIconState:v4];
  }
}

- (PRGadgetGridModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);

  return WeakRetained;
}

- (PRGadgetGridModelPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)_sizeClassFromDescriptor:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v2, v3, "Unrecognized gadget descriptor %@ with identifier %@", v4, v5, v6, v7, v8);
}

- (void)_sizeClassFromIcon:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v2, v3, "Unrecognized SBIcon %@ with identifier %@", v4, v5, v6, v7, v8);
}

@end