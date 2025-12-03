@interface SPSafeLocation
- (BOOL)isEqual:(id)equal;
- (SPSafeLocation)initWithCoder:(id)coder;
- (SPSafeLocation)initWithIdentifier:(id)identifier type:(int64_t)type name:(id)name location:(id)location approvalState:(int64_t)state;
- (SPSafeLocation)initWithType:(int64_t)type name:(id)name location:(id)location approvalState:(int64_t)state;
- (double)altitude;
- (double)course;
- (double)courseAccuracy;
- (double)horizontalAccuracy;
- (double)latitude;
- (double)longitude;
- (double)speed;
- (double)speedAccuracy;
- (double)verticalAccuracy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)mutableSafeLocation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSafeLocation

- (SPSafeLocation)initWithIdentifier:(id)identifier type:(int64_t)type name:(id)name location:(id)location approvalState:(int64_t)state
{
  identifierCopy = identifier;
  nameCopy = name;
  locationCopy = location;
  v19.receiver = self;
  v19.super_class = SPSafeLocation;
  v16 = [(SPSafeLocation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    v17->_type = type;
    objc_storeStrong(&v17->_name, name);
    objc_storeStrong(&v17->_location, location);
    v17->_approvalState = state;
  }

  return v17;
}

- (SPSafeLocation)initWithType:(int64_t)type name:(id)name location:(id)location approvalState:(int64_t)state
{
  locationCopy = location;
  nameCopy = name;
  v12 = objc_opt_new();
  v13 = [(SPSafeLocation *)self initWithIdentifier:v12 type:type name:nameCopy location:locationCopy approvalState:state];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SPSafeLocation *)self identifier];
      identifier2 = [(SPSafeLocation *)v5 identifier];
      if ([identifier isEqual:identifier2])
      {
        name = [(SPSafeLocation *)self name];
        name2 = [(SPSafeLocation *)v5 name];
        if ([name isEqual:name2])
        {
          location = [(SPSafeLocation *)self location];
          location2 = [(SPSafeLocation *)v5 location];
          [location distanceFromLocation:location2];
          if (v12 == 0.0 && (v13 = [(SPSafeLocation *)self type], v13 == [(SPSafeLocation *)v5 type]))
          {
            approvalState = [(SPSafeLocation *)self approvalState];
            v15 = approvalState == [(SPSafeLocation *)v5 approvalState];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  identifier = [(SPSafeLocation *)self identifier];
  v4 = [identifier hash];
  name = [(SPSafeLocation *)self name];
  v6 = [name hash] ^ v4;
  type = [(SPSafeLocation *)self type];
  v8 = type ^ [(SPSafeLocation *)self approvalState];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPSafeLocation alloc];
  identifier = [(SPSafeLocation *)self identifier];
  type = [(SPSafeLocation *)self type];
  name = [(SPSafeLocation *)self name];
  location = [(SPSafeLocation *)self location];
  v9 = [(SPSafeLocation *)v4 initWithIdentifier:identifier type:type name:name location:location approvalState:[(SPSafeLocation *)self approvalState]];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SPSafeLocation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[SPSafeLocation type](self forKey:{"type"), @"type"}];
  name = [(SPSafeLocation *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  location = [(SPSafeLocation *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  [coderCopy encodeInteger:-[SPSafeLocation approvalState](self forKey:{"approvalState"), @"approvalState"}];
}

- (SPSafeLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  self->_type = [coderCopy decodeIntegerForKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  location = self->_location;
  self->_location = v9;

  v11 = [coderCopy decodeIntegerForKey:@"approvalState"];
  self->_approvalState = v11;
  return self;
}

- (id)mutableSafeLocation
{
  v3 = [SPMutableSafeLocation alloc];
  identifier = [(SPSafeLocation *)self identifier];
  type = [(SPSafeLocation *)self type];
  name = [(SPSafeLocation *)self name];
  location = [(SPSafeLocation *)self location];
  v8 = [(SPSafeLocation *)v3 initWithIdentifier:identifier type:type name:name location:location approvalState:[(SPSafeLocation *)self approvalState]];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(SPSafeLocation *)self identifier];
  location = [(SPSafeLocation *)self location];
  [location coordinate];
  v8 = v7;
  location2 = [(SPSafeLocation *)self location];
  [location2 coordinate];
  v11 = v10;
  location3 = [(SPSafeLocation *)self location];
  [location3 horizontalAccuracy];
  v14 = v13;
  name = [(SPSafeLocation *)self name];
  v16 = [v3 stringWithFormat:@"<%@: %p %@ loc: %f, %f (%f) n:%@ a:%ld>", v4, self, identifier, v8, v11, v14, name, -[SPSafeLocation approvalState](self, "approvalState")];

  return v16;
}

- (double)latitude
{
  location = [(SPSafeLocation *)self location];
  [location coordinate];
  v4 = v3;

  return v4;
}

- (double)longitude
{
  location = [(SPSafeLocation *)self location];
  [location coordinate];
  v4 = v3;

  return v4;
}

- (double)horizontalAccuracy
{
  location = [(SPSafeLocation *)self location];
  [location horizontalAccuracy];
  v4 = v3;

  return v4;
}

- (double)altitude
{
  location = [(SPSafeLocation *)self location];
  [location altitude];
  v4 = v3;

  return v4;
}

- (double)verticalAccuracy
{
  location = [(SPSafeLocation *)self location];
  [location verticalAccuracy];
  v4 = v3;

  return v4;
}

- (double)speed
{
  location = [(SPSafeLocation *)self location];
  [location speed];
  v4 = v3;

  return v4;
}

- (double)speedAccuracy
{
  location = [(SPSafeLocation *)self location];
  [location speedAccuracy];
  v4 = v3;

  return v4;
}

- (double)course
{
  location = [(SPSafeLocation *)self location];
  [location course];
  v4 = v3;

  return v4;
}

- (double)courseAccuracy
{
  location = [(SPSafeLocation *)self location];
  [location courseAccuracy];
  v4 = v3;

  return v4;
}

@end