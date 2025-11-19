@interface NSCoder(UIGeometryKeyedCodingPrivate)
- (float)_ui_decodeCAFrameRateRangeForKey:()UIGeometryKeyedCodingPrivate;
- (void)_ui_encodeCAFrameRateRange:()UIGeometryKeyedCodingPrivate forKey:;
@end

@implementation NSCoder(UIGeometryKeyedCodingPrivate)

- (void)_ui_encodeCAFrameRateRange:()UIGeometryKeyedCodingPrivate forKey:
{
  v10 = a6;
  v11 = _NSStringFromCAFrameRateRange(a2, a3, a4);
  [a1 encodeObject:v11 forKey:v10];
}

- (float)_ui_decodeCAFrameRateRangeForKey:()UIGeometryKeyedCodingPrivate
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    v6 = _CAFrameRateRangeFromString(v5);
  }

  else
  {
    v6 = *MEMORY[0x1E69792B8];
  }

  return v6;
}

@end