@interface PUIFont
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFont:(id)a3;
- (NSString)description;
- (PUIFont)init;
- (PUIFont)initWithCustomFont:(id)a3;
- (PUIFont)initWithFontIdentifier:(id)a3;
- (PUIFont)initWithFontIdentifier:(id)a3 weight:(double)a4;
- (double)_defaultWeightForFontIdentifier:(id)a3;
- (id)effectiveFontForRole:(id)a3 ignoringWeight:(BOOL)a4;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation PUIFont

- (PUIFont)initWithFontIdentifier:(id)a3
{
  v4 = a3;
  [(PUIFont *)self _defaultWeightForFontIdentifier:v4];
  v5 = [(PUIFont *)self initWithFontIdentifier:v4 weight:?];

  return v5;
}

- (PUIFont)initWithFontIdentifier:(id)a3 weight:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PUIFont;
  v7 = [(PUIFont *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    fontIdentifier = v7->_fontIdentifier;
    v7->_fontIdentifier = v8;

    v7->_weight = a4;
  }

  return v7;
}

- (PUIFont)initWithCustomFont:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUIFont;
  v6 = [(PUIFont *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customFont, a3);
  }

  return v7;
}

- (PUIFont)init
{
  v3 = [MEMORY[0x1E69DB878] pui_defaultFontIdentifier];
  v4 = [(PUIFont *)self initWithFontIdentifier:v3];

  return v4;
}

- (id)effectiveFontForRole:(id)a3 ignoringWeight:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUIFont *)self customFont];

  if (v7)
  {
    v8 = [(PUIFont *)self customFont];
  }

  else
  {
    v9 = MEMORY[0x1E69DB878];
    v10 = [(PUIFont *)self fontIdentifier];
    v11 = [v9 pui_UIFontWithPUIFontIdentifier:v10 forRole:v6];

    if (v4)
    {
      v12 = v11;
    }

    else
    {
      [(PUIFont *)self weight];
      v12 = [v11 pui_UIFontWithVariantWeight:v13 forRole:v6];
    }

    v8 = v12;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
    v8 = v4 && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (BOOL)isEqualToFont:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else if (v4 && ([(PUIFont *)self fontIdentifier], v6 = objc_claimAutoreleasedReturnValue(), [(PUIFont *)v5 fontIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PUIFont *)self weight], [(PUIFont *)v5 weight], BSFloatEqualToFloat()))
  {
    v9 = [(PUIFont *)self customFont];
    v10 = [(PUIFont *)v5 customFont];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PUIFont *)self fontIdentifier];
  v5 = [v3 appendString:v4];

  [(PUIFont *)self weight];
  v6 = [v3 appendCGFloat:?];
  v7 = [(PUIFont *)self customFont];
  v8 = [v3 appendObject:v7];

  v9 = [v3 hash];
  return v9;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __22__PUIFont_description__block_invoke;
  v10 = &unk_1E78548A0;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(PUIFont *)self fontIdentifier];
  [v8 appendString:v4 withName:@"timeFontIdentifier" skipIfEmpty:1];

  [(PUIFont *)self weight];
  v5 = [v8 appendFloat:@"weight" withName:?];
  v6 = [(PUIFont *)self customFont];
  v7 = [v8 appendObject:v6 withName:@"customFont" skipIfNil:1];
}

- (double)_defaultWeightForFontIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:a3];
  v4 = [v3 pui_variantWeight];

  return v4;
}

@end