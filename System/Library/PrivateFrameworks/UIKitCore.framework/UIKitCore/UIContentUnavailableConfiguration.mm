@interface UIContentUnavailableConfiguration
+ (UIContentUnavailableConfiguration)emptyConfiguration;
+ (UIContentUnavailableConfiguration)loadingConfiguration;
+ (UIContentUnavailableConfiguration)searchConfiguration;
+ (id)_defaultEmptyConfigurationForState:(uint64_t)a1 traitCollection:(void *)a2;
+ (id)_defaultLoadingConfigurationForState:(uint64_t)a1 traitCollection:(void *)a2;
+ (void)_defaultSearchConfigurationForState:(void *)a3 traitCollection:;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (UIContentUnavailableAlignment)alignment;
- (UIContentUnavailableConfiguration)initWithCoder:(id)a3;
- (id)_initWithImageProperties:(void *)a3 textProperties:(void *)a4 secondaryTextProperties:(void *)a5 buttonProperties:(void *)a6 secondaryButtonProperties:(char)a7 sideBySideButtonAndSecondaryButton:(double)a8 directionalLayoutMargins:(double)a9 imageToTextPadding:(double)a10 textToSecondaryTextPadding:(double)a11 textToButtonPadding:(double)a12 buttonToSecondaryButtonPadding:(double)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)makeContentView;
- (id)updatedConfigurationForState:(id)a3;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1;
- (unint64_t)hash;
- (void)_setSwiftBridgingButtonProperties:(id)a3;
- (void)_setSwiftBridgingImageProperties:(id)a3;
- (void)_setSwiftBridgingSecondaryButtonProperties:(id)a3;
- (void)_setSwiftBridgingSecondaryTextProperties:(id)a3;
- (void)_setSwiftBridgingTextProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlignment:(UIContentUnavailableAlignment)alignment;
@end

@implementation UIContentUnavailableConfiguration

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  top = self->_directionalLayoutMargins.top;
  leading = self->_directionalLayoutMargins.leading;
  bottom = self->_directionalLayoutMargins.bottom;
  trailing = self->_directionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

+ (UIContentUnavailableConfiguration)emptyConfiguration
{
  v3 = [UIContentUnavailableConfigurationState _readonlyContentUnavailableConfigurationState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [UIContentUnavailableConfiguration _defaultEmptyConfigurationForState:a1 traitCollection:v4];

  return v5;
}

- (UIContentUnavailableAlignment)alignment
{
  textProperties = self->_textProperties;
  if (textProperties)
  {
    return textProperties->_alignment;
  }

  else
  {
    return 0;
  }
}

+ (UIContentUnavailableConfiguration)loadingConfiguration
{
  v3 = [UIContentUnavailableConfigurationState _readonlyContentUnavailableConfigurationState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [UIContentUnavailableConfiguration _defaultLoadingConfigurationForState:a1 traitCollection:v4];

  return v5;
}

+ (id)_defaultEmptyConfigurationForState:(uint64_t)a1 traitCollection:(void *)a2
{
  v2 = a2;
  objc_opt_self();
  v3 = _UIContentUnavailableConstantsForTraitCollection(v2);
  v4 = objc_alloc_init(UIContentUnavailableImageProperties);
  v6 = [v3 defaultEmptyImageSymbolConfigurationForTraitCollection:v2];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, v6, 24);
  }

  v7 = [v3 defaultEmptyImageTintColor];
  [(UIContentUnavailableImageProperties *)v4 _setTintColor:v7];

  v8 = objc_alloc_init(UIContentUnavailableTextProperties);
  v9 = [v3 defaultEmptyTextFontForTraitCollection:v2];
  [(_UIHomeAffordanceObservationRecord *)v8 setLegacyViewServiceSessionIdentifier:v9];

  v10 = [v3 defaultEmptyTextColorForTraitCollection:v2];
  [(UIContentUnavailableImageProperties *)v8 _setTintColor:v10];

  v11 = objc_alloc_init(UIContentUnavailableTextProperties);
  v12 = [v3 defaultEmptySecondaryTextFontForTraitCollection:v2];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  v13 = [v3 defaultSecondaryTextColor];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v13];

  v14 = objc_alloc_init(UIContentUnavailableButtonProperties);
  v15 = objc_alloc_init(UIContentUnavailableButtonProperties);
  v16 = [v3 prefersSideBySideButtonAndSecondaryButton];
  [v3 defaultDirectionalLayoutMarginsForTraitCollection:v2];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v3 defaultEmptyImageToTextPaddingForTraitCollection:v2];
  v26 = v25;
  [v3 defaultEmptyTextToSecondaryTextPaddingForTraitCollection:v2];
  v28 = v27;
  [v3 defaultEmptyTextToButtonPaddingForTraitCollection:v2];
  v30 = v29;
  [v3 defaultEmptyButtonToSecondaryButtonPaddingForTraitCollection:v2];
  v32 = v31;

  v33 = [[UIContentUnavailableConfiguration alloc] _initWithImageProperties:v4 textProperties:v8 secondaryTextProperties:v11 buttonProperties:v14 secondaryButtonProperties:v15 sideBySideButtonAndSecondaryButton:v16 directionalLayoutMargins:v18 imageToTextPadding:v20 textToSecondaryTextPadding:v22 textToButtonPadding:v24 buttonToSecondaryButtonPadding:v26, v28, v30, v32];
  v34 = v33;
  if (v33)
  {
    v33[7] = 0;
  }

  return v34;
}

+ (id)_defaultLoadingConfigurationForState:(uint64_t)a1 traitCollection:(void *)a2
{
  v2 = a2;
  objc_opt_self();
  v3 = _UIContentUnavailableConstantsForTraitCollection(v2);
  v4 = objc_alloc_init(UIContentUnavailableImageProperties);
  v6 = [v3 defaultLoadingImageSymbolConfigurationForTraitCollection:v2];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, v6, 24);
  }

  v7 = [v3 defaultLoadingImageTintColor];
  [(UIContentUnavailableImageProperties *)v4 _setTintColor:v7];

  v8 = objc_alloc_init(UIContentUnavailableTextProperties);
  v9 = [v3 defaultLoadingTextFontForTraitCollection:v2];
  [(_UIHomeAffordanceObservationRecord *)v8 setLegacyViewServiceSessionIdentifier:v9];

  v10 = [v3 defaultLoadingTextColor];
  [(UIContentUnavailableImageProperties *)v8 _setTintColor:v10];

  v11 = objc_alloc_init(UIContentUnavailableTextProperties);
  v12 = [v3 defaultEmptySecondaryTextFontForTraitCollection:v2];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  v13 = [v3 defaultSecondaryTextColor];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v13];

  v14 = objc_alloc_init(UIContentUnavailableButtonProperties);
  v15 = objc_alloc_init(UIContentUnavailableButtonProperties);
  v16 = [v3 prefersSideBySideButtonAndSecondaryButton];
  [v3 defaultDirectionalLayoutMarginsForTraitCollection:v2];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v3 defaultLoadingImageToTextPaddingForTraitCollection:v2];
  v26 = v25;
  [v3 defaultEmptyTextToSecondaryTextPaddingForTraitCollection:v2];
  v28 = v27;
  [v3 defaultEmptyTextToButtonPaddingForTraitCollection:v2];
  v30 = v29;
  [v3 defaultEmptyButtonToSecondaryButtonPaddingForTraitCollection:v2];
  v32 = [[UIContentUnavailableConfiguration alloc] _initWithImageProperties:v4 textProperties:v8 secondaryTextProperties:v11 buttonProperties:v14 secondaryButtonProperties:v15 sideBySideButtonAndSecondaryButton:v16 directionalLayoutMargins:v18 imageToTextPadding:v20 textToSecondaryTextPadding:v22 textToButtonPadding:v24 buttonToSecondaryButtonPadding:v26, v28, v30, v31];
  if (![v2 userInterfaceIdiom] || objc_msgSend(v2, "userInterfaceIdiom") == 1)
  {
    v33 = _UILocalizedString(@"CONTENT_UNAVAILABLE_LOADING_TEXT", @"Default text to display whilst loading content", @"Loading...");
    v34 = [v32 textProperties];
    v36 = v34;
    if (v34)
    {
      objc_setProperty_nonatomic_copy(v34, v35, v33, 16);
    }
  }

  if (v32)
  {
    v32[7] = 1;
  }

  return v32;
}

+ (UIContentUnavailableConfiguration)searchConfiguration
{
  v3 = [UIContentUnavailableConfigurationState _readonlyContentUnavailableConfigurationState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIContentUnavailableConfiguration *)a1 _defaultSearchConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (void)_defaultSearchConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [UIContentUnavailableConfiguration _defaultEmptyConfigurationForState:v6 traitCollection:v5];

  v8 = [UIImage systemImageNamed:@"magnifyingglass"];
  v9 = [v7 imageProperties];
  [(UIBackgroundConfiguration *)v9 _setCustomView:v8];

  v10 = [v4 searchText];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [v4 searchText];
    v18 = _UILocalizedFormat(@"CONTENT_UNAVAILABLE_SEARCH_TEXT_WITH_QUERY", @"Default text to display when a search with a query returns no results", @"No Results for “%@”", v13, v14, v15, v16, v17, v12);
    v19 = [v7 textProperties];
    v21 = v19;
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v20, v18, 16);
    }
  }

  else
  {
    v12 = _UILocalizedString(@"CONTENT_UNAVAILABLE_SEARCH_TEXT", @"Default text to display when a search returns no results", @"No Results");
    v22 = [v7 textProperties];
    v18 = v22;
    if (v22)
    {
      objc_setProperty_nonatomic_copy(v22, v23, v12, 16);
    }
  }

  v24 = _UILocalizedString(@"CONTENT_UNAVAILABLE_SEARCH_SECONDARY_TEXT", @"Default secondary text to display when a search returns no results", @"Check the spelling or try a new search.");
  v25 = [v7 secondaryTextProperties];
  v27 = v25;
  if (v25)
  {
    objc_setProperty_nonatomic_copy(v25, v26, v24, 16);
  }

  if (v7)
  {
    v7[7] = 2;
  }

  return v7;
}

- (id)_initWithImageProperties:(void *)a3 textProperties:(void *)a4 secondaryTextProperties:(void *)a5 buttonProperties:(void *)a6 secondaryButtonProperties:(char)a7 sideBySideButtonAndSecondaryButton:(double)a8 directionalLayoutMargins:(double)a9 imageToTextPadding:(double)a10 textToSecondaryTextPadding:(double)a11 textToButtonPadding:(double)a12 buttonToSecondaryButtonPadding:(double)a13
{
  v38 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  if (a1)
  {
    v39.receiver = a1;
    v39.super_class = UIContentUnavailableConfiguration;
    v33 = objc_msgSendSuper2(&v39, sel_init);
    a1 = v33;
    if (v33)
    {
      objc_storeStrong(v33 + 8, a2);
      objc_storeStrong(a1 + 9, a3);
      objc_storeStrong(a1 + 10, a4);
      objc_storeStrong(a1 + 11, a5);
      objc_storeStrong(a1 + 12, a6);
      *(a1 + 12) = a7;
      a1[2] = 1;
      *(a1 + 14) = a8;
      *(a1 + 15) = a9;
      *(a1 + 16) = a10;
      *(a1 + 17) = a11;
      *(a1 + 3) = a12;
      *(a1 + 4) = a13;
      *(a1 + 5) = a14;
      *(a1 + 6) = a15;
      v34 = +[UIBackgroundConfiguration clearConfiguration];
      v35 = a1[13];
      a1[13] = v34;
    }
  }

  return a1;
}

- (id)updatedConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(UIContentUnavailableConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  v7 = v4;
  v8 = objc_opt_self();
  v9 = [UIContentUnavailableConfigurationState _readonlyContentUnavailableConfigurationState:v7];
  switch(defaultStyle)
  {
    case 2:
      v10 = [v7 traitCollection];
      v11 = [(UIContentUnavailableConfiguration *)v8 _defaultSearchConfigurationForState:v9 traitCollection:v10];
      goto LABEL_7;
    case 1:
      v10 = [v7 traitCollection];
      v11 = [UIContentUnavailableConfiguration _defaultLoadingConfigurationForState:v8 traitCollection:v10];
      goto LABEL_7;
    case 0:
      v10 = [v7 traitCollection];
      v11 = [UIContentUnavailableConfiguration _defaultEmptyConfigurationForState:v8 traitCollection:v10];
LABEL_7:
      v12 = v11;
      goto LABEL_9;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:sel__defaultConfigurationForStyle_state_ object:v8 file:@"UIContentUnavailableConfiguration.m" lineNumber:226 description:{@"Unknown style: %ld", defaultStyle}];
  v12 = 0;
LABEL_9:

  v13 = [v5 imageProperties];
  v14 = [v12 imageProperties];
  [(UIContentUnavailableImageProperties *)v13 _applyPropertiesFromDefaultProperties:v14];

  v15 = [v5 textProperties];
  v16 = [v12 textProperties];
  [(UIContentUnavailableTextProperties *)v15 _applyPropertiesFromDefaultProperties:v16];

  v17 = [v5 secondaryTextProperties];
  v18 = [v12 secondaryTextProperties];
  [(UIContentUnavailableTextProperties *)v17 _applyPropertiesFromDefaultProperties:v18];

  v19 = [v5 buttonProperties];
  v20 = [v12 buttonProperties];
  [(UIContentUnavailableButtonProperties *)v19 _applyPropertiesFromDefaultProperties:v20];

  v21 = [v5 secondaryButtonProperties];
  v22 = [v12 secondaryButtonProperties];
  [(UIContentUnavailableButtonProperties *)v21 _applyPropertiesFromDefaultProperties:v22];

  configurationFlags = self->_configurationFlags;
  if (configurationFlags)
  {
    goto LABEL_13;
  }

  if (v12)
  {
    v24 = *(v12 + 12);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = 0;
  if (v5)
  {
LABEL_12:
    *(v5 + 12) = v24 & 1;
    configurationFlags = self->_configurationFlags;
  }

LABEL_13:
  if ((configurationFlags & 2) != 0)
  {
    goto LABEL_17;
  }

  if (v12)
  {
    v25 = *(v12 + 16);
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v25 = 0;
  if (v5)
  {
LABEL_16:
    *(v5 + 16) = v25;
    configurationFlags = self->_configurationFlags;
  }

LABEL_17:
  if ((configurationFlags & 4) != 0)
  {
    goto LABEL_21;
  }

  if (v12)
  {
    v26 = *(v12 + 112);
    v27 = *(v12 + 128);
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v26 = 0uLL;
  v27 = 0uLL;
  if (v5)
  {
LABEL_20:
    *(v5 + 112) = v26;
    *(v5 + 128) = v27;
    configurationFlags = self->_configurationFlags;
  }

LABEL_21:
  if ((configurationFlags & 8) != 0)
  {
    goto LABEL_25;
  }

  if (v12)
  {
    v28 = *(v12 + 24);
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v28 = 0;
  if (v5)
  {
LABEL_24:
    *(v5 + 24) = v28;
    configurationFlags = self->_configurationFlags;
  }

LABEL_25:
  if ((configurationFlags & 0x10) != 0)
  {
    goto LABEL_29;
  }

  if (v12)
  {
    v29 = *(v12 + 32);
    if (!v5)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v29 = 0;
  if (v5)
  {
LABEL_28:
    *(v5 + 32) = v29;
    configurationFlags = self->_configurationFlags;
  }

LABEL_29:
  if ((configurationFlags & 0x20) != 0)
  {
    goto LABEL_33;
  }

  if (v12)
  {
    v30 = *(v12 + 40);
    if (!v5)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v30 = 0;
  if (v5)
  {
LABEL_32:
    *(v5 + 40) = v30;
    configurationFlags = self->_configurationFlags;
  }

LABEL_33:
  if ((configurationFlags & 0x40) != 0)
  {
    goto LABEL_37;
  }

  if (v12)
  {
    v31 = *(v12 + 48);
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v31 = 0;
  if (v5)
  {
LABEL_36:
    *(v5 + 48) = v31;
  }

LABEL_37:

  return v5;
}

- (id)makeContentView
{
  v2 = [[UIContentUnavailableView alloc] initWithConfiguration:self];

  return v2;
}

- (UIContentUnavailableConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = UIContentUnavailableConfiguration;
  v5 = [(UIContentUnavailableConfiguration *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageProperties"];
    imageProperties = v5->_imageProperties;
    v5->_imageProperties = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textProperties"];
    textProperties = v5->_textProperties;
    v5->_textProperties = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextProperties"];
    secondaryTextProperties = v5->_secondaryTextProperties;
    v5->_secondaryTextProperties = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonProperties"];
    buttonProperties = v5->_buttonProperties;
    v5->_buttonProperties = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryButtonProperties"];
    secondaryButtonProperties = v5->_secondaryButtonProperties;
    v5->_secondaryButtonProperties = v14;

    [v4 decodeDoubleForKey:@"prefersSideBySideButtonAndSecondaryButton"];
    v5->_prefersSideBySideButtonAndSecondaryButton = v16 != 0.0;
    v5->_axesPreservingSuperviewLayoutMargins = [v4 decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [v4 decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v17;
    v5->_directionalLayoutMargins.leading = v18;
    v5->_directionalLayoutMargins.bottom = v19;
    v5->_directionalLayoutMargins.trailing = v20;
    [v4 decodeDoubleForKey:@"imageToTextPadding"];
    v5->_imageToTextPadding = v21;
    [v4 decodeDoubleForKey:@"textToSecondaryTextPadding"];
    v5->_textToSecondaryTextPadding = v22;
    [v4 decodeDoubleForKey:@"textToButtonPadding"];
    v5->_textToButtonPadding = v23;
    [v4 decodeDoubleForKey:@"buttonToSecondaryButtonPadding"];
    v5->_buttonToSecondaryButtonPadding = v24;
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    background = v5->_background;
    v5->_background = v25;

    v5->_defaultStyle = [v4 decodeIntegerForKey:@"defaultStyle"];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"prefersSideBySideButtonAndSecondaryButton"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [v4 decodeBoolForKey:v27];

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    if ([v4 decodeBoolForKey:v28])
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v29;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([v4 decodeBoolForKey:v30])
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFB | v31;

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
    if ([v4 decodeBoolForKey:v32])
    {
      v33 = 8;
    }

    else
    {
      v33 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xF7 | v33;

    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextPadding"];
    if ([v4 decodeBoolForKey:v34])
    {
      v35 = 16;
    }

    else
    {
      v35 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xEF | v35;

    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToButtonPadding"];
    if ([v4 decodeBoolForKey:v36])
    {
      v37 = 32;
    }

    else
    {
      v37 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xDF | v37;

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"buttonToSecondaryButtonPadding"];
    if ([v4 decodeBoolForKey:v38])
    {
      v39 = 64;
    }

    else
    {
      v39 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xBF | v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  imageProperties = self->_imageProperties;
  v5 = a3;
  [v5 encodeObject:imageProperties forKey:@"imageProperties"];
  [v5 encodeObject:self->_textProperties forKey:@"textProperties"];
  [v5 encodeObject:self->_secondaryTextProperties forKey:@"secondaryTextProperties"];
  [v5 encodeObject:self->_buttonProperties forKey:@"buttonProperties"];
  [v5 encodeObject:self->_secondaryButtonProperties forKey:@"secondaryButtonProperties"];
  LOBYTE(v6) = self->_prefersSideBySideButtonAndSecondaryButton;
  [v5 encodeDouble:@"prefersSideBySideButtonAndSecondaryButton" forKey:v6];
  [v5 encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [v5 encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [v5 encodeDouble:@"imageToTextPadding" forKey:self->_imageToTextPadding];
  [v5 encodeDouble:@"textToSecondaryTextPadding" forKey:self->_textToSecondaryTextPadding];
  [v5 encodeDouble:@"textToButtonPadding" forKey:self->_textToButtonPadding];
  [v5 encodeDouble:@"buttonToSecondaryButtonPadding" forKey:self->_buttonToSecondaryButtonPadding];
  [v5 encodeObject:self->_background forKey:@"background"];
  [v5 encodeInteger:self->_defaultStyle forKey:@"defaultStyle"];
  configurationFlags = self->_configurationFlags;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"prefersSideBySideButtonAndSecondaryButton"];
  [v5 encodeBool:configurationFlags & 1 forKey:v8];

  v9 = (*&self->_configurationFlags >> 1) & 1;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
  [v5 encodeBool:v9 forKey:v10];

  v11 = (*&self->_configurationFlags >> 2) & 1;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
  [v5 encodeBool:v11 forKey:v12];

  v13 = (*&self->_configurationFlags >> 3) & 1;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
  [v5 encodeBool:v13 forKey:v14];

  v15 = (*&self->_configurationFlags >> 4) & 1;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextPadding"];
  [v5 encodeBool:v15 forKey:v16];

  v17 = (*&self->_configurationFlags >> 5) & 1;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToButtonPadding"];
  [v5 encodeBool:v17 forKey:v18];

  v19 = (*&self->_configurationFlags >> 6) & 1;
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"buttonToSecondaryButtonPadding"];
  [v5 encodeBool:v19 forKey:v20];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(UIContentUnavailableImageProperties *)self->_imageProperties copy];
    v6 = *(v4 + 64);
    *(v4 + 64) = v5;

    v7 = [(UIContentUnavailableTextProperties *)self->_textProperties copy];
    v8 = *(v4 + 72);
    *(v4 + 72) = v7;

    v9 = [(UIContentUnavailableTextProperties *)self->_secondaryTextProperties copy];
    v10 = *(v4 + 80);
    *(v4 + 80) = v9;

    v11 = [(UIContentUnavailableButtonProperties *)self->_buttonProperties copy];
    v12 = *(v4 + 88);
    *(v4 + 88) = v11;

    v13 = [(UIContentUnavailableButtonProperties *)self->_secondaryButtonProperties copy];
    v14 = *(v4 + 96);
    *(v4 + 96) = v13;

    *(v4 + 12) = self->_prefersSideBySideButtonAndSecondaryButton;
    *(v4 + 16) = self->_axesPreservingSuperviewLayoutMargins;
    v15 = *&self->_directionalLayoutMargins.bottom;
    *(v4 + 112) = *&self->_directionalLayoutMargins.top;
    *(v4 + 128) = v15;
    *(v4 + 24) = self->_imageToTextPadding;
    *(v4 + 32) = self->_textToSecondaryTextPadding;
    *(v4 + 40) = self->_textToButtonPadding;
    *(v4 + 48) = self->_buttonToSecondaryButtonPadding;
    v16 = [(UIBackgroundConfiguration *)self->_background copy];
    v17 = *(v4 + 104);
    *(v4 + 104) = v16;

    *(v4 + 56) = self->_defaultStyle;
    *(v4 + 8) = self->_configurationFlags;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    if (self)
    {
      if (self->_defaultStyle == v6->_defaultStyle && [(UIContentUnavailableImageProperties *)self->_imageProperties _isEqualToProperties:1 compareImage:?]&& [(UIContentUnavailableTextProperties *)self->_textProperties _isEqualToProperties:1 compareText:?]&& [(UIContentUnavailableTextProperties *)self->_secondaryTextProperties _isEqualToProperties:1 compareText:?]&& [(UIContentUnavailableButtonProperties *)self->_buttonProperties _isEqualToProperties:?]&& [(UIContentUnavailableButtonProperties *)self->_secondaryButtonProperties _isEqualToProperties:?]&& self->_prefersSideBySideButtonAndSecondaryButton == v7->_prefersSideBySideButtonAndSecondaryButton && self->_axesPreservingSuperviewLayoutMargins == v7->_axesPreservingSuperviewLayoutMargins && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_directionalLayoutMargins.top, *&v7->_directionalLayoutMargins.top), vceqq_f64(*&self->_directionalLayoutMargins.bottom, *&v7->_directionalLayoutMargins.bottom)))) & 1) != 0 && self->_imageToTextPadding == v7->_imageToTextPadding && self->_textToSecondaryTextPadding == v7->_textToSecondaryTextPadding && self->_textToButtonPadding == v7->_textToButtonPadding && self->_buttonToSecondaryButtonPadding == v7->_buttonToSecondaryButtonPadding)
      {
        LOBYTE(self) = [(UIBackgroundConfiguration *)self->_background _isEqualToConfiguration:?];
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 == a1)
    {
      a1 = 1;
    }

    else if (*(a1 + 56) == v3[7] && [(UIContentUnavailableImageProperties *)*(a1 + 64) _isEqualToPropertiesQuick:1 compareImage:?]&& [(UIContentUnavailableTextProperties *)*(a1 + 72) _isEqualToPropertiesQuick:1 compareText:?]&& [(UIContentUnavailableTextProperties *)*(a1 + 80) _isEqualToPropertiesQuick:1 compareText:?]&& [(UIContentUnavailableButtonProperties *)*(a1 + 88) _isEqualToPropertiesQuick:?]&& [(UIContentUnavailableButtonProperties *)*(a1 + 96) _isEqualToPropertiesQuick:?]&& *(a1 + 12) == *(v4 + 12) && *(a1 + 16) == v4[2] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 112), *(v4 + 7)), vceqq_f64(*(a1 + 128), *(v4 + 8))))) & 1) != 0 && *(a1 + 24) == *(v4 + 3) && *(a1 + 32) == *(v4 + 4) && *(a1 + 40) == *(v4 + 5) && *(a1 + 48) == *(v4 + 6))
    {
      a1 = [(UIBackgroundConfiguration *)*(a1 + 104) _isEqualToConfigurationQuick:?];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (unint64_t)hash
{
  v3 = [(UIContentUnavailableImageProperties *)self->_imageProperties hash];
  v4 = [(UIContentUnavailableTextProperties *)self->_textProperties hash]^ v3;
  return v4 ^ [(UIContentUnavailableTextProperties *)self->_secondaryTextProperties hash];
}

- (NSString)description
{
  if (self)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    imageProperties = self->_imageProperties;
    if (imageProperties && imageProperties->data)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [(UIContentUnavailableImageProperties *)imageProperties _shortDescription];
      v7 = [v5 stringWithFormat:@"image = %@", v6];
      [v3 addObject:v7];
    }

    textProperties = self->_textProperties;
    if (textProperties && (textProperties->data || textProperties[1].data))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [(UIContentUnavailableTextProperties *)textProperties _shortDescription];
      v11 = [v9 stringWithFormat:@"text = %@", v10];
      [v3 addObject:v11];
    }

    secondaryTextProperties = self->_secondaryTextProperties;
    if (secondaryTextProperties && (secondaryTextProperties->data || secondaryTextProperties[1].data))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [(UIContentUnavailableTextProperties *)secondaryTextProperties _shortDescription];
      v15 = [v13 stringWithFormat:@"secondaryText = %@", v14];
      [v3 addObject:v15];
    }

    buttonProperties = self->_buttonProperties;
    if (buttonProperties)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [(UIContentUnavailableButtonProperties *)buttonProperties _shortDescription];
      v19 = [v17 stringWithFormat:@"buttonProperties = %@", v18];
      [v3 addObject:v19];
    }

    secondaryButtonProperties = self->_secondaryButtonProperties;
    if (secondaryButtonProperties)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [(UIContentUnavailableButtonProperties *)secondaryButtonProperties _shortDescription];
      v23 = [v21 stringWithFormat:@"secondaryButtonProperties = %@", v22];
      [v3 addObject:v23];
    }

    v24 = MEMORY[0x1E696AEC0];
    defaultStyle = self->_defaultStyle;
    if (defaultStyle >= 3)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UIContentUnavailableConfigurationStyleToString(_UIContentUnavailableConfigurationStyle)"];
      [v27 handleFailureInFunction:v28 file:@"UIContentUnavailableConfiguration.m" lineNumber:35 description:{@"Unknown style: %ld", defaultStyle}];

      v26 = 0;
    }

    else
    {
      v26 = off_1E711BEA0[defaultStyle];
    }

    v29 = [v24 stringWithFormat:@"Base Style = %@", v26];
    [v3 addObject:v29];

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefersSideBySideButtonAndSecondaryButton = %d", self->_prefersSideBySideButtonAndSecondaryButton];
    [v3 addObject:v30];

    axesPreservingSuperviewLayoutMargins = self->_axesPreservingSuperviewLayoutMargins;
    if (axesPreservingSuperviewLayoutMargins)
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = _UIContentViewStringForAxis(axesPreservingSuperviewLayoutMargins);
      v34 = [v32 stringWithFormat:@"axesPreservingSuperviewLayoutMargins = %@", v33];
      [v3 addObject:v34];
    }

    v35 = *&self->_directionalLayoutMargins.top;
    v36 = *&self->_directionalLayoutMargins.bottom;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v35), vceqzq_f64(v36))))))
    {
      leading = self->_directionalLayoutMargins.leading;
      v38 = MEMORY[0x1E696AEC0];
      trailing = self->_directionalLayoutMargins.trailing;
      v40 = NSStringFromDirectionalEdgeInsets(*v35.f64);
      v41 = [v38 stringWithFormat:@"directionalLayoutMargins = %@", v40];
      [v3 addObject:v41];
    }

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageToTextPadding = %g", *&self->_imageToTextPadding];
    [v3 addObject:v42];

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textToSecondaryTextPadding = %g", *&self->_textToSecondaryTextPadding];
    [v3 addObject:v43];

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textToButtonPadding = %g", *&self->_textToButtonPadding];
    [v3 addObject:v44];

    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"buttonToSecondaryButtonPadding = %g", *&self->_buttonToSecondaryButtonPadding];
    [v3 addObject:v45];

    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"background = %@", self->_background];
    [v3 addObject:v46];

    if (![v3 count])
    {
      [v3 addObject:@"(empty)"];
    }
  }

  else
  {
    v3 = 0;
  }

  v47 = MEMORY[0x1E696AEC0];
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  v50 = [v3 componentsJoinedByString:@" "];;
  v51 = [v47 stringWithFormat:@"<%@: %p %@>", v49, self, v50];;

  return v51;
}

- (void)_setSwiftBridgingImageProperties:(id)a3
{
  v4 = a3;
  imageProperties = self->_imageProperties;
  if (imageProperties)
  {
    imageProperties = imageProperties->_image;
  }

  v6 = imageProperties;
  [(UIBackgroundConfiguration *)v4 _setCustomView:v6];

  v7 = self->_imageProperties;
  self->_imageProperties = v4;
}

- (void)_setSwiftBridgingTextProperties:(id)a3
{
  v4 = a3;
  textProperties = self->_textProperties;
  if (textProperties)
  {
    textProperties = textProperties->_text;
  }

  v7 = textProperties;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v6, v7, 16);
  }

  v8 = self->_textProperties;
  if (v8)
  {
    v8 = v8->_attributedText;
  }

  v10 = v8;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v9, v10, 48);
  }

  v11 = self->_textProperties;
  self->_textProperties = v4;
}

- (void)_setSwiftBridgingSecondaryTextProperties:(id)a3
{
  v4 = a3;
  secondaryTextProperties = self->_secondaryTextProperties;
  if (secondaryTextProperties)
  {
    secondaryTextProperties = secondaryTextProperties->_text;
  }

  v7 = secondaryTextProperties;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v6, v7, 16);
  }

  v8 = self->_secondaryTextProperties;
  if (v8)
  {
    v8 = v8->_attributedText;
  }

  v10 = v8;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v9, v10, 48);
  }

  v11 = self->_secondaryTextProperties;
  self->_secondaryTextProperties = v4;
}

- (void)_setSwiftBridgingButtonProperties:(id)a3
{
  v4 = a3;
  buttonProperties = self->_buttonProperties;
  if (buttonProperties)
  {
    buttonProperties = buttonProperties->_configuration;
  }

  v6 = buttonProperties;
  [(UIBackgroundConfiguration *)v4 _setCustomView:v6];

  v7 = self->_buttonProperties;
  self->_buttonProperties = v4;
}

- (void)_setSwiftBridgingSecondaryButtonProperties:(id)a3
{
  v4 = a3;
  secondaryButtonProperties = self->_secondaryButtonProperties;
  if (secondaryButtonProperties)
  {
    secondaryButtonProperties = secondaryButtonProperties->_configuration;
  }

  v6 = secondaryButtonProperties;
  [(UIBackgroundConfiguration *)v4 _setCustomView:v6];

  v7 = self->_secondaryButtonProperties;
  self->_secondaryButtonProperties = v4;
}

- (void)setAlignment:(UIContentUnavailableAlignment)alignment
{
  textProperties = self->_textProperties;
  if (textProperties)
  {
    textProperties->_alignment = alignment;
  }

  secondaryTextProperties = self->_secondaryTextProperties;
  if (secondaryTextProperties)
  {
    secondaryTextProperties->_alignment = alignment;
  }
}

@end