@interface PXLabelSpec
- (BOOL)isEqual:(id)equal;
- (PXLabelSpec)init;
- (UIEdgeInsets)contentInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXLabelSpec

- (PXLabelSpec)init
{
  v3.receiver = self;
  v3.super_class = PXLabelSpec;
  result = [(PXViewSpec *)&v3 init];
  if (result)
  {
    result->_textAlignment = 4;
    result->_verticalAlignment = 0;
  }

  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PXLabelSpec;
  v4 = [(PXViewSpec *)&v7 copyWithZone:zone];
  objc_storeStrong(v4 + 14, self->_font);
  objc_storeStrong(v4 + 13, self->_textColor);
  objc_storeStrong(v4 + 15, self->_textAttributes);
  objc_storeStrong(v4 + 16, self->_fallbackTextAttributes);
  v4[17] = self->_textAlignment;
  v4[18] = self->_numberOfLines;
  v4[19] = self->_verticalAlignment;
  v4[20] = self->_capitalization;
  v4[21] = self->_fallbackCapitalization;
  v5 = *&self->_contentInsets.bottom;
  *(v4 + 12) = *&self->_contentInsets.top;
  *(v4 + 13) = v5;
  *(v4 + 96) = self->_adjustsFontSizeToFitWidth;
  v4[22] = *&self->_minimumScaleFactor;
  *(v4 + 97) = self->_allowTruncation;
  v4[23] = *&self->_minimumTruncatedScaleFactor;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v46.receiver = self;
  v46.super_class = PXLabelSpec;
  v5 = [(PXViewSpec *)&v46 isEqual:equalCopy];
  v6 = equalCopy;
  v7 = v6;
  if (v5)
  {
    font = [v6 font];
    font2 = [(PXLabelSpec *)self font];
    v10 = font2;
    if (font == font2)
    {
    }

    else
    {
      v11 = [font isEqual:font2];

      if ((v11 & 1) == 0)
      {
LABEL_26:
        LOBYTE(v5) = 0;
        goto LABEL_27;
      }
    }

    textColor = [v7 textColor];
    textColor2 = [(PXLabelSpec *)self textColor];
    v14 = textColor2;
    if (textColor == textColor2)
    {
    }

    else
    {
      v15 = [textColor isEqual:textColor2];

      if ((v15 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    textAttributes = [v7 textAttributes];
    textAttributes2 = [(PXLabelSpec *)self textAttributes];
    v18 = textAttributes2;
    if (textAttributes == textAttributes2)
    {
    }

    else
    {
      v19 = [textAttributes isEqual:textAttributes2];

      if ((v19 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    textAlignment = [v7 textAlignment];
    if (textAlignment != [(PXLabelSpec *)self textAlignment])
    {
      goto LABEL_26;
    }

    verticalAlignment = [v7 verticalAlignment];
    if (verticalAlignment != [(PXLabelSpec *)self verticalAlignment])
    {
      goto LABEL_26;
    }

    capitalization = [v7 capitalization];
    if (capitalization != [(PXLabelSpec *)self capitalization])
    {
      goto LABEL_26;
    }

    fallbackCapitalization = [v7 fallbackCapitalization];
    if (fallbackCapitalization != [(PXLabelSpec *)self fallbackCapitalization])
    {
      goto LABEL_26;
    }

    numberOfLines = [v7 numberOfLines];
    if (numberOfLines != [(PXLabelSpec *)self numberOfLines])
    {
      goto LABEL_26;
    }

    [v7 contentInsets];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(PXLabelSpec *)self contentInsets];
    LOBYTE(v5) = 0;
    if (v28 == v36 && v26 == v33 && v32 == v35 && v30 == v34)
    {
      adjustsFontSizeToFitWidth = [v7 adjustsFontSizeToFitWidth];
      if (adjustsFontSizeToFitWidth == [(PXLabelSpec *)self adjustsFontSizeToFitWidth])
      {
        [v7 minimumScaleFactor];
        v39 = v38;
        [(PXLabelSpec *)self minimumScaleFactor];
        if (v39 == v40)
        {
          allowTruncation = [v7 allowTruncation];
          if (allowTruncation == [(PXLabelSpec *)self allowTruncation])
          {
            [v7 minimumTruncatedScaleFactor];
            v44 = v43;
            [(PXLabelSpec *)self minimumTruncatedScaleFactor];
            LOBYTE(v5) = v44 == v45;
            goto LABEL_27;
          }
        }
      }

      goto LABEL_26;
    }
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = PXLabelSpec;
  v3 = [(PXViewSpec *)&v17 hash];
  font = [(PXLabelSpec *)self font];
  v5 = [font hash];

  textColor = [(PXLabelSpec *)self textColor];
  v7 = v5 ^ [textColor hash];

  textAttributes = [(PXLabelSpec *)self textAttributes];
  v9 = v7 ^ [textAttributes hash] ^ v3;

  v10 = v9 ^ (2 * [(PXLabelSpec *)self textAlignment]);
  v11 = v10 ^ (4 * [(PXLabelSpec *)self capitalization]);
  v12 = v11 ^ (8 * [(PXLabelSpec *)self numberOfLines]);
  if ([(PXLabelSpec *)self adjustsFontSizeToFitWidth])
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  allowTruncation = [(PXLabelSpec *)self allowTruncation];
  v15 = 32;
  if (!allowTruncation)
  {
    v15 = 0;
  }

  return v12 ^ v13 ^ v15;
}

@end