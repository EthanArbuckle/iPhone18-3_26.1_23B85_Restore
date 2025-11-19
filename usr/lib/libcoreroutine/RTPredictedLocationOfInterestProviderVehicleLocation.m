@interface RTPredictedLocationOfInterestProviderVehicleLocation
- (BOOL)parkingEventIsUsualAndNearHome:(id)a3;
- (RTPredictedLocationOfInterestProviderVehicleLocation)initWithVehicleLocationProvider:(id)a3 distanceCalculator:(id)a4;
- (id)locationOfInterestFromVehicleEvent:(id)a3;
- (id)predictedLocationOfInterestFromVehicleEvent:(id)a3;
- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)a3 handler:(id)a4;
@end

@implementation RTPredictedLocationOfInterestProviderVehicleLocation

- (RTPredictedLocationOfInterestProviderVehicleLocation)initWithVehicleLocationProvider:(id)a3 distanceCalculator:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTPredictedLocationOfInterestProviderVehicleLocation initWithVehicleLocationProvider:distanceCalculator:]";
      v19 = 1024;
      v20 = 33;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: vehicleLocationProvider (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v8)
  {
LABEL_9:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTPredictedLocationOfInterestProviderVehicleLocation initWithVehicleLocationProvider:distanceCalculator:]";
      v19 = 1024;
      v20 = 34;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator (in %s:%d)", buf, 0x12u);
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v16.receiver = self;
  v16.super_class = RTPredictedLocationOfInterestProviderVehicleLocation;
  v10 = [(RTPredictedLocationOfInterestProviderVehicleLocation *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_vehicleLocationProvider, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_13:

  return v12;
}

- (id)locationOfInterestFromVehicleEvent:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D01170];
    v4 = a3;
    v5 = [v3 alloc];
    v6 = [v4 location];
    v7 = [v4 identifier];
    v8 = [v4 mapItem];

    v9 = [v5 initWithLocation:v6 confidence:v7 identifier:-1 type:0 typeSource:0 visits:0 customLabel:1.0 mapItem:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)predictedLocationOfInterestFromVehicleEvent:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [v4 date];
    [v5 timeIntervalSinceNow];
    v7 = v6;

    if (v7 <= 432000.0)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = [(RTPredictedLocationOfInterestProviderVehicleLocation *)self locationOfInterestFromVehicleEvent:v4];
    v10 = [objc_alloc(MEMORY[0x277D012B0]) initWithVehicleEvent:v4];

    v11 = objc_alloc(MEMORY[0x277D01270]);
    v15[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13 = [v11 initWithLocationOfInterest:v9 confidence:0 nextEntryTime:0 modeOfTransportation:v12 sources:v8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)parkingEventIsUsualAndNearHome:(id)a3
{
  v3 = a3;
  v4 = [v3 nearbyLocationOfInterest];
  v5 = [v3 usualLocation];

  v6 = 0;
  if (v5 && v4)
  {
    v6 = [v4 type] == 0;
  }

  return v6;
}

- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  vehicleLocationProvider = self->_vehicleLocationProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __114__RTPredictedLocationOfInterestProviderVehicleLocation_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke;
  v11[3] = &unk_2788C6468;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(RTVehicleLocationProvider *)vehicleLocationProvider fetchLastVehicleEventsWithHandler:v11];
}

void __114__RTPredictedLocationOfInterestProviderVehicleLocation_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v5 firstObject];
    if ([*(a1 + 32) parkingEventIsUsualAndNearHome:v7])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_12:
        (*(*(a1 + 48) + 16))();

        goto LABEL_13;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 nearbyLocationOfInterest];
        v10 = 138740227;
        v11 = v7;
        v12 = 2117;
        v13 = v9;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "suppressing vehicle event, %{sensitive}@, nearby location of interest, %{sensitive}@. location of vehicle event is too close to home", &v10, 0x16u);
LABEL_10:
      }
    }

    else
    {
      v8 = [*(a1 + 32) predictedLocationOfInterestFromVehicleEvent:v7];
      if (v8)
      {
        v9 = [*(a1 + 40) copy];
        [v9 setMinimumDistance:0.0];
        [v9 setMaximumDistance:144000.0];
        if ([v9 evaluatePredictedLocationOfInterest:v8])
        {
          [v6 addObject:v8];
        }

        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  (*(*(a1 + 48) + 16))();
LABEL_13:
}

@end