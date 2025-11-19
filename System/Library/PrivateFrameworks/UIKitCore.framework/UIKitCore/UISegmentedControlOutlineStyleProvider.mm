@interface UISegmentedControlOutlineStyleProvider
- (double)defaultHeightForControlSize:(int)a3;
- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6;
- (id)fontForControlSize:(int)a3 selected:(BOOL)a4;
@end

@implementation UISegmentedControlOutlineStyleProvider

- (double)defaultHeightForControlSize:(int)a3
{
  result = 28.0;
  if (a3 == 1)
  {
    return 22.0;
  }

  return result;
}

- (id)fontForControlSize:(int)a3 selected:(BOOL)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (a3 <= 2)
  {
    v4 = dbl_18A682788[a3];
  }

  v5 = *off_1E70ECD28;
  v6 = *off_1E70ECD00;
  v17[0] = *off_1E70ECCF0;
  v7 = *off_1E70ECD38;
  v16[0] = v6;
  v16[1] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v16[2] = *MEMORY[0x1E69657D8];
  v17[1] = v8;
  v17[2] = &unk_1EFE33250;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = *off_1E70ECCC0;
  v15 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v10];

  v12 = [off_1E70ECC18 fontWithDescriptor:v11 size:v4];

  return v12;
}

- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6
{
  if (a4)
  {
    [a3 _inheritedInteractionTintColor];
  }

  else
  {
    [a3 _disabledColor];
  }
  v6 = ;

  return v6;
}

@end