@interface PXMonthsLayoutMetrics
- (BOOL)isEqual:(id)equal;
- (PXMonthsLayoutMetrics)init;
- (UIEdgeInsets)chapterHeaderPadding;
- (UIEdgeInsets)padding;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXMonthsLayoutMetrics

- (PXMonthsLayoutMetrics)init
{
  v3.receiver = self;
  v3.super_class = PXMonthsLayoutMetrics;
  result = [(PXMonthsLayoutMetrics *)&v3 init];
  if (result)
  {
    result->_defaultSectionAspectRatio = 1.0;
    result->_chapterHeaderHeight = 50.0;
    result->_displaceTopLeadingCardTitle = 0;
  }

  return result;
}

- (UIEdgeInsets)chapterHeaderPadding
{
  top = self->_chapterHeaderPadding.top;
  left = self->_chapterHeaderPadding.left;
  bottom = self->_chapterHeaderPadding.bottom;
  right = self->_chapterHeaderPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v16.receiver = self;
      v16.super_class = PXMonthsLayoutMetrics;
      if ([(PXLayoutMetrics *)&v16 isEqual:v5])
      {
        sizeClass = [(PXMonthsLayoutMetrics *)v5 sizeClass];
        if (sizeClass == [(PXMonthsLayoutMetrics *)self sizeClass])
        {
          orientation = [(PXMonthsLayoutMetrics *)v5 orientation];
          if (orientation == [(PXMonthsLayoutMetrics *)self orientation])
          {
            [(PXMonthsLayoutMetrics *)v5 interitemSpacing];
            v9 = v8;
            [(PXMonthsLayoutMetrics *)self interitemSpacing];
            if (v9 == v10)
            {
              [(PXMonthsLayoutMetrics *)v5 defaultSectionAspectRatio];
              v12 = v11;
              [(PXMonthsLayoutMetrics *)self defaultSectionAspectRatio];
              if (v12 == v13)
              {
                [(PXMonthsLayoutMetrics *)v5 padding];
                [(PXMonthsLayoutMetrics *)self padding];
                PXEdgeInsetsEqualToEdgeInsets();
              }
            }
          }
        }
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PXMonthsLayoutMetrics;
  v3 = [(PXLayoutMetrics *)&v6 hash];
  v4 = v3 ^ (2 * [(PXMonthsLayoutMetrics *)self sizeClass]);
  return v4 ^ (4 * [(PXMonthsLayoutMetrics *)self orientation]);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PXMonthsLayoutMetrics;
  result = [(PXLayoutMetrics *)&v7 copyWithZone:zone];
  *(result + 4) = self->_sizeClass;
  *(result + 5) = self->_orientation;
  *(result + 6) = *&self->_interitemSpacing;
  *(result + 7) = *&self->_defaultSectionAspectRatio;
  v5 = *&self->_padding.bottom;
  *(result + 5) = *&self->_padding.top;
  *(result + 6) = v5;
  *(result + 8) = *&self->_chapterHeaderHeight;
  v6 = *&self->_chapterHeaderPadding.bottom;
  *(result + 7) = *&self->_chapterHeaderPadding.top;
  *(result + 8) = v6;
  *(result + 24) = self->_displaceTopLeadingCardTitle;
  *(result + 9) = self->_layoutStyle;
  return result;
}

@end