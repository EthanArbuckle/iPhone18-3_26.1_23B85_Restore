@interface POXSBase64BinaryDefinition
- (id)valueFromString:(id)string;
@end

@implementation POXSBase64BinaryDefinition

- (id)valueFromString:(id)string
{
  v3 = MEMORY[0x277CBEA90];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:1];

  return v5;
}

@end