@interface POXSDoubleDefinition
- (id)valueFromString:(id)a3;
@end

@implementation POXSDoubleDefinition

- (id)valueFromString:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  [a3 doubleValue];

  return [v3 numberWithDouble:?];
}

@end