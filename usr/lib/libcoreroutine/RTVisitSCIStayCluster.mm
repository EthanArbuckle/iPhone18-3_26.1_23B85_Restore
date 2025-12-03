@interface RTVisitSCIStayCluster
+ (double)evalMaxUncFromMotionDevMotionInducedDev:(double)dev andMeasInducedDev:(double)inducedDev;
+ (double)evaluateClustThresFromClustThresSlv:(double)result motionInducedDev:(double)dev adaptionBasis:(double)basis adaptionSampleCnt:(int64_t)cnt adaptionRate:(double)rate;
- (RTVisitSCIStayCluster)init;
- (double)dwellTimeIntervalWithDate:(id)date;
- (double)getRadiusForDate:(id)date;
- (id)centroidForVisitType:(int64_t)type confidence:(double)confidence;
- (id)createVisit:(int64_t)visit confidence:(double)confidence;
- (id)description;
- (void)addNewPoint:(id)point event:(unint64_t)event lcFSMState:(unint64_t)state fsmState:(unint64_t)fsmState;
- (void)addOutlier:(id)outlier;
- (void)updateLastTrustedLocation:(id)location;
@end

@implementation RTVisitSCIStayCluster

+ (double)evaluateClustThresFromClustThresSlv:(double)result motionInducedDev:(double)dev adaptionBasis:(double)basis adaptionSampleCnt:(int64_t)cnt adaptionRate:(double)rate
{
  v7 = result;
  if (rate > 0.0)
  {
    v8 = fmin(dev, 100.0);
    v9 = pow(basis, -cnt / rate);
    return v8 * 1.65 * (1.0 - v9) + v7 * 0.5 * (v9 + 1.0);
  }

  return result;
}

+ (double)evalMaxUncFromMotionDevMotionInducedDev:(double)dev andMeasInducedDev:(double)inducedDev
{
  result = dev + inducedDev;
  if (result > 200.0 || result < 0.0)
  {
    return 200.0;
  }

  return result;
}

- (RTVisitSCIStayCluster)init
{
  v10.receiver = self;
  v10.super_class = RTVisitSCIStayCluster;
  v2 = [(RTVisitSCIStayCluster *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    locationShifter = v2->_locationShifter;
    v2->_locationShifter = v3;

    v5 = objc_opt_new();
    outliers = v2->_outliers;
    v2->_outliers = v5;

    v7 = objc_opt_new();
    residuePoints = v2->_residuePoints;
    v2->_residuePoints = v7;

    v2->_numOfAdaptionSample = 1;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  numOfDataPoints = [(RTVisitSCIStayCluster *)self numOfDataPoints];
  numOfResiduePoints = [(RTVisitSCIStayCluster *)self numOfResiduePoints];
  numOfOutliers = [(RTVisitSCIStayCluster *)self numOfOutliers];
  lastTrustedLocation = [(RTVisitSCIStayCluster *)self lastTrustedLocation];
  v8 = [v3 stringWithFormat:@"n_point, %lu, n_residue, %lu, n_outlier, %lu, last_trusted_location, %@", numOfDataPoints, numOfResiduePoints, numOfOutliers, lastTrustedLocation];

  if (self->_numOfDataPoints)
  {
    v9 = MEMORY[0x277CCACA8];
    stringFromDate = [(NSDate *)self->_potentialEntry stringFromDate];
    stringFromDate2 = [(NSDate *)self->_potentialExit stringFromDate];
    v12 = [v9 stringWithFormat:@", entry, %@, exit, %@, mean, %@, ", stringFromDate, stringFromDate2, self->_centroid];
    [v8 appendString:v12];
  }

  return v8;
}

- (double)dwellTimeIntervalWithDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (!dateCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", v10, 2u);
    }

    goto LABEL_7;
  }

  if (!self->_potentialEntry)
  {
LABEL_7:
    v7 = 0.0;
    goto LABEL_8;
  }

  [dateCopy timeIntervalSinceDate:?];
  v7 = v6;
LABEL_8:

  return v7;
}

- (id)centroidForVisitType:(int64_t)type confidence:(double)confidence
{
  v46 = *MEMORY[0x277D85DE8];
  date = [(RTLocation *)self->_lastTrustedLocation date];
  [(RTVisitSCIStayCluster *)self dwellTimeIntervalWithDate:date];
  v10 = v9;

  if (self->_lastTrustedLocation)
  {
    v11 = v10 > 480.0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v18 = self->_centroid;
    v19 = @"Weighted Average";
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D01160]);
    [(RTLocation *)self->_lastTrustedLocation latitude];
    v14 = v13;
    [(RTLocation *)self->_lastTrustedLocation longitude];
    v16 = v15;
    [(RTLocation *)self->_lastTrustedLocation horizontalUncertainty];
    v18 = [v12 initWithLatitude:0 longitude:-[RTLocation referenceFrame](self->_lastTrustedLocation horizontalUncertainty:"referenceFrame") date:v14 referenceFrame:{v16, v17}];
    v19 = @"Last Trusted Location";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = NSStringFromSelector(a2);
      v22 = [MEMORY[0x277D01428] stringFromVisitIncidentType:type];
      numOfDataPoints = self->_numOfDataPoints;
      centroid = self->_centroid;
      lastTrustedLocation = self->_lastTrustedLocation;
      [(RTLocation *)lastTrustedLocation distanceFromLocation:centroid locationShifter:self->_locationShifter error:0];
      v28 = 138414339;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      v32 = 2048;
      confidenceCopy = confidence;
      v34 = 2048;
      v35 = numOfDataPoints;
      v36 = 2048;
      v37 = v10;
      v38 = 2117;
      v39 = centroid;
      v40 = 2117;
      v41 = lastTrustedLocation;
      v42 = 2112;
      v43 = v19;
      v44 = 2048;
      v45 = v26;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, visitType, %@, confidence, %.2f, dataPointCount, %lu, dwellSinceEntry, %.2f, meanCentroid, %{sensitive}@, lastTrustedLocation, %{sensitive}@, algorithmUsedForCentroid, %@, distance between lastTrustedLocation to meanCentroid, %.2f", &v28, 0x5Cu);
    }
  }

  return v18;
}

- (id)createVisit:(int64_t)visit confidence:(double)confidence
{
  v46 = *MEMORY[0x277D85DE8];
  if (self->_numOfDataPoints)
  {
    goto LABEL_39;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    selfCopy = "[RTVisitSCIStayCluster createVisit:confidence:]";
    v40 = 1024;
    LODWORD(v41) = 179;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "zero points (in %s:%d)", buf, 0x12u);
  }

  if (self->_numOfDataPoints)
  {
LABEL_39:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138739971;
        selfCopy = self;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "working hypothesis, %{sensitive}@", buf, 0xCu);
      }
    }

    if (visit == 3)
    {
      potentialExit = self->_potentialExit;
    }

    else
    {
      potentialExit = 0;
    }

    v10 = potentialExit;
    v11 = objc_alloc(MEMORY[0x277D01428]);
    date = [MEMORY[0x277CBEAA8] date];
    v13 = [(RTVisitSCIStayCluster *)self centroidForVisitType:visit confidence:confidence];
    v14 = [v11 initWithDate:date type:visit location:v13 entry:self->_potentialEntry exit:v10 dataPointCount:self->_numOfDataPoints confidence:confidence placeInference:0];

    if ([(NSMutableArray *)self->_residuePoints count])
    {
      v15 = [[RTVisitLocationPoints alloc] initWithLocations:self->_residuePoints];
      v16 = objc_opt_new();
      residuePoints = self->_residuePoints;
      self->_residuePoints = v16;
    }

    else
    {
      v15 = 0;
    }

    exit = [v14 exit];
    v19 = exit | v15;

    if (!v19)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        selfCopy = "[RTVisitSCIStayCluster createVisit:confidence:]";
        v40 = 1024;
        LODWORD(v41) = 198;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit.exit || points (in %s:%d)", buf, 0x12u);
      }
    }

    exit2 = [v14 exit];
    v22 = (exit2 | v15);

    if (!v22)
    {
      goto LABEL_32;
    }

    v22 = [[RTVisitCluster alloc] initWithPoints:v15 visit:v14];
    visit = [(RTVisitCluster *)v22 visit];
    entry = [visit entry];
    v25 = [entry isEqualToDate:self->_potentialEntry];

    if ((v25 & 1) == 0)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        entry2 = [v14 entry];
        v36 = self->_potentialExit;
        *buf = 138413058;
        selfCopy = entry2;
        v40 = 2112;
        v41 = v36;
        v42 = 2080;
        v43 = "[RTVisitSCIStayCluster createVisit:confidence:]";
        v44 = 1024;
        v45 = 204;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "visit.entry, %@, not equal to _potentialEntry, %@ (in %s:%d)", buf, 0x26u);
      }
    }

    visit2 = [(RTVisitCluster *)v22 visit];
    exit3 = [visit2 exit];
    v29 = exit3;
    if (visit == 3)
    {
      v30 = [exit3 isEqualToDate:self->_potentialExit];

      if ((v30 & 1) == 0)
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          exit4 = [v14 exit];
          v33 = self->_potentialExit;
          *buf = 138413058;
          selfCopy = exit4;
          v40 = 2112;
          v41 = v33;
          v42 = 2080;
          v43 = "[RTVisitSCIStayCluster createVisit:confidence:]";
          v44 = 1024;
          v45 = 207;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "exit visit with visit.exit, %@, not equal to _potentialExit, %@ (in %s:%d)", buf, 0x26u);
        }

LABEL_31:
      }
    }

    else
    {

      if (v29)
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          visit3 = [(RTVisitCluster *)v22 visit];
          *buf = 138412802;
          selfCopy = visit3;
          v40 = 2080;
          v41 = "[RTVisitSCIStayCluster createVisit:confidence:]";
          v42 = 1024;
          LODWORD(v43) = 209;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "entry visit has valid exit, %@ (in %s:%d)", buf, 0x1Cu);
        }

        goto LABEL_31;
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  v22 = 0;
LABEL_33:

  return v22;
}

- (void)addNewPoint:(id)point event:(unint64_t)event lcFSMState:(unint64_t)state fsmState:(unint64_t)fsmState
{
  v62 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  if (self->_numOfDataPoints != -1)
  {
    goto LABEL_5;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v52 = 136315394;
    v53 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
    v54 = 1024;
    LODWORD(eventCopy) = 219;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "_numOfDataPoints hit max value? (in %s:%d)", &v52, 0x12u);
  }

  if (self->_numOfDataPoints != -1)
  {
LABEL_5:
    if (pointCopy)
    {
      if ([(NSMutableArray *)self->_outliers count])
      {
        [(NSMutableArray *)self->_residuePoints addObjectsFromArray:self->_outliers];
        v12 = objc_opt_new();
        outliers = self->_outliers;
        self->_outliers = v12;
      }

      date = [pointCopy date];
      lastProcessedSample = self->_lastProcessedSample;
      self->_lastProcessedSample = date;

      if (self->_numOfDataPoints)
      {
        [(RTLocation *)self->_centroid latitude];
        v17 = v16;
      }

      else
      {
        if (self->_potentialEntry)
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            potentialEntry = self->_potentialEntry;
            v52 = 138412802;
            v53 = potentialEntry;
            v54 = 2080;
            eventCopy = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
            v56 = 1024;
            LODWORD(fsmStateCopy) = 235;
            _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "when n_point = 0, _potentialEntry, %@ (in %s:%d)", &v52, 0x1Cu);
          }
        }

        if (self->_potentialExit)
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            potentialExit = self->_potentialExit;
            v52 = 138412802;
            v53 = potentialExit;
            v54 = 2080;
            eventCopy = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
            v56 = 1024;
            LODWORD(fsmStateCopy) = 236;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "when n_point = 0, _potentialExit, %@ (in %s:%d)", &v52, 0x1Cu);
          }
        }

        objc_storeStrong(&self->_potentialEntry, self->_lastProcessedSample);
        v17 = 0.0;
      }

      objc_storeStrong(&self->_potentialExit, self->_lastProcessedSample);
      residuePoints = self->_residuePoints;
      ++self->_numOfDataPoints;
      [(NSMutableArray *)residuePoints addObject:pointCopy];
      v22 = [(NSMutableArray *)self->_residuePoints count]- 5000;
      if (v22 >= 0 && !(v22 % 0x64uLL))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v52 = 134218752;
          v53 = v22;
          v54 = 2048;
          eventCopy = event;
          v56 = 2048;
          fsmStateCopy = fsmState;
          v58 = 2048;
          stateCopy = state;
          _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Exceeded allowable cached locations count by %ld in SCI, event: %lu, fsmState: %lu, lcFSMState: %lu", &v52, 0x2Au);
        }
      }

      [pointCopy latitude];
      v25 = v24 - v17;
      numOfDataPoints = self->_numOfDataPoints;
      meanOfSquaredLat_deg = self->_meanOfSquaredLat_deg;
      [pointCopy latitude];
      meanOfSquaredLon_deg = self->_meanOfSquaredLon_deg;
      self->_meanOfSquaredLat_deg = meanOfSquaredLat_deg + (v28 * v28 - self->_meanOfSquaredLat_deg) / self->_numOfDataPoints;
      [pointCopy longitude];
      self->_meanOfSquaredLon_deg = meanOfSquaredLon_deg + (v30 * v30 - self->_meanOfSquaredLon_deg) / self->_numOfDataPoints;
      [pointCopy longitude];
      v32 = v31 * 3.14159265 / 180.0;
      v63.c[0] = v32 * 0.0;
      v63.c[1] = v32 + 0.0;
      v33 = v25 / numOfDataPoints;
      v34 = cexp(v63);
      v64.c[0] = *self->_sumOfVectorLon + v34.c[0];
      v64.c[1] = v34.c[1] + *&self->_sumOfVectorLon[8];
      *self->_sumOfVectorLon = v64;
      v35 = carg(v64) * 180.0 / 3.14159265;
      if (v35 < -180.0)
      {
        v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v52 = 134218498;
          v53 = *&v35;
          v54 = 2080;
          eventCopy = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
          v56 = 1024;
          LODWORD(fsmStateCopy) = 260;
          _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "mean longitude is out of range, >=max, lon_deg, %.7f (in %s:%d)", &v52, 0x1Cu);
        }
      }

      v37 = v17 + v33;
      if (v35 > 180.0)
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v52 = 134218498;
          v53 = *&v35;
          v54 = 2080;
          eventCopy = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
          v56 = 1024;
          LODWORD(fsmStateCopy) = 261;
          _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "mean longitude is out of range, <=min, lon_deg, %.7f (in %s:%d)", &v52, 0x1Cu);
        }
      }

      [RTVisitSCIStayCluster evaluateMotionInducedDeviationFromMeanLat:v37 meanOfSquaredLat_deg:self->_meanOfSquaredLat_deg meanLon_deg:v35 meanOfSquaredLon_deg:self->_meanOfSquaredLon_deg];
      self->_motionInducedDev_m = fmin(v39, 100.0);
      [RTVisitSCIStayCluster evalMaxUncFromMotionDevMotionInducedDev:200.0 / sqrt(self->_numOfDataPoints) andMeasInducedDev:?];
      v41 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:objc_msgSend(pointCopy horizontalUncertainty:"referenceFrame") date:v37 referenceFrame:{v35, v40}];
      centroid = self->_centroid;
      self->_centroid = v41;

      if (self->_numOfDataPoints == 1)
      {
        objc_storeStrong(&self->_lastProcessedSampleDateForAdaption, self->_lastProcessedSample);
      }

      [pointCopy latitude];
      [pointCopy longitude];
      [(RTLocation *)self->_centroid latitude];
      [(RTLocation *)self->_centroid longitude];
      RTCommonCalculateDistance();
      v44 = v43;
      [RTVisitSCIStayCluster evaluateClustThresFromClustThresSlv:self->_numOfAdaptionSample motionInducedDev:200.0 adaptionBasis:self->_motionInducedDev_m adaptionSampleCnt:1.4 adaptionRate:10.0];
      if (v44 >= v45)
      {
        v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = *self->_sumOfVectorLon;
          v48 = *&self->_sumOfVectorLon[8];
          v49 = self->_centroid;
          v52 = 134219010;
          v53 = v47;
          v54 = 2048;
          eventCopy = v48;
          v56 = 2112;
          fsmStateCopy = v49;
          v58 = 2080;
          stateCopy = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
          v60 = 1024;
          v61 = 281;
          _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "centroid computation is incorrect sum vector is, %f + %fi, centroid, %@ (in %s:%d)", &v52, 0x30u);
        }
      }

      [(RTVisitSCIStayCluster *)self updateLastTrustedLocation:pointCopy];
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v52 = 136315394;
        v53 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
        v54 = 1024;
        LODWORD(eventCopy) = 223;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: point (in %s:%d)", &v52, 0x12u);
      }
    }
  }
}

- (void)updateLastTrustedLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v7 = locationCopy;
    [locationCopy horizontalUncertainty];
    locationCopy = v7;
    if (v6 <= 250.0)
    {
      objc_storeStrong(&self->_lastTrustedLocation, location);
      locationCopy = v7;
    }
  }
}

- (void)addOutlier:(id)outlier
{
  v13 = *MEMORY[0x277D85DE8];
  outlierCopy = outlier;
  v5 = outlierCopy;
  if (outlierCopy)
  {
    date = [outlierCopy date];
    lastProcessedSample = self->_lastProcessedSample;
    self->_lastProcessedSample = date;

    [(NSMutableArray *)self->_outliers addObject:v5];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTVisitSCIStayCluster addOutlier:]";
      v11 = 1024;
      v12 = 294;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: point (in %s:%d)", &v9, 0x12u);
    }
  }
}

- (double)getRadiusForDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v6 = dateCopy;
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceDate:self->_lastProcessedSampleDateForAdaption];
    if (v7 > 600.0)
    {
      ++self->_numOfAdaptionSample;
      objc_storeStrong(&self->_lastProcessedSampleDateForAdaption, date);
    }

    [RTVisitSCIStayCluster evaluateClustThresFromClustThresSlv:self->_numOfAdaptionSample motionInducedDev:200.0 adaptionBasis:self->_motionInducedDev_m adaptionSampleCnt:1.4 adaptionRate:10.0];
    v9 = v8;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[RTVisitSCIStayCluster getRadiusForDate:]";
      v14 = 1024;
      v15 = 304;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v12, 0x12u);
    }

    v9 = 200.0;
  }

  return v9;
}

@end