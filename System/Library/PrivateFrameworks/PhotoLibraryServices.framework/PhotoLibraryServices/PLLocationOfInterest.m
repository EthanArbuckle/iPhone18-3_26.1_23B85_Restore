@interface PLLocationOfInterest
- (BOOL)isEqual:(id)a3;
- (PLLocationOfInterest)initWithIdentifier:(id)a3 locationOfInterestType:(int64_t)a4 typeRadius:(double)a5 routineLocation:(id)a6 mapItemLocation:(id)a7;
- (double)centerDistanceFromLocation:(id)a3;
- (double)distanceFromLocation:(id)a3;
- (id)description;
- (void)addVisit:(id)a3;
- (void)removeVisit:(id)a3;
@end

@implementation PLLocationOfInterest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(PLLocationOfInterest *)v4 identifier];
      v7 = [(NSUUID *)identifier isEqual:v6];
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
  v5 = [(PLLocationOfInterest *)self routineLocation];
  v6 = [(PLLocationOfInterest *)self mapItemLocation];
  v7 = v6;
  v8 = self->_type + 1;
  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E75785D8[v8];
  }

  v10 = [v3 stringWithFormat:@"%@ - %@ - %@ - %@", v4, v5, v6, v9];

  return v10;
}

- (double)centerDistanceFromLocation:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6985C30];
  v6 = self->_routineLocation;
  v7 = v6;
  v8 = v5;
  if (v6)
  {
    v9 = [(PLLocationOfInterestLocation *)v6 location];
    [v9 distanceFromLocation:v4];
    v8 = v10;
  }

  mapItemLocation = self->_mapItemLocation;
  if (mapItemLocation)
  {
    v12 = [(PLLocationOfInterestLocation *)mapItemLocation location];
    [v12 distanceFromLocation:v4];
    v5 = v13;
  }

  if (v8 < v5)
  {
    v5 = v8;
  }

  return v5;
}

- (double)distanceFromLocation:(id)a3
{
  v4 = a3;
  typeRadius = self->_typeRadius;
  v6 = *MEMORY[0x1E6985C30];
  v7 = self->_routineLocation;
  v8 = v7;
  v9 = v6;
  if (v7)
  {
    [(PLLocationOfInterestLocation *)v7 distanceFromLocation:v4 withTypeRadius:typeRadius];
    v9 = v10;
  }

  mapItemLocation = self->_mapItemLocation;
  if (mapItemLocation)
  {
    [(PLLocationOfInterestLocation *)mapItemLocation distanceFromLocation:v4 withTypeRadius:typeRadius];
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

- (void)removeVisit:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterest.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"visit != nil"}];

    v5 = 0;
  }

  [(NSMutableArray *)self->_visits removeObject:v5];
  [v7 setLocationOfInterest:0];
}

- (void)addVisit:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterest.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"visit != nil"}];

    v5 = 0;
  }

  if (([(NSMutableArray *)self->_visits containsObject:v5]& 1) == 0)
  {
    [(NSMutableArray *)self->_visits addObject:v7];
    [v7 setLocationOfInterest:self];
  }
}

- (PLLocationOfInterest)initWithIdentifier:(id)a3 locationOfInterestType:(int64_t)a4 typeRadius:(double)a5 routineLocation:(id)a6 mapItemLocation:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = PLLocationOfInterest;
  v16 = [(PLLocationOfInterest *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    v17->_type = a4;
    v17->_typeRadius = a5;
    objc_storeStrong(&v17->_routineLocation, a6);
    objc_storeStrong(&v17->_mapItemLocation, a7);
    v18 = [MEMORY[0x1E695DF70] array];
    visits = v17->_visits;
    v17->_visits = v18;
  }

  return v17;
}

@end