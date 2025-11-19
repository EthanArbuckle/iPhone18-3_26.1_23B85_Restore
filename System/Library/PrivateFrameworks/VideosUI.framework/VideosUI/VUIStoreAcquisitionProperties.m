@interface VUIStoreAcquisitionProperties
+ (id)acquisitionPropertiesWithBuyParams:(id)a3 urlbagKey:(id)a4;
+ (id)metricsAugumentedBuyParamsWithBuyParams:(id)a3;
- (VUIStoreAcquisitionProperties)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VUIStoreAcquisitionProperties

+ (id)metricsAugumentedBuyParamsWithBuyParams:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 length])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v3];
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];

    [v5 appendFormat:@"&mtApp=%@", v7];
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 identifierForVendor];
    v10 = [v9 UUIDString];
    [v5 appendFormat:@"&vid=%@", v10];

    v4 = [v5 copy];
  }

  return v4;
}

+ (id)acquisitionPropertiesWithBuyParams:(id)a3 urlbagKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(VUIStoreAcquisitionProperties);
  [(VUIStoreAcquisitionProperties *)v7 setBuyParams:v6];

  [(VUIStoreAcquisitionProperties *)v7 setUrlBagKey:v5];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VUIStoreAcquisitionProperties acquisitionPropertiesWithBuyParams:self->_buyParams urlbagKey:self->_urlBagKey];
  [v4 setDsid:self->_dsid];
  [v4 setUserAgent:self->_userAgent];
  [v4 setStrongToken:self->_strongToken];
  [v4 setIgnoresForcedPasswordRestriction:self->_ignoresForcedPasswordRestriction];
  return v4;
}

@end