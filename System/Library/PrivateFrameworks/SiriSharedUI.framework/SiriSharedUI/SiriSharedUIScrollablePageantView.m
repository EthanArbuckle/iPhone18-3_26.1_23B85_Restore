@interface SiriSharedUIScrollablePageantView
- (void)handleLongPress:(id)a3;
- (void)handleTap:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
@end

@implementation SiriSharedUIScrollablePageantView

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E481C8C(v4);
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E482148(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
  if (v3)
  {
    v5 = self;
    v4 = v3;
    sub_21E48423C(v4);
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
    if (v4)
    {
      v6 = self;
      v5 = v4;
      sub_21E48423C(v5);
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = self;
  [a3 contentOffset];
  v4 = v7 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset;
  *v4 = v5;
  *(v4 + 1) = v6;
  v4[16] = 0;
}

- (void)scrollViewDidScroll:(id)a3
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a3;
    v7 = self;
    sub_21E483324(v5);
  }

  else
  {
    v8 = qword_280C14550;
    v9 = a3;
    v10 = self;
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