@interface SNConnectionInfoInternal
- (NSError)skipPeerErrorReason;
- (NSString)connectionId;
- (id)policy;
- (id)policyRoute;
- (void)setConnectionPolicy:(id)policy;
- (void)setConnectionPolicyRoute:(id)route;
- (void)setPolicy:(id)policy;
- (void)setPolicyRoute:(id)route;
- (void)setSkipPeerErrorReason:(id)reason;
@end

@implementation SNConnectionInfoInternal

- (void)setConnectionPolicy:(id)policy
{
  policyCopy = policy;
  selfCopy = self;
  ConnectionInfo.connectionPolicy.setter(policy);
}

- (id)policy
{
  v0 = ConnectionInfo.connectionPolicy.getter();

  return v0;
}

- (void)setConnectionPolicyRoute:(id)route
{
  routeCopy = route;
  selfCopy = self;
  ConnectionInfo.connectionPolicyRoute.setter(route);
}

- (void)setSkipPeerErrorReason:(id)reason
{
  selfCopy = self;
  reasonCopy = reason;
  ConnectionInfo.skipPeerErrorReason.setter(reason);
}

- (NSString)connectionId
{
  selfCopy = self;
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

- (void)setPolicy:(id)policy
{
  policyCopy = policy;
  selfCopy = self;
  ConnectionInfo.policy.setter(policy);
}

- (void)setPolicyRoute:(id)route
{
  routeCopy = route;
  selfCopy = self;
  ConnectionInfo.policyRoute.setter(route);
}

@end