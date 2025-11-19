@interface _UIButtonConfiguration
+ (_UIButtonConfiguration)configurationWithStyle:(int64_t)a3;
- (BOOL)_hasMultilineSubtitle;
- (BOOL)_hasMultilineTitle;
- (BOOL)_hasObscuringBackground;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)backgroundToContentInsets;
- (NSDirectionalEdgeInsets)contentInsets;
- (NSString)description;
- (_UIButtonConfiguration)initWithCoder:(id)a3;
- (double)_resolvedActivityIndicatorSize;
- (id)_baseAttributesTransformerForTransformer:(void *)a1;
- (id)_resolvedImageColor;
- (id)_resolvedSubtitle;
- (id)_resolvedTitle;
- (id)_titleFontForRole;
- (id)_updateFromButton:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)updatedConfigurationForState:(id)a3;
- (void)_defaultTitleColor;
- (void)_setImageTintColorTransformerIdentifier:(int64_t)a3;
- (void)_updateMetadataFromButton:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setImageEdge:(unint64_t)a3;
- (void)setImageTintColorTransformer:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation _UIButtonConfiguration

- (NSDirectionalEdgeInsets)contentInsets
{
  [(_UIButtonConfiguration *)self backgroundToContentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_UIButtonConfiguration *)self _traitCollection];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 preferredContentSizeCategory];
    v14 = _UIContentSizeCategoryFromStringInternal(v13, &v20);

    if (v14 >= 0x10000)
    {
      v15 = (v14 - 0xFFFF) + (v14 - 0xFFFF);
      v6 = v6 + v15;
      v10 = v10 + v15;
    }
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.trailing = v19;
  result.bottom = v18;
  result.leading = v17;
  result.top = v16;
  return result;
}

- (id)_updateFromButton:(id)a3
{
  v4 = a3;
  v5 = [v4 _configurationState];
  v6 = [(_UIButtonConfiguration *)self updatedConfigurationForState:v5];

  [v6 _updateMetadataFromButton:v4];

  return v6;
}

- (BOOL)_hasMultilineTitle
{
  v2 = [(_UIButtonConfiguration *)self attributedTitle];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)_hasMultilineSubtitle
{
  v2 = [(_UIButtonConfiguration *)self attributedSubtitle];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)_hasObscuringBackground
{
  v2 = self;
  v3 = [(_UIButtonConfiguration *)self background];
  [(_UIButtonConfiguration *)v2 _resolvedIdiom];
  LOBYTE(v2) = _UIBackgroundConfigurationIsObscuring(v3);

  return v2;
}

+ (_UIButtonConfiguration)configurationWithStyle:(int64_t)a3
{
  v4 = [_UIButtonConfiguration alloc];
  if (v4)
  {
    v18.receiver = v4;
    v18.super_class = _UIButtonConfiguration;
    v5 = objc_msgSendSuper2(&v18, sel_init);
    v6 = v5;
    if (v5)
    {
      v5[9].i64[0] = a3;
      v5[5].i64[0] = 2;
      v7 = +[UIBackgroundConfiguration clearConfiguration];
      v8 = v6[2].i64[1];
      v6[2].i64[1] = v7;

      v9 = v6[9].i64[0];
      switch(v9)
      {
        case 3:
          [v6[2].i64[1] setBackgroundColor:0];
          v12 = +[UIColor whiteColor];
          v13 = v6[3].i64[1];
          v6[3].i64[1] = v12;

          break;
        case 2:
          [v6[2].i64[1] setBackgroundColor:0];
          break;
        case 1:
          v10 = +[UIColor clearColor];
          [v6[2].i64[1] setStrokeColor:v10];

          [v6[2].i64[1] setStrokeWidth:1.0];
          v11 = +[UIColor secondarySystemFillColor];
          [v6[2].i64[1] setBackgroundColor:v11];

          break;
      }

      [MEMORY[0x1E6979398] cornerCurveExpansionFactor:*MEMORY[0x1E69796E8]];
      [v6[2].i64[1] setCornerRadius:22.0 / v14];
      v15 = +[UIColor clearColor];
      [v6[2].i64[1] setStrokeColor:v15];

      [v6[2].i64[1] setStrokeWidth:1.0];
      v6[8].i64[0] = 0x4020000000000000;
      v16 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v6[10] = v16;
      v6[11] = v16;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)updatedConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(_UIButtonConfiguration *)self copy];
  v6 = [(UIBackgroundConfiguration *)self->_background updatedConfigurationForState:v4];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(_UIButtonConfiguration *)self style];
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v24 = [v4 traitCollection];
      v25 = [v24 userInterfaceStyle];

      if (v25 == 2)
      {
        v11 = 22;
      }

      else
      {
        v11 = 21;
      }

      if ([v4 isHighlighted])
      {
        v26 = [v4 traitCollection];
        v27 = [v26 userInterfaceStyle];

        if (v27 == 2)
        {
          v9 = 16;
        }

        else
        {
          v9 = 14;
        }

        v28 = _UIConfigurationColorTransformerForIdentifier(v9);
        v10 = [(_UIButtonConfiguration *)self _baseAttributesTransformerForTransformer:v28];

        v29 = [v4 traitCollection];
        v30 = [v29 userInterfaceStyle];

        if (v30 == 2)
        {
          v11 = 24;
        }

        else
        {
          v11 = 25;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      goto LABEL_40;
    }

    v10 = 0;
    v11 = 0;
    if (v8 == 3)
    {
      if ([v4 isHighlighted])
      {
        v17 = [v4 traitCollection];
        [v17 userInterfaceStyle];

        v18 = &__block_literal_global_8_6;
        v10 = [(_UIButtonConfiguration *)self _baseAttributesTransformerForTransformer:?];

        v19 = [v4 traitCollection];
        v20 = [v19 userInterfaceStyle];

        v9 = 14;
        v11 = v20 == 2 ? 17 : 14;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
      }

      if ([v4 isDisabled])
      {
LABEL_41:
        v11 = 23;
LABEL_42:
        v31 = [v4 traitCollection];
        [v31 userInterfaceStyle];

        v32 = &__block_literal_global_45;
        v33 = [(_UIButtonConfiguration *)self _baseAttributesTransformerForTransformer:?];

        v9 = 26;
        v10 = v33;
      }
    }
  }

  else
  {
    if (v8)
    {
      v10 = 0;
      v11 = 0;
      if (v8 != 1)
      {
        goto LABEL_43;
      }

      if ([v4 isHighlighted])
      {
        v12 = [v4 traitCollection];
        v13 = [v12 userInterfaceStyle];

        if (v13 == 2)
        {
          v9 = 16;
        }

        else
        {
          v9 = 14;
        }

        v14 = _UIConfigurationColorTransformerForIdentifier(v9);
        v10 = [(_UIButtonConfiguration *)self _baseAttributesTransformerForTransformer:v14];

        v15 = [v4 traitCollection];
        v16 = [v15 userInterfaceStyle];

        if (v16 == 2)
        {
          v11 = 15;
        }

        else
        {
          v11 = 14;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
      }

LABEL_40:
      if (([v4 isDisabled] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if ([v4 isHighlighted])
    {
      v21 = [v4 traitCollection];
      v22 = [v21 userInterfaceStyle];

      if (v22 == 2)
      {
        v9 = 17;
      }

      else
      {
        v9 = 14;
      }

      v23 = _UIConfigurationColorTransformerForIdentifier(v9);
      v10 = [(_UIButtonConfiguration *)self _baseAttributesTransformerForTransformer:v23];
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = 0;
    if ([v4 isDisabled])
    {
      goto LABEL_42;
    }
  }

LABEL_43:
  if (!self->_hasCustomizedImageTintColorTransformer)
  {
    [v5 _setImageTintColorTransformerIdentifier:v9];
  }

  v34 = _Block_copy(v10);
  v35 = v5[1];
  v5[1] = v34;

  v36 = [v5 background];
  v37 = v36;
  if (v36 && (*(v36 + 8) & 0x20) == 0)
  {
    [(UIBackgroundConfiguration *)v36 _setBackgroundColorTransformerIdentifier:v11];
  }

  return v5;
}

- (id)_baseAttributesTransformerForTransformer:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67___UIButtonConfiguration__baseAttributesTransformerForTransformer___block_invoke;
    aBlock[3] = &unk_1E711B0B8;
    v7 = v3;
    a1 = _Block_copy(aBlock);
  }

  return a1;
}

- (_UIButtonConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _UIButtonConfiguration;
  v5 = [(_UIButtonConfiguration *)&v22 init];
  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"UIButtonConfigurationButtonStyle"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationAttributedTitle"];
    attributedTitle = v5->_attributedTitle;
    v5->_attributedTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationAttributedSubtitle"];
    attributedSubtitle = v5->_attributedSubtitle;
    v5->_attributedSubtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationImage"];
    image = v5->_image;
    v5->_image = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationImageTintColor"];
    imageTintColor = v5->_imageTintColor;
    v5->_imageTintColor = v12;

    v5->_showsBusyIndicator = [v4 decodeBoolForKey:@"UIButtonConfigurationShowsBusyIndicator"];
    [v4 decodeFloatForKey:@"UIButtonConfigurationTitlePadding"];
    v5->_imageToTitlePadding = v14;
    v5->_imageEdge = [v4 decodeIntegerForKey:@"UIButtonConfigurationImageEdge"];
    v5->_macIdiomStyle = [v4 decodeIntegerForKey:@"UIButtonConfigurationMacIdiomStyle"];
    [v4 decodeDirectionalEdgeInsetsForKey:@"UIButtonConfigurationBackgroundToContentInsets"];
    v5->_backgroundToContentInsets.top = v15;
    v5->_backgroundToContentInsets.leading = v16;
    v5->_backgroundToContentInsets.bottom = v17;
    v5->_backgroundToContentInsets.trailing = v18;
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationBackground"];
    background = v5->_background;
    v5->_background = v19;

    -[_UIButtonConfiguration _setImageTintColorTransformerIdentifier:](v5, "_setImageTintColorTransformerIdentifier:", [v4 decodeIntegerForKey:@"UIButtonConfigurationImageColorTransformer"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v6 = a3;
  [v6 encodeInteger:style forKey:@"UIButtonStyle"];
  [v6 encodeObject:self->_attributedTitle forKey:@"UIButtonConfigurationAttributedTitle"];
  [v6 encodeObject:self->_attributedSubtitle forKey:@"UIButtonConfigurationAttributedSubtitle"];
  [v6 encodeObject:self->_image forKey:@"UIButtonConfigurationImage"];
  [v6 encodeObject:self->_imageTintColor forKey:@"UIButtonConfigurationImageTintColor"];
  [v6 encodeBool:self->_showsBusyIndicator forKey:@"UIButtonConfigurationShowsBusyIndicator"];
  imageToTitlePadding = self->_imageToTitlePadding;
  *&imageToTitlePadding = imageToTitlePadding;
  [v6 encodeFloat:@"UIButtonConfigurationTitlePadding" forKey:imageToTitlePadding];
  [v6 encodeInteger:self->_imageEdge forKey:@"UIButtonConfigurationImageEdge"];
  [v6 encodeInteger:self->_macIdiomStyle forKey:@"UIButtonConfigurationMacIdiomStyle"];
  [v6 encodeDirectionalEdgeInsets:@"UIButtonConfigurationBackgroundToContentInsets" forKey:{self->_backgroundToContentInsets.top, self->_backgroundToContentInsets.leading, self->_backgroundToContentInsets.bottom, self->_backgroundToContentInsets.trailing}];
  [v6 encodeObject:self->_background forKey:@"UIButtonConfigurationBackground"];
  [v6 encodeInteger:self->_imageTintColorTransformerIdentifier forKey:@"UIButtonConfigurationImageColorTransformer"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [self->_baseAttributesTransformer copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  *(v4 + 144) = self->_style;
  *(v4 + 152) = self->_macIdiomStyle;
  v7 = [(UIBackgroundConfiguration *)self->_background copy];
  v8 = *(v4 + 40);
  *(v4 + 40) = v7;

  objc_storeStrong((v4 + 48), self->_image);
  objc_storeStrong((v4 + 56), self->_imageTintColor);
  v9 = [self->_imageTintColorTransformer copy];
  v10 = *(v4 + 64);
  *(v4 + 64) = v9;

  *(v4 + 136) = self->_imageTintColorTransformerIdentifier;
  objc_storeStrong((v4 + 72), self->_preferredSymbolConfigurationForImage);
  *(v4 + 88) = self->_buttonSize;
  v11 = [(NSAttributedString *)self->_attributedTitle copy];
  v12 = *(v4 + 96);
  *(v4 + 96) = v11;

  v13 = [self->_titleTextAttributesTransformer copy];
  v14 = *(v4 + 104);
  *(v4 + 104) = v13;

  v15 = [(NSAttributedString *)self->_attributedSubtitle copy];
  v16 = *(v4 + 112);
  *(v4 + 112) = v15;

  v17 = [self->_subtitleTextAttributesTransformer copy];
  v18 = *(v4 + 120);
  *(v4 + 120) = v17;

  *(v4 + 33) = self->_showsBusyIndicator;
  v19 = *&self->_backgroundToContentInsets.bottom;
  *(v4 + 160) = *&self->_backgroundToContentInsets.top;
  *(v4 + 176) = v19;
  *(v4 + 128) = self->_imageToTitlePadding;
  *(v4 + 80) = self->_imageEdge;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_style == v5->_style && self->_macIdiomStyle == v5->_macIdiomStyle && self->_showsBusyIndicator == v5->_showsBusyIndicator && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_backgroundToContentInsets.top, *&v5->_backgroundToContentInsets.top), vceqq_f64(*&self->_backgroundToContentInsets.bottom, *&v5->_backgroundToContentInsets.bottom)))) & 1) != 0 && self->_imageToTitlePadding == v5->_imageToTitlePadding && self->_imageEdge == v5->_imageEdge && _deferringTokenEqualToToken(self->_image, v5->_image) && (v9 = _Block_copy(self->_imageTintColorTransformer), v10 = _Block_copy(v6->_imageTintColorTransformer), v11 = _deferringTokenEqualToToken(v9, v10), v10, v9, v11) && self->_buttonSize == v6->_buttonSize && _deferringTokenEqualToToken(self->_preferredSymbolConfigurationForImage, v6->_preferredSymbolConfigurationForImage) && _deferringTokenEqualToToken(self->_attributedTitle, v6->_attributedTitle) && (v12 = _Block_copy(self->_titleTextAttributesTransformer), v13 = _Block_copy(v6->_titleTextAttributesTransformer), v14 = _deferringTokenEqualToToken(v12, v13), v13, v12, v14) && _deferringTokenEqualToToken(self->_attributedSubtitle, v6->_attributedSubtitle) && (v15 = _Block_copy(self->_subtitleTextAttributesTransformer), v16 = _Block_copy(v6->_subtitleTextAttributesTransformer), v17 = _deferringTokenEqualToToken(v15, v16), v16, v15, v17))
      {
        v7 = _deferringTokenEqualToToken(self->_background, v6->_background);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = _UIButtonConfiguration;
  v3 = [(_UIButtonConfiguration *)&v10 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" background=%@", self->_background];
  if ([(NSAttributedString *)self->_attributedTitle length])
  {
    attributedTitle = self->_attributedTitle;
    v6 = [(NSAttributedString *)attributedTitle string];
    [v4 appendFormat:@" title=[<%p>]%@", attributedTitle, v6];
  }

  if ([(NSAttributedString *)self->_attributedSubtitle length])
  {
    attributedSubtitle = self->_attributedSubtitle;
    v8 = [(NSAttributedString *)attributedSubtitle string];
    [v4 appendFormat:@" subTitle=[<%p>]%@", attributedSubtitle, v8];
  }

  if (self->_image)
  {
    [v4 appendFormat:@" image=%@", self->_image];
  }

  return v4;
}

- (void)setImageEdge:(unint64_t)a3
{
  if (a3 > 8 || ((1 << a3) & 0x116) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIButtonConfiguration.m" lineNumber:361 description:{@"Only single edges are supported by _UIButtonConfiguration.imageEdge (%lx was specified)", a3}];
  }

  self->_imageEdge = a3;
}

- (void)setImageTintColorTransformer:(id)a3
{
  v4 = _Block_copy(a3);
  imageTintColorTransformer = self->_imageTintColorTransformer;
  self->_imageTintColorTransformer = v4;

  self->_hasCustomizedImageTintColorTransformer = 1;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    [(_UIButtonConfiguration *)self setAttributedTitle:v4];
  }

  else
  {
    [(_UIButtonConfiguration *)self setAttributedTitle:0];
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    [(_UIButtonConfiguration *)self setAttributedSubtitle:v4];
  }

  else
  {
    [(_UIButtonConfiguration *)self setAttributedSubtitle:0];
  }
}

- (NSDirectionalEdgeInsets)backgroundToContentInsets
{
  v2 = self->_buttonSize - 1;
  if (v2 > 2)
  {
    trailing = 12.0;
    bottom = 7.0;
  }

  else
  {
    bottom = dbl_18A680D30[v2];
    trailing = dbl_18A680D48[v2];
  }

  top = self->_backgroundToContentInsets.top;
  leading = self->_backgroundToContentInsets.leading;
  if (top == -1.79769313e308)
  {
    top = bottom;
  }

  if (leading == -1.79769313e308)
  {
    leading = trailing;
  }

  if (self->_backgroundToContentInsets.bottom != -1.79769313e308)
  {
    bottom = self->_backgroundToContentInsets.bottom;
  }

  if (self->_backgroundToContentInsets.trailing != -1.79769313e308)
  {
    trailing = self->_backgroundToContentInsets.trailing;
  }

  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)_setImageTintColorTransformerIdentifier:(int64_t)a3
{
  self->_imageTintColorTransformerIdentifier = a3;
  v4 = _UIConfigurationColorTransformerForIdentifier(a3);
  imageTintColorTransformer = self->_imageTintColorTransformer;
  self->_imageTintColorTransformer = v4;
}

- (void)_defaultTitleColor
{
  if (a1)
  {
    if (a1[18] == 3)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor tintColor];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

- (id)_titleFontForRole
{
  if (a1)
  {
    v1 = *(a1 + 88) - 1;
    v2 = v1 >= 2;
    if (v1 >= 2)
    {
      v3 = UIFontTextStyleEmphasizedBody;
    }

    else
    {
      v3 = UIFontTextStyleEmphasizedSubheadline;
    }

    v4 = &UIFontTextStyleSubheadline;
    if (v2)
    {
      v4 = &UIFontTextStyleBody;
    }

    if (*(a1 + 24) == 1)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = *v5;
    v7 = [off_1E70ECC18 preferredFontForTextStyle:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_resolvedTitle
{
  v9[2] = *MEMORY[0x1E69E9840];
  if ([(NSAttributedString *)self->_attributedTitle length])
  {
    v8[0] = *off_1E70EC918;
    v3 = [(_UIButtonConfiguration *)self _titleFontForRole];
    v9[0] = v3;
    v8[1] = *off_1E70EC920;
    v4 = [(_UIButtonConfiguration *)self _defaultTitleColor];
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

    v6 = _UIButtonUpdateStringAttributes_0(self->_attributedTitle, v5, self->_baseAttributesTransformer, self->_titleTextAttributesTransformer);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_resolvedSubtitle
{
  v10[2] = *MEMORY[0x1E69E9840];
  if ([(NSAttributedString *)self->_attributedSubtitle length])
  {
    v9[0] = *off_1E70EC918;
    if ((self->_buttonSize - 1) >= 2)
    {
      v3 = &UIFontTextStyleFootnote;
    }

    else
    {
      v3 = &UIFontTextStyleCaption1;
    }

    v4 = [off_1E70ECC18 preferredFontForTextStyle:*v3];
    v10[0] = v4;
    v9[1] = *off_1E70EC920;
    v5 = [(_UIButtonConfiguration *)self _defaultTitleColor];
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

    v7 = _UIButtonUpdateStringAttributes_0(self->_attributedSubtitle, v6, self->_baseAttributesTransformer, self->_subtitleTextAttributesTransformer);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_resolvedImageColor
{
  imageTintColor = self->_imageTintColor;
  if (imageTintColor)
  {
    v4 = imageTintColor;
  }

  else
  {
    v4 = +[UIColor tintColor];
  }

  v5 = v4;
  imageTintColorTransformer = self->_imageTintColorTransformer;
  if (imageTintColorTransformer)
  {
    v7 = imageTintColorTransformer[2](imageTintColorTransformer, v5);

    v5 = v7;
  }

  return v5;
}

- (double)_resolvedActivityIndicatorSize
{
  v2 = [(_UIButtonConfiguration *)self _titleFontForRole];
  [v2 lineHeight];
  v4 = v3;

  return v4;
}

- (void)_updateMetadataFromButton:(id)a3
{
  v4 = a3;
  v5 = [v4 traitCollection];
  traitCollection = self->_traitCollection;
  self->_traitCollection = v5;

  v7 = [v4 role];
  self->_role = v7;
}

@end