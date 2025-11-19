@interface UARPAssetSubscriptionMobileAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAnyDomain:(id)a3;
- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)a3 hwFusing:(id)a4 domain:(id)a5;
- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetSubscriptionMobileAsset

- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)a3 hwFusing:(id)a4 domain:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = UARPAssetSubscriptionMobileAsset;
  v9 = [(UARPAssetSubscription *)&v13 initWithIdentifier:a3 domain:a5];
  if (v9)
  {
    v10 = [v8 copy];
    hwFusing = v9->_hwFusing;
    v9->_hwFusing = v10;
  }

  return v9;
}

- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UARPAssetSubscriptionMobileAsset;
  v5 = [(UARPAssetSubscription *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hwFusing"];
    hwFusing = v5->_hwFusing;
    v5->_hwFusing = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v5->_assetURL;
    v5->_assetURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    assetAudience = v5->_assetAudience;
    v5->_assetAudience = v10;

    v5->_internalAsset = [v4 decodeBoolForKey:@"internalAsset"];
    v5->_softwareUpdateAsset = [v4 decodeBoolForKey:@"suAsset"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UARPAssetSubscriptionMobileAsset;
  v4 = a3;
  [(UARPAssetSubscription *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_hwFusing forKey:{@"hwFusing", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_assetURL forKey:@"assetURL"];
  [v4 encodeObject:self->_assetAudience forKey:@"assetAudience"];
  [v4 encodeBool:self->_internalAsset forKey:@"internalAsset"];
  [v4 encodeBool:self->_softwareUpdateAsset forKey:@"suAsset"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPAssetSubscriptionMobileAsset alloc];
  v5 = [(UARPAssetSubscription *)self identifier];
  v6 = [(UARPAssetSubscriptionMobileAsset *)self hwFusing];
  v7 = [(UARPAssetSubscription *)self domain];
  v8 = [(UARPAssetSubscriptionMobileAsset *)v4 initWithAppleModelNumber:v5 hwFusing:v6 domain:v7];

  v9 = [(UARPAssetSubscriptionMobileAsset *)self assetURL];
  [(UARPAssetSubscriptionMobileAsset *)v8 setAssetURL:v9];

  v10 = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  [(UARPAssetSubscriptionMobileAsset *)v8 setAssetAudience:v10];

  [(UARPAssetSubscriptionMobileAsset *)v8 setInternalAsset:[(UARPAssetSubscriptionMobileAsset *)self internalAsset]];
  [(UARPAssetSubscriptionMobileAsset *)v8 setSoftwareUpdateAsset:[(UARPAssetSubscriptionMobileAsset *)self softwareUpdateAsset]];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v14 = 1;
    }

    else
    {
      v5 = v4;
      v16.receiver = self;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      if ([(UARPAssetSubscription *)&v16 isEqual:v5])
      {
        hwFusing = self->_hwFusing;
        v7 = [(UARPAssetSubscriptionMobileAsset *)v5 hwFusing];
        if (nullableObjectsAreEqual(hwFusing, v7))
        {
          assetURL = self->_assetURL;
          v9 = [(UARPAssetSubscriptionMobileAsset *)v5 assetURL];
          if (nullableObjectsAreEqual(assetURL, v9))
          {
            assetAudience = self->_assetAudience;
            v11 = [(UARPAssetSubscriptionMobileAsset *)v5 assetAudience];
            if (nullableObjectsAreEqual(assetAudience, v11) && (softwareUpdateAsset = self->_softwareUpdateAsset, softwareUpdateAsset == [(UARPAssetSubscriptionMobileAsset *)v5 softwareUpdateAsset]))
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

- (BOOL)isEqualForAnyDomain:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v14 = 1;
    }

    else
    {
      v5 = v4;
      v16.receiver = self;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      if ([(UARPAssetSubscription *)&v16 isEqualForAnyDomain:v5])
      {
        hwFusing = self->_hwFusing;
        v7 = [(UARPAssetSubscriptionMobileAsset *)v5 hwFusing];
        if (nullableObjectsAreEqual(hwFusing, v7))
        {
          assetURL = self->_assetURL;
          v9 = [(UARPAssetSubscriptionMobileAsset *)v5 assetURL];
          if (nullableObjectsAreEqual(assetURL, v9))
          {
            assetAudience = self->_assetAudience;
            v11 = [(UARPAssetSubscriptionMobileAsset *)v5 assetAudience];
            if (nullableObjectsAreEqual(assetAudience, v11) && (softwareUpdateAsset = self->_softwareUpdateAsset, softwareUpdateAsset == [(UARPAssetSubscriptionMobileAsset *)v5 softwareUpdateAsset]))
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
  v6 = [(UARPAssetSubscription *)self identifier];
  v7 = [(UARPAssetSubscriptionMobileAsset *)self hwFusing];
  v8 = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  if (v8)
  {
    [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  }

  else
  {
    v2 = [(UARPAssetSubscriptionMobileAsset *)self assetURL];
    [v2 absoluteString];
  }
  v9 = ;
  v10 = [(UARPAssetSubscriptionMobileAsset *)self internalAsset];
  v11 = [(UARPAssetSubscriptionMobileAsset *)self softwareUpdateAsset];
  v12 = [(UARPAssetSubscription *)self domain];
  v13 = [NSString stringWithFormat:@"<%@: modelNumber=%@, hwFusing=%@ assetLocation=%@ internal/su=%u/%u domain=%@>", v5, v6, v7, v9, v10, v11, v12];

  if (!v8)
  {

    v9 = v2;
  }

  return v13;
}

@end