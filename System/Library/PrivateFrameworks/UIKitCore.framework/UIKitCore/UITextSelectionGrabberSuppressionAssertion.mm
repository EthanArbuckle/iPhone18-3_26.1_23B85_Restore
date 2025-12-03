@interface UITextSelectionGrabberSuppressionAssertion
- (UITextSelectionGrabberSuppressionAssertion)initWithSelectionView:(id)view;
- (UITextSelectionView)selectionView;
- (void)_invalidate;
- (void)dealloc;
@end

@implementation UITextSelectionGrabberSuppressionAssertion

- (UITextSelectionGrabberSuppressionAssertion)initWithSelectionView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = UITextSelectionGrabberSuppressionAssertion;
  v5 = [(UITextSelectionGrabberSuppressionAssertion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UITextSelectionGrabberSuppressionAssertion *)v5 setSelectionView:viewCopy];
  }

  return v6;
}

- (void)dealloc
{
  if (![(UITextSelectionGrabberSuppressionAssertion *)self invalidated])
  {
    selectionView = [(UITextSelectionGrabberSuppressionAssertion *)self selectionView];
    [selectionView releaseGrabberHandleSuppressionAssertion:self];
  }

  v4.receiver = self;
  v4.super_class = UITextSelectionGrabberSuppressionAssertion;
  [(UITextSelectionGrabberSuppressionAssertion *)&v4 dealloc];
}

- (void)_invalidate
{
  [(UITextSelectionGrabberSuppressionAssertion *)self setInvalidated:1];
  selectionView = [(UITextSelectionGrabberSuppressionAssertion *)self selectionView];
  [selectionView releaseGrabberHandleSuppressionAssertion:self];
}

- (UITextSelectionView)selectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionView);

  return WeakRetained;
}

@end