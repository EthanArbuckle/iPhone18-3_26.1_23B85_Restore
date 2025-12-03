@interface Browse_NAN
- (Browse_NAN)initWithQueue:(id)queue;
- (void)_ingestPrinter:(id)printer txt:(id)txt dataSession:(id)session;
- (void)activatedConnection:(id)connection forEndpoint:(id)endpoint;
- (void)cancel;
- (void)start;
- (void)startDataSession:(id)session;
@end

@implementation Browse_NAN

- (Browse_NAN)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = Browse_NAN;
  v6 = [(Browse_NAN *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)_ingestPrinter:(id)printer txt:(id)txt dataSession:(id)session
{
  printerCopy = printer;
  txtCopy = txt;
  sessionCopy = session;
  v10 = [[NANBrowse_Entity alloc] initWithURL:printerCopy txt:txtCopy dataSession:sessionCopy];
  if (v10)
  {
    addEntity = [(Browse_Implementation *)self addEntity];
    (addEntity)[2](addEntity, v10);
  }
}

- (void)activatedConnection:(id)connection forEndpoint:(id)endpoint
{
  connectionCopy = connection;
  endpointCopy = endpoint;
  memset(&v21[1], 0, 24);
  v22 = 0;
  if (connectionCopy)
  {
    [connectionCopy peerAddress];
  }

  memset(v27, 0, sizeof(v27));
  if (SockAddrToString())
  {
    v8 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = connectionCopy;
      v25 = 2112;
      v26 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NAN data path for %@/%@ - couldn't create peer address string", buf, 0x16u);
    }
  }

  else
  {
    Port = SockAddrGetPort();
    if (Port)
    {
      v10 = Port;
    }

    else
    {
      v10 = 631;
    }

    v11 = [NSString stringWithUTF8String:v27];
    v12 = [NSNumber numberWithUnsignedShort:v10];
    textInfo = [endpointCopy textInfo];
    v14 = [textInfo objectForKeyedSubscript:@"rp"];
    v8 = PKURLWithComponents(@"ipp", v11, v12, v14);

    if (v8)
    {
      v15 = self->_queue;
      objc_initWeak(buf, self);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10003540C;
      v17[3] = &unk_1000A29B0;
      v18 = v8;
      v16 = v15;
      v19 = v16;
      objc_copyWeak(v21, buf);
      v20 = connectionCopy;
      [PKPrinterBonjourEndpoint resolveWithURL:v18 timeout:v17 completionHandler:30.0];

      objc_destroyWeak(v21);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = v27;
        v25 = 1024;
        LODWORD(v26) = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Couldn't create a URL from addr %s port %d", buf, 0x12u);
      }
    }
  }
}

- (void)startDataSession:(id)session
{
  sessionCopy = session;
  v5 = objc_opt_new();
  [v5 setDispatchQueue:self->_queue];
  sessionCopy = [NSString stringWithFormat:@"com.apple.printing.nan<%p>", sessionCopy];
  [v5 setLabel:sessionCopy];

  [v5 setPeerEndpoint:sessionCopy];
  [v5 setTerminationHandler:&stru_1000A29D0];
  [v5 setTrafficFlags:0];
  v7 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Browse_NAN: Data session %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100035A20;
  v10[3] = &unk_1000A29F8;
  v8 = v5;
  v11 = v8;
  objc_copyWeak(&v13, buf);
  v9 = sessionCopy;
  v12 = v9;
  [v8 activateWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)start
{
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Browse_NAN: Started", buf, 2u);
  }

  v4 = objc_opt_new();
  subscriber = self->_subscriber;
  self->_subscriber = v4;

  [(PKNANSubscriber *)self->_subscriber setChangeFlags:0];
  [(PKNANSubscriber *)self->_subscriber setControlFlags:1];
  [(PKNANSubscriber *)self->_subscriber setDispatchQueue:self->_queue];
  [(PKNANSubscriber *)self->_subscriber setLabel:@"com.apple.printing"];
  [(PKNANSubscriber *)self->_subscriber setServiceType:@"_ipp._tcp"];
  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100035CF8;
  v6[3] = &unk_1000A2A20;
  objc_copyWeak(&v7, buf);
  [(PKNANSubscriber *)self->_subscriber setEndpointFoundHandler:v6];
  [(PKNANSubscriber *)self->_subscriber setEndpointLostHandler:&stru_1000A2A60];
  [(PKNANSubscriber *)self->_subscriber setEndpointChangedHandler:&stru_1000A2AA0];
  [(PKNANSubscriber *)self->_subscriber setReceiveHandler:&stru_1000A2AE0];
  [(PKNANSubscriber *)self->_subscriber activateWithCompletion:&stru_1000A2B00];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)cancel
{
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Browse_NAN: Canceling", v5, 2u);
  }

  [(PKNANSubscriber *)self->_subscriber invalidate];
  subscriber = self->_subscriber;
  self->_subscriber = 0;
}

@end