@interface WFWorkflowIcon
+ (unint64_t)randomPaletteColor;
- (BOOL)isEqual:(id)a3;
- (WFColor)backgroundColor;
- (WFIcon)icon;
- (WFWorkflowIcon)init;
- (WFWorkflowIcon)initWithBackgroundColorValue:(int64_t)a3 glyphCharacter:(unsigned __int16)a4 customImageData:(id)a5 symbolOverride:(id)a6;
- (WFWorkflowIcon)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowIcon

- (WFIcon)icon
{
  v3 = [WFIconGradientBackground alloc];
  v4 = [(WFWorkflowIcon *)self backgroundColor];
  v5 = [v4 paletteGradient];
  v6 = [(WFIconGradientBackground *)v3 initWithGradient:v5];

  v7 = WFSystemImageNameForGlyphCharacter([(WFWorkflowIcon *)self glyphCharacter]);
  if (v7)
  {
    v8 = [[WFSymbolIcon alloc] initWithSymbolName:v7 background:v6];
  }

  else
  {
    v8 = [[WFWorkflowGlyphIcon alloc] initWithGlyph:[(WFWorkflowIcon *)self glyphCharacter] background:v6];
  }

  v9 = v8;

  return v9;
}

- (WFColor)backgroundColor
{
  v2 = [(WFWorkflowIcon *)self backgroundColorValue];

  return [WFColor colorWithRGBAValue:v2];
}

+ (unint64_t)randomPaletteColor
{
  v2 = +[WFColor workflowPalette];
  v3 = [v2 count];

  return arc4random_uniform(v3);
}

- (WFWorkflowIcon)init
{
  v3 = +[WFWorkflowIcon randomPaletteColor];
  v4 = +[WFWorkflowIcon defaultGlyphCharacter];

  return [(WFWorkflowIcon *)self initWithPaletteColor:v3 glyphCharacter:v4 customImageData:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WFWorkflowIcon *)self backgroundColorValue];
      if (v6 == [(WFWorkflowIcon *)v5 backgroundColorValue])
      {
        v7 = [(WFWorkflowIcon *)self glyphCharacter];
        v8 = v7 == [(WFWorkflowIcon *)v5 glyphCharacter];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[WFWorkflowIcon backgroundColorValue](self, "backgroundColorValue")}];
  [v5 encodeObject:v6 forKey:@"backgroundColorValue"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[WFWorkflowIcon glyphCharacter](self, "glyphCharacter")}];
  [v5 encodeObject:v7 forKey:@"glyphCharacter"];

  v8 = [(WFWorkflowIcon *)self customImageData];
  [v5 encodeObject:v8 forKey:@"customImageData"];

  v9 = [(WFWorkflowIcon *)self symbolOverride];
  [v5 encodeObject:v9 forKey:@"symbolOverride"];
}

- (WFWorkflowIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColorValue"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"glyphCharacter"];
  v8 = [v7 unsignedLongValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customImageData"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolOverride"];

  v11 = [(WFWorkflowIcon *)self initWithBackgroundColorValue:v6 glyphCharacter:v8 customImageData:v9 symbolOverride:v10];
  return v11;
}

- (WFWorkflowIcon)initWithBackgroundColorValue:(int64_t)a3 glyphCharacter:(unsigned __int16)a4 customImageData:(id)a5 symbolOverride:(id)a6
{
  v10 = a5;
  v11 = a6;
  v20.receiver = self;
  v20.super_class = WFWorkflowIcon;
  v12 = [(WFWorkflowIcon *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_backgroundColorValue = a3;
    v12->_glyphCharacter = a4;
    v14 = [v10 copy];
    customImageData = v13->_customImageData;
    v13->_customImageData = v14;

    v16 = [v11 copy];
    symbolOverride = v13->_symbolOverride;
    v13->_symbolOverride = v16;

    v18 = v13;
  }

  return v13;
}

@end