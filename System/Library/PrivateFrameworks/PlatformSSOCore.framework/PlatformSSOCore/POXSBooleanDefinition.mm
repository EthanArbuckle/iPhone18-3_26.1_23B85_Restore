@interface POXSBooleanDefinition
- (id)stringFromValue:(id)value;
- (id)valueFromString:(id)string;
@end

@implementation POXSBooleanDefinition

- (id)valueFromString:(id)string
{
  v3 = MEMORY[0x277CCABB0];
  bOOLValue = [string BOOLValue];

  return [v3 numberWithBool:bOOLValue];
}

- (id)stringFromValue:(id)value
{
  if ([value BOOLValue])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  return v3;
}

@end