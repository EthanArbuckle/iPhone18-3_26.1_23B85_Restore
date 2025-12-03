@interface OFCLLocationValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation OFCLLocationValueTransformer

- (id)transformedValue:(id)value
{
  [value coordinate];
  [value coordinate];
  v4 = MEMORY[0x277CCACA8];
  [value coordinate];
  v6 = v5;
  [value coordinate];
  v8 = [v4 stringWithFormat:@"%lf:%lf", v6, v7];

  return [v8 dataUsingEncoding:4 allowLossyConversion:0];
}

- (id)reverseTransformedValue:(id)value
{
  if (!value)
  {
    return 0;
  }

  v3 = [objc_msgSend(value stringWithEncoding:{4), "componentsSeparatedByString:", @":"}];
  if ([v3 count] != 2)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x277CE41F8]);
  [objc_msgSend(v3 "firstObject")];
  v6 = v5;
  [objc_msgSend(v3 "lastObject")];
  v8 = [v4 initWithLatitude:v6 longitude:v7];

  return v8;
}

@end