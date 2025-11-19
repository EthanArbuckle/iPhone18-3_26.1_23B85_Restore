@interface AVMetadataItem(TVPAdditions)
- (id)tvp_numberValue;
@end

@implementation AVMetadataItem(TVPAdditions)

- (id)tvp_numberValue
{
  v1 = [a1 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v4 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CCABB0];
    [v1 doubleValue];
    v2 = [v3 numberWithDouble:?];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end