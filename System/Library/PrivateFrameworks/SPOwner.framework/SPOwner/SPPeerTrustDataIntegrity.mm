@interface SPPeerTrustDataIntegrity
- (SPPeerTrustDataIntegrity)initWithCoder:(id)a3;
- (SPPeerTrustDataIntegrity)initWithPeerTrustRecord:(id)a3 messagingDestination:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPPeerTrustDataIntegrity

- (SPPeerTrustDataIntegrity)initWithPeerTrustRecord:(id)a3 messagingDestination:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPPeerTrustDataIntegrity;
  v9 = [(SPPeerTrustDataIntegrity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peerTrustRecord, a3);
    objc_storeStrong(&v10->_messagingDestination, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPPeerTrustDataIntegrity alloc];
  v5 = [(SPPeerTrustDataIntegrity *)self peerTrustRecord];
  v6 = [(SPPeerTrustDataIntegrity *)self messagingDestination];
  v7 = [(SPPeerTrustDataIntegrity *)v4 initWithPeerTrustRecord:v5 messagingDestination:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  peerTrustRecord = self->_peerTrustRecord;
  v5 = a3;
  [v5 encodeObject:peerTrustRecord forKey:@"peerTrustRecord"];
  [v5 encodeObject:self->_messagingDestination forKey:@"messagingDestination"];
}

- (SPPeerTrustDataIntegrity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerTrustRecord"];
  peerTrustRecord = self->_peerTrustRecord;
  self->_peerTrustRecord = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messagingDestination"];

  messagingDestination = self->_messagingDestination;
  self->_messagingDestination = v7;

  return self;
}

@end