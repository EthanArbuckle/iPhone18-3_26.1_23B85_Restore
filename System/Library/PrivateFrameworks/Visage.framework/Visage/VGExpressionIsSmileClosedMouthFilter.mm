@interface VGExpressionIsSmileClosedMouthFilter
- (float)filter:(id)filter;
@end

@implementation VGExpressionIsSmileClosedMouthFilter

- (float)filter:(id)filter
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:filter];
  v4 = v3;
  if (v3)
  {
    bytes = [v3 bytes];
    LODWORD(v6) = *(bytes + 120);
    LODWORD(v7) = 0.5;
    LODWORD(v8) = 1055286886;
    [VGExpressionFilterLegacy clip_to_01:v6 min_val:v8 max_val:v7];
    v10 = v9;
    LODWORD(v11) = *(bytes + 124);
    LODWORD(v12) = 0.5;
    LODWORD(v13) = 1055286886;
    [VGExpressionFilterLegacy clip_to_01:v11 min_val:v13 max_val:v12];
    v15 = v10 * v14;
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

@end