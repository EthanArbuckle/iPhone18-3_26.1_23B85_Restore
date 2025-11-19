@interface FBProcessManager(SwiftShims)
- (id)uv_registerProcessForAuditToken:()SwiftShims;
@end

@implementation FBProcessManager(SwiftShims)

- (id)uv_registerProcessForAuditToken:()SwiftShims
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v4 = [a1 registerProcessForAuditToken:v6];

  return v4;
}

@end