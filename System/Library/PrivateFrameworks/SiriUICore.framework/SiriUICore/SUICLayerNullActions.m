@interface SUICLayerNullActions
@end

@implementation SUICLayerNullActions

void ___SUICLayerNullActions_block_invoke()
{
  v4[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFB0] null];
  v3[0] = @"position";
  v3[1] = @"bounds";
  v4[0] = v0;
  v4[1] = v0;
  v3[2] = @"transform";
  v3[3] = @"contents";
  v4[2] = v0;
  v4[3] = v0;
  v3[4] = @"anchorPoint";
  v3[5] = @"opacity";
  v4[4] = v0;
  v4[5] = v0;
  v3[6] = @"strokeStart";
  v3[7] = @"strokeEnd";
  v4[6] = v0;
  v4[7] = v0;
  v3[8] = @"strokeColor";
  v3[9] = @"fillColor";
  v4[8] = v0;
  v4[9] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v2 = _SUICLayerNullActions_actions;
  _SUICLayerNullActions_actions = v1;
}

@end