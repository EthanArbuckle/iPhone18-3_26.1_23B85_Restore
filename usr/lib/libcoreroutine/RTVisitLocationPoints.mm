@interface RTVisitLocationPoints
- (RTLocation)centroid;
- (RTVisitLocationPoints)initWithLocations:(id)locations;
- (double)duration;
- (id)description;
- (id)firstDate;
- (id)lastDate;
- (void)enumerateLowSpeedSegementsUsingBlock:(id)block block:(id)a4;
@end

@implementation RTVisitLocationPoints

- (id)lastDate
{
  lastObject = [(NSArray *)self->_locations lastObject];
  date = [lastObject date];

  return date;
}

- (RTVisitLocationPoints)initWithLocations:(id)locations
{
  v16 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  if (![locationsCopy count])
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTVisitLocationPoints initWithLocations:]";
      v14 = 1024;
      v15 = 29;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count (in %s:%d)", buf, 0x12u);
    }
  }

  if ([locationsCopy count])
  {
    v11.receiver = self;
    v11.super_class = RTVisitLocationPoints;
    v6 = [(RTVisitLocationPoints *)&v11 init];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:locationsCopy copyItems:0];
      locations = v6->_locations;
      v6->_locations = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSArray *)self->_locations count];
  firstObject = [(NSArray *)self->_locations firstObject];
  lastObject = [(NSArray *)self->_locations lastObject];
  v7 = [v3 stringWithFormat:@"n_points, %lu, first location, %@, last location, %@", v4, firstObject, lastObject];

  return v7;
}

- (RTLocation)centroid
{
  v26 = *MEMORY[0x277D85DE8];
  centroid = self->_centroid;
  if (!centroid)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = self->_locations;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          [v11 latitude];
          v9 = v9 + v12;
          [v11 longitude];
          v8 = v8 + v13;
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    v14 = v9 / [(NSArray *)self->_locations count];
    v15 = v8 / [(NSArray *)self->_locations count];
    v16 = objc_alloc(MEMORY[0x277D01160]);
    firstDate = [(RTVisitLocationPoints *)self firstDate];
    v18 = [v16 initWithLatitude:firstDate longitude:v14 horizontalUncertainty:v15 date:0.0];
    v19 = self->_centroid;
    self->_centroid = v18;

    centroid = self->_centroid;
  }

  return centroid;
}

- (void)enumerateLowSpeedSegementsUsingBlock:(id)block block:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = a4;
  v8 = v7;
  if (blockCopy)
  {
    if (v7)
    {
      v38 = 0;
      v9 = objc_opt_new();
      firstObject = [(NSArray *)self->_locations firstObject];
      v32 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = self->_locations;
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      v29 = v8;
      if (v11)
      {
        v13 = v11;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v31 = *v35;
        *&v12 = 138412290;
        v28 = v12;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            v18 = firstObject;
            if (*v35 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            [v19 speed];
            v21 = v20;
            [blockCopy minSpeedToFilter];
            if (v21 >= v22)
            {
              ++v15;
            }

            else
            {
              v15 = 0;
            }

            v33 = 0;
            [v32 distanceFromLocation:v18 toLocation:v19 error:&v33];
            v24 = v23;
            v14 = v33;
            if (v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v25 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = v28;
                v41 = v14;
                _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
              }
            }

            if ((v15 >= [blockCopy movingWindowSizeForSpeed] || v24 >= objc_msgSend(blockCopy, "maxDistanceBetweenAdjacentPoints")) && -[NSObject count](v9, "count"))
            {
              v29[2](v29, v9, v16, &v38);
              if (v38)
              {
                firstObject = v18;
                goto LABEL_31;
              }

              v26 = objc_opt_new();

              v9 = v26;
            }

            [v9 addObject:v19];
            firstObject = v19;

            ++v16;
          }

          v13 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

LABEL_31:

      v8 = v29;
      if ([v9 count])
      {
        v29[2](v29, v9, v16, &v38);
      }

      goto LABEL_34;
    }

LABEL_27:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[RTVisitLocationPoints enumerateLowSpeedSegementsUsingBlock:block:]";
      v42 = 1024;
      v43 = 74;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: block (in %s:%d)", buf, 0x12u);
    }

LABEL_34:

    goto LABEL_35;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v41 = "[RTVisitLocationPoints enumerateLowSpeedSegementsUsingBlock:block:]";
    v42 = 1024;
    v43 = 73;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hyperParameter (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_35:
}

- (double)duration
{
  lastDate = [(RTVisitLocationPoints *)self lastDate];
  firstDate = [(RTVisitLocationPoints *)self firstDate];
  [lastDate timeIntervalSinceDate:firstDate];
  v6 = v5;

  return v6;
}

- (id)firstDate
{
  firstObject = [(NSArray *)self->_locations firstObject];
  date = [firstObject date];

  return date;
}

@end