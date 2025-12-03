@interface WPPeerTrackingRequest
- (BOOL)isEqual:(id)equal;
- (WPPeerTrackingRequest)init;
- (WPPeerTrackingRequest)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (WPPeerTrackingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WPPeerTrackingRequest;
  v5 = [(WPPeerTrackingRequest *)&v11 init];
  if (v5)
  {
    v5->_clientType = [coderCopy decodeIntegerForKey:@"kClientType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPeerUUID"];
    peerUUID = v5->_peerUUID;
    v5->_peerUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPeerTrackingData"];
    peerTrackingDictionary = v5->_peerTrackingDictionary;
    v5->_peerTrackingDictionary = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WPPeerTrackingRequest clientType](self forKey:{"clientType"), @"kClientType"}];
  peerUUID = [(WPPeerTrackingRequest *)self peerUUID];
  [coderCopy encodeObject:peerUUID forKey:@"kPeerUUID"];

  peerTrackingDictionary = [(WPPeerTrackingRequest *)self peerTrackingDictionary];
  [coderCopy encodeObject:peerTrackingDictionary forKey:@"kPeerTrackingData"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  peerUUID = [(WPPeerTrackingRequest *)self peerUUID];
  v4 = [v2 stringWithFormat:@"peer tracking request for UUID %@", peerUUID];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    clientType = [(WPPeerTrackingRequest *)v6 clientType];
    if (clientType == [(WPPeerTrackingRequest *)self clientType])
    {
      peerUUID = [(WPPeerTrackingRequest *)v6 peerUUID];
      peerUUID2 = [(WPPeerTrackingRequest *)self peerUUID];
      v10 = [peerUUID isEqual:peerUUID2];
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
  peerUUID = [(WPPeerTrackingRequest *)self peerUUID];
  v3 = [peerUUID hash];

  return v3;
}

@end