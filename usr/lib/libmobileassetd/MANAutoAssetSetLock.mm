@interface MANAutoAssetSetLock
- (MANAutoAssetSetLock)initWithCoder:(id)coder;
- (id)initForSelector:(id)selector withLocalContentURL:(id)l withAssetAttributes:(id)attributes;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetLock

- (id)initForSelector:(id)selector withLocalContentURL:(id)l withAssetAttributes:(id)attributes
{
  selectorCopy = selector;
  lCopy = l;
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = MANAutoAssetSetLock;
  v12 = [(MANAutoAssetSetLock *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fullAssetSelector, selector);
    objc_storeStrong(&v13->_localContentURL, l);
    objc_storeStrong(&v13->_assetAttributes, attributes);
    v13->_inhibitedFromEmergencyRemoval = 0;
    v14 = objc_alloc_init(NSMutableDictionary);
    lockReasons = v13->_lockReasons;
    v13->_lockReasons = v14;
  }

  return v13;
}

- (MANAutoAssetSetLock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MANAutoAssetSetLock;
  v5 = [(MANAutoAssetSetLock *)&v15 init];
  if (v5)
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v16[5] = objc_opt_class();
    v16[6] = objc_opt_class();
    v16[7] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v16 count:8];
    v7 = [NSSet setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v10;

    v5->_inhibitedFromEmergencyRemoval = [coderCopy decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
    v12 = [coderCopy decodeObjectOfClasses:v7 forKey:@"lockReasons"];
    lockReasons = v5->_lockReasons;
    v5->_lockReasons = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fullAssetSelector = [(MANAutoAssetSetLock *)self fullAssetSelector];
  [coderCopy encodeObject:fullAssetSelector forKey:@"fullAssetSelector"];

  localContentURL = [(MANAutoAssetSetLock *)self localContentURL];
  [coderCopy encodeObject:localContentURL forKey:@"localContentURL"];

  [coderCopy encodeBool:-[MANAutoAssetSetLock inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
  lockReasons = [(MANAutoAssetSetLock *)self lockReasons];
  [coderCopy encodeObject:lockReasons forKey:@"lockReasons"];
}

- (id)summary
{
  fullAssetSelector = [(MANAutoAssetSetLock *)self fullAssetSelector];
  summary = [fullAssetSelector summary];
  localContentURL = [(MANAutoAssetSetLock *)self localContentURL];
  path = [localContentURL path];
  assetAttributes = [(MANAutoAssetSetLock *)self assetAttributes];
  safeSummary = [assetAttributes safeSummary];
  if ([(MANAutoAssetSetLock *)self inhibitedFromEmergencyRemoval])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  lockReasons = [(MANAutoAssetSetLock *)self lockReasons];
  safeSummary2 = [lockReasons safeSummary];
  v12 = [NSString stringWithFormat:@"selector:%@|localURL:%@|attributes:%@|inhibitedRemoval:%@|reasons:%@", summary, path, safeSummary, v9, safeSummary2];

  return v12;
}

@end