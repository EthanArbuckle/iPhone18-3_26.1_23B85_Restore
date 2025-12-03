@interface _SESwiftCBridge
+ (BOOL)checkEntitlement:(id)entitlement forAuditToken:(id *)token;
+ (BOOL)checkEntitlementForCurrentProcess:(id)process;
- (_SESwiftCBridge)init;
@end

@implementation _SESwiftCBridge

+ (BOOL)checkEntitlement:(id)entitlement forAuditToken:(id *)token
{
  v4 = *token->var0;
  v5 = *&token->var0[2];
  v6 = *&token->var0[4];
  v7 = *&token->var0[6];
  v8 = sub_265759190();
  LOBYTE(v4) = sub_265758F40(v8, v9);

  return v4 & 1;
}

+ (BOOL)checkEntitlementForCurrentProcess:(id)process
{
  v3 = sub_265759190();
  v5 = sub_265759058(v3, v4);

  return v5 & 1;
}

- (_SESwiftCBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SwiftCBridge();
  return [(_SESwiftCBridge *)&v3 init];
}

@end