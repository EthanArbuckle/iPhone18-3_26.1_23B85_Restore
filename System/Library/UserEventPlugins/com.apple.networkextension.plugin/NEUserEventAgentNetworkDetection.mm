@interface NEUserEventAgentNetworkDetection
- (NEUserEventAgentNetworkDetection)init;
@end

@implementation NEUserEventAgentNetworkDetection

- (NEUserEventAgentNetworkDetection)init
{
  v6.receiver = self;
  v6.super_class = NEUserEventAgentNetworkDetection;
  v2 = [(NEUserEventAgentNetworkDetection *)&v6 init];
  if (v2)
  {
    v3 = xpc_array_create(0, 0);
    notifyTokens = v2->_notifyTokens;
    v2->_notifyTokens = v3;
  }

  return v2;
}

@end