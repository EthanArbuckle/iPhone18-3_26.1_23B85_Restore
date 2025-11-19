@interface WPPeerTrackingRequest
- (BOOL)isEqual:(id)a3;
- (WPPeerTrackingRequest)init;
- (WPPeerTrackingRequest)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WPPeerTrackingRequest

- (WPPeerTrackingRequest)init
{
  v6.receiver = self;
  v6.super_class = WPPeerTrackingRequest;
  v2 = [(WPPeerTrackingRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    peerTrackingDictionary = v2->_peerTrackingDictionary;
    v2->_peerTrackingDictionary = MEMORY[0x277CBEC10];

    v3->_clientType = 28;
  }

  return v3;
}

- (WPPeerTrackingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WPPeerTrackingRequest;
  v5 = [(WPPeerTrackingRequest *)&v11 init];
  if (v5)
  {
    v5->_clientType = [v4 decodeIntegerForKey:@"kClientType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPeerUUID"];
    peerUUID = v5->_peerUUID;
    v5->_peerUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPeerTrackingData"];
    peerTrackingDictionary = v5->_peerTrackingDictionary;
    v5->_peerTrackingDictionary = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[WPPeerTrackingRequest clientType](self forKey:{"clientType"), @"kClientType"}];
  v5 = [(WPPeerTrackingRequest *)self peerUUID];
  [v4 encodeObject:v5 forKey:@"kPeerUUID"];

  v6 = [(WPPeerTrackingRequest *)self peerTrackingDictionary];
  [v4 encodeObject:v6 forKey:@"kPeerTrackingData"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(WPPeerTrackingRequest *)self peerUUID];
  v4 = [v2 stringWithFormat:@"peer tracking request for UUID %@", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(WPPeerTrackingRequest *)v6 clientType];
    if (v7 == [(WPPeerTrackingRequest *)self clientType])
    {
      v8 = [(WPPeerTrackingRequest *)v6 peerUUID];
      v9 = [(WPPeerTrackingRequest *)self peerUUID];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(WPPeerTrackingRequest *)self peerUUID];
  v3 = [v2 hash];

  return v3;
}

@end