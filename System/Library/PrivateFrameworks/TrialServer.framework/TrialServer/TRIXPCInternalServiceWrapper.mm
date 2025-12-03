@interface TRIXPCInternalServiceWrapper
- (TRIXPCInternalServiceWrapper)initWithUnderlyingHandler:(id)handler;
@end

@implementation TRIXPCInternalServiceWrapper

- (TRIXPCInternalServiceWrapper)initWithUnderlyingHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = TRIXPCInternalServiceWrapper;
  return [(TRIXPCHandlerWrapper *)&v4 initWithUnderlyingHandler:handler forProtocol:&unk_287FCCFA0];
}

@end