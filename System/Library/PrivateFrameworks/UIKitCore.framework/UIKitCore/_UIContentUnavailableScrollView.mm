@interface _UIContentUnavailableScrollView
- (BOOL)_hasReparentedPanGesture;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (_UIContentUnavailableScrollView)initWithFrame:(CGRect)frame;
- (id)_parentScrollView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UIContentUnavailableScrollView

- (_UIContentUnavailableScrollView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIContentUnavailableScrollView;
  v3 = [(UIScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIScrollView *)v3 _setApplyVerticalSafeAreaInsetsToNonscrollingContent:1];
    [(UIScrollView *)v4 setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v4 setShowsVerticalScrollIndicator:0];
  }

  return v4;
}

- (BOOL)_hasReparentedPanGesture
{
  selfCopy = self;
  panGestureRecognizer = [(UIScrollView *)self panGestureRecognizer];
  view = [panGestureRecognizer view];
  LOBYTE(selfCopy) = view != selfCopy;

  return selfCopy;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UIContentUnavailableScrollView;
  v5 = [(UIScrollView *)&v8 hitTest:event withEvent:test.x, test.y];
  if ([(_UIContentUnavailableScrollView *)self _hasReparentedPanGesture]&& v5 == self)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  if (![(_UIContentUnavailableScrollView *)self _hasReparentedPanGesture])
  {
    return 0;
  }

  panGestureRecognizer = [(UIScrollView *)self panGestureRecognizer];

  if (panGestureRecognizer != recognizer || ![gestureRecognizer _isGestureType:9])
  {
    return 0;
  }

  view = [gestureRecognizer view];
  view2 = [recognizer view];
  v10 = [view isDescendantOfView:view2];

  return v10;
}

- (id)_parentScrollView
{
  if ([(_UIContentUnavailableScrollView *)self _hasReparentedPanGesture])
  {
    _parentScrollView = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UIContentUnavailableScrollView;
    _parentScrollView = [(UIScrollView *)&v5 _parentScrollView];
  }

  return _parentScrollView;
}

@end