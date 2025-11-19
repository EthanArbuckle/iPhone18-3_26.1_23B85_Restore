@interface TRIXPCInternalAgentToSystemServiceWrapper
- (TRIXPCInternalAgentToSystemServiceWrapper)initWithUnderlyingHandler:(id)a3;
@end

@implementation TRIXPCInternalAgentToSystemServiceWrapper

- (TRIXPCInternalAgentToSystemServiceWrapper)initWithUnderlyingHandler:(id)a3
{
  v4.receiver = self;
  v4.super_class = TRIXPCInternalAgentToSystemServiceWrapper;
  return [(TRIXPCHandlerWrapper *)&v4 initWithUnderlyingHandler:a3 forProtocol:&unk_287FCDDA8];
}

@end