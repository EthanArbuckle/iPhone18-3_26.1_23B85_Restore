@interface PGPublicEventMatchingOptions
- (CLLocationCoordinate2D)coordinates;
- (NSArray)temporalClusterEvents;
- (NSDateInterval)actualAttendanceDateInterval;
- (NSDateInterval)expandedAttendanceDateInterval;
- (PGMeaningfulEventMatchingCriteria)matchingCriteria;
- (PGPublicEventMatchingOptions)initWithTimeLocationTuple:(id)tuple momentNode:(id)node meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager;
- (id)_readTemporalClusterEvents;
- (void)_createAttendanceDateIntervals;
@end

@implementation PGPublicEventMatchingOptions

- (CLLocationCoordinate2D)coordinates
{
  latitude = self->_coordinates.latitude;
  longitude = self->_coordinates.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)_readTemporalClusterEvents
{
  v18 = *MEMORY[0x277D85DE8];
  universalStartDate = [(PGGraphMomentNode *)self->_momentNode universalStartDate];
  universalEndDate = [(PGGraphMomentNode *)self->_momentNode universalEndDate];
  v5 = universalEndDate;
  if (universalStartDate)
  {
    v6 = universalEndDate == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D277D0]);
    v15 = 0;
    v9 = [v8 eventsBetweenStartDate:universalStartDate endDate:v5 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v9)
    {
      array2 = v9;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PublicEvents] Error reading temporal cluster events - %{pubilc}@", buf, 0xCu);
      }

      array2 = [MEMORY[0x277CBEA60] array];
    }

    array = array2;
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_createAttendanceDateIntervals
{
  v38 = *MEMORY[0x277D85DE8];
  startDate = [(CLSTimeLocationTuple *)self->_timeLocationTuple startDate];
  endDate = [(CLSTimeLocationTuple *)self->_timeLocationTuple endDate];
  v5 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:endDate];
  v29 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:self->_coordinates.latitude longitude:self->_coordinates.longitude];
  v30 = v5;
  v6 = [CLSServiceManager fetchLocationOfInterestVisitsAtLocation:"fetchLocationOfInterestVisitsAtLocation:inDateInterval:" inDateInterval:?];
  v28 = [v6 count];
  v7 = startDate;
  v8 = endDate;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v31 = v8;
  v32 = v7;
  v11 = v7;
  if (v10)
  {
    v12 = v10;
    v13 = *v34;
    v11 = v7;
    do
    {
      v14 = 0;
      v15 = v8;
      v16 = v11;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v9);
        }

        visitInterval = [*(*(&v33 + 1) + 8 * v14) visitInterval];
        startDate2 = [visitInterval startDate];
        v11 = [v16 earlierDate:startDate2];

        endDate2 = [visitInterval endDate];
        v8 = [v15 laterDate:endDate2];

        ++v14;
        v15 = v8;
        v16 = v11;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 endDate:v8];
  if (!v28)
  {
    expandedStartDate = [(CLSTimeLocationTuple *)self->_timeLocationTuple expandedStartDate];

    expandedEndDate = [(CLSTimeLocationTuple *)self->_timeLocationTuple expandedEndDate];

    v8 = expandedEndDate;
    v11 = expandedStartDate;
  }

  actualAttendanceDateInterval = self->_actualAttendanceDateInterval;
  self->_actualAttendanceDateInterval = v20;
  v24 = v20;

  v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 endDate:v8];
  expandedAttendanceDateInterval = self->_expandedAttendanceDateInterval;
  self->_expandedAttendanceDateInterval = v25;

  v27 = *MEMORY[0x277D85DE8];
}

- (NSArray)temporalClusterEvents
{
  temporalClusterEvents = self->_temporalClusterEvents;
  if (!temporalClusterEvents)
  {
    _readTemporalClusterEvents = [(PGPublicEventMatchingOptions *)self _readTemporalClusterEvents];
    v5 = self->_temporalClusterEvents;
    self->_temporalClusterEvents = _readTemporalClusterEvents;

    temporalClusterEvents = self->_temporalClusterEvents;
  }

  return temporalClusterEvents;
}

- (PGMeaningfulEventMatchingCriteria)matchingCriteria
{
  matchingCriteria = self->_matchingCriteria;
  if (!matchingCriteria)
  {
    v4 = [[PGMeaningfulEventMatchingCriteria alloc] initWithMoment:self->_momentNode cache:self->_meaningfulEventProcessorCache serviceManager:self->_serviceManager];
    v5 = self->_matchingCriteria;
    self->_matchingCriteria = v4;

    matchingCriteria = self->_matchingCriteria;
  }

  return matchingCriteria;
}

- (NSDateInterval)expandedAttendanceDateInterval
{
  expandedAttendanceDateInterval = self->_expandedAttendanceDateInterval;
  if (!expandedAttendanceDateInterval)
  {
    [(PGPublicEventMatchingOptions *)self _createAttendanceDateIntervals];
    expandedAttendanceDateInterval = self->_expandedAttendanceDateInterval;
  }

  return expandedAttendanceDateInterval;
}

- (NSDateInterval)actualAttendanceDateInterval
{
  actualAttendanceDateInterval = self->_actualAttendanceDateInterval;
  if (!actualAttendanceDateInterval)
  {
    [(PGPublicEventMatchingOptions *)self _createAttendanceDateIntervals];
    actualAttendanceDateInterval = self->_actualAttendanceDateInterval;
  }

  return actualAttendanceDateInterval;
}

- (PGPublicEventMatchingOptions)initWithTimeLocationTuple:(id)tuple momentNode:(id)node meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager
{
  tupleCopy = tuple;
  nodeCopy = node;
  cacheCopy = cache;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = PGPublicEventMatchingOptions;
  v15 = [(PGPublicEventMatchingOptions *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_timeLocationTuple, tuple);
    objc_storeStrong(&v16->_momentNode, node);
    [tupleCopy coordinates];
    v16->_coordinates.latitude = v17;
    v16->_coordinates.longitude = v18;
    v16->_meaningfulEventProcessorCache = cacheCopy;
    objc_storeStrong(&v16->_serviceManager, manager);
  }

  return v16;
}

@end