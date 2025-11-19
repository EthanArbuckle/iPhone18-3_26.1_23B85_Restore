@interface PXViewSpec
- (BOOL)isEqual:(id)a3;
- (PXViewSpec)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXViewSpec

- (PXViewSpec)init
{
  v3.receiver = self;
  v3.super_class = PXViewSpec;
  result = [(PXViewSpec *)&v3 init];
  if (result)
  {
    result->_displayScale = 1.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 16), self->_backgroundColor);
  objc_storeStrong((v4 + 24), self->_selectionHighlightColor);
  objc_storeStrong((v4 + 32), self->_borderColor);
  *(v4 + 40) = self->_borderWidth;
  *(v4 + 48) = self->_cornerRadius;
  v5 = [(NSString *)self->_cornerCurve copy];
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;

  *(v4 + 64) = self->_cornerMask;
  *(v4 + 72) = self->_displayScale;
  *(v4 + 88) = self->_compositingFilterType;
  *(v4 + 8) = self->_hidden;
  *(v4 + 80) = self->_rotationAngle;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXViewSpec *)self backgroundColor];
    v7 = [v5 backgroundColor];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v6 isEqual:v7];

      if ((v9 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v11 = [(PXViewSpec *)self selectionHighlightColor];
    v12 = [v5 selectionHighlightColor];
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      v14 = [v11 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v15 = [(PXViewSpec *)self borderColor];
    v16 = [v5 borderColor];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [v15 isEqual:v16];

      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    [(PXViewSpec *)self borderWidth];
    v20 = v19;
    [v5 borderWidth];
    if (v20 != v21)
    {
      goto LABEL_25;
    }

    [(PXViewSpec *)self cornerRadius];
    v23 = v22;
    [v5 cornerRadius];
    if (v23 != v24)
    {
      goto LABEL_25;
    }

    v25 = [(PXViewSpec *)self cornerCurve];
    v26 = [v5 cornerCurve];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [v25 isEqual:v26];

      if ((v28 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v29 = [(PXViewSpec *)self cornerMask];
    if (v29 == [v5 cornerMask])
    {
      [(PXViewSpec *)self displayScale];
      v31 = v30;
      [v5 displayScale];
      if (v31 == v32)
      {
        v33 = [(PXViewSpec *)self compositingFilterType];
        if (v33 == [v5 compositingFilterType])
        {
          v34 = [(PXViewSpec *)self isHidden];
          if (v34 == [v5 isHidden])
          {
            [(PXViewSpec *)self rotationAngle];
            v37 = v36;
            [v5 rotationAngle];
            v10 = v37 == v38;
            goto LABEL_26;
          }
        }
      }
    }

LABEL_25:
    v10 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v10 = 0;
LABEL_27:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PXViewSpec *)self backgroundColor];
  v4 = [v3 hash];

  v5 = [(PXViewSpec *)self selectionHighlightColor];
  v6 = [v5 hash] ^ v4;

  v7 = [(PXViewSpec *)self borderColor];
  v8 = v6 ^ [v7 hash];

  v9 = vshlq_u64(vcvtq_s64_f64(*&self->_borderWidth), xmmword_1B406FF50);
  return v8 ^ v9.i64[0] ^ v9.i64[1] ^ (8 * self->_cornerMask) ^ (16 * self->_displayScale) ^ (32 * self->_hidden);
}

@end