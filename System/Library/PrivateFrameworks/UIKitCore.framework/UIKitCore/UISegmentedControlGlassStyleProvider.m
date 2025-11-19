@interface UISegmentedControlGlassStyleProvider
- (UIFont)fontWithBackgroundMaterial;
- (_UIViewMaterial)backgroundMaterial;
- (id)createBackdropView;
@end

@implementation UISegmentedControlGlassStyleProvider

- (id)createBackdropView
{
  v2 = objc_opt_new();
  v3 = *MEMORY[0x1E6979E40];
  v4 = [v2 layer];
  [v4 setCornerRadius:v3];

  return v2;
}

- (_UIViewMaterial)backgroundMaterial
{
  v2 = [[_UIViewGlass alloc] initWithVariant:0 size:0 smoothness:0.0];
  [(_UIViewGlass *)v2 setFlexible:1];

  return v2;
}

- (UIFont)fontWithBackgroundMaterial
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = *off_1E70ECD00;
  v13[0] = *off_1E70ECCF0;
  v3 = *off_1E70ECD38;
  v12[0] = v2;
  v12[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*off_1E70ECD28];
  v12[2] = *MEMORY[0x1E69657D8];
  v13[1] = v4;
  v13[2] = &unk_1EFE335E0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *off_1E70ECCC0;
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v6];

  v8 = [off_1E70ECC18 fontWithDescriptor:v7 size:15.0];

  return v8;
}

@end