@interface PKPassSemanticTileFactoryCachedVenueMapImageItem
- (BOOL)beginContentAccess;
- (PKPassSemanticTileFactoryCachedVenueMapImageItem)initWithVenueMapImage:(id)image;
- (void)discardContentIfPossible;
@end

@implementation PKPassSemanticTileFactoryCachedVenueMapImageItem

- (PKPassSemanticTileFactoryCachedVenueMapImageItem)initWithVenueMapImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v10.receiver = self;
    v10.super_class = PKPassSemanticTileFactoryCachedVenueMapImageItem;
    v6 = [(PKPassSemanticTileFactoryCachedVenueMapImageItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_venueMapImage, image);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)beginContentAccess
{
  v2 = self->_venueMapImage != 0;
  self->_contentBeingAcccessed = v2;
  return v2;
}

- (void)discardContentIfPossible
{
  venueMapImage = self->_venueMapImage;
  self->_venueMapImage = 0;
}

@end