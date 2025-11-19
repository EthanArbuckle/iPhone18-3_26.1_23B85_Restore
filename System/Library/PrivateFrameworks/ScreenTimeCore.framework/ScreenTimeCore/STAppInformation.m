@interface STAppInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAppInformation:(id)a3;
- (STAppInformation)initWithBundleIdentifier:(id)a3 displayName:(id)a4 iconData:(id)a5 distributorID:(id)a6 distributorIsThirdParty:(BOOL)a7 adamID:(unint64_t)a8 versionIdentifier:(unint64_t)a9 betaVersionIdentifier:(unint64_t)a10;
- (STAppInformation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAppInformation

- (STAppInformation)initWithBundleIdentifier:(id)a3 displayName:(id)a4 iconData:(id)a5 distributorID:(id)a6 distributorIsThirdParty:(BOOL)a7 adamID:(unint64_t)a8 versionIdentifier:(unint64_t)a9 betaVersionIdentifier:(unint64_t)a10
{
  v29.receiver = self;
  v29.super_class = STAppInformation;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(STAppInformation *)&v29 init];
  v19->_adamID = a8;
  v19->_betaVersionIdentifier = a10;
  v20 = [v18 copy];

  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v20;

  v22 = [v15 copy];
  distributorID = v19->_distributorID;
  v19->_distributorID = v22;

  v19->_distributorIsThirdParty = a7;
  v24 = [v17 copy];

  displayName = v19->_displayName;
  v19->_displayName = v24;

  v19->_versionIdentifier = a9;
  v26 = [v16 copy];

  iconData = v19->_iconData;
  v19->_iconData = v26;

  return v19;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STAppInformation *)self bundleIdentifier];
  v5 = [(STAppInformation *)self displayName];
  v6 = [NSString stringWithFormat:@"<%@ { BundleID: %@, DisplayName: %@ }>", v3, v4, v5];

  return v6;
}

- (STAppInformation)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"distributorIsThirdParty"];
  v9 = [v8 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"versionIdentifier"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"betaVersionIdentifier"];

  v13 = -[STAppInformation initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:](self, "initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:", v4, v5, v6, v7, v9, [v10 unsignedLongLongValue], objc_msgSend(v11, "unsignedLongLongValue"), objc_msgSend(v12, "unsignedLongLongValue"));
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STAppInformation *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(STAppInformation *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(STAppInformation *)self iconData];
  [v4 encodeObject:v7 forKey:@"iconData"];

  v8 = [(STAppInformation *)self distributorID];
  [v4 encodeObject:v8 forKey:@"distributorID"];

  v9 = [NSNumber numberWithBool:[(STAppInformation *)self distributorIsThirdParty]];
  [v4 encodeObject:v9 forKey:@"distributorIsThirdParty"];

  v10 = [NSNumber numberWithUnsignedLongLong:[(STAppInformation *)self adamID]];
  [v4 encodeObject:v10 forKey:@"adamID"];

  v11 = [NSNumber numberWithUnsignedLongLong:[(STAppInformation *)self versionIdentifier]];
  [v4 encodeObject:v11 forKey:@"versionIdentifier"];

  v12 = [NSNumber numberWithUnsignedLongLong:[(STAppInformation *)self betaVersionIdentifier]];
  [v4 encodeObject:v12 forKey:@"betaVersionIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  versionIdentifier = self->_versionIdentifier;
  return [v4 initWithBundleIdentifier:self->_bundleIdentifier displayName:self->_displayName iconData:self->_iconData distributorID:self->_distributorID distributorIsThirdParty:self->_distributorIsThirdParty adamID:self->_adamID versionIdentifier:versionIdentifier betaVersionIdentifier:self->_betaVersionIdentifier];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STAppInformation *)self isEqualToAppInformation:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAppInformation:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(STAppInformation *)self bundleIdentifier];
    v6 = [(STAppInformation *)v4 bundleIdentifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(STAppInformation *)self displayName];
      v8 = [(STAppInformation *)v4 displayName];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(STAppInformation *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end