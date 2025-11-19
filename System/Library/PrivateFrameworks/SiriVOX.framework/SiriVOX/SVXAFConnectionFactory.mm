@interface SVXAFConnectionFactory
- (id)createWithDispatchQueue:(id)a3 instanceContext:(id)a4;
@end

@implementation SVXAFConnectionFactory

- (id)createWithDispatchQueue:(id)a3 instanceContext:(id)a4
{
  v5 = MEMORY[0x277CEF218];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithTargetQueue:v7 instanceContext:v6];

  return v8;
}

@end