@interface SXMosaicGalleryColumnLayout
- (SXMosaicGalleryColumnLayout)initWithWidth:(double)a3 gutter:(double)a4;
- (double)positionOfColumn:(unint64_t)a3 inNumberOfColumns:(unint64_t)a4;
- (double)widthForColumnRange:(_NSRange)a3 numberOfColumns:(unint64_t)a4;
- (double)widthOfColumn:(unint64_t)a3 inNumberOfColumns:(unint64_t)a4;
@end

@implementation SXMosaicGalleryColumnLayout

- (SXMosaicGalleryColumnLayout)initWithWidth:(double)a3 gutter:(double)a4
{
  v7.receiver = self;
  v7.super_class = SXMosaicGalleryColumnLayout;
  result = [(SXMosaicGalleryColumnLayout *)&v7 init];
  if (result)
  {
    result->_width = a3;
    result->_gutter = a4;
  }

  return result;
}

- (double)widthForColumnRange:(_NSRange)a3 numberOfColumns:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8 = a3.location + a3.length;
  v9 = 0.0;
  if (a3.location < a3.location + a3.length)
  {
    v10 = a3.length;
    v11 = a3.location;
    do
    {
      [(SXMosaicGalleryColumnLayout *)self widthOfColumn:v11 inNumberOfColumns:a4];
      v9 = v9 + v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  if (a4 != 1 && length != a4)
  {
    [(SXMosaicGalleryColumnLayout *)self gutter];
    if (!location || v8 == a4)
    {
      return v9 + v13 * -0.5;
    }

    else
    {
      return v9 - v13;
    }
  }

  return v9;
}

- (double)positionOfColumn:(unint64_t)a3 inNumberOfColumns:(unint64_t)a4
{
  if (!a3)
  {
    return 0.0;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    [(SXMosaicGalleryColumnLayout *)self widthOfColumn:v7 inNumberOfColumns:a4];
    v8 = v8 + v9;
    ++v7;
  }

  while (a3 != v7);
  [(SXMosaicGalleryColumnLayout *)self gutter];
  return v8 + v10 * 0.5;
}

- (double)widthOfColumn:(unint64_t)a3 inNumberOfColumns:(unint64_t)a4
{
  [(SXMosaicGalleryColumnLayout *)self width];
  v7 = v6 / a4;
  v8 = floor(v7);
  result = ceil(v7);
  if (a3 == 1)
  {
    return v8;
  }

  return result;
}

@end