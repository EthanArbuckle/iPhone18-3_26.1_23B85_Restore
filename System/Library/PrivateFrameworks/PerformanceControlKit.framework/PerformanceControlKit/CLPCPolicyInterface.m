@interface CLPCPolicyInterface
+ (id)createClient:(id *)a3;
@end

@implementation CLPCPolicyInterface

+ (id)createClient:(id *)a3
{
  v3 = [[CLPCPolicyClient alloc] init:a3];

  return v3;
}

@end