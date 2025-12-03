@interface WFWorkflowIcon
+ (unint64_t)randomPaletteColor;
- (BOOL)isEqual:(id)equal;
- (WFColor)backgroundColor;
- (WFIcon)icon;
- (WFWorkflowIcon)init;
- (WFWorkflowIcon)initWithBackgroundColorValue:(int64_t)value glyphCharacter:(unsigned __int16)character customImageData:(id)data symbolOverride:(id)override;
- (WFWorkflowIcon)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowIcon

- (WFIcon)icon
{
  v3 = [WFIconGradientBackground alloc];
  backgroundColor = [(WFWorkflowIcon *)self backgroundColor];
  paletteGradient = [backgroundColor paletteGradient];
  v6 = [(WFIconGradientBackground *)v3 initWithGradient:paletteGradient];

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
  backgroundColorValue = [(WFWorkflowIcon *)self backgroundColorValue];

  return [WFColor colorWithRGBAValue:backgroundColorValue];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      backgroundColorValue = [(WFWorkflowIcon *)self backgroundColorValue];
      if (backgroundColorValue == [(WFWorkflowIcon *)v5 backgroundColorValue])
      {
        glyphCharacter = [(WFWorkflowIcon *)self glyphCharacter];
        v8 = glyphCharacter == [(WFWorkflowIcon *)v5 glyphCharacter];
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[WFWorkflowIcon backgroundColorValue](self, "backgroundColorValue")}];
  [coderCopy encodeObject:v6 forKey:@"backgroundColorValue"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[WFWorkflowIcon glyphCharacter](self, "glyphCharacter")}];
  [coderCopy encodeObject:v7 forKey:@"glyphCharacter"];

  customImageData = [(WFWorkflowIcon *)self customImageData];
  [coderCopy encodeObject:customImageData forKey:@"customImageData"];

  symbolOverride = [(WFWorkflowIcon *)self symbolOverride];
  [coderCopy encodeObject:symbolOverride forKey:@"symbolOverride"];
}

- (WFWorkflowIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColorValue"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"glyphCharacter"];
  unsignedLongValue = [v7 unsignedLongValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customImageData"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolOverride"];

  v11 = [(WFWorkflowIcon *)self initWithBackgroundColorValue:integerValue glyphCharacter:unsignedLongValue customImageData:v9 symbolOverride:v10];
  return v11;
}

- (WFWorkflowIcon)initWithBackgroundColorValue:(int64_t)value glyphCharacter:(unsigned __int16)character customImageData:(id)data symbolOverride:(id)override
{
  dataCopy = data;
  overrideCopy = override;
  v20.receiver = self;
  v20.super_class = WFWorkflowIcon;
  v12 = [(WFWorkflowIcon *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_backgroundColorValue = value;
    v12->_glyphCharacter = character;
    v14 = [dataCopy copy];
    customImageData = v13->_customImageData;
    v13->_customImageData = v14;

    v16 = [overrideCopy copy];
    symbolOverride = v13->_symbolOverride;
    v13->_symbolOverride = v16;

    v18 = v13;
  }

  return v13;
}

@end