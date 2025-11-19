@interface StockServiceURLSessionDelegate
- (_TtC9StocksKit30StockServiceURLSessionDelegate)init;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
@end

@implementation StockServiceURLSessionDelegate

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26BB5924C(v4);
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