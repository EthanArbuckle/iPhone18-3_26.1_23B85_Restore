@interface MADAutoSetTarget
- (BOOL)includesEntryForAssetType:(id)type;
- (BOOL)includesEntryForAssetType:(id)type forAssetSpecifier:(id)specifier;
- (BOOL)isEqual:(id)equal;
- (MADAutoSetTarget)initWithCoder:(id)coder;
- (id)assetSetEntryForAssetType:(id)type forAssetSpecifier:(id)specifier;
- (id)copy;
- (id)description;
- (id)firstEntryAssetType;
- (id)fullName;
- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier fromMinTargetOSVersion:(id)version toMaxTargetOSVersion:(id)sVersion asEntriesWhenTargeting:(id)targeting;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoSetTarget

- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier fromMinTargetOSVersion:(id)version toMaxTargetOSVersion:(id)sVersion asEntriesWhenTargeting:(id)targeting
{
  nameCopy = name;
  identifierCopy = identifier;
  versionCopy = version;
  sVersionCopy = sVersion;
  targetingCopy = targeting;
  v21.receiver = self;
  v21.super_class = MADAutoSetTarget;
  v17 = [(MADAutoSetTarget *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_clientDomainName, name);
    objc_storeStrong(p_isa + 2, identifier);
    objc_storeStrong(p_isa + 3, version);
    objc_storeStrong(p_isa + 4, sVersion);
    objc_storeStrong(p_isa + 5, targeting);
  }

  return p_isa;
}

- (MADAutoSetTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = MADAutoSetTarget;
  v5 = [(MADAutoSetTarget *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minTargetOSVersion"];
    minTargetOSVersion = v5->_minTargetOSVersion;
    v5->_minTargetOSVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxTargetOSVersion"];
    maxTargetOSVersion = v5->_maxTargetOSVersion;
    v5->_maxTargetOSVersion = v12;

    v14 = [NSSet alloc];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v21 count:4];
    v16 = [v14 initWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MADAutoSetTarget *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MADAutoSetTarget *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  minTargetOSVersion = [(MADAutoSetTarget *)self minTargetOSVersion];
  [coderCopy encodeObject:minTargetOSVersion forKey:@"minTargetOSVersion"];

  maxTargetOSVersion = [(MADAutoSetTarget *)self maxTargetOSVersion];
  [coderCopy encodeObject:maxTargetOSVersion forKey:@"maxTargetOSVersion"];

  autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
  [coderCopy encodeObject:autoAssetEntries forKey:@"autoAssetEntries"];
}

- (id)assetSetEntryForAssetType:(id)type forAssetSpecifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(MADAutoSetTarget *)self autoAssetEntries];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    do
    {
      v10 = 0;
      v22 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = p_weak_ivar_lyt[223];
        assetSelector = [v11 assetSelector];
        assetType = [assetSelector assetType];
        if ([v12 stringIsEqual:assetType to:typeCopy])
        {
          v15 = p_weak_ivar_lyt[223];
          [v11 assetSelector];
          v16 = v8;
          v17 = p_weak_ivar_lyt;
          v19 = v18 = typeCopy;
          assetSpecifier = [v19 assetSpecifier];
          LODWORD(v15) = [v15 stringIsEqual:assetSpecifier to:specifierCopy];

          typeCopy = v18;
          p_weak_ivar_lyt = v17;
          v8 = v16;
          v7 = v22;

          if (v15)
          {
            v7 = v11;
            goto LABEL_12;
          }
        }

        else
        {
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

LABEL_12:

  return v7;
}

- (id)copy
{
  v3 = [MADAutoSetTarget alloc];
  clientDomainName = [(MADAutoSetTarget *)self clientDomainName];
  assetSetIdentifier = [(MADAutoSetTarget *)self assetSetIdentifier];
  minTargetOSVersion = [(MADAutoSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MADAutoSetTarget *)self maxTargetOSVersion];
  autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
  v9 = [(MADAutoSetTarget *)v3 initForClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier fromMinTargetOSVersion:minTargetOSVersion toMaxTargetOSVersion:maxTargetOSVersion asEntriesWhenTargeting:autoAssetEntries];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(clientDomainName) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      clientDomainName = [(MADAutoSetTarget *)self clientDomainName];
      if (!clientDomainName)
      {
LABEL_22:

        goto LABEL_23;
      }

      assetSetIdentifier = [(MADAutoSetTarget *)self assetSetIdentifier];
      if (assetSetIdentifier)
      {
        v8 = assetSetIdentifier;
        minTargetOSVersion = [(MADAutoSetTarget *)self minTargetOSVersion];
        if (minTargetOSVersion)
        {
          v10 = minTargetOSVersion;
          maxTargetOSVersion = [(MADAutoSetTarget *)self maxTargetOSVersion];
          if (maxTargetOSVersion)
          {
            v12 = maxTargetOSVersion;
            autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
            if (autoAssetEntries)
            {
              v14 = autoAssetEntries;
              clientDomainName2 = [(MADAutoSetTarget *)self clientDomainName];
              clientDomainName3 = [(MADAutoSetTarget *)v5 clientDomainName];
              if ([SUCore stringIsEqual:clientDomainName2 to:clientDomainName3])
              {
                v42 = v14;
                v43 = clientDomainName2;
                assetSetIdentifier2 = [(MADAutoSetTarget *)self assetSetIdentifier];
                assetSetIdentifier3 = [(MADAutoSetTarget *)v5 assetSetIdentifier];
                if ([SUCore stringIsEqual:assetSetIdentifier2 to:assetSetIdentifier3])
                {
                  v40 = assetSetIdentifier3;
                  v41 = assetSetIdentifier2;
                  minTargetOSVersion2 = [(MADAutoSetTarget *)self minTargetOSVersion];
                  minTargetOSVersion3 = [(MADAutoSetTarget *)v5 minTargetOSVersion];
                  v39 = minTargetOSVersion2;
                  if ([SUCore stringIsEqual:minTargetOSVersion2 to:?])
                  {
                    maxTargetOSVersion2 = [(MADAutoSetTarget *)self maxTargetOSVersion];
                    maxTargetOSVersion3 = [(MADAutoSetTarget *)v5 maxTargetOSVersion];
                    v37 = maxTargetOSVersion2;
                    v22 = maxTargetOSVersion2;
                    v23 = maxTargetOSVersion3;
                    if ([SUCore stringIsEqual:v22 to:maxTargetOSVersion3])
                    {
                      autoAssetEntries2 = [(MADAutoSetTarget *)v5 autoAssetEntries];
                      v25 = autoAssetEntries2 == 0;
                    }

                    else
                    {
                      v25 = 1;
                    }
                  }

                  else
                  {
                    v25 = 1;
                  }

                  if (!v25)
                  {
                    autoAssetEntries3 = [(MADAutoSetTarget *)self autoAssetEntries];
                    v28 = [autoAssetEntries3 count];

                    autoAssetEntries4 = [(MADAutoSetTarget *)v5 autoAssetEntries];
                    v30 = [autoAssetEntries4 count];

                    if (v30 == v28)
                    {
                      v31 = 0;
                      v32 = v28 & ~(v28 >> 63);
                      do
                      {
                        LOBYTE(clientDomainName) = v32 == v31;
                        if (v32 == v31)
                        {
                          break;
                        }

                        autoAssetEntries5 = [(MADAutoSetTarget *)self autoAssetEntries];
                        v34 = [autoAssetEntries5 objectAtIndex:v31];

                        autoAssetEntries6 = [(MADAutoSetTarget *)v5 autoAssetEntries];
                        v36 = [autoAssetEntries6 objectAtIndex:v31];

                        ++v31;
                        LOBYTE(autoAssetEntries6) = [v36 isEqual:v34];
                      }

                      while ((autoAssetEntries6 & 1) != 0);
                      goto LABEL_22;
                    }
                  }

                  goto LABEL_21;
                }

                v14 = v42;
                clientDomainName2 = v43;
              }
            }
          }
        }
      }

LABEL_21:
      LOBYTE(clientDomainName) = 0;
      goto LABEL_22;
    }

    LOBYTE(clientDomainName) = 0;
  }

LABEL_23:

  return clientDomainName;
}

- (BOOL)includesEntryForAssetType:(id)type forAssetSpecifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(MADAutoSetTarget *)self autoAssetEntries];
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        assetSelector = [v10 assetSelector];
        assetType = [assetSelector assetType];
        if (([SUCore stringIsEqual:assetType to:typeCopy]& 1) != 0)
        {
          assetSelector2 = [v10 assetSelector];
          assetSpecifier = [assetSelector2 assetSpecifier];
          v15 = [SUCore stringIsEqual:assetSpecifier to:specifierCopy];

          if (v15)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

LABEL_12:

  return v7;
}

- (BOOL)includesEntryForAssetType:(id)type
{
  typeCopy = type;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
  v6 = [autoAssetEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(autoAssetEntries);
        }

        assetSelector = [*(*(&v13 + 1) + 8 * i) assetSelector];
        assetType = [assetSelector assetType];
        v11 = [SUCore stringIsEqual:assetType to:typeCopy];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [autoAssetEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)firstEntryAssetType
{
  autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
  v4 = [autoAssetEntries count];

  if (v4)
  {
    autoAssetEntries2 = [(MADAutoSetTarget *)self autoAssetEntries];
    v6 = [autoAssetEntries2 objectAtIndex:0];

    assetSelector = [v6 assetSelector];
    assetType = [assetSelector assetType];
  }

  else
  {
    assetType = 0;
  }

  return assetType;
}

- (id)description
{
  summary = [(MADAutoSetTarget *)self summary];
  autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
  v5 = [autoAssetEntries description];
  v6 = [NSString stringWithFormat:@"%@\nautoAssetEntries:\n%@", summary, v5];

  return v6;
}

- (id)summary
{
  clientDomainName = [(MADAutoSetTarget *)self clientDomainName];
  assetSetIdentifier = [(MADAutoSetTarget *)self assetSetIdentifier];
  minTargetOSVersion = [(MADAutoSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MADAutoSetTarget *)self maxTargetOSVersion];
  autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"clientDomain:%@|setIdentifier:%@|targetOSVersion:%@..%@|autoAssetEntries:%ld", clientDomainName, assetSetIdentifier, minTargetOSVersion, maxTargetOSVersion, [autoAssetEntries count]);

  return v8;
}

- (id)fullName
{
  clientDomainName = [(MADAutoSetTarget *)self clientDomainName];
  assetSetIdentifier = [(MADAutoSetTarget *)self assetSetIdentifier];
  minTargetOSVersion = [(MADAutoSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MADAutoSetTarget *)self maxTargetOSVersion];
  v7 = [NSString stringWithFormat:@"%@^%@^%@..%@", clientDomainName, assetSetIdentifier, minTargetOSVersion, maxTargetOSVersion];

  return v7;
}

- (id)newSummaryWithoutEntryID
{
  v3 = [NSString alloc];
  minTargetOSVersion = [(MADAutoSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MADAutoSetTarget *)self maxTargetOSVersion];
  autoAssetEntries = [(MADAutoSetTarget *)self autoAssetEntries];
  v7 = [v3 initWithFormat:@"targetOSVersion:%@..%@|autoAssetEntries:%ld", minTargetOSVersion, maxTargetOSVersion, objc_msgSend(autoAssetEntries, "count")];

  return v7;
}

@end