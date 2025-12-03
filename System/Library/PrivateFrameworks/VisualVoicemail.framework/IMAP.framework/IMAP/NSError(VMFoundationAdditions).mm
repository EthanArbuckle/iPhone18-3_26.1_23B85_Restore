@interface NSError(VMFoundationAdditions)
- (BOOL)vm_match:()VMFoundationAdditions code:;
- (id)vm_underlyingError;
@end

@implementation NSError(VMFoundationAdditions)

- (BOOL)vm_match:()VMFoundationAdditions code:
{
  v6 = a3;
  domain = [self domain];
  v8 = [domain isEqualToString:v6];

  if (v8)
  {
    v9 = [self code] == a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)vm_underlyingError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  return v2;
}

@end