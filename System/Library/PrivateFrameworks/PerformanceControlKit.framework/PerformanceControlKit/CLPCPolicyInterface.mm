@interface CLPCPolicyInterface
+ (id)createClient:(id *)client;
@end

@implementation CLPCPolicyInterface

+ (id)createClient:(id *)client
{
  v3 = [[CLPCPolicyClient alloc] init:client];

  return v3;
}

@end