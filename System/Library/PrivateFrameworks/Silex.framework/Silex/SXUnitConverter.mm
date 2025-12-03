@interface SXUnitConverter
- (SXUnitConverter)initWithComponentWidth:(double)width parentWidth:(double)parentWidth documentGutter:(double)gutter documentMargin:(double)margin viewportSize:(CGSize)size contentScaleFactor:(double)factor;
- (double)convertValueToPoints:(_SXConvertibleValue)points allowNegativeValues:(BOOL)values;
@end

@implementation SXUnitConverter

- (SXUnitConverter)initWithComponentWidth:(double)width parentWidth:(double)parentWidth documentGutter:(double)gutter documentMargin:(double)margin viewportSize:(CGSize)size contentScaleFactor:(double)factor
{
  height = size.height;
  width = size.width;
  v16.receiver = self;
  v16.super_class = SXUnitConverter;
  result = [(SXUnitConverter *)&v16 init];
  if (result)
  {
    result->_componentWidth = width;
    result->_parentWidth = parentWidth;
    result->_documentGutter = gutter;
    result->_documentMargin = margin;
    result->_viewportSize.width = width;
    result->_viewportSize.height = height;
    result->_contentScaleFactor = factor;
  }

  return result;
}

- (double)convertValueToPoints:(_SXConvertibleValue)points allowNegativeValues:(BOOL)values
{
  v4 = 0.0;
  if (points.value > 0.0 || values)
  {
    switch(points.unit)
    {
      case 0uLL:
      case 1uLL:
        v4 = self->_contentScaleFactor * points.value;
        return round(v4);
      case 2uLL:
        if (!self)
        {
          goto LABEL_33;
        }

        height = self->_viewportSize.height;
        goto LABEL_18;
      case 3uLL:
        if (!self)
        {
          goto LABEL_33;
        }

        height = self->_viewportSize.width;
LABEL_18:
        v6 = points.value / 100.0;
        goto LABEL_24;
      case 4uLL:
        if (!self)
        {
          goto LABEL_33;
        }

        v6 = OUTLINED_FUNCTION_2(points.value);
        if (!v9)
        {
          height = v8;
        }

        goto LABEL_24;
      case 5uLL:
        if (self)
        {
          v6 = OUTLINED_FUNCTION_2(points.value);
          if (v9)
          {
            height = v11;
          }

LABEL_24:
          v12 = v6 * height;
        }

        else
        {
LABEL_33:
          v12 = 0.0;
        }

        contentScaleFactor = self->_contentScaleFactor;
        goto LABEL_31;
      case 6uLL:
        if (!self)
        {
          return round(v4);
        }

        contentScaleFactor = self->_documentGutter;
        goto LABEL_30;
      case 7uLL:
        if (!self)
        {
          return round(v4);
        }

        contentScaleFactor = self->_componentWidth;
        goto LABEL_30;
      case 8uLL:
        if (!self)
        {
          return round(v4);
        }

        contentScaleFactor = self->_documentMargin;
        goto LABEL_30;
      case 9uLL:
        if (!self)
        {
          return round(v4);
        }

        contentScaleFactor = self->_parentWidth;
        if (contentScaleFactor <= 2.22044605e-16)
        {
          contentScaleFactor = self->_viewportSize.width * self->_contentScaleFactor;
        }

LABEL_30:
        v12 = points.value / 100.0;
LABEL_31:
        v4 = v12 * contentScaleFactor;
        break;
      default:
        return round(v4);
    }
  }

  return round(v4);
}

@end