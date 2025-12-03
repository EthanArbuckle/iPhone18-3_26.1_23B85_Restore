@interface PKPassSemanticTileFactoryCachedWeatherItem
- (BOOL)beginContentAccess;
- (PKPassSemanticTileFactoryCachedWeatherItem)initWithWeatherInformation:(id)information;
- (void)discardContentIfPossible;
@end

@implementation PKPassSemanticTileFactoryCachedWeatherItem

- (PKPassSemanticTileFactoryCachedWeatherItem)initWithWeatherInformation:(id)information
{
  informationCopy = information;
  if (informationCopy)
  {
    v10.receiver = self;
    v10.super_class = PKPassSemanticTileFactoryCachedWeatherItem;
    v6 = [(PKPassSemanticTileFactoryCachedWeatherItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_weatherInformation, information);
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