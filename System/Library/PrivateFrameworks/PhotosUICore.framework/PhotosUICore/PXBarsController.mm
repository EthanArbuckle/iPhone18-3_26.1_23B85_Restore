@interface PXBarsController
- (BOOL)_isSpaceItem:(id)a3;
- (PXActionPerformerDelegate)actionPerformerDelegate;
- (PXBarsController)init;
- (PXBarsControllerDelegate)delegate;
- (UIViewController)viewController;
- (id)_getCachedOrCreateNewBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4;
- (id)cachedBarButtonItemForIdentifier:(id)a3;
- (id)createBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4;
- (id)makeFixedSpacingBarButtonItem;
- (void)_invalidateAndUpdateBars;
- (void)_updateBarsIfNeeded;
- (void)invalidateBarButtonItemWithIdentifier:(id)a3;
- (void)purgeCachedBarButtonItems;
- (void)purgeCachedBarButtonItemsForIdentifiers:(id)a3;
- (void)setAdditionalCenterToolbarButtonItems:(id)a3;
- (void)setAdditionalLeftBarButtonItems:(id)a3;
- (void)setAdditionalRightBarButtonItemsAfterExisting:(id)a3;
- (void)setAdditionalRightBarButtonItemsBeforeExisting:(id)a3;
- (void)setBarSpec:(id)a3;
- (void)setViewController:(id)a3;
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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    barButtonItemCache = v3->_barButtonItemCache;
    v3->_barButtonItemCache = v4;

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
  v3 = [(PXBarsController *)self viewController];
  v61 = [v3 navigationItem];

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
  v62 = [(PXBarsController *)self wantsAnimatedBarsUpdate];
  v6 = [(PXBarsController *)self leftBarButtonItemIdentifiers];
  v7 = [(PXBarsController *)self additionalLeftBarButtonItemsAfterExisting];
  v8 = (v4 + 16);
  v9 = (*(v4 + 2))(v4, v6, 2, 0, v7);

  v10 = [(PXBarsController *)self centerBarButtonItemIdentifiers];
  v11 = (*(v4 + 2))(v4, v10, 3, 0, 0);

  v12 = [(PXBarsController *)self centerBarButtonItemIdentifiers];
  v60 = v5;
  v13 = v5[2](v5, v12, 3);

  v14 = [(PXBarsController *)self rightBarButtonItemIdentifiers];
  v15 = [(PXBarsController *)self additionalRightBarButtonItemsBeforeExisting];
  v16 = [(PXBarsController *)self additionalRightBarButtonItemsAfterExisting];
  v17 = (*(v4 + 2))(v4, v14, 4, v15, v16);

  v59 = v9;
  [v61 setLeftBarButtonItems:v9 animated:v62];
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
  v21 = v61;
  [v20 enumerateObjectsUsingBlock:v63];
  v55 = v19;
  [v61 setCenterItemGroups:v19];
  v57 = v17;
  v22 = v17;
  v23 = v4;
  [v61 setRightBarButtonItems:v22 animated:v62];
  v24 = [(PXBarsController *)self centerToolbarItemIdentifiers];
  v25 = [(PXBarsController *)self additionalCenterToolbarButtonItemsAfterExisting];
  v26 = (*(v4 + 2))(v4, v24, 6, 0, v25);

  v27 = [(PXBarsController *)self leadingToolbarItemIdentifiers];
  v28 = (*(v4 + 2))(v4, v27, 5, 0, 0);

  v29 = [(PXBarsController *)self trailingToolbarItemIdentifiers];
  v30 = (*v8)(v23, v29, 7, 0, 0);

  if (![v28 count])
  {
    v31 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v71[0] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];

    v28 = v32;
  }

  if (![v26 count])
  {
    v33 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v70 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];

    v26 = v34;
  }

  if (![v30 count])
  {
    v35 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v69 = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];

    v30 = v36;
  }

  v37 = MEMORY[0x1A590D320]();
  v38 = [(PXBarsController *)self viewController];
  v39 = v38;
  if (v37)
  {
    v40 = [v38 px_extendedTraitCollection];
    v41 = [v40 layoutSizeClass];

    if (v41 == 2)
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

    v47 = [(PXBarsController *)self viewController];
    v48 = v47;
    if (v41 == 2)
    {
      v53 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v68 = v53;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      v50 = [v49 arrayByAddingObjectsFromArray:v46];
      v51 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v52 = [v50 arrayByAddingObject:v51];
      [v48 setToolbarItems:v52 animated:v62];
    }

    else
    {
      [v47 setToolbarItems:v46 animated:v62];
    }

    v42 = v60;
    v21 = v61;

    v28 = v54;
  }

  else
  {
    [v38 setToolbarItems:v26 animated:v62];
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

- (void)purgeCachedBarButtonItemsForIdentifiers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(PXBarsController *)self barButtonItemCache];
        [v10 removeObjectForKey:v9];

        v11 = [(PXBarsController *)self barButtonItemCachedPlacement];
        [v11 removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)purgeCachedBarButtonItems
{
  v3 = [(PXBarsController *)self barButtonItemCache];
  [v3 removeAllObjects];

  v4 = [(PXBarsController *)self barButtonItemCachedPlacement];
  [v4 removeAllObjects];
}

- (id)cachedBarButtonItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXBarsController *)self barButtonItemCache];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)invalidateBarButtonItemWithIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v6, v7, v8];
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

- (id)createBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4
{
  v5 = a3;
  if ([v5 isEqualToString:*off_1E7721EE8])
  {
    v6 = [MEMORY[0x1E69DC708] px_localizedSelectBarButtonItem];
LABEL_16:
    v11 = v6;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:*off_1E7721EF0])
  {
    v6 = [MEMORY[0x1E69DC708] px_localizedSelectAllBarButtonItem];
    goto LABEL_16;
  }

  if ([v5 isEqualToString:*off_1E7721E50])
  {
    v6 = [MEMORY[0x1E69DC708] px_localizedDeselectAllBarButtonItem];
    goto LABEL_16;
  }

  if ([v5 isEqualToString:*off_1E7721E60])
  {
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v8 = 0;
LABEL_15:
    v6 = [v7 initWithBarButtonSystemItem:v8 target:0 action:0];
    goto LABEL_16;
  }

  if ([v5 isEqualToString:*off_1E7721E30])
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

  if ([v5 isEqualToString:*off_1E7721E28])
  {
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  if ([v5 isEqualToString:*off_1E7721E08])
  {
    v6 = [MEMORY[0x1E69DC708] px_localizedAddBarButtonItem];
    goto LABEL_16;
  }

  if ([v5 isEqualToString:*off_1E7721E00])
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

  if (![v5 isEqualToString:*off_1E7721E58])
  {
    if ([v5 isEqualToString:*off_1E7721E38])
    {
      v7 = objc_alloc(MEMORY[0x1E69DC708]);
      v8 = 24;
      goto LABEL_15;
    }

    if ([v5 isEqualToString:*off_1E7721E90])
    {
      v6 = [(PXBarsController *)self makeFixedSpacingBarButtonItem];
      goto LABEL_16;
    }

    if ([v5 isEqualToString:*off_1E7721E20])
    {
      [(PXBarsController *)self fixedSpaceForEndButtonSpacing];
      if (v24 > 0.0)
      {
        v6 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:?];
        goto LABEL_16;
      }

LABEL_51:
      v11 = 0;
      goto LABEL_17;
    }

    if ([v5 isEqualToString:*off_1E7721E18] || objc_msgSend(v5, "isEqualToString:", *off_1E7721E40))
    {
      v15 = objc_alloc(MEMORY[0x1E69DC708]);
      v18 = MEMORY[0x1E69DCAB8];
      v17 = @"square.and.arrow.down";
    }

    else if ([v5 isEqualToString:*off_1E7721E88])
    {
      v15 = objc_alloc(MEMORY[0x1E69DC708]);
      v18 = MEMORY[0x1E69DCAB8];
      v17 = @"info.circle";
    }

    else
    {
      if (![v5 isEqualToString:*off_1E7721F48])
      {
        if ([v5 isEqualToString:*off_1E7721EB8])
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
  v23 = [v22 imageFlippedForRightToLeftLayoutDirection];

  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v23 style:0 target:0 action:0];
LABEL_17:

  return v11;
}

- (id)_getCachedOrCreateNewBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PXBarsController *)self barButtonItemCache];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [(PXBarsController *)self barButtonItemCachedPlacement];
  v10 = [v9 objectForKeyedSubscript:v6];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
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

  v8 = [(PXBarsController *)self createBarButtonItemForIdentifier:v6 placement:a4];
  if (v8)
  {
    v13 = [(PXBarsController *)self barButtonItemCache];
    [v13 setObject:v8 forKeyedSubscript:v6];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v15 = [(PXBarsController *)self barButtonItemCachedPlacement];
    [v15 setObject:v14 forKeyedSubscript:v6];
  }

LABEL_7:

  return v8;
}

- (void)setAdditionalCenterToolbarButtonItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_additionalCenterToolbarButtonItemsAfterExisting != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
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

- (void)setAdditionalRightBarButtonItemsAfterExisting:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_additionalRightBarButtonItemsAfterExisting != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
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

- (void)setAdditionalRightBarButtonItemsBeforeExisting:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_additionalRightBarButtonItemsBeforeExisting != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
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

- (void)setAdditionalLeftBarButtonItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_additionalLeftBarButtonItemsAfterExisting != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
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

- (BOOL)_isSpaceItem:(id)a3
{
  v3 = a3;
  if ([v3 isSystemItem])
  {
    v4 = ([v3 systemItem] - 5) < 2;
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

- (void)setBarSpec:(id)a3
{
  v5 = a3;
  if (self->_barSpec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_barSpec, a3);
    [(PXBarsController *)self invalidateBars];
    [(PXBarsController *)self _updateBarsIfNeeded];
    v5 = v6;
  }
}

- (void)setViewController:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_viewController);
    objc_storeWeak(&self->_viewController, v4);
    v7 = [(PXBarsController *)self viewControllerHorizontalSizeClassTraitChangeRegistration];

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_viewController);
      v9 = [(PXBarsController *)self viewControllerHorizontalSizeClassTraitChangeRegistration];
      [v8 unregisterForTraitChanges:v9];
    }

    v12[0] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v11 = [v4 registerForTraitChanges:v10 withTarget:self action:sel__invalidateAndUpdateBars];
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