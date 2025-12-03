@interface IconListPageControl.Coordinator
- (_TtCV15SpringBoardHome19IconListPageControl11Coordinator)init;
- (void)pageChangedWithSender:(id)sender;
- (void)pageControl:(id)control didMoveCurrentPageToPage:(int64_t)page withScrubbing:(BOOL)scrubbing;
@end

@implementation IconListPageControl.Coordinator

- (void)pageChangedWithSender:(id)sender
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
    selfCopy = self;
    v4();
  }

  else
  {
  }
}

- (void)pageControl:(id)control didMoveCurrentPageToPage:(int64_t)page withScrubbing:(BOOL)scrubbing
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
    selfCopy = self;
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