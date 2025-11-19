@interface SHSheetGroupActivitySharingController
- (BOOL)isPossibleToDirectlyCreateActivity;
- (SHSheetGroupActivitySharingController)initWithItemProvider:(id)a3;
- (SHSheetGroupActivitySharingControllerDelegate)delegate;
- (void)directlyCreateActivity;
- (void)prepareForShareSheetSessionWithCompletion:(id)a3;
- (void)setShareSheetSessionID:(id)a3;
- (void)viewDidLoad;
@end

@implementation SHSheetGroupActivitySharingController

- (SHSheetGroupActivitySharingController)initWithItemProvider:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SHSheetGroupActivitySharingController;
  v5 = [(SHSheetGroupActivitySharingController *)&v30 initWithNibName:0 bundle:0];
  if (v5)
  {
    if (_GroupActivities_UIKitLibrary_sOnce != -1)
    {
      [SHSheetGroupActivitySharingController initWithItemProvider:];
    }

    v6 = NSClassFromString(&cfstr_Groupactivitie.isa);
    if (v6)
    {
      v7 = v6;
      if ([(objc_class *)v6 instancesRespondToSelector:sel_initWithItemProvider_])
      {
        v8 = [[v7 alloc] initWithItemProvider:v4];
        groupActivitySharingController = v5->_groupActivitySharingController;
        v5->_groupActivitySharingController = v8;

        objc_initWeak(&location, v5);
        v10 = v5->_groupActivitySharingController;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __62__SHSheetGroupActivitySharingController_initWithItemProvider___block_invoke;
        v27[3] = &unk_1E71F94C8;
        objc_copyWeak(&v28, &location);
        [(GPGroupActivitySharingControllerHelpers *)v10 registerWithResultHandler:v27];
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
        goto LABEL_12;
      }

      v11 = share_sheet_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SHSheetGroupActivitySharingController *)v11 initWithItemProvider:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    else
    {
      v11 = share_sheet_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SHSheetGroupActivitySharingController *)v11 initWithItemProvider:v12, v13, v14, v15, v16, v17, v18];
      }
    }
  }

LABEL_12:

  return v5;
}

void __62__SHSheetGroupActivitySharingController_initWithItemProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 groupActivitySharingController:v5 didFinish:a2];
}

- (void)directlyCreateActivity
{
  v3 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v13 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
    [v13 directlyCreateActivity];
  }

  else
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetGroupActivitySharingController *)v5 directlyCreateActivity:v6];
    }
  }
}

- (BOOL)isPossibleToDirectlyCreateActivity
{
  v3 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v4 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 isPossibleToDirectlyCreateActivity];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)prepareForShareSheetSessionWithCompletion:(id)a3
{
  v4 = a3;
  v7 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v5 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    [v7 prepareForShareSheetSessionWithCompletion:v4];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)viewDidLoad
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = SHSheetGroupActivitySharingController;
  [(SHSheetGroupActivitySharingController *)&v32 viewDidLoad];
  groupActivitySharingController = self->_groupActivitySharingController;
  if (groupActivitySharingController)
  {
    [(GPGroupActivitySharingControllerHelpers *)groupActivitySharingController willMoveToParentViewController:self];
    [(SHSheetGroupActivitySharingController *)self addChildViewController:self->_groupActivitySharingController];
    v4 = [(SHSheetGroupActivitySharingController *)self view];
    v5 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    [v4 addSubview:v5];

    v21 = MEMORY[0x1E696ACD8];
    v31 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    v29 = [v31 leadingAnchor];
    v30 = [(SHSheetGroupActivitySharingController *)self view];
    v28 = [v30 safeAreaLayoutGuide];
    v27 = [v28 leadingAnchor];
    v26 = [v29 constraintEqualToAnchor:v27];
    v33[0] = v26;
    v25 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    v23 = [v25 trailingAnchor];
    v24 = [(SHSheetGroupActivitySharingController *)self view];
    v22 = [v24 safeAreaLayoutGuide];
    v20 = [v22 trailingAnchor];
    v19 = [v23 constraintEqualToAnchor:v20];
    v33[1] = v19;
    v18 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    v16 = [v18 topAnchor];
    v17 = [(SHSheetGroupActivitySharingController *)self view];
    v15 = [v17 safeAreaLayoutGuide];
    v14 = [v15 topAnchor];
    v6 = [v16 constraintEqualToAnchor:v14];
    v33[2] = v6;
    v7 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    v8 = [v7 bottomAnchor];
    v9 = [(SHSheetGroupActivitySharingController *)self view];
    v10 = [v9 safeAreaLayoutGuide];
    v11 = [v10 bottomAnchor];
    v12 = [v8 constraintEqualToAnchor:v11];
    v33[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v21 activateConstraints:v13];

    [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController didMoveToParentViewController:self];
  }
}

- (void)setShareSheetSessionID:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_shareSheetSessionID isEqualToString:?])
  {
    objc_storeStrong(&self->_shareSheetSessionID, a3);
    [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController setShareSheetSessionID:v5];
  }
}

- (SHSheetGroupActivitySharingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end