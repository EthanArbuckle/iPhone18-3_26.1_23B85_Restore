@interface _UIPickerViewStyle_tvOS
- (CGSize)defaultSizeForTraitCollection:(id)collection;
- (id)createCenterHighlightView;
- (void)configureMaskGradientLayer:(id)layer;
@end

@implementation _UIPickerViewStyle_tvOS

- (CGSize)defaultSizeForTraitCollection:(id)collection
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)configureMaskGradientLayer:(id)layer
{
  v11[6] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v4 = [UIColor colorWithWhite:0.0 alpha:0.0];
  cGColor = [v4 CGColor];

  v6 = [UIColor colorWithWhite:0.0 alpha:0.71];
  cGColor2 = [v6 CGColor];

  v8 = [UIColor colorWithWhite:0.0 alpha:0.8];
  cGColor3 = [v8 CGColor];

  v11[0] = cGColor;
  v11[1] = cGColor2;
  v11[2] = cGColor3;
  v11[3] = cGColor3;
  v11[4] = cGColor2;
  v11[5] = cGColor;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];
  [layerCopy setColors:v10];

  [layerCopy setLocations:&unk_1EFE2BDE8];
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