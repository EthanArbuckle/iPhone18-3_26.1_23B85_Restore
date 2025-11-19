@interface _UIDebugColorBoundsView
+ (id)_nextColor;
- (_UIDebugColorBoundsView)initWithView:(id)a3;
@end

@implementation _UIDebugColorBoundsView

+ (id)_nextColor
{
  if (qword_1ED4A25D0 != -1)
  {
    dispatch_once(&qword_1ED4A25D0, &__block_literal_global_648);
  }

  v2 = [_MergedGlobals_1350 objectAtIndex:qword_1ED4A25C8];
  v3 = ++qword_1ED4A25C8;
  qword_1ED4A25C8 = v3 % [_MergedGlobals_1350 count];

  return v2;
}

- (_UIDebugColorBoundsView)initWithView:(id)a3
{
  [a3 bounds];
  v13.receiver = self;
  v13.super_class = _UIDebugColorBoundsView;
  v4 = [(UIView *)&v13 initWithFrame:?];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 setAutoresizingMask:18];
    [(UIView *)v5 setUserInteractionEnabled:0];
    [(UIView *)v5 setOpaque:0];
    v6 = +[_UIDebugColorBoundsView _nextColor];
    v7 = [v6 CGColor];
    v8 = [(UIView *)v5 layer];
    [v8 setBorderColor:v7];

    [(UIView *)v5 _currentScreenScale];
    v10 = 1.0 / v9;
    v11 = [(UIView *)v5 layer];
    [v11 setBorderWidth:v10];
  }

  return v5;
}

@end