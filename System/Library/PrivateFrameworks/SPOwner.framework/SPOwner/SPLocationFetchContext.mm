@interface SPLocationFetchContext
- (SPLocationFetchContext)initWithCoder:(id)coder;
- (_NSRange)primaryIndexRange;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPLocationFetchContext

- (_NSRange)primaryIndexRange
{
  length = self->_primaryIndexRange.length;
  location = self->_primaryIndexRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (SPLocationFetchContext)initWithCoder:(id)coder
{
  v38[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cachePolicy"];
  [(SPLocationFetchContext *)self setCachePolicy:v5];

  v6 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"searchIdentifiers"];
  [(SPLocationFetchContext *)self setSearchIdentifiers:v9];

  v10 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"searchPriority"];
  [(SPLocationFetchContext *)self setSearchPriority:v13];

  v14 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"searchTypes"];
  [(SPLocationFetchContext *)self setSearchTypes:v17];

  v18 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v20 = [v18 setWithArray:v19];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"searchLocationSources"];
  [(SPLocationFetchContext *)self setSearchLocationSources:v21];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  [(SPLocationFetchContext *)self setBundleIdentifier:v22];

  -[SPLocationFetchContext setSubscribe:](self, "setSubscribe:", [coderCopy decodeBoolForKey:@"subscribe"]);
  -[SPLocationFetchContext setReportDeviceEvents:](self, "setReportDeviceEvents:", [coderCopy decodeBoolForKey:@"reportDeviceEvents"]);
  [coderCopy decodeFloatForKey:@"primaryIndexRangeStart"];
  v24 = v23;
  [coderCopy decodeFloatForKey:@"primaryIndexRangeLength"];
  [(SPLocationFetchContext *)self setPrimaryIndexRange:v24, v25];
  v26 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:3];
  v28 = [v26 setWithArray:{v27, v32, v33}];
  v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"lastOnlineLocationInfo"];

  [(SPLocationFetchContext *)self setLastOnlineLocationInfo:v29];
  v30 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cachePolicy = [(SPLocationFetchContext *)self cachePolicy];
  [coderCopy encodeObject:cachePolicy forKey:@"cachePolicy"];

  searchIdentifiers = [(SPLocationFetchContext *)self searchIdentifiers];
  [coderCopy encodeObject:searchIdentifiers forKey:@"searchIdentifiers"];

  searchPriority = [(SPLocationFetchContext *)self searchPriority];
  [coderCopy encodeObject:searchPriority forKey:@"searchPriority"];

  searchTypes = [(SPLocationFetchContext *)self searchTypes];
  [coderCopy encodeObject:searchTypes forKey:@"searchTypes"];

  searchLocationSources = [(SPLocationFetchContext *)self searchLocationSources];
  [coderCopy encodeObject:searchLocationSources forKey:@"searchLocationSources"];

  bundleIdentifier = [(SPLocationFetchContext *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[SPLocationFetchContext subscribe](self forKey:{"subscribe"), @"subscribe"}];
  [coderCopy encodeBool:-[SPLocationFetchContext reportDeviceEvents](self forKey:{"reportDeviceEvents"), @"reportDeviceEvents"}];
  lastOnlineLocationInfo = [(SPLocationFetchContext *)self lastOnlineLocationInfo];
  [coderCopy encodeObject:lastOnlineLocationInfo forKey:@"lastOnlineLocationInfo"];

  *&v11 = [(SPLocationFetchContext *)self primaryIndexRange];
  [coderCopy encodeFloat:@"primaryIndexRangeStart" forKey:v11];
  [(SPLocationFetchContext *)self primaryIndexRange];
  *&v13 = v12;
  [coderCopy encodeFloat:@"primaryIndexRangeLength" forKey:v13];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  cachePolicy = [(SPLocationFetchContext *)self cachePolicy];
  [v4 setCachePolicy:cachePolicy];

  searchIdentifiers = [(SPLocationFetchContext *)self searchIdentifiers];
  [v4 setSearchIdentifiers:searchIdentifiers];

  searchPriority = [(SPLocationFetchContext *)self searchPriority];
  [v4 setSearchPriority:searchPriority];

  searchTypes = [(SPLocationFetchContext *)self searchTypes];
  [v4 setSearchTypes:searchTypes];

  searchLocationSources = [(SPLocationFetchContext *)self searchLocationSources];
  [v4 setSearchLocationSources:searchLocationSources];

  bundleIdentifier = [(SPLocationFetchContext *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  [v4 setSubscribe:{-[SPLocationFetchContext subscribe](self, "subscribe")}];
  [v4 setReportDeviceEvents:{-[SPLocationFetchContext reportDeviceEvents](self, "reportDeviceEvents")}];
  lastOnlineLocationInfo = [(SPLocationFetchContext *)self lastOnlineLocationInfo];
  [v4 setLastOnlineLocationInfo:lastOnlineLocationInfo];

  primaryIndexRange = [(SPLocationFetchContext *)self primaryIndexRange];
  [v4 setPrimaryIndexRange:{primaryIndexRange, v13}];
  return v4;
}

@end