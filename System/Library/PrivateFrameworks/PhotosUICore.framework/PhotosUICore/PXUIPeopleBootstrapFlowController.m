@interface PXUIPeopleBootstrapFlowController
- (PHPerson)sourcePerson;
- (PXPeopleBootstrapConfirmationViewController)confirmationViewController;
- (PXPeopleBootstrapSummaryViewController)summaryViewController;
- (id)_postNamingViewControllers;
- (void)computeViewControllersForBootstrapFlow;
- (void)done:(id)a3;
- (void)recomputeViewControllersForChangeInKeyPath:(id)a3;
@end

@implementation PXUIPeopleBootstrapFlowController

- (id)_postNamingViewControllers
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXUIPeopleBootstrapFlowController *)self sourcePerson];
  v4 = [(PXPeopleBootstrapFlowController *)self shouldPresentConfirmationForPerson:v3];

  if (v4)
  {
    v5 = [(PXUIPeopleBootstrapFlowController *)self confirmationViewController];
    v10[0] = v5;
    v6 = v10;
LABEL_5:
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  if ([(PXPeopleBootstrapFlowController *)self shouldPresentNaming])
  {
    v5 = [(PXUIPeopleBootstrapFlowController *)self summaryViewController];
    v9 = v5;
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
    v4 = [(PXPeopleBootstrapFlowController *)self context];
    v3 = [[PXPeopleBootstrapSummaryViewController alloc] initWithContext:v4];
    [(PXUIPeopleBootstrapFlowController *)self setSummaryViewController:v3];
  }

  return v3;
}

- (PXPeopleBootstrapConfirmationViewController)confirmationViewController
{
  v3 = self->_confirmationViewController;
  if (!v3)
  {
    v4 = [(PXPeopleBootstrapFlowController *)self context];
    v5 = [v4 prefetchedDataSource];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
    }

    v8 = v7;

    [(PXPeopleSuggestionDataSource *)v8 setInitialPageLimit:9];
    [(PXPeopleSuggestionDataSource *)v8 setSuggestionFetchType:0];
    v3 = [[PXPeopleBootstrapConfirmationViewController alloc] initWithContext:v4 dataSource:v8];
    [(PXUIPeopleBootstrapFlowController *)self setConfirmationViewController:v3];
  }

  return v3;
}

- (PHPerson)sourcePerson
{
  v2 = [(PXPeopleBootstrapFlowController *)self context];
  v3 = [v2 sourcePerson];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)done:(id)a3
{
  v4 = a3;
  v5 = [(PXUIPeopleBootstrapFlowController *)self sourcePerson];
  v6 = [(PXPeopleBootstrapFlowController *)self context];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __42__PXUIPeopleBootstrapFlowController_done___block_invoke;
  v14 = &unk_1E774B730;
  v7 = v4;
  v15 = v7;
  v16 = self;
  [PXPeopleBootstrap performBootstrapWithSourcePerson:v5 context:v6 synchronous:0 completion:&v11];
  if ([(PXPeopleBootstrapFlowController *)self shouldPresentNaming:v11])
  {
    v8 = [v6 nameSelection];
    if (v8)
    {
    }

    else
    {
      v9 = [v5 px_localizedName];
      v10 = [v9 length];

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

- (void)recomputeViewControllersForChangeInKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  v6 = [v4 isEqualToString:@"nameSelection"];

  if (v6 && !v5)
  {
    v11 = [(PXPeopleBootstrapFlowController *)self viewControllers];
    v7 = [v11 subarrayWithRange:{0, 1}];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v7];
    v9 = [(PXUIPeopleBootstrapFlowController *)self _postNamingViewControllers];
    if ([v9 count])
    {
      [v8 addObjectsFromArray:v9];
    }

    v10 = [v8 copy];
    [(PXPeopleBootstrapFlowController *)self setViewControllers:v10];
  }
}

- (void)computeViewControllersForBootstrapFlow
{
  v9 = [(PXPeopleBootstrapFlowController *)self context];
  v3 = [(PXPeopleBootstrapFlowController *)self shouldPresentNaming];
  v4 = [(PXPeopleBootstrapFlowController *)self shouldPresentPostNaming];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3)
  {
    v6 = [[PXUIPeopleBootstrapNamingViewController alloc] initWithContext:v9];
    [v5 addObject:v6];
  }

  if (v4)
  {
    v7 = [(PXUIPeopleBootstrapFlowController *)self _postNamingViewControllers];
    if ([v7 count])
    {
      [v5 addObjectsFromArray:v7];
    }
  }

  v8 = [v5 copy];
  [(PXPeopleBootstrapFlowController *)self setViewControllers:v8];
}

@end