@interface PXEDRGainLayer
+ (id)layer;
@end

@implementation PXEDRGainLayer

+ (id)layer
{
  v14[3] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E6979398] layer];
  v13[0] = @"backgroundColor";
  null = [MEMORY[0x1E695DFB0] null];
  v14[0] = null;
  v13[1] = @"bounds";
  null2 = [MEMORY[0x1E695DFB0] null];
  v14[1] = null2;
  v13[2] = @"position";
  null3 = [MEMORY[0x1E695DFB0] null];
  v14[2] = null3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [layer setActions:v6];

  v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
  [v7 setValue:&unk_1F190C6D0 forKey:*MEMORY[0x1E6979990]];
  [v7 setValue:&unk_1F190C6E8 forKey:*MEMORY[0x1E6979BF0]];
  [v7 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
  [v7 setName:@"modulationFilter"];
  v12 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [layer setFilters:v8];

  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA0]];
  [layer setCompositingFilter:v9];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [layer setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];

  return layer;
}

@end