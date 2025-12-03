@interface MANAutoAssetSetTarget
- (BOOL)isEqual:(id)equal;
- (MANAutoAssetSetTarget)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)initForMinTargetOSVersion:(id)version toMaxTargetOSVersion:(id)sVersion asEntriesWhenTargeting:(id)targeting;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetTarget

- (id)initForMinTargetOSVersion:(id)version toMaxTargetOSVersion:(id)sVersion asEntriesWhenTargeting:(id)targeting
{
  versionCopy = version;
  sVersionCopy = sVersion;
  targetingCopy = targeting;
  v15.receiver = self;
  v15.super_class = MANAutoAssetSetTarget;
  v12 = [(MANAutoAssetSetTarget *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_minTargetOSVersion, version);
    objc_storeStrong(p_isa + 2, sVersion);
    objc_storeStrong(p_isa + 3, targeting);
  }

  return p_isa;
}

- (MANAutoAssetSetTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MANAutoAssetSetTarget;
  v5 = [(MANAutoAssetSetTarget *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minTargetOSVersion"];
    minTargetOSVersion = v5->_minTargetOSVersion;
    v5->_minTargetOSVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxTargetOSVersion"];
    maxTargetOSVersion = v5->_maxTargetOSVersion;
    v5->_maxTargetOSVersion = v8;

    v10 = [NSSet alloc];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v17 count:4];
    v12 = [v10 initWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  minTargetOSVersion = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
  [coderCopy encodeObject:minTargetOSVersion forKey:@"minTargetOSVersion"];

  maxTargetOSVersion = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
  [coderCopy encodeObject:maxTargetOSVersion forKey:@"maxTargetOSVersion"];

  autoAssetEntries = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  [coderCopy encodeObject:autoAssetEntries forKey:@"autoAssetEntries"];
}

- (id)copy
{
  v3 = [MANAutoAssetSetTarget alloc];
  minTargetOSVersion = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
  autoAssetEntries = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  v7 = [(MANAutoAssetSetTarget *)v3 initForMinTargetOSVersion:minTargetOSVersion toMaxTargetOSVersion:maxTargetOSVersion asEntriesWhenTargeting:autoAssetEntries];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(minTargetOSVersion) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      minTargetOSVersion = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
      if (!minTargetOSVersion)
      {
LABEL_21:

        goto LABEL_22;
      }

      maxTargetOSVersion = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
      if (maxTargetOSVersion)
      {
        v8 = maxTargetOSVersion;
        autoAssetEntries = [(MANAutoAssetSetTarget *)self autoAssetEntries];
        if (autoAssetEntries)
        {
          v10 = autoAssetEntries;
          minTargetOSVersion2 = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
          minTargetOSVersion3 = [(MANAutoAssetSetTarget *)v5 minTargetOSVersion];
          if ([SUCore stringIsEqual:minTargetOSVersion2 to:minTargetOSVersion3])
          {
            maxTargetOSVersion2 = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
            maxTargetOSVersion3 = [(MANAutoAssetSetTarget *)v5 maxTargetOSVersion];
            v27 = maxTargetOSVersion2;
            if ([SUCore stringIsEqual:maxTargetOSVersion2 to:maxTargetOSVersion3])
            {
              autoAssetEntries2 = [(MANAutoAssetSetTarget *)v5 autoAssetEntries];

              if (autoAssetEntries2)
              {
                autoAssetEntries3 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
                v17 = [autoAssetEntries3 count];

                autoAssetEntries4 = [(MANAutoAssetSetTarget *)v5 autoAssetEntries];
                v19 = [autoAssetEntries4 count];

                if (v19 == v17)
                {
                  v20 = 0;
                  v21 = v17 & ~(v17 >> 63);
                  do
                  {
                    LOBYTE(minTargetOSVersion) = v21 == v20;
                    if (v21 == v20)
                    {
                      break;
                    }

                    autoAssetEntries5 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
                    v23 = [autoAssetEntries5 objectAtIndex:v20];

                    autoAssetEntries6 = [(MANAutoAssetSetTarget *)v5 autoAssetEntries];
                    v25 = [autoAssetEntries6 objectAtIndex:v20];

                    ++v20;
                    LOBYTE(autoAssetEntries6) = [v25 isEqual:v23];
                  }

                  while ((autoAssetEntries6 & 1) != 0);
                  goto LABEL_21;
                }
              }

              goto LABEL_20;
            }
          }
        }
      }

LABEL_20:
      LOBYTE(minTargetOSVersion) = 0;
      goto LABEL_21;
    }

    LOBYTE(minTargetOSVersion) = 0;
  }

LABEL_22:

  return minTargetOSVersion;
}

- (id)description
{
  summary = [(MANAutoAssetSetTarget *)self summary];
  autoAssetEntries = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  v5 = [autoAssetEntries description];
  v6 = [NSString stringWithFormat:@"%@\nautoAssetEntries:\n%@", summary, v5];

  return v6;
}

- (id)summary
{
  minTargetOSVersion = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
  autoAssetEntries = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"targetOSVersion:%@..%@|autoAssetEntries:%ld", minTargetOSVersion, maxTargetOSVersion, [autoAssetEntries count]);

  return v6;
}

@end