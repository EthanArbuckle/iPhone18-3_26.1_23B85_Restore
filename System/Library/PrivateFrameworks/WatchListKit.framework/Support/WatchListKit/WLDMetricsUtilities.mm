@interface WLDMetricsUtilities
+ (void)sendMetricsEvents:(id)events metricsController:(id)controller;
@end

@implementation WLDMetricsUtilities

+ (void)sendMetricsEvents:(id)events metricsController:(id)controller
{
  eventsCopy = events;
  controllerCopy = controller;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDMetricsUtilities.sendMetricsEvents"];
  if ([eventsCopy count])
  {
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = eventsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WLDMetricsUtilities - Will send events: %@", buf, 0xCu);
    }

    [controllerCopy enqueueEvents:eventsCopy];
    flush = [controllerCopy flush];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __59__WLDMetricsUtilities_sendMetricsEvents_metricsController___block_invoke;
    v10[3] = &unk_100045128;
    v10[4] = &v11;
    [flush addFinishBlock:v10];
  }

  else
  {
    v9 = WLKSystemLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDMetricsUtilities - No metrics to report.", buf, 2u);
    }

    flush = v12[5];
    v12[5] = 0;
  }

  _Block_object_dispose(&v11, 8);
}

void __59__WLDMetricsUtilities_sendMetricsEvents_metricsController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = WLKSystemLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v12 = 138412290;
      v13 = v4;
      v7 = "WLDMetricsUtilities - Error flushing events: %@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v12) = 0;
    v7 = "WLDMetricsUtilities - Events flushed.";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

@end