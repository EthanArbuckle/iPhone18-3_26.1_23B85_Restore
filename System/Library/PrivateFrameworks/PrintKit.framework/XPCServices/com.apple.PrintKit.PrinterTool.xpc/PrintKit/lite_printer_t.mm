@interface lite_printer_t
+ (id)existingPrinterWithEndpoint:(id)endpoint;
+ (id)gatherLogInfo;
+ (void)_startPrinterResolution:(id)resolution session:(id)session queue:(id)queue completionHandler:(id)handler;
+ (void)realizePrinterWithResolvedEndpoint:(id)endpoint session:(id)session completionHandler:(id)handler;
+ (void)withLitePrinterForSessionEndpoint:(id)endpoint completionHandler:(id)handler;
- (NSString)displayName;
- (id)description;
- (id)logInfo;
- (id)sendSingleIPPRequest:(const Real_IPP_Message *)request session:(id)session;
- (lite_printer_t)initWithBrowseInfo:(id)info description:(id)description;
- (void)_logInitialization;
- (void)_updateDescPrinterDescription:(id)description;
- (void)checkAccessWithSession:(id)session completionHandler:(id)handler;
- (void)clearCredential;
- (void)forceRefreshCurrentDescriptionForSession:(id)session completionHandler:(id)handler;
- (void)identifyPrinterWithSession:(id)session message:(id)message actions:(id)actions;
- (void)refreshCurrentDescriptionForSession:(id)session completionHandler:(id)handler;
- (void)sendSingleIPPRequest:(const Real_IPP_Message *)request session:(id)session completionHandler:(id)handler;
- (void)setReasonsBits:(unsigned int)bits;
- (void)updatePrinterState:(id)state message:(id)message;
@end

@implementation lite_printer_t

- (lite_printer_t)initWithBrowseInfo:(id)info description:(id)description
{
  infoCopy = info;
  descriptionCopy = description;
  v16.receiver = self;
  v16.super_class = lite_printer_t;
  v9 = [(lite_printer_t *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_browseInfo, info);
    objc_storeStrong(&v10->_printerDescription, description);
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

- (void)setReasonsBits:(unsigned int)bits
{
  if (self->_reasons != bits)
  {
    self->_reasons = bits;
    self->_reasons_changed = time(0);
  }
}

- (void)updatePrinterState:(id)state message:(id)message
{
  stateCopy = state;
  objc_storeStrong(&self->_printerStateMessage, message);
  messageCopy = message;
  printerStateReasons = self->_printerStateReasons;
  self->_printerStateReasons = stateCopy;
}

- (void)_logInitialization
{
  txtRecord = [(PKPrinterBrowseInfo *)self->_browseInfo txtRecord];
  if (txtRecord)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000D694;
    v17[3] = &unk_100095730;
    v4 = objc_opt_new();
    v18 = v4;
    [txtRecord enumerateKeysAndObjectsUsingBlock:v17];
    v5 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(lite_printer_t *)self displayName];
      v7 = displayName;
      uTF8String = [displayName UTF8String];
      v9 = [v4 componentsJoinedByString:@", "];
      *buf = 134218498;
      selfCopy3 = self;
      v21 = 2082;
      v22 = uTF8String;
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
      displayName2 = [(lite_printer_t *)self displayName];
      uTF8String2 = [displayName2 UTF8String];
      deviceID = [(PKPrinterDescription *)self->_printerDescription deviceID];
      *buf = 134218498;
      selfCopy3 = self;
      v21 = 2082;
      v22 = uTF8String2;
      v23 = 2112;
      v24 = deviceID;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Printer<%p> %{public}s] init from desc device id {%@}", buf, 0x20u);
    }
  }

  else
  {
    v4 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      displayName3 = [(lite_printer_t *)self displayName];
      uTF8String3 = [displayName3 UTF8String];
      browseInfo = self->_browseInfo;
      printerDescription = self->_printerDescription;
      *buf = 134218754;
      selfCopy3 = self;
      v21 = 2082;
      v22 = uTF8String3;
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
  currentJob = [(lite_printer_t *)self currentJob];
  if (currentJob)
  {
    currentJob2 = [(lite_printer_t *)self currentJob];
    v5 = [currentJob2 description];
  }

  else
  {
    v5 = @"idle";
  }

  v10.receiver = self;
  v10.super_class = lite_printer_t;
  v6 = [(lite_printer_t *)&v10 description];
  displayName = [(lite_printer_t *)self displayName];
  v8 = [NSString stringWithFormat:@"%@ { '%@', %@ }", v6, displayName, v5];

  return v8;
}

- (void)sendSingleIPPRequest:(const Real_IPP_Message *)request session:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  op_or_status = [request->var1 op_or_status];
  displayName = 0;
  if (op_or_status > 78)
  {
    if (op_or_status == 79 || op_or_status == 16386)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (op_or_status != 11 && op_or_status != 60)
  {
LABEL_9:
    displayName = [(lite_printer_t *)self displayName];
  }

LABEL_10:
  v12 = [device_http_t alloc];
  device_uri = [(lite_printer_t *)self device_uri];
  v14 = [sessionCopy ippURL:device_uri];
  v15 = [(device_http_t *)v12 initWithSessionURL:v14 displayNameForCertTrust:displayName];

  bonjourName = [(lite_printer_t *)self bonjourName];
  sub_10000DC44(bonjourName, v15);

  [(device_http_t *)v15 sendSingleIPPRequest:request completionHandler:handlerCopy];
}

- (id)sendSingleIPPRequest:(const Real_IPP_Message *)request session:(id)session
{
  sessionCopy = session;
  op_or_status = [request->var1 op_or_status];
  displayName = 0;
  if (op_or_status > 78)
  {
    if (op_or_status == 79 || op_or_status == 16386)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (op_or_status != 11 && op_or_status != 60)
  {
LABEL_9:
    displayName = [(lite_printer_t *)self displayName];
  }

LABEL_10:
  v10 = [device_http_t alloc];
  device_uri = [(lite_printer_t *)self device_uri];
  v12 = [sessionCopy ippURL:device_uri];
  v13 = [(device_http_t *)v10 initWithSessionURL:v12 displayNameForCertTrust:displayName];

  bonjourName = [(lite_printer_t *)self bonjourName];
  sub_10000DC44(bonjourName, v13);

  v15 = [(device_http_t *)v13 sendSingleIPPRequest:request];

  return v15;
}

- (void)clearCredential
{
  defaultCredentialForPrinter = self->_defaultCredentialForPrinter;
  self->_defaultCredentialForPrinter = 0;
}

+ (id)existingPrinterWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  liteLockPrinters();
  v4 = [qword_1000C7B90 objectForKeyedSubscript:endpointCopy];
  pthread_mutex_unlock(&stru_1000C4B60);

  return v4;
}

+ (void)realizePrinterWithResolvedEndpoint:(id)endpoint session:(id)session completionHandler:(id)handler
{
  endpointCopy = endpoint;
  sessionCopy = session;
  handlerCopy = handler;
  if (qword_1000C7B98 != -1)
  {
    sub_100060364();
  }

  v10 = qword_1000C7BA0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E0C4;
  block[3] = &unk_100095818;
  v16 = sessionCopy;
  v17 = handlerCopy;
  v15 = endpointCopy;
  v11 = sessionCopy;
  v12 = handlerCopy;
  v13 = endpointCopy;
  dispatch_async(v10, block);
}

+ (void)_startPrinterResolution:(id)resolution session:(id)session queue:(id)queue completionHandler:(id)handler
{
  resolutionCopy = resolution;
  sessionCopy = session;
  queueCopy = queue;
  handlerCopy = handler;
  resolvedURL = [resolutionCopy resolvedURL];
  v14 = [sessionCopy ippURL:resolvedURL];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E720;
  v20[3] = &unk_100095908;
  v15 = resolutionCopy;
  v21 = v15;
  v16 = queueCopy;
  v22 = v16;
  v17 = handlerCopy;
  v25 = v17;
  v18 = sessionCopy;
  v23 = v18;
  v24 = v14;
  v19 = v14;
  [device_http_t deviceHTTPForSessionURL:v19 completionHandler:v20];
}

+ (void)withLitePrinterForSessionEndpoint:(id)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  endpoint = [endpointCopy endpoint];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000F450;
  v11[3] = &unk_100095930;
  v9 = handlerCopy;
  v13 = v9;
  selfCopy = self;
  v10 = endpointCopy;
  v12 = v10;
  [endpoint resolveWithinPrinterToolWithTimeout:v11 completionHandler:30.0];
}

- (NSString)displayName
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  displayNameForPrintKitUI = [bonjourName displayNameForPrintKitUI];

  return displayNameForPrintKitUI;
}

- (void)identifyPrinterWithSession:(id)session message:(id)message actions:(id)actions
{
  sessionCopy = session;
  messageCopy = message;
  actionsCopy = actions;
  device_uri = [(lite_printer_t *)self device_uri];
  v12 = [sessionCopy ippURL:device_uri];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000F7D8;
  v15[3] = &unk_100095958;
  v15[4] = self;
  v13 = messageCopy;
  v16 = v13;
  v14 = actionsCopy;
  v17 = v14;
  [device_http_t deviceHTTPForSessionURL:v12 completionHandler:v15];
}

- (void)checkAccessWithSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  printerOperationQueue = self->_printerOperationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000FA24;
  v11[3] = &unk_100095980;
  objc_copyWeak(&v14, &location);
  v12 = sessionCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = sessionCopy;
  v10 = handlerCopy;
  [(NSOperationQueue *)printerOperationQueue addOperationWithBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)refreshCurrentDescriptionForSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v8 = handlerCopy;
  printerDescription = self->_printerDescription;
  if (printerDescription)
  {
    (*(handlerCopy + 2))(handlerCopy, printerDescription, self->_browseInfo);
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:self->_printerDescriptionTime];
    if (v11 > 5.0)
    {
      v12 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        displayName = [(lite_printer_t *)self displayName];
        v16 = 134218242;
        selfCopy = self;
        v18 = 2082;
        uTF8String = [displayName UTF8String];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Printer<%p> %{public}s] refreshing printer description after timeout", &v16, 0x16u);
      }

      v14 = [v10 dateByAddingTimeInterval:30.0];
      printerDescriptionTime = self->_printerDescriptionTime;
      self->_printerDescriptionTime = v14;

      [(lite_printer_t *)self forceRefreshCurrentDescriptionForSession:sessionCopy completionHandler:0];
    }
  }

  else
  {
    [(lite_printer_t *)self forceRefreshCurrentDescriptionForSession:sessionCopy completionHandler:handlerCopy];
  }
}

- (void)forceRefreshCurrentDescriptionForSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  sub_100010D5C(v7, 0xBu, @"forceRefreshCurrentDescriptionForSession");
}

- (void)_updateDescPrinterDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy)
  {
    objc_storeStrong(&self->_printerDescription, description);
  }

  v5 = +[NSDate date];
  printerDescriptionTime = self->_printerDescriptionTime;
  self->_printerDescriptionTime = v5;
}

@end