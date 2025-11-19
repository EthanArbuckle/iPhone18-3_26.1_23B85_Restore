@interface RTVisitRedactionUtilities
+ (BOOL)shouldRedactAllVisitsForCurrentRegion;
+ (id)obfuscatedVisitDateIntervalForEntryDate:(id)a3 previousObfuscatedVisitEntryDate:(id)a4;
+ (id)redactVisits:(id)a3 authorizedLocations:(id)a4 bluePOICategoryDenylist:(id)a5;
+ (id)visitStartDateRangeFromObfuscatedStartDate:(id)a3;
@end

@implementation RTVisitRedactionUtilities

+ (BOOL)shouldRedactAllVisitsForCurrentRegion
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D443A8] currentEstimates];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v2;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "current estimates, %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) countryCode];
        v10 = [v9 isEqual:@"CN"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (id)redactVisits:(id)a3 authorizedLocations:(id)a4 bluePOICategoryDenylist:(id)a5
{
  v110 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v105 = "+[RTVisitRedactionUtilities redactVisits:authorizedLocations:bluePOICategoryDenylist:]";
      v106 = 1024;
      LODWORD(v107) = 94;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: consolidatedVisits (in %s:%d)", buf, 0x12u);
    }
  }

  v95 = objc_alloc_init(RTVisitRedactionDetails);
  v89 = objc_opt_new();
  v11 = objc_opt_new();
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v100 objects:v109 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v101;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v101 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v100 + 1) + 8 * i) identifier];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v100 objects:v109 count:16];
    }

    while (v14);
  }

  v82 = v12;

  v18 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v18 setDay:-28];
  v19 = [MEMORY[0x277CBEA80] currentCalendar];
  v20 = [MEMORY[0x277CBEAA8] date];
  v81 = v18;
  v92 = [v19 dateByAddingComponents:v18 toDate:v20 options:0];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v7;
  v21 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v97;
    v93 = v9;
    do
    {
      v24 = 0;
      do
      {
        if (*v97 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v96 + 1) + 8 * v24);
        v26 = [v25 placeInference];
        if ([v26 userType] == 1)
        {
          goto LABEL_20;
        }

        v27 = [v25 placeInference];
        if ([v27 userType] == 2)
        {

LABEL_20:
LABEL_21:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v28 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [v25 identifier];
              v30 = [v25 placeInference];
              v31 = [v30 userType];
              *buf = 138412546;
              v105 = v29;
              v106 = 2048;
              v107 = v31;
              _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "redacting visit, %@, due to userType, %ld", buf, 0x16u);
            }
          }

          v32 = [(RTVisitRedactionDetails *)v95 visitsRedactedForPlaceType];
LABEL_26:
          v33 = v32;
          [v32 addObject:v25];
          goto LABEL_27;
        }

        v34 = [v25 placeInference];
        v35 = [v34 userType];

        if (v35 == 3)
        {
          goto LABEL_21;
        }

        v36 = [v25 placeInference];
        v37 = [v36 mapItem];
        v38 = [v37 categoryMUID];
        v39 = [v9 containsObject:v38];

        if (v39)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v41 = [v25 identifier];
              v42 = [v25 placeInference];
              v43 = [v42 mapItem];
              v44 = [v43 categoryMUID];
              v45 = [v44 unsignedLongValue];
              *buf = 138412546;
              v105 = v41;
              v106 = 2048;
              v107 = v45;
              _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "redacting visit, %@, due to categoryMUID, %ld", buf, 0x16u);

              v9 = v93;
            }
          }

          v32 = [(RTVisitRedactionDetails *)v95 visitsRedactedForCategory];
          goto LABEL_26;
        }

        v46 = [v25 placeInference];
        v47 = [v46 loiIdentifier];
        v48 = [v11 containsObject:v47];

        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v49 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = [v25 identifier];
              v51 = [v25 placeInference];
              v52 = [v51 loiIdentifier];
              *buf = 138412546;
              v105 = v50;
              v106 = 2112;
              v107 = v52;
              _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "redacting visit, %@, due to AuthorizedLocation, identifier, %@", buf, 0x16u);
            }
          }

          v32 = [(RTVisitRedactionDetails *)v95 visitsRedactedForAuthorizedLocation];
          goto LABEL_26;
        }

        v53 = [v25 date];
        v54 = [v53 compare:v92];

        if (v54 == -1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v65 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = [v25 identifier];
              v67 = [v25 date];
              *buf = 138412546;
              v105 = v66;
              v106 = 2112;
              v107 = v67;
              _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "redacting visit, %@, due to age, date, %@", buf, 0x16u);
            }
          }

          v32 = [(RTVisitRedactionDetails *)v95 visitsRedactedForAge];
          goto LABEL_26;
        }

        v55 = [v25 placeInference];
        v56 = [v55 mapItem];
        v57 = [v56 address];
        v58 = [v57 iso3166CountryCode];
        v59 = [v58 isEqual:@"CN"];

        if (v59)
        {
          v9 = v93;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v60 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = [v25 identifier];
              v90 = [v25 placeInference];
              v62 = [v90 mapItem];
              v63 = [v62 address];
              v64 = [v63 iso3166CountryCode];
              *buf = 138412546;
              v105 = v61;
              v106 = 2112;
              v107 = v64;
              _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_INFO, "redacting visit, %@, due to country code, %@", buf, 0x16u);

              v9 = v93;
            }
          }

          v32 = [(RTVisitRedactionDetails *)v95 visitsRedactedForRegion];
          goto LABEL_26;
        }

        v33 = [v89 lastObject];
        v68 = [v25 entry];
        v69 = [v33 entry];
        v70 = [a1 obfuscatedVisitDateIntervalForEntryDate:v68 previousObfuscatedVisitEntryDate:v69];

        v88 = objc_alloc(MEMORY[0x277D01428]);
        v91 = [v25 date];
        v87 = [v25 type];
        v71 = [v25 location];
        v86 = [v70 startDate];
        v72 = [v70 endDate];
        v85 = [v25 dataPointCount];
        [v25 confidence];
        v74 = v73;
        v84 = [v25 placeInference];
        v75 = [v25 source];
        v76 = [v25 identifier];
        v77 = [v88 initWithDate:v91 type:v87 location:v71 entry:v86 exit:v72 dataPointCount:v85 confidence:v74 placeInference:v84 source:v75 identifier:v76];

        [v89 addObject:v77];
        v9 = v93;
LABEL_27:

        ++v24;
      }

      while (v22 != v24);
      v78 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
      v22 = v78;
    }

    while (v78);
  }

  v79 = [[RTVisitConsolidatorResult alloc] initWithVisits:v89 redactionDetails:v95];

  return v79;
}

+ (id)obfuscatedVisitDateIntervalForEntryDate:(id)a3 previousObfuscatedVisitEntryDate:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 components:60 fromDate:v6];
  v10 = [v9 hour];
  if (v10 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 3;
  }

  [v9 setHour:v11 & 0xFFFFFFFFFFFFFFFCLL];
  [v9 setMinute:0];
  [v9 setSecond:0];
  v12 = [v8 dateFromComponents:v9];
  if (v7)
  {
    aSelector = a2;
    v13 = [v8 components:60 fromDate:v7];
    v14 = [v13 hour];
    if (v14 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 3;
    }

    v16 = [v13 day];
    if (v16 == [v9 day] && (v17 = objc_msgSend(v13, "month"), v17 == objc_msgSend(v9, "month")) && (v18 = objc_msgSend(v13, "year"), v18 == objc_msgSend(v9, "year")) && v11 >> 2 == v15 >> 2)
    {
      v19 = [v7 dateByAddingUnit:64 value:2];

      if (([v19 hour] & 0xFFFFFFFFFFFFFFFCLL) != (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = NSStringFromSelector(aSelector);
          *buf = 138413058;
          v29 = v25;
          v30 = 2112;
          v31 = v26;
          v32 = 2112;
          v33 = v6;
          v34 = 2112;
          v35 = v19;
          _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "%@, %@, obfuscated visit start date was pushed out to the next time bucket - this should not happen; original start date, %@, obfuscated start date, %@", buf, 0x2Au);
        }
      }
    }

    else
    {
      v19 = v12;
    }

    v12 = v19;
  }

  v21 = [v12 dateByAddingUnit:64 value:1];
  v22 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v21];

  return v22;
}

+ (id)visitStartDateRangeFromObfuscatedStartDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:60 fromDate:v4];

  v7 = [v6 hour];
  v8 = v7 + 3;
  if (v7 >= 0)
  {
    v8 = v7;
  }

  [v6 setHour:v8 & 0xFFFFFFFFFFFFFFFCLL];
  [v6 setMinute:0];
  [v6 setSecond:0];
  v9 = [v5 dateFromComponents:v6];
  v10 = [v9 dateByAddingTimeInterval:14400.0];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v10];

  return v11;
}

@end