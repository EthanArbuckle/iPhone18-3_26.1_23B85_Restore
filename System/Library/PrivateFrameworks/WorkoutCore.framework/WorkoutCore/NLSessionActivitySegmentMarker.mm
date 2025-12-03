@interface NLSessionActivitySegmentMarker
+ (id)marker;
+ (id)markerFromMetadata:(id)metadata segmentEndDate:(id)date;
- (HKQuantity)activeEnergyBurn;
- (HKQuantity)averagePower;
- (HKQuantity)distance;
- (HKQuantity)totalEnergyBurn;
- (NLSessionActivitySegmentMarker)initWithCoder:(id)coder;
- (id)metadataFromSegmentMarker;
- (id)spokenDescriptionWithFormattingManager:(id)manager alertType:(int64_t)type;
- (id)spokenFullDescriptionWithFormattingManager:(id)manager workoutActivityType:(id)type activityMoveMode:(int64_t)mode alertType:(int64_t)alertType shouldSkipTime:(BOOL)time;
- (void)encodeWithCoder:(id)coder;
- (void)setActiveEnergyBurn:(id)burn;
- (void)setAveragePower:(id)power;
- (void)setDistance:(id)distance;
- (void)setSegmentEndDate:(id)date;
- (void)setTotalEnergyBurn:(id)burn;
@end

@implementation NLSessionActivitySegmentMarker

- (NLSessionActivitySegmentMarker)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = NLSessionActivitySegmentMarker;
  selfCopy = [(NLSessionActivitySegmentMarker *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [location[0] decodeDoubleForKey:@"ActiveEnergyBurn_MarkerKey"];
    selfCopy->_activeEnergyBurnValue = v4;
    [location[0] decodeDoubleForKey:@"TotalEnergyBurn_MarkerKey"];
    selfCopy->_totalEnergyBurnValue = v5;
    [location[0] decodeDoubleForKey:@"Distance_MarkerKey"];
    selfCopy->_distanceValue = v6;
    [location[0] decodeDoubleForKey:@"Duration_MarkerKey"];
    selfCopy->_duration = v7;
    v8 = [location[0] decodeIntegerForKey:@"Index_MarkerKey"];
    selfCopy->_segmentIndex = v8;
    if ([location[0] containsValueForKey:@"AveragePower_MarkerKey"])
    {
      [location[0] decodeDoubleForKey:@"AveragePower_MarkerKey"];
      selfCopy->_averagePowerValue = v9;
    }
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeDouble:@"ActiveEnergyBurn_MarkerKey" forKey:selfCopy->_activeEnergyBurnValue];
  [location[0] encodeDouble:@"TotalEnergyBurn_MarkerKey" forKey:selfCopy->_totalEnergyBurnValue];
  [location[0] encodeDouble:@"Distance_MarkerKey" forKey:selfCopy->_distanceValue];
  [location[0] encodeDouble:@"Duration_MarkerKey" forKey:selfCopy->_duration];
  [location[0] encodeInteger:selfCopy->_segmentIndex forKey:@"Index_MarkerKey"];
  [location[0] encodeDouble:@"AveragePower_MarkerKey" forKey:selfCopy->_averagePowerValue];
  objc_storeStrong(location, 0);
}

+ (id)marker
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(self);
  *(v6[0] + 1) = 0;
  *(v6[0] + 2) = 0;
  *(v6[0] + 3) = 0;
  *(v6[0] + 6) = 0;
  *(v6[0] + 7) = 0;
  *(v6[0] + 4) = 0;
  v2 = [MEMORY[0x277CBEAA8] now];
  v3 = *(v6[0] + 5);
  *(v6[0] + 5) = v2;
  MEMORY[0x277D82BD8](v3);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)markerFromMetadata:(id)metadata segmentEndDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  v19 = 0;
  objc_storeStrong(&v19, date);
  v18 = objc_alloc_init(selfCopy);
  v17 = [location[0] objectForKey:*MEMORY[0x277D0A740]];
  *(v18 + 7) = [v17 integerValue];
  v16 = [location[0] objectForKey:*MEMORY[0x277D0A730]];
  [v16 doubleValue];
  *(v18 + 6) = v4;
  v15 = [location[0] objectForKey:*MEMORY[0x277D0A718]];
  [v15 doubleValue];
  *(v18 + 1) = v5;
  v14 = [location[0] objectForKey:*MEMORY[0x277D0A748]];
  [v14 doubleValue];
  *(v18 + 2) = v6;
  v13 = [location[0] objectForKey:*MEMORY[0x277D0A728]];
  [v13 doubleValue];
  *(v18 + 3) = v7;
  v12 = [location[0] objectForKey:*MEMORY[0x277D0A720]];
  [v12 doubleValue];
  *(v18 + 4) = v8;
  objc_storeStrong(v18 + 5, v19);
  v10 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)metadataFromSegmentMarker
{
  v15[7] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12[1] = a2;
  v14[0] = *MEMORY[0x277D0A710];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v15[0] = v10;
  v14[1] = *MEMORY[0x277D0A740];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NLSessionActivitySegmentMarker segmentIndex](selfCopy, "segmentIndex")}];
  v15[1] = v9;
  v14[2] = *MEMORY[0x277D0A728];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_distanceValue];
  v15[2] = v8;
  v14[3] = *MEMORY[0x277D0A730];
  v3 = MEMORY[0x277CCABB0];
  [(NLSessionActivitySegmentMarker *)selfCopy duration];
  v7 = [v3 numberWithDouble:?];
  v15[3] = v7;
  v14[4] = *MEMORY[0x277D0A718];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_activeEnergyBurnValue];
  v15[4] = v6;
  v14[5] = *MEMORY[0x277D0A748];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_totalEnergyBurnValue];
  v15[5] = v5;
  v14[6] = *MEMORY[0x277D0A720];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_averagePowerValue];
  v15[6] = v4;
  v12[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:7];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v11 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);
  *MEMORY[0x277D85DE8];

  return v11;
}

- (HKQuantity)activeEnergyBurn
{
  v3 = MEMORY[0x277CCD7E8];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v5 = [v3 quantityWithUnit:self->_activeEnergyBurnValue doubleValue:?];
  MEMORY[0x277D82BD8](kilocalorieUnit);

  return v5;
}

- (void)setActiveEnergyBurn:(id)burn
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, burn);
  v4 = location[0];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v4 doubleValueForUnit:?];
  selfCopy->_activeEnergyBurnValue = v3;
  MEMORY[0x277D82BD8](kilocalorieUnit);
  objc_storeStrong(location, 0);
}

- (HKQuantity)totalEnergyBurn
{
  v3 = MEMORY[0x277CCD7E8];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v5 = [v3 quantityWithUnit:self->_totalEnergyBurnValue doubleValue:?];
  MEMORY[0x277D82BD8](kilocalorieUnit);

  return v5;
}

- (void)setTotalEnergyBurn:(id)burn
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, burn);
  v4 = location[0];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v4 doubleValueForUnit:?];
  selfCopy->_totalEnergyBurnValue = v3;
  MEMORY[0x277D82BD8](kilocalorieUnit);
  objc_storeStrong(location, 0);
}

- (void)setDistance:(id)distance
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, distance);
  v4 = location[0];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [v4 doubleValueForUnit:?];
  selfCopy->_distanceValue = v3;
  MEMORY[0x277D82BD8](meterUnit);
  objc_storeStrong(location, 0);
}

- (HKQuantity)distance
{
  v3 = MEMORY[0x277CCD7E8];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  v5 = [v3 quantityWithUnit:self->_distanceValue doubleValue:?];
  MEMORY[0x277D82BD8](meterUnit);

  return v5;
}

- (HKQuantity)averagePower
{
  v3 = MEMORY[0x277CCD7E8];
  wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
  v5 = [v3 quantityWithUnit:self->_averagePowerValue doubleValue:?];
  MEMORY[0x277D82BD8](wattUnit);

  return v5;
}

- (void)setAveragePower:(id)power
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, power);
  v4 = location[0];
  wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
  [v4 doubleValueForUnit:?];
  selfCopy->_averagePowerValue = v3;
  MEMORY[0x277D82BD8](wattUnit);
  objc_storeStrong(location, 0);
}

- (void)setSegmentEndDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  objc_storeStrong(&selfCopy->_segmentEndDateValue, location[0]);
  objc_storeStrong(location, 0);
}

- (id)spokenDescriptionWithFormattingManager:(id)manager alertType:(int64_t)type
{
  managerCopy = manager;
  selfCopy = self;
  v8 = specialized NLSessionActivitySegmentMarker.spokenDescription(formattingManager:alertType:)(type);
  v10 = v9;

  v11 = MEMORY[0x20F2E6C00](v8, v10);

  return v11;
}

- (id)spokenFullDescriptionWithFormattingManager:(id)manager workoutActivityType:(id)type activityMoveMode:(int64_t)mode alertType:(int64_t)alertType shouldSkipTime:(BOOL)time
{
  managerCopy = manager;
  typeCopy = type;
  selfCopy = self;
  v15 = NLSessionActivitySegmentMarker.spokenFullDescription(formattingManager:workoutActivityType:activityMoveMode:alertType:shouldSkipTime:)(managerCopy, typeCopy, mode, alertType, time);
  v17 = v16;

  v18 = MEMORY[0x20F2E6C00](v15, v17);

  return v18;
}

@end