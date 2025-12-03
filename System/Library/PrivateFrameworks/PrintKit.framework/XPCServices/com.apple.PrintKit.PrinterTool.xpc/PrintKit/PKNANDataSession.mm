@interface PKNANDataSession
- ($73F895DBD1999BB8C4FC3321EA55D21E)peerAddress;
- (NSString)debugDescription;
- (PKNANDataSession)init;
- (id)queue;
- (void)activateWithCompletion:(id)completion;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
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
  dispatchQueue = [(PKNANDataSession *)self dispatchQueue];

  if (dispatchQueue)
  {
    dispatchQueue2 = [(PKNANDataSession *)self dispatchQueue];
  }

  else
  {
    dispatchQueue2 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
  }

  return dispatchQueue2;
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

- (void)dataSessionRequestStarted:(id)started
{
  v4 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v4);
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  v6 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v6);

  v7 = objc_retainBlock(self->_activateHandler);
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  if (v7)
  {
    v17 = @"WiFiP2PError";
    v9 = [NSNumber numberWithInteger:error];
    v18 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:14 userInfo:v10];

    queue = [(PKNANDataSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C7CC;
    block[3] = &unk_100095B90;
    v15 = v11;
    v16 = v7;
    v13 = v11;
    dispatch_async(queue, block);
  }
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  addressCopy = address;
  infoCopy = info;
  v11 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v11);

  objc_storeStrong(&self->_peerDataAddress, address);
  objc_storeStrong(&self->_serviceSpecificInfo, info);
  v12 = objc_retainBlock(self->_activateHandler);
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  if (v12)
  {
    queue = [(PKNANDataSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C938;
    block[3] = &unk_100095840;
    v16 = v12;
    dispatch_async(queue, block);
  }
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  sessionCopy = session;
  v8 = NSStringFromSelector(a2);
  NSLog(@"%@: %@ - %d", self, v8, reason);

  [sessionCopy setDelegate:0];
  v24 = @"WiFiAwareTerminationReason";
  v9 = [NSNumber numberWithInteger:reason];
  v25 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:14 userInfo:v10];

  if (self->_activateHandler)
  {
    NSLog(@"terminated without activation, so not sending to termination handler");
    terminationHandler = objc_retainBlock(self->_activateHandler);
    activateHandler = self->_activateHandler;
    self->_activateHandler = 0;

    if (terminationHandler)
    {
      queue = [(PKNANDataSession *)self queue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002CC34;
      v21[3] = &unk_100095B90;
      v15 = &v23;
      terminationHandler = terminationHandler;
      v23 = terminationHandler;
      v16 = &v22;
      v22 = v11;
      v17 = v21;
LABEL_6:
      dispatch_async(queue, v17);
    }
  }

  else
  {
    terminationHandler = [(PKNANDataSession *)self terminationHandler];
    if (terminationHandler)
    {
      queue = [(PKNANDataSession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002CC48;
      block[3] = &unk_100095B90;
      v15 = &v20;
      terminationHandler = terminationHandler;
      v20 = terminationHandler;
      v16 = &v19;
      v19 = v11;
      v17 = block;
      goto LABEL_6;
    }
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  passphrase = [(PKNANDataSession *)self passphrase];
  v5 = [passphrase length];

  if (v5)
  {
    v6 = [WiFiAwareDataSession alloc];
    peerEndpoint = [(PKNANDataSession *)self peerEndpoint];
    discoveryResult = [peerEndpoint discoveryResult];
    passphrase2 = [(PKNANDataSession *)self passphrase];
    v10 = [v6 initWithDiscoveryResult:discoveryResult serviceType:0 serviceSpecificInfo:0 passphrase:passphrase2];
    dataSession = self->_dataSession;
    self->_dataSession = v10;
  }

  else
  {
    v12 = [WiFiAwareDataSession alloc];
    peerEndpoint = [(PKNANDataSession *)self peerEndpoint];
    discoveryResult = [peerEndpoint discoveryResult];
    v13 = [v12 initWithDiscoveryResult:discoveryResult serviceType:0 serviceSpecificInfo:0];
    passphrase2 = self->_dataSession;
    self->_dataSession = v13;
  }

  [(WiFiAwareDataSession *)self->_dataSession setDelegate:self];
  v14 = objc_retainBlock(completionCopy);
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
  ipv6LinkLocalAddress = [(WiFiMACAddress *)self->_peerDataAddress ipv6LinkLocalAddress];
  retstr->var2.sin6_addr = *[ipv6LinkLocalAddress bytes];

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