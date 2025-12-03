@interface TUIFlickVariantCell
- (UIEdgeInsets)backgroundInsets;
- (double)backgroundCornerRadius;
- (void)setCurvedCorners:(unint64_t)corners;
@end

@implementation TUIFlickVariantCell

- (void)setCurvedCorners:(unint64_t)corners
{
  if (self->_curvedCorners != corners)
  {
    [(TUIFlickVariantCell *)self setCornerMaskForBackground:0];
    if (corners)
    {
      [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 1];
      if ((corners & 2) == 0)
      {
LABEL_4:
        if ((corners & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    else if ((corners & 2) == 0)
    {
      goto LABEL_4;
    }

    [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 2];
    if ((corners & 4) == 0)
    {
LABEL_5:
      if ((corners & 8) == 0)
      {
LABEL_7:
        self->_curvedCorners = corners;
        return;
      }

LABEL_6:
      [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 8];
      goto LABEL_7;
    }

LABEL_11:
    [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 4];
    if ((corners & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }
}

- (double)backgroundCornerRadius
{
  variantGeometriesForCell = [(TUIVariantCell *)self variantGeometriesForCell];
  lastObject = [variantGeometriesForCell lastObject];
  [lastObject roundRectRadius];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)backgroundInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end