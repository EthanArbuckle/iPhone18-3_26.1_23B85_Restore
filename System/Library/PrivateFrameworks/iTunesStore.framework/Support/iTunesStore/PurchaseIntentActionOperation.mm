@interface PurchaseIntentActionOperation
- (PurchaseIntentActionOperation)initWithRequest:(id)a3;
- (void)run;
@end

@implementation PurchaseIntentActionOperation

- (PurchaseIntentActionOperation)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PurchaseIntentActionOperation;
  v5 = [(PurchaseIntentActionOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 appBundleId];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v6;

    v5->_action = [v4 action];
  }

  return v5;
}

- (void)run
{
  action = self->_action;
  if (action == 1)
  {
    v7 = +[PurchaseActionsManager sharedInstance];
    [v7 deletePurchaseIntentsForApp:self->_appBundleId];
    goto LABEL_17;
  }

  if (action == 2)
  {
    v4 = +[PurchaseActionsManager sharedInstance];
    [v4 resetTimestampsForApp:self->_appBundleId];

    v5 = +[SpringBoardUtility sharedInstance];
    appBundleId = self->_appBundleId;
    v18 = 0;
    [v5 launchApplicationWithIdentifier:appBundleId options:0 error:&v18];
    v7 = v18;

    if (!v7)
    {
LABEL_17:

      goto LABEL_18;
    }

    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = self->_appBundleId;
      v19 = 138543874;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v7;
      v14 = v12;
      LODWORD(v17) = 32;
      v16 = &v19;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        goto LABEL_17;
      }

      v11 = [NSString stringWithCString:v15 encoding:4, &v19, v17];
      free(v15);
      v16 = v11;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_18:
  [(PurchaseIntentActionOperation *)self setSuccess:1, v16];
  [(PurchaseIntentActionOperation *)self setError:0];
}

@end