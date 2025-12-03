@interface SFCollaborationCompositionDictionaryProvider
- (SFCollaborationCompositionDictionaryProvider)initWithItemProvider:(id)provider delegate:(id)delegate;
- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item;
- (void)observable:(id)observable didChange:(unint64_t)change;
@end

@implementation SFCollaborationCompositionDictionaryProvider

- (SFCollaborationCompositionDictionaryProvider)initWithItemProvider:(id)provider delegate:(id)delegate
{
  v24[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = SFCollaborationCompositionDictionaryProvider;
  v8 = [(SFCollaborationCompositionDictionaryProvider *)&v23 init];
  if (v8)
  {
    v9 = [SFCollaborationItemsProvider alloc];
    v24[0] = providerCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v11 = [(SFCollaborationItemsProvider *)v9 initWithActivityItems:v10 delegate:v8];
    collaborationItemsProvider = v8->_collaborationItemsProvider;
    v8->_collaborationItemsProvider = v11;

    v13 = objc_alloc_init(DummySFCollaborationService);
    collaborationService = v8->_collaborationService;
    v8->_collaborationService = v13;

    objc_storeStrong(&v8->_delegate, delegate);
    collaborationItemsProvider = [(SFCollaborationCompositionDictionaryProvider *)v8 collaborationItemsProvider];
    collaborationItems = [collaborationItemsProvider collaborationItems];
    firstObject = [collaborationItems firstObject];

    if (firstObject)
    {
      collaborationItemsProvider2 = [(SFCollaborationCompositionDictionaryProvider *)v8 collaborationItemsProvider];
      collaborationItems2 = [collaborationItemsProvider2 collaborationItems];
      firstObject2 = [collaborationItems2 firstObject];
      [firstObject2 registerChangeObserver:v8];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = item;
  v4 = MEMORY[0x1E695DEC8];
  itemCopy = item;
  v6 = [v4 arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)observable:(id)observable didChange:(unint64_t)change
{
  changeCopy = change;
  v29[1] = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if ((changeCopy & 4) != 0)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__15;
    v27 = __Block_byref_object_dispose__15;
    v28 = [SFCollaborationUtilities baseCollaborationDictionaryFromCollaborationItem:observableCopy];
    if ([observableCopy type] == 1)
    {
      objc_initWeak(&location, self);
      itemProvider = [observableCopy itemProvider];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __69__SFCollaborationCompositionDictionaryProvider_observable_didChange___block_invoke;
      v20[3] = &unk_1E78901B8;
      objc_copyWeak(&v21, &location);
      v20[4] = &v23;
      [SFCollaborationUtilities loadCKShareItemProvider:itemProvider completionHandler:v20];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    else if ([observableCopy type] == 2)
    {
      pendingCollaboration = [observableCopy pendingCollaboration];
      [v24[5] setObject:pendingCollaboration forKeyedSubscript:@"SFPendingCollaborationKey"];

      delegate = [(SFCollaborationCompositionDictionaryProvider *)self delegate];
      [delegate dictionaryDidBecomeAvailable:v24[5] forProvider:self];
    }

    else if (![observableCopy type] && objc_msgSend(observableCopy, "conformsToProtocol:", &unk_1F1D8B9D0))
    {
      fileURL = [observableCopy fileURL];
      v29[0] = fileURL;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v12 = [SFCollaborationUtilities fileShareDictionaryFromFileURLItems:v11];
      [v24[5] setObject:v12 forKeyedSubscript:@"fileObjects"];

      fileURL2 = [observableCopy fileURL];
      v14 = fileURL2;
      [fileURL2 fileSystemRepresentation];
      v15 = *MEMORY[0x1E69E9BB0];
      v16 = sandbox_extension_issue_file();

      if (v16)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        [v24[5] setObject:v17 forKeyedSubscript:@"token"];
      }

      delegate2 = [(SFCollaborationCompositionDictionaryProvider *)self delegate];
      [delegate2 dictionaryDidBecomeAvailable:v24[5] forProvider:self];
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