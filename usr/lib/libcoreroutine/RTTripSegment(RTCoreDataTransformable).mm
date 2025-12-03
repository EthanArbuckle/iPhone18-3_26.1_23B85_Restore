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
  identifier = [v4 identifier];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [v4 startDate];
  endDate = [v4 endDate];
  v9 = [v6 initWithStartDate:startDate endDate:endDate];
  [v4 tripDistance_m];
  v11 = v10;
  [v4 tripDistanceUncertainty_m];
  v13 = v12;
  modeOfTransportation = [v4 modeOfTransportation];
  isConsumedByClustering = [v4 isConsumedByClustering];
  tripSegmentSequence = [v4 tripSegmentSequence];
  tripSegmentSequenceMax = [v4 tripSegmentSequenceMax];
  [v4 originLatitude];
  v19 = v18;
  [v4 originLongitude];
  v21 = v20;
  [v4 destinationLatitude];
  v23 = v22;
  [v4 destinationLongitude];
  v25 = v24;
  tripCommuteID = [v4 tripCommuteID];

  v27 = [v29 initWithTripSegmentIdentifier:identifier dateInterval:v9 tripDistance:modeOfTransportation tripDistanceUncertainty:isConsumedByClustering modeOfTransportation:tripSegmentSequence isConsumedByClustering:tripSegmentSequenceMax tripSegmentSequence:v11 tripSegmentSequenceMax:v13 originLatitude:v19 originLongitude:v21 destinationLatitude:v23 destinationLongitude:v25 tripCommuteID:tripCommuteID];

  return v27;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTTripSegmentMO managedObjectWithTripSegment:self inManagedObjectContext:a3];
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