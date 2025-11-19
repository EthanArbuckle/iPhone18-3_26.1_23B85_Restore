@interface AppReceiptOperationResult
- (void)addExpiring:(id)a3 expirationDate:(id)a4;
- (void)addRefreshed:(id)a3;
- (void)addRevoked:(id)a3;
- (void)dealloc;
@end

@implementation AppReceiptOperationResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AppReceiptOperationResult;
  [(AppReceiptOperationResult *)&v3 dealloc];
}

- (void)addExpiring:(id)a3 expirationDate:(id)a4
{
  if (a3)
  {
    expiring = self->_expiring;
    if (!expiring)
    {
      expiring = [[NSMutableSet alloc] initWithCapacity:5];
      self->_expiring = expiring;
    }

    [(NSMutableSet *)expiring addObject:a3];
    [(NSDate *)self->_soonestExpirationDate timeIntervalSinceNow];
    v9 = v8;
    [a4 timeIntervalSinceNow];
    if (v10 >= 1 && (!self->_soonestExpirationDate || v9 > v10))
    {
      [(AppReceiptOperationResult *)self setSoonestExpirationDate:a4];

      [(AppReceiptOperationResult *)self setSoonestExpiring:a3];
    }
  }
}

- (void)addRevoked:(id)a3
{
  if (a3)
  {
    revoked = self->_revoked;
    if (!revoked)
    {
      revoked = [[NSMutableSet alloc] initWithCapacity:5];
      self->_revoked = revoked;
    }

    [(NSMutableSet *)revoked addObject:a3];
  }
}

- (void)addRefreshed:(id)a3
{
  if (a3)
  {
    refreshed = self->_refreshed;
    if (!refreshed)
    {
      refreshed = [[NSMutableSet alloc] initWithCapacity:5];
      self->_refreshed = refreshed;
    }

    [(NSMutableSet *)refreshed addObject:a3];
  }
}

@end