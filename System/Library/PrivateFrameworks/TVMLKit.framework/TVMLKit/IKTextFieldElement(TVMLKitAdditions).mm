@interface IKTextFieldElement(TVMLKitAdditions)
- (uint64_t)tv_isSecure;
- (uint64_t)tv_keyboardType;
@end

@implementation IKTextFieldElement(TVMLKitAdditions)

- (uint64_t)tv_isSecure
{
  attributes = [self attributes];
  v2 = [attributes objectForKeyedSubscript:@"secure"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)tv_keyboardType
{
  attributes = [self attributes];
  v2 = [attributes objectForKeyedSubscript:@"keyboardType"];

  if ([v2 isEqualToString:@"emailAddress"])
  {
    v3 = 7;
  }

  else if ([v2 isEqualToString:@"numberPad"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"url"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end