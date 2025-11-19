@interface RTTripSegmentMO
+ (id)managedObjectWithTripSegment:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTTripSegmentMO

+ (id)managedObjectWithTripSegment:(id)a3 inManagedObjectContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }

    LOWORD(v19) = 0;
    v16 = "Invalid parameter not satisfying: tripSegment";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, &v19, 2u);
    goto LABEL_11;
  }

  if (!v6)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v19) = 0;
    v16 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v5 identifier];
      v19 = 138412290;
      v20 = v18;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentMO: invoked managedObjectWithTripSegment on UUID %@", &v19, 0xCu);
    }
  }

  v9 = [[RTTripSegmentMO alloc] initWithContext:v7];
  v10 = [v5 identifier];
  [(RTTripSegmentMO *)v9 setIdentifier:v10];

  v11 = [v5 dateInterval];
  v12 = [v11 startDate];
  [(RTTripSegmentMO *)v9 setStartDate:v12];

  v13 = [v5 dateInterval];
  v14 = [v13 endDate];
  [(RTTripSegmentMO *)v9 setEndDate:v14];

  [v5 tripDistance];
  [(RTTripSegmentMO *)v9 setTripDistance_m:?];
  [v5 tripDistanceUncertainty];
  [(RTTripSegmentMO *)v9 setTripDistanceUncertainty_m:?];
  -[RTTripSegmentMO setModeOfTransportation:](v9, "setModeOfTransportation:", [v5 modeOfTransportation]);
  -[RTTripSegmentMO setIsConsumedByClustering:](v9, "setIsConsumedByClustering:", [v5 isConsumedByClustering]);
  -[RTTripSegmentMO setTripSegmentSequence:](v9, "setTripSegmentSequence:", [v5 tripSegmentSequence]);
  -[RTTripSegmentMO setTripSegmentSequenceMax:](v9, "setTripSegmentSequenceMax:", [v5 tripSegmentSequenceMax]);
  [v5 originLatitude];
  [(RTTripSegmentMO *)v9 setOriginLatitude:?];
  [v5 originLongitude];
  [(RTTripSegmentMO *)v9 setOriginLongitude:?];
  [v5 destinationLatitude];
  [(RTTripSegmentMO *)v9 setDestinationLatitude:?];
  [v5 destinationLongitude];
  [(RTTripSegmentMO *)v9 setDestinationLongitude:?];
  v15 = [v5 tripCommuteID];
  [(RTTripSegmentMO *)v9 setTripCommuteID:v15];
LABEL_12:

  return v9;
}

@end