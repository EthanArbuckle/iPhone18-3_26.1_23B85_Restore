@interface TRIXPCStatusServiceWrapper
- (TRIXPCStatusServiceWrapper)initWithUnderlyingHandler:(id)handler;
@end

@implementation TRIXPCStatusServiceWrapper

- (TRIXPCStatusServiceWrapper)initWithUnderlyingHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = TRIXPCStatusServiceWrapper;
  return [(TRIXPCHandlerWrapper *)&v4 initWithUnderlyingHandler:handler forProtocol:&unk_287FCD738];
}

@end