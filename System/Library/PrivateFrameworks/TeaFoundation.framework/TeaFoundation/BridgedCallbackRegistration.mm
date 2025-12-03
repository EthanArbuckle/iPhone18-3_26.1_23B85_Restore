@interface BridgedCallbackRegistration
- (void)whenResolvingClass:(Class)class scope:(id)scope callbackBlock:(id)block;
- (void)whenResolvingProtocol:(id)protocol scope:(id)scope callbackBlock:(id)block;
@end

@implementation BridgedCallbackRegistration

- (void)whenResolvingClass:(Class)class scope:(id)scope callbackBlock:(id)block
{
  v7 = _Block_copy(block);
  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v7;
  scopeCopy = scope;
  selfCopy = self;
  sub_1BEFF2F90();
}

- (void)whenResolvingProtocol:(id)protocol scope:(id)scope callbackBlock:(id)block
{
  v8 = _Block_copy(block);
  *(swift_allocObject() + 16) = v8;
  protocolCopy = protocol;
  scopeCopy = scope;
  selfCopy = self;
  sub_1BEFF38BC();
}

@end