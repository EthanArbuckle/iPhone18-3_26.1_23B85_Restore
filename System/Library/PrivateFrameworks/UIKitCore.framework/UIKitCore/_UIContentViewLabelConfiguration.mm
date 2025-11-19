@interface _UIContentViewLabelConfiguration
- (BOOL)isEqual:(id)a3;
- (_UIContentViewLabelConfiguration)init;
- (_UIContentViewLabelConfiguration)initWithCoder:(id)a3;
- (__CFString)_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_isEqualToConfiguration:(uint64_t)a1;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1;
- (unint64_t)hash;
- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)a1;
- (void)_applyToTextField:(id)a3;
- (void)_configureWithConstants:(void *)a3 traitCollection:(uint64_t)a4 forSidebar:;
- (void)applyToLabel:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setText:(id)a3;
@end

@implementation _UIContentViewLabelConfiguration

- (_UIContentViewLabelConfiguration)init
{
  v8.receiver = self;
  v8.super_class = _UIContentViewLabelConfiguration;
  v2 = [(_UIContentViewLabelConfiguration *)&v8 init];
  if (v2)
  {
    v3 = +[UILabel defaultFont];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = +[UILabel _defaultColor];
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    *(v2 + 40) = vdupq_n_s64(4uLL);
    *(v2 + 8) = 1;
  }

  return v2;
}

- (_UIContentViewLabelConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = _UIContentViewLabelConfiguration;
  v5 = [(_UIContentViewLabelConfiguration *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"font"];
    font = v5->_font;
    v5->_font = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v10;

    v5->_textAlignment = [v4 decodeIntegerForKey:@"textAlignment"];
    v5->_lineBreakMode = [v4 decodeIntegerForKey:@"lineBreakMode"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedText"];
    attributedText = v5->_attributedText;
    v5->_attributedText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"highlightedTextColor"];
    highlightedTextColor = v5->_highlightedTextColor;
    v5->_highlightedTextColor = v14;

    v5->_numberOfLines = [v4 decodeIntegerForKey:@"numberOfLines"];
    v5->_adjustsFontSizeToFitWidth = [v4 decodeBoolForKey:@"adjustsFontSizeToFitWidth"];
    [v4 decodeDoubleForKey:@"minimumScaleFactor"];
    v5->_minimumScaleFactor = v16;
    v5->_allowsDefaultTighteningForTruncation = [v4 decodeBoolForKey:@"allowsDefaultTighteningForTruncation"];
    v5->_adjustsFontForContentSizeCategory = [v4 decodeBoolForKey:@"adjustsFontForContentSizeCategory"];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFE | [v4 decodeBoolForKey:v17];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textColor"];
    if ([v4 decodeBoolForKey:v18])
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFD | v19;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textAlignment"];
    if ([v4 decodeBoolForKey:v20])
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFB | v21;

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
    if ([v4 decodeBoolForKey:v22])
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFF7 | v23;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
    if ([v4 decodeBoolForKey:v24])
    {
      v25 = 16;
    }

    else
    {
      v25 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFEF | v25;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
    if ([v4 decodeBoolForKey:v26])
    {
      v27 = 32;
    }

    else
    {
      v27 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFDF | v27;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
    if ([v4 decodeBoolForKey:v28])
    {
      v29 = 64;
    }

    else
    {
      v29 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFBF | v29;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
    if ([v4 decodeBoolForKey:v30])
    {
      v31 = 128;
    }

    else
    {
      v31 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFF7F | v31;

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontForContentSizeCategory"];
    if ([v4 decodeBoolForKey:v32])
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFEFF | v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeObject:self->_font forKey:@"font"];
  [v5 encodeObject:self->_textColor forKey:@"textColor"];
  [v5 encodeInteger:self->_textAlignment forKey:@"textAlignment"];
  [v5 encodeInteger:self->_lineBreakMode forKey:@"lineBreakMode"];
  [v5 encodeObject:self->_attributedText forKey:@"attributedText"];
  [v5 encodeObject:self->_highlightedTextColor forKey:@"highlightedTextColor"];
  [v5 encodeInteger:self->_numberOfLines forKey:@"numberOfLines"];
  [v5 encodeBool:self->_adjustsFontSizeToFitWidth forKey:@"adjustsFontSizeToFitWidth"];
  [v5 encodeDouble:@"minimumScaleFactor" forKey:self->_minimumScaleFactor];
  [v5 encodeBool:self->_allowsDefaultTighteningForTruncation forKey:@"allowsDefaultTighteningForTruncation"];
  [v5 encodeBool:self->_adjustsFontForContentSizeCategory forKey:@"adjustsFontForContentSizeCategory"];
  configurationFlags = self->_configurationFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
  [v5 encodeBool:configurationFlags & 1 forKey:v7];

  v8 = (*&self->_configurationFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textColor"];
  [v5 encodeBool:v8 forKey:v9];

  v10 = (*&self->_configurationFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textAlignment"];
  [v5 encodeBool:v10 forKey:v11];

  v12 = (*&self->_configurationFlags >> 3) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
  [v5 encodeBool:v12 forKey:v13];

  v14 = (*&self->_configurationFlags >> 4) & 1;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
  [v5 encodeBool:v14 forKey:v15];

  v16 = (*&self->_configurationFlags >> 5) & 1;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
  [v5 encodeBool:v16 forKey:v17];

  v18 = (*&self->_configurationFlags >> 6) & 1;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
  [v5 encodeBool:v18 forKey:v19];

  v20 = (*&self->_configurationFlags >> 7) & 1;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
  [v5 encodeBool:v20 forKey:v21];

  v22 = HIBYTE(*&self->_configurationFlags) & 1;
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontForContentSizeCategory"];
  [v5 encodeBool:v22 forKey:v23];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(NSString *)self->_text copy];
    v6 = *(v4 + 16);
    *(v4 + 16) = v5;

    objc_storeStrong((v4 + 24), self->_font);
    objc_storeStrong((v4 + 32), self->_textColor);
    *(v4 + 40) = self->_textAlignment;
    *(v4 + 48) = self->_lineBreakMode;
    v7 = [(NSAttributedString *)self->_attributedText copy];
    v8 = *(v4 + 56);
    *(v4 + 56) = v7;

    objc_storeStrong((v4 + 80), self->_highlightedTextColor);
    *(v4 + 64) = self->_numberOfLines;
    *(v4 + 12) = self->_adjustsFontSizeToFitWidth;
    *(v4 + 72) = self->_minimumScaleFactor;
    *(v4 + 13) = self->_allowsDefaultTighteningForTruncation;
    *(v4 + 14) = self->_adjustsFontForContentSizeCategory;
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
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_UIContentViewLabelConfiguration *)self _isEqualToConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToConfiguration:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (([(_UIContentViewLabelConfiguration *)a1 _isEqualToConfigurationQuick:v3]& 1) != 0)
    {
LABEL_3:
      a1 = 1;
      goto LABEL_17;
    }

    v4 = v3[3];
    v5 = *(a1 + 24);
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v5 || !v6)
      {
        goto LABEL_15;
      }

      v8 = [v5 isEqual:v6];

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v9 = v3[4];
    v5 = *(a1 + 32);
    v10 = v9;
    v7 = v10;
    if (v5 == v10)
    {

LABEL_19:
      v13 = v3[10];
      v14 = *(a1 + 80);
      v15 = v13;
      v16 = v15;
      if (v14 == v15)
      {

        goto LABEL_3;
      }

      if (v14 && v15)
      {
        v17 = [v14 isEqual:v15];

        if (v17)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }

LABEL_16:
      a1 = 0;
      goto LABEL_17;
    }

    if (v5 && v10)
    {
      v11 = [v5 isEqual:v10];

      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:

  return a1;
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

    else
    {
      v5 = v3[2];
      v6 = *(a1 + 16);
      v7 = v5;
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        if (!v6 || !v7)
        {

LABEL_22:
          a1 = 0;
          goto LABEL_23;
        }

        v9 = [v6 isEqual:v7];

        if (!v9)
        {
          goto LABEL_22;
        }
      }

      if (*(a1 + 24) != *(v4 + 3) || *(a1 + 32) != *(v4 + 4) || *(a1 + 40) != *(v4 + 5) || *(a1 + 48) != *(v4 + 6) || !_deferringTokenEqualToToken(*(a1 + 56), *(v4 + 7)) || *(a1 + 80) != *(v4 + 10) || *(a1 + 64) != *(v4 + 8) || *(a1 + 12) != v4[12] || *(a1 + 72) != *(v4 + 9) || *(a1 + 13) != v4[13])
      {
        goto LABEL_22;
      }

      a1 = *(a1 + 14) == v4[14];
    }
  }

LABEL_23:

  return a1;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(UIFont *)self->_font hash]^ v3;
  v5 = [(UIColor *)self->_textColor hash];
  return v4 ^ v5 ^ [(NSAttributedString *)self->_attributedText hash];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_attributedText)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"attributedText = %@", self->_attributedText];
  }

  else
  {
    if (self->_text)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"text = %@", self->_text];
      [v3 addObject:v4];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"font = %@", self->_font];
    [v3 addObject:v5];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"textColor = %@", self->_textColor];
  }
  v6 = ;
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"numberOfLines = %ld", self->_numberOfLines];
  [v3 addObject:v7];

  if (self->_adjustsFontSizeToFitWidth)
  {
    [v3 addObject:@"adjustsFontSizeToFitWidth = YES"];
  }

  if (self->_minimumScaleFactor != 0.0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"minimumScaleFactor = %g", *&self->_minimumScaleFactor];
    [v3 addObject:v8];
  }

  if (self->_allowsDefaultTighteningForTruncation)
  {
    [v3 addObject:@"allowsDefaultTighteningForTruncation = YES"];
  }

  if (self->_adjustsFontForContentSizeCategory)
  {
    [v3 addObject:@"adjustsFontForContentSizeCategory = YES"];
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v3 componentsJoinedByString:@" "];;
  v13 = [v9 stringWithFormat:@"<%@: %p %@>", v11, self, v12];;

  return v13;
}

- (__CFString)_shortDescription
{
  if (a1)
  {
    v2 = a1;
    if ([(__CFString *)a1 _hasText])
    {
      length = v2[1].length;
      if (length)
      {
        [length description];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2->data];
      }
      a1 = ;
    }

    else
    {
      a1 = @"none";
    }

    v1 = vars8;
  }

  return a1;
}

- (void)applyToLabel:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (!self->_attributedText)
  {
    v5 = [v4 _content];
    v6 = [v5 isAttributed];

    v4 = v12;
    if (v6)
    {
      [v12 setAttributedText:0];
      v4 = v12;
    }
  }

  [v4 setText:self->_text];
  v7 = self->_font;
  if (self->_adjustsFontForContentSizeCategory && [v12 adjustsFontForContentSizeCategory])
  {
    v8 = [v12 traitCollection];
    v9 = [(UIFont *)v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

    v7 = v9;
  }

  [v12 setFont:v7];
  [v12 setTextColor:self->_textColor];
  [v12 setTextAlignment:self->_textAlignment];
  textAlignment = self->_textAlignment;
  if (textAlignment >= 4)
  {
    if ([v12 _shouldReverseLayoutDirection])
    {
      v11 = 10;
    }

    else
    {
      v11 = 9;
    }
  }

  else
  {
    v11 = qword_18A679898[textAlignment];
  }

  [v12 setContentMode:v11];
  [v12 setLineBreakMode:self->_lineBreakMode];
  if (self->_attributedText)
  {
    [v12 setAttributedText:?];
  }

  [v12 setHighlightedTextColor:self->_highlightedTextColor];
  [v12 setNumberOfLines:self->_numberOfLines];
  [v12 setAdjustsFontSizeToFitWidth:self->_adjustsFontSizeToFitWidth];
  [v12 setMinimumScaleFactor:self->_minimumScaleFactor];
  [v12 setAllowsDefaultTighteningForTruncation:self->_allowsDefaultTighteningForTruncation];
  [v12 setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
}

- (void)_applyToTextField:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_attributedText)
  {
    [v4 setAttributedText:0];
    v4 = v10;
  }

  [v4 setText:self->_text];
  v5 = self->_font;
  if (self->_adjustsFontForContentSizeCategory && [v10 adjustsFontForContentSizeCategory])
  {
    v6 = [v10 traitCollection];
    v7 = [(UIFont *)v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

    v5 = v7;
  }

  [v10 setFont:v5];
  [v10 setTextColor:self->_textColor];
  [v10 setTextAlignment:self->_textAlignment];
  textAlignment = self->_textAlignment;
  if (textAlignment >= 4)
  {
    if ([v10 _shouldReverseLayoutDirection])
    {
      v9 = 10;
    }

    else
    {
      v9 = 9;
    }
  }

  else
  {
    v9 = qword_18A679898[textAlignment];
  }

  [v10 setContentMode:v9];
  if (self->_attributedText)
  {
    [v10 setAttributedText:?];
  }

  [v10 setAdjustsFontSizeToFitWidth:0];
  [v10 setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
}

- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v14 = v3;
    if (v4)
    {
      if ((v4 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v3)
      {
        v5 = *(v3 + 3);
      }

      else
      {
        v5 = 0;
      }

      objc_storeStrong((a1 + 24), v5);
      v4 = *(a1 + 8);
      v3 = v14;
      if ((v4 & 2) != 0)
      {
LABEL_4:
        if ((v4 & 4) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    if (v3)
    {
      v6 = *(v3 + 4);
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong((a1 + 32), v6);
    v4 = *(a1 + 8);
    v3 = v14;
    if ((v4 & 4) != 0)
    {
LABEL_5:
      if ((v4 & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_18:
    if (v3)
    {
      v7 = *(v3 + 5);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 40) = v7;
    if ((v4 & 8) != 0)
    {
LABEL_6:
      if ((v4 & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_21:
    if (v3)
    {
      v8 = *(v3 + 6);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 48) = v8;
    if ((v4 & 0x10) != 0)
    {
LABEL_7:
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (v3)
    {
      v9 = *(v3 + 8);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 64) = v9;
    if ((v4 & 0x20) != 0)
    {
LABEL_8:
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_27:
    if (v3)
    {
      v10 = *(v3 + 12);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 12) = v10 & 1;
    if ((v4 & 0x40) != 0)
    {
LABEL_9:
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

LABEL_30:
    if (v3)
    {
      v11 = *(v3 + 9);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 72) = v11;
    if ((v4 & 0x80) != 0)
    {
LABEL_10:
      if ((v4 & 0x100) != 0)
      {
        goto LABEL_39;
      }

LABEL_36:
      if (v3)
      {
        v13 = *(v3 + 14);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 14) = v13 & 1;
      goto LABEL_39;
    }

LABEL_33:
    if (v3)
    {
      v12 = *(v3 + 13);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 13) = v12 & 1;
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_39:
}

- (void)setText:(id)a3
{
  v4 = a3;
  newValue = v4;
  if (v4)
  {
    attributedText = self->_attributedText;
    self->_attributedText = 0;
  }

  else if (!self)
  {
    goto LABEL_5;
  }

  objc_setProperty_nonatomic_copy(self, v5, newValue, 16);
  v4 = newValue;
LABEL_5:
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  newValue = v4;
  if (v4)
  {
    text = self->_text;
    self->_text = 0;
  }

  else if (!self)
  {
    goto LABEL_5;
  }

  objc_setProperty_nonatomic_copy(self, v5, newValue, 56);
  v4 = newValue;
LABEL_5:
}

- (void)_configureWithConstants:(void *)a3 traitCollection:(uint64_t)a4 forSidebar:
{
  if (a1)
  {
    v7 = a3;
    v8 = a2;
    *(a1 + 64) = [v8 defaultLabelNumberOfLinesForSidebar:a4 traitCollection:v7];
    *(a1 + 13) = [v8 defaultLabelAllowsTighteningForTruncationForSidebar:a4 traitCollection:v7];
    [v8 defaultLabelMinimumScaleFactorForSidebar:a4 traitCollection:v7];
    v10 = v9;

    *(a1 + 12) = v10 > 0.0;
    *(a1 + 72) = v10;
    *(a1 + 14) = 1;
  }
}

@end