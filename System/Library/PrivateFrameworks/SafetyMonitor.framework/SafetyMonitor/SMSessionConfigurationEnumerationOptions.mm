@interface SMSessionConfigurationEnumerationOptions
- (SMSessionConfigurationEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortBySessionStartDate:(BOOL)date ascending:(BOOL)ascending sessionTypes:(id)types timeInADayInterval:(id)interval pickOneConfigInTimeInADayInterval:(BOOL)dayInterval dateInterval:(id)self0 startBoundingBoxLocation:(id)self1 destinationBoundingBoxLocation:(id)self2 boundingBoxRadius:(id)self3 sessionIdentifier:(id)self4;
- (SMSessionConfigurationEnumerationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionConfigurationEnumerationOptions

- (SMSessionConfigurationEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortBySessionStartDate:(BOOL)date ascending:(BOOL)ascending sessionTypes:(id)types timeInADayInterval:(id)interval pickOneConfigInTimeInADayInterval:(BOOL)dayInterval dateInterval:(id)self0 startBoundingBoxLocation:(id)self1 destinationBoundingBoxLocation:(id)self2 boundingBoxRadius:(id)self3 sessionIdentifier:(id)self4
{
  v53 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  intervalCopy = interval;
  dateIntervalCopy = dateInterval;
  locationCopy = location;
  boxLocationCopy = boxLocation;
  radiusCopy = radius;
  v21 = typesCopy;
  v22 = dateIntervalCopy;
  v23 = locationCopy;
  identifierCopy = identifier;
  v51.receiver = self;
  v51.super_class = SMSessionConfigurationEnumerationOptions;
  v24 = [(SMSessionConfigurationEnumerationOptions *)&v51 init];
  v25 = v24;
  if (!v24)
  {
    goto LABEL_16;
  }

  v38 = locationCopy;
  v24->_batchSize = size;
  v24->_fetchLimit = limit;
  v24->_sortBySessionStartDate = date;
  v24->_ascending = ascending;
  objc_storeStrong(&v24->_sessionTypes, types);
  objc_storeStrong(&v25->_timeInADayInterval, interval);
  v25->_pickOneConfigInTimeInADayInterval = dayInterval;
  if (dayInterval && !v25->_timeInADayInterval)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _timeInADayInterval", buf, 2u);
    }

    v32 = 0;
    v23 = v38;
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = v21;
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v52 count:16];
    v23 = locationCopy;
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          unsignedIntValue = [*(*(&v46 + 1) + 8 * i) unsignedIntValue];
          if (intervalCopy && unsignedIntValue != 2)
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_26455D000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: timeInADayInterval == nil", buf, 2u);
            }

            goto LABEL_28;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    objc_storeStrong(&v25->_dateInterval, dateInterval);
    objc_storeStrong(&v25->_startBoundingBoxLocation, location);
    objc_storeStrong(&v25->_destinationBoundingBoxLocation, boxLocation);
    objc_storeStrong(&v25->_boundingBoxRadius, radius);
    if (v25->_startBoundingBoxLocation)
    {
      v23 = v38;
      if (radiusCopy)
      {
LABEL_15:
        objc_storeStrong(&v25->_sessionIdentifier, identifier);
LABEL_16:
        v32 = v25;
        goto LABEL_29;
      }
    }

    else
    {
      v23 = v38;
      if (radiusCopy || !v25->_destinationBoundingBoxLocation)
      {
        goto LABEL_15;
      }
    }

    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: boundingBoxRadius != nil", buf, 2u);
    }

LABEL_28:
    v32 = 0;
  }

LABEL_29:

  v36 = *MEMORY[0x277D85DE8];
  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  boundingBoxRadius = self->_boundingBoxRadius;
  LOBYTE(v7) = self->_pickOneConfigInTimeInADayInterval;
  return [v4 initWithBatchSize:self->_batchSize fetchLimit:self->_fetchLimit sortBySessionStartDate:self->_sortBySessionStartDate ascending:self->_ascending sessionTypes:self->_sessionTypes timeInADayInterval:self->_timeInADayInterval pickOneConfigInTimeInADayInterval:v7 dateInterval:self->_dateInterval startBoundingBoxLocation:self->_startBoundingBoxLocation destinationBoundingBoxLocation:self->_destinationBoundingBoxLocation boundingBoxRadius:boundingBoxRadius sessionIdentifier:self->_sessionIdentifier];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [coderCopy encodeBool:self->_sortBySessionStartDate forKey:@"sortBySessionStartDate"];
  [coderCopy encodeBool:self->_ascending forKey:@"ascending"];
  [coderCopy encodeObject:self->_sessionTypes forKey:@"sessionTypes"];
  [coderCopy encodeObject:self->_timeInADayInterval forKey:@"timeInADayInterval"];
  [coderCopy encodeBool:self->_pickOneConfigInTimeInADayInterval forKey:@"pickOneConfigInTimeInADayInterval"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_startBoundingBoxLocation forKey:@"startBoundingBoxLocation"];
  [coderCopy encodeObject:self->_destinationBoundingBoxLocation forKey:@"destinationBoundingBoxLocation"];
  [coderCopy encodeObject:self->_boundingBoxRadius forKey:@"boundingBoxRadius"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
}

- (SMSessionConfigurationEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v17 = [coderCopy decodeIntegerForKey:@"fetchLimit"];
  v16 = [coderCopy decodeBoolForKey:@"sortBySessionStartDate"];
  v4 = [coderCopy decodeBoolForKey:@"ascending"];
  v5 = [coderCopy decodeObjectForKey:@"sessionTypes"];
  v6 = [coderCopy decodeObjectForKey:@"timeInADayInterval"];
  v7 = [coderCopy decodeBoolForKey:@"pickOneConfigInTimeInADayInterval"];
  v8 = [coderCopy decodeObjectForKey:@"dateInterval"];
  v9 = [coderCopy decodeObjectForKey:@"startBoundingBoxLocation"];
  v10 = [coderCopy decodeObjectForKey:@"destinationBoundingBoxLocation"];
  v11 = [coderCopy decodeObjectForKey:@"boundingBoxRadius"];
  v12 = [coderCopy decodeObjectForKey:@"sessionIdentifier"];

  LOBYTE(v15) = v7;
  v13 = [(SMSessionConfigurationEnumerationOptions *)self initWithBatchSize:v18 fetchLimit:v17 sortBySessionStartDate:v16 ascending:v4 sessionTypes:v5 timeInADayInterval:v6 pickOneConfigInTimeInADayInterval:v15 dateInterval:v8 startBoundingBoxLocation:v9 destinationBoundingBoxLocation:v10 boundingBoxRadius:v11 sessionIdentifier:v12];

  return v13;
}

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  batchSize = [(SMSessionConfigurationEnumerationOptions *)self batchSize];
  fetchLimit = [(SMSessionConfigurationEnumerationOptions *)self fetchLimit];
  if ([(SMSessionConfigurationEnumerationOptions *)self sortBySessionStartDate])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v18 = v3;
  if ([(SMSessionConfigurationEnumerationOptions *)self ascending])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  sessionTypes = [(SMSessionConfigurationEnumerationOptions *)self sessionTypes];
  v6 = [sessionTypes count];
  timeInADayInterval = [(SMSessionConfigurationEnumerationOptions *)self timeInADayInterval];
  if ([(SMSessionConfigurationEnumerationOptions *)self pickOneConfigInTimeInADayInterval])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  dateInterval = [(SMSessionConfigurationEnumerationOptions *)self dateInterval];
  startBoundingBoxLocation = [(SMSessionConfigurationEnumerationOptions *)self startBoundingBoxLocation];
  destinationBoundingBoxLocation = [(SMSessionConfigurationEnumerationOptions *)self destinationBoundingBoxLocation];
  boundingBoxRadius = [(SMSessionConfigurationEnumerationOptions *)self boundingBoxRadius];
  [boundingBoxRadius doubleValue];
  v14 = v13;
  sessionIdentifier = [(SMSessionConfigurationEnumerationOptions *)self sessionIdentifier];
  v16 = [v21 stringWithFormat:@"batchSize, %lu, fetchLimit, %lu, sortBySessionStartDate, %@, ascending, %@, session types count, %lu, timeInADayInterval, %@, pickOneConfigInTimeInADayInterval, %@, dateInterval, %@, startBoundingBoxLocation, %@, destinationBoundingBoxLocation, %@, boundingBoxRadius, %.3f, sessionIdentifier, %@", batchSize, fetchLimit, v18, v4, v6, timeInADayInterval, v8, dateInterval, startBoundingBoxLocation, destinationBoundingBoxLocation, v14, sessionIdentifier];

  return v16;
}

@end