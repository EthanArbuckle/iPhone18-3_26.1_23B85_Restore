@interface SBHIconViewFileStackConfigurationContextMenuProvider
- (SBHIconViewFileStackConfigurationContextMenuProvider)init;
- (SBHIconViewFileStackConfigurationContextMenuProvider)initWithUniqueIdentifier:(id)a3;
- (SBHIconViewFileStackConfigurationContextMenuProviderDelegate)delegate;
- (id)contextMenuSectionsForIconView:(id)a3 atLocation:(CGPoint)a4;
@end

@implementation SBHIconViewFileStackConfigurationContextMenuProvider

- (SBHIconViewFileStackConfigurationContextMenuProvider)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(SBHIconViewFileStackConfigurationContextMenuProvider *)self initWithUniqueIdentifier:v3];

  return v4;
}

- (SBHIconViewFileStackConfigurationContextMenuProvider)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHIconViewFileStackConfigurationContextMenuProvider;
  v5 = [(SBHIconViewFileStackConfigurationContextMenuProvider *)&v9 init];
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
  v112 = *MEMORY[0x1E69E9840];
  v77 = a3;
  v5 = [v77 icon];
  v6 = [v5 isFileStackIcon];

  if (v6)
  {
    v7 = [v77 icon];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v78 = v11;
    v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, v11);
    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [v11 url];

    if (v12)
    {
      v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"arrowshape.turn.up.right.circle"];
      v14 = MEMORY[0x1E696AEC0];
      v15 = SBHBundle();
      v16 = [v15 localizedStringForKey:@"OPEN_ITEM_TITLE_WITH_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v17 = [v78 displayName];
      v18 = [v14 stringWithFormat:v16, v17];

      v19 = MEMORY[0x1E69DC628];
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke;
      v107[3] = &unk_1E808B348;
      objc_copyWeak(&v108, &location);
      v20 = [v19 actionWithTitle:v18 image:v13 identifier:0 handler:v107];
      [v75 addObject:v20];

      objc_destroyWeak(&v108);
    }

    v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&from, self);
    v74 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
    v21 = MEMORY[0x1E69DC628];
    v22 = SBHBundle();
    v23 = [v22 localizedStringForKey:@"REMOVE_FROM_DOCK_CONTEXT_MENU_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_30;
    v103[3] = &unk_1E808F3F8;
    objc_copyWeak(&v104, &from);
    objc_copyWeak(&v105, &location);
    v73 = [v21 actionWithTitle:v23 image:v74 identifier:0 handler:v103];

    [v73 setAttributes:2];
    [v76 addObject:v73];
    v72 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder"];
    v24 = MEMORY[0x1E69DC628];
    v25 = SBHBundle();
    v26 = [v25 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SHOW_IN_FILES_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_3;
    v100[3] = &unk_1E808F3F8;
    objc_copyWeak(&v101, &location);
    objc_copyWeak(&v102, &from);
    v71 = [v24 actionWithTitle:v26 image:v72 identifier:0 handler:v100];

    [v76 addObject:v71];
    v85 = [v78 displayMode];
    v27 = [MEMORY[0x1E699A418] supportedDisplayModes];
    v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v27;
    v28 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
    if (v28)
    {
      v29 = *v97;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v97 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v96 + 1) + 8 * i);
          v32 = [v31 localizedName];
          v33 = MEMORY[0x1E69DCAB8];
          v34 = [v31 symbolName];
          v35 = [v33 _systemImageNamed:v34];

          v36 = MEMORY[0x1E69DC628];
          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 3221225472;
          v94[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_58;
          v94[3] = &unk_1E808F420;
          objc_copyWeak(&v95, &location);
          v94[4] = v31;
          v37 = [v36 actionWithTitle:v32 image:v35 identifier:0 handler:v94];
          v38 = [v85 identifier];
          v39 = [v31 identifier];
          LODWORD(v31) = [v38 isEqualToString:v39];

          [v37 setState:v31];
          [v86 addObject:v37];

          objc_destroyWeak(&v95);
        }

        v28 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
      }

      while (v28);
    }

    v40 = [MEMORY[0x1E699A418] supportedSortOrders];
    v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v83 = [v78 sortOrder];
    v41 = [v78 isCurrentSortOrderAscending];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v80 = v40;
    v42 = [v80 countByEnumeratingWithState:&v90 objects:v110 count:16];
    if (v42)
    {
      v82 = *v91;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v91 != v82)
          {
            objc_enumerationMutation(v80);
          }

          v44 = *(*(&v90 + 1) + 8 * j);
          v45 = [v44 localizedName];
          v46 = [v83 identifier];
          v47 = [v44 identifier];
          v48 = [v46 isEqualToString:v47];

          v49 = &stru_1F3D472A8;
          if (v48)
          {
            v50 = SBHBundle();
            if (v41)
            {
              [v50 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SORT_ASCENDING_SUBTITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
            }

            else
            {
              [v50 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SORT_DESCENDING_SUBTITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
            }
            v49 = ;
          }

          v51 = MEMORY[0x1E69DCAB8];
          v52 = [v44 symbolName];
          v53 = [v51 _systemImageNamed:v52];

          v54 = MEMORY[0x1E69DC628];
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_65;
          v87[3] = &unk_1E808F448;
          objc_copyWeak(&v88, &location);
          v87[4] = v44;
          v89 = v41;
          v55 = [v54 actionWithTitle:v45 image:v53 identifier:0 handler:v87];
          [v55 setState:v48];
          [v55 setSubtitle:v49];
          [v84 addObject:v55];

          objc_destroyWeak(&v88);
        }

        v42 = [v80 countByEnumeratingWithState:&v90 objects:v110 count:16];
      }

      while (v42);
    }

    if ([v84 count])
    {
      v56 = MEMORY[0x1E69DCC60];
      v57 = SBHBundle();
      v58 = [v57 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SORT_ORDER_SECTION_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v59 = [v56 menuWithTitle:v58 image:0 identifier:0 options:1 children:v84];

      [v79 addObject:v59];
    }

    if ([v86 count])
    {
      v60 = MEMORY[0x1E69DCC60];
      v61 = SBHBundle();
      v62 = [v61 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_DISPLAY_MODE_SECTION_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v63 = [v60 menuWithTitle:v62 image:0 identifier:0 options:1 children:v86];

      [v79 addObject:v63];
    }

    v64 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gearshape"];
    v65 = MEMORY[0x1E69DCC60];
    v66 = SBHBundle();
    v67 = [v66 localizedStringForKey:@"OPTIONS" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v68 = [v65 menuWithTitle:v67 image:v64 identifier:0 options:32 children:v76];

    [v79 addObject:v68];
    if ([v75 count])
    {
      v69 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3D472A8 image:0 identifier:0 options:1 children:v75];
      [v79 addObject:v69];
    }

    objc_destroyWeak(&v102);
    objc_destroyWeak(&v101);

    objc_destroyWeak(&v105);
    objc_destroyWeak(&v104);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v79 = 0;
  }

  return v79;
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained url];
    v4 = v3;
    if (v3)
    {
      [v3 startAccessingSecurityScopedResource];
      v5 = v4;
      FPExtendBookmarkForDocumentURL();
    }
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_cold_1(a1, a3, v5);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E6963608] defaultWorkspace];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *MEMORY[0x1E69635A0];
    v15[0] = *MEMORY[0x1E6963568];
    v15[1] = v9;
    v16[0] = a2;
    v16[1] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [v5 operationToOpenResource:v7 usingApplication:v8 uniqueDocumentIdentifier:0 userInfo:v10 delegate:0];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_20;
    v12[3] = &unk_1E80897D8;
    v14 = *(a1 + 48);
    v13 = *(a1 + 32);
    [v11 setCompletionBlock:v12];
    [v11 start];
  }
}

uint64_t __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_20(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [v5 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v4 requestDeleteFileStackIcon:v3];
      }
    }

    WeakRetained = v5;
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_3(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [WeakRetained url];
      v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];
      v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"reveal" value:@"true"];
      v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"showcontents" value:@"false"];
      [v5 setScheme:@"shareddocuments"];
      v14[0] = v6;
      v14[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
      [v5 setQueryItems:v8];

      v9 = [v5 URL];
      v10 = dispatch_get_global_queue(25, 0);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4;
      v12[3] = &unk_1E8088C90;
      v13 = v9;
      v11 = v9;
      dispatch_async(v10, v12);
    }
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *(a1 + 32);
  v6 = 0;
  [v2 openSensitiveURL:v3 withOptions:MEMORY[0x1E695E0F8] error:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = SBLogDockFileStack();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4_cold_1(v4, v5);
    }
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDisplayMode:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained sortOrder];
    v4 = [v3 identifier];
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      [v7 setCurrentSortOrderAscending:(*(a1 + 48) & 1) == 0];
    }

    else
    {
      [v7 setSortOrder:*(a1 + 32)];
    }

    WeakRetained = v7;
  }
}

- (SBHIconViewFileStackConfigurationContextMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[SBHIconViewFileStackConfigurationContextMenuProvider contextMenuSectionsForIconView:atLocation:]_block_invoke_2";
  v6 = 2114;
  v7 = v3;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "%s FPExtendBookmarkForDocumentURL: %{public}@, bookmarkError: %{public}@.", &v4, 0x20u);
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Failed to handle Show in Files, error: %{public}@", &v2, 0xCu);
}

@end