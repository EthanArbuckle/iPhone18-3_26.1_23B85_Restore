@interface PXUIPeopleBootstrapFlowController
- (PHPerson)sourcePerson;
- (PXPeopleBootstrapConfirmationViewController)confirmationViewController;
- (PXPeopleBootstrapSummaryViewController)summaryViewController;
- (id)_postNamingViewControllers;
- (void)computeViewControllersForBootstrapFlow;
- (void)done:(id)done;
- (void)recomputeViewControllersForChangeInKeyPath:(id)path;
@end

@implementation PXUIPeopleBootstrapFlowController

- (id)_postNamingViewControllers
{
  v10[1] = *MEMORY[0x1E69E9840];
  sourcePerson = [(PXUIPeopleBootstrapFlowController *)self sourcePerson];
  v4 = [(PXPeopleBootstrapFlowController *)self shouldPresentConfirmationForPerson:sourcePerson];

  if (v4)
  {
    confirmationViewController = [(PXUIPeopleBootstrapFlowController *)self confirmationViewController];
    v10[0] = confirmationViewController;
    v6 = v10;
LABEL_5:
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  if ([(PXPeopleBootstrapFlowController *)self shouldPresentNaming])
  {
    confirmationViewController = [(PXUIPeopleBootstrapFlowController *)self summaryViewController];
    v9 = confirmationViewController;
    v6 = &v9;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (PXPeopleBootstrapSummaryViewController)summaryViewController
{
  v3 = self->_summaryViewController;
  if (!v3)
  {
    context = [(PXPeopleBootstrapFlowController *)self context];
    v3 = [[PXPeopleBootstrapSummaryViewController alloc] initWithContext:context];
    [(PXUIPeopleBootstrapFlowController *)self setSummaryViewController:v3];
  }

  return v3;
}

- (PXPeopleBootstrapConfirmationViewController)confirmationViewController
{
  v3 = self->_confirmationViewController;
  if (!v3)
  {
    context = [(PXPeopleBootstrapFlowController *)self context];
    prefetchedDataSource = [context prefetchedDataSource];
    v6 = prefetchedDataSource;
    if (prefetchedDataSource)
    {
      v7 = prefetchedDataSource;
    }

    else
    {
      v7 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
    }

    v8 = v7;

    [(PXPeopleSuggestionDataSource *)v8 setInitialPageLimit:9];
    [(PXPeopleSuggestionDataSource *)v8 setSuggestionFetchType:0];
    v3 = [[PXPeopleBootstrapConfirmationViewController alloc] initWithContext:context dataSource:v8];
    [(PXUIPeopleBootstrapFlowController *)self setConfirmationViewController:v3];
  }

  return v3;
}

- (PHPerson)sourcePerson
{
  context = [(PXPeopleBootstrapFlowController *)self context];
  sourcePerson = [context sourcePerson];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sourcePerson;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)done:(id)done
{
  doneCopy = done;
  sourcePerson = [(PXUIPeopleBootstrapFlowController *)self sourcePerson];
  context = [(PXPeopleBootstrapFlowController *)self context];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __42__PXUIPeopleBootstrapFlowController_done___block_invoke;
  v14 = &unk_1E774B730;
  v7 = doneCopy;
  v15 = v7;
  selfCopy = self;
  [PXPeopleBootstrap performBootstrapWithSourcePerson:sourcePerson context:context synchronous:0 completion:&v11];
  if ([(PXPeopleBootstrapFlowController *)self shouldPresentNaming:v11])
  {
    nameSelection = [context nameSelection];
    if (nameSelection)
    {
    }

    else
    {
      px_localizedName = [sourcePerson px_localizedName];
      v10 = [px_localizedName length];

      if (!v10)
      {
        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.naming.skipped" withPayload:MEMORY[0x1E695E0F8]];
      }
    }
  }
}

void __42__PXUIPeopleBootstrapFlowController_done___block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v8.receiver = *(a1 + 40);
  v8.super_class = PXUIPeopleBootstrapFlowController;
  objc_msgSendSuper2(&v8, sel_done_, v4);
  if (a2)
  {
    v5 = *(a1 + 32);
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 undoManager];

    [v7 removeAllActions];
  }
}

- (void)recomputeViewControllersForChangeInKeyPath:(id)path
{
  pathCopy = path;
  viewControllerIndex = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  v6 = [pathCopy isEqualToString:@"nameSelection"];

  if (v6 && !viewControllerIndex)
  {
    viewControllers = [(PXPeopleBootstrapFlowController *)self viewControllers];
    v7 = [viewControllers subarrayWithRange:{0, 1}];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v7];
    _postNamingViewControllers = [(PXUIPeopleBootstrapFlowController *)self _postNamingViewControllers];
    if ([_postNamingViewControllers count])
    {
      [v8 addObjectsFromArray:_postNamingViewControllers];
    }

    v10 = [v8 copy];
    [(PXPeopleBootstrapFlowController *)self setViewControllers:v10];
  }
}

- (void)computeViewControllersForBootstrapFlow
{
  context = [(PXPeopleBootstrapFlowController *)self context];
  shouldPresentNaming = [(PXPeopleBootstrapFlowController *)self shouldPresentNaming];
  shouldPresentPostNaming = [(PXPeopleBootstrapFlowController *)self shouldPresentPostNaming];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (shouldPresentNaming)
  {
    v6 = [[PXUIPeopleBootstrapNamingViewController alloc] initWithContext:context];
    [v5 addObject:v6];
  }

  if (shouldPresentPostNaming)
  {
    _postNamingViewControllers = [(PXUIPeopleBootstrapFlowController *)self _postNamingViewControllers];
    if ([_postNamingViewControllers count])
    {
      [v5 addObjectsFromArray:_postNamingViewControllers];
    }
  }

  v8 = [v5 copy];
  [(PXPeopleBootstrapFlowController *)self setViewControllers:v8];
}

@end