@interface SPLocationFetchContext
- (SPLocationFetchContext)initWithCoder:(id)a3;
- (_NSRange)primaryIndexRange;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (SPLocationFetchContext)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cachePolicy"];
  [(SPLocationFetchContext *)self setCachePolicy:v5];

  v6 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"searchIdentifiers"];
  [(SPLocationFetchContext *)self setSearchIdentifiers:v9];

  v10 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"searchPriority"];
  [(SPLocationFetchContext *)self setSearchPriority:v13];

  v14 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"searchTypes"];
  [(SPLocationFetchContext *)self setSearchTypes:v17];

  v18 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v20 = [v18 setWithArray:v19];
  v21 = [v4 decodeObjectOfClasses:v20 forKey:@"searchLocationSources"];
  [(SPLocationFetchContext *)self setSearchLocationSources:v21];

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  [(SPLocationFetchContext *)self setBundleIdentifier:v22];

  -[SPLocationFetchContext setSubscribe:](self, "setSubscribe:", [v4 decodeBoolForKey:@"subscribe"]);
  -[SPLocationFetchContext setReportDeviceEvents:](self, "setReportDeviceEvents:", [v4 decodeBoolForKey:@"reportDeviceEvents"]);
  [v4 decodeFloatForKey:@"primaryIndexRangeStart"];
  v24 = v23;
  [v4 decodeFloatForKey:@"primaryIndexRangeLength"];
  [(SPLocationFetchContext *)self setPrimaryIndexRange:v24, v25];
  v26 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:3];
  v28 = [v26 setWithArray:{v27, v32, v33}];
  v29 = [v4 decodeObjectOfClasses:v28 forKey:@"lastOnlineLocationInfo"];

  [(SPLocationFetchContext *)self setLastOnlineLocationInfo:v29];
  v30 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(SPLocationFetchContext *)self cachePolicy];
  [v14 encodeObject:v4 forKey:@"cachePolicy"];

  v5 = [(SPLocationFetchContext *)self searchIdentifiers];
  [v14 encodeObject:v5 forKey:@"searchIdentifiers"];

  v6 = [(SPLocationFetchContext *)self searchPriority];
  [v14 encodeObject:v6 forKey:@"searchPriority"];

  v7 = [(SPLocationFetchContext *)self searchTypes];
  [v14 encodeObject:v7 forKey:@"searchTypes"];

  v8 = [(SPLocationFetchContext *)self searchLocationSources];
  [v14 encodeObject:v8 forKey:@"searchLocationSources"];

  v9 = [(SPLocationFetchContext *)self bundleIdentifier];
  [v14 encodeObject:v9 forKey:@"bundleIdentifier"];

  [v14 encodeBool:-[SPLocationFetchContext subscribe](self forKey:{"subscribe"), @"subscribe"}];
  [v14 encodeBool:-[SPLocationFetchContext reportDeviceEvents](self forKey:{"reportDeviceEvents"), @"reportDeviceEvents"}];
  v10 = [(SPLocationFetchContext *)self lastOnlineLocationInfo];
  [v14 encodeObject:v10 forKey:@"lastOnlineLocationInfo"];

  *&v11 = [(SPLocationFetchContext *)self primaryIndexRange];
  [v14 encodeFloat:@"primaryIndexRangeStart" forKey:v11];
  [(SPLocationFetchContext *)self primaryIndexRange];
  *&v13 = v12;
  [v14 encodeFloat:@"primaryIndexRangeLength" forKey:v13];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPLocationFetchContext *)self cachePolicy];
  [v4 setCachePolicy:v5];

  v6 = [(SPLocationFetchContext *)self searchIdentifiers];
  [v4 setSearchIdentifiers:v6];

  v7 = [(SPLocationFetchContext *)self searchPriority];
  [v4 setSearchPriority:v7];

  v8 = [(SPLocationFetchContext *)self searchTypes];
  [v4 setSearchTypes:v8];

  v9 = [(SPLocationFetchContext *)self searchLocationSources];
  [v4 setSearchLocationSources:v9];

  v10 = [(SPLocationFetchContext *)self bundleIdentifier];
  [v4 setBundleIdentifier:v10];

  [v4 setSubscribe:{-[SPLocationFetchContext subscribe](self, "subscribe")}];
  [v4 setReportDeviceEvents:{-[SPLocationFetchContext reportDeviceEvents](self, "reportDeviceEvents")}];
  v11 = [(SPLocationFetchContext *)self lastOnlineLocationInfo];
  [v4 setLastOnlineLocationInfo:v11];

  v12 = [(SPLocationFetchContext *)self primaryIndexRange];
  [v4 setPrimaryIndexRange:{v12, v13}];
  return v4;
}

@end