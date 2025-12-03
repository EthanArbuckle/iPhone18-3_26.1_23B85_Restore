@interface SUBTransaction
+ (id)getPendingTransactions;
+ (unint64_t)getPendingTransactionsCount;
- (SUBTransaction)initWithName:(id)name;
- (SUBTransaction)initWithNameAndTimeout:(id)timeout timeOut:(unint64_t)out;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SUBTransaction

+ (id)getPendingTransactions
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (qword_100033990 != -1)
  {
    sub_100019BD0();
  }

  v3 = qword_100033988;
  objc_sync_exit(v2);

  return v3;
}

+ (unint64_t)getPendingTransactionsCount
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = +[SUBTransaction getPendingTransactions];
  v4 = [v3 count];

  objc_sync_exit(v2);
  return v4;
}

- (SUBTransaction)initWithNameAndTimeout:(id)timeout timeOut:(unint64_t)out
{
  timeoutCopy = timeout;
  v28.receiver = self;
  v28.super_class = SUBTransaction;
  v8 = [(SUBTransaction *)&v28 init];
  if (v8)
  {
    v9 = timeoutCopy;
    [timeoutCopy UTF8String];
    v10 = os_transaction_create();
    v11 = *(v8 + 1);
    *(v8 + 1) = v10;

    v12 = objc_opt_class();
    objc_sync_enter(v12);
    v13 = +[SUBTransaction getPendingTransactions];
    [v13 addObject:*(v8 + 1)];

    objc_sync_exit(v12);
    objc_storeStrong(v8 + 2, timeout);
    *(v8 + 3) = out;
    v14 = *(v8 + 5);
    *(v8 + 5) = 0;

    if (*(v8 + 3))
    {
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_create("com.apple.nanosubridged.timerqueue", v15);
      v17 = *(v8 + 5);
      *(v8 + 5) = v16;

      v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v8 + 5));
      v19 = *(v8 + 4);
      *(v8 + 4) = v18;

      v20 = dispatch_time(0, 1000000000 * out);
      dispatch_source_set_timer(*(v8 + 4), v20, 0xFFFFFFFFFFFFFFFFLL, 0);
      v21 = *(v8 + 4);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100012344;
      handler[3] = &unk_10002CBD0;
      v27 = v8;
      dispatch_source_set_event_handler(v21, handler);
      dispatch_activate(*(v8 + 4));
    }

    v22 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = +[SUBTransaction getPendingTransactionsCount];
      *buf = 134218242;
      v30 = v24;
      v31 = 2112;
      v32 = timeoutCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[SUBtransaction]: TX ⬆: Total: %lu Current: %@", buf, 0x16u);
    }
  }

  return v8;
}

- (SUBTransaction)initWithName:(id)name
{
  nameCopy = name;
  v5 = [[SUBTransaction alloc] initWithNameAndTimeout:nameCopy timeOut:0];

  return v5;
}

- (void)dealloc
{
  [(SUBTransaction *)self invalidate];
  v3.receiver = self;
  v3.super_class = SUBTransaction;
  [(SUBTransaction *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  transaction = [(SUBTransaction *)self transaction];

  if (transaction)
  {
    timerSource = [(SUBTransaction *)self timerSource];

    if (timerSource)
    {
      timerSource2 = [(SUBTransaction *)self timerSource];
      dispatch_source_cancel(timerSource2);
    }

    v7 = +[SUBTransaction getPendingTransactions];
    transaction2 = [(SUBTransaction *)self transaction];
    [v7 removeObject:transaction2];

    [(SUBTransaction *)self setTransaction:0];
    v9 = softwareupdatebridge_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[SUBTransaction getPendingTransactionsCount];
      transactionName = [(SUBTransaction *)self transactionName];
      v12 = 134218242;
      v13 = v10;
      v14 = 2112;
      v15 = transactionName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[SUBtransaction]: TX ⬇: Total: %lu Current: %@", &v12, 0x16u);
    }
  }

  objc_sync_exit(v3);
}

@end