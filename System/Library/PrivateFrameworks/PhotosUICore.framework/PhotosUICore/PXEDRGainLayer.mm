@interface PXEDRGainLayer
+ (id)layer;
@end

@implementation PXEDRGainLayer

+ (id)layer
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6979398] layer];
  v13[0] = @"backgroundColor";
  v3 = [MEMORY[0x1E695DFB0] null];
  v14[0] = v3;
  v13[1] = @"bounds";
  v4 = [MEMORY[0x1E695DFB0] null];
  v14[1] = v4;
  v13[2] = @"position";
  v5 = [MEMORY[0x1E695DFB0] null];
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v2 setActions:v6];

  v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
  [v7 setValue:&unk_1F190C6D0 forKey:*MEMORY[0x1E6979990]];
  [v7 setValue:&unk_1F190C6E8 forKey:*MEMORY[0x1E6979BF0]];
  [v7 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
  [v7 setName:@"modulationFilter"];
  v12 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v2 setFilters:v8];

  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA0]];
  [v2 setCompositingFilter:v9];

  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setBackgroundColor:{objc_msgSend(v10, "CGColor")}];

  return v2;
}

@end