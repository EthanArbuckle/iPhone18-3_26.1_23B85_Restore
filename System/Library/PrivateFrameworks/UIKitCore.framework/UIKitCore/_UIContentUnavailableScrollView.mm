@interface _UIContentUnavailableScrollView
- (BOOL)_hasReparentedPanGesture;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (_UIContentUnavailableScrollView)initWithFrame:(CGRect)a3;
- (id)_parentScrollView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UIContentUnavailableScrollView

- (_UIContentUnavailableScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIContentUnavailableScrollView;
  v3 = [(UIScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v2 = self;
  v3 = [(UIScrollView *)self panGestureRecognizer];
  v4 = [v3 view];
  LOBYTE(v2) = v4 != v2;

  return v2;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIContentUnavailableScrollView;
  v5 = [(UIScrollView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  if (![(_UIContentUnavailableScrollView *)self _hasReparentedPanGesture])
  {
    return 0;
  }

  v7 = [(UIScrollView *)self panGestureRecognizer];

  if (v7 != a3 || ![a4 _isGestureType:9])
  {
    return 0;
  }

  v8 = [a4 view];
  v9 = [a3 view];
  v10 = [v8 isDescendantOfView:v9];

  return v10;
}

- (id)_parentScrollView
{
  if ([(_UIContentUnavailableScrollView *)self _hasReparentedPanGesture])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UIContentUnavailableScrollView;
    v3 = [(UIScrollView *)&v5 _parentScrollView];
  }

  return v3;
}

@end