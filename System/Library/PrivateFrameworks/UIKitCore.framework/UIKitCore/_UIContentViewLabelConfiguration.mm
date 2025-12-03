@interface _UIContentViewLabelConfiguration
- (BOOL)isEqual:(id)equal;
- (_UIContentViewLabelConfiguration)init;
- (_UIContentViewLabelConfiguration)initWithCoder:(id)coder;
- (__CFString)_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)_isEqualToConfiguration:(uint64_t)configuration;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)quick;
- (unint64_t)hash;
- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)configuration;
- (void)_applyToTextField:(id)field;
- (void)_configureWithConstants:(void *)constants traitCollection:(uint64_t)collection forSidebar:;
- (void)applyToLabel:(id)label;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
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

- (_UIContentViewLabelConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = _UIContentViewLabelConfiguration;
  v5 = [(_UIContentViewLabelConfiguration *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"font"];
    font = v5->_font;
    v5->_font = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v10;

    v5->_textAlignment = [coderCopy decodeIntegerForKey:@"textAlignment"];
    v5->_lineBreakMode = [coderCopy decodeIntegerForKey:@"lineBreakMode"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedText"];
    attributedText = v5->_attributedText;
    v5->_attributedText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"highlightedTextColor"];
    highlightedTextColor = v5->_highlightedTextColor;
    v5->_highlightedTextColor = v14;

    v5->_numberOfLines = [coderCopy decodeIntegerForKey:@"numberOfLines"];
    v5->_adjustsFontSizeToFitWidth = [coderCopy decodeBoolForKey:@"adjustsFontSizeToFitWidth"];
    [coderCopy decodeDoubleForKey:@"minimumScaleFactor"];
    v5->_minimumScaleFactor = v16;
    v5->_allowsDefaultTighteningForTruncation = [coderCopy decodeBoolForKey:@"allowsDefaultTighteningForTruncation"];
    v5->_adjustsFontForContentSizeCategory = [coderCopy decodeBoolForKey:@"adjustsFontForContentSizeCategory"];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFE | [coderCopy decodeBoolForKey:v17];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textColor"];
    if ([coderCopy decodeBoolForKey:v18])
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFD | v19;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textAlignment"];
    if ([coderCopy decodeBoolForKey:v20])
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFB | v21;

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
    if ([coderCopy decodeBoolForKey:v22])
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFF7 | v23;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
    if ([coderCopy decodeBoolForKey:v24])
    {
      v25 = 16;
    }

    else
    {
      v25 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFEF | v25;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
    if ([coderCopy decodeBoolForKey:v26])
    {
      v27 = 32;
    }

    else
    {
      v27 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFDF | v27;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
    if ([coderCopy decodeBoolForKey:v28])
    {
      v29 = 64;
    }

    else
    {
      v29 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFBF | v29;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
    if ([coderCopy decodeBoolForKey:v30])
    {
      v31 = 128;
    }

    else
    {
      v31 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFF7F | v31;

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontForContentSizeCategory"];
    if ([coderCopy decodeBoolForKey:v32])
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

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_font forKey:@"font"];
  [coderCopy encodeObject:self->_textColor forKey:@"textColor"];
  [coderCopy encodeInteger:self->_textAlignment forKey:@"textAlignment"];
  [coderCopy encodeInteger:self->_lineBreakMode forKey:@"lineBreakMode"];
  [coderCopy encodeObject:self->_attributedText forKey:@"attributedText"];
  [coderCopy encodeObject:self->_highlightedTextColor forKey:@"highlightedTextColor"];
  [coderCopy encodeInteger:self->_numberOfLines forKey:@"numberOfLines"];
  [coderCopy encodeBool:self->_adjustsFontSizeToFitWidth forKey:@"adjustsFontSizeToFitWidth"];
  [coderCopy encodeDouble:@"minimumScaleFactor" forKey:self->_minimumScaleFactor];
  [coderCopy encodeBool:self->_allowsDefaultTighteningForTruncation forKey:@"allowsDefaultTighteningForTruncation"];
  [coderCopy encodeBool:self->_adjustsFontForContentSizeCategory forKey:@"adjustsFontForContentSizeCategory"];
  configurationFlags = self->_configurationFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
  [coderCopy encodeBool:configurationFlags & 1 forKey:v7];

  v8 = (*&self->_configurationFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textColor"];
  [coderCopy encodeBool:v8 forKey:v9];

  v10 = (*&self->_configurationFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textAlignment"];
  [coderCopy encodeBool:v10 forKey:v11];

  v12 = (*&self->_configurationFlags >> 3) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
  [coderCopy encodeBool:v12 forKey:v13];

  v14 = (*&self->_configurationFlags >> 4) & 1;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
  [coderCopy encodeBool:v14 forKey:v15];

  v16 = (*&self->_configurationFlags >> 5) & 1;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
  [coderCopy encodeBool:v16 forKey:v17];

  v18 = (*&self->_configurationFlags >> 6) & 1;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
  [coderCopy encodeBool:v18 forKey:v19];

  v20 = (*&self->_configurationFlags >> 7) & 1;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
  [coderCopy encodeBool:v20 forKey:v21];

  v22 = HIBYTE(*&self->_configurationFlags) & 1;
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontForContentSizeCategory"];
  [coderCopy encodeBool:v22 forKey:v23];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_UIContentViewLabelConfiguration *)self _isEqualToConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToConfiguration:(uint64_t)configuration
{
  v3 = a2;
  if (configuration)
  {
    if (([(_UIContentViewLabelConfiguration *)configuration _isEqualToConfigurationQuick:v3]& 1) != 0)
    {
LABEL_3:
      configuration = 1;
      goto LABEL_17;
    }

    v4 = v3[3];
    v5 = *(configuration + 24);
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
    v5 = *(configuration + 32);
    v10 = v9;
    v7 = v10;
    if (v5 == v10)
    {

LABEL_19:
      v13 = v3[10];
      v14 = *(configuration + 80);
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
      configuration = 0;
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

  return configuration;
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

    else
    {
      v5 = v3[2];
      v6 = *(quick + 16);
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
          quick = 0;
          goto LABEL_23;
        }

        v9 = [v6 isEqual:v7];

        if (!v9)
        {
          goto LABEL_22;
        }
      }

      if (*(quick + 24) != *(v4 + 3) || *(quick + 32) != *(v4 + 4) || *(quick + 40) != *(v4 + 5) || *(quick + 48) != *(v4 + 6) || !_deferringTokenEqualToToken(*(quick + 56), *(v4 + 7)) || *(quick + 80) != *(v4 + 10) || *(quick + 64) != *(v4 + 8) || *(quick + 12) != v4[12] || *(quick + 72) != *(v4 + 9) || *(quick + 13) != v4[13])
      {
        goto LABEL_22;
      }

      quick = *(quick + 14) == v4[14];
    }
  }

LABEL_23:

  return quick;
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
  if (self)
  {
    selfCopy = self;
    if ([(__CFString *)self _hasText])
    {
      length = selfCopy[1].length;
      if (length)
      {
        [length description];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", selfCopy->data];
      }
      self = ;
    }

    else
    {
      self = @"none";
    }

    v1 = vars8;
  }

  return self;
}

- (void)applyToLabel:(id)label
{
  labelCopy = label;
  v12 = labelCopy;
  if (!self->_attributedText)
  {
    _content = [labelCopy _content];
    isAttributed = [_content isAttributed];

    labelCopy = v12;
    if (isAttributed)
    {
      [v12 setAttributedText:0];
      labelCopy = v12;
    }
  }

  [labelCopy setText:self->_text];
  v7 = self->_font;
  if (self->_adjustsFontForContentSizeCategory && [v12 adjustsFontForContentSizeCategory])
  {
    traitCollection = [v12 traitCollection];
    v9 = [(UIFont *)v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

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

- (void)_applyToTextField:(id)field
{
  fieldCopy = field;
  v10 = fieldCopy;
  if (self->_attributedText)
  {
    [fieldCopy setAttributedText:0];
    fieldCopy = v10;
  }

  [fieldCopy setText:self->_text];
  v5 = self->_font;
  if (self->_adjustsFontForContentSizeCategory && [v10 adjustsFontForContentSizeCategory])
  {
    traitCollection = [v10 traitCollection];
    v7 = [(UIFont *)v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

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

- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)configuration
{
  v3 = a2;
  if (configuration)
  {
    v4 = *(configuration + 8);
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

      objc_storeStrong((configuration + 24), v5);
      v4 = *(configuration + 8);
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

    objc_storeStrong((configuration + 32), v6);
    v4 = *(configuration + 8);
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

    *(configuration + 40) = v7;
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

    *(configuration + 48) = v8;
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

    *(configuration + 64) = v9;
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

    *(configuration + 12) = v10 & 1;
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

    *(configuration + 72) = v11;
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

      *(configuration + 14) = v13 & 1;
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

    *(configuration + 13) = v12 & 1;
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_39:
}

- (void)setText:(id)text
{
  textCopy = text;
  newValue = textCopy;
  if (textCopy)
  {
    attributedText = self->_attributedText;
    self->_attributedText = 0;
  }

  else if (!self)
  {
    goto LABEL_5;
  }

  objc_setProperty_nonatomic_copy(self, v5, newValue, 16);
  textCopy = newValue;
LABEL_5:
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  newValue = textCopy;
  if (textCopy)
  {
    text = self->_text;
    self->_text = 0;
  }

  else if (!self)
  {
    goto LABEL_5;
  }

  objc_setProperty_nonatomic_copy(self, v5, newValue, 56);
  textCopy = newValue;
LABEL_5:
}

- (void)_configureWithConstants:(void *)constants traitCollection:(uint64_t)collection forSidebar:
{
  if (self)
  {
    constantsCopy = constants;
    v8 = a2;
    *(self + 64) = [v8 defaultLabelNumberOfLinesForSidebar:collection traitCollection:constantsCopy];
    *(self + 13) = [v8 defaultLabelAllowsTighteningForTruncationForSidebar:collection traitCollection:constantsCopy];
    [v8 defaultLabelMinimumScaleFactorForSidebar:collection traitCollection:constantsCopy];
    v10 = v9;

    *(self + 12) = v10 > 0.0;
    *(self + 72) = v10;
    *(self + 14) = 1;
  }
}

@end