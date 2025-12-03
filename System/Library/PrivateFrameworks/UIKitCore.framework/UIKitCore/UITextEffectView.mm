@interface UITextEffectView
- (_TtC5UIKit16UITextEffectView)initWithFrame:(CGRect)frame;
- (void)_observeScrollViewDidScroll:(id)scroll;
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
  _scroller = [v2 _scroller];
  if (_scroller)
  {
    v4 = _scroller;
    [_scroller _addScrollViewScrollObserver_];
  }
}

- (void)didMoveToWindow
{
  selfCopy = self;
  window = [(UIView *)selfCopy window];
  if (window)
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

- (_TtC5UIKit16UITextEffectView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for UITextEffectView();
  scrollCopy = scroll;
  v5 = v6.receiver;
  [(UIView *)&v6 _observeScrollViewDidScroll:scrollCopy];
  sub_18900264C();
}

@end