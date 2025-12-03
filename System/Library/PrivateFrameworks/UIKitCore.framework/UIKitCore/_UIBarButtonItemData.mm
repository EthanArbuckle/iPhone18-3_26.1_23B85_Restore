@interface _UIBarButtonItemData
+ (id)decodeFromCoder:(id)coder prefix:(id)prefix;
+ (id)standardBackButtonData;
+ (id)standardItemDataForStyle:(int64_t)style;
- (BOOL)checkEqualTo:(id)to;
- (UIImage)backIndicatorImage;
- (UIImage)backIndicatorTransitionMaskImage;
- (UIImage)compactBackIndicatorImage;
- (UIImageSymbolConfiguration)backIndicatorSymbolConfiguration;
- (UIImageSymbolConfiguration)backIndicatorTransitionMaskSymbolConfiguration;
- (UIImageSymbolConfiguration)compactBackIndicatorSymbolConfiguration;
- (UIImageSymbolConfiguration)compactBackIndicatorTransitionMaskSymbolConfiguration;
- (UIImageSymbolConfiguration)compactImageSymbolConfiguration;
- (UIImageSymbolConfiguration)imageSymbolConfiguration;
- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)state;
- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)state style:(int64_t)style;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)state;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)state style:(int64_t)style;
- (_UIBarButtonItemData)dataWithNewFallback:(id)fallback;
- (_UIBarButtonItemData)initWithStyle:(int64_t)style;
- (id)__backIndicatorConfigurationForConfig:(uint64_t)config withScale:;
- (id)_fallbackColorForState:(int64_t)state;
- (id)_fallbackFontForState:(int64_t)state;
- (id)backgroundImageForState:(int64_t)state;
- (id)backgroundImageForState:(int64_t)state style:(int64_t)style;
- (id)colorForState:(int64_t)state style:(int64_t)style;
- (id)copyAsBackButtonDataWithIndicatorsAndFallbackFrom:(id)from;
- (id)fontForState:(int64_t)state style:(int64_t)style;
- (id)replicate;
- (id)titleTextAttributesForState:(int64_t)state;
- (int64_t)hashInto:(int64_t)into;
- (void)_decodeBackgroundImagesFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeBackgroundPositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix;
- (void)_decodeTitleTextAttributesFromCoder:(id)coder prefix:(id)prefix;
- (void)describeInto:(id)into;
- (void)encodeToCoder:(id)coder prefix:(id)prefix;
- (void)resetBackIndicatorImages;
- (void)setBackIndicatorImage:(id)image transitionMaskImage:(id)maskImage;
- (void)setBackgroundImage:(id)image forState:(int64_t)state;
- (void)setBackgroundImagePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state;
- (void)setTitlePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state;
- (void)setTitleTextAttributes:(id)attributes forState:(int64_t)state;
@end

@implementation _UIBarButtonItemData

+ (id)standardBackButtonData
{
  v2 = qword_1ED49A368;
  if (!qword_1ED49A368)
  {
    v3 = [[_UIBarButtonItemData alloc] initWithStyle:0];
    v4 = qword_1ED49A368;
    qword_1ED49A368 = v3;

    v5 = qword_1ED49A368;
    *(qword_1ED49A368 + 296) |= 1u;
    markReadOnly = [v5 markReadOnly];
    v2 = qword_1ED49A368;
  }

  return v2;
}

- (id)replicate
{
  v22.receiver = self;
  v22.super_class = _UIBarButtonItemData;
  replicate = [(_UIBarAppearanceData *)&v22 replicate];
  *(replicate + 304) = self->_style;
  *(replicate + 296) = *&self->_dataFlags;
  objc_storeStrong((replicate + 256), self->_fallback);
  v4 = [(UIImage *)self->_backIndicatorImage copy];
  v5 = *(replicate + 224);
  *(replicate + 224) = v4;

  v6 = [(UIImage *)self->_backIndicatorTransitionMaskImage copy];
  v7 = *(replicate + 232);
  *(replicate + 232) = v6;

  v8 = [(UIImageSymbolConfiguration *)self->_imageSymbolConfiguration copy];
  v9 = *(replicate + 208);
  *(replicate + 208) = v8;

  v10 = [(UIImageSymbolConfiguration *)self->_compactImageSymbolConfiguration copy];
  v11 = *(replicate + 216);
  *(replicate + 216) = v10;

  v12 = [(UIImageSymbolConfiguration *)self->_backIndicatorSymbolConfiguration copy];
  v13 = *(replicate + 240);
  *(replicate + 240) = v12;

  v14 = [(UIImageSymbolConfiguration *)self->_compactBackIndicatorSymbolConfiguration copy];
  v15 = *(replicate + 248);
  *(replicate + 248) = v14;

  v16 = 0;
  v17 = 0;
  v18 = replicate + 16;
  do
  {
    v19 = [(NSDictionary *)self->_titleTextAttributes[v17 / 2] copy];
    v20 = *(v18 + v17 * 4);
    *(v18 + v17 * 4) = v19;

    *(replicate + 80 + v16 * 16) = self->_titlePositionAdjustment[v16];
    objc_storeStrong((replicate + v17 * 4 + 48), self->_backgroundImage[v17 / 2]);
    *(replicate + 144 + v16 * 16) = self->_backgroundImagePositionAdjustment[v16];
    *(replicate + 264 + v17 * 4) = *&self->_stateFlags[v17];
    v17 += 2;
    ++v16;
  }

  while (v17 != 8);

  return replicate;
}

- (UIImageSymbolConfiguration)imageSymbolConfiguration
{
  imageSymbolConfiguration = self->_imageSymbolConfiguration;
  if (!imageSymbolConfiguration)
  {
    if (*self->_stateFlags)
    {
      textStyleForSymbolConfiguration2 = [(_UIBarButtonItemData *)self titleTextAttributesForState:0];
      v5 = [textStyleForSymbolConfiguration2 objectForKeyedSubscript:*off_1E70EC918];
    }

    else
    {
      if (!_UISolariumEnabled())
      {
        textStyleForSymbolConfiguration = [(_UIBarButtonItemData *)self textStyleForSymbolConfiguration];
        v7 = [UIImageSymbolConfiguration configurationWithTextStyle:textStyleForSymbolConfiguration scale:3];
        goto LABEL_8;
      }

      textStyleForSymbolConfiguration2 = [(_UIBarButtonItemData *)self textStyleForSymbolConfiguration];
      v5 = [off_1E70ECC18 _preferredFontForTextStyle:textStyleForSymbolConfiguration2 weight:*off_1E70ECD20];
    }

    textStyleForSymbolConfiguration = v5;

    v7 = [UIImageSymbolConfiguration configurationWithFont:textStyleForSymbolConfiguration scale:3];
LABEL_8:
    v8 = self->_imageSymbolConfiguration;
    self->_imageSymbolConfiguration = v7;

    imageSymbolConfiguration = self->_imageSymbolConfiguration;
  }

  return imageSymbolConfiguration;
}

- (UIImage)backIndicatorImage
{
  if (*&self->_dataFlags)
  {
    backIndicatorImage = self->_backIndicatorImage;
    if (!backIndicatorImage)
    {
      backIndicatorImage = backIndicatorImage_indicator;
      if (!backIndicatorImage_indicator)
      {
        if (_UIBarsUseDynamicType())
        {
          [UIImage systemImageNamed:@"chevron.backward"];
        }

        else
        {
          [UIImage kitImageNamed:@"UINavigationBarBackIndicatorDefault"];
        }
        v6 = ;
        v7 = backIndicatorImage_indicator;
        backIndicatorImage_indicator = v6;

        backIndicatorImage = backIndicatorImage_indicator;
      }
    }

    v3 = backIndicatorImage;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)backIndicatorTransitionMaskImage
{
  if (*&self->_dataFlags)
  {
    backIndicatorTransitionMaskImage = self->_backIndicatorTransitionMaskImage;
    if (!backIndicatorTransitionMaskImage)
    {
      backIndicatorTransitionMaskImage = backIndicatorTransitionMaskImage_indicatorMask;
      if (!backIndicatorTransitionMaskImage_indicatorMask)
      {
        if (_UIBarsUseDynamicType())
        {
          v9 = @"UINavigationBarTitleTransitionBackIndicatorMaskSymbol";
        }

        else
        {
          v9 = @"UINavigationBarTitleTransitionBackIndicatorMask";
        }

        v10 = [UIImage kitImageNamed:v9, v3, v2, v4];
        v11 = backIndicatorTransitionMaskImage_indicatorMask;
        backIndicatorTransitionMaskImage_indicatorMask = v10;

        backIndicatorTransitionMaskImage = backIndicatorTransitionMaskImage_indicatorMask;
      }
    }

    v6 = backIndicatorTransitionMaskImage;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIImageSymbolConfiguration)backIndicatorTransitionMaskSymbolConfiguration
{
  if ((*&self->_dataFlags & 1) == 0)
  {
    v3 = 0;

    return v3;
  }

  backIndicatorTransitionMaskImage = self->_backIndicatorTransitionMaskImage;
  if (backIndicatorTransitionMaskImage)
  {
    if ([(UIImage *)backIndicatorTransitionMaskImage isSymbolImage])
    {
LABEL_7:
      v3 = [(_UIBarButtonItemData *)self __backIndicatorConfigurationForConfig:3 withScale:?];
      goto LABEL_10;
    }
  }

  else if (_UIBarsUseDynamicType())
  {
    goto LABEL_7;
  }

  v3 = 0;
LABEL_10:

  return v3;
}

- (UIImageSymbolConfiguration)backIndicatorSymbolConfiguration
{
  if ((*&self->_dataFlags & 1) == 0)
  {
    v3 = 0;

    return v3;
  }

  backIndicatorImage = self->_backIndicatorImage;
  if (backIndicatorImage)
  {
    if ([(UIImage *)backIndicatorImage isSymbolImage])
    {
LABEL_7:
      v3 = [(_UIBarButtonItemData *)self __backIndicatorConfigurationForConfig:3 withScale:?];
      goto LABEL_10;
    }
  }

  else if (_UIBarsUseDynamicType())
  {
    goto LABEL_7;
  }

  v3 = 0;
LABEL_10:

  return v3;
}

+ (id)standardItemDataForStyle:(int64_t)style
{
  if (style && style != 7)
  {
    if (style == 2)
    {
      v4 = &_MergedGlobals_3_17;
      v5 = _MergedGlobals_3_17;
      if (_MergedGlobals_3_17)
      {
        goto LABEL_11;
      }

      v6 = 2;
      goto LABEL_10;
    }

    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBarButtonItemData.m" lineNumber:136 description:{@"Unsupported style: %li", style}];
    }
  }

  v4 = &qword_1ED49A360;
  v5 = qword_1ED49A360;
  if (qword_1ED49A360)
  {
    goto LABEL_11;
  }

  v6 = 0;
LABEL_10:
  v9 = [[_UIBarButtonItemData alloc] initWithStyle:v6];
  v10 = *v4;
  *v4 = v9;

  markReadOnly = [*v4 markReadOnly];
  v5 = *v4;
LABEL_11:

  return v5;
}

- (_UIBarButtonItemData)initWithStyle:(int64_t)style
{
  if (style == 7)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  if ((styleCopy & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBarButtonItemData.m" lineNumber:167 description:{@"Unknown or unsupported UIBarButtonItemStyle style %li", styleCopy}];
  }

  v12.receiver = self;
  v12.super_class = _UIBarButtonItemData;
  v5 = [(_UIBarButtonItemData *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_style = styleCopy;
    v7 = +[_UIBarButtonItemDataBaseFallback fallback];
    fallback = v6->_fallback;
    v6->_fallback = v7;
  }

  return v6;
}

- (_UIBarButtonItemData)dataWithNewFallback:(id)fallback
{
  fallbackCopy = fallback;
  writableInstance = [(_UIBarAppearanceData *)self writableInstance];
  v6 = fallbackCopy;
  if (!fallbackCopy)
  {
    v6 = +[_UIBarButtonItemDataBaseFallback fallback];
  }

  objc_storeStrong(writableInstance + 32, v6);
  if (!fallbackCopy)
  {
  }

  return writableInstance;
}

- (id)copyAsBackButtonDataWithIndicatorsAndFallbackFrom:(id)from
{
  fromCopy = from;
  if (!fromCopy)
  {
    if (*&self->_dataFlags)
    {
      v8 = [(_UIBarButtonItemData *)self copy];
    }

    else
    {
      if (qword_1ED49A360 != self && _MergedGlobals_3_17 != self)
      {
        goto LABEL_2;
      }

      v8 = +[_UIBarButtonItemData standardBackButtonData];
    }

    v6 = v8;
    goto LABEL_13;
  }

LABEL_2:
  replicate = [(_UIBarButtonItemData *)self replicate];
  v6 = replicate;
  *(replicate + 304) = 0;
  *(replicate + 296) |= 1u;
  if (fromCopy)
  {
    objc_storeStrong((replicate + 256), fromCopy[32]);
    objc_storeStrong(v6 + 28, fromCopy[28]);
    objc_storeStrong(v6 + 29, fromCopy[29]);
  }

LABEL_13:

  return v6;
}

- (void)_decodeTitleTextAttributesFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.TitleTextAttributes"];
    v8 = [coderCopy _ui_decodeTextAttributesForKey:v7];
  }

  else
  {
    v8 = [coderCopy _ui_decodeTextAttributesForKey:@"Normal.TitleTextAttributes"];
  }

  titleTextAttributes = self->_titleTextAttributes;
  objc_storeStrong(self->_titleTextAttributes, v8);
  v10 = *off_1E70EC918;
  v11 = [v8 objectForKeyedSubscript:*off_1E70EC918];
  stateFlags = self->_stateFlags;
  v13 = *self->_stateFlags & 0xFE;
  if (v11)
  {
    ++v13;
  }

  *stateFlags = v13;

  v14 = *off_1E70EC920;
  v15 = [v8 objectForKeyedSubscript:*off_1E70EC920];
  *stateFlags = *stateFlags & 0xFD | (2 * (v15 != 0));

  if (prefixCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.TitleTextAttributes"];
    v17 = [coderCopy _ui_decodeTextAttributesForKey:v16];
  }

  else
  {
    v17 = [coderCopy _ui_decodeTextAttributesForKey:@"Highlighted.TitleTextAttributes"];
  }

  objc_storeStrong(titleTextAttributes + 1, v17);
  v18 = [v17 objectForKeyedSubscript:v10];
  v19 = *&stateFlags[2] & 0xFE;
  if (v18)
  {
    ++v19;
  }

  *&stateFlags[2] = v19;

  v20 = [v17 objectForKeyedSubscript:v14];
  *&stateFlags[2] = *&stateFlags[2] & 0xFD | (2 * (v20 != 0));

  if (prefixCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.TitleTextAttributes"];
    v22 = [coderCopy _ui_decodeTextAttributesForKey:v21];
  }

  else
  {
    v22 = [coderCopy _ui_decodeTextAttributesForKey:@"Disabled.TitleTextAttributes"];
  }

  objc_storeStrong(titleTextAttributes + 2, v22);
  v23 = [v22 objectForKeyedSubscript:v10];
  v24 = *&stateFlags[4] & 0xFE;
  if (v23)
  {
    ++v24;
  }

  *&stateFlags[4] = v24;

  v25 = [v22 objectForKeyedSubscript:v14];
  *&stateFlags[4] = *&stateFlags[4] & 0xFD | (2 * (v25 != 0));

  if (prefixCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.TitleTextAttributes"];
    v27 = [coderCopy _ui_decodeTextAttributesForKey:v26];
  }

  else
  {
    v27 = [coderCopy _ui_decodeTextAttributesForKey:@"Focused.TitleTextAttributes"];
  }

  v28 = titleTextAttributes[3];
  titleTextAttributes[3] = v27;
  v29 = v27;

  v30 = [(NSDictionary *)v29 objectForKeyedSubscript:v10];
  v31 = *&stateFlags[6] & 0xFE;
  if (v30)
  {
    ++v31;
  }

  *&stateFlags[6] = v31;

  v32 = [(NSDictionary *)v29 objectForKeyedSubscript:v14];

  *&stateFlags[6] = *&stateFlags[6] & 0xFD | (2 * (v32 != 0));
}

- (void)_decodeBackgroundImagesFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v7 = objc_opt_class();
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.BackgroundImage"];
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"Normal.BackgroundImage"];
  }

  backgroundImage = self->_backgroundImage;
  objc_storeStrong(self->_backgroundImage, v9);
  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xF7 | (8 * (v9 != 0));
  v12 = objc_opt_class();
  if (prefixCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.BackgroundImage"];
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
  }

  else
  {
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:@"Highlighted.BackgroundImage"];
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  objc_storeStrong(backgroundImage + 1, v15);
  *&stateFlags[2] = *&stateFlags[2] & 0xF7 | (8 * (v14 != 0));
  v16 = objc_opt_class();
  if (prefixCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.BackgroundImage"];
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
  }

  else
  {
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:@"Disabled.BackgroundImage"];
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v9;
  }

  objc_storeStrong(backgroundImage + 2, v19);
  *&stateFlags[4] = *&stateFlags[4] & 0xF7 | (8 * (v18 != 0));
  v20 = objc_opt_class();
  if (prefixCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.BackgroundImage"];
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
  }

  else
  {
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:@"Focused.BackgroundImage"];
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v15;
  }

  objc_storeStrong(backgroundImage + 3, v23);
  *&stateFlags[6] = *&stateFlags[6] & 0xF7 | (8 * (v22 != 0));
}

- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = @"Normal.TitlePosition";
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.TitlePosition"];
  }

  v9 = coderCopy;
  v10 = v8;
  if ([v9 containsValueForKey:v10])
  {
    [v9 decodeUIOffsetForKey:v10];
    v12 = v11;
    v14 = v13;
    v15 = 4;
  }

  else
  {
    v15 = 0;
    v12 = 0.0;
    v14 = 0.0;
  }

  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xFB | v15;
  if (prefixCopy)
  {

    titlePositionAdjustment = self->_titlePositionAdjustment;
    self->_titlePositionAdjustment[0].horizontal = v12;
    self->_titlePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.TitlePosition"];
  }

  else
  {
    titlePositionAdjustment = self->_titlePositionAdjustment;
    self->_titlePositionAdjustment[0].horizontal = v12;
    self->_titlePositionAdjustment[0].vertical = v14;
    v18 = @"Highlighted.TitlePosition";
  }

  v19 = v9;
  v20 = v18;
  if ([v19 containsValueForKey:v20])
  {
    [v19 decodeUIOffsetForKey:v20];
    v22 = v21;
    v24 = v23;
    v25 = 4;
  }

  else
  {
    v25 = 0;
    v22 = v12;
    v24 = v14;
  }

  *&stateFlags[2] = *&stateFlags[2] & 0xFB | v25;
  if (prefixCopy)
  {

    titlePositionAdjustment[1].horizontal = v22;
    titlePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.TitlePosition"];
  }

  else
  {
    titlePositionAdjustment[1].horizontal = v22;
    titlePositionAdjustment[1].vertical = v24;
    v26 = @"Disabled.TitlePosition";
  }

  v27 = v19;
  v28 = v26;
  if ([v27 containsValueForKey:v28])
  {
    [v27 decodeUIOffsetForKey:v28];
    v12 = v29;
    v14 = v30;
    v31 = 4;
  }

  else
  {
    v31 = 0;
  }

  *&stateFlags[4] = *&stateFlags[4] & 0xFB | v31;
  if (prefixCopy)
  {

    titlePositionAdjustment[2].horizontal = v12;
    titlePositionAdjustment[2].vertical = v14;
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.TitlePosition"];
  }

  else
  {
    titlePositionAdjustment[2].horizontal = v12;
    titlePositionAdjustment[2].vertical = v14;
    v32 = @"Focused.TitlePosition";
  }

  v37 = v27;
  v33 = v32;
  if ([v37 containsValueForKey:v33])
  {
    [v37 decodeUIOffsetForKey:v33];
    v22 = v34;
    v24 = v35;
    v36 = 4;
  }

  else
  {
    v36 = 0;
  }

  *&stateFlags[6] = *&stateFlags[6] & 0xFB | v36;
  if (prefixCopy)
  {
  }

  titlePositionAdjustment[3].horizontal = v22;
  titlePositionAdjustment[3].vertical = v24;
}

- (void)_decodeBackgroundPositionAdjustmentsFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = @"Normal.BackgroundImagePosition";
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Normal.BackgroundImagePosition"];
  }

  v9 = coderCopy;
  v10 = v8;
  if ([v9 containsValueForKey:v10])
  {
    [v9 decodeUIOffsetForKey:v10];
    v12 = v11;
    v14 = v13;
    v15 = 16;
  }

  else
  {
    v15 = 0;
    v12 = 0.0;
    v14 = 0.0;
  }

  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xEF | v15;
  if (prefixCopy)
  {

    backgroundImagePositionAdjustment = self->_backgroundImagePositionAdjustment;
    self->_backgroundImagePositionAdjustment[0].horizontal = v12;
    self->_backgroundImagePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Highlighted.BackgroundImagePosition"];
  }

  else
  {
    backgroundImagePositionAdjustment = self->_backgroundImagePositionAdjustment;
    self->_backgroundImagePositionAdjustment[0].horizontal = v12;
    self->_backgroundImagePositionAdjustment[0].vertical = v14;
    v18 = @"Highlighted.BackgroundImagePosition";
  }

  v19 = v9;
  v20 = v18;
  if ([v19 containsValueForKey:v20])
  {
    [v19 decodeUIOffsetForKey:v20];
    v22 = v21;
    v24 = v23;
    v25 = 16;
  }

  else
  {
    v25 = 0;
    v22 = v12;
    v24 = v14;
  }

  *&stateFlags[2] = *&stateFlags[2] & 0xEF | v25;
  if (prefixCopy)
  {

    backgroundImagePositionAdjustment[1].horizontal = v22;
    backgroundImagePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Disabled.BackgroundImagePosition"];
  }

  else
  {
    backgroundImagePositionAdjustment[1].horizontal = v22;
    backgroundImagePositionAdjustment[1].vertical = v24;
    v26 = @"Disabled.BackgroundImagePosition";
  }

  v27 = v19;
  v28 = v26;
  if ([v27 containsValueForKey:v28])
  {
    [v27 decodeUIOffsetForKey:v28];
    v12 = v29;
    v14 = v30;
    v31 = 16;
  }

  else
  {
    v31 = 0;
  }

  *&stateFlags[4] = *&stateFlags[4] & 0xEF | v31;
  if (prefixCopy)
  {

    backgroundImagePositionAdjustment[2].horizontal = v12;
    backgroundImagePositionAdjustment[2].vertical = v14;
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Focused.BackgroundImagePosition"];
  }

  else
  {
    backgroundImagePositionAdjustment[2].horizontal = v12;
    backgroundImagePositionAdjustment[2].vertical = v14;
    v32 = @"Focused.BackgroundImagePosition";
  }

  v37 = v27;
  v33 = v32;
  if ([v37 containsValueForKey:v33])
  {
    [v37 decodeUIOffsetForKey:v33];
    v22 = v34;
    v24 = v35;
    v36 = 16;
  }

  else
  {
    v36 = 0;
  }

  *&stateFlags[6] = *&stateFlags[6] & 0xEF | v36;
  if (prefixCopy)
  {
  }

  backgroundImagePositionAdjustment[3].horizontal = v22;
  backgroundImagePositionAdjustment[3].vertical = v24;
}

+ (id)decodeFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"IsBackButton"];
    v10 = [coderCopy decodeBoolForKey:v9];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"DefaultStyle"];
  }

  else
  {
    v10 = [coderCopy decodeBoolForKey:@"IsBackButton"];
    v11 = @"DefaultStyle";
  }

  if ([coderCopy containsValueForKey:v11])
  {
    if (v10)
    {
      [self standardBackButtonData];
    }

    else
    {
      [self standardItemDataForStyle:{objc_msgSend(coderCopy, "decodeIntegerForKey:", v11)}];
    }
    v12 = ;
    goto LABEL_22;
  }

  v12 = objc_opt_new();
  if (prefixCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"CustomizedStyle"];
    *(v12 + 304) = [coderCopy decodeIntegerForKey:v13];
  }

  else
  {
    *(v12 + 304) = [coderCopy decodeIntegerForKey:@"CustomizedStyle"];
  }

  *(v12 + 296) = *(v12 + 296) & 0xFE | v10;
  v14 = +[_UIBarButtonItemDataBaseFallback fallback];
  v15 = *(v12 + 256);
  *(v12 + 256) = v14;

  [v12 _decodeTitleTextAttributesFromCoder:coderCopy prefix:prefixCopy];
  [v12 _decodeBackgroundImagesFromCoder:coderCopy prefix:prefixCopy];
  [v12 _decodeTitlePositionAdjustmentsFromCoder:coderCopy prefix:prefixCopy];
  [v12 _decodeBackgroundPositionAdjustmentsFromCoder:coderCopy prefix:prefixCopy];
  if (!v10)
  {
    goto LABEL_22;
  }

  v16 = objc_opt_class();
  v17 = @"BackIndicator";
  if (prefixCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"BackIndicator"];
  }

  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
  v19 = *(v12 + 224);
  *(v12 + 224) = v18;

  if (prefixCopy)
  {

    v20 = objc_opt_class();
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"BackIndicatorTransitionMask"];
  }

  else
  {
    v20 = objc_opt_class();
    v21 = @"BackIndicatorTransitionMask";
  }

  v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
  v23 = *(v12 + 232);
  *(v12 + 232) = v22;

  if (prefixCopy)
  {
  }

  v24 = *(v12 + 232);
  if (*(v12 + 224))
  {
    if (v24)
    {
      goto LABEL_22;
    }
  }

  else if (!v24)
  {
    goto LABEL_22;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBarButtonItemData.m" lineNumber:352 description:{@"Invalid BackButton Appearance archive - must either contain both a back indicator image and a back indicator transition mask image, or contain neither image"}];

LABEL_22:

  return v12;
}

- (void)encodeToCoder:(id)coder prefix:(id)prefix
{
  v42 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = prefixCopy;
  if (qword_1ED49A360 == self)
  {
    if (prefixCopy)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"DefaultStyle"];
      v11 = coderCopy;
      v12 = 0;
LABEL_11:
      [v11 encodeInteger:v12 forKey:v10];
LABEL_12:

      goto LABEL_53;
    }

    v14 = coderCopy;
    v15 = 0;
LABEL_20:
    [v14 encodeInteger:v15 forKey:@"DefaultStyle"];
    goto LABEL_53;
  }

  if (_MergedGlobals_3_17 == self)
  {
    if (prefixCopy)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"DefaultStyle"];
      v11 = coderCopy;
      v12 = 2;
      goto LABEL_11;
    }

    v14 = coderCopy;
    v15 = 2;
    goto LABEL_20;
  }

  if (qword_1ED49A368 == self)
  {
    if (!prefixCopy)
    {
      [coderCopy encodeInteger:0 forKey:@"DefaultStyle"];
      [coderCopy encodeBool:1 forKey:@"IsBackButton"];
      goto LABEL_53;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"DefaultStyle"];
    [coderCopy encodeInteger:0 forKey:v13];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"IsBackButton"];
    [coderCopy encodeBool:1 forKey:v10];
    goto LABEL_12;
  }

  v39 = prefixCopy;
  if (*&self->_dataFlags)
  {
    if (!prefixCopy)
    {
      v40 = 1;
      [coderCopy encodeBool:1 forKey:@"IsBackButton"];
      [coderCopy encodeObject:self->_backIndicatorImage forKey:@"BackIndicator"];
      [coderCopy encodeObject:self->_backIndicatorTransitionMaskImage forKey:@"BackIndicatorTransitionMask"];
      [coderCopy encodeInteger:self->_style forKey:@"CustomizedStyle"];
      goto LABEL_23;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"IsBackButton"];
    [coderCopy encodeBool:1 forKey:v16];

    backIndicatorImage = self->_backIndicatorImage;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"BackIndicator"];
    [coderCopy encodeObject:backIndicatorImage forKey:v18];

    backIndicatorTransitionMaskImage = self->_backIndicatorTransitionMaskImage;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"BackIndicatorTransitionMask"];
    [coderCopy encodeObject:backIndicatorTransitionMaskImage forKey:v20];

    style = self->_style;
    goto LABEL_18;
  }

  style = self->_style;
  if (prefixCopy)
  {
LABEL_18:
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"CustomizedStyle"];
    [coderCopy encodeInteger:style forKey:v21];

    v40 = 0;
    goto LABEL_23;
  }

  [coderCopy encodeInteger:self->_style forKey:@"CustomizedStyle"];
  v40 = 1;
LABEL_23:
  v22 = 0;
  p_immutable = &self->super._immutable;
  v41[0] = xmmword_1E711FC90;
  v41[1] = *&off_1E711FCA0;
  do
  {
    if (v40)
    {
      v24 = *(v41 + v22);
    }

    else
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v39, *(v41 + v22)];
    }

    v25 = v24;
    v26 = self->_titleTextAttributes[v22 / 8];
    if (v26)
    {
      if (v24)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v24, @"TitleTextAttributes"];
        [coderCopy _ui_encodeTextAttributes:v26 forKey:v27];
      }

      else
      {
        [coderCopy _ui_encodeTextAttributes:self->_titleTextAttributes[v22 / 8] forKey:@"TitleTextAttributes"];
      }
    }

    stateFlags = self->_stateFlags;
    v29 = self->_stateFlags[v22 / 4];
    if ((v29 & 8) != 0)
    {
      v30 = self->_backgroundImage[v22 / 8];
      if (!v25)
      {
        [coderCopy encodeObject:self->_backgroundImage[v22 / 8] forKey:@"BackgroundImage"];
        if ((*&stateFlags[v22 / 4] & 4) == 0)
        {
          if ((*&stateFlags[v22 / 4] & 0x10) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v25, @"BackgroundImage"];
      [coderCopy encodeObject:v30 forKey:v31];

      v29 = stateFlags[v22 / 4];
    }

    if ((v29 & 4) == 0)
    {
      goto LABEL_43;
    }

    if (v25)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v25, @"TitlePosition"];
      v37 = v32 = 0;
      v33 = v37;
      goto LABEL_41;
    }

LABEL_40:
    v32 = 1;
    v33 = @"TitlePosition";
LABEL_41:
    [coderCopy encodeUIOffset:v33 forKey:{p_immutable[9], p_immutable[10]}];
    if ((v32 & 1) == 0)
    {
    }

LABEL_43:
    if ((*&stateFlags[v22 / 4] & 0x10) == 0)
    {
      goto LABEL_49;
    }

    if (v25)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v25, @"BackgroundImagePosition"];
      v38 = v34 = 0;
      v35 = v38;
      goto LABEL_47;
    }

LABEL_46:
    v34 = 1;
    v35 = @"BackgroundImagePosition";
LABEL_47:
    [coderCopy encodeUIOffset:v35 forKey:{p_immutable[17], p_immutable[18]}];
    if ((v34 & 1) == 0)
    {
    }

LABEL_49:

    v22 += 8;
    p_immutable += 2;
  }

  while (v22 != 32);
  for (i = 24; i != -8; i -= 8)
  {
  }

  v8 = v39;
LABEL_53:
}

- (void)describeInto:(id)into
{
  v19 = *MEMORY[0x1E69E9840];
  intoCopy = into;
  v17.receiver = self;
  v17.super_class = _UIBarButtonItemData;
  [(_UIBarAppearanceData *)&v17 describeInto:intoCopy];
  [intoCopy appendString:@" baseStyle="];
  if ((*&self->_dataFlags & 1) == 0)
  {
    style = self->_style;
    if (style == 2)
    {
      v6 = @"prominent";
    }

    else
    {
      if (style)
      {
        [intoCopy appendFormat:@"unknown(%li)", self->_style, v16];
        goto LABEL_11;
      }

      v6 = @"plain";
    }

    goto LABEL_9;
  }

  [intoCopy appendString:@"backButton"];
  if (!self->_backIndicatorImage)
  {
    v6 = @" backIndicator=default mask=default";
LABEL_9:
    [intoCopy appendString:v6];
    goto LABEL_11;
  }

  [intoCopy appendFormat:@" backIndicator=%@ mask=%@", self->_backIndicatorImage, self->_backIndicatorTransitionMaskImage];
LABEL_11:
  v7 = 0;
  v8 = 1;
  v18[0] = xmmword_1E711FCB0;
  v18[1] = *&off_1E711FCC0;
  do
  {
    objc_msgSend(intoCopy, "appendFormat:", @" %@=(titleTextAttributes="), *(v18 + v7);
    _UIBADPrettyPrintTextAttributes(intoCopy, self->_titleTextAttributes[v7 / 8]);
    stateFlags = self->_stateFlags;
    v10 = self->_stateFlags[v7 / 4];
    if ((v10 & 4) != 0)
    {
      v11 = NSStringFromUIOffset(*&self->_backgroundImage[v8 + 3]);
      [intoCopy appendFormat:@", titlePositionAdjustment=%@", v11];

      v10 = stateFlags[v7 / 4];
    }

    if ((v10 & 8) != 0)
    {
      [intoCopy appendFormat:@", backgroundImage=%@", self->_backgroundImage[v7 / 8]];
      if ((*&stateFlags[v7 / 4] & 0x10) != 0)
      {
        v12 = NSStringFromUIOffset(*(&self->_titlePositionAdjustment[3].vertical + v8 * 8));
        [intoCopy appendFormat:@", backgroundImagePositionAdjustment=%@", v12];
      }
    }

    [intoCopy appendString:@""]);
    v8 += 2;
    v7 += 8;
  }

  while (v8 != 9);
  fallback = self->_fallback;
  v14 = +[_UIBarButtonItemDataBaseFallback fallback];

  if (fallback != v14)
  {
    [intoCopy appendFormat:@" basedOn=%p", self->_fallback];
  }

  for (i = 24; i != -8; i -= 8)
  {
  }
}

- (int64_t)hashInto:(int64_t)into
{
  v12.receiver = self;
  v12.super_class = _UIBarButtonItemData;
  v4 = [(_UIBarAppearanceData *)&v12 hashInto:into];
  v5 = self->_titleTextAttributes[0];
  if (v5)
  {
    style = [(NSDictionary *)v5 hash];
  }

  else
  {
    style = self->_style;
  }

  v7 = (v4 + style) << 8;
  if ((*self->_stateFlags & 8) != 0)
  {
    v8 = [(UIImage *)self->_backgroundImage[0] hash]| v7;
  }

  else
  {
    v8 = self->_style + v7;
  }

  v9 = v8 << 8;
  backIndicatorImage = self->_backIndicatorImage;
  if (backIndicatorImage)
  {
    return [(UIImage *)backIndicatorImage hash]| v9;
  }

  return v9;
}

- (BOOL)checkEqualTo:(id)to
{
  toCopy = to;
  v30.receiver = self;
  v30.super_class = _UIBarButtonItemData;
  if (![(_UIBarAppearanceData *)&v30 checkEqualTo:toCopy]|| self->_style != toCopy[38] || ((*(toCopy + 296) ^ *&self->_dataFlags) & 1) != 0)
  {
    goto LABEL_46;
  }

  v5 = toCopy[32];
  v6 = self->_fallback;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_45;
    }

    v10 = [(UIImage *)v6 isEqual:v7];

    if (!v10)
    {
      goto LABEL_46;
    }
  }

  v11 = toCopy[28];
  v6 = self->_backIndicatorImage;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_45;
    }

    v13 = [(UIImage *)v6 isEqual:v12];

    if (!v13)
    {
      goto LABEL_46;
    }
  }

  v14 = toCopy[29];
  v6 = self->_backIndicatorTransitionMaskImage;
  v15 = v14;
  v8 = v15;
  if (v6 != v15)
  {
    if (v6 && v15)
    {
      v16 = [(UIImage *)v6 isEqual:v15];

      if (!v16)
      {
        goto LABEL_46;
      }

      goto LABEL_24;
    }

LABEL_45:

    goto LABEL_46;
  }

LABEL_24:
  v17 = 0;
  while (1)
  {
    v18 = vmovn_s64(vceqq_f64(self->_titlePositionAdjustment[v17], *&toCopy[2 * v17 + 10]));
    if ((v18.i32[0] & v18.i32[1] & 1) == 0)
    {
      break;
    }

    v19 = vmovn_s64(vceqq_f64(self->_backgroundImagePositionAdjustment[v17], *&toCopy[2 * v17 + 18]));
    if ((v19.i32[0] & v19.i32[1] & 1) == 0)
    {
      break;
    }

    v20 = toCopy[v17 + 6];
    v6 = self->_backgroundImage[v17];
    v21 = v20;
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      if (v6)
      {
        v22 = v21 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        goto LABEL_45;
      }

      v23 = [(UIImage *)v6 isEqual:v21];

      if (!v23)
      {
        break;
      }
    }

    v24 = toCopy[v17 + 2];
    v6 = self->_titleTextAttributes[v17];
    v25 = v24;
    v8 = v25;
    if (v6 == v25)
    {
    }

    else
    {
      if (v6)
      {
        v26 = v25 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_45;
      }

      v27 = [(UIImage *)v6 isEqual:v25];

      if (!v27)
      {
        break;
      }
    }

    ++v17;
    v28 = 1;
    if (v17 == 4)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  v28 = 0;
LABEL_47:

  return v28;
}

- (id)_fallbackFontForState:(int64_t)state
{
  if (state == 3 && (*&self->_stateFlags[2] & 1) != 0)
  {
    v4 = self->_titleTextAttributes[1];
  }

  else
  {
    if ((*self->_stateFlags & 1) == 0)
    {
      v3 = [_UIBarButtonItemDataFallback fontForState:"fontForState:style:" style:?];
      goto LABEL_8;
    }

    v4 = self->_titleTextAttributes[0];
  }

  v3 = [(NSDictionary *)v4 objectForKeyedSubscript:*off_1E70EC918];
LABEL_8:

  return v3;
}

- (id)_fallbackColorForState:(int64_t)state
{
  if (state == 3 && (*&self->_stateFlags[2] & 2) != 0)
  {
    v4 = [(NSDictionary *)self->_titleTextAttributes[1] objectForKeyedSubscript:*off_1E70EC920];
    goto LABEL_8;
  }

  if ((*self->_stateFlags & 2) == 0)
  {
    v4 = [(_UIBarButtonItemDataFallback *)self->_fallback colorForState:state style:self->_style];
LABEL_8:
    v5 = v4;
    goto LABEL_9;
  }

  v5 = [(NSDictionary *)self->_titleTextAttributes[0] objectForKeyedSubscript:*off_1E70EC920];
  if (state == 2)
  {
    v6 = [UIColor _disabledColorForColor:v5];

    v5 = v6;
  }

LABEL_9:

  return v5;
}

- (id)titleTextAttributesForState:(int64_t)state
{
  v5 = &self->_stateFlags[2 * state];
  if (*v5)
  {
    v6 = 0;
    if ((*v5 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [(_UIBarButtonItemData *)self _fallbackFontForState:state];
    if ((*v5 & 2) != 0)
    {
LABEL_3:
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [(_UIBarButtonItemData *)self _fallbackColorForState:state];
LABEL_6:
  v8 = self->_titleTextAttributes[state];
  if (v6 | v7)
  {
    v9 = [(NSDictionary *)v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      dictionary = v9;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = dictionary;

    if (v6)
    {
      [(NSDictionary *)v12 setObject:v6 forKeyedSubscript:*off_1E70EC918];
    }

    if (v7)
    {
      [(NSDictionary *)v12 setObject:v7 forKeyedSubscript:*off_1E70EC920];
    }
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (void)setTitleTextAttributes:(id)attributes forState:(int64_t)state
{
  attributesCopy = attributes;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = [attributesCopy objectForKeyedSubscript:*off_1E70EC918];
  stateFlags = self->_stateFlags;
  v10 = *&self->_stateFlags[2 * state] & 0xFE;
  if (v8)
  {
    ++v10;
  }

  *&stateFlags[2 * state] = v10;

  v11 = [attributesCopy objectForKeyedSubscript:*off_1E70EC920];
  *&stateFlags[2 * state] = *&stateFlags[2 * state] & 0xFD | (2 * (v11 != 0));

  v12 = [attributesCopy copy];
  v13 = self->_titleTextAttributes[state];
  self->_titleTextAttributes[state] = v12;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)state
{
  if ((*&self->_stateFlags[2 * state] & 4) != 0)
  {
    titlePositionAdjustment = &self->_titlePositionAdjustment[state];
LABEL_8:
    horizontal = titlePositionAdjustment->horizontal;
    vertical = titlePositionAdjustment->vertical;
    goto LABEL_10;
  }

  if (state == 3 && (*&self->_stateFlags[2] & 4) != 0)
  {
    horizontal = self->_titlePositionAdjustment[1].horizontal;
    vertical = self->_titlePositionAdjustment[1].vertical;
    goto LABEL_10;
  }

  if ((*self->_stateFlags & 4) != 0)
  {
    titlePositionAdjustment = self->_titlePositionAdjustment;
    goto LABEL_8;
  }

  [(_UIBarButtonItemDataFallback *)self->_fallback titlePositionAdjustmentForState:v3 style:v4];
LABEL_10:
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)setTitlePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_titlePositionAdjustment[state];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * state] |= 4u;
}

- (id)backgroundImageForState:(int64_t)state
{
  if ((*&self->_stateFlags[2 * state] & 8) != 0)
  {
    v3 = self->_backgroundImage[state];
  }

  else
  {
    v3 = [_UIBarButtonItemDataFallback backgroundImageForState:"backgroundImageForState:style:" style:?];
  }

  return v3;
}

- (void)setBackgroundImage:(id)image forState:(int64_t)state
{
  imageCopy = image;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = self->_backgroundImage[state];
  self->_backgroundImage[state] = imageCopy;

  *&self->_stateFlags[2 * state] = *&self->_stateFlags[2 * state] & 0xF7 | (8 * (imageCopy != 0));
}

- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)state
{
  if ((*&self->_stateFlags[2 * state] & 0x10) != 0)
  {
    backgroundImagePositionAdjustment = &self->_backgroundImagePositionAdjustment[state];
LABEL_8:
    horizontal = backgroundImagePositionAdjustment->horizontal;
    vertical = backgroundImagePositionAdjustment->vertical;
    goto LABEL_10;
  }

  if (state == 3 && (*&self->_stateFlags[2] & 0x10) != 0)
  {
    horizontal = self->_backgroundImagePositionAdjustment[1].horizontal;
    vertical = self->_backgroundImagePositionAdjustment[1].vertical;
    goto LABEL_10;
  }

  if ((*self->_stateFlags & 0x10) != 0)
  {
    backgroundImagePositionAdjustment = self->_backgroundImagePositionAdjustment;
    goto LABEL_8;
  }

  [(_UIBarButtonItemDataFallback *)self->_fallback backgroundImagePositionAdjustmentForState:v3 style:v4];
LABEL_10:
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)setBackgroundImagePositionAdjustment:(UIOffset)adjustment forState:(int64_t)state
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_backgroundImagePositionAdjustment[state];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * state] |= 0x10u;
}

- (UIImageSymbolConfiguration)compactImageSymbolConfiguration
{
  compactImageSymbolConfiguration = self->_compactImageSymbolConfiguration;
  if (!compactImageSymbolConfiguration)
  {
    if (*self->_stateFlags)
    {
      v6 = [(_UIBarButtonItemData *)self titleTextAttributesForState:0];
      textStyleForSymbolConfiguration = [v6 objectForKeyedSubscript:*off_1E70EC918];

      [UIImageSymbolConfiguration configurationWithFont:textStyleForSymbolConfiguration scale:2];
    }

    else
    {
      textStyleForSymbolConfiguration = [(_UIBarButtonItemData *)self textStyleForSymbolConfiguration];
      [UIImageSymbolConfiguration configurationWithTextStyle:textStyleForSymbolConfiguration scale:2];
    }
    v5 = ;
    v7 = self->_compactImageSymbolConfiguration;
    self->_compactImageSymbolConfiguration = v5;

    compactImageSymbolConfiguration = self->_compactImageSymbolConfiguration;
  }

  return compactImageSymbolConfiguration;
}

- (void)setBackIndicatorImage:(id)image transitionMaskImage:(id)maskImage
{
  imageCopy = image;
  maskImageCopy = maskImage;
  if (*&self->_dataFlags)
  {
    [(_UIBarAppearanceData *)self assertMutable:a2];
    objc_storeStrong(&self->_backIndicatorImage, image);
    objc_storeStrong(&self->_backIndicatorTransitionMaskImage, maskImage);
  }
}

- (void)resetBackIndicatorImages
{
  backIndicatorImage = self->_backIndicatorImage;
  self->_backIndicatorImage = 0;

  backIndicatorTransitionMaskImage = self->_backIndicatorTransitionMaskImage;
  self->_backIndicatorTransitionMaskImage = 0;
}

- (UIImage)compactBackIndicatorImage
{
  if (*&self->_dataFlags)
  {
    backIndicatorImage = self->_backIndicatorImage;
    if (!backIndicatorImage)
    {
      backIndicatorImage = compactBackIndicatorImage_indicator;
      if (!compactBackIndicatorImage_indicator)
      {
        if (_UIBarsUseDynamicType())
        {
          [UIImage systemImageNamed:@"chevron.backward"];
        }

        else
        {
          [UIImage kitImageNamed:@"UINavigationBarBackIndicatorLandscape"];
        }
        v6 = ;
        v7 = compactBackIndicatorImage_indicator;
        compactBackIndicatorImage_indicator = v6;

        backIndicatorImage = compactBackIndicatorImage_indicator;
      }
    }

    v3 = backIndicatorImage;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__backIndicatorConfigurationForConfig:(uint64_t)config withScale:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      v7 = v5;
      goto LABEL_13;
    }

    if (self[264])
    {
      v10 = [self titleTextAttributesForState:0];
      backIndicatorTextStyleForSymbolConfiguration2 = [v10 objectForKeyedSubscript:*off_1E70EC918];

      v12 = _UISolariumEnabled();
      fontDescriptor = [backIndicatorTextStyleForSymbolConfiguration2 fontDescriptor];
      v14 = fontDescriptor;
      if (v12)
      {
        v23 = *off_1E70ECCC0;
        v21 = *off_1E70ECD38;
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:*off_1E70ECD30];
        v22 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v24[0] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        v18 = [v14 fontDescriptorByAddingAttributes:v17];
      }

      else
      {
        v18 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
      }

      v19 = [off_1E70ECC18 fontWithDescriptor:v18 size:0.0];
      v7 = [UIImageSymbolConfiguration configurationWithFont:v19 scale:config];
    }

    else
    {
      if (_UISolariumEnabled())
      {
        backIndicatorTextStyleForSymbolConfiguration = [self backIndicatorTextStyleForSymbolConfiguration];
        v9 = [off_1E70ECC18 _preferredFontForTextStyle:backIndicatorTextStyleForSymbolConfiguration weight:*off_1E70ECD30];

        v7 = [UIImageSymbolConfiguration configurationWithFont:v9 scale:config];

        goto LABEL_13;
      }

      backIndicatorTextStyleForSymbolConfiguration2 = [self backIndicatorTextStyleForSymbolConfiguration];
      v7 = [UIImageSymbolConfiguration configurationWithTextStyle:backIndicatorTextStyleForSymbolConfiguration2 scale:config];
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (UIImageSymbolConfiguration)compactBackIndicatorSymbolConfiguration
{
  if ((*&self->_dataFlags & 1) == 0)
  {
    v3 = 0;

    return v3;
  }

  backIndicatorImage = self->_backIndicatorImage;
  if (backIndicatorImage)
  {
    if ([(UIImage *)backIndicatorImage isSymbolImage])
    {
LABEL_7:
      v3 = [(_UIBarButtonItemData *)self __backIndicatorConfigurationForConfig:2 withScale:?];
      goto LABEL_10;
    }
  }

  else if (_UIBarsUseDynamicType())
  {
    goto LABEL_7;
  }

  v3 = 0;
LABEL_10:

  return v3;
}

- (UIImageSymbolConfiguration)compactBackIndicatorTransitionMaskSymbolConfiguration
{
  if ((*&self->_dataFlags & 1) == 0)
  {
    v3 = 0;

    return v3;
  }

  backIndicatorTransitionMaskImage = self->_backIndicatorTransitionMaskImage;
  if (backIndicatorTransitionMaskImage)
  {
    if ([(UIImage *)backIndicatorTransitionMaskImage isSymbolImage])
    {
LABEL_7:
      v3 = [(_UIBarButtonItemData *)self __backIndicatorConfigurationForConfig:2 withScale:?];
      goto LABEL_10;
    }
  }

  else if (_UIBarsUseDynamicType())
  {
    goto LABEL_7;
  }

  v3 = 0;
LABEL_10:

  return v3;
}

- (id)fontForState:(int64_t)state style:(int64_t)style
{
  if (*&self->_stateFlags[2 * state])
  {
    [(NSDictionary *)self->_titleTextAttributes[state] objectForKeyedSubscript:*off_1E70EC918, style];
  }

  else
  {
    [(_UIBarButtonItemData *)self _fallbackFontForState:?];
  }
  v4 = ;

  return v4;
}

- (id)colorForState:(int64_t)state style:(int64_t)style
{
  if ((*&self->_stateFlags[2 * state] & 2) != 0)
  {
    [(NSDictionary *)self->_titleTextAttributes[state] objectForKeyedSubscript:*off_1E70EC920, style];
  }

  else
  {
    [(_UIBarButtonItemData *)self _fallbackColorForState:?];
  }
  v4 = ;

  return v4;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)state style:(int64_t)style
{
  if ((*&self->_stateFlags[2 * state] & 4) != 0)
  {
    v6 = &self->_titlePositionAdjustment[state];
    horizontal = v6->horizontal;
    vertical = v6->vertical;
  }

  else
  {
    [(_UIBarButtonItemDataFallback *)self->_fallback titlePositionAdjustmentForState:state style:state];
  }

  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (id)backgroundImageForState:(int64_t)state style:(int64_t)style
{
  if ((*&self->_stateFlags[2 * state] & 8) != 0)
  {
    v4 = self->_backgroundImage[state];
  }

  else
  {
    v4 = [_UIBarButtonItemDataFallback backgroundImageForState:"backgroundImageForState:style:" style:?];
  }

  return v4;
}

- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)state style:(int64_t)style
{
  if ((*&self->_stateFlags[2 * state] & 0x10) != 0)
  {
    v6 = &self->_backgroundImagePositionAdjustment[state];
    horizontal = v6->horizontal;
    vertical = v6->vertical;
  }

  else
  {
    [_UIBarButtonItemDataFallback backgroundImagePositionAdjustmentForState:"backgroundImagePositionAdjustmentForState:style:" style:?];
  }

  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end