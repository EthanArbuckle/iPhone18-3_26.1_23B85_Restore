@interface SVXAFSiriTetherFactory
- (id)createWithInstanceContext:(id)a3;
@end

@implementation SVXAFSiriTetherFactory

- (id)createWithInstanceContext:(id)a3
{
  v3 = MEMORY[0x277CEF408];
  v4 = a3;
  v5 = [[v3 alloc] initWithInstanceContext:v4];

  return v5;
}

@end