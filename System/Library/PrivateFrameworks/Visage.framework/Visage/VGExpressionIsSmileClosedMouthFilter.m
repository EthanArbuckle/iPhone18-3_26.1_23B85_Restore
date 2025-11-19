@interface VGExpressionIsSmileClosedMouthFilter
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsSmileClosedMouthFilter

- (float)filter:(id)a3
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    LODWORD(v6) = *(v5 + 120);
    LODWORD(v7) = 0.5;
    LODWORD(v8) = 1055286886;
    [VGExpressionFilterLegacy clip_to_01:v6 min_val:v8 max_val:v7];
    v10 = v9;
    LODWORD(v11) = *(v5 + 124);
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