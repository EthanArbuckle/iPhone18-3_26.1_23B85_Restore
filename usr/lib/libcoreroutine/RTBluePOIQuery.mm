@interface RTBluePOIQuery
- (BOOL)isEqual:(id)equal;
- (RTBluePOIQuery)initWithCoder:(id)coder;
- (RTBluePOIQuery)initWithDictionary:(id)dictionary;
- (RTBluePOIQuery)initWithFirstJSONDictionary:(id)dictionary;
- (RTBluePOIQuery)initWithIdentifier:(id)identifier accessPoints:(id)points locations:(id)locations referenceLocation:(id)location settledState:(unint64_t)state selectedToLabel:(BOOL)label date:(id)date;
- (id)description;
- (id)getCLLocations;
- (id)outputToDictionary;
- (id)outputToFirstJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTBluePOIQuery

- (RTBluePOIQuery)initWithIdentifier:(id)identifier accessPoints:(id)points locations:(id)locations referenceLocation:(id)location settledState:(unint64_t)state selectedToLabel:(BOOL)label date:(id)date
{
  identifierCopy = identifier;
  pointsCopy = points;
  locationsCopy = locations;
  locationCopy = location;
  dateCopy = date;
  v20 = dateCopy;
  if (!identifierCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: identifier";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v34, buf, 2u);
    goto LABEL_14;
  }

  if (state >= 3)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: RTScenarioTriggerSettledStateIsValid(settledState)";
    goto LABEL_13;
  }

  if (!dateCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v34 = "Invalid parameter not satisfying: date";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v36.receiver = self;
  v36.super_class = RTBluePOIQuery;
  v21 = [(RTBluePOIQuery *)&v36 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [pointsCopy copy];
    accessPoints = v21->_accessPoints;
    v21->_accessPoints = v24;

    v26 = [locationsCopy copy];
    locations = v21->_locations;
    v21->_locations = v26;

    v28 = [locationCopy copy];
    referenceLocation = v21->_referenceLocation;
    v21->_referenceLocation = v28;

    v21->_settledState = state;
    v21->_selectedToLabel = label;
    v30 = [v20 copy];
    date = v21->_date;
    v21->_date = v30;
  }

  self = v21;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v5 = [(NSArray *)self->_accessPoints count];
  v6 = [(NSArray *)self->_locations count];
  referenceLocation = self->_referenceLocation;
  v8 = [MEMORY[0x277D01290] scenarioTriggerSettledStateToString:self->_settledState];
  if (self->_selectedToLabel)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  stringFromDate = [(NSDate *)self->_date stringFromDate];
  v11 = [v3 stringWithFormat:@"identifier, %@, number of access points, %lu, number of locations, %lu, referenceLocation, %@, settled state, %@, selected to label, %@, date, %@", identifier, v5, v6, referenceLocation, v8, v9, stringFromDate];

  return v11;
}

- (id)getCLLocations
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_locations, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_locations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277CE41F8]);
        v11 = [v10 initWithRTLocation:{v9, v13}];
        [v3 addObject:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (RTBluePOIQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"accessPoints"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"locations"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settledState"];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedToLabel"];
  bOOLValue = [v17 BOOLValue];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v20 = [(RTBluePOIQuery *)self initWithIdentifier:v5 accessPoints:v9 locations:v13 referenceLocation:v14 settledState:unsignedIntegerValue selectedToLabel:bOOLValue date:v19];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_accessPoints forKey:@"accessPoints"];
  [coderCopy encodeObject:self->_locations forKey:@"locations"];
  [coderCopy encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_settledState];
  [coderCopy encodeObject:v5 forKey:@"settledState"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_selectedToLabel];
  [coderCopy encodeObject:v6 forKey:@"selectedToLabel"];

  [coderCopy encodeObject:self->_date forKey:@"date"];
}

- (RTBluePOIQuery)initWithDictionary:(id)dictionary
{
  v75 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v51 = [dictionaryCopy valueForKey:@"identifier"];
  v52 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v51];
  v53 = dictionaryCopy;
  v4 = [dictionaryCopy valueForKey:@"locations"];
  array = [MEMORY[0x277CBEB18] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v63 objects:v74 count:16];
  v8 = 0x277D01000uLL;
  v54 = array;
  v56 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v64;
    do
    {
      v11 = 0;
      do
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v63 + 1) + 8 * v11);
        v13 = [objc_alloc(MEMORY[0x277D01160]) initWithDictionary:v12];
        if (v13)
        {
          [array addObject:v13];
        }

        else
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = objc_opt_class();
            v16 = NSStringFromClass(v15);
            v17 = NSStringFromSelector(a2);
            *buf = 138412802;
            v69 = v16;
            v70 = 2112;
            v71 = v17;
            v72 = 2112;
            v73 = v12;
            _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, %@, unable to instantiate location from dictionary, %@", buf, 0x20u);

            v6 = v56;
            array = v54;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v9);
  }

  v18 = [v53 valueForKey:@"accessPoints"];
  array2 = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v59 objects:v67 count:16];
  v55 = v20;
  if (v21)
  {
    v22 = v21;
    v23 = *v60;
    do
    {
      v24 = 0;
      do
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v59 + 1) + 8 * v24);
        v26 = [objc_alloc(MEMORY[0x277D01430]) initWithDictionary:v25];
        if (v26)
        {
          [array2 addObject:v26];
        }

        else
        {
          v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = NSStringFromSelector(a2);
            *buf = 138412802;
            v69 = v29;
            v70 = 2112;
            v71 = v30;
            v72 = 2112;
            v73 = v25;
            _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, unable to instantiate WiFi access point from dictionary, %@", buf, 0x20u);

            v20 = v55;
            v8 = 0x277D01000;
          }
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v22);
  }

  v31 = v53;
  v32 = [v53 valueForKey:@"referenceLocation"];
  v33 = [objc_alloc(*(v8 + 352)) initWithDictionary:v32];
  v34 = v52;
  if (!v33)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = NSStringFromSelector(a2);
      *buf = 138412802;
      v69 = v49;
      v70 = 2112;
      v71 = v50;
      v72 = 2112;
      v73 = v32;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, unable to instantiate reference location from dictionary, %@", buf, 0x20u);
    }

    v31 = v53;
  }

  v36 = v32;
  v37 = [v31 valueForKey:@"settledState"];
  v38 = [v31 valueForKey:@"selectedToLabel"];
  v39 = [v31 valueForKey:@"date"];
  if (v52 && [v56 count])
  {
    v40 = [v55 count];
    v41 = 0;
    if (v33 && v40 && v37 && v39)
    {
      v42 = MEMORY[0x277CBEAA8];
      [v39 doubleValue];
      v43 = [v42 dateWithTimeIntervalSince1970:?];
      unsignedIntegerValue = [v37 unsignedIntegerValue];
      bOOLValue = [v38 BOOLValue];
      v46 = unsignedIntegerValue;
      v34 = v52;
      v41 = [(RTBluePOIQuery *)self initWithIdentifier:v52 accessPoints:array2 locations:v54 referenceLocation:v33 settledState:v46 selectedToLabel:bOOLValue date:v43];

      v31 = v53;
      self = v41;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (RTBluePOIQuery)initWithFirstJSONDictionary:(id)dictionary
{
  v72 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v47 = [dictionaryCopy valueForKey:@"identifier"];
  v46 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v47];
  v48 = dictionaryCopy;
  v4 = [dictionaryCopy valueForKey:@"locations"];
  array = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
  v8 = 0x277D01000uLL;
  v50 = array;
  v51 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v59;
    do
    {
      v11 = 0;
      do
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v58 + 1) + 8 * v11);
        v13 = [objc_alloc(*(v8 + 352)) initWithFirstJSONDictionary:v12];
        if (v13)
        {
          [array addObject:v13];
        }

        else
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = objc_opt_class();
            v16 = NSStringFromClass(v15);
            v17 = NSStringFromSelector(a2);
            *buf = 138412802;
            v66 = v16;
            v67 = 2112;
            v68 = v17;
            v69 = 2112;
            v70 = v12;
            _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, %@, unable to instantiate location from dictionary, %@", buf, 0x20u);

            array = v50;
            v6 = v51;
          }

          v8 = 0x277D01000;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v9);
  }

  v18 = [v48 valueForKey:@"scans"];
  array2 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v55;
    v49 = v20;
    do
    {
      v24 = 0;
      do
      {
        if (*v55 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v54 + 1) + 8 * v24);
        v26 = [objc_alloc(MEMORY[0x277D01430]) initWithFirstJSONDictionary:v25];
        if (v26)
        {
          [array2 addObject:v26];
        }

        else
        {
          v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = NSStringFromSelector(a2);
            *buf = 138412802;
            v66 = v29;
            v67 = 2112;
            v68 = v30;
            v69 = 2112;
            v70 = v25;
            _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, unable to instantiate WiFi access point from dictionary, %@", buf, 0x20u);

            v20 = v49;
          }
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v22);
  }

  v62[0] = *MEMORY[0x277D01490];
  v31 = [v48 valueForKey:?];
  v63[0] = v31;
  v62[1] = *MEMORY[0x277D01498];
  v32 = [v48 valueForKey:?];
  v63[1] = v32;
  v62[2] = *MEMORY[0x277D01488];
  v33 = [v48 valueForKey:@"range"];
  v63[2] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];

  v35 = [objc_alloc(MEMORY[0x277D01160]) initWithFirstJSONDictionary:v34];
  if (!v35)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *buf = 138412802;
      v66 = v44;
      v67 = 2112;
      v68 = v45;
      v69 = 2112;
      v70 = v34;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%@, %@, unable to instantiate reference location from dictionary, %@", buf, 0x20u);
    }
  }

  v37 = [v48 valueForKey:@"time"];
  if (v46 && [v51 count])
  {
    v38 = [v20 count];
    v39 = 0;
    if (v35 && v38 && v37)
    {
      v40 = MEMORY[0x277CBEAA8];
      [v37 doubleValue];
      v41 = [v40 dateWithTimeIntervalSince1970:?];
      v39 = [(RTBluePOIQuery *)self initWithIdentifier:v46 accessPoints:array2 locations:v50 referenceLocation:v35 settledState:0 selectedToLabel:1 date:v41];

      self = v39;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)outputToDictionary
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  identifier = [(RTBluePOIQuery *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = MEMORY[0x277CBEB18];
  accessPoints = [(RTBluePOIQuery *)self accessPoints];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(accessPoints, "count")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  accessPoints2 = [(RTBluePOIQuery *)self accessPoints];
  v10 = [accessPoints2 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(accessPoints2);
        }

        outputToDictionary = [*(*(&v38 + 1) + 8 * i) outputToDictionary];
        [v8 addObject:outputToDictionary];
      }

      v11 = [accessPoints2 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKey:@"accessPoints"];
  v15 = MEMORY[0x277CBEB18];
  locations = [(RTBluePOIQuery *)self locations];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(locations, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  locations2 = [(RTBluePOIQuery *)self locations];
  v19 = [locations2 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(locations2);
        }

        v23 = [*(*(&v34 + 1) + 8 * j) outputToDictionaryReadableDate:1];
        [v17 addObject:v23];
      }

      v20 = [locations2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

  [v3 setObject:v17 forKey:@"locations"];
  referenceLocation = [(RTBluePOIQuery *)self referenceLocation];
  v25 = [referenceLocation outputToDictionaryReadableDate:1];
  [v3 setObject:v25 forKey:@"referenceLocation"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTBluePOIQuery settledState](self, "settledState")}];
  [v3 setObject:v26 forKey:@"settledState"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTBluePOIQuery selectedToLabel](self, "selectedToLabel")}];
  [v3 setObject:v27 forKey:@"selectedToLabel"];

  v28 = MEMORY[0x277CCABB0];
  date = [(RTBluePOIQuery *)self date];
  [date timeIntervalSince1970];
  v30 = [v28 numberWithDouble:?];
  [v3 setObject:v30 forKey:@"date"];

  date2 = [(RTBluePOIQuery *)self date];
  getFormattedDateString = [date2 getFormattedDateString];
  [v3 setObject:getFormattedDateString forKey:@"dateAsString"];

  return v3;
}

- (id)outputToFirstJSONDictionary
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  identifier = [(RTBluePOIQuery *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = MEMORY[0x277CBEB18];
  accessPoints = [(RTBluePOIQuery *)self accessPoints];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(accessPoints, "count")}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  accessPoints2 = [(RTBluePOIQuery *)self accessPoints];
  v10 = [accessPoints2 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(accessPoints2);
        }

        outputToFirstJSONDictionary = [*(*(&v41 + 1) + 8 * i) outputToFirstJSONDictionary];
        [v8 addObject:outputToFirstJSONDictionary];
      }

      v11 = [accessPoints2 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKey:@"scans"];
  v15 = MEMORY[0x277CBEB18];
  locations = [(RTBluePOIQuery *)self locations];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(locations, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  locations2 = [(RTBluePOIQuery *)self locations];
  v19 = [locations2 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(locations2);
        }

        outputToFirstJSONDictionary2 = [*(*(&v37 + 1) + 8 * j) outputToFirstJSONDictionary];
        [v17 addObject:outputToFirstJSONDictionary2];
      }

      v20 = [locations2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v20);
  }

  [v3 setObject:v17 forKey:@"locations"];
  v24 = MEMORY[0x277CCABB0];
  referenceLocation = [(RTBluePOIQuery *)self referenceLocation];
  [referenceLocation latitude];
  v26 = [v24 numberWithDouble:?];
  [v3 setObject:v26 forKey:*MEMORY[0x277D01490]];

  v27 = MEMORY[0x277CCABB0];
  referenceLocation2 = [(RTBluePOIQuery *)self referenceLocation];
  [referenceLocation2 longitude];
  v29 = [v27 numberWithDouble:?];
  [v3 setObject:v29 forKey:*MEMORY[0x277D01498]];

  v30 = MEMORY[0x277CCABB0];
  referenceLocation3 = [(RTBluePOIQuery *)self referenceLocation];
  [referenceLocation3 horizontalUncertainty];
  v32 = [v30 numberWithDouble:?];
  [v3 setObject:v32 forKey:@"range"];

  v33 = MEMORY[0x277CCABB0];
  date = [(RTBluePOIQuery *)self date];
  [date timeIntervalSince1970];
  v35 = [v33 numberWithDouble:?];
  [v3 setObject:v35 forKey:@"time"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSArray *)self->_accessPoints hash]^ v3;
  v5 = [(NSArray *)self->_locations hash];
  v6 = v4 ^ v5 ^ [(RTLocation *)self->_referenceLocation hash];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_settledState];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_selectedToLabel];
  v10 = [v9 hash];
  v11 = v10 ^ [(NSDate *)self->_date hash];

  return v8 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v47 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      accessPoints = [(RTBluePOIQuery *)self accessPoints];
      v7 = [accessPoints count];
      accessPoints2 = [(RTBluePOIQuery *)v5 accessPoints];
      v9 = [accessPoints2 count];

      if (v7 != v9)
      {
        goto LABEL_22;
      }

      accessPoints3 = [(RTBluePOIQuery *)self accessPoints];
      if (accessPoints3)
      {
        v11 = accessPoints3;
        accessPoints4 = [(RTBluePOIQuery *)v5 accessPoints];

        if (accessPoints4)
        {
          accessPoints5 = [(RTBluePOIQuery *)self accessPoints];
          v14 = [accessPoints5 count];

          if (v14)
          {
            v15 = 0;
            do
            {
              accessPoints6 = [(RTBluePOIQuery *)self accessPoints];
              v17 = [accessPoints6 objectAtIndexedSubscript:v15];

              accessPoints7 = [(RTBluePOIQuery *)v5 accessPoints];
              v19 = [accessPoints7 objectAtIndexedSubscript:v15];

              LOBYTE(accessPoints7) = [v17 isEqual:v19];
              if ((accessPoints7 & 1) == 0)
              {
                goto LABEL_22;
              }

              ++v15;
              accessPoints8 = [(RTBluePOIQuery *)self accessPoints];
              v21 = [accessPoints8 count];
            }

            while (v15 < v21);
          }
        }
      }

      locations = [(RTBluePOIQuery *)self locations];
      v23 = [locations count];
      locations2 = [(RTBluePOIQuery *)v5 locations];
      v25 = [locations2 count];

      if (v23 != v25)
      {
LABEL_22:
        v47 = 0;
LABEL_23:

        goto LABEL_24;
      }

      locations3 = [(RTBluePOIQuery *)self locations];
      if (locations3)
      {
        v27 = locations3;
        locations4 = [(RTBluePOIQuery *)v5 locations];

        if (locations4)
        {
          locations5 = [(RTBluePOIQuery *)self locations];
          v30 = [locations5 count];

          if (v30)
          {
            v31 = 0;
            do
            {
              locations6 = [(RTBluePOIQuery *)self locations];
              v33 = [locations6 objectAtIndexedSubscript:v31];

              locations7 = [(RTBluePOIQuery *)v5 locations];
              v35 = [locations7 objectAtIndexedSubscript:v31];

              LOBYTE(locations7) = [v33 isEqual:v35];
              if ((locations7 & 1) == 0)
              {
                goto LABEL_22;
              }

              ++v31;
              locations8 = [(RTBluePOIQuery *)self locations];
              v37 = [locations8 count];
            }

            while (v31 < v37);
          }
        }
      }

      identifier = [(RTBluePOIQuery *)self identifier];
      identifier2 = [(RTBluePOIQuery *)v5 identifier];
      v40 = [identifier isEqual:identifier2];

      settledState = [(RTBluePOIQuery *)self settledState];
      settledState2 = [(RTBluePOIQuery *)v5 settledState];
      referenceLocation = [(RTBluePOIQuery *)self referenceLocation];
      referenceLocation2 = [(RTBluePOIQuery *)v5 referenceLocation];
      v45 = [referenceLocation isEqual:referenceLocation2];

      if ([(RTBluePOIQuery *)self selectedToLabel]&& [(RTBluePOIQuery *)v5 selectedToLabel])
      {
        LOBYTE(v46) = 1;
      }

      else if ([(RTBluePOIQuery *)self selectedToLabel])
      {
        LOBYTE(v46) = 0;
      }

      else
      {
        v46 = ![(RTBluePOIQuery *)v5 selectedToLabel];
      }

      date = [(RTBluePOIQuery *)self date];
      if (date || ([(RTBluePOIQuery *)v5 date], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [(RTBluePOIQuery *)self date];
        v60 = v46;
        v51 = v50 = v45;
        [(RTBluePOIQuery *)v5 date];
        v52 = settledState2;
        v53 = settledState;
        v55 = v54 = v40;
        v56 = [v51 isEqualToDate:v55];

        v40 = v54;
        settledState = v53;
        settledState2 = v52;

        v45 = v50;
        LOBYTE(v46) = v60;
        if (date)
        {
LABEL_34:

          if (settledState == settledState2)
          {
            v57 = v40;
          }

          else
          {
            v57 = 0;
          }

          v47 = v57 & v45 & v46 & v56;
          goto LABEL_23;
        }
      }

      else
      {
        v59 = 0;
        v56 = 1;
      }

      goto LABEL_34;
    }

    v47 = 0;
  }

LABEL_24:

  return v47;
}

@end