@interface StockServiceURLSessionDelegate
- (_TtC9StocksKit30StockServiceURLSessionDelegate)init;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
@end

@implementation StockServiceURLSessionDelegate

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_26BB5924C(sessionCopy);
}

- (_TtC9StocksKit30StockServiceURLSessionDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC9StocksKit30StockServiceURLSessionDelegate_sessionDidFinishObservers) = MEMORY[0x277D84F90];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(StockServiceURLSessionDelegate *)&v5 init];
}

@end