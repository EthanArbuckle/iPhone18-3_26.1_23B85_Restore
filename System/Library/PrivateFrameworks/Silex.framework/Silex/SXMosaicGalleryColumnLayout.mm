@interface SXMosaicGalleryColumnLayout
- (SXMosaicGalleryColumnLayout)initWithWidth:(double)width gutter:(double)gutter;
- (double)positionOfColumn:(unint64_t)column inNumberOfColumns:(unint64_t)columns;
- (double)widthForColumnRange:(_NSRange)range numberOfColumns:(unint64_t)columns;
- (double)widthOfColumn:(unint64_t)column inNumberOfColumns:(unint64_t)columns;
@end

@implementation SXMosaicGalleryColumnLayout

- (SXMosaicGalleryColumnLayout)initWithWidth:(double)width gutter:(double)gutter
{
  v7.receiver = self;
  v7.super_class = SXMosaicGalleryColumnLayout;
  result = [(SXMosaicGalleryColumnLayout *)&v7 init];
  if (result)
  {
    result->_width = width;
    result->_gutter = gutter;
  }

  return result;
}

- (double)widthForColumnRange:(_NSRange)range numberOfColumns:(unint64_t)columns
{
  length = range.length;
  location = range.location;
  v8 = range.location + range.length;
  v9 = 0.0;
  if (range.location < range.location + range.length)
  {
    v10 = range.length;
    v11 = range.location;
    do
    {
      [(SXMosaicGalleryColumnLayout *)self widthOfColumn:v11 inNumberOfColumns:columns];
      v9 = v9 + v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  if (columns != 1 && length != columns)
  {
    [(SXMosaicGalleryColumnLayout *)self gutter];
    if (!location || v8 == columns)
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

- (double)positionOfColumn:(unint64_t)column inNumberOfColumns:(unint64_t)columns
{
  if (!column)
  {
    return 0.0;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    [(SXMosaicGalleryColumnLayout *)self widthOfColumn:v7 inNumberOfColumns:columns];
    v8 = v8 + v9;
    ++v7;
  }

  while (column != v7);
  [(SXMosaicGalleryColumnLayout *)self gutter];
  return v8 + v10 * 0.5;
}

- (double)widthOfColumn:(unint64_t)column inNumberOfColumns:(unint64_t)columns
{
  [(SXMosaicGalleryColumnLayout *)self width];
  v7 = v6 / columns;
  v8 = floor(v7);
  result = ceil(v7);
  if (column == 1)
  {
    return v8;
  }

  return result;
}

@end