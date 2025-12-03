@interface PKFlightSharingMessageExtensionViewProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFlightSharingMessageExtensionViewProperties:(id)properties;
- (PKFlightSharingMessageExtensionViewProperties)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFlightSharingMessageExtensionViewProperties

- (PKFlightSharingMessageExtensionViewProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKFlightSharingMessageExtensionViewProperties;
  v5 = [(PKSharingMessageExtensionViewProperties *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flight"];
    flight = v5->_flight;
    v5->_flight = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    foregroundColor = v5->_foregroundColor;
    v5->_foregroundColor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKFlightSharingMessageExtensionViewProperties;
  coderCopy = coder;
  [(PKSharingMessageExtensionViewProperties *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_flight forKey:{@"flight", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_logoImage forKey:@"logoImage"];
  [coderCopy encodeObject:self->_foregroundColor forKey:@"foregroundColor"];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"flight: '%@'; ", self->_flight];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_flight)
  {
    [array addObject:?];
  }

  if (self->_logoImage)
  {
    [v4 addObject:?];
  }

  if (self->_foregroundColor)
  {
    [v4 addObject:?];
  }

  if (self->_backgroundColor)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKFlightSharingMessageExtensionViewProperties *)self isEqualToFlightSharingMessageExtensionViewProperties:v5];
  }

  return v6;
}

- (BOOL)isEqualToFlightSharingMessageExtensionViewProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy && PKEqualObjects() && PKEqualObjects() && PKEqualObjects())
  {
    v4 = PKEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end