@interface PPConnectionsCriteria
- (PPConnectionsCriteria)initWithCoder:(id)a3;
- (PPConnectionsCriteria)initWithLocationField:(unsigned __int8)a3 bundleIdentifier:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPConnectionsCriteria

- (void)encodeWithCoder:(id)a3
{
  locationField = self->_locationField;
  v5 = a3;
  [v5 encodeInteger:locationField forKey:@"locationField"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (PPConnectionsCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PPConnectionsCriteria;
  v5 = [(PPConnectionsCriteria *)&v9 init];
  if (v5)
  {
    v5->_locationField = [v4 decodeIntegerForKey:@"locationField"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPConnectionsCriteria l:%u b:%@>", self->_locationField, self->_bundleIdentifier];

  return v2;
}

- (PPConnectionsCriteria)initWithLocationField:(unsigned __int8)a3 bundleIdentifier:(id)a4
{
  v7 = a4;
  v8 = [(PPConnectionsCriteria *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_locationField = a3;
    objc_storeStrong(&v8->_bundleIdentifier, a4);
  }

  return v9;
}

@end