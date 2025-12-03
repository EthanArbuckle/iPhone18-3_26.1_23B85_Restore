@interface ATXLocationOfInterest
- (ATXLocationOfInterest)initWithCoder:(id)coder;
- (ATXLocationOfInterest)initWithUUID:(id)d visits:(id)visits coordinate:(CLLocationCoordinate2D)coordinate type:(int64_t)type city:(id)city;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLocation:(id)location;
- (CLLocationCoordinate2D)coordinate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addVisitFrom:(unint64_t)from to:(unint64_t)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXLocationOfInterest

- (ATXLocationOfInterest)initWithUUID:(id)d visits:(id)visits coordinate:(CLLocationCoordinate2D)coordinate type:(int64_t)type city:(id)city
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  dCopy = d;
  visitsCopy = visits;
  cityCopy = city;
  if (!dCopy)
  {
    [ATXLocationOfInterest initWithUUID:a2 visits:self coordinate:? type:? city:?];
  }

  v23.receiver = self;
  v23.super_class = ATXLocationOfInterest;
  v18 = [(ATXLocationOfInterest *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, d);
    if (visitsCopy)
    {
      v20 = visitsCopy;
    }

    else
    {
      v20 = objc_opt_new();
    }

    visits = v19->_visits;
    v19->_visits = v20;

    v19->_type = type;
    v19->_coordinate.latitude = latitude;
    v19->_coordinate.longitude = longitude;
    objc_storeStrong(&v19->_city, city);
  }

  return v19;
}

- (void)addVisitFrom:(unint64_t)from to:(unint64_t)to
{
  visits = self->_visits;
  v8 = [MEMORY[0x277CCAE60] valueWithRange:{from, to - from}];
  v6 = [(NSArray *)visits arrayByAddingObject:v8];
  v7 = self->_visits;
  self->_visits = v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLocationOfInterest *)self isEqualToLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToLocation:(id)location
{
  v4 = self->_uuid;
  v5 = v4;
  if (v4 == *(location + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSUUID *)v4 isEqual:?];
  }

  return v6;
}

- (ATXLocationOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if ([coderCopy containsValueForKey:@"type"])
  {
    v6 = [coderCopy decodeIntegerForKey:@"type"];
  }

  else
  {
    v6 = -1;
  }

  [coderCopy decodeDoubleForKey:@"latitude"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v10 = CLLocationCoordinate2DMake(v8, v9);
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
  v12 = [(ATXLocationOfInterest *)self initWithUUID:v5 visits:0 coordinate:v6 type:v11 city:v10.latitude, v10.longitude];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_coordinate.latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_coordinate.longitude];
  city = self->_city;
  if (city)
  {
    [coderCopy encodeObject:city forKey:@"city"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
  v7 = [(NSArray *)self->_visits copyWithZone:zone];
  v8 = [v5 initWithUUID:v6 visits:v7 coordinate:self->_type type:self->_city city:{self->_coordinate.latitude, self->_coordinate.longitude}];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v5 = [v3 stringWithFormat:@"ATXLocationOfInterest uuid:%@ visits:%@ type:%ld lat:%f long:%f city:%@", uUIDString, self->_visits, self->_type, *&self->_coordinate.latitude, *&self->_coordinate.longitude, self->_city];

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