@interface PKPassSemanticTileFactoryCachedVenueMapImageItem
- (BOOL)beginContentAccess;
- (PKPassSemanticTileFactoryCachedVenueMapImageItem)initWithVenueMapImage:(id)a3;
- (void)discardContentIfPossible;
@end

@implementation PKPassSemanticTileFactoryCachedVenueMapImageItem

- (PKPassSemanticTileFactoryCachedVenueMapImageItem)initWithVenueMapImage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKPassSemanticTileFactoryCachedVenueMapImageItem;
    v6 = [(PKPassSemanticTileFactoryCachedVenueMapImageItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_venueMapImage, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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