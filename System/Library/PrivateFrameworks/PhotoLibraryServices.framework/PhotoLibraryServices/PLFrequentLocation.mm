@interface PLFrequentLocation
- (BOOL)isEqual:(id)equal;
- (BOOL)isSimilarToFrequentLocation:(id)location;
- (BOOL)isWithinDistance:(double)distance toCoordinate:(CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)coordinate;
- (NSDateInterval)dateInterval;
- (NSSet)momentsSet;
- (NSString)description;
- (PLFrequentLocation)initWithSortedMoments:(id)moments;
- (PLMomentProcessingProtocol)centroid;
- (void)addMomentToSortedMoments:(id)moments;
@end

@implementation PLFrequentLocation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PLMomentProcessingProtocol)centroid
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __30__PLFrequentLocation_centroid__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (!v3)
  {
    [v2 coordinate];
    v24 = v4;
    v25 = v5;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [*(a1 + 32) sortedMoments];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      v10 = 1.79769313e308;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          [v12 pl_coordinate];
          v18 = v13;
          v19 = v14;
          CLLocationCoordinate2DGetDistanceFrom();
          if (v15 < v10)
          {
            v16 = v15;
            objc_storeStrong((*(a1 + 32) + 40), v12);
            v10 = v16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:{16, v18, v19}];
      }

      while (v8);
    }

    v3 = *(*(a1 + 32) + 40);
  }

  return v3;
}

- (NSSet)momentsSet
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __32__PLFrequentLocation_momentsSet__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = [v2 sortedMoments];
    v6 = [v4 setWithArray:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v3 = *(*(a1 + 32) + 32);
  }

  return v3;
}

- (NSDateInterval)dateInterval
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __34__PLFrequentLocation_dateInterval__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (!v3)
  {
    v4 = [v2 sortedMoments];
    v5 = [v4 firstObject];
    v6 = [v4 lastObject];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = objc_alloc(MEMORY[0x1E696AB80]);
      v10 = [v5 pl_startDate];
      v11 = [v7 pl_endDate];
      v12 = [v9 initWithStartDate:v10 endDate:v11];
      v13 = *(a1 + 32);
      v14 = *(v13 + 24);
      *(v13 + 24) = v12;
    }

    v3 = *(*(a1 + 32) + 24);
  }

  return v3;
}

void __47__PLFrequentLocation__invalidateLazyProperties__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)addMomentToSortedMoments:(id)moments
{
  momentsCopy = moments;
  sortedMoments = [(PLFrequentLocation *)self sortedMoments];
  v5 = [sortedMoments count];

  if (v5)
  {
    [(PLFrequentLocation *)self coordinate];
    v7 = v6;
    v9 = v8;
    [momentsCopy pl_coordinate];
    PLCentroidForCoordinates(v7, v9, v5, v10, v11, 1.0);
  }

  else
  {
    [momentsCopy pl_coordinate];
  }

  [(PLFrequentLocation *)self setCoordinate:?];
  sortedMoments2 = [(PLFrequentLocation *)self sortedMoments];
  v13 = [sortedMoments2 count];

  v14 = 0;
  if (v13)
  {
    while (1)
    {
      sortedMoments3 = [(PLFrequentLocation *)self sortedMoments];
      v16 = [sortedMoments3 objectAtIndexedSubscript:v14];

      pl_startDate = [momentsCopy pl_startDate];
      pl_startDate2 = [v16 pl_startDate];
      v19 = [pl_startDate compare:pl_startDate2];

      if (v19 == -1)
      {
        break;
      }

      if (v13 == ++v14)
      {
        v14 = v13;
        break;
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v21 = v20 - 1;
    if (v20 - 1 < 0)
    {
      v20 = v14;
      goto LABEL_15;
    }

    sortedMoments4 = [(PLFrequentLocation *)self sortedMoments];
    v23 = [sortedMoments4 objectAtIndexedSubscript:v20 - 1];

    pl_startDate3 = [momentsCopy pl_startDate];
    pl_startDate4 = [v23 pl_startDate];
    v26 = [pl_startDate3 compare:pl_startDate4];

    if (v26)
    {
      break;
    }

    v27 = [momentsCopy hash];
    v28 = [v23 hash];

    --v20;
    if (v27 > v28)
    {
      v20 = v21 + 1;
      goto LABEL_15;
    }
  }

LABEL_15:
  sortedMoments5 = [(PLFrequentLocation *)self sortedMoments];
  [sortedMoments5 insertObject:momentsCopy atIndex:v20];

  [(PLFrequentLocation *)self _invalidateLazyProperties];
}

- (BOOL)isWithinDistance:(double)distance toCoordinate:(CLLocationCoordinate2D)coordinate
{
  v5 = CLLocationCoordinate2DIsValid(coordinate);
  if (v5)
  {
    CLLocationCoordinate2DGetDistanceFrom();
    LOBYTE(v5) = v6 <= distance;
  }

  return v5;
}

- (BOOL)isSimilarToFrequentLocation:(id)location
{
  locationCopy = location;
  [locationCopy coordinate];
  if ([(PLFrequentLocation *)self isWithinDistance:50.0 toCoordinate:v5, v6])
  {
    dateInterval = [(PLFrequentLocation *)self dateInterval];
    dateInterval2 = [locationCopy dateInterval];
    v9 = [dateInterval intersectionWithDateInterval:dateInterval2];
    [v9 duration];
    v11 = v10;

    [dateInterval duration];
    v13 = v12;
    [dateInterval2 duration];
    if (v13 >= v14)
    {
      v14 = v13;
    }

    v15 = v11 / v14 >= 0.8;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sortedMoments = [(PLFrequentLocation *)self sortedMoments];
      sortedMoments2 = [(PLFrequentLocation *)v5 sortedMoments];

      v8 = [sortedMoments isEqualToArray:sortedMoments2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = PLFrequentLocation;
  v4 = [(PLFrequentLocation *)&v11 description];
  dateInterval = [(PLFrequentLocation *)self dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [(PLFrequentLocation *)self dateInterval];
  endDate = [dateInterval2 endDate];
  v9 = [v3 stringWithFormat:@"%@ [%@ - %@] <%f, %f> %lu moments", v4, startDate, endDate, *&self->_coordinate.latitude, *&self->_coordinate.longitude, -[NSMutableArray count](self->_sortedMoments, "count")];

  return v9;
}

- (PLFrequentLocation)initWithSortedMoments:(id)moments
{
  momentsCopy = moments;
  v13.receiver = self;
  v13.super_class = PLFrequentLocation;
  v5 = [(PLFrequentLocation *)&v13 init];
  if (v5)
  {
    v6 = [momentsCopy mutableCopy];
    sortedMoments = v5->_sortedMoments;
    v5->_sortedMoments = v6;

    if ([momentsCopy count] == 1)
    {
      firstObject = [momentsCopy firstObject];
      [firstObject pl_coordinate];
      v5->_coordinate.latitude = v9;
      v5->_coordinate.longitude = v10;
    }

    else if ([momentsCopy count] < 2)
    {
      v5->_coordinate = *MEMORY[0x1E6985CC0];
    }

    else
    {
      v5->_coordinate.latitude = PLCentroidForMoments(momentsCopy);
      v5->_coordinate.longitude = v11;
    }

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

@end