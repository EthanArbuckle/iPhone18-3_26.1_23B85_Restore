@interface SBHRecentDocumentsContextMenuProvider
- (BOOL)canProvideContextMenuSectionsForBundleIdentifier:(id)a3;
- (BOOL)canProvideContextMenuSectionsForIconView:(id)a3;
- (SBHRecentDocumentsContextMenuProvider)init;
- (SBHRecentDocumentsContextMenuProvider)initWithUniqueIdentifier:(id)a3;
- (SBHRecentDocumentsContextMenuProviderDelegate)delegate;
- (id)applicationBundleIDForIconView:(id)a3;
- (id)contextMenuSectionsForBundleIdentifier:(id)a3;
- (id)contextMenuSectionsForIconView:(id)a3 atLocation:(CGPoint)a4;
- (void)dealloc;
@end

@implementation SBHRecentDocumentsContextMenuProvider

- (SBHRecentDocumentsContextMenuProvider)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [(SBHRecentDocumentsContextMenuProvider *)self initWithUniqueIdentifier:v3];

  return v4;
}

- (SBHRecentDocumentsContextMenuProvider)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBHRecentDocumentsContextMenuProvider;
  v5 = [(SBHRecentDocumentsContextMenuProvider *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [MEMORY[0x1E699A428] sharedList];
    sharedRecentItemsList = v5->_sharedRecentItemsList;
    v5->_sharedRecentItemsList = v8;

    [(DOCSBRecentItemsList *)v5->_sharedRecentItemsList startObserving];
  }

  return v5;
}

- (void)dealloc
{
  [(DOCSBRecentItemsList *)self->_sharedRecentItemsList stopObserving];
  v3.receiver = self;
  v3.super_class = SBHRecentDocumentsContextMenuProvider;
  [(SBHRecentDocumentsContextMenuProvider *)&v3 dealloc];
}

- (id)contextMenuSectionsForIconView:(id)a3 atLocation:(CGPoint)a4
{
  v5 = a3;
  if ([(SBHRecentDocumentsContextMenuProvider *)self canProvideContextMenuSectionsForIconView:v5])
  {
    v6 = [(SBHRecentDocumentsContextMenuProvider *)self applicationBundleIDForIconView:v5];
    if (v6)
    {
      v7 = [(SBHRecentDocumentsContextMenuProvider *)self contextMenuSectionsForBundleIdentifier:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextMenuSectionsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([(SBHRecentDocumentsContextMenuProvider *)self canProvideContextMenuSectionsForBundleIdentifier:v4])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(SBHRecentDocumentsContextMenuProvider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 maxNumberOfRecentDocumentsForRecentsDocumentContextMenuProvider:self];
    }

    else
    {
      v7 = 10;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(SBHRecentDocumentsContextMenuProvider *)self sharedRecentItemsList];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke;
    v14[3] = &unk_1E808AB40;
    v16 = &v24;
    v15 = v4;
    v17 = &v18;
    [v8 recentsForBundleIdentifier:v15 maxCount:v7 completion:v14];

    if (v25[3])
    {
      v9 = MEMORY[0x1E69DCC60];
      v10 = SBHBundle();
      v11 = [v10 localizedStringForKey:@"RECENT_DOCUMENT_CONTEXT_MENU_SECTION_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v12 = [v9 menuWithTitle:v11 image:0 identifier:0 options:1 children:v19[5]];

      [v5 addObject:v12];
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 count];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = MEMORY[0x1E69DC628];
        v11 = [v9 name];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_2;
        v14[3] = &unk_1E808AB18;
        v14[4] = v9;
        v15 = *(a1 + 32);
        v12 = [v10 actionWithTitle:v11 image:v4 identifier:0 handler:v14];

        [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_3;
  v2[3] = &unk_1E808AAF0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 fetchURL:v2];
}

void __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 startAccessingSecurityScopedResource];
  v5 = v3;
  v6 = *(a1 + 32);
  v4 = v3;
  FPExtendBookmarkForDocumentURL();
}

void __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_4_cold_1(a1, a3, v5);
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
    v12[2] = __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_11;
    v12[3] = &unk_1E80897D8;
    v14 = *(a1 + 48);
    v13 = *(a1 + 32);
    [v11 setCompletionBlock:v12];
    [v11 start];
  }
}

uint64_t __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_11(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

- (BOOL)canProvideContextMenuSectionsForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  if ([v5 isLeafIcon] && (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = [(SBHRecentDocumentsContextMenuProvider *)self applicationBundleIDForIconView:v4];
    v9 = [(SBHRecentDocumentsContextMenuProvider *)self canProvideContextMenuSectionsForBundleIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)canProvideContextMenuSectionsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && [MEMORY[0x1E699A428] applicationWithBundleIdentifierSupportsRecents:v4])
  {
    v5 = [(SBHRecentDocumentsContextMenuProvider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 recentDocumentsContextMenuProvider:self canProvideContextMenuSectionsForBundleIdentifier:v4];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)applicationBundleIDForIconView:(id)a3
{
  v3 = [a3 icon];
  if ([v3 isLeafIcon])
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    v7 = [v8 applicationBundleID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SBHRecentDocumentsContextMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __80__SBHRecentDocumentsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[SBHRecentDocumentsContextMenuProvider contextMenuSectionsForBundleIdentifier:]_block_invoke_4";
  v6 = 2114;
  v7 = v3;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "%s FPExtendBookmarkForDocumentURL: %{public}@, bookmarkError: %{public}@.", &v4, 0x20u);
}

@end