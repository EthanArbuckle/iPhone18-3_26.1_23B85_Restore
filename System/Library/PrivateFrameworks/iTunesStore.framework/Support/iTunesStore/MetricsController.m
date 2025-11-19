@interface MetricsController
+ (id)sharedInstance;
- (BOOL)_hasEntitlements:(id)a3;
- (MetricsController)init;
- (id)_operationQueue;
- (void)_cancelBackoffRetryTimer;
- (void)_reportEvents;
- (void)_reportEventsIfNeeded;
- (void)_scheduleBackoffRetry;
- (void)_sendUnentitledResponseToMessage:(id)a3 connection:(id)a4;
- (void)configureDuet;
- (void)dealloc;
- (void)getInternalSettingsWithMessage:(id)a3 connection:(id)a4;
- (void)insertEventWithMessage:(id)a3 connection:(id)a4;
- (void)observeXPCServer:(id)a3;
- (void)recordAnalyticsWithMetricsDialogEvent:(id)a3 forTopic:(id)a4;
- (void)recordAnalyticsWithMetricsDialogEventWithMessage:(id)a3 connection:(id)a4;
- (void)reportEventsWithMessage:(id)a3 connection:(id)a4;
- (void)setInternalSettingsWithMessage:(id)a3 connection:(id)a4;
@end

@implementation MetricsController

- (MetricsController)init
{
  v10.receiver = self;
  v10.super_class = MetricsController;
  v2 = [(MetricsController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.MetricsController", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = objc_alloc_init(SSMetricsEventController);
    eventController = v2->_eventController;
    v2->_eventController = v5;

    v7 = objc_autoreleasePoolPush();
    v8 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:&off_10034CD48];
    [(SSMetricsEventController *)v2->_eventController setGlobalConfiguration:v8];

    objc_autoreleasePoolPop(v7);
    [(MetricsController *)v2 configureDuet];
  }

  return v2;
}

- (void)dealloc
{
  backoffRetryTimer = self->_backoffRetryTimer;
  if (backoffRetryTimer)
  {
    dispatch_source_cancel(backoffRetryTimer);
  }

  if (self->_operationQueue)
  {
    v4 = +[Daemon daemon];
    [v4 removeKeepAliveOperationQueue:self->_operationQueue];

    [(ISOperationQueue *)self->_operationQueue cancelAllOperations];
  }

  v5.receiver = self;
  v5.super_class = MetricsController;
  [(MetricsController *)&v5 dealloc];
}

+ (id)sharedInstance
{
  if (qword_1003840D8 != -1)
  {
    sub_1002725C8();
  }

  v3 = qword_1003840D0;

  return v3;
}

- (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:self selector:"getInternalSettingsWithMessage:connection:" forMessage:128];
  [v4 addObserver:self selector:"insertEventWithMessage:connection:" forMessage:110];
  [v4 addObserver:self selector:"reportEventsWithMessage:connection:" forMessage:114];
  [v4 addObserver:self selector:"recordAnalyticsWithMetricsDialogEventWithMessage:connection:" forMessage:197];
  [v4 addObserver:self selector:"setInternalSettingsWithMessage:connection:" forMessage:129];
}

- (void)recordAnalyticsWithMetricsDialogEvent:(id)a3 forTopic:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v11 = [(AnalyticsRecordingOperation *)v9 shouldLog];
    if ([(AnalyticsRecordingOperation *)v9 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [(AnalyticsRecordingOperation *)v9 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v14 = v19;
      LODWORD(v16) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_16;
      }

      v13 = [NSString stringWithCString:v15 encoding:4, &v18, v16];
      free(v15);
      SSFileLog();
    }

    goto LABEL_16;
  }

  v7 = [AnalyticsRecordingOperation alloc];
  v17 = v5;
  v8 = [NSArray arrayWithObjects:&v17 count:1];
  v9 = [(AnalyticsRecordingOperation *)v7 initWithMetricsEvents:v8];

  if (v6)
  {
    [(AnalyticsRecordingOperation *)v9 setEventTopicOverride:v6];
  }

  v10 = +[ISOperationQueue mainQueue];
  [v10 addOperation:v9];

LABEL_16:
}

- (void)configureDuet
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0EA4;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)getInternalSettingsWithMessage:(id)a3 connection:(id)a4
{
  connection = a4;
  v6 = a3;
  if ([(MetricsController *)self _hasEntitlements:connection])
  {
    reply = xpc_dictionary_create_reply(v6);

    v8 = SSVMetricsInternalSettingReportingFrequency;
    v9 = kSSUserDefaultsIdentifier;
    CFPreferencesAppSynchronize(kSSUserDefaultsIdentifier);
    v10 = CFPreferencesCopyAppValue(v8, v9);
    if (v10)
    {
      v11 = v10;
      [(__CFString *)v8 UTF8String];
      SSXPCDictionarySetCFObject();
      CFRelease(v11);
    }

    xpc_connection_send_message(connection, reply);
  }

  else
  {
    [(MetricsController *)self _sendUnentitledResponseToMessage:v6 connection:connection];
    reply = v6;
  }
}

- (void)insertEventWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(MetricsController *)self _hasEntitlements:v7])
  {
    [(MetricsController *)self _sendUnentitledResponseToMessage:v6 connection:v7];
    goto LABEL_21;
  }

  v26 = 0;
  v8 = SSXPCConnectionCopyClientIdentifier();
  objc_opt_class();
  v9 = SSXPCDictionaryCopyObjectWithClass();
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v14 = objc_opt_class();
  v15 = v14;
  v27 = 138412802;
  v28 = v14;
  v29 = 1024;
  v30 = [v9 count];
  v31 = 2112;
  v32 = v8;
  LODWORD(v24) = 28;
  v23 = &v27;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v13 = [NSString stringWithCString:v16 encoding:4, &v27, v24];
    free(v16);
    v23 = v13;
    SSFileLog();
LABEL_12:
  }

  eventController = self->_eventController;
  v25 = 0;
  v18 = [(SSMetricsEventController *)eventController insertEventSummaries:v9 error:&v25];
  v19 = v25;
  reply = xpc_dictionary_create_reply(v6);
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    if (v19)
    {
      v21 = [v19 code];
    }

    else
    {
      v21 = 100;
      v19 = SSError();
    }

    SSXPCDictionarySetObject();
  }

  v22 = [NSNumber numberWithInteger:v21, v23];
  SSXPCDictionarySetObject();

  xpc_connection_send_message(v7, reply);
LABEL_21:
}

- (void)recordAnalyticsWithMetricsDialogEventWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MetricsController *)self _hasEntitlements:v7])
  {
    v8 = [SSMetricsDialogEvent alloc];
    v9 = xpc_dictionary_get_value(v6, "1");
    v10 = [v8 initWithXPCEncoding:v9];

    objc_opt_class();
    v11 = SSXPCDictionaryCopyObjectWithClass();
    if (v10)
    {
      v12 = [AnalyticsRecordingOperation alloc];
      v24 = v10;
      v13 = [NSArray arrayWithObjects:&v24 count:1];
      v14 = [(AnalyticsRecordingOperation *)v12 initWithMetricsEvents:v13];

      if (v11)
      {
        [(AnalyticsRecordingOperation *)v14 setEventTopicOverride:v11];
      }

      v15 = +[ISOperationQueue mainQueue];
      [v15 addOperation:v14];

      goto LABEL_18;
    }

    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v16 = [(AnalyticsRecordingOperation *)v14 shouldLog];
    if ([(AnalyticsRecordingOperation *)v14 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [(AnalyticsRecordingOperation *)v14 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      LODWORD(v23) = 138543362;
      *(&v23 + 4) = objc_opt_class();
      v19 = *(&v23 + 4);
      LODWORD(v22) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_18:

        reply = xpc_dictionary_create_reply(v6);
        xpc_dictionary_set_BOOL(reply, "0", v10 != 0);
        xpc_connection_send_message(v7, reply);

        goto LABEL_19;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, &v23, v22, v23];
      free(v20);
      SSFileLog();
    }

    goto LABEL_18;
  }

  [(MetricsController *)self _sendUnentitledResponseToMessage:v6 connection:v7];
LABEL_19:
}

- (void)reportEventsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MetricsController *)self _hasEntitlements:v7])
  {
    v26 = 0;
    v8 = SSXPCConnectionCopyClientIdentifier();
    backoffRetryTimer = self->_backoffRetryTimer;
    v10 = +[SSLogConfig sharedDaemonConfig];
    v11 = v10;
    if (backoffRetryTimer)
    {
      if (!v10)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v11 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v27 = 138412546;
        v28 = objc_opt_class();
        v29 = 2112;
        v30 = v8;
        v15 = v28;
        LODWORD(v24) = 22;
        v16 = _os_log_send_and_compose_impl();

        if (!v16)
        {
LABEL_14:

LABEL_28:
          reply = xpc_dictionary_create_reply(v6);
          SSXPCDictionarySetObject();
          xpc_connection_send_message(v7, reply);

          goto LABEL_29;
        }

        v14 = [NSString stringWithCString:v16 encoding:4, &v27, v24];
        free(v16);
        SSFileLog();
      }

      goto LABEL_14;
    }

    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v17 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v11 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v27 = 138412546;
      v28 = objc_opt_class();
      v29 = 2112;
      v30 = v8;
      v20 = v28;
      LODWORD(v24) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_27:

        dispatchQueue = self->_dispatchQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001E202C;
        block[3] = &unk_100327110;
        block[4] = self;
        dispatch_async(dispatchQueue, block);
        goto LABEL_28;
      }

      v19 = [NSString stringWithCString:v21 encoding:4, &v27, v24];
      free(v21);
      SSFileLog();
    }

    goto LABEL_27;
  }

  [(MetricsController *)self _sendUnentitledResponseToMessage:v6 connection:v7];
LABEL_29:
}

- (void)setInternalSettingsWithMessage:(id)a3 connection:(id)a4
{
  original = a3;
  v6 = a4;
  if ([(MetricsController *)self _hasEntitlements:v6])
  {
    reply = xpc_dictionary_create_reply(original);
    v8 = xpc_dictionary_get_value(original, "1");
    v9 = v8;
    if (v8 && xpc_get_type(v8) == &_xpc_type_dictionary)
    {
      v10 = SSVMetricsInternalSettingReportingFrequency;
      [SSVMetricsInternalSettingReportingFrequency UTF8String];
      v11 = SSXPCDictionaryCopyCFObject();
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        TypeID = CFNullGetTypeID();
        v15 = kSSUserDefaultsIdentifier;
        if (v13 == TypeID)
        {
          v16 = v10;
          v17 = 0;
        }

        else
        {
          v16 = v10;
          v17 = v12;
        }

        CFPreferencesSetAppValue(v16, v17, kSSUserDefaultsIdentifier);
        CFRelease(v12);
      }

      else
      {
        v15 = kSSUserDefaultsIdentifier;
      }

      CFPreferencesAppSynchronize(v15);
    }

    xpc_connection_send_message(v6, reply);
  }

  else
  {
    [(MetricsController *)self _sendUnentitledResponseToMessage:original connection:v6];
  }
}

- (void)_cancelBackoffRetryTimer
{
  backoffRetryTimer = self->_backoffRetryTimer;
  if (backoffRetryTimer)
  {
    dispatch_source_cancel(backoffRetryTimer);
    v4 = self->_backoffRetryTimer;
    self->_backoffRetryTimer = 0;
  }
}

- (BOOL)_hasEntitlements:(id)a3
{
  v3 = a3;
  HasEntitlement = SSXPCConnectionHasEntitlement();
  v5 = SSXPCConnectionHasEntitlement();

  return (HasEntitlement | v5) & 1;
}

- (id)_operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(ISOperationQueue *)self->_operationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)self->_operationQueue setName:@"com.apple.itunesstored.MetricsController.report"];
    v6 = +[Daemon daemon];
    [v6 addKeepAliveOperationQueue:self->_operationQueue];

    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)_reportEvents
{
  v3 = [(MetricsController *)self _operationQueue];
  v4 = [v3 operationCount];

  if (v4 < 4)
  {
    v5 = [[AnalyticsReportingOperation alloc] initWithController:self->_eventController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001E2558;
    v13[3] = &unk_10032BE70;
    v13[4] = self;
    [(AnalyticsReportingOperation *)v5 setFinishBlock:v13];
    v11 = [(MetricsController *)self _operationQueue];
    [v11 addOperation:v5];

    goto LABEL_14;
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [(AnalyticsReportingOperation *)v5 shouldLog];
  if ([(AnalyticsReportingOperation *)v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(AnalyticsReportingOperation *)v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v14 = 138412546;
  v15 = objc_opt_class();
  v16 = 2112;
  v17 = &off_10034C1C8;
  v9 = v15;
  LODWORD(v12) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, &v14, v12];
    free(v10);
    SSFileLog();
LABEL_12:
  }

LABEL_14:
}

- (void)_reportEventsIfNeeded
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = [(SSMetricsEventController *)self->_eventController countUnreportedEventsBefore:v3];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4 >= 501)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v19 = 138543618;
      *&v19[4] = objc_opt_class();
      *&v19[12] = 2048;
      *&v19[14] = v4;
      v10 = *&v19[4];
      LODWORD(v18) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        [(MetricsController *)self _reportEvents];
        return;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, v19, v18, *v19, *&v19[16]];
      free(v11);
      SSFileLog();
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v12 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v6 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2048;
    *&v19[14] = v4;
    v15 = *&v19[4];
    LODWORD(v18) = 22;
    v16 = _os_log_send_and_compose_impl();

    if (v16)
    {
      v17 = [NSString stringWithCString:v16 encoding:4, v19, v18, *v19, *&v19[8]];
      free(v16);
      SSFileLog();
    }
  }

  else
  {
  }
}

- (void)_scheduleBackoffRetry
{
  backoffRetryCount = self->_backoffRetryCount;
  if (backoffRetryCount >= 4)
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v9 = self->_backoffRetryCount + 1;
      v27 = 138412546;
      v28 = v8;
      v29 = 2048;
      v30 = v9;
      v10 = v8;
      LODWORD(v25) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        [(MetricsController *)self _cancelBackoffRetry];
        return;
      }

      v7 = [NSString stringWithCString:v11 encoding:4, &v27, v25];
      free(v11);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v12 = 2 << backoffRetryCount;
  [(MetricsController *)self _cancelBackoffRetryTimer];
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  v14 = v12;
  v15 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v16 = v15 | 2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v13 OSLogObject];
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v16 &= 2u;
  }

  if (!v16)
  {
    goto LABEL_24;
  }

  v27 = 138412546;
  v28 = objc_opt_class();
  v29 = 2048;
  v30 = v14;
  v18 = v28;
  LODWORD(v25) = 22;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v17 = [NSString stringWithCString:v19 encoding:4, &v27, v25];
    free(v19);
    SSFileLog();
LABEL_24:
  }

  v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  backoffRetryTimer = self->_backoffRetryTimer;
  self->_backoffRetryTimer = v20;

  v22 = self->_backoffRetryTimer;
  v23 = dispatch_time(0, 60000000000 * v14);
  dispatch_source_set_timer(v22, v23, 0, 0);
  v24 = self->_backoffRetryTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001E2C64;
  handler[3] = &unk_100327110;
  handler[4] = self;
  dispatch_source_set_event_handler(v24, handler);
  dispatch_resume(self->_backoffRetryTimer);
  ++self->_backoffRetryCount;
}

- (void)_sendUnentitledResponseToMessage:(id)a3 connection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LODWORD(v16) = 138412290;
  *(&v16 + 4) = objc_opt_class();
  v11 = *(&v16 + 4);
  LODWORD(v15) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [NSString stringWithCString:v12 encoding:4, &v16, v15, v16];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  reply = xpc_dictionary_create_reply(v6);
  v14 = SSError();
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
  xpc_connection_send_message(v5, reply);
}

@end