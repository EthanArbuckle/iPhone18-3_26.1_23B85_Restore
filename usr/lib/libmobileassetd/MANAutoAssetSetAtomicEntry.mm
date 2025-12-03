@interface MANAutoAssetSetAtomicEntry
- (MANAutoAssetSetAtomicEntry)initWithCoder:(id)coder;
- (MANAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)selector withAssetID:(id)d withLocalContentURL:(id)l withAssetAttributes:(id)attributes inhibitedFromEmergencyRemoval:(BOOL)removal;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetAtomicEntry

- (MANAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)selector withAssetID:(id)d withLocalContentURL:(id)l withAssetAttributes:(id)attributes inhibitedFromEmergencyRemoval:(BOOL)removal
{
  selectorCopy = selector;
  dCopy = d;
  lCopy = l;
  attributesCopy = attributes;
  v20.receiver = self;
  v20.super_class = MANAutoAssetSetAtomicEntry;
  v17 = [(MANAutoAssetSetAtomicEntry *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fullAssetSelector, selector);
    objc_storeStrong(&v18->_assetID, d);
    objc_storeStrong(&v18->_localContentURL, l);
    objc_storeStrong(&v18->_assetAttributes, attributes);
    v18->_inhibitedFromEmergencyRemoval = removal;
  }

  return v18;
}

- (MANAutoAssetSetAtomicEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MANAutoAssetSetAtomicEntry;
  v5 = [(MANAutoAssetSetAtomicEntry *)&v17 init];
  if (v5)
  {
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v18[6] = objc_opt_class();
    v18[7] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v18 count:8];
    v7 = [NSSet setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v12;

    v14 = [coderCopy decodeObjectOfClasses:v7 forKey:@"assetAttributes"];
    assetAttributes = v5->_assetAttributes;
    v5->_assetAttributes = v14;

    v5->_inhibitedFromEmergencyRemoval = [coderCopy decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fullAssetSelector = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
  [coderCopy encodeObject:fullAssetSelector forKey:@"fullAssetSelector"];

  assetID = [(MANAutoAssetSetAtomicEntry *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetID"];

  localContentURL = [(MANAutoAssetSetAtomicEntry *)self localContentURL];
  [coderCopy encodeObject:localContentURL forKey:@"localContentURL"];

  assetAttributes = [(MANAutoAssetSetAtomicEntry *)self assetAttributes];
  [coderCopy encodeObject:assetAttributes forKey:@"assetAttributes"];

  [coderCopy encodeBool:-[MANAutoAssetSetAtomicEntry inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
}

- (id)copy
{
  v3 = [MANAutoAssetSetAtomicEntry alloc];
  fullAssetSelector = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
  assetID = [(MANAutoAssetSetAtomicEntry *)self assetID];
  localContentURL = [(MANAutoAssetSetAtomicEntry *)self localContentURL];
  assetAttributes = [(MANAutoAssetSetAtomicEntry *)self assetAttributes];
  v8 = [(MANAutoAssetSetAtomicEntry *)v3 initWithFullAssetSelector:fullAssetSelector withAssetID:assetID withLocalContentURL:localContentURL withAssetAttributes:assetAttributes inhibitedFromEmergencyRemoval:[(MANAutoAssetSetAtomicEntry *)self inhibitedFromEmergencyRemoval]];

  return v8;
}

- (id)summary
{
  fullAssetSelector = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
  if (fullAssetSelector)
  {
    fullAssetSelector2 = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
    summary = [fullAssetSelector2 summary];
  }

  else
  {
    summary = @"N";
  }

  assetID = [(MANAutoAssetSetAtomicEntry *)self assetID];
  if (assetID)
  {
    assetID2 = [(MANAutoAssetSetAtomicEntry *)self assetID];
  }

  else
  {
    assetID2 = @"N";
  }

  localContentURL = [(MANAutoAssetSetAtomicEntry *)self localContentURL];
  if (localContentURL)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  assetAttributes = [(MANAutoAssetSetAtomicEntry *)self assetAttributes];
  if (assetAttributes)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(MANAutoAssetSetAtomicEntry *)self inhibitedFromEmergencyRemoval])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [NSString stringWithFormat:@"fullAssetSelector:%@|assetID:%@|localContentURL:%@|assetAttributes:%@|inhibitedFromEmergencyRemoval:%@", summary, assetID2, v7, v9, v10];

  if (assetID)
  {
  }

  if (fullAssetSelector)
  {
  }

  return v11;
}

@end