@interface PXPeopleBootstrapFlowController
- (BOOL)hasNextViewController;
- (BOOL)hasPreviousViewController;
- (BOOL)shouldPresentConfirmationForPerson:(id)a3;
- (BOOL)shouldPresentNaming;
- (BOOL)shouldPresentPostNaming;
- (BOOL)wantsCancelButton;
- (PXPeopleBootstrapFlowController)init;
- (PXPeopleBootstrapFlowController)initWithContext:(id)a3;
- (PXPeopleFlowViewController)nextViewController;
- (PXPeopleFlowViewController)previousViewController;
- (id)initEmptyFlowWithContext:(id)a3;
- (void)cancel:(id)a3;
- (void)commonInitWithContext:(id)a3;
- (void)dealloc;
- (void)done:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PXPeopleBootstrapFlowController

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  if ([v7 isEqualToString:@"nameSelection"])
  {
    [(PXPeopleBootstrapFlowController *)self recomputeViewControllersForChangeInKeyPath:v7];
  }
}

- (BOOL)shouldPresentConfirmationForPerson:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPeopleBootstrapFlowController *)self context];
  if (([v5 wantsMergeCandidateSuggestions] & 1) == 0)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "People UI: Not creating bootstrap confirmation view controller; context doesn't want candidate suggestions for context: %@", &v21, 0xCu);
    }

    [PXPeopleUtilities shouldShowBootstrapForPerson:v4 context:v5];
    goto LABEL_8;
  }

  if (![PXPeopleUtilities shouldShowBootstrapForPerson:v4 context:v5])
  {
LABEL_8:
    v10 = 0;
    goto LABEL_15;
  }

  v6 = [v5 prefetchedDataSource];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
  }

  v11 = v8;

  v12 = MEMORY[0x1E695DF70];
  v13 = [(PXPeopleSuggestionDataSource *)v11 fetchAndCacheMergeCandidatesForPerson:v4];
  v14 = [v13 fetchedObjects];
  v15 = [v12 arrayWithArray:v14];

  v16 = [v5 nameSelection];
  v17 = [v16 person];

  [v15 removeObject:v17];
  v18 = [v15 count];
  v10 = v18 != 0;
  if (!v18)
  {
    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "People UI: Not creating bootstrap confirmation view controller; no merge candidates for context: %@", &v21, 0xCu);
    }
  }

LABEL_15:
  return v10;
}

- (void)cancel:(id)a3
{
  v7 = [(PXPeopleBootstrapFlowController *)self context];
  v4 = [v7 cancelBlock];

  if (v4)
  {
    v5 = [v7 cancelBlock];
    v5[2]();
  }

  v6 = [(PXPeopleBootstrapFlowController *)self bootstrapDelegate];
  [v6 bootstrapFlowController:self didFinishWithSuccess:0];
}

- (void)done:(id)a3
{
  v4 = [PXPeopleConfirmationInfo alloc];
  v5 = [(PXPeopleBootstrapFlowController *)self context];
  v8 = [(PXPeopleConfirmationInfo *)v4 initWithBootstrapContext:v5];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"PXPeopleConfirmationDidFinish" object:v8];

  v7 = [(PXPeopleBootstrapFlowController *)self bootstrapDelegate];
  [v7 bootstrapFlowController:self didFinishWithSuccess:1];
}

- (BOOL)wantsCancelButton
{
  v3 = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  v4 = [(PXPeopleBootstrapFlowController *)self viewControllers];
  v5 = [v4 objectAtIndex:v3];

  LOBYTE(v4) = [v5 wantsCancelButton];
  return v4;
}

- (PXPeopleFlowViewController)previousViewController
{
  if ([(PXPeopleBootstrapFlowController *)self hasPreviousViewController])
  {
    v3 = [(PXPeopleBootstrapFlowController *)self viewControllerIndex]- 1;
    [(PXPeopleBootstrapFlowController *)self setViewControllerIndex:v3];
    v4 = [(PXPeopleBootstrapFlowController *)self viewControllers];
    v5 = [v4 objectAtIndex:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasPreviousViewController
{
  v2 = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  if (v2)
  {
    v3 = v2 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (PXPeopleFlowViewController)nextViewController
{
  if ([(PXPeopleBootstrapFlowController *)self hasNextViewController])
  {
    v3 = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 + 1;
    }

    [(PXPeopleBootstrapFlowController *)self setViewControllerIndex:v4];
    v5 = [(PXPeopleBootstrapFlowController *)self viewControllers];
    v6 = [v5 objectAtIndex:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasNextViewController
{
  v3 = [(PXPeopleBootstrapFlowController *)self viewControllers];
  v4 = [v3 count];

  v5 = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  v7 = v5 == 0x7FFFFFFFFFFFFFFFLL || v5 < v4 - 1;
  return v4 && v7;
}

- (BOOL)shouldPresentPostNaming
{
  v2 = [(PXPeopleBootstrapFlowController *)self context];
  v3 = [v2 wantsPostNaming];

  return v3;
}

- (BOOL)shouldPresentNaming
{
  v2 = [(PXPeopleBootstrapFlowController *)self context];
  v3 = [v2 sourcePerson];
  v4 = [v3 px_localizedName];
  v5 = [v4 length];

  if (v5 && [v2 bootstrapType] != 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v2 wantsNaming];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(PXPeopleBootstrapFlowController *)self context];
  [v3 removeObserver:self forKeyPath:@"nameSelection"];

  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapFlowController;
  [(PXPeopleBootstrapFlowController *)&v4 dealloc];
}

- (id)initEmptyFlowWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXPeopleBootstrapFlowController;
  v5 = [(PXPeopleBootstrapFlowController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPeopleBootstrapFlowController *)v5 commonInitWithContext:v4];
  }

  return v6;
}

- (PXPeopleBootstrapFlowController)initWithContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXPeopleBootstrapFlowController;
  v5 = [(PXPeopleBootstrapFlowController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PXPeopleBootstrapFlowController *)v5 commonInitWithContext:v4];
    [(PXPeopleBootstrapFlowController *)v6 computeViewControllersForBootstrapFlow];
    v7 = [v4 onInitBlock];

    if (v7)
    {
      v8 = [v4 onInitBlock];
      v8[2]();
    }
  }

  return v6;
}

- (void)commonInitWithContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);
  v5 = a3;
  self->_viewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
  [v5 addObserver:self forKeyPath:@"nameSelection" options:0 context:0];
}

- (PXPeopleBootstrapFlowController)init
{
  [(PXPeopleBootstrapFlowController *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end