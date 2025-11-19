@interface PRPosterGradientHomeScreenAppearance
- (BOOL)isEqual:(id)a3;
- (NSArray)gradientColors;
- (PRPosterColor)effectiveColor;
- (PRPosterGradientHomeScreenAppearance)init;
- (PRPosterGradientHomeScreenAppearance)initWithBSXPCCoder:(id)a3;
- (PRPosterGradientHomeScreenAppearance)initWithCoder:(id)a3;
- (PRPosterGradientHomeScreenAppearance)initWithColor:(id)a3 colorPickerConfiguration:(id)a4;
- (id)description;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterGradientHomeScreenAppearance

- (PRPosterGradientHomeScreenAppearance)initWithColor:(id)a3 colorPickerConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRPosterGradientHomeScreenAppearance;
  v8 = [(PRPosterGradientHomeScreenAppearance *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    color = v8->_color;
    v8->_color = v9;

    v11 = v7;
    if (!v11)
    {
      v11 = objc_alloc_init(PREditorColorPickerConfiguration);
      [(PREditorColorPickerConfiguration *)v11 setIdentifier:@"gradientHomeScreenAppearance"];
    }

    colorPickerConfiguration = v8->_colorPickerConfiguration;
    v8->_colorPickerConfiguration = v11;
  }

  return v8;
}

- (PRPosterGradientHomeScreenAppearance)init
{
  v3 = objc_alloc_init(PREditorColorPickerConfiguration);
  v4 = [(PRPosterGradientHomeScreenAppearance *)self initWithColor:0 colorPickerConfiguration:v3];

  return v4;
}

- (PRPosterColor)effectiveColor
{
  v3 = [(PRPosterGradientHomeScreenAppearance *)self color];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
    v4 = [v5 selectedColor];

    if (!v4)
    {
      v6 = [PRPosterColor alloc];
      v7 = [MEMORY[0x1E69DC888] colorWithRed:0.215686275 green:0.270588235 blue:0.333333333 alpha:1.0];
      v4 = [(PRPosterColor *)v6 initWithColor:v7];
    }
  }

  v8 = [(PRPosterColor *)v4 copy];

  return v8;
}

- (NSArray)gradientColors
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = [(PRPosterGradientHomeScreenAppearance *)self effectiveColor];
  v3 = [v2 color];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.215686275 green:0.270588235 blue:0.333333333 alpha:1.0];
  }

  v6 = v5;

  v14 = 0.0;
  v15 = 0.0;
  v13 = 0.0;
  [v6 getHue:&v15 saturation:&v14 brightness:&v13 alpha:0];
  if (v15 + -0.06 < 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [MEMORY[0x1E69DC888] colorWithHue:v15 + -0.06 + v7 saturation:v14 brightness:v13 + 0.0 alpha:1.0];
  v16[0] = v8;
  v16[1] = v6;
  if (v15 + 0.06 > 1.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [MEMORY[0x1E69DC888] colorWithHue:v15 + 0.06 - v9 saturation:v14 brightness:v13 + -0.1 alpha:1.0];
  v16[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if (BSEqualObjects())
  {
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__PRPosterGradientHomeScreenAppearance_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterGradientHomeScreenAppearance *)self color];
  [v4 encodeObject:v5 forKey:@"color"];

  v6 = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
  [v4 encodeObject:v6 forKey:@"colorPickerConfiguration"];
}

- (PRPosterGradientHomeScreenAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"color"];

    if (v7)
    {
      v5 = [[PRPosterColor alloc] initWithColor:v7 preferredStyle:1];
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"colorPickerConfiguration"];

  v10 = [(PRPosterGradientHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterGradientHomeScreenAppearance *)self color];
  [v4 encodeObject:v5 forKey:@"color"];

  v6 = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
  [v4 encodeObject:v6 forKey:@"colorPickerConfiguration"];
}

- (PRPosterGradientHomeScreenAppearance)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"color"];

    if (v7)
    {
      v5 = [[PRPosterColor alloc] initWithColor:v7 preferredStyle:1];
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"colorPickerConfiguration"];

  v10 = [(PRPosterGradientHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(PRPosterGradientHomeScreenAppearance *)self color];
  v5 = [v8 appendObject:v4 withName:@"color"];

  v6 = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
  v7 = [v8 appendObject:v6 withName:@"colorPickerConfiguration"];
}

@end