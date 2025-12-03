@interface UARPAssetSubscriptionMobileAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAnyDomain:(id)domain;
- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)number hwFusing:(id)fusing domain:(id)domain;
- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetSubscriptionMobileAsset

- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)number hwFusing:(id)fusing domain:(id)domain
{
  fusingCopy = fusing;
  v13.receiver = self;
  v13.super_class = UARPAssetSubscriptionMobileAsset;
  v9 = [(UARPAssetSubscription *)&v13 initWithIdentifier:number domain:domain];
  if (v9)
  {
    v10 = [fusingCopy copy];
    hwFusing = v9->_hwFusing;
    v9->_hwFusing = v10;
  }

  return v9;
}

- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UARPAssetSubscriptionMobileAsset;
  v5 = [(UARPAssetSubscription *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hwFusing"];
    hwFusing = v5->_hwFusing;
    v5->_hwFusing = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v5->_assetURL;
    v5->_assetURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    assetAudience = v5->_assetAudience;
    v5->_assetAudience = v10;

    v5->_internalAsset = [coderCopy decodeBoolForKey:@"internalAsset"];
    v5->_softwareUpdateAsset = [coderCopy decodeBoolForKey:@"suAsset"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UARPAssetSubscriptionMobileAsset;
  coderCopy = coder;
  [(UARPAssetSubscription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_hwFusing forKey:{@"hwFusing", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_assetURL forKey:@"assetURL"];
  [coderCopy encodeObject:self->_assetAudience forKey:@"assetAudience"];
  [coderCopy encodeBool:self->_internalAsset forKey:@"internalAsset"];
  [coderCopy encodeBool:self->_softwareUpdateAsset forKey:@"suAsset"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPAssetSubscriptionMobileAsset alloc];
  identifier = [(UARPAssetSubscription *)self identifier];
  hwFusing = [(UARPAssetSubscriptionMobileAsset *)self hwFusing];
  domain = [(UARPAssetSubscription *)self domain];
  v8 = [(UARPAssetSubscriptionMobileAsset *)v4 initWithAppleModelNumber:identifier hwFusing:hwFusing domain:domain];

  assetURL = [(UARPAssetSubscriptionMobileAsset *)self assetURL];
  [(UARPAssetSubscriptionMobileAsset *)v8 setAssetURL:assetURL];

  assetAudience = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  [(UARPAssetSubscriptionMobileAsset *)v8 setAssetAudience:assetAudience];

  [(UARPAssetSubscriptionMobileAsset *)v8 setInternalAsset:[(UARPAssetSubscriptionMobileAsset *)self internalAsset]];
  [(UARPAssetSubscriptionMobileAsset *)v8 setSoftwareUpdateAsset:[(UARPAssetSubscriptionMobileAsset *)self softwareUpdateAsset]];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v14 = 1;
    }

    else
    {
      v5 = equalCopy;
      v16.receiver = self;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      if ([(UARPAssetSubscription *)&v16 isEqual:v5])
      {
        hwFusing = self->_hwFusing;
        hwFusing = [(UARPAssetSubscriptionMobileAsset *)v5 hwFusing];
        if (nullableObjectsAreEqual(hwFusing, hwFusing))
        {
          assetURL = self->_assetURL;
          assetURL = [(UARPAssetSubscriptionMobileAsset *)v5 assetURL];
          if (nullableObjectsAreEqual(assetURL, assetURL))
          {
            assetAudience = self->_assetAudience;
            assetAudience = [(UARPAssetSubscriptionMobileAsset *)v5 assetAudience];
            if (nullableObjectsAreEqual(assetAudience, assetAudience) && (softwareUpdateAsset = self->_softwareUpdateAsset, softwareUpdateAsset == [(UARPAssetSubscriptionMobileAsset *)v5 softwareUpdateAsset]))
            {
              internalAsset = self->_internalAsset;
              v14 = internalAsset == [(UARPAssetSubscriptionMobileAsset *)v5 internalAsset];
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqualForAnyDomain:(id)domain
{
  domainCopy = domain;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == domainCopy)
    {
      v14 = 1;
    }

    else
    {
      v5 = domainCopy;
      v16.receiver = self;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      if ([(UARPAssetSubscription *)&v16 isEqualForAnyDomain:v5])
      {
        hwFusing = self->_hwFusing;
        hwFusing = [(UARPAssetSubscriptionMobileAsset *)v5 hwFusing];
        if (nullableObjectsAreEqual(hwFusing, hwFusing))
        {
          assetURL = self->_assetURL;
          assetURL = [(UARPAssetSubscriptionMobileAsset *)v5 assetURL];
          if (nullableObjectsAreEqual(assetURL, assetURL))
          {
            assetAudience = self->_assetAudience;
            assetAudience = [(UARPAssetSubscriptionMobileAsset *)v5 assetAudience];
            if (nullableObjectsAreEqual(assetAudience, assetAudience) && (softwareUpdateAsset = self->_softwareUpdateAsset, softwareUpdateAsset == [(UARPAssetSubscriptionMobileAsset *)v5 softwareUpdateAsset]))
            {
              internalAsset = self->_internalAsset;
              v14 = internalAsset == [(UARPAssetSubscriptionMobileAsset *)v5 internalAsset];
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v2 = [(UARPAssetSubscriptionMobileAsset *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(UARPAssetSubscription *)self identifier];
  hwFusing = [(UARPAssetSubscriptionMobileAsset *)self hwFusing];
  assetAudience = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  if (assetAudience)
  {
    [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  }

  else
  {
    assetURL = [(UARPAssetSubscriptionMobileAsset *)self assetURL];
    [assetURL absoluteString];
  }
  v9 = ;
  internalAsset = [(UARPAssetSubscriptionMobileAsset *)self internalAsset];
  softwareUpdateAsset = [(UARPAssetSubscriptionMobileAsset *)self softwareUpdateAsset];
  domain = [(UARPAssetSubscription *)self domain];
  v13 = [NSString stringWithFormat:@"<%@: modelNumber=%@, hwFusing=%@ assetLocation=%@ internal/su=%u/%u domain=%@>", v5, identifier, hwFusing, v9, internalAsset, softwareUpdateAsset, domain];

  if (!assetAudience)
  {

    v9 = assetURL;
  }

  return v13;
}

@end