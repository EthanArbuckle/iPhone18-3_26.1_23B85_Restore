@interface PKUsageNotificationClient
- (PKUsageNotificationClient)init;
- (void)setPassUsageHandler:(id)handler;
- (void)setPaymentPassUsageHandler:(id)handler;
- (void)setPaymentUsageHandler:(id)handler;
- (void)usedPassFromSource:(int64_t)source withTypeIdentifier:(id)identifier info:(id)info;
- (void)usedPaymentPassWithTransactionIdentifier:(id)identifier info:(id)info;
- (void)usedPaymentPassWithUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier info:(id)info;
@end

@implementation PKUsageNotificationClient

- (PKUsageNotificationClient)init
{
  v9.receiver = self;
  v9.super_class = PKUsageNotificationClient;
  v2 = [(PKUsageNotificationClient *)&v9 init];
  if (v2)
  {
    v3 = [PKXPCService alloc];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F24142D0];
    v5 = PKUsageNotificationClientInterface();
    v6 = [(PKXPCService *)v3 initWithMachServiceName:@"com.apple.passd.usage" remoteObjectInterface:v4 exportedObjectInterface:v5 exportedObject:v2 serviceResumedNotificationName:@"com.apple.passd.listener.resumed" options:1];
    connection = v2->_connection;
    v2->_connection = v6;
  }

  return v2;
}

- (void)setPassUsageHandler:(id)handler
{
  v4 = [handler copy];
  handler = self->_handler;
  self->_handler = v4;
}

- (void)setPaymentUsageHandler:(id)handler
{
  v4 = [handler copy];
  paymentHandler = self->_paymentHandler;
  self->_paymentHandler = v4;
}

- (void)setPaymentPassUsageHandler:(id)handler
{
  v4 = [handler copy];
  paymentPassUsageHandler = self->_paymentPassUsageHandler;
  self->_paymentPassUsageHandler = v4;
}

- (void)usedPassFromSource:(int64_t)source withTypeIdentifier:(id)identifier info:(id)info
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, identifier, source, info);
  }
}

- (void)usedPaymentPassWithUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier info:(id)info
{
  paymentHandler = self->_paymentHandler;
  if (paymentHandler)
  {
    paymentHandler[2](paymentHandler, identifier, transactionIdentifier, info);
  }
}

- (void)usedPaymentPassWithTransactionIdentifier:(id)identifier info:(id)info
{
  paymentPassUsageHandler = self->_paymentPassUsageHandler;
  if (paymentPassUsageHandler)
  {
    paymentPassUsageHandler[2](paymentPassUsageHandler, identifier, info);
  }
}

@end