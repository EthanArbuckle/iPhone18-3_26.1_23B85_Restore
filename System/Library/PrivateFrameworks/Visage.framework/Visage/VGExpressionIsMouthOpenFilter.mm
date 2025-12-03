@interface VGExpressionIsMouthOpenFilter
- (float)filter:(id)filter;
@end

@implementation VGExpressionIsMouthOpenFilter

- (float)filter:(id)filter
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:filter];
  v4 = v3;
  if (v3)
  {
    LODWORD(v5) = *([v3 bytes] + 76);
    LODWORD(v6) = 1050253722;
    LODWORD(v7) = 0.5;
    [VGExpressionFilterLegacy clip_to_01:v5 min_val:v6 max_val:v7];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end