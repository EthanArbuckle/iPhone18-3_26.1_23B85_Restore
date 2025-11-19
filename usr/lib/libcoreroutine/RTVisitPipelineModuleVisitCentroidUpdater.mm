@interface RTVisitPipelineModuleVisitCentroidUpdater
- (RTVisitPipelineModuleVisitCentroidUpdater)initWithHyperParameter:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5;
- (id)_updateHorizontalUncertainty:(id)a3;
- (id)_updateVisitCentroidBasedOnFilteredLocations:(id)a3 maxHorizontalAccuracy:(double)a4;
- (id)_updateVisitCentroidBasedOnMode:(id)a3;
- (id)modeWithReferenceLocation:(id)a3;
- (id)process:(id)a3;
- (unint64_t)modeBinIndex;
- (void)dealloc;
- (void)updateCountFromNorthing:(double)a3 easting:(double)a4;
@end

@implementation RTVisitPipelineModuleVisitCentroidUpdater

- (RTVisitPipelineModuleVisitCentroidUpdater)initWithHyperParameter:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
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

  if (!v10)
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

  if (!v11)
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
    objc_storeStrong(&v13->_hyperParameter, a3);
    v14 = [v9 maxNumOfBins];
    self->_binCountsSize = 4 * v14 * [v9 maxNumOfBins];
    objc_storeStrong(&self->_distanceCalculator, a5);
    v15 = malloc_type_calloc(4 * self->_binCountsSize, 1uLL, 0x2CC1A462uLL);
    self->_binCounts = v15;
    if (v15)
    {
      v16 = [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
      self->_invalidBinIndex = 4 * [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins]* v16;
      objc_storeStrong(&self->_locationManager, a4);
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

    v17 = 0;
    goto LABEL_18;
  }

LABEL_7:
  self = self;
  v17 = self;
LABEL_18:

  return v17;
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

- (void)updateCountFromNorthing:(double)a3 easting:(double)a4
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

  v7 = [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
  v8 = (a3 / [(RTVisitHyperParameter *)self->_hyperParameter binSize]+ 0.5) + v7;
  v9 = [(RTVisitHyperParameter *)self->_hyperParameter binSize];
  if ((v8 & 0x80000000) == 0)
  {
    v10 = 2 * v7;
    if (2 * v7 > v8)
    {
      v11 = (a4 / v9 + 0.5) + v7;
      if ((v11 & 0x80000000) == 0 && v10 > v11)
      {
        v12 = [(RTVisitHyperParameter *)self->_hyperParameter maxNumOfBins];
        ++self->_binCounts[v11 + 2 * v8 * v12];
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
      v15 = a3;
      v16 = 2048;
      v17 = a4;
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

- (id)modeWithReferenceLocation:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
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

  v6 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self modeBinIndex];
  if (v6 == self->_invalidBinIndex)
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

  v10 = v6;
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
  [v5 latitude];
  [v5 longitude];
  if ((RTCommonConvertLocalFrameToGeodetic() & 1) == 0)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      v22 = 0;
      goto LABEL_22;
    }

    *v25 = 0;
    v24 = "Invalid parameter not satisfying: result";
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    goto LABEL_21;
  }

  RTCommonIsCoordinateValid();
  if (v11 == 0.0)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *v25 = 0;
    v24 = "Invalid parameter not satisfying: RTCommonIsCoordinateValid(latitude, longitude)";
    goto LABEL_26;
  }

  v12 = objc_alloc(MEMORY[0x277D01160]);
  [v5 horizontalUncertainty];
  v14 = v13;
  [v5 altitude];
  v16 = v15;
  [v5 verticalUncertainty];
  v18 = v17;
  v19 = [v5 date];
  v20 = [v5 referenceFrame];
  [v5 speed];
  v22 = [v12 initWithLatitude:v19 longitude:v20 horizontalUncertainty:objc_msgSend(v5 altitude:"sourceAccuracy") verticalUncertainty:*buf date:v26 referenceFrame:v14 speed:v16 sourceAccuracy:{v18, v21}];
LABEL_22:

LABEL_15:

  return v22;
}

- (id)_updateVisitCentroidBasedOnMode:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 visit];

  if (!v6)
  {
    v37 = 0;
    goto LABEL_24;
  }

  v7 = [v5 visit];
  v8 = [v7 location];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [v5 points];
  v10 = [v9 locations];

  v11 = [v10 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        *buf = 0;
        [v8 latitude];
        [v8 longitude];
        [v15 latitude];
        [v15 longitude];
        if (RTCommonConvertGeodeticToLocalFrame())
        {
          [(RTVisitPipelineModuleVisitCentroidUpdater *)self updateCountFromNorthing:*buf easting:0.0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v12);
  }

  v16 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self modeWithReferenceLocation:v8];
  if (v16)
  {
    aSelector = a2;
    v17 = objc_alloc(MEMORY[0x277D01428]);
    v46 = [v5 visit];
    v42 = [v46 date];
    v45 = [v5 visit];
    v47 = [v45 type];
    v44 = [v5 visit];
    v41 = [v44 entry];
    v43 = [v5 visit];
    v18 = [v43 exit];
    v19 = [v5 visit];
    v20 = [v19 dataPointCount];
    v21 = [v5 visit];
    [v21 confidence];
    v23 = v22;
    v24 = [v5 visit];
    v25 = [v24 placeInference];
    v26 = v47;
    v48 = v16;
    v27 = [v17 initWithDate:v42 type:v26 location:v16 entry:v41 exit:v18 dataPointCount:v20 confidence:v23 placeInference:v25];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = NSStringFromSelector(aSelector);
        v30 = [v5 visit];
        v31 = [v30 location];
        *buf = 138412803;
        *&buf[4] = v29;
        v54 = 2117;
        v55 = v31;
        v56 = 2117;
        v57 = v48;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, visit centroid, %{sensitive}@, updated visit centroid, %{sensitive}@", buf, 0x20u);
      }
    }

    v32 = [RTVisitCluster alloc];
    v33 = [RTVisitLocationPoints alloc];
    v34 = [v5 points];
    v35 = [v34 locations];
    v36 = [(RTVisitLocationPoints *)v33 initWithLocations:v35];
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

- (id)_updateHorizontalUncertainty:(id)a3
{
  v129 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 visit];

  if (!v5)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster.visit", buf, 2u);
    }

    goto LABEL_14;
  }

  v6 = [v4 visit];
  v7 = [v6 entry];
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v4 visit];
  v10 = [v9 exit];

  if (!v10)
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
      v23 = [v4 visit];
      *buf = 138412547;
      v119 = v22;
      v120 = 2117;
      v121 = v23;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, incomplete visit, %{sensitive}@", buf, 0x16u);
    }

LABEL_14:
    v24 = 0;
    goto LABEL_57;
  }

  v11 = MEMORY[0x277CBEAA8];
  v12 = [v4 visit];
  v13 = [v12 entry];
  v14 = [v11 dateWithTimeInterval:v13 sinceDate:900.0];

  v15 = MEMORY[0x277CBEAA8];
  v16 = [v4 visit];
  v17 = [v16 exit];
  v18 = [v15 dateWithTimeInterval:v17 sinceDate:-900.0];

  v112 = v18;
  if ([v18 isBeforeDate:v14])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = 0;
      goto LABEL_56;
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      v21 = [v4 visit];
      *buf = 138412547;
      v119 = v20;
      v120 = 2117;
      v121 = v21;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, skip horizontal uncertainty update for visit, %{sensitive}@, due to short duration", buf, 0x16u);
    }

LABEL_48:
    v24 = 0;
    goto LABEL_55;
  }

  aSelector = a2;
  v25 = [v4 visit];
  v19 = [v25 location];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v26 = [v4 points];
  v27 = [v26 locations];

  v28 = [v27 countByEnumeratingWithState:&v114 objects:v128 count:16];
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
  v102 = v4;
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
        objc_enumerationMutation(v27);
      }

      v36 = *(*(&v114 + 1) + 8 * v35);
      v37 = [v36 date];
      if ([v37 isBeforeDate:v14])
      {
        goto LABEL_22;
      }

      v38 = [v36 date];
      v39 = [v38 isAfterDate:v112];

      if ((v39 & 1) == 0)
      {
        v40 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self distanceCalculator];
        v113 = 0;
        [v40 distanceFromLocation:v19 toLocation:v36 error:&v113];
        v42 = v41;
        v37 = v113;

        if (v37 || v42 > 250.0)
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
              v123 = v19;
              v124 = 2048;
              v125 = v42;
              v126 = 2112;
              v127 = v37;
              _os_log_debug_impl(&dword_2304B3000, v43, OS_LOG_TYPE_DEBUG, "%@, outlier location, %{sensitive}@, reference location, %{sensitive}@, distance, %.2f meters, error, %@", buf, 0x34u);
            }
          }
        }

        else
        {
          [v19 latitude];
          [v19 longitude];
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
              v123 = v19;
              _os_log_debug_impl(&dword_2304B3000, v44, OS_LOG_TYPE_DEBUG, "%@, cannot convert to local frame for location, %{sensitive}@, with reference location, %{sensitive}@", buf, 0x20u);
            }
          }

          v37 = 0;
        }

LABEL_22:
      }

      ++v35;
    }

    while (v29 != v35);
    v47 = [v27 countByEnumeratingWithState:&v114 objects:v128 count:16];
    v29 = v47;
  }

  while (v47);

  v48 = v106;
  if (v106 <= 0x3B)
  {
    v4 = v102;
    goto LABEL_44;
  }

  v51 = sqrt(vabdd_f64(v32 / v106, v34 / v106 * (v34 / v106)));
  v52 = sqrt(vabdd_f64(v31 / v106, v33 / v106 * (v33 / v106)));
  v53 = sqrt(v52 * v52 + v51 * v51);
  v110 = objc_alloc(MEMORY[0x277D01160]);
  v107 = [v102 visit];
  v103 = [v107 location];
  [v103 latitude];
  v55 = v54;
  v100 = [v102 visit];
  v98 = [v100 location];
  [v98 longitude];
  v57 = v56;
  v96 = [v102 visit];
  v94 = [v96 location];
  [v94 altitude];
  v59 = v58;
  v92 = [v102 visit];
  v91 = [v92 location];
  [v91 verticalUncertainty];
  v61 = v60;
  v90 = [v102 visit];
  v89 = [v90 location];
  v62 = [v89 date];
  v88 = [v102 visit];
  v63 = [v88 location];
  v64 = [v63 referenceFrame];
  v65 = [v102 visit];
  v66 = [v65 location];
  [v66 speed];
  v68 = v67;
  v69 = [v102 visit];
  v70 = [v69 location];
  v111 = [v110 initWithLatitude:v62 longitude:v64 horizontalUncertainty:objc_msgSend(v70 altitude:"sourceAccuracy") verticalUncertainty:v55 date:v57 referenceFrame:v53 speed:v59 sourceAccuracy:{v61, v68}];

  v99 = objc_alloc(MEMORY[0x277D01428]);
  v108 = [v102 visit];
  v95 = [v108 date];
  v104 = [v102 visit];
  v93 = [v104 type];
  v101 = [v102 visit];
  v71 = [v101 entry];
  v97 = [v102 visit];
  v72 = [v97 exit];
  v73 = [v102 visit];
  v74 = [v73 dataPointCount];
  v75 = [v102 visit];
  [v75 confidence];
  v77 = v76;
  v78 = [v102 visit];
  v79 = [v78 placeInference];
  v80 = [v99 initWithDate:v95 type:v93 location:v111 entry:v71 exit:v72 dataPointCount:v74 confidence:v77 placeInference:v79];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v81 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = NSStringFromSelector(aSelector);
      v83 = [v102 visit];
      v84 = [v83 location];
      *buf = 138412803;
      v119 = v82;
      v120 = 2112;
      v121 = v84;
      v122 = 2117;
      v123 = v111;
      _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_INFO, "%@, visit centroid, %@, updated visit centroid, %{sensitive}@", buf, 0x20u);
    }
  }

  v85 = [RTVisitCluster alloc];
  v4 = v102;
  v86 = [v102 points];
  v24 = [(RTVisitCluster *)v85 initWithPoints:v86 visit:v80];

  v49 = v111;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:
LABEL_58:

  return v24;
}

- (id)_updateVisitCentroidBasedOnFilteredLocations:(id)a3 maxHorizontalAccuracy:(double)a4
{
  v180[1] = *MEMORY[0x277D85DE8];
  v136 = a3;
  v5 = [v136 visit];

  if (!v5)
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

  v6 = [v136 visit];
  v7 = [v6 entry];
  if (v7)
  {
    v8 = [v136 visit];
    v9 = [v8 exit];

    if (v9)
    {
      v10 = MEMORY[0x277CBEAA8];
      v11 = [v136 visit];
      v12 = [v11 entry];
      v122 = [v10 dateWithTimeInterval:v12 sinceDate:900.0];

      v13 = MEMORY[0x277CBEAA8];
      v14 = [v136 visit];
      v15 = [v14 exit];
      v121 = [v13 dateWithTimeInterval:v15 sinceDate:-900.0];

      if ([v121 isBeforeDate:v122])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          oslog = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
          {
            v16 = NSStringFromSelector(a2);
            v17 = [v136 visit];
            *buf = 138412547;
            *&buf[4] = v16;
            v171 = 2117;
            v172 = v17;
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
      v23 = [v136 visit];
      v24 = [v23 location];

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
        v137 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:oslog horizontalAccuracy:200 batchSize:0 boundingBoxLocation:1 type:a4];
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
        v30 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self locationManager];
        v154[0] = MEMORY[0x277D85DD0];
        v154[1] = 3221225472;
        v154[2] = __112__RTVisitPipelineModuleVisitCentroidUpdater__updateVisitCentroidBasedOnFilteredLocations_maxHorizontalAccuracy___block_invoke;
        v154[3] = &unk_2788C4490;
        v156 = &v164;
        v157 = &v158;
        v31 = v29;
        v155 = v31;
        [v30 fetchStoredLocationsWithOptions:v137 handler:v154];

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
          v39 = [MEMORY[0x277CCACC8] callStackSymbols];
          v40 = [v39 filteredArrayUsingPredicate:v38];
          v41 = [v40 firstObject];

          [v37 submitToCoreAnalytics:v41 type:1 duration:v36];
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
            v50 = [v136 visit];
            v51 = v165[5];
            *buf = 138412803;
            *&buf[4] = v49;
            v171 = 2117;
            v172 = v50;
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
                  v59 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self distanceCalculator];
                  v149 = 0;
                  [v59 distanceFromLocation:v24 toLocation:v58 error:&v149];
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
                        v174 = v24;
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
                    [v24 latitude];
                    [v24 longitude];
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

            v68 = [*(v159 + 5) lastObject];
            v69 = [v68 date];
            v70 = [v69 dateByAddingTimeInterval:1.0];

            v71 = [oslog endDate];

            if ([*(v159 + 5) count] && !objc_msgSend(v71, "isBeforeDate:", v70))
            {
              v74 = objc_alloc(MEMORY[0x277CCA970]);
              v48 = [v70 earlierDate:v71];
              v75 = [v74 initWithStartDate:v48 endDate:v71];

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
                v121 = v71;
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

            v121 = v71;
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
            v53 = [v136 visit];
            v54 = [*(v159 + 5) count];
            *buf = 138412803;
            *&buf[4] = v52;
            v171 = 2117;
            v172 = v53;
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
              [v24 latitude];
              [v24 longitude];
              if (!RTCommonConvertLocalFrameToGeodetic() || (RTCommonIsCoordinateValid(), v77 == 0.0))
              {
                v114 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                v113 = v114;
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  v119 = NSStringFromSelector(a2);
                  v120 = [v136 visit];
                  *buf = 138412547;
                  *&buf[4] = v119;
                  v171 = 2117;
                  v172 = v120;
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
                dsemaa = [v136 visit];
                v138 = [dsemaa location];
                [v138 horizontalUncertainty];
                v81 = v80;
                contexta = [v136 visit];
                v130 = [contexta location];
                [v130 altitude];
                v83 = v82;
                v126 = [v136 visit];
                v84 = [v126 location];
                [v84 verticalUncertainty];
                v86 = v85;
                v87 = [v136 visit];
                v88 = [v87 location];
                v89 = [v88 date];
                v90 = [v136 visit];
                v91 = [v90 location];
                v92 = [v91 referenceFrame];
                v93 = [v136 visit];
                v94 = [v93 location];
                [v94 speed];
                v146 = [v145 initWithLatitude:v89 longitude:v92 horizontalUncertainty:2 altitude:v78 verticalUncertainty:v79 date:v81 referenceFrame:v83 speed:v86 sourceAccuracy:v95];

                v131 = objc_alloc(MEMORY[0x277D01428]);
                dsemab = [v136 visit];
                contextb = [dsemab date];
                v139 = [v136 visit];
                v127 = [v139 type];
                v96 = [v136 visit];
                v97 = [v96 entry];
                v98 = [v136 visit];
                v99 = [v98 exit];
                v100 = [v136 visit];
                v101 = [v100 dataPointCount];
                v102 = [v136 visit];
                [v102 confidence];
                v104 = v103;
                v105 = [v136 visit];
                v106 = [v105 placeInference];
                v132 = [v131 initWithDate:contextb type:v127 location:v146 entry:v97 exit:v99 dataPointCount:v101 confidence:v104 placeInference:v106];

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v107 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                  {
                    v108 = NSStringFromSelector(a2);
                    v109 = [v136 visit];
                    v110 = [v109 location];
                    *buf = 138412803;
                    *&buf[4] = v108;
                    v171 = 2112;
                    v172 = v110;
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
                v117 = [v136 visit];
                *buf = 138412547;
                *&buf[4] = v116;
                v171 = 2117;
                v172 = v117;
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
  v22 = [v136 visit];
  *buf = 138412547;
  *&buf[4] = v21;
  v171 = 2117;
  v172 = v22;
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

- (id)process:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
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

  if ([v4 count])
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
    v44 = self;
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
          v16 = [(RTVisitPipelineModuleVisitCentroidUpdater *)self distanceCalculator];
          v17 = [v8 visit];
          v18 = [v17 location];
          v19 = [v15 visit];
          v20 = [v19 location];
          v48 = 0;
          [v16 distanceFromLocation:v18 toLocation:v20 error:&v48];
          v22 = v21;
          v23 = v48;

          v6 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v24 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = NSStringFromSelector(a2);
              v41 = [v8 visit];
              v26 = [v41 location];
              v27 = [v15 visit];
              v28 = [v27 location];
              v29 = v28;
              *buf = 138413827;
              v30 = @"NO";
              if (v13)
              {
                v30 = @"YES";
              }

              v54 = v25;
              v55 = 2117;
              v56 = v26;
              v57 = 2117;
              v58 = v28;
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

          self = v44;
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
        v34 = [v8 visit];
        v35 = [v34 exit];

        if (v35)
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