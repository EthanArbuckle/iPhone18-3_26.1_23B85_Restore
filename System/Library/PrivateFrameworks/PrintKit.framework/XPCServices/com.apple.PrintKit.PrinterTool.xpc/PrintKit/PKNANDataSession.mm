@interface PKNANDataSession
- ($73F895DBD1999BB8C4FC3321EA55D21E)peerAddress;
- (NSString)debugDescription;
- (PKNANDataSession)init;
- (id)queue;
- (void)activateWithCompletion:(id)a3;
- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5;
- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)dataSessionRequestStarted:(id)a3;
- (void)invalidate;
@end

@implementation PKNANDataSession

- (PKNANDataSession)init
{
  v3.receiver = self;
  v3.super_class = PKNANDataSession;
  return [(PKNANDataSession *)&v3 init];
}

- (id)queue
{
  v3 = [(PKNANDataSession *)self dispatchQueue];

  if (v3)
  {
    v4 = [(PKNANDataSession *)self dispatchQueue];
  }

  else
  {
    v4 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
  }

  return v4;
}

- (NSString)debugDescription
{
  v7.receiver = self;
  v7.super_class = PKNANDataSession;
  v3 = [(PKNANDataSession *)&v7 debugDescription];
  v4 = [(WiFiAwareDataSession *)self->_dataSession debugDescription];
  v5 = [NSString stringWithFormat:@"%@ { %@ }", v3, v4];

  return v5;
}

- (void)dataSessionRequestStarted:(id)a3
{
  v4 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v4);
}

- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4
{
  v6 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v6);

  v7 = objc_retainBlock(self->_activateHandler);
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  if (v7)
  {
    v17 = @"WiFiP2PError";
    v9 = [NSNumber numberWithInteger:a4];
    v18 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:14 userInfo:v10];

    v12 = [(PKNANDataSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C7CC;
    block[3] = &unk_100095B90;
    v15 = v11;
    v16 = v7;
    v13 = v11;
    dispatch_async(v12, block);
  }
}

- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v11);

  objc_storeStrong(&self->_peerDataAddress, a4);
  objc_storeStrong(&self->_serviceSpecificInfo, a5);
  v12 = objc_retainBlock(self->_activateHandler);
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  if (v12)
  {
    v14 = [(PKNANDataSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C938;
    block[3] = &unk_100095840;
    v16 = v12;
    dispatch_async(v14, block);
  }
}

- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4
{
  v7 = a3;
  v8 = NSStringFromSelector(a2);
  NSLog(@"%@: %@ - %d", self, v8, a4);

  [v7 setDelegate:0];
  v24 = @"WiFiAwareTerminationReason";
  v9 = [NSNumber numberWithInteger:a4];
  v25 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:14 userInfo:v10];

  if (self->_activateHandler)
  {
    NSLog(@"terminated without activation, so not sending to termination handler");
    v12 = objc_retainBlock(self->_activateHandler);
    activateHandler = self->_activateHandler;
    self->_activateHandler = 0;

    if (v12)
    {
      v14 = [(PKNANDataSession *)self queue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002CC34;
      v21[3] = &unk_100095B90;
      v15 = &v23;
      v12 = v12;
      v23 = v12;
      v16 = &v22;
      v22 = v11;
      v17 = v21;
LABEL_6:
      dispatch_async(v14, v17);
    }
  }

  else
  {
    v12 = [(PKNANDataSession *)self terminationHandler];
    if (v12)
    {
      v14 = [(PKNANDataSession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002CC48;
      block[3] = &unk_100095B90;
      v15 = &v20;
      v12 = v12;
      v20 = v12;
      v16 = &v19;
      v19 = v11;
      v17 = block;
      goto LABEL_6;
    }
  }
}

- (void)activateWithCompletion:(id)a3
{
  v16 = a3;
  v4 = [(PKNANDataSession *)self passphrase];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [WiFiAwareDataSession alloc];
    v7 = [(PKNANDataSession *)self peerEndpoint];
    v8 = [v7 discoveryResult];
    v9 = [(PKNANDataSession *)self passphrase];
    v10 = [v6 initWithDiscoveryResult:v8 serviceType:0 serviceSpecificInfo:0 passphrase:v9];
    dataSession = self->_dataSession;
    self->_dataSession = v10;
  }

  else
  {
    v12 = [WiFiAwareDataSession alloc];
    v7 = [(PKNANDataSession *)self peerEndpoint];
    v8 = [v7 discoveryResult];
    v13 = [v12 initWithDiscoveryResult:v8 serviceType:0 serviceSpecificInfo:0];
    v9 = self->_dataSession;
    self->_dataSession = v13;
  }

  [(WiFiAwareDataSession *)self->_dataSession setDelegate:self];
  v14 = objc_retainBlock(v16);
  activateHandler = self->_activateHandler;
  self->_activateHandler = v14;

  [(WiFiAwareDataSession *)self->_dataSession start];
}

- ($73F895DBD1999BB8C4FC3321EA55D21E)peerAddress
{
  retstr->var0 = 0uLL;
  retstr->var2.sin6_scope_id = 0;
  *&retstr->var2.sin6_addr.__u6_addr32[2] = 0;
  *&retstr->var0.sa_len = 7708;
  v5 = [(WiFiMACAddress *)self->_peerDataAddress ipv6LinkLocalAddress];
  retstr->var2.sin6_addr = *[v5 bytes];

  retstr->var2.sin6_scope_id = [(WiFiAwareDataSession *)self->_dataSession localInterfaceIndex];
  result = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self->_serviceSpecificInfo servicePort];
  retstr->var1.sin_port = __rev16(result);
  return result;
}

- (void)invalidate
{
  dataSession = self->_dataSession;
  if (dataSession)
  {
    [(WiFiAwareDataSession *)dataSession stop];
    [(WiFiAwareDataSession *)self->_dataSession setDelegate:0];
    v4 = self->_dataSession;
    self->_dataSession = 0;
  }
}

@end