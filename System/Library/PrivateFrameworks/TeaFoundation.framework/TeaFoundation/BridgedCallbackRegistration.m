@interface BridgedCallbackRegistration
- (void)whenResolvingClass:(Class)a3 scope:(id)a4 callbackBlock:(id)a5;
- (void)whenResolvingProtocol:(id)a3 scope:(id)a4 callbackBlock:(id)a5;
@end

@implementation BridgedCallbackRegistration

- (void)whenResolvingClass:(Class)a3 scope:(id)a4 callbackBlock:(id)a5
{
  v7 = _Block_copy(a5);
  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v7;
  v8 = a4;
  v9 = self;
  sub_1BEFF2F90();
}

- (void)whenResolvingProtocol:(id)a3 scope:(id)a4 callbackBlock:(id)a5
{
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1BEFF38BC();
}

@end