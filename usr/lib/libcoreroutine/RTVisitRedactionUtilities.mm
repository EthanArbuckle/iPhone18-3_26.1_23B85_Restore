@interface RTVisitRedactionUtilities
+ (BOOL)shouldRedactAllVisitsForCurrentRegion;
+ (id)obfuscatedVisitDateIntervalForEntryDate:(id)date previousObfuscatedVisitEntryDate:(id)entryDate;
+ (id)redactVisits:(id)visits authorizedLocations:(id)locations bluePOICategoryDenylist:(id)denylist;
+ (id)visitStartDateRangeFromObfuscatedStartDate:(id)date;
@end

@implementation RTVisitRedactionUtilities

+ (BOOL)shouldRedactAllVisitsForCurrentRegion
{
  v20 = *MEMORY[0x277D85DE8];
  currentEstimates = [MEMORY[0x277D443A8] currentEstimates];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = currentEstimates;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "current estimates, %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = currentEstimates;
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

        countryCode = [*(*(&v13 + 1) + 8 * i) countryCode];
        v10 = [countryCode isEqual:@"CN"];

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

+ (id)redactVisits:(id)visits authorizedLocations:(id)locations bluePOICategoryDenylist:(id)denylist
{
  v110 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  locationsCopy = locations;
  denylistCopy = denylist;
  if (!visitsCopy)
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
  v12 = locationsCopy;
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

        identifier = [*(*(&v100 + 1) + 8 * i) identifier];
        [v11 addObject:identifier];
      }

      v14 = [v12 countByEnumeratingWithState:&v100 objects:v109 count:16];
    }

    while (v14);
  }

  v82 = v12;

  v18 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v18 setDay:-28];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v81 = v18;
  v92 = [currentCalendar dateByAddingComponents:v18 toDate:date options:0];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = visitsCopy;
  v21 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v97;
    v93 = denylistCopy;
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
        placeInference = [v25 placeInference];
        if ([placeInference userType] == 1)
        {
          goto LABEL_20;
        }

        placeInference2 = [v25 placeInference];
        if ([placeInference2 userType] == 2)
        {

LABEL_20:
LABEL_21:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v28 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              identifier2 = [v25 identifier];
              placeInference3 = [v25 placeInference];
              userType = [placeInference3 userType];
              *buf = 138412546;
              v105 = identifier2;
              v106 = 2048;
              v107 = userType;
              _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "redacting visit, %@, due to userType, %ld", buf, 0x16u);
            }
          }

          visitsRedactedForPlaceType = [(RTVisitRedactionDetails *)v95 visitsRedactedForPlaceType];
LABEL_26:
          lastObject = visitsRedactedForPlaceType;
          [visitsRedactedForPlaceType addObject:v25];
          goto LABEL_27;
        }

        placeInference4 = [v25 placeInference];
        userType2 = [placeInference4 userType];

        if (userType2 == 3)
        {
          goto LABEL_21;
        }

        placeInference5 = [v25 placeInference];
        mapItem = [placeInference5 mapItem];
        categoryMUID = [mapItem categoryMUID];
        v39 = [denylistCopy containsObject:categoryMUID];

        if (v39)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              identifier3 = [v25 identifier];
              placeInference6 = [v25 placeInference];
              mapItem2 = [placeInference6 mapItem];
              categoryMUID2 = [mapItem2 categoryMUID];
              unsignedLongValue = [categoryMUID2 unsignedLongValue];
              *buf = 138412546;
              v105 = identifier3;
              v106 = 2048;
              v107 = unsignedLongValue;
              _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "redacting visit, %@, due to categoryMUID, %ld", buf, 0x16u);

              denylistCopy = v93;
            }
          }

          visitsRedactedForPlaceType = [(RTVisitRedactionDetails *)v95 visitsRedactedForCategory];
          goto LABEL_26;
        }

        placeInference7 = [v25 placeInference];
        loiIdentifier = [placeInference7 loiIdentifier];
        v48 = [v11 containsObject:loiIdentifier];

        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v49 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              identifier4 = [v25 identifier];
              placeInference8 = [v25 placeInference];
              loiIdentifier2 = [placeInference8 loiIdentifier];
              *buf = 138412546;
              v105 = identifier4;
              v106 = 2112;
              v107 = loiIdentifier2;
              _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "redacting visit, %@, due to AuthorizedLocation, identifier, %@", buf, 0x16u);
            }
          }

          visitsRedactedForPlaceType = [(RTVisitRedactionDetails *)v95 visitsRedactedForAuthorizedLocation];
          goto LABEL_26;
        }

        date2 = [v25 date];
        v54 = [date2 compare:v92];

        if (v54 == -1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v65 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              identifier5 = [v25 identifier];
              date3 = [v25 date];
              *buf = 138412546;
              v105 = identifier5;
              v106 = 2112;
              v107 = date3;
              _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "redacting visit, %@, due to age, date, %@", buf, 0x16u);
            }
          }

          visitsRedactedForPlaceType = [(RTVisitRedactionDetails *)v95 visitsRedactedForAge];
          goto LABEL_26;
        }

        placeInference9 = [v25 placeInference];
        mapItem3 = [placeInference9 mapItem];
        address = [mapItem3 address];
        iso3166CountryCode = [address iso3166CountryCode];
        v59 = [iso3166CountryCode isEqual:@"CN"];

        if (v59)
        {
          denylistCopy = v93;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v60 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              identifier6 = [v25 identifier];
              placeInference10 = [v25 placeInference];
              mapItem4 = [placeInference10 mapItem];
              address2 = [mapItem4 address];
              iso3166CountryCode2 = [address2 iso3166CountryCode];
              *buf = 138412546;
              v105 = identifier6;
              v106 = 2112;
              v107 = iso3166CountryCode2;
              _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_INFO, "redacting visit, %@, due to country code, %@", buf, 0x16u);

              denylistCopy = v93;
            }
          }

          visitsRedactedForPlaceType = [(RTVisitRedactionDetails *)v95 visitsRedactedForRegion];
          goto LABEL_26;
        }

        lastObject = [v89 lastObject];
        entry = [v25 entry];
        entry2 = [lastObject entry];
        v70 = [self obfuscatedVisitDateIntervalForEntryDate:entry previousObfuscatedVisitEntryDate:entry2];

        v88 = objc_alloc(MEMORY[0x277D01428]);
        date4 = [v25 date];
        type = [v25 type];
        location = [v25 location];
        startDate = [v70 startDate];
        endDate = [v70 endDate];
        dataPointCount = [v25 dataPointCount];
        [v25 confidence];
        v74 = v73;
        placeInference11 = [v25 placeInference];
        source = [v25 source];
        identifier7 = [v25 identifier];
        v77 = [v88 initWithDate:date4 type:type location:location entry:startDate exit:endDate dataPointCount:dataPointCount confidence:v74 placeInference:placeInference11 source:source identifier:identifier7];

        [v89 addObject:v77];
        denylistCopy = v93;
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

+ (id)obfuscatedVisitDateIntervalForEntryDate:(id)date previousObfuscatedVisitEntryDate:(id)entryDate
{
  v36 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  entryDateCopy = entryDate;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar components:60 fromDate:dateCopy];
  hour = [v9 hour];
  if (hour >= 0)
  {
    v11 = hour;
  }

  else
  {
    v11 = hour + 3;
  }

  [v9 setHour:v11 & 0xFFFFFFFFFFFFFFFCLL];
  [v9 setMinute:0];
  [v9 setSecond:0];
  v12 = [currentCalendar dateFromComponents:v9];
  if (entryDateCopy)
  {
    aSelector = a2;
    v13 = [currentCalendar components:60 fromDate:entryDateCopy];
    hour2 = [v13 hour];
    if (hour2 >= 0)
    {
      v15 = hour2;
    }

    else
    {
      v15 = hour2 + 3;
    }

    v16 = [v13 day];
    if (v16 == [v9 day] && (v17 = objc_msgSend(v13, "month"), v17 == objc_msgSend(v9, "month")) && (v18 = objc_msgSend(v13, "year"), v18 == objc_msgSend(v9, "year")) && v11 >> 2 == v15 >> 2)
    {
      v19 = [entryDateCopy dateByAddingUnit:64 value:2];

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
          v33 = dateCopy;
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

+ (id)visitStartDateRangeFromObfuscatedStartDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:60 fromDate:dateCopy];

  hour = [v6 hour];
  v8 = hour + 3;
  if (hour >= 0)
  {
    v8 = hour;
  }

  [v6 setHour:v8 & 0xFFFFFFFFFFFFFFFCLL];
  [v6 setMinute:0];
  [v6 setSecond:0];
  v9 = [currentCalendar dateFromComponents:v6];
  v10 = [v9 dateByAddingTimeInterval:14400.0];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v10];

  return v11;
}

@end