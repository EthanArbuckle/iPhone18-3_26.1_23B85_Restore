@interface IconListPageControl.Coordinator
- (_TtCV15SpringBoardHome19IconListPageControl11Coordinator)init;
- (void)pageChangedWithSender:(id)a3;
- (void)pageControl:(id)a3 didMoveCurrentPageToPage:(int64_t)a4 withScrubbing:(BOOL)a5;
@end

@implementation IconListPageControl.Coordinator

- (void)pageChangedWithSender:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *&self->parent[OBJC_IVAR____TtCV15SpringBoardHome19IconListPageControl11Coordinator_parent + 48];
  if (v4)
  {
    v5 = self;
    v4();
  }

  else
  {
  }
}

- (void)pageControl:(id)a3 didMoveCurrentPageToPage:(int64_t)a4 withScrubbing:(BOOL)a5
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *&self->parent[OBJC_IVAR____TtCV15SpringBoardHome19IconListPageControl11Coordinator_parent + 48];
  if (v6)
  {
    v7 = self;
    v6();
  }

  else
  {
  }
}

- (_TtCV15SpringBoardHome19IconListPageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end