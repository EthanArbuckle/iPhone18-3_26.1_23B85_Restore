@interface OFUIImageValueTransformer
- (id)reverseTransformedValue:(id)value;
@end

@implementation OFUIImageValueTransformer

- (id)reverseTransformedValue:(id)value
{
  v3 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:value];

  return v3;
}

@end