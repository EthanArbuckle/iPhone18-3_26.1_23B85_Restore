@interface RTTripSegmentMO
+ (id)managedObjectWithTripSegment:(id)segment inManagedObjectContext:(id)context;
@end

@implementation RTTripSegmentMO

+ (id)managedObjectWithTripSegment:(id)segment inManagedObjectContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  contextCopy = context;
  v7 = contextCopy;
  if (!segmentCopy)
  {
    tripCommuteID = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(tripCommuteID, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }

    LOWORD(v19) = 0;
    v16 = "Invalid parameter not satisfying: tripSegment";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, tripCommuteID, OS_LOG_TYPE_ERROR, v16, &v19, 2u);
    goto LABEL_11;
  }

  if (!contextCopy)
  {
    tripCommuteID = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(tripCommuteID, OS_LOG_TYPE_ERROR))
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
      identifier = [segmentCopy identifier];
      v19 = 138412290;
      v20 = identifier;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentMO: invoked managedObjectWithTripSegment on UUID %@", &v19, 0xCu);
    }
  }

  v9 = [[RTTripSegmentMO alloc] initWithContext:v7];
  identifier2 = [segmentCopy identifier];
  [(RTTripSegmentMO *)v9 setIdentifier:identifier2];

  dateInterval = [segmentCopy dateInterval];
  startDate = [dateInterval startDate];
  [(RTTripSegmentMO *)v9 setStartDate:startDate];

  dateInterval2 = [segmentCopy dateInterval];
  endDate = [dateInterval2 endDate];
  [(RTTripSegmentMO *)v9 setEndDate:endDate];

  [segmentCopy tripDistance];
  [(RTTripSegmentMO *)v9 setTripDistance_m:?];
  [segmentCopy tripDistanceUncertainty];
  [(RTTripSegmentMO *)v9 setTripDistanceUncertainty_m:?];
  -[RTTripSegmentMO setModeOfTransportation:](v9, "setModeOfTransportation:", [segmentCopy modeOfTransportation]);
  -[RTTripSegmentMO setIsConsumedByClustering:](v9, "setIsConsumedByClustering:", [segmentCopy isConsumedByClustering]);
  -[RTTripSegmentMO setTripSegmentSequence:](v9, "setTripSegmentSequence:", [segmentCopy tripSegmentSequence]);
  -[RTTripSegmentMO setTripSegmentSequenceMax:](v9, "setTripSegmentSequenceMax:", [segmentCopy tripSegmentSequenceMax]);
  [segmentCopy originLatitude];
  [(RTTripSegmentMO *)v9 setOriginLatitude:?];
  [segmentCopy originLongitude];
  [(RTTripSegmentMO *)v9 setOriginLongitude:?];
  [segmentCopy destinationLatitude];
  [(RTTripSegmentMO *)v9 setDestinationLatitude:?];
  [segmentCopy destinationLongitude];
  [(RTTripSegmentMO *)v9 setDestinationLongitude:?];
  tripCommuteID = [segmentCopy tripCommuteID];
  [(RTTripSegmentMO *)v9 setTripCommuteID:tripCommuteID];
LABEL_12:

  return v9;
}

@end