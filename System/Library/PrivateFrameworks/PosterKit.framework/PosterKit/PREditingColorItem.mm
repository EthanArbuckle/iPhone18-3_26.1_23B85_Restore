@interface PREditingColorItem
+ (id)_legibleIconColorForBackgroundColor:(id)color;
+ (id)suggestedColorItemWithColor:(id)color context:(unint64_t)context;
+ (id)vibrantMaterialItem;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedName;
- (PREditingColorItem)initWithPickerColor:(id)color variation:(double)variation context:(unint64_t)context;
- (PRPosterColor)baseColor;
- (PRPosterColor)color;
- (PRPosterColor)displayColor;
- (id)description;
@end

@implementation PREditingColorItem

+ (id)vibrantMaterialItem
{
  v2 = [PREditorColorPickerConstantColor alloc];
  v3 = +[PRPosterColor vibrantMaterialColor];
  v4 = [(PREditorColorPickerConstantColor *)v2 initWithColor:v3 initialVariation:0.0];

  v5 = [[PREditingColorItem alloc] initWithPickerColor:v4 variation:1 context:0.0];
  [(PREditingColorItem *)v5 setShowsSlider:0];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v8 = [MEMORY[0x1E69DCAB8] imageNamed:@"material" inBundle:v6 compatibleWithTraitCollection:0];
  v9 = [v7 initWithImage:v8];

  [v9 setContentMode:1];
  [(PREditingColorItem *)v5 setItemView:v9];

  return v5;
}

+ (id)suggestedColorItemWithColor:(id)color context:(unint64_t)context
{
  colorCopy = color;
  if (context == 1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = off_1E7841A50;
  if (context != 1)
  {
    v8 = off_1E7841A48;
  }

  v9 = [objc_alloc(*v8) initWithColor:colorCopy initialVariation:v7];
  v10 = [[PREditingColorItem alloc] initWithPickerColor:v9 variation:0 context:v7];
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  color = [colorCopy color];
  [v11 setBackgroundColor:color];

  v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v14 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"sparkles"];
  v15 = [v13 initWithImage:v14];

  color2 = [colorCopy color];
  v17 = [self _legibleIconColorForBackgroundColor:color2];
  [v15 setTintColor:v17];

  [v11 bounds];
  v21 = CGRectInset(v20, 6.0, 6.0);
  [v15 setFrame:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
  [v15 setContentMode:1];
  [v11 addSubview:v15];
  [v15 setAutoresizingMask:18];
  [(PREditingColorItem *)v10 setItemView:v11];

  return v10;
}

- (PREditingColorItem)initWithPickerColor:(id)color variation:(double)variation context:(unint64_t)context
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = PREditingColorItem;
  v10 = [(PREditingColorItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pickerColor, color);
    v11->_pickerRespondsToDisplayColorSelector = objc_opt_respondsToSelector() & 1;
    v11->_variation = variation;
    v11->_showsSlider = 1;
    v11->_context = context;
  }

  return v11;
}

- (PRPosterColor)baseColor
{
  pickerColor = [(PREditingColorItem *)self pickerColor];
  baseColor = [pickerColor baseColor];

  return baseColor;
}

- (NSString)localizedName
{
  pickerColor = [(PREditingColorItem *)self pickerColor];
  localizedName = [pickerColor localizedName];

  return localizedName;
}

- (PRPosterColor)color
{
  pickerColor = [(PREditingColorItem *)self pickerColor];
  v4 = [pickerColor colorWithVariation:self->_variation];

  return v4;
}

- (PRPosterColor)displayColor
{
  pickerRespondsToDisplayColorSelector = self->_pickerRespondsToDisplayColorSelector;
  pickerColor = [(PREditingColorItem *)self pickerColor];
  v5 = pickerColor;
  variation = self->_variation;
  if (pickerRespondsToDisplayColorSelector)
  {
    [pickerColor displayColorWithVariation:variation];
  }

  else
  {
    [pickerColor colorWithVariation:variation];
  }
  v7 = ;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      baseColor = [(PREditingColorItem *)self baseColor];
      baseColor2 = [(PREditingColorItem *)v5 baseColor];
      if (BSEqualObjects())
      {
        [(PREditingColorItem *)self variation];
        v9 = v8;
        [(PREditingColorItem *)v5 variation];
        v11 = v9 == v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  baseColor = [(PREditingColorItem *)self baseColor];
  [(PREditingColorItem *)self variation];
  v6 = [v3 stringWithFormat:@"<PREditingColorItem: %p> Base Color: %@ Variation: %.5f", self, baseColor, v5];

  return v6;
}

+ (id)_legibleIconColorForBackgroundColor:(id)color
{
  v9 = 0;
  v10 = 0;
  v8 = 0.0;
  v3 = [color colorWithAlphaComponent:1.0];
  v4 = [v3 getHue:&v10 saturation:&v9 brightness:&v8 alpha:0];

  if (v4 && (v5 = v8, v8 >= 0.9))
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  return blackColor;
}

@end