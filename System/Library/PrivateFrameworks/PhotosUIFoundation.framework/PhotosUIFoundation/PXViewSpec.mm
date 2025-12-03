@interface PXViewSpec
- (BOOL)isEqual:(id)equal;
- (PXViewSpec)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    backgroundColor = [(PXViewSpec *)self backgroundColor];
    backgroundColor2 = [v5 backgroundColor];
    v8 = backgroundColor2;
    if (backgroundColor == backgroundColor2)
    {
    }

    else
    {
      v9 = [backgroundColor isEqual:backgroundColor2];

      if ((v9 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    selectionHighlightColor = [(PXViewSpec *)self selectionHighlightColor];
    selectionHighlightColor2 = [v5 selectionHighlightColor];
    v13 = selectionHighlightColor2;
    if (selectionHighlightColor == selectionHighlightColor2)
    {
    }

    else
    {
      v14 = [selectionHighlightColor isEqual:selectionHighlightColor2];

      if ((v14 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    borderColor = [(PXViewSpec *)self borderColor];
    borderColor2 = [v5 borderColor];
    v17 = borderColor2;
    if (borderColor == borderColor2)
    {
    }

    else
    {
      v18 = [borderColor isEqual:borderColor2];

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

    cornerCurve = [(PXViewSpec *)self cornerCurve];
    cornerCurve2 = [v5 cornerCurve];
    v27 = cornerCurve2;
    if (cornerCurve == cornerCurve2)
    {
    }

    else
    {
      v28 = [cornerCurve isEqual:cornerCurve2];

      if ((v28 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    cornerMask = [(PXViewSpec *)self cornerMask];
    if (cornerMask == [v5 cornerMask])
    {
      [(PXViewSpec *)self displayScale];
      v31 = v30;
      [v5 displayScale];
      if (v31 == v32)
      {
        compositingFilterType = [(PXViewSpec *)self compositingFilterType];
        if (compositingFilterType == [v5 compositingFilterType])
        {
          isHidden = [(PXViewSpec *)self isHidden];
          if (isHidden == [v5 isHidden])
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
  backgroundColor = [(PXViewSpec *)self backgroundColor];
  v4 = [backgroundColor hash];

  selectionHighlightColor = [(PXViewSpec *)self selectionHighlightColor];
  v6 = [selectionHighlightColor hash] ^ v4;

  borderColor = [(PXViewSpec *)self borderColor];
  v8 = v6 ^ [borderColor hash];

  v9 = vshlq_u64(vcvtq_s64_f64(*&self->_borderWidth), xmmword_1B406FF50);
  return v8 ^ v9.i64[0] ^ v9.i64[1] ^ (8 * self->_cornerMask) ^ (16 * self->_displayScale) ^ (32 * self->_hidden);
}

@end