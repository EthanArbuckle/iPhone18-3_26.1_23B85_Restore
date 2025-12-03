@interface PUAbstractNavigationBanner
- (PUAbstractNavigationBannerDelegate)delegate;
- (UIView)view;
- (double)height;
@end

@implementation PUAbstractNavigationBanner

- (PUAbstractNavigationBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAbstractNavigationBanner.m" lineNumber:23 description:{@"%s must be overriden by subclass", "-[PUAbstractNavigationBanner view]"}];

  [(PUAbstractNavigationBanner *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (double)height
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAbstractNavigationBanner.m" lineNumber:17 description:{@"%s must be overriden by subclass", "-[PUAbstractNavigationBanner height]"}];

  [(PUAbstractNavigationBanner *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

@end