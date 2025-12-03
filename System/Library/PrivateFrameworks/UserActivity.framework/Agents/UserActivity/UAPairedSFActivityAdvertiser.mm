@interface UAPairedSFActivityAdvertiser
- (UAPairedSFActivityAdvertiser)initWithDelegate:(id)delegate;
- (void)advertiseAdvertisementPayload:(id)payload options:(id)options;
- (void)fetchLoginIDWithCompletionHandler:(id)handler;
- (void)fetchPeerForUUID:(id)d withCompletionHandler:(id)handler;
- (void)fetchSFPeerDevicesWithCompletionHandler:(id)handler;
- (void)payloadRequestFromPeer:(id)peer advertisementPayload:(id)payload command:(id)command completionHandler:(id)handler;
@end

@implementation UAPairedSFActivityAdvertiser

- (UAPairedSFActivityAdvertiser)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = UAPairedSFActivityAdvertiser;
  v5 = [(UAPairedSFActivityAdvertiser *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(UAPairedSFActivityAdvertiser *)v5 setDelegate:delegateCopy];
    v7 = +[SFPeerDevice peerForSelf];
    peer = v6->_peer;
    v6->_peer = v7;

    peer = [(UAPairedSFActivityAdvertiser *)v6 peer];
    [peer setName:@"PairedAdvertiser"];
  }

  return v6;
}

- (void)advertiseAdvertisementPayload:(id)payload options:(id)options
{
  payloadCopy = payload;
  optionsCopy = options;
  pairedScanner = [(UAPairedSFActivityAdvertiser *)self pairedScanner];

  if (pairedScanner)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003BB7C;
    block[3] = &unk_1000C4EE0;
    block[4] = self;
    v11 = payloadCopy;
    v12 = optionsCopy;
    dispatch_async(v9, block);
  }
}

- (void)fetchSFPeerDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003BCC0;
  v7[3] = &unk_1000C52F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)fetchPeerForUUID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BEA0;
  block[3] = &unk_1000C58C8;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(v8, block);
}

- (void)fetchLoginIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C050;
  block[3] = &unk_1000C4E48;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(v4, block);
}

- (void)payloadRequestFromPeer:(id)peer advertisementPayload:(id)payload command:(id)command completionHandler:(id)handler
{
  peerCopy = peer;
  payloadCopy = payload;
  commandCopy = command;
  handlerCopy = handler;
  v14 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C1D0;
  block[3] = &unk_1000C5918;
  block[4] = self;
  v20 = payloadCopy;
  v21 = commandCopy;
  v22 = peerCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = peerCopy;
  v17 = commandCopy;
  v18 = payloadCopy;
  dispatch_async(v14, block);
}

@end