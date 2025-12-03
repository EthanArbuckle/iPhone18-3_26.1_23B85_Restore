@interface SVXAFConnectionFactory
- (id)createWithDispatchQueue:(id)queue instanceContext:(id)context;
@end

@implementation SVXAFConnectionFactory

- (id)createWithDispatchQueue:(id)queue instanceContext:(id)context
{
  v5 = MEMORY[0x277CEF218];
  contextCopy = context;
  queueCopy = queue;
  v8 = [[v5 alloc] initWithTargetQueue:queueCopy instanceContext:contextCopy];

  return v8;
}

@end