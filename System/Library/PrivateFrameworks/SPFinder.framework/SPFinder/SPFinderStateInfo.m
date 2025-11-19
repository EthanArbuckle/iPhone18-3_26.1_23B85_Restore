@interface SPFinderStateInfo
- (NSSet)disabledReasons;
- (SPFinderStateInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPFinderStateInfo

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:-[SPFinderStateInfo state](self forKey:{"state"), @"state"}];
  v4 = [(SPFinderStateInfo *)self lastUpdated];
  [v8 encodeObject:v4 forKey:@"lastUpdated"];

  v5 = [(SPFinderStateInfo *)self lastPublishDate];
  [v8 encodeObject:v5 forKey:@"lastPublishDate"];

  v6 = [(SPFinderStateInfo *)self lastScheduledPublishActivityDate];
  [v8 encodeObject:v6 forKey:@"lastScheduledPublishActivityDate"];

  [v8 encodeInteger:-[SPFinderStateInfo activeCache](self forKey:{"activeCache"), @"activeCache"}];
  v7 = [(SPFinderStateInfo *)self disabledReasonsArray];
  [v8 encodeObject:v7 forKey:@"disabledReasonsArray"];

  [v8 encodeBool:-[SPFinderStateInfo optInScreenOffScan](self forKey:{"optInScreenOffScan"), @"optInScreenOffScan"}];
}

- (SPFinderStateInfo)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  -[SPFinderStateInfo setState:](self, "setState:", [v4 decodeBoolForKey:@"state"]);
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
  [(SPFinderStateInfo *)self setLastUpdated:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastPublishDate"];
  [(SPFinderStateInfo *)self setLastPublishDate:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastScheduledPublishActivityDate"];
  [(SPFinderStateInfo *)self setLastScheduledPublishActivityDate:v7];

  -[SPFinderStateInfo setActiveCache:](self, "setActiveCache:", [v4 decodeIntegerForKey:@"activeCache"]);
  v8 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"disabledReasonsArray"];
  [(SPFinderStateInfo *)self setDisabledReasonsArray:v11];

  v12 = [v4 decodeBoolForKey:@"optInScreenOffScan"];
  [(SPFinderStateInfo *)self setOptInScreenOffScan:v12];
  v13 = *MEMORY[0x277D85DE8];
  return self;
}

- (NSSet)disabledReasons
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(SPFinderStateInfo *)self disabledReasonsArray];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPFinderStateInfo *)self state];
  v5 = [(SPFinderStateInfo *)self optInScreenOffScan];
  v6 = [(SPFinderStateInfo *)self lastUpdated];
  v7 = [(SPFinderStateInfo *)self lastPublishDate];
  v8 = [(SPFinderStateInfo *)self lastScheduledPublishActivityDate];
  v9 = [(SPFinderStateInfo *)self activeCache];
  v10 = [(SPFinderStateInfo *)self disabledReasonsArray];
  v11 = [v3 stringWithFormat:@"SPFinderStateInfo state: %i, optInScreenOffScan: %i, lastUpdated: %@, lastPublishDate: %@, lastScheduledPublishActivityDate: %@, activeCache: %li, disabledReasons: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end