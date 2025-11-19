@interface SESPeerIdentity
+ (id)withOTPeerIdentity:(id)a3;
+ (id)withPeerIdentifier:(id)a3 peerData:(id)a4;
- (id)asOTPeerIdentity;
@end

@implementation SESPeerIdentity

+ (id)withPeerIdentifier:(id)a3 peerData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[2];
  v7[2] = v6;

  return v7;
}

+ (id)withOTPeerIdentity:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 peerIdentifier];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [v3 peerData];

  v8 = v4[2];
  v4[2] = v7;

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