@interface SPBeaconLocationShareContext
- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)identifier;
- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)identifier andBundleIdentifier:(id)bundleIdentifier;
- (SPBeaconLocationShareContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconLocationShareContext

- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SPBeaconLocationShareContext;
  v6 = [(SPBeaconLocationShareContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_beaconIdentifier, identifier);
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = 0;
  }

  return v7;
}

- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)identifier andBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v12.receiver = self;
  v12.super_class = SPBeaconLocationShareContext;
  v9 = [(SPBeaconLocationShareContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_beaconIdentifier, identifier);
    objc_storeStrong(&v10->_bundleIdentifier, bundleIdentifier);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  beaconIdentifier = self->_beaconIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:beaconIdentifier forKey:@"beaconIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (SPBeaconLocationShareContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconLocationShareContext alloc];
  beaconIdentifier = self->_beaconIdentifier;
  bundleIdentifier = self->_bundleIdentifier;

  return [(SPBeaconLocationShareContext *)v4 initWithBeaconIdentifier:beaconIdentifier andBundleIdentifier:bundleIdentifier];
}

@end