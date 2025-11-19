@interface SPSafeLocation
- (BOOL)isEqual:(id)a3;
- (SPSafeLocation)initWithCoder:(id)a3;
- (SPSafeLocation)initWithIdentifier:(id)a3 type:(int64_t)a4 name:(id)a5 location:(id)a6 approvalState:(int64_t)a7;
- (SPSafeLocation)initWithType:(int64_t)a3 name:(id)a4 location:(id)a5 approvalState:(int64_t)a6;
- (double)altitude;
- (double)course;
- (double)courseAccuracy;
- (double)horizontalAccuracy;
- (double)latitude;
- (double)longitude;
- (double)speed;
- (double)speedAccuracy;
- (double)verticalAccuracy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)mutableSafeLocation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSafeLocation

- (SPSafeLocation)initWithIdentifier:(id)a3 type:(int64_t)a4 name:(id)a5 location:(id)a6 approvalState:(int64_t)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = SPSafeLocation;
  v16 = [(SPSafeLocation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    v17->_type = a4;
    objc_storeStrong(&v17->_name, a5);
    objc_storeStrong(&v17->_location, a6);
    v17->_approvalState = a7;
  }

  return v17;
}

- (SPSafeLocation)initWithType:(int64_t)a3 name:(id)a4 location:(id)a5 approvalState:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = [(SPSafeLocation *)self initWithIdentifier:v12 type:a3 name:v11 location:v10 approvalState:a6];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPSafeLocation *)self identifier];
      v7 = [(SPSafeLocation *)v5 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SPSafeLocation *)self name];
        v9 = [(SPSafeLocation *)v5 name];
        if ([v8 isEqual:v9])
        {
          v10 = [(SPSafeLocation *)self location];
          v11 = [(SPSafeLocation *)v5 location];
          [v10 distanceFromLocation:v11];
          if (v12 == 0.0 && (v13 = [(SPSafeLocation *)self type], v13 == [(SPSafeLocation *)v5 type]))
          {
            v14 = [(SPSafeLocation *)self approvalState];
            v15 = v14 == [(SPSafeLocation *)v5 approvalState];
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
  v3 = [(SPSafeLocation *)self identifier];
  v4 = [v3 hash];
  v5 = [(SPSafeLocation *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(SPSafeLocation *)self type];
  v8 = v7 ^ [(SPSafeLocation *)self approvalState];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPSafeLocation alloc];
  v5 = [(SPSafeLocation *)self identifier];
  v6 = [(SPSafeLocation *)self type];
  v7 = [(SPSafeLocation *)self name];
  v8 = [(SPSafeLocation *)self location];
  v9 = [(SPSafeLocation *)v4 initWithIdentifier:v5 type:v6 name:v7 location:v8 approvalState:[(SPSafeLocation *)self approvalState]];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(SPSafeLocation *)self identifier];
  [v7 encodeObject:v4 forKey:@"identifier"];

  [v7 encodeInteger:-[SPSafeLocation type](self forKey:{"type"), @"type"}];
  v5 = [(SPSafeLocation *)self name];
  [v7 encodeObject:v5 forKey:@"name"];

  v6 = [(SPSafeLocation *)self location];
  [v7 encodeObject:v6 forKey:@"location"];

  [v7 encodeInteger:-[SPSafeLocation approvalState](self forKey:{"approvalState"), @"approvalState"}];
}

- (SPSafeLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  self->_type = [v4 decodeIntegerForKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  location = self->_location;
  self->_location = v9;

  v11 = [v4 decodeIntegerForKey:@"approvalState"];
  self->_approvalState = v11;
  return self;
}

- (id)mutableSafeLocation
{
  v3 = [SPMutableSafeLocation alloc];
  v4 = [(SPSafeLocation *)self identifier];
  v5 = [(SPSafeLocation *)self type];
  v6 = [(SPSafeLocation *)self name];
  v7 = [(SPSafeLocation *)self location];
  v8 = [(SPSafeLocation *)v3 initWithIdentifier:v4 type:v5 name:v6 location:v7 approvalState:[(SPSafeLocation *)self approvalState]];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPSafeLocation *)self identifier];
  v6 = [(SPSafeLocation *)self location];
  [v6 coordinate];
  v8 = v7;
  v9 = [(SPSafeLocation *)self location];
  [v9 coordinate];
  v11 = v10;
  v12 = [(SPSafeLocation *)self location];
  [v12 horizontalAccuracy];
  v14 = v13;
  v15 = [(SPSafeLocation *)self name];
  v16 = [v3 stringWithFormat:@"<%@: %p %@ loc: %f, %f (%f) n:%@ a:%ld>", v4, self, v5, v8, v11, v14, v15, -[SPSafeLocation approvalState](self, "approvalState")];

  return v16;
}

- (double)latitude
{
  v2 = [(SPSafeLocation *)self location];
  [v2 coordinate];
  v4 = v3;

  return v4;
}

- (double)longitude
{
  v2 = [(SPSafeLocation *)self location];
  [v2 coordinate];
  v4 = v3;

  return v4;
}

- (double)horizontalAccuracy
{
  v2 = [(SPSafeLocation *)self location];
  [v2 horizontalAccuracy];
  v4 = v3;

  return v4;
}

- (double)altitude
{
  v2 = [(SPSafeLocation *)self location];
  [v2 altitude];
  v4 = v3;

  return v4;
}

- (double)verticalAccuracy
{
  v2 = [(SPSafeLocation *)self location];
  [v2 verticalAccuracy];
  v4 = v3;

  return v4;
}

- (double)speed
{
  v2 = [(SPSafeLocation *)self location];
  [v2 speed];
  v4 = v3;

  return v4;
}

- (double)speedAccuracy
{
  v2 = [(SPSafeLocation *)self location];
  [v2 speedAccuracy];
  v4 = v3;

  return v4;
}

- (double)course
{
  v2 = [(SPSafeLocation *)self location];
  [v2 course];
  v4 = v3;

  return v4;
}

- (double)courseAccuracy
{
  v2 = [(SPSafeLocation *)self location];
  [v2 courseAccuracy];
  v4 = v3;

  return v4;
}

@end