@interface UICollaborationCopyLinkActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithCollaborationItem:(id)a3 activityItems:(id)a4;
- (SFCollaborationService)collaborationService;
- (id)activityTitle;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
@end

@implementation UICollaborationCopyLinkActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"CopyLink[Activity]" value:@"Copy Link" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithCollaborationItem:(id)a3 activityItems:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 type];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = MEMORY[0x1E69CDE78];
      v8 = [v5 itemProvider];
      v9 = [v7 isPostCKShareItemProvider:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [v5 isShared];
  }

  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "no";
    v13 = 138412802;
    v14 = self;
    if (v9)
    {
      v11 = "yes";
    }

    v15 = 2080;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "%@: canPerform:%s collaborationItem:%@", &v13, 0x20u);
  }

  return v9;
}

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69CDE78];
  v7 = [(UICollaborationCopyLinkActivity *)self collaborationItem];
  v8 = [(UICollaborationCopyLinkActivity *)self collaborationService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__UICollaborationCopyLinkActivity__prepareWithActivityItems_completion___block_invoke;
  v10[3] = &unk_1E71F9D20;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [v6 requestSharedURLForCollaborationItem:v7 collaborationService:v8 completionHandler:v10];
}

void __72__UICollaborationCopyLinkActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__UICollaborationCopyLinkActivity__prepareWithActivityItems_completion___block_invoke_2;
  v11[3] = &unk_1E71F9A20;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __72__UICollaborationCopyLinkActivity__prepareWithActivityItems_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = share_sheet_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Copying Link %@", buf, 0xCu);
    }

    v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v8 = *(a1 + 32);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [v4 setObjects:v6];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__UICollaborationCopyLinkActivity__prepareWithActivityItems_completion___block_invoke_2_cold_1(a1, v4);
  }

  return (*(*(a1 + 56) + 16))();
}

- (SFCollaborationService)collaborationService
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationService);

  return WeakRetained;
}

void __72__UICollaborationCopyLinkActivity__prepareWithActivityItems_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 40) collaborationItem];
  v5 = *(a1 + 48);
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Copy Link failed: Couldn't retrieve shareURL for item:%@ %@", &v6, 0x16u);
}

@end