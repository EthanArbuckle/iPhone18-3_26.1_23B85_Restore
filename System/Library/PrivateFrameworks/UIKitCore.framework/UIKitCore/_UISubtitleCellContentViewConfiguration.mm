@interface _UISubtitleCellContentViewConfiguration
+ (_UISubtitleCellContentViewConfiguration)defaultListCellConfigurationForState:(void *)state traitCollection:;
+ (id)defaultConfiguration;
+ (id)defaultListCellConfigurationForState:(unint64_t)state;
+ (id)defaultOutlineCellConfigurationForState:(unint64_t)state;
+ (id)defaultOutlineCellConfigurationForState:(void *)state traitCollection:;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (_UISubtitleCellContentViewConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createContentView;
- (id)updatedConfigurationForState:(unint64_t)state traitCollection:(id)collection;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)quick;
- (unint64_t)hash;
- (void)applyToContentView:(id)view;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISubtitleCellContentViewConfiguration

+ (id)defaultListCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UISubtitleCellContentViewConfiguration *)self defaultListCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (_UISubtitleCellContentViewConfiguration)defaultListCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  objc_opt_self();
  v5 = _UITableConstantsForTraitCollection(stateCopy);
  v6 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  v7 = objc_alloc_init(_UIContentViewImageViewConfiguration);
  v9 = [v5 defaultImageSymbolConfigurationForTraitCollection:stateCopy];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v9, 24);
  }

  v10 = [v5 defaultImageTintColorForState:v6 traitCollection:stateCopy];
  [(UIContentUnavailableImageProperties *)v7 _setTintColor:v10];

  v11 = objc_alloc_init(_UIContentViewLabelConfiguration);
  v12 = [v5 defaultTextLabelFontForCellStyle:3];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  v13 = [v5 defaultTextColorForCellStyle:3 traitCollection:stateCopy tintColor:0 state:v6];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v13];

  [(_UIContentViewLabelConfiguration *)v11 _configureWithConstants:v5 traitCollection:stateCopy forSidebar:0];
  v14 = objc_alloc_init(_UIContentViewLabelConfiguration);
  v15 = [v5 defaultDetailTextFontForCellStyle:3];
  [(_UIHomeAffordanceObservationRecord *)v14 setLegacyViewServiceSessionIdentifier:v15];

  v16 = [v5 defaultDetailTextColorForCellStyle:3 traitCollection:stateCopy state:v6];
  [(UIContentUnavailableImageProperties *)v14 _setTintColor:v16];

  [(_UIContentViewLabelConfiguration *)v14 _configureWithConstants:v5 traitCollection:stateCopy forSidebar:0];
  v17 = _UICellContentViewDefaultDirectionalLayoutMargins(v5, stateCopy, 3, 0, 0);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v5 defaultImageToTextPaddingForSidebar:0];
  v25 = v24;
  [v5 defaultTextToSubtitlePaddingForCellStyle:3];
  v27 = v26;
  v28 = [_UISubtitleCellContentViewConfiguration alloc];
  v29 = v7;
  v30 = v11;
  v31 = v14;
  if (v28)
  {
    v34.receiver = v28;
    v34.super_class = _UISubtitleCellContentViewConfiguration;
    v32 = objc_msgSendSuper2(&v34, sel_init);
    v28 = v32;
    if (v32)
    {
      objc_storeStrong(&v32->_imageView, v7);
      objc_storeStrong(&v28->_textLabel, v11);
      objc_storeStrong(&v28->_subtitleLabel, v14);
      v28->_axesPreservingSuperviewLayoutMargins = 1;
      v28->_directionalLayoutMargins.top = v17;
      v28->_directionalLayoutMargins.leading = v19;
      v28->_directionalLayoutMargins.bottom = v21;
      v28->_directionalLayoutMargins.trailing = v23;
      v28->_imageToTextPadding = v25;
      v28->_textToSubtitlePadding = v27;
    }
  }

  if (v28)
  {
    v28->_defaultStyle = 0;
  }

  return v28;
}

+ (id)defaultOutlineCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UISubtitleCellContentViewConfiguration *)self defaultOutlineCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (id)defaultOutlineCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  v5 = objc_opt_self();
  v6 = [(_UISubtitleCellContentViewConfiguration *)v5 defaultListCellConfigurationForState:a2 traitCollection:stateCopy];
  v7 = _UITableConstantsForTraitCollection(stateCopy);
  if ([stateCopy _splitViewControllerContext] == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  [v7 defaultImageToTextPaddingForSidebar:1];
  if (v6)
  {
    *(v6 + 24) = v10;
    *(v6 + 80) = _UICellContentViewDefaultDirectionalLayoutMargins(v7, stateCopy, 3, 1, 0);
    *(v6 + 88) = v11;
    *(v6 + 96) = v12;
    *(v6 + 104) = v13;
  }

  else
  {
    _UICellContentViewDefaultDirectionalLayoutMargins(v7, stateCopy, 3, 1, 0);
  }

  textLabel = [v6 textLabel];
  [(_UIContentViewLabelConfiguration *)textLabel _configureWithConstants:v7 traitCollection:stateCopy forSidebar:1];

  subtitleLabel = [v6 subtitleLabel];
  [(_UIContentViewLabelConfiguration *)subtitleLabel _configureWithConstants:v7 traitCollection:stateCopy forSidebar:1];

  v16 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  subtitleLabel2 = [v6 subtitleLabel];
  [(_UIHomeAffordanceObservationRecord *)subtitleLabel2 setLegacyViewServiceSessionIdentifier:v16];

  v18 = [v7 defaultSidebarTextColorForTraitCollection:stateCopy state:v9 isHeader:0 isSecondaryText:0 style:v8];
  textLabel2 = [v6 textLabel];
  [(UIContentUnavailableImageProperties *)textLabel2 _setTintColor:v18];

  v20 = [v7 defaultSidebarTextColorForTraitCollection:stateCopy state:v9 isHeader:0 isSecondaryText:1 style:v8];
  subtitleLabel3 = [v6 subtitleLabel];
  [(UIContentUnavailableImageProperties *)subtitleLabel3 _setTintColor:v20];

  v22 = [v7 defaultSidebarImageTintColorForTraitCollection:stateCopy state:v9 isHeader:0 style:v8];
  imageView = [v6 imageView];
  [(UIContentUnavailableImageProperties *)imageView _setTintColor:v22];

  if ([v9 isHighlighted])
  {
    textLabel3 = [v6 textLabel];
    v25 = textLabel3;
    if (textLabel3)
    {
      v26 = *(textLabel3 + 32);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = _UIConfigurationCompatibilityColorForHighlightedState(v27);

    imageView2 = [v6 imageView];
    [(UIContentUnavailableImageProperties *)imageView2 _setTintColor:v28];

    textLabel4 = [v6 textLabel];
    [(UIContentUnavailableImageProperties *)textLabel4 _setTintColor:v28];

    subtitleLabel4 = [v6 subtitleLabel];
    v32 = subtitleLabel4;
    if (subtitleLabel4)
    {
      v33 = *(subtitleLabel4 + 32);
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    v35 = _UIConfigurationCompatibilityColorForHighlightedState(v34);
    subtitleLabel5 = [v6 subtitleLabel];
    [(UIContentUnavailableImageProperties *)subtitleLabel5 _setTintColor:v35];
  }

  if (v6)
  {
    *(v6 + 48) = 1;
  }

  return v6;
}

+ (id)defaultConfiguration
{
  v2 = [self defaultListCellConfigurationForState:0];
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = _UITableConstantsForTraitCollection(v3);
  v5 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v6 = [v4 defaultTextColorForCellStyle:3 traitCollection:v3 tintColor:0 state:v5];
  textLabel = [v2 textLabel];
  [textLabel setHighlightedTextColor:v6];

  return v2;
}

- (id)updatedConfigurationForState:(unint64_t)state traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [(_UISubtitleCellContentViewConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  v9 = collectionCopy;
  v10 = objc_opt_self();
  v11 = v9;
  if (!v9)
  {
    v11 = +[UITraitCollection _fallbackTraitCollection];
  }

  if (defaultStyle == 1)
  {
    v12 = [(_UISubtitleCellContentViewConfiguration *)v10 defaultOutlineCellConfigurationForState:state traitCollection:v11];
    goto LABEL_7;
  }

  if (!defaultStyle)
  {
    v12 = [(_UISubtitleCellContentViewConfiguration *)v10 defaultListCellConfigurationForState:state traitCollection:v11];
LABEL_7:
    v13 = v12;
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:sel__defaultConfigurationForStyle_state_traitCollection_ object:v10 file:@"_UISubtitleCellContentView.m" lineNumber:174 description:{@"Unknown style: %ld", defaultStyle}];

  v13 = 0;
LABEL_9:

  imageView = [v7 imageView];
  imageView2 = [v13 imageView];
  [(_UIContentViewImageViewConfiguration *)imageView _applyPropertiesFromDefaultConfiguration:imageView2];

  textLabel = [v7 textLabel];
  textLabel2 = [v13 textLabel];
  [(_UIContentViewLabelConfiguration *)textLabel _applyPropertiesFromDefaultConfiguration:textLabel2];

  subtitleLabel = [v7 subtitleLabel];
  subtitleLabel2 = [v13 subtitleLabel];
  [(_UIContentViewLabelConfiguration *)subtitleLabel _applyPropertiesFromDefaultConfiguration:subtitleLabel2];

  configurationFlags = self->_configurationFlags;
  if (configurationFlags)
  {
    goto LABEL_13;
  }

  if (v13)
  {
    v22 = *(v13 + 16);
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = 0;
  if (v7)
  {
LABEL_12:
    *(v7 + 16) = v22;
    configurationFlags = self->_configurationFlags;
  }

LABEL_13:
  if ((configurationFlags & 2) != 0)
  {
    goto LABEL_17;
  }

  if (v13)
  {
    v23 = *(v13 + 80);
    v24 = *(v13 + 96);
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v23 = 0uLL;
  v24 = 0uLL;
  if (v7)
  {
LABEL_16:
    *(v7 + 80) = v23;
    *(v7 + 96) = v24;
    configurationFlags = self->_configurationFlags;
  }

LABEL_17:
  if ((configurationFlags & 4) != 0)
  {
    goto LABEL_21;
  }

  if (v13)
  {
    v25 = *(v13 + 24);
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = 0;
  if (v7)
  {
LABEL_20:
    *(v7 + 24) = v25;
    configurationFlags = self->_configurationFlags;
  }

LABEL_21:
  if ((configurationFlags & 8) != 0)
  {
    goto LABEL_25;
  }

  if (v13)
  {
    v26 = *(v13 + 32);
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v26 = 0;
  if (v7)
  {
LABEL_24:
    *(v7 + 32) = v26;
  }

LABEL_25:

  return v7;
}

- (_UISubtitleCellContentViewConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = _UISubtitleCellContentViewConfiguration;
  v5 = [(_UISubtitleCellContentViewConfiguration *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageView"];
    imageView = v5->_imageView;
    v5->_imageView = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textLabel"];
    textLabel = v5->_textLabel;
    v5->_textLabel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitleLabel"];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v10;

    v5->_axesPreservingSuperviewLayoutMargins = [coderCopy decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [coderCopy decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v12;
    v5->_directionalLayoutMargins.leading = v13;
    v5->_directionalLayoutMargins.bottom = v14;
    v5->_directionalLayoutMargins.trailing = v15;
    [coderCopy decodeDoubleForKey:@"imageToTextPadding"];
    v5->_imageToTextPadding = v16;
    [coderCopy decodeDoubleForKey:@"textToSubtitlePadding"];
    v5->_textToSubtitlePadding = v17;
    v5->_defaultStyle = [coderCopy decodeIntegerForKey:@"defaultStyle"];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [coderCopy decodeBoolForKey:v18];

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([coderCopy decodeBoolForKey:v19])
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v20;

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
    if ([coderCopy decodeBoolForKey:v21])
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFB | v22;

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSubtitlePadding"];
    if ([coderCopy decodeBoolForKey:v23])
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xF7 | v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  imageView = self->_imageView;
  coderCopy = coder;
  [coderCopy encodeObject:imageView forKey:@"imageView"];
  [coderCopy encodeObject:self->_textLabel forKey:@"textLabel"];
  [coderCopy encodeObject:self->_subtitleLabel forKey:@"subtitleLabel"];
  [coderCopy encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [coderCopy encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [coderCopy encodeDouble:@"imageToTextPadding" forKey:self->_imageToTextPadding];
  [coderCopy encodeDouble:@"textToSubtitlePadding" forKey:self->_textToSubtitlePadding];
  [coderCopy encodeInteger:self->_defaultStyle forKey:@"defaultStyle"];
  configurationFlags = self->_configurationFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
  [coderCopy encodeBool:configurationFlags & 1 forKey:v7];

  v8 = (*&self->_configurationFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
  [coderCopy encodeBool:v8 forKey:v9];

  v10 = (*&self->_configurationFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
  [coderCopy encodeBool:v10 forKey:v11];

  v12 = (*&self->_configurationFlags >> 3) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSubtitlePadding"];
  [coderCopy encodeBool:v12 forKey:v13];
}

- (id)createContentView
{
  v2 = [[_UISubtitleCellContentView alloc] initWithConfiguration:self];

  return v2;
}

- (void)applyToContentView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISubtitleCellContentView.m" lineNumber:283 description:{@"Unable to apply %@ to content view %@", self, viewCopy}];
  }

  [viewCopy setConfiguration:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(_UIContentViewImageViewConfiguration *)self->_imageView copy];
    v6 = *(v4 + 56);
    *(v4 + 56) = v5;

    v7 = [(_UIContentViewLabelConfiguration *)self->_textLabel copy];
    v8 = *(v4 + 64);
    *(v4 + 64) = v7;

    v9 = [(_UIContentViewLabelConfiguration *)self->_subtitleLabel copy];
    v10 = *(v4 + 72);
    *(v4 + 72) = v9;

    *(v4 + 16) = self->_axesPreservingSuperviewLayoutMargins;
    v11 = *&self->_directionalLayoutMargins.bottom;
    *(v4 + 80) = *&self->_directionalLayoutMargins.top;
    *(v4 + 96) = v11;
    *(v4 + 24) = self->_imageToTextPadding;
    *(v4 + 32) = self->_textToSubtitlePadding;
    v12 = [(_UIContentViewEditingConfiguration *)self->_textLabelEditingConfiguration copy];
    v13 = *(v4 + 40);
    *(v4 + 40) = v12;

    *(v4 + 48) = self->_defaultStyle;
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
      if (self->_defaultStyle == v6->_defaultStyle && [(_UIContentViewImageViewConfiguration *)self->_imageView _isEqualToConfiguration:?]&& [(_UIContentViewLabelConfiguration *)self->_textLabel _isEqualToConfiguration:?]&& [(_UIContentViewLabelConfiguration *)self->_subtitleLabel _isEqualToConfiguration:?]&& self->_axesPreservingSuperviewLayoutMargins == v7->_axesPreservingSuperviewLayoutMargins && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_directionalLayoutMargins.top, *&v7->_directionalLayoutMargins.top), vceqq_f64(*&self->_directionalLayoutMargins.bottom, *&v7->_directionalLayoutMargins.bottom)))) & 1) != 0 && self->_imageToTextPadding == v7->_imageToTextPadding && self->_textToSubtitlePadding == v7->_textToSubtitlePadding)
      {
        LOBYTE(self) = _deferringTokenEqualToToken(self->_textLabelEditingConfiguration, v7->_textLabelEditingConfiguration);
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

    else if (*(quick + 48) == v3[6] && [(_UIContentViewImageViewConfiguration *)*(quick + 56) _isEqualToConfigurationQuick:?]&& [(_UIContentViewLabelConfiguration *)*(quick + 64) _isEqualToConfigurationQuick:?]&& [(_UIContentViewLabelConfiguration *)*(quick + 72) _isEqualToConfigurationQuick:?]&& *(quick + 16) == v4[2] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(quick + 80), *(v4 + 5)), vceqq_f64(*(quick + 96), *(v4 + 6))))) & 1) != 0 && *(quick + 24) == *(v4 + 3) && *(quick + 32) == *(v4 + 4))
    {
      quick = _deferringTokenEqualToToken(*(quick + 40), v4[5]);
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
  v3 = [(_UIContentViewImageViewConfiguration *)self->_imageView hash];
  v4 = [(_UIContentViewLabelConfiguration *)self->_textLabel hash]^ v3;
  return v4 ^ [(_UIContentViewLabelConfiguration *)self->_subtitleLabel hash];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle)
  {
    if (defaultStyle == 1)
    {
      v6 = @"Outline";
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UISubtitleCellContentViewConfigurationStyleToString(_UISubtitleCellContentViewConfigurationStyle)"];
      [currentHandler handleFailureInFunction:v8 file:@"_UISubtitleCellContentView.m" lineNumber:31 description:{@"Unknown style: %ld", defaultStyle}];

      v6 = 0;
    }
  }

  else
  {
    v6 = @"List";
  }

  v9 = [v4 stringWithFormat:@"Base Style = %@", v6];
  [v3 addObject:v9];

  imageView = self->_imageView;
  if (imageView && (imageView->data || imageView[1].data))
  {
    v11 = MEMORY[0x1E696AEC0];
    _shortDescription = [(_UIContentViewImageViewConfiguration *)imageView _shortDescription];
    v13 = [v11 stringWithFormat:@"imageView = %@", _shortDescription];
    [v3 addObject:v13];
  }

  if ([(_UIContentViewLabelConfiguration *)self->_textLabel _hasText])
  {
    v14 = MEMORY[0x1E696AEC0];
    _shortDescription2 = [(_UIContentViewLabelConfiguration *)self->_textLabel _shortDescription];
    v16 = [v14 stringWithFormat:@"textLabel = %@", _shortDescription2];
    [v3 addObject:v16];
  }

  if ([(_UIContentViewLabelConfiguration *)self->_subtitleLabel _hasText])
  {
    v17 = MEMORY[0x1E696AEC0];
    _shortDescription3 = [(_UIContentViewLabelConfiguration *)self->_subtitleLabel _shortDescription];
    v19 = [v17 stringWithFormat:@"subtitleLabel = %@", _shortDescription3];
    [v3 addObject:v19];
  }

  v20 = *&self->_directionalLayoutMargins.top;
  v21 = *&self->_directionalLayoutMargins.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v20), vceqzq_f64(v21))))))
  {
    leading = self->_directionalLayoutMargins.leading;
    v23 = MEMORY[0x1E696AEC0];
    trailing = self->_directionalLayoutMargins.trailing;
    v25 = NSStringFromDirectionalEdgeInsets(*v20.f64);
    v26 = [v23 stringWithFormat:@"directionalLayoutMargins = %@", v25];
    [v3 addObject:v26];
  }

  axesPreservingSuperviewLayoutMargins = self->_axesPreservingSuperviewLayoutMargins;
  if (axesPreservingSuperviewLayoutMargins)
  {
    v28 = MEMORY[0x1E696AEC0];
    v29 = _UIContentViewStringForAxis(axesPreservingSuperviewLayoutMargins);
    v30 = [v28 stringWithFormat:@"axesPreservingSuperviewLayoutMargins = %@", v29];
    [v3 addObject:v30];
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageToTextPadding = %g", *&self->_imageToTextPadding];
  [v3 addObject:v31];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textToSubtitlePadding = %g", *&self->_textToSubtitlePadding];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = [v3 componentsJoinedByString:@" "];;
  v37 = [v33 stringWithFormat:@"<%@: %p %@>", v35, self, v36];;

  return v37;
}

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

@end