@interface UITextMagnifierRangedRenderer
- (id)visualsForMagnifier;
@end

@implementation UITextMagnifierRangedRenderer

- (id)visualsForMagnifier
{
  v17[4] = *MEMORY[0x1E69E9840];
  v14 = 0x1EFBA7EF0;
  v15 = @"RangedMagnifierMask_Horizontal_Normal.png";
  v16[0] = 0x1EFBA7E70;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = 0x1EFBA7E30;
  v12 = 0x1EFBA7EF0;
  v13 = @"RangedMagnifierGlass_Horizontal_Normal.png";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v17[1] = v3;
  v16[2] = 0x1EFBA7ED0;
  v10 = 0x1EFBA7EF0;
  v11 = @"RangedMagnifierMask_Vertical_Normal.png";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v17[2] = v4;
  v16[3] = 0x1EFBA7E90;
  v8 = 0x1EFBA7EF0;
  v9 = @"RangedMagnifierGlass_Vertical_Normal.png";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v17[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v6;
}

@end