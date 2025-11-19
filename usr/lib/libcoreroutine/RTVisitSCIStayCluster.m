@interface RTVisitSCIStayCluster
+ (double)evalMaxUncFromMotionDevMotionInducedDev:(double)a3 andMeasInducedDev:(double)a4;
+ (double)evaluateClustThresFromClustThresSlv:(double)result motionInducedDev:(double)a4 adaptionBasis:(double)a5 adaptionSampleCnt:(int64_t)a6 adaptionRate:(double)a7;
- (RTVisitSCIStayCluster)init;
- (double)dwellTimeIntervalWithDate:(id)a3;
- (double)getRadiusForDate:(id)a3;
- (id)centroidForVisitType:(int64_t)a3 confidence:(double)a4;
- (id)createVisit:(int64_t)a3 confidence:(double)a4;
- (id)description;
- (void)addNewPoint:(id)a3 event:(unint64_t)a4 lcFSMState:(unint64_t)a5 fsmState:(unint64_t)a6;
- (void)addOutlier:(id)a3;
- (void)updateLastTrustedLocation:(id)a3;
@end

@implementation RTVisitSCIStayCluster

+ (double)evaluateClustThresFromClustThresSlv:(double)result motionInducedDev:(double)a4 adaptionBasis:(double)a5 adaptionSampleCnt:(int64_t)a6 adaptionRate:(double)a7
{
  v7 = result;
  if (a7 > 0.0)
  {
    v8 = fmin(a4, 100.0);
    v9 = pow(a5, -a6 / a7);
    return v8 * 1.65 * (1.0 - v9) + v7 * 0.5 * (v9 + 1.0);
  }

  return result;
}

+ (double)evalMaxUncFromMotionDevMotionInducedDev:(double)a3 andMeasInducedDev:(double)a4
{
  result = a3 + a4;
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
  v4 = [(RTVisitSCIStayCluster *)self numOfDataPoints];
  v5 = [(RTVisitSCIStayCluster *)self numOfResiduePoints];
  v6 = [(RTVisitSCIStayCluster *)self numOfOutliers];
  v7 = [(RTVisitSCIStayCluster *)self lastTrustedLocation];
  v8 = [v3 stringWithFormat:@"n_point, %lu, n_residue, %lu, n_outlier, %lu, last_trusted_location, %@", v4, v5, v6, v7];

  if (self->_numOfDataPoints)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(NSDate *)self->_potentialEntry stringFromDate];
    v11 = [(NSDate *)self->_potentialExit stringFromDate];
    v12 = [v9 stringWithFormat:@", entry, %@, exit, %@, mean, %@, ", v10, v11, self->_centroid];
    [v8 appendString:v12];
  }

  return v8;
}

- (double)dwellTimeIntervalWithDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  [v4 timeIntervalSinceDate:?];
  v7 = v6;
LABEL_8:

  return v7;
}

- (id)centroidForVisitType:(int64_t)a3 confidence:(double)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = [(RTLocation *)self->_lastTrustedLocation date];
  [(RTVisitSCIStayCluster *)self dwellTimeIntervalWithDate:v8];
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
      v22 = [MEMORY[0x277D01428] stringFromVisitIncidentType:a3];
      numOfDataPoints = self->_numOfDataPoints;
      centroid = self->_centroid;
      lastTrustedLocation = self->_lastTrustedLocation;
      [(RTLocation *)lastTrustedLocation distanceFromLocation:centroid locationShifter:self->_locationShifter error:0];
      v28 = 138414339;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      v32 = 2048;
      v33 = a4;
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

- (id)createVisit:(int64_t)a3 confidence:(double)a4
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
    v39 = "[RTVisitSCIStayCluster createVisit:confidence:]";
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
        v39 = self;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "working hypothesis, %{sensitive}@", buf, 0xCu);
      }
    }

    if (a3 == 3)
    {
      potentialExit = self->_potentialExit;
    }

    else
    {
      potentialExit = 0;
    }

    v10 = potentialExit;
    v11 = objc_alloc(MEMORY[0x277D01428]);
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [(RTVisitSCIStayCluster *)self centroidForVisitType:a3 confidence:a4];
    v14 = [v11 initWithDate:v12 type:a3 location:v13 entry:self->_potentialEntry exit:v10 dataPointCount:self->_numOfDataPoints confidence:a4 placeInference:0];

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

    v18 = [v14 exit];
    v19 = v18 | v15;

    if (!v19)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[RTVisitSCIStayCluster createVisit:confidence:]";
        v40 = 1024;
        LODWORD(v41) = 198;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit.exit || points (in %s:%d)", buf, 0x12u);
      }
    }

    v21 = [v14 exit];
    v22 = (v21 | v15);

    if (!v22)
    {
      goto LABEL_32;
    }

    v22 = [[RTVisitCluster alloc] initWithPoints:v15 visit:v14];
    v23 = [(RTVisitCluster *)v22 visit];
    v24 = [v23 entry];
    v25 = [v24 isEqualToDate:self->_potentialEntry];

    if ((v25 & 1) == 0)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = [v14 entry];
        v36 = self->_potentialExit;
        *buf = 138413058;
        v39 = v35;
        v40 = 2112;
        v41 = v36;
        v42 = 2080;
        v43 = "[RTVisitSCIStayCluster createVisit:confidence:]";
        v44 = 1024;
        v45 = 204;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "visit.entry, %@, not equal to _potentialEntry, %@ (in %s:%d)", buf, 0x26u);
      }
    }

    v27 = [(RTVisitCluster *)v22 visit];
    v28 = [v27 exit];
    v29 = v28;
    if (a3 == 3)
    {
      v30 = [v28 isEqualToDate:self->_potentialExit];

      if ((v30 & 1) == 0)
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = [v14 exit];
          v33 = self->_potentialExit;
          *buf = 138413058;
          v39 = v32;
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
          v37 = [(RTVisitCluster *)v22 visit];
          *buf = 138412802;
          v39 = v37;
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

- (void)addNewPoint:(id)a3 event:(unint64_t)a4 lcFSMState:(unint64_t)a5 fsmState:(unint64_t)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
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
    LODWORD(v55) = 219;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "_numOfDataPoints hit max value? (in %s:%d)", &v52, 0x12u);
  }

  if (self->_numOfDataPoints != -1)
  {
LABEL_5:
    if (v10)
    {
      if ([(NSMutableArray *)self->_outliers count])
      {
        [(NSMutableArray *)self->_residuePoints addObjectsFromArray:self->_outliers];
        v12 = objc_opt_new();
        outliers = self->_outliers;
        self->_outliers = v12;
      }

      v14 = [v10 date];
      lastProcessedSample = self->_lastProcessedSample;
      self->_lastProcessedSample = v14;

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
            v55 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
            v56 = 1024;
            LODWORD(v57) = 235;
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
            v55 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
            v56 = 1024;
            LODWORD(v57) = 236;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "when n_point = 0, _potentialExit, %@ (in %s:%d)", &v52, 0x1Cu);
          }
        }

        objc_storeStrong(&self->_potentialEntry, self->_lastProcessedSample);
        v17 = 0.0;
      }

      objc_storeStrong(&self->_potentialExit, self->_lastProcessedSample);
      residuePoints = self->_residuePoints;
      ++self->_numOfDataPoints;
      [(NSMutableArray *)residuePoints addObject:v10];
      v22 = [(NSMutableArray *)self->_residuePoints count]- 5000;
      if (v22 >= 0 && !(v22 % 0x64uLL))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v52 = 134218752;
          v53 = v22;
          v54 = 2048;
          v55 = a4;
          v56 = 2048;
          v57 = a6;
          v58 = 2048;
          v59 = a5;
          _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Exceeded allowable cached locations count by %ld in SCI, event: %lu, fsmState: %lu, lcFSMState: %lu", &v52, 0x2Au);
        }
      }

      [v10 latitude];
      v25 = v24 - v17;
      numOfDataPoints = self->_numOfDataPoints;
      meanOfSquaredLat_deg = self->_meanOfSquaredLat_deg;
      [v10 latitude];
      meanOfSquaredLon_deg = self->_meanOfSquaredLon_deg;
      self->_meanOfSquaredLat_deg = meanOfSquaredLat_deg + (v28 * v28 - self->_meanOfSquaredLat_deg) / self->_numOfDataPoints;
      [v10 longitude];
      self->_meanOfSquaredLon_deg = meanOfSquaredLon_deg + (v30 * v30 - self->_meanOfSquaredLon_deg) / self->_numOfDataPoints;
      [v10 longitude];
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
          v55 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
          v56 = 1024;
          LODWORD(v57) = 260;
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
          v55 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
          v56 = 1024;
          LODWORD(v57) = 261;
          _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "mean longitude is out of range, <=min, lon_deg, %.7f (in %s:%d)", &v52, 0x1Cu);
        }
      }

      [RTVisitSCIStayCluster evaluateMotionInducedDeviationFromMeanLat:v37 meanOfSquaredLat_deg:self->_meanOfSquaredLat_deg meanLon_deg:v35 meanOfSquaredLon_deg:self->_meanOfSquaredLon_deg];
      self->_motionInducedDev_m = fmin(v39, 100.0);
      [RTVisitSCIStayCluster evalMaxUncFromMotionDevMotionInducedDev:200.0 / sqrt(self->_numOfDataPoints) andMeasInducedDev:?];
      v41 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:objc_msgSend(v10 horizontalUncertainty:"referenceFrame") date:v37 referenceFrame:{v35, v40}];
      centroid = self->_centroid;
      self->_centroid = v41;

      if (self->_numOfDataPoints == 1)
      {
        objc_storeStrong(&self->_lastProcessedSampleDateForAdaption, self->_lastProcessedSample);
      }

      [v10 latitude];
      [v10 longitude];
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
          v55 = v48;
          v56 = 2112;
          v57 = v49;
          v58 = 2080;
          v59 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
          v60 = 1024;
          v61 = 281;
          _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "centroid computation is incorrect sum vector is, %f + %fi, centroid, %@ (in %s:%d)", &v52, 0x30u);
        }
      }

      [(RTVisitSCIStayCluster *)self updateLastTrustedLocation:v10];
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v52 = 136315394;
        v53 = "[RTVisitSCIStayCluster addNewPoint:event:lcFSMState:fsmState:]";
        v54 = 1024;
        LODWORD(v55) = 223;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: point (in %s:%d)", &v52, 0x12u);
      }
    }
  }
}

- (void)updateLastTrustedLocation:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    [v5 horizontalUncertainty];
    v5 = v7;
    if (v6 <= 250.0)
    {
      objc_storeStrong(&self->_lastTrustedLocation, a3);
      v5 = v7;
    }
  }
}

- (void)addOutlier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 date];
    lastProcessedSample = self->_lastProcessedSample;
    self->_lastProcessedSample = v6;

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

- (double)getRadiusForDate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 timeIntervalSinceDate:self->_lastProcessedSampleDateForAdaption];
    if (v7 > 600.0)
    {
      ++self->_numOfAdaptionSample;
      objc_storeStrong(&self->_lastProcessedSampleDateForAdaption, a3);
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