@interface PRPosterSolidColorHomeScreenAppearance
- (BOOL)isEqual:(id)equal;
- (PRPosterColor)effectiveColor;
- (PRPosterSolidColorHomeScreenAppearance)init;
- (PRPosterSolidColorHomeScreenAppearance)initWithBSXPCCoder:(id)coder;
- (PRPosterSolidColorHomeScreenAppearance)initWithCoder:(id)coder;
- (PRPosterSolidColorHomeScreenAppearance)initWithColor:(id)color colorPickerConfiguration:(id)configuration;
- (id)description;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterSolidColorHomeScreenAppearance

- (PRPosterSolidColorHomeScreenAppearance)initWithColor:(id)color colorPickerConfiguration:(id)configuration
{
  colorCopy = color;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = PRPosterSolidColorHomeScreenAppearance;
  v8 = [(PRPosterSolidColorHomeScreenAppearance *)&v14 init];
  if (v8)
  {
    v9 = [colorCopy copy];
    color = v8->_color;
    v8->_color = v9;

    v11 = configurationCopy;
    if (!v11)
    {
      v11 = objc_alloc_init(PREditorColorPickerConfiguration);
      [(PREditorColorPickerConfiguration *)v11 setIdentifier:@"solidHomeScreenAppearance"];
    }

    colorPickerConfiguration = v8->_colorPickerConfiguration;
    v8->_colorPickerConfiguration = v11;
  }

  return v8;
}

- (PRPosterSolidColorHomeScreenAppearance)init
{
  v3 = objc_alloc_init(PREditorColorPickerConfiguration);
  v4 = [(PRPosterSolidColorHomeScreenAppearance *)self initWithColor:0 colorPickerConfiguration:v3];

  return v4;
}

- (PRPosterColor)effectiveColor
{
  color = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  if (color)
  {
    selectedColor = color;
  }

  else
  {
    colorPickerConfiguration = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
    selectedColor = [colorPickerConfiguration selectedColor];

    if (!selectedColor)
    {
      v6 = [PRPosterColor alloc];
      v7 = [MEMORY[0x1E69DC888] colorWithRed:0.984313725 green:0.921568627 blue:0.48627451 alpha:1.0];
      selectedColor = [(PRPosterColor *)v6 initWithColor:v7];
    }
  }

  v8 = [(PRPosterColor *)selectedColor copy];

  return v8;
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
  v9 = __53__PRPosterSolidColorHomeScreenAppearance_description__block_invoke;
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
  color = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  colorPickerConfiguration = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
  [coderCopy encodeObject:colorPickerConfiguration forKey:@"colorPickerConfiguration"];
}

- (PRPosterSolidColorHomeScreenAppearance)initWithCoder:(id)coder
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

  v10 = [(PRPosterSolidColorHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  color = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  colorPickerConfiguration = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
  [coderCopy encodeObject:colorPickerConfiguration forKey:@"colorPickerConfiguration"];
}

- (PRPosterSolidColorHomeScreenAppearance)initWithBSXPCCoder:(id)coder
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

  v10 = [(PRPosterSolidColorHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  color = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  v5 = [formatterCopy appendObject:color withName:@"color"];

  colorPickerConfiguration = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
  v7 = [formatterCopy appendObject:colorPickerConfiguration withName:@"colorPickerConfiguration"];
}

@end