@interface TUIFlickVariantCell
- (UIEdgeInsets)backgroundInsets;
- (double)backgroundCornerRadius;
- (void)setCurvedCorners:(unint64_t)a3;
@end

@implementation TUIFlickVariantCell

- (void)setCurvedCorners:(unint64_t)a3
{
  if (self->_curvedCorners != a3)
  {
    [(TUIFlickVariantCell *)self setCornerMaskForBackground:0];
    if (a3)
    {
      [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 1];
      if ((a3 & 2) == 0)
      {
LABEL_4:
        if ((a3 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    else if ((a3 & 2) == 0)
    {
      goto LABEL_4;
    }

    [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 2];
    if ((a3 & 4) == 0)
    {
LABEL_5:
      if ((a3 & 8) == 0)
      {
LABEL_7:
        self->_curvedCorners = a3;
        return;
      }

LABEL_6:
      [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 8];
      goto LABEL_7;
    }

LABEL_11:
    [(TUIFlickVariantCell *)self setCornerMaskForBackground:[(TUIFlickVariantCell *)self cornerMaskForBackground]| 4];
    if ((a3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }
}

- (double)backgroundCornerRadius
{
  v2 = [(TUIVariantCell *)self variantGeometriesForCell];
  v3 = [v2 lastObject];
  [v3 roundRectRadius];
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