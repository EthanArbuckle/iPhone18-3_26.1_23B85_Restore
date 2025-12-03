@interface AEAAuditTokenSwiftUtility
+ ($115C4C562B26FF47E01F9F4EA65B5887)underlyingAuditTokenFromAuditToken:(SEL)token;
+ (id)auditTokenWithUnderlyingAuditToken:(id *)token;
@end

@implementation AEAAuditTokenSwiftUtility

+ (id)auditTokenWithUnderlyingAuditToken:(id *)token
{
  v4 = [AEAConcreteAuditToken alloc];
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [(AEAConcreteAuditToken *)v4 initWithAuditToken:v8];

  return v6;
}

+ ($115C4C562B26FF47E01F9F4EA65B5887)underlyingAuditTokenFromAuditToken:(SEL)token
{
  v9 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v9 && (isKindOfClass & 1) != 0)
  {
    [v9 underlyingToken];
  }

  else
  {
    v6 = +[AEAConcreteAuditToken invalidAuditToken];
    v7 = v6;
    if (v6)
    {
      [v6 underlyingToken];
    }

    else
    {
      *retstr->var0 = 0u;
      *&retstr->var0[4] = 0u;
    }
  }

  return result;
}

@end