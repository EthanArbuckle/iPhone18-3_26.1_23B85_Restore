@interface PKUsageNotificationClient
- (PKUsageNotificationClient)init;
- (void)setPassUsageHandler:(id)a3;
- (void)setPaymentPassUsageHandler:(id)a3;
- (void)setPaymentUsageHandler:(id)a3;
- (void)usedPassFromSource:(int64_t)a3 withTypeIdentifier:(id)a4 info:(id)a5;
- (void)usedPaymentPassWithTransactionIdentifier:(id)a3 info:(id)a4;
- (void)usedPaymentPassWithUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5;
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

- (void)setPassUsageHandler:(id)a3
{
  v4 = [a3 copy];
  handler = self->_handler;
  self->_handler = v4;
}

- (void)setPaymentUsageHandler:(id)a3
{
  v4 = [a3 copy];
  paymentHandler = self->_paymentHandler;
  self->_paymentHandler = v4;
}

- (void)setPaymentPassUsageHandler:(id)a3
{
  v4 = [a3 copy];
  paymentPassUsageHandler = self->_paymentPassUsageHandler;
  self->_paymentPassUsageHandler = v4;
}

- (void)usedPassFromSource:(int64_t)a3 withTypeIdentifier:(id)a4 info:(id)a5
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, a4, a3, a5);
  }
}

- (void)usedPaymentPassWithUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5
{
  paymentHandler = self->_paymentHandler;
  if (paymentHandler)
  {
    paymentHandler[2](paymentHandler, a3, a4, a5);
  }
}

- (void)usedPaymentPassWithTransactionIdentifier:(id)a3 info:(id)a4
{
  paymentPassUsageHandler = self->_paymentPassUsageHandler;
  if (paymentPassUsageHandler)
  {
    paymentPassUsageHandler[2](paymentPassUsageHandler, a3, a4);
  }
}

@end