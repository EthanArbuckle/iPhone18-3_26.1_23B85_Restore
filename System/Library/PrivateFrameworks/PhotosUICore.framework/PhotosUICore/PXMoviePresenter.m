@interface PXMoviePresenter
+ (id)moviePresenterWithPresentingViewController:(id)a3;
- (BOOL)presentMovieViewControllerForAssetCollection:(id)a3 keyAssetFetchResult:(id)a4 referencePersons:(id)a5 preferredTransitionType:(int64_t)a6;
- (PXMoviePresenter)init;
- (PXMoviePresenter)initWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
@end

@implementation PXMoviePresenter

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (BOOL)presentMovieViewControllerForAssetCollection:(id)a3 keyAssetFetchResult:(id)a4 referencePersons:(id)a5 preferredTransitionType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v13 handleFailureInMethod:a2 object:self file:@"PXMoviePresenter.m" lineNumber:43 description:{@"Method %s is a responsibility of subclass %@", "-[PXMoviePresenter presentMovieViewControllerForAssetCollection:keyAssetFetchResult:referencePersons:preferredTransitionType:]", v15}];

  abort();
}

- (PXMoviePresenter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMoviePresenter.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXMoviePresenter init]"}];

  abort();
}

- (PXMoviePresenter)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXMoviePresenter;
  v5 = [(PXMoviePresenter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
  }

  return v6;
}

+ (id)moviePresenterWithPresentingViewController:(id)a3
{
  v3 = a3;
  v4 = [(PXMoviePresenter *)[PXStoryMoviePresenter alloc] initWithPresentingViewController:v3];

  return v4;
}

@end