@interface PXPeopleBootstrapFlowController
- (BOOL)hasNextViewController;
- (BOOL)hasPreviousViewController;
- (BOOL)shouldPresentConfirmationForPerson:(id)person;
- (BOOL)shouldPresentNaming;
- (BOOL)shouldPresentPostNaming;
- (BOOL)wantsCancelButton;
- (PXPeopleBootstrapFlowController)init;
- (PXPeopleBootstrapFlowController)initWithContext:(id)context;
- (PXPeopleFlowViewController)nextViewController;
- (PXPeopleFlowViewController)previousViewController;
- (id)initEmptyFlowWithContext:(id)context;
- (void)cancel:(id)cancel;
- (void)commonInitWithContext:(id)context;
- (void)dealloc;
- (void)done:(id)done;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PXPeopleBootstrapFlowController

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"nameSelection"])
  {
    [(PXPeopleBootstrapFlowController *)self recomputeViewControllersForChangeInKeyPath:pathCopy];
  }
}

- (BOOL)shouldPresentConfirmationForPerson:(id)person
{
  v23 = *MEMORY[0x1E69E9840];
  personCopy = person;
  context = [(PXPeopleBootstrapFlowController *)self context];
  if (([context wantsMergeCandidateSuggestions] & 1) == 0)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = context;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "People UI: Not creating bootstrap confirmation view controller; context doesn't want candidate suggestions for context: %@", &v21, 0xCu);
    }

    [PXPeopleUtilities shouldShowBootstrapForPerson:personCopy context:context];
    goto LABEL_8;
  }

  if (![PXPeopleUtilities shouldShowBootstrapForPerson:personCopy context:context])
  {
LABEL_8:
    v10 = 0;
    goto LABEL_15;
  }

  prefetchedDataSource = [context prefetchedDataSource];
  v7 = prefetchedDataSource;
  if (prefetchedDataSource)
  {
    v8 = prefetchedDataSource;
  }

  else
  {
    v8 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
  }

  v11 = v8;

  v12 = MEMORY[0x1E695DF70];
  v13 = [(PXPeopleSuggestionDataSource *)v11 fetchAndCacheMergeCandidatesForPerson:personCopy];
  fetchedObjects = [v13 fetchedObjects];
  v15 = [v12 arrayWithArray:fetchedObjects];

  nameSelection = [context nameSelection];
  person = [nameSelection person];

  [v15 removeObject:person];
  v18 = [v15 count];
  v10 = v18 != 0;
  if (!v18)
  {
    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = context;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "People UI: Not creating bootstrap confirmation view controller; no merge candidates for context: %@", &v21, 0xCu);
    }
  }

LABEL_15:
  return v10;
}

- (void)cancel:(id)cancel
{
  context = [(PXPeopleBootstrapFlowController *)self context];
  cancelBlock = [context cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [context cancelBlock];
    cancelBlock2[2]();
  }

  bootstrapDelegate = [(PXPeopleBootstrapFlowController *)self bootstrapDelegate];
  [bootstrapDelegate bootstrapFlowController:self didFinishWithSuccess:0];
}

- (void)done:(id)done
{
  v4 = [PXPeopleConfirmationInfo alloc];
  context = [(PXPeopleBootstrapFlowController *)self context];
  v8 = [(PXPeopleConfirmationInfo *)v4 initWithBootstrapContext:context];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PXPeopleConfirmationDidFinish" object:v8];

  bootstrapDelegate = [(PXPeopleBootstrapFlowController *)self bootstrapDelegate];
  [bootstrapDelegate bootstrapFlowController:self didFinishWithSuccess:1];
}

- (BOOL)wantsCancelButton
{
  viewControllerIndex = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  viewControllers = [(PXPeopleBootstrapFlowController *)self viewControllers];
  v5 = [viewControllers objectAtIndex:viewControllerIndex];

  LOBYTE(viewControllers) = [v5 wantsCancelButton];
  return viewControllers;
}

- (PXPeopleFlowViewController)previousViewController
{
  if ([(PXPeopleBootstrapFlowController *)self hasPreviousViewController])
  {
    v3 = [(PXPeopleBootstrapFlowController *)self viewControllerIndex]- 1;
    [(PXPeopleBootstrapFlowController *)self setViewControllerIndex:v3];
    viewControllers = [(PXPeopleBootstrapFlowController *)self viewControllers];
    v5 = [viewControllers objectAtIndex:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasPreviousViewController
{
  viewControllerIndex = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  if (viewControllerIndex)
  {
    v3 = viewControllerIndex == 0x7FFFFFFFFFFFFFFFLL;
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
    viewControllerIndex = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
    if (viewControllerIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = viewControllerIndex + 1;
    }

    [(PXPeopleBootstrapFlowController *)self setViewControllerIndex:v4];
    viewControllers = [(PXPeopleBootstrapFlowController *)self viewControllers];
    v6 = [viewControllers objectAtIndex:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasNextViewController
{
  viewControllers = [(PXPeopleBootstrapFlowController *)self viewControllers];
  v4 = [viewControllers count];

  viewControllerIndex = [(PXPeopleBootstrapFlowController *)self viewControllerIndex];
  v7 = viewControllerIndex == 0x7FFFFFFFFFFFFFFFLL || viewControllerIndex < v4 - 1;
  return v4 && v7;
}

- (BOOL)shouldPresentPostNaming
{
  context = [(PXPeopleBootstrapFlowController *)self context];
  wantsPostNaming = [context wantsPostNaming];

  return wantsPostNaming;
}

- (BOOL)shouldPresentNaming
{
  context = [(PXPeopleBootstrapFlowController *)self context];
  sourcePerson = [context sourcePerson];
  px_localizedName = [sourcePerson px_localizedName];
  v5 = [px_localizedName length];

  if (v5 && [context bootstrapType] != 1)
  {
    wantsNaming = 0;
  }

  else
  {
    wantsNaming = [context wantsNaming];
  }

  return wantsNaming;
}

- (void)dealloc
{
  context = [(PXPeopleBootstrapFlowController *)self context];
  [context removeObserver:self forKeyPath:@"nameSelection"];

  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapFlowController;
  [(PXPeopleBootstrapFlowController *)&v4 dealloc];
}

- (id)initEmptyFlowWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = PXPeopleBootstrapFlowController;
  v5 = [(PXPeopleBootstrapFlowController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPeopleBootstrapFlowController *)v5 commonInitWithContext:contextCopy];
  }

  return v6;
}

- (PXPeopleBootstrapFlowController)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PXPeopleBootstrapFlowController;
  v5 = [(PXPeopleBootstrapFlowController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PXPeopleBootstrapFlowController *)v5 commonInitWithContext:contextCopy];
    [(PXPeopleBootstrapFlowController *)v6 computeViewControllersForBootstrapFlow];
    onInitBlock = [contextCopy onInitBlock];

    if (onInitBlock)
    {
      onInitBlock2 = [contextCopy onInitBlock];
      onInitBlock2[2]();
    }
  }

  return v6;
}

- (void)commonInitWithContext:(id)context
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  self->_viewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
  [contextCopy addObserver:self forKeyPath:@"nameSelection" options:0 context:0];
}

- (PXPeopleBootstrapFlowController)init
{
  [(PXPeopleBootstrapFlowController *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end