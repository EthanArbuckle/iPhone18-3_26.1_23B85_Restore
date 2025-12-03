@interface SendInstallAttributionPingbackOperation
- (SendInstallAttributionPingbackOperation)initWithAdamId:(id)id;
- (void)run;
@end

@implementation SendInstallAttributionPingbackOperation

- (SendInstallAttributionPingbackOperation)initWithAdamId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = SendInstallAttributionPingbackOperation;
  v5 = [(SendInstallAttributionPingbackOperation *)&v9 init];
  if (v5)
  {
    v6 = [idCopy copy];
    appAdamId = v5->_appAdamId;
    v5->_appAdamId = v6;
  }

  return v5;
}

- (void)run
{
  v3 = +[PurchaseActionsManager sharedInstance];
  [v3 setPingbackPendingForApp:self->_appAdamId];

  [(SendInstallAttributionPingbackOperation *)self setSuccess:1];

  [(SendInstallAttributionPingbackOperation *)self setError:0];
}

@end