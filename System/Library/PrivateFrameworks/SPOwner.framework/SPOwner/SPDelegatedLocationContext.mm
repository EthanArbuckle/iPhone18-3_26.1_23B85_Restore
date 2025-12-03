@interface SPDelegatedLocationContext
- (SPDelegatedLocationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDelegatedLocationContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuids = [(SPDelegatedLocationContext *)self uuids];
  [coderCopy encodeObject:uuids forKey:@"uuids"];

  bundleIdentifier = [(SPDelegatedLocationContext *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[SPDelegatedLocationContext subscribe](self forKey:{"subscribe"), @"subscribe"}];
}

- (SPDelegatedLocationContext)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"uuids"];
  [(SPDelegatedLocationContext *)self setUuids:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  [(SPDelegatedLocationContext *)self setBundleIdentifier:v9];

  v10 = [coderCopy decodeBoolForKey:@"subscribe"];
  [(SPDelegatedLocationContext *)self setSubscribe:v10];
  v11 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  uuids = [(SPDelegatedLocationContext *)self uuids];
  [v4 setUuids:uuids];

  bundleIdentifier = [(SPDelegatedLocationContext *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  [v4 setSubscribe:{-[SPDelegatedLocationContext subscribe](self, "subscribe")}];
  return v4;
}

@end