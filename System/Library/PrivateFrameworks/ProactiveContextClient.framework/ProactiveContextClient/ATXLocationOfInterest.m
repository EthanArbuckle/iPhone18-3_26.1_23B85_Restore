@interface ATXLocationOfInterest
- (ATXLocationOfInterest)initWithCoder:(id)a3;
- (ATXLocationOfInterest)initWithUUID:(id)a3 visits:(id)a4 coordinate:(CLLocationCoordinate2D)a5 type:(int64_t)a6 city:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLocation:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addVisitFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXLocationOfInterest

- (ATXLocationOfInterest)initWithUUID:(id)a3 visits:(id)a4 coordinate:(CLLocationCoordinate2D)a5 type:(int64_t)a6 city:(id)a7
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  if (!v15)
  {
    [ATXLocationOfInterest initWithUUID:a2 visits:self coordinate:? type:? city:?];
  }

  v23.receiver = self;
  v23.super_class = ATXLocationOfInterest;
  v18 = [(ATXLocationOfInterest *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, a3);
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = objc_opt_new();
    }

    visits = v19->_visits;
    v19->_visits = v20;

    v19->_type = a6;
    v19->_coordinate.latitude = latitude;
    v19->_coordinate.longitude = longitude;
    objc_storeStrong(&v19->_city, a7);
  }

  return v19;
}

- (void)addVisitFrom:(unint64_t)a3 to:(unint64_t)a4
{
  visits = self->_visits;
  v8 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4 - a3}];
  v6 = [(NSArray *)visits arrayByAddingObject:v8];
  v7 = self->_visits;
  self->_visits = v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLocationOfInterest *)self isEqualToLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToLocation:(id)a3
{
  v4 = self->_uuid;
  v5 = v4;
  if (v4 == *(a3 + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSUUID *)v4 isEqual:?];
  }

  return v6;
}

- (ATXLocationOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if ([v4 containsValueForKey:@"type"])
  {
    v6 = [v4 decodeIntegerForKey:@"type"];
  }

  else
  {
    v6 = -1;
  }

  [v4 decodeDoubleForKey:@"latitude"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"longitude"];
  v10 = CLLocationCoordinate2DMake(v8, v9);
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
  v12 = [(ATXLocationOfInterest *)self initWithUUID:v5 visits:0 coordinate:v6 type:v11 city:v10.latitude, v10.longitude];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeDouble:@"latitude" forKey:self->_coordinate.latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_coordinate.longitude];
  city = self->_city;
  if (city)
  {
    [v5 encodeObject:city forKey:@"city"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
  v7 = [(NSArray *)self->_visits copyWithZone:a3];
  v8 = [v5 initWithUUID:v6 visits:v7 coordinate:self->_type type:self->_city city:{self->_coordinate.latitude, self->_coordinate.longitude}];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSUUID *)self->_uuid UUIDString];
  v5 = [v3 stringWithFormat:@"ATXLocationOfInterest uuid:%@ visits:%@ type:%ld lat:%f long:%f city:%@", v4, self->_visits, self->_type, *&self->_coordinate.latitude, *&self->_coordinate.longitude, self->_city];

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)initWithUUID:(uint64_t)a1 visits:(uint64_t)a2 coordinate:type:city:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationOfInterest.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

@end