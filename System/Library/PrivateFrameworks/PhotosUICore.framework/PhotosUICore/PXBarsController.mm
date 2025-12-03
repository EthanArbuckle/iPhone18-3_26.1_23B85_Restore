@interface PXBarsController
- (BOOL)_isSpaceItem:(id)item;
- (PXActionPerformerDelegate)actionPerformerDelegate;
- (PXBarsController)init;
- (PXBarsControllerDelegate)delegate;
- (UIViewController)viewController;
- (id)_getCachedOrCreateNewBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement;
- (id)cachedBarButtonItemForIdentifier:(id)identifier;
- (id)createBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement;
- (id)makeFixedSpacingBarButtonItem;
- (void)_invalidateAndUpdateBars;
- (void)_updateBarsIfNeeded;
- (void)invalidateBarButtonItemWithIdentifier:(id)identifier;
- (void)purgeCachedBarButtonItems;
- (void)purgeCachedBarButtonItemsForIdentifiers:(id)identifiers;
- (void)setAdditionalCenterToolbarButtonItems:(id)items;
- (void)setAdditionalLeftBarButtonItems:(id)items;
- (void)setAdditionalRightBarButtonItemsAfterExisting:(id)existing;
- (void)setAdditionalRightBarButtonItemsBeforeExisting:(id)existing;
- (void)setBarSpec:(id)spec;
- (void)setViewController:(id)controller;
- (void)updateBars;
- (void)updateIfNeeded;
@end

@implementation PXBarsController

- (PXBarsController)init
{
  v9.receiver = self;
  v9.super_class = PXBarsController;
  v2 = [(PXBarsController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_needsUpdateFlags.needsUpdateBars = 1;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    barButtonItemCache = v3->_barButtonItemCache;
    v3->_barButtonItemCache = dictionary;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    barButtonItemCachedPlacement = v3->_barButtonItemCachedPlacement;
    v3->_barButtonItemCachedPlacement = v6;
  }

  return v3;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)updateIfNeeded
{
  if ([(PXBarsController *)self _needsUpdate])
  {

    [(PXBarsController *)self _updateBarsIfNeeded];
  }
}

- (void)_updateBarsIfNeeded
{
  if (self->_needsUpdateFlags.needsUpdateBars)
  {
    self->_needsUpdateFlags.needsUpdateBars = 0;
    v4 = MEMORY[0x1A590D320]([(PXBarsController *)self updateBars]);

    [(PXBarsController *)self setWantsAnimatedBarsUpdate:v4];
  }
}

- (void)updateBars
{
  v71[1] = *MEMORY[0x1E69E9840];
  viewController = [(PXBarsController *)self viewController];
  navigationItem = [viewController navigationItem];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__PXBarsController_updateBars__block_invoke;
  aBlock[3] = &unk_1E772F150;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __30__PXBarsController_updateBars__block_invoke_3;
  v66[3] = &unk_1E772F178;
  v66[4] = self;
  v5 = _Block_copy(v66);
  wantsAnimatedBarsUpdate = [(PXBarsController *)self wantsAnimatedBarsUpdate];
  leftBarButtonItemIdentifiers = [(PXBarsController *)self leftBarButtonItemIdentifiers];
  additionalLeftBarButtonItemsAfterExisting = [(PXBarsController *)self additionalLeftBarButtonItemsAfterExisting];
  v8 = (v4 + 16);
  v9 = (*(v4 + 2))(v4, leftBarButtonItemIdentifiers, 2, 0, additionalLeftBarButtonItemsAfterExisting);

  centerBarButtonItemIdentifiers = [(PXBarsController *)self centerBarButtonItemIdentifiers];
  v11 = (*(v4 + 2))(v4, centerBarButtonItemIdentifiers, 3, 0, 0);

  centerBarButtonItemIdentifiers2 = [(PXBarsController *)self centerBarButtonItemIdentifiers];
  v60 = v5;
  v13 = v5[2](v5, centerBarButtonItemIdentifiers2, 3);

  rightBarButtonItemIdentifiers = [(PXBarsController *)self rightBarButtonItemIdentifiers];
  additionalRightBarButtonItemsBeforeExisting = [(PXBarsController *)self additionalRightBarButtonItemsBeforeExisting];
  additionalRightBarButtonItemsAfterExisting = [(PXBarsController *)self additionalRightBarButtonItemsAfterExisting];
  v17 = (*(v4 + 2))(v4, rightBarButtonItemIdentifiers, 4, additionalRightBarButtonItemsBeforeExisting, additionalRightBarButtonItemsAfterExisting);

  v59 = v9;
  [navigationItem setLeftBarButtonItems:v9 animated:wantsAnimatedBarsUpdate];
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __30__PXBarsController_updateBars__block_invoke_5;
  v63[3] = &unk_1E772F1A0;
  v19 = v18;
  v64 = v19;
  v56 = v13;
  v65 = v56;
  v58 = v11;
  v20 = v11;
  v21 = navigationItem;
  [v20 enumerateObjectsUsingBlock:v63];
  v55 = v19;
  [navigationItem setCenterItemGroups:v19];
  v57 = v17;
  v22 = v17;
  v23 = v4;
  [navigationItem setRightBarButtonItems:v22 animated:wantsAnimatedBarsUpdate];
  centerToolbarItemIdentifiers = [(PXBarsController *)self centerToolbarItemIdentifiers];
  additionalCenterToolbarButtonItemsAfterExisting = [(PXBarsController *)self additionalCenterToolbarButtonItemsAfterExisting];
  v26 = (*(v4 + 2))(v4, centerToolbarItemIdentifiers, 6, 0, additionalCenterToolbarButtonItemsAfterExisting);

  leadingToolbarItemIdentifiers = [(PXBarsController *)self leadingToolbarItemIdentifiers];
  v28 = (*(v4 + 2))(v4, leadingToolbarItemIdentifiers, 5, 0, 0);

  trailingToolbarItemIdentifiers = [(PXBarsController *)self trailingToolbarItemIdentifiers];
  v30 = (*v8)(v23, trailingToolbarItemIdentifiers, 7, 0, 0);

  if (![v28 count])
  {
    flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v71[0] = flexibleSpaceItem;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];

    v28 = v32;
  }

  if (![v26 count])
  {
    flexibleSpaceItem2 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v70 = flexibleSpaceItem2;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];

    v26 = v34;
  }

  if (![v30 count])
  {
    flexibleSpaceItem3 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v69 = flexibleSpaceItem3;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];

    v30 = v36;
  }

  v37 = MEMORY[0x1A590D320]();
  viewController2 = [(PXBarsController *)self viewController];
  v39 = viewController2;
  if (v37)
  {
    px_extendedTraitCollection = [viewController2 px_extendedTraitCollection];
    layoutSizeClass = [px_extendedTraitCollection layoutSizeClass];

    if (layoutSizeClass == 2)
    {
      [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:20.0];
    }

    else
    {
      [MEMORY[0x1E69DC708] flexibleSpaceItem];
    }
    v39 = ;
    v54 = v28;
    v43 = [v28 arrayByAddingObject:v39];
    v44 = [v43 arrayByAddingObjectsFromArray:v26];
    v45 = [v44 arrayByAddingObject:v39];
    v46 = [v45 arrayByAddingObjectsFromArray:v30];

    viewController3 = [(PXBarsController *)self viewController];
    v48 = viewController3;
    if (layoutSizeClass == 2)
    {
      flexibleSpaceItem4 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v68 = flexibleSpaceItem4;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      v50 = [v49 arrayByAddingObjectsFromArray:v46];
      flexibleSpaceItem5 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v52 = [v50 arrayByAddingObject:flexibleSpaceItem5];
      [v48 setToolbarItems:v52 animated:wantsAnimatedBarsUpdate];
    }

    else
    {
      [viewController3 setToolbarItems:v46 animated:wantsAnimatedBarsUpdate];
    }

    v42 = v60;
    v21 = navigationItem;

    v28 = v54;
  }

  else
  {
    [viewController2 setToolbarItems:v26 animated:wantsAnimatedBarsUpdate];
    v42 = v60;
  }
}

void __30__PXBarsController_updateBars__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __30__PXBarsController_updateBars__block_invoke_2;
  v13 = &unk_1E772F128;
  v14 = *(a1 + 32);
  v15 = a3;
  PXMap();
}

- (PXActionPerformerDelegate)actionPerformerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformerDelegate);

  return WeakRetained;
}

- (PXBarsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)purgeCachedBarButtonItemsForIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        barButtonItemCache = [(PXBarsController *)self barButtonItemCache];
        [barButtonItemCache removeObjectForKey:v9];

        barButtonItemCachedPlacement = [(PXBarsController *)self barButtonItemCachedPlacement];
        [barButtonItemCachedPlacement removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)purgeCachedBarButtonItems
{
  barButtonItemCache = [(PXBarsController *)self barButtonItemCache];
  [barButtonItemCache removeAllObjects];

  barButtonItemCachedPlacement = [(PXBarsController *)self barButtonItemCachedPlacement];
  [barButtonItemCachedPlacement removeAllObjects];
}

- (id)cachedBarButtonItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  barButtonItemCache = [(PXBarsController *)self barButtonItemCache];
  v6 = [barButtonItemCache objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)invalidateBarButtonItemWithIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v6 = [v4 arrayWithObjects:&identifierCopy count:1];

  [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v6, identifierCopy, v8];
  [(PXBarsController *)self invalidateBars];
}

- (id)makeFixedSpacingBarButtonItem
{
  [(PXBarsController *)self fixedSpaceForInterButtonSpacing];
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:?];
  }

  return v3;
}

- (id)createBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*off_1E7721EE8])
  {
    px_localizedSelectBarButtonItem = [MEMORY[0x1E69DC708] px_localizedSelectBarButtonItem];
LABEL_16:
    v11 = px_localizedSelectBarButtonItem;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:*off_1E7721EF0])
  {
    px_localizedSelectBarButtonItem = [MEMORY[0x1E69DC708] px_localizedSelectAllBarButtonItem];
    goto LABEL_16;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E50])
  {
    px_localizedSelectBarButtonItem = [MEMORY[0x1E69DC708] px_localizedDeselectAllBarButtonItem];
    goto LABEL_16;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E60])
  {
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v8 = 0;
LABEL_15:
    px_localizedSelectBarButtonItem = [v7 initWithBarButtonSystemItem:v8 target:0 action:0];
    goto LABEL_16;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E30])
  {
    v9 = MEMORY[0x1A590D320]();
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = v7;
    if (v9)
    {
      goto LABEL_14;
    }

    v13 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
    v14 = [v10 initWithTitle:v13 style:0 target:0 action:0];
    goto LABEL_30;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E28])
  {
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E08])
  {
    px_localizedSelectBarButtonItem = [MEMORY[0x1E69DC708] px_localizedAddBarButtonItem];
    goto LABEL_16;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E00])
  {
    v15 = objc_alloc(MEMORY[0x1E69DC708]);
    v16 = MEMORY[0x1E69DCAB8];
    if (MEMORY[0x1A590D320]())
    {
      v17 = @"ellipsis";
    }

    else
    {
      v17 = @"ellipsis.circle";
    }

    v18 = v16;
    goto LABEL_28;
  }

  if (![identifierCopy isEqualToString:*off_1E7721E58])
  {
    if ([identifierCopy isEqualToString:*off_1E7721E38])
    {
      v7 = objc_alloc(MEMORY[0x1E69DC708]);
      v8 = 24;
      goto LABEL_15;
    }

    if ([identifierCopy isEqualToString:*off_1E7721E90])
    {
      px_localizedSelectBarButtonItem = [(PXBarsController *)self makeFixedSpacingBarButtonItem];
      goto LABEL_16;
    }

    if ([identifierCopy isEqualToString:*off_1E7721E20])
    {
      [(PXBarsController *)self fixedSpaceForEndButtonSpacing];
      if (v24 > 0.0)
      {
        px_localizedSelectBarButtonItem = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:?];
        goto LABEL_16;
      }

LABEL_51:
      v11 = 0;
      goto LABEL_17;
    }

    if ([identifierCopy isEqualToString:*off_1E7721E18] || objc_msgSend(identifierCopy, "isEqualToString:", *off_1E7721E40))
    {
      v15 = objc_alloc(MEMORY[0x1E69DC708]);
      v18 = MEMORY[0x1E69DCAB8];
      v17 = @"square.and.arrow.down";
    }

    else if ([identifierCopy isEqualToString:*off_1E7721E88])
    {
      v15 = objc_alloc(MEMORY[0x1E69DC708]);
      v18 = MEMORY[0x1E69DCAB8];
      v17 = @"info.circle";
    }

    else
    {
      if (![identifierCopy isEqualToString:*off_1E7721F48])
      {
        if ([identifierCopy isEqualToString:*off_1E7721EB8])
        {
          v15 = objc_alloc(MEMORY[0x1E69DC708]);
          v19 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"apple.photos"];
          goto LABEL_29;
        }

        goto LABEL_51;
      }

      v15 = objc_alloc(MEMORY[0x1E69DC708]);
      v18 = MEMORY[0x1E69DCAB8];
      v17 = @"sidebar.leading";
    }

LABEL_28:
    v19 = [v18 systemImageNamed:v17];
LABEL_29:
    v13 = v19;
    v14 = [v15 initWithImage:v19 style:0 target:0 action:0];
LABEL_30:
    v11 = v14;

    goto LABEL_17;
  }

  if (MEMORY[0x1A590D320]())
  {
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v8 = 101;
    goto LABEL_15;
  }

  v20 = MEMORY[0x1E69DCAB8];
  v21 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v22 = [v20 systemImageNamed:@"chevron.left" withConfiguration:v21];
  imageFlippedForRightToLeftLayoutDirection = [v22 imageFlippedForRightToLeftLayoutDirection];

  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:imageFlippedForRightToLeftLayoutDirection style:0 target:0 action:0];
LABEL_17:

  return v11;
}

- (id)_getCachedOrCreateNewBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement
{
  identifierCopy = identifier;
  barButtonItemCache = [(PXBarsController *)self barButtonItemCache];
  v8 = [barButtonItemCache objectForKeyedSubscript:identifierCopy];

  barButtonItemCachedPlacement = [(PXBarsController *)self barButtonItemCachedPlacement];
  v10 = [barButtonItemCachedPlacement objectForKeyedSubscript:identifierCopy];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:placement];
  v12 = [v10 isEqualToNumber:v11];

  if (v12)
  {
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = [(PXBarsController *)self createBarButtonItemForIdentifier:identifierCopy placement:placement];
  if (v8)
  {
    barButtonItemCache2 = [(PXBarsController *)self barButtonItemCache];
    [barButtonItemCache2 setObject:v8 forKeyedSubscript:identifierCopy];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:placement];
    barButtonItemCachedPlacement2 = [(PXBarsController *)self barButtonItemCachedPlacement];
    [barButtonItemCachedPlacement2 setObject:v14 forKeyedSubscript:identifierCopy];
  }

LABEL_7:

  return v8;
}

- (void)setAdditionalCenterToolbarButtonItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_additionalCenterToolbarButtonItemsAfterExisting != itemsCopy)
  {
    v9 = itemsCopy;
    v6 = [(NSArray *)itemsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      additionalCenterToolbarButtonItemsAfterExisting = self->_additionalCenterToolbarButtonItemsAfterExisting;
      self->_additionalCenterToolbarButtonItemsAfterExisting = v7;

      [(PXBarsController *)self invalidateBars];
      v5 = v9;
    }
  }
}

- (void)setAdditionalRightBarButtonItemsAfterExisting:(id)existing
{
  existingCopy = existing;
  v5 = existingCopy;
  if (self->_additionalRightBarButtonItemsAfterExisting != existingCopy)
  {
    v9 = existingCopy;
    v6 = [(NSArray *)existingCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      additionalRightBarButtonItemsAfterExisting = self->_additionalRightBarButtonItemsAfterExisting;
      self->_additionalRightBarButtonItemsAfterExisting = v7;

      [(PXBarsController *)self invalidateBars];
      v5 = v9;
    }
  }
}

- (void)setAdditionalRightBarButtonItemsBeforeExisting:(id)existing
{
  existingCopy = existing;
  v5 = existingCopy;
  if (self->_additionalRightBarButtonItemsBeforeExisting != existingCopy)
  {
    v9 = existingCopy;
    v6 = [(NSArray *)existingCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      additionalRightBarButtonItemsBeforeExisting = self->_additionalRightBarButtonItemsBeforeExisting;
      self->_additionalRightBarButtonItemsBeforeExisting = v7;

      [(PXBarsController *)self invalidateBars];
      v5 = v9;
    }
  }
}

- (void)setAdditionalLeftBarButtonItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_additionalLeftBarButtonItemsAfterExisting != itemsCopy)
  {
    v9 = itemsCopy;
    v6 = [(NSArray *)itemsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      additionalLeftBarButtonItemsAfterExisting = self->_additionalLeftBarButtonItemsAfterExisting;
      self->_additionalLeftBarButtonItemsAfterExisting = v7;

      [(PXBarsController *)self invalidateBars];
      v5 = v9;
    }
  }
}

- (BOOL)_isSpaceItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isSystemItem])
  {
    v4 = ([itemCopy systemItem] - 5) < 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __30__PXBarsController_updateBars__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E69DC720];
  v7 = a2;
  v8 = [v6 alloc];
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [*(a1 + 40) objectAtIndex:a3];
  v11 = [v8 initWithBarButtonItems:v9 representativeItem:v10];
  [v5 addObject:v11];
}

- (void)setBarSpec:(id)spec
{
  specCopy = spec;
  if (self->_barSpec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_barSpec, spec);
    [(PXBarsController *)self invalidateBars];
    [(PXBarsController *)self _updateBarsIfNeeded];
    specCopy = v6;
  }
}

- (void)setViewController:(id)controller
{
  v12[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  if (WeakRetained != controllerCopy)
  {
    v6 = objc_loadWeakRetained(&self->_viewController);
    objc_storeWeak(&self->_viewController, controllerCopy);
    viewControllerHorizontalSizeClassTraitChangeRegistration = [(PXBarsController *)self viewControllerHorizontalSizeClassTraitChangeRegistration];

    if (viewControllerHorizontalSizeClassTraitChangeRegistration)
    {
      v8 = objc_loadWeakRetained(&self->_viewController);
      viewControllerHorizontalSizeClassTraitChangeRegistration2 = [(PXBarsController *)self viewControllerHorizontalSizeClassTraitChangeRegistration];
      [v8 unregisterForTraitChanges:viewControllerHorizontalSizeClassTraitChangeRegistration2];
    }

    v12[0] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v11 = [controllerCopy registerForTraitChanges:v10 withTarget:self action:sel__invalidateAndUpdateBars];
    [(PXBarsController *)self setViewControllerHorizontalSizeClassTraitChangeRegistration:v11];

    [(PXBarsController *)self viewControllerDidChange:v6];
    [(PXBarsController *)self invalidateBars];
  }
}

- (void)_invalidateAndUpdateBars
{
  [(PXBarsController *)self invalidateBars];

  [(PXBarsController *)self updateIfNeeded];
}

@end