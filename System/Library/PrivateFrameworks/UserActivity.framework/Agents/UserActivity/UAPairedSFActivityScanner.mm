@interface UAPairedSFActivityScanner
- (UAPairedSFActivityScanner)initWithDelegate:(id)delegate;
- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(unint64_t)timeout withCompletionHandler:(id)handler;
- (void)receiveAdvertisement:(id)advertisement options:(id)options fromPeer:(id)peer;
@end

@implementation UAPairedSFActivityScanner

- (UAPairedSFActivityScanner)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = UAPairedSFActivityScanner;
  v5 = [(UAPairedSFActivityScanner *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(UAPairedSFActivityScanner *)v5 setDelegate:delegateCopy];
    v7 = +[SFPeerDevice peerForSelf];
    peer = v6->_peer;
    v6->_peer = v7;

    peer = [(UAPairedSFActivityScanner *)v6 peer];
    [peer setName:@"PairedAdvertiser"];
  }

  return v6;
}

- (void)receiveAdvertisement:(id)advertisement options:(id)options fromPeer:(id)peer
{
  advertisementCopy = advertisement;
  optionsCopy = options;
  peerCopy = peer;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003C4F0;
  v15[3] = &unk_1000C5940;
  v16 = advertisementCopy;
  v17 = optionsCopy;
  v18 = peerCopy;
  selfCopy = self;
  v12 = peerCopy;
  v13 = optionsCopy;
  v14 = advertisementCopy;
  dispatch_async(v11, v15);
}

- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(unint64_t)timeout withCompletionHandler:(id)handler
{
  payloadCopy = payload;
  commandCopy = command;
  handlerCopy = handler;
  v13 = dispatch_get_global_queue(0, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003C6D8;
  v17[3] = &unk_1000C5968;
  v17[4] = self;
  v18 = payloadCopy;
  v19 = commandCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = commandCopy;
  v16 = payloadCopy;
  dispatch_async(v13, v17);
}

@end