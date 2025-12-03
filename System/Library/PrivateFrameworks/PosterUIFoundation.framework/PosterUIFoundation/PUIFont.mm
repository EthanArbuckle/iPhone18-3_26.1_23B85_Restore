@interface PUIFont
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFont:(id)font;
- (NSString)description;
- (PUIFont)init;
- (PUIFont)initWithCustomFont:(id)font;
- (PUIFont)initWithFontIdentifier:(id)identifier;
- (PUIFont)initWithFontIdentifier:(id)identifier weight:(double)weight;
- (double)_defaultWeightForFontIdentifier:(id)identifier;
- (id)effectiveFontForRole:(id)role ignoringWeight:(BOOL)weight;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation PUIFont

- (PUIFont)initWithFontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PUIFont *)self _defaultWeightForFontIdentifier:identifierCopy];
  v5 = [(PUIFont *)self initWithFontIdentifier:identifierCopy weight:?];

  return v5;
}

- (PUIFont)initWithFontIdentifier:(id)identifier weight:(double)weight
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PUIFont;
  v7 = [(PUIFont *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    fontIdentifier = v7->_fontIdentifier;
    v7->_fontIdentifier = v8;

    v7->_weight = weight;
  }

  return v7;
}

- (PUIFont)initWithCustomFont:(id)font
{
  fontCopy = font;
  v9.receiver = self;
  v9.super_class = PUIFont;
  v6 = [(PUIFont *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customFont, font);
  }

  return v7;
}

- (PUIFont)init
{
  pui_defaultFontIdentifier = [MEMORY[0x1E69DB878] pui_defaultFontIdentifier];
  v4 = [(PUIFont *)self initWithFontIdentifier:pui_defaultFontIdentifier];

  return v4;
}

- (id)effectiveFontForRole:(id)role ignoringWeight:(BOOL)weight
{
  weightCopy = weight;
  roleCopy = role;
  customFont = [(PUIFont *)self customFont];

  if (customFont)
  {
    customFont2 = [(PUIFont *)self customFont];
  }

  else
  {
    v9 = MEMORY[0x1E69DB878];
    fontIdentifier = [(PUIFont *)self fontIdentifier];
    v11 = [v9 pui_UIFontWithPUIFontIdentifier:fontIdentifier forRole:roleCopy];

    if (weightCopy)
    {
      v12 = v11;
    }

    else
    {
      [(PUIFont *)self weight];
      v12 = [v11 pui_UIFontWithVariantWeight:v13 forRole:roleCopy];
    }

    customFont2 = v12;
  }

  return customFont2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
    v8 = equalCopy && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (BOOL)isEqualToFont:(id)font
{
  fontCopy = font;
  v5 = fontCopy;
  if (self == fontCopy)
  {
    v11 = 1;
  }

  else if (fontCopy && ([(PUIFont *)self fontIdentifier], v6 = objc_claimAutoreleasedReturnValue(), [(PUIFont *)v5 fontIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PUIFont *)self weight], [(PUIFont *)v5 weight], BSFloatEqualToFloat()))
  {
    customFont = [(PUIFont *)self customFont];
    customFont2 = [(PUIFont *)v5 customFont];
    v11 = BSEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  fontIdentifier = [(PUIFont *)self fontIdentifier];
  v5 = [builder appendString:fontIdentifier];

  [(PUIFont *)self weight];
  v6 = [builder appendCGFloat:?];
  customFont = [(PUIFont *)self customFont];
  v8 = [builder appendObject:customFont];

  v9 = [builder hash];
  return v9;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __22__PUIFont_description__block_invoke;
  v10 = &unk_1E78548A0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  fontIdentifier = [(PUIFont *)self fontIdentifier];
  [formatterCopy appendString:fontIdentifier withName:@"timeFontIdentifier" skipIfEmpty:1];

  [(PUIFont *)self weight];
  v5 = [formatterCopy appendFloat:@"weight" withName:?];
  customFont = [(PUIFont *)self customFont];
  v7 = [formatterCopy appendObject:customFont withName:@"customFont" skipIfNil:1];
}

- (double)_defaultWeightForFontIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:identifier];
  pui_variantWeight = [v3 pui_variantWeight];

  return pui_variantWeight;
}

@end