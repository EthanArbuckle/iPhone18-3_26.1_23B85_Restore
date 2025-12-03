@interface _UIScrollAwayInteraction
- (_TtC5UIKit24_UIScrollAwayInteraction)init;
- (void)_observeScrollViewDidEndDecelerating:(id)decelerating;
- (void)_observeScrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_observeScrollViewWillBeginDragging:(id)dragging;
- (void)_observeScrollViewWillScrollToTop:(id)top;
- (void)setView:(void *)view;
- (void)willMoveToView:(id)view;
@end

@implementation _UIScrollAwayInteraction

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188F91AD8();
}

- (void)setView:(void *)view
{
  v4 = *(self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_view);
  *(self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_view) = view;
  viewCopy = view;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_188C48C3C(scroll);
}

- (void)_observeScrollViewWillBeginDragging:(id)dragging
{
  v3 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
  *v3 = 0;
  v3[8] = 0;
}

- (void)_observeScrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (decelerate)
  {
    if (!dragging)
    {
      __break(1u);
      return;
    }

    draggingCopy2 = dragging;
    selfCopy = self;
    sub_188F9173C(draggingCopy2);
  }

  else
  {
    v6 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
    *v6 = 0;
    v6[8] = 2;
    v7 = floor(*(&self->super.isa + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress));
    draggingCopy2 = dragging;
    selfCopy2 = self;
    sub_188F9133C(v7);
  }
}

- (void)_observeScrollViewDidEndDecelerating:(id)decelerating
{
  v3 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
  *v3 = 0;
  v3[8] = 2;
  v4 = floor(*(&self->super.isa + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress));
  selfCopy = self;
  sub_188F9133C(v4);
}

- (void)_observeScrollViewWillScrollToTop:(id)top
{
  if (*(&self->super.isa + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction) <= 1u)
  {
    v4 = self + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
    *v4 = 1;
    v4[8] = 2;
    selfCopy = self;
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