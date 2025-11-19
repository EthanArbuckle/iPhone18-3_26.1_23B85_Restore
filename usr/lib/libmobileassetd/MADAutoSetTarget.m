@interface MADAutoSetTarget
- (BOOL)includesEntryForAssetType:(id)a3;
- (BOOL)includesEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MADAutoSetTarget)initWithCoder:(id)a3;
- (id)assetSetEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4;
- (id)copy;
- (id)description;
- (id)firstEntryAssetType;
- (id)fullName;
- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 fromMinTargetOSVersion:(id)a5 toMaxTargetOSVersion:(id)a6 asEntriesWhenTargeting:(id)a7;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetTarget

- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 fromMinTargetOSVersion:(id)a5 toMaxTargetOSVersion:(id)a6 asEntriesWhenTargeting:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MADAutoSetTarget;
  v17 = [(MADAutoSetTarget *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_clientDomainName, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  return p_isa;
}

- (MADAutoSetTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MADAutoSetTarget;
  v5 = [(MADAutoSetTarget *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minTargetOSVersion"];
    minTargetOSVersion = v5->_minTargetOSVersion;
    v5->_minTargetOSVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxTargetOSVersion"];
    maxTargetOSVersion = v5->_maxTargetOSVersion;
    v5->_maxTargetOSVersion = v12;

    v14 = [NSSet alloc];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v21 count:4];
    v16 = [v14 initWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoSetTarget *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MADAutoSetTarget *)self assetSetIdentifier];
  [v4 encodeObject:v6 forKey:@"assetSetIdentifier"];

  v7 = [(MADAutoSetTarget *)self minTargetOSVersion];
  [v4 encodeObject:v7 forKey:@"minTargetOSVersion"];

  v8 = [(MADAutoSetTarget *)self maxTargetOSVersion];
  [v4 encodeObject:v8 forKey:@"maxTargetOSVersion"];

  v9 = [(MADAutoSetTarget *)self autoAssetEntries];
  [v4 encodeObject:v9 forKey:@"autoAssetEntries"];
}

- (id)assetSetEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4
{
  v6 = a3;
  v23 = a4;
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
        v13 = [v11 assetSelector];
        v14 = [v13 assetType];
        if ([v12 stringIsEqual:v14 to:v6])
        {
          v15 = p_weak_ivar_lyt[223];
          [v11 assetSelector];
          v16 = v8;
          v17 = p_weak_ivar_lyt;
          v19 = v18 = v6;
          v20 = [v19 assetSpecifier];
          LODWORD(v15) = [v15 stringIsEqual:v20 to:v23];

          v6 = v18;
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
  v4 = [(MADAutoSetTarget *)self clientDomainName];
  v5 = [(MADAutoSetTarget *)self assetSetIdentifier];
  v6 = [(MADAutoSetTarget *)self minTargetOSVersion];
  v7 = [(MADAutoSetTarget *)self maxTargetOSVersion];
  v8 = [(MADAutoSetTarget *)self autoAssetEntries];
  v9 = [(MADAutoSetTarget *)v3 initForClientDomainName:v4 forAssetSetIdentifier:v5 fromMinTargetOSVersion:v6 toMaxTargetOSVersion:v7 asEntriesWhenTargeting:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MADAutoSetTarget *)self clientDomainName];
      if (!v6)
      {
LABEL_22:

        goto LABEL_23;
      }

      v7 = [(MADAutoSetTarget *)self assetSetIdentifier];
      if (v7)
      {
        v8 = v7;
        v9 = [(MADAutoSetTarget *)self minTargetOSVersion];
        if (v9)
        {
          v10 = v9;
          v11 = [(MADAutoSetTarget *)self maxTargetOSVersion];
          if (v11)
          {
            v12 = v11;
            v13 = [(MADAutoSetTarget *)self autoAssetEntries];
            if (v13)
            {
              v14 = v13;
              v15 = [(MADAutoSetTarget *)self clientDomainName];
              v16 = [(MADAutoSetTarget *)v5 clientDomainName];
              if ([SUCore stringIsEqual:v15 to:v16])
              {
                v42 = v14;
                v43 = v15;
                v17 = [(MADAutoSetTarget *)self assetSetIdentifier];
                v18 = [(MADAutoSetTarget *)v5 assetSetIdentifier];
                if ([SUCore stringIsEqual:v17 to:v18])
                {
                  v40 = v18;
                  v41 = v17;
                  v19 = [(MADAutoSetTarget *)self minTargetOSVersion];
                  v38 = [(MADAutoSetTarget *)v5 minTargetOSVersion];
                  v39 = v19;
                  if ([SUCore stringIsEqual:v19 to:?])
                  {
                    v20 = [(MADAutoSetTarget *)self maxTargetOSVersion];
                    v21 = [(MADAutoSetTarget *)v5 maxTargetOSVersion];
                    v37 = v20;
                    v22 = v20;
                    v23 = v21;
                    if ([SUCore stringIsEqual:v22 to:v21])
                    {
                      v24 = [(MADAutoSetTarget *)v5 autoAssetEntries];
                      v25 = v24 == 0;
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
                    v27 = [(MADAutoSetTarget *)self autoAssetEntries];
                    v28 = [v27 count];

                    v29 = [(MADAutoSetTarget *)v5 autoAssetEntries];
                    v30 = [v29 count];

                    if (v30 == v28)
                    {
                      v31 = 0;
                      v32 = v28 & ~(v28 >> 63);
                      do
                      {
                        LOBYTE(v6) = v32 == v31;
                        if (v32 == v31)
                        {
                          break;
                        }

                        v33 = [(MADAutoSetTarget *)self autoAssetEntries];
                        v34 = [v33 objectAtIndex:v31];

                        v35 = [(MADAutoSetTarget *)v5 autoAssetEntries];
                        v36 = [v35 objectAtIndex:v31];

                        ++v31;
                        LOBYTE(v35) = [v36 isEqual:v34];
                      }

                      while ((v35 & 1) != 0);
                      goto LABEL_22;
                    }
                  }

                  goto LABEL_21;
                }

                v14 = v42;
                v15 = v43;
              }
            }
          }
        }
      }

LABEL_21:
      LOBYTE(v6) = 0;
      goto LABEL_22;
    }

    LOBYTE(v6) = 0;
  }

LABEL_23:

  return v6;
}

- (BOOL)includesEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4
{
  v6 = a3;
  v17 = a4;
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
        v11 = [v10 assetSelector];
        v12 = [v11 assetType];
        if (([SUCore stringIsEqual:v12 to:v6]& 1) != 0)
        {
          v13 = [v10 assetSelector];
          v14 = [v13 assetSpecifier];
          v15 = [SUCore stringIsEqual:v14 to:v17];

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

- (BOOL)includesEntryForAssetType:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MADAutoSetTarget *)self autoAssetEntries];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) assetSelector];
        v10 = [v9 assetType];
        v11 = [SUCore stringIsEqual:v10 to:v4];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(MADAutoSetTarget *)self autoAssetEntries];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MADAutoSetTarget *)self autoAssetEntries];
    v6 = [v5 objectAtIndex:0];

    v7 = [v6 assetSelector];
    v8 = [v7 assetType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [(MADAutoSetTarget *)self summary];
  v4 = [(MADAutoSetTarget *)self autoAssetEntries];
  v5 = [v4 description];
  v6 = [NSString stringWithFormat:@"%@\nautoAssetEntries:\n%@", v3, v5];

  return v6;
}

- (id)summary
{
  v3 = [(MADAutoSetTarget *)self clientDomainName];
  v4 = [(MADAutoSetTarget *)self assetSetIdentifier];
  v5 = [(MADAutoSetTarget *)self minTargetOSVersion];
  v6 = [(MADAutoSetTarget *)self maxTargetOSVersion];
  v7 = [(MADAutoSetTarget *)self autoAssetEntries];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"clientDomain:%@|setIdentifier:%@|targetOSVersion:%@..%@|autoAssetEntries:%ld", v3, v4, v5, v6, [v7 count]);

  return v8;
}

- (id)fullName
{
  v3 = [(MADAutoSetTarget *)self clientDomainName];
  v4 = [(MADAutoSetTarget *)self assetSetIdentifier];
  v5 = [(MADAutoSetTarget *)self minTargetOSVersion];
  v6 = [(MADAutoSetTarget *)self maxTargetOSVersion];
  v7 = [NSString stringWithFormat:@"%@^%@^%@..%@", v3, v4, v5, v6];

  return v7;
}

- (id)newSummaryWithoutEntryID
{
  v3 = [NSString alloc];
  v4 = [(MADAutoSetTarget *)self minTargetOSVersion];
  v5 = [(MADAutoSetTarget *)self maxTargetOSVersion];
  v6 = [(MADAutoSetTarget *)self autoAssetEntries];
  v7 = [v3 initWithFormat:@"targetOSVersion:%@..%@|autoAssetEntries:%ld", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end