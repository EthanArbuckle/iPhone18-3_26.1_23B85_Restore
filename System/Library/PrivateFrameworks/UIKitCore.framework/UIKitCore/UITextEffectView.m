@interface UITextEffectView
- (_TtC5UIKit16UITextEffectView)initWithFrame:(CGRect)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation UITextEffectView

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UITextEffectView();
  v2 = v5.receiver;
  [(UIView *)&v5 didMoveToSuperview];
  v3 = [v2 _scroller];
  if (v3)
  {
    v4 = v3;
    [v3 _addScrollViewScrollObserver_];
  }
}

- (void)didMoveToWindow
{
  v3 = self;
  v2 = [(UIView *)v3 window];
  if (v2)
  {
  }

  else
  {
    sub_189002A68();
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UITextEffectView();
  v2 = v3.receiver;
  [(UIView *)&v3 layoutSubviews];
  sub_18900264C();
}

- (_TtC5UIKit16UITextEffectView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for UITextEffectView();
  v4 = a3;
  v5 = v6.receiver;
  [(UIView *)&v6 _observeScrollViewDidScroll:v4];
  sub_18900264C();
}

@end