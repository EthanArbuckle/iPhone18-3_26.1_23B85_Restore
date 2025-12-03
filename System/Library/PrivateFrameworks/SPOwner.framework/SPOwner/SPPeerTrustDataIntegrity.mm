@interface SPPeerTrustDataIntegrity
- (SPPeerTrustDataIntegrity)initWithCoder:(id)coder;
- (SPPeerTrustDataIntegrity)initWithPeerTrustRecord:(id)record messagingDestination:(id)destination;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPPeerTrustDataIntegrity

- (SPPeerTrustDataIntegrity)initWithPeerTrustRecord:(id)record messagingDestination:(id)destination
{
  recordCopy = record;
  destinationCopy = destination;
  v12.receiver = self;
  v12.super_class = SPPeerTrustDataIntegrity;
  v9 = [(SPPeerTrustDataIntegrity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peerTrustRecord, record);
    objc_storeStrong(&v10->_messagingDestination, destination);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPPeerTrustDataIntegrity alloc];
  peerTrustRecord = [(SPPeerTrustDataIntegrity *)self peerTrustRecord];
  messagingDestination = [(SPPeerTrustDataIntegrity *)self messagingDestination];
  v7 = [(SPPeerTrustDataIntegrity *)v4 initWithPeerTrustRecord:peerTrustRecord messagingDestination:messagingDestination];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  peerTrustRecord = self->_peerTrustRecord;
  coderCopy = coder;
  [coderCopy encodeObject:peerTrustRecord forKey:@"peerTrustRecord"];
  [coderCopy encodeObject:self->_messagingDestination forKey:@"messagingDestination"];
}

- (SPPeerTrustDataIntegrity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerTrustRecord"];
  peerTrustRecord = self->_peerTrustRecord;
  self->_peerTrustRecord = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messagingDestination"];

  messagingDestination = self->_messagingDestination;
  self->_messagingDestination = v7;

  return self;
}

@end