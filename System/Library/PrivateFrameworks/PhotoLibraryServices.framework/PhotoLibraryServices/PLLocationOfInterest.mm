@interface PLLocationOfInterest
- (BOOL)isEqual:(id)equal;
- (PLLocationOfInterest)initWithIdentifier:(id)identifier locationOfInterestType:(int64_t)type typeRadius:(double)radius routineLocation:(id)location mapItemLocation:(id)itemLocation;
- (double)centerDistanceFromLocation:(id)location;
- (double)distanceFromLocation:(id)location;
- (id)description;
- (void)addVisit:(id)visit;
- (void)removeVisit:(id)visit;
@end

@implementation PLLocationOfInterest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(PLLocationOfInterest *)equalCopy identifier];
      v7 = [(NSUUID *)identifier isEqual:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = PLLocationOfInterest;
  v4 = [(PLLocationOfInterest *)&v12 description];
  routineLocation = [(PLLocationOfInterest *)self routineLocation];
  mapItemLocation = [(PLLocationOfInterest *)self mapItemLocation];
  v7 = mapItemLocation;
  v8 = self->_type + 1;
  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E75785D8[v8];
  }

  v10 = [v3 stringWithFormat:@"%@ - %@ - %@ - %@", v4, routineLocation, mapItemLocation, v9];

  return v10;
}

- (double)centerDistanceFromLocation:(id)location
{
  locationCopy = location;
  v5 = *MEMORY[0x1E6985C30];
  v6 = self->_routineLocation;
  v7 = v6;
  v8 = v5;
  if (v6)
  {
    location = [(PLLocationOfInterestLocation *)v6 location];
    [location distanceFromLocation:locationCopy];
    v8 = v10;
  }

  mapItemLocation = self->_mapItemLocation;
  if (mapItemLocation)
  {
    location2 = [(PLLocationOfInterestLocation *)mapItemLocation location];
    [location2 distanceFromLocation:locationCopy];
    v5 = v13;
  }

  if (v8 < v5)
  {
    v5 = v8;
  }

  return v5;
}

- (double)distanceFromLocation:(id)location
{
  locationCopy = location;
  typeRadius = self->_typeRadius;
  v6 = *MEMORY[0x1E6985C30];
  v7 = self->_routineLocation;
  v8 = v7;
  v9 = v6;
  if (v7)
  {
    [(PLLocationOfInterestLocation *)v7 distanceFromLocation:locationCopy withTypeRadius:typeRadius];
    v9 = v10;
  }

  mapItemLocation = self->_mapItemLocation;
  if (mapItemLocation)
  {
    [(PLLocationOfInterestLocation *)mapItemLocation distanceFromLocation:locationCopy withTypeRadius:typeRadius];
    v6 = v12;
  }

  if (v9 >= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

- (void)removeVisit:(id)visit
{
  visitCopy = visit;
  v7 = visitCopy;
  if (!visitCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLocationOfInterest.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"visit != nil"}];

    visitCopy = 0;
  }

  [(NSMutableArray *)self->_visits removeObject:visitCopy];
  [v7 setLocationOfInterest:0];
}

- (void)addVisit:(id)visit
{
  visitCopy = visit;
  v7 = visitCopy;
  if (!visitCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLocationOfInterest.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"visit != nil"}];

    visitCopy = 0;
  }

  if (([(NSMutableArray *)self->_visits containsObject:visitCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_visits addObject:v7];
    [v7 setLocationOfInterest:self];
  }
}

- (PLLocationOfInterest)initWithIdentifier:(id)identifier locationOfInterestType:(int64_t)type typeRadius:(double)radius routineLocation:(id)location mapItemLocation:(id)itemLocation
{
  identifierCopy = identifier;
  locationCopy = location;
  itemLocationCopy = itemLocation;
  v21.receiver = self;
  v21.super_class = PLLocationOfInterest;
  v16 = [(PLLocationOfInterest *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    v17->_type = type;
    v17->_typeRadius = radius;
    objc_storeStrong(&v17->_routineLocation, location);
    objc_storeStrong(&v17->_mapItemLocation, itemLocation);
    array = [MEMORY[0x1E695DF70] array];
    visits = v17->_visits;
    v17->_visits = array;
  }

  return v17;
}

@end