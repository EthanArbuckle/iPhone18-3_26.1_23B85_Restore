@interface UIContentUnavailableTextProperties
- (BOOL)isEqual:(id)a3;
- (UIContentUnavailableTextProperties)init;
- (UIContentUnavailableTextProperties)initWithCoder:(id)a3;
- (__CFString)_shortDescription;
- (id)attributedText;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_isEqualToProperties:(int)a3 compareText:;
- (uint64_t)_isEqualToPropertiesQuick:(int)a3 compareText:;
- (void)_applyPropertiesFromDefaultProperties:(uint64_t)a1;
- (void)_applyToLabel:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributedText:(uint64_t)a1;
- (void)setText:(uint64_t)a1;
@end

@implementation UIContentUnavailableTextProperties

- (UIContentUnavailableTextProperties)init
{
  v8.receiver = self;
  v8.super_class = UIContentUnavailableTextProperties;
  v2 = [(UIContentUnavailableTextProperties *)&v8 init];
  if (v2)
  {
    v3 = +[UILabel defaultFont];
    font = v2->_font;
    v2->_font = v3;

    v5 = +[UILabel _defaultColor];
    color = v2->_color;
    v2->_color = v5;

    v2->_lineBreakMode = 4;
    v2->_numberOfLines = 0;
    v2->_alignment = 0;
  }

  return v2;
}

- (UIContentUnavailableTextProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = UIContentUnavailableTextProperties;
  v5 = [(UIContentUnavailableTextProperties *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"font"];
    font = v5->_font;
    v5->_font = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v5->_color;
    v5->_color = v10;

    v5->_lineBreakMode = [v4 decodeIntegerForKey:@"lineBreakMode"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedText"];
    attributedText = v5->_attributedText;
    v5->_attributedText = v12;

    v5->_numberOfLines = [v4 decodeIntegerForKey:@"numberOfLines"];
    v5->_adjustsFontSizeToFitWidth = [v4 decodeBoolForKey:@"adjustsFontSizeToFitWidth"];
    [v4 decodeDoubleForKey:@"minimumScaleFactor"];
    v5->_minimumScaleFactor = v14;
    v5->_allowsDefaultTighteningForTruncation = [v4 decodeBoolForKey:@"allowsDefaultTighteningForTruncation"];
    v5->_alignment = [v4 decodeIntegerForKey:@"alignment"];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"text"];
    *&v5->_textFlags = *&v5->_textFlags & 0xFFFE | [v4 decodeBoolForKey:v15];

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
    if ([v4 decodeBoolForKey:v16])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFFD | v17;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"color"];
    if ([v4 decodeBoolForKey:v18])
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFFB | v19;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
    if ([v4 decodeBoolForKey:v20])
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFF7 | v21;

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"attributedText"];
    if ([v4 decodeBoolForKey:v22])
    {
      v23 = 16;
    }

    else
    {
      v23 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFEF | v23;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
    if ([v4 decodeBoolForKey:v24])
    {
      v25 = 32;
    }

    else
    {
      v25 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFDF | v25;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
    if ([v4 decodeBoolForKey:v26])
    {
      v27 = 64;
    }

    else
    {
      v27 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFBF | v27;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
    if ([v4 decodeBoolForKey:v28])
    {
      v29 = 128;
    }

    else
    {
      v29 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFF7F | v29;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
    if ([v4 decodeBoolForKey:v30])
    {
      v31 = 256;
    }

    else
    {
      v31 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFEFF | v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeObject:self->_font forKey:@"font"];
  [v5 encodeObject:self->_color forKey:@"color"];
  [v5 encodeInteger:self->_lineBreakMode forKey:@"lineBreakMode"];
  [v5 encodeObject:self->_attributedText forKey:@"attributedText"];
  [v5 encodeInteger:self->_numberOfLines forKey:@"numberOfLines"];
  [v5 encodeBool:self->_adjustsFontSizeToFitWidth forKey:@"adjustsFontSizeToFitWidth"];
  [v5 encodeDouble:@"minimumScaleFactor" forKey:self->_minimumScaleFactor];
  [v5 encodeBool:self->_allowsDefaultTighteningForTruncation forKey:@"allowsDefaultTighteningForTruncation"];
  [v5 encodeInteger:self->_alignment forKey:@"alignment"];
  textFlags = self->_textFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"text"];
  [v5 encodeBool:textFlags & 1 forKey:v7];

  v8 = (*&self->_textFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
  [v5 encodeBool:v8 forKey:v9];

  v10 = (*&self->_textFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"color"];
  [v5 encodeBool:v10 forKey:v11];

  v12 = (*&self->_textFlags >> 3) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
  [v5 encodeBool:v12 forKey:v13];

  v14 = (*&self->_textFlags >> 4) & 1;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"attributedText"];
  [v5 encodeBool:v14 forKey:v15];

  v16 = (*&self->_textFlags >> 5) & 1;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
  [v5 encodeBool:v16 forKey:v17];

  v18 = (*&self->_textFlags >> 6) & 1;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
  [v5 encodeBool:v18 forKey:v19];

  v20 = (*&self->_textFlags >> 7) & 1;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
  [v5 encodeBool:v20 forKey:v21];

  v22 = HIBYTE(*&self->_textFlags) & 1;
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
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
    objc_storeStrong((v4 + 32), self->_color);
    *(v4 + 40) = self->_lineBreakMode;
    v7 = [(NSAttributedString *)self->_attributedText copy];
    v8 = *(v4 + 48);
    *(v4 + 48) = v7;

    *(v4 + 56) = self->_numberOfLines;
    *(v4 + 12) = self->_adjustsFontSizeToFitWidth;
    *(v4 + 64) = self->_minimumScaleFactor;
    *(v4 + 13) = self->_allowsDefaultTighteningForTruncation;
    *(v4 + 72) = self->_alignment;
    *(v4 + 8) = self->_textFlags;
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
    v6 = [(UIContentUnavailableTextProperties *)self _isEqualToProperties:v5 compareText:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToProperties:(int)a3 compareText:
{
  v5 = a2;
  if (a1)
  {
    if (([(UIContentUnavailableTextProperties *)a1 _isEqualToPropertiesQuick:v5 compareText:a3]& 1) != 0)
    {
      a1 = 1;
      goto LABEL_30;
    }

    if (a3)
    {
      v6 = *(v5 + 2);
      v7 = *(a1 + 16);
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {
          goto LABEL_28;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_29;
        }
      }

      v11 = *(v5 + 6);
      v7 = *(a1 + 48);
      v12 = v11;
      v9 = v12;
      if (v7 == v12)
      {
      }

      else
      {
        if (!v7 || !v12)
        {
          goto LABEL_28;
        }

        v13 = [v7 isEqual:v12];

        if (!v13)
        {
          goto LABEL_29;
        }
      }
    }

    v14 = *(v5 + 3);
    v7 = *(a1 + 24);
    v15 = v14;
    v9 = v15;
    if (v7 == v15)
    {
    }

    else
    {
      if (!v7 || !v15)
      {
        goto LABEL_28;
      }

      v16 = [v7 isEqual:v15];

      if (!v16)
      {
        goto LABEL_29;
      }
    }

    v17 = *(v5 + 4);
    v7 = *(a1 + 32);
    v18 = v17;
    v9 = v18;
    if (v7 == v18)
    {

LABEL_32:
      if (*(a1 + 40) == *(v5 + 5) && *(a1 + 56) == *(v5 + 7) && *(a1 + 12) == v5[12] && *(a1 + 64) == *(v5 + 8) && *(a1 + 13) == v5[13])
      {
        a1 = *(a1 + 72) == *(v5 + 9);
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v7 && v18)
    {
      v19 = [v7 isEqual:v18];

      if (v19)
      {
        goto LABEL_32;
      }

LABEL_29:
      a1 = 0;
      goto LABEL_30;
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_30:

  return a1;
}

- (uint64_t)_isEqualToPropertiesQuick:(int)a3 compareText:
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_27;
  }

  if (v5 == a1)
  {
    a1 = 1;
    goto LABEL_27;
  }

  if (a3)
  {
    v7 = v5[2];
    v8 = *(a1 + 16);
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {
        goto LABEL_16;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v12 = *(v6 + 6);
    v8 = *(a1 + 48);
    v13 = v12;
    v10 = v13;
    if (v8 != v13)
    {
      if (v8 && v13)
      {
        v14 = [v8 isEqual:v13];

        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

LABEL_16:

LABEL_26:
      a1 = 0;
      goto LABEL_27;
    }
  }

LABEL_18:
  if (*(a1 + 24) != *(v6 + 3) || *(a1 + 32) != *(v6 + 4) || *(a1 + 40) != *(v6 + 5) || *(a1 + 56) != *(v6 + 7) || *(a1 + 12) != *(v6 + 12) || *(a1 + 64) != v6[8] || *(a1 + 13) != *(v6 + 13))
  {
    goto LABEL_26;
  }

  a1 = *(a1 + 72) == *(v6 + 9);
LABEL_27:

  return a1;
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

    [MEMORY[0x1E696AEC0] stringWithFormat:@"color = %@", self->_color];
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

  if (self->_alignment)
  {
    v9 = @"natural";
  }

  else
  {
    v9 = @"center";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alignment = %@", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v3 componentsJoinedByString:@" "];;
  v15 = [v11 stringWithFormat:@"<%@: %p %@>", v13, self, v14];;

  return v15;
}

- (__CFString)_shortDescription
{
  if (a1)
  {
    data = a1->data;
    v2 = a1[1].data;
    if (data)
    {
      if (!v2)
      {
        a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", data];
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v2)
    {
LABEL_6:
      a1 = [v2 description];
      goto LABEL_7;
    }

    a1 = @"none";
  }

LABEL_7:

  return a1;
}

- (void)_applyToLabel:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    if (!*(a1 + 48))
    {
      v4 = [v3 _content];
      v5 = [v4 isAttributed];

      v3 = v7;
      if (v5)
      {
        [v7 setAttributedText:0];
        v3 = v7;
      }
    }

    [v3 setText:*(a1 + 16)];
    [v7 setFont:*(a1 + 24)];
    [v7 setTextColor:*(a1 + 32)];
    if (*(a1 + 72))
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }

    [v7 setTextAlignment:v6];
    [v7 setContentMode:5];
    [v7 setLineBreakMode:*(a1 + 40)];
    if (*(a1 + 48))
    {
      [v7 setAttributedText:?];
    }

    [v7 setNumberOfLines:*(a1 + 56)];
    [v7 setAdjustsFontSizeToFitWidth:*(a1 + 12)];
    [v7 setMinimumScaleFactor:*(a1 + 64)];
    [v7 setAllowsDefaultTighteningForTruncation:*(a1 + 13)];
    [v7 setAdjustsFontForContentSizeCategory:1];
    v3 = v7;
  }
}

- (void)_applyPropertiesFromDefaultProperties:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = *(a1 + 8);
    v15 = v3;
    if (v5)
    {
      if ((v5 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v3)
      {
        v6 = *(v3 + 2);
      }

      else
      {
        v6 = 0;
      }

      objc_setProperty_nonatomic_copy(a1, v4, v6, 16);
      v5 = *(a1 + 8);
      v3 = v15;
      if ((v5 & 2) != 0)
      {
LABEL_4:
        if ((v5 & 4) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    if (v3)
    {
      v7 = *(v3 + 3);
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong((a1 + 24), v7);
    v5 = *(a1 + 8);
    v3 = v15;
    if ((v5 & 4) != 0)
    {
LABEL_5:
      if ((v5 & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_18:
    if (v3)
    {
      v8 = *(v3 + 4);
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong((a1 + 32), v8);
    v5 = *(a1 + 8);
    v3 = v15;
    if ((v5 & 8) != 0)
    {
LABEL_6:
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_21:
    if (v3)
    {
      v9 = *(v3 + 5);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 40) = v9;
    if ((v5 & 0x10) != 0)
    {
LABEL_7:
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (v3)
    {
      v10 = *(v3 + 6);
    }

    else
    {
      v10 = 0;
    }

    objc_setProperty_nonatomic_copy(a1, v4, v10, 48);
    v5 = *(a1 + 8);
    v3 = v15;
    if ((v5 & 0x20) != 0)
    {
LABEL_8:
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_27:
    if (v3)
    {
      v11 = *(v3 + 7);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 56) = v11;
    if ((v5 & 0x40) != 0)
    {
LABEL_9:
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

LABEL_30:
    if (v3)
    {
      v12 = *(v3 + 12);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 12) = v12 & 1;
    if ((v5 & 0x80) != 0)
    {
LABEL_10:
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_39;
      }

LABEL_36:
      if (v3)
      {
        v14 = *(v3 + 13);
      }

      else
      {
        v14 = 0;
      }

      *(a1 + 13) = v14 & 1;
      goto LABEL_39;
    }

LABEL_33:
    if (v3)
    {
      v13 = *(v3 + 8);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 64) = v13;
    if ((v5 & 0x100) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_39:
}

- (void)setText:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    *(a1 + 8) |= 1u;
    newValue = v3;
    if (v3)
    {
      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
    }

    objc_setProperty_nonatomic_copy(a1, v4, newValue, 16);
    v3 = newValue;
  }
}

- (void)setAttributedText:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    *(a1 + 8) |= 0x10u;
    newValue = v3;
    if (v3)
    {
      v5 = *(a1 + 16);
      *(a1 + 16) = 0;
    }

    objc_setProperty_nonatomic_copy(a1, v4, newValue, 48);
    v3 = newValue;
  }
}

- (id)attributedText
{
  if (a1)
  {
    a1 = a1[6];
    v1 = vars8;
  }

  return a1;
}

@end