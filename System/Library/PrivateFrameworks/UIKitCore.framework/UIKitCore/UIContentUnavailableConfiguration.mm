@interface UIContentUnavailableConfiguration
+ (UIContentUnavailableConfiguration)emptyConfiguration;
+ (UIContentUnavailableConfiguration)loadingConfiguration;
+ (UIContentUnavailableConfiguration)searchConfiguration;
+ (id)_defaultEmptyConfigurationForState:(uint64_t)state traitCollection:(void *)collection;
+ (id)_defaultLoadingConfigurationForState:(uint64_t)state traitCollection:(void *)collection;
+ (void)_defaultSearchConfigurationForState:(void *)state traitCollection:;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (UIContentUnavailableAlignment)alignment;
- (UIContentUnavailableConfiguration)initWithCoder:(id)coder;
- (id)_initWithImageProperties:(void *)properties textProperties:(void *)textProperties secondaryTextProperties:(void *)secondaryTextProperties buttonProperties:(void *)buttonProperties secondaryButtonProperties:(char)secondaryButtonProperties sideBySideButtonAndSecondaryButton:(double)button directionalLayoutMargins:(double)margins imageToTextPadding:(double)self0 textToSecondaryTextPadding:(double)self1 textToButtonPadding:(double)self2 buttonToSecondaryButtonPadding:(double)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeContentView;
- (id)updatedConfigurationForState:(id)state;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)quick;
- (unint64_t)hash;
- (void)_setSwiftBridgingButtonProperties:(id)properties;
- (void)_setSwiftBridgingImageProperties:(id)properties;
- (void)_setSwiftBridgingSecondaryButtonProperties:(id)properties;
- (void)_setSwiftBridgingSecondaryTextProperties:(id)properties;
- (void)_setSwiftBridgingTextProperties:(id)properties;
- (void)encodeWithCoder:(id)coder;
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
  v5 = [UIContentUnavailableConfiguration _defaultEmptyConfigurationForState:self traitCollection:v4];

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
  v5 = [UIContentUnavailableConfiguration _defaultLoadingConfigurationForState:self traitCollection:v4];

  return v5;
}

+ (id)_defaultEmptyConfigurationForState:(uint64_t)state traitCollection:(void *)collection
{
  collectionCopy = collection;
  objc_opt_self();
  v3 = _UIContentUnavailableConstantsForTraitCollection(collectionCopy);
  v4 = objc_alloc_init(UIContentUnavailableImageProperties);
  v6 = [v3 defaultEmptyImageSymbolConfigurationForTraitCollection:collectionCopy];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, v6, 24);
  }

  defaultEmptyImageTintColor = [v3 defaultEmptyImageTintColor];
  [(UIContentUnavailableImageProperties *)v4 _setTintColor:defaultEmptyImageTintColor];

  v8 = objc_alloc_init(UIContentUnavailableTextProperties);
  v9 = [v3 defaultEmptyTextFontForTraitCollection:collectionCopy];
  [(_UIHomeAffordanceObservationRecord *)v8 setLegacyViewServiceSessionIdentifier:v9];

  v10 = [v3 defaultEmptyTextColorForTraitCollection:collectionCopy];
  [(UIContentUnavailableImageProperties *)v8 _setTintColor:v10];

  v11 = objc_alloc_init(UIContentUnavailableTextProperties);
  v12 = [v3 defaultEmptySecondaryTextFontForTraitCollection:collectionCopy];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  defaultSecondaryTextColor = [v3 defaultSecondaryTextColor];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:defaultSecondaryTextColor];

  v14 = objc_alloc_init(UIContentUnavailableButtonProperties);
  v15 = objc_alloc_init(UIContentUnavailableButtonProperties);
  prefersSideBySideButtonAndSecondaryButton = [v3 prefersSideBySideButtonAndSecondaryButton];
  [v3 defaultDirectionalLayoutMarginsForTraitCollection:collectionCopy];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v3 defaultEmptyImageToTextPaddingForTraitCollection:collectionCopy];
  v26 = v25;
  [v3 defaultEmptyTextToSecondaryTextPaddingForTraitCollection:collectionCopy];
  v28 = v27;
  [v3 defaultEmptyTextToButtonPaddingForTraitCollection:collectionCopy];
  v30 = v29;
  [v3 defaultEmptyButtonToSecondaryButtonPaddingForTraitCollection:collectionCopy];
  v32 = v31;

  v33 = [[UIContentUnavailableConfiguration alloc] _initWithImageProperties:v4 textProperties:v8 secondaryTextProperties:v11 buttonProperties:v14 secondaryButtonProperties:v15 sideBySideButtonAndSecondaryButton:prefersSideBySideButtonAndSecondaryButton directionalLayoutMargins:v18 imageToTextPadding:v20 textToSecondaryTextPadding:v22 textToButtonPadding:v24 buttonToSecondaryButtonPadding:v26, v28, v30, v32];
  v34 = v33;
  if (v33)
  {
    v33[7] = 0;
  }

  return v34;
}

+ (id)_defaultLoadingConfigurationForState:(uint64_t)state traitCollection:(void *)collection
{
  collectionCopy = collection;
  objc_opt_self();
  v3 = _UIContentUnavailableConstantsForTraitCollection(collectionCopy);
  v4 = objc_alloc_init(UIContentUnavailableImageProperties);
  v6 = [v3 defaultLoadingImageSymbolConfigurationForTraitCollection:collectionCopy];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, v6, 24);
  }

  defaultLoadingImageTintColor = [v3 defaultLoadingImageTintColor];
  [(UIContentUnavailableImageProperties *)v4 _setTintColor:defaultLoadingImageTintColor];

  v8 = objc_alloc_init(UIContentUnavailableTextProperties);
  v9 = [v3 defaultLoadingTextFontForTraitCollection:collectionCopy];
  [(_UIHomeAffordanceObservationRecord *)v8 setLegacyViewServiceSessionIdentifier:v9];

  defaultLoadingTextColor = [v3 defaultLoadingTextColor];
  [(UIContentUnavailableImageProperties *)v8 _setTintColor:defaultLoadingTextColor];

  v11 = objc_alloc_init(UIContentUnavailableTextProperties);
  v12 = [v3 defaultEmptySecondaryTextFontForTraitCollection:collectionCopy];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  defaultSecondaryTextColor = [v3 defaultSecondaryTextColor];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:defaultSecondaryTextColor];

  v14 = objc_alloc_init(UIContentUnavailableButtonProperties);
  v15 = objc_alloc_init(UIContentUnavailableButtonProperties);
  prefersSideBySideButtonAndSecondaryButton = [v3 prefersSideBySideButtonAndSecondaryButton];
  [v3 defaultDirectionalLayoutMarginsForTraitCollection:collectionCopy];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v3 defaultLoadingImageToTextPaddingForTraitCollection:collectionCopy];
  v26 = v25;
  [v3 defaultEmptyTextToSecondaryTextPaddingForTraitCollection:collectionCopy];
  v28 = v27;
  [v3 defaultEmptyTextToButtonPaddingForTraitCollection:collectionCopy];
  v30 = v29;
  [v3 defaultEmptyButtonToSecondaryButtonPaddingForTraitCollection:collectionCopy];
  v32 = [[UIContentUnavailableConfiguration alloc] _initWithImageProperties:v4 textProperties:v8 secondaryTextProperties:v11 buttonProperties:v14 secondaryButtonProperties:v15 sideBySideButtonAndSecondaryButton:prefersSideBySideButtonAndSecondaryButton directionalLayoutMargins:v18 imageToTextPadding:v20 textToSecondaryTextPadding:v22 textToButtonPadding:v24 buttonToSecondaryButtonPadding:v26, v28, v30, v31];
  if (![collectionCopy userInterfaceIdiom] || objc_msgSend(collectionCopy, "userInterfaceIdiom") == 1)
  {
    v33 = _UILocalizedString(@"CONTENT_UNAVAILABLE_LOADING_TEXT", @"Default text to display whilst loading content", @"Loading...");
    textProperties = [v32 textProperties];
    v36 = textProperties;
    if (textProperties)
    {
      objc_setProperty_nonatomic_copy(textProperties, v35, v33, 16);
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
  v5 = [(UIContentUnavailableConfiguration *)self _defaultSearchConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (void)_defaultSearchConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  v6 = objc_opt_self();
  v7 = [UIContentUnavailableConfiguration _defaultEmptyConfigurationForState:v6 traitCollection:stateCopy];

  v8 = [UIImage systemImageNamed:@"magnifyingglass"];
  imageProperties = [v7 imageProperties];
  [(UIBackgroundConfiguration *)imageProperties _setCustomView:v8];

  searchText = [v4 searchText];
  v11 = [searchText length];

  if (v11)
  {
    searchText2 = [v4 searchText];
    v18 = _UILocalizedFormat(@"CONTENT_UNAVAILABLE_SEARCH_TEXT_WITH_QUERY", @"Default text to display when a search with a query returns no results", @"No Results for “%@”", v13, v14, v15, v16, v17, searchText2);
    textProperties = [v7 textProperties];
    v21 = textProperties;
    if (textProperties)
    {
      objc_setProperty_nonatomic_copy(textProperties, v20, v18, 16);
    }
  }

  else
  {
    searchText2 = _UILocalizedString(@"CONTENT_UNAVAILABLE_SEARCH_TEXT", @"Default text to display when a search returns no results", @"No Results");
    textProperties2 = [v7 textProperties];
    v18 = textProperties2;
    if (textProperties2)
    {
      objc_setProperty_nonatomic_copy(textProperties2, v23, searchText2, 16);
    }
  }

  v24 = _UILocalizedString(@"CONTENT_UNAVAILABLE_SEARCH_SECONDARY_TEXT", @"Default secondary text to display when a search returns no results", @"Check the spelling or try a new search.");
  secondaryTextProperties = [v7 secondaryTextProperties];
  v27 = secondaryTextProperties;
  if (secondaryTextProperties)
  {
    objc_setProperty_nonatomic_copy(secondaryTextProperties, v26, v24, 16);
  }

  if (v7)
  {
    v7[7] = 2;
  }

  return v7;
}

- (id)_initWithImageProperties:(void *)properties textProperties:(void *)textProperties secondaryTextProperties:(void *)secondaryTextProperties buttonProperties:(void *)buttonProperties secondaryButtonProperties:(char)secondaryButtonProperties sideBySideButtonAndSecondaryButton:(double)button directionalLayoutMargins:(double)margins imageToTextPadding:(double)self0 textToSecondaryTextPadding:(double)self1 textToButtonPadding:(double)self2 buttonToSecondaryButtonPadding:(double)self3
{
  v38 = a2;
  propertiesCopy = properties;
  textPropertiesCopy = textProperties;
  secondaryTextPropertiesCopy = secondaryTextProperties;
  buttonPropertiesCopy = buttonProperties;
  if (self)
  {
    v39.receiver = self;
    v39.super_class = UIContentUnavailableConfiguration;
    v33 = objc_msgSendSuper2(&v39, sel_init);
    self = v33;
    if (v33)
    {
      objc_storeStrong(v33 + 8, a2);
      objc_storeStrong(self + 9, properties);
      objc_storeStrong(self + 10, textProperties);
      objc_storeStrong(self + 11, secondaryTextProperties);
      objc_storeStrong(self + 12, buttonProperties);
      *(self + 12) = secondaryButtonProperties;
      self[2] = 1;
      *(self + 14) = button;
      *(self + 15) = margins;
      *(self + 16) = padding;
      *(self + 17) = textPadding;
      *(self + 3) = buttonPadding;
      *(self + 4) = secondaryButtonPadding;
      *(self + 5) = a14;
      *(self + 6) = a15;
      v34 = +[UIBackgroundConfiguration clearConfiguration];
      v35 = self[13];
      self[13] = v34;
    }
  }

  return self;
}

- (id)updatedConfigurationForState:(id)state
{
  stateCopy = state;
  v5 = [(UIContentUnavailableConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  v7 = stateCopy;
  v8 = objc_opt_self();
  v9 = [UIContentUnavailableConfigurationState _readonlyContentUnavailableConfigurationState:v7];
  switch(defaultStyle)
  {
    case 2:
      traitCollection = [v7 traitCollection];
      v11 = [(UIContentUnavailableConfiguration *)v8 _defaultSearchConfigurationForState:v9 traitCollection:traitCollection];
      goto LABEL_7;
    case 1:
      traitCollection = [v7 traitCollection];
      v11 = [UIContentUnavailableConfiguration _defaultLoadingConfigurationForState:v8 traitCollection:traitCollection];
      goto LABEL_7;
    case 0:
      traitCollection = [v7 traitCollection];
      v11 = [UIContentUnavailableConfiguration _defaultEmptyConfigurationForState:v8 traitCollection:traitCollection];
LABEL_7:
      v12 = v11;
      goto LABEL_9;
  }

  traitCollection = [MEMORY[0x1E696AAA8] currentHandler];
  [traitCollection handleFailureInMethod:sel__defaultConfigurationForStyle_state_ object:v8 file:@"UIContentUnavailableConfiguration.m" lineNumber:226 description:{@"Unknown style: %ld", defaultStyle}];
  v12 = 0;
LABEL_9:

  imageProperties = [v5 imageProperties];
  imageProperties2 = [v12 imageProperties];
  [(UIContentUnavailableImageProperties *)imageProperties _applyPropertiesFromDefaultProperties:imageProperties2];

  textProperties = [v5 textProperties];
  textProperties2 = [v12 textProperties];
  [(UIContentUnavailableTextProperties *)textProperties _applyPropertiesFromDefaultProperties:textProperties2];

  secondaryTextProperties = [v5 secondaryTextProperties];
  secondaryTextProperties2 = [v12 secondaryTextProperties];
  [(UIContentUnavailableTextProperties *)secondaryTextProperties _applyPropertiesFromDefaultProperties:secondaryTextProperties2];

  buttonProperties = [v5 buttonProperties];
  buttonProperties2 = [v12 buttonProperties];
  [(UIContentUnavailableButtonProperties *)buttonProperties _applyPropertiesFromDefaultProperties:buttonProperties2];

  secondaryButtonProperties = [v5 secondaryButtonProperties];
  secondaryButtonProperties2 = [v12 secondaryButtonProperties];
  [(UIContentUnavailableButtonProperties *)secondaryButtonProperties _applyPropertiesFromDefaultProperties:secondaryButtonProperties2];

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

- (UIContentUnavailableConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = UIContentUnavailableConfiguration;
  v5 = [(UIContentUnavailableConfiguration *)&v41 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageProperties"];
    imageProperties = v5->_imageProperties;
    v5->_imageProperties = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textProperties"];
    textProperties = v5->_textProperties;
    v5->_textProperties = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextProperties"];
    secondaryTextProperties = v5->_secondaryTextProperties;
    v5->_secondaryTextProperties = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonProperties"];
    buttonProperties = v5->_buttonProperties;
    v5->_buttonProperties = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryButtonProperties"];
    secondaryButtonProperties = v5->_secondaryButtonProperties;
    v5->_secondaryButtonProperties = v14;

    [coderCopy decodeDoubleForKey:@"prefersSideBySideButtonAndSecondaryButton"];
    v5->_prefersSideBySideButtonAndSecondaryButton = v16 != 0.0;
    v5->_axesPreservingSuperviewLayoutMargins = [coderCopy decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [coderCopy decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v17;
    v5->_directionalLayoutMargins.leading = v18;
    v5->_directionalLayoutMargins.bottom = v19;
    v5->_directionalLayoutMargins.trailing = v20;
    [coderCopy decodeDoubleForKey:@"imageToTextPadding"];
    v5->_imageToTextPadding = v21;
    [coderCopy decodeDoubleForKey:@"textToSecondaryTextPadding"];
    v5->_textToSecondaryTextPadding = v22;
    [coderCopy decodeDoubleForKey:@"textToButtonPadding"];
    v5->_textToButtonPadding = v23;
    [coderCopy decodeDoubleForKey:@"buttonToSecondaryButtonPadding"];
    v5->_buttonToSecondaryButtonPadding = v24;
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    background = v5->_background;
    v5->_background = v25;

    v5->_defaultStyle = [coderCopy decodeIntegerForKey:@"defaultStyle"];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"prefersSideBySideButtonAndSecondaryButton"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [coderCopy decodeBoolForKey:v27];

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    if ([coderCopy decodeBoolForKey:v28])
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v29;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([coderCopy decodeBoolForKey:v30])
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFB | v31;

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
    if ([coderCopy decodeBoolForKey:v32])
    {
      v33 = 8;
    }

    else
    {
      v33 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xF7 | v33;

    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextPadding"];
    if ([coderCopy decodeBoolForKey:v34])
    {
      v35 = 16;
    }

    else
    {
      v35 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xEF | v35;

    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToButtonPadding"];
    if ([coderCopy decodeBoolForKey:v36])
    {
      v37 = 32;
    }

    else
    {
      v37 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xDF | v37;

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"buttonToSecondaryButtonPadding"];
    if ([coderCopy decodeBoolForKey:v38])
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

- (void)encodeWithCoder:(id)coder
{
  imageProperties = self->_imageProperties;
  coderCopy = coder;
  [coderCopy encodeObject:imageProperties forKey:@"imageProperties"];
  [coderCopy encodeObject:self->_textProperties forKey:@"textProperties"];
  [coderCopy encodeObject:self->_secondaryTextProperties forKey:@"secondaryTextProperties"];
  [coderCopy encodeObject:self->_buttonProperties forKey:@"buttonProperties"];
  [coderCopy encodeObject:self->_secondaryButtonProperties forKey:@"secondaryButtonProperties"];
  LOBYTE(v6) = self->_prefersSideBySideButtonAndSecondaryButton;
  [coderCopy encodeDouble:@"prefersSideBySideButtonAndSecondaryButton" forKey:v6];
  [coderCopy encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [coderCopy encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [coderCopy encodeDouble:@"imageToTextPadding" forKey:self->_imageToTextPadding];
  [coderCopy encodeDouble:@"textToSecondaryTextPadding" forKey:self->_textToSecondaryTextPadding];
  [coderCopy encodeDouble:@"textToButtonPadding" forKey:self->_textToButtonPadding];
  [coderCopy encodeDouble:@"buttonToSecondaryButtonPadding" forKey:self->_buttonToSecondaryButtonPadding];
  [coderCopy encodeObject:self->_background forKey:@"background"];
  [coderCopy encodeInteger:self->_defaultStyle forKey:@"defaultStyle"];
  configurationFlags = self->_configurationFlags;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"prefersSideBySideButtonAndSecondaryButton"];
  [coderCopy encodeBool:configurationFlags & 1 forKey:v8];

  v9 = (*&self->_configurationFlags >> 1) & 1;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
  [coderCopy encodeBool:v9 forKey:v10];

  v11 = (*&self->_configurationFlags >> 2) & 1;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
  [coderCopy encodeBool:v11 forKey:v12];

  v13 = (*&self->_configurationFlags >> 3) & 1;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
  [coderCopy encodeBool:v13 forKey:v14];

  v15 = (*&self->_configurationFlags >> 4) & 1;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextPadding"];
  [coderCopy encodeBool:v15 forKey:v16];

  v17 = (*&self->_configurationFlags >> 5) & 1;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToButtonPadding"];
  [coderCopy encodeBool:v17 forKey:v18];

  v19 = (*&self->_configurationFlags >> 6) & 1;
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"buttonToSecondaryButtonPadding"];
  [coderCopy encodeBool:v19 forKey:v20];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)quick
{
  v3 = a2;
  v4 = v3;
  if (quick)
  {
    if (v3 == quick)
    {
      quick = 1;
    }

    else if (*(quick + 56) == v3[7] && [(UIContentUnavailableImageProperties *)*(quick + 64) _isEqualToPropertiesQuick:1 compareImage:?]&& [(UIContentUnavailableTextProperties *)*(quick + 72) _isEqualToPropertiesQuick:1 compareText:?]&& [(UIContentUnavailableTextProperties *)*(quick + 80) _isEqualToPropertiesQuick:1 compareText:?]&& [(UIContentUnavailableButtonProperties *)*(quick + 88) _isEqualToPropertiesQuick:?]&& [(UIContentUnavailableButtonProperties *)*(quick + 96) _isEqualToPropertiesQuick:?]&& *(quick + 12) == *(v4 + 12) && *(quick + 16) == v4[2] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(quick + 112), *(v4 + 7)), vceqq_f64(*(quick + 128), *(v4 + 8))))) & 1) != 0 && *(quick + 24) == *(v4 + 3) && *(quick + 32) == *(v4 + 4) && *(quick + 40) == *(v4 + 5) && *(quick + 48) == *(v4 + 6))
    {
      quick = [(UIBackgroundConfiguration *)*(quick + 104) _isEqualToConfigurationQuick:?];
    }

    else
    {
      quick = 0;
    }
  }

  return quick;
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
      _shortDescription = [(UIContentUnavailableImageProperties *)imageProperties _shortDescription];
      v7 = [v5 stringWithFormat:@"image = %@", _shortDescription];
      [v3 addObject:v7];
    }

    textProperties = self->_textProperties;
    if (textProperties && (textProperties->data || textProperties[1].data))
    {
      v9 = MEMORY[0x1E696AEC0];
      _shortDescription2 = [(UIContentUnavailableTextProperties *)textProperties _shortDescription];
      v11 = [v9 stringWithFormat:@"text = %@", _shortDescription2];
      [v3 addObject:v11];
    }

    secondaryTextProperties = self->_secondaryTextProperties;
    if (secondaryTextProperties && (secondaryTextProperties->data || secondaryTextProperties[1].data))
    {
      v13 = MEMORY[0x1E696AEC0];
      _shortDescription3 = [(UIContentUnavailableTextProperties *)secondaryTextProperties _shortDescription];
      v15 = [v13 stringWithFormat:@"secondaryText = %@", _shortDescription3];
      [v3 addObject:v15];
    }

    buttonProperties = self->_buttonProperties;
    if (buttonProperties)
    {
      v17 = MEMORY[0x1E696AEC0];
      _shortDescription4 = [(UIContentUnavailableButtonProperties *)buttonProperties _shortDescription];
      v19 = [v17 stringWithFormat:@"buttonProperties = %@", _shortDescription4];
      [v3 addObject:v19];
    }

    secondaryButtonProperties = self->_secondaryButtonProperties;
    if (secondaryButtonProperties)
    {
      v21 = MEMORY[0x1E696AEC0];
      _shortDescription5 = [(UIContentUnavailableButtonProperties *)secondaryButtonProperties _shortDescription];
      v23 = [v21 stringWithFormat:@"secondaryButtonProperties = %@", _shortDescription5];
      [v3 addObject:v23];
    }

    v24 = MEMORY[0x1E696AEC0];
    defaultStyle = self->_defaultStyle;
    if (defaultStyle >= 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UIContentUnavailableConfigurationStyleToString(_UIContentUnavailableConfigurationStyle)"];
      [currentHandler handleFailureInFunction:v28 file:@"UIContentUnavailableConfiguration.m" lineNumber:35 description:{@"Unknown style: %ld", defaultStyle}];

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

- (void)_setSwiftBridgingImageProperties:(id)properties
{
  propertiesCopy = properties;
  imageProperties = self->_imageProperties;
  if (imageProperties)
  {
    imageProperties = imageProperties->_image;
  }

  v6 = imageProperties;
  [(UIBackgroundConfiguration *)propertiesCopy _setCustomView:v6];

  v7 = self->_imageProperties;
  self->_imageProperties = propertiesCopy;
}

- (void)_setSwiftBridgingTextProperties:(id)properties
{
  propertiesCopy = properties;
  textProperties = self->_textProperties;
  if (textProperties)
  {
    textProperties = textProperties->_text;
  }

  v7 = textProperties;
  if (propertiesCopy)
  {
    objc_setProperty_nonatomic_copy(propertiesCopy, v6, v7, 16);
  }

  v8 = self->_textProperties;
  if (v8)
  {
    v8 = v8->_attributedText;
  }

  v10 = v8;
  if (propertiesCopy)
  {
    objc_setProperty_nonatomic_copy(propertiesCopy, v9, v10, 48);
  }

  v11 = self->_textProperties;
  self->_textProperties = propertiesCopy;
}

- (void)_setSwiftBridgingSecondaryTextProperties:(id)properties
{
  propertiesCopy = properties;
  secondaryTextProperties = self->_secondaryTextProperties;
  if (secondaryTextProperties)
  {
    secondaryTextProperties = secondaryTextProperties->_text;
  }

  v7 = secondaryTextProperties;
  if (propertiesCopy)
  {
    objc_setProperty_nonatomic_copy(propertiesCopy, v6, v7, 16);
  }

  v8 = self->_secondaryTextProperties;
  if (v8)
  {
    v8 = v8->_attributedText;
  }

  v10 = v8;
  if (propertiesCopy)
  {
    objc_setProperty_nonatomic_copy(propertiesCopy, v9, v10, 48);
  }

  v11 = self->_secondaryTextProperties;
  self->_secondaryTextProperties = propertiesCopy;
}

- (void)_setSwiftBridgingButtonProperties:(id)properties
{
  propertiesCopy = properties;
  buttonProperties = self->_buttonProperties;
  if (buttonProperties)
  {
    buttonProperties = buttonProperties->_configuration;
  }

  v6 = buttonProperties;
  [(UIBackgroundConfiguration *)propertiesCopy _setCustomView:v6];

  v7 = self->_buttonProperties;
  self->_buttonProperties = propertiesCopy;
}

- (void)_setSwiftBridgingSecondaryButtonProperties:(id)properties
{
  propertiesCopy = properties;
  secondaryButtonProperties = self->_secondaryButtonProperties;
  if (secondaryButtonProperties)
  {
    secondaryButtonProperties = secondaryButtonProperties->_configuration;
  }

  v6 = secondaryButtonProperties;
  [(UIBackgroundConfiguration *)propertiesCopy _setCustomView:v6];

  v7 = self->_secondaryButtonProperties;
  self->_secondaryButtonProperties = propertiesCopy;
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