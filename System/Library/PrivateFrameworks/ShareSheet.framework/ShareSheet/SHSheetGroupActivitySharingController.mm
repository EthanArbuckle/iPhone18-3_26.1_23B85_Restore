@interface SHSheetGroupActivitySharingController
- (BOOL)isPossibleToDirectlyCreateActivity;
- (SHSheetGroupActivitySharingController)initWithItemProvider:(id)provider;
- (SHSheetGroupActivitySharingControllerDelegate)delegate;
- (void)directlyCreateActivity;
- (void)prepareForShareSheetSessionWithCompletion:(id)completion;
- (void)setShareSheetSessionID:(id)d;
- (void)viewDidLoad;
@end

@implementation SHSheetGroupActivitySharingController

- (SHSheetGroupActivitySharingController)initWithItemProvider:(id)provider
{
  providerCopy = provider;
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
        v8 = [[v7 alloc] initWithItemProvider:providerCopy];
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
  groupActivitySharingController = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    groupActivitySharingController2 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
    [groupActivitySharingController2 directlyCreateActivity];
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
  groupActivitySharingController = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  groupActivitySharingController2 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    isPossibleToDirectlyCreateActivity = [groupActivitySharingController isPossibleToDirectlyCreateActivity];
  }

  else
  {
    isPossibleToDirectlyCreateActivity = 0;
  }

  return isPossibleToDirectlyCreateActivity;
}

- (void)prepareForShareSheetSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  groupActivitySharingController = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  groupActivitySharingController2 = [(SHSheetGroupActivitySharingController *)self groupActivitySharingController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    [groupActivitySharingController prepareForShareSheetSessionWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy);
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
    view = [(SHSheetGroupActivitySharingController *)self view];
    view2 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    [view addSubview:view2];

    v21 = MEMORY[0x1E696ACD8];
    view3 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    leadingAnchor = [view3 leadingAnchor];
    view4 = [(SHSheetGroupActivitySharingController *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v26;
    view5 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    trailingAnchor = [view5 trailingAnchor];
    view6 = [(SHSheetGroupActivitySharingController *)self view];
    safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[1] = v19;
    view7 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    topAnchor = [view7 topAnchor];
    view8 = [(SHSheetGroupActivitySharingController *)self view];
    safeAreaLayoutGuide3 = [view8 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
    v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[2] = v6;
    view9 = [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController view];
    bottomAnchor = [view9 bottomAnchor];
    view10 = [(SHSheetGroupActivitySharingController *)self view];
    safeAreaLayoutGuide4 = [view10 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v21 activateConstraints:v13];

    [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController didMoveToParentViewController:self];
  }
}

- (void)setShareSheetSessionID:(id)d
{
  dCopy = d;
  if (![(NSString *)self->_shareSheetSessionID isEqualToString:?])
  {
    objc_storeStrong(&self->_shareSheetSessionID, d);
    [(GPGroupActivitySharingControllerHelpers *)self->_groupActivitySharingController setShareSheetSessionID:dCopy];
  }
}

- (SHSheetGroupActivitySharingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end