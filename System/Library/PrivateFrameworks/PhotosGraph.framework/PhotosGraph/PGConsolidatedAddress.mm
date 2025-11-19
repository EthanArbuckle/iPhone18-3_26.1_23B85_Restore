@interface PGConsolidatedAddress
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)centerCoordinates;
- (CLLocationCoordinate2D)coordinates;
- (NSString)description;
- (PGConsolidatedAddress)initWithAddressNode:(id)a3 addressEdgesSortedByTime:(id)a4 centerCoordinates:(CLLocationCoordinate2D)a5;
@end

@implementation PGConsolidatedAddress

- (CLLocationCoordinate2D)centerCoordinates
{
  latitude = self->_centerCoordinates.latitude;
  longitude = self->_centerCoordinates.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      timeLocationIdentifier = self->_timeLocationIdentifier;
      v7 = [(PGConsolidatedAddress *)v5 timeLocationIdentifier];
      if ([(NSString *)timeLocationIdentifier isEqual:v7])
      {
        startDate = self->_startDate;
        v9 = [(PGConsolidatedAddress *)v5 startDate];
        if ([(NSDate *)startDate isEqual:v9])
        {
          duration = self->_duration;
          [(PGConsolidatedAddress *)v5 duration];
          v12 = duration == v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGConsolidatedAddress;
  v4 = [(PGConsolidatedAddress *)&v11 description];
  timeLocationIdentifier = self->_timeLocationIdentifier;
  startDate = self->_startDate;
  v7 = [(PGConsolidatedAddress *)self endDate];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.8f, %.8f}", *&self->_centerCoordinates.latitude, *&self->_centerCoordinates.longitude];
  v9 = [v3 stringWithFormat:@"%@ identifier %@, startDate %@, endDate %@, coordinates %@", v4, timeLocationIdentifier, startDate, v7, v8];

  return v9;
}

- (CLLocationCoordinate2D)coordinates
{
  latitude = self->_centerCoordinates.latitude;
  longitude = self->_centerCoordinates.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PGConsolidatedAddress)initWithAddressNode:(id)a3 addressEdgesSortedByTime:(id)a4 centerCoordinates:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v39.receiver = self;
  v39.super_class = PGConsolidatedAddress;
  v12 = [(PGConsolidatedAddress *)&v39 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_addressNode, a3);
    objc_storeStrong(&v13->_addressEdgesSortedByTime, a4);
    v13->_centerCoordinates.latitude = latitude;
    v13->_centerCoordinates.longitude = longitude;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      v18 = 1.79769313e308;
      v19 = -1.79769313e308;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          [v21 timestampUTCStart];
          v23 = v22;
          [v21 timestampUTCEnd];
          if (v18 > v23)
          {
            v18 = v23;
          }

          if (v19 < v24)
          {
            v19 = v24;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 1.79769313e308;
      v19 = -1.79769313e308;
    }

    v25 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v18];
    startDate = v13->_startDate;
    v13->_startDate = v25;

    v13->_duration = v19 - v18;
    v27 = [v14 firstObject];
    v28 = [v27 sourceNode];
    v29 = MEMORY[0x277CCACA8];
    v30 = [v28 localIdentifier];
    v31 = [v29 stringWithFormat:@"%@-%f-%f", v30, *&latitude, *&longitude];
    timeLocationIdentifier = v13->_timeLocationIdentifier;
    v13->_timeLocationIdentifier = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

@end