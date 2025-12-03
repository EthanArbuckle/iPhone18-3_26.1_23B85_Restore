@interface OFNSURLValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation OFNSURLValueTransformer

- (id)transformedValue:(id)value
{
  absoluteString = [value absoluteString];

  return [absoluteString dataUsingEncoding:4 allowLossyConversion:0];
}

- (id)reverseTransformedValue:(id)value
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [value stringWithEncoding:4];

  return [v3 URLWithString:v4];
}

@end