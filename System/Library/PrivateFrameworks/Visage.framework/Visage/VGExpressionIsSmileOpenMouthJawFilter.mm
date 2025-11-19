@interface VGExpressionIsSmileOpenMouthJawFilter
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsSmileOpenMouthJawFilter

- (float)filter:(id)a3
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    LODWORD(v6) = v5[19];
    LODWORD(v7) = 1050253722;
    LODWORD(v8) = 0.25;
    [VGExpressionFilterLegacy clip_to_01:v6 min_val:v8 max_val:v7];
    v10 = v9;
    LODWORD(v11) = v5[30];
    LODWORD(v12) = 0.5;
    LODWORD(v13) = 1055286886;
    [VGExpressionFilterLegacy clip_to_01:v11 min_val:v13 max_val:v12];
    v15 = v14;
    LODWORD(v16) = v5[31];
    LODWORD(v17) = 0.5;
    LODWORD(v18) = 1055286886;
    [VGExpressionFilterLegacy clip_to_01:v16 min_val:v18 max_val:v17];
    v20 = (v10 * v15) * v19;
  }

  else
  {
    v20 = 0.0;
  }

  return v20;
}

@end