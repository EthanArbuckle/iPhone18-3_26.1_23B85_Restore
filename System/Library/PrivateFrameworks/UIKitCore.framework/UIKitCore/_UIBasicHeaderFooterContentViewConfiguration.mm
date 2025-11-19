@interface _UIBasicHeaderFooterContentViewConfiguration
+ (id)defaultFooterConfiguration;
+ (id)defaultGroupedFooterConfiguration;
+ (id)defaultGroupedHeaderConfiguration;
+ (id)defaultHeaderConfiguration;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (_UIBasicHeaderFooterContentViewConfiguration)initWithCoder:(id)a3;
- (id)_initWithTextLabel:(uint64_t)a3 isHeader:(int)a4 resetsVerticalLayoutMargins:(void *)a5 traitCollection:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createContentView;
- (id)updatedConfigurationForState:(unint64_t)a3 traitCollection:(id)a4;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1;
- (void)_configureForResetsVerticalLayoutMargins:(uint64_t)a3 isHeader:(void *)a4 withTraitCollection:;
- (void)applyToContentView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIBasicHeaderFooterContentViewConfiguration

+ (id)defaultHeaderConfiguration
{
  v2 = +[UITraitCollection _fallbackTraitCollection];
  objc_opt_self();
  v3 = _createDefaultLabelConfiguration(1, 0);
  v4 = [[_UIBasicHeaderFooterContentViewConfiguration alloc] _initWithTextLabel:v3 isHeader:1 resetsVerticalLayoutMargins:1 traitCollection:v2];

  if (v4)
  {
    v4[3] = 0;
  }

  return v4;
}

- (id)_initWithTextLabel:(uint64_t)a3 isHeader:(int)a4 resetsVerticalLayoutMargins:(void *)a5 traitCollection:
{
  v10 = a2;
  v11 = a5;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = _UIBasicHeaderFooterContentViewConfiguration;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 4, a2);
      [(_UIBasicHeaderFooterContentViewConfiguration *)a1 _configureForResetsVerticalLayoutMargins:a4 isHeader:a3 withTraitCollection:v11];
    }
  }

  return a1;
}

+ (id)defaultFooterConfiguration
{
  v2 = +[UITraitCollection _fallbackTraitCollection];
  objc_opt_self();
  v3 = _createDefaultLabelConfiguration(0, 0);
  v4 = [[_UIBasicHeaderFooterContentViewConfiguration alloc] _initWithTextLabel:v3 isHeader:0 resetsVerticalLayoutMargins:1 traitCollection:v2];

  if (v4)
  {
    v4[3] = 1;
  }

  return v4;
}

+ (id)defaultGroupedHeaderConfiguration
{
  v2 = +[UITraitCollection _fallbackTraitCollection];
  objc_opt_self();
  v3 = _createDefaultLabelConfiguration(1, 1);
  v4 = [[_UIBasicHeaderFooterContentViewConfiguration alloc] _initWithTextLabel:v3 isHeader:1 resetsVerticalLayoutMargins:0 traitCollection:v2];

  if (v4)
  {
    v4[3] = 2;
  }

  return v4;
}

+ (id)defaultGroupedFooterConfiguration
{
  v2 = +[UITraitCollection _fallbackTraitCollection];
  objc_opt_self();
  v3 = _createDefaultLabelConfiguration(0, 1);
  v4 = [[_UIBasicHeaderFooterContentViewConfiguration alloc] _initWithTextLabel:v3 isHeader:0 resetsVerticalLayoutMargins:0 traitCollection:v2];

  if (v4)
  {
    v4[3] = 3;
  }

  return v4;
}

- (id)updatedConfigurationForState:(unint64_t)a3 traitCollection:(id)a4
{
  v5 = a4;
  v6 = [(_UIBasicHeaderFooterContentViewConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  v8 = v5;
  v9 = objc_opt_self();
  v10 = v8;
  if (!v8)
  {
    v10 = +[UITraitCollection _fallbackTraitCollection];
  }

  if (defaultStyle > 1)
  {
    if (defaultStyle == 2)
    {
      v11 = [v9 defaultGroupedHeaderConfiguration];
      goto LABEL_13;
    }

    if (defaultStyle == 3)
    {
      v11 = [v9 defaultGroupedFooterConfiguration];
      goto LABEL_13;
    }

LABEL_10:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:sel__defaultConfigurationForStyle_state_traitCollection_ object:v9 file:@"_UIBasicHeaderFooterContentView.m" lineNumber:160 description:{@"Unknown style: %ld", defaultStyle}];

    v13 = 0;
    goto LABEL_14;
  }

  if (!defaultStyle)
  {
    v11 = [v9 defaultHeaderConfiguration];
    goto LABEL_13;
  }

  if (defaultStyle != 1)
  {
    goto LABEL_10;
  }

  v11 = [v9 defaultFooterConfiguration];
LABEL_13:
  v13 = v11;
LABEL_14:

  v14 = [v6 textLabel];
  v15 = [v13 textLabel];
  [(_UIContentViewLabelConfiguration *)v14 _applyPropertiesFromDefaultConfiguration:v15];

  configurationFlags = self->_configurationFlags;
  if (configurationFlags)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    v17 = *(v13 + 16);
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = 0;
  if (v6)
  {
LABEL_17:
    *(v6 + 16) = v17;
    configurationFlags = self->_configurationFlags;
  }

LABEL_18:
  if ((configurationFlags & 2) != 0)
  {
    goto LABEL_22;
  }

  if (v13)
  {
    v18 = *(v13 + 40);
    v19 = *(v13 + 56);
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v18 = 0uLL;
  v19 = 0uLL;
  if (v6)
  {
LABEL_21:
    *(v6 + 40) = v18;
    *(v6 + 56) = v19;
  }

LABEL_22:

  return v6;
}

- (void)_configureForResetsVerticalLayoutMargins:(uint64_t)a3 isHeader:(void *)a4 withTraitCollection:
{
  v7 = a4;
  if (a1)
  {
    if (!v7)
    {
      v7 = +[UITraitCollection _fallbackTraitCollection];
    }

    v20 = v7;
    v8 = _UITableConstantsForTraitCollection(v7);
    [v8 defaultHeaderFooterLayoutMarginsForTableViewStyle:a2 ^ 1u isHeader:a3 isFirstSection:0];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [v20 layoutDirection];
    if (v17 == 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v12;
    }

    if (v17 == 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v16;
    }

    *(a1 + 40) = v10;
    *(a1 + 48) = v18;
    *(a1 + 56) = v14;
    *(a1 + 64) = v19;
    *(a1 + 16) = 1;
  }

  else
  {
    v20 = v7;
  }
}

- (_UIBasicHeaderFooterContentViewConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UIBasicHeaderFooterContentViewConfiguration;
  v5 = [(_UIBasicHeaderFooterContentViewConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textLabel"];
    textLabel = v5->_textLabel;
    v5->_textLabel = v6;

    v5->_axesPreservingSuperviewLayoutMargins = [v4 decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [v4 decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v8;
    v5->_directionalLayoutMargins.leading = v9;
    v5->_directionalLayoutMargins.bottom = v10;
    v5->_directionalLayoutMargins.trailing = v11;
    v5->_defaultStyle = [v4 decodeIntegerForKey:@"defaultStyle"];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [v4 decodeBoolForKey:v12];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([v4 decodeBoolForKey:v13])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  textLabel = self->_textLabel;
  v5 = a3;
  [v5 encodeObject:textLabel forKey:@"textLabel"];
  [v5 encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [v5 encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [v5 encodeInteger:self->_defaultStyle forKey:@"defaultStyle"];
  configurationFlags = self->_configurationFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
  [v5 encodeBool:configurationFlags & 1 forKey:v7];

  v8 = (*&self->_configurationFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
  [v5 encodeBool:v8 forKey:v9];
}

- (id)createContentView
{
  v2 = [[_UIBasicHeaderFooterContentView alloc] initWithConfiguration:self];

  return v2;
}

- (void)applyToContentView:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIBasicHeaderFooterContentView.m" lineNumber:247 description:{@"Unable to apply %@ to content view %@", self, v6}];
  }

  [v6 setConfiguration:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(_UIContentViewLabelConfiguration *)self->_textLabel copy];
    v6 = *(v4 + 32);
    *(v4 + 32) = v5;

    *(v4 + 16) = self->_axesPreservingSuperviewLayoutMargins;
    v7 = *&self->_directionalLayoutMargins.top;
    *(v4 + 56) = *&self->_directionalLayoutMargins.bottom;
    *(v4 + 40) = v7;
    *(v4 + 24) = self->_defaultStyle;
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
      if (self->_defaultStyle == v6->_defaultStyle && [(_UIContentViewLabelConfiguration *)self->_textLabel _isEqualToConfiguration:?]&& self->_axesPreservingSuperviewLayoutMargins == v7->_axesPreservingSuperviewLayoutMargins)
      {
        LOBYTE(self) = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_directionalLayoutMargins.top, *&v7->_directionalLayoutMargins.top), vceqq_f64(*&self->_directionalLayoutMargins.bottom, *&v7->_directionalLayoutMargins.bottom))));
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

  return self & 1;
}

- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 == a1)
    {
      LOBYTE(a1) = 1;
    }

    else if (*(a1 + 24) == v3[3] && [(_UIContentViewLabelConfiguration *)*(a1 + 32) _isEqualToConfigurationQuick:?]&& *(a1 + 16) == v4[2])
    {
      LOBYTE(a1) = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(v4 + 5)), vceqq_f64(*(a1 + 56), *(v4 + 7)))));
    }

    else
    {
      LOBYTE(a1) = 0;
    }
  }

  return a1 & 1;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle >= 4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UIBasicHeaderFooterContentViewConfigurationStyleToString(_UIBasicHeaderFooterContentViewConfigurationStyle)"];
    [v7 handleFailureInFunction:v8 file:@"_UIBasicHeaderFooterContentView.m" lineNumber:36 description:{@"Unknown style: %ld", defaultStyle}];

    v6 = 0;
  }

  else
  {
    v6 = off_1E70F6B18[defaultStyle];
  }

  v9 = [v4 stringWithFormat:@"Base Style = %@", v6];
  [v3 addObject:v9];

  if ([(_UIContentViewLabelConfiguration *)self->_textLabel _hasText])
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(_UIContentViewLabelConfiguration *)self->_textLabel _shortDescription];
    v12 = [v10 stringWithFormat:@"textLabel = %@", v11];
    [v3 addObject:v12];
  }

  v13 = *&self->_directionalLayoutMargins.top;
  v14 = *&self->_directionalLayoutMargins.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v13), vceqzq_f64(v14))))))
  {
    leading = self->_directionalLayoutMargins.leading;
    v16 = MEMORY[0x1E696AEC0];
    trailing = self->_directionalLayoutMargins.trailing;
    v18 = NSStringFromDirectionalEdgeInsets(*v13.f64);
    v19 = [v16 stringWithFormat:@"directionalLayoutMargins = %@", v18];
    [v3 addObject:v19];
  }

  axesPreservingSuperviewLayoutMargins = self->_axesPreservingSuperviewLayoutMargins;
  if (axesPreservingSuperviewLayoutMargins)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = _UIContentViewStringForAxis(axesPreservingSuperviewLayoutMargins);
    v23 = [v21 stringWithFormat:@"axesPreservingSuperviewLayoutMargins = %@", v22];
    [v3 addObject:v23];
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [v3 componentsJoinedByString:@" "];;
  v28 = [v24 stringWithFormat:@"<%@: %p %@>", v26, self, v27];;

  return v28;
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