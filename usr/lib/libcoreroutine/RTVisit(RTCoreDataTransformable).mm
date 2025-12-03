@interface RTVisit(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithVisitMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTVisit(RTCoreDataTransformable)

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
      v6 = [objc_opt_class() createWithVisitMO:v5];

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
      v15 = "+[RTVisit(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 38;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTVisit+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithVisitMO:()RTCoreDataTransformable
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D01160]);
  locationLatitude = [v3 locationLatitude];
  [locationLatitude doubleValue];
  v7 = v6;
  locationLongitude = [v3 locationLongitude];
  [locationLongitude doubleValue];
  v10 = v9;
  locationUncertainty = [v3 locationUncertainty];
  [locationUncertainty doubleValue];
  v13 = v12;
  locationDate = [v3 locationDate];
  locationReferenceFrame = [v3 locationReferenceFrame];
  v16 = [v4 initWithLatitude:locationDate longitude:objc_msgSend(locationReferenceFrame horizontalUncertainty:"unsignedIntValue") date:v7 referenceFrame:{v10, v13}];

  mapItem = [v3 mapItem];

  v61 = v16;
  if (mapItem)
  {
    v18 = MEMORY[0x277D011A0];
    mapItem2 = [v3 mapItem];
    v57 = [v18 createWithManagedObject:mapItem2];

    finerGranularityMapItem = [v3 finerGranularityMapItem];

    if (finerGranularityMapItem)
    {
      v21 = MEMORY[0x277D011A0];
      finerGranularityMapItem2 = [v3 finerGranularityMapItem];
      v55 = [v21 createWithManagedObject:finerGranularityMapItem2];
    }

    else
    {
      v55 = 0;
    }

    v23 = objc_alloc(MEMORY[0x277D011D8]);
    placeInferenceUserType = [v3 placeInferenceUserType];
    unsignedIntValue = [placeInferenceUserType unsignedIntValue];
    placeInferenceUserTypeSource = [v3 placeInferenceUserTypeSource];
    unsignedIntValue2 = [placeInferenceUserTypeSource unsignedIntValue];
    placeInferencePlaceType = [v3 placeInferencePlaceType];
    unsignedIntValue3 = [placeInferencePlaceType unsignedIntValue];
    placeInferenceConfidence = [v3 placeInferenceConfidence];
    [placeInferenceConfidence doubleValue];
    v30 = v29;
    placeInferenceFinerGranularityMapItemConfidence = [v3 placeInferenceFinerGranularityMapItemConfidence];
    [placeInferenceFinerGranularityMapItemConfidence doubleValue];
    v33 = v32;
    placeInferenceLoiIdentifier = [v3 placeInferenceLoiIdentifier];
    v59 = [v23 initWithMapItem:v57 finerGranularityMapItem:v55 userType:unsignedIntValue userTypeSource:unsignedIntValue2 placeType:unsignedIntValue3 referenceLocation:v61 confidence:v30 finerGranularityMapItemConfidence:v33 loiIdentifier:placeInferenceLoiIdentifier];
  }

  else
  {
    v59 = 0;
  }

  v35 = objc_alloc(MEMORY[0x277D01428]);
  detectionDate = [v3 detectionDate];
  type = [v3 type];
  unsignedIntValue4 = [type unsignedIntValue];
  entryDate = [v3 entryDate];
  exitDate = [v3 exitDate];
  dataPointCount = [v3 dataPointCount];
  unsignedIntValue5 = [dataPointCount unsignedIntValue];
  confidence = [v3 confidence];
  [confidence doubleValue];
  v43 = v42;
  source = [v3 source];
  v45 = [v35 initWithDate:detectionDate type:unsignedIntValue4 location:v61 entry:entryDate exit:exitDate dataPointCount:unsignedIntValue5 confidence:v43 placeInference:v59 source:{objc_msgSend(source, "unsignedIntValue")}];

  if (v59)
  {
    mapItem3 = [v59 mapItem];

    if (!mapItem3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v47 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          mapItem4 = [v3 mapItem];
          *buf = 138739971;
          v63 = mapItem4;
          _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "Corrupted RTAddressMO, %{sensitive}@", buf, 0xCu);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v49 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          mapItem5 = [v3 mapItem];
          address = [mapItem5 address];
          *buf = 138739971;
          v63 = address;
          _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "Corrupted RTMapItemMO, %{sensitive}@", buf, 0xCu);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v52 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 138740227;
          v63 = v3;
          v64 = 2117;
          v65 = v45;
          _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "Corrupted RTVisitMO, %{sensitive}@, was converted to RTVisit, %{sensitive}@", buf, 0x16u);
        }
      }
    }
  }

  return v45;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTVisitMO managedObjectWithVisit:self inManagedObjectContext:a3];
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