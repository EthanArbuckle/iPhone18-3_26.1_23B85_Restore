@interface NSError(RBSErrors)
+ (id)rbs_errorClientNotAuthorized;
+ (id)rbs_errorClientNotEntitled:()RBSErrors permanent:;
- (BOOL)rbs_isPermanentFailure;
@end

@implementation NSError(RBSErrors)

- (BOOL)rbs_isPermanentFailure
{
  result = [(NSError *)self rbs_isServiceDenied];
  if (result)
  {
    userInfo = [self userInfo];
    v4 = [userInfo valueForKey:@"RBSPermanent"];
    bOOLValue = [v4 BOOLValue];

    return bOOLValue;
  }

  return result;
}

+ (id)rbs_errorClientNotEntitled:()RBSErrors permanent:
{
  v5 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Client not entitled" forKey:*MEMORY[0x1E696A588]];
  if (v5)
  {
    [dictionary setObject:v5 forKey:@"RBSEntitlement"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  [dictionary setObject:v7 forKey:@"RBSPermanent"];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RBSServiceErrorDomain" code:1 userInfo:dictionary];

  return v8;
}

+ (id)rbs_errorClientNotAuthorized
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Client not authorized" forKey:*MEMORY[0x1E696A588]];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"RBSPermanent"];
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RBSServiceErrorDomain" code:1 userInfo:dictionary];

  return v1;
}

@end