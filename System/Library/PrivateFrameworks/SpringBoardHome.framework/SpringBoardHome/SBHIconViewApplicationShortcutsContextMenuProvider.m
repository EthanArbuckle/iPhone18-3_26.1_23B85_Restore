@interface SBHIconViewApplicationShortcutsContextMenuProvider
+ (id)applicationShortcutServiceForIconView:(id)a3;
+ (id)homeScreenService;
+ (void)activateShortcut:(id)a3 withBundleIdentifier:(id)a4 forIconView:(id)a5;
- (BOOL)shouldActivateApplicationShortcutItem:(id)a3 atIndex:(unint64_t)a4 forIconView:(id)a5;
- (SBHIconViewApplicationShortcutsContextMenuProvider)init;
- (SBHIconViewApplicationShortcutsContextMenuProvider)initWithUniqueIdentifier:(id)a3;
- (SBHIconViewApplicationShortcutsContextMenuProviderDelegate)delegate;
- (id)contextMenuSectionsForIconView:(id)a3 atLocation:(CGPoint)a4;
- (id)effectiveApplicationShortcutItemsForIconView:(id)a3;
- (void)_configureResizeAction:(id)a3 forGridSizeClass:(id)a4 withSelectedGridSizeClass:(id)a5 withIconSupportedGridSizeClasses:(id)a6 forIconView:(id)a7;
- (void)fetchApplicationShortcutItemsIfAppropriateForIconView:(id)a3;
@end

@implementation SBHIconViewApplicationShortcutsContextMenuProvider

- (SBHIconViewApplicationShortcutsContextMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHIconViewApplicationShortcutsContextMenuProvider)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [(SBHIconViewApplicationShortcutsContextMenuProvider *)self initWithUniqueIdentifier:v3];

  return v4;
}

- (SBHIconViewApplicationShortcutsContextMenuProvider)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHIconViewApplicationShortcutsContextMenuProvider;
  v5 = [(SBHIconViewApplicationShortcutsContextMenuProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;
  }

  return v5;
}

- (id)contextMenuSectionsForIconView:(id)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v105 = *MEMORY[0x1E69E9840];
  val = a3;
  v6 = [(SBHIconViewApplicationShortcutsContextMenuProvider *)self effectiveApplicationShortcutItemsForIconView:?];
  v61 = [MEMORY[0x1E695DF70] array];
  v60 = [MEMORY[0x1E695DF70] array];
  v59 = [MEMORY[0x1E695DF70] array];
  v62 = [MEMORY[0x1E695DF70] array];
  v58 = [MEMORY[0x1E695DF70] array];
  v7 = [val applicationBundleIdentifierForShortcuts];
  v8 = [val applicationBundleURLForShortcuts];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E698E640]) initWithURL:v8];
  }

  else
  {
    v9 = 0;
  }

  objc_initWeak(&location, val);
  objc_initWeak(&from, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke;
  aBlock[3] = &unk_1E8090AE8;
  objc_copyWeak(&v94, &location);
  objc_copyWeak(&v95, &from);
  v10 = v6;
  v89 = v10;
  v90 = self;
  v52 = v7;
  v91 = v52;
  v53 = v8;
  v92 = v53;
  v54 = v9;
  v93 = v54;
  v11 = _Block_copy(aBlock);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v84 objects:v104 count:16];
  if (v12)
  {
    v13 = *v85;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v85 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v84 + 1) + 8 * i);
        v16 = v11[2](v11, v15);
        if (v16)
        {
          v17 = [v15 type];
          [v16 setAccessibilityIdentifier:v17];

          if ([SBHIconApplicationShortcutListComposer sbh_isDestructiveShortcutItem:v15])
          {
            v18 = objc_opt_self();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v16 setAttributes:2];
            }
          }

          v20 = [SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:v15];
          if (v20 > 1)
          {
            v21 = v62;
            if (v20 != 2)
            {
              v21 = v61;
              if (v20 != 3)
              {
                if (v20 != 4)
                {
                  goto LABEL_21;
                }

                v21 = v58;
              }
            }

LABEL_20:
            [v21 addObject:v16];
            goto LABEL_21;
          }

          v21 = v60;
          if (!v20)
          {
            goto LABEL_20;
          }

          v21 = v59;
          if (v20 == 1)
          {
            goto LABEL_20;
          }
        }

LABEL_21:
      }

      v12 = [obj countByEnumeratingWithState:&v84 objects:v104 count:16];
    }

    while (v12);
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = [(SBHIconViewApplicationShortcutsContextMenuProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v23 = [v57 applicationShortcutSectionOrderingForIconView:val];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &unk_1F3DB2CC0;
    }
  }

  else
  {
    v25 = &unk_1F3DB2CC0;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v80 objects:v103 count:16];
  if (v27)
  {
    v28 = *v81;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v81 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [*(*(&v80 + 1) + 8 * j) unsignedIntegerValue];
        if (v30 <= 1)
        {
          if (v30)
          {
            if (v30 != 1)
            {
              continue;
            }

            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v31 = v59;
            v32 = [v31 countByEnumeratingWithState:&v72 objects:v101 count:16];
            if (v32)
            {
              v33 = *v73;
              do
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v73 != v33)
                  {
                    objc_enumerationMutation(v31);
                  }

                  [v22 addObject:*(*(&v72 + 1) + 8 * k)];
                }

                v32 = [v31 countByEnumeratingWithState:&v72 objects:v101 count:16];
              }

              while (v32);
            }
          }

          else
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v31 = v60;
            v45 = [v31 countByEnumeratingWithState:&v76 objects:v102 count:16];
            if (v45)
            {
              v46 = *v77;
              do
              {
                for (m = 0; m != v45; ++m)
                {
                  if (*v77 != v46)
                  {
                    objc_enumerationMutation(v31);
                  }

                  [v22 addObject:*(*(&v76 + 1) + 8 * m)];
                }

                v45 = [v31 countByEnumeratingWithState:&v76 objects:v102 count:16];
              }

              while (v45);
            }
          }
        }

        else
        {
          switch(v30)
          {
            case 2:
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v57 shouldGroupSystemApplicationShortcutItemsForIconView:val atLocation:{x, y}])
              {
                v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gearshape"];
                v35 = MEMORY[0x1E69DCC60];
                v36 = SBHBundle();
                v37 = [v36 localizedStringForKey:@"OPTIONS" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
                v38 = [v35 menuWithTitle:v37 image:v31 identifier:0 options:32 children:v62];

                v39 = MEMORY[0x1E69DCC60];
                v100 = v38;
                v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
                v41 = [v39 menuWithTitle:&stru_1F3D472A8 image:0 identifier:0 options:1 children:v40];

                [v22 addObject:v41];
              }

              else
              {
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v31 = v62;
                v48 = [v31 countByEnumeratingWithState:&v68 objects:v99 count:16];
                if (v48)
                {
                  v49 = *v69;
                  do
                  {
                    for (n = 0; n != v48; ++n)
                    {
                      if (*v69 != v49)
                      {
                        objc_enumerationMutation(v31);
                      }

                      [v22 addObject:*(*(&v68 + 1) + 8 * n)];
                    }

                    v48 = [v31 countByEnumeratingWithState:&v68 objects:v99 count:16];
                  }

                  while (v48);
                }
              }

              break;
            case 3:
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v31 = v61;
              v42 = [v31 countByEnumeratingWithState:&v64 objects:v98 count:16];
              if (v42)
              {
                v43 = *v65;
                do
                {
                  for (ii = 0; ii != v42; ++ii)
                  {
                    if (*v65 != v43)
                    {
                      objc_enumerationMutation(v31);
                    }

                    [v22 addObject:*(*(&v64 + 1) + 8 * ii)];
                  }

                  v42 = [v31 countByEnumeratingWithState:&v64 objects:v98 count:16];
                }

                while (v42);
              }

              break;
            case 4:
              v31 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3D472A8 image:0 identifier:0 options:1 children:v58];
              [v22 addObject:v31];
              break;
            default:
              continue;
          }
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v80 objects:v103 count:16];
    }

    while (v27);
  }

  objc_destroyWeak(&v95);
  objc_destroyWeak(&v94);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v22;
}

id __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    v14 = 0;
    goto LABEL_46;
  }

  v5 = objc_loadWeakRetained((a1 + 80));
  if (v5)
  {
    v6 = [*(a1 + 32) indexOfObject:v3];
    v7 = [v3 type];
    if (![v7 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.change-widget-size"])
    {
      v67 = v7;
      v71 = v5;
      v15 = *(a1 + 56);
      v78 = 0;
      v79 = 0;
      [v3 sb_buildIconImageWithApplicationBundleURL:v15 image:&v79 systemImageName:&v78];
      v16 = v3;
      v17 = v79;
      v66 = v78;
      v18 = [v3 localizedTitle];
      v19 = [*(a1 + 64) localizedStringForKey:v18 value:0 table:@"InfoPlist"];
      v20 = v19;
      v63 = v18;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v18;
      }

      v22 = v21;

      v23 = [v16 localizedSubtitle];
      v24 = [*(a1 + 64) localizedStringForKey:v23 value:0 table:@"InfoPlist"];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v23;
      }

      v27 = v26;

      v28 = MEMORY[0x1E69DC628];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_9;
      v73[3] = &unk_1E8090AC0;
      objc_copyWeak(v77, (a1 + 80));
      v74 = v16;
      v77[1] = v6;
      v75 = WeakRetained;
      v76 = *(a1 + 48);
      v72 = v17;
      v14 = [v28 actionWithTitle:v22 image:v17 identifier:0 handler:v73];
      if ([v27 length])
      {
        [v14 setDiscoverabilityTitle:v27];
        [v14 setSubtitle:v27];
      }

      objc_destroyWeak(v77);
      v3 = v16;
      v5 = v71;
      v7 = v67;
      goto LABEL_44;
    }

    v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2;
    aBlock[3] = &unk_1E8090A70;
    objc_copyWeak(&v94, (a1 + 72));
    objc_copyWeak(v95, (a1 + 80));
    v8 = *(a1 + 48);
    aBlock[4] = *(a1 + 40);
    v95[1] = v6;
    v93 = v8;
    v70 = _Block_copy(aBlock);
    v9 = [WeakRetained listLayout];
    v10 = SBHIconListLayoutSupportedIconGridSizeClasses(v9);
    v11 = [WeakRetained supportedIconGridSizeClassesForResize];
    v12 = [v10 gridSizeClassSetByIntersectingWithGridSizeClassSet:v11];
    v13 = [WeakRetained icon];
    v69 = [WeakRetained gridSizeClass];
    v65 = v11;
    if ([v12 count] < 2)
    {
      v14 = 0;
LABEL_43:

      objc_destroyWeak(v95);
      objc_destroyWeak(&v94);
LABEL_44:

      goto LABEL_45;
    }

    v64 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:19.0];
    v61 = v13;
    v62 = v12;
    v60 = v9;
    v68 = v7;
    v29 = [WeakRetained gridSizeClassDomain];
    v30 = @"SBHIconGridSizeClassDefault";
    if ([v62 containsGridSizeClass:v30 inDomain:v29] && objc_msgSend(v61, "isLeafIcon"))
    {
      v31 = [v61 applicationBundleID];
      if (([v61 isWidgetStackIcon] & 1) == 0)
      {
        v32 = [v61 isWidgetIcon];
        if (v62)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if (v33 == 1)
        {
          v34 = [v61 activeDataSource];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v35 = [v34 containerBundleIdentifier];
          }

          else
          {
            v35 = 0;
          }

          v31 = v35;
        }

        if (!v31)
        {
          goto LABEL_32;
        }

        v36 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"app.grid.2x2.topbackward.filled" withConfiguration:v64];
        v37 = MEMORY[0x1E69DC628];
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_3;
        v90[3] = &unk_1E8090A98;
        v91 = v70;
        v38 = [v37 actionWithTitle:&stru_1F3D472A8 image:0 identifier:@"com.apple.springboardhome.application-shortcut-item.change-widget-to-app-icon" handler:v90];
        [v5 _configureResizeAction:v38 forGridSizeClass:v30 withSelectedGridSizeClass:v69 withIconSupportedGridSizeClasses:v11 forIconView:WeakRetained];
        [v38 setImage:v36];
        [v72 addObject:v38];
      }
    }

LABEL_32:
    v39 = @"SBHIconGridSizeClassSmall";

    if ([v10 containsGridSizeClass:v39 inDomain:v29])
    {
      v40 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"widget.small" withConfiguration:v64];
      v41 = MEMORY[0x1E69DC628];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4;
      v88[3] = &unk_1E8090A98;
      v89 = v70;
      v42 = [v41 actionWithTitle:&stru_1F3D472A8 image:0 identifier:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-small" handler:v88];
      [v5 _configureResizeAction:v42 forGridSizeClass:v39 withSelectedGridSizeClass:v69 withIconSupportedGridSizeClasses:v11 forIconView:WeakRetained];
      [v42 setImage:v40];
      [v72 addObject:v42];
    }

    v43 = @"SBHIconGridSizeClassMedium";

    if ([v10 containsGridSizeClass:v43 inDomain:v29])
    {
      v44 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"widget.medium" withConfiguration:v64];
      v45 = MEMORY[0x1E69DC628];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_5;
      v86[3] = &unk_1E8090A98;
      v87 = v70;
      v46 = [v45 actionWithTitle:&stru_1F3D472A8 image:0 identifier:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-medium" handler:v86];
      [v5 _configureResizeAction:v46 forGridSizeClass:v43 withSelectedGridSizeClass:v69 withIconSupportedGridSizeClasses:v11 forIconView:WeakRetained];
      [v46 setImage:v44];
      [v72 addObject:v46];
    }

    v47 = @"SBHIconGridSizeClassLarge";

    if ([v10 containsGridSizeClass:v47 inDomain:v29])
    {
      v48 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"widget.large" withConfiguration:v64];
      v49 = MEMORY[0x1E69DC628];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_6;
      v84[3] = &unk_1E8090A98;
      v85 = v70;
      v50 = [v49 actionWithTitle:@"L" image:0 identifier:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-large" handler:v84];
      [v5 _configureResizeAction:v50 forGridSizeClass:v47 withSelectedGridSizeClass:v69 withIconSupportedGridSizeClasses:v11 forIconView:WeakRetained];
      [v50 setImage:v48];
      [v72 addObject:v50];
    }

    v51 = @"SBHIconGridSizeClassExtraLarge";

    if ([v10 containsGridSizeClass:v51 inDomain:v29])
    {
      v52 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"widget.extralarge" withConfiguration:v64];
      v53 = MEMORY[0x1E69DC628];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_7;
      v82[3] = &unk_1E8090A98;
      v83 = v70;
      v54 = [v53 actionWithTitle:@"XL" image:0 identifier:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-extralarge" handler:v82];
      [v5 _configureResizeAction:v54 forGridSizeClass:v51 withSelectedGridSizeClass:v69 withIconSupportedGridSizeClasses:v11 forIconView:WeakRetained];
      [v54 setImage:v52];
      [v72 addObject:v54];
    }

    v55 = @"SBHIconGridSizeClassNewsLargeTall";

    if ([v10 containsGridSizeClass:v55 inDomain:v29])
    {
      v56 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"widget.large.portrait" withConfiguration:v64];
      v57 = MEMORY[0x1E69DC628];
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_8;
      v80[3] = &unk_1E8090A98;
      v81 = v70;
      v58 = [v57 actionWithTitle:@"LT" image:0 identifier:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-newsLargeTall" handler:v80];
      [v5 _configureResizeAction:v58 forGridSizeClass:v55 withSelectedGridSizeClass:v69 withIconSupportedGridSizeClasses:v11 forIconView:WeakRetained];
      [v58 setImage:v56];
      [v72 addObject:v58];
    }

    v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3D472A8 image:0 identifier:@"com.apple.springboardhome.application-shortcut-item.change-widget-size" options:129 children:v72];
    [v14 setPreferredElementSize:0];

    v9 = v60;
    v7 = v68;
    v12 = v62;
    v13 = v61;
    goto LABEL_43;
  }

  v14 = 0;
LABEL_45:

LABEL_46:

  return v14;
}

void __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      [v5 setType:v6];
      if ([*(a1 + 32) shouldActivateApplicationShortcutItem:v5 atIndex:*(a1 + 64) forIconView:WeakRetained])
      {
        [objc_opt_class() activateShortcut:v5 withBundleIdentifier:*(a1 + 40) forIconView:WeakRetained];
      }
    }
  }
}

uint64_t __96__SBHIconViewApplicationShortcutsContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained shouldActivateApplicationShortcutItem:*(a1 + 32) atIndex:*(a1 + 64) forIconView:*(a1 + 40)];
    v3 = v5;
    if (WeakRetained)
    {
      WeakRetained = [objc_opt_class() activateShortcut:*(a1 + 32) withBundleIdentifier:*(a1 + 48) forIconView:*(a1 + 40)];
      v3 = v5;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

+ (id)applicationShortcutServiceForIconView:(id)a3
{
  if (applicationShortcutServiceForIconView__onceToken != -1)
  {
    +[SBHIconViewApplicationShortcutsContextMenuProvider applicationShortcutServiceForIconView:];
  }

  v4 = applicationShortcutServiceForIconView___applicationShortcutService;

  return v4;
}

uint64_t __92__SBHIconViewApplicationShortcutsContextMenuProvider_applicationShortcutServiceForIconView___block_invoke(uint64_t a1)
{
  result = SBHIsRunningInSpringBoard(a1);
  if ((result & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69D41C0]);
    v3 = applicationShortcutServiceForIconView___applicationShortcutService;
    applicationShortcutServiceForIconView___applicationShortcutService = v2;

    return MEMORY[0x1EEE66BB8](v2, v3);
  }

  return result;
}

- (id)effectiveApplicationShortcutItemsForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationShortcutItems];
  if (!v5)
  {
    v5 = [v4 fetchedApplicationShortcutItems];
  }

  v6 = [(SBHIconViewApplicationShortcutsContextMenuProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconView:v4 applicationShortcutItemsWithProposedItems:v5];

    v5 = v7;
  }

  return v5;
}

- (void)fetchApplicationShortcutItemsIfAppropriateForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = [v5 isApplicationIcon];
  if (v6 && (SBHIsRunningInSpringBoard(v6) & 1) == 0 && [objc_opt_class() supportsPreviewInteraction])
  {
    v7 = [v5 applicationBundleID];
    v8 = [(SBHIconViewApplicationShortcutsContextMenuProvider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      if ([v8 iconViewShouldIncludeUninstallShortcutItem:v4])
      {
        v9 = 16777224;
      }

      else
      {
        v9 = 0x1000000;
      }
    }

    else
    {
      v9 = 0x1000000;
    }

    v10 = [objc_opt_class() applicationShortcutServiceForIconView:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __108__SBHIconViewApplicationShortcutsContextMenuProvider_fetchApplicationShortcutItemsIfAppropriateForIconView___block_invoke;
    v11[3] = &unk_1E8090B10;
    v12 = v4;
    v13 = v5;
    [v10 fetchApplicationShortcutItemsOfTypes:v9 forBundleIdentifier:v7 withCompletionHandler:v11];
  }

  else
  {
    [v4 setFetchedApplicationShortcutItems:0];
  }
}

void __108__SBHIconViewApplicationShortcutsContextMenuProvider_fetchApplicationShortcutItemsIfAppropriateForIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  BSDispatchMain();
}

void __108__SBHIconViewApplicationShortcutsContextMenuProvider_fetchApplicationShortcutItemsIfAppropriateForIconView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) icon];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 48) composedApplicationShortcutItems];
    [v4 setFetchedApplicationShortcutItems:v5];
  }
}

- (BOOL)shouldActivateApplicationShortcutItem:(id)a3 atIndex:(unint64_t)a4 forIconView:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SBHIconViewApplicationShortcutsContextMenuProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 iconView:v9 shouldActivateApplicationShortcutItem:v8 atIndex:a4];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (void)activateShortcut:(id)a3 withBundleIdentifier:(id)a4 forIconView:(id)a5
{
  v77[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 type];
  v11 = [v10 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.appStoreLink"];

  if (!v11)
  {
    v16 = [v7 type];
    v17 = [v16 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.share"];

    if (v17)
    {
      v18 = [v7 userInfo];
      v19 = *MEMORY[0x1E697BB38];
      v13 = [v18 objectForKey:*MEMORY[0x1E697BB38]];

      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = [v9 window];
      v15 = [MEMORY[0x1E695DF90] dictionary];
      [v15 setObject:v13 forKeyedSubscript:v19];
      v20 = [MEMORY[0x1E69DC938] currentDevice];
      v21 = [v20 userInterfaceIdiom];

      if ((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v22 = [v14 screen];
        [v9 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [v9 superview];
        v32 = [v22 coordinateSpace];
        [v31 convertRect:v32 toCoordinateSpace:{v24, v26, v28, v30}];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v78.origin.x = v34;
        v78.origin.y = v36;
        v78.size.width = v38;
        v78.size.height = v40;
        v41 = NSStringFromCGRect(v78);
        [v15 setObject:v41 forKeyedSubscript:*MEMORY[0x1E697BB40]];
      }

      v42 = [objc_alloc(MEMORY[0x1E697BA98]) initWithParameters:v15];
      v43 = [v14 rootViewController];
      [v43 presentViewController:v42 animated:1 completion:0];
    }

    else
    {
      v44 = [v7 type];
      v45 = [v44 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.show-all-windows"];

      if (v45)
      {
        if (activateShortcut_withBundleIdentifier_forIconView__onceToken != -1)
        {
          +[SBHIconViewApplicationShortcutsContextMenuProvider activateShortcut:withBundleIdentifier:forIconView:];
        }

        [activateShortcut_withBundleIdentifier_forIconView__multiWindowService triggerShowAllWindowsForApplicationBundleIdentifier:v8];
        goto LABEL_13;
      }

      v46 = [v7 type];
      v47 = [v46 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.delete-app"];

      if (v47)
      {
        v13 = [v9 icon];
        [v13 setUninstalled];
        [v13 completeUninstall];
        goto LABEL_12;
      }

      v48 = [v7 type];
      v49 = [v48 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.add-to-home-screen"];

      if (v49)
      {
        v13 = [objc_opt_class() homeScreenService];
        [v13 addApplicationIconToHomeScreenWithBundleIdentifier:v8];
        goto LABEL_12;
      }

      v50 = [v7 type];
      v51 = [v50 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.app-protection"];

      if (v51)
      {
        v13 = [v9 icon];
        if (![v13 isApplicationIcon])
        {
          goto LABEL_12;
        }

        v14 = v13;
        v52 = [v7 userInfo];
        v53 = [v52 objectForKey:kSBHIconAppProtectionFeatureUserInfoKey];
        v54 = [v53 unsignedIntegerValue];

        v55 = [v7 userInfo];
        v56 = [v55 objectForKey:kSBHIconAppProtectionActionUserInfoKey];
        v57 = [v56 unsignedIntegerValue];

        [v14 changeEnablement:v57 ofFeature:v54];
        goto LABEL_11;
      }

      v58 = [v7 activationMode] == 1;
      v13 = [objc_alloc(MEMORY[0x1E69DCA98]) initWithSBSShortcutItem:v7];
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v76[0] = *MEMORY[0x1E699F8E8];
      v59 = [MEMORY[0x1E696AD98] numberWithBool:v58];
      v77[0] = v59;
      v76[1] = *MEMORY[0x1E699F8D0];
      v75 = v13;
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      v61 = *MEMORY[0x1E699F970];
      v77[1] = v60;
      v77[2] = MEMORY[0x1E695E118];
      v62 = *MEMORY[0x1E699F940];
      v76[2] = v61;
      v76[3] = v62;
      v77[3] = *MEMORY[0x1E69D4430];
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:4];
      [v14 addEntriesFromDictionary:v63];

      v15 = [v7 targetContentIdentifier];
      v64 = [v7 targetContentIdentifier];

      if (v64)
      {
        [v14 setObject:v15 forKey:*MEMORY[0x1E69DECE8]];
      }

      if (SBFIsChamoisExternalDisplayControllerAvailable())
      {
        v65 = [v9 _screen];
        v66 = [v65 displayConfiguration];
        v67 = [v66 deviceName];

        if (v67)
        {
          [v14 setObject:v67 forKey:*MEMORY[0x1E69D4448]];
        }
      }

      v42 = [MEMORY[0x1E699FB70] optionsWithDictionary:v14];
      if (activateShortcut_withBundleIdentifier_forIconView__onceToken_87 != -1)
      {
        +[SBHIconViewApplicationShortcutsContextMenuProvider activateShortcut:withBundleIdentifier:forIconView:];
      }

      v68 = [v7 bundleIdentifierToLaunch];
      v69 = v68;
      if (v68)
      {
        v70 = v68;
      }

      else
      {
        v70 = v8;
      }

      v71 = v70;

      v72 = activateShortcut_withBundleIdentifier_forIconView__openApplicationService;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __104__SBHIconViewApplicationShortcutsContextMenuProvider_activateShortcut_withBundleIdentifier_forIconView___block_invoke_3;
      v73[3] = &unk_1E8090B38;
      v74 = v8;
      [v72 openApplication:v71 withOptions:v42 completion:v73];
    }

    goto LABEL_10;
  }

  v12 = [v7 userInfo];
  v13 = [v12 objectForKey:kSBHIconAppStoreURLUserInfoKey];

  if (v13)
  {
    v14 = [MEMORY[0x1E6963608] defaultWorkspace];
    v15 = [MEMORY[0x1E695DFF8] URLWithString:v13];
    [v14 openURL:v15 withOptions:0];
LABEL_10:

LABEL_11:
LABEL_12:
  }

LABEL_13:
}

uint64_t __104__SBHIconViewApplicationShortcutsContextMenuProvider_activateShortcut_withBundleIdentifier_forIconView___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4198]);
  v1 = activateShortcut_withBundleIdentifier_forIconView__multiWindowService;
  activateShortcut_withBundleIdentifier_forIconView__multiWindowService = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __104__SBHIconViewApplicationShortcutsContextMenuProvider_activateShortcut_withBundleIdentifier_forIconView___block_invoke_2()
{
  v0 = SBSCreateOpenApplicationService();
  v1 = activateShortcut_withBundleIdentifier_forIconView__openApplicationService;
  activateShortcut_withBundleIdentifier_forIconView__openApplicationService = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __104__SBHIconViewApplicationShortcutsContextMenuProvider_activateShortcut_withBundleIdentifier_forIconView___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __104__SBHIconViewApplicationShortcutsContextMenuProvider_activateShortcut_withBundleIdentifier_forIconView___block_invoke_3_cold_1(a1, v4, v5);
    }
  }
}

+ (id)homeScreenService
{
  if (homeScreenService_onceToken_2 != -1)
  {
    +[SBHIconViewApplicationShortcutsContextMenuProvider homeScreenService];
  }

  v3 = homeScreenService__homeScreenService_2;

  return v3;
}

uint64_t __71__SBHIconViewApplicationShortcutsContextMenuProvider_homeScreenService__block_invoke(uint64_t a1)
{
  result = SBHIsRunningInSpringBoard(a1);
  if ((result & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69D4240]);
    v3 = homeScreenService__homeScreenService_2;
    homeScreenService__homeScreenService_2 = v2;

    return MEMORY[0x1EEE66BB8](v2, v3);
  }

  return result;
}

- (void)_configureResizeAction:(id)a3 forGridSizeClass:(id)a4 withSelectedGridSizeClass:(id)a5 withIconSupportedGridSizeClasses:(id)a6 forIconView:(id)a7
{
  v17 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (v12 == v11 || [v12 isEqualToString:v11])
  {
    [v17 setAttributes:8];
    [v17 setState:1];
  }

  v15 = [v14 gridSizeClassDomain];
  v16 = [v13 containsGridSizeClass:v11 inDomain:v15];

  if ((v16 & 1) == 0)
  {
    [v17 setAttributes:1];
  }
}

void __104__SBHIconViewApplicationShortcutsContextMenuProvider_activateShortcut_withBundleIdentifier_forIconView___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "Could not launch application with application shortcut item: %{public}@, error: %{public}@.", &v4, 0x16u);
}

@end