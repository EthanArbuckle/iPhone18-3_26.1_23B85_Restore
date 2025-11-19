@interface NEUserEventAgentFileHandleMaintainer
- (NEUserEventAgentFileHandleMaintainer)init;
@end

@implementation NEUserEventAgentFileHandleMaintainer

- (NEUserEventAgentFileHandleMaintainer)init
{
  v3.receiver = self;
  v3.super_class = NEUserEventAgentFileHandleMaintainer;
  result = [(NEUserEventAgentFileHandleMaintainer *)&v3 init];
  if (result)
  {
    result->_nesmPIDToken = -1;
  }

  return result;
}

@end