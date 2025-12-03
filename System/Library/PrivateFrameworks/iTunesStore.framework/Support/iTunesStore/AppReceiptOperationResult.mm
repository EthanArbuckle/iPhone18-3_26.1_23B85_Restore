@interface AppReceiptOperationResult
- (void)addExpiring:(id)expiring expirationDate:(id)date;
- (void)addRefreshed:(id)refreshed;
- (void)addRevoked:(id)revoked;
- (void)dealloc;
@end

@implementation AppReceiptOperationResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AppReceiptOperationResult;
  [(AppReceiptOperationResult *)&v3 dealloc];
}

- (void)addExpiring:(id)expiring expirationDate:(id)date
{
  if (expiring)
  {
    expiring = self->_expiring;
    if (!expiring)
    {
      expiring = [[NSMutableSet alloc] initWithCapacity:5];
      self->_expiring = expiring;
    }

    [(NSMutableSet *)expiring addObject:expiring];
    [(NSDate *)self->_soonestExpirationDate timeIntervalSinceNow];
    v9 = v8;
    [date timeIntervalSinceNow];
    if (v10 >= 1 && (!self->_soonestExpirationDate || v9 > v10))
    {
      [(AppReceiptOperationResult *)self setSoonestExpirationDate:date];

      [(AppReceiptOperationResult *)self setSoonestExpiring:expiring];
    }
  }
}

- (void)addRevoked:(id)revoked
{
  if (revoked)
  {
    revoked = self->_revoked;
    if (!revoked)
    {
      revoked = [[NSMutableSet alloc] initWithCapacity:5];
      self->_revoked = revoked;
    }

    [(NSMutableSet *)revoked addObject:revoked];
  }
}

- (void)addRefreshed:(id)refreshed
{
  if (refreshed)
  {
    refreshed = self->_refreshed;
    if (!refreshed)
    {
      refreshed = [[NSMutableSet alloc] initWithCapacity:5];
      self->_refreshed = refreshed;
    }

    [(NSMutableSet *)refreshed addObject:refreshed];
  }
}

@end