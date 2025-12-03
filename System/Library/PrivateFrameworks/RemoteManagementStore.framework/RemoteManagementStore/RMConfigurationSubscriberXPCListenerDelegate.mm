@interface RMConfigurationSubscriberXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RMConfigurationSubscriberXPCListenerDelegate)initWithApplicators:(id)applicators publisherClass:(Class)class;
@end

@implementation RMConfigurationSubscriberXPCListenerDelegate

- (RMConfigurationSubscriberXPCListenerDelegate)initWithApplicators:(id)applicators publisherClass:(Class)class
{
  applicatorsCopy = applicators;
  v11.receiver = self;
  v11.super_class = RMConfigurationSubscriberXPCListenerDelegate;
  v8 = [(RMConfigurationSubscriberXPCListenerDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_applicatorClasses, applicators);
    objc_storeStrong(&v9->_publisherClass, class);
  }

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287477AC0];
  [connectionCopy setExportedInterface:v6];

  v7 = [RMConfigurationSubscriberService newConfigurationSubscriberServiceWithXPCConnection:connectionCopy];
  applicatorClasses = [(RMConfigurationSubscriberXPCListenerDelegate *)self applicatorClasses];

  if (applicatorClasses)
  {
    applicatorClasses2 = [(RMConfigurationSubscriberXPCListenerDelegate *)self applicatorClasses];
    v10 = [RMConfigurationSubscriberDelegate sharedDelegateWithApplicators:applicatorClasses2];
    [v7 setSubscriberDelegate:v10];
  }

  if ([(RMConfigurationSubscriberXPCListenerDelegate *)self publisherClass])
  {
    v11 = [RMStatusPublisherDelegate sharedDelegateWithPublisherClass:[(RMConfigurationSubscriberXPCListenerDelegate *)self publisherClass]];
    [v7 setPublisherDelegate:v11];
  }

  [connectionCopy setExportedObject:v7];
  [connectionCopy resume];

  return 1;
}

@end