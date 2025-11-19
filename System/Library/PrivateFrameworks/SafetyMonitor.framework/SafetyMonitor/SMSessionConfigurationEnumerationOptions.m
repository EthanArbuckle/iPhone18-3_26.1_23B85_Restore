@interface SMSessionConfigurationEnumerationOptions
- (SMSessionConfigurationEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortBySessionStartDate:(BOOL)a5 ascending:(BOOL)a6 sessionTypes:(id)a7 timeInADayInterval:(id)a8 pickOneConfigInTimeInADayInterval:(BOOL)a9 dateInterval:(id)a10 startBoundingBoxLocation:(id)a11 destinationBoundingBoxLocation:(id)a12 boundingBoxRadius:(id)a13 sessionIdentifier:(id)a14;
- (SMSessionConfigurationEnumerationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionConfigurationEnumerationOptions

- (SMSessionConfigurationEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortBySessionStartDate:(BOOL)a5 ascending:(BOOL)a6 sessionTypes:(id)a7 timeInADayInterval:(id)a8 pickOneConfigInTimeInADayInterval:(BOOL)a9 dateInterval:(id)a10 startBoundingBoxLocation:(id)a11 destinationBoundingBoxLocation:(id)a12 boundingBoxRadius:(id)a13 sessionIdentifier:(id)a14
{
  v53 = *MEMORY[0x277D85DE8];
  v17 = a7;
  v18 = a8;
  v19 = a10;
  v20 = a11;
  v44 = a12;
  v45 = a13;
  v21 = v17;
  v22 = v19;
  v23 = v20;
  v43 = a14;
  v51.receiver = self;
  v51.super_class = SMSessionConfigurationEnumerationOptions;
  v24 = [(SMSessionConfigurationEnumerationOptions *)&v51 init];
  v25 = v24;
  if (!v24)
  {
    goto LABEL_16;
  }

  v38 = v20;
  v24->_batchSize = a3;
  v24->_fetchLimit = a4;
  v24->_sortBySessionStartDate = a5;
  v24->_ascending = a6;
  objc_storeStrong(&v24->_sessionTypes, a7);
  objc_storeStrong(&v25->_timeInADayInterval, a8);
  v25->_pickOneConfigInTimeInADayInterval = a9;
  if (a9 && !v25->_timeInADayInterval)
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
    v23 = v20;
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

          v31 = [*(*(&v46 + 1) + 8 * i) unsignedIntValue];
          if (v18 && v31 != 2)
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

    objc_storeStrong(&v25->_dateInterval, a10);
    objc_storeStrong(&v25->_startBoundingBoxLocation, a11);
    objc_storeStrong(&v25->_destinationBoundingBoxLocation, a12);
    objc_storeStrong(&v25->_boundingBoxRadius, a13);
    if (v25->_startBoundingBoxLocation)
    {
      v23 = v38;
      if (v45)
      {
LABEL_15:
        objc_storeStrong(&v25->_sessionIdentifier, a14);
LABEL_16:
        v32 = v25;
        goto LABEL_29;
      }
    }

    else
    {
      v23 = v38;
      if (v45 || !v25->_destinationBoundingBoxLocation)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  boundingBoxRadius = self->_boundingBoxRadius;
  LOBYTE(v7) = self->_pickOneConfigInTimeInADayInterval;
  return [v4 initWithBatchSize:self->_batchSize fetchLimit:self->_fetchLimit sortBySessionStartDate:self->_sortBySessionStartDate ascending:self->_ascending sessionTypes:self->_sessionTypes timeInADayInterval:self->_timeInADayInterval pickOneConfigInTimeInADayInterval:v7 dateInterval:self->_dateInterval startBoundingBoxLocation:self->_startBoundingBoxLocation destinationBoundingBoxLocation:self->_destinationBoundingBoxLocation boundingBoxRadius:boundingBoxRadius sessionIdentifier:self->_sessionIdentifier];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [v5 encodeBool:self->_sortBySessionStartDate forKey:@"sortBySessionStartDate"];
  [v5 encodeBool:self->_ascending forKey:@"ascending"];
  [v5 encodeObject:self->_sessionTypes forKey:@"sessionTypes"];
  [v5 encodeObject:self->_timeInADayInterval forKey:@"timeInADayInterval"];
  [v5 encodeBool:self->_pickOneConfigInTimeInADayInterval forKey:@"pickOneConfigInTimeInADayInterval"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_startBoundingBoxLocation forKey:@"startBoundingBoxLocation"];
  [v5 encodeObject:self->_destinationBoundingBoxLocation forKey:@"destinationBoundingBoxLocation"];
  [v5 encodeObject:self->_boundingBoxRadius forKey:@"boundingBoxRadius"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
}

- (SMSessionConfigurationEnumerationOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeIntegerForKey:@"batchSize"];
  v17 = [v3 decodeIntegerForKey:@"fetchLimit"];
  v16 = [v3 decodeBoolForKey:@"sortBySessionStartDate"];
  v4 = [v3 decodeBoolForKey:@"ascending"];
  v5 = [v3 decodeObjectForKey:@"sessionTypes"];
  v6 = [v3 decodeObjectForKey:@"timeInADayInterval"];
  v7 = [v3 decodeBoolForKey:@"pickOneConfigInTimeInADayInterval"];
  v8 = [v3 decodeObjectForKey:@"dateInterval"];
  v9 = [v3 decodeObjectForKey:@"startBoundingBoxLocation"];
  v10 = [v3 decodeObjectForKey:@"destinationBoundingBoxLocation"];
  v11 = [v3 decodeObjectForKey:@"boundingBoxRadius"];
  v12 = [v3 decodeObjectForKey:@"sessionIdentifier"];

  LOBYTE(v15) = v7;
  v13 = [(SMSessionConfigurationEnumerationOptions *)self initWithBatchSize:v18 fetchLimit:v17 sortBySessionStartDate:v16 ascending:v4 sessionTypes:v5 timeInADayInterval:v6 pickOneConfigInTimeInADayInterval:v15 dateInterval:v8 startBoundingBoxLocation:v9 destinationBoundingBoxLocation:v10 boundingBoxRadius:v11 sessionIdentifier:v12];

  return v13;
}

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  v20 = [(SMSessionConfigurationEnumerationOptions *)self batchSize];
  v19 = [(SMSessionConfigurationEnumerationOptions *)self fetchLimit];
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

  v5 = [(SMSessionConfigurationEnumerationOptions *)self sessionTypes];
  v6 = [v5 count];
  v7 = [(SMSessionConfigurationEnumerationOptions *)self timeInADayInterval];
  if ([(SMSessionConfigurationEnumerationOptions *)self pickOneConfigInTimeInADayInterval])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(SMSessionConfigurationEnumerationOptions *)self dateInterval];
  v10 = [(SMSessionConfigurationEnumerationOptions *)self startBoundingBoxLocation];
  v11 = [(SMSessionConfigurationEnumerationOptions *)self destinationBoundingBoxLocation];
  v12 = [(SMSessionConfigurationEnumerationOptions *)self boundingBoxRadius];
  [v12 doubleValue];
  v14 = v13;
  v15 = [(SMSessionConfigurationEnumerationOptions *)self sessionIdentifier];
  v16 = [v21 stringWithFormat:@"batchSize, %lu, fetchLimit, %lu, sortBySessionStartDate, %@, ascending, %@, session types count, %lu, timeInADayInterval, %@, pickOneConfigInTimeInADayInterval, %@, dateInterval, %@, startBoundingBoxLocation, %@, destinationBoundingBoxLocation, %@, boundingBoxRadius, %.3f, sessionIdentifier, %@", v20, v19, v18, v4, v6, v7, v8, v9, v10, v11, v14, v15];

  return v16;
}

@end