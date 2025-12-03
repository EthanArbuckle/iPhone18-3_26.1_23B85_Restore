@interface TRIXPCNamespaceManagementServiceWrapper
- (TRIXPCNamespaceManagementServiceWrapper)initWithUnderlyingHandler:(id)handler;
@end

@implementation TRIXPCNamespaceManagementServiceWrapper

- (TRIXPCNamespaceManagementServiceWrapper)initWithUnderlyingHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = TRIXPCNamespaceManagementServiceWrapper;
  return [(TRIXPCHandlerWrapper *)&v4 initWithUnderlyingHandler:handler forProtocol:&unk_287FCD570];
}

@end