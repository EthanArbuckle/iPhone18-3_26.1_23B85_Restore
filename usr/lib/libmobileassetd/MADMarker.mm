@interface MADMarker
- (BOOL)isEqual:(id)equal;
- (MADMarker)initWithCoder:(id)coder;
- (id)description;
- (id)initForAssetType:(id)type forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier forAssetSelector:(id)selector forSetJob:(BOOL)job withSetPolicy:(id)policy withPushedPolicy:(id)pushedPolicy;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADMarker

- (id)initForAssetType:(id)type forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier forAssetSelector:(id)selector forSetJob:(BOOL)job withSetPolicy:(id)policy withPushedPolicy:(id)pushedPolicy
{
  jobCopy = job;
  typeCopy = type;
  nameCopy = name;
  identifierCopy = identifier;
  selectorCopy = selector;
  policyCopy = policy;
  pushedPolicyCopy = pushedPolicy;
  v27.receiver = self;
  v27.super_class = MADMarker;
  v20 = [(MADMarker *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_assetType, type);
    if (jobCopy)
    {
      v21->_isSetJob = 1;
      objc_storeStrong(&v21->_clientDomainName, name);
      objc_storeStrong(&v21->_assetSetIdentifier, identifier);
      objc_storeStrong(&v21->_setPolicy, policy);
      v22 = 48;
      v23 = pushedPolicyCopy;
    }

    else
    {
      v21->_isSetJob = 0;
      v22 = 56;
      v23 = selectorCopy;
    }

    objc_storeStrong((&v21->super.isa + v22), v23);
  }

  return v21;
}

- (MADMarker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MADMarker;
  v5 = [(MADMarker *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v12;

    v5->_isSetJob = [coderCopy decodeBoolForKey:@"isSetJob"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetType = [(MADMarker *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  clientDomainName = [(MADMarker *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MADMarker *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  assetSelector = [(MADMarker *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  [coderCopy encodeBool:-[MADMarker isSetJob](self forKey:{"isSetJob"), @"isSetJob"}];
}

- (id)description
{
  assetType = [(MADMarker *)self assetType];
  v4 = [NSString stringWithFormat:@"assetType: %@\n", assetType];

  if ([(MADMarker *)self isSetJob])
  {
    clientDomainName = [(MADMarker *)self clientDomainName];
    assetSetIdentifier = [(MADMarker *)self assetSetIdentifier];
    setPolicy = [(MADMarker *)self setPolicy];
    v8 = [setPolicy description];
    v9 = [NSString stringWithFormat:@"%@clientDomainName: %@\nassetSetIdentifier: %@\nsetPolicy: %@", v4, clientDomainName, assetSetIdentifier, v8];

    v4 = setPolicy;
  }

  else
  {
    clientDomainName = [(MADMarker *)self assetSelector];
    assetSetIdentifier = [clientDomainName description];
    v9 = [NSString stringWithFormat:@"%@assetSelector: %@", v4, assetSetIdentifier];
  }

  return v9;
}

- (id)summary
{
  assetType = [(MADMarker *)self assetType];
  v4 = [NSString stringWithFormat:@"assetType:%@", assetType];

  if ([(MADMarker *)self isSetJob])
  {
    clientDomainName = [(MADMarker *)self clientDomainName];
    assetSetIdentifier = [(MADMarker *)self assetSetIdentifier];
    [NSString stringWithFormat:@"%@|domainName:%@|setIdentifier:%@", v4, clientDomainName, assetSetIdentifier];
  }

  else
  {
    clientDomainName = [(MADMarker *)self assetSelector];
    assetSetIdentifier = [clientDomainName summary];
    [NSString stringWithFormat:@"%@|selector:%@", v4, assetSetIdentifier, v9];
  }
  v7 = ;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(MADMarker *)self isSetJob], v5 == [(MADMarker *)equalCopy isSetJob]))
    {
      if ([(MADMarker *)self isSetJob])
      {
        clientDomainName = [(MADMarker *)self clientDomainName];
        clientDomainName2 = [(MADMarker *)equalCopy clientDomainName];
        if ([clientDomainName isEqualToString:clientDomainName2])
        {
          assetSetIdentifier = [(MADMarker *)self assetSetIdentifier];
          assetSetIdentifier2 = [(MADMarker *)equalCopy assetSetIdentifier];
          v6 = [assetSetIdentifier isEqualToString:assetSetIdentifier2];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        clientDomainName = [(MADMarker *)self assetSelector];
        clientDomainName2 = [(MADMarker *)equalCopy assetSelector];
        v6 = [clientDomainName isEqual:clientDomainName2];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end