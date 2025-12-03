@interface VGExpressionIsBlinkFilter
- (float)filter:(id)filter;
@end

@implementation VGExpressionIsBlinkFilter

- (float)filter:(id)filter
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:filter];
  v4 = v3;
  if (v3)
  {
    bytes = [v3 bytes];
    LODWORD(v6) = *bytes;
    LODWORD(v7) = 1050253722;
    LODWORD(v8) = 1051931443;
    [VGExpressionFilterLegacy clip_to_01:v6 min_val:v7 max_val:v8];
    v10 = v9;
    LODWORD(v11) = bytes[1];
    LODWORD(v12) = 1050253722;
    LODWORD(v13) = 1051931443;
    [VGExpressionFilterLegacy clip_to_01:v11 min_val:v12 max_val:v13];
    LODWORD(v15) = bytes[v10 <= v14];
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