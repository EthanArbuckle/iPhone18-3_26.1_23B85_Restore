@interface PPConnectionsCriteria
- (PPConnectionsCriteria)initWithCoder:(id)coder;
- (PPConnectionsCriteria)initWithLocationField:(unsigned __int8)field bundleIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPConnectionsCriteria

- (void)encodeWithCoder:(id)coder
{
  locationField = self->_locationField;
  coderCopy = coder;
  [coderCopy encodeInteger:locationField forKey:@"locationField"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (PPConnectionsCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PPConnectionsCriteria;
  v5 = [(PPConnectionsCriteria *)&v9 init];
  if (v5)
  {
    v5->_locationField = [coderCopy decodeIntegerForKey:@"locationField"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
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

- (PPConnectionsCriteria)initWithLocationField:(unsigned __int8)field bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = [(PPConnectionsCriteria *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_locationField = field;
    objc_storeStrong(&v8->_bundleIdentifier, identifier);
  }

  return v9;
}

@end