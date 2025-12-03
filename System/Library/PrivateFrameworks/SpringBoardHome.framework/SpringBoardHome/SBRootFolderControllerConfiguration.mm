@interface SBRootFolderControllerConfiguration
- (SBHRootFolderCustomViewPresenting)leadingCustomViewController;
- (SBHRootFolderCustomViewPresenting)trailingCustomViewController;
- (SBRootFolderControllerConfiguration)initWithConfiguration:(id)configuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)setLeadingCustomViewController:(id)controller;
- (void)setTrailingCustomViewController:(id)controller;
@end

@implementation SBRootFolderControllerConfiguration

- (SBRootFolderControllerConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = SBRootFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v27 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = configurationCopy;
      v5->_forSnapshot = [v8 isForSnapshot];
      v5->_dockExternal = [v8 isDockExternal];
      v5->_showsDoneButtonWhileEditing = [v8 showsDoneButtonWhileEditing];
      v5->_showsAddWidgetButtonWhileEditingAllowedOrientations = [v8 showsAddWidgetButtonWhileEditingAllowedOrientations];
      pullDownSearchViewController = [v8 pullDownSearchViewController];
      pullDownSearchViewController = v5->_pullDownSearchViewController;
      v5->_pullDownSearchViewController = pullDownSearchViewController;

      searchPresenter = [v8 searchPresenter];
      searchPresenter = v5->_searchPresenter;
      v5->_searchPresenter = searchPresenter;

      searchPresentableViewController = [v8 searchPresentableViewController];
      searchPresentableViewController = v5->_searchPresentableViewController;
      v5->_searchPresentableViewController = searchPresentableViewController;

      scrollAccessoryAuxiliaryView = [v8 scrollAccessoryAuxiliaryView];
      scrollAccessoryAuxiliaryView = v5->_scrollAccessoryAuxiliaryView;
      v5->_scrollAccessoryAuxiliaryView = scrollAccessoryAuxiliaryView;

      scrollAccessoryBackgroundView = [v8 scrollAccessoryBackgroundView];
      scrollAccessoryBackgroundView = v5->_scrollAccessoryBackgroundView;
      v5->_scrollAccessoryBackgroundView = scrollAccessoryBackgroundView;

      leadingCustomViewControllers = [v8 leadingCustomViewControllers];
      v20 = [leadingCustomViewControllers copy];
      leadingCustomViewControllers = v5->_leadingCustomViewControllers;
      v5->_leadingCustomViewControllers = v20;

      trailingCustomViewControllers = [v8 trailingCustomViewControllers];
      v23 = [trailingCustomViewControllers copy];
      trailingCustomViewControllers = v5->_trailingCustomViewControllers;
      v5->_trailingCustomViewControllers = v23;

      v5->_ignoresOverscrollOnFirstPageOrientations = [v8 ignoresOverscrollOnFirstPageOrientations];
      v5->_ignoresOverscrollOnLastPageOrientations = [v8 ignoresOverscrollOnLastPageOrientations];
      folderPageManagementAllowedOrientations = [v8 folderPageManagementAllowedOrientations];

      v5->_folderPageManagementAllowedOrientations = folderPageManagementAllowedOrientations;
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v27.receiver = self;
  v27.super_class = SBRootFolderControllerConfiguration;
  v4 = [(SBFolderControllerConfiguration *)&v27 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:-[SBRootFolderControllerConfiguration isForSnapshot](self withName:{"isForSnapshot"), @"isForSnapshot"}];
  v6 = [v4 appendBool:-[SBRootFolderControllerConfiguration isDockExternal](self withName:{"isDockExternal"), @"isDockExternal"}];
  v7 = [v4 appendBool:-[SBRootFolderControllerConfiguration showsDoneButtonWhileEditing](self withName:{"showsDoneButtonWhileEditing"), @"showsDoneButtonWhileEditing"}];
  v8 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration showsAddWidgetButtonWhileEditingAllowedOrientations](self withName:{"showsAddWidgetButtonWhileEditingAllowedOrientations"), @"showsAddWidgetButtonWhileEditingAllowedOrientations"}];
  pullDownSearchViewController = [(SBRootFolderControllerConfiguration *)self pullDownSearchViewController];
  v10 = [v4 appendObject:pullDownSearchViewController withName:@"pullDownSearchViewController"];

  searchPresenter = [(SBRootFolderControllerConfiguration *)self searchPresenter];
  v12 = [v4 appendObject:searchPresenter withName:@"searchPresenter"];

  searchPresentableViewController = [(SBRootFolderControllerConfiguration *)self searchPresentableViewController];
  v14 = [v4 appendObject:searchPresentableViewController withName:@"searchPresentableViewController"];

  scrollAccessoryAuxiliaryView = [(SBRootFolderControllerConfiguration *)self scrollAccessoryAuxiliaryView];
  v16 = [v4 appendObject:scrollAccessoryAuxiliaryView withName:@"scrollAccessoryAuxiliaryView"];

  scrollAccessoryBackgroundView = [(SBRootFolderControllerConfiguration *)self scrollAccessoryBackgroundView];
  v18 = [v4 appendObject:scrollAccessoryBackgroundView withName:@"scrollAccessoryBackgroundView"];

  leadingCustomViewControllers = [(SBRootFolderControllerConfiguration *)self leadingCustomViewControllers];
  v20 = [v4 appendObject:leadingCustomViewControllers withName:@"leadingCustomViewControllers"];

  trailingCustomViewControllers = [(SBRootFolderControllerConfiguration *)self trailingCustomViewControllers];
  v22 = [v4 appendObject:trailingCustomViewControllers withName:@"trailingCustomViewControllers"];

  v23 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration ignoresOverscrollOnFirstPageOrientations](self withName:"ignoresOverscrollOnFirstPageOrientations") format:{@"ignoresOverscrollOnFirstPageOrientations", 1}];
  v24 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration ignoresOverscrollOnLastPageOrientations](self withName:"ignoresOverscrollOnLastPageOrientations") format:{@"ignoresOverscrollOnLastPageOrientations", 1}];
  v25 = [v4 appendUnsignedInteger:-[SBRootFolderControllerConfiguration folderPageManagementAllowedOrientations](self withName:"folderPageManagementAllowedOrientations") format:{@"folderPageManagementAllowedOrientations", 1}];

  return v4;
}

- (SBHRootFolderCustomViewPresenting)leadingCustomViewController
{
  leadingCustomViewControllers = [(SBRootFolderControllerConfiguration *)self leadingCustomViewControllers];
  lastObject = [leadingCustomViewControllers lastObject];

  return lastObject;
}

- (void)setLeadingCustomViewController:(id)controller
{
  v7[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    v7[0] = controllerCopy;
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
  trailingCustomViewControllers = [(SBRootFolderControllerConfiguration *)self trailingCustomViewControllers];
  firstObject = [trailingCustomViewControllers firstObject];

  return firstObject;
}

- (void)setTrailingCustomViewController:(id)controller
{
  v7[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    v7[0] = controllerCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(SBRootFolderControllerConfiguration *)self setTrailingCustomViewControllers:v6];
  }

  else
  {
    [(SBRootFolderControllerConfiguration *)self setTrailingCustomViewControllers:0];
  }
}

@end