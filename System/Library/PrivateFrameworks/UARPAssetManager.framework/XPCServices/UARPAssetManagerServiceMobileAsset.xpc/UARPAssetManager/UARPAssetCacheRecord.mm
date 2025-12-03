@interface UARPAssetCacheRecord
- (BOOL)isEqual:(id)equal;
- (UARPAssetCacheRecord)initWithAssetVersion:(id)version assetURL:(id)l deploymentRules:(id)rules;
- (UARPAssetCacheRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetCacheRecord

- (UARPAssetCacheRecord)initWithAssetVersion:(id)version assetURL:(id)l deploymentRules:(id)rules
{
  versionCopy = version;
  lCopy = l;
  rulesCopy = rules;
  v19.receiver = self;
  v19.super_class = UARPAssetCacheRecord;
  v11 = [(UARPAssetCacheRecord *)&v19 init];
  if (v11)
  {
    v12 = [versionCopy copy];
    assetVersion = v11->_assetVersion;
    v11->_assetVersion = v12;

    v14 = [lCopy copy];
    assetURL = v11->_assetURL;
    v11->_assetURL = v14;

    v16 = [rulesCopy copy];
    deploymentRules = v11->_deploymentRules;
    v11->_deploymentRules = v16;
  }

  return v11;
}

- (UARPAssetCacheRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UARPAssetCacheRecord;
  v5 = [(UARPAssetCacheRecord *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v5->_assetURL;
    v5->_assetURL = v8;

    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v16 count:5];
    v11 = [NSSet setWithArray:v10];

    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"deploymentRules"];
    deploymentRules = v5->_deploymentRules;
    v5->_deploymentRules = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  assetVersion = self->_assetVersion;
  coderCopy = coder;
  [coderCopy encodeObject:assetVersion forKey:@"assetVersion"];
  [coderCopy encodeObject:self->_assetURL forKey:@"assetURL"];
  [coderCopy encodeObject:self->_deploymentRules forKey:@"deploymentRules"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPAssetCacheRecord alloc];
  assetVersion = self->_assetVersion;
  assetURL = self->_assetURL;
  deploymentRules = self->_deploymentRules;

  return [(UARPAssetCacheRecord *)v4 initWithAssetVersion:assetVersion assetURL:assetURL deploymentRules:deploymentRules];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v12 = 1;
    }

    else
    {
      v5 = equalCopy;
      assetVersion = self->_assetVersion;
      assetVersion = [(UARPAssetCacheRecord *)v5 assetVersion];
      if ([(UARPAssetVersionBase *)assetVersion isEqual:assetVersion])
      {
        assetURL = self->_assetURL;
        assetURL = [(UARPAssetCacheRecord *)v5 assetURL];
        if ([(NSURL *)assetURL isEqual:assetURL])
        {
          deploymentRules = self->_deploymentRules;
          deploymentRules = [(UARPAssetCacheRecord *)v5 deploymentRules];
          v12 = nullableObjectsAreEqual(deploymentRules, deploymentRules);
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
  assetVersion = [(UARPAssetVersionBase *)self->_assetVersion assetVersion];
  path = [(NSURL *)self->_assetURL path];
  v7 = [NSString stringWithFormat:@"<%@: %@ %@>", v4, assetVersion, path];

  return v7;
}

@end