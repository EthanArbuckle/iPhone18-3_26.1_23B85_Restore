@interface UIKBResizingKeyplanePanGestureRecognizer
- (BOOL)_willScrollY;
- (UIKBResizingKeyplanePanGestureRecognizerDelegate)resizingDelegate;
@end

@implementation UIKBResizingKeyplanePanGestureRecognizer

- (BOOL)_willScrollY
{
  resizingDelegate = [(UIKBResizingKeyplanePanGestureRecognizer *)self resizingDelegate];
  view = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self translationInView:view];
  if ([resizingDelegate shouldStartResizeForTranslationY:v5])
  {
    v8.receiver = self;
    v8.super_class = UIKBResizingKeyplanePanGestureRecognizer;
    _willScrollY = [(UIPanGestureRecognizer *)&v8 _willScrollY];
  }

  else
  {
    _willScrollY = 0;
  }

  return _willScrollY;
}

- (UIKBResizingKeyplanePanGestureRecognizerDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

@end