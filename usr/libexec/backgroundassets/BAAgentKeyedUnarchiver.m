@interface BAAgentKeyedUnarchiver
- (BAAgentCore)agentCore;
@end

@implementation BAAgentKeyedUnarchiver

- (BAAgentCore)agentCore
{
  WeakRetained = objc_loadWeakRetained(&self->_agentCore);

  return WeakRetained;
}

@end