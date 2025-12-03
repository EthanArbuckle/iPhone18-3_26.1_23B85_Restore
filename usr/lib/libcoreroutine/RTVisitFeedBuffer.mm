@interface RTVisitFeedBuffer
- (RTVisitFeedBuffer)initWithMinWaitInterval:(double)interval;
- (id)maturedLocations;
- (void)addLocations:(id)locations;
@end

@implementation RTVisitFeedBuffer

- (id)maturedLocations
{
  if ([(NSMutableArray *)self->_locations count])
  {
    if (self->_minWaitInterval <= 0.0)
    {
      v16 = self->_locations;
      v17 = objc_opt_new();
      locations = self->_locations;
      self->_locations = v17;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      locations = [date dateByAddingTimeInterval:-self->_minWaitInterval];

      v5 = objc_alloc(MEMORY[0x277D01160]);
      lastObject = [(NSMutableArray *)self->_locations lastObject];
      [lastObject latitude];
      v8 = v7;
      lastObject2 = [(NSMutableArray *)self->_locations lastObject];
      [lastObject2 longitude];
      v11 = v10;
      lastObject3 = [(NSMutableArray *)self->_locations lastObject];
      [lastObject3 horizontalUncertainty];
      v14 = [v5 initWithLatitude:locations longitude:v8 horizontalUncertainty:v11 date:v13];

      v15 = [(NSMutableArray *)self->_locations indexOfObject:v14 inSortedRange:0 options:[(NSMutableArray *)self->_locations count] usingComparator:1280, self->_comparator];
      v16 = [(NSMutableArray *)self->_locations subarrayWithRange:0, v15];
      [(NSMutableArray *)self->_locations removeObjectsInRange:0, v15];
    }

    if ([(NSMutableArray *)v16 count])
    {
      lastObject4 = [(NSMutableArray *)v16 lastObject];
      date2 = [lastObject4 date];
      lastMaturedLocationDate = self->_lastMaturedLocationDate;
      self->_lastMaturedLocationDate = date2;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (RTVisitFeedBuffer)initWithMinWaitInterval:(double)interval
{
  v10.receiver = self;
  v10.super_class = RTVisitFeedBuffer;
  v4 = [(RTVisitFeedBuffer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_minWaitInterval = interval;
    v6 = objc_opt_new();
    locations = v5->_locations;
    v5->_locations = v6;

    comparator = v5->_comparator;
    v5->_comparator = &__block_literal_global_67;
  }

  return v5;
}

uint64_t __45__RTVisitFeedBuffer_initWithMinWaitInterval___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)addLocations:(id)locations
{
  v38 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v20 = [locationsCopy count];
      v21 = [(NSMutableArray *)self->_locations count];
      stringFromDate = [(NSDate *)self->_lastMaturedLocationDate stringFromDate];
      minWaitInterval = self->_minWaitInterval;
      *buf = 134218754;
      v31 = v20;
      v32 = 2048;
      v33 = v21;
      v34 = 2112;
      v35 = stringFromDate;
      v36 = 2048;
      v37 = minWaitInterval;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "adding %lu locations to feedbuffer. numLocations, %lu, _lastMaturedLocationDate, %@, _minWaitInterval, %.2f", buf, 0x2Au);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = locationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    v11 = MEMORY[0x277D86220];
    *&v8 = 138740483;
    v24 = v8;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        if (self->_lastMaturedLocationDate && ([*(*(&v25 + 1) + 8 * v12) date], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isOnOrBefore:", self->_lastMaturedLocationDate), v14, v15))
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              stringFromDate2 = [(NSDate *)self->_lastMaturedLocationDate stringFromDate];
              date = [v13 date];
              [date timeIntervalSinceDate:self->_lastMaturedLocationDate];
              *buf = v24;
              v31 = v13;
              v32 = 2112;
              v33 = stringFromDate2;
              v34 = 2048;
              v35 = v19;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "discarding location, %{sensitive}@, predates last matured location with date, %@, by interval, %.2f", buf, 0x20u);
            }
          }
        }

        else
        {
          [(NSMutableArray *)self->_locations insertObject:v13 atIndex:[(NSMutableArray *)self->_locations indexOfObject:v13 inSortedRange:0 options:[(NSMutableArray *)self->_locations count:v24] usingComparator:1280, self->_comparator]];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }
}

@end