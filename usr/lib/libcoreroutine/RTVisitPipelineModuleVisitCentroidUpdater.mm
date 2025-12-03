@interface RTVisitPipelineModuleVisitCentroidUpdater
- (RTVisitPipelineModuleVisitCentroidUpdater)initWithHyperParameter:(id)parameter locationManager:(id)manager distanceCalculator:(id)calculator;
- (id)_updateHorizontalUncertainty:(id)uncertainty;
- (id)_updateVisitCentroidBasedOnFilteredLocations:(id)locations maxHorizontalAccuracy:(double)accuracy;
- (id)_updateVisitCentroidBasedOnMode:(id)mode;
- (id)modeWithReferenceLocation:(id)location;
- (id)process:(id)process;
- (unint64_t)modeBinIndex;
- (void)dealloc;
- (void)updateCountFromNorthing:(double)northing easting:(double)easting;
@end

@implementation RTVisitPipelineModuleVisitCentroidUpdater

- (RTVisitPipelineModuleVisitCentroidUpdater)initWithHyperParameter:(id)parameter locationManager:(id)manager distanceCalculator:(id)calculator
{
  parameterCopy = parameter;
  managerCopy = manager;
  calculatorCopy = calculator;
  v12 = calculatorCopy;
  if (!parameterCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: hyperParameter";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_17;
  }

  if (!managerCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_16;
  }

  if (!calculatorCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_16;
  }

  v21.receiver = self;
  v21.super_class = RTVisitPipelineModuleVisitCentroidUpdater;
  v13 = [(RTVisitPipelineModuleVisitCentroidUpdater *)&v21 init];
  self = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_hyperParameter, parameter);
    maxNumOfBins = [parameterCopy maxNumOfBins];
    self->_binCountsSize = 4 * maxNumOfBins * [parameterCopy maxNumOfBins];
    objc_storeStrong(&self->_distanceCalculator, calculator);
    v15 = malloc_type_calloc(4 * self->_binCountsSize, 1uLL, 0x2CC1A462uLL);
    self->_binCounts = v15;
    if (v15)
    {
      maxNumOfBins2 = [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
      self->_invalidBinIndex = 4 * [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins]* maxNumOfBins2;
      objc_storeStrong(&self->_locationManager, manager);
      goto LABEL_7;
    }

    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: _binCounts";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

LABEL_7:
  self = self;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (void)dealloc
{
  binCounts = self->_binCounts;
  if (binCounts)
  {
    free(binCounts);
  }

  v4.receiver = self;
  v4.super_class = RTVisitPipelineModuleVisitCentroidUpdater;
  [(RTVisitPipelineModuleVisitCentroidUpdater *)&v4 dealloc];
}

- (void)updateCountFromNorthing:(double)northing easting:(double)easting
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_binCounts)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _binCounts", &v14, 2u);
    }

    goto LABEL_12;
  }

  maxNumOfBins = [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
  v8 = (northing / [(RTVisitHyperParameter *)self->_hyperParameter binSize]+ 0.5) + maxNumOfBins;
  binSize = [(RTVisitHyperParameter *)self->_hyperParameter binSize];
  if ((v8 & 0x80000000) == 0)
  {
    v10 = 2 * maxNumOfBins;
    if (2 * maxNumOfBins > v8)
    {
      v11 = (easting / binSize + 0.5) + maxNumOfBins;
      if ((v11 & 0x80000000) == 0 && v10 > v11)
      {
        maxNumOfBins2 = [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
        ++self->_binCounts[v11 + 2 * v8 * maxNumOfBins2];
        return;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      northingCopy = northing;
      v16 = 2048;
      eastingCopy = easting;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "out of range location detected, northing=%f, easting=%f", &v14, 0x16u);
    }

LABEL_12:
  }
}

- (unint64_t)modeBinIndex
{
  binCounts = self->_binCounts;
  if (binCounts)
  {
    result = self->_invalidBinIndex;
    binCountsSize = self->_binCountsSize;
    if (binCountsSize)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = binCounts[v6];
        if (v7 < v8)
        {
          result = v6;
        }

        if (v7 <= v8)
        {
          v7 = binCounts[v6];
        }

        ++v6;
      }

      while (binCountsSize != v6);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _binCounts", v10, 2u);
    }

    return self->_invalidBinIndex;
  }

  return result;
}

- (id)modeWithReferenceLocation:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (!locationCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v9 = "Invalid parameter not satisfying: referenceLocation";
LABEL_24:
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, v9, buf, 2u);
    goto LABEL_13;
  }

  modeBinIndex = [(RTVisitPipelineModuleVisitCentroidUpdater *)self modeBinIndex];
  if (modeBinIndex == self->_invalidBinIndex)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_14:
      v22 = 0;
      goto LABEL_15;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, invalid bin index for the mode", buf, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = modeBinIndex;
  [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
  if (v10 >= self->_invalidBinIndex)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v9 = "Invalid parameter not satisfying: modeBinIndex < _invalidBinIndex";
    goto LABEL_24;
  }

  [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
  [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
  [(RTVisitHyperParameter *)self->_hyperParameter binSize];
  [(RTVisitHyperParameter *)self->_hyperParameter binSize];
  v26 = 0.0;
  *buf = 0;
  [locationCopy latitude];
  [locationCopy longitude];
  if ((RTCommonConvertLocalFrameToGeodetic() & 1) == 0)
  {
    date = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      v22 = 0;
      goto LABEL_22;
    }

    *v25 = 0;
    v24 = "Invalid parameter not satisfying: result";
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, date, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    goto LABEL_21;
  }

  RTCommonIsCoordinateValid();
  if (v11 == 0.0)
  {
    date = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *v25 = 0;
    v24 = "Invalid parameter not satisfying: RTCommonIsCoordinateValid(latitude, longitude)";
    goto LABEL_26;
  }

  v12 = objc_alloc(MEMORY[0x277D01160]);
  [locationCopy horizontalUncertainty];
  v14 = v13;
  [locationCopy altitude];
  v16 = v15;
  [locationCopy verticalUncertainty];
  v18 = v17;
  date = [locationCopy date];
  referenceFrame = [locationCopy referenceFrame];
  [locationCopy speed];
  v22 = [v12 initWithLatitude:date longitude:referenceFrame horizontalUncertainty:objc_msgSend(locationCopy altitude:"sourceAccuracy") verticalUncertainty:*buf date:v26 referenceFrame:v14 speed:v16 sourceAccuracy:{v18, v21}];
LABEL_22:

LABEL_15:

  return v22;
}

- (id)_updateVisitCentroidBasedOnMode:(id)mode
{
  v59 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  visit = [modeCopy visit];

  if (!visit)
  {
    v37 = 0;
    goto LABEL_24;
  }

  visit2 = [modeCopy visit];
  location = [visit2 location];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  points = [modeCopy points];
  locations = [points locations];

  v11 = [locations countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v50;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(locations);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        *buf = 0;
        [location latitude];
        [location longitude];
        [v15 latitude];
        [v15 longitude];
        if (RTCommonConvertGeodeticToLocalFrame())
        {
          [(RTVisitPipelineModuleVisitCentroidUpdater *)self updateCountFromNorthing:*buf easting:0.0];
        }
      }

      v12 = [locations countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v12);
  }

  v16 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self modeWithReferenceLocation:location];
  if (v16)
  {
    aSelector = a2;
    v17 = objc_alloc(MEMORY[0x277D01428]);
    visit3 = [modeCopy visit];
    date = [visit3 date];
    visit4 = [modeCopy visit];
    type = [visit4 type];
    visit5 = [modeCopy visit];
    entry = [visit5 entry];
    visit6 = [modeCopy visit];
    exit = [visit6 exit];
    visit7 = [modeCopy visit];
    dataPointCount = [visit7 dataPointCount];
    visit8 = [modeCopy visit];
    [visit8 confidence];
    v23 = v22;
    visit9 = [modeCopy visit];
    placeInference = [visit9 placeInference];
    v26 = type;
    v48 = v16;
    v27 = [v17 initWithDate:date type:v26 location:v16 entry:entry exit:exit dataPointCount:dataPointCount confidence:v23 placeInference:placeInference];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = NSStringFromSelector(aSelector);
        visit10 = [modeCopy visit];
        location2 = [visit10 location];
        *buf = 138412803;
        *&buf[4] = v29;
        v54 = 2117;
        v55 = location2;
        v56 = 2117;
        v57 = v48;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, visit centroid, %{sensitive}@, updated visit centroid, %{sensitive}@", buf, 0x20u);
      }
    }

    v32 = [RTVisitCluster alloc];
    v33 = [RTVisitLocationPoints alloc];
    points2 = [modeCopy points];
    locations2 = [points2 locations];
    v36 = [(RTVisitLocationPoints *)v33 initWithLocations:locations2];
    v37 = [(RTVisitCluster *)v32 initWithPoints:v36 visit:v27];

    v16 = v48;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v37 = 0;
      goto LABEL_23;
    }

    v27 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v38 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v38;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@， fail to update centroid", buf, 0xCu);
    }

    v37 = 0;
  }

LABEL_23:
LABEL_24:

  return v37;
}

- (id)_updateHorizontalUncertainty:(id)uncertainty
{
  v129 = *MEMORY[0x277D85DE8];
  uncertaintyCopy = uncertainty;
  visit = [uncertaintyCopy visit];

  if (!visit)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster.visit", buf, 2u);
    }

    goto LABEL_14;
  }

  visit2 = [uncertaintyCopy visit];
  entry = [visit2 entry];
  if (!entry)
  {

    goto LABEL_11;
  }

  v8 = entry;
  visit3 = [uncertaintyCopy visit];
  exit = [visit3 exit];

  if (!exit)
  {
LABEL_11:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = 0;
      goto LABEL_58;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v22 = NSStringFromSelector(a2);
      visit4 = [uncertaintyCopy visit];
      *buf = 138412547;
      v119 = v22;
      v120 = 2117;
      v121 = visit4;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, incomplete visit, %{sensitive}@", buf, 0x16u);
    }

LABEL_14:
    v24 = 0;
    goto LABEL_57;
  }

  v11 = MEMORY[0x277CBEAA8];
  visit5 = [uncertaintyCopy visit];
  entry2 = [visit5 entry];
  v14 = [v11 dateWithTimeInterval:entry2 sinceDate:900.0];

  v15 = MEMORY[0x277CBEAA8];
  visit6 = [uncertaintyCopy visit];
  exit2 = [visit6 exit];
  v18 = [v15 dateWithTimeInterval:exit2 sinceDate:-900.0];

  v112 = v18;
  if ([v18 isBeforeDate:v14])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = 0;
      goto LABEL_56;
    }

    location = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      visit7 = [uncertaintyCopy visit];
      *buf = 138412547;
      v119 = v20;
      v120 = 2117;
      v121 = visit7;
      _os_log_impl(&dword_2304B3000, location, OS_LOG_TYPE_INFO, "%@, skip horizontal uncertainty update for visit, %{sensitive}@, due to short duration", buf, 0x16u);
    }

LABEL_48:
    v24 = 0;
    goto LABEL_55;
  }

  aSelector = a2;
  visit8 = [uncertaintyCopy visit];
  location = [visit8 location];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  points = [uncertaintyCopy points];
  locations = [points locations];

  v28 = [locations countByEnumeratingWithState:&v114 objects:v128 count:16];
  if (!v28)
  {

    v48 = 0;
LABEL_44:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v119 = v50;
        v120 = 2048;
        v121 = v48;
        _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, skip horizontal uncertainty update due to small number of locations, %lu", buf, 0x16u);
      }

      v24 = 0;
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  v29 = v28;
  v102 = uncertaintyCopy;
  v106 = 0;
  v30 = *v115;
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  do
  {
    v35 = 0;
    do
    {
      if (*v115 != v30)
      {
        objc_enumerationMutation(locations);
      }

      v36 = *(*(&v114 + 1) + 8 * v35);
      date = [v36 date];
      if ([date isBeforeDate:v14])
      {
        goto LABEL_22;
      }

      date2 = [v36 date];
      v39 = [date2 isAfterDate:v112];

      if ((v39 & 1) == 0)
      {
        distanceCalculator = [(RTVisitPipelineModuleVisitCentroidUpdater *)self distanceCalculator];
        v113 = 0;
        [distanceCalculator distanceFromLocation:location toLocation:v36 error:&v113];
        v42 = v41;
        date = v113;

        if (date || v42 > 250.0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v43 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              v45 = NSStringFromSelector(aSelector);
              *buf = 138413315;
              v119 = v45;
              v120 = 2117;
              v121 = v36;
              v122 = 2117;
              v123 = location;
              v124 = 2048;
              v125 = v42;
              v126 = 2112;
              v127 = date;
              _os_log_debug_impl(&dword_2304B3000, v43, OS_LOG_TYPE_DEBUG, "%@, outlier location, %{sensitive}@, reference location, %{sensitive}@, distance, %.2f meters, error, %@", buf, 0x34u);
            }
          }
        }

        else
        {
          [location latitude];
          [location longitude];
          [v36 latitude];
          [v36 longitude];
          if (RTCommonConvertGeodeticToLocalFrame())
          {
            v34 = v34 + 0.0;
            v33 = v33 + 0.0;
            v32 = v32 + 0.0 * 0.0;
            v31 = v31 + 0.0 * 0.0;
            ++v106;
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v44 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v46 = NSStringFromSelector(aSelector);
              *buf = 138412803;
              v119 = v46;
              v120 = 2117;
              v121 = v36;
              v122 = 2117;
              v123 = location;
              _os_log_debug_impl(&dword_2304B3000, v44, OS_LOG_TYPE_DEBUG, "%@, cannot convert to local frame for location, %{sensitive}@, with reference location, %{sensitive}@", buf, 0x20u);
            }
          }

          date = 0;
        }

LABEL_22:
      }

      ++v35;
    }

    while (v29 != v35);
    v47 = [locations countByEnumeratingWithState:&v114 objects:v128 count:16];
    v29 = v47;
  }

  while (v47);

  v48 = v106;
  if (v106 <= 0x3B)
  {
    uncertaintyCopy = v102;
    goto LABEL_44;
  }

  v51 = sqrt(vabdd_f64(v32 / v106, v34 / v106 * (v34 / v106)));
  v52 = sqrt(vabdd_f64(v31 / v106, v33 / v106 * (v33 / v106)));
  v53 = sqrt(v52 * v52 + v51 * v51);
  v110 = objc_alloc(MEMORY[0x277D01160]);
  visit9 = [v102 visit];
  location2 = [visit9 location];
  [location2 latitude];
  v55 = v54;
  visit10 = [v102 visit];
  location3 = [visit10 location];
  [location3 longitude];
  v57 = v56;
  visit11 = [v102 visit];
  location4 = [visit11 location];
  [location4 altitude];
  v59 = v58;
  visit12 = [v102 visit];
  location5 = [visit12 location];
  [location5 verticalUncertainty];
  v61 = v60;
  visit13 = [v102 visit];
  location6 = [visit13 location];
  date3 = [location6 date];
  visit14 = [v102 visit];
  location7 = [visit14 location];
  referenceFrame = [location7 referenceFrame];
  visit15 = [v102 visit];
  location8 = [visit15 location];
  [location8 speed];
  v68 = v67;
  visit16 = [v102 visit];
  location9 = [visit16 location];
  v111 = [v110 initWithLatitude:date3 longitude:referenceFrame horizontalUncertainty:objc_msgSend(location9 altitude:"sourceAccuracy") verticalUncertainty:v55 date:v57 referenceFrame:v53 speed:v59 sourceAccuracy:{v61, v68}];

  v99 = objc_alloc(MEMORY[0x277D01428]);
  visit17 = [v102 visit];
  date4 = [visit17 date];
  visit18 = [v102 visit];
  type = [visit18 type];
  visit19 = [v102 visit];
  entry3 = [visit19 entry];
  visit20 = [v102 visit];
  exit3 = [visit20 exit];
  visit21 = [v102 visit];
  dataPointCount = [visit21 dataPointCount];
  visit22 = [v102 visit];
  [visit22 confidence];
  v77 = v76;
  visit23 = [v102 visit];
  placeInference = [visit23 placeInference];
  v80 = [v99 initWithDate:date4 type:type location:v111 entry:entry3 exit:exit3 dataPointCount:dataPointCount confidence:v77 placeInference:placeInference];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v81 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = NSStringFromSelector(aSelector);
      visit24 = [v102 visit];
      location10 = [visit24 location];
      *buf = 138412803;
      v119 = v82;
      v120 = 2112;
      v121 = location10;
      v122 = 2117;
      v123 = v111;
      _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_INFO, "%@, visit centroid, %@, updated visit centroid, %{sensitive}@", buf, 0x20u);
    }
  }

  v85 = [RTVisitCluster alloc];
  uncertaintyCopy = v102;
  points2 = [v102 points];
  v24 = [(RTVisitCluster *)v85 initWithPoints:points2 visit:v80];

  v49 = v111;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:
LABEL_58:

  return v24;
}

- (id)_updateVisitCentroidBasedOnFilteredLocations:(id)locations maxHorizontalAccuracy:(double)accuracy
{
  v180[1] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  visit = [locationsCopy visit];

  if (!visit)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster.visit", buf, 2u);
    }

LABEL_15:
    v18 = 0;
    goto LABEL_93;
  }

  visit2 = [locationsCopy visit];
  entry = [visit2 entry];
  if (entry)
  {
    visit3 = [locationsCopy visit];
    exit = [visit3 exit];

    if (exit)
    {
      v10 = MEMORY[0x277CBEAA8];
      visit4 = [locationsCopy visit];
      entry2 = [visit4 entry];
      v122 = [v10 dateWithTimeInterval:entry2 sinceDate:900.0];

      v13 = MEMORY[0x277CBEAA8];
      visit5 = [locationsCopy visit];
      exit2 = [visit5 exit];
      v121 = [v13 dateWithTimeInterval:exit2 sinceDate:-900.0];

      if ([v121 isBeforeDate:v122])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          oslog = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
          {
            v16 = NSStringFromSelector(a2);
            visit6 = [locationsCopy visit];
            *buf = 138412547;
            *&buf[4] = v16;
            v171 = 2117;
            v172 = visit6;
            _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "%@, skip centroid update for visit, %{sensitive}@, due to short duration", buf, 0x16u);
          }

          v18 = 0;
          goto LABEL_91;
        }

        v18 = 0;
LABEL_92:

        v19 = v122;
        goto LABEL_93;
      }

      oslog = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v122 endDate:v121];
      visit7 = [locationsCopy visit];
      location = [visit7 location];

      v140 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
      v25 = 0;
      v123 = *MEMORY[0x277D01448];
      v124 = *MEMORY[0x277CCA450];
      v26 = 1;
      v27 = 0.0;
      v28 = 0.0;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        v137 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:oslog horizontalAccuracy:200 batchSize:0 boundingBoxLocation:1 type:accuracy];
        v164 = 0.0;
        v165 = &v164;
        v166 = 0x3032000000;
        v167 = __Block_byref_object_copy_;
        v168 = __Block_byref_object_dispose_;
        v169 = 0;
        v158 = 0.0;
        v159 = &v158;
        v160 = 0x3032000000;
        v161 = __Block_byref_object_copy_;
        v162 = __Block_byref_object_dispose_;
        v163 = 0;
        v29 = dispatch_semaphore_create(0);
        locationManager = [(RTVisitPipelineModuleVisitCentroidUpdater *)self locationManager];
        v154[0] = MEMORY[0x277D85DD0];
        v154[1] = 3221225472;
        v154[2] = __112__RTVisitPipelineModuleVisitCentroidUpdater__updateVisitCentroidBasedOnFilteredLocations_maxHorizontalAccuracy___block_invoke;
        v154[3] = &unk_2788C4490;
        v156 = &v164;
        v157 = &v158;
        v31 = v29;
        v155 = v31;
        [locationManager fetchStoredLocationsWithOptions:v137 handler:v154];

        dsema = v31;
        v32 = [MEMORY[0x277CBEAA8] now];
        v33 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(dsema, v33))
        {
          v34 = [MEMORY[0x277CBEAA8] now];
          [v34 timeIntervalSinceDate:v32];
          v36 = v35;
          v37 = objc_opt_new();
          v38 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_130];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v40 = [callStackSymbols filteredArrayUsingPredicate:v38];
          firstObject = [v40 firstObject];

          [v37 submitToCoreAnalytics:firstObject type:1 duration:v36];
          v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v42, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v43 = MEMORY[0x277CCA9B8];
          v180[0] = v124;
          *buf = @"semaphore wait timeout";
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v180 count:1];
          v45 = [v43 errorWithDomain:v123 code:15 userInfo:v44];

          if (v45)
          {
            v46 = v45;

            v47 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          v45 = 0;
        }

        v47 = 1;
LABEL_25:

        v129 = v45;
        if ((v47 & 1) == 0)
        {
          objc_storeStrong(v165 + 5, v45);
        }

        if (v165[5])
        {
          v48 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = NSStringFromSelector(a2);
            visit8 = [locationsCopy visit];
            v51 = v165[5];
            *buf = 138412803;
            *&buf[4] = v49;
            v171 = 2117;
            v172 = visit8;
            v173 = 2112;
            v174 = v51;
            _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, "%@, skip centroid update for visit, %{sensitive}@, due to error, %@", buf, 0x20u);
          }
        }

        else
        {
          if ((v26 & 1) == 0 || [*(v159 + 5) count] > 0x3B)
          {
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v48 = *(v159 + 5);
            v55 = [v48 countByEnumeratingWithState:&v150 objects:v179 count:16];
            if (v55)
            {
              v56 = *v151;
              while (2)
              {
                v57 = 0;
                do
                {
                  if (*v151 != v56)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v58 = *(*(&v150 + 1) + 8 * v57);
                  distanceCalculator = [(RTVisitPipelineModuleVisitCentroidUpdater *)self distanceCalculator];
                  v149 = 0;
                  [distanceCalculator distanceFromLocation:location toLocation:v58 error:&v149];
                  v61 = v60;
                  v62 = v149;

                  if (v62 || v61 > 250.0)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                    {
                      v65 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                      {
                        v67 = NSStringFromSelector(a2);
                        *buf = 138413315;
                        *&buf[4] = v67;
                        v171 = 2117;
                        v172 = v58;
                        v173 = 2117;
                        v174 = location;
                        v175 = 2048;
                        v176 = v61;
                        v177 = 2112;
                        v178 = v62;
                        _os_log_debug_impl(&dword_2304B3000, v65, OS_LOG_TYPE_DEBUG, "%@, outlier location, %{sensitive}@, reference location, %{sensitive}@, distance, %.2f meters, error, %@", buf, 0x34u);
                      }
                    }
                  }

                  else
                  {
                    *buf = 0;
                    v180[0] = 0;
                    v148 = 0.0;
                    [location latitude];
                    [location longitude];
                    [v58 latitude];
                    [v58 longitude];
                    ++v25;
                    if ((RTCommonConvertGeodeticToLocalFrame() & 1) == 0)
                    {
                      v73 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                      {
                        *v147 = 0;
                        _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: result", v147, 2u);
                      }

                      v26 = 0;
                      goto LABEL_64;
                    }

                    v63 = *v180;
                    v64 = v148;
                    if (v25 > 0xC8)
                    {
                      v66 = RTCommonRandomInt();
                      if (v66 <= 0xC7)
                      {
                        [v140 replaceObjectAtIndex:v66 withObject:v58];
                      }
                    }

                    else
                    {
                      [v140 addObject:v58];
                    }

                    v28 = v28 + v63;
                    v27 = v27 + v64;
                  }

                  ++v57;
                }

                while (v55 != v57);
                v55 = [v48 countByEnumeratingWithState:&v150 objects:v179 count:16];
                if (v55)
                {
                  continue;
                }

                break;
              }
            }

            lastObject = [*(v159 + 5) lastObject];
            date = [lastObject date];
            v70 = [date dateByAddingTimeInterval:1.0];

            endDate = [oslog endDate];

            if ([*(v159 + 5) count] && !objc_msgSend(endDate, "isBeforeDate:", v70))
            {
              v74 = objc_alloc(MEMORY[0x277CCA970]);
              v48 = [v70 earlierDate:endDate];
              v75 = [v74 initWithStartDate:v48 endDate:endDate];

              v26 = 0;
              v72 = 0;
              oslog = v75;
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v26 = 0;
                v72 = 6;
                v121 = endDate;
                v122 = v70;
                goto LABEL_66;
              }

              v48 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v76 = NSStringFromSelector(a2);
                *buf = 138412290;
                *&buf[4] = v76;
                _os_log_debug_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEBUG, "%@, no more locations to fetch.", buf, 0xCu);
              }

              v26 = 0;
              v72 = 6;
            }

            v121 = endDate;
            v122 = v70;
            goto LABEL_65;
          }

          v26 = 1;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v72 = 1;
            goto LABEL_66;
          }

          v48 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          v26 = 1;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v52 = NSStringFromSelector(a2);
            visit9 = [locationsCopy visit];
            v54 = [*(v159 + 5) count];
            *buf = 138412803;
            *&buf[4] = v52;
            v171 = 2117;
            v172 = visit9;
            v173 = 2048;
            v174 = v54;
            _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, skip centroid update for visit, %{sensitive}@, due to small number of GPS locations, %lu", buf, 0x20u);

            v26 = 1;
          }
        }

LABEL_64:
        v72 = 1;
LABEL_65:

LABEL_66:
        _Block_object_dispose(&v158, 8);

        _Block_object_dispose(&v164, 8);
        objc_autoreleasePoolPop(context);
        if (v72)
        {
          if (v72 == 6)
          {
            if (v25)
            {
              v164 = 0.0;
              v158 = 0.0;
              [location latitude];
              [location longitude];
              if (!RTCommonConvertLocalFrameToGeodetic() || (RTCommonIsCoordinateValid(), v77 == 0.0))
              {
                v114 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                v113 = v114;
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  v119 = NSStringFromSelector(a2);
                  visit10 = [locationsCopy visit];
                  *buf = 138412547;
                  *&buf[4] = v119;
                  v171 = 2117;
                  v172 = visit10;
                  _os_log_error_impl(&dword_2304B3000, v114, OS_LOG_TYPE_ERROR, "%@, skip centroid update for visit, %{sensitive}@, due to invalid coordinates", buf, 0x16u);

                  v18 = 0;
                  v113 = v114;
                }

                else
                {
                  v18 = 0;
                }
              }

              else
              {
                v145 = objc_alloc(MEMORY[0x277D01160]);
                v78 = v164;
                v79 = v158;
                dsemaa = [locationsCopy visit];
                location2 = [dsemaa location];
                [location2 horizontalUncertainty];
                v81 = v80;
                contexta = [locationsCopy visit];
                location3 = [contexta location];
                [location3 altitude];
                v83 = v82;
                visit11 = [locationsCopy visit];
                location4 = [visit11 location];
                [location4 verticalUncertainty];
                v86 = v85;
                visit12 = [locationsCopy visit];
                location5 = [visit12 location];
                date2 = [location5 date];
                visit13 = [locationsCopy visit];
                location6 = [visit13 location];
                referenceFrame = [location6 referenceFrame];
                visit14 = [locationsCopy visit];
                location7 = [visit14 location];
                [location7 speed];
                v146 = [v145 initWithLatitude:date2 longitude:referenceFrame horizontalUncertainty:2 altitude:v78 verticalUncertainty:v79 date:v81 referenceFrame:v83 speed:v86 sourceAccuracy:v95];

                v131 = objc_alloc(MEMORY[0x277D01428]);
                dsemab = [locationsCopy visit];
                contextb = [dsemab date];
                visit15 = [locationsCopy visit];
                type = [visit15 type];
                visit16 = [locationsCopy visit];
                entry3 = [visit16 entry];
                visit17 = [locationsCopy visit];
                exit3 = [visit17 exit];
                visit18 = [locationsCopy visit];
                dataPointCount = [visit18 dataPointCount];
                visit19 = [locationsCopy visit];
                [visit19 confidence];
                v104 = v103;
                visit20 = [locationsCopy visit];
                placeInference = [visit20 placeInference];
                v132 = [v131 initWithDate:contextb type:type location:v146 entry:entry3 exit:exit3 dataPointCount:dataPointCount confidence:v104 placeInference:placeInference];

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v107 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                  {
                    v108 = NSStringFromSelector(a2);
                    visit21 = [locationsCopy visit];
                    location8 = [visit21 location];
                    *buf = 138412803;
                    *&buf[4] = v108;
                    v171 = 2112;
                    v172 = location8;
                    v173 = 2117;
                    v174 = v146;
                    _os_log_impl(&dword_2304B3000, v107, OS_LOG_TYPE_INFO, "%@, visit centroid, %@, updated visit centroid, %{sensitive}@", buf, 0x20u);
                  }
                }

                v111 = [RTVisitCluster alloc];
                v112 = [[RTVisitLocationPoints alloc] initWithLocations:v140];
                v18 = [(RTVisitCluster *)v111 initWithPoints:v112 visit:v132];

                v113 = v146;
              }

LABEL_90:
LABEL_91:

              goto LABEL_92;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v115 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
              {
                v116 = NSStringFromSelector(a2);
                visit22 = [locationsCopy visit];
                *buf = 138412547;
                *&buf[4] = v116;
                v171 = 2117;
                v172 = visit22;
                _os_log_impl(&dword_2304B3000, v115, OS_LOG_TYPE_INFO, "%@, skip centroid update for visit, %{sensitive}@, due to no GPS location", buf, 0x16u);
              }
            }
          }

          v18 = 0;
          goto LABEL_90;
        }
      }
    }
  }

  else
  {
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = 0;
    goto LABEL_94;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v19 = v20;
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  v21 = NSStringFromSelector(a2);
  visit23 = [locationsCopy visit];
  *buf = 138412547;
  *&buf[4] = v21;
  v171 = 2117;
  v172 = visit23;
  _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, incomplete visit, %{sensitive}@", buf, 0x16u);

  v18 = 0;
  v19 = v20;
LABEL_93:

LABEL_94:

  return v18;
}

void __112__RTVisitPipelineModuleVisitCentroidUpdater__updateVisitCentroidBasedOnFilteredLocations_maxHorizontalAccuracy___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v11 = obj;
  v6 = a2;
  v7 = [[_RTMap alloc] initWithInput:v6];

  v8 = [(_RTMap *)v7 withBlock:&__block_literal_global];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

id __112__RTVisitPipelineModuleVisitCentroidUpdater__updateVisitCentroidBasedOnFilteredLocations_maxHorizontalAccuracy___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01160];
  v3 = a2;
  v4 = [[v2 alloc] initWithCLLocation:v3];

  return v4;
}

- (id)process:(id)process
{
  v68 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v5 = processCopy;
  if (!self->_binCounts)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: _binCounts";
LABEL_48:
    _os_log_error_impl(&dword_2304B3000, obj, OS_LOG_TYPE_ERROR, v38, buf, 2u);
    goto LABEL_43;
  }

  if ([processCopy count])
  {
    v46 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v5;
    v47 = [obj countByEnumeratingWithState:&v49 objects:v67 count:16];
    if (!v47)
    {
      goto LABEL_44;
    }

    v40 = v5;
    v6 = MEMORY[0x277D86220];
    v45 = *v50;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v37 = NSStringFromSelector(a2);
            *buf = 138412547;
            v54 = v37;
            v55 = 2117;
            v56 = v8;
            _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, working on cluster, %{sensitive}@", buf, 0x16u);
          }
        }

        v10 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self _updateHorizontalUncertainty:v8];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        v13 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self _updateVisitCentroidBasedOnFilteredLocations:v12 maxHorizontalAccuracy:25.0];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v8;
        }

        v15 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self _updateVisitCentroidBasedOnMode:v14];

        if (v15)
        {
          distanceCalculator = [(RTVisitPipelineModuleVisitCentroidUpdater *)self distanceCalculator];
          visit = [v8 visit];
          location = [visit location];
          visit2 = [v15 visit];
          location2 = [visit2 location];
          v48 = 0;
          [distanceCalculator distanceFromLocation:location toLocation:location2 error:&v48];
          v22 = v21;
          v23 = v48;

          v6 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v24 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = NSStringFromSelector(a2);
              visit3 = [v8 visit];
              location3 = [visit3 location];
              visit4 = [v15 visit];
              location4 = [visit4 location];
              v29 = location4;
              *buf = 138413827;
              v30 = @"NO";
              if (v13)
              {
                v30 = @"YES";
              }

              v54 = v25;
              v55 = 2117;
              v56 = location3;
              v57 = 2117;
              v58 = location4;
              v59 = 2048;
              v60 = v22;
              v61 = 2112;
              v62 = v30;
              v63 = 2112;
              v64 = @"YES";
              v65 = 2112;
              v66 = v23;
              _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, visit centroid, %{sensitive}@, updated visit centroid, %{sensitive}@, distance, %f, updateBasedOnHighAccurateLocations, %@, updateBasedOnMode, %@, error, %@", buf, 0x48u);

              v6 = MEMORY[0x277D86220];
            }
          }

          self = selfCopy;
          if (!v23 && v22 <= 1000.0)
          {
            v31 = v15;
            goto LABEL_34;
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = NSStringFromSelector(a2);
            *buf = 138412547;
            v54 = v33;
            v55 = 2117;
            v56 = v8;
            _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, did not update cluster, %{sensitive}@", buf, 0x16u);
          }
        }

        v15 = 0;
        v31 = v8;
LABEL_34:
        [v46 addObject:v31];
        visit5 = [v8 visit];
        exit = [visit5 exit];

        if (exit)
        {
          binCounts = self->_binCounts;
          if (binCounts)
          {
            bzero(binCounts, 4 * self->_binCountsSize);
          }
        }
      }

      v47 = [obj countByEnumeratingWithState:&v49 objects:v67 count:16];
      if (!v47)
      {
        v5 = v40;
        goto LABEL_44;
      }
    }
  }

  obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v38 = "Invalid parameter not satisfying: inClusters.count";
    goto LABEL_48;
  }

LABEL_43:
  v46 = 0;
LABEL_44:

  return v46;
}

@end