@interface RTBluePOIMonitorEstimateUpdateNotification
- (RTBluePOIMonitorEstimateUpdateNotification)initWithInferredMapItems:(id)items referenceLocation:(id)location locations:(id)locations accessPoints:(id)points;
@end

@implementation RTBluePOIMonitorEstimateUpdateNotification

- (RTBluePOIMonitorEstimateUpdateNotification)initWithInferredMapItems:(id)items referenceLocation:(id)location locations:(id)locations accessPoints:(id)points
{
  v43 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  locationCopy = location;
  locationsCopy = locations;
  pointsCopy = points;
  v14 = pointsCopy;
  if (!itemsCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: inferredMapItems";
LABEL_23:
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, v33, buf, 2u);
    goto LABEL_24;
  }

  if (!locationCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: referenceLocation";
    goto LABEL_23;
  }

  if (!locationsCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: locations";
    goto LABEL_23;
  }

  if (!pointsCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v33 = "Invalid parameter not satisfying: accessPoints";
      goto LABEL_23;
    }

LABEL_24:

    selfCopy = 0;
    goto LABEL_25;
  }

  v40.receiver = self;
  v40.super_class = RTBluePOIMonitorEstimateUpdateNotification;
  v15 = [(RTNotification *)&v40 init];
  if (v15)
  {
    v16 = [itemsCopy copy];
    inferredMapItems = v15->_inferredMapItems;
    v15->_inferredMapItems = v16;

    v18 = [locationCopy copy];
    referenceLocation = v15->_referenceLocation;
    v15->_referenceLocation = v18;

    v20 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = locationsCopy;
    v21 = locationsCopy;
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:*(*(&v36 + 1) + 8 * i)];
          [v20 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v23);
    }

    v27 = [v20 copy];
    locations = v15->_locations;
    v15->_locations = v27;

    v29 = [v14 copy];
    accessPoints = v15->_accessPoints;
    v15->_accessPoints = v29;

    locationsCopy = v35;
  }

  self = v15;
  selfCopy = self;
LABEL_25:

  return selfCopy;
}

@end