@interface POXSBase64BinaryDefinition
- (id)valueFromString:(id)a3;
@end

@implementation POXSBase64BinaryDefinition

- (id)valueFromString:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:1];

  return v5;
}

@end