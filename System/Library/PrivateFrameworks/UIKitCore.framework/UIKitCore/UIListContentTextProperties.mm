@interface UIListContentTextProperties
- (BOOL)isEqual:(id)equal;
- (UIColor)resolvedColor;
- (UIConfigurationColorTransformer)colorTransformer;
- (UIListContentTextProperties)init;
- (UIListContentTextProperties)initWithCoder:(id)coder;
- (__CFString)_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)_effectiveTextAlignment;
- (uint64_t)_isEqualToProperties:(int)properties compareText:;
- (uint64_t)_isEqualToPropertiesQuick:(int)quick compareText:;
- (void)_applyPropertiesFromDefaultProperties:(uint64_t)properties;
- (void)_applyToLabel:(uint64_t)label;
- (void)_applyToTextField:(id)field;
- (void)_configureWithConstants:(void *)constants traitCollection:(uint64_t)collection forSidebar:;
- (void)_setColorTransformer:(uint64_t)transformer;
- (void)_setColorTransformerIdentifier:(uint64_t)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributedText:(void *)text;
- (void)setText:(id)text;
@end

@implementation UIListContentTextProperties

- (UIListContentTextProperties)init
{
  v8.receiver = self;
  v8.super_class = UIListContentTextProperties;
  v2 = [(UIListContentTextProperties *)&v8 init];
  if (v2)
  {
    v3 = +[UILabel defaultFont];
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = +[UILabel _defaultColor];
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    *(v2 + 56) = xmmword_18A682B00;
    *(v2 + 10) = 1;
    *(v2 + 12) = 0;
  }

  return v2;
}

- (UIColor)resolvedColor
{
  colorTransformer = self->_colorTransformer;
  if (colorTransformer)
  {
    v4 = colorTransformer[2](colorTransformer, self->_color);
  }

  else
  {
    v4 = self->_color;
  }

  return v4;
}

- (int64_t)_effectiveTextAlignment
{
  alignment = self->_alignment;
  v3 = 3;
  if (alignment != 2)
  {
    v3 = 4;
  }

  if (alignment == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (UIListContentTextProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = UIListContentTextProperties;
  v5 = [(UIListContentTextProperties *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"font"];
    font = v5->_font;
    v5->_font = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v5->_color;
    v5->_color = v10;

    -[UIListContentTextProperties _setColorTransformerIdentifier:](v5, [coderCopy decodeIntegerForKey:@"colorTransformerIdentifier"]);
    v5->_alignment = [coderCopy decodeIntegerForKey:@"alignment"];
    v5->_lineBreakMode = [coderCopy decodeIntegerForKey:@"lineBreakMode"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedText"];
    attributedText = v5->_attributedText;
    v5->_attributedText = v12;

    v5->_numberOfLines = [coderCopy decodeIntegerForKey:@"numberOfLines"];
    v5->_adjustsFontSizeToFitWidth = [coderCopy decodeBoolForKey:@"adjustsFontSizeToFitWidth"];
    [coderCopy decodeDoubleForKey:@"minimumScaleFactor"];
    v5->_minimumScaleFactor = v14;
    v5->_allowsDefaultTighteningForTruncation = [coderCopy decodeBoolForKey:@"allowsDefaultTighteningForTruncation"];
    v5->_adjustsFontForContentSizeCategory = [coderCopy decodeBoolForKey:@"adjustsFontForContentSizeCategory"];
    v5->_showsExpansionTextWhenTruncated = [coderCopy decodeBoolForKey:@"showsExpansionTextWhenTruncated"];
    v5->_transform = [coderCopy decodeIntegerForKey:@"transform"];
    v5->__enablesMarqueeWhenAncestorFocused = [coderCopy decodeBoolForKey:@"marqueeWhenAncestorFocused"];
    if ([coderCopy containsValueForKey:@"monochromaticTreatment"])
    {
      v5->__monochromaticTreatment = [coderCopy decodeIntegerForKey:@"monochromaticTreatment"];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
    *&v5->_textFlags = *&v5->_textFlags & 0xFFFE | [coderCopy decodeBoolForKey:v15];

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"color"];
    if ([coderCopy decodeBoolForKey:v16])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFFD | v17;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"colorTransformerIdentifier"];
    if ([coderCopy decodeBoolForKey:v18])
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFFB | v19;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"alignment"];
    if ([coderCopy decodeBoolForKey:v20])
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFF7 | v21;

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
    if ([coderCopy decodeBoolForKey:v22])
    {
      v23 = 16;
    }

    else
    {
      v23 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFEF | v23;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
    if ([coderCopy decodeBoolForKey:v24])
    {
      v25 = 32;
    }

    else
    {
      v25 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFDF | v25;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
    if ([coderCopy decodeBoolForKey:v26])
    {
      v27 = 64;
    }

    else
    {
      v27 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFFBF | v27;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
    if ([coderCopy decodeBoolForKey:v28])
    {
      v29 = 128;
    }

    else
    {
      v29 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFF7F | v29;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
    if ([coderCopy decodeBoolForKey:v30])
    {
      v31 = 256;
    }

    else
    {
      v31 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFEFF | v31;

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontForContentSizeCategory"];
    if ([coderCopy decodeBoolForKey:v32])
    {
      v33 = 512;
    }

    else
    {
      v33 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFDFF | v33;

    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"showsExpansionTextWhenTruncated"];
    if ([coderCopy decodeBoolForKey:v34])
    {
      v35 = 1024;
    }

    else
    {
      v35 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xFBFF | v35;

    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"transform"];
    if ([coderCopy decodeBoolForKey:v36])
    {
      v37 = 2048;
    }

    else
    {
      v37 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xF7FF | v37;

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"marqueeWhenAncestorFocused"];
    if ([coderCopy decodeBoolForKey:v38])
    {
      v39 = 4096;
    }

    else
    {
      v39 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xEFFF | v39;

    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"monochromaticTreatment"];
    if ([coderCopy decodeBoolForKey:v40])
    {
      v41 = 0x2000;
    }

    else
    {
      v41 = 0;
    }

    *&v5->_textFlags = *&v5->_textFlags & 0xDFFF | v41;
  }

  return v5;
}

- (void)_setColorTransformerIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v4 = _UIConfigurationColorTransformerForIdentifier(a2);
    v5 = *(identifier + 48);
    *(identifier + 48) = v4;

    if (*(identifier + 48))
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    *(identifier + 112) = v6;
  }
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_font forKey:@"font"];
  [coderCopy encodeObject:self->_color forKey:@"color"];
  [coderCopy encodeInteger:self->_colorTransformerIdentifier forKey:@"colorTransformerIdentifier"];
  [coderCopy encodeInteger:self->_alignment forKey:@"alignment"];
  [coderCopy encodeInteger:self->_lineBreakMode forKey:@"lineBreakMode"];
  [coderCopy encodeObject:self->_attributedText forKey:@"attributedText"];
  [coderCopy encodeInteger:self->_numberOfLines forKey:@"numberOfLines"];
  [coderCopy encodeBool:self->_adjustsFontSizeToFitWidth forKey:@"adjustsFontSizeToFitWidth"];
  [coderCopy encodeDouble:@"minimumScaleFactor" forKey:self->_minimumScaleFactor];
  [coderCopy encodeBool:self->_allowsDefaultTighteningForTruncation forKey:@"allowsDefaultTighteningForTruncation"];
  [coderCopy encodeBool:self->_adjustsFontForContentSizeCategory forKey:@"adjustsFontForContentSizeCategory"];
  [coderCopy encodeBool:self->_showsExpansionTextWhenTruncated forKey:@"showsExpansionTextWhenTruncated"];
  [coderCopy encodeInteger:self->_transform forKey:@"transform"];
  [coderCopy encodeBool:self->__enablesMarqueeWhenAncestorFocused forKey:@"marqueeWhenAncestorFocused"];
  [coderCopy encodeInteger:self->__monochromaticTreatment forKey:@"monochromaticTreatment"];
  LOWORD(text) = self->_textFlags;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"font"];
  [coderCopy encodeBool:text & 1 forKey:v6];

  v7 = (*&self->_textFlags >> 1) & 1;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"color"];
  [coderCopy encodeBool:v7 forKey:v8];

  v9 = (*&self->_textFlags >> 2) & 1;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"colorTransformerIdentifier"];
  [coderCopy encodeBool:v9 forKey:v10];

  v11 = (*&self->_textFlags >> 3) & 1;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"alignment"];
  [coderCopy encodeBool:v11 forKey:v12];

  v13 = (*&self->_textFlags >> 4) & 1;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"lineBreakMode"];
  [coderCopy encodeBool:v13 forKey:v14];

  v15 = (*&self->_textFlags >> 5) & 1;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"numberOfLines"];
  [coderCopy encodeBool:v15 forKey:v16];

  v17 = (*&self->_textFlags >> 6) & 1;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontSizeToFitWidth"];
  [coderCopy encodeBool:v17 forKey:v18];

  v19 = (*&self->_textFlags >> 7) & 1;
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumScaleFactor"];
  [coderCopy encodeBool:v19 forKey:v20];

  v21 = HIBYTE(*&self->_textFlags) & 1;
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"allowsDefaultTighteningForTruncation"];
  [coderCopy encodeBool:v21 forKey:v22];

  v23 = (*&self->_textFlags >> 9) & 1;
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"adjustsFontForContentSizeCategory"];
  [coderCopy encodeBool:v23 forKey:v24];

  v25 = (*&self->_textFlags >> 10) & 1;
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"showsExpansionTextWhenTruncated"];
  [coderCopy encodeBool:v25 forKey:v26];

  v27 = (*&self->_textFlags >> 11) & 1;
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"transform"];
  [coderCopy encodeBool:v27 forKey:v28];

  v29 = (*&self->_textFlags >> 12) & 1;
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"marqueeWhenAncestorFocused"];
  [coderCopy encodeBool:v29 forKey:v30];

  v31 = (*&self->_textFlags >> 13) & 1;
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"monochromaticTreatment"];
  [coderCopy encodeBool:v31 forKey:v32];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(NSString *)self->_text copy];
    v6 = *(v4 + 24);
    *(v4 + 24) = v5;

    objc_storeStrong((v4 + 32), self->_font);
    objc_storeStrong((v4 + 40), self->_color);
    v7 = [self->_colorTransformer copy];
    v8 = *(v4 + 48);
    *(v4 + 48) = v7;

    *(v4 + 112) = self->_colorTransformerIdentifier;
    *(v4 + 56) = self->_alignment;
    *(v4 + 64) = self->_lineBreakMode;
    v9 = [(NSAttributedString *)self->_attributedText copy];
    v10 = *(v4 + 72);
    *(v4 + 72) = v9;

    *(v4 + 80) = self->_numberOfLines;
    *(v4 + 12) = self->_adjustsFontSizeToFitWidth;
    *(v4 + 88) = self->_minimumScaleFactor;
    *(v4 + 13) = self->_allowsDefaultTighteningForTruncation;
    *(v4 + 14) = self->_adjustsFontForContentSizeCategory;
    *(v4 + 15) = self->_showsExpansionTextWhenTruncated;
    *(v4 + 96) = self->_transform;
    *(v4 + 16) = self->__enablesMarqueeWhenAncestorFocused;
    *(v4 + 104) = self->__monochromaticTreatment;
    *(v4 + 8) = self->_textFlags;
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
    v6 = [(UIListContentTextProperties *)self _isEqualToProperties:v5 compareText:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToProperties:(int)properties compareText:
{
  v5 = a2;
  if (self)
  {
    if (([(UIListContentTextProperties *)self _isEqualToPropertiesQuick:v5 compareText:properties]& 1) != 0)
    {
      self = 1;
      goto LABEL_31;
    }

    if (properties)
    {
      v6 = *(v5 + 3);
      v7 = *(self + 24);
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {
          goto LABEL_29;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_30;
        }
      }

      v11 = *(v5 + 9);
      v7 = *(self + 72);
      v12 = v11;
      v9 = v12;
      if (v7 == v12)
      {
      }

      else
      {
        if (!v7 || !v12)
        {
          goto LABEL_29;
        }

        v13 = [v7 isEqual:v12];

        if (!v13)
        {
          goto LABEL_30;
        }
      }
    }

    if (*(self + 104) != *(v5 + 13))
    {
      goto LABEL_30;
    }

    v14 = *(v5 + 4);
    v7 = *(self + 32);
    v15 = v14;
    v9 = v15;
    if (v7 == v15)
    {
    }

    else
    {
      if (!v7 || !v15)
      {
        goto LABEL_29;
      }

      v16 = [v7 isEqual:v15];

      if (!v16)
      {
        goto LABEL_30;
      }
    }

    v17 = *(v5 + 5);
    v7 = *(self + 40);
    v18 = v17;
    v9 = v18;
    if (v7 == v18)
    {

      goto LABEL_33;
    }

    if (v7 && v18)
    {
      v19 = [v7 isEqual:v18];

      if (v19)
      {
LABEL_33:
        v21 = *(self + 112);
        if (v21 == *(v5 + 14) && (v21 != 1 || *(self + 48) == *(v5 + 6)) && *(self + 56) == *(v5 + 7) && *(self + 64) == *(v5 + 8) && *(self + 80) == *(v5 + 10) && *(self + 12) == v5[12] && *(self + 88) == *(v5 + 11) && *(self + 13) == v5[13] && *(self + 14) == v5[14] && *(self + 15) == v5[15] && *(self + 96) == *(v5 + 12))
        {
          self = *(self + 16) == v5[16];
          goto LABEL_31;
        }
      }

LABEL_30:
      self = 0;
      goto LABEL_31;
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_31:

  return self;
}

- (uint64_t)_isEqualToPropertiesQuick:(int)quick compareText:
{
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    goto LABEL_35;
  }

  if (v5 == self)
  {
    self = 1;
    goto LABEL_35;
  }

  if (quick)
  {
    v7 = v5[3];
    v8 = *(self + 24);
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
        goto LABEL_34;
      }
    }

    v12 = *(v6 + 9);
    v8 = *(self + 72);
    v13 = v12;
    v10 = v13;
    if (v8 != v13)
    {
      if (v8 && v13)
      {
        v14 = [v8 isEqual:v13];

        if (!v14)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

LABEL_16:

LABEL_34:
      self = 0;
      goto LABEL_35;
    }
  }

LABEL_18:
  if (*(self + 104) != *(v6 + 13))
  {
    goto LABEL_34;
  }

  if (*(self + 32) != *(v6 + 4))
  {
    goto LABEL_34;
  }

  if (*(self + 40) != *(v6 + 5))
  {
    goto LABEL_34;
  }

  v15 = *(self + 112);
  if (v15 != *(v6 + 14) || v15 == 1 && *(self + 48) != *(v6 + 6))
  {
    goto LABEL_34;
  }

  if (*(self + 56) != *(v6 + 7) || *(self + 64) != *(v6 + 8) || *(self + 80) != *(v6 + 10) || *(self + 12) != *(v6 + 12) || *(self + 88) != v6[11] || *(self + 13) != *(v6 + 13) || *(self + 14) != *(v6 + 14) || *(self + 15) != *(v6 + 15) || *(self + 96) != *(v6 + 12))
  {
    goto LABEL_34;
  }

  self = *(self + 16) == *(v6 + 16);
LABEL_35:

  return self;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_attributedText)
  {
    v4 = +[UIView _shouldRedactTextInDescription];
    v5 = MEMORY[0x1E696AEC0];
    if (v4)
    {
      string = [(NSAttributedString *)self->_attributedText string];
      v7 = _UIViewTextRedactedIfNecessaryForDescription(string);
      v8 = [v5 stringWithFormat:@"attributedText = %@", v7];
      [v3 addObject:v8];

LABEL_15:
      goto LABEL_16;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"attributedText = %@", self->_attributedText];
    string = LABEL_14:;
    [v3 addObject:string];
    goto LABEL_15;
  }

  text = self->_text;
  if (text)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = _UIViewTextRedactedIfNecessaryForDescription(text);
    v12 = [v10 stringWithFormat:@"text = %@", v11];
    [v3 addObject:v12];
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"font = %@", self->_font];
  [v3 addObject:v13];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"color = %@", self->_color];
  [v3 addObject:v14];

  colorTransformerIdentifier = self->_colorTransformerIdentifier;
  if (colorTransformerIdentifier)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = _UIConfigurationColorTransformerIdentifierToString(colorTransformerIdentifier);
    v18 = [v16 stringWithFormat:@"colorTransformer = %@", v17];
    [v3 addObject:v18];
  }

  alignment = self->_alignment;
  if (alignment)
  {
    if (alignment == 1)
    {
      v20 = @"center";
    }

    else
    {
      v20 = @"justified";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"alignment = %@", v20];
    goto LABEL_14;
  }

LABEL_16:
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"numberOfLines = %ld", self->_numberOfLines];
  [v3 addObject:v21];

  if (self->_adjustsFontSizeToFitWidth)
  {
    [v3 addObject:@"adjustsFontSizeToFitWidth = YES"];
  }

  if (self->_minimumScaleFactor != 0.0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"minimumScaleFactor = %g", *&self->_minimumScaleFactor];
    [v3 addObject:v22];
  }

  if (self->_allowsDefaultTighteningForTruncation)
  {
    [v3 addObject:@"allowsDefaultTighteningForTruncation = YES"];
  }

  if (self->_adjustsFontForContentSizeCategory)
  {
    [v3 addObject:@"adjustsFontForContentSizeCategory = YES"];
  }

  if (self->_showsExpansionTextWhenTruncated)
  {
    [v3 addObject:@"showsExpansionTextWhenTruncated = YES"];
  }

  v23 = self->_transform - 1;
  if (v23 <= 2)
  {
    [v3 addObject:off_1E7123BD0[v23]];
  }

  if (self->__enablesMarqueeWhenAncestorFocused)
  {
    [v3 addObject:@"enablesMarqueeWhenAncestorFocused = YES"];
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [v3 componentsJoinedByString:@" "];;
  v28 = [v24 stringWithFormat:@"<%@: %p %@>", v26, self, v27];;

  return v28;
}

- (__CFString)_shortDescription
{
  selfCopy = self;
  if (self)
  {
    if ([(__CFString *)self _hasText])
    {
      if (selfCopy[2].info)
      {
        v2 = +[UIView _shouldRedactTextInDescription];
        info = selfCopy[2].info;
        if (v2)
        {
          string = [info string];
          selfCopy = _UIViewTextRedactedIfNecessaryForDescription(string);

          goto LABEL_10;
        }

        v5 = [info description];
      }

      else
      {
        v5 = _UIViewTextRedactedIfNecessaryForDescription(selfCopy->length);
      }

      selfCopy = v5;
    }

    else
    {
      selfCopy = @"none";
    }
  }

LABEL_10:

  return selfCopy;
}

- (void)_applyToLabel:(uint64_t)label
{
  v3 = a2;
  if (!label)
  {
    goto LABEL_28;
  }

  v15 = v3;
  if (!*(label + 72))
  {
    _content = [v3 _content];
    isAttributed = [_content isAttributed];

    if (isAttributed)
    {
      [v15 setAttributedText:0];
    }
  }

  v6 = *(label + 96);
  switch(v6)
  {
    case 3:
      localizedCapitalizedString = [*(label + 24) localizedCapitalizedString];
      goto LABEL_11;
    case 2:
      localizedCapitalizedString = [*(label + 24) localizedLowercaseString];
      goto LABEL_11;
    case 1:
      localizedCapitalizedString = [*(label + 24) localizedUppercaseString];
LABEL_11:
      v8 = localizedCapitalizedString;
      [v15 setText:localizedCapitalizedString];

      goto LABEL_13;
  }

  [v15 setText:*(label + 24)];
LABEL_13:
  v9 = *(label + 32);
  if (*(label + 14) == 1 && [v15 adjustsFontForContentSizeCategory])
  {
    traitCollection = [v15 traitCollection];
    v11 = [v9 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

    v9 = v11;
  }

  [v15 setFont:v9];
  resolvedColor = [label resolvedColor];
  [v15 setTextColor:resolvedColor];

  [v15 setTextAlignment:{objc_msgSend(label, "_effectiveTextAlignment")}];
  if (*(label + 56))
  {
    v13 = 5;
  }

  else if ([v15 _shouldReverseLayoutDirection])
  {
    v13 = 10;
  }

  else
  {
    v13 = 9;
  }

  [v15 setContentMode:v13];
  [v15 setLineBreakMode:*(label + 64)];
  if (*(label + 72))
  {
    [v15 setAttributedText:?];
  }

  [v15 setNumberOfLines:*(label + 80)];
  [v15 setAdjustsFontSizeToFitWidth:*(label + 12)];
  [v15 setMinimumScaleFactor:*(label + 88)];
  [v15 setAllowsDefaultTighteningForTruncation:*(label + 13)];
  [v15 setAdjustsFontForContentSizeCategory:*(label + 14)];
  [v15 setShowsExpansionTextWhenTruncated:*(label + 15)];
  v14 = *(label + 104);
  if (v14 == -1)
  {
    v14 = (*(label + 8) & 2) == 0;
  }

  if (v14 == 1)
  {
    [v15 _setMonochromaticTreatment:1];
  }

  [v15 _setEnableMonochromaticTreatment:v14 == 1];

  v3 = v15;
LABEL_28:
}

- (void)_applyToTextField:(id)field
{
  fieldCopy = field;
  v13 = fieldCopy;
  if (!self->_attributedText)
  {
    [fieldCopy setAttributedText:0];
    fieldCopy = v13;
  }

  transform = self->_transform;
  switch(transform)
  {
    case 3:
      localizedCapitalizedString = [(NSString *)self->_text localizedCapitalizedString];
      break;
    case 2:
      localizedCapitalizedString = [(NSString *)self->_text localizedLowercaseString];
      break;
    case 1:
      localizedCapitalizedString = [(NSString *)self->_text localizedUppercaseString];
      break;
    default:
      [fieldCopy setText:self->_text];
      goto LABEL_11;
  }

  v7 = localizedCapitalizedString;
  [v13 setText:localizedCapitalizedString];

LABEL_11:
  v8 = self->_font;
  if (self->_adjustsFontForContentSizeCategory && [v13 adjustsFontForContentSizeCategory])
  {
    traitCollection = [v13 traitCollection];
    v10 = [(UIFont *)v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

    v8 = v10;
  }

  [v13 setFont:v8];
  resolvedColor = [(UIListContentTextProperties *)self resolvedColor];
  [v13 setTextColor:resolvedColor];

  [v13 setTextAlignment:{-[UIListContentTextProperties _effectiveTextAlignment](self, "_effectiveTextAlignment")}];
  if (self->_alignment)
  {
    v12 = 5;
  }

  else if ([v13 _shouldReverseLayoutDirection])
  {
    v12 = 10;
  }

  else
  {
    v12 = 9;
  }

  [v13 setContentMode:v12];
  if (self->_attributedText)
  {
    [v13 setAttributedText:?];
  }

  [v13 setAdjustsFontSizeToFitWidth:0];
  [v13 setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
}

- (void)_applyPropertiesFromDefaultProperties:(uint64_t)properties
{
  v3 = a2;
  if (properties)
  {
    v4 = *(properties + 8);
    v19 = v3;
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
        v5 = *(v3 + 4);
      }

      else
      {
        v5 = 0;
      }

      objc_storeStrong((properties + 32), v5);
      v4 = *(properties + 8);
      v3 = v19;
      if ((v4 & 2) != 0)
      {
LABEL_4:
        if ((v4 & 4) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    if (v3)
    {
      v6 = *(v3 + 5);
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong((properties + 40), v6);
    v4 = *(properties + 8);
    v3 = v19;
    if ((v4 & 4) != 0)
    {
LABEL_5:
      if ((v4 & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

LABEL_23:
    if (v3)
    {
      v7 = *(v3 + 6);
    }

    else
    {
      v7 = 0;
    }

    [(UIListContentTextProperties *)properties _setColorTransformer:v7];
    v4 = *(properties + 8);
    v3 = v19;
    if ((v4 & 8) != 0)
    {
LABEL_6:
      if ((v4 & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_26:
    if (v3)
    {
      v8 = *(v3 + 7);
    }

    else
    {
      v8 = 0;
    }

    *(properties + 56) = v8;
    if ((v4 & 0x10) != 0)
    {
LABEL_7:
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

LABEL_29:
    if (v3)
    {
      v9 = *(v3 + 8);
    }

    else
    {
      v9 = 0;
    }

    *(properties + 64) = v9;
    if ((v4 & 0x20) != 0)
    {
LABEL_8:
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_32:
    if (v3)
    {
      v10 = *(v3 + 10);
    }

    else
    {
      v10 = 0;
    }

    *(properties + 80) = v10;
    if ((v4 & 0x40) != 0)
    {
LABEL_9:
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

LABEL_35:
    if (v3)
    {
      v11 = *(v3 + 12);
    }

    else
    {
      v11 = 0;
    }

    *(properties + 12) = v11 & 1;
    if ((v4 & 0x80) != 0)
    {
LABEL_10:
      if ((v4 & 0x100) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

LABEL_38:
    if (v3)
    {
      v12 = *(v3 + 11);
    }

    else
    {
      v12 = 0;
    }

    *(properties + 88) = v12;
    if ((v4 & 0x100) != 0)
    {
LABEL_11:
      if ((v4 & 0x200) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_44;
    }

LABEL_41:
    if (v3)
    {
      v13 = *(v3 + 13);
    }

    else
    {
      v13 = 0;
    }

    *(properties + 13) = v13 & 1;
    if ((v4 & 0x200) != 0)
    {
LABEL_12:
      if ((v4 & 0x400) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }

LABEL_44:
    if (v3)
    {
      v14 = *(v3 + 14);
    }

    else
    {
      v14 = 0;
    }

    *(properties + 14) = v14 & 1;
    if ((v4 & 0x400) != 0)
    {
LABEL_13:
      if ((v4 & 0x800) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_50;
    }

LABEL_47:
    if (v3)
    {
      v15 = *(v3 + 15);
    }

    else
    {
      v15 = 0;
    }

    *(properties + 15) = v15 & 1;
    if ((v4 & 0x800) != 0)
    {
LABEL_14:
      if ((v4 & 0x1000) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_53;
    }

LABEL_50:
    if (v3)
    {
      v16 = *(v3 + 12);
    }

    else
    {
      v16 = 0;
    }

    *(properties + 96) = v16;
    if ((v4 & 0x1000) != 0)
    {
LABEL_15:
      if ((v4 & 0x2000) != 0)
      {
        goto LABEL_59;
      }

LABEL_56:
      if (v3)
      {
        v18 = *(v3 + 13);
      }

      else
      {
        v18 = 0;
      }

      *(properties + 104) = v18;
      goto LABEL_59;
    }

LABEL_53:
    if (v3)
    {
      v17 = *(v3 + 16);
    }

    else
    {
      v17 = 0;
    }

    *(properties + 16) = v17 & 1;
    if ((v4 & 0x2000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_59:
}

- (void)_setColorTransformer:(uint64_t)transformer
{
  if (transformer)
  {
    v3 = a2;
    *(transformer + 112) = _UIConfigurationIdentifierForColorTransformer(v3);
    v4 = [v3 copy];

    v5 = *(transformer + 48);
    *(transformer + 48) = v4;
  }
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

  objc_setProperty_nonatomic_copy(self, v5, newValue, 24);
  textCopy = newValue;
LABEL_5:
}

- (UIConfigurationColorTransformer)colorTransformer
{
  v2 = _Block_copy(self->_colorTransformer);

  return v2;
}

- (void)setAttributedText:(void *)text
{
  v3 = a2;
  if (text)
  {
    newValue = v3;
    if (v3)
    {
      v5 = text[3];
      text[3] = 0;
    }

    objc_setProperty_nonatomic_copy(text, v4, newValue, 72);
    v3 = newValue;
  }
}

- (void)_configureWithConstants:(void *)constants traitCollection:(uint64_t)collection forSidebar:
{
  if (self)
  {
    constantsCopy = constants;
    v8 = a2;
    *(self + 80) = [v8 defaultLabelNumberOfLinesForSidebar:collection traitCollection:constantsCopy];
    *(self + 13) = [v8 defaultLabelAllowsTighteningForTruncationForSidebar:collection traitCollection:constantsCopy];
    [v8 defaultLabelMinimumScaleFactorForSidebar:collection traitCollection:constantsCopy];
    v10 = v9;

    *(self + 12) = v10 > 0.0;
    *(self + 88) = v10;
    *(self + 14) = 257;
  }
}

@end