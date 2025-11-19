@interface SNConnectionInfoInternal
- (NSError)skipPeerErrorReason;
- (NSString)connectionId;
- (id)policy;
- (id)policyRoute;
- (void)setConnectionPolicy:(id)a3;
- (void)setConnectionPolicyRoute:(id)a3;
- (void)setPolicy:(id)a3;
- (void)setPolicyRoute:(id)a3;
- (void)setSkipPeerErrorReason:(id)a3;
@end

@implementation SNConnectionInfoInternal

- (void)setConnectionPolicy:(id)a3
{
  v5 = a3;
  v6 = self;
  ConnectionInfo.connectionPolicy.setter(a3);
}

- (id)policy
{
  v0 = ConnectionInfo.connectionPolicy.getter();

  return v0;
}

- (void)setConnectionPolicyRoute:(id)a3
{
  v5 = a3;
  v6 = self;
  ConnectionInfo.connectionPolicyRoute.setter(a3);
}

- (void)setSkipPeerErrorReason:(id)a3
{
  v5 = self;
  v4 = a3;
  ConnectionInfo.skipPeerErrorReason.setter(a3);
}

- (NSString)connectionId
{
  v2 = self;
  v3 = ConnectionInfo.connectionId.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x223DE2070](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)policyRoute
{
  v0 = ConnectionInfo.policyRoute.getter();

  return v0;
}

- (NSError)skipPeerErrorReason
{
  v2 = ConnectionInfo.skipPeerErrorReason.getter();
  if (v2)
  {
    v3 = v2;
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPolicy:(id)a3
{
  v5 = a3;
  v6 = self;
  ConnectionInfo.policy.setter(a3);
}

- (void)setPolicyRoute:(id)a3
{
  v5 = a3;
  v6 = self;
  ConnectionInfo.policyRoute.setter(a3);
}

@end