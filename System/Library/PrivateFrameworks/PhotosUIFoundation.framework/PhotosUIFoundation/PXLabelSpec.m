@interface PXLabelSpec
- (BOOL)isEqual:(id)a3;
- (PXLabelSpec)init;
- (UIEdgeInsets)contentInsets;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = PXLabelSpec;
  v4 = [(PXViewSpec *)&v7 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = PXLabelSpec;
  v5 = [(PXViewSpec *)&v46 isEqual:v4];
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = [v6 font];
    v9 = [(PXLabelSpec *)self font];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [v8 isEqual:v9];

      if ((v11 & 1) == 0)
      {
LABEL_26:
        LOBYTE(v5) = 0;
        goto LABEL_27;
      }
    }

    v12 = [v7 textColor];
    v13 = [(PXLabelSpec *)self textColor];
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      v15 = [v12 isEqual:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v16 = [v7 textAttributes];
    v17 = [(PXLabelSpec *)self textAttributes];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [v16 isEqual:v17];

      if ((v19 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v20 = [v7 textAlignment];
    if (v20 != [(PXLabelSpec *)self textAlignment])
    {
      goto LABEL_26;
    }

    v21 = [v7 verticalAlignment];
    if (v21 != [(PXLabelSpec *)self verticalAlignment])
    {
      goto LABEL_26;
    }

    v22 = [v7 capitalization];
    if (v22 != [(PXLabelSpec *)self capitalization])
    {
      goto LABEL_26;
    }

    v23 = [v7 fallbackCapitalization];
    if (v23 != [(PXLabelSpec *)self fallbackCapitalization])
    {
      goto LABEL_26;
    }

    v24 = [v7 numberOfLines];
    if (v24 != [(PXLabelSpec *)self numberOfLines])
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
      v37 = [v7 adjustsFontSizeToFitWidth];
      if (v37 == [(PXLabelSpec *)self adjustsFontSizeToFitWidth])
      {
        [v7 minimumScaleFactor];
        v39 = v38;
        [(PXLabelSpec *)self minimumScaleFactor];
        if (v39 == v40)
        {
          v41 = [v7 allowTruncation];
          if (v41 == [(PXLabelSpec *)self allowTruncation])
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
  v4 = [(PXLabelSpec *)self font];
  v5 = [v4 hash];

  v6 = [(PXLabelSpec *)self textColor];
  v7 = v5 ^ [v6 hash];

  v8 = [(PXLabelSpec *)self textAttributes];
  v9 = v7 ^ [v8 hash] ^ v3;

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

  v14 = [(PXLabelSpec *)self allowTruncation];
  v15 = 32;
  if (!v14)
  {
    v15 = 0;
  }

  return v12 ^ v13 ^ v15;
}

@end