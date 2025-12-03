@interface SPSimpleBeaconContext
+ (id)defaultContext;
+ (id)deviceManagerContext;
+ (id)fmcaContext;
+ (id)fmipItemContext;
+ (id)fmipItemContextForBeaconUUIDs:(id)ds;
+ (id)fmipItemContextForProductUUIDs:(id)ds;
- (SPSimpleBeaconContext)initWithCoder:(id)coder;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingBeaconUUIDs:(id)ds;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingFindMyIds:(id)ids;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingProductUUIDs:(id)ds;
- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingSerialNumbers:(id)numbers;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

+ (id)fmipItemContextForBeaconUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = [[SPSimpleBeaconContext alloc] initWithFetchProperties:512 matchingBeaconUUIDs:dsCopy];

  return v4;
}

+ (id)fmipItemContextForProductUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = [[SPSimpleBeaconContext alloc] initWithFetchProperties:512 matchingProductUUIDs:dsCopy];

  return v4;
}

+ (id)fmcaContext
{
  v2 = [SPSimpleBeaconContext alloc];
  v3 = [(SPSimpleBeaconContext *)v2 initWithFetchProperties:6286 matchingBeaconUUIDs:MEMORY[0x277CBEBF8]];

  return v3;
}

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingBeaconUUIDs:(id)ds
{
  dsCopy = ds;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = properties;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier;

    v9->_sendInitialBeacons = 1;
    objc_storeStrong(&v9->_matchingBeaconUUIDs, ds);
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

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingSerialNumbers:(id)numbers
{
  numbersCopy = numbers;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = properties;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier;

    v9->_sendInitialBeacons = 1;
    matchingBeaconUUIDs = v9->_matchingBeaconUUIDs;
    v14 = MEMORY[0x277CBEBF8];
    v9->_matchingBeaconUUIDs = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v9->_matchingSerialNumbers, numbers);
    matchingFindMyIds = v9->_matchingFindMyIds;
    v9->_matchingFindMyIds = v14;

    matchingProductUUIDs = v9->_matchingProductUUIDs;
    v9->_matchingProductUUIDs = v14;
  }

  return v9;
}

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingFindMyIds:(id)ids
{
  idsCopy = ids;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = properties;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier;

    v9->_sendInitialBeacons = 1;
    matchingBeaconUUIDs = v9->_matchingBeaconUUIDs;
    v14 = MEMORY[0x277CBEBF8];
    v9->_matchingBeaconUUIDs = MEMORY[0x277CBEBF8];

    matchingSerialNumbers = v9->_matchingSerialNumbers;
    v9->_matchingSerialNumbers = v14;

    objc_storeStrong(&v9->_matchingFindMyIds, ids);
    matchingProductUUIDs = v9->_matchingProductUUIDs;
    v9->_matchingProductUUIDs = v14;
  }

  return v9;
}

- (SPSimpleBeaconContext)initWithFetchProperties:(unint64_t)properties matchingProductUUIDs:(id)ds
{
  dsCopy = ds;
  v18.receiver = self;
  v18.super_class = SPSimpleBeaconContext;
  v8 = [(SPSimpleBeaconContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchProperties = properties;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier;

    v9->_sendInitialBeacons = 1;
    matchingBeaconUUIDs = v9->_matchingBeaconUUIDs;
    v14 = MEMORY[0x277CBEBF8];
    v9->_matchingBeaconUUIDs = MEMORY[0x277CBEBF8];

    matchingSerialNumbers = v9->_matchingSerialNumbers;
    v9->_matchingSerialNumbers = v14;

    matchingFindMyIds = v9->_matchingFindMyIds;
    v9->_matchingFindMyIds = v14;

    objc_storeStrong(&v9->_matchingProductUUIDs, ds);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeDouble:@"fetchProperties" forKey:self->_fetchProperties];
  [coderCopy encodeBool:self->_sendInitialBeacons forKey:@"sendInitialBeacons"];
  [coderCopy encodeObject:self->_matchingBeaconUUIDs forKey:@"matchingBeaconUUIDs"];
  [coderCopy encodeObject:self->_matchingProductUUIDs forKey:@"matchingProductUUIDs"];
  [coderCopy encodeObject:self->_matchingSerialNumbers forKey:@"matchingSerialNumbers"];
  [coderCopy encodeObject:self->_matchingFindMyIds forKey:@"matchingFindMyIds"];
  [coderCopy encodeObject:self->_repairContextType forKey:@"repairContextType"];
}

- (SPSimpleBeaconContext)initWithCoder:(id)coder
{
  v35[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  [coderCopy decodeDoubleForKey:@"fetchProperties"];
  self->_fetchProperties = v7;
  self->_sendInitialBeacons = [coderCopy decodeBoolForKey:@"sendInitialBeacons"];
  v8 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"matchingBeaconUUIDs"];
  matchingBeaconUUIDs = self->_matchingBeaconUUIDs;
  self->_matchingBeaconUUIDs = v11;

  v13 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"matchingProductUUIDs"];
  matchingProductUUIDs = self->_matchingProductUUIDs;
  self->_matchingProductUUIDs = v16;

  v18 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v20 = [v18 setWithArray:v19];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"matchingSerialNumbers"];
  matchingSerialNumbers = self->_matchingSerialNumbers;
  self->_matchingSerialNumbers = v21;

  v23 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v25 = [v23 setWithArray:v24];
  v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"matchingFindMyIds"];
  matchingFindMyIds = self->_matchingFindMyIds;
  self->_matchingFindMyIds = v26;

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"repairContextType"];

  repairContextType = self->_repairContextType;
  self->_repairContextType = v28;

  v30 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  bundleIdentifier = [(SPSimpleBeaconContext *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  [v4 setFetchProperties:{-[SPSimpleBeaconContext fetchProperties](self, "fetchProperties")}];
  [v4 setSendInitialBeacons:{-[SPSimpleBeaconContext sendInitialBeacons](self, "sendInitialBeacons")}];
  matchingBeaconUUIDs = [(SPSimpleBeaconContext *)self matchingBeaconUUIDs];
  [v4 setMatchingBeaconUUIDs:matchingBeaconUUIDs];

  matchingProductUUIDs = [(SPSimpleBeaconContext *)self matchingProductUUIDs];
  [v4 setMatchingProductUUIDs:matchingProductUUIDs];

  matchingSerialNumbers = [(SPSimpleBeaconContext *)self matchingSerialNumbers];
  [v4 setMatchingSerialNumbers:matchingSerialNumbers];

  matchingFindMyIds = [(SPSimpleBeaconContext *)self matchingFindMyIds];
  [v4 setMatchingFindMyIds:matchingFindMyIds];

  repairContextType = [(SPSimpleBeaconContext *)self repairContextType];
  [v4 setRepairContextType:repairContextType];

  return v4;
}

@end