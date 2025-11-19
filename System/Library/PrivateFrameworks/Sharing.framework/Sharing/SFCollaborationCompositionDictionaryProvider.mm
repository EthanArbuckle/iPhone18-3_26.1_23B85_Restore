@interface SFCollaborationCompositionDictionaryProvider
- (SFCollaborationCompositionDictionaryProvider)initWithItemProvider:(id)a3 delegate:(id)a4;
- (id)collaborationItemsProvider:(id)a3 resolveActivityItem:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4;
@end

@implementation SFCollaborationCompositionDictionaryProvider

- (SFCollaborationCompositionDictionaryProvider)initWithItemProvider:(id)a3 delegate:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SFCollaborationCompositionDictionaryProvider;
  v8 = [(SFCollaborationCompositionDictionaryProvider *)&v23 init];
  if (v8)
  {
    v9 = [SFCollaborationItemsProvider alloc];
    v24[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v11 = [(SFCollaborationItemsProvider *)v9 initWithActivityItems:v10 delegate:v8];
    collaborationItemsProvider = v8->_collaborationItemsProvider;
    v8->_collaborationItemsProvider = v11;

    v13 = objc_alloc_init(DummySFCollaborationService);
    collaborationService = v8->_collaborationService;
    v8->_collaborationService = v13;

    objc_storeStrong(&v8->_delegate, a4);
    v15 = [(SFCollaborationCompositionDictionaryProvider *)v8 collaborationItemsProvider];
    v16 = [v15 collaborationItems];
    v17 = [v16 firstObject];

    if (v17)
    {
      v18 = [(SFCollaborationCompositionDictionaryProvider *)v8 collaborationItemsProvider];
      v19 = [v18 collaborationItems];
      v20 = [v19 firstObject];
      [v20 registerChangeObserver:v8];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)collaborationItemsProvider:(id)a3 resolveActivityItem:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a4;
  v6 = [v4 arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4
{
  v4 = a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((v4 & 4) != 0)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__15;
    v27 = __Block_byref_object_dispose__15;
    v28 = [SFCollaborationUtilities baseCollaborationDictionaryFromCollaborationItem:v6];
    if ([v6 type] == 1)
    {
      objc_initWeak(&location, self);
      v7 = [v6 itemProvider];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __69__SFCollaborationCompositionDictionaryProvider_observable_didChange___block_invoke;
      v20[3] = &unk_1E78901B8;
      objc_copyWeak(&v21, &location);
      v20[4] = &v23;
      [SFCollaborationUtilities loadCKShareItemProvider:v7 completionHandler:v20];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    else if ([v6 type] == 2)
    {
      v8 = [v6 pendingCollaboration];
      [v24[5] setObject:v8 forKeyedSubscript:@"SFPendingCollaborationKey"];

      v9 = [(SFCollaborationCompositionDictionaryProvider *)self delegate];
      [v9 dictionaryDidBecomeAvailable:v24[5] forProvider:self];
    }

    else if (![v6 type] && objc_msgSend(v6, "conformsToProtocol:", &unk_1F1D8B9D0))
    {
      v10 = [v6 fileURL];
      v29[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v12 = [SFCollaborationUtilities fileShareDictionaryFromFileURLItems:v11];
      [v24[5] setObject:v12 forKeyedSubscript:@"fileObjects"];

      v13 = [v6 fileURL];
      v14 = v13;
      [v13 fileSystemRepresentation];
      v15 = *MEMORY[0x1E69E9BB0];
      v16 = sandbox_extension_issue_file();

      if (v16)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        [v24[5] setObject:v17 forKeyedSubscript:@"token"];
      }

      v18 = [(SFCollaborationCompositionDictionaryProvider *)self delegate];
      [v18 dictionaryDidBecomeAvailable:v24[5] forProvider:self];
    }

    _Block_object_dispose(&v23, 8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __69__SFCollaborationCompositionDictionaryProvider_observable_didChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [SFCollaborationUtilities ckShareDictionaryFromCKShare:v6 setupInfo:v5];

  [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:@"CKShare"];
  v8 = [WeakRetained delegate];
  [v8 dictionaryDidBecomeAvailable:*(*(*(a1 + 32) + 8) + 40) forProvider:WeakRetained];
}

@end