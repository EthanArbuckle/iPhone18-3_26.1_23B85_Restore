@interface PXMoviePresenter
+ (id)moviePresenterWithPresentingViewController:(id)controller;
- (BOOL)presentMovieViewControllerForAssetCollection:(id)collection keyAssetFetchResult:(id)result referencePersons:(id)persons preferredTransitionType:(int64_t)type;
- (PXMoviePresenter)init;
- (PXMoviePresenter)initWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
@end

@implementation PXMoviePresenter

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (BOOL)presentMovieViewControllerForAssetCollection:(id)collection keyAssetFetchResult:(id)result referencePersons:(id)persons preferredTransitionType:(int64_t)type
{
  collectionCopy = collection;
  resultCopy = result;
  personsCopy = persons;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMoviePresenter.m" lineNumber:43 description:{@"Method %s is a responsibility of subclass %@", "-[PXMoviePresenter presentMovieViewControllerForAssetCollection:keyAssetFetchResult:referencePersons:preferredTransitionType:]", v15}];

  abort();
}

- (PXMoviePresenter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMoviePresenter.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXMoviePresenter init]"}];

  abort();
}

- (PXMoviePresenter)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PXMoviePresenter;
  v5 = [(PXMoviePresenter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
  }

  return v6;
}

+ (id)moviePresenterWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(PXMoviePresenter *)[PXStoryMoviePresenter alloc] initWithPresentingViewController:controllerCopy];

  return v4;
}

@end