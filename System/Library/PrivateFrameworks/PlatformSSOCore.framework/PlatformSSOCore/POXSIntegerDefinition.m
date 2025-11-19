@interface POXSIntegerDefinition
- (id)valueFromString:(id)a3;
@end

@implementation POXSIntegerDefinition

- (id)valueFromString:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 integerValue];

  return [v3 numberWithInteger:v4];
}

@end