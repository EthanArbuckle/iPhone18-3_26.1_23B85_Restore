@interface PXPhotosBarsItemIdentifierProviderGeneric
+ (void)valuesForModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers leadingToolbarIdentifiers:(id *)toolbarIdentifiers centerToolbarIdentifiers:(id *)centerToolbarIdentifiers trailingToolbarIdentifiers:(id *)trailingToolbarIdentifiers hasSharedLibraryOrPreview:(BOOL)self0 canShowSortAndFilterMenu:(BOOL)self1;
@end

@implementation PXPhotosBarsItemIdentifierProviderGeneric

+ (void)valuesForModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers leadingToolbarIdentifiers:(id *)toolbarIdentifiers centerToolbarIdentifiers:(id *)centerToolbarIdentifiers trailingToolbarIdentifiers:(id *)trailingToolbarIdentifiers hasSharedLibraryOrPreview:(BOOL)self0 canShowSortAndFilterMenu:(BOOL)self1
{
  modelCopy = model;
  currentDataSource = [modelCopy currentDataSource];
  allowedChromeItems = [modelCopy allowedChromeItems];
  v144 = currentDataSource;
  containerCollection = [currentDataSource containerCollection];
  px_isCloudKitSharedAlbum = [containerCollection px_isCloudKitSharedAlbum];
  isInSelectMode = [modelCopy isInSelectMode];
  selectionSnapshot = [modelCopy selectionSnapshot];
  isAnyItemSelected = [selectionSnapshot isAnyItemSelected];

  navBarStyle = [modelCopy navBarStyle];
  allowsAddAction = [modelCopy allowsAddAction];
  v19 = 0;
  if (allowsAddAction && (isInSelectMode & 1) == 0 && (isAnyItemSelected & 1) == 0)
  {
    if ([modelCopy allowsEmptyPlaceholderBehavior])
    {
      v19 = [v144 isFiltered] ^ 1;
    }

    else
    {
      v19 = 0;
    }
  }

  v135 = v19;
  if ([modelCopy allowsShareAction])
  {
    assetActionManager = [modelCopy assetActionManager];
    v106 = [assetActionManager supportsActionType:*off_1E7721B88];
  }

  else
  {
    v106 = 0;
  }

  allowsTrashAction = [modelCopy allowsTrashAction];
  allowsSelectAllAction = [modelCopy allowsSelectAllAction];
  if ([modelCopy isInCompactMode])
  {
    v21 = 0;
  }

  else
  {
    supportsAspectRatioToggle = [modelCopy supportsAspectRatioToggle];
    v21 = 0;
    if (supportsAspectRatioToggle && (allowedChromeItems & 0x2000) != 0)
    {
      v21 = [modelCopy gridStyle] != 6;
    }
  }

  v124 = v21;
  wantsToolbarVisible = [modelCopy wantsToolbarVisible];
  toolbarStyle = [modelCopy toolbarStyle];
  sharedInstance = [off_1E7721810 sharedInstance];
  if ([sharedInstance enableNewActionMenu])
  {
    allowsActionMenuBehavior = [modelCopy allowsActionMenuBehavior];

    if (allowsActionMenuBehavior)
    {
      currentLens = [modelCopy currentLens];
      allowsActionMenu = [currentLens allowsActionMenu];

      if (allowsActionMenu)
      {
        v29 = (allowedChromeItems >> 1) & 1;
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  LODWORD(v29) = 0;
LABEL_21:
  if (navBarStyle)
  {
    v30 = 0;
  }

  else
  {
    v30 = wantsToolbarVisible;
  }

  v31 = wantsToolbarVisible;
  if (v30 == 1)
  {
    v31 = MEMORY[0x1A590D320](wantsToolbarVisible);
  }

  v125 = v31;
  allowsDismissAction = [modelCopy allowsDismissAction];
  allowsAddToLibraryAction = [modelCopy allowsAddToLibraryAction];
  allowsContentSyndicationSaveAllAction = [modelCopy allowsContentSyndicationSaveAllAction];
  allowsInfoAction = [modelCopy allowsInfoAction];
  allowsMultiSelectMenu = [modelCopy allowsMultiSelectMenu];
  v108 = allowsMultiSelectMenu & isInSelectMode;
  if (toolbarStyle == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = allowsMultiSelectMenu & isInSelectMode;
  }

  allowsReplyAction = [modelCopy allowsReplyAction];
  allowsTapbackAction = [modelCopy allowsTapbackAction];
  v133 = v29;
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

  allowsSearch = [modelCopy allowsSearch];
  if (([modelCopy wantsToolbarVisible] & 1) != 0 || prefersActionsInToolbar)
  {
    isInCompactMode = [modelCopy isInCompactMode];
  }

  else
  {
    isInCompactMode = 0;
  }

  v112 = toolbarStyle;
  if (allowedChromeItems)
  {
    dismissAffordance = [modelCopy dismissAffordance];
  }

  else
  {
    dismissAffordance = 0;
  }

  contentPrivacyState = [modelCopy contentPrivacyState];
  allowsShareAllAction = [modelCopy allowsShareAllAction];
  v114 = navBarStyle;
  if ([modelCopy allowsShareAllAction])
  {
    wantsShareGridButtonVisible = [modelCopy wantsShareGridButtonVisible];
  }

  else
  {
    wantsShareGridButtonVisible = 0;
  }

  specManager = [modelCopy specManager];
  spec = [specManager spec];
  wantsToggleSidebarButton = [spec wantsToggleSidebarButton];

  wantsSelectModeCaptionInContextMenu = [modelCopy wantsSelectModeCaptionInContextMenu];
  allowsSortAndFilterMenu = [modelCopy allowsSortAndFilterMenu];
  v41 = (([modelCopy wantsToolbarVisible] | prefersActionsInToolbar) & 1) != 0 && objc_msgSend(modelCopy, "isInCompactMode") && objc_msgSend(modelCopy, "gridStyle") != 6;
  if ([modelCopy allowsCurationModeToggle])
  {
    v42 = [modelCopy canShowCurationModeToggle] ^ 1;
  }

  else
  {
    v42 = 1;
  }

  v131 = v42;
  prefersCurationModeToggleInNavBar = [modelCopy prefersCurationModeToggleInNavBar];
  if (contentPrivacyState)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if (wantsToggleSidebarButton)
    {
      v46 = off_1E7721F48;
      trailingIdentifiersCopy5 = trailingIdentifiers;
      centerToolbarIdentifiersCopy5 = centerToolbarIdentifiers;
    }

    else
    {
      trailingIdentifiersCopy5 = trailingIdentifiers;
      centerToolbarIdentifiersCopy5 = centerToolbarIdentifiers;
      if (dismissAffordance == 1)
      {
        v46 = off_1E7721E58;
      }

      else
      {
        if (dismissAffordance != 2)
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

    [array addObject:*v46];
    goto LABEL_89;
  }

  v49 = prefersCurationModeToggleInNavBar;
  v50 = allowsSortAndFilterMenu & menu;
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
    if (wantsToggleSidebarButton)
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

    if (allowsInfoAction)
    {
      v69 = (v64[2])(v64, *off_1E7721E88);
    }

    if (v135)
    {
      v69 = (v64[2])(v64, *off_1E7721E08);
    }

    if (px_isCloudKitSharedAlbum)
    {
      v69 = (v64[2])(v64, *off_1E7721F10);
    }

    if (!(wantsToggleSidebarButton & 1 | ((allowsDismissAction & 1) == 0)))
    {
      v69 = v68[2](v68, *off_1E7721E58);
    }

    if (dismissAffordance == 1)
    {
      v70 = off_1E7721E58;
    }

    else
    {
      if (dismissAffordance != 2)
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

    array = v66;
    array2 = v63;

    v51 = 0;
    v54 = 0;
    v53 = 0;
    v52 = 0;
    goto LABEL_96;
  }

  if (!isInSelectMode)
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
    if ((v78 & allowsSearch) == 1)
    {
      if (isInCompactMode)
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
    if (allowsContentSyndicationSaveAllAction)
    {
      if (prefersActionsInToolbar)
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

    v81 = allowsShareAllAction & prefersActionsInToolbar;
    wantsSelectButton = [modelCopy wantsSelectButton];
    if (wantsSelectButton)
    {
      wantsSelectButton = (*(v72 + 2))(v72, *off_1E7721EE8);
    }

    if ((v81 | wantsShareGridButtonVisible))
    {
      if (v81)
      {
        v83 = v129;
      }

      else
      {
        v83 = v72;
      }

      wantsSelectButton = (v83[2])(v83, *off_1E7721F08);
    }

    if (allowsReplyAction)
    {
      if (prefersActionsInToolbar)
      {
        if (MEMORY[0x1A590D320](wantsSelectButton))
        {
          v84 = v126;
        }

        else
        {
          v84 = v129;
        }

        (v84[2])(v84, *off_1E7721ED0);
        wantsSelectButton = v129;
        if ((allowsTapbackAction & 1) == 0)
        {
LABEL_132:
          if (allowsInfoAction)
          {
            wantsSelectButton = (*(v72 + 2))(v72, *off_1E7721E88);
          }

          if (allowsAddToLibraryAction)
          {
            if (prefersActionsInToolbar)
            {
              if (MEMORY[0x1A590D320](wantsSelectButton))
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

            wantsSelectButton = v85();
          }

          if (v124)
          {
            wantsSelectButton = (*(v72 + 2))(v72, *off_1E7721F38);
          }

          trailingIdentifiersCopy5 = trailingIdentifiers;
          if (px_isCloudKitSharedAlbum)
          {
            wantsSelectButton = (*(v72 + 2))(v72, *off_1E7721F10);
          }

          if (wantsToggleSidebarButton)
          {
            v86 = off_1E7721F48;
            v87 = v136;
          }

          else
          {
            v87 = v136;
            if (allowsDismissAction)
            {
              wantsSelectButton = v136[2](v136, *off_1E7721E58);
            }

            if (dismissAffordance == 1)
            {
              v86 = off_1E7721E58;
            }

            else
            {
              if (dismissAffordance != 2)
              {
LABEL_156:
                if (!(v131 & 1 | ((v49 & 1) == 0)))
                {
                  wantsSelectButton = v87[2](v87, *off_1E7721F40);
                }

                v88 = MEMORY[0x1A590D320](wantsSelectButton);
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

                array2 = v109;
                array = v111;
                v54 = [v123 copy];
                v53 = [v113 copy];
                v52 = [v77 copy];

                v51 = 0;
                centerToolbarIdentifiersCopy5 = centerToolbarIdentifiers;
                goto LABEL_222;
              }

              v86 = off_1E7721E70;
            }
          }

          wantsSelectButton = v87[2](v87, *v86);
          goto LABEL_156;
        }

LABEL_131:
        wantsSelectButton = (*(wantsSelectButton + 16))(wantsSelectButton, *off_1E7721F30);
        goto LABEL_132;
      }

      wantsSelectButton = (*(v72 + 2))(v72, *off_1E7721ED0);
      if ((allowsTapbackAction & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if ((allowsTapbackAction & 1) == 0)
      {
        goto LABEL_132;
      }

      wantsSelectButton = v129;
      if (prefersActionsInToolbar)
      {
        goto LABEL_131;
      }
    }

    wantsSelectButton = v72;
    goto LABEL_131;
  }

  v161[0] = 0;
  v159 = MEMORY[0x1E695E0F0];
  v160 = MEMORY[0x1E695E0F0];
  BYTE2(v103) = v33;
  BYTE1(v103) = v125 ^ 1;
  LOBYTE(v103) = 0;
  [self _topBarValuesForSelectionModeWithModel:modelCopy title:v161 leadingIdentifiers:&v160 trailingIdentifiers:&v159 allowSelectAll:allowsSelectAllAction allowAdd:v135 allowTrashActions:v103 allowDeleteShareActions:? wantsMultiSelectMenu:?];
  v51 = v161[0];
  array = v160;
  array2 = v159;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  if (wantsToolbarVisible)
  {
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((v106 & v125) == 1)
    {
      v58 = MEMORY[0x1A590D320]();
      v59 = *off_1E7721F08;
      v60 = allowsTrashAction;
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
      v60 = allowsTrashAction;
      if ((allowsTrashAction & v125) == 1)
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
        if ([modelCopy navBarStyle] || MEMORY[0x1A590D320]())
        {
          if ((MEMORY[0x1A590D320]() & 1) == 0)
          {
            [v56 addObject:*off_1E7721EC0];
          }

          if ([modelCopy allowsMergeDuplicatesAction])
          {
            v89 = off_1E7721E98;
          }

          else if ([modelCopy allowsMoveToLibraryAction])
          {
            v89 = off_1E7721EA0;
          }

          else if ([modelCopy allowsMoveToPersonalLibraryAction])
          {
            v89 = off_1E7721EA8;
          }

          else
          {
            allowsMoveToSharedLibraryAction = [modelCopy allowsMoveToSharedLibraryAction];
            if (allowsMoveToSharedLibraryAction)
            {
              v89 = off_1E7721EB0;
            }

            else
            {
              v89 = off_1E7721EF8;
            }

            if ((allowsMoveToSharedLibraryAction & 1) == 0 && ((wantsSelectModeCaptionInContextMenu ^ 1) & 1) == 0)
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

          else if ([modelCopy allowsMergeDuplicatesAction])
          {
            v89 = off_1E7721E98;
          }

          else if ([modelCopy allowsMoveToLibraryAction])
          {
            v89 = off_1E7721EA0;
          }

          else if ([modelCopy allowsMoveToPersonalLibraryAction])
          {
            v89 = off_1E7721EA8;
          }

          else
          {
            allowsMoveToSharedLibraryAction = [modelCopy allowsMoveToSharedLibraryAction];
            if (!allowsMoveToSharedLibraryAction)
            {
LABEL_201:
              v91 = allowsAddToLibraryAction & prefersActionsInToolbar;
              v92 = v57;
              if (v91 == 1)
              {
                if ((MEMORY[0x1A590D320](allowsMoveToSharedLibraryAction) & 1) == 0)
                {
                  [v56 addObject:*off_1E7721EC0];
                }

                [v56 addObject:*off_1E7721E18];
              }

              allowsFileRadarAction = [modelCopy allowsFileRadarAction];
              if (allowsFileRadarAction)
              {
                v94 = MEMORY[0x1A590D320]();
                v95 = v57;
                if ((v94 & 1) == 0)
                {
                  [v56 addObject:*off_1E7721EC0];
                  v95 = v56;
                }

                allowsFileRadarAction = [v95 addObject:*off_1E7721E80];
              }

              if ((v125 & v138 & v60) == 1)
              {
                if (!MEMORY[0x1A590D320](allowsFileRadarAction) || (v96 = v57, v112 == 1))
                {
                  [v56 addObject:*off_1E7721EC0];
                  v96 = v56;
                }

                allowsFileRadarAction = [v96 addObject:*off_1E7721F50];
              }

              if (v108 && (!MEMORY[0x1A590D320](allowsFileRadarAction) || v112 == 1))
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

        allowsMoveToSharedLibraryAction = [v56 addObject:*v89];
        goto LABEL_201;
      }
    }

    v138 = 1;
    v61 = v55;
    goto LABEL_172;
  }

LABEL_219:
  if (!title)
  {
LABEL_96:
    trailingIdentifiersCopy5 = trailingIdentifiers;
    centerToolbarIdentifiersCopy5 = centerToolbarIdentifiers;
    goto LABEL_222;
  }

  trailingIdentifiersCopy5 = trailingIdentifiers;
  centerToolbarIdentifiersCopy5 = centerToolbarIdentifiers;
  if (v51)
  {
    v97 = v51;
    *title = v51;
  }

LABEL_222:
  if (identifiers && array)
  {
    v98 = array;
    *identifiers = array;
  }

  if (trailingIdentifiersCopy5 && array2)
  {
    v99 = array2;
    *trailingIdentifiersCopy5 = array2;
  }

  if (toolbarIdentifiers && v54)
  {
    v100 = v54;
    *toolbarIdentifiers = v54;
  }

  if (centerToolbarIdentifiersCopy5 && v53)
  {
    v101 = v53;
    *centerToolbarIdentifiersCopy5 = v53;
  }

  if (trailingToolbarIdentifiers && v52)
  {
    v102 = v52;
    *trailingToolbarIdentifiers = v52;
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