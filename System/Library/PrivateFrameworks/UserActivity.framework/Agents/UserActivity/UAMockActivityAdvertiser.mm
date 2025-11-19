@interface UAMockActivityAdvertiser
- (UAMockActivityAdvertiser)initWithController:(id)a3;
- (void)advertiseAdvertisementPayload:(id)a3 options:(id)a4;
- (void)fetchPeerForUUID:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchSFPeerDevicesWithCompletionHandler:(id)a3;
@end

@implementation UAMockActivityAdvertiser

- (UAMockActivityAdvertiser)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UAMockActivityAdvertiser;
  v6 = [(UAMockActivityAdvertiser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
  }

  return v7;
}

- (void)advertiseAdvertisementPayload:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UAMockActivityAdvertiser *)self controller];
  [v8 doAdvertiseAdvertisementPayload:v7 options:v6];
}

- (void)fetchSFPeerDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(UAMockActivityAdvertiser *)self controller];
  v6 = [v5 pairedPeer];

  if (v6)
  {
    v9 = [(UAMockActivityAdvertiser *)self controller];
    v7 = [v9 pairedPeer];
    v8 = [NSSet setWithObject:v7];
    v4[2](v4, v8, 0);

    v4 = v7;
  }

  else
  {
    v9 = [NSError errorWithDomain:UAContinuityErrorDomain code:-1 userInfo:0];
    (v4[2])(v4, 0);
  }
}

- (void)fetchPeerForUUID:(id)a3 withCompletionHandler:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (v16)
  {
    v7 = [(UAMockActivityAdvertiser *)self controller];
    v8 = [v7 pairedPeer];
    if (v8)
    {
      v9 = v8;
      v10 = [(UAMockActivityAdvertiser *)self controller];
      v11 = [v10 pairedPeer];
      v12 = [v11 uniqueID];
      v13 = [v12 isEqual:v16];

      if (v13)
      {
        v14 = [(UAMockActivityAdvertiser *)self controller];
        v15 = [v14 pairedPeer];
        v6[2](v6, v15, 0);

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v14 = [NSError errorWithDomain:UAContinuityErrorDomain code:-1 userInfo:0];
  (v6)[2](v6, 0, v14);
LABEL_7:
}

@end