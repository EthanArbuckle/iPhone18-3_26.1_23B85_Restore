@interface TRIXPCInternalServiceWrapper
- (TRIXPCInternalServiceWrapper)initWithUnderlyingHandler:(id)a3;
@end

@implementation TRIXPCInternalServiceWrapper

- (TRIXPCInternalServiceWrapper)initWithUnderlyingHandler:(id)a3
{
  v4.receiver = self;
  v4.super_class = TRIXPCInternalServiceWrapper;
  return [(TRIXPCHandlerWrapper *)&v4 initWithUnderlyingHandler:a3 forProtocol:&unk_287FCCFA0];
}

@end