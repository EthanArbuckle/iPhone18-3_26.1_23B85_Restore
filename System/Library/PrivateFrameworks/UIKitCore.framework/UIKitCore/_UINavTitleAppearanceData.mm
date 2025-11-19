@interface _UINavTitleAppearanceData
+ (id)decodeFromCoder:(id)a3 prefix:(id)a4;
+ (id)standardTitleDataForIdiom:(int64_t)a3;
- (BOOL)checkEqualTo:(id)a3;
- (NSDictionary)largeSubtitleTextAttributes;
- (NSDictionary)largeTitleTextAttributes;
- (NSDictionary)largeTitleTextWithSubtitleAttributes;
- (NSDictionary)subtitleTextAttributes;
- (NSDictionary)titleTextAttributes;
- (NSDictionary)titleTextWithSubtitleAttributes;
- (UIOffset)titlePositionAdjustment;
- (id)replicate;
- (int64_t)hashInto:(int64_t)a3;
- (void)describeInto:(id)a3;
- (void)encodeToCoder:(id)a3 prefix:(id)a4;
- (void)setLargeSubtitleTextAttributes:(id)a3;
- (void)setLargeTitleTextAttributes:(id)a3;
- (void)setSubtitleTextAttributes:(id)a3;
- (void)setTitlePositionAdjustment:(UIOffset)a3;
- (void)setTitleTextAttributes:(id)a3;
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
    v4 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(v4);
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
    v4 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(v4);
  }

  return v3;
}

- (id)replicate
{
  v17.receiver = self;
  v17.super_class = _UINavTitleAppearanceData;
  v3 = [(_UIBarAppearanceData *)&v17 replicate];
  v4 = [(NSDictionary *)self->_titleTextAttributes copy];
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;

  v6 = [(NSDictionary *)self->_titleTextWithSubtitleAttributes copy];
  v7 = *(v3 + 72);
  *(v3 + 72) = v6;

  v8 = [(NSDictionary *)self->_largeTitleTextAttributes copy];
  v9 = *(v3 + 24);
  *(v3 + 24) = v8;

  v10 = [(NSDictionary *)self->_largeTitleTextWithSubtitleAttributes copy];
  v11 = *(v3 + 80);
  *(v3 + 80) = v10;

  *(v3 + 32) = self->_titlePositionAdjustment;
  *(v3 + 56) = self->_titleFontProviderIdiom;
  objc_storeStrong((v3 + 48), self->_titleFontProvider);
  *(v3 + 64) = self->_titleControlHidden;
  v12 = [(NSDictionary *)self->_subtitleTextAttributes copy];
  v13 = *(v3 + 88);
  *(v3 + 88) = v12;

  v14 = [(NSDictionary *)self->_largeSubtitleTextAttributes copy];
  v15 = *(v3 + 96);
  *(v3 + 96) = v14;

  return v3;
}

+ (id)standardTitleDataForIdiom:(int64_t)a3
{
  v4 = _UIStandardTitleData;
  if (!_UIStandardTitleData)
  {
    v5 = objc_opt_new();
    v6 = _UIStandardTitleData;
    _UIStandardTitleData = v5;

    v4 = _UIStandardTitleData;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    a3 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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
    v13 = [_UINavigationBarTitleFontProvider providerForIdiom:a3];
    v14 = v8[6];
    v8[6] = v13;

    v8[7] = a3;
    v15 = v8[11];
    v8[11] = 0;

    v16 = [v8 markReadOnly];
    v17 = _UIStandardTitleData;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v17 setObject:v8 forKeyedSubscript:v18];
  }

  return v8;
}

+ (id)decodeFromCoder:(id)a3 prefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineAttributes"];
    v8 = [v5 _ui_decodeTextAttributesForKey:v7];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"LargeAttributes"];
    v10 = [v5 _ui_decodeTextAttributesForKey:v9];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineOffset"];
    [v5 decodeUIOffsetForKey:v11];
    v13 = v12;
    v15 = v14;

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"TitleControlHidden"];
    v17 = [v5 decodeBoolForKey:v16];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [v5 _ui_decodeTextAttributesForKey:@"InlineAttributes"];
    v10 = [v5 _ui_decodeTextAttributesForKey:@"LargeAttributes"];
    [v5 decodeUIOffsetForKey:@"InlineOffset"];
    v13 = v18;
    v15 = v19;
    v17 = [v5 decodeBoolForKey:@"TitleControlHidden"];
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
  if (v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineWithSubtitleAttributes"];
  }

  v22 = [v5 _ui_decodeTextAttributesForKey:v21];
  v23 = *(v20 + 72);
  *(v20 + 72) = v22;

  if (v6)
  {

    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    objc_storeStrong((v20 + 24), v10);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"LargeWithSubtitleAttributes"];
  }

  else
  {
    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    objc_storeStrong((v20 + 24), v10);
    v24 = @"LargeWithSubtitleAttributes";
  }

  v25 = [v5 _ui_decodeTextAttributesForKey:v24];
  v26 = *(v20 + 80);
  *(v20 + 80) = v25;

  if (v6)
  {

    *(v20 + 64) = v17;
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineSubtitleAttrs"];
  }

  else
  {
    *(v20 + 64) = v17;
    v27 = @"InlineSubtitleAttrs";
  }

  v28 = [v5 _ui_decodeTextAttributesForKey:v27];
  v29 = *(v20 + 88);
  *(v20 + 88) = v28;

  v30 = @"LargeSubtitleAttributes";
  if (v6)
  {

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"LargeSubtitleAttributes"];
  }

  v31 = [v5 _ui_decodeTextAttributesForKey:v30];
  v32 = *(v20 + 96);
  *(v20 + 96) = v31;

  v33 = @"TitleProviderIdiom";
  if (v6)
  {

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"TitleProviderIdiom"];
  }

  if ([v5 containsValueForKey:v33])
  {
    v34 = [v5 decodeIntegerForKey:v33];
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

- (void)encodeToCoder:(id)a3 prefix:(id)a4
{
  v32 = a3;
  v6 = a4;
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
    if (!v6)
    {
      [v32 _ui_encodeTextAttributes:self->_titleTextAttributes forKey:@"InlineAttributes"];
      titleTextWithSubtitleAttributes = self->_titleTextWithSubtitleAttributes;
      if (!titleTextWithSubtitleAttributes)
      {
        goto LABEL_12;
      }

      v15 = v32;
      goto LABEL_11;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineAttributes"];
    [v32 _ui_encodeTextAttributes:titleTextAttributes forKey:v11];
  }

  v12 = self->_titleTextWithSubtitleAttributes;
  if (v12)
  {
    if (v6)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineWithSubtitleAttributes"];
      [v32 _ui_encodeTextAttributes:v12 forKey:v13];

      goto LABEL_12;
    }

    v15 = v32;
    titleTextWithSubtitleAttributes = self->_titleTextWithSubtitleAttributes;
LABEL_11:
    [v15 _ui_encodeTextAttributes:titleTextWithSubtitleAttributes forKey:@"InlineWithSubtitleAttributes"];
  }

LABEL_12:
  if (self->_titlePositionAdjustment.horizontal == 0.0 && self->_titlePositionAdjustment.vertical == 0.0)
  {
    goto LABEL_16;
  }

  if (v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineOffset"];
    [v32 encodeUIOffset:v16 forKey:{self->_titlePositionAdjustment.horizontal, self->_titlePositionAdjustment.vertical}];

LABEL_16:
    largeTitleTextAttributes = self->_largeTitleTextAttributes;
    if (!largeTitleTextAttributes)
    {
      goto LABEL_23;
    }

    if (v6)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"LargeAttributes"];
      [v32 _ui_encodeTextAttributes:largeTitleTextAttributes forKey:v18];

      goto LABEL_23;
    }

    v19 = v32;
    v20 = self->_largeTitleTextAttributes;
    goto LABEL_22;
  }

  [v32 encodeUIOffset:@"InlineOffset" forKey:?];
  v20 = self->_largeTitleTextAttributes;
  if (!v20)
  {
    goto LABEL_23;
  }

  v19 = v32;
LABEL_22:
  [v19 _ui_encodeTextAttributes:v20 forKey:@"LargeAttributes"];
LABEL_23:
  largeTitleTextWithSubtitleAttributes = self->_largeTitleTextWithSubtitleAttributes;
  if (largeTitleTextWithSubtitleAttributes)
  {
    if (!v6)
    {
      [v32 _ui_encodeTextAttributes:self->_largeTitleTextWithSubtitleAttributes forKey:@"LargeWithSubtitleAttributes"];
      if (!self->_titleControlHidden)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"LargeWithSubtitleAttributes"];
    [v32 _ui_encodeTextAttributes:largeTitleTextWithSubtitleAttributes forKey:v22];
  }

  if (!self->_titleControlHidden)
  {
    goto LABEL_31;
  }

  if (v6)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"TitleControlHidden"];
    [v32 encodeBool:1 forKey:v23];

    goto LABEL_31;
  }

LABEL_30:
  [v32 encodeBool:1 forKey:@"TitleControlHidden"];
LABEL_31:
  subtitleTextAttributes = self->_subtitleTextAttributes;
  if (subtitleTextAttributes)
  {
    if (!v6)
    {
      [v32 _ui_encodeTextAttributes:self->_subtitleTextAttributes forKey:@"InlineSubtitleAttrs"];
      largeSubtitleTextAttributes = self->_largeSubtitleTextAttributes;
      if (!largeSubtitleTextAttributes)
      {
        goto LABEL_41;
      }

      v29 = v32;
      goto LABEL_40;
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"InlineSubtitleAttrs"];
    [v32 _ui_encodeTextAttributes:subtitleTextAttributes forKey:v25];
  }

  v26 = self->_largeSubtitleTextAttributes;
  if (v26)
  {
    if (v6)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"LargeSubtitleAttributes"];
      [v32 _ui_encodeTextAttributes:v26 forKey:v27];

      goto LABEL_41;
    }

    v29 = v32;
    largeSubtitleTextAttributes = self->_largeSubtitleTextAttributes;
LABEL_40:
    [v29 _ui_encodeTextAttributes:largeSubtitleTextAttributes forKey:@"LargeSubtitleAttributes"];
  }

LABEL_41:
  titleFontProviderIdiom = self->_titleFontProviderIdiom;
  if (titleFontProviderIdiom > 5 || ((1 << titleFontProviderIdiom) & 0x23) == 0)
  {
    if (v6)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"TitleProviderIdiom"];
      [v32 encodeInteger:titleFontProviderIdiom forKey:v31];
    }

    else
    {
      [v32 encodeInteger:titleFontProviderIdiom forKey:@"TitleProviderIdiom"];
    }
  }

LABEL_43:
}

- (void)describeInto:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UINavTitleAppearanceData;
  [(_UIBarAppearanceData *)&v8 describeInto:v4];
  [v4 appendString:@" titleTextAttributes="];
  _UIBADPrettyPrintTextAttributes(v4, self->_titleTextAttributes);
  vertical = self->_titlePositionAdjustment.vertical;
  if (self->_titlePositionAdjustment.horizontal != 0.0 || vertical != 0.0)
  {
    horizontal = self->_titlePositionAdjustment.horizontal;
    v7 = NSStringFromUIOffset(*(&vertical - 1));
    [v4 appendFormat:@" titlePositionAdjustment=%@", v7];
  }

  [v4 appendString:@" largeTitleTextAttributes="];
  _UIBADPrettyPrintTextAttributes(v4, self->_largeTitleTextAttributes);
  if (self->_titleControlHidden)
  {
    [v4 appendString:@" [titleControlHidden]"];
  }
}

- (int64_t)hashInto:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _UINavTitleAppearanceData;
  return [(_UIBarAppearanceData *)&v4 hashInto:a3];
}

- (BOOL)checkEqualTo:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UINavTitleAppearanceData;
  if (![(_UIBarAppearanceData *)&v17 checkEqualTo:v4]|| self->_titleControlHidden != v4[64] || self->_titleFontProviderIdiom != *(v4 + 7))
  {
    goto LABEL_28;
  }

  if (self->_titlePositionAdjustment.horizontal != *(v4 + 4) || self->_titlePositionAdjustment.vertical != *(v4 + 5))
  {
    goto LABEL_28;
  }

  v6 = *(v4 + 2);
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

  v12 = *(v4 + 9);
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
  if (!_deferringTokenEqualToToken(self->_largeTitleTextAttributes, *(v4 + 3)) || !_deferringTokenEqualToToken(self->_largeTitleTextWithSubtitleAttributes, *(v4 + 10)) || !_deferringTokenEqualToToken(self->_subtitleTextAttributes, *(v4 + 11)))
  {
    goto LABEL_28;
  }

  v15 = self->_largeSubtitleTextAttributes == *(v4 + 12);
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
    v4 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleWithSubtitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(v4);
  }

  return v3;
}

- (void)setTitleTextAttributes:(id)a3
{
  v13 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (v13)
  {
    v5 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleFont];
    v6 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v13, v5, 0);
    v7 = [v6 copy];
    titleTextAttributes = self->_titleTextAttributes;
    self->_titleTextAttributes = v7;

    v9 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultInlineTitleWithSubtitleFont];
    v10 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v13, v9, 0);
    v11 = [v10 copy];
    titleTextWithSubtitleAttributes = self->_titleTextWithSubtitleAttributes;
    self->_titleTextWithSubtitleAttributes = v11;
  }

  else
  {
    v9 = self->_titleTextAttributes;
    self->_titleTextAttributes = 0;
  }
}

- (void)setTitlePositionAdjustment:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
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
    v4 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleWithSubtitleFont];
    v3 = _UINavigationTitleAppearanceAttributesWithFont(v4);
  }

  return v3;
}

- (void)setLargeTitleTextAttributes:(id)a3
{
  v14 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (v14)
  {
    v5 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleFont];
    v6 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v14, v5, 0);
    v7 = [v6 copy];
    largeTitleTextAttributes = self->_largeTitleTextAttributes;
    self->_largeTitleTextAttributes = v7;

    v9 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeTitleWithSubtitleFont];
    v10 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v14, v9, 0);
    v11 = [v10 copy];
    largeTitleTextWithSubtitleAttributes = self->_largeTitleTextWithSubtitleAttributes;
    self->_largeTitleTextWithSubtitleAttributes = v11;
  }

  else
  {
    v13 = self->_largeTitleTextAttributes;
    self->_largeTitleTextAttributes = 0;

    v9 = self->_largeTitleTextWithSubtitleAttributes;
    self->_largeTitleTextWithSubtitleAttributes = 0;
  }
}

- (void)setSubtitleTextAttributes:(id)a3
{
  v10 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (v10)
  {
    v5 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultSubtitleFont];
    v6 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultSubtitleColor];
    v7 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v10, v5, v6);
    v8 = [v7 copy];
    subtitleTextAttributes = self->_subtitleTextAttributes;
    self->_subtitleTextAttributes = v8;
  }

  else
  {
    v5 = self->_subtitleTextAttributes;
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

- (void)setLargeSubtitleTextAttributes:(id)a3
{
  v10 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (v10)
  {
    v5 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeSubtitleFont];
    v6 = [(_UINavigationBarTitleFontProvider *)self->_titleFontProvider defaultLargeSubtitleColor];
    v7 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v10, v5, v6);

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