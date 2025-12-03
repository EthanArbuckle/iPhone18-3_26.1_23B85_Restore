@interface AVMetadataItem(TVPAdditions)
- (id)tvp_numberValue;
@end

@implementation AVMetadataItem(TVPAdditions)

- (id)tvp_numberValue
{
  value = [self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = value;
LABEL_5:
    v4 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CCABB0];
    [value doubleValue];
    v2 = [v3 numberWithDouble:?];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end