@interface SESPeerIdentity
+ (id)withOTPeerIdentity:(id)identity;
+ (id)withPeerIdentifier:(id)identifier peerData:(id)data;
- (id)asOTPeerIdentity;
@end

@implementation SESPeerIdentity

+ (id)withPeerIdentifier:(id)identifier peerData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = identifierCopy;
  v9 = identifierCopy;

  v10 = v7[2];
  v7[2] = dataCopy;

  return v7;
}

+ (id)withOTPeerIdentity:(id)identity
{
  identityCopy = identity;
  v4 = objc_opt_new();
  peerIdentifier = [identityCopy peerIdentifier];
  v6 = v4[1];
  v4[1] = peerIdentifier;

  peerData = [identityCopy peerData];

  v8 = v4[2];
  v4[2] = peerData;

  return v4;
}

- (id)asOTPeerIdentity
{
  v3 = objc_opt_new();
  [v3 setPeerData:self->_peerData];
  [v3 setPeerIdentifier:self->_peerIdentifier];

  return v3;
}

@end