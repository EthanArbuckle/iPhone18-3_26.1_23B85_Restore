@interface UAPairedSFActivityAdvertiser
- (UAPairedSFActivityAdvertiser)initWithDelegate:(id)a3;
- (void)advertiseAdvertisementPayload:(id)a3 options:(id)a4;
- (void)fetchLoginIDWithCompletionHandler:(id)a3;
- (void)fetchPeerForUUID:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchSFPeerDevicesWithCompletionHandler:(id)a3;
- (void)payloadRequestFromPeer:(id)a3 advertisementPayload:(id)a4 command:(id)a5 completionHandler:(id)a6;
@end

@implementation UAPairedSFActivityAdvertiser

- (UAPairedSFActivityAdvertiser)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UAPairedSFActivityAdvertiser;
  v5 = [(UAPairedSFActivityAdvertiser *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(UAPairedSFActivityAdvertiser *)v5 setDelegate:v4];
    v7 = +[SFPeerDevice peerForSelf];
    peer = v6->_peer;
    v6->_peer = v7;

    v9 = [(UAPairedSFActivityAdvertiser *)v6 peer];
    [v9 setName:@"PairedAdvertiser"];
  }

  return v6;
}

- (void)advertiseAdvertisementPayload:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UAPairedSFActivityAdvertiser *)self pairedScanner];

  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003BB7C;
    block[3] = &unk_1000C4EE0;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

- (void)fetchSFPeerDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003BCC0;
  v7[3] = &unk_1000C52F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)fetchPeerForUUID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BEA0;
  block[3] = &unk_1000C58C8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchLoginIDWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C050;
  block[3] = &unk_1000C4E48;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)payloadRequestFromPeer:(id)a3 advertisementPayload:(id)a4 command:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C1D0;
  block[3] = &unk_1000C5918;
  block[4] = self;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  dispatch_async(v14, block);
}

@end