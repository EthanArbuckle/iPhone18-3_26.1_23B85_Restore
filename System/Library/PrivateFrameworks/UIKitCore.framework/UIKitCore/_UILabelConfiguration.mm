@interface _UILabelConfiguration
+ (_UILabelConfiguration)new;
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (UIColor)_resolvedTextColor;
- (_UILabelConfiguration)init;
- (_UILabelConfiguration)initWithCoder:(id)a3;
- (_UILabelConfiguration)initWithTraitCollection:(id)a3;
- (id)_content;
- (id)_initEmpty;
- (id)_internal;
- (id)_resolvedStringDrawingContext;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setDefaultAttributes:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setAllowsDefaultTighteningForTruncation:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setText:(id)a3;
@end

@implementation _UILabelConfiguration

- (id)_content
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

- (_UILabelConfiguration)initWithTraitCollection:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UILabelConfiguration;
  v5 = [(_UILabelConfiguration *)&v17 init];
  if (v5)
  {
    [v4 displayScale];
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
      v11 = [v10 alignment];
      v12 = *(v5 + 42);
    }

    else
    {
      v13 = *(v5 + 42);
      *(v5 + 2) = xmmword_18A678770;
      v12 = v13 | 0x18000;
      v11 = 4;
    }

    *(v5 + 3) = v11;
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

- (_UILabelConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UILabelConfiguration *)self _initEmpty];
  if (v5)
  {
    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_defaultAttributes"])
    {
      content = v5->_content;
      v7 = [v4 decodeObjectForKey:@"UILabelConfiguration_hasCustomized_defaultAttributes"];
      v8 = [(_UILabelContent *)content contentWithDefaultAttributes:v7];
      v9 = v5->_content;
      v5->_content = v8;

      *&v5->_configurationFlags |= 0x80u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_text"])
    {
      v10 = v5->_content;
      v11 = [v4 decodeObjectForKey:@"UILabelConfiguration_hasCustomized_text"];
      v12 = [(_UILabelContent *)v10 contentWithString:v11];
      v13 = v5->_content;
      v5->_content = v12;

      *&v5->_configurationFlags |= 0x20u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_attributedText"])
    {
      v14 = v5->_content;
      v15 = [v4 decodeObjectForKey:@"UILabelConfiguration_hasCustomized_attributedText"];
      v16 = [(_UILabelContent *)v14 contentWithAttributedString:v15];
      v17 = v5->_content;
      v5->_content = v16;

      *&v5->_configurationFlags |= 0x40u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_textColor"])
    {
      v18 = [v4 decodeObjectForKey:@"UILabelConfiguration_textColor"];
      textColor = v5->_textColor;
      v5->_textColor = v18;

      *&v5->_configurationFlags |= 0x200u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_highlightedTextColor"])
    {
      v20 = [v4 decodeObjectForKey:@"UILabelConfiguration_highlightedTextColor"];
      highlightedTextColor = v5->_highlightedTextColor;
      v5->_highlightedTextColor = v20;

      *&v5->_configurationFlags |= 0x400u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_textBackgroundColor"])
    {
      v22 = [v4 decodeObjectForKey:@"UILabelConfiguration_textBackgroundColor"];
      textBackgroundColor = v5->_textBackgroundColor;
      v5->_textBackgroundColor = v22;

      *&v5->_configurationFlags |= 0x800u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_backgroundColor"])
    {
      v24 = [v4 decodeObjectForKey:@"UILabelConfiguration_backgroundColor"];
      backgroundColor = v5->_backgroundColor;
      v5->_backgroundColor = v24;

      *&v5->_configurationFlags |= 0x2000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_shadow"])
    {
      v26 = [v4 decodeObjectForKey:@"UILabelConfiguration_shadow"];
      shadow = v5->_shadow;
      v5->_shadow = v26;

      *&v5->_configurationFlags |= 0x1000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_font"])
    {
      v28 = [v4 decodeObjectForKey:@"UILabelConfiguration_font"];
      font = v5->_font;
      v5->_font = v28;

      *&v5->_configurationFlags |= 0x100u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_lineBreakMode"])
    {
      v5->_lineBreakMode = [v4 decodeIntForKey:@"UILabelConfiguration_lineBreakMode"];
      *&v5->_configurationFlags |= 0x8000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_lineBreakStrategy"])
    {
      v5->_lineBreakStrategy = [v4 decodeIntForKey:@"UILabelConfiguration_lineBreakStrategy"];
      *&v5->_configurationFlags |= 0x10000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_textAlignment"])
    {
      v5->_textAlignment = [v4 decodeIntForKey:@"UILabelConfiguration_textAlignment"];
      *&v5->_configurationFlags |= 0x4000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_numberOfLines"])
    {
      v5->_numberOfLines = [v4 decodeIntForKey:@"UILabelConfiguration_numberOfLines"];
      *&v5->_configurationFlags |= 0x20000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_minimumScaleFactor"])
    {
      [v4 decodeFloatForKey:@"UILabelConfiguration_minimumScaleFactor"];
      v5->_minimumScaleFactor = v30;
      *&v5->_configurationFlags |= 0x80000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_adjustsFontSizeToFitWidth"])
    {
      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFE | [v4 decodeBoolForKey:@"UILabelConfiguration_adjustsFontSizeToFitWidth"] | 0x40000);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_adjustsFontForContentSizeCategory"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_adjustsFontForContentSizeCategory"])
      {
        v31 = 2097156;
      }

      else
      {
        v31 = 0x200000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFB | v31);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_allowsDefaultTighteningForTruncation"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_allowsDefaultTighteningForTruncation"])
      {
        v32 = 1048578;
      }

      else
      {
        v32 = 0x100000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFD | v32);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_bounds"])
    {
      [v4 decodeRectForKey:@"UILabelConfiguration_bounds"];
      v5->_bounds.origin.x = v33;
      v5->_bounds.origin.y = v34;
      v5->_bounds.size.width = v35;
      v5->_bounds.size.height = v36;
      *&v5->_configurationFlags |= 0x400000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_preferredMaxLayoutWidth"])
    {
      [v4 decodeFloatForKey:@"UILabelConfiguration_preferredMaxLayoutWidth"];
      v5->_preferredMaxLayoutWidth = v37;
      *&v5->_configurationFlags |= 0x800000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_semanticContentAttribute"])
    {
      v5->_semanticContentAttribute = [v4 decodeIntForKey:@"UILabelConfiguration_semanticContentAttribute"];
      *&v5->_configurationFlags |= 0x1000000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_isEnabled"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_isEnabled"])
      {
        v38 = 33554440;
      }

      else
      {
        v38 = 0x2000000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFF7 | v38);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_isHighlighted"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_isHighlighted"])
      {
        v39 = 67108880;
      }

      else
      {
        v39 = 0x4000000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFEF | v39);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_internal"])
    {
      v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_internal"];
      internal = v5->_internal;
      v5->_internal = v40;

      *&v5->_configurationFlags |= 0x8000000u;
    }

    [v4 decodeFloatForKey:@"UILabelConfiguration_displayScale"];
    v5->_displayScale = v42;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x200) != 0)
  {
    [v8 encodeObject:self->_textColor forKey:@"UILabelConfiguration_textColor"];
    [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textColor"];
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

  [v8 encodeObject:self->_highlightedTextColor forKey:@"UILabelConfiguration_highlightedTextColor"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_highlightedTextColor"];
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
  [v8 encodeObject:self->_textBackgroundColor forKey:@"UILabelConfiguration_textBackgroundColor"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textBackgroundColor"];
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
  [v8 encodeObject:self->_shadow forKey:@"UILabelConfiguration_shadow"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_shadow"];
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
  [v8 encodeObject:self->_backgroundColor forKey:@"UILabelConfiguration_backgroundColor"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_backgroundColor"];
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
  [v8 encodeObject:self->_font forKey:@"UILabelConfiguration_font"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_font"];
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
  [v8 encodeInt:LODWORD(self->_lineBreakMode) forKey:@"UILabelConfiguration_lineBreakMode"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_lineBreakMode"];
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
  [v8 encodeInt:LODWORD(self->_lineBreakStrategy) forKey:@"UILabelConfiguration_lineBreakStrategy"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_lineBreakStrategy"];
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
  [v8 encodeInt:LODWORD(self->_textAlignment) forKey:@"UILabelConfiguration_textAlignment"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textAlignment"];
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
  [v8 encodeInt:LODWORD(self->_numberOfLines) forKey:@"UILabelConfiguration_numberOfLines"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_numberOfLines"];
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
  [v8 encodeFloat:@"UILabelConfiguration_minimumScaleFactor" forKey:minimumScaleFactor];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_minimumScaleFactor"];
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
  [v8 encodeBool:*&configurationFlags & 1 forKey:@"UILabelConfiguration_adjustsFontSizeToFitWidth"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_adjustsFontSizeToFitWidth"];
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
  [v8 encodeBool:(*&configurationFlags >> 1) & 1 forKey:@"UILabelConfiguration_allowsDefaultTighteningForTruncation"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_allowsDefaultTighteningForTruncation"];
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
  [v8 encodeBool:*&configurationFlags & 1 forKey:@"UILabelConfiguration_adjustsFontSizeToFitWidth"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_adjustsFontSizeToFitWidth"];
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
  [v8 encodeRect:@"UILabelConfiguration_bounds" forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_bounds"];
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
  [v8 encodeFloat:@"UILabelConfiguration_preferredMaxLayoutWidth" forKey:preferredMaxLayoutWidth];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_preferredMaxLayoutWidth"];
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
  [v8 encodeInt:LODWORD(self->_semanticContentAttribute) forKey:@"UILabelConfiguration_semanticContentAttribute"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_semanticContentAttribute"];
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
  [v8 encodeBool:(*&configurationFlags >> 3) & 1 forKey:@"UILabelConfiguration_isEnabled"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_isEnabled"];
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
  [v8 encodeBool:(*&configurationFlags >> 4) & 1 forKey:@"UILabelConfiguration_isHighlighted"];
  [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_isHighlighted"];
  if ((*&self->_configurationFlags & 0x8000000) != 0)
  {
LABEL_21:
    [v8 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_internal"];
    [v8 encodeObject:self->_internal forKey:@"UILabelConfiguration_internal"];
  }

LABEL_22:
  displayScale = self->_displayScale;
  *&displayScale = displayScale;
  [v8 encodeFloat:@"UILabelConfiguration_displayScale" forKey:displayScale];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "_initEmpty"}];
  *(v5 + 152) = self->_displayScale;
  v6 = [(_UILabelContent *)self->_content copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(UIFont *)self->_font copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(UIColor *)self->_textColor copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(UIColor *)self->_highlightedTextColor copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(UIColor *)self->_textBackgroundColor copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(UIColor *)self->_backgroundColor copyWithZone:a3];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSShadow *)self->_shadow copyWithZone:a3];
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
  v21 = [(_UILabelConfigurationInternal *)self->_internal copyWithZone:a3];
  v22 = *(v5 + 160);
  *(v5 + 160) = v21;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ((*&self->_configurationFlags ^ *&v4->_configurationFlags) & 0x1F) != 0 || v4->_numberOfLines != self->_numberOfLines || v4->_minimumScaleFactor != self->_minimumScaleFactor || v4->_lineBreakMode != self->_lineBreakMode || v4->_displayScale != self->_displayScale || v4->_lineBreakStrategy != self->_lineBreakStrategy || v4->_textAlignment != self->_textAlignment || v4->_semanticContentAttribute != self->_semanticContentAttribute || !CGRectEqualToRect(v4->_bounds, self->_bounds) || v4->_preferredMaxLayoutWidth != self->_preferredMaxLayoutWidth || !_deferringTokenEqualToToken(v4->_textColor, self->_textColor) || !_deferringTokenEqualToToken(v4->_highlightedTextColor, self->_highlightedTextColor) || !_deferringTokenEqualToToken(v4->_textBackgroundColor, self->_textBackgroundColor) || !_deferringTokenEqualToToken(v4->_backgroundColor, self->_backgroundColor) || !_deferringTokenEqualToToken(v4->_font, self->_font) || !_deferringTokenEqualToToken(v4->_content, self->_content) || !_deferringTokenEqualToToken(v4->_textColor, self->_textColor) || !_deferringTokenEqualToToken(v4->_textBackgroundColor, self->_textBackgroundColor) || !_deferringTokenEqualToToken(v4->_backgroundColor, self->_backgroundColor) || !_deferringTokenEqualToToken(v4->_shadow, self->_shadow))
    {
      v5 = 0;
      goto LABEL_27;
    }

    if ((*(&self->_configurationFlags + 3) & 8) != 0 && (*(&v4->_configurationFlags + 3) & 8) != 0)
    {
      v5 = _deferringTokenEqualToToken(v4->_internal, self->_internal);
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

- (void)setText:(id)a3
{
  v4 = [(_UILabelContent *)self->_content contentWithString:a3];
  content = self->_content;
  self->_content = v4;

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFF9F | 0x20);
}

- (void)setAttributedText:(id)a3
{
  v4 = [(_UILabelContent *)self->_content contentWithAttributedString:a3];
  content = self->_content;
  self->_content = v4;

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFF9F | 0x40);
}

- (void)_setDefaultAttributes:(id)a3
{
  v4 = [(_UILabelContent *)self->_content contentWithDefaultAttributes:a3];
  content = self->_content;
  self->_content = v4;

  *&self->_configurationFlags |= 0x80u;
}

- (void)setAllowsDefaultTighteningForTruncation:(BOOL)a3
{
  if (a3)
  {
    v3 = 1048578;
  }

  else
  {
    v3 = 0x100000;
  }

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFFFD | v3);
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (a3)
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

- (void)setEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 33554440;
  }

  else
  {
    v3 = 0x2000000;
  }

  self->_configurationFlags = (*&self->_configurationFlags & 0xFFFFFFF7 | v3);
}

- (void)setHighlighted:(BOOL)a3
{
  if (a3)
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
  if (a1)
  {
    a1 = a1[20];
    v1 = vars8;
  }

  return a1;
}

- (UIColor)_resolvedTextColor
{
  if (a1)
  {
    if ([a1 isEnabled])
    {
      if ([a1 isHighlighted])
      {
        v2 = [a1 highlightedTextColor];
        v3 = v2;
        if (v2)
        {
          v4 = v2;
        }

        else
        {
          v4 = [a1 textColor];
        }

        v8 = v4;

        if (!v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v8 = [a1 textColor];
        if (!v8)
        {
LABEL_16:
          v9 = +[UIColor labelColor];
          goto LABEL_17;
        }
      }
    }

    else
    {
      v5 = a1[20];
      if (v5 && (v6 = *(v5 + 16)) != 0)
      {
        v7 = v6;
        v8 = v7;
      }

      else
      {
        v8 = [[UIColor alloc] initWithWhite:0.56 alpha:1.0];
        v7 = 0;
      }

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v9 = v8;
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
  if (a1)
  {
    v2 = objc_alloc_init(off_1E70ECB98);
    v3 = [a1 numberOfLines];
    [v2 setWrapsForTruncationMode:v3 != 1];
    [v2 setMaximumNumberOfLines:v3];
    [v2 setCachesLayout:1];
    [v2 setLayout:0];
    v4 = a1[20];
    if (v4 && (v4[24] & 0x10) != 0)
    {
      [v2 setUsesSimpleTextEffects:1];
      v4 = a1[20];
    }

    v5 = [(_UILabelConfigurationInternal *)v4 _resolvedCuiCatalog];

    if (v5)
    {
      v6 = [(_UILabelConfigurationInternal *)a1[20] _resolvedCuiCatalog];
      [v2 setCuiCatalog:v6];
    }

    v7 = [(_UILabelConfigurationInternal *)a1[20] _resolvedCuiStyleEffectConfiguration];

    if (v7)
    {
      v8 = [(_UILabelConfigurationInternal *)a1[20] _resolvedCuiStyleEffectConfiguration];
      [v2 setCuiStyleEffects:v8];

      v9 = [v2 cuiStyleEffects];
      v10 = [v9 useSimplifiedEffect];

      if (v10)
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
    v6 = [(_UILabelConfiguration *)self text];
    [v4 appendFormat:@" text=%@", v6];

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

  v7 = [(_UILabelConfiguration *)self attributedText];
  [v4 appendFormat:@" attributedText=%@", v7];

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
  v8 = [(_UILabelConfiguration *)self textColor];
  [v4 appendFormat:@" textColor=%@", v8];

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
  v9 = [(_UILabelConfiguration *)self highlightedTextColor];
  [v4 appendFormat:@" highlightedTextColor=%@", v9];

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
  v10 = [(_UILabelConfiguration *)self textBackgroundColor];
  [v4 appendFormat:@" textBackgroundColor=%@", v10];

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
  v11 = [(_UILabelConfiguration *)self backgroundColor];
  [v4 appendFormat:@" backgroundColor=%@", v11];

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
  v12 = [(_UILabelConfiguration *)self font];
  [v4 appendFormat:@" font=%@", v12];

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
  v13 = [(_UILabelConfiguration *)self shadow];
  [v4 appendFormat:@" shadow=%@", v13];

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
  v14 = [(_UILabelConfiguration *)self lineBreakStrategy];
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = @" lineBreakStrategy=hangulWordPriority";
    }

    else
    {
      if (v14 != 0xFFFF)
      {
        goto LABEL_31;
      }

      v15 = @" lineBreakStrategy=standard";
    }
  }

  else if (v14)
  {
    if (v14 != 1)
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

  v16 = [(_UILabelConfiguration *)self lineBreakMode];
  if (v16 > 2)
  {
    switch(v16)
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

  if (!v16)
  {
    v17 = @" lineBreakMode=wordWrapping";
    goto LABEL_46;
  }

  if (v16 == 1)
  {
    v17 = @" lineBreakMode=charWrapping";
    goto LABEL_46;
  }

  if (v16 != 2)
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

  v18 = [(_UILabelConfiguration *)self textAlignment];
  if (v18 <= 1)
  {
    if (v18)
    {
      if (v18 != 1)
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

  if (v18 == 2)
  {
    v19 = @" textAlignment=right";
    goto LABEL_60;
  }

  if (v18 == 3)
  {
    v19 = @" textAlignment=justified";
    goto LABEL_60;
  }

  if (v18 != 4)
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
    v27 = [(_UILabelConfiguration *)self semanticContentAttribute];
    if (v27 <= 1)
    {
      if (!v27)
      {
        v28 = @" semanticContentAttribute=unspecified";
        goto LABEL_95;
      }

      if (v27 == 1)
      {
        v28 = @" semanticContentAttribute=playback";
        goto LABEL_95;
      }
    }

    else
    {
      switch(v27)
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