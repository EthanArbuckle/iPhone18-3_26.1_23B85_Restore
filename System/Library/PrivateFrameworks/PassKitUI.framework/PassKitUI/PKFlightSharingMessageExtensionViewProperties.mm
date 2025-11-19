@interface PKFlightSharingMessageExtensionViewProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFlightSharingMessageExtensionViewProperties:(id)a3;
- (PKFlightSharingMessageExtensionViewProperties)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFlightSharingMessageExtensionViewProperties

- (PKFlightSharingMessageExtensionViewProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKFlightSharingMessageExtensionViewProperties;
  v5 = [(PKSharingMessageExtensionViewProperties *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flight"];
    flight = v5->_flight;
    v5->_flight = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    foregroundColor = v5->_foregroundColor;
    v5->_foregroundColor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFlightSharingMessageExtensionViewProperties;
  v4 = a3;
  [(PKSharingMessageExtensionViewProperties *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_flight forKey:{@"flight", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_logoImage forKey:@"logoImage"];
  [v4 encodeObject:self->_foregroundColor forKey:@"foregroundColor"];
  [v4 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_flight)
  {
    [v3 addObject:?];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKFlightSharingMessageExtensionViewProperties *)self isEqualToFlightSharingMessageExtensionViewProperties:v5];
  }

  return v6;
}

- (BOOL)isEqualToFlightSharingMessageExtensionViewProperties:(id)a3
{
  v3 = a3;
  if (v3 && PKEqualObjects() && PKEqualObjects() && PKEqualObjects())
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