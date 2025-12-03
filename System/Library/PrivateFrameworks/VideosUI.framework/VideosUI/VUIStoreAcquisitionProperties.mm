@interface VUIStoreAcquisitionProperties
+ (id)acquisitionPropertiesWithBuyParams:(id)params urlbagKey:(id)key;
+ (id)metricsAugumentedBuyParamsWithBuyParams:(id)params;
- (VUIStoreAcquisitionProperties)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VUIStoreAcquisitionProperties

+ (id)metricsAugumentedBuyParamsWithBuyParams:(id)params
{
  paramsCopy = params;
  v4 = paramsCopy;
  if ([paramsCopy length])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:paramsCopy];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    [v5 appendFormat:@"&mtApp=%@", bundleIdentifier];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    identifierForVendor = [currentDevice identifierForVendor];
    uUIDString = [identifierForVendor UUIDString];
    [v5 appendFormat:@"&vid=%@", uUIDString];

    v4 = [v5 copy];
  }

  return v4;
}

+ (id)acquisitionPropertiesWithBuyParams:(id)params urlbagKey:(id)key
{
  keyCopy = key;
  paramsCopy = params;
  v7 = objc_alloc_init(VUIStoreAcquisitionProperties);
  [(VUIStoreAcquisitionProperties *)v7 setBuyParams:paramsCopy];

  [(VUIStoreAcquisitionProperties *)v7 setUrlBagKey:keyCopy];

  return v7;
}

- (VUIStoreAcquisitionProperties)init
{
  v3.receiver = self;
  v3.super_class = VUIStoreAcquisitionProperties;
  result = [(VUIStoreAcquisitionProperties *)&v3 init];
  if (result)
  {
    result->_ignoresForcedPasswordRestriction = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VUIStoreAcquisitionProperties acquisitionPropertiesWithBuyParams:self->_buyParams urlbagKey:self->_urlBagKey];
  [v4 setDsid:self->_dsid];
  [v4 setUserAgent:self->_userAgent];
  [v4 setStrongToken:self->_strongToken];
  [v4 setIgnoresForcedPasswordRestriction:self->_ignoresForcedPasswordRestriction];
  return v4;
}

@end