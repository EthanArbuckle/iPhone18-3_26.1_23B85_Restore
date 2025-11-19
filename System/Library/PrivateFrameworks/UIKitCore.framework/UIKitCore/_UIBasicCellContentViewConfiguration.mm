@interface _UIBasicCellContentViewConfiguration
+ (id)defaultConfiguration;
+ (id)defaultListCellConfigurationForState:(unint64_t)a3;
+ (id)defaultListCellConfigurationForState:(void *)a3 traitCollection:;
+ (id)defaultOutlineCellConfigurationForState:(unint64_t)a3;
+ (id)defaultOutlineCellConfigurationForState:(void *)a3 traitCollection:;
+ (id)defaultOutlineParentCellConfigurationForState:(unint64_t)a3;
+ (id)defaultOutlineRootParentCellConfigurationForState:(void *)a3 traitCollection:;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (_UIBasicCellContentViewConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createContentView;
- (id)updatedConfigurationForState:(unint64_t)a3 traitCollection:(id)a4;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1;
- (void)applyToContentView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIBasicCellContentViewConfiguration

+ (id)defaultListCellConfigurationForState:(unint64_t)a3
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBasicCellContentViewConfiguration *)a1 defaultListCellConfigurationForState:a3 traitCollection:v5];

  return v6;
}

+ (id)defaultListCellConfigurationForState:(void *)a3 traitCollection:
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
  v12 = [v5 defaultTextLabelFontForCellStyle:0];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  v13 = [v5 defaultTextColorForCellStyle:0 traitCollection:v4 tintColor:0 state:v6];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v13];

  [(_UIContentViewLabelConfiguration *)v11 _configureWithConstants:v5 traitCollection:v4 forSidebar:0];
  v14 = _UICellContentViewDefaultDirectionalLayoutMargins(v5, v4, 0, 0, 0);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v5 defaultImageToTextPaddingForSidebar:0];
  v22 = v21;
  v23 = [_UIBasicCellContentViewConfiguration alloc];
  v24 = v7;
  v25 = v11;
  if (v23 && (v29.receiver = v23, v29.super_class = _UIBasicCellContentViewConfiguration, (v26 = objc_msgSendSuper2(&v29, sel_init)) != 0))
  {
    v27 = v26;
    objc_storeStrong(v26 + 6, v7);
    objc_storeStrong(v27 + 7, v11);
    v27[2] = 1;
    *(v27 + 8) = v14;
    v27[9] = v16;
    v27[10] = v18;
    v27[11] = v20;
    v27[3] = v22;

    v27[5] = 0;
  }

  else
  {

    v27 = 0;
  }

  return v27;
}

+ (id)defaultOutlineParentCellConfigurationForState:(unint64_t)a3
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBasicCellContentViewConfiguration *)a1 defaultOutlineRootParentCellConfigurationForState:a3 traitCollection:v5];

  return v6;
}

+ (id)defaultOutlineRootParentCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(v4);
  v7 = [(_UIBasicCellContentViewConfiguration *)v5 defaultListCellConfigurationForState:a2 traitCollection:v4];
  if ([v4 _splitViewControllerContext] == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  [v6 defaultImageToTextPaddingForSidebar:1];
  if (v7)
  {
    *(v7 + 24) = v10;
    *(v7 + 64) = _UICellContentViewDefaultDirectionalLayoutMargins(v6, v4, 0, 1, 0);
    *(v7 + 72) = v11;
    *(v7 + 80) = v12;
    *(v7 + 88) = v13;
  }

  else
  {
    _UICellContentViewDefaultDirectionalLayoutMargins(v6, v4, 0, 1, 0);
  }

  v14 = [v7 textLabel];
  [(_UIContentViewLabelConfiguration *)v14 _configureWithConstants:v6 traitCollection:v4 forSidebar:1];

  if (objc_opt_respondsToSelector())
  {
    v15 = [v6 defaultSidebarHeaderFont];
    v16 = [v7 textLabel];
    [(_UIHomeAffordanceObservationRecord *)v16 setLegacyViewServiceSessionIdentifier:v15];
  }

  v17 = [v6 defaultSidebarTextColorForTraitCollection:v4 state:v9 isHeader:1 isSecondaryText:0 style:v8];
  v18 = [v7 textLabel];
  [(UIContentUnavailableImageProperties *)v18 _setTintColor:v17];

  v19 = [v6 defaultSidebarImageTintColorForTraitCollection:v4 state:v9 isHeader:1 style:v8];
  v20 = [v7 imageView];
  [(UIContentUnavailableImageProperties *)v20 _setTintColor:v19];

  if ([v9 isHighlighted])
  {
    v21 = [v7 textLabel];
    v22 = v21;
    if (v21)
    {
      v23 = *(v21 + 32);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = _UIConfigurationCompatibilityColorForHighlightedState(v24);

    v26 = [v7 imageView];
    [(UIContentUnavailableImageProperties *)v26 _setTintColor:v25];

    v27 = [v7 textLabel];
    [(UIContentUnavailableImageProperties *)v27 _setTintColor:v25];
  }

  if (v7)
  {
    *(v7 + 40) = 2;
  }

  return v7;
}

+ (id)defaultOutlineCellConfigurationForState:(unint64_t)a3
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBasicCellContentViewConfiguration *)a1 defaultOutlineCellConfigurationForState:a3 traitCollection:v5];

  return v6;
}

+ (id)defaultOutlineCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_UIBasicCellContentViewConfiguration *)v5 defaultListCellConfigurationForState:a2 traitCollection:v4];
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
    *(v6 + 64) = _UICellContentViewDefaultDirectionalLayoutMargins(v7, v4, 0, 1, 0);
    *(v6 + 72) = v11;
    *(v6 + 80) = v12;
    *(v6 + 88) = v13;
  }

  else
  {
    _UICellContentViewDefaultDirectionalLayoutMargins(v7, v4, 0, 1, 0);
  }

  v14 = [v6 textLabel];
  [(_UIContentViewLabelConfiguration *)v14 _configureWithConstants:v7 traitCollection:v4 forSidebar:1];

  v15 = [v7 defaultSidebarTextColorForTraitCollection:v4 state:v9 isHeader:0 isSecondaryText:0 style:v8];
  v16 = [v6 textLabel];
  [(UIContentUnavailableImageProperties *)v16 _setTintColor:v15];

  v17 = [v7 defaultSidebarImageTintColorForTraitCollection:v4 state:v9 isHeader:0 style:v8];
  v18 = [v6 imageView];
  [(UIContentUnavailableImageProperties *)v18 _setTintColor:v17];

  if ([v9 isHighlighted])
  {
    v19 = [v6 textLabel];
    v20 = v19;
    if (v19)
    {
      v21 = *(v19 + 32);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = _UIConfigurationCompatibilityColorForHighlightedState(v22);

    v24 = [v6 imageView];
    [(UIContentUnavailableImageProperties *)v24 _setTintColor:v23];

    v25 = [v6 textLabel];
    [(UIContentUnavailableImageProperties *)v25 _setTintColor:v23];
  }

  if (v6)
  {
    *(v6 + 40) = 1;
  }

  return v6;
}

+ (id)defaultConfiguration
{
  v2 = [a1 defaultListCellConfigurationForState:0];
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = _UITableConstantsForTraitCollection(v3);
  v5 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v6 = [v4 defaultTextColorForCellStyle:0 traitCollection:v3 tintColor:0 state:v5];
  v7 = [v2 textLabel];
  [v7 setHighlightedTextColor:v6];

  return v2;
}

- (id)updatedConfigurationForState:(unint64_t)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = [(_UIBasicCellContentViewConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  v9 = v6;
  v10 = objc_opt_self();
  v11 = v9;
  if (!v9)
  {
    v11 = +[UITraitCollection _fallbackTraitCollection];
  }

  switch(defaultStyle)
  {
    case 2:
      v12 = [(_UIBasicCellContentViewConfiguration *)v10 defaultOutlineRootParentCellConfigurationForState:a3 traitCollection:v11];
      goto LABEL_9;
    case 1:
      v12 = [(_UIBasicCellContentViewConfiguration *)v10 defaultOutlineCellConfigurationForState:a3 traitCollection:v11];
      goto LABEL_9;
    case 0:
      v12 = [(_UIBasicCellContentViewConfiguration *)v10 defaultListCellConfigurationForState:a3 traitCollection:v11];
LABEL_9:
      v13 = v12;
      goto LABEL_11;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:sel__defaultConfigurationForStyle_state_traitCollection_ object:v10 file:@"_UIBasicCellContentView.m" lineNumber:207 description:{@"Unknown style: %ld", defaultStyle}];

  v13 = 0;
LABEL_11:

  v15 = [v7 imageView];
  v16 = [v13 imageView];
  [(_UIContentViewImageViewConfiguration *)v15 _applyPropertiesFromDefaultConfiguration:v16];

  v17 = [v7 textLabel];
  v18 = [v13 textLabel];
  [(_UIContentViewLabelConfiguration *)v17 _applyPropertiesFromDefaultConfiguration:v18];

  configurationFlags = self->_configurationFlags;
  if (configurationFlags)
  {
    goto LABEL_15;
  }

  if (v13)
  {
    v20 = *(v13 + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = 0;
  if (v7)
  {
LABEL_14:
    *(v7 + 16) = v20;
    configurationFlags = self->_configurationFlags;
  }

LABEL_15:
  if ((configurationFlags & 2) != 0)
  {
    goto LABEL_19;
  }

  if (v13)
  {
    v21 = *(v13 + 64);
    v22 = *(v13 + 80);
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v21 = 0uLL;
  v22 = 0uLL;
  if (v7)
  {
LABEL_18:
    *(v7 + 64) = v21;
    *(v7 + 80) = v22;
    configurationFlags = self->_configurationFlags;
  }

LABEL_19:
  if ((configurationFlags & 4) != 0)
  {
    goto LABEL_23;
  }

  if (v13)
  {
    v23 = *(v13 + 24);
    if (!v7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v23 = 0;
  if (v7)
  {
LABEL_22:
    *(v7 + 24) = v23;
  }

LABEL_23:

  return v7;
}

- (_UIBasicCellContentViewConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _UIBasicCellContentViewConfiguration;
  v5 = [(_UIBasicCellContentViewConfiguration *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageView"];
    imageView = v5->_imageView;
    v5->_imageView = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textLabel"];
    textLabel = v5->_textLabel;
    v5->_textLabel = v8;

    v5->_axesPreservingSuperviewLayoutMargins = [v4 decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [v4 decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v10;
    v5->_directionalLayoutMargins.leading = v11;
    v5->_directionalLayoutMargins.bottom = v12;
    v5->_directionalLayoutMargins.trailing = v13;
    [v4 decodeDoubleForKey:@"imageToTextPadding"];
    v5->_imageToTextPadding = v14;
    v5->_defaultStyle = [v4 decodeIntegerForKey:@"defaultStyle"];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [v4 decodeBoolForKey:v15];

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([v4 decodeBoolForKey:v16])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v17;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
    if ([v4 decodeBoolForKey:v18])
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFB | v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [v5 encodeObject:imageView forKey:@"imageView"];
  [v5 encodeObject:self->_textLabel forKey:@"textLabel"];
  [v5 encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [v5 encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [v5 encodeDouble:@"imageToTextPadding" forKey:self->_imageToTextPadding];
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
}

- (id)createContentView
{
  v2 = [[_UIBasicCellContentView alloc] initWithConfiguration:self];

  return v2;
}

- (void)applyToContentView:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIBasicCellContentView.m" lineNumber:308 description:{@"Unable to apply %@ to content view %@", self, v6}];
  }

  [v6 setConfiguration:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(_UIContentViewImageViewConfiguration *)self->_imageView copy];
    v6 = *(v4 + 48);
    *(v4 + 48) = v5;

    v7 = [(_UIContentViewLabelConfiguration *)self->_textLabel copy];
    v8 = *(v4 + 56);
    *(v4 + 56) = v7;

    *(v4 + 16) = self->_axesPreservingSuperviewLayoutMargins;
    v9 = *&self->_directionalLayoutMargins.bottom;
    *(v4 + 64) = *&self->_directionalLayoutMargins.top;
    *(v4 + 80) = v9;
    *(v4 + 24) = self->_imageToTextPadding;
    v10 = [(_UIContentViewEditingConfiguration *)self->_textLabelEditingConfiguration copy];
    v11 = *(v4 + 32);
    *(v4 + 32) = v10;

    *(v4 + 40) = self->_defaultStyle;
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
      if (self->_defaultStyle == v6->_defaultStyle && [(_UIContentViewImageViewConfiguration *)self->_imageView _isEqualToConfiguration:?]&& [(_UIContentViewLabelConfiguration *)self->_textLabel _isEqualToConfiguration:?]&& self->_axesPreservingSuperviewLayoutMargins == v7->_axesPreservingSuperviewLayoutMargins && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_directionalLayoutMargins.top, *&v7->_directionalLayoutMargins.top), vceqq_f64(*&self->_directionalLayoutMargins.bottom, *&v7->_directionalLayoutMargins.bottom)))) & 1) != 0 && self->_imageToTextPadding == v7->_imageToTextPadding)
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

    else if (*(a1 + 40) == v3[5] && [(_UIContentViewImageViewConfiguration *)*(a1 + 48) _isEqualToConfigurationQuick:?]&& [(_UIContentViewLabelConfiguration *)*(a1 + 56) _isEqualToConfigurationQuick:?]&& *(a1 + 16) == v4[2] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(v4 + 4)), vceqq_f64(*(a1 + 80), *(v4 + 5))))) & 1) != 0 && *(a1 + 24) == *(v4 + 3))
    {
      a1 = _deferringTokenEqualToToken(*(a1 + 32), v4[4]);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle >= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UIBasicCellContentViewConfigurationStyleToString(_UIBasicCellContentViewConfigurationStyle)"];
    [v7 handleFailureInFunction:v8 file:@"_UIBasicCellContentView.m" lineNumber:35 description:{@"Unknown style: %ld", defaultStyle}];

    v6 = 0;
  }

  else
  {
    v6 = off_1E7129E38[defaultStyle];
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

  v17 = *&self->_directionalLayoutMargins.top;
  v18 = *&self->_directionalLayoutMargins.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v17), vceqzq_f64(v18))))))
  {
    leading = self->_directionalLayoutMargins.leading;
    v20 = MEMORY[0x1E696AEC0];
    trailing = self->_directionalLayoutMargins.trailing;
    v22 = NSStringFromDirectionalEdgeInsets(*v17.f64);
    v23 = [v20 stringWithFormat:@"directionalLayoutMargins = %@", v22];
    [v3 addObject:v23];
  }

  axesPreservingSuperviewLayoutMargins = self->_axesPreservingSuperviewLayoutMargins;
  if (axesPreservingSuperviewLayoutMargins)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = _UIContentViewStringForAxis(axesPreservingSuperviewLayoutMargins);
    v27 = [v25 stringWithFormat:@"axesPreservingSuperviewLayoutMargins = %@", v26];
    [v3 addObject:v27];
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageToTextPadding = %g", *&self->_imageToTextPadding];
  [v3 addObject:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = [v3 componentsJoinedByString:@" "];;
  v33 = [v29 stringWithFormat:@"<%@: %p %@>", v31, self, v32];;

  return v33;
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