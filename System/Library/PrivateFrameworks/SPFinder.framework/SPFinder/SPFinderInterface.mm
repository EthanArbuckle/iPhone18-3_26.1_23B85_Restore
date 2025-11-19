@interface SPFinderInterface
- (SPAdvertisementCache)advertisementCache;
- (id)beaconPayloadCache;
- (id)finderStateManager;
- (id)stateManager;
@end

@implementation SPFinderInterface

- (id)beaconPayloadCache
{
  advertisementCache = self->_advertisementCache;
  if (!advertisementCache)
  {
    v4 = objc_opt_new();
    v5 = self->_advertisementCache;
    self->_advertisementCache = v4;

    advertisementCache = self->_advertisementCache;
  }

  return advertisementCache;
}

- (SPAdvertisementCache)advertisementCache
{
  advertisementCache = self->_advertisementCache;
  if (!advertisementCache)
  {
    v4 = objc_opt_new();
    v5 = self->_advertisementCache;
    self->_advertisementCache = v4;

    advertisementCache = self->_advertisementCache;
  }

  return advertisementCache;
}

- (id)finderStateManager
{
  v2 = objc_opt_new();

  return v2;
}

- (id)stateManager
{
  v2 = objc_opt_new();

  return v2;
}

@end