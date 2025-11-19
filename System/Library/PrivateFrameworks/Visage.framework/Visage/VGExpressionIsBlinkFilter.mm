@interface VGExpressionIsBlinkFilter
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsBlinkFilter

- (float)filter:(id)a3
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    LODWORD(v6) = *v5;
    LODWORD(v7) = 1050253722;
    LODWORD(v8) = 1051931443;
    [VGExpressionFilterLegacy clip_to_01:v6 min_val:v7 max_val:v8];
    v10 = v9;
    LODWORD(v11) = v5[1];
    LODWORD(v12) = 1050253722;
    LODWORD(v13) = 1051931443;
    [VGExpressionFilterLegacy clip_to_01:v11 min_val:v12 max_val:v13];
    LODWORD(v15) = v5[v10 <= v14];
    LODWORD(v16) = 1050253722;
    LODWORD(v17) = 1051931443;
    [VGExpressionFilterLegacy clip_to_01:v15 min_val:v16 max_val:v17];
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  return v19;
}

@end