@interface SiriSharedUIScrollablePageantView
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
@end

@implementation SiriSharedUIScrollablePageantView

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_21E481C8C(tapCopy);
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_21E482148(pressCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
  if (v3)
  {
    selfCopy = self;
    v4 = v3;
    sub_21E48423C(v4);
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
    if (v4)
    {
      selfCopy = self;
      v5 = v4;
      sub_21E48423C(v5);
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  [dragging contentOffset];
  v4 = selfCopy + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset;
  *v4 = v5;
  *(v4 + 1) = v6;
  v4[16] = 0;
}

- (void)scrollViewDidScroll:(id)scroll
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    scrollCopy = scroll;
    selfCopy = self;
    sub_21E483324(v5);
  }

  else
  {
    v8 = qword_280C14550;
    scrollCopy2 = scroll;
    selfCopy2 = self;
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = sub_21E4DBCC8();
    __swift_project_value_buffer(v11, qword_280C14558);
    v12 = sub_21E4DD218();
    sub_21E45D81C(v12, 0x200000000, 0xD000000000000017, 0x800000021E4EF6D0, 0xD00000000000003ELL, 0x800000021E4EF6F0);
  }
}

@end