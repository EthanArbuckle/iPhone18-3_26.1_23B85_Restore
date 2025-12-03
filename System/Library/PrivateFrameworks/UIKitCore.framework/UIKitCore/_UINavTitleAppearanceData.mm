@interface _UINavTitleAppearanceData
+ (id)decodeFromCoder:(id)coder prefix:(id)prefix;
+ (id)standardTitleDataForIdiom:(int64_t)idiom;
- (BOOL)checkEqualTo:(id)to;
- (NSDictionary)largeSubtitleTextAttributes;
- (NSDictionary)largeTitleTextAttributes;
- (NSDictionary)largeTitleTextWithSubtitleAttributes;
- (NSDictionary)subtitleTextAttributes;
- (NSDictionary)titleTextAttributes;
- (NSDictionary)titleTextWithSubtitleAttributes;
- (UIOffset)titlePositionAdjustment;
- (id)replicate;
- (int64_t)hashInto:(int64_t)into;
- (void)describeInto:(id)into;
- (void)encodeToCoder:(id)coder prefix:(id)prefix;
- (void)setLargeSubtitleTextAttributes:(id)attributes;
- (void)setLargeTitleTextAttributes:(id)attributes;
- (void)setSubtitleTextAttributes:(id)attributes;
- (void)setTitlePositionAdjustment:(UIOffset)adjustment;
- (void)setTitleTextAttributes:(id)attributes;
@end

@implementation _UINavTitleAppearanceData

- (NSDictionary)titleTextAttributes
{
  titleTextAttributes = self->_titleTextAttributes;
  if (titleTextAttributes)
  {
    v3 = titleTextAttributes;
  }

  else
  {
    defaultInlineTitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(defaultInlineTitleFont);
  }

  return v3;
}

- (UIOffset)titlePositionAdjustment
{
  horizontal = self->_titlePositionAdjustment.horizontal;
  vertical = self->_titlePositionAdjustment.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (NSDictionary)largeTitleTextAttributes
{
  largeTitleTextAttributes = self->_largeTitleTextAttributes;
  if (largeTitleTextAttributes)
  {
    v3 = largeTitleTextAttributes;
  }

  else
  {
    defaultLargeTitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(defaultLargeTitleFont);
  }

  return v3;
}

- (id)replicate
{
  v17.receiver = self;
  v17.super_class = _UINavTitleAppearanceData;
  replicate = [(_UIBarAppearanceData *)&v17 replicate];
  v4 = [(NSDictionary *)self->_titleTextAttributes copy];
  v5 = *(replicate + 16);
  *(replicate + 16) = v4;

  v6 = [(NSDictionary *)self->_titleTextWithSubtitleAttributes copy];
  v7 = *(replicate + 72);
  *(replicate + 72) = v6;

  v8 = [(NSDictionary *)self->_largeTitleTextAttributes copy];
  v9 = *(replicate + 24);
  *(replicate + 24) = v8;

  v10 = [(NSDictionary *)self->_largeTitleTextWithSubtitleAttributes copy];
  v11 = *(replicate + 80);
  *(replicate + 80) = v10;

  *(replicate + 32) = self->_titlePositionAdjustment;
  *(replicate + 56) = self->_titleFontProviderIdiom;
  objc_storeStrong((replicate + 48), self->_titleFontProvider);
  *(replicate + 64) = self->_titleControlHidden;
  v12 = [(NSDictionary *)self->_subtitleTextAttributes copy];
  v13 = *(replicate + 88);
  *(replicate + 88) = v12;

  v14 = [(NSDictionary *)self->_largeSubtitleTextAttributes copy];
  v15 = *(replicate + 96);
  *(replicate + 96) = v14;

  return replicate;
}

+ (id)standardTitleDataForIdiom:(int64_t)idiom
{
  v4 = _UIStandardTitleData;
  if (!_UIStandardTitleData)
  {
    v5 = objc_opt_new();
    v6 = _UIStandardTitleData;
    _UIStandardTitleData = v5;

    v4 = _UIStandardTitleData;
  }

  if ((idiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    idiom = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = v8[2];
    v8[2] = 0;

    v10 = v8[9];
    v8[9] = 0;

    v11 = v8[3];
    v8[3] = 0;

    v12 = v8[10];
    v8[10] = 0;

    v8[4] = 0;
    v8[5] = 0;
    v13 = [_UINavigationBarTitleFontProvider providerForIdiom:idiom];
    v14 = v8[6];
    v8[6] = v13;

    v8[7] = idiom;
    v15 = v8[11];
    v8[11] = 0;

    markReadOnly = [v8 markReadOnly];
    v17 = _UIStandardTitleData;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
    [v17 setObject:v8 forKeyedSubscript:v18];
  }

  return v8;
}

+ (id)decodeFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineAttributes"];
    v8 = [coderCopy _ui_decodeTextAttributesForKey:v7];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"LargeAttributes"];
    v10 = [coderCopy _ui_decodeTextAttributesForKey:v9];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineOffset"];
    [coderCopy decodeUIOffsetForKey:v11];
    v13 = v12;
    v15 = v14;

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"TitleControlHidden"];
    v17 = [coderCopy decodeBoolForKey:v16];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [coderCopy _ui_decodeTextAttributesForKey:@"InlineAttributes"];
    v10 = [coderCopy _ui_decodeTextAttributesForKey:@"LargeAttributes"];
    [coderCopy decodeUIOffsetForKey:@"InlineOffset"];
    v13 = v18;
    v15 = v19;
    v17 = [coderCopy decodeBoolForKey:@"TitleControlHidden"];
    if (v17)
    {
      goto LABEL_10;
    }
  }

  if (!v8 && !v10 && v13 == 0.0 && v15 == 0.0)
  {
    v20 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v20 = objc_opt_new();
  objc_storeStrong((v20 + 16), v8);
  v21 = @"InlineWithSubtitleAttributes";
  if (prefixCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineWithSubtitleAttributes"];
  }

  v22 = [coderCopy _ui_decodeTextAttributesForKey:v21];
  v23 = *(v20 + 72);
  *(v20 + 72) = v22;

  if (prefixCopy)
  {

    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    objc_storeStrong((v20 + 24), v10);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"LargeWithSubtitleAttributes"];
  }

  else
  {
    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    objc_storeStrong((v20 + 24), v10);
    v24 = @"LargeWithSubtitleAttributes";
  }

  v25 = [coderCopy _ui_decodeTextAttributesForKey:v24];
  v26 = *(v20 + 80);
  *(v20 + 80) = v25;

  if (prefixCopy)
  {

    *(v20 + 64) = v17;
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineSubtitleAttrs"];
  }

  else
  {
    *(v20 + 64) = v17;
    v27 = @"InlineSubtitleAttrs";
  }

  v28 = [coderCopy _ui_decodeTextAttributesForKey:v27];
  v29 = *(v20 + 88);
  *(v20 + 88) = v28;

  v30 = @"LargeSubtitleAttributes";
  if (prefixCopy)
  {

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"LargeSubtitleAttributes"];
  }

  v31 = [coderCopy _ui_decodeTextAttributesForKey:v30];
  v32 = *(v20 + 96);
  *(v20 + 96) = v31;

  v33 = @"TitleProviderIdiom";
  if (prefixCopy)
  {

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"TitleProviderIdiom"];
  }

  if ([coderCopy containsValueForKey:v33])
  {
    v34 = [coderCopy decodeIntegerForKey:v33];
  }

  else
  {
    v34 = 0;
  }

  *(v20 + 56) = v34;
  v35 = [_UINavigationBarTitleFontProvider providerForIdiom:?];
  v36 = *(v20 + 48);
  *(v20 + 48) = v35;

LABEL_26:

  return v20;
}

- (void)encodeToCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v7 = _UIStandardTitleData;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_titleFontProviderIdiom];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9 == self)
  {
    goto LABEL_43;
  }

  titleTextAttributes = self->_titleTextAttributes;
  if (titleTextAttributes)
  {
    if (!prefixCopy)
    {
      [coderCopy _ui_encodeTextAttributes:self->_titleTextAttributes forKey:@"InlineAttributes"];
      titleTextWithSubtitleAttributes = self->_titleTextWithSubtitleAttributes;
      if (!titleTextWithSubtitleAttributes)
      {
        goto LABEL_12;
      }

      v15 = coderCopy;
      goto LABEL_11;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineAttributes"];
    [coderCopy _ui_encodeTextAttributes:titleTextAttributes forKey:v11];
  }

  v12 = self->_titleTextWithSubtitleAttributes;
  if (v12)
  {
    if (prefixCopy)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineWithSubtitleAttributes"];
      [coderCopy _ui_encodeTextAttributes:v12 forKey:v13];

      goto LABEL_12;
    }

    v15 = coderCopy;
    titleTextWithSubtitleAttributes = self->_titleTextWithSubtitleAttributes;
LABEL_11:
    [v15 _ui_encodeTextAttributes:titleTextWithSubtitleAttributes forKey:@"InlineWithSubtitleAttributes"];
  }

LABEL_12:
  if (self->_titlePositionAdjustment.horizontal == 0.0 && self->_titlePositionAdjustment.vertical == 0.0)
  {
    goto LABEL_16;
  }

  if (prefixCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineOffset"];
    [coderCopy encodeUIOffset:v16 forKey:{self->_titlePositionAdjustment.horizontal, self->_titlePositionAdjustment.vertical}];

LABEL_16:
    largeTitleTextAttributes = self->_largeTitleTextAttributes;
    if (!largeTitleTextAttributes)
    {
      goto LABEL_23;
    }

    if (prefixCopy)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"LargeAttributes"];
      [coderCopy _ui_encodeTextAttributes:largeTitleTextAttributes forKey:v18];

      goto LABEL_23;
    }

    v19 = coderCopy;
    v20 = self->_largeTitleTextAttributes;
    goto LABEL_22;
  }

  [coderCopy encodeUIOffset:@"InlineOffset" forKey:?];
  v20 = self->_largeTitleTextAttributes;
  if (!v20)
  {
    goto LABEL_23;
  }

  v19 = coderCopy;
LABEL_22:
  [v19 _ui_encodeTextAttributes:v20 forKey:@"LargeAttributes"];
LABEL_23:
  largeTitleTextWithSubtitleAttributes = self->_largeTitleTextWithSubtitleAttributes;
  if (largeTitleTextWithSubtitleAttributes)
  {
    if (!prefixCopy)
    {
      [coderCopy _ui_encodeTextAttributes:self->_largeTitleTextWithSubtitleAttributes forKey:@"LargeWithSubtitleAttributes"];
      if (!self->_titleControlHidden)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"LargeWithSubtitleAttributes"];
    [coderCopy _ui_encodeTextAttributes:largeTitleTextWithSubtitleAttributes forKey:v22];
  }

  if (!self->_titleControlHidden)
  {
    goto LABEL_31;
  }

  if (prefixCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"TitleControlHidden"];
    [coderCopy encodeBool:1 forKey:v23];

    goto LABEL_31;
  }

LABEL_30:
  [coderCopy encodeBool:1 forKey:@"TitleControlHidden"];
LABEL_31:
  subtitleTextAttributes = self->_subtitleTextAttributes;
  if (subtitleTextAttributes)
  {
    if (!prefixCopy)
    {
      [coderCopy _ui_encodeTextAttributes:self->_subtitleTextAttributes forKey:@"InlineSubtitleAttrs"];
      largeSubtitleTextAttributes = self->_largeSubtitleTextAttributes;
      if (!largeSubtitleTextAttributes)
      {
        goto LABEL_41;
      }

      v29 = coderCopy;
      goto LABEL_40;
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"InlineSubtitleAttrs"];
    [coderCopy _ui_encodeTextAttributes:subtitleTextAttributes forKey:v25];
  }

  v26 = self->_largeSubtitleTextAttributes;
  if (v26)
  {
    if (prefixCopy)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"LargeSubtitleAttributes"];
      [coderCopy _ui_encodeTextAttributes:v26 forKey:v27];

      goto LABEL_41;
    }

    v29 = coderCopy;
    largeSubtitleTextAttributes = self->_largeSubtitleTextAttributes;
LABEL_40:
    [v29 _ui_encodeTextAttributes:largeSubtitleTextAttributes forKey:@"LargeSubtitleAttributes"];
  }

LABEL_41:
  titleFontProviderIdiom = self->_titleFontProviderIdiom;
  if (titleFontProviderIdiom > 5 || ((1 << titleFontProviderIdiom) & 0x23) == 0)
  {
    if (prefixCopy)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"TitleProviderIdiom"];
      [coderCopy encodeInteger:titleFontProviderIdiom forKey:v31];
    }

    else
    {
      [coderCopy encodeInteger:titleFontProviderIdiom forKey:@"TitleProviderIdiom"];
    }
  }

LABEL_43:
}

- (void)describeInto:(id)into
{
  intoCopy = into;
  v8.receiver = self;
  v8.super_class = _UINavTitleAppearanceData;
  [(_UIBarAppearanceData *)&v8 describeInto:intoCopy];
  [intoCopy appendString:@" titleTextAttributes="];
  _UIBADPrettyPrintTextAttributes(intoCopy, self->_titleTextAttributes);
  vertical = self->_titlePositionAdjustment.vertical;
  if (self->_titlePositionAdjustment.horizontal != 0.0 || vertical != 0.0)
  {
    horizontal = self->_titlePositionAdjustment.horizontal;
    v7 = NSStringFromUIOffset(*(&vertical - 1));
    [intoCopy appendFormat:@" titlePositionAdjustment=%@", v7];
  }

  [intoCopy appendString:@" largeTitleTextAttributes="];
  _UIBADPrettyPrintTextAttributes(intoCopy, self->_largeTitleTextAttributes);
  if (self->_titleControlHidden)
  {
    [intoCopy appendString:@" [titleControlHidden]"];
  }
}

- (int64_t)hashInto:(int64_t)into
{
  v4.receiver = self;
  v4.super_class = _UINavTitleAppearanceData;
  return [(_UIBarAppearanceData *)&v4 hashInto:into];
}

- (BOOL)checkEqualTo:(id)to
{
  toCopy = to;
  v17.receiver = self;
  v17.super_class = _UINavTitleAppearanceData;
  if (![(_UIBarAppearanceData *)&v17 checkEqualTo:toCopy]|| self->_titleControlHidden != toCopy[64] || self->_titleFontProviderIdiom != *(toCopy + 7))
  {
    goto LABEL_28;
  }

  if (self->_titlePositionAdjustment.horizontal != *(toCopy + 4) || self->_titlePositionAdjustment.vertical != *(toCopy + 5))
  {
    goto LABEL_28;
  }

  v6 = *(toCopy + 2);
  v7 = self->_titleTextAttributes;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_22;
    }

    v11 = [(NSDictionary *)v7 isEqual:v8];

    if (!v11)
    {
      goto LABEL_28;
    }
  }

  v12 = *(toCopy + 9);
  v7 = self->_titleTextWithSubtitleAttributes;
  v13 = v12;
  v9 = v13;
  if (v7 == v13)
  {

    goto LABEL_24;
  }

  if (!v7 || !v13)
  {
LABEL_22:

LABEL_28:
    v15 = 0;
    goto LABEL_29;
  }

  v14 = [(NSDictionary *)v7 isEqual:v13];

  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (!_deferringTokenEqualToToken(self->_largeTitleTextAttributes, *(toCopy + 3)) || !_deferringTokenEqualToToken(self->_largeTitleTextWithSubtitleAttributes, *(toCopy + 10)) || !_deferringTokenEqualToToken(self->_subtitleTextAttributes, *(toCopy + 11)))
  {
    goto LABEL_28;
  }

  v15 = self->_largeSubtitleTextAttributes == *(toCopy + 12);
LABEL_29:

  return v15;
}

- (NSDictionary)titleTextWithSubtitleAttributes
{
  titleTextWithSubtitleAttributes = self->_titleTextWithSubtitleAttributes;
  if (titleTextWithSubtitleAttributes)
  {
    v3 = titleTextWithSubtitleAttributes;
  }

  else
  {
    defaultInlineTitleWithSubtitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleWithSubtitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(defaultInlineTitleWithSubtitleFont);
  }

  return v3;
}

- (void)setTitleTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (attributesCopy)
  {
    defaultInlineTitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleFont];
    v6 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(attributesCopy, defaultInlineTitleFont, 0);
    v7 = [v6 copy];
    titleTextAttributes = self->_titleTextAttributes;
    self->_titleTextAttributes = v7;

    defaultInlineTitleWithSubtitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleWithSubtitleFont];
    v10 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(attributesCopy, defaultInlineTitleWithSubtitleFont, 0);
    v11 = [v10 copy];
    titleTextWithSubtitleAttributes = self->_titleTextWithSubtitleAttributes;
    self->_titleTextWithSubtitleAttributes = v11;
  }

  else
  {
    defaultInlineTitleWithSubtitleFont = self->_titleTextAttributes;
    self->_titleTextAttributes = 0;
  }
}

- (void)setTitlePositionAdjustment:(UIOffset)adjustment
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  self->_titlePositionAdjustment.horizontal = horizontal;
  self->_titlePositionAdjustment.vertical = vertical;
}

- (NSDictionary)largeTitleTextWithSubtitleAttributes
{
  largeTitleTextWithSubtitleAttributes = self->_largeTitleTextWithSubtitleAttributes;
  if (largeTitleTextWithSubtitleAttributes)
  {
    v3 = largeTitleTextWithSubtitleAttributes;
  }

  else
  {
    defaultLargeTitleWithSubtitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleWithSubtitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(defaultLargeTitleWithSubtitleFont);
  }

  return v3;
}

- (void)setLargeTitleTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (attributesCopy)
  {
    defaultLargeTitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleFont];
    v6 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(attributesCopy, defaultLargeTitleFont, 0);
    v7 = [v6 copy];
    largeTitleTextAttributes = self->_largeTitleTextAttributes;
    self->_largeTitleTextAttributes = v7;

    defaultLargeTitleWithSubtitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleWithSubtitleFont];
    v10 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(attributesCopy, defaultLargeTitleWithSubtitleFont, 0);
    v11 = [v10 copy];
    largeTitleTextWithSubtitleAttributes = self->_largeTitleTextWithSubtitleAttributes;
    self->_largeTitleTextWithSubtitleAttributes = v11;
  }

  else
  {
    v13 = self->_largeTitleTextAttributes;
    self->_largeTitleTextAttributes = 0;

    defaultLargeTitleWithSubtitleFont = self->_largeTitleTextWithSubtitleAttributes;
    self->_largeTitleTextWithSubtitleAttributes = 0;
  }
}

- (void)setSubtitleTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (attributesCopy)
  {
    defaultSubtitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultSubtitleFont];
    defaultSubtitleColor = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultSubtitleColor];
    v7 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(attributesCopy, defaultSubtitleFont, defaultSubtitleColor);
    v8 = [v7 copy];
    subtitleTextAttributes = self->_subtitleTextAttributes;
    self->_subtitleTextAttributes = v8;
  }

  else
  {
    defaultSubtitleFont = self->_subtitleTextAttributes;
    self->_subtitleTextAttributes = 0;
  }
}

- (NSDictionary)subtitleTextAttributes
{
  subtitleTextAttributes = self->_subtitleTextAttributes;
  if (subtitleTextAttributes)
  {
    v3 = subtitleTextAttributes;
  }

  else
  {
    v3 = _UINavigationTitleAppearanceDefaultSubtitleTextAttributesWithProvider(self->_titleFontProvider);
  }

  return v3;
}

- (void)setLargeSubtitleTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (attributesCopy)
  {
    defaultLargeSubtitleFont = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeSubtitleFont];
    defaultLargeSubtitleColor = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeSubtitleColor];
    v7 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(attributesCopy, defaultLargeSubtitleFont, defaultLargeSubtitleColor);

    v8 = [v7 copy];
    largeSubtitleTextAttributes = self->_largeSubtitleTextAttributes;
    self->_largeSubtitleTextAttributes = v8;
  }

  else
  {
    v7 = self->_largeSubtitleTextAttributes;
    self->_largeSubtitleTextAttributes = 0;
  }
}

- (NSDictionary)largeSubtitleTextAttributes
{
  largeSubtitleTextAttributes = self->_largeSubtitleTextAttributes;
  if (largeSubtitleTextAttributes)
  {
    v3 = largeSubtitleTextAttributes;
  }

  else
  {
    v3 = _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributesWithProvider(self->_titleFontProvider);
  }

  return v3;
}

@end