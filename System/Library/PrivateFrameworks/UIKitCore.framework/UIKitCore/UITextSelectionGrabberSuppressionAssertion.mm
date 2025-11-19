@interface UITextSelectionGrabberSuppressionAssertion
- (UITextSelectionGrabberSuppressionAssertion)initWithSelectionView:(id)a3;
- (UITextSelectionView)selectionView;
- (void)_invalidate;
- (void)dealloc;
@end

@implementation UITextSelectionGrabberSuppressionAssertion

- (UITextSelectionGrabberSuppressionAssertion)initWithSelectionView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UITextSelectionGrabberSuppressionAssertion;
  v5 = [(UITextSelectionGrabberSuppressionAssertion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UITextSelectionGrabberSuppressionAssertion *)v5 setSelectionView:v4];
  }

  return v6;
}

- (void)dealloc
{
  if (![(UITextSelectionGrabberSuppressionAssertion *)self invalidated])
  {
    v3 = [(UITextSelectionGrabberSuppressionAssertion *)self selectionView];
    [v3 releaseGrabberHandleSuppressionAssertion:self];
  }

  v4.receiver = self;
  v4.super_class = UITextSelectionGrabberSuppressionAssertion;
  [(UITextSelectionGrabberSuppressionAssertion *)&v4 dealloc];
}

- (void)_invalidate
{
  [(UITextSelectionGrabberSuppressionAssertion *)self setInvalidated:1];
  v3 = [(UITextSelectionGrabberSuppressionAssertion *)self selectionView];
  [v3 releaseGrabberHandleSuppressionAssertion:self];
}

- (UITextSelectionView)selectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionView);

  return WeakRetained;
}

@end