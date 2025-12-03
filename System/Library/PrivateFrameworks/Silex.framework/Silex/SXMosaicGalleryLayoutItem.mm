@interface SXMosaicGalleryLayoutItem
- (CGSize)dimensions;
- (SXMosaicGalleryLayoutItem)initWithDimensions:(CGSize)dimensions;
- (double)aspectRatio;
- (int)tileType;
@end

@implementation SXMosaicGalleryLayoutItem

- (SXMosaicGalleryLayoutItem)initWithDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  v6.receiver = self;
  v6.super_class = SXMosaicGalleryLayoutItem;
  result = [(SXMosaicGalleryLayoutItem *)&v6 init];
  if (result)
  {
    result->_dimensions.width = width;
    result->_dimensions.height = height;
  }

  return result;
}

- (double)aspectRatio
{
  [(SXMosaicGalleryLayoutItem *)self dimensions];
  v4 = v3;
  [(SXMosaicGalleryLayoutItem *)self dimensions];
  return v4 / v5;
}

- (int)tileType
{
  result = self->_tileType;
  if (!result)
  {
    [(SXMosaicGalleryLayoutItem *)self aspectRatio];
    if (v4 >= 2.5)
    {
      result = 4;
    }

    else if (v4 <= 1.05)
    {
      if (v4 >= 0.952380952)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }
    }

    else
    {
      result = 3;
    }

    self->_tileType = result;
  }

  return result;
}

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end