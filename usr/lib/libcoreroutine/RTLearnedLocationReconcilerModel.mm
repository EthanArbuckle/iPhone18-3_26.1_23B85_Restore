@interface RTLearnedLocationReconcilerModel
- (double)_weightWithDeviceWeight:(double)weight visitsPercentage:(double)percentage transitionsPercentage:(double)transitionsPercentage semanticLabel:(BOOL)label firstVisit:(BOOL)visit earliestTransition:(BOOL)transition rawLocationCount:(unint64_t)count;
- (double)scoreForDeviceClass:(id)class;
- (double)weightForVisit:(id)visit modelContext:(id)context;
@end

@implementation RTLearnedLocationReconcilerModel

- (double)scoreForDeviceClass:(id)class
{
  v14 = *MEMORY[0x277D85DE8];
  classCopy = class;
  if ([classCopy containsString:@"iPhone"])
  {
    v4 = 0.3333;
  }

  else if ([classCopy containsString:@"Watch"])
  {
    v4 = 0.2667;
  }

  else if ([classCopy containsString:@"iPad"])
  {
    v4 = 0.2;
  }

  else
  {
    v4 = 0.1333;
    if (([classCopy containsString:@"Mac"] & 1) == 0 && (objc_msgSend(classCopy, "containsString:", @"VMWare") & 1) == 0)
    {
      if ([classCopy containsString:@"iPod"])
      {
        v4 = 0.0667;
      }

      else
      {
        v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          v8 = 138412290;
          v9 = classCopy;
          _os_log_fault_impl(&dword_2304B3000, v5, OS_LOG_TYPE_FAULT, "cannot calculate score for device class, %@, because it is unknown.", &v8, 0xCu);
        }

        v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412802;
          v9 = classCopy;
          v10 = 2080;
          v11 = "[RTLearnedLocationReconcilerModel scoreForDeviceClass:]";
          v12 = 1024;
          v13 = 44;
          _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "cannot calculate score for device class, %@, because it is unknown. (in %s:%d)", &v8, 0x1Cu);
        }

        v4 = -1.0;
      }
    }
  }

  return v4;
}

- (double)weightForVisit:(id)visit modelContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  contextCopy = context;
  device = [visitCopy device];
  deviceClass = [device deviceClass];
  [(RTLearnedLocationReconcilerModel *)self scoreForDeviceClass:deviceClass];
  v11 = v10;

  device2 = [visitCopy device];
  visits = [device2 visits];
  v14 = [visits count];

  devices = [contextCopy devices];
  v16 = [devices valueForKeyPath:@"@sum.visits.@count"];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  device3 = [visitCopy device];
  transitions = [device3 transitions];
  v20 = [transitions count];

  devices2 = [contextCopy devices];
  v22 = [devices2 valueForKeyPath:@"@sum.transitions.@count"];
  unsignedIntegerValue2 = [v22 unsignedIntegerValue];

  place = [visitCopy place];
  type = [place type];
  unsignedIntegerValue3 = [type unsignedIntegerValue];

  dataPointCount = [visitCopy dataPointCount];
  unsignedIntegerValue4 = [dataPointCount unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v28 = v14 / unsignedIntegerValue;
  }

  else
  {
    v28 = 0.0;
  }

  if (unsignedIntegerValue2)
  {
    v29 = v20 / unsignedIntegerValue2;
  }

  else
  {
    v29 = 0.0;
  }

  place2 = [visitCopy place];
  visits2 = [place2 visits];
  v57 = unsignedIntegerValue3;
  selfCopy = self;
  if ([visits2 count] == 1)
  {
    place3 = [visitCopy place];
    visits3 = [place3 visits];
    allObjects = [visits3 allObjects];
    firstObject = [allObjects firstObject];
    v55 = [firstObject isEqual:visitCopy];
  }

  else
  {
    v55 = 0;
  }

  outbound = [visitCopy outbound];
  startDate = [outbound startDate];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = contextCopy;
  overlappingVisits = [contextCopy overlappingVisits];
  v39 = [overlappingVisits countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v61;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v61 != v41)
        {
          objc_enumerationMutation(overlappingVisits);
        }

        v43 = *(*(&v60 + 1) + 8 * i);
        outbound2 = [v43 outbound];
        startDate2 = [outbound2 startDate];
        v46 = [startDate2 isBeforeDate:startDate];

        if (v46)
        {
          outbound3 = [v43 outbound];
          startDate3 = [outbound3 startDate];

          startDate = startDate3;
        }
      }

      v40 = [overlappingVisits countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v40);
  }

  outbound4 = [visitCopy outbound];
  startDate4 = [outbound4 startDate];
  v51 = [startDate isEqual:startDate4];

  [(RTLearnedLocationReconcilerModel *)selfCopy _weightWithDeviceWeight:(v57 - 1) < 3 visitsPercentage:v55 transitionsPercentage:v51 semanticLabel:unsignedIntegerValue4 firstVisit:v11 earliestTransition:v28 rawLocationCount:v29];
  v53 = v52;

  return v53;
}

- (double)_weightWithDeviceWeight:(double)weight visitsPercentage:(double)percentage transitionsPercentage:(double)transitionsPercentage semanticLabel:(BOOL)label firstVisit:(BOOL)visit earliestTransition:(BOOL)transition rawLocationCount:(unint64_t)count
{
  v9 = percentage * 0.1538 + weight * 0.2308 + transitionsPercentage * 0.0769 + label * 0.0769 + visit * 0.2308 + transition * 0.1923;
  if (count <= 0xC7)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v9 + v10 * 0.0385;
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  return fmin(v11, 1.0);
}

@end