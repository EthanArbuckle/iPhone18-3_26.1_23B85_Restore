@interface PXPhotosBarsItemIdentifierProviderGeneric
+ (void)valuesForModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 leadingToolbarIdentifiers:(id *)a7 centerToolbarIdentifiers:(id *)a8 trailingToolbarIdentifiers:(id *)a9 hasSharedLibraryOrPreview:(BOOL)a10 canShowSortAndFilterMenu:(BOOL)a11;
@end

@implementation PXPhotosBarsItemIdentifierProviderGeneric

+ (void)valuesForModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 leadingToolbarIdentifiers:(id *)a7 centerToolbarIdentifiers:(id *)a8 trailingToolbarIdentifiers:(id *)a9 hasSharedLibraryOrPreview:(BOOL)a10 canShowSortAndFilterMenu:(BOOL)a11
{
  v11 = a3;
  v12 = [v11 currentDataSource];
  v13 = [v11 allowedChromeItems];
  v144 = v12;
  v141 = [v12 containerCollection];
  v134 = [v141 px_isCloudKitSharedAlbum];
  v14 = [v11 isInSelectMode];
  v15 = [v11 selectionSnapshot];
  v16 = [v15 isAnyItemSelected];

  v17 = [v11 navBarStyle];
  v18 = [v11 allowsAddAction];
  v19 = 0;
  if (v18 && (v14 & 1) == 0 && (v16 & 1) == 0)
  {
    if ([v11 allowsEmptyPlaceholderBehavior])
    {
      v19 = [v144 isFiltered] ^ 1;
    }

    else
    {
      v19 = 0;
    }
  }

  v135 = v19;
  if ([v11 allowsShareAction])
  {
    v20 = [v11 assetActionManager];
    v106 = [v20 supportsActionType:*off_1E7721B88];
  }

  else
  {
    v106 = 0;
  }

  v110 = [v11 allowsTrashAction];
  v117 = [v11 allowsSelectAllAction];
  if ([v11 isInCompactMode])
  {
    v21 = 0;
  }

  else
  {
    v22 = [v11 supportsAspectRatioToggle];
    v21 = 0;
    if (v22 && (v13 & 0x2000) != 0)
    {
      v21 = [v11 gridStyle] != 6;
    }
  }

  v124 = v21;
  v23 = [v11 wantsToolbarVisible];
  v24 = [v11 toolbarStyle];
  v25 = [off_1E7721810 sharedInstance];
  if ([v25 enableNewActionMenu])
  {
    v26 = [v11 allowsActionMenuBehavior];

    if (v26)
    {
      v27 = [v11 currentLens];
      v28 = [v27 allowsActionMenu];

      if (v28)
      {
        v29 = (v13 >> 1) & 1;
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  LODWORD(v29) = 0;
LABEL_21:
  if (v17)
  {
    v30 = 0;
  }

  else
  {
    v30 = v23;
  }

  v31 = v23;
  if (v30 == 1)
  {
    v31 = MEMORY[0x1A590D320](v23);
  }

  v125 = v31;
  v130 = [v11 allowsDismissAction];
  v127 = [v11 allowsAddToLibraryAction];
  v119 = [v11 allowsContentSyndicationSaveAllAction];
  v132 = [v11 allowsInfoAction];
  v32 = [v11 allowsMultiSelectMenu];
  v108 = v32 & v14;
  if (v24 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32 & v14;
  }

  v120 = [v11 allowsReplyAction];
  v121 = [v11 allowsTapbackAction];
  v133 = v29;
  if ([v11 wantsToolbarVisible] && (objc_msgSend(v11, "prefersActionsInToolbar") & 1) != 0)
  {
    v34 = 1;
  }

  else if ([v11 shouldAlwaysRespectToolbarActionPlacementPreference])
  {
    v34 = [v11 prefersActionsInToolbar];
  }

  else
  {
    v34 = 0;
  }

  v35 = [v11 allowsSearch];
  if (([v11 wantsToolbarVisible] & 1) != 0 || v34)
  {
    v105 = [v11 isInCompactMode];
  }

  else
  {
    v105 = 0;
  }

  v112 = v24;
  if (v13)
  {
    v137 = [v11 dismissAffordance];
  }

  else
  {
    v137 = 0;
  }

  v36 = [v11 contentPrivacyState];
  v115 = [v11 allowsShareAllAction];
  v114 = v17;
  if ([v11 allowsShareAllAction])
  {
    v116 = [v11 wantsShareGridButtonVisible];
  }

  else
  {
    v116 = 0;
  }

  v37 = [v11 specManager];
  v38 = [v37 spec];
  v39 = [v38 wantsToggleSidebarButton];

  v104 = [v11 wantsSelectModeCaptionInContextMenu];
  v40 = [v11 allowsSortAndFilterMenu];
  v41 = (([v11 wantsToolbarVisible] | v34) & 1) != 0 && objc_msgSend(v11, "isInCompactMode") && objc_msgSend(v11, "gridStyle") != 6;
  if ([v11 allowsCurationModeToggle])
  {
    v42 = [v11 canShowCurationModeToggle] ^ 1;
  }

  else
  {
    v42 = 1;
  }

  v131 = v42;
  v43 = [v11 prefersCurationModeToggleInNavBar];
  if (v36)
  {
    v44 = [MEMORY[0x1E695DF70] array];
    v45 = [MEMORY[0x1E695DF70] array];
    if (v39)
    {
      v46 = off_1E7721F48;
      v47 = a6;
      v48 = a8;
    }

    else
    {
      v47 = a6;
      v48 = a8;
      if (v137 == 1)
      {
        v46 = off_1E7721E58;
      }

      else
      {
        if (v137 != 2)
        {
LABEL_89:
          v51 = 0;
          v54 = 0;
          v53 = 0;
          v52 = 0;
          goto LABEL_222;
        }

        v46 = off_1E7721E70;
      }
    }

    [v44 addObject:*v46];
    goto LABEL_89;
  }

  v49 = v43;
  v50 = v40 & a11;
  if (([v144 containsAnyItems] & 1) == 0 && (!MEMORY[0x1A590D320]() || !objc_msgSend(v144, "isFiltered")))
  {
    v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_6;
    aBlock[3] = &unk_1E774BE48;
    v63 = v62;
    v148 = v63;
    v64 = _Block_copy(aBlock);
    v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v145[0] = MEMORY[0x1E69E9820];
    v145[1] = 3221225472;
    v145[2] = __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_7;
    v145[3] = &unk_1E774BE48;
    v66 = v65;
    v146 = v66;
    v67 = _Block_copy(v145);
    v68 = v67;
    if (v39)
    {
      (*(v67 + 2))(v67, *off_1E7721F48);
    }

    if (v133)
    {
      v64[2](v64, *off_1E7721E00);
    }

    v69 = MEMORY[0x1A590D320]();
    if ((v69 & v50) == 1)
    {
      v69 = (v64[2])(v64, *off_1E7721F20);
    }

    if (v132)
    {
      v69 = (v64[2])(v64, *off_1E7721E88);
    }

    if (v135)
    {
      v69 = (v64[2])(v64, *off_1E7721E08);
    }

    if (v134)
    {
      v69 = (v64[2])(v64, *off_1E7721F10);
    }

    if (!(v39 & 1 | ((v130 & 1) == 0)))
    {
      v69 = v68[2](v68, *off_1E7721E58);
    }

    if (v137 == 1)
    {
      v70 = off_1E7721E58;
    }

    else
    {
      if (v137 != 2)
      {
        goto LABEL_92;
      }

      v70 = off_1E7721E70;
    }

    v69 = v68[2](v68, *v70);
LABEL_92:
    if ((MEMORY[0x1A590D320](v69) & 1) == 0 && [v63 count])
    {
      [v63 insertObject:*off_1E7721E20 atIndex:0];
    }

    v44 = v66;
    v45 = v63;

    v51 = 0;
    v54 = 0;
    v53 = 0;
    v52 = 0;
    goto LABEL_96;
  }

  if (!v14)
  {
    v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v157[0] = MEMORY[0x1E69E9820];
    v157[1] = 3221225472;
    v157[2] = __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke;
    v157[3] = &unk_1E774BE48;
    v109 = v71;
    v158 = v109;
    v72 = _Block_copy(v157);
    v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_2;
    v155[3] = &unk_1E774BE48;
    v111 = v73;
    v156 = v111;
    v136 = _Block_copy(v155);
    v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_3;
    v153[3] = &unk_1E774BE48;
    v113 = v74;
    v154 = v113;
    v129 = _Block_copy(v153);
    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v151[0] = MEMORY[0x1E69E9820];
    v151[1] = 3221225472;
    v151[2] = __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_4;
    v151[3] = &unk_1E774BE48;
    v123 = v75;
    v152 = v123;
    v126 = _Block_copy(v151);
    v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v149[0] = MEMORY[0x1E69E9820];
    v149[1] = 3221225472;
    v149[2] = __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_5;
    v149[3] = &unk_1E774BE48;
    v77 = v76;
    v150 = v77;
    v118 = _Block_copy(v149);
    v78 = MEMORY[0x1A590D320]();
    if ((v78 & v35) == 1)
    {
      if (v105)
      {
        v78 = [v77 addObject:*off_1E7721EE0];
      }

      else
      {
        v78 = (*(v72 + 2))(v72, *off_1E7721EE0);
      }
    }

    if ((MEMORY[0x1A590D320](v78) & 1) == 0 && ((v133 ^ 1) & 1) == 0)
    {
      (*(v72 + 2))(v72, *off_1E7721E00);
    }

    v107 = v77;
    if (v119)
    {
      if (v34)
      {
        v80 = v129;
      }

      else
      {
        v80 = v72;
      }

      (v80[2])(v80, *off_1E7721E40);
    }

    if (((v131 | v49) & 1) == 0)
    {
      (v129[2])(v129, *off_1E7721F40);
    }

    v81 = v115 & v34;
    v82 = [v11 wantsSelectButton];
    if (v82)
    {
      v82 = (*(v72 + 2))(v72, *off_1E7721EE8);
    }

    if ((v81 | v116))
    {
      if (v81)
      {
        v83 = v129;
      }

      else
      {
        v83 = v72;
      }

      v82 = (v83[2])(v83, *off_1E7721F08);
    }

    if (v120)
    {
      if (v34)
      {
        if (MEMORY[0x1A590D320](v82))
        {
          v84 = v126;
        }

        else
        {
          v84 = v129;
        }

        (v84[2])(v84, *off_1E7721ED0);
        v82 = v129;
        if ((v121 & 1) == 0)
        {
LABEL_132:
          if (v132)
          {
            v82 = (*(v72 + 2))(v72, *off_1E7721E88);
          }

          if (v127)
          {
            if (v34)
            {
              if (MEMORY[0x1A590D320](v82))
              {
                v85 = v118[2];
              }

              else
              {
                v85 = v129[2];
              }
            }

            else
            {
              v85 = *(v72 + 2);
            }

            v82 = v85();
          }

          if (v124)
          {
            v82 = (*(v72 + 2))(v72, *off_1E7721F38);
          }

          v47 = a6;
          if (v134)
          {
            v82 = (*(v72 + 2))(v72, *off_1E7721F10);
          }

          if (v39)
          {
            v86 = off_1E7721F48;
            v87 = v136;
          }

          else
          {
            v87 = v136;
            if (v130)
            {
              v82 = v136[2](v136, *off_1E7721E58);
            }

            if (v137 == 1)
            {
              v86 = off_1E7721E58;
            }

            else
            {
              if (v137 != 2)
              {
LABEL_156:
                if (!(v131 & 1 | ((v49 & 1) == 0)))
                {
                  v82 = v87[2](v87, *off_1E7721F40);
                }

                v88 = MEMORY[0x1A590D320](v82);
                if (v88)
                {
                  if (v133)
                  {
                    v88 = (*(v72 + 2))(v72, *off_1E7721E00);
                  }

                  if (v50)
                  {
                    if (v41)
                    {
                      v88 = [v123 addObject:*off_1E7721F20];
                    }

                    else
                    {
                      v88 = (*(v72 + 2))(v72, *off_1E7721F20);
                    }
                  }
                }

                if ((MEMORY[0x1A590D320](v88) & 1) == 0 && v114 && [v109 count])
                {
                  [v109 insertObject:*off_1E7721E20 atIndex:0];
                }

                v45 = v109;
                v44 = v111;
                v54 = [v123 copy];
                v53 = [v113 copy];
                v52 = [v77 copy];

                v51 = 0;
                v48 = a8;
                goto LABEL_222;
              }

              v86 = off_1E7721E70;
            }
          }

          v82 = v87[2](v87, *v86);
          goto LABEL_156;
        }

LABEL_131:
        v82 = (*(v82 + 16))(v82, *off_1E7721F30);
        goto LABEL_132;
      }

      v82 = (*(v72 + 2))(v72, *off_1E7721ED0);
      if ((v121 & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if ((v121 & 1) == 0)
      {
        goto LABEL_132;
      }

      v82 = v129;
      if (v34)
      {
        goto LABEL_131;
      }
    }

    v82 = v72;
    goto LABEL_131;
  }

  v161[0] = 0;
  v159 = MEMORY[0x1E695E0F0];
  v160 = MEMORY[0x1E695E0F0];
  BYTE2(v103) = v33;
  BYTE1(v103) = v125 ^ 1;
  LOBYTE(v103) = 0;
  [a1 _topBarValuesForSelectionModeWithModel:v11 title:v161 leadingIdentifiers:&v160 trailingIdentifiers:&v159 allowSelectAll:v117 allowAdd:v135 allowTrashActions:v103 allowDeleteShareActions:? wantsMultiSelectMenu:?];
  v51 = v161[0];
  v44 = v160;
  v45 = v159;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  if (v23)
  {
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((v106 & v125) == 1)
    {
      v58 = MEMORY[0x1A590D320]();
      v59 = *off_1E7721F08;
      v60 = v110;
      if (v58 && v112 != 1)
      {
        v61 = v55;
        [v55 addObject:v59];
        v138 = 1;
        goto LABEL_172;
      }

      [v56 addObject:v59];
    }

    else
    {
      v60 = v110;
      if ((v110 & v125) == 1)
      {
        v61 = v55;
        if (!MEMORY[0x1A590D320]() || v112 == 1)
        {
          v79 = v56;
        }

        else
        {
          v79 = v55;
        }

        [v79 addObject:*off_1E7721F50];
        v138 = 0;
LABEL_172:
        if ([v11 navBarStyle] || MEMORY[0x1A590D320]())
        {
          if ((MEMORY[0x1A590D320]() & 1) == 0)
          {
            [v56 addObject:*off_1E7721EC0];
          }

          if ([v11 allowsMergeDuplicatesAction])
          {
            v89 = off_1E7721E98;
          }

          else if ([v11 allowsMoveToLibraryAction])
          {
            v89 = off_1E7721EA0;
          }

          else if ([v11 allowsMoveToPersonalLibraryAction])
          {
            v89 = off_1E7721EA8;
          }

          else
          {
            v90 = [v11 allowsMoveToSharedLibraryAction];
            if (v90)
            {
              v89 = off_1E7721EB0;
            }

            else
            {
              v89 = off_1E7721EF8;
            }

            if ((v90 & 1) == 0 && ((v104 ^ 1) & 1) == 0)
            {
              goto LABEL_201;
            }
          }
        }

        else
        {
          if (v135)
          {
            v89 = off_1E7721E08;
          }

          else if ([v11 allowsMergeDuplicatesAction])
          {
            v89 = off_1E7721E98;
          }

          else if ([v11 allowsMoveToLibraryAction])
          {
            v89 = off_1E7721EA0;
          }

          else if ([v11 allowsMoveToPersonalLibraryAction])
          {
            v89 = off_1E7721EA8;
          }

          else
          {
            v90 = [v11 allowsMoveToSharedLibraryAction];
            if (!v90)
            {
LABEL_201:
              v91 = v127 & v34;
              v92 = v57;
              if (v91 == 1)
              {
                if ((MEMORY[0x1A590D320](v90) & 1) == 0)
                {
                  [v56 addObject:*off_1E7721EC0];
                }

                [v56 addObject:*off_1E7721E18];
              }

              v93 = [v11 allowsFileRadarAction];
              if (v93)
              {
                v94 = MEMORY[0x1A590D320]();
                v95 = v57;
                if ((v94 & 1) == 0)
                {
                  [v56 addObject:*off_1E7721EC0];
                  v95 = v56;
                }

                v93 = [v95 addObject:*off_1E7721E80];
              }

              if ((v125 & v138 & v60) == 1)
              {
                if (!MEMORY[0x1A590D320](v93) || (v96 = v57, v112 == 1))
                {
                  [v56 addObject:*off_1E7721EC0];
                  v96 = v56;
                }

                v93 = [v96 addObject:*off_1E7721F50];
              }

              if (v108 && (!MEMORY[0x1A590D320](v93) || v112 == 1))
              {
                [v56 addObject:*off_1E7721E90];
                [v56 addObject:*off_1E7721F00];
              }

              v54 = [v61 copy];
              v53 = [v56 copy];
              v52 = [v57 copy];

              goto LABEL_219;
            }

            v89 = off_1E7721EB0;
          }

          if ((MEMORY[0x1A590D320]() & 1) == 0)
          {
            [v56 addObject:*off_1E7721EC0];
          }
        }

        v90 = [v56 addObject:*v89];
        goto LABEL_201;
      }
    }

    v138 = 1;
    v61 = v55;
    goto LABEL_172;
  }

LABEL_219:
  if (!a4)
  {
LABEL_96:
    v47 = a6;
    v48 = a8;
    goto LABEL_222;
  }

  v47 = a6;
  v48 = a8;
  if (v51)
  {
    v97 = v51;
    *a4 = v51;
  }

LABEL_222:
  if (a5 && v44)
  {
    v98 = v44;
    *a5 = v44;
  }

  if (v47 && v45)
  {
    v99 = v45;
    *v47 = v45;
  }

  if (a7 && v54)
  {
    v100 = v54;
    *a7 = v54;
  }

  if (v48 && v53)
  {
    v101 = v53;
    *v48 = v53;
  }

  if (a9 && v52)
  {
    v102 = v52;
    *a9 = v52;
  }
}

void __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = *off_1E7721E90;
    if (([v4 isEqualToString:*off_1E7721E90] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *off_1E7721F20) & 1) == 0)
    {
      [*(a1 + 32) addObject:v3];
    }
  }

  [*(a1 + 32) addObject:v4];
}

void __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

void __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721EC0];
  }

  [*(a1 + 32) addObject:v3];
}

void __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721EC0];
  }

  [*(a1 + 32) addObject:v3];
}

void __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721EC0];
  }

  [*(a1 + 32) addObject:v3];
}

void __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

void __234__PXPhotosBarsItemIdentifierProviderGeneric_valuesForModel_title_leadingIdentifiers_trailingIdentifiers_leadingToolbarIdentifiers_centerToolbarIdentifiers_trailingToolbarIdentifiers_hasSharedLibraryOrPreview_canShowSortAndFilterMenu___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) addObject:*off_1E7721E90];
  }

  [*(a1 + 32) addObject:v3];
}

@end