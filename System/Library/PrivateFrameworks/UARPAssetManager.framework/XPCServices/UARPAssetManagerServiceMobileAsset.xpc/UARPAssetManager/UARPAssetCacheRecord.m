@interface UARPAssetCacheRecord
- (BOOL)isEqual:(id)a3;
- (UARPAssetCacheRecord)initWithAssetVersion:(id)a3 assetURL:(id)a4 deploymentRules:(id)a5;
- (UARPAssetCacheRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetCacheRecord

- (UARPAssetCacheRecord)initWithAssetVersion:(id)a3 assetURL:(id)a4 deploymentRules:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UARPAssetCacheRecord;
  v11 = [(UARPAssetCacheRecord *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    assetVersion = v11->_assetVersion;
    v11->_assetVersion = v12;

    v14 = [v9 copy];
    assetURL = v11->_assetURL;
    v11->_assetURL = v14;

    v16 = [v10 copy];
    deploymentRules = v11->_deploymentRules;
    v11->_deploymentRules = v16;
  }

  return v11;
}

- (UARPAssetCacheRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UARPAssetCacheRecord;
  v5 = [(UARPAssetCacheRecord *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v5->_assetURL;
    v5->_assetURL = v8;

    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v16 count:5];
    v11 = [NSSet setWithArray:v10];

    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"deploymentRules"];
    deploymentRules = v5->_deploymentRules;
    v5->_deploymentRules = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  assetVersion = self->_assetVersion;
  v5 = a3;
  [v5 encodeObject:assetVersion forKey:@"assetVersion"];
  [v5 encodeObject:self->_assetURL forKey:@"assetURL"];
  [v5 encodeObject:self->_deploymentRules forKey:@"deploymentRules"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPAssetCacheRecord alloc];
  assetVersion = self->_assetVersion;
  assetURL = self->_assetURL;
  deploymentRules = self->_deploymentRules;

  return [(UARPAssetCacheRecord *)v4 initWithAssetVersion:assetVersion assetURL:assetURL deploymentRules:deploymentRules];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v12 = 1;
    }

    else
    {
      v5 = v4;
      assetVersion = self->_assetVersion;
      v7 = [(UARPAssetCacheRecord *)v5 assetVersion];
      if ([(UARPAssetVersionBase *)assetVersion isEqual:v7])
      {
        assetURL = self->_assetURL;
        v9 = [(UARPAssetCacheRecord *)v5 assetURL];
        if ([(NSURL *)assetURL isEqual:v9])
        {
          deploymentRules = self->_deploymentRules;
          v11 = [(UARPAssetCacheRecord *)v5 deploymentRules];
          v12 = nullableObjectsAreEqual(deploymentRules, v11);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(UARPAssetCacheRecord *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(UARPAssetVersionBase *)self->_assetVersion assetVersion];
  v6 = [(NSURL *)self->_assetURL path];
  v7 = [NSString stringWithFormat:@"<%@: %@ %@>", v4, v5, v6];

  return v7;
}

@end