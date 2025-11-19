@interface OFNSURLValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation OFNSURLValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = [a3 absoluteString];

  return [v3 dataUsingEncoding:4 allowLossyConversion:0];
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a3 stringWithEncoding:4];

  return [v3 URLWithString:v4];
}

@end