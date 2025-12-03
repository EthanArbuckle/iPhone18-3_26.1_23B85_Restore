@interface PGConsolidatedAddress
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)centerCoordinates;
- (CLLocationCoordinate2D)coordinates;
- (NSString)description;
- (PGConsolidatedAddress)initWithAddressNode:(id)node addressEdgesSortedByTime:(id)time centerCoordinates:(CLLocationCoordinate2D)coordinates;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timeLocationIdentifier = self->_timeLocationIdentifier;
      timeLocationIdentifier = [(PGConsolidatedAddress *)v5 timeLocationIdentifier];
      if ([(NSString *)timeLocationIdentifier isEqual:timeLocationIdentifier])
      {
        startDate = self->_startDate;
        startDate = [(PGConsolidatedAddress *)v5 startDate];
        if ([(NSDate *)startDate isEqual:startDate])
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
  endDate = [(PGConsolidatedAddress *)self endDate];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.8f, %.8f}", *&self->_centerCoordinates.latitude, *&self->_centerCoordinates.longitude];
  v9 = [v3 stringWithFormat:@"%@ identifier %@, startDate %@, endDate %@, coordinates %@", v4, timeLocationIdentifier, startDate, endDate, v8];

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

- (PGConsolidatedAddress)initWithAddressNode:(id)node addressEdgesSortedByTime:(id)time centerCoordinates:(CLLocationCoordinate2D)coordinates
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  v41 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  timeCopy = time;
  v39.receiver = self;
  v39.super_class = PGConsolidatedAddress;
  v12 = [(PGConsolidatedAddress *)&v39 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_addressNode, node);
    objc_storeStrong(&v13->_addressEdgesSortedByTime, time);
    v13->_centerCoordinates.latitude = latitude;
    v13->_centerCoordinates.longitude = longitude;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = timeCopy;
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
    firstObject = [v14 firstObject];
    sourceNode = [firstObject sourceNode];
    v29 = MEMORY[0x277CCACA8];
    localIdentifier = [sourceNode localIdentifier];
    v31 = [v29 stringWithFormat:@"%@-%f-%f", localIdentifier, *&latitude, *&longitude];
    timeLocationIdentifier = v13->_timeLocationIdentifier;
    v13->_timeLocationIdentifier = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

@end