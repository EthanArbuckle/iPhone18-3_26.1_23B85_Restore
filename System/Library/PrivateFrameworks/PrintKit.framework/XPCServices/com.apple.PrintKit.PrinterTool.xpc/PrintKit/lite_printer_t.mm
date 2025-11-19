@interface lite_printer_t
+ (id)existingPrinterWithEndpoint:(id)a3;
+ (id)gatherLogInfo;
+ (void)_startPrinterResolution:(id)a3 session:(id)a4 queue:(id)a5 completionHandler:(id)a6;
+ (void)realizePrinterWithResolvedEndpoint:(id)a3 session:(id)a4 completionHandler:(id)a5;
+ (void)withLitePrinterForSessionEndpoint:(id)a3 completionHandler:(id)a4;
- (NSString)displayName;
- (id)description;
- (id)logInfo;
- (id)sendSingleIPPRequest:(const Real_IPP_Message *)a3 session:(id)a4;
- (lite_printer_t)initWithBrowseInfo:(id)a3 description:(id)a4;
- (void)_logInitialization;
- (void)_updateDescPrinterDescription:(id)a3;
- (void)checkAccessWithSession:(id)a3 completionHandler:(id)a4;
- (void)clearCredential;
- (void)forceRefreshCurrentDescriptionForSession:(id)a3 completionHandler:(id)a4;
- (void)identifyPrinterWithSession:(id)a3 message:(id)a4 actions:(id)a5;
- (void)refreshCurrentDescriptionForSession:(id)a3 completionHandler:(id)a4;
- (void)sendSingleIPPRequest:(const Real_IPP_Message *)a3 session:(id)a4 completionHandler:(id)a5;
- (void)setReasonsBits:(unsigned int)a3;
- (void)updatePrinterState:(id)a3 message:(id)a4;
@end

@implementation lite_printer_t

- (lite_printer_t)initWithBrowseInfo:(id)a3 description:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = lite_printer_t;
  v9 = [(lite_printer_t *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_browseInfo, a3);
    objc_storeStrong(&v10->_printerDescription, a4);
    v11 = +[NSDate date];
    printerDescriptionTime = v10->_printerDescriptionTime;
    v10->_printerDescriptionTime = v11;

    v13 = objc_opt_new();
    printerOperationQueue = v10->_printerOperationQueue;
    v10->_printerOperationQueue = v13;

    if (qword_1000C7BB8 != -1)
    {
      sub_10006033C();
    }

    [(NSOperationQueue *)v10->_printerOperationQueue setUnderlyingQueue:qword_1000C7BB0];
    [(NSOperationQueue *)v10->_printerOperationQueue setMaxConcurrentOperationCount:4];
    [(lite_printer_t *)v10 _logInitialization];
  }

  return v10;
}

- (void)setReasonsBits:(unsigned int)a3
{
  if (self->_reasons != a3)
  {
    self->_reasons = a3;
    self->_reasons_changed = time(0);
  }
}

- (void)updatePrinterState:(id)a3 message:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_printerStateMessage, a4);
  v8 = a4;
  printerStateReasons = self->_printerStateReasons;
  self->_printerStateReasons = v6;
}

- (void)_logInitialization
{
  v3 = [(PKPrinterBrowseInfo *)self->_browseInfo txtRecord];
  if (v3)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000D694;
    v17[3] = &unk_100095730;
    v4 = objc_opt_new();
    v18 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v17];
    v5 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(lite_printer_t *)self displayName];
      v7 = v6;
      v8 = [v6 UTF8String];
      v9 = [v4 componentsJoinedByString:@", "];
      *buf = 134218498;
      v20 = self;
      v21 = 2082;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Printer<%p> %{public}s] init from txt {%@}", buf, 0x20u);
    }
  }

  else if (self->_printerDescription)
  {
    v4 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(lite_printer_t *)self displayName];
      v11 = [v10 UTF8String];
      v12 = [(PKPrinterDescription *)self->_printerDescription deviceID];
      *buf = 134218498;
      v20 = self;
      v21 = 2082;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Printer<%p> %{public}s] init from desc device id {%@}", buf, 0x20u);
    }
  }

  else
  {
    v4 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(lite_printer_t *)self displayName];
      v14 = [v13 UTF8String];
      browseInfo = self->_browseInfo;
      printerDescription = self->_printerDescription;
      *buf = 134218754;
      v20 = self;
      v21 = 2082;
      v22 = v14;
      v23 = 2112;
      v24 = browseInfo;
      v25 = 2112;
      v26 = printerDescription;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Printer<%p> %{public}s] init from info {%@} desc {%@}", buf, 0x2Au);
    }
  }
}

+ (id)gatherLogInfo
{
  liteLockPrinters();
  v2 = objc_opt_new();
  v3 = qword_1000C7B90;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D85C;
  v6[3] = &unk_100095758;
  v4 = v2;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  pthread_mutex_unlock(&stru_1000C4B60);

  return v4;
}

- (id)logInfo
{
  v5 = @"desc";
  v2 = [(lite_printer_t *)self description];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)description
{
  v3 = [(lite_printer_t *)self currentJob];
  if (v3)
  {
    v4 = [(lite_printer_t *)self currentJob];
    v5 = [v4 description];
  }

  else
  {
    v5 = @"idle";
  }

  v10.receiver = self;
  v10.super_class = lite_printer_t;
  v6 = [(lite_printer_t *)&v10 description];
  v7 = [(lite_printer_t *)self displayName];
  v8 = [NSString stringWithFormat:@"%@ { '%@', %@ }", v6, v7, v5];

  return v8;
}

- (void)sendSingleIPPRequest:(const Real_IPP_Message *)a3 session:(id)a4 completionHandler:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = [a3->var1 op_or_status];
  v10 = 0;
  if (v9 > 78)
  {
    if (v9 == 79 || v9 == 16386)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v9 != 11 && v9 != 60)
  {
LABEL_9:
    v10 = [(lite_printer_t *)self displayName];
  }

LABEL_10:
  v12 = [device_http_t alloc];
  v13 = [(lite_printer_t *)self device_uri];
  v14 = [v17 ippURL:v13];
  v15 = [(device_http_t *)v12 initWithSessionURL:v14 displayNameForCertTrust:v10];

  v16 = [(lite_printer_t *)self bonjourName];
  sub_10000DC44(v16, v15);

  [(device_http_t *)v15 sendSingleIPPRequest:a3 completionHandler:v8];
}

- (id)sendSingleIPPRequest:(const Real_IPP_Message *)a3 session:(id)a4
{
  v6 = a4;
  v7 = [a3->var1 op_or_status];
  v8 = 0;
  if (v7 > 78)
  {
    if (v7 == 79 || v7 == 16386)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7 != 11 && v7 != 60)
  {
LABEL_9:
    v8 = [(lite_printer_t *)self displayName];
  }

LABEL_10:
  v10 = [device_http_t alloc];
  v11 = [(lite_printer_t *)self device_uri];
  v12 = [v6 ippURL:v11];
  v13 = [(device_http_t *)v10 initWithSessionURL:v12 displayNameForCertTrust:v8];

  v14 = [(lite_printer_t *)self bonjourName];
  sub_10000DC44(v14, v13);

  v15 = [(device_http_t *)v13 sendSingleIPPRequest:a3];

  return v15;
}

- (void)clearCredential
{
  defaultCredentialForPrinter = self->_defaultCredentialForPrinter;
  self->_defaultCredentialForPrinter = 0;
}

+ (id)existingPrinterWithEndpoint:(id)a3
{
  v3 = a3;
  liteLockPrinters();
  v4 = [qword_1000C7B90 objectForKeyedSubscript:v3];
  pthread_mutex_unlock(&stru_1000C4B60);

  return v4;
}

+ (void)realizePrinterWithResolvedEndpoint:(id)a3 session:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (qword_1000C7B98 != -1)
  {
    sub_100060364();
  }

  v10 = qword_1000C7BA0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E0C4;
  block[3] = &unk_100095818;
  v16 = v8;
  v17 = v9;
  v15 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  dispatch_async(v10, block);
}

+ (void)_startPrinterResolution:(id)a3 session:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 resolvedURL];
  v14 = [v10 ippURL:v13];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E720;
  v20[3] = &unk_100095908;
  v15 = v9;
  v21 = v15;
  v16 = v11;
  v22 = v16;
  v17 = v12;
  v25 = v17;
  v18 = v10;
  v23 = v18;
  v24 = v14;
  v19 = v14;
  [device_http_t deviceHTTPForSessionURL:v19 completionHandler:v20];
}

+ (void)withLitePrinterForSessionEndpoint:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endpoint];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000F450;
  v11[3] = &unk_100095930;
  v9 = v7;
  v13 = v9;
  v14 = a1;
  v10 = v6;
  v12 = v10;
  [v8 resolveWithinPrinterToolWithTimeout:v11 completionHandler:30.0];
}

- (NSString)displayName
{
  v2 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  v3 = [v2 displayNameForPrintKitUI];

  return v3;
}

- (void)identifyPrinterWithSession:(id)a3 message:(id)a4 actions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(lite_printer_t *)self device_uri];
  v12 = [v8 ippURL:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000F7D8;
  v15[3] = &unk_100095958;
  v15[4] = self;
  v13 = v9;
  v16 = v13;
  v14 = v10;
  v17 = v14;
  [device_http_t deviceHTTPForSessionURL:v12 completionHandler:v15];
}

- (void)checkAccessWithSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  printerOperationQueue = self->_printerOperationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000FA24;
  v11[3] = &unk_100095980;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(NSOperationQueue *)printerOperationQueue addOperationWithBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)refreshCurrentDescriptionForSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  printerDescription = self->_printerDescription;
  if (printerDescription)
  {
    (*(v7 + 2))(v7, printerDescription, self->_browseInfo);
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:self->_printerDescriptionTime];
    if (v11 > 5.0)
    {
      v12 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(lite_printer_t *)self displayName];
        v16 = 134218242;
        v17 = self;
        v18 = 2082;
        v19 = [v13 UTF8String];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Printer<%p> %{public}s] refreshing printer description after timeout", &v16, 0x16u);
      }

      v14 = [v10 dateByAddingTimeInterval:30.0];
      printerDescriptionTime = self->_printerDescriptionTime;
      self->_printerDescriptionTime = v14;

      [(lite_printer_t *)self forceRefreshCurrentDescriptionForSession:v6 completionHandler:0];
    }
  }

  else
  {
    [(lite_printer_t *)self forceRefreshCurrentDescriptionForSession:v6 completionHandler:v7];
  }
}

- (void)forceRefreshCurrentDescriptionForSession:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_100010D5C(v7, 0xBu, @"forceRefreshCurrentDescriptionForSession");
}

- (void)_updateDescPrinterDescription:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_storeStrong(&self->_printerDescription, a3);
  }

  v5 = +[NSDate date];
  printerDescriptionTime = self->_printerDescriptionTime;
  self->_printerDescriptionTime = v5;
}

@end