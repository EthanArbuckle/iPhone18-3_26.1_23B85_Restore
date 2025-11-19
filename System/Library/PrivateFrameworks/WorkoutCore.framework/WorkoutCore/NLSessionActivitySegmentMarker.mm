@interface NLSessionActivitySegmentMarker
+ (id)marker;
+ (id)markerFromMetadata:(id)a3 segmentEndDate:(id)a4;
- (HKQuantity)activeEnergyBurn;
- (HKQuantity)averagePower;
- (HKQuantity)distance;
- (HKQuantity)totalEnergyBurn;
- (NLSessionActivitySegmentMarker)initWithCoder:(id)a3;
- (id)metadataFromSegmentMarker;
- (id)spokenDescriptionWithFormattingManager:(id)a3 alertType:(int64_t)a4;
- (id)spokenFullDescriptionWithFormattingManager:(id)a3 workoutActivityType:(id)a4 activityMoveMode:(int64_t)a5 alertType:(int64_t)a6 shouldSkipTime:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveEnergyBurn:(id)a3;
- (void)setAveragePower:(id)a3;
- (void)setDistance:(id)a3;
- (void)setSegmentEndDate:(id)a3;
- (void)setTotalEnergyBurn:(id)a3;
@end

@implementation NLSessionActivitySegmentMarker

- (NLSessionActivitySegmentMarker)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = NLSessionActivitySegmentMarker;
  v14 = [(NLSessionActivitySegmentMarker *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    [location[0] decodeDoubleForKey:@"ActiveEnergyBurn_MarkerKey"];
    v14->_activeEnergyBurnValue = v4;
    [location[0] decodeDoubleForKey:@"TotalEnergyBurn_MarkerKey"];
    v14->_totalEnergyBurnValue = v5;
    [location[0] decodeDoubleForKey:@"Distance_MarkerKey"];
    v14->_distanceValue = v6;
    [location[0] decodeDoubleForKey:@"Duration_MarkerKey"];
    v14->_duration = v7;
    v8 = [location[0] decodeIntegerForKey:@"Index_MarkerKey"];
    v14->_segmentIndex = v8;
    if ([location[0] containsValueForKey:@"AveragePower_MarkerKey"])
    {
      [location[0] decodeDoubleForKey:@"AveragePower_MarkerKey"];
      v14->_averagePowerValue = v9;
    }
  }

  v11 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeDouble:@"ActiveEnergyBurn_MarkerKey" forKey:v4->_activeEnergyBurnValue];
  [location[0] encodeDouble:@"TotalEnergyBurn_MarkerKey" forKey:v4->_totalEnergyBurnValue];
  [location[0] encodeDouble:@"Distance_MarkerKey" forKey:v4->_distanceValue];
  [location[0] encodeDouble:@"Duration_MarkerKey" forKey:v4->_duration];
  [location[0] encodeInteger:v4->_segmentIndex forKey:@"Index_MarkerKey"];
  [location[0] encodeDouble:@"AveragePower_MarkerKey" forKey:v4->_averagePowerValue];
  objc_storeStrong(location, 0);
}

+ (id)marker
{
  v6[2] = a1;
  v6[1] = a2;
  v6[0] = objc_alloc_init(a1);
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

+ (id)markerFromMetadata:(id)a3 segmentEndDate:(id)a4
{
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = objc_alloc_init(v21);
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
  v13 = self;
  v12[1] = a2;
  v14[0] = *MEMORY[0x277D0A710];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v15[0] = v10;
  v14[1] = *MEMORY[0x277D0A740];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NLSessionActivitySegmentMarker segmentIndex](v13, "segmentIndex")}];
  v15[1] = v9;
  v14[2] = *MEMORY[0x277D0A728];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v13->_distanceValue];
  v15[2] = v8;
  v14[3] = *MEMORY[0x277D0A730];
  v3 = MEMORY[0x277CCABB0];
  [(NLSessionActivitySegmentMarker *)v13 duration];
  v7 = [v3 numberWithDouble:?];
  v15[3] = v7;
  v14[4] = *MEMORY[0x277D0A718];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v13->_activeEnergyBurnValue];
  v15[4] = v6;
  v14[5] = *MEMORY[0x277D0A748];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v13->_totalEnergyBurnValue];
  v15[5] = v5;
  v14[6] = *MEMORY[0x277D0A720];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v13->_averagePowerValue];
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
  v4 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v5 = [v3 quantityWithUnit:self->_activeEnergyBurnValue doubleValue:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)setActiveEnergyBurn:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v4 doubleValueForUnit:?];
  v7->_activeEnergyBurnValue = v3;
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (HKQuantity)totalEnergyBurn
{
  v3 = MEMORY[0x277CCD7E8];
  v4 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v5 = [v3 quantityWithUnit:self->_totalEnergyBurnValue doubleValue:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)setTotalEnergyBurn:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v4 doubleValueForUnit:?];
  v7->_totalEnergyBurnValue = v3;
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)setDistance:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [MEMORY[0x277CCDAB0] meterUnit];
  [v4 doubleValueForUnit:?];
  v7->_distanceValue = v3;
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (HKQuantity)distance
{
  v3 = MEMORY[0x277CCD7E8];
  v4 = [MEMORY[0x277CCDAB0] meterUnit];
  v5 = [v3 quantityWithUnit:self->_distanceValue doubleValue:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (HKQuantity)averagePower
{
  v3 = MEMORY[0x277CCD7E8];
  v4 = [MEMORY[0x277CCDAB0] wattUnit];
  v5 = [v3 quantityWithUnit:self->_averagePowerValue doubleValue:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)setAveragePower:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [MEMORY[0x277CCDAB0] wattUnit];
  [v4 doubleValueForUnit:?];
  v7->_averagePowerValue = v3;
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)setSegmentEndDate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_segmentEndDateValue, location[0]);
  objc_storeStrong(location, 0);
}

- (id)spokenDescriptionWithFormattingManager:(id)a3 alertType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = specialized NLSessionActivitySegmentMarker.spokenDescription(formattingManager:alertType:)(a4);
  v10 = v9;

  v11 = MEMORY[0x20F2E6C00](v8, v10);

  return v11;
}

- (id)spokenFullDescriptionWithFormattingManager:(id)a3 workoutActivityType:(id)a4 activityMoveMode:(int64_t)a5 alertType:(int64_t)a6 shouldSkipTime:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = NLSessionActivitySegmentMarker.spokenFullDescription(formattingManager:workoutActivityType:activityMoveMode:alertType:shouldSkipTime:)(v12, v13, a5, a6, a7);
  v17 = v16;

  v18 = MEMORY[0x20F2E6C00](v15, v17);

  return v18;
}

@end