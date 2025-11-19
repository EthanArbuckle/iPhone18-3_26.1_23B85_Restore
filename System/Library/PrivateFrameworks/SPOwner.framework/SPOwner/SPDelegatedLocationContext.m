@interface SPDelegatedLocationContext
- (SPDelegatedLocationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDelegatedLocationContext

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(SPDelegatedLocationContext *)self uuids];
  [v6 encodeObject:v4 forKey:@"uuids"];

  v5 = [(SPDelegatedLocationContext *)self bundleIdentifier];
  [v6 encodeObject:v5 forKey:@"bundleIdentifier"];

  [v6 encodeBool:-[SPDelegatedLocationContext subscribe](self forKey:{"subscribe"), @"subscribe"}];
}

- (SPDelegatedLocationContext)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"uuids"];
  [(SPDelegatedLocationContext *)self setUuids:v8];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  [(SPDelegatedLocationContext *)self setBundleIdentifier:v9];

  v10 = [v5 decodeBoolForKey:@"subscribe"];
  [(SPDelegatedLocationContext *)self setSubscribe:v10];
  v11 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPDelegatedLocationContext *)self uuids];
  [v4 setUuids:v5];

  v6 = [(SPDelegatedLocationContext *)self bundleIdentifier];
  [v4 setBundleIdentifier:v6];

  [v4 setSubscribe:{-[SPDelegatedLocationContext subscribe](self, "subscribe")}];
  return v4;
}

@end