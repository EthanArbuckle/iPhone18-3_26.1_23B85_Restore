@interface RTTripSegment(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithTripSegmentMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTTripSegment(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() createWithTripSegmentMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = v4;
      v15 = "+[RTTripSegment(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 31;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripSegment+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripSegmentMO:()RTCoreDataTransformable
{
  v3 = MEMORY[0x277D013D0];
  v4 = a3;
  v29 = [v3 alloc];
  v5 = [v4 identifier];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v9 = [v6 initWithStartDate:v7 endDate:v8];
  [v4 tripDistance_m];
  v11 = v10;
  [v4 tripDistanceUncertainty_m];
  v13 = v12;
  v14 = [v4 modeOfTransportation];
  v15 = [v4 isConsumedByClustering];
  v16 = [v4 tripSegmentSequence];
  v17 = [v4 tripSegmentSequenceMax];
  [v4 originLatitude];
  v19 = v18;
  [v4 originLongitude];
  v21 = v20;
  [v4 destinationLatitude];
  v23 = v22;
  [v4 destinationLongitude];
  v25 = v24;
  v26 = [v4 tripCommuteID];

  v27 = [v29 initWithTripSegmentIdentifier:v5 dateInterval:v9 tripDistance:v14 tripDistanceUncertainty:v15 modeOfTransportation:v16 isConsumedByClustering:v17 tripSegmentSequence:v11 tripSegmentSequenceMax:v13 originLatitude:v19 originLongitude:v21 destinationLatitude:v23 destinationLongitude:v25 tripCommuteID:v26];

  return v27;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTTripSegmentMO managedObjectWithTripSegment:a1 inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end