@interface DADiagnosticsSessionAvailability
- (BOOL)isInternalInstall;
- (id)getSessionID;
- (id)serialNumbers;
- (void)checkAvailabilityWithReply:(id)a3;
- (void)checkAvailabilityWithTicketNumber:(id)a3 timeout:(double)a4 exitWhenDone:(BOOL)a5 completion:(id)a6;
- (void)checkEnhancedLoggingStateWithReply:(id)a3;
- (void)clearASTServerURL;
- (void)rebootIntoCheckerBoard;
- (void)setASTServerURL:(id)a3;
@end

@implementation DADiagnosticsSessionAvailability

- (void)checkAvailabilityWithReply:(id)a3
{
  v4 = a3;
  xpc_transaction_interrupt_clean_exit();
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100005574;
  v8[4] = sub_1000055A0;
  v9 = [v4 copy];
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000055A8;
  block[3] = &unk_100014760;
  objc_copyWeak(&v7, &location);
  block[4] = v8;
  dispatch_sync(v5, block);

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)checkAvailabilityWithTicketNumber:(id)a3 timeout:(double)a4 exitWhenDone:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A8C;
  block[3] = &unk_1000147D8;
  block[4] = self;
  v16 = v10;
  v18 = a4;
  v17 = v11;
  v19 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

- (void)rebootIntoCheckerBoard
{
  if ([(DADiagnosticsSessionAvailability *)self isInternalInstall])
  {

    +[CBSUtilities rebootToCheckerBoard];
  }
}

- (void)setASTServerURL:(id)a3
{
  v6 = a3;
  if ([(DADiagnosticsSessionAvailability *)self isInternalInstall])
  {
    v4 = +[DANvramUtil sharedInstance];
    v5 = [kASTServerURLCommand copy];
    [v4 _writeNVRamVariable:v5 value:v6];
  }
}

- (void)clearASTServerURL
{
  if ([(DADiagnosticsSessionAvailability *)self isInternalInstall])
  {
    v3 = +[DANvramUtil sharedInstance];
    v2 = [kASTServerURLCommand copy];
    [v3 _clearNVRamVariable:v2];
  }
}

- (id)getSessionID
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100006238;
  v16 = &unk_100014800;
  v18 = &v19;
  v3 = dispatch_semaphore_create(0);
  v17 = v3;
  [(DADiagnosticsSessionAvailability *)self checkAvailabilityWithTicketNumber:0 timeout:0 exitWhenDone:&v13 response:30.0];
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waiting for response to availability check", buf, 2u);
  }

  v5 = dispatch_time(0, 30000000000);
  v6 = dispatch_semaphore_wait(v3, v5);
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v20 + 24);
    *buf = 134218240;
    v24 = v6;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished waiting for response to availability check. timedOut: %ld validSession: %d", buf, 0x12u);
  }

  if (*(v20 + 24) == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
    v9 = CFPreferencesCopyAppValue(@"InCurrentSession", @"com.apple.Diagnostics");
    if ([v9 BOOLValue])
    {
      v10 = @"IN_CURRENT_SESSION";
    }

    else
    {
      v10 = +[NSString string];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session status: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (BOOL)isInternalInstall
{
  if (qword_10001C348 != -1)
  {
    sub_10000B884();
  }

  return byte_10001C340;
}

- (void)checkEnhancedLoggingStateWithReply:(id)a3
{
  v3 = a3;
  v4 = +[ELSManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000640C;
  v6[3] = &unk_100014848;
  v7 = v3;
  v5 = v3;
  [v4 refreshWithCompletion:v6];
}

- (id)serialNumbers
{
  v2 = +[NSMutableSet set];
  v3 = [NSMutableSet setWithObjects:objc_opt_class(), 0];
  [v3 addObject:objc_opt_class()];
  v4 = +[CBSUtilities isCheckerBoardActive];
  if ((BYSetupAssistantNeedsToRun() & 1) != 0 || v4 & 1 | ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0))
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Only reporting serial number for local device and physically connected accessories because Buddy is not finished", buf, 2u);
    }
  }

  else
  {
    [v3 addObject:objc_opt_class()];
    [v3 addObject:objc_opt_class()];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [DADeviceObserverAggregator aggregatorWithObserverClasses:v3];
  v8 = dispatch_semaphore_create(0);
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Discovering devices…", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006724;
  v14[3] = &unk_100014898;
  v10 = v2;
  v15 = v10;
  v16 = v8;
  v11 = v8;
  [v7 discoverAllDevicesWithCompletionHandler:v14];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v6);
  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Discovery complete, found: %@", buf, 0xCu);
  }

  return v10;
}

@end