@interface POXSBooleanDefinition
- (id)stringFromValue:(id)a3;
- (id)valueFromString:(id)a3;
@end

@implementation POXSBooleanDefinition

- (id)valueFromString:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 BOOLValue];

  return [v3 numberWithBool:v4];
}

- (id)stringFromValue:(id)a3
{
  if ([a3 BOOLValue])
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