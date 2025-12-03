@interface TRIXPCInternalAgentToSystemServiceWrapper
- (TRIXPCInternalAgentToSystemServiceWrapper)initWithUnderlyingHandler:(id)handler;
@end

@implementation TRIXPCInternalAgentToSystemServiceWrapper

- (TRIXPCInternalAgentToSystemServiceWrapper)initWithUnderlyingHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = TRIXPCInternalAgentToSystemServiceWrapper;
  return [(TRIXPCHandlerWrapper *)&v4 initWithUnderlyingHandler:handler forProtocol:&unk_287FCDDA8];
}

@end