@interface ScrollOffsetObserver
- (_TtC15RemindersUICoreP33_7C8C604C15D0DA1EA91E5188EF1F6E2320ScrollOffsetObserver)init;
- (void)_observeScrollViewDidScroll:(id)scroll;
@end

@implementation ScrollOffsetObserver

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_21D45BE10(scroll);
}

- (_TtC15RemindersUICoreP33_7C8C604C15D0DA1EA91E5188EF1F6E2320ScrollOffsetObserver)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ScrollOffsetObserver *)&v5 init];
}

@end