@interface PXPhotosBarsItemIdentifierProviderRecentlyDeleted
+ (void)valuesForModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 leadingToolbarIdentifiers:(id *)a7 centerToolbarIdentifiers:(id *)a8 trailingToolbarIdentifiers:(id *)a9 hasSharedLibraryOrPreview:(BOOL)a10 canShowSortAndFilterMenu:(BOOL)a11;
@end

@implementation PXPhotosBarsItemIdentifierProviderRecentlyDeleted

+ (void)valuesForModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 leadingToolbarIdentifiers:(id *)a7 centerToolbarIdentifiers:(id *)a8 trailingToolbarIdentifiers:(id *)a9 hasSharedLibraryOrPreview:(BOOL)a10 canShowSortAndFilterMenu:(BOOL)a11
{
  v96[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v74 = [v14 currentDataSource];
  v15 = [v14 isInSelectMode];
  v16 = [v14 wantsToolbarVisible];
  v17 = [off_1E7721810 sharedInstance];
  if ([v17 enableNewActionMenu])
  {
    v18 = [v14 allowsActionMenuBehavior];
  }

  else
  {
    v18 = 0;
  }

  if ([v14 isInCompactMode])
  {
    v19 = 0;
  }

  else
  {
    v19 = [v14 supportsAspectRatioToggle];
  }

  v73 = a7;
  v20 = [v14 allowsSortAndFilterMenu];
  if (v16)
  {
    v21 = [v14 isInCompactMode] ^ 1;
  }

  else
  {
    v21 = 1;
  }

  v22 = [v14 dismissAffordance];
  if ([v14 contentPrivacyState])
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v24 = [MEMORY[0x1E695DF70] array];
    if (v22 == 1)
    {
      v27 = off_1E7721E58;
      v25 = a6;
      v26 = v73;
    }

    else
    {
      v25 = a6;
      v26 = v73;
      if (v22 != 2)
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

    [v23 addObject:*v27];
    goto LABEL_22;
  }

  if (([v74 containsAnyItems] & 1) == 0 && (!MEMORY[0x1A590D320]() || !objc_msgSend(v74, "isFiltered")))
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
    if ((a10 & v18) == 1)
    {
      (*(v42 + 2))(v42, *off_1E7721E00);
    }

    v26 = v73;
    if (v22 == 1)
    {
      v44 = off_1E7721E58;
    }

    else
    {
      if (v22 != 2)
      {
LABEL_62:
        v24 = v40;
        v23 = v39;

        v30 = 0;
        v33 = 0;
        v32 = 0;
        v31 = 0;
        v25 = a6;
        goto LABEL_24;
      }

      v44 = off_1E7721E70;
    }

    (*(v41 + 2))(v41, *v44);
    goto LABEL_62;
  }

  if (v15)
  {
    v28 = [v14 allowsMultiSelectMenu];
    v84 = 0;
    v82 = MEMORY[0x1E695E0F0];
    v83 = MEMORY[0x1E695E0F0];
    v29 = v16 ^ 1;
    BYTE2(v69) = v28;
    LOWORD(v69) = v16 ^ 1;
    [a1 _topBarValuesForSelectionModeWithModel:v14 title:&v84 leadingIdentifiers:&v83 trailingIdentifiers:&v82 allowSelectAll:0 allowAdd:0 allowTrashActions:v69 allowDeleteShareActions:? wantsMultiSelectMenu:?];
    v30 = v84;
    v23 = v83;
    v24 = v82;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if ((v29 & 1) == 0)
    {
      if (MEMORY[0x1A590D320]())
      {
        if (v28)
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
        if (v28)
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
        if ([v14 navBarStyle])
        {
          if (v28)
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

    if (a4)
    {
      v25 = a6;
      v26 = v73;
      if (v30)
      {
        v68 = v30;
        *a4 = v30;
      }
    }

    else
    {
      v25 = a6;
      v26 = v73;
    }

    goto LABEL_24;
  }

  if (MEMORY[0x1A590D320]())
  {
    if (v22 == 2)
    {
      v89 = *off_1E7721E70;
      v45 = &v89;
    }

    else
    {
      if (v22 != 1)
      {
        v23 = MEMORY[0x1E695E0F0];
LABEL_78:
        v59 = v20 & a11;
        v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v14 wantsSelectButton])
        {
          v61 = *off_1E7721E90;
          v88[0] = *off_1E7721EE8;
          v88[1] = v61;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
          [v60 addObjectsFromArray:v62];
        }

        v25 = a6;
        if ((v59 & v21 & v19) == 1)
        {
          v63 = *off_1E7721F38;
          v87[0] = *off_1E7721F20;
          v87[1] = v63;
          v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
          [v60 addObjectsFromArray:v64];

LABEL_90:
          v24 = [v60 copy];
          if (v21 & 1 | ((v16 & v59 & 1) == 0))
          {
            v33 = 0;
          }

          else
          {
            v86 = *off_1E7721F20;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
          }

          v26 = v73;

          v30 = 0;
          goto LABEL_23;
        }

        if ((v59 & v21) != 0)
        {
          v65 = off_1E7721F20;
        }

        else
        {
          if (!v19)
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

    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
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
  if (v18)
  {
    v48[2](v48, *off_1E7721E00);
  }

  v51 = [v14 wantsSelectButton];
  v25 = a6;
  if (v51)
  {
    v51 = (v48[2])(v48, *off_1E7721EE8);
  }

  if (v19)
  {
    v51 = (v48[2])(v48, *off_1E7721F38);
  }

  if (v22 == 1)
  {
    v52 = off_1E7721E58;
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_70;
    }

    v52 = off_1E7721E70;
  }

  v51 = v50[2](v50, *v52);
LABEL_70:
  if ((MEMORY[0x1A590D320](v51) & 1) == 0 && [v47 count])
  {
    [v47 insertObject:*off_1E7721E20 atIndex:0];
  }

  if (v16)
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

  v24 = v47;
  v23 = v71;

  v30 = 0;
  v33 = 0;
  v31 = 0;
  v26 = v73;
LABEL_24:
  if (a5 && v23)
  {
    v34 = v23;
    *a5 = v23;
  }

  if (v25 && v24)
  {
    v35 = v24;
    *v25 = v24;
  }

  if (v26 && v33)
  {
    v36 = v33;
    *v26 = v33;
  }

  if (a8 && v32)
  {
    v37 = v32;
    *a8 = v32;
  }

  if (a9 && v31)
  {
    v38 = v31;
    *a9 = v31;
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