@interface SVXAFSiriTetherFactory
- (id)createWithInstanceContext:(id)context;
@end

@implementation SVXAFSiriTetherFactory

- (id)createWithInstanceContext:(id)context
{
  v3 = MEMORY[0x277CEF408];
  contextCopy = context;
  v5 = [[v3 alloc] initWithInstanceContext:contextCopy];

  return v5;
}

@end