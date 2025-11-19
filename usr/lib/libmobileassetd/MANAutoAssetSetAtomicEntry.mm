@interface MANAutoAssetSetAtomicEntry
- (MANAutoAssetSetAtomicEntry)initWithCoder:(id)a3;
- (MANAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)a3 withAssetID:(id)a4 withLocalContentURL:(id)a5 withAssetAttributes:(id)a6 inhibitedFromEmergencyRemoval:(BOOL)a7;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetAtomicEntry

- (MANAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)a3 withAssetID:(id)a4 withLocalContentURL:(id)a5 withAssetAttributes:(id)a6 inhibitedFromEmergencyRemoval:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = MANAutoAssetSetAtomicEntry;
  v17 = [(MANAutoAssetSetAtomicEntry *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fullAssetSelector, a3);
    objc_storeStrong(&v18->_assetID, a4);
    objc_storeStrong(&v18->_localContentURL, a5);
    objc_storeStrong(&v18->_assetAttributes, a6);
    v18->_inhibitedFromEmergencyRemoval = a7;
  }

  return v18;
}

- (MANAutoAssetSetAtomicEntry)initWithCoder:(id)a3
{
  v4 = a3;
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

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v12;

    v14 = [v4 decodeObjectOfClasses:v7 forKey:@"assetAttributes"];
    assetAttributes = v5->_assetAttributes;
    v5->_assetAttributes = v14;

    v5->_inhibitedFromEmergencyRemoval = [v4 decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
  [v8 encodeObject:v4 forKey:@"fullAssetSelector"];

  v5 = [(MANAutoAssetSetAtomicEntry *)self assetID];
  [v8 encodeObject:v5 forKey:@"assetID"];

  v6 = [(MANAutoAssetSetAtomicEntry *)self localContentURL];
  [v8 encodeObject:v6 forKey:@"localContentURL"];

  v7 = [(MANAutoAssetSetAtomicEntry *)self assetAttributes];
  [v8 encodeObject:v7 forKey:@"assetAttributes"];

  [v8 encodeBool:-[MANAutoAssetSetAtomicEntry inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
}

- (id)copy
{
  v3 = [MANAutoAssetSetAtomicEntry alloc];
  v4 = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
  v5 = [(MANAutoAssetSetAtomicEntry *)self assetID];
  v6 = [(MANAutoAssetSetAtomicEntry *)self localContentURL];
  v7 = [(MANAutoAssetSetAtomicEntry *)self assetAttributes];
  v8 = [(MANAutoAssetSetAtomicEntry *)v3 initWithFullAssetSelector:v4 withAssetID:v5 withLocalContentURL:v6 withAssetAttributes:v7 inhibitedFromEmergencyRemoval:[(MANAutoAssetSetAtomicEntry *)self inhibitedFromEmergencyRemoval]];

  return v8;
}

- (id)summary
{
  v14 = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
  if (v14)
  {
    v13 = [(MANAutoAssetSetAtomicEntry *)self fullAssetSelector];
    v3 = [v13 summary];
  }

  else
  {
    v3 = @"N";
  }

  v4 = [(MANAutoAssetSetAtomicEntry *)self assetID];
  if (v4)
  {
    v5 = [(MANAutoAssetSetAtomicEntry *)self assetID];
  }

  else
  {
    v5 = @"N";
  }

  v6 = [(MANAutoAssetSetAtomicEntry *)self localContentURL];
  if (v6)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MANAutoAssetSetAtomicEntry *)self assetAttributes];
  if (v8)
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

  v11 = [NSString stringWithFormat:@"fullAssetSelector:%@|assetID:%@|localContentURL:%@|assetAttributes:%@|inhibitedFromEmergencyRemoval:%@", v3, v5, v7, v9, v10];

  if (v4)
  {
  }

  if (v14)
  {
  }

  return v11;
}

@end