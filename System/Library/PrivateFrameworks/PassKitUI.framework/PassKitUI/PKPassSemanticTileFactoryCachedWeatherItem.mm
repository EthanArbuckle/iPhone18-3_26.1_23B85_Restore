@interface PKPassSemanticTileFactoryCachedWeatherItem
- (BOOL)beginContentAccess;
- (PKPassSemanticTileFactoryCachedWeatherItem)initWithWeatherInformation:(id)a3;
- (void)discardContentIfPossible;
@end

@implementation PKPassSemanticTileFactoryCachedWeatherItem

- (PKPassSemanticTileFactoryCachedWeatherItem)initWithWeatherInformation:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKPassSemanticTileFactoryCachedWeatherItem;
    v6 = [(PKPassSemanticTileFactoryCachedWeatherItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_weatherInformation, a3);
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
  v2 = self->_weatherInformation != 0;
  self->_contentBeingAcccessed = v2;
  return v2;
}

- (void)discardContentIfPossible
{
  weatherInformation = self->_weatherInformation;
  self->_weatherInformation = 0;
}

@end