@interface MANAutoAssetSetEntry
- (BOOL)isEqual:(id)equal;
- (MANAutoAssetSetEntry)initWithCoder:(id)coder;
- (id)copy;
- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier withAssetVersion:(id)version usingDecryptionKey:(id)key assetLockedInhibitsRemoval:(BOOL)removal;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetEntry

- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier withAssetVersion:(id)version usingDecryptionKey:(id)key assetLockedInhibitsRemoval:(BOOL)removal
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = MANAutoAssetSetEntry;
  v16 = [(MANAutoAssetSetEntry *)&v20 init];
  if (v16)
  {
    v17 = [[MAAutoAssetSelector alloc] initForAssetType:typeCopy withAssetSpecifier:specifierCopy matchingAssetVersion:versionCopy usingDecryptionKey:keyCopy];
    assetSelector = v16->_assetSelector;
    v16->_assetSelector = v17;

    v16->_assetLockedInhibitsRemoval = removal;
  }

  return v16;
}

- (MANAutoAssetSetEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MANAutoAssetSetEntry;
  v5 = [(MANAutoAssetSetEntry *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_assetLockedInhibitsRemoval = [coderCopy decodeBoolForKey:@"assetLockedInhibitsRemoval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MANAutoAssetSetEntry *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  [coderCopy encodeBool:-[MANAutoAssetSetEntry assetLockedInhibitsRemoval](self forKey:{"assetLockedInhibitsRemoval"), @"assetLockedInhibitsRemoval"}];
}

- (id)copy
{
  v3 = [MANAutoAssetSetEntry alloc];
  assetSelector = [(MANAutoAssetSetEntry *)self assetSelector];
  assetType = [assetSelector assetType];
  assetSelector2 = [(MANAutoAssetSetEntry *)self assetSelector];
  assetSpecifier = [assetSelector2 assetSpecifier];
  assetSelector3 = [(MANAutoAssetSetEntry *)self assetSelector];
  downloadDecryptionKey = [assetSelector3 downloadDecryptionKey];
  v10 = [(MANAutoAssetSetEntry *)v3 initForAssetType:assetType withAssetSpecifier:assetSpecifier usingDecryptionKey:downloadDecryptionKey assetLockedInhibitsRemoval:[(MANAutoAssetSetEntry *)self assetLockedInhibitsRemoval]];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      assetSelector = [(MANAutoAssetSetEntry *)v5 assetSelector];

      if (assetSelector)
      {
        assetSelector2 = [(MANAutoAssetSetEntry *)v5 assetSelector];
        assetSelector3 = [(MANAutoAssetSetEntry *)self assetSelector];
        if ([assetSelector2 isEqual:assetSelector3])
        {
          assetLockedInhibitsRemoval = [(MANAutoAssetSetEntry *)v5 assetLockedInhibitsRemoval];
          v10 = assetLockedInhibitsRemoval ^ [(MANAutoAssetSetEntry *)self assetLockedInhibitsRemoval]^ 1;
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
  assetSelector = [(MANAutoAssetSetEntry *)self assetSelector];
  summary = [assetSelector summary];
  assetLockedInhibitsRemoval = [(MANAutoAssetSetEntry *)self assetLockedInhibitsRemoval];
  v6 = @"N";
  if (assetLockedInhibitsRemoval)
  {
    v6 = @"Y";
  }

  v7 = [NSString stringWithFormat:@"assetSelector:%@|assetLockedInhibitsRemoval:%@", summary, v6];

  return v7;
}

@end