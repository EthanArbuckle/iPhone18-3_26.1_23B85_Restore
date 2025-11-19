@interface PRPosterSolidColorHomeScreenAppearance
- (BOOL)isEqual:(id)a3;
- (PRPosterColor)effectiveColor;
- (PRPosterSolidColorHomeScreenAppearance)init;
- (PRPosterSolidColorHomeScreenAppearance)initWithBSXPCCoder:(id)a3;
- (PRPosterSolidColorHomeScreenAppearance)initWithCoder:(id)a3;
- (PRPosterSolidColorHomeScreenAppearance)initWithColor:(id)a3 colorPickerConfiguration:(id)a4;
- (id)description;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterSolidColorHomeScreenAppearance

- (PRPosterSolidColorHomeScreenAppearance)initWithColor:(id)a3 colorPickerConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRPosterSolidColorHomeScreenAppearance;
  v8 = [(PRPosterSolidColorHomeScreenAppearance *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    color = v8->_color;
    v8->_color = v9;

    v11 = v7;
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
  v3 = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
    v4 = [v5 selectedColor];

    if (!v4)
    {
      v6 = [PRPosterColor alloc];
      v7 = [MEMORY[0x1E69DC888] colorWithRed:0.984313725 green:0.921568627 blue:0.48627451 alpha:1.0];
      v4 = [(PRPosterColor *)v6 initWithColor:v7];
    }
  }

  v8 = [(PRPosterColor *)v4 copy];

  return v8;
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
  v9 = __53__PRPosterSolidColorHomeScreenAppearance_description__block_invoke;
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
  v5 = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  [v4 encodeObject:v5 forKey:@"color"];

  v6 = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
  [v4 encodeObject:v6 forKey:@"colorPickerConfiguration"];
}

- (PRPosterSolidColorHomeScreenAppearance)initWithCoder:(id)a3
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

  v10 = [(PRPosterSolidColorHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  [v4 encodeObject:v5 forKey:@"color"];

  v6 = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
  [v4 encodeObject:v6 forKey:@"colorPickerConfiguration"];
}

- (PRPosterSolidColorHomeScreenAppearance)initWithBSXPCCoder:(id)a3
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

  v10 = [(PRPosterSolidColorHomeScreenAppearance *)self initWithColor:v5 colorPickerConfiguration:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(PRPosterSolidColorHomeScreenAppearance *)self color];
  v5 = [v8 appendObject:v4 withName:@"color"];

  v6 = [(PRPosterSolidColorHomeScreenAppearance *)self colorPickerConfiguration];
  v7 = [v8 appendObject:v6 withName:@"colorPickerConfiguration"];
}

@end