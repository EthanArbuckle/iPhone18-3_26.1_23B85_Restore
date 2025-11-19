@interface SBRootFolderControllerConfiguration
- (SBHRootFolderCustomViewPresenting)leadingCustomViewController;
- (SBHRootFolderCustomViewPresenting)trailingCustomViewController;
- (SBRootFolderControllerConfiguration)initWithConfiguration:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)setLeadingCustomViewController:(id)a3;
- (void)setTrailingCustomViewController:(id)a3;
@end

@implementation SBRootFolderControllerConfiguration

- (SBRootFolderControllerConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SBRootFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v27 initWithConfiguration:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = v4;
      v5->_forSnapshot = [v8 isForSnapshot];
      v5->_dockExternal = [v8 isDockExternal];
      v5->_showsDoneButtonWhileEditing = [v8 showsDoneButtonWhileEditing];
      v5->_showsAddWidgetButtonWhileEditingAllowedOrientations = [v8 showsAddWidgetButtonWhileEditingAllowedOrientations];
      v9 = [v8 pullDownSearchViewController];
      pullDownSearchViewController = v5->_pullDownSearchViewController;
      v5->_pullDownSearchViewController = v9;

      v11 = [v8 searchPresenter];
      searchPresenter = v5->_searchPresenter;
      v5->_searchPresenter = v11;

      v13 = [v8 searchPresentableViewController];
      searchPresentableViewController = v5->_searchPresentableViewController;
      v5->_searchPresentableViewController = v13;

      v15 = [v8 scrollAccessoryAuxiliaryView];
      scrollAccessoryAuxiliaryView = v5->_scrollAccessoryAuxiliaryView;
      v5->_scrollAccessoryAuxiliaryView = v15;

      v17 = [v8 scrollAccessoryBackgroundView];
      scrollAccessoryBackgroundView = v5->_scrollAccessoryBackgroundView;
      v5->_scrollAccessoryBackgroundView = v17;

      v19 = [v8 leadingCustomViewControllers];
      v20 = [v19 copy];
      leadingCustomViewControllers = v5->_leadingCustomViewControllers;
      v5->_leadingCustomViewControllers = v20;

      v22 = [v8 trailingCustomViewControllers];
      v23 = [v22 copy];
      trailingCustomViewControllers = v5->_trailingCustomViewControllers;
      v5->_trailingCustomViewControllers = v23;

      v5->_ignoresOverscrollOnFirstPageOrientations = [v8 ignoresOverscrollOnFirstPageOrientations];
      v5->_ignoresOverscrollOnLastPageOrientations = [v8 ignoresOverscrollOnLastPageOrientations];
      v25 = [v8 folderPageManagementAllowedOrientations];

      v5->_folderPageManagementAllowedOrientations = v25;
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v27.receiver = self;
  v27.super_class = SBRootFolderControllerConfiguration;
  v4 = [(SBFolderControllerConfiguration *)&v27 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:-[SBRootFolderControllerConfiguration isForSnapshot](self withName:{"isForSnapshot"), @"isForSnapshot"}];
  v6 = [v4 appendBool:-[SBRootFolderControllerConfiguration isDockExternal](self withName:{"isDockExternal"), @"isDockExternal"}];
  v7 = [v4 appendBool:-[SBRootFolderControllerConfiguration showsDoneButtonWhileEditing](self withName:{"showsDoneButtonWhileEditing"), @"showsDoneButtonWhileEditing"}];
  v8 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration showsAddWidgetButtonWhileEditingAllowedOrientations](self withName:{"showsAddWidgetButtonWhileEditingAllowedOrientations"), @"showsAddWidgetButtonWhileEditingAllowedOrientations"}];
  v9 = [(SBRootFolderControllerConfiguration *)self pullDownSearchViewController];
  v10 = [v4 appendObject:v9 withName:@"pullDownSearchViewController"];

  v11 = [(SBRootFolderControllerConfiguration *)self searchPresenter];
  v12 = [v4 appendObject:v11 withName:@"searchPresenter"];

  v13 = [(SBRootFolderControllerConfiguration *)self searchPresentableViewController];
  v14 = [v4 appendObject:v13 withName:@"searchPresentableViewController"];

  v15 = [(SBRootFolderControllerConfiguration *)self scrollAccessoryAuxiliaryView];
  v16 = [v4 appendObject:v15 withName:@"scrollAccessoryAuxiliaryView"];

  v17 = [(SBRootFolderControllerConfiguration *)self scrollAccessoryBackgroundView];
  v18 = [v4 appendObject:v17 withName:@"scrollAccessoryBackgroundView"];

  v19 = [(SBRootFolderControllerConfiguration *)self leadingCustomViewControllers];
  v20 = [v4 appendObject:v19 withName:@"leadingCustomViewControllers"];

  v21 = [(SBRootFolderControllerConfiguration *)self trailingCustomViewControllers];
  v22 = [v4 appendObject:v21 withName:@"trailingCustomViewControllers"];

  v23 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration ignoresOverscrollOnFirstPageOrientations](self withName:"ignoresOverscrollOnFirstPageOrientations") format:{@"ignoresOverscrollOnFirstPageOrientations", 1}];
  v24 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration ignoresOverscrollOnLastPageOrientations](self withName:"ignoresOverscrollOnLastPageOrientations") format:{@"ignoresOverscrollOnLastPageOrientations", 1}];
  v25 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration folderPageManagementAllowedOrientations](self withName:"folderPageManagementAllowedOrientations") format:{@"folderPageManagementAllowedOrientations", 1}];

  return v4;
}

- (SBHRootFolderCustomViewPresenting)leadingCustomViewController
{
  v2 = [(SBRootFolderControllerConfiguration *)self leadingCustomViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (void)setLeadingCustomViewController:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(SBRootFolderControllerConfiguration *)self setLeadingCustomViewControllers:v6];
  }

  else
  {
    [(SBRootFolderControllerConfiguration *)self setLeadingCustomViewControllers:0];
  }
}

- (SBHRootFolderCustomViewPresenting)trailingCustomViewController
{
  v2 = [(SBRootFolderControllerConfiguration *)self trailingCustomViewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setTrailingCustomViewController:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(SBRootFolderControllerConfiguration *)self setTrailingCustomViewControllers:v6];
  }

  else
  {
    [(SBRootFolderControllerConfiguration *)self setTrailingCustomViewControllers:0];
  }
}

@end