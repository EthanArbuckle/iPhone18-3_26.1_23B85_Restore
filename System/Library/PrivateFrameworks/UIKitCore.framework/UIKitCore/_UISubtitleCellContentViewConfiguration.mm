@interface _UISubtitleCellContentViewConfiguration
+ (_UISubtitleCellContentViewConfiguration)defaultListCellConfigurationForState:(void *)a3 traitCollection:;
+ (id)defaultConfiguration;
+ (id)defaultListCellConfigurationForState:(unint64_t)a3;
+ (id)defaultOutlineCellConfigurationForState:(unint64_t)a3;
+ (id)defaultOutlineCellConfigurationForState:(void *)a3 traitCollection:;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (_UISubtitleCellContentViewConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createContentView;
- (id)updatedConfigurationForState:(unint64_t)a3 traitCollection:(id)a4;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1;
- (unint64_t)hash;
- (void)applyToContentView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISubtitleCellContentViewConfiguration

+ (id)defaultListCellConfigurationForState:(unint64_t)a3
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UISubtitleCellContentViewConfiguration *)a1 defaultListCellConfigurationForState:a3 traitCollection:v5];

  return v6;
}

+ (_UISubtitleCellContentViewConfiguration)defaultListCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  objc_opt_self();
  v5 = _UITableConstantsForTraitCollection(v4);
  v6 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  v7 = objc_alloc_init(_UIContentViewImageViewConfiguration);
  v9 = [v5 defaultImageSymbolConfigurationForTraitCollection:v4];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v9, 24);
  }

  v10 = [v5 defaultImageTintColorForState:v6 traitCollection:v4];
  [(UIContentUnavailableImageProperties *)v7 _setTintColor:v10];

  v11 = objc_alloc_init(_UIContentViewLabelConfiguration);
  v12 = [v5 defaultTextLabelFontForCellStyle:3];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  v13 = [v5 defaultTextColorForCellStyle:3 traitCollection:v4 tintColor:0 state:v6];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v13];

  [(_UIContentViewLabelConfiguration *)v11 _configureWithConstants:v5 traitCollection:v4 forSidebar:0];
  v14 = objc_alloc_init(_UIContentViewLabelConfiguration);
  v15 = [v5 defaultDetailTextFontForCellStyle:3];
  [(_UIHomeAffordanceObservationRecord *)v14 setLegacyViewServiceSessionIdentifier:v15];

  v16 = [v5 defaultDetailTextColorForCellStyle:3 traitCollection:v4 state:v6];
  [(UIContentUnavailableImageProperties *)v14 _setTintColor:v16];

  [(_UIContentViewLabelConfiguration *)v14 _configureWithConstants:v5 traitCollection:v4 forSidebar:0];
  v17 = _UICellContentViewDefaultDirectionalLayoutMargins(v5, v4, 3, 0, 0);
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

+ (id)defaultOutlineCellConfigurationForState:(unint64_t)a3
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UISubtitleCellContentViewConfiguration *)a1 defaultOutlineCellConfigurationForState:a3 traitCollection:v5];

  return v6;
}

+ (id)defaultOutlineCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_UISubtitleCellContentViewConfiguration *)v5 defaultListCellConfigurationForState:a2 traitCollection:v4];
  v7 = _UITableConstantsForTraitCollection(v4);
  if ([v4 _splitViewControllerContext] == 2)
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
    *(v6 + 80) = _UICellContentViewDefaultDirectionalLayoutMargins(v7, v4, 3, 1, 0);
    *(v6 + 88) = v11;
    *(v6 + 96) = v12;
    *(v6 + 104) = v13;
  }

  else
  {
    _UICellContentViewDefaultDirectionalLayoutMargins(v7, v4, 3, 1, 0);
  }

  v14 = [v6 textLabel];
  [(_UIContentViewLabelConfiguration *)v14 _configureWithConstants:v7 traitCollection:v4 forSidebar:1];

  v15 = [v6 subtitleLabel];
  [(_UIContentViewLabelConfiguration *)v15 _configureWithConstants:v7 traitCollection:v4 forSidebar:1];

  v16 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  v17 = [v6 subtitleLabel];
  [(_UIHomeAffordanceObservationRecord *)v17 setLegacyViewServiceSessionIdentifier:v16];

  v18 = [v7 defaultSidebarTextColorForTraitCollection:v4 state:v9 isHeader:0 isSecondaryText:0 style:v8];
  v19 = [v6 textLabel];
  [(UIContentUnavailableImageProperties *)v19 _setTintColor:v18];

  v20 = [v7 defaultSidebarTextColorForTraitCollection:v4 state:v9 isHeader:0 isSecondaryText:1 style:v8];
  v21 = [v6 subtitleLabel];
  [(UIContentUnavailableImageProperties *)v21 _setTintColor:v20];

  v22 = [v7 defaultSidebarImageTintColorForTraitCollection:v4 state:v9 isHeader:0 style:v8];
  v23 = [v6 imageView];
  [(UIContentUnavailableImageProperties *)v23 _setTintColor:v22];

  if ([v9 isHighlighted])
  {
    v24 = [v6 textLabel];
    v25 = v24;
    if (v24)
    {
      v26 = *(v24 + 32);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = _UIConfigurationCompatibilityColorForHighlightedState(v27);

    v29 = [v6 imageView];
    [(UIContentUnavailableImageProperties *)v29 _setTintColor:v28];

    v30 = [v6 textLabel];
    [(UIContentUnavailableImageProperties *)v30 _setTintColor:v28];

    v31 = [v6 subtitleLabel];
    v32 = v31;
    if (v31)
    {
      v33 = *(v31 + 32);
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    v35 = _UIConfigurationCompatibilityColorForHighlightedState(v34);
    v36 = [v6 subtitleLabel];
    [(UIContentUnavailableImageProperties *)v36 _setTintColor:v35];
  }

  if (v6)
  {
    *(v6 + 48) = 1;
  }

  return v6;
}

+ (id)defaultConfiguration
{
  v2 = [a1 defaultListCellConfigurationForState:0];
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = _UITableConstantsForTraitCollection(v3);
  v5 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v6 = [v4 defaultTextColorForCellStyle:3 traitCollection:v3 tintColor:0 state:v5];
  v7 = [v2 textLabel];
  [v7 setHighlightedTextColor:v6];

  return v2;
}

- (id)updatedConfigurationForState:(unint64_t)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = [(_UISubtitleCellContentViewConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  v9 = v6;
  v10 = objc_opt_self();
  v11 = v9;
  if (!v9)
  {
    v11 = +[UITraitCollection _fallbackTraitCollection];
  }

  if (defaultStyle == 1)
  {
    v12 = [(_UISubtitleCellContentViewConfiguration *)v10 defaultOutlineCellConfigurationForState:a3 traitCollection:v11];
    goto LABEL_7;
  }

  if (!defaultStyle)
  {
    v12 = [(_UISubtitleCellContentViewConfiguration *)v10 defaultListCellConfigurationForState:a3 traitCollection:v11];
LABEL_7:
    v13 = v12;
    goto LABEL_9;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:sel__defaultConfigurationForStyle_state_traitCollection_ object:v10 file:@"_UISubtitleCellContentView.m" lineNumber:174 description:{@"Unknown style: %ld", defaultStyle}];

  v13 = 0;
LABEL_9:

  v15 = [v7 imageView];
  v16 = [v13 imageView];
  [(_UIContentViewImageViewConfiguration *)v15 _applyPropertiesFromDefaultConfiguration:v16];

  v17 = [v7 textLabel];
  v18 = [v13 textLabel];
  [(_UIContentViewLabelConfiguration *)v17 _applyPropertiesFromDefaultConfiguration:v18];

  v19 = [v7 subtitleLabel];
  v20 = [v13 subtitleLabel];
  [(_UIContentViewLabelConfiguration *)v19 _applyPropertiesFromDefaultConfiguration:v20];

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

- (_UISubtitleCellContentViewConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _UISubtitleCellContentViewConfiguration;
  v5 = [(_UISubtitleCellContentViewConfiguration *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageView"];
    imageView = v5->_imageView;
    v5->_imageView = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textLabel"];
    textLabel = v5->_textLabel;
    v5->_textLabel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitleLabel"];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v10;

    v5->_axesPreservingSuperviewLayoutMargins = [v4 decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [v4 decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v12;
    v5->_directionalLayoutMargins.leading = v13;
    v5->_directionalLayoutMargins.bottom = v14;
    v5->_directionalLayoutMargins.trailing = v15;
    [v4 decodeDoubleForKey:@"imageToTextPadding"];
    v5->_imageToTextPadding = v16;
    [v4 decodeDoubleForKey:@"textToSubtitlePadding"];
    v5->_textToSubtitlePadding = v17;
    v5->_defaultStyle = [v4 decodeIntegerForKey:@"defaultStyle"];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [v4 decodeBoolForKey:v18];

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([v4 decodeBoolForKey:v19])
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v20;

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
    if ([v4 decodeBoolForKey:v21])
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFB | v22;

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSubtitlePadding"];
    if ([v4 decodeBoolForKey:v23])
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

- (void)encodeWithCoder:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [v5 encodeObject:imageView forKey:@"imageView"];
  [v5 encodeObject:self->_textLabel forKey:@"textLabel"];
  [v5 encodeObject:self->_subtitleLabel forKey:@"subtitleLabel"];
  [v5 encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [v5 encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [v5 encodeDouble:@"imageToTextPadding" forKey:self->_imageToTextPadding];
  [v5 encodeDouble:@"textToSubtitlePadding" forKey:self->_textToSubtitlePadding];
  [v5 encodeInteger:self->_defaultStyle forKey:@"defaultStyle"];
  configurationFlags = self->_configurationFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
  [v5 encodeBool:configurationFlags & 1 forKey:v7];

  v8 = (*&self->_configurationFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
  [v5 encodeBool:v8 forKey:v9];

  v10 = (*&self->_configurationFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
  [v5 encodeBool:v10 forKey:v11];

  v12 = (*&self->_configurationFlags >> 3) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSubtitlePadding"];
  [v5 encodeBool:v12 forKey:v13];
}

- (id)createContentView
{
  v2 = [[_UISubtitleCellContentView alloc] initWithConfiguration:self];

  return v2;
}

- (void)applyToContentView:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UISubtitleCellContentView.m" lineNumber:283 description:{@"Unable to apply %@ to content view %@", self, v6}];
  }

  [v6 setConfiguration:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

    else if (*(a1 + 48) == v3[6] && [(_UIContentViewImageViewConfiguration *)*(a1 + 56) _isEqualToConfigurationQuick:?]&& [(_UIContentViewLabelConfiguration *)*(a1 + 64) _isEqualToConfigurationQuick:?]&& [(_UIContentViewLabelConfiguration *)*(a1 + 72) _isEqualToConfigurationQuick:?]&& *(a1 + 16) == v4[2] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 80), *(v4 + 5)), vceqq_f64(*(a1 + 96), *(v4 + 6))))) & 1) != 0 && *(a1 + 24) == *(v4 + 3) && *(a1 + 32) == *(v4 + 4))
    {
      a1 = _deferringTokenEqualToToken(*(a1 + 40), v4[5]);
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
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UISubtitleCellContentViewConfigurationStyleToString(_UISubtitleCellContentViewConfigurationStyle)"];
      [v7 handleFailureInFunction:v8 file:@"_UISubtitleCellContentView.m" lineNumber:31 description:{@"Unknown style: %ld", defaultStyle}];

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
    v12 = [(_UIContentViewImageViewConfiguration *)imageView _shortDescription];
    v13 = [v11 stringWithFormat:@"imageView = %@", v12];
    [v3 addObject:v13];
  }

  if ([(_UIContentViewLabelConfiguration *)self->_textLabel _hasText])
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(_UIContentViewLabelConfiguration *)self->_textLabel _shortDescription];
    v16 = [v14 stringWithFormat:@"textLabel = %@", v15];
    [v3 addObject:v16];
  }

  if ([(_UIContentViewLabelConfiguration *)self->_subtitleLabel _hasText])
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(_UIContentViewLabelConfiguration *)self->_subtitleLabel _shortDescription];
    v19 = [v17 stringWithFormat:@"subtitleLabel = %@", v18];
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