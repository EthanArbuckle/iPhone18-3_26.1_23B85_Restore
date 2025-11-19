@interface SXFillPositioning
+ (CGRect)frameForFillWithDimensions:(CGSize)a3 withinBounds:(CGSize)a4 fillMode:(unint64_t)a5 horizontalAlignment:(unint64_t)a6 verticalAlignment:(unint64_t)a7;
@end

@implementation SXFillPositioning

+ (CGRect)frameForFillWithDimensions:(CGSize)a3 withinBounds:(CGSize)a4 fillMode:(unint64_t)a5 horizontalAlignment:(unint64_t)a6 verticalAlignment:(unint64_t)a7
{
  height = a3.height;
  v8 = *(MEMORY[0x1E695F060] + 8);
  v9 = 0.0;
  v10 = *MEMORY[0x1E695F060] == a3.width && v8 == height;
  if (v10 || ((width = a4.width, *MEMORY[0x1E695F060] == a4.width) ? (v12 = v8 == a4.height) : (v12 = 0), v12))
  {
    v15 = 0.0;
    goto LABEL_25;
  }

  v13 = a4.height;
  if (a5)
  {
    if (a5 != 1)
    {
      goto LABEL_18;
    }

    v14 = a4.width / a3.width;
    if (a4.width / a3.width < a4.height / height)
    {
      v14 = a4.height / height;
    }
  }

  else
  {
    v14 = a4.width / a3.width;
    if (a4.width / a3.width >= a4.height / height)
    {
      v14 = a4.height / height;
    }
  }

  a4.width = a3.width * v14;
  a4.height = height * v14;
LABEL_18:
  v9 = v13 - a4.height;
  if (a7 != 2)
  {
    v9 = v9 * 0.5;
    if (a7 != 1)
    {
      v9 = 0.0;
    }
  }

  if (a6 == 2)
  {
    v15 = width - a4.width;
  }

  else
  {
    v15 = 0.0;
    if (a6 == 1)
    {
      v15 = (width - a4.width) * 0.5;
    }
  }

LABEL_25:
  result.size.height = a4.height;
  result.size.width = a4.width;
  result.origin.y = v9;
  result.origin.x = v15;
  return result;
}

@end