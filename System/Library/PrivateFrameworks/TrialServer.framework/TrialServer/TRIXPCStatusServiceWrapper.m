@interface TRIXPCStatusServiceWrapper
- (TRIXPCStatusServiceWrapper)initWithUnderlyingHandler:(id)a3;
@end

@implementation TRIXPCStatusServiceWrapper

- (TRIXPCStatusServiceWrapper)initWithUnderlyingHandler:(id)a3
{
  v4.receiver = self;
  v4.super_class = TRIXPCStatusServiceWrapper;
  return [(TRIXPCHandlerWrapper *)&v4 initWithUnderlyingHandler:a3 forProtocol:&unk_287FCD738];
}

@end