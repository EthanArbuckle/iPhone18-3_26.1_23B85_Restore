@interface MANAutoAssetSetTarget
- (BOOL)isEqual:(id)a3;
- (MANAutoAssetSetTarget)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)initForMinTargetOSVersion:(id)a3 toMaxTargetOSVersion:(id)a4 asEntriesWhenTargeting:(id)a5;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetTarget

- (id)initForMinTargetOSVersion:(id)a3 toMaxTargetOSVersion:(id)a4 asEntriesWhenTargeting:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MANAutoAssetSetTarget;
  v12 = [(MANAutoAssetSetTarget *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_minTargetOSVersion, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (MANAutoAssetSetTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MANAutoAssetSetTarget;
  v5 = [(MANAutoAssetSetTarget *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minTargetOSVersion"];
    minTargetOSVersion = v5->_minTargetOSVersion;
    v5->_minTargetOSVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxTargetOSVersion"];
    maxTargetOSVersion = v5->_maxTargetOSVersion;
    v5->_maxTargetOSVersion = v8;

    v10 = [NSSet alloc];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v17 count:4];
    v12 = [v10 initWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
  [v4 encodeObject:v5 forKey:@"minTargetOSVersion"];

  v6 = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
  [v4 encodeObject:v6 forKey:@"maxTargetOSVersion"];

  v7 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  [v4 encodeObject:v7 forKey:@"autoAssetEntries"];
}

- (id)copy
{
  v3 = [MANAutoAssetSetTarget alloc];
  v4 = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
  v5 = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
  v6 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  v7 = [(MANAutoAssetSetTarget *)v3 initForMinTargetOSVersion:v4 toMaxTargetOSVersion:v5 asEntriesWhenTargeting:v6];

  return v7;
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
      v6 = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
      if (!v6)
      {
LABEL_21:

        goto LABEL_22;
      }

      v7 = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
      if (v7)
      {
        v8 = v7;
        v9 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
        if (v9)
        {
          v10 = v9;
          v11 = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
          v12 = [(MANAutoAssetSetTarget *)v5 minTargetOSVersion];
          if ([SUCore stringIsEqual:v11 to:v12])
          {
            v13 = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
            v14 = [(MANAutoAssetSetTarget *)v5 maxTargetOSVersion];
            v27 = v13;
            if ([SUCore stringIsEqual:v13 to:v14])
            {
              v15 = [(MANAutoAssetSetTarget *)v5 autoAssetEntries];

              if (v15)
              {
                v16 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
                v17 = [v16 count];

                v18 = [(MANAutoAssetSetTarget *)v5 autoAssetEntries];
                v19 = [v18 count];

                if (v19 == v17)
                {
                  v20 = 0;
                  v21 = v17 & ~(v17 >> 63);
                  do
                  {
                    LOBYTE(v6) = v21 == v20;
                    if (v21 == v20)
                    {
                      break;
                    }

                    v22 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
                    v23 = [v22 objectAtIndex:v20];

                    v24 = [(MANAutoAssetSetTarget *)v5 autoAssetEntries];
                    v25 = [v24 objectAtIndex:v20];

                    ++v20;
                    LOBYTE(v24) = [v25 isEqual:v23];
                  }

                  while ((v24 & 1) != 0);
                  goto LABEL_21;
                }
              }

              goto LABEL_20;
            }
          }
        }
      }

LABEL_20:
      LOBYTE(v6) = 0;
      goto LABEL_21;
    }

    LOBYTE(v6) = 0;
  }

LABEL_22:

  return v6;
}

- (id)description
{
  v3 = [(MANAutoAssetSetTarget *)self summary];
  v4 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  v5 = [v4 description];
  v6 = [NSString stringWithFormat:@"%@\nautoAssetEntries:\n%@", v3, v5];

  return v6;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetTarget *)self minTargetOSVersion];
  v4 = [(MANAutoAssetSetTarget *)self maxTargetOSVersion];
  v5 = [(MANAutoAssetSetTarget *)self autoAssetEntries];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"targetOSVersion:%@..%@|autoAssetEntries:%ld", v3, v4, [v5 count]);

  return v6;
}

@end