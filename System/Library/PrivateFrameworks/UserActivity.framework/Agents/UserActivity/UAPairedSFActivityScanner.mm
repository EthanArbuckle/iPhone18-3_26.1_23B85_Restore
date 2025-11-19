@interface UAPairedSFActivityScanner
- (UAPairedSFActivityScanner)initWithDelegate:(id)a3;
- (void)activityPayloadFromDevice:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(unint64_t)a6 withCompletionHandler:(id)a7;
- (void)receiveAdvertisement:(id)a3 options:(id)a4 fromPeer:(id)a5;
@end

@implementation UAPairedSFActivityScanner

- (UAPairedSFActivityScanner)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UAPairedSFActivityScanner;
  v5 = [(UAPairedSFActivityScanner *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(UAPairedSFActivityScanner *)v5 setDelegate:v4];
    v7 = +[SFPeerDevice peerForSelf];
    peer = v6->_peer;
    v6->_peer = v7;

    v9 = [(UAPairedSFActivityScanner *)v6 peer];
    [v9 setName:@"PairedAdvertiser"];
  }

  return v6;
}

- (void)receiveAdvertisement:(id)a3 options:(id)a4 fromPeer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003C4F0;
  v15[3] = &unk_1000C5940;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)activityPayloadFromDevice:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(unint64_t)a6 withCompletionHandler:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = dispatch_get_global_queue(0, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003C6D8;
  v17[3] = &unk_1000C5968;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);
}

@end