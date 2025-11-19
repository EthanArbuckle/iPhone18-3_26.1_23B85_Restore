@interface UISegmentedControlDefaultStyleProvider
- (UIEdgeInsets)alignmentInsetsForControlSize:(int)a3 bounds:(CGRect)a4;
- (UIEdgeInsets)alignmentInsetsForControlSize:(int)a3 bounds:(CGRect)a4 traitCollection:(id)a5;
- (UIEdgeInsets)contentInsetsForControlSize:(int)a3 position:(unsigned int)a4 bounds:(CGRect)a5 traitCollection:(id)a6;
- (double)cornerRadiusForControlSize:(int)a3;
- (double)defaultHeightForControlSize:(int)a3 traitCollection:(id)a4;
- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6;
- (id)fontForControlSize:(int)a3 selected:(BOOL)a4;
@end

@implementation UISegmentedControlDefaultStyleProvider

- (UIEdgeInsets)contentInsetsForControlSize:(int)a3 position:(unsigned int)a4 bounds:(CGRect)a5 traitCollection:(id)a6
{
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (double)defaultHeightForControlSize:(int)a3 traitCollection:(id)a4
{
  result = 32.0;
  if (a3 == 1)
  {
    return 26.0;
  }

  return result;
}

- (double)cornerRadiusForControlSize:(int)a3
{
  result = 8.0;
  if (a3 == 1)
  {
    return 6.0;
  }

  return result;
}

- (UIEdgeInsets)alignmentInsetsForControlSize:(int)a3 bounds:(CGRect)a4
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 1.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)alignmentInsetsForControlSize:(int)a3 bounds:(CGRect)a4 traitCollection:(id)a5
{
  v5 = 0.0;
  v6 = 0.0;
  v7 = 1.0;
  v8 = 0.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)fontForControlSize:(int)a3 selected:(BOOL)a4
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (a3 <= 2)
  {
    v4 = dbl_18A683368[a3];
  }

  v5 = off_1E70ECD20;
  if (!a4)
  {
    v5 = off_1E70ECD28;
  }

  v6 = *v5;
  v7 = *off_1E70ECD00;
  v18[0] = *off_1E70ECCF0;
  v8 = *off_1E70ECD38;
  v17[0] = v7;
  v17[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v17[2] = *MEMORY[0x1E69657D8];
  v18[1] = v9;
  v18[2] = &unk_1EFE33C70;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v15 = *off_1E70ECCC0;
  v16 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v11];

  v13 = [off_1E70ECC18 fontWithDescriptor:v12 size:v4];

  return v13;
}

- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6
{
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [a3 _disabledColor];
  }

  return v8;
}

@end