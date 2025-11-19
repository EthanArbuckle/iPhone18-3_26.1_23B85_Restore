@interface PRGadgetGridModel
+ (id)correctedContainerBundleIdentifierForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)canAddGadgetDescriptor:(id)a3;
- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4;
- (PRGadgetGridModel)initWithGadgetDescriptors:(id)a3 iconLayout:(id)a4 type:(unint64_t)a5;
- (PRGadgetGridModelDelegate)delegate;
- (PRGadgetGridModelPresenting)presenter;
- (SBIconListModel)listModel;
- (SBRootFolder)rootFolder;
- (id)_makeControlIconForDescriptor:(id)a3;
- (id)_makeIconForDescriptor:(id)a3;
- (id)_makeWidgetIconForComplicationDescriptor:(id)a3;
- (id)_removeIconForDescriptor:(id)a3 animated:(BOOL)a4;
- (id)_sizeClassFromDescriptor:(id)a3;
- (id)_sizeClassFromIcon:(id)a3;
- (id)gridSizeClassSizesForIconModel:(id)a3;
- (id)iconModel:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4;
- (void)_addIconForDescriptor:(id)a3 withGridIndex:(id)a4 animated:(BOOL)a5;
- (void)_iconModelDidLayoutIconState:(id)a3;
- (void)_populateIntentsByDescriptorIdentifier;
- (void)_setupFixedPositionsForRowLayout;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didMoveIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconModel:(id)a3 didAddIcon:(id)a4;
- (void)iconModel:(id)a3 launchIcon:(id)a4 fromLocation:(id)a5 context:(id)a6;
- (void)saveIconStateIfNeeded;
- (void)setGadgetDescriptors:(id)a3;
- (void)setGadgetDescriptors:(id)a3 iconLayout:(id)a4;
- (void)updateIntent:(id)a3 forGadgetWithIdentifier:(id)a4;
- (void)validateIconsForAvailableApps;
@end

@implementation PRGadgetGridModel

+ (id)correctedContainerBundleIdentifierForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (-[__CFString isEqualToString:](v5, "isEqualToString:", @"com.apple.Health.Sleep") && [v6 isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {

    v5 = @"com.apple.Health";
  }

  return v5;
}

- (PRGadgetGridModel)initWithGadgetDescriptors:(id)a3 iconLayout:(id)a4 type:(unint64_t)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v45.receiver = self;
  v45.super_class = PRGadgetGridModel;
  v11 = [(PRGadgetGridModel *)&v45 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v11->_gadgetDescriptors, a3);
  objc_storeStrong(&v12->_iconLayout, a4);
  v12->_type = a5;
  if (a5 < 3)
  {
    v12->_gridSize.columns = 4;
    v13 = 1;
LABEL_6:
    v12->_gridSize.rows = v13;
    goto LABEL_7;
  }

  if (a5 == 3)
  {
    v13 = [MEMORY[0x1E6999618] sidebarGridHeight];
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
  v18 = v9;
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
        v25 = [v23 uniqueIdentifier];
        [(NSMutableDictionary *)v24 setObject:v23 forKey:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v20);
  }

  v12->_layoutInsetsMode = 0;
  v26 = [MEMORY[0x1E696AD88] defaultCenter];
  [v26 addObserver:v12 selector:sel__iconModelWillLayoutIconState_ name:*MEMORY[0x1E69D4168] object:v12->_iconModel];

  v27 = [MEMORY[0x1E696AD88] defaultCenter];
  [v27 addObserver:v12 selector:sel__iconModelDidLayoutIconState_ name:*MEMORY[0x1E69D4160] object:v12->_iconModel];

  [(SBHIconModel *)v12->_iconModel layoutIfNeeded];
  v28 = PRSharedWidgetExtensionProvider();
  [v28 registerObserver:v12];

  [(PRGadgetGridModel *)v12 _populateIntentsByDescriptorIdentifier];
  if (!v10)
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

  v34 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v35 = [v34 addMonitor:v12 subjectMask:1 subscriptionOptions:1];
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

- (void)setGadgetDescriptors:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_gadgetDescriptors, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
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
          v13 = [v11 uniqueIdentifier];
          [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier setObject:v11 forKey:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(PRGadgetGridModel *)self _populateIntentsByDescriptorIdentifier];
    v14 = [(PRGadgetGridModel *)self delegate];
    [v14 gadgetGridModelDidUpdateContent:self];
  }
}

- (void)setGadgetDescriptors:(id)a3 iconLayout:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PRGadgetGridModel *)self setGadgetDescriptors:v6];
  v8 = [(PRGadgetGridModel *)self iconModel];
  [v8 importIconState:v7];

  if (!v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v6;
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

- (BOOL)canAddGadgetDescriptor:(id)a3
{
  v4 = [(PRGadgetGridModel *)self _sizeClassFromDescriptor:a3];
  v5 = [(PRGadgetGridModel *)self listModel];
  v6 = [v5 firstFreeGridCellIndexOfRangeOfSizeClass:v4 gridCellInfoOptions:0] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

- (void)updateIntent:(id)a3 forGadgetWithIdentifier:(id)a4
{
  v12 = a3;
  v6 = [(PRGadgetGridModel *)self gadgetDescriptorForIdentifier:a4];
  v7 = [(NSArray *)self->_gadgetDescriptors indexOfObject:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [v6 copyWithIntent:v12];
    v10 = [(NSArray *)self->_gadgetDescriptors mutableCopy];
    [v10 replaceObjectAtIndex:v8 withObject:v9];
    v11 = [v10 copy];
    [(PRGadgetGridModel *)self setGadgetDescriptors:v11];
  }
}

- (void)saveIconStateIfNeeded
{
  v2 = [(PRGadgetGridModel *)self iconModel];
  [v2 saveIconStateIfNeeded];
}

- (void)validateIconsForAvailableApps
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [(PRGadgetGridModel *)self iconModel];
  v3 = [v2 rootFolder];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = v3;
  obj = [v3 icons];
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
        v11 = [v9 uniqueIdentifier];
        v12 = [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier objectForKeyedSubscript:v11];

        v13 = [v12 providerHasMatchingDescriptor];
        if ((v13 & 1) == 0)
        {
          v14 = PRLogModel();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 uniqueIdentifier];
            *buf = v27;
            v36 = v12;
            v37 = 2112;
            v38 = v15;
            _os_log_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEFAULT, "Removing descriptor %@ with identifier %@ from gadget grid model because descriptor not found", buf, 0x16u);
          }
        }

        v16 = [v12 extensionIdentity];
        v17 = [v16 containerBundleIdentifier];
        v18 = [v16 extensionBundleIdentifier];
        v19 = [PRGadgetGridModel correctedContainerBundleIdentifierForContainerBundleIdentifier:v17 extensionBundleIdentifier:v18];

        if (!v13)
        {
          goto LABEL_20;
        }

        v20 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v19 allowPlaceholder:0 error:0];
        v21 = [v20 applicationState];
        v22 = [v21 isRestricted];

        if (v22)
        {
          v23 = PRLogModel();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v12 uniqueIdentifier];
            *buf = v27;
            v36 = v12;
            v37 = 2112;
            v38 = v24;
            v25 = v23;
            v26 = "Removing descriptor %@ with identifier %@ from gadget grid model because application restricted";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v20 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v19];
        if (([v20 isLocked] & 1) != 0 || objc_msgSend(v20, "isHidden"))
        {
          v23 = PRLogModel();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v12 uniqueIdentifier];
            *buf = v27;
            v36 = v12;
            v37 = 2112;
            v38 = v24;
            v25 = v23;
            v26 = "Removing descriptor %@ with identifier %@ from gadget grid model because application hidden or locked";
LABEL_18:
            _os_log_impl(&dword_1A8AA7000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
          }

LABEL_19:

LABEL_20:
          v20 = [v29 firstList];
          [v20 removeIcon:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v6);
  }
}

- (SBIconListModel)listModel
{
  v2 = [(PRGadgetGridModel *)self rootFolder];
  v3 = [v2 firstList];

  return v3;
}

- (SBRootFolder)rootFolder
{
  v2 = [(PRGadgetGridModel *)self iconModel];
  v3 = [v2 rootFolder];

  return v3;
}

- (void)_setupFixedPositionsForRowLayout
{
  if ([(PRGadgetGridModel *)self type]!= 3)
  {
    [(PRGadgetGridModel *)self setConfiguringFixedPositions:1];
    v3 = [(PRGadgetGridModel *)self iconModel];
    v4 = [v3 rootFolder];
    v5 = [v4 firstList];

    [v5 removeAllFixedIconLocations];
    v6 = [v5 icons];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PRGadgetGridModel__setupFixedPositionsForRowLayout__block_invoke;
    v15[3] = &unk_1E7846000;
    v15[4] = self;
    v7 = [v6 bs_filter:v15];

    v8 = [v5 icons];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__PRGadgetGridModel__setupFixedPositionsForRowLayout__block_invoke_2;
    v14[3] = &unk_1E7846000;
    v14[4] = self;
    v9 = [v8 bs_filter:v14];

    if ([v7 count] == 1 && objc_msgSend(v9, "count") == 1)
    {
      v10 = [v5 gridSize] - 1;
      v11 = [v9 firstObject];
      v12 = [v5 moveContainedIcon:v11 toGridCellIndex:v10 gridCellInfoOptions:0 mutationOptions:128];
    }

    if ([v7 count] == 1 && objc_msgSend(v9, "count") == 2)
    {
      v13 = [v7 firstObject];
      [v5 moveContainedIcon:v13 toIndex:0 options:0];
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

- (void)_iconModelDidLayoutIconState:(id)a3
{
  v6 = [(PRGadgetGridModel *)self listModel];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRIconGridSizeClassCircular", @"PRIconGridSizeClassRectangular", @"PRIconGridSizeClassSystemSmall", 0}];
  v5 = [objc_alloc(MEMORY[0x1E69D4090]) initWithGridSizeClasses:v4];
  [v6 setAllowedGridSizeClasses:v5];
  [v6 setIconLayoutBehavior:3];
  [v6 setFixedIconLocationBehavior:1];
  [v6 addListObserver:self];
  [(PRGadgetGridModel *)self validateIconsForAvailableApps];
  [(PRGadgetGridModel *)self didChangeValueForKey:@"listModel"];
}

- (void)_addIconForDescriptor:(id)a3 withGridIndex:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(PRGadgetGridModel *)self iconModel];
  v11 = [v8 uniqueIdentifier];
  v12 = [v10 leafIconForIdentifier:v11];

  if (!v12)
  {
    gadgetDescriptors = self->_gadgetDescriptors;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__PRGadgetGridModel__addIconForDescriptor_withGridIndex_animated___block_invoke;
    v28[3] = &unk_1E7846028;
    v14 = v8;
    v29 = v14;
    if (([(NSArray *)gadgetDescriptors bs_containsObjectPassingTest:v28]& 1) == 0)
    {
      v15 = [(NSArray *)self->_gadgetDescriptors arrayByAddingObject:v14];
      [(PRGadgetGridModel *)self setGadgetDescriptors:v15];
    }

    v16 = [(PRGadgetGridModel *)self _makeIconForDescriptor:v14];
    v17 = [v9 unsignedLongValue];
    v18 = [(PRGadgetGridModel *)self iconModel];
    v19 = [v18 rootFolder];
    v20 = [v19 firstList];
    v21 = [v20 isValidGridCellIndex:v17 options:4];

    v22 = [(PRGadgetGridModel *)self listModel];
    v23 = v22;
    if (v9 && (v21 & 1) != 0)
    {
      v24 = [v22 insertIcon:v16 atGridCellIndex:v17 gridCellInfoOptions:4 mutationOptions:8];
    }

    else
    {
      v25 = [v22 addIcon:v16];
    }

    if (v5)
    {
      v26 = [(PRGadgetGridModel *)self presenter];
      [v26 performAnimatedInsertionForIcon:v16];
    }

    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
    v27 = [(PRGadgetGridModel *)self iconModel];
    [v27 saveIconStateIfNeeded];
  }
}

uint64_t __66__PRGadgetGridModel__addIconForDescriptor_withGridIndex_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = BSEqualStrings();

  return v5;
}

- (id)_removeIconForDescriptor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PRGadgetGridModel *)self iconModel];
  v8 = [v6 uniqueIdentifier];

  v9 = [v7 leafIconForIdentifier:v8];

  if (v9)
  {
    v10 = [(PRGadgetGridModel *)self iconModel];
    v11 = [v10 rootFolder];
    v12 = [v11 firstList];

    v13 = [v12 gridCellInfoWithOptions:0];
    v14 = [v12 gridCellIndexForIcon:v9 gridCellInfo:v13];
    v15 = [(PRGadgetGridModel *)self iconModel];
    [v15 removeIcon:v9];

    if (v4)
    {
      v16 = [(PRGadgetGridModel *)self presenter];
      [v16 performAnimatedRemovalForIcon:v9];
    }

    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
    v17 = [(PRGadgetGridModel *)self iconModel];
    [v17 saveIconStateIfNeeded];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_makeIconForDescriptor:(id)a3
{
  v4 = a3;
  if ([v4 gadgetType])
  {
    if ([v4 gadgetType] != 1)
    {
      v11 = 0;
      goto LABEL_17;
    }

    v5 = objc_opt_class();
    v6 = v4;
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
    v9 = v4;
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

- (id)_makeWidgetIconForComplicationDescriptor:(id)a3
{
  v3 = MEMORY[0x1E69D40E8];
  v4 = a3;
  v21 = [v3 alloc];
  v5 = [v4 uniqueIdentifier];
  v6 = [v4 widget];
  v7 = [v6 kind];
  v8 = [v4 widget];
  v9 = [v8 extensionIdentity];
  v10 = [v9 extensionBundleIdentifier];
  v11 = [v4 widget];
  v12 = [v11 extensionIdentity];
  v13 = [v12 containerBundleIdentifier];
  v22 = [v21 initWithUniqueIdentifier:v5 kind:v7 extensionBundleIdentifier:v10 containerBundleIdentifier:v13];

  v14 = [objc_alloc(MEMORY[0x1E69D4118]) initWithWidget:v22];
  v15 = [v4 uniqueIdentifier];
  v16 = [v14 copyWithLeafIdentifier:v15];

  v17 = [v4 widget];

  v18 = [v17 family];
  v19 = PRIconGridSizeClassForWidgetFamily(v18);
  [v16 setGridSizeClass:v19];

  return v16;
}

- (id)_makeControlIconForDescriptor:(id)a3
{
  v3 = a3;
  v4 = [PRControlIcon alloc];
  v5 = [v3 controlIdentity];
  v6 = [v3 controlType];
  v7 = [v3 uniqueIdentifier];

  v8 = [(PRControlIcon *)v4 initWithControlIdentity:v5 controlType:v6 leafIdentifier:v7];
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
        v10 = [v9 intent];
        v11 = [v9 uniqueIdentifier];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  [(PRGadgetGridModel *)self setIntentsByDescriptorIdentifier:v12];
}

- (id)_sizeClassFromDescriptor:(id)a3
{
  v3 = a3;
  if ([v3 gadgetType])
  {
    if ([v3 gadgetType] == 1)
    {
      v4 = objc_opt_class();
      v5 = v3;
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
    v8 = v3;
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
      v11 = [v10 widget];
      v12 = PRIconGridSizeClassForWidgetFamily([v11 family]);

      goto LABEL_20;
    }
  }

  v14 = PRLogModel();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [PRGadgetGridModel _sizeClassFromDescriptor:v3];
  }

  v12 = @"PRIconGridSizeClassCircular";
LABEL_20:

  return v12;
}

- (id)_sizeClassFromIcon:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
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
    v8 = [v7 gridSizeClass];
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

    v8 = @"PRIconGridSizeClassCircular";
  }

  return v8;
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  if (![(PRGadgetGridModel *)self isConfiguringFixedPositions:a3])
  {
    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  v5 = [(PRGadgetGridModel *)self iconModel];
  [v5 saveIconStateIfNeeded];
}

- (void)iconList:(id)a3 didMoveIcon:(id)a4
{
  if (![(PRGadgetGridModel *)self isConfiguringFixedPositions:a3])
  {
    [(PRGadgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  v5 = [(PRGadgetGridModel *)self iconModel];
  [v5 saveIconStateIfNeeded];
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v5 = a4;
  gadgetDescriptorsByUniqueIdentifier = self->_gadgetDescriptorsByUniqueIdentifier;
  v15 = v5;
  v7 = [v5 uniqueIdentifier];
  v8 = [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier objectForKeyedSubscript:v7];

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
  v14 = [v15 uniqueIdentifier];
  [(NSMutableDictionary *)v13 removeObjectForKey:v14];
}

- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4
{
  objc_storeStrong(&self->_iconLayout, a3);
  v5 = [(PRGadgetGridModel *)self delegate];
  [v5 gadgetGridModelDidUpdateContent:self];

  return 1;
}

- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)a3 error:(id *)a4
{
  iconLayout = self->_iconLayout;
  self->_iconLayout = 0;

  v6 = [(PRGadgetGridModel *)self delegate];
  [v6 gadgetGridModelDidUpdateContent:self];

  return 1;
}

- (id)gridSizeClassSizesForIconModel:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69D4098]) initWithGridSizeClassesAndGridSizes:{@"PRIconGridSizeClassCircular", 65537, @"PRIconGridSizeClassRectangular", 65538, @"PRIconGridSizeClassSystemSmall", 131074, 0}];

  return v3;
}

- (id)iconModel:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4
{
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRIconGridSizeClassCircular", a4, @"PRIconGridSizeClassRectangular", @"PRIconGridSizeClassSystemSmall", 0}];
  v5 = [objc_alloc(MEMORY[0x1E69D4090]) initWithGridSizeClasses:v4];

  return v5;
}

- (void)iconModel:(id)a3 didAddIcon:(id)a4
{
  v39 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_gadgetDescriptorsByUniqueIdentifier allKeys];
  v8 = [v6 uniqueIdentifier];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = objc_opt_class();
    v11 = v6;
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
      v14 = [v13 activeWidget];
      v15 = [v11 gridSizeClass];
      v16 = PRWidgetFamilyForIconGridSizeClass(v15);
      v17 = objc_alloc(MEMORY[0x1E6994290]);
      v18 = [v14 extensionBundleIdentifier];
      v19 = [v14 containerBundleIdentifier];
      v20 = [v17 initWithExtensionBundleIdentifier:v18 containerBundleIdentifier:v19 deviceIdentifier:0];

      v21 = objc_alloc(MEMORY[0x1E6994370]);
      v22 = [v14 kind];
      v23 = [v21 initWithExtensionIdentity:v20 kind:v22 family:v16 intent:0 activityIdentifier:0];

      v24 = [PRComplicationDescriptor alloc];
      v25 = [v11 uniqueIdentifier];
      v26 = [(PRComplicationDescriptor *)v24 initWithUniqueIdentifier:v25 widget:v23];
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
      v32 = [v28 uniqueIdentifier];
      v33 = [v30 controlIdentity];
      v34 = -[PRControlDescriptor initWithUniqueIdentifier:controlIdentity:controlType:](v31, "initWithUniqueIdentifier:controlIdentity:controlType:", v32, v33, [v30 controlType]);

      v26 = v34;
    }

    if (v26)
    {
      gadgetDescriptorsByUniqueIdentifier = self->_gadgetDescriptorsByUniqueIdentifier;
      v36 = [v28 uniqueIdentifier];
      [(NSMutableDictionary *)gadgetDescriptorsByUniqueIdentifier setObject:v26 forKey:v36];

      v37 = [(NSArray *)self->_gadgetDescriptors mutableCopy];
      [v37 addObject:v26];
      v38 = [v37 copy];
      [(PRGadgetGridModel *)self setGadgetDescriptors:v38];

      [v39 saveIconStateIfNeeded];
    }
  }
}

- (void)iconModel:(id)a3 launchIcon:(id)a4 fromLocation:(id)a5 context:(id)a6
{
  v7 = a4;
  v8 = [(PRGadgetGridModel *)self presenter];
  [v8 handleLaunchRequestForIcon:v7];
}

void __61__PRGadgetGridModel_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) iconModel];
  v2 = [*(a1 + 32) iconLayout];
  [v3 importIconState:v2];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PRGadgetGridModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E7843070;
  v8 = v5;
  v9 = self;
  v6 = v5;
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