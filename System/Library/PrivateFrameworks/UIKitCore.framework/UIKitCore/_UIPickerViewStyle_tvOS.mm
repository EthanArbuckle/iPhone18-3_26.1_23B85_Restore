@interface _UIPickerViewStyle_tvOS
- (CGSize)defaultSizeForTraitCollection:(id)a3;
- (id)createCenterHighlightView;
- (void)configureMaskGradientLayer:(id)a3;
@end

@implementation _UIPickerViewStyle_tvOS

- (CGSize)defaultSizeForTraitCollection:(id)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)configureMaskGradientLayer:(id)a3
{
  v11[6] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [UIColor colorWithWhite:0.0 alpha:0.0];
  v5 = [v4 CGColor];

  v6 = [UIColor colorWithWhite:0.0 alpha:0.71];
  v7 = [v6 CGColor];

  v8 = [UIColor colorWithWhite:0.0 alpha:0.8];
  v9 = [v8 CGColor];

  v11[0] = v5;
  v11[1] = v7;
  v11[2] = v9;
  v11[3] = v9;
  v11[4] = v7;
  v11[5] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];
  [v3 setColors:v10];

  [v3 setLocations:&unk_1EFE2BDE8];
}

- (id)createCenterHighlightView
{
  v2 = objc_opt_new();
  v3 = [UIColor colorWithDynamicProvider:&__block_literal_global_223];
  [v2 setBackgroundColor:v3];

  [v2 _setContinuousCornerRadius:26.0];

  return v2;
}

@end