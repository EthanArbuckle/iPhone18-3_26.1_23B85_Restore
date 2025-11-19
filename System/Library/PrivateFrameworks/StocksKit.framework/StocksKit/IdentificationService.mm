@interface IdentificationService
- (_TtC9StocksKit21IdentificationService)init;
@end

@implementation IdentificationService

- (_TtC9StocksKit21IdentificationService)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers;
  v5 = MEMORY[0x277D84F90];
  *v4 = 0;
  *(v4 + 1) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(IdentificationService *)&v7 init];
}

@end