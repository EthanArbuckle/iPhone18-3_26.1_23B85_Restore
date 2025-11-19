@interface VGExpressionIsSmileOpenMouthLipsFilter
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsSmileOpenMouthLipsFilter

- (float)filter:(id)a3
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    LODWORD(v6) = v5[26];
    LODWORD(v7) = 0.25;
    LODWORD(v8) = 1050253722;
    [VGExpressionFilterLegacy clip_to_01:v6 min_val:v7 max_val:v8];
    v10 = v9;
    LODWORD(v11) = v5[27];
    LODWORD(v12) = 0.25;
    LODWORD(v13) = 1050253722;
    [VGExpressionFilterLegacy clip_to_01:v11 min_val:v12 max_val:v13];
    v15 = v14;
    LODWORD(v16) = v5[30];
    LODWORD(v17) = 0.5;
    LODWORD(v18) = 1055286886;
    [VGExpressionFilterLegacy clip_to_01:v16 min_val:v18 max_val:v17];
    v20 = v19;
    LODWORD(v21) = v5[31];
    LODWORD(v22) = 0.5;
    LODWORD(v23) = 1055286886;
    [VGExpressionFilterLegacy clip_to_01:v21 min_val:v23 max_val:v22];
    v25 = ((v10 * v15) * v20) * v24;
  }

  else
  {
    v25 = 0.0;
  }

  return v25;
}

@end