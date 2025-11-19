@interface MANAutoAssetSetLock
- (MANAutoAssetSetLock)initWithCoder:(id)a3;
- (id)initForSelector:(id)a3 withLocalContentURL:(id)a4 withAssetAttributes:(id)a5;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetLock

- (id)initForSelector:(id)a3 withLocalContentURL:(id)a4 withAssetAttributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MANAutoAssetSetLock;
  v12 = [(MANAutoAssetSetLock *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fullAssetSelector, a3);
    objc_storeStrong(&v13->_localContentURL, a4);
    objc_storeStrong(&v13->_assetAttributes, a5);
    v13->_inhibitedFromEmergencyRemoval = 0;
    v14 = objc_alloc_init(NSMutableDictionary);
    lockReasons = v13->_lockReasons;
    v13->_lockReasons = v14;
  }

  return v13;
}

- (MANAutoAssetSetLock)initWithCoder:(id)a3
{
  v4 = a3;
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

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v10;

    v5->_inhibitedFromEmergencyRemoval = [v4 decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
    v12 = [v4 decodeObjectOfClasses:v7 forKey:@"lockReasons"];
    lockReasons = v5->_lockReasons;
    v5->_lockReasons = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSetLock *)self fullAssetSelector];
  [v4 encodeObject:v5 forKey:@"fullAssetSelector"];

  v6 = [(MANAutoAssetSetLock *)self localContentURL];
  [v4 encodeObject:v6 forKey:@"localContentURL"];

  [v4 encodeBool:-[MANAutoAssetSetLock inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
  v7 = [(MANAutoAssetSetLock *)self lockReasons];
  [v4 encodeObject:v7 forKey:@"lockReasons"];
}

- (id)summary
{
  v3 = [(MANAutoAssetSetLock *)self fullAssetSelector];
  v4 = [v3 summary];
  v5 = [(MANAutoAssetSetLock *)self localContentURL];
  v6 = [v5 path];
  v7 = [(MANAutoAssetSetLock *)self assetAttributes];
  v8 = [v7 safeSummary];
  if ([(MANAutoAssetSetLock *)self inhibitedFromEmergencyRemoval])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v10 = [(MANAutoAssetSetLock *)self lockReasons];
  v11 = [v10 safeSummary];
  v12 = [NSString stringWithFormat:@"selector:%@|localURL:%@|attributes:%@|inhibitedRemoval:%@|reasons:%@", v4, v6, v8, v9, v11];

  return v12;
}

@end