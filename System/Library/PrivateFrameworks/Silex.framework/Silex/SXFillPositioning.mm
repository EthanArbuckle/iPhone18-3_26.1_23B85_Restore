@interface SXFillPositioning
+ (CGRect)frameForFillWithDimensions:(CGSize)dimensions withinBounds:(CGSize)bounds fillMode:(unint64_t)mode horizontalAlignment:(unint64_t)alignment verticalAlignment:(unint64_t)verticalAlignment;
@end

@implementation SXFillPositioning

+ (CGRect)frameForFillWithDimensions:(CGSize)dimensions withinBounds:(CGSize)bounds fillMode:(unint64_t)mode horizontalAlignment:(unint64_t)alignment verticalAlignment:(unint64_t)verticalAlignment
{
  height = dimensions.height;
  v8 = *(MEMORY[0x1E695F060] + 8);
  v9 = 0.0;
  v10 = *MEMORY[0x1E695F060] == dimensions.width && v8 == height;
  if (v10 || ((width = bounds.width, *MEMORY[0x1E695F060] == bounds.width) ? (v12 = v8 == bounds.height) : (v12 = 0), v12))
  {
    v15 = 0.0;
    goto LABEL_25;
  }

  v13 = bounds.height;
  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_18;
    }

    v14 = bounds.width / dimensions.width;
    if (bounds.width / dimensions.width < bounds.height / height)
    {
      v14 = bounds.height / height;
    }
  }

  else
  {
    v14 = bounds.width / dimensions.width;
    if (bounds.width / dimensions.width >= bounds.height / height)
    {
      v14 = bounds.height / height;
    }
  }

  bounds.width = dimensions.width * v14;
  bounds.height = height * v14;
LABEL_18:
  v9 = v13 - bounds.height;
  if (verticalAlignment != 2)
  {
    v9 = v9 * 0.5;
    if (verticalAlignment != 1)
    {
      v9 = 0.0;
    }
  }

  if (alignment == 2)
  {
    v15 = width - bounds.width;
  }

  else
  {
    v15 = 0.0;
    if (alignment == 1)
    {
      v15 = (width - bounds.width) * 0.5;
    }
  }

LABEL_25:
  result.size.height = bounds.height;
  result.size.width = bounds.width;
  result.origin.y = v9;
  result.origin.x = v15;
  return result;
}

@end