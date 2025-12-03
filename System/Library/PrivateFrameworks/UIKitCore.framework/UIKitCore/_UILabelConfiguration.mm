@interface _UILabelConfiguration
+ (_UILabelConfiguration)new;
- (BOOL)isEqual:(id)equal;
- (CGRect)bounds;
- (UIColor)_resolvedTextColor;
- (_UILabelConfiguration)init;
- (_UILabelConfiguration)initWithCoder:(id)coder;
- (_UILabelConfiguration)initWithTraitCollection:(id)collection;
- (id)_content;
- (id)_initEmpty;
- (id)_internal;
- (id)_resolvedStringDrawingContext;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_setDefaultAttributes:(id)attributes;
- (void)encodeWithCoder:(id)coder;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setAllowsDefaultTighteningForTruncation:(BOOL)truncation;
- (void)setAttributedText:(id)text;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setText:(id)text;
@end

@implementation _UILabelConfiguration

- (id)_content
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

- (_UILabelConfiguration)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v17.receiver = self;
  v17.super_class = _UILabelConfiguration;
  v5 = [(_UILabelConfiguration *)&v17 init];
  if (v5)
  {
    [collectionCopy displayScale];
    *(v5 + 19) = v6;
    v7 = +[UILabel _defaultAttributes];
    v8 = [v7 mutableCopy];

    v9 = [v8 objectForKeyedSubscript:*off_1E70EC988];
    v10 = v9;
    if (v9)
    {
      *(v5 + 4) = [v9 lineBreakMode];
      *(v5 + 42) |= 0x8000u;
      *(v5 + 5) = [v10 lineBreakStrategy];
      *(v5 + 42) |= 0x10000u;
      alignment = [v10 alignment];
      v12 = *(v5 + 42);
    }

    else
    {
      v13 = *(v5 + 42);
      *(v5 + 2) = xmmword_18A678770;
      v12 = v13 | 0x18000;
      alignment = 4;
    }

    *(v5 + 3) = alignment;
    *(v5 + 42) = v12 | 0x4000;
    v14 = [[_UILabelContent alloc] initWithDefaultAttributes:v8];
    v15 = *(v5 + 1);
    *(v5 + 1) = v14;

    *(v5 + 42) |= 0x80u;
  }

  return v5;
}

+ (_UILabelConfiguration)new
{
  v2 = objc_opt_class();

  return objc_alloc_init(v2);
}

- (_UILabelConfiguration)init
{
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = [(_UILabelConfiguration *)self initWithTraitCollection:v3];

  return v4;
}

- (id)_initEmpty
{
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = [(_UILabelConfiguration *)self initWithTraitCollection:v3];

  if (v4)
  {
    v5 = [_UILabelContent alloc];
    v6 = [(_UILabelContent *)v5 initWithDefaultAttributes:MEMORY[0x1E695E0F8]];
    content = v4->_content;
    v4->_content = v6;
  }

  return v4;
}

- (_UILabelConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  _initEmpty = [(_UILabelConfiguration *)self _initEmpty];
  if (_initEmpty)
  {
    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_defaultAttributes"])
    {
      content = _initEmpty->_content;
      v7 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_hasCustomized_defaultAttributes"];
      v8 = [(_UILabelContent *)content contentWithDefaultAttributes:v7];
      v9 = _initEmpty->_content;
      _initEmpty->_content = v8;

      *&_initEmpty->_configurationFlags |= 0x80u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_text"])
    {
      v10 = _initEmpty->_content;
      v11 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_hasCustomized_text"];
      v12 = [(_UILabelContent *)v10 contentWithString:v11];
      v13 = _initEmpty->_content;
      _initEmpty->_content = v12;

      *&_initEmpty->_configurationFlags |= 0x20u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_attributedText"])
    {
      v14 = _initEmpty->_content;
      v15 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_hasCustomized_attributedText"];
      v16 = [(_UILabelContent *)v14 contentWithAttributedString:v15];
      v17 = _initEmpty->_content;
      _initEmpty->_content = v16;

      *&_initEmpty->_configurationFlags |= 0x40u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_textColor"])
    {
      v18 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_textColor"];
      textColor = _initEmpty->_textColor;
      _initEmpty->_textColor = v18;

      *&_initEmpty->_configurationFlags |= 0x200u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_highlightedTextColor"])
    {
      v20 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_highlightedTextColor"];
      highlightedTextColor = _initEmpty->_highlightedTextColor;
      _initEmpty->_highlightedTextColor = v20;

      *&_initEmpty->_configurationFlags |= 0x400u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_textBackgroundColor"])
    {
      v22 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_textBackgroundColor"];
      textBackgroundColor = _initEmpty->_textBackgroundColor;
      _initEmpty->_textBackgroundColor = v22;

      *&_initEmpty->_configurationFlags |= 0x800u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_backgroundColor"])
    {
      v24 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_backgroundColor"];
      backgroundColor = _initEmpty->_backgroundColor;
      _initEmpty->_backgroundColor = v24;

      *&_initEmpty->_configurationFlags |= 0x2000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_shadow"])
    {
      v26 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_shadow"];
      shadow = _initEmpty->_shadow;
      _initEmpty->_shadow = v26;

      *&_initEmpty->_configurationFlags |= 0x1000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_font"])
    {
      v28 = [coderCopy decodeObjectForKey:@"UILabelConfiguration_font"];
      font = _initEmpty->_font;
      _initEmpty->_font = v28;

      *&_initEmpty->_configurationFlags |= 0x100u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_lineBreakMode"])
    {
      _initEmpty->_lineBreakMode = [coderCopy decodeIntForKey:@"UILabelConfiguration_lineBreakMode"];
      *&_initEmpty->_configurationFlags |= 0x8000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_lineBreakStrategy"])
    {
      _initEmpty->_lineBreakStrategy = [coderCopy decodeIntForKey:@"UILabelConfiguration_lineBreakStrategy"];
      *&_initEmpty->_configurationFlags |= 0x10000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_textAlignment"])
    {
      _initEmpty->_textAlignment = [coderCopy decodeIntForKey:@"UILabelConfiguration_textAlignment"];
      *&_initEmpty->_configurationFlags |= 0x4000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_numberOfLines"])
    {
      _initEmpty->_numberOfLines = [coderCopy decodeIntForKey:@"UILabelConfiguration_numberOfLines"];
      *&_initEmpty->_configurationFlags |= 0x20000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_minimumScaleFactor"])
    {
      [coderCopy decodeFloatForKey:@"UILabelConfiguration_minimumScaleFactor"];
      _initEmpty->_minimumScaleFactor = v30;
      *&_initEmpty->_configurationFlags |= 0x80000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_adjustsFontSizeToFitWidth"])
    {
      _initEmpty->_configurationFlags = (*&_initEmpty->_configurationFlags & 0xFFFFFFFE | [coderCopy decodeBoolForKey:@"UILabelConfiguration_adjustsFontSizeToFitWidth"] | 0x40000);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_adjustsFontForContentSizeCategory"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_adjustsFontForContentSizeCategory"])
      {
        v31 = 2097156;
      }

      else
      {
        v31 = 0x200000;
      }

      _initEmpty->_configurationFlags = (*&_initEmpty->_configurationFlags & 0xFFFFFFFB | v31);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_allowsDefaultTighteningForTruncation"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_allowsDefaultTighteningForTruncation"])
      {
        v32 = 1048578;
      }

      else
      {
        v32 = 0x100000;
      }

      _initEmpty->_configurationFlags = (*&_initEmpty->_configurationFlags & 0xFFFFFFFD | v32);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_bounds"])
    {
      [coderCopy decodeRectForKey:@"UILabelConfiguration_bounds"];
      _initEmpty->_bounds.origin.x = v33;
      _initEmpty->_bounds.origin.y = v34;
      _initEmpty->_bounds.size.width = v35;
      _initEmpty->_bounds.size.height = v36;
      *&_initEmpty->_configurationFlags |= 0x400000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_preferredMaxLayoutWidth"])
    {
      [coderCopy decodeFloatForKey:@"UILabelConfiguration_preferredMaxLayoutWidth"];
      _initEmpty->_preferredMaxLayoutWidth = v37;
      *&_initEmpty->_configurationFlags |= 0x800000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_semanticContentAttribute"])
    {
      _initEmpty->_semanticContentAttribute = [coderCopy decodeIntForKey:@"UILabelConfiguration_semanticContentAttribute"];
      *&_initEmpty->_configurationFlags |= 0x1000000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_isEnabled"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_isEnabled"])
      {
        v38 = 33554440;
      }

      else
      {
        v38 = 0x2000000;
      }

      _initEmpty->_configurationFlags = (*&_initEmpty->_configurationFlags & 0xFFFFFFF7 | v38);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_isHighlighted"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_isHighlighted"])
      {
        v39 = 67108880;
      }

      else
      {
        v39 = 0x4000000;
      }

      _initEmpty->_configurationFlags = (*&_initEmpty->_configurationFlags & 0xFFFFFFEF | v39);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_internal"])
    {
      v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_internal"];
      internal = _initEmpty->_internal;
      _initEmpty->_internal = v40;

      *&_initEmpty->_configurationFlags |= 0x8000000u;
    }

    [coderCopy decodeFloatForKey:@"UILabelConfiguration_displayScale"];
    _initEmpty->_displayScale = v42;
  }

  return _initEmpty;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x200) != 0)
  {
    [coderCopy encodeObject:self->_textColor forKey:@"UILabelConfiguration_textColor"];
    [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textColor"];
    configurationFlags = self->_configurationFlags;
    if ((*&configurationFlags & 0x400) == 0)
    {
LABEL_3:
      if ((*&configurationFlags & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&configurationFlags & 0x400) == 0)
  {
    goto LABEL_3;
  }

  [coderCopy encodeObject:self->_highlightedTextColor forKey:@"UILabelConfiguration_highlightedTextColor"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_highlightedTextColor"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x800) == 0)
  {
LABEL_4:
    if ((*&configurationFlags & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  [coderCopy encodeObject:self->_textBackgroundColor forKey:@"UILabelConfiguration_textBackgroundColor"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textBackgroundColor"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x1000) == 0)
  {
LABEL_5:
    if ((*&configurationFlags & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  [coderCopy encodeObject:self->_shadow forKey:@"UILabelConfiguration_shadow"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_shadow"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x2000) == 0)
  {
LABEL_6:
    if ((*&configurationFlags & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  [coderCopy encodeObject:self->_backgroundColor forKey:@"UILabelConfiguration_backgroundColor"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_backgroundColor"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x100) == 0)
  {
LABEL_7:
    if ((*&configurationFlags & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  [coderCopy encodeObject:self->_font forKey:@"UILabelConfiguration_font"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_font"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x8000) == 0)
  {
LABEL_8:
    if ((*&configurationFlags & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  [coderCopy encodeInt:LODWORD(self->_lineBreakMode) forKey:@"UILabelConfiguration_lineBreakMode"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_lineBreakMode"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x10000) == 0)
  {
LABEL_9:
    if ((*&configurationFlags & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  [coderCopy encodeInt:LODWORD(self->_lineBreakStrategy) forKey:@"UILabelConfiguration_lineBreakStrategy"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_lineBreakStrategy"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x4000) == 0)
  {
LABEL_10:
    if ((*&configurationFlags & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  [coderCopy encodeInt:LODWORD(self->_textAlignment) forKey:@"UILabelConfiguration_textAlignment"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textAlignment"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x20000) == 0)
  {
LABEL_11:
    if ((*&configurationFlags & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  [coderCopy encodeInt:LODWORD(self->_numberOfLines) forKey:@"UILabelConfiguration_numberOfLines"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_numberOfLines"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x80000) == 0)
  {
LABEL_12:
    if ((*&configurationFlags & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  minimumScaleFactor = self->_minimumScaleFactor;
  *&minimumScaleFactor = minimumScaleFactor;
  [coderCopy encodeFloat:@"UILabelConfiguration_minimumScaleFactor" forKey:minimumScaleFactor];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_minimumScaleFactor"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x40000) == 0)
  {
LABEL_13:
    if ((*&configurationFlags & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  [coderCopy encodeBool:*&configurationFlags & 1 forKey:@"UILabelConfiguration_adjustsFontSizeToFitWidth"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_adjustsFontSizeToFitWidth"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x100000) == 0)
  {
LABEL_14:
    if ((*&configurationFlags & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  [coderCopy encodeBool:(*&configurationFlags >> 1) & 1 forKey:@"UILabelConfiguration_allowsDefaultTighteningForTruncation"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_allowsDefaultTighteningForTruncation"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x40000) == 0)
  {
LABEL_15:
    if ((*&configurationFlags & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  [coderCopy encodeBool:*&configurationFlags & 1 forKey:@"UILabelConfiguration_adjustsFontSizeToFitWidth"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_adjustsFontSizeToFitWidth"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x400000) == 0)
  {
LABEL_16:
    if ((*&configurationFlags & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  [coderCopy encodeRect:@"UILabelConfiguration_bounds" forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_bounds"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x800000) == 0)
  {
LABEL_17:
    if ((*&configurationFlags & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  *&preferredMaxLayoutWidth = preferredMaxLayoutWidth;
  [coderCopy encodeFloat:@"UILabelConfiguration_preferredMaxLayoutWidth" forKey:preferredMaxLayoutWidth];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_preferredMaxLayoutWidth"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x1000000) == 0)
  {
LABEL_18:
    if ((*&configurationFlags & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  [coderCopy encodeInt:LODWORD(self->_semanticContentAttribute) forKey:@"UILabelConfiguration_semanticContentAttribute"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_semanticContentAttribute"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x2000000) == 0)
  {
LABEL_19:
    if ((*&configurationFlags & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  [coderCopy encodeBool:(*&configurationFlags >> 3) & 1 forKey:@"UILabelConfiguration_isEnabled"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_isEnabled"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x4000000) == 0)
  {
LABEL_20:
    if ((*&configurationFlags & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  [coderCopy encodeBool:(*&configurationFlags >> 4) & 1 forKey:@"UILabelConfiguration_isHighlighted"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_isHighlighted"];
  if ((*&self->_configurationFlags & 0x8000000) != 0)
  {
LABEL_21:
    [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_internal"];
    [coderCopy encodeObject:self->_internal forKey:@"UILabelConfiguration_internal"];
  }

LABEL_22:
  displayScale = self->_displayScale;
  *&displayScale = displayScale;
  [coderCopy encodeFloat:@"UILabelConfiguration_displayScale" forKey:displayScale];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initEmpty"}];
  *(v5 + 152) = self->_displayScale;
  v6 = [(_UILabelContent *)self->_content copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(UIFont *)self->_font copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(UIColor *)self->_textColor copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(UIColor *)self->_highlightedTextColor copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(UIColor *)self->_textBackgroundColor copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(UIColor *)self->_backgroundColor copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSShadow *)self->_shadow copyWithZone:zone];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  *(v5 + 32) = self->_lineBreakMode;
  *(v5 + 40) = self->_lineBreakStrategy;
  *(v5 + 24) = self->_textAlignment;
  *(v5 + 96) = self->_numberOfLines;
  *(v5 + 104) = self->_minimumScaleFactor;
  size = self->_bounds.size;
  *(v5 + 112) = self->_bounds.origin;
  *(v5 + 128) = size;
  *(v5 + 144) = self->_preferredMaxLayoutWidth;
  *(v5 + 16) = self->_semanticContentAttribute;
  *(v5 + 168) = self->_configurationFlags;
  v21 = [(_UILabelConfigurationInternal *)self->_internal copyWithZone:zone];
  v22 = *(v5 + 160);
  *(v5 + 160) = v21;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ((*&self->_configurationFlags ^ *&equalCopy->_configurationFlags) & 0x1F) != 0 || equalCopy->_numberOfLines != self->_numberOfLines || equalCopy->_minimumScaleFactor != self->_minimumScaleFactor || equalCopy->_lineBreakMode != self->_lineBreakMode || equalCopy->_displayScale != self->_displayScale || equalCopy->_lineBreakStrategy != self->_lineBreakStrategy || equalCopy->_textAlignment != self->_textAlignment || equalCopy->_semanticContentAttribute != self->_semanticContentAttribute || !CGRectEqualToRect(equalCopy->_bounds, self->_bounds) || equalCopy->_preferredMaxLayoutWidth != self->_preferredMaxLayoutWidth || !_deferringTokenEqualToToken(equalCopy->_textColor, self->_textColor) || !_deferringTokenEqualToToken(equalCopy->_highlightedTextColor, self->_highlightedTextColor) || !_deferringTokenEqualToToken(equalCopy->_textBackgroundColor, self->_textBackgroundColor) || !_deferringTokenEqualToToken(equalCopy->_backgroundColor, self->_backgroundColor) || !_deferringTokenEqualToToken(equalCopy->_font, self->_font) || !_deferringTokenEqualToToken(equalCopy->_content, self->_content) || !_deferringTokenEqualToToken(equalCopy->_textColor, self->_textColor) || !_deferringTokenEqualToToken(equalCopy->_textBackgroundColor, self->_textBackgroundColor) || !_deferringTokenEqualToToken(equalCopy->_backgroundColor, self->_backgroundColor) || !_deferringTokenEqualToToken(equalCopy->_shadow, self->_shadow))
    {
      v5 = 0;
      goto LABEL_27;
    }

    if ((*(&self->_configurationFlags + 3) & 8) != 0 && (*(&equalCopy->_configurationFlags + 3) & 8) != 0)
    {
      v5 = _deferringTokenEqualToToken(equalCopy->_internal, self->_internal);
      goto LABEL_27;
    }
  }

  v5 = 1;
LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(_UILabelContent *)self->_content hash];
  v4 = *&self->_configurationFlags << 24;
  return self->_numberOfLines ^ v3 ^ (16 * (self->_displayScale * 100.0)) ^ ((self->_minimumScaleFactor * 100.0) << 8) ^ ((self->_preferredMaxLayoutWidth * 100.0) << 16) ^ v4 & 0x1000000 ^ (v4 & 0x2000000) ^ v4 & 0x4000000 ^ v4 & 0x8000000 ^ v4 & 0x10000000;
}

- (void)setText:(id)text
{
  v4 = [(_UILabelContent *)self->_content contentWithString:text];
  content = self->_content;
  self->_content = v4;

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFF9F | 0x20);
}

- (void)setAttributedText:(id)text
{
  v4 = [(_UILabelContent *)self->_content contentWithAttributedString:text];
  content = self->_content;
  self->_content = v4;

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFF9F | 0x40);
}

- (void)_setDefaultAttributes:(id)attributes
{
  v4 = [(_UILabelContent *)self->_content contentWithDefaultAttributes:attributes];
  content = self->_content;
  self->_content = v4;

  *&self->_configurationFlags |= 0x80u;
}

- (void)setAllowsDefaultTighteningForTruncation:(BOOL)truncation
{
  if (truncation)
  {
    v3 = 1048578;
  }

  else
  {
    v3 = 0x100000;
  }

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFFFD | v3);
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (category)
  {
    v3 = 2097156;
  }

  else
  {
    v3 = 0x200000;
  }

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFFFB | v3);
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 33554440;
  }

  else
  {
    v3 = 0x2000000;
  }

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFFF7 | v3);
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    v3 = 67108880;
  }

  else
  {
    v3 = 0x4000000;
  }

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFFEF | v3);
}

- (id)_internal
{
  if (self)
  {
    self = self[20];
    v1 = vars8;
  }

  return self;
}

- (UIColor)_resolvedTextColor
{
  if (self)
  {
    if ([self isEnabled])
    {
      if ([self isHighlighted])
      {
        highlightedTextColor = [self highlightedTextColor];
        v3 = highlightedTextColor;
        if (highlightedTextColor)
        {
          textColor = highlightedTextColor;
        }

        else
        {
          textColor = [self textColor];
        }

        textColor2 = textColor;

        if (!textColor2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        textColor2 = [self textColor];
        if (!textColor2)
        {
LABEL_16:
          v9 = +[UIColor labelColor];
          goto LABEL_17;
        }
      }
    }

    else
    {
      v5 = self[20];
      if (v5 && (v6 = *(v5 + 16)) != 0)
      {
        v7 = v6;
        textColor2 = v7;
      }

      else
      {
        textColor2 = [[UIColor alloc] initWithWhite:0.56 alpha:1.0];
        v7 = 0;
      }

      if (!textColor2)
      {
        goto LABEL_16;
      }
    }

    v9 = textColor2;
LABEL_17:
    v10 = v9;

    goto LABEL_18;
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (id)_resolvedStringDrawingContext
{
  if (self)
  {
    v2 = objc_alloc_init(off_1E70ECB98);
    numberOfLines = [self numberOfLines];
    [v2 setWrapsForTruncationMode:numberOfLines != 1];
    [v2 setMaximumNumberOfLines:numberOfLines];
    [v2 setCachesLayout:1];
    [v2 setLayout:0];
    v4 = self[20];
    if (v4 && (v4[24] & 0x10) != 0)
    {
      [v2 setUsesSimpleTextEffects:1];
      v4 = self[20];
    }

    _resolvedCuiCatalog = [(_UILabelConfigurationInternal *)v4 _resolvedCuiCatalog];

    if (_resolvedCuiCatalog)
    {
      _resolvedCuiCatalog2 = [(_UILabelConfigurationInternal *)self[20] _resolvedCuiCatalog];
      [v2 setCuiCatalog:_resolvedCuiCatalog2];
    }

    _resolvedCuiStyleEffectConfiguration = [(_UILabelConfigurationInternal *)self[20] _resolvedCuiStyleEffectConfiguration];

    if (_resolvedCuiStyleEffectConfiguration)
    {
      _resolvedCuiStyleEffectConfiguration2 = [(_UILabelConfigurationInternal *)self[20] _resolvedCuiStyleEffectConfiguration];
      [v2 setCuiStyleEffects:_resolvedCuiStyleEffectConfiguration2];

      cuiStyleEffects = [v2 cuiStyleEffects];
      useSimplifiedEffect = [cuiStyleEffects useSimplifiedEffect];

      if (useSimplifiedEffect)
      {
        [v2 setUsesSimpleTextEffects:1];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p", objc_opt_class(), self];
  v4 = [v3 mutableCopy];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x20) != 0)
  {
    text = [(_UILabelConfiguration *)self text];
    [v4 appendFormat:@" text=%@", text];

    configurationFlags = self->_configurationFlags;
    if ((*&configurationFlags & 0x40) == 0)
    {
LABEL_3:
      if ((*&configurationFlags & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&configurationFlags & 0x40) == 0)
  {
    goto LABEL_3;
  }

  attributedText = [(_UILabelConfiguration *)self attributedText];
  [v4 appendFormat:@" attributedText=%@", attributedText];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x200) == 0)
  {
LABEL_4:
    if ((*&configurationFlags & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  textColor = [(_UILabelConfiguration *)self textColor];
  [v4 appendFormat:@" textColor=%@", textColor];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x400) == 0)
  {
LABEL_5:
    if ((*&configurationFlags & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  highlightedTextColor = [(_UILabelConfiguration *)self highlightedTextColor];
  [v4 appendFormat:@" highlightedTextColor=%@", highlightedTextColor];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x800) == 0)
  {
LABEL_6:
    if ((*&configurationFlags & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  textBackgroundColor = [(_UILabelConfiguration *)self textBackgroundColor];
  [v4 appendFormat:@" textBackgroundColor=%@", textBackgroundColor];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x2000) == 0)
  {
LABEL_7:
    if ((*&configurationFlags & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  backgroundColor = [(_UILabelConfiguration *)self backgroundColor];
  [v4 appendFormat:@" backgroundColor=%@", backgroundColor];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x100) == 0)
  {
LABEL_8:
    if ((*&configurationFlags & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  font = [(_UILabelConfiguration *)self font];
  [v4 appendFormat:@" font=%@", font];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x1000) == 0)
  {
LABEL_9:
    if ((*&configurationFlags & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  shadow = [(_UILabelConfiguration *)self shadow];
  [v4 appendFormat:@" shadow=%@", shadow];

  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x20000) == 0)
  {
LABEL_10:
    if ((*&configurationFlags & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 appendFormat:@" numberOfLines=%ld", -[_UILabelConfiguration numberOfLines](self, "numberOfLines")];
  if ((*&self->_configurationFlags & 0x10000) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  lineBreakStrategy = [(_UILabelConfiguration *)self lineBreakStrategy];
  if (lineBreakStrategy > 1)
  {
    if (lineBreakStrategy == 2)
    {
      v15 = @" lineBreakStrategy=hangulWordPriority";
    }

    else
    {
      if (lineBreakStrategy != 0xFFFF)
      {
        goto LABEL_31;
      }

      v15 = @" lineBreakStrategy=standard";
    }
  }

  else if (lineBreakStrategy)
  {
    if (lineBreakStrategy != 1)
    {
      goto LABEL_31;
    }

    v15 = @" lineBreakStrategy=pushOut";
  }

  else
  {
    v15 = @" lineBreakStrategy=none";
  }

  [v4 appendFormat:v15];
LABEL_31:
  if ((*(&self->_configurationFlags + 1) & 0x80) == 0)
  {
    goto LABEL_47;
  }

  lineBreakMode = [(_UILabelConfiguration *)self lineBreakMode];
  if (lineBreakMode > 2)
  {
    switch(lineBreakMode)
    {
      case 3:
        v17 = @" lineBreakMode=truncatingHead";
        goto LABEL_46;
      case 4:
        v17 = @" lineBreakMode=truncatingTail";
        goto LABEL_46;
      case 5:
        v17 = @" lineBreakMode=truncatingMiddle";
        goto LABEL_46;
    }

LABEL_43:
    [v4 appendFormat:@" lineBreakMode=%ld", -[_UILabelConfiguration lineBreakMode](self, "lineBreakMode")];
    goto LABEL_47;
  }

  if (!lineBreakMode)
  {
    v17 = @" lineBreakMode=wordWrapping";
    goto LABEL_46;
  }

  if (lineBreakMode == 1)
  {
    v17 = @" lineBreakMode=charWrapping";
    goto LABEL_46;
  }

  if (lineBreakMode != 2)
  {
    goto LABEL_43;
  }

  v17 = @" lineBreakMode=clipping";
LABEL_46:
  [v4 appendString:v17];
LABEL_47:
  if ((*(&self->_configurationFlags + 1) & 0x40) == 0)
  {
    goto LABEL_61;
  }

  textAlignment = [(_UILabelConfiguration *)self textAlignment];
  if (textAlignment <= 1)
  {
    if (textAlignment)
    {
      if (textAlignment != 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      [v4 appendString:@" textAlignment=left"];
    }

    v19 = @" textAlignment=center";
    goto LABEL_60;
  }

  if (textAlignment == 2)
  {
    v19 = @" textAlignment=right";
    goto LABEL_60;
  }

  if (textAlignment == 3)
  {
    v19 = @" textAlignment=justified";
    goto LABEL_60;
  }

  if (textAlignment != 4)
  {
LABEL_55:
    [v4 appendFormat:@" textAlignment=%ld", -[_UILabelConfiguration textAlignment](self, "textAlignment")];
    goto LABEL_61;
  }

  v19 = @" textAlignment=natural";
LABEL_60:
  [v4 appendString:v19];
LABEL_61:
  v20 = self->_configurationFlags;
  if ((*&v20 & 0x40000) != 0)
  {
    if ([(_UILabelConfiguration *)self adjustsFontSizeToFitWidth])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    [v4 appendFormat:@" adjustsFontSizeToFitWidth=%@", v21];
    v20 = self->_configurationFlags;
    if ((*&v20 & 0x80000) == 0)
    {
LABEL_63:
      if ((*&v20 & 0x200000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v20 & 0x80000) == 0)
  {
    goto LABEL_63;
  }

  [(_UILabelConfiguration *)self minimumScaleFactor];
  [v4 appendFormat:@" minimumScaleFactor=%f", v22];
  v20 = self->_configurationFlags;
  if ((*&v20 & 0x200000) == 0)
  {
LABEL_64:
    if ((*&v20 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_78;
  }

LABEL_74:
  if ([(_UILabelConfiguration *)self adjustsFontForContentSizeCategory])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v4 appendFormat:@" adjustsFontForContentSizeCategory=%@", v23];
  v20 = self->_configurationFlags;
  if ((*&v20 & 0x100000) == 0)
  {
LABEL_65:
    if ((*&v20 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_82;
  }

LABEL_78:
  if ([(_UILabelConfiguration *)self allowsDefaultTighteningForTruncation])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v4 appendFormat:@" allowsDefaultTighteningForTruncation=%@", v24];
  v20 = self->_configurationFlags;
  if ((*&v20 & 0x400000) == 0)
  {
LABEL_66:
    if ((*&v20 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

LABEL_83:
    [(_UILabelConfiguration *)self preferredMaxLayoutWidth];
    [v4 appendFormat:@" preferredMaxLayoutWidth=%f", v26];
    if ((*&self->_configurationFlags & 0x1000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_84:
    semanticContentAttribute = [(_UILabelConfiguration *)self semanticContentAttribute];
    if (semanticContentAttribute <= 1)
    {
      if (!semanticContentAttribute)
      {
        v28 = @" semanticContentAttribute=unspecified";
        goto LABEL_95;
      }

      if (semanticContentAttribute == 1)
      {
        v28 = @" semanticContentAttribute=playback";
        goto LABEL_95;
      }
    }

    else
    {
      switch(semanticContentAttribute)
      {
        case 2:
          v28 = @" semanticContentAttribute=spatial";
          goto LABEL_95;
        case 3:
          v28 = @" semanticContentAttribute=forceLeftToRight";
          goto LABEL_95;
        case 4:
          v28 = @" semanticContentAttribute=forceRightToLeft";
LABEL_95:
          [v4 appendString:v28];
          goto LABEL_96;
      }
    }

    [v4 appendFormat:@" semanticContentAttribute=%ld", -[_UILabelConfiguration semanticContentAttribute](self, "semanticContentAttribute")];
    goto LABEL_96;
  }

LABEL_82:
  [(_UILabelConfiguration *)self bounds];
  v25 = NSStringFromCGRect(v32);
  [v4 appendFormat:@" bounds=%@", v25];

  v20 = self->_configurationFlags;
  if ((*&v20 & 0x800000) != 0)
  {
    goto LABEL_83;
  }

LABEL_67:
  if ((*&v20 & 0x1000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_96:
  [v4 appendFormat:@" displayScale=%f", *&self->_displayScale];
  [v4 appendString:@">"];
  v29 = [v4 copy];

  return v29;
}

@end