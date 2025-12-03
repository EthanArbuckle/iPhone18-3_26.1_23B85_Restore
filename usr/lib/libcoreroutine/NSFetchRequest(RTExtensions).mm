@interface NSFetchRequest(RTExtensions)
+ (id)boundingBoxPredicatesForLocation:()RTExtensions distance:locationProperties:error:;
+ (id)formatStringForPropertyPath:()RTExtensions;
+ (id)locationPropertiesForEntityName:()RTExtensions;
- (uint64_t)setupBoundingBoxFetchRequestForLocation:()RTExtensions distance:entityCanBeLocationShifted:locationShifter:resultExpansionPredicates:resultFilteringPredicates:error:;
@end

@implementation NSFetchRequest(RTExtensions)

+ (id)locationPropertiesForEntityName:()RTExtensions
{
  v87[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = locationPropertiesForEntityName__entityNameToLocationPropertiesDic;
  if (!locationPropertiesForEntityName__entityNameToLocationPropertiesDic)
  {
    v5 = objc_opt_class();
    v62 = NSStringFromClass(v5);
    v86[0] = v62;
    v6 = [RTManagedObjectLocationProperties alloc];
    v85 = @"latitude";
    v63 = v3;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v84 = @"longitude";
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
    v59 = [(RTManagedObjectLocationProperties *)v6 initWithLatitudePropertyPath:v61 longitudePropertyPath:v60 referenceFramePropertyPath:0];
    v87[0] = v59;
    v7 = objc_opt_class();
    v58 = NSStringFromClass(v7);
    v86[1] = v58;
    v8 = [RTManagedObjectLocationProperties alloc];
    v83 = @"latitude";
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
    v82 = @"longitude";
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
    v55 = [(RTManagedObjectLocationProperties *)v8 initWithLatitudePropertyPath:v57 longitudePropertyPath:v56 referenceFramePropertyPath:0];
    v87[1] = v55;
    v9 = objc_opt_class();
    v54 = NSStringFromClass(v9);
    v86[2] = v54;
    v10 = [RTManagedObjectLocationProperties alloc];
    v81 = @"locationLatitude";
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
    v80 = @"locationLongitude";
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
    v79 = @"locationReferenceFrame";
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    v50 = [(RTManagedObjectLocationProperties *)v10 initWithLatitudePropertyPath:v53 longitudePropertyPath:v52 referenceFramePropertyPath:v51];
    v87[2] = v50;
    v11 = objc_opt_class();
    v49 = NSStringFromClass(v11);
    v86[3] = v49;
    v12 = [RTManagedObjectLocationProperties alloc];
    v78 = @"locationLatitude";
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    v77 = @"locationLongitude";
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    v76 = @"locationReferenceFrame";
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    v45 = [(RTManagedObjectLocationProperties *)v12 initWithLatitudePropertyPath:v48 longitudePropertyPath:v47 referenceFramePropertyPath:v46];
    v87[3] = v45;
    v13 = objc_opt_class();
    v44 = NSStringFromClass(v13);
    v86[4] = v44;
    v14 = [RTManagedObjectLocationProperties alloc];
    v75[0] = @"mapItem";
    v75[1] = @"latitude";
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
    v74[0] = @"mapItem";
    v74[1] = @"longitude";
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v73[0] = @"mapItem";
    v73[1] = @"referenceFrame";
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    v40 = [(RTManagedObjectLocationProperties *)v14 initWithLatitudePropertyPath:v43 longitudePropertyPath:v42 referenceFramePropertyPath:v41];
    v87[4] = v40;
    v15 = objc_opt_class();
    v39 = NSStringFromClass(v15);
    v86[5] = v39;
    v16 = [RTManagedObjectLocationProperties alloc];
    v72 = @"locationLatitude";
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    v71 = @"locationLongitude";
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
    v70 = @"locationReferenceFrame";
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
    v35 = [(RTManagedObjectLocationProperties *)v16 initWithLatitudePropertyPath:v38 longitudePropertyPath:v37 referenceFramePropertyPath:v36];
    v87[5] = v35;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v86[6] = v18;
    v19 = [RTManagedObjectLocationProperties alloc];
    v69 = @"latitude";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    v68 = @"longitude";
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    v67 = @"referenceFrame";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    v23 = [(RTManagedObjectLocationProperties *)v19 initWithLatitudePropertyPath:v20 longitudePropertyPath:v21 referenceFramePropertyPath:v22];
    v87[6] = v23;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v86[7] = v25;
    v26 = [RTManagedObjectLocationProperties alloc];
    v66 = @"locationLatitude";
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    v65 = @"locationLongitude";
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    v64 = @"locationReferenceFrame";
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    v30 = [(RTManagedObjectLocationProperties *)v26 initWithLatitudePropertyPath:v27 longitudePropertyPath:v28 referenceFramePropertyPath:v29];
    v87[7] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:8];
    v32 = locationPropertiesForEntityName__entityNameToLocationPropertiesDic;
    locationPropertiesForEntityName__entityNameToLocationPropertiesDic = v31;

    v3 = v63;
    v4 = locationPropertiesForEntityName__entityNameToLocationPropertiesDic;
  }

  v33 = [v4 objectForKeyedSubscript:{v3, v35}];

  return v33;
}

+ (id)formatStringForPropertyPath:()RTExtensions
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCAB68] stringWithString:@"%K"];
    if ([v3 count] >= 2)
    {
      v5 = 1;
      do
      {
        [v4 appendString:@".%K"];
        ++v5;
      }

      while (v5 < [v3 count]);
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: propertyPath.count > 0", v8, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)boundingBoxPredicatesForLocation:()RTExtensions distance:locationProperties:error:
{
  v61[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a6)
  {
    if (v9)
    {
      if (self <= 0.0)
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distance > 0", buf, 2u);
        }

        v37 = @"distance > 0";
      }

      else
      {
        if (v10)
        {
          *buf = 0;
          [v9 latitude];
          [v9 longitude];
          RTCommonCalculateBoundingBox();
          v12 = MEMORY[0x277CBE428];
          latitudePropertyPath = [v11 latitudePropertyPath];
          v14 = [v12 formatStringForPropertyPath:latitudePropertyPath];

          v15 = MEMORY[0x277CBE428];
          longitudePropertyPath = [v11 longitudePropertyPath];
          v17 = [v15 formatStringForPropertyPath:longitudePropertyPath];

          if (v14 && v17)
          {
            latitudePropertyPath2 = [v11 latitudePropertyPath];
            v19 = [latitudePropertyPath2 copy];

            longitudePropertyPath2 = [v11 longitudePropertyPath];
            v21 = [longitudePropertyPath2 copy];

            v53 = MEMORY[0x277CBEB18];
            v58 = v17;
            v22 = MEMORY[0x277CCAC30];
            v55 = [v14 stringByAppendingString:@">= %@"];
            v56 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
            v54 = [v19 arrayByAddingObject:v56];
            v49 = [v22 predicateWithFormat:v55 argumentArray:v54];
            v23 = MEMORY[0x277CCAC30];
            v51 = [v14 stringByAppendingString:@"<= %@"];
            v52 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
            v50 = [v19 arrayByAddingObject:v52];
            v45 = [v23 predicateWithFormat:v51 argumentArray:v50];
            v24 = MEMORY[0x277CCAC30];
            v46 = [v17 stringByAppendingString:@">= %@"];
            v47 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
            v48 = v21;
            v25 = v21;
            [v21 arrayByAddingObject:v47];
            v26 = v57 = v14;
            v27 = [v24 predicateWithFormat:v46 argumentArray:v26];
            v28 = MEMORY[0x277CCAC30];
            v29 = [v17 stringByAppendingString:@"<= %@"];
            v30 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
            v31 = [v25 arrayByAddingObject:v30];
            v32 = [v28 predicateWithFormat:v29 argumentArray:v31];
            v33 = [v53 arrayWithObjects:{v49, v45, v27, v32, 0}];

            v17 = v58;
            v34 = v19;

            v14 = v57;
          }

          else
          {
            v41 = MEMORY[0x277CCA9B8];
            v42 = *MEMORY[0x277D01448];
            v60 = *MEMORY[0x277CCA450];
            v61[0] = @"latitudePropertyString or longitudePropertyString is nil";
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
            v34 = [v41 errorWithDomain:v42 code:0 userInfo:v43];

            v44 = v34;
            v33 = 0;
            *a6 = v34;
          }

          goto LABEL_21;
        }

        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationProperties", buf, 2u);
        }

        v37 = @"locationProperties";
      }
    }

    else
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
      }

      v37 = @"location";
    }

    _RTErrorInvalidParameterCreate(v37);
    *a6 = v33 = 0;
    goto LABEL_21;
  }

  v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v33 = 0;
LABEL_21:

  return v33;
}

- (uint64_t)setupBoundingBoxFetchRequestForLocation:()RTExtensions distance:entityCanBeLocationShifted:locationShifter:resultExpansionPredicates:resultFilteringPredicates:error:
{
  v105[1] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (a9)
  {
    v20 = objc_opt_class();
    entityName = [self entityName];
    v22 = [v20 locationPropertiesForEntityName:entityName];

    if (!v22)
    {
      v29 = MEMORY[0x277CCACA8];
      entityName2 = [self entityName];
      v31 = [v29 stringWithFormat:@"entityName, %@, not supported", entityName2];

      v32 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277D01448];
      v104 = *MEMORY[0x277CCA450];
      v105[0] = v31;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:&v104 count:1];
      array2 = [v32 errorWithDomain:v33 code:7 userInfo:v34];

      v35 = array2;
      v28 = 0;
      *a9 = array2;
LABEL_29:

      goto LABEL_30;
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    if (a5)
    {
      referenceFramePropertyPath = [v22 referenceFramePropertyPath];
      v25 = [referenceFramePropertyPath count];

      if (!v25)
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationProperties.referenceFramePropertyPath.count > 0", buf, 2u);
        }

        _RTErrorInvalidParameterCreate(@"locationProperties.referenceFramePropertyPath.count > 0");
        *a9 = v28 = 0;
        goto LABEL_28;
      }

      if (!v17)
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        v31 = array;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationShifter", buf, 2u);
        }

        _RTErrorInvalidParameterCreate(@"locationShifter");
        *a9 = v28 = 0;
        goto LABEL_29;
      }

      if ([v16 referenceFrame] != 2)
      {
        v94 = 0;
        v39 = [v17 shiftedLocation:v16 allowNetwork:1 error:&v94];
        v46 = v94;
        if (v46)
        {
          v47 = v46;
          *a9 = v46;

          goto LABEL_18;
        }

        v93 = 0;
        v89 = [objc_opt_class() boundingBoxPredicatesForLocation:v16 distance:v22 locationProperties:&v93 error:a2];
        v48 = v93;
        if (v48)
        {
          v26 = v48;
          *a9 = v48;

          goto LABEL_17;
        }

        v88 = v39;
        v49 = objc_opt_class();
        referenceFramePropertyPath2 = [v22 referenceFramePropertyPath];
        v51 = [v49 formatStringForPropertyPath:referenceFramePropertyPath2];

        referenceFramePropertyPath3 = [v22 referenceFramePropertyPath];
        v87 = referenceFramePropertyPath3;
        if (v51)
        {
          v53 = referenceFramePropertyPath3;
          v84 = MEMORY[0x277CCAC30];
          v86 = v51;
          v81 = [v51 stringByAppendingString:@"!= %@"];
          v54 = [v53 arrayByAddingObject:&unk_28459D0E0];
          v85 = [v84 predicateWithFormat:v81 argumentArray:v54];

          if (v85)
          {
            [v89 addObject:v85];
            v55 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v89];
            [array2 addObject:v55];

            v92 = 0;
            v56 = [objc_opt_class() boundingBoxPredicatesForLocation:v88 distance:v22 locationProperties:&v92 error:a2];
            v57 = v92;
            if (!v57)
            {
              v80 = v56;
              v82 = MEMORY[0x277CCAC30];
              v70 = [v86 stringByAppendingString:@"== %@"];
              v71 = [v87 arrayByAddingObject:&unk_28459D0E0];
              v83 = [v82 predicateWithFormat:v70 argumentArray:v71];

              if (v83)
              {
                v72 = v80;
                [v80 addObject:v83];
                v73 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v80];
                [array2 addObject:v73];
                v74 = v73;
                v75 = v83;
              }

              else
              {
                v79 = MEMORY[0x277CCA9B8];
                v76 = *MEMORY[0x277D01448];
                v98 = *MEMORY[0x277CCA450];
                v99 = @"chinaShiftedPredicate is nil";
                v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
                v74 = [v79 errorWithDomain:v76 code:0 userInfo:v77];

                v78 = v74;
                *a9 = v74;
                v72 = v80;
                v75 = 0;
              }

              v31 = array;
              if (!v75)
              {
                v28 = 0;
                goto LABEL_29;
              }

              goto LABEL_20;
            }

            v58 = v57;
            *a9 = v57;
          }

          else
          {
            v65 = MEMORY[0x277CCA9B8];
            v66 = *MEMORY[0x277D01448];
            v100 = *MEMORY[0x277CCA450];
            v101 = @"notChinaShiftedPredicate is nil";
            v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
            v68 = [v65 errorWithDomain:v66 code:0 userInfo:v67];

            v69 = v68;
            *a9 = v68;
          }

          v64 = v86;
        }

        else
        {
          v59 = MEMORY[0x277CCA9B8];
          v60 = *MEMORY[0x277D01448];
          v102 = *MEMORY[0x277CCA450];
          v103 = @"referenceFrameFormatString is nil";
          v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v62 = [v59 errorWithDomain:v60 code:0 userInfo:v61];

          v63 = v62;
          *a9 = v62;

          v64 = v87;
        }

        goto LABEL_18;
      }

      v91 = 0;
      v26 = [objc_opt_class() boundingBoxPredicatesForLocation:v16 distance:v22 locationProperties:&v91 error:a2 + 1000.0];
      v27 = v91;
    }

    else
    {
      referenceFrame = [v16 referenceFrame];
      v37 = objc_opt_class();
      if (referenceFrame == 2)
      {
        v95 = 0;
        v26 = [v37 boundingBoxPredicatesForLocation:v16 distance:v22 locationProperties:&v95 error:a2 + 1000.0];
        v27 = v95;
      }

      else
      {
        v96 = 0;
        v26 = [v37 boundingBoxPredicatesForLocation:v16 distance:v22 locationProperties:&v96 error:a2];
        v27 = v96;
      }
    }

    v38 = v27;
    if (v38)
    {
      v39 = v38;
      *a9 = v38;
LABEL_17:

LABEL_18:
      v28 = 0;
LABEL_28:
      v31 = array;
      goto LABEL_29;
    }

    v40 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v26];
    [array2 addObject:v40];

    v31 = array;
LABEL_20:
    if (v18)
    {
      [array2 addObjectsFromArray:v18];
    }

    v41 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:array2];
    [v31 addObject:v41];

    if (v19)
    {
      [v31 addObjectsFromArray:v19];
    }

    v42 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v31];
    [self setPredicate:v42];

    v28 = 1;
    goto LABEL_29;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v28 = 0;
LABEL_30:

  return v28;
}

@end