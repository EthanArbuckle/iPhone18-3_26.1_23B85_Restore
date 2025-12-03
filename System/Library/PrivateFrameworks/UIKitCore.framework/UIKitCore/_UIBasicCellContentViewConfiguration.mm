@interface _UIBasicCellContentViewConfiguration
+ (id)defaultConfiguration;
+ (id)defaultListCellConfigurationForState:(unint64_t)state;
+ (id)defaultListCellConfigurationForState:(void *)state traitCollection:;
+ (id)defaultOutlineCellConfigurationForState:(unint64_t)state;
+ (id)defaultOutlineCellConfigurationForState:(void *)state traitCollection:;
+ (id)defaultOutlineParentCellConfigurationForState:(unint64_t)state;
+ (id)defaultOutlineRootParentCellConfigurationForState:(void *)state traitCollection:;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (_UIBasicCellContentViewConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createContentView;
- (id)updatedConfigurationForState:(unint64_t)state traitCollection:(id)collection;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)quick;
- (void)applyToContentView:(id)view;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIBasicCellContentViewConfiguration

+ (id)defaultListCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBasicCellContentViewConfiguration *)self defaultListCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (id)defaultListCellConfigurationForState:(void *)state traitCollection:
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
  v12 = [v5 defaultTextLabelFontForCellStyle:0];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v12];

  v13 = [v5 defaultTextColorForCellStyle:0 traitCollection:stateCopy tintColor:0 state:v6];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v13];

  [(_UIContentViewLabelConfiguration *)v11 _configureWithConstants:v5 traitCollection:stateCopy forSidebar:0];
  v14 = _UICellContentViewDefaultDirectionalLayoutMargins(v5, stateCopy, 0, 0, 0);
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

+ (id)defaultOutlineParentCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBasicCellContentViewConfiguration *)self defaultOutlineRootParentCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (id)defaultOutlineRootParentCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  v5 = objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(stateCopy);
  v7 = [(_UIBasicCellContentViewConfiguration *)v5 defaultListCellConfigurationForState:a2 traitCollection:stateCopy];
  if ([stateCopy _splitViewControllerContext] == 2)
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
    *(v7 + 64) = _UICellContentViewDefaultDirectionalLayoutMargins(v6, stateCopy, 0, 1, 0);
    *(v7 + 72) = v11;
    *(v7 + 80) = v12;
    *(v7 + 88) = v13;
  }

  else
  {
    _UICellContentViewDefaultDirectionalLayoutMargins(v6, stateCopy, 0, 1, 0);
  }

  textLabel = [v7 textLabel];
  [(_UIContentViewLabelConfiguration *)textLabel _configureWithConstants:v6 traitCollection:stateCopy forSidebar:1];

  if (objc_opt_respondsToSelector())
  {
    defaultSidebarHeaderFont = [v6 defaultSidebarHeaderFont];
    textLabel2 = [v7 textLabel];
    [(_UIHomeAffordanceObservationRecord *)textLabel2 setLegacyViewServiceSessionIdentifier:defaultSidebarHeaderFont];
  }

  v17 = [v6 defaultSidebarTextColorForTraitCollection:stateCopy state:v9 isHeader:1 isSecondaryText:0 style:v8];
  textLabel3 = [v7 textLabel];
  [(UIContentUnavailableImageProperties *)textLabel3 _setTintColor:v17];

  v19 = [v6 defaultSidebarImageTintColorForTraitCollection:stateCopy state:v9 isHeader:1 style:v8];
  imageView = [v7 imageView];
  [(UIContentUnavailableImageProperties *)imageView _setTintColor:v19];

  if ([v9 isHighlighted])
  {
    textLabel4 = [v7 textLabel];
    v22 = textLabel4;
    if (textLabel4)
    {
      v23 = *(textLabel4 + 32);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = _UIConfigurationCompatibilityColorForHighlightedState(v24);

    imageView2 = [v7 imageView];
    [(UIContentUnavailableImageProperties *)imageView2 _setTintColor:v25];

    textLabel5 = [v7 textLabel];
    [(UIContentUnavailableImageProperties *)textLabel5 _setTintColor:v25];
  }

  if (v7)
  {
    *(v7 + 40) = 2;
  }

  return v7;
}

+ (id)defaultOutlineCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBasicCellContentViewConfiguration *)self defaultOutlineCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (id)defaultOutlineCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  v5 = objc_opt_self();
  v6 = [(_UIBasicCellContentViewConfiguration *)v5 defaultListCellConfigurationForState:a2 traitCollection:stateCopy];
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
    *(v6 + 64) = _UICellContentViewDefaultDirectionalLayoutMargins(v7, stateCopy, 0, 1, 0);
    *(v6 + 72) = v11;
    *(v6 + 80) = v12;
    *(v6 + 88) = v13;
  }

  else
  {
    _UICellContentViewDefaultDirectionalLayoutMargins(v7, stateCopy, 0, 1, 0);
  }

  textLabel = [v6 textLabel];
  [(_UIContentViewLabelConfiguration *)textLabel _configureWithConstants:v7 traitCollection:stateCopy forSidebar:1];

  v15 = [v7 defaultSidebarTextColorForTraitCollection:stateCopy state:v9 isHeader:0 isSecondaryText:0 style:v8];
  textLabel2 = [v6 textLabel];
  [(UIContentUnavailableImageProperties *)textLabel2 _setTintColor:v15];

  v17 = [v7 defaultSidebarImageTintColorForTraitCollection:stateCopy state:v9 isHeader:0 style:v8];
  imageView = [v6 imageView];
  [(UIContentUnavailableImageProperties *)imageView _setTintColor:v17];

  if ([v9 isHighlighted])
  {
    textLabel3 = [v6 textLabel];
    v20 = textLabel3;
    if (textLabel3)
    {
      v21 = *(textLabel3 + 32);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = _UIConfigurationCompatibilityColorForHighlightedState(v22);

    imageView2 = [v6 imageView];
    [(UIContentUnavailableImageProperties *)imageView2 _setTintColor:v23];

    textLabel4 = [v6 textLabel];
    [(UIContentUnavailableImageProperties *)textLabel4 _setTintColor:v23];
  }

  if (v6)
  {
    *(v6 + 40) = 1;
  }

  return v6;
}

+ (id)defaultConfiguration
{
  v2 = [self defaultListCellConfigurationForState:0];
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = _UITableConstantsForTraitCollection(v3);
  v5 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v6 = [v4 defaultTextColorForCellStyle:0 traitCollection:v3 tintColor:0 state:v5];
  textLabel = [v2 textLabel];
  [textLabel setHighlightedTextColor:v6];

  return v2;
}

- (id)updatedConfigurationForState:(unint64_t)state traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [(_UIBasicCellContentViewConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  v9 = collectionCopy;
  v10 = objc_opt_self();
  v11 = v9;
  if (!v9)
  {
    v11 = +[UITraitCollection _fallbackTraitCollection];
  }

  switch(defaultStyle)
  {
    case 2:
      v12 = [(_UIBasicCellContentViewConfiguration *)v10 defaultOutlineRootParentCellConfigurationForState:state traitCollection:v11];
      goto LABEL_9;
    case 1:
      v12 = [(_UIBasicCellContentViewConfiguration *)v10 defaultOutlineCellConfigurationForState:state traitCollection:v11];
      goto LABEL_9;
    case 0:
      v12 = [(_UIBasicCellContentViewConfiguration *)v10 defaultListCellConfigurationForState:state traitCollection:v11];
LABEL_9:
      v13 = v12;
      goto LABEL_11;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:sel__defaultConfigurationForStyle_state_traitCollection_ object:v10 file:@"_UIBasicCellContentView.m" lineNumber:207 description:{@"Unknown style: %ld", defaultStyle}];

  v13 = 0;
LABEL_11:

  imageView = [v7 imageView];
  imageView2 = [v13 imageView];
  [(_UIContentViewImageViewConfiguration *)imageView _applyPropertiesFromDefaultConfiguration:imageView2];

  textLabel = [v7 textLabel];
  textLabel2 = [v13 textLabel];
  [(_UIContentViewLabelConfiguration *)textLabel _applyPropertiesFromDefaultConfiguration:textLabel2];

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

- (_UIBasicCellContentViewConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _UIBasicCellContentViewConfiguration;
  v5 = [(_UIBasicCellContentViewConfiguration *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageView"];
    imageView = v5->_imageView;
    v5->_imageView = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textLabel"];
    textLabel = v5->_textLabel;
    v5->_textLabel = v8;

    v5->_axesPreservingSuperviewLayoutMargins = [coderCopy decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [coderCopy decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v10;
    v5->_directionalLayoutMargins.leading = v11;
    v5->_directionalLayoutMargins.bottom = v12;
    v5->_directionalLayoutMargins.trailing = v13;
    [coderCopy decodeDoubleForKey:@"imageToTextPadding"];
    v5->_imageToTextPadding = v14;
    v5->_defaultStyle = [coderCopy decodeIntegerForKey:@"defaultStyle"];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [coderCopy decodeBoolForKey:v15];

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([coderCopy decodeBoolForKey:v16])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v17;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
    if ([coderCopy decodeBoolForKey:v18])
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

- (void)encodeWithCoder:(id)coder
{
  imageView = self->_imageView;
  coderCopy = coder;
  [coderCopy encodeObject:imageView forKey:@"imageView"];
  [coderCopy encodeObject:self->_textLabel forKey:@"textLabel"];
  [coderCopy encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [coderCopy encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [coderCopy encodeDouble:@"imageToTextPadding" forKey:self->_imageToTextPadding];
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
}

- (id)createContentView
{
  v2 = [[_UIBasicCellContentView alloc] initWithConfiguration:self];

  return v2;
}

- (void)applyToContentView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBasicCellContentView.m" lineNumber:308 description:{@"Unable to apply %@ to content view %@", self, viewCopy}];
  }

  [viewCopy setConfiguration:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

    else if (*(quick + 40) == v3[5] && [(_UIContentViewImageViewConfiguration *)*(quick + 48) _isEqualToConfigurationQuick:?]&& [(_UIContentViewLabelConfiguration *)*(quick + 56) _isEqualToConfigurationQuick:?]&& *(quick + 16) == v4[2] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(quick + 64), *(v4 + 4)), vceqq_f64(*(quick + 80), *(v4 + 5))))) & 1) != 0 && *(quick + 24) == *(v4 + 3))
    {
      quick = _deferringTokenEqualToToken(*(quick + 32), v4[4]);
    }

    else
    {
      quick = 0;
    }
  }

  return quick;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UIBasicCellContentViewConfigurationStyleToString(_UIBasicCellContentViewConfigurationStyle)"];
    [currentHandler handleFailureInFunction:v8 file:@"_UIBasicCellContentView.m" lineNumber:35 description:{@"Unknown style: %ld", defaultStyle}];

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