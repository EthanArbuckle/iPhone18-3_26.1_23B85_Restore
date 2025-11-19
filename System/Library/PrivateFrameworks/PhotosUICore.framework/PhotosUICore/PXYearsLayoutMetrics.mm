@interface PXYearsLayoutMetrics
- (BOOL)isEqual:(id)a3;
- (PXYearsLayoutMetrics)init;
- (UIEdgeInsets)padding;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXYearsLayoutMetrics

- (PXYearsLayoutMetrics)init
{
  v3.receiver = self;
  v3.super_class = PXYearsLayoutMetrics;
  result = [(PXYearsLayoutMetrics *)&v3 init];
  if (result)
  {
    result->_defaultItemAspectRatio = 1.0;
    result->_multiColumnAspectRatio = 1.0;
  }

  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v19.receiver = self;
      v19.super_class = PXYearsLayoutMetrics;
      if ([(PXLayoutMetrics *)&v19 isEqual:v5])
      {
        v6 = [(PXYearsLayoutMetrics *)v5 sizeClass];
        if (v6 == [(PXYearsLayoutMetrics *)self sizeClass])
        {
          v7 = [(PXYearsLayoutMetrics *)v5 orientation];
          if (v7 == [(PXYearsLayoutMetrics *)self orientation])
          {
            [(PXYearsLayoutMetrics *)v5 interitemSpacing];
            v9 = v8;
            [(PXYearsLayoutMetrics *)self interitemSpacing];
            if (v9 == v10)
            {
              [(PXYearsLayoutMetrics *)v5 defaultItemAspectRatio];
              v12 = v11;
              [(PXYearsLayoutMetrics *)self defaultItemAspectRatio];
              if (v12 == v13)
              {
                [(PXYearsLayoutMetrics *)v5 multiColumnAspectRatio];
                v15 = v14;
                [(PXYearsLayoutMetrics *)self multiColumnAspectRatio];
                if (v15 == v16)
                {
                  [(PXYearsLayoutMetrics *)v5 padding];
                  [(PXYearsLayoutMetrics *)self padding];
                  PXEdgeInsetsEqualToEdgeInsets();
                }
              }
            }
          }
        }
      }

      v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PXYearsLayoutMetrics;
  v3 = [(PXLayoutMetrics *)&v6 hash];
  v4 = v3 ^ (2 * [(PXYearsLayoutMetrics *)self sizeClass]);
  return v4 ^ (4 * [(PXYearsLayoutMetrics *)self orientation]);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PXYearsLayoutMetrics;
  result = [(PXLayoutMetrics *)&v6 copyWithZone:a3];
  *(result + 3) = self->_sizeClass;
  *(result + 4) = self->_orientation;
  *(result + 5) = *&self->_interitemSpacing;
  *(result + 6) = *&self->_defaultItemAspectRatio;
  *(result + 7) = *&self->_multiColumnAspectRatio;
  v5 = *&self->_padding.bottom;
  *(result + 72) = *&self->_padding.top;
  *(result + 88) = v5;
  *(result + 8) = self->_layoutStyle;
  return result;
}

@end