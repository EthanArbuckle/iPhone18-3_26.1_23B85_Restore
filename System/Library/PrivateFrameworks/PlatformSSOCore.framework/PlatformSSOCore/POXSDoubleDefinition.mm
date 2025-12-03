@interface POXSDoubleDefinition
- (id)valueFromString:(id)string;
@end

@implementation POXSDoubleDefinition

- (id)valueFromString:(id)string
{
  v3 = MEMORY[0x277CCABB0];
  [string doubleValue];

  return [v3 numberWithDouble:?];
}

@end