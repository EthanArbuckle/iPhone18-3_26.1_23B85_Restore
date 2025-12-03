@interface PXPhotosBarsItemIdentifierProviderRecentlyDeleted
+ (void)valuesForModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers leadingToolbarIdentifiers:(id *)toolbarIdentifiers centerToolbarIdentifiers:(id *)centerToolbarIdentifiers trailingToolbarIdentifiers:(id *)trailingToolbarIdentifiers hasSharedLibraryOrPreview:(BOOL)self0 canShowSortAndFilterMenu:(BOOL)self1;
@end

@implementation PXPhotosBarsItemIdentifierProviderRecentlyDeleted

+ (void)valuesForModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers leadingToolbarIdentifiers:(id *)toolbarIdentifiers centerToolbarIdentifiers:(id *)centerToolbarIdentifiers trailingToolbarIdentifiers:(id *)trailingToolbarIdentifiers hasSharedLibraryOrPreview:(BOOL)self0 canShowSortAndFilterMenu:(BOOL)self1
{
  v96[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  currentDataSource = [modelCopy currentDataSource];
  isInSelectMode = [modelCopy isInSelectMode];
  wantsToolbarVisible = [modelCopy wantsToolbarVisible];
  sharedInstance = [off_1E7721810 sharedInstance];
  if ([sharedInstance enableNewActionMenu])
  {
    allowsActionMenuBehavior = [modelCopy allowsActionMenuBehavior];
  }

  else
  {
    allowsActionMenuBehavior = 0;
  }

  if ([modelCopy isInCompactMode])
  {
    supportsAspectRatioToggle = 0;
  }

  else
  {
    supportsAspectRatioToggle = [modelCopy supportsAspectRatioToggle];
  }

  toolbarIdentifiersCopy = toolbarIdentifiers;
  allowsSortAndFilterMenu = [modelCopy allowsSortAndFilterMenu];
  if (wantsToolbarVisible)
  {
    v21 = [modelCopy isInCompactMode] ^ 1;
  }

  else
  {
    v21 = 1;
  }

  dismissAffordance = [modelCopy dismissAffordance];
  if ([modelCopy contentPrivacyState])
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if (dismissAffordance == 1)
    {
      v27 = off_1E7721E58;
      trailingIdentifiersCopy7 = trailingIdentifiers;
      v26 = toolbarIdentifiersCopy;
    }

    else
    {
      trailingIdentifiersCopy7 = trailingIdentifiers;
      v26 = toolbarIdentifiersCopy;
      if (dismissAffordance != 2)
      {
LABEL_22:
        v30 = 0;
        v33 = 0;
LABEL_23:
        v32 = 0;
        v31 = 0;
        goto LABEL_24;
      }

      v27 = off_1E7721E70;
    }

    [array addObject:*v27];
    goto LABEL_22;
  }

  if (([currentDataSource containsAnyItems] & 1) == 0 && (!MEMORY[0x1A590D320]() || !objc_msgSend(currentDataSource, "isFiltered")))
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_3;
    aBlock[3] = &unk_1E774BE48;
    aBlock[4] = v39;
    v41 = _Block_copy(aBlock);
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_4;
    v76[3] = &unk_1E774BE48;
    v76[4] = v40;
    v42 = _Block_copy(v76);
    v43 = v42;
    if ((preview & allowsActionMenuBehavior) == 1)
    {
      (*(v42 + 2))(v42, *off_1E7721E00);
    }

    v26 = toolbarIdentifiersCopy;
    if (dismissAffordance == 1)
    {
      v44 = off_1E7721E58;
    }

    else
    {
      if (dismissAffordance != 2)
      {
LABEL_62:
        array2 = v40;
        array = v39;

        v30 = 0;
        v33 = 0;
        v32 = 0;
        v31 = 0;
        trailingIdentifiersCopy7 = trailingIdentifiers;
        goto LABEL_24;
      }

      v44 = off_1E7721E70;
    }

    (*(v41 + 2))(v41, *v44);
    goto LABEL_62;
  }

  if (isInSelectMode)
  {
    allowsMultiSelectMenu = [modelCopy allowsMultiSelectMenu];
    v84 = 0;
    v82 = MEMORY[0x1E695E0F0];
    v83 = MEMORY[0x1E695E0F0];
    v29 = wantsToolbarVisible ^ 1;
    BYTE2(v69) = allowsMultiSelectMenu;
    LOWORD(v69) = wantsToolbarVisible ^ 1;
    [self _topBarValuesForSelectionModeWithModel:modelCopy title:&v84 leadingIdentifiers:&v83 trailingIdentifiers:&v82 allowSelectAll:0 allowAdd:0 allowTrashActions:v69 allowDeleteShareActions:? wantsMultiSelectMenu:?];
    v30 = v84;
    array = v83;
    array2 = v82;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if ((v29 & 1) == 0)
    {
      if (MEMORY[0x1A590D320]())
      {
        if (allowsMultiSelectMenu)
        {
          v33 = MEMORY[0x1E695E0F0];
        }

        else
        {
          v96[0] = *off_1E7721ED8;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
        }

        v95 = *off_1E7721EF8;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
        if (allowsMultiSelectMenu)
        {
          v31 = MEMORY[0x1E695E0F0];
        }

        else
        {
          v94 = *off_1E7721E48;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
        }
      }

      else
      {
        if ([modelCopy navBarStyle])
        {
          if (allowsMultiSelectMenu)
          {
            v53 = *off_1E7721EF8;
            v93[0] = *off_1E7721EC0;
            v93[1] = v53;
            v54 = *off_1E7721F00;
            v93[2] = v93[0];
            v93[3] = v54;
            v55 = MEMORY[0x1E695DEC8];
            v56 = v93;
            v57 = 4;
          }

          else
          {
            v67 = *off_1E7721EC0;
            v92[0] = *off_1E7721E48;
            v92[1] = v67;
            v92[2] = *off_1E7721EF8;
            v92[3] = v67;
            v92[4] = *off_1E7721ED8;
            v55 = MEMORY[0x1E695DEC8];
            v56 = v92;
            v57 = 5;
          }
        }

        else
        {
          v66 = *off_1E7721EC0;
          v91[0] = *off_1E7721E48;
          v91[1] = v66;
          v91[2] = *off_1E7721ED8;
          v55 = MEMORY[0x1E695DEC8];
          v56 = v91;
          v57 = 3;
        }

        v32 = [v55 arrayWithObjects:v56 count:v57];
        v31 = 0;
        v33 = 0;
      }
    }

    if (title)
    {
      trailingIdentifiersCopy7 = trailingIdentifiers;
      v26 = toolbarIdentifiersCopy;
      if (v30)
      {
        v68 = v30;
        *title = v30;
      }
    }

    else
    {
      trailingIdentifiersCopy7 = trailingIdentifiers;
      v26 = toolbarIdentifiersCopy;
    }

    goto LABEL_24;
  }

  if (MEMORY[0x1A590D320]())
  {
    if (dismissAffordance == 2)
    {
      v89 = *off_1E7721E70;
      v45 = &v89;
    }

    else
    {
      if (dismissAffordance != 1)
      {
        array = MEMORY[0x1E695E0F0];
LABEL_78:
        v59 = allowsSortAndFilterMenu & menu;
        v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([modelCopy wantsSelectButton])
        {
          v61 = *off_1E7721E90;
          v88[0] = *off_1E7721EE8;
          v88[1] = v61;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
          [v60 addObjectsFromArray:v62];
        }

        trailingIdentifiersCopy7 = trailingIdentifiers;
        if ((v59 & v21 & supportsAspectRatioToggle) == 1)
        {
          v63 = *off_1E7721F38;
          v87[0] = *off_1E7721F20;
          v87[1] = v63;
          v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
          [v60 addObjectsFromArray:v64];

LABEL_90:
          array2 = [v60 copy];
          if (v21 & 1 | ((wantsToolbarVisible & v59 & 1) == 0))
          {
            v33 = 0;
          }

          else
          {
            v86 = *off_1E7721F20;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
          }

          v26 = toolbarIdentifiersCopy;

          v30 = 0;
          goto LABEL_23;
        }

        if ((v59 & v21) != 0)
        {
          v65 = off_1E7721F20;
        }

        else
        {
          if (!supportsAspectRatioToggle)
          {
            goto LABEL_90;
          }

          v65 = off_1E7721F38;
        }

        [v60 addObject:*v65];
        goto LABEL_90;
      }

      v90 = *off_1E7721E58;
      v45 = &v90;
    }

    array = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    goto LABEL_78;
  }

  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke;
  v80[3] = &unk_1E774BE48;
  v47 = v46;
  v81 = v47;
  v48 = _Block_copy(v80);
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_2;
  v78[3] = &unk_1E774BE48;
  v71 = v49;
  v79 = v71;
  v50 = _Block_copy(v78);
  if (allowsActionMenuBehavior)
  {
    v48[2](v48, *off_1E7721E00);
  }

  wantsSelectButton = [modelCopy wantsSelectButton];
  trailingIdentifiersCopy7 = trailingIdentifiers;
  if (wantsSelectButton)
  {
    wantsSelectButton = (v48[2])(v48, *off_1E7721EE8);
  }

  if (supportsAspectRatioToggle)
  {
    wantsSelectButton = (v48[2])(v48, *off_1E7721F38);
  }

  if (dismissAffordance == 1)
  {
    v52 = off_1E7721E58;
  }

  else
  {
    if (dismissAffordance != 2)
    {
      goto LABEL_70;
    }

    v52 = off_1E7721E70;
  }

  wantsSelectButton = v50[2](v50, *v52);
LABEL_70:
  if ((MEMORY[0x1A590D320](wantsSelectButton) & 1) == 0 && [v47 count])
  {
    [v47 insertObject:*off_1E7721E20 atIndex:0];
  }

  if (wantsToolbarVisible)
  {
    v58 = *off_1E7721EC0;
    v85[0] = *off_1E7721E48;
    v85[1] = v58;
    v85[2] = *off_1E7721EC8;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
  }

  else
  {
    v32 = 0;
  }

  array2 = v47;
  array = v71;

  v30 = 0;
  v33 = 0;
  v31 = 0;
  v26 = toolbarIdentifiersCopy;
LABEL_24:
  if (identifiers && array)
  {
    v34 = array;
    *identifiers = array;
  }

  if (trailingIdentifiersCopy7 && array2)
  {
    v35 = array2;
    *trailingIdentifiersCopy7 = array2;
  }

  if (v26 && v33)
  {
    v36 = v33;
    *v26 = v33;
  }

  if (centerToolbarIdentifiers && v32)
  {
    v37 = v32;
    *centerToolbarIdentifiers = v32;
  }

  if (trailingToolbarIdentifiers && v31)
  {
    v38 = v31;
    *trailingToolbarIdentifiers = v31;
  }
}

void __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

void __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

void __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

void __242__PXPhotosBarsItemIdentifierProviderRecentlyDeleted_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

@end