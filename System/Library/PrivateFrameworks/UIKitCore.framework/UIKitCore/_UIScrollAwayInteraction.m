@interface _UIScrollAwayInteraction
- (_TtC5UIKit24_UIScrollAwayInteraction)init;
- (void)_observeScrollViewDidEndDecelerating:(id)a3;
- (void)_observeScrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_observeScrollViewWillBeginDragging:(id)a3;
- (void)_observeScrollViewWillScrollToTop:(id)a3;
- (void)setView:(void *)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIScrollAwayInteraction

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188F91AD8();
}

- (void)setView:(void *)a3
{
  v4 = *(a1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_view);
  *(a1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_view) = a3;
  v3 = a3;
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188C48C3C(a3);
}

- (void)_observeScrollViewWillBeginDragging:(id)a3
{
  v3 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
  *v3 = 0;
  v3[8] = 0;
}

- (void)_observeScrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (a4)
  {
    if (!a3)
    {
      __break(1u);
      return;
    }

    v4 = a3;
    v5 = self;
    sub_188F9173C(v4);
  }

  else
  {
    v6 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
    *v6 = 0;
    v6[8] = 2;
    v7 = floor(*(&self->super.isa + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress));
    v4 = a3;
    v8 = self;
    sub_188F9133C(v7);
  }
}

- (void)_observeScrollViewDidEndDecelerating:(id)a3
{
  v3 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
  *v3 = 0;
  v3[8] = 2;
  v4 = floor(*(&self->super.isa + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress));
  v5 = self;
  sub_188F9133C(v4);
}

- (void)_observeScrollViewWillScrollToTop:(id)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction) <= 1u)
  {
    v4 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
    *v4 = 1;
    v4[8] = 2;
    v5 = self;
    sub_188F9133C(0.0);
  }
}

- (_TtC5UIKit24_UIScrollAwayInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end