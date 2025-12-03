@interface STAppInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppInformation:(id)information;
- (STAppInformation)initWithBundleIdentifier:(id)identifier displayName:(id)name iconData:(id)data distributorID:(id)d distributorIsThirdParty:(BOOL)party adamID:(unint64_t)iD versionIdentifier:(unint64_t)versionIdentifier betaVersionIdentifier:(unint64_t)self0;
- (STAppInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAppInformation

- (STAppInformation)initWithBundleIdentifier:(id)identifier displayName:(id)name iconData:(id)data distributorID:(id)d distributorIsThirdParty:(BOOL)party adamID:(unint64_t)iD versionIdentifier:(unint64_t)versionIdentifier betaVersionIdentifier:(unint64_t)self0
{
  v29.receiver = self;
  v29.super_class = STAppInformation;
  dCopy = d;
  dataCopy = data;
  nameCopy = name;
  identifierCopy = identifier;
  v19 = [(STAppInformation *)&v29 init];
  v19->_adamID = iD;
  v19->_betaVersionIdentifier = betaVersionIdentifier;
  v20 = [identifierCopy copy];

  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v20;

  v22 = [dCopy copy];
  distributorID = v19->_distributorID;
  v19->_distributorID = v22;

  v19->_distributorIsThirdParty = party;
  v24 = [nameCopy copy];

  displayName = v19->_displayName;
  v19->_displayName = v24;

  v19->_versionIdentifier = versionIdentifier;
  v26 = [dataCopy copy];

  iconData = v19->_iconData;
  v19->_iconData = v26;

  return v19;
}

- (id)description
{
  v3 = objc_opt_class();
  bundleIdentifier = [(STAppInformation *)self bundleIdentifier];
  displayName = [(STAppInformation *)self displayName];
  v6 = [NSString stringWithFormat:@"<%@ { BundleID: %@, DisplayName: %@ }>", v3, bundleIdentifier, displayName];

  return v6;
}

- (STAppInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorIsThirdParty"];
  bOOLValue = [v8 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"versionIdentifier"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"betaVersionIdentifier"];

  v13 = -[STAppInformation initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:](self, "initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:", v4, v5, v6, v7, bOOLValue, [v10 unsignedLongLongValue], objc_msgSend(v11, "unsignedLongLongValue"), objc_msgSend(v12, "unsignedLongLongValue"));
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(STAppInformation *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  displayName = [(STAppInformation *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  iconData = [(STAppInformation *)self iconData];
  [coderCopy encodeObject:iconData forKey:@"iconData"];

  distributorID = [(STAppInformation *)self distributorID];
  [coderCopy encodeObject:distributorID forKey:@"distributorID"];

  v9 = [NSNumber numberWithBool:[(STAppInformation *)self distributorIsThirdParty]];
  [coderCopy encodeObject:v9 forKey:@"distributorIsThirdParty"];

  v10 = [NSNumber numberWithUnsignedLongLong:[(STAppInformation *)self adamID]];
  [coderCopy encodeObject:v10 forKey:@"adamID"];

  v11 = [NSNumber numberWithUnsignedLongLong:[(STAppInformation *)self versionIdentifier]];
  [coderCopy encodeObject:v11 forKey:@"versionIdentifier"];

  v12 = [NSNumber numberWithUnsignedLongLong:[(STAppInformation *)self betaVersionIdentifier]];
  [coderCopy encodeObject:v12 forKey:@"betaVersionIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  versionIdentifier = self->_versionIdentifier;
  return [v4 initWithBundleIdentifier:self->_bundleIdentifier displayName:self->_displayName iconData:self->_iconData distributorID:self->_distributorID distributorIsThirdParty:self->_distributorIsThirdParty adamID:self->_adamID versionIdentifier:versionIdentifier betaVersionIdentifier:self->_betaVersionIdentifier];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STAppInformation *)self isEqualToAppInformation:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAppInformation:(id)information
{
  informationCopy = information;
  if (informationCopy == self)
  {
    v9 = 1;
  }

  else
  {
    bundleIdentifier = [(STAppInformation *)self bundleIdentifier];
    bundleIdentifier2 = [(STAppInformation *)informationCopy bundleIdentifier];
    if ([bundleIdentifier isEqualToString:bundleIdentifier2])
    {
      displayName = [(STAppInformation *)self displayName];
      displayName2 = [(STAppInformation *)informationCopy displayName];
      v9 = [displayName isEqualToString:displayName2];
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
  bundleIdentifier = [(STAppInformation *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

@end