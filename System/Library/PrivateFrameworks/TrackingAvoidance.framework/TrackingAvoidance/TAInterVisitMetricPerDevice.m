@interface TAInterVisitMetricPerDevice
- (BOOL)isEqual:(id)a3;
- (TAInterVisitMetricPerDevice)init;
- (TAInterVisitMetricPerDevice)initWithCoder:(id)a3;
- (TAInterVisitMetricPerDevice)initWithSettings:(id)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)accumulate:(id)a3;
- (void)accumulateDurationPerMotionState:(id)a3;
- (void)accumulateLatestAdvertisement:(id)a3;
- (void)accumulateSampledObservedLocations:(id)a3;
- (void)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAInterVisitMetricPerDevice

- (TAInterVisitMetricPerDevice)init
{
  v3 = objc_alloc_init(TAInterVisitMetricPerDeviceSettings);
  v4 = [(TAInterVisitMetricPerDevice *)self initWithSettings:v3];

  return v4;
}

- (TAInterVisitMetricPerDevice)initWithSettings:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TAInterVisitMetricPerDevice;
  v6 = [(TAInterVisitMetricPerDevice *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_numOfAssociatedLocs = 0;
    v6->_duration = 0.0;
    v6->_distance = 0.0;
    v8 = [MEMORY[0x277CBEA60] array];
    sampledObservedLocations = v7->_sampledObservedLocations;
    v7->_sampledObservedLocations = v8;

    latestAdvertisement = v7->_latestAdvertisement;
    v7->_latestAdvertisement = 0;

    objc_storeStrong(&v7->_settings, a3);
    v7->_segmentSpeedExceedsLimit = 0;
    v11 = [MEMORY[0x277CBEAC0] dictionary];
    durationPerMotionState = v7->_durationPerMotionState;
    v7->_durationPerMotionState = v11;
  }

  return v7;
}

- (void)accumulate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    -[TAInterVisitMetricPerDevice accumulateNumOfAssociatedLocs:](self, "accumulateNumOfAssociatedLocs:", [v4 numOfAssociatedLocs]);
    [v9 duration];
    [(TAInterVisitMetricPerDevice *)self accumulateDuration:?];
    [v9 distance];
    [(TAInterVisitMetricPerDevice *)self accumulateDistance:?];
    v5 = [v9 sampledObservedLocations];
    [(TAInterVisitMetricPerDevice *)self accumulateSampledObservedLocations:v5];

    v6 = [v9 latestAdvertisement];
    [(TAInterVisitMetricPerDevice *)self accumulateLatestAdvertisement:v6];

    if ([(TAInterVisitMetricPerDevice *)self segmentSpeedExceedsLimit])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v9 segmentSpeedExceedsLimit];
    }

    [(TAInterVisitMetricPerDevice *)self setSegmentSpeedExceedsLimit:v7];
    v8 = [v9 durationPerMotionState];
    [(TAInterVisitMetricPerDevice *)self accumulateDurationPerMotionState:v8];

    v4 = v9;
  }
}

- (void)accumulateSampledObservedLocations:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sampledObservedLocations = self->_sampledObservedLocations;
  if (!sampledObservedLocations)
  {
    v6 = [MEMORY[0x277CBEA60] array];
    v7 = self->_sampledObservedLocations;
    self->_sampledObservedLocations = v6;

    sampledObservedLocations = self->_sampledObservedLocations;
  }

  v27 = v4;
  v26 = [(NSArray *)sampledObservedLocations arrayByAddingObjectsFromArray:v4];
  v8 = [v26 sortedArrayUsingComparator:&__block_literal_global_0];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      v16 = [(NSArray *)v9 count];
      if (v16 >= [(TAInterVisitMetricPerDeviceSettings *)self->_settings sampledObservationLocationsBufferSize])
      {
        break;
      }

      if ([(NSArray *)v9 count])
      {
        v17 = [(NSArray *)v9 lastObject];
        v18 = [v15 getDate];
        v19 = [v17 getDate];
        [v18 timeIntervalSinceDate:v19];
        v21 = v20;
        [(TAInterVisitMetricPerDeviceSettings *)self->_settings sampledObservationLocationsInterval];
        v23 = v22;

        if (v21 >= v23)
        {
          [(NSArray *)v9 addObject:v15];
        }
      }

      else
      {
        [(NSArray *)v9 addObject:v15];
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v24 = self->_sampledObservedLocations;
  self->_sampledObservedLocations = v9;

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __66__TAInterVisitMetricPerDevice_accumulateSampledObservedLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 getDate];
  v6 = [v4 getDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)accumulateLatestAdvertisement:(id)a3
{
  v7 = a3;
  if (v7)
  {
    latestAdvertisement = self->_latestAdvertisement;
    p_latestAdvertisement = &self->_latestAdvertisement;
    if (!-[TASPAdvertisement isPosh](latestAdvertisement, "isPosh") || [v7 isPosh])
    {
      objc_storeStrong(p_latestAdvertisement, a3);
    }
  }
}

- (void)accumulateDurationPerMotionState:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = self;
  v5 = [(NSDictionary *)self->_durationPerMotionState mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [(NSDictionary *)v5 objectForKey:v11];

        if (v12)
        {
          v13 = MEMORY[0x277CCABB0];
          v14 = [v6 objectForKeyedSubscript:v11];
          [v14 doubleValue];
          v16 = v15;
          v17 = [(NSDictionary *)v5 objectForKeyedSubscript:v11];
          [v17 doubleValue];
          v19 = [v13 numberWithDouble:v16 + v18];
          [(NSDictionary *)v5 setObject:v19 forKeyedSubscript:v11];
        }

        else
        {
          v14 = [v6 objectForKeyedSubscript:v11];
          [(NSDictionary *)v5 setObject:v14 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  durationPerMotionState = v22->_durationPerMotionState;
  v22->_durationPerMotionState = v5;

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TAInterVisitMetricPerDevice *)self numOfAssociatedLocs];
      if (v7 != [(TAInterVisitMetricPerDevice *)v6 numOfAssociatedLocs]|| ([(TAInterVisitMetricPerDevice *)self duration], v9 = v8, [(TAInterVisitMetricPerDevice *)v6 duration], v9 != v10) || ([(TAInterVisitMetricPerDevice *)self distance], v12 = v11, [(TAInterVisitMetricPerDevice *)v6 distance], v12 != v13))
      {
        v17 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v14 = [(TAInterVisitMetricPerDevice *)self sampledObservedLocations];
      v15 = [(TAInterVisitMetricPerDevice *)v6 sampledObservedLocations];
      if (v14 != v15)
      {
        v16 = [(TAInterVisitMetricPerDevice *)self sampledObservedLocations];
        [(TAInterVisitMetricPerDevice *)v6 sampledObservedLocations];
        v40 = v39 = v16;
        if (![v16 isEqual:?])
        {
          v17 = 0;
          goto LABEL_30;
        }
      }

      v19 = [(TAInterVisitMetricPerDevice *)self latestAdvertisement];
      v20 = [(TAInterVisitMetricPerDevice *)v6 latestAdvertisement];
      if (v19 != v20)
      {
        v3 = [(TAInterVisitMetricPerDevice *)self latestAdvertisement];
        v37 = [(TAInterVisitMetricPerDevice *)v6 latestAdvertisement];
        if (![v3 isEqual:?])
        {
          v17 = 0;
LABEL_28:

LABEL_29:
          if (v14 == v15)
          {
LABEL_31:

            goto LABEL_12;
          }

LABEL_30:

          goto LABEL_31;
        }
      }

      v21 = [(TAInterVisitMetricPerDevice *)self settings];
      v22 = [(TAInterVisitMetricPerDevice *)v6 settings];
      v38 = v21;
      v23 = v21 == v22;
      v24 = v22;
      if (v23)
      {
        v35 = v3;
        v36 = v20;
      }

      else
      {
        v25 = [(TAInterVisitMetricPerDevice *)self settings];
        v32 = [(TAInterVisitMetricPerDevice *)v6 settings];
        v33 = v25;
        if (![v25 isEqual:?])
        {
          v17 = 0;
          v31 = v38;
          goto LABEL_26;
        }

        v35 = v3;
        v36 = v20;
      }

      v34 = v24;
      v26 = [(TAInterVisitMetricPerDevice *)self durationPerMotionState];
      v27 = [(TAInterVisitMetricPerDevice *)v6 durationPerMotionState];
      v28 = v27;
      if (v26 == v27)
      {

        v17 = 1;
      }

      else
      {
        v29 = [(TAInterVisitMetricPerDevice *)self durationPerMotionState];
        v30 = [(TAInterVisitMetricPerDevice *)v6 durationPerMotionState];
        v17 = [v29 isEqual:v30];
      }

      v31 = v38;
      v24 = v34;
      v3 = v35;
      v20 = v36;
      if (v38 == v34)
      {
LABEL_27:

        if (v19 == v20)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_26:

      goto LABEL_27;
    }

    v17 = 0;
  }

LABEL_13:

  return v17;
}

- (id)descriptionDictionary
{
  v17[6] = *MEMORY[0x277D85DE8];
  v16[0] = @"NumOfAssociatedLocs";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAInterVisitMetricPerDevice numOfAssociatedLocs](self, "numOfAssociatedLocs")}];
  v17[0] = v3;
  v16[1] = @"Duration";
  v4 = MEMORY[0x277CCABB0];
  [(TAInterVisitMetricPerDevice *)self duration];
  v5 = [v4 numberWithDouble:?];
  v17[1] = v5;
  v16[2] = @"Distance";
  v6 = MEMORY[0x277CCABB0];
  [(TAInterVisitMetricPerDevice *)self distance];
  v7 = [v6 numberWithDouble:?];
  v17[2] = v7;
  v16[3] = @"NumOfSampledObservationLocations";
  v8 = MEMORY[0x277CCABB0];
  v9 = [(TAInterVisitMetricPerDevice *)self sampledObservedLocations];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v17[3] = v10;
  v16[4] = @"LatestAdvertisement";
  v11 = [(TASPAdvertisement *)self->_latestAdvertisement descriptionDictionary];
  v17[4] = v11;
  v16[5] = @"DurationPerMotionState";
  v12 = [(TAInterVisitMetricPerDevice *)self durationPerMotionState];
  v17[5] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  v2 = [(TAInterVisitMetricPerDevice *)self descriptionDictionary];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAInterVisitMetricPerDevice *)v5 description];
    }

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (TAInterVisitMetricPerDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TAInterVisitMetricPerDevice;
  v5 = [(TAInterVisitMetricPerDevice *)&v23 init];
  if (v5)
  {
    v5->_numOfAssociatedLocs = [v4 decodeIntegerForKey:@"NumOfAssociatedLocs"];
    [v4 decodeDoubleForKey:@"Duration"];
    v5->_duration = v6;
    [v4 decodeDoubleForKey:@"Distance"];
    v5->_distance = v7;
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"SampledObservedLocations"];
    sampledObservedLocations = v5->_sampledObservedLocations;
    v5->_sampledObservedLocations = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LatestAdvertisement"];
    latestAdvertisement = v5->_latestAdvertisement;
    v5->_latestAdvertisement = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"DurationPerMotionState"];
    durationPerMotionState = v5->_durationPerMotionState;
    v5->_durationPerMotionState = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  numOfAssociatedLocs = self->_numOfAssociatedLocs;
  v5 = a3;
  [v5 encodeInteger:numOfAssociatedLocs forKey:@"NumOfAssociatedLocs"];
  [v5 encodeDouble:@"Duration" forKey:self->_duration];
  [v5 encodeDouble:@"Distance" forKey:self->_distance];
  [v5 encodeObject:self->_sampledObservedLocations forKey:@"SampledObservedLocations"];
  [v5 encodeObject:self->_latestAdvertisement forKey:@"LatestAdvertisement"];
  [v5 encodeObject:self->_settings forKey:@"Settings"];
  [v5 encodeObject:self->_durationPerMotionState forKey:@"DurationPerMotionState"];
}

- (void)description
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_26F2E2000, v4, v5, "%@ instance failed to create description:%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end