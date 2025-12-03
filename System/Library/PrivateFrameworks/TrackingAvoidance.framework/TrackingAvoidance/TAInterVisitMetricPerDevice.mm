@interface TAInterVisitMetricPerDevice
- (BOOL)isEqual:(id)equal;
- (TAInterVisitMetricPerDevice)init;
- (TAInterVisitMetricPerDevice)initWithCoder:(id)coder;
- (TAInterVisitMetricPerDevice)initWithSettings:(id)settings;
- (id)description;
- (id)descriptionDictionary;
- (void)accumulate:(id)accumulate;
- (void)accumulateDurationPerMotionState:(id)state;
- (void)accumulateLatestAdvertisement:(id)advertisement;
- (void)accumulateSampledObservedLocations:(id)locations;
- (void)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAInterVisitMetricPerDevice

- (TAInterVisitMetricPerDevice)init
{
  v3 = objc_alloc_init(TAInterVisitMetricPerDeviceSettings);
  v4 = [(TAInterVisitMetricPerDevice *)self initWithSettings:v3];

  return v4;
}

- (TAInterVisitMetricPerDevice)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = TAInterVisitMetricPerDevice;
  v6 = [(TAInterVisitMetricPerDevice *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_numOfAssociatedLocs = 0;
    v6->_duration = 0.0;
    v6->_distance = 0.0;
    array = [MEMORY[0x277CBEA60] array];
    sampledObservedLocations = v7->_sampledObservedLocations;
    v7->_sampledObservedLocations = array;

    latestAdvertisement = v7->_latestAdvertisement;
    v7->_latestAdvertisement = 0;

    objc_storeStrong(&v7->_settings, settings);
    v7->_segmentSpeedExceedsLimit = 0;
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    durationPerMotionState = v7->_durationPerMotionState;
    v7->_durationPerMotionState = dictionary;
  }

  return v7;
}

- (void)accumulate:(id)accumulate
{
  accumulateCopy = accumulate;
  if (accumulateCopy)
  {
    v9 = accumulateCopy;
    -[TAInterVisitMetricPerDevice accumulateNumOfAssociatedLocs:](self, "accumulateNumOfAssociatedLocs:", [accumulateCopy numOfAssociatedLocs]);
    [v9 duration];
    [(TAInterVisitMetricPerDevice *)self accumulateDuration:?];
    [v9 distance];
    [(TAInterVisitMetricPerDevice *)self accumulateDistance:?];
    sampledObservedLocations = [v9 sampledObservedLocations];
    [(TAInterVisitMetricPerDevice *)self accumulateSampledObservedLocations:sampledObservedLocations];

    latestAdvertisement = [v9 latestAdvertisement];
    [(TAInterVisitMetricPerDevice *)self accumulateLatestAdvertisement:latestAdvertisement];

    if ([(TAInterVisitMetricPerDevice *)self segmentSpeedExceedsLimit])
    {
      segmentSpeedExceedsLimit = 1;
    }

    else
    {
      segmentSpeedExceedsLimit = [v9 segmentSpeedExceedsLimit];
    }

    [(TAInterVisitMetricPerDevice *)self setSegmentSpeedExceedsLimit:segmentSpeedExceedsLimit];
    durationPerMotionState = [v9 durationPerMotionState];
    [(TAInterVisitMetricPerDevice *)self accumulateDurationPerMotionState:durationPerMotionState];

    accumulateCopy = v9;
  }
}

- (void)accumulateSampledObservedLocations:(id)locations
{
  v33 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  sampledObservedLocations = self->_sampledObservedLocations;
  if (!sampledObservedLocations)
  {
    array = [MEMORY[0x277CBEA60] array];
    v7 = self->_sampledObservedLocations;
    self->_sampledObservedLocations = array;

    sampledObservedLocations = self->_sampledObservedLocations;
  }

  v27 = locationsCopy;
  v26 = [(NSArray *)sampledObservedLocations arrayByAddingObjectsFromArray:locationsCopy];
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
        lastObject = [(NSArray *)v9 lastObject];
        getDate = [v15 getDate];
        getDate2 = [lastObject getDate];
        [getDate timeIntervalSinceDate:getDate2];
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

- (void)accumulateLatestAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if (advertisementCopy)
  {
    latestAdvertisement = self->_latestAdvertisement;
    p_latestAdvertisement = &self->_latestAdvertisement;
    if (!-[TASPAdvertisement isPosh](latestAdvertisement, "isPosh") || [advertisementCopy isPosh])
    {
      objc_storeStrong(p_latestAdvertisement, advertisement);
    }
  }
}

- (void)accumulateDurationPerMotionState:(id)state
{
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  selfCopy = self;
  v5 = [(NSDictionary *)self->_durationPerMotionState mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = stateCopy;
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

  durationPerMotionState = selfCopy->_durationPerMotionState;
  selfCopy->_durationPerMotionState = v5;

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      numOfAssociatedLocs = [(TAInterVisitMetricPerDevice *)self numOfAssociatedLocs];
      if (numOfAssociatedLocs != [(TAInterVisitMetricPerDevice *)v6 numOfAssociatedLocs]|| ([(TAInterVisitMetricPerDevice *)self duration], v9 = v8, [(TAInterVisitMetricPerDevice *)v6 duration], v9 != v10) || ([(TAInterVisitMetricPerDevice *)self distance], v12 = v11, [(TAInterVisitMetricPerDevice *)v6 distance], v12 != v13))
      {
        v17 = 0;
LABEL_12:

        goto LABEL_13;
      }

      sampledObservedLocations = [(TAInterVisitMetricPerDevice *)self sampledObservedLocations];
      sampledObservedLocations2 = [(TAInterVisitMetricPerDevice *)v6 sampledObservedLocations];
      if (sampledObservedLocations != sampledObservedLocations2)
      {
        sampledObservedLocations3 = [(TAInterVisitMetricPerDevice *)self sampledObservedLocations];
        [(TAInterVisitMetricPerDevice *)v6 sampledObservedLocations];
        v40 = v39 = sampledObservedLocations3;
        if (![sampledObservedLocations3 isEqual:?])
        {
          v17 = 0;
          goto LABEL_30;
        }
      }

      latestAdvertisement = [(TAInterVisitMetricPerDevice *)self latestAdvertisement];
      latestAdvertisement2 = [(TAInterVisitMetricPerDevice *)v6 latestAdvertisement];
      if (latestAdvertisement != latestAdvertisement2)
      {
        latestAdvertisement3 = [(TAInterVisitMetricPerDevice *)self latestAdvertisement];
        latestAdvertisement4 = [(TAInterVisitMetricPerDevice *)v6 latestAdvertisement];
        if (![latestAdvertisement3 isEqual:?])
        {
          v17 = 0;
LABEL_28:

LABEL_29:
          if (sampledObservedLocations == sampledObservedLocations2)
          {
LABEL_31:

            goto LABEL_12;
          }

LABEL_30:

          goto LABEL_31;
        }
      }

      settings = [(TAInterVisitMetricPerDevice *)self settings];
      settings2 = [(TAInterVisitMetricPerDevice *)v6 settings];
      v38 = settings;
      v23 = settings == settings2;
      v24 = settings2;
      if (v23)
      {
        v35 = latestAdvertisement3;
        v36 = latestAdvertisement2;
      }

      else
      {
        settings3 = [(TAInterVisitMetricPerDevice *)self settings];
        settings4 = [(TAInterVisitMetricPerDevice *)v6 settings];
        v33 = settings3;
        if (![settings3 isEqual:?])
        {
          v17 = 0;
          v31 = v38;
          goto LABEL_26;
        }

        v35 = latestAdvertisement3;
        v36 = latestAdvertisement2;
      }

      v34 = v24;
      durationPerMotionState = [(TAInterVisitMetricPerDevice *)self durationPerMotionState];
      durationPerMotionState2 = [(TAInterVisitMetricPerDevice *)v6 durationPerMotionState];
      v28 = durationPerMotionState2;
      if (durationPerMotionState == durationPerMotionState2)
      {

        v17 = 1;
      }

      else
      {
        durationPerMotionState3 = [(TAInterVisitMetricPerDevice *)self durationPerMotionState];
        durationPerMotionState4 = [(TAInterVisitMetricPerDevice *)v6 durationPerMotionState];
        v17 = [durationPerMotionState3 isEqual:durationPerMotionState4];
      }

      v31 = v38;
      v24 = v34;
      latestAdvertisement3 = v35;
      latestAdvertisement2 = v36;
      if (v38 == v34)
      {
LABEL_27:

        if (latestAdvertisement == latestAdvertisement2)
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
  sampledObservedLocations = [(TAInterVisitMetricPerDevice *)self sampledObservedLocations];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(sampledObservedLocations, "count")}];
  v17[3] = v10;
  v16[4] = @"LatestAdvertisement";
  descriptionDictionary = [(TASPAdvertisement *)self->_latestAdvertisement descriptionDictionary];
  v17[4] = descriptionDictionary;
  v16[5] = @"DurationPerMotionState";
  durationPerMotionState = [(TAInterVisitMetricPerDevice *)self durationPerMotionState];
  v17[5] = durationPerMotionState;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  descriptionDictionary = [(TAInterVisitMetricPerDevice *)self descriptionDictionary];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAInterVisitMetricPerDevice *)v5 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  return v7;
}

- (TAInterVisitMetricPerDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TAInterVisitMetricPerDevice;
  v5 = [(TAInterVisitMetricPerDevice *)&v23 init];
  if (v5)
  {
    v5->_numOfAssociatedLocs = [coderCopy decodeIntegerForKey:@"NumOfAssociatedLocs"];
    [coderCopy decodeDoubleForKey:@"Duration"];
    v5->_duration = v6;
    [coderCopy decodeDoubleForKey:@"Distance"];
    v5->_distance = v7;
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"SampledObservedLocations"];
    sampledObservedLocations = v5->_sampledObservedLocations;
    v5->_sampledObservedLocations = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LatestAdvertisement"];
    latestAdvertisement = v5->_latestAdvertisement;
    v5->_latestAdvertisement = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"DurationPerMotionState"];
    durationPerMotionState = v5->_durationPerMotionState;
    v5->_durationPerMotionState = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  numOfAssociatedLocs = self->_numOfAssociatedLocs;
  coderCopy = coder;
  [coderCopy encodeInteger:numOfAssociatedLocs forKey:@"NumOfAssociatedLocs"];
  [coderCopy encodeDouble:@"Duration" forKey:self->_duration];
  [coderCopy encodeDouble:@"Distance" forKey:self->_distance];
  [coderCopy encodeObject:self->_sampledObservedLocations forKey:@"SampledObservedLocations"];
  [coderCopy encodeObject:self->_latestAdvertisement forKey:@"LatestAdvertisement"];
  [coderCopy encodeObject:self->_settings forKey:@"Settings"];
  [coderCopy encodeObject:self->_durationPerMotionState forKey:@"DurationPerMotionState"];
}

- (void)description
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_26F2E2000, v4, v5, "%@ instance failed to create description:%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end