@interface _UIBarButtonItemData
+ (id)decodeFromCoder:(id)a3 prefix:(id)a4;
+ (id)standardBackButtonData;
+ (id)standardItemDataForStyle:(int64_t)a3;
- (BOOL)checkEqualTo:(id)a3;
- (UIImage)backIndicatorImage;
- (UIImage)backIndicatorTransitionMaskImage;
- (UIImage)compactBackIndicatorImage;
- (UIImageSymbolConfiguration)backIndicatorSymbolConfiguration;
- (UIImageSymbolConfiguration)backIndicatorTransitionMaskSymbolConfiguration;
- (UIImageSymbolConfiguration)compactBackIndicatorSymbolConfiguration;
- (UIImageSymbolConfiguration)compactBackIndicatorTransitionMaskSymbolConfiguration;
- (UIImageSymbolConfiguration)compactImageSymbolConfiguration;
- (UIImageSymbolConfiguration)imageSymbolConfiguration;
- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)a3;
- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4;
- (_UIBarButtonItemData)dataWithNewFallback:(id)a3;
- (_UIBarButtonItemData)initWithStyle:(int64_t)a3;
- (id)__backIndicatorConfigurationForConfig:(uint64_t)a3 withScale:;
- (id)_fallbackColorForState:(int64_t)a3;
- (id)_fallbackFontForState:(int64_t)a3;
- (id)backgroundImageForState:(int64_t)a3;
- (id)backgroundImageForState:(int64_t)a3 style:(int64_t)a4;
- (id)colorForState:(int64_t)a3 style:(int64_t)a4;
- (id)copyAsBackButtonDataWithIndicatorsAndFallbackFrom:(id)a3;
- (id)fontForState:(int64_t)a3 style:(int64_t)a4;
- (id)replicate;
- (id)titleTextAttributesForState:(int64_t)a3;
- (int64_t)hashInto:(int64_t)a3;
- (void)_decodeBackgroundImagesFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeBackgroundPositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4;
- (void)_decodeTitleTextAttributesFromCoder:(id)a3 prefix:(id)a4;
- (void)describeInto:(id)a3;
- (void)encodeToCoder:(id)a3 prefix:(id)a4;
- (void)resetBackIndicatorImages;
- (void)setBackIndicatorImage:(id)a3 transitionMaskImage:(id)a4;
- (void)setBackgroundImage:(id)a3 forState:(int64_t)a4;
- (void)setBackgroundImagePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4;
- (void)setTitlePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4;
- (void)setTitleTextAttributes:(id)a3 forState:(int64_t)a4;
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
    v6 = [v5 markReadOnly];
    v2 = qword_1ED49A368;
  }

  return v2;
}

- (id)replicate
{
  v22.receiver = self;
  v22.super_class = _UIBarButtonItemData;
  v3 = [(_UIBarAppearanceData *)&v22 replicate];
  *(v3 + 304) = self->_style;
  *(v3 + 296) = *&self->_dataFlags;
  objc_storeStrong((v3 + 256), self->_fallback);
  v4 = [(UIImage *)self->_backIndicatorImage copy];
  v5 = *(v3 + 224);
  *(v3 + 224) = v4;

  v6 = [(UIImage *)self->_backIndicatorTransitionMaskImage copy];
  v7 = *(v3 + 232);
  *(v3 + 232) = v6;

  v8 = [(UIImageSymbolConfiguration *)self->_imageSymbolConfiguration copy];
  v9 = *(v3 + 208);
  *(v3 + 208) = v8;

  v10 = [(UIImageSymbolConfiguration *)self->_compactImageSymbolConfiguration copy];
  v11 = *(v3 + 216);
  *(v3 + 216) = v10;

  v12 = [(UIImageSymbolConfiguration *)self->_backIndicatorSymbolConfiguration copy];
  v13 = *(v3 + 240);
  *(v3 + 240) = v12;

  v14 = [(UIImageSymbolConfiguration *)self->_compactBackIndicatorSymbolConfiguration copy];
  v15 = *(v3 + 248);
  *(v3 + 248) = v14;

  v16 = 0;
  v17 = 0;
  v18 = v3 + 16;
  do
  {
    v19 = [(NSDictionary *)self->_titleTextAttributes[v17 / 2] copy];
    v20 = *(v18 + v17 * 4);
    *(v18 + v17 * 4) = v19;

    *(v3 + 80 + v16 * 16) = self->_titlePositionAdjustment[v16];
    objc_storeStrong((v3 + v17 * 4 + 48), self->_backgroundImage[v17 / 2]);
    *(v3 + 144 + v16 * 16) = self->_backgroundImagePositionAdjustment[v16];
    *(v3 + 264 + v17 * 4) = *&self->_stateFlags[v17];
    v17 += 2;
    ++v16;
  }

  while (v17 != 8);

  return v3;
}

- (UIImageSymbolConfiguration)imageSymbolConfiguration
{
  imageSymbolConfiguration = self->_imageSymbolConfiguration;
  if (!imageSymbolConfiguration)
  {
    if (*self->_stateFlags)
    {
      v4 = [(_UIBarButtonItemData *)self titleTextAttributesForState:0];
      v5 = [v4 objectForKeyedSubscript:*off_1E70EC918];
    }

    else
    {
      if (!_UISolariumEnabled())
      {
        v6 = [(_UIBarButtonItemData *)self textStyleForSymbolConfiguration];
        v7 = [UIImageSymbolConfiguration configurationWithTextStyle:v6 scale:3];
        goto LABEL_8;
      }

      v4 = [(_UIBarButtonItemData *)self textStyleForSymbolConfiguration];
      v5 = [off_1E70ECC18 _preferredFontForTextStyle:v4 weight:*off_1E70ECD20];
    }

    v6 = v5;

    v7 = [UIImageSymbolConfiguration configurationWithFont:v6 scale:3];
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

+ (id)standardItemDataForStyle:(int64_t)a3
{
  if (a3 && a3 != 7)
  {
    if (a3 == 2)
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
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:a1 file:@"_UIBarButtonItemData.m" lineNumber:136 description:{@"Unsupported style: %li", a3}];
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

  v11 = [*v4 markReadOnly];
  v5 = *v4;
LABEL_11:

  return v5;
}

- (_UIBarButtonItemData)initWithStyle:(int64_t)a3
{
  if (a3 == 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIBarButtonItemData.m" lineNumber:167 description:{@"Unknown or unsupported UIBarButtonItemStyle style %li", v4}];
  }

  v12.receiver = self;
  v12.super_class = _UIBarButtonItemData;
  v5 = [(_UIBarButtonItemData *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_style = v4;
    v7 = +[_UIBarButtonItemDataBaseFallback fallback];
    fallback = v6->_fallback;
    v6->_fallback = v7;
  }

  return v6;
}

- (_UIBarButtonItemData)dataWithNewFallback:(id)a3
{
  v4 = a3;
  v5 = [(_UIBarAppearanceData *)self writableInstance];
  v6 = v4;
  if (!v4)
  {
    v6 = +[_UIBarButtonItemDataBaseFallback fallback];
  }

  objc_storeStrong(v5 + 32, v6);
  if (!v4)
  {
  }

  return v5;
}

- (id)copyAsBackButtonDataWithIndicatorsAndFallbackFrom:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v5 = [(_UIBarButtonItemData *)self replicate];
  v6 = v5;
  *(v5 + 304) = 0;
  *(v5 + 296) |= 1u;
  if (v4)
  {
    objc_storeStrong((v5 + 256), v4[32]);
    objc_storeStrong(v6 + 28, v4[28]);
    objc_storeStrong(v6 + 29, v4[29]);
  }

LABEL_13:

  return v6;
}

- (void)_decodeTitleTextAttributesFromCoder:(id)a3 prefix:(id)a4
{
  v33 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Normal.TitleTextAttributes"];
    v8 = [v33 _ui_decodeTextAttributesForKey:v7];
  }

  else
  {
    v8 = [v33 _ui_decodeTextAttributesForKey:@"Normal.TitleTextAttributes"];
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

  if (v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Highlighted.TitleTextAttributes"];
    v17 = [v33 _ui_decodeTextAttributesForKey:v16];
  }

  else
  {
    v17 = [v33 _ui_decodeTextAttributesForKey:@"Highlighted.TitleTextAttributes"];
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

  if (v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Disabled.TitleTextAttributes"];
    v22 = [v33 _ui_decodeTextAttributesForKey:v21];
  }

  else
  {
    v22 = [v33 _ui_decodeTextAttributesForKey:@"Disabled.TitleTextAttributes"];
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

  if (v6)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Focused.TitleTextAttributes"];
    v27 = [v33 _ui_decodeTextAttributesForKey:v26];
  }

  else
  {
    v27 = [v33 _ui_decodeTextAttributesForKey:@"Focused.TitleTextAttributes"];
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

- (void)_decodeBackgroundImagesFromCoder:(id)a3 prefix:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Normal.BackgroundImage"];
    v9 = [v24 decodeObjectOfClass:v7 forKey:v8];
  }

  else
  {
    v9 = [v24 decodeObjectOfClass:v7 forKey:@"Normal.BackgroundImage"];
  }

  backgroundImage = self->_backgroundImage;
  objc_storeStrong(self->_backgroundImage, v9);
  stateFlags = self->_stateFlags;
  *self->_stateFlags = *self->_stateFlags & 0xF7 | (8 * (v9 != 0));
  v12 = objc_opt_class();
  if (v6)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Highlighted.BackgroundImage"];
    v14 = [v24 decodeObjectOfClass:v12 forKey:v13];
  }

  else
  {
    v14 = [v24 decodeObjectOfClass:v12 forKey:@"Highlighted.BackgroundImage"];
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
  if (v6)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Disabled.BackgroundImage"];
    v18 = [v24 decodeObjectOfClass:v16 forKey:v17];
  }

  else
  {
    v18 = [v24 decodeObjectOfClass:v16 forKey:@"Disabled.BackgroundImage"];
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
  if (v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Focused.BackgroundImage"];
    v22 = [v24 decodeObjectOfClass:v20 forKey:v21];
  }

  else
  {
    v22 = [v24 decodeObjectOfClass:v20 forKey:@"Focused.BackgroundImage"];
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

- (void)_decodeTitlePositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = @"Normal.TitlePosition";
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Normal.TitlePosition"];
  }

  v9 = v6;
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
  if (v7)
  {

    titlePositionAdjustment = self->_titlePositionAdjustment;
    self->_titlePositionAdjustment[0].horizontal = v12;
    self->_titlePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Highlighted.TitlePosition"];
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
  if (v7)
  {

    titlePositionAdjustment[1].horizontal = v22;
    titlePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Disabled.TitlePosition"];
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
  if (v7)
  {

    titlePositionAdjustment[2].horizontal = v12;
    titlePositionAdjustment[2].vertical = v14;
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Focused.TitlePosition"];
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
  if (v7)
  {
  }

  titlePositionAdjustment[3].horizontal = v22;
  titlePositionAdjustment[3].vertical = v24;
}

- (void)_decodeBackgroundPositionAdjustmentsFromCoder:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = @"Normal.BackgroundImagePosition";
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Normal.BackgroundImagePosition"];
  }

  v9 = v6;
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
  if (v7)
  {

    backgroundImagePositionAdjustment = self->_backgroundImagePositionAdjustment;
    self->_backgroundImagePositionAdjustment[0].horizontal = v12;
    self->_backgroundImagePositionAdjustment[0].vertical = v14;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Highlighted.BackgroundImagePosition"];
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
  if (v7)
  {

    backgroundImagePositionAdjustment[1].horizontal = v22;
    backgroundImagePositionAdjustment[1].vertical = v24;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Disabled.BackgroundImagePosition"];
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
  if (v7)
  {

    backgroundImagePositionAdjustment[2].horizontal = v12;
    backgroundImagePositionAdjustment[2].vertical = v14;
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Focused.BackgroundImagePosition"];
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
  if (v7)
  {
  }

  backgroundImagePositionAdjustment[3].horizontal = v22;
  backgroundImagePositionAdjustment[3].vertical = v24;
}

+ (id)decodeFromCoder:(id)a3 prefix:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"IsBackButton"];
    v10 = [v7 decodeBoolForKey:v9];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"DefaultStyle"];
  }

  else
  {
    v10 = [v7 decodeBoolForKey:@"IsBackButton"];
    v11 = @"DefaultStyle";
  }

  if ([v7 containsValueForKey:v11])
  {
    if (v10)
    {
      [a1 standardBackButtonData];
    }

    else
    {
      [a1 standardItemDataForStyle:{objc_msgSend(v7, "decodeIntegerForKey:", v11)}];
    }
    v12 = ;
    goto LABEL_22;
  }

  v12 = objc_opt_new();
  if (v8)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"CustomizedStyle"];
    *(v12 + 304) = [v7 decodeIntegerForKey:v13];
  }

  else
  {
    *(v12 + 304) = [v7 decodeIntegerForKey:@"CustomizedStyle"];
  }

  *(v12 + 296) = *(v12 + 296) & 0xFE | v10;
  v14 = +[_UIBarButtonItemDataBaseFallback fallback];
  v15 = *(v12 + 256);
  *(v12 + 256) = v14;

  [v12 _decodeTitleTextAttributesFromCoder:v7 prefix:v8];
  [v12 _decodeBackgroundImagesFromCoder:v7 prefix:v8];
  [v12 _decodeTitlePositionAdjustmentsFromCoder:v7 prefix:v8];
  [v12 _decodeBackgroundPositionAdjustmentsFromCoder:v7 prefix:v8];
  if (!v10)
  {
    goto LABEL_22;
  }

  v16 = objc_opt_class();
  v17 = @"BackIndicator";
  if (v8)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"BackIndicator"];
  }

  v18 = [v7 decodeObjectOfClass:v16 forKey:v17];
  v19 = *(v12 + 224);
  *(v12 + 224) = v18;

  if (v8)
  {

    v20 = objc_opt_class();
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"BackIndicatorTransitionMask"];
  }

  else
  {
    v20 = objc_opt_class();
    v21 = @"BackIndicatorTransitionMask";
  }

  v22 = [v7 decodeObjectOfClass:v20 forKey:v21];
  v23 = *(v12 + 232);
  *(v12 + 232) = v22;

  if (v8)
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

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:a1 file:@"_UIBarButtonItemData.m" lineNumber:352 description:{@"Invalid BackButton Appearance archive - must either contain both a back indicator image and a back indicator transition mask image, or contain neither image"}];

LABEL_22:

  return v12;
}

- (void)encodeToCoder:(id)a3 prefix:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (qword_1ED49A360 == self)
  {
    if (v7)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"DefaultStyle"];
      v11 = v6;
      v12 = 0;
LABEL_11:
      [v11 encodeInteger:v12 forKey:v10];
LABEL_12:

      goto LABEL_53;
    }

    v14 = v6;
    v15 = 0;
LABEL_20:
    [v14 encodeInteger:v15 forKey:@"DefaultStyle"];
    goto LABEL_53;
  }

  if (_MergedGlobals_3_17 == self)
  {
    if (v7)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"DefaultStyle"];
      v11 = v6;
      v12 = 2;
      goto LABEL_11;
    }

    v14 = v6;
    v15 = 2;
    goto LABEL_20;
  }

  if (qword_1ED49A368 == self)
  {
    if (!v7)
    {
      [v6 encodeInteger:0 forKey:@"DefaultStyle"];
      [v6 encodeBool:1 forKey:@"IsBackButton"];
      goto LABEL_53;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"DefaultStyle"];
    [v6 encodeInteger:0 forKey:v13];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"IsBackButton"];
    [v6 encodeBool:1 forKey:v10];
    goto LABEL_12;
  }

  v39 = v7;
  if (*&self->_dataFlags)
  {
    if (!v7)
    {
      v40 = 1;
      [v6 encodeBool:1 forKey:@"IsBackButton"];
      [v6 encodeObject:self->_backIndicatorImage forKey:@"BackIndicator"];
      [v6 encodeObject:self->_backIndicatorTransitionMaskImage forKey:@"BackIndicatorTransitionMask"];
      [v6 encodeInteger:self->_style forKey:@"CustomizedStyle"];
      goto LABEL_23;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"IsBackButton"];
    [v6 encodeBool:1 forKey:v16];

    backIndicatorImage = self->_backIndicatorImage;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"BackIndicator"];
    [v6 encodeObject:backIndicatorImage forKey:v18];

    backIndicatorTransitionMaskImage = self->_backIndicatorTransitionMaskImage;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"BackIndicatorTransitionMask"];
    [v6 encodeObject:backIndicatorTransitionMaskImage forKey:v20];

    style = self->_style;
    goto LABEL_18;
  }

  style = self->_style;
  if (v7)
  {
LABEL_18:
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, @"CustomizedStyle"];
    [v6 encodeInteger:style forKey:v21];

    v40 = 0;
    goto LABEL_23;
  }

  [v6 encodeInteger:self->_style forKey:@"CustomizedStyle"];
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
        [v6 _ui_encodeTextAttributes:v26 forKey:v27];
      }

      else
      {
        [v6 _ui_encodeTextAttributes:self->_titleTextAttributes[v22 / 8] forKey:@"TitleTextAttributes"];
      }
    }

    stateFlags = self->_stateFlags;
    v29 = self->_stateFlags[v22 / 4];
    if ((v29 & 8) != 0)
    {
      v30 = self->_backgroundImage[v22 / 8];
      if (!v25)
      {
        [v6 encodeObject:self->_backgroundImage[v22 / 8] forKey:@"BackgroundImage"];
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
      [v6 encodeObject:v30 forKey:v31];

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
    [v6 encodeUIOffset:v33 forKey:{p_immutable[9], p_immutable[10]}];
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
    [v6 encodeUIOffset:v35 forKey:{p_immutable[17], p_immutable[18]}];
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

- (void)describeInto:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UIBarButtonItemData;
  [(_UIBarAppearanceData *)&v17 describeInto:v4];
  [v4 appendString:@" baseStyle="];
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
        [v4 appendFormat:@"unknown(%li)", self->_style, v16];
        goto LABEL_11;
      }

      v6 = @"plain";
    }

    goto LABEL_9;
  }

  [v4 appendString:@"backButton"];
  if (!self->_backIndicatorImage)
  {
    v6 = @" backIndicator=default mask=default";
LABEL_9:
    [v4 appendString:v6];
    goto LABEL_11;
  }

  [v4 appendFormat:@" backIndicator=%@ mask=%@", self->_backIndicatorImage, self->_backIndicatorTransitionMaskImage];
LABEL_11:
  v7 = 0;
  v8 = 1;
  v18[0] = xmmword_1E711FCB0;
  v18[1] = *&off_1E711FCC0;
  do
  {
    objc_msgSend(v4, "appendFormat:", @" %@=(titleTextAttributes="), *(v18 + v7);
    _UIBADPrettyPrintTextAttributes(v4, self->_titleTextAttributes[v7 / 8]);
    stateFlags = self->_stateFlags;
    v10 = self->_stateFlags[v7 / 4];
    if ((v10 & 4) != 0)
    {
      v11 = NSStringFromUIOffset(*&self->_backgroundImage[v8 + 3]);
      [v4 appendFormat:@", titlePositionAdjustment=%@", v11];

      v10 = stateFlags[v7 / 4];
    }

    if ((v10 & 8) != 0)
    {
      [v4 appendFormat:@", backgroundImage=%@", self->_backgroundImage[v7 / 8]];
      if ((*&stateFlags[v7 / 4] & 0x10) != 0)
      {
        v12 = NSStringFromUIOffset(*(&self->_titlePositionAdjustment[3].vertical + v8 * 8));
        [v4 appendFormat:@", backgroundImagePositionAdjustment=%@", v12];
      }
    }

    [v4 appendString:@""]);
    v8 += 2;
    v7 += 8;
  }

  while (v8 != 9);
  fallback = self->_fallback;
  v14 = +[_UIBarButtonItemDataBaseFallback fallback];

  if (fallback != v14)
  {
    [v4 appendFormat:@" basedOn=%p", self->_fallback];
  }

  for (i = 24; i != -8; i -= 8)
  {
  }
}

- (int64_t)hashInto:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = _UIBarButtonItemData;
  v4 = [(_UIBarAppearanceData *)&v12 hashInto:a3];
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

- (BOOL)checkEqualTo:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = _UIBarButtonItemData;
  if (![(_UIBarAppearanceData *)&v30 checkEqualTo:v4]|| self->_style != v4[38] || ((*(v4 + 296) ^ *&self->_dataFlags) & 1) != 0)
  {
    goto LABEL_46;
  }

  v5 = v4[32];
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

  v11 = v4[28];
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

  v14 = v4[29];
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
    v18 = vmovn_s64(vceqq_f64(self->_titlePositionAdjustment[v17], *&v4[2 * v17 + 10]));
    if ((v18.i32[0] & v18.i32[1] & 1) == 0)
    {
      break;
    }

    v19 = vmovn_s64(vceqq_f64(self->_backgroundImagePositionAdjustment[v17], *&v4[2 * v17 + 18]));
    if ((v19.i32[0] & v19.i32[1] & 1) == 0)
    {
      break;
    }

    v20 = v4[v17 + 6];
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

    v24 = v4[v17 + 2];
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

- (id)_fallbackFontForState:(int64_t)a3
{
  if (a3 == 3 && (*&self->_stateFlags[2] & 1) != 0)
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

- (id)_fallbackColorForState:(int64_t)a3
{
  if (a3 == 3 && (*&self->_stateFlags[2] & 2) != 0)
  {
    v4 = [(NSDictionary *)self->_titleTextAttributes[1] objectForKeyedSubscript:*off_1E70EC920];
    goto LABEL_8;
  }

  if ((*self->_stateFlags & 2) == 0)
  {
    v4 = [(_UIBarButtonItemDataFallback *)self->_fallback colorForState:a3 style:self->_style];
LABEL_8:
    v5 = v4;
    goto LABEL_9;
  }

  v5 = [(NSDictionary *)self->_titleTextAttributes[0] objectForKeyedSubscript:*off_1E70EC920];
  if (a3 == 2)
  {
    v6 = [UIColor _disabledColorForColor:v5];

    v5 = v6;
  }

LABEL_9:

  return v5;
}

- (id)titleTextAttributesForState:(int64_t)a3
{
  v5 = &self->_stateFlags[2 * a3];
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
    v6 = [(_UIBarButtonItemData *)self _fallbackFontForState:a3];
    if ((*v5 & 2) != 0)
    {
LABEL_3:
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [(_UIBarButtonItemData *)self _fallbackColorForState:a3];
LABEL_6:
  v8 = self->_titleTextAttributes[a3];
  if (v6 | v7)
  {
    v9 = [(NSDictionary *)v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = v11;

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

- (void)setTitleTextAttributes:(id)a3 forState:(int64_t)a4
{
  v7 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = [v7 objectForKeyedSubscript:*off_1E70EC918];
  stateFlags = self->_stateFlags;
  v10 = *&self->_stateFlags[2 * a4] & 0xFE;
  if (v8)
  {
    ++v10;
  }

  *&stateFlags[2 * a4] = v10;

  v11 = [v7 objectForKeyedSubscript:*off_1E70EC920];
  *&stateFlags[2 * a4] = *&stateFlags[2 * a4] & 0xFD | (2 * (v11 != 0));

  v12 = [v7 copy];
  v13 = self->_titleTextAttributes[a4];
  self->_titleTextAttributes[a4] = v12;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3
{
  if ((*&self->_stateFlags[2 * a3] & 4) != 0)
  {
    titlePositionAdjustment = &self->_titlePositionAdjustment[a3];
LABEL_8:
    horizontal = titlePositionAdjustment->horizontal;
    vertical = titlePositionAdjustment->vertical;
    goto LABEL_10;
  }

  if (a3 == 3 && (*&self->_stateFlags[2] & 4) != 0)
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

- (void)setTitlePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_titlePositionAdjustment[a4];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * a4] |= 4u;
}

- (id)backgroundImageForState:(int64_t)a3
{
  if ((*&self->_stateFlags[2 * a3] & 8) != 0)
  {
    v3 = self->_backgroundImage[a3];
  }

  else
  {
    v3 = [_UIBarButtonItemDataFallback backgroundImageForState:"backgroundImageForState:style:" style:?];
  }

  return v3;
}

- (void)setBackgroundImage:(id)a3 forState:(int64_t)a4
{
  v7 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = self->_backgroundImage[a4];
  self->_backgroundImage[a4] = v7;

  *&self->_stateFlags[2 * a4] = *&self->_stateFlags[2 * a4] & 0xF7 | (8 * (v7 != 0));
}

- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)a3
{
  if ((*&self->_stateFlags[2 * a3] & 0x10) != 0)
  {
    backgroundImagePositionAdjustment = &self->_backgroundImagePositionAdjustment[a3];
LABEL_8:
    horizontal = backgroundImagePositionAdjustment->horizontal;
    vertical = backgroundImagePositionAdjustment->vertical;
    goto LABEL_10;
  }

  if (a3 == 3 && (*&self->_stateFlags[2] & 0x10) != 0)
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

- (void)setBackgroundImagePositionAdjustment:(UIOffset)a3 forState:(int64_t)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v8 = &self->_backgroundImagePositionAdjustment[a4];
  v8->horizontal = horizontal;
  v8->vertical = vertical;
  *&self->_stateFlags[2 * a4] |= 0x10u;
}

- (UIImageSymbolConfiguration)compactImageSymbolConfiguration
{
  compactImageSymbolConfiguration = self->_compactImageSymbolConfiguration;
  if (!compactImageSymbolConfiguration)
  {
    if (*self->_stateFlags)
    {
      v6 = [(_UIBarButtonItemData *)self titleTextAttributesForState:0];
      v4 = [v6 objectForKeyedSubscript:*off_1E70EC918];

      [UIImageSymbolConfiguration configurationWithFont:v4 scale:2];
    }

    else
    {
      v4 = [(_UIBarButtonItemData *)self textStyleForSymbolConfiguration];
      [UIImageSymbolConfiguration configurationWithTextStyle:v4 scale:2];
    }
    v5 = ;
    v7 = self->_compactImageSymbolConfiguration;
    self->_compactImageSymbolConfiguration = v5;

    compactImageSymbolConfiguration = self->_compactImageSymbolConfiguration;
  }

  return compactImageSymbolConfiguration;
}

- (void)setBackIndicatorImage:(id)a3 transitionMaskImage:(id)a4
{
  v9 = a3;
  v8 = a4;
  if (*&self->_dataFlags)
  {
    [(_UIBarAppearanceData *)self assertMutable:a2];
    objc_storeStrong(&self->_backIndicatorImage, a3);
    objc_storeStrong(&self->_backIndicatorTransitionMaskImage, a4);
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

- (id)__backIndicatorConfigurationForConfig:(uint64_t)a3 withScale:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = v5;
      goto LABEL_13;
    }

    if (a1[264])
    {
      v10 = [a1 titleTextAttributesForState:0];
      v11 = [v10 objectForKeyedSubscript:*off_1E70EC918];

      v12 = _UISolariumEnabled();
      v13 = [v11 fontDescriptor];
      v14 = v13;
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
        v18 = [v13 fontDescriptorWithSymbolicTraits:2];
      }

      v19 = [off_1E70ECC18 fontWithDescriptor:v18 size:0.0];
      v7 = [UIImageSymbolConfiguration configurationWithFont:v19 scale:a3];
    }

    else
    {
      if (_UISolariumEnabled())
      {
        v8 = [a1 backIndicatorTextStyleForSymbolConfiguration];
        v9 = [off_1E70ECC18 _preferredFontForTextStyle:v8 weight:*off_1E70ECD30];

        v7 = [UIImageSymbolConfiguration configurationWithFont:v9 scale:a3];

        goto LABEL_13;
      }

      v11 = [a1 backIndicatorTextStyleForSymbolConfiguration];
      v7 = [UIImageSymbolConfiguration configurationWithTextStyle:v11 scale:a3];
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

- (id)fontForState:(int64_t)a3 style:(int64_t)a4
{
  if (*&self->_stateFlags[2 * a3])
  {
    [(NSDictionary *)self->_titleTextAttributes[a3] objectForKeyedSubscript:*off_1E70EC918, a4];
  }

  else
  {
    [(_UIBarButtonItemData *)self _fallbackFontForState:?];
  }
  v4 = ;

  return v4;
}

- (id)colorForState:(int64_t)a3 style:(int64_t)a4
{
  if ((*&self->_stateFlags[2 * a3] & 2) != 0)
  {
    [(NSDictionary *)self->_titleTextAttributes[a3] objectForKeyedSubscript:*off_1E70EC920, a4];
  }

  else
  {
    [(_UIBarButtonItemData *)self _fallbackColorForState:?];
  }
  v4 = ;

  return v4;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4
{
  if ((*&self->_stateFlags[2 * a3] & 4) != 0)
  {
    v6 = &self->_titlePositionAdjustment[a3];
    horizontal = v6->horizontal;
    vertical = v6->vertical;
  }

  else
  {
    [(_UIBarButtonItemDataFallback *)self->_fallback titlePositionAdjustmentForState:a3 style:a3];
  }

  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (id)backgroundImageForState:(int64_t)a3 style:(int64_t)a4
{
  if ((*&self->_stateFlags[2 * a3] & 8) != 0)
  {
    v4 = self->_backgroundImage[a3];
  }

  else
  {
    v4 = [_UIBarButtonItemDataFallback backgroundImageForState:"backgroundImageForState:style:" style:?];
  }

  return v4;
}

- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4
{
  if ((*&self->_stateFlags[2 * a3] & 0x10) != 0)
  {
    v6 = &self->_backgroundImagePositionAdjustment[a3];
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