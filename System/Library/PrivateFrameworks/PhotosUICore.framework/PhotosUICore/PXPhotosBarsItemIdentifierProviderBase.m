@interface PXPhotosBarsItemIdentifierProviderBase
+ (void)_topBarValuesForSelectionModeWithModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 allowSelectAll:(BOOL)a7 allowAdd:(BOOL)a8 allowTrashActions:(BOOL)a9 allowDeleteShareActions:(BOOL)a10 wantsMultiSelectMenu:(BOOL)a11;
@end

@implementation PXPhotosBarsItemIdentifierProviderBase

+ (void)_topBarValuesForSelectionModeWithModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 allowSelectAll:(BOOL)a7 allowAdd:(BOOL)a8 allowTrashActions:(BOOL)a9 allowDeleteShareActions:(BOOL)a10 wantsMultiSelectMenu:(BOOL)a11
{
  v11 = a8;
  v12 = a7;
  v52[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = MEMORY[0x1A590D320]();
  if ([v14 allowsMoveToLibraryAction] & 1) != 0 || (objc_msgSend(v14, "allowsMoveToPersonalLibraryAction") & 1) != 0 || ((objc_msgSend(v14, "allowsMoveToSharedLibraryAction") | v15))
  {
    *a4 = 0;
  }

  else
  {
    v34 = [v14 selectionManager];
    v35 = [v34 assetTypeCounter];
    v36 = [v35 typedCount];
    v38 = PXLocalizedSelectModeCaption(1, v36, v37);
    *a4 = v38;
  }

  v16 = [v14 isInCompactMode];
  v17 = [v14 selectionSnapshot];
  v43 = [v17 areAllItemsSelected];

  v18 = [v14 allowsAddToLibraryAction];
  v19 = [v14 allowsInfoAction];
  if ([v14 wantsToolbarVisible] && (objc_msgSend(v14, "prefersActionsInToolbar") & 1) != 0)
  {
    v20 = 1;
  }

  else if ([v14 shouldAlwaysRespectToolbarActionPlacementPreference])
  {
    v20 = [v14 prefersActionsInToolbar];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v14 allowsTapbackAction];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __213__PXPhotosBarsItemIdentifierProviderBase__topBarValuesForSelectionModeWithModel_title_leadingIdentifiers_trailingIdentifiers_allowSelectAll_allowAdd_allowTrashActions_allowDeleteShareActions_wantsMultiSelectMenu___block_invoke;
  aBlock[3] = &unk_1E774BE48;
  v23 = v22;
  v47 = v23;
  v24 = _Block_copy(aBlock);
  v25 = [v14 canExitSelectMode];
  if (v25)
  {
    v25 = v24[2](v24, *off_1E7721E30);
  }

  if (!(v20 & 1 | ((v21 & 1) == 0)))
  {
    v25 = v24[2](v24, *off_1E7721F30);
  }

  if (!(v20 & 1 | ((v18 & 1) == 0)))
  {
    v25 = v24[2](v24, *off_1E7721E18);
  }

  if (v19)
  {
    v25 = v24[2](v24, *off_1E7721E88);
  }

  if (MEMORY[0x1A590D320](v25) && a11)
  {
    v24[2](v24, *off_1E7721F00);
  }

  if (v16)
  {
    if (v12)
    {
      v26 = off_1E7721E50;
      if (!v43)
      {
        v26 = off_1E7721EF0;
      }

      v52[0] = *v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
      if (!v11)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v27 = MEMORY[0x1E695E0F0];
      if (!v11)
      {
        goto LABEL_43;
      }
    }

    v33 = [v27 arrayByAddingObject:*off_1E7721E08];

    v27 = v33;
    goto LABEL_43;
  }

  if (a9)
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

  if (a10)
  {
    v50 = *off_1E7721F08;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    if ([v14 allowsTrashAction])
    {
      v41 = [v27 arrayByAddingObject:*off_1E7721F50];

      v27 = v41;
      if (!v11)
      {
        goto LABEL_31;
      }
    }

    else if (!v11)
    {
      goto LABEL_31;
    }

    v42 = [v27 arrayByAddingObject:*off_1E7721E08];

    v27 = v42;
  }

  else
  {
    if (v11)
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
  if (v12)
  {
    if (v43)
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
  *a5 = v27;
  *a6 = [v23 copy];
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