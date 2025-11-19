@interface UIKBResizingKeyplanePanGestureRecognizer
- (BOOL)_willScrollY;
- (UIKBResizingKeyplanePanGestureRecognizerDelegate)resizingDelegate;
@end

@implementation UIKBResizingKeyplanePanGestureRecognizer

- (BOOL)_willScrollY
{
  v3 = [(UIKBResizingKeyplanePanGestureRecognizer *)self resizingDelegate];
  v4 = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self translationInView:v4];
  if ([v3 shouldStartResizeForTranslationY:v5])
  {
    v8.receiver = self;
    v8.super_class = UIKBResizingKeyplanePanGestureRecognizer;
    v6 = [(UIPanGestureRecognizer *)&v8 _willScrollY];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIKBResizingKeyplanePanGestureRecognizerDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

@end