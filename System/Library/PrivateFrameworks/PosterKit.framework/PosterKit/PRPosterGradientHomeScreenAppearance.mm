@interface PRPosterGradientHomeScreenAppearance
- (BOOL)isEqual:(id)equal;
- (NSArray)gradientColors;
- (PRPosterColor)effectiveColor;
- (PRPosterGradientHomeScreenAppearance)init;
- (PRPosterGradientHomeScreenAppearance)initWithBSXPCCoder:(id)coder;
- (PRPosterGradientHomeScreenAppearance)initWithCoder:(id)coder;
- (PRPosterGradientHomeScreenAppearance)initWithColor:(id)color colorPickerConfiguration:(id)configuration;
- (id)description;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterGradientHomeScreenAppearance

- (PRPosterGradientHomeScreenAppearance)initWithColor:(id)color colorPickerConfiguration:(id)configuration
{
  colorCopy = color;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = PRPosterGradientHomeScreenAppearance;
  v8 = [(PRPosterGradientHomeScreenAppearance *)&v14 init];
  if (v8)
  {
    v9 = [colorCopy copy];
    color = v8->_color;
    v8->_color = v9;

    v11 = configurationCopy;
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
  color = [(PRPosterGradientHomeScreenAppearance *)self color];
  if (color)
  {
    selectedColor = color;
  }

  else
  {
    colorPickerConfiguration = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
    selectedColor = [colorPickerConfiguration selectedColor];

    if (!selectedColor)
    {
      v6 = [PRPosterColor alloc];
      v7 = [MEMORY[0x1E69DC888] colorWithRed:0.215686275 green:0.270588235 blue:0.333333333 alpha:1.0];
      selectedColor = [(PRPosterColor *)v6 initWithColor:v7];
    }
  }

  v8 = [(PRPosterColor *)selectedColor copy];

  return v8;
}

- (NSArray)gradientColors
{
  v16[3] = *MEMORY[0x1E69E9840];
  effectiveColor = [(PRPosterGradientHomeScreenAppearance *)self effectiveColor];
  color = [effectiveColor color];
  v4 = color;
  if (color)
  {
    v5 = color;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  color = [(PRPosterGradientHomeScreenAppearance *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  colorPickerConfiguration = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
  [coderCopy encodeObject:colorPickerConfiguration forKey:@"colorPickerConfiguration"];
}

- (PRPosterGradientHomeScreenAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"color"];

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
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"colorPickerConfiguration"];

  v10 = [(PRPosterGradientHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  color = [(PRPosterGradientHomeScreenAppearance *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  colorPickerConfiguration = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
  [coderCopy encodeObject:colorPickerConfiguration forKey:@"colorPickerConfiguration"];
}

- (PRPosterGradientHomeScreenAppearance)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"color"];

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
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"colorPickerConfiguration"];

  v10 = [(PRPosterGradientHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  color = [(PRPosterGradientHomeScreenAppearance *)self color];
  v5 = [formatterCopy appendObject:color withName:@"color"];

  colorPickerConfiguration = [(PRPosterGradientHomeScreenAppearance *)self colorPickerConfiguration];
  v7 = [formatterCopy appendObject:colorPickerConfiguration withName:@"colorPickerConfiguration"];
}

@end