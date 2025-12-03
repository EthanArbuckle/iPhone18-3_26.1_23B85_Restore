@interface POXSIntegerDefinition
- (id)valueFromString:(id)string;
@end

@implementation POXSIntegerDefinition

- (id)valueFromString:(id)string
{
  v3 = MEMORY[0x277CCABB0];
  integerValue = [string integerValue];

  return [v3 numberWithInteger:integerValue];
}

@end