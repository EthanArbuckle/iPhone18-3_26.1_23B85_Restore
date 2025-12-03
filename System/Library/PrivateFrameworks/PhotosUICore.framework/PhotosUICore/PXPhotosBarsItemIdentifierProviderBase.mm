@interface PXPhotosBarsItemIdentifierProviderBase
+ (void)_topBarValuesForSelectionModeWithModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers allowSelectAll:(BOOL)all allowAdd:(BOOL)add allowTrashActions:(BOOL)actions allowDeleteShareActions:(BOOL)self0 wantsMultiSelectMenu:(BOOL)self1;
@end

@implementation PXPhotosBarsItemIdentifierProviderBase

+ (void)_topBarValuesForSelectionModeWithModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers allowSelectAll:(BOOL)all allowAdd:(BOOL)add allowTrashActions:(BOOL)actions allowDeleteShareActions:(BOOL)self0 wantsMultiSelectMenu:(BOOL)self1
{
  addCopy = add;
  allCopy = all;
  v52[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v15 = MEMORY[0x1A590D320]();
  if ([modelCopy allowsMoveToLibraryAction] & 1) != 0 || (objc_msgSend(modelCopy, "allowsMoveToPersonalLibraryAction") & 1) != 0 || ((objc_msgSend(modelCopy, "allowsMoveToSharedLibraryAction") | v15))
  {
    *title = 0;
  }

  else
  {
    selectionManager = [modelCopy selectionManager];
    assetTypeCounter = [selectionManager assetTypeCounter];
    typedCount = [assetTypeCounter typedCount];
    v38 = PXLocalizedSelectModeCaption(1, typedCount, v37);
    *title = v38;
  }

  isInCompactMode = [modelCopy isInCompactMode];
  selectionSnapshot = [modelCopy selectionSnapshot];
  areAllItemsSelected = [selectionSnapshot areAllItemsSelected];

  allowsAddToLibraryAction = [modelCopy allowsAddToLibraryAction];
  allowsInfoAction = [modelCopy allowsInfoAction];
  if ([modelCopy wantsToolbarVisible] && (objc_msgSend(modelCopy, "prefersActionsInToolbar") & 1) != 0)
  {
    prefersActionsInToolbar = 1;
  }

  else if ([modelCopy shouldAlwaysRespectToolbarActionPlacementPreference])
  {
    prefersActionsInToolbar = [modelCopy prefersActionsInToolbar];
  }

  else
  {
    prefersActionsInToolbar = 0;
  }

  allowsTapbackAction = [modelCopy allowsTapbackAction];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __213__PXPhotosBarsItemIdentifierProviderBase__topBarValuesForSelectionModeWithModel_title_leadingIdentifiers_trailingIdentifiers_allowSelectAll_allowAdd_allowTrashActions_allowDeleteShareActions_wantsMultiSelectMenu___block_invoke;
  aBlock[3] = &unk_1E774BE48;
  v23 = v22;
  v47 = v23;
  v24 = _Block_copy(aBlock);
  canExitSelectMode = [modelCopy canExitSelectMode];
  if (canExitSelectMode)
  {
    canExitSelectMode = v24[2](v24, *off_1E7721E30);
  }

  if (!(prefersActionsInToolbar & 1 | ((allowsTapbackAction & 1) == 0)))
  {
    canExitSelectMode = v24[2](v24, *off_1E7721F30);
  }

  if (!(prefersActionsInToolbar & 1 | ((allowsAddToLibraryAction & 1) == 0)))
  {
    canExitSelectMode = v24[2](v24, *off_1E7721E18);
  }

  if (allowsInfoAction)
  {
    canExitSelectMode = v24[2](v24, *off_1E7721E88);
  }

  if (MEMORY[0x1A590D320](canExitSelectMode) && menu)
  {
    v24[2](v24, *off_1E7721F00);
  }

  if (isInCompactMode)
  {
    if (allCopy)
    {
      v26 = off_1E7721E50;
      if (!areAllItemsSelected)
      {
        v26 = off_1E7721EF0;
      }

      v52[0] = *v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
      if (!addCopy)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v27 = MEMORY[0x1E695E0F0];
      if (!addCopy)
      {
        goto LABEL_43;
      }
    }

    v33 = [v27 arrayByAddingObject:*off_1E7721E08];

    v27 = v33;
    goto LABEL_43;
  }

  if (actions)
  {
    v28 = *off_1E7721ED8;
    v51[0] = *off_1E7721E48;
    v51[1] = v28;
    v29 = MEMORY[0x1E695DEC8];
    v30 = v51;
    v31 = 2;
LABEL_30:
    v27 = [v29 arrayWithObjects:v30 count:v31];
    goto LABEL_31;
  }

  if (shareActions)
  {
    v50 = *off_1E7721F08;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    if ([modelCopy allowsTrashAction])
    {
      v41 = [v27 arrayByAddingObject:*off_1E7721F50];

      v27 = v41;
      if (!addCopy)
      {
        goto LABEL_31;
      }
    }

    else if (!addCopy)
    {
      goto LABEL_31;
    }

    v42 = [v27 arrayByAddingObject:*off_1E7721E08];

    v27 = v42;
  }

  else
  {
    if (addCopy)
    {
      v49 = *off_1E7721E08;
      v29 = MEMORY[0x1E695DEC8];
      v30 = &v49;
      v31 = 1;
      goto LABEL_30;
    }

    v27 = MEMORY[0x1E695E0F0];
  }

LABEL_31:
  if (allCopy)
  {
    if (areAllItemsSelected)
    {
      v32 = off_1E7721E50;
    }

    else
    {
      v32 = off_1E7721EF0;
    }

    v24[2](v24, *v32);
  }

LABEL_43:
  if (![v27 count])
  {
    v48 = *off_1E7721EC0;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];

    v27 = v39;
  }

  if ((MEMORY[0x1A590D320]() & 1) == 0 && [v23 count])
  {
    [v23 insertObject:*off_1E7721E20 atIndex:0];
  }

  v40 = v27;
  *identifiers = v27;
  *trailingIdentifiers = [v23 copy];
}

void __213__PXPhotosBarsItemIdentifierProviderBase__topBarValuesForSelectionModeWithModel_title_leadingIdentifiers_trailingIdentifiers_allowSelectAll_allowAdd_allowTrashActions_allowDeleteShareActions_wantsMultiSelectMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

@end