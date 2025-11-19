@interface SUPurchaseContinuation
- (SUPurchaseContinuation)initWithPurchase:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation SUPurchaseContinuation

- (SUPurchaseContinuation)initWithPurchase:(id)a3
{
  v4 = [(SUPurchaseContinuation *)self init];
  if (v4)
  {
    v4->_purchase = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUPurchaseContinuation;
  [(SUPurchaseContinuation *)&v3 dealloc];
}

- (void)cancel
{
  [(SUPurchaseManager *)[(SUPurchaseContinuation *)self purchaseManager] cancelFuturePurchase:self->_purchase];
  v3.receiver = self;
  v3.super_class = SUPurchaseContinuation;
  [(SUContinuation *)&v3 cancel];
}

- (void)start
{
  v3 = [(SUPurchaseContinuation *)self purchaseManager];
  purchase = self->_purchase;

  [(SUPurchaseManager *)v3 addFuturePurchase:purchase];
}

@end