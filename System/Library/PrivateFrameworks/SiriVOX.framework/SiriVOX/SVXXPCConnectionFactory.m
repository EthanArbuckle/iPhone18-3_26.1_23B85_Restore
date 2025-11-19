@interface SVXXPCConnectionFactory
- (id)createWithMachServiceName:(id)a3 options:(unint64_t)a4;
@end

@implementation SVXXPCConnectionFactory

- (id)createWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v5 = MEMORY[0x277CCAE80];
  v6 = a3;
  v7 = [[v5 alloc] initWithMachServiceName:v6 options:a4];

  return v7;
}

@end