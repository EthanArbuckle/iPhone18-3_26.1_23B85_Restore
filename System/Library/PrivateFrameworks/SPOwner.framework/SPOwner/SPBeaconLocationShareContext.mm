@interface SPBeaconLocationShareContext
- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)a3;
- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)a3 andBundleIdentifier:(id)a4;
- (SPBeaconLocationShareContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconLocationShareContext

- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SPBeaconLocationShareContext;
  v6 = [(SPBeaconLocationShareContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_beaconIdentifier, a3);
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = 0;
  }

  return v7;
}

- (SPBeaconLocationShareContext)initWithBeaconIdentifier:(id)a3 andBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPBeaconLocationShareContext;
  v9 = [(SPBeaconLocationShareContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_beaconIdentifier, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  beaconIdentifier = self->_beaconIdentifier;
  v5 = a3;
  [v5 encodeObject:beaconIdentifier forKey:@"beaconIdentifier"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (SPBeaconLocationShareContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconLocationShareContext alloc];
  beaconIdentifier = self->_beaconIdentifier;
  bundleIdentifier = self->_bundleIdentifier;

  return [(SPBeaconLocationShareContext *)v4 initWithBeaconIdentifier:beaconIdentifier andBundleIdentifier:bundleIdentifier];
}

@end