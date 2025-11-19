@interface NSError(VMFoundationAdditions)
- (BOOL)vm_match:()VMFoundationAdditions code:;
- (id)vm_underlyingError;
@end

@implementation NSError(VMFoundationAdditions)

- (BOOL)vm_match:()VMFoundationAdditions code:
{
  v6 = a3;
  v7 = [a1 domain];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = [a1 code] == a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)vm_underlyingError
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  return v2;
}

@end