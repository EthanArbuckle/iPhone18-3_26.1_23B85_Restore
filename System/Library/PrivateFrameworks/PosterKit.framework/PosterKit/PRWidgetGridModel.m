@interface PRWidgetGridModel
+ (id)effectiveContainerBundleIdentifierForComplicationDescriptor:(id)a3;
+ (id)effectiveContainerBundleIdentifierForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)canAddComplicationDescriptor:(id)a3;
- (NSArray)complicationDescriptors;
- (NSDictionary)iconLayout;
- (NSDictionary)intentsByDescriptorIdentifier;
- (NSString)description;
- (PRWidgetGridModel)init;
- (PRWidgetGridModel)initWithComplicationDescriptors:(id)a3 iconLayout:(id)a4 type:(unint64_t)a5;
- (PRWidgetGridModelPresenting)presenter;
- (SBIconListModel)listModel;
- (SBRootFolder)rootFolder;
- (id)_makeWidgetIconForComplicationDescriptor:(id)a3;
- (id)_removeIconForDescriptor:(id)a3 animated:(BOOL)a4;
- (id)complicationDescriptorForIdentifier:(id)a3;
- (id)gridSizeClassSizesForIconModel:(id)a3;
- (id)iconModel:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4;
- (void)_addIconForDescriptor:(id)a3 withGridIndex:(id)a4 animated:(BOOL)a5;
- (void)_fireDidUpdateIconLayout:(id)a3 observers:(id)a4;
- (void)_fireDidUpdateLayoutInsetsMode:(unint64_t)a3 observers:(id)a4;
- (void)_fireDidUpdateListModel:(id)a3 observers:(id)a4;
- (void)_fireObserversForSelector:(SEL)a3 observers:(id)a4 withBlock:(id)a5;
- (void)_fireWidgetGridModelDidUpdateContent:(id)a3;
- (void)_fireWidgetGridModelDidUpdateIntents:(id)a3;
- (void)_iconModelDidLayoutIconState:(id)a3;
- (void)_setupFixedPositionsForRowLayout;
- (void)_updateLayoutInsetsMode;
- (void)addWidgetGridModelObserver:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didMoveIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconModel:(id)a3 didAddIcon:(id)a4;
- (void)iconModel:(id)a3 launchIcon:(id)a4 fromLocation:(id)a5 context:(id)a6;
- (void)invalidate;
- (void)saveIconStateIfNeeded;
- (void)setComplicationDescriptors:(id)a3;
- (void)setComplicationDescriptors:(id)a3 iconLayout:(id)a4;
- (void)setIconLayout:(id)a3;
- (void)setLayoutInsetsMode:(unint64_t)a3;
- (void)updateIntent:(id)a3 forWidgetWithIdentifier:(id)a4;
- (void)validateIconsForAvailableWidgets;
@end

@implementation PRWidgetGridModel

- (NSArray)complicationDescriptors
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v3 = [WeakRetained complicationDescriptors];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(PRWidgetGridModel *)self rootFolder];
  v3 = [v2 firstList];

  return v3;
}

- (SBRootFolder)rootFolder
{
  v2 = [(PRWidgetGridModel *)self iconModel];
  v3 = [v2 rootFolder];

  return v3;
}

- (PRWidgetGridModel)initWithComplicationDescriptors:(id)a3 iconLayout:(id)a4 type:(unint64_t)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v32.receiver = self;
  v32.super_class = PRWidgetGridModel;
  v10 = [(PRWidgetGridModel *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_17;
  }

  v10->_type = a5;
  v12 = [[_PRWidgetGridModelStore alloc] initWithComplicationDescriptors:v8 iconLayout:v9];
  [(_PRWidgetGridModelStore *)v12 setDelegate:v11];
  if (a5 == 1)
  {
    v13 = [MEMORY[0x1E6999618] sidebarGridHeight];
    v11->_gridSize.columns = 2;
    goto LABEL_6;
  }

  if (!a5)
  {
    v11->_gridSize.columns = 4;
    v13 = 1;
LABEL_6:
    v11->_gridSize.rows = v13;
  }

  v14 = [objc_alloc(MEMORY[0x1E69D40A8]) initWithStore:v12];
  iconModel = v11->_iconModel;
  v11->_iconModel = v14;

  [(SBHIconModel *)v11->_iconModel setDelegate:v11];
  objc_storeWeak(&v11->_store, v12);
  v11->_layoutInsetsMode = 0;
  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 addObserver:v11 selector:sel__iconModelDidLayoutIconState_ name:*MEMORY[0x1E69D4160] object:v11->_iconModel];

  [(SBHIconModel *)v11->_iconModel layoutIfNeeded];
  v17 = PRSharedWidgetExtensionProvider();
  [v17 registerObserver:v11];

  [(PRWidgetGridModel *)v11 _updateLayoutInsetsMode];
  if (!v9)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v8;
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

  v23 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v24 = [v23 addMonitor:v11 subjectMask:1 subscriptionOptions:1];
  objc_storeWeak(&v11->_appProtectionSubjectMonitorSubscription, v24);

  v25 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  observers = v11->_observers;
  v11->_observers = v25;

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

- (void)addWidgetGridModelObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)setLayoutInsetsMode:(unint64_t)a3
{
  if (self->_layoutInsetsMode != a3)
  {
    self->_layoutInsetsMode = a3;
    [PRWidgetGridModel _fireDidUpdateLayoutInsetsMode:"_fireDidUpdateLayoutInsetsMode:observers:" observers:?];
  }
}

- (NSDictionary)iconLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v3 = [WeakRetained iconLayout];

  return v3;
}

- (void)setIconLayout:(id)a3
{
  v4 = [(PRWidgetGridModel *)self iconModel];
  v5 = [(PRWidgetGridModel *)self iconLayout];
  [v4 importIconState:v5];

  v6 = [(PRWidgetGridModel *)self iconLayout];
  [(PRWidgetGridModel *)self _fireDidUpdateIconLayout:v6 observers:0];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRWidgetGridModel *)self iconLayout];
  [v3 appendDictionarySection:v4 withName:@"iconLayout" skipIfEmpty:1];

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

  v8 = [v3 build];

  return v8;
}

- (id)complicationDescriptorForIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = [WeakRetained complicationDescriptorForIdentifier:v4];

  return v6;
}

- (BOOL)canAddComplicationDescriptor:(id)a3
{
  v4 = [a3 widget];
  v5 = PRIconGridSizeClassForWidgetFamily([v4 family]);

  v6 = [(PRWidgetGridModel *)self listModel];
  LOBYTE(v4) = [v6 firstFreeGridCellIndexOfRangeOfSizeClass:v5 gridCellInfoOptions:0] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)updateIntent:(id)a3 forWidgetWithIdentifier:(id)a4
{
  v10 = a3;
  v6 = [(PRWidgetGridModel *)self complicationDescriptorForIdentifier:a4];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v8 = [WeakRetained updateIntent:v10 forComplicationDescriptor:v6];

    if (v8)
    {
      [(PRWidgetGridModel *)self _updateLayoutInsetsMode];
      v9 = [(PRWidgetGridModel *)self iconModel];
      [v9 saveIconStateIfNeeded];

      [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateContent:0];
      [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateIntents:0];
    }
  }
}

- (void)saveIconStateIfNeeded
{
  v2 = [(PRWidgetGridModel *)self iconModel];
  [v2 saveIconStateIfNeeded];
}

- (void)setComplicationDescriptors:(id)a3 iconLayout:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PRWidgetGridModel *)self setComplicationDescriptors:v6];
  v8 = [(PRWidgetGridModel *)self iconModel];
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

          [(PRWidgetGridModel *)self _addIconForDescriptor:*(*(&v14 + 1) + 8 * v13++) withGridIndex:0 animated:0, v14];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateIntents:0, v14];
  [(PRWidgetGridModel *)self _fireDidUpdateIconLayout:v7 observers:0];
}

- (NSDictionary)intentsByDescriptorIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v3 = [WeakRetained intentsByDescriptorIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (void)setComplicationDescriptors:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = [WeakRetained updateComplicationsWithArray:v4];

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
    v3 = [(PRWidgetGridModel *)self iconModel];
    v4 = [v3 rootFolder];
    v13 = [v4 firstList];

    [v13 removeAllFixedIconLocations];
    v5 = [v13 icons];
    v6 = [v5 bs_filter:&__block_literal_global_20];

    v7 = [v13 icons];
    v8 = [v7 bs_filter:&__block_literal_global_23];

    if ([v6 count] == 1 && objc_msgSend(v8, "count") == 1)
    {
      v9 = [v13 gridSize] - 1;
      v10 = [v8 firstObject];
      v11 = [v13 moveContainedIcon:v10 toGridCellIndex:v9 gridCellInfoOptions:0 mutationOptions:128];
    }

    if ([v6 count] == 1 && objc_msgSend(v8, "count") == 2)
    {
      v12 = [v6 firstObject];
      [v13 moveContainedIcon:v12 toIndex:0 options:0];
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

- (void)_iconModelDidLayoutIconState:(id)a3
{
  v6 = [(PRWidgetGridModel *)self listModel];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRIconGridSizeClassCircular", @"PRIconGridSizeClassRectangular", @"PRIconGridSizeClassSystemSmall", 0}];
  v5 = [objc_alloc(MEMORY[0x1E69D4090]) initWithGridSizeClasses:v4];
  [v6 setAllowedGridSizeClasses:v5];
  [v6 setIconLayoutBehavior:3];
  [v6 setFixedIconLocationBehavior:1];
  [v6 addListObserver:self];
  [(PRWidgetGridModel *)self validateIconsForAvailableWidgets];
  [(PRWidgetGridModel *)self _fireDidUpdateListModel:v6 observers:0];
}

- (void)validateIconsForAvailableWidgets
{
  v2 = self;
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(PRWidgetGridModel *)self iconModel];
  v4 = [v3 rootFolder];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v4 icons];
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    *&v6 = 138543618;
    v25 = v6;
    v26 = v4;
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
          v12 = [v11 leafIdentifier];
          v13 = [(PRWidgetGridModel *)v2 complicationDescriptorForIdentifier:v12];
          if (([v13 hasMatchingDescriptor] & 1) == 0)
          {
            v14 = [v4 firstList];
            [v14 removeIcon:v11];
          }

          WeakRetained = objc_loadWeakRetained(&v2->_store);
          v30 = 0;
          v16 = [WeakRetained applicationRecordForComplication:v13 error:&v30];
          v17 = v30;

          if (v17)
          {
            v18 = PRLogCommon();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v36 = v12;
              v37 = 2112;
              v38 = v17;
              _os_log_error_impl(&dword_1A8AA7000, v18, OS_LOG_TYPE_ERROR, "unable to lookup application record for complication %{public}@: %@", buf, 0x16u);
            }
          }

          else
          {
            v19 = [v16 applicationState];
            v20 = [v19 isRestricted];

            if (v20)
            {
              v21 = PRLogCommon();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v36 = v12;
                _os_log_impl(&dword_1A8AA7000, v21, OS_LOG_TYPE_DEFAULT, "%@ is restricted. Removing widget icon.", buf, 0xCu);
              }

              v18 = [v4 firstList];
              [v18 removeIcon:v11];
            }

            else
            {
              v18 = [objc_opt_class() effectiveContainerBundleIdentifierForComplicationDescriptor:v13];
              v22 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v18];
              if (([v22 isLocked] & 1) != 0 || objc_msgSend(v22, "isHidden"))
              {
                [v4 firstList];
                v24 = v23 = v2;
                [v24 removeIcon:v11];

                v2 = v23;
                v4 = v26;
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

+ (id)effectiveContainerBundleIdentifierForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (-[__CFString isEqualToString:](v5, "isEqualToString:", @"com.apple.Health.Sleep") && [v6 isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {

    v5 = @"com.apple.Health";
  }

  return v5;
}

+ (id)effectiveContainerBundleIdentifierForComplicationDescriptor:(id)a3
{
  v3 = [a3 widget];
  v4 = [v3 extensionIdentity];

  v5 = [v4 containerBundleIdentifier];
  v6 = [v4 extensionBundleIdentifier];
  v7 = [PRWidgetGridModel effectiveContainerBundleIdentifierForContainerBundleIdentifier:v5 extensionBundleIdentifier:v6];

  return v7;
}

- (void)_addIconForDescriptor:(id)a3 withGridIndex:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(PRWidgetGridModel *)self iconModel];
  v11 = [v8 uniqueIdentifier];
  v12 = [v10 leafIconForIdentifier:v11];

  if (!v12)
  {
    v13 = [v8 widget];
    v14 = PRWidgetGridSupportsFamily([v13 family]);

    if (v14)
    {
      v15 = [(PRWidgetGridModel *)self complicationDescriptors];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __66__PRWidgetGridModel__addIconForDescriptor_withGridIndex_animated___block_invoke;
      v31[3] = &unk_1E7844750;
      v16 = v8;
      v32 = v16;
      if (([v15 bs_containsObjectPassingTest:v31]& 1) == 0)
      {
        v17 = [v15 arrayByAddingObject:v16];
        [(PRWidgetGridModel *)self setComplicationDescriptors:v17];
      }

      v30 = [(PRWidgetGridModel *)self _makeWidgetIconForComplicationDescriptor:v16];
      v18 = [v9 unsignedLongValue];
      v19 = [(PRWidgetGridModel *)self iconModel];
      v20 = [v19 rootFolder];
      v21 = [v20 firstList];
      v22 = [v21 isValidGridCellIndex:v18 options:4];

      v23 = [(PRWidgetGridModel *)self listModel];
      v24 = v23;
      if (v9 && (v22 & 1) != 0)
      {
        v25 = v30;
        v26 = [v23 insertIcon:v30 atGridCellIndex:v18 gridCellInfoOptions:4 mutationOptions:8];
      }

      else
      {
        v25 = v30;
        v27 = [v23 addIcon:v30];
      }

      if (v5)
      {
        v28 = [(PRWidgetGridModel *)self presenter];
        [v28 performAnimatedInsertionForIcon:v25];
      }

      [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
      v29 = [(PRWidgetGridModel *)self iconModel];
      [v29 saveIconStateIfNeeded];

      [(PRWidgetGridModel *)self _fireWidgetGridModelDidUpdateIntents:0];
    }

    else
    {
      v15 = PRLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PRWidgetGridModel _addIconForDescriptor:v8 withGridIndex:v15 animated:?];
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

- (id)_removeIconForDescriptor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PRWidgetGridModel *)self iconModel];
  v8 = [v6 uniqueIdentifier];

  v9 = [v7 leafIconForIdentifier:v8];

  if (v9)
  {
    v10 = [(PRWidgetGridModel *)self iconModel];
    v11 = [v10 rootFolder];
    v12 = [v11 firstList];

    v13 = [v12 gridCellInfoWithOptions:0];
    v14 = [v12 gridCellIndexForIcon:v9 gridCellInfo:v13];
    v15 = [(PRWidgetGridModel *)self iconModel];
    [v15 removeIcon:v9];

    if (v4)
    {
      v16 = [(PRWidgetGridModel *)self presenter];
      [v16 performAnimatedRemovalForIcon:v9];
    }

    [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
    v17 = [(PRWidgetGridModel *)self iconModel];
    [v17 saveIconStateIfNeeded];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
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

- (void)_fireDidUpdateListModel:(id)a3 observers:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PRWidgetGridModel__fireDidUpdateListModel_observers___block_invoke;
  v8[3] = &unk_1E78451A0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModel_didUpdateListModel_ observers:a4 withBlock:v8];
}

- (void)_fireDidUpdateIconLayout:(id)a3 observers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_lastFiredIconLayout || (BSEqualObjects() & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v6 copyItems:1];
    lastFiredIconLayout = self->_lastFiredIconLayout;
    self->_lastFiredIconLayout = v8;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__PRWidgetGridModel__fireDidUpdateIconLayout_observers___block_invoke;
    v10[3] = &unk_1E78451A0;
    v10[4] = self;
    v11 = v6;
    [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModel_didUpdateIconLayout_ observers:v7 withBlock:v10];
  }
}

- (void)_fireDidUpdateLayoutInsetsMode:(unint64_t)a3 observers:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PRWidgetGridModel__fireDidUpdateLayoutInsetsMode_observers___block_invoke;
  v4[3] = &unk_1E78451C8;
  v4[4] = self;
  v4[5] = a3;
  [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModel_didUpdateLayoutInsetsMode_ observers:a4 withBlock:v4];
}

- (void)_fireWidgetGridModelDidUpdateIntents:(id)a3
{
  v4 = a3;
  if (!self->_lastFiredIntentsDictionary || (v5 = objc_loadWeakRetained(&self->_store), [v5 intentsByDescriptorIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, v5, (v7 & 1) == 0))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v10 = [WeakRetained intentsByDescriptorIdentifier];
    v11 = [v8 initWithDictionary:v10 copyItems:1];
    lastFiredIntentsDictionary = self->_lastFiredIntentsDictionary;
    self->_lastFiredIntentsDictionary = v11;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PRWidgetGridModel__fireWidgetGridModelDidUpdateIntents___block_invoke;
    v13[3] = &unk_1E78451F0;
    v13[4] = self;
    [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModelDidUpdateIntents_ observers:v4 withBlock:v13];
  }
}

- (void)_fireWidgetGridModelDidUpdateContent:(id)a3
{
  v4 = a3;
  if (!self->_lastFiredIconLayout || (v5 = objc_loadWeakRetained(&self->_store), [v5 complicationDescriptorsByUniqueIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, v5, (v7 & 1) == 0))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v10 = [WeakRetained complicationDescriptorsByUniqueIdentifier];
    v11 = [v8 initWithDictionary:v10 copyItems:1];
    lastFiredIconLayout = self->_lastFiredIconLayout;
    self->_lastFiredIconLayout = v11;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PRWidgetGridModel__fireWidgetGridModelDidUpdateContent___block_invoke;
    v13[3] = &unk_1E78451F0;
    v13[4] = self;
    [(PRWidgetGridModel *)self _fireObserversForSelector:sel_widgetGridModelDidUpdateContent_ observers:v4 withBlock:v13];
  }
}

- (void)_fireObserversForSelector:(SEL)a3 observers:(id)a4 withBlock:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (!v7)
    {
      v9 = [(NSHashTable *)self->_observers allObjects];
      v7 = [v9 copy];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v7;
    v10 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            v8[2](v8, v14);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  if (![(PRWidgetGridModel *)self isConfiguringFixedPositions:a3])
  {
    [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  v5 = [(PRWidgetGridModel *)self iconModel];
  [v5 saveIconStateIfNeeded];
}

- (void)iconList:(id)a3 didMoveIcon:(id)a4
{
  if (![(PRWidgetGridModel *)self isConfiguringFixedPositions:a3])
  {
    [(PRWidgetGridModel *)self _setupFixedPositionsForRowLayout];
  }

  v5 = [(PRWidgetGridModel *)self iconModel];
  [v5 saveIconStateIfNeeded];
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v8 = a4;
  if ([v8 isLeafIcon])
  {
    v5 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v7 = [v5 leafIdentifier];

    [WeakRetained removeComplicationDescriptorForIdentifier:v7];
    [(PRWidgetGridModel *)self _updateLayoutInsetsMode];
  }
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
  v31 = a3;
  v6 = a4;
  if ([v6 isLeafIcon])
  {
    v7 = v6;
    v8 = [v7 leafIdentifier];
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v10 = [WeakRetained containsComplicationForIdentifier:v8];

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

      v15 = [v14 activeWidget];
      v30 = [v12 gridSizeClass];

      v16 = PRWidgetFamilyForIconGridSizeClass(v30);
      v17 = objc_alloc(MEMORY[0x1E6994290]);
      v18 = [v15 extensionBundleIdentifier];
      v19 = [v15 containerBundleIdentifier];
      v29 = [v17 initWithExtensionBundleIdentifier:v18 containerBundleIdentifier:v19 deviceIdentifier:0];

      v20 = objc_alloc(MEMORY[0x1E6994370]);
      v21 = [v15 kind];
      v22 = [v20 initWithExtensionIdentity:v29 kind:v21 family:v16 intent:0 activityIdentifier:0];

      v23 = [[PRComplicationDescriptor alloc] initWithUniqueIdentifier:v8 widget:v22];
      v24 = objc_loadWeakRetained(&self->_store);
      [v24 addComplicationDescriptor:v23];

      v25 = objc_loadWeakRetained(&self->_store);
      v26 = [v25 complicationDescriptors];
      v27 = [v26 mutableCopy];

      [v27 addObject:v23];
      v28 = [v27 copy];
      [(PRWidgetGridModel *)self setComplicationDescriptors:v28];

      [v31 saveIconStateIfNeeded];
    }
  }
}

- (void)iconModel:(id)a3 launchIcon:(id)a4 fromLocation:(id)a5 context:(id)a6
{
  v7 = a4;
  v8 = [(PRWidgetGridModel *)self presenter];
  [v8 handleLaunchRequestForIcon:v7];
}

void __61__PRWidgetGridModel_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 iconLayout];
  [v1 setIconLayout:v2];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PRWidgetGridModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E7843070;
  v8 = v5;
  v9 = self;
  v6 = v5;
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