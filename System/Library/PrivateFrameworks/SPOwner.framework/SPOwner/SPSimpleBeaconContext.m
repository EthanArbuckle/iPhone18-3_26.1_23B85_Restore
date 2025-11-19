@interface SPSimpleBeaconContext
+ (id)defaultContext;
+ (id)deviceManagerContext;
+ (id)fmcaContext;
+ (id)fmipItemContext;
+ (id)fmipItemContextForBeaconUUIDs:(id)a3;
+ (id)fmipItemContextForProductUUIDs:(id)a3;
- (SPSimpleBeaconContext)initWithCoder:(id)a3;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingBeaconUUIDs:(id)a4;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingFindMyIds:(id)a4;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingProductUUIDs:(id)a4;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingSerialNumbers:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSimpleBeaconContext

+ (id)defaultContext
{
  v2 = [SPSimpleBeaconContext alloc];
  v3 = [(SPSimpleBeaconContext *)v2 initWithFetchProperties:0 matchingBeaconUUIDs:MEMORY[0x277CBEBF8]];

  return v3;
}

+ (id)deviceManagerContext
{
  v2 = [SPSimpleBeaconContext alloc];
  v3 = [(SPSimpleBeaconContext *)v2 initWithFetchProperties:511 matchingBeaconUUIDs:MEMORY[0x277CBEBF8]];

  return v3;
}

+ (id)fmipItemContext
{
  v2 = [SPSimpleBeaconContext alloc];
  v3 = [(SPSimpleBeaconContext *)v2 initWithFetchProperties:512 matchingBeaconUUIDs:MEMORY[0x277CBEBF8]];

  return v3;
}

+ (id)fmipItemContextForBeaconUUIDs:(id)a3
{
  v3 = a3;
  v4 = [[SPSimpleBeaconContext alloc] initWithFetchProperties:512 matchingBeaconUUIDs:v3];

  return v4;
}

+ (id)fmipItemContextForProductUUIDs:(id)a3
{
  v3 = a3;
  v4 = [[SPSimpleBeaconContext alloc] initWithFetchProperties:512 matchingProductUUIDs:v3];

  return v4;
}

+ (id)fmcaContext
{
  v2 = [SPSimpleBeaconContext alloc];
  v3 = [(SPSimpleBeaconContext *)v2 initWithFetchProperties:6286 matchingBeaconUUIDs:MEMORY[0x277CBEBF8]];

  return v3;
}

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingBeaconUUIDs:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = a3;
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v11;

    v9->_sendInitialBeacons = 1;
    objc_storeStrong(&v9->_matchingBeaconUUIDs, a4);
    matchingSerialNumbers = v9->_matchingSerialNumbers;
    v14 = MEMORY[0x277CBEBF8];
    v9->_matchingSerialNumbers = MEMORY[0x277CBEBF8];

    matchingFindMyIds = v9->_matchingFindMyIds;
    v9->_matchingFindMyIds = v14;

    matchingProductUUIDs = v9->_matchingProductUUIDs;
    v9->_matchingProductUUIDs = v14;
  }

  return v9;
}

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingSerialNumbers:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = a3;
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v11;

    v9->_sendInitialBeacons = 1;
    matchingBeaconUUIDs = v9->_matchingBeaconUUIDs;
    v14 = MEMORY[0x277CBEBF8];
    v9->_matchingBeaconUUIDs = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v9->_matchingSerialNumbers, a4);
    matchingFindMyIds = v9->_matchingFindMyIds;
    v9->_matchingFindMyIds = v14;

    matchingProductUUIDs = v9->_matchingProductUUIDs;
    v9->_matchingProductUUIDs = v14;
  }

  return v9;
}

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingFindMyIds:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = a3;
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v11;

    v9->_sendInitialBeacons = 1;
    matchingBeaconUUIDs = v9->_matchingBeaconUUIDs;
    v14 = MEMORY[0x277CBEBF8];
    v9->_matchingBeaconUUIDs = MEMORY[0x277CBEBF8];

    matchingSerialNumbers = v9->_matchingSerialNumbers;
    v9->_matchingSerialNumbers = v14;

    objc_storeStrong(&v9->_matchingFindMyIds, a4);
    matchingProductUUIDs = v9->_matchingProductUUIDs;
    v9->_matchingProductUUIDs = v14;
  }

  return v9;
}

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)a3 matchingProductUUIDs:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = a3;
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v11;

    v9->_sendInitialBeacons = 1;
    matchingBeaconUUIDs = v9->_matchingBeaconUUIDs;
    v14 = MEMORY[0x277CBEBF8];
    v9->_matchingBeaconUUIDs = MEMORY[0x277CBEBF8];

    matchingSerialNumbers = v9->_matchingSerialNumbers;
    v9->_matchingSerialNumbers = v14;

    matchingFindMyIds = v9->_matchingFindMyIds;
    v9->_matchingFindMyIds = v14;

    objc_storeStrong(&v9->_matchingProductUUIDs, a4);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeDouble:@"fetchProperties" forKey:self->_fetchProperties];
  [v5 encodeBool:self->_sendInitialBeacons forKey:@"sendInitialBeacons"];
  [v5 encodeObject:self->_matchingBeaconUUIDs forKey:@"matchingBeaconUUIDs"];
  [v5 encodeObject:self->_matchingProductUUIDs forKey:@"matchingProductUUIDs"];
  [v5 encodeObject:self->_matchingSerialNumbers forKey:@"matchingSerialNumbers"];
  [v5 encodeObject:self->_matchingFindMyIds forKey:@"matchingFindMyIds"];
  [v5 encodeObject:self->_repairContextType forKey:@"repairContextType"];
}

- (SPSimpleBeaconContext)initWithCoder:(id)a3
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  [v4 decodeDoubleForKey:@"fetchProperties"];
  self->_fetchProperties = v7;
  self->_sendInitialBeacons = [v4 decodeBoolForKey:@"sendInitialBeacons"];
  v8 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"matchingBeaconUUIDs"];
  matchingBeaconUUIDs = self->_matchingBeaconUUIDs;
  self->_matchingBeaconUUIDs = v11;

  v13 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"matchingProductUUIDs"];
  matchingProductUUIDs = self->_matchingProductUUIDs;
  self->_matchingProductUUIDs = v16;

  v18 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v20 = [v18 setWithArray:v19];
  v21 = [v4 decodeObjectOfClasses:v20 forKey:@"matchingSerialNumbers"];
  matchingSerialNumbers = self->_matchingSerialNumbers;
  self->_matchingSerialNumbers = v21;

  v23 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v25 = [v23 setWithArray:v24];
  v26 = [v4 decodeObjectOfClasses:v25 forKey:@"matchingFindMyIds"];
  matchingFindMyIds = self->_matchingFindMyIds;
  self->_matchingFindMyIds = v26;

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"repairContextType"];

  repairContextType = self->_repairContextType;
  self->_repairContextType = v28;

  v30 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPSimpleBeaconContext *)self bundleIdentifier];
  [v4 setBundleIdentifier:v5];

  [v4 setFetchProperties:{-[SPSimpleBeaconContext fetchProperties](self, "fetchProperties")}];
  [v4 setSendInitialBeacons:{-[SPSimpleBeaconContext sendInitialBeacons](self, "sendInitialBeacons")}];
  v6 = [(SPSimpleBeaconContext *)self matchingBeaconUUIDs];
  [v4 setMatchingBeaconUUIDs:v6];

  v7 = [(SPSimpleBeaconContext *)self matchingProductUUIDs];
  [v4 setMatchingProductUUIDs:v7];

  v8 = [(SPSimpleBeaconContext *)self matchingSerialNumbers];
  [v4 setMatchingSerialNumbers:v8];

  v9 = [(SPSimpleBeaconContext *)self matchingFindMyIds];
  [v4 setMatchingFindMyIds:v9];

  v10 = [(SPSimpleBeaconContext *)self repairContextType];
  [v4 setRepairContextType:v10];

  return v4;
}

@end