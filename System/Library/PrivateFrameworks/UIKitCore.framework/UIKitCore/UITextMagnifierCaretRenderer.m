@interface UITextMagnifierCaretRenderer
- (id)visualsForMagnifier;
@end

@implementation UITextMagnifierCaretRenderer

- (id)visualsForMagnifier
{
  v14[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"UITextMagnifierHorizontalHi";
  v14[1] = @"UITextMagnifierHorizontalMask";
  v14[2] = @"UITextMagnifierHorizontalLo";
  v11[0] = 0x1EFBA7EF0;
  v11[1] = 0x1EFBA7F10;
  v12[0] = @"kb-loupe-hi.png";
  v2 = [MEMORY[0x1E696B098] valueWithCGPoint:{4.0, 0.0}];
  v12[1] = v2;
  v13[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = 0x1EFBA7EF0;
  v10 = @"kb-loupe-mask.png";
  v13[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = 0x1EFBA7EF0;
  v8 = @"kb-loupe-lo.png";
  v13[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v14 count:2];
  for (i = 2; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

  return v3;
}

@end