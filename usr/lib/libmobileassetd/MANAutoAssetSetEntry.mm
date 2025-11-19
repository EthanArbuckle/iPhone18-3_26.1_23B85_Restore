@interface MANAutoAssetSetEntry
- (BOOL)isEqual:(id)a3;
- (MANAutoAssetSetEntry)initWithCoder:(id)a3;
- (id)copy;
- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 withAssetVersion:(id)a5 usingDecryptionKey:(id)a6 assetLockedInhibitsRemoval:(BOOL)a7;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetEntry

- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 withAssetVersion:(id)a5 usingDecryptionKey:(id)a6 assetLockedInhibitsRemoval:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = MANAutoAssetSetEntry;
  v16 = [(MANAutoAssetSetEntry *)&v20 init];
  if (v16)
  {
    v17 = [[MAAutoAssetSelector alloc] initForAssetType:v12 withAssetSpecifier:v13 matchingAssetVersion:v14 usingDecryptionKey:v15];
    assetSelector = v16->_assetSelector;
    v16->_assetSelector = v17;

    v16->_assetLockedInhibitsRemoval = a7;
  }

  return v16;
}

- (MANAutoAssetSetEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MANAutoAssetSetEntry;
  v5 = [(MANAutoAssetSetEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_assetLockedInhibitsRemoval = [v4 decodeBoolForKey:@"assetLockedInhibitsRemoval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MANAutoAssetSetEntry *)self assetSelector];
  [v5 encodeObject:v4 forKey:@"assetSelector"];

  [v5 encodeBool:-[MANAutoAssetSetEntry assetLockedInhibitsRemoval](self forKey:{"assetLockedInhibitsRemoval"), @"assetLockedInhibitsRemoval"}];
}

- (id)copy
{
  v3 = [MANAutoAssetSetEntry alloc];
  v4 = [(MANAutoAssetSetEntry *)self assetSelector];
  v5 = [v4 assetType];
  v6 = [(MANAutoAssetSetEntry *)self assetSelector];
  v7 = [v6 assetSpecifier];
  v8 = [(MANAutoAssetSetEntry *)self assetSelector];
  v9 = [v8 downloadDecryptionKey];
  v10 = [(MANAutoAssetSetEntry *)v3 initForAssetType:v5 withAssetSpecifier:v7 usingDecryptionKey:v9 assetLockedInhibitsRemoval:[(MANAutoAssetSetEntry *)self assetLockedInhibitsRemoval]];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MANAutoAssetSetEntry *)v5 assetSelector];

      if (v6)
      {
        v7 = [(MANAutoAssetSetEntry *)v5 assetSelector];
        v8 = [(MANAutoAssetSetEntry *)self assetSelector];
        if ([v7 isEqual:v8])
        {
          v9 = [(MANAutoAssetSetEntry *)v5 assetLockedInhibitsRemoval];
          v10 = v9 ^ [(MANAutoAssetSetEntry *)self assetLockedInhibitsRemoval]^ 1;
        }

        else
        {
          LOBYTE(v10) = 0;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetEntry *)self assetSelector];
  v4 = [v3 summary];
  v5 = [(MANAutoAssetSetEntry *)self assetLockedInhibitsRemoval];
  v6 = @"N";
  if (v5)
  {
    v6 = @"Y";
  }

  v7 = [NSString stringWithFormat:@"assetSelector:%@|assetLockedInhibitsRemoval:%@", v4, v6];

  return v7;
}

@end