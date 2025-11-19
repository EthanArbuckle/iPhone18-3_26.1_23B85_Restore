@interface UIRemoteDictionaryViewController
@end

@implementation UIRemoteDictionaryViewController

void __48___UIRemoteDictionaryViewController_viewDidLoad__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48___UIRemoteDictionaryViewController_viewDidLoad__block_invoke_2;
  v2[3] = &unk_1E70F35E0;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __48___UIRemoteDictionaryViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  [UIApp _endShowingNetworkActivityIndicator];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(*(a1 + 32) + 1048) _allAvailableDefinitionDictionaries];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1040);
    *(v3 + 1040) = v2;

    v5 = [*(a1 + 32) tableView];
    [v5 reloadData];
  }
}

void __59___UIRemoteDictionaryViewController__handleDownloadButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rawAsset];
  [v2 refreshState];

  v3 = [*(a1 + 40) tableView];
  [v3 reloadData];
}

void __65___UIRemoteDictionaryViewController__startDownloadForDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___UIRemoteDictionaryViewController__startDownloadForDictionary___block_invoke_2;
  block[3] = &unk_1E70F4378;
  v11 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v10 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65___UIRemoteDictionaryViewController__startDownloadForDictionary___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    NSLog(&cfstr_Uiremotedictio.isa, *(a1 + 40), v2);
LABEL_7:
    [*(*(a1 + 48) + 1056) removeObjectForKey:*(a1 + 56)];
    v6 = [*(a1 + 48) tableView];
    [v6 reloadData];

    return;
  }

  [*(a1 + 32) refreshState];
  [*(a1 + 40) updateAsset];
  [*(a1 + 40) setActivated:1];
  v3 = [*(a1 + 32) attributes];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getDCSDictionaryAssetAttributesDownloadedSymbolLoc_ptr;
  v12 = getDCSDictionaryAssetAttributesDownloadedSymbolLoc_ptr;
  if (!getDCSDictionaryAssetAttributesDownloadedSymbolLoc_ptr)
  {
    v5 = DictionaryServicesLibrary();
    v10[3] = dlsym(v5, "DCSDictionaryAssetAttributesDownloaded");
    getDCSDictionaryAssetAttributesDownloadedSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v4)
  {
    v4(v3);

    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _DCSDictionaryAssetAttributesDownloaded(CFDictionaryRef)"];
  [v7 handleFailureInFunction:v8 file:@"UIReferenceLibraryViewController.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

void __69___UIRemoteDictionaryViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rawAsset];
  [v2 refreshState];

  v3 = [*(a1 + 40) tableView];
  [v3 reloadData];
}

void __69___UIRemoteDictionaryViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 totalWritten];
  v5 = (v4 / [v3 totalExpected]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69___UIRemoteDictionaryViewController_tableView_cellForRowAtIndexPath___block_invoke_3;
  block[3] = &unk_1E70F36D0;
  v6 = *(a1 + 32);
  v11 = v5;
  v9 = v6;
  v10 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69___UIRemoteDictionaryViewController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setProgress:1 animated:*(a1 + 48)];
  result = [*(a1 + 40) isStalled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setIndeterminate:1];
  }

  return result;
}

void __84___UIRemoteDictionaryViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) rawAsset];
  v3 = [v2 attributes];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getDCSDictionaryAssetAttributesWillBePurgedSymbolLoc_ptr;
  v16 = getDCSDictionaryAssetAttributesWillBePurgedSymbolLoc_ptr;
  if (!getDCSDictionaryAssetAttributesWillBePurgedSymbolLoc_ptr)
  {
    v5 = DictionaryServicesLibrary();
    v14[3] = dlsym(v5, "DCSDictionaryAssetAttributesWillBePurged");
    getDCSDictionaryAssetAttributesWillBePurgedSymbolLoc_ptr = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _DCSDictionaryAssetAttributesWillBePurged(CFDictionaryRef)"];
    [v11 handleFailureInFunction:v12 file:@"UIReferenceLibraryViewController.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v4(v3);

  v6 = [*(a1 + 32) rawAsset];
  v7 = [v6 purgeSync] == 0;

  if (v7)
  {
    v8 = [*(a1 + 32) rawAsset];
    [v8 refreshState];

    v9 = *(a1 + 40);
    v17[0] = *(a1 + 48);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v9 reloadRowsAtIndexPaths:v10 withRowAnimation:100];
  }
}

@end