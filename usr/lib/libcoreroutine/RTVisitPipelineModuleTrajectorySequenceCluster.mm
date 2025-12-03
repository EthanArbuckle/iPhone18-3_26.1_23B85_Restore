@interface RTVisitPipelineModuleTrajectorySequenceCluster
+ (double)normalizeFeature:(double)feature min:(double)min max:(double)max;
- (BOOL)computeFeatureVector:(float *)vector cumSumNumLocations:(unint64_t)locations cumSumNorthings:(double *)northings cumSumEastings:(double *)eastings cumSumSquaredNorthings:(double *)squaredNorthings cumSumSquaredEastings:(double *)squaredEastings sequenceLength:(unint64_t)length;
- (RTVisitPipelineModuleTrajectorySequenceCluster)initWithVisitTrajectorySequenceClassifier:(id)classifier hyperParameter:(id)parameter;
- (double)computeRadiusFromCumSumNorthings:(const double *)northings cumSumEastings:(const double *)eastings cumSumSquaredNorthings:(const double *)squaredNorthings cumSumSuaredEastings:(const double *)suaredEastings firstLocationIndex:(unint64_t)index lastLocationIndex:(unint64_t)locationIndex;
- (float)computeFeatureVectorFromLocalFramesNumOfLocations:(unint64_t)locations northings:(const double *)northings eastings:(const double *)eastings sequenceLength:(unint64_t)length;
- (float)computeFeatureVectorFromLocations:(id)locations start:(unint64_t)start end:(unint64_t)end;
- (id)createVisitWithLocations:(id)locations entryDate:(id)date exitDate:(id)exitDate;
- (id)performBatchInferenceWithFeatureVector:(const float *)vector featureVectorLength:(unint64_t)length start:(unint64_t)start firstTimeStepDate:(id)date;
- (id)process:(id)process;
- (unint64_t)numLocationsFrom:(unint64_t)from;
- (unint64_t)sequenceIndexFromDate:(id)date firstTimeStepDate:(id)stepDate;
- (unint64_t)sequenceLengthFrom:(unint64_t)from;
- (void)clearWorkingVisitCluster;
@end

@implementation RTVisitPipelineModuleTrajectorySequenceCluster

+ (double)normalizeFeature:(double)feature min:(double)min max:(double)max
{
  if (feature < min)
  {
    feature = min;
  }

  if (feature >= max)
  {
    feature = max;
  }

  return -(min + max - feature * 2.0) / (max - min);
}

- (RTVisitPipelineModuleTrajectorySequenceCluster)initWithVisitTrajectorySequenceClassifier:(id)classifier hyperParameter:(id)parameter
{
  classifierCopy = classifier;
  parameterCopy = parameter;
  v9 = parameterCopy;
  if (!classifierCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: trajectorySequenceClassifier";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!parameterCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: hyperParameter";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = RTVisitPipelineModuleTrajectorySequenceCluster;
  v10 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_trajectorySequenceClassifier, classifier);
    objc_storeStrong(&v11->_hyperParameter, parameter);
    v12 = [[RTVisitDecoder alloc] initWithHyperParameter:v9];
    decoder = v11->_decoder;
    v11->_decoder = v12;
  }

  self = v11;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (unint64_t)numLocationsFrom:(unint64_t)from
{
  if (!from)
  {
    return 0;
  }

  v4 = from - 1;
  stride = [(RTVisitHyperParameter *)self->_hyperParameter stride];
  v6 = [(RTVisitHyperParameter *)self->_hyperParameter referenceSize]+ stride * v4;
  return v6 + [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
}

- (unint64_t)sequenceLengthFrom:(unint64_t)from
{
  windowSize = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
  v6 = [(RTVisitHyperParameter *)self->_hyperParameter referenceSize]+ windowSize;
  v7 = from >= v6;
  v8 = from - v6;
  if (v7)
  {
    return v8 / [(RTVisitHyperParameter *)self->_hyperParameter stride]+ 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)sequenceIndexFromDate:(id)date firstTimeStepDate:(id)stepDate
{
  dateCopy = date;
  stepDateCopy = stepDate;
  v8 = stepDateCopy;
  if (!stepDateCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      v10 = 0;
      goto LABEL_8;
    }

    v16 = 0;
    v12 = "Invalid parameter not satisfying: firstTimeStepDate";
    v13 = &v16;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_7;
  }

  if (([stepDateCopy isOnOrBefore:dateCopy] & 1) == 0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = 0;
    v12 = "Invalid parameter not satisfying: [firstTimeStepDate isOnOrBefore:date]";
    v13 = &v15;
    goto LABEL_10;
  }

  [dateCopy timeIntervalSinceDate:v8];
  v10 = (v9 / [(RTVisitHyperParameter *)self->_hyperParameter windowInterval]);
LABEL_8:

  return v10;
}

- (double)computeRadiusFromCumSumNorthings:(const double *)northings cumSumEastings:(const double *)eastings cumSumSquaredNorthings:(const double *)squaredNorthings cumSumSuaredEastings:(const double *)suaredEastings firstLocationIndex:(unint64_t)index lastLocationIndex:(unint64_t)locationIndex
{
  if (locationIndex <= index)
  {
    v15 = v8;
    v16 = v9;
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: firstLocationIndex < lastLocationIndex", v14, 2u);
    }

    return 0.0;
  }

  else
  {
    v11 = northings[locationIndex] - northings[index];
    v10 = locationIndex - index;
    return sqrt(vabdd_f64((squaredNorthings[locationIndex] - squaredNorthings[index] + suaredEastings[locationIndex] - suaredEastings[index]) / v10, (v11 * v11 + (eastings[locationIndex] - eastings[index]) * (eastings[locationIndex] - eastings[index])) / (v10 * v10)));
  }
}

- (float)computeFeatureVectorFromLocalFramesNumOfLocations:(unint64_t)locations northings:(const double *)northings eastings:(const double *)eastings sequenceLength:(unint64_t)length
{
  if (length)
  {
    locationsCopy = locations;
    v34 = locations + 1;
    v11 = 8 * (locations + 1);
    v12 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v13 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v14 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v15 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v16 = v15;
    if (v12 && v13 && v14 && v15)
    {
      v17 = malloc_type_malloc(4 * length * [(RTVisitHyperParameter *)self->_hyperParameter featureDimension], 0x100004052888210uLL);
      if (!v17)
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v35 = 0;
          _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "fail to allocate feature vector", v35, 2u);
        }

        goto LABEL_28;
      }

      v18 = v17;
      *v12 = 0.0;
      *v13 = 0.0;
      *v14 = 0.0;
      *v16 = 0.0;
      if (locationsCopy)
      {
        v19 = v16 + 1;
        v20 = v14 + 1;
        v21 = v13 + 1;
        v22 = v12 + 1;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
        v26 = 0.0;
        do
        {
          v27 = *northings++;
          v28 = v27;
          v26 = v26 + v27;
          v29 = *eastings++;
          v25 = v25 + v29;
          v24 = v24 + v28 * v28;
          *v22++ = v26;
          *v21++ = v25;
          v23 = v23 + v29 * v29;
          *v20++ = v24;
          *v19++ = v23;
          --locationsCopy;
        }

        while (locationsCopy);
      }

      if (![(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeFeatureVector:v17 cumSumNumLocations:v34 cumSumNorthings:v12 cumSumEastings:v13 cumSumSquaredNorthings:v14 cumSumSquaredEastings:v16 sequenceLength:length])
      {
        free(v18);
LABEL_28:
        v18 = 0;
      }
    }

    else
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "fail to allocate cumsum arrays", v36, 2u);
      }

      v18 = 0;
      if (!v12)
      {
        if (!v13)
        {
LABEL_20:
          if (v14)
          {
            free(v14);
          }

          if (v16)
          {
            free(v16);
          }

          return v18;
        }

LABEL_19:
        free(v13);
        goto LABEL_20;
      }
    }

    free(v12);
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: 0<sequenceLength", buf, 2u);
  }

  return 0;
}

- (BOOL)computeFeatureVector:(float *)vector cumSumNumLocations:(unint64_t)locations cumSumNorthings:(double *)northings cumSumEastings:(double *)eastings cumSumSquaredNorthings:(double *)squaredNorthings cumSumSquaredEastings:(double *)squaredEastings sequenceLength:(unint64_t)length
{
  if (!vector)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: featureVector";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!northings)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: cumSumNorthings";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!eastings)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: cumSumEastings";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  squaredNorthingsCopy = squaredNorthings;
  if (!squaredNorthings)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: cumSumSquaredNorthings";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  squaredEastingsCopy = squaredEastings;
  if (squaredEastings)
  {
    if (locations <= 1)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "Invalid parameter not satisfying: 1<cumSumNumLocations";
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    vectorCopy = vector;
    lengthCopy2 = length;
    [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMin];
    v84 = exp(v19);
    [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMax];
    v21 = exp(-v20);
    referenceSize = [(RTVisitHyperParameter *)self->_hyperParameter referenceSize];
    stride = [(RTVisitHyperParameter *)self->_hyperParameter stride];
    if (length)
    {
      v24 = 0;
      v83 = &vectorCopy[2 * length];
      v85 = referenceSize / stride;
      while (1)
      {
        if ([(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDistance]<= v24)
        {
          v25 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24 - [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDistance]];
        }

        else
        {
          v25 = 0;
        }

        v26 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize]+ v25;
        v27 = northings[v26];
        v93 = northings[v25];
        windowSize = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v92 = eastings[v26];
        v90 = eastings[v25];
        windowSize2 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v28 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24];
        v29 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize]+ v28;
        v88 = northings[v29];
        v30 = northings[v28];
        windowSize3 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v31 = eastings[v29];
        v32 = eastings[v28];
        windowSize4 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v33 = 0.0;
        if (v24 + v85 >= [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDwellness])
        {
          v82 = v24;
          v34 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24];
          numOfTimeStepForDwellness = [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDwellness];
          if (v34 < [(RTVisitHyperParameter *)self->_hyperParameter stride]* numOfTimeStepForDwellness)
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            *buf = 0;
            v14 = "Invalid parameter not satisfying: startLocation >= _hyperParameter.numOfTimeStepForDwellness * _hyperParameter.stride";
LABEL_19:
            _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
            goto LABEL_20;
          }

          v81 = v27;
          numOfTimeStepForDwellness2 = [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDwellness];
          stride2 = [(RTVisitHyperParameter *)self->_hyperParameter stride];
          if ([(RTVisitHyperParameter *)self->_hyperParameter windowSize])
          {
            v38 = 0;
            v39 = v34 - stride2 * numOfTimeStepForDwellness2;
            v40 = v34 + 1;
            v41 = ~v34;
            v42 = 0.0;
            v43 = v34 + 1;
            v77 = v39;
            v78 = vectorCopy;
            v76 = v34 + 1;
LABEL_30:
            v44 = squaredNorthingsCopy;
            v45 = squaredEastingsCopy;
            v46 = 0;
            v47 = v39 + v38;
            v79 = v43;
            v80 = v38;
            v48 = v40 + v38;
            v49 = 0.0;
            v50 = v43;
            while (1)
            {
              if (!(v41 + v46))
              {
                v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_20;
                }

                *buf = 0;
                v14 = "Invalid parameter not satisfying: 0<locationInterval";
                goto LABEL_19;
              }

              if (v48 >= locations)
              {
                break;
              }

              [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeRadiusFromCumSumNorthings:northings cumSumEastings:eastings cumSumSquaredNorthings:v44 cumSumSuaredEastings:v45 firstLocationIndex:v46 lastLocationIndex:v48];
              v52 = v51;
              v53 = v50 / (v21 / v50 + (v52 * [(RTVisitHyperParameter *)self->_hyperParameter stride]));
              if (v53 > v49)
              {
                v49 = v53;
              }

              ++v46;
              --v50;
              if (v46 > v47)
              {
                v42 = v42 + v49;
                v38 = v80 + 1;
                windowSize5 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
                --v41;
                v43 = v79 + 1;
                squaredEastingsCopy = v45;
                squaredNorthingsCopy = v44;
                v39 = v77;
                vectorCopy = v78;
                v40 = v76;
                if (v80 + 1 < windowSize5)
                {
                  goto LABEL_30;
                }

                goto LABEL_39;
              }
            }

            v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            *buf = 0;
            v14 = "Invalid parameter not satisfying: lastLocationIndex<cumSumNumLocations";
            goto LABEL_19;
          }

          v42 = 0.0;
LABEL_39:
          v33 = v42 / [(RTVisitHyperParameter *)self->_hyperParameter windowSize:v76];
          lengthCopy2 = length;
          v24 = v82;
          v27 = v81;
        }

        if ([(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForRadius]<= v24)
        {
          v55 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24 - [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForRadius]];
        }

        else
        {
          v55 = 0;
        }

        v56 = sqrt(((v88 - v30) / windowSize3 - (v27 - v93) / windowSize) * ((v88 - v30) / windowSize3 - (v27 - v93) / windowSize) + ((v31 - v32) / windowSize4 - (v92 - v90) / windowSize2) * ((v31 - v32) / windowSize4 - (v92 - v90) / windowSize2));
        [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeRadiusFromCumSumNorthings:northings cumSumEastings:eastings cumSumSquaredNorthings:squaredNorthingsCopy cumSumSuaredEastings:squaredEastingsCopy firstLocationIndex:v55 lastLocationIndex:[(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24]];
        v58 = v57;
        v59 = objc_opt_class();
        [(RTVisitHyperParameter *)self->_hyperParameter featureDistanceMin];
        v61 = v60;
        [(RTVisitHyperParameter *)self->_hyperParameter featureDistanceMax];
        [v59 normalizeFeature:v56 min:v61 max:v62];
        *&v63 = v63;
        v64 = &vectorCopy[v24];
        *v64 = *&v63;
        v65 = objc_opt_class();
        v66 = log(v84 + v33);
        [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMin];
        v68 = v67;
        [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMax];
        [v65 normalizeFeature:v66 min:v68 max:v69];
        *&v70 = v70;
        v64[lengthCopy2] = *&v70;
        v71 = objc_opt_class();
        [(RTVisitHyperParameter *)self->_hyperParameter featureRadiusMin];
        v73 = v72;
        [(RTVisitHyperParameter *)self->_hyperParameter featureRadiusMax];
        [v71 normalizeFeature:v58 min:v73 max:v74];
        *&v75 = v75;
        v83[v24++] = *&v75;
        result = 1;
        if (v24 == lengthCopy2)
        {
          return result;
        }
      }
    }

    return 1;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: cumSumSquaredEastings";
      goto LABEL_19;
    }

LABEL_20:

    return 0;
  }
}

- (float)computeFeatureVectorFromLocations:(id)locations start:(unint64_t)start end:(unint64_t)end
{
  locationsCopy = locations;
  if (!locationsCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Invalid parameter not satisfying: locations";
      goto LABEL_34;
    }

LABEL_9:

    v12 = 0;
    goto LABEL_10;
  }

  v9 = end - start;
  if (end <= start)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Invalid parameter not satisfying: start < end";
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  if ([(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength]+ start > end)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Invalid parameter not satisfying: start + _hyperParameter.minSequenceLength <= end";
LABEL_34:
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v14 = [(RTVisitHyperParameter *)self->_hyperParameter stride]* start;
  v15 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self numLocationsFrom:end];
  v16 = v15 - v14;
  if (v15 <= v14)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Invalid parameter not satisfying: startLocationIndex < endLocationIndex";
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  if (v15 > [locationsCopy count])
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Invalid parameter not satisfying: endLocationIndex <= locations.count";
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  v17 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
  v18 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
  v19 = v18;
  if (v17)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "fail to allocate memory for northings and eastings", buf, 2u);
    }

    v12 = 0;
  }

  else
  {
    v22 = [locationsCopy objectAtIndexedSubscript:v14];
    [v22 latitude];

    v23 = [locationsCopy objectAtIndexedSubscript:v14];
    [v23 longitude];

    v24 = 0;
    v27 = v16;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    do
    {
      *buf = 0;
      v25 = [locationsCopy objectAtIndexedSubscript:v14];
      [v25 latitude];
      v26 = [locationsCopy objectAtIndexedSubscript:v14];
      [v26 longitude];
      RTCommonConvertGeodeticToLocalFrame();

      v24 += 8;
      ++v14;
      --v16;
    }

    while (v16);
    v12 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeFeatureVectorFromLocalFramesNumOfLocations:v27 northings:v17 eastings:v19 sequenceLength:v9];
  }

  if (v17)
  {
    free(v17);
  }

  if (v19)
  {
    free(v19);
  }

LABEL_10:

  return v12;
}

- (id)createVisitWithLocations:(id)locations entryDate:(id)date exitDate:(id)exitDate
{
  v80 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  dateCopy = date;
  exitDateCopy = exitDate;
  if (dateCopy)
  {
    visit = [(RTVisitCluster *)self->_workingVisitCluster visit];
    location = [visit location];

    if ([locationsCopy count])
    {
      v13 = objc_alloc(MEMORY[0x277D01160]);
      v14 = [locationsCopy objectAtIndexedSubscript:0];
      [v14 latitude];
      v16 = v15;
      v17 = [locationsCopy objectAtIndexedSubscript:0];
      [v17 longitude];
      v19 = [v13 initWithLatitude:dateCopy longitude:v16 horizontalUncertainty:v18 date:0.0];

      v20 = [locationsCopy indexOfObject:v19 inSortedRange:0 options:objc_msgSend(locationsCopy usingComparator:{"count"), 1280, &__block_literal_global_65}];
      if (v20 >= [locationsCopy count])
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v41 = "Invalid parameter not satisfying: firstInsideVisitIndex < locations.count";
LABEL_26:
          v42 = buf;
LABEL_27:
          _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, v41, v42, 2u);
        }

LABEL_50:

        v33 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v21 = [locationsCopy count];
      v73 = exitDateCopy;
      if (exitDateCopy)
      {
        v71 = location;
        v22 = objc_alloc(MEMORY[0x277D01160]);
        v23 = [locationsCopy objectAtIndexedSubscript:0];
        [v23 latitude];
        v25 = v24;
        v26 = [locationsCopy objectAtIndexedSubscript:0];
        [v26 longitude];
        v28 = [v22 initWithLatitude:exitDateCopy longitude:v25 horizontalUncertainty:v27 date:0.0];

        v29 = [locationsCopy indexOfObject:v28 inSortedRange:v20 options:objc_msgSend(locationsCopy usingComparator:{"count") - v20, 1536, &__block_literal_global_65}];
        if (v29 < [locationsCopy count])
        {
          v30 = [locationsCopy objectAtIndexedSubscript:v29];
          date = [v30 date];
          v32 = [exitDateCopy isEqualToDate:date];

          v29 += v32 & 1;
        }

        v19 = v28;
        location = v71;
      }

      else
      {
        v29 = v21;
      }

      if (v29 < v20)
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v41 = "Invalid parameter not satisfying: firstOutsideVisitIndex >= firstInsideVisitIndex";
          goto LABEL_26;
        }

        goto LABEL_50;
      }

      self->_numOfLocations += v29 - v20;
      if (!self->_referenceLocation)
      {
        v43 = [locationsCopy objectAtIndexedSubscript:v20];
        referenceLocation = self->_referenceLocation;
        self->_referenceLocation = v43;
      }

      v70 = v29 - v20;
      v72 = v19;
      if (v29 > v20)
      {
        v45 = v20;
        while (1)
        {
          v76 = 0.0;
          *buf = 0;
          v75 = 0.0;
          [(RTLocation *)self->_referenceLocation latitude];
          [(RTLocation *)self->_referenceLocation longitude];
          v46 = [locationsCopy objectAtIndexedSubscript:v45];
          [v46 latitude];
          v47 = [locationsCopy objectAtIndexedSubscript:v45];
          [v47 longitude];
          v48 = RTCommonConvertGeodeticToLocalFrame();

          if ((v48 & 1) == 0)
          {
            break;
          }

          sumOfNorthing = v76 + self->_sumOfNorthing;
          sumOfSquaredEasting = self->_sumOfSquaredEasting;
          sumOfSquaredNorthing = v76 * v76 + self->_sumOfSquaredNorthing;
          v52 = v75;
          sumOfEasting = v75 + self->_sumOfEasting;
          self->_sumOfNorthing = sumOfNorthing;
          self->_sumOfEasting = sumOfEasting;
          v54 = v52 * v52 + sumOfSquaredEasting;
          self->_sumOfSquaredNorthing = sumOfSquaredNorthing;
          self->_sumOfSquaredEasting = v54;
          if (v29 == ++v45)
          {
            goto LABEL_36;
          }
        }

        v66 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: result", v74, 2u);
        }

        v33 = 0;
        v19 = v72;
        exitDateCopy = v73;
        goto LABEL_51;
      }

      sumOfNorthing = self->_sumOfNorthing;
      sumOfEasting = self->_sumOfEasting;
      sumOfSquaredNorthing = self->_sumOfSquaredNorthing;
      v54 = self->_sumOfSquaredEasting;
LABEL_36:
      numOfLocations = self->_numOfLocations;
      v56 = sumOfNorthing / numOfLocations;
      v76 = 0.0;
      *buf = 0;
      v57 = sumOfEasting / numOfLocations;
      [(RTLocation *)self->_referenceLocation latitude];
      [(RTLocation *)self->_referenceLocation longitude];
      v19 = v72;
      if (RTCommonConvertLocalFrameToGeodetic())
      {
        RTCommonIsCoordinateValid();
        exitDateCopy = v73;
        if (v58 != 0.0)
        {
          v59 = sqrt(vabdd_f64(sumOfSquaredNorthing / numOfLocations, v56 * v56));
          v60 = sqrt(vabdd_f64(v54 / numOfLocations, v57 * v57));
          v61 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:*buf horizontalUncertainty:v76 date:sqrt(v59 * v59 + v60 * v60)];

          v34 = 0;
          if (v29 != v20)
          {
            v62 = v61;
            v63 = [RTVisitLocationPoints alloc];
            v64 = [locationsCopy subarrayWithRange:{v20, v70}];
            v65 = v63;
            v61 = v62;
            v34 = [(RTVisitLocationPoints *)v65 initWithLocations:v64];
          }

          location = v61;
          if (!v61)
          {
            goto LABEL_41;
          }

          goto LABEL_11;
        }

        v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        LOWORD(v75) = 0;
        v41 = "Invalid parameter not satisfying: RTCommonIsCoordinateValid(meanLat, meanLon)";
      }

      else
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        exitDateCopy = v73;
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        LOWORD(v75) = 0;
        v41 = "Invalid parameter not satisfying: result";
      }

      v42 = &v75;
      goto LABEL_27;
    }

    v34 = 0;
    if (!location)
    {
LABEL_41:
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: centroid", buf, 2u);
      }

      v33 = 0;
      location = v34;
      goto LABEL_51;
    }

LABEL_11:
    v35 = objc_alloc(MEMORY[0x277D01428]);
    date2 = [MEMORY[0x277CBEAA8] date];
    if (exitDateCopy)
    {
      v37 = 3;
    }

    else
    {
      v37 = 1;
    }

    v38 = [v35 initWithDate:date2 type:v37 location:location entry:dateCopy exit:exitDateCopy dataPointCount:self->_numOfLocations confidence:*MEMORY[0x277D01470] placeInference:0];

    v33 = [[RTVisitCluster alloc] initWithPoints:v34 visit:v38];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        *buf = 138412547;
        *&buf[4] = v69;
        v78 = 2117;
        v79 = v33;
        _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "%@ add out cluster, %{sensitive}@", buf, 0x16u);
      }
    }

    v19 = v34;
    goto LABEL_51;
  }

  location = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, location, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entryDate", buf, 2u);
  }

  v33 = 0;
LABEL_52:

  return v33;
}

uint64_t __94__RTVisitPipelineModuleTrajectorySequenceCluster_createVisitWithLocations_entryDate_exitDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)clearWorkingVisitCluster
{
  [(RTVisitDecoder *)self->_decoder reset];
  workingVisitCluster = self->_workingVisitCluster;
  self->_workingVisitCluster = 0;

  self->_numOfLocations = 0;
  *&self->_sumOfNorthing = 0u;
  *&self->_sumOfSquaredNorthing = 0u;
  referenceLocation = self->_referenceLocation;
  self->_referenceLocation = 0;

  residualLocations = self->_residualLocations;
  self->_residualLocations = 0;
}

- (id)performBatchInferenceWithFeatureVector:(const float *)vector featureVectorLength:(unint64_t)length start:(unint64_t)start firstTimeStepDate:(id)date
{
  dateCopy = date;
  v32 = dateCopy;
  if (!vector)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v39 = 0;
    v23 = "Invalid parameter not satisfying: featureVector";
    v24 = &v39;
LABEL_23:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v23, v24, 2u);
    goto LABEL_24;
  }

  v11 = length - start;
  if (length <= start)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v38 = 0;
    v23 = "Invalid parameter not satisfying: start < featureVectorLength";
    v24 = &v38;
    goto LABEL_23;
  }

  v12 = dateCopy;
  if (!dateCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: firstTimeStepDate";
      v24 = buf;
      goto LABEL_23;
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  minSequenceLength = [(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength];
  maxSequenceLength = [(RTVisitHyperParameter *)self->_hyperParameter maxSequenceLength];
  if (v11 >= maxSequenceLength)
  {
    v11 = maxSequenceLength;
  }

  v15 = [v12 dateByAddingTimeInterval:{(-[RTVisitHyperParameter windowInterval](self->_hyperParameter, "windowInterval") * (start + minSequenceLength - 1))}];
  onDeviceInferenceBatchSize = [(RTVisitHyperParameter *)self->_hyperParameter onDeviceInferenceBatchSize];
  if (minSequenceLength > v11)
  {
    goto LABEL_24;
  }

  v17 = onDeviceInferenceBatchSize;
  v18 = v11;
  v30 = 0;
  v19 = v15;
  while (1)
  {
    if (v18 < minSequenceLength + [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution:v30]* (v17 - 1))
    {
      v20 = v18 + ~minSequenceLength + [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution];
      v17 = v20 / [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution]+ 1;
    }

    if (!v17)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v36 = 0;
        v27 = "Invalid parameter not satisfying: 0 < batchSize";
        v28 = &v36;
        goto LABEL_39;
      }

LABEL_33:

      v29 = v31;
      goto LABEL_36;
    }

    if (v17 > [(RTVisitHyperParameter *)self->_hyperParameter onDeviceInferenceBatchSize])
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = 0;
        v27 = "Invalid parameter not satisfying: batchSize <= _hyperParameter.onDeviceInferenceBatchSize";
        v28 = &v35;
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    v21 = [(RTVisitModelController *)self->_trajectorySequenceClassifier predictFromInput:vector featureVectorStride:length firstSequenceIndex:start firstSequenceLength:minSequenceLength batchSize:v17];
    if (!v21)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *v34 = 0;
      v27 = "Invalid parameter not satisfying: output";
      v28 = v34;
LABEL_39:
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, v28, 2u);
      goto LABEL_33;
    }

    v22 = [(RTVisitDecoder *)self->_decoder decodeWithProbabilities:v21 batchSize:v17 firstTimeStepDate:v19];

    if (!v22)
    {
      break;
    }

    if ([v22 completeVisit])
    {
      goto LABEL_37;
    }

    minSequenceLength += [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution]* v17;
    v15 = [v19 dateByAddingTimeInterval:([(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution]* v17 * [(RTVisitHyperParameter *)self->_hyperParameter windowInterval])];

    v19 = v15;
    v30 = v22;
    if (minSequenceLength > v18)
    {
      goto LABEL_25;
    }
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *v33 = 0;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoded", v33, 2u);
  }

LABEL_36:

  v22 = 0;
LABEL_37:
  v15 = v19;
LABEL_25:

  return v22;
}

- (id)process:(id)process
{
  v139 = *MEMORY[0x277D85DE8];
  processCopy = process;
  array = [MEMORY[0x277CBEB18] array];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v6 = processCopy;
  v119 = [v6 countByEnumeratingWithState:&v120 objects:v138 count:16];
  if (!v119)
  {
LABEL_121:

    v98 = array;
    goto LABEL_127;
  }

  v8 = MEMORY[0x277D86220];
  v118 = *v121;
  *&v7 = 134218240;
  v106 = v7;
  v112 = array;
  obj = v6;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v121 != v118)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(*(&v120 + 1) + 8 * v9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138412547;
        v125 = v68;
        v126 = 2117;
        v127 = v10;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@ working on cluster, %{sensitive}@", buf, 0x16u);
      }
    }

    points = [v10 points];
    locations = [points locations];

    if ([(NSArray *)self->_residualLocations count])
    {
      points2 = [v10 points];
      locations2 = [points2 locations];
      if ([locations2 count])
      {
        v16 = v10;
        lastObject = [(NSArray *)self->_residualLocations lastObject];
        date = [lastObject date];
        firstObject = [locations firstObject];
        date2 = [firstObject date];
        [date timeIntervalSinceDate:date2];
        v22 = v21;
        v23 = [(RTVisitHyperParameter *)self->_hyperParameter timeIntervalBetweenSmoothedPoints]+ 1.0;

        if (v22 > v23)
        {
          v8 = MEMORY[0x277D86220];
          v10 = v16;
          goto LABEL_17;
        }

        [(NSArray *)self->_residualLocations arrayByAddingObjectsFromArray:locations];
        locations = points2 = locations;
        v8 = MEMORY[0x277D86220];
        v10 = v16;
      }

      else
      {
      }
    }

LABEL_17:
    residualLocations = self->_residualLocations;
    self->_residualLocations = 0;

    points3 = [v10 points];
    locations3 = [points3 locations];
    v27 = [locations3 count];

    if (v27)
    {
      break;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      p_super = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138412290;
        v125 = v35;
        _os_log_debug_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_DEBUG, "%@ early bail: receiving forced exit signal", buf, 0xCu);
      }

      goto LABEL_108;
    }

LABEL_109:
    visit = [v10 visit];
    exit = [visit exit];

    if (exit)
    {
      workingVisitCluster = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self workingVisitCluster];

      if (workingVisitCluster)
      {
        points4 = [v10 points];
        locations4 = [points4 locations];
        visit2 = [(RTVisitCluster *)self->_workingVisitCluster visit];
        entry = [visit2 entry];
        visit3 = [v10 visit];
        exit2 = [visit3 exit];
        v96 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self createVisitWithLocations:locations4 entryDate:entry exitDate:exit2];

        v8 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v97 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_2304B3000, v97, OS_LOG_TYPE_DEBUG, "partial visit: use incoming visit to complete working visit", buf, 2u);
          }
        }

        if (v96)
        {
          [v112 addObject:v96];
        }
      }

      [(RTVisitPipelineModuleTrajectorySequenceCluster *)self clearWorkingVisitCluster];
    }

    if (++v9 == v119)
    {
      v6 = obj;
      array = v112;
      v119 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
      if (!v119)
      {
        goto LABEL_121;
      }

      goto LABEL_3;
    }
  }

  v28 = [locations count];
  minSequenceLength = [(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength];
  windowSize = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
  if (v28 < [(RTVisitHyperParameter *)self->_hyperParameter referenceSize]+ windowSize * minSequenceLength)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        v77 = [locations count];
        *buf = 138412546;
        v125 = v76;
        v126 = 2048;
        v127 = v77;
        _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "%@ early bail: insufficient number of locations, %lu", buf, 0x16u);
      }
    }

    v32 = locations;
    p_super = &self->_residualLocations->super;
    self->_residualLocations = v32;
LABEL_108:

    goto LABEL_109;
  }

  v36 = -[RTVisitPipelineModuleTrajectorySequenceCluster sequenceLengthFrom:](self, "sequenceLengthFrom:", [locations count]);
  v37 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeFeatureVectorFromLocations:locations start:0 end:v36];
  if (!v37)
  {
    v102 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v102, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: featureVector", buf, 2u);
    }

    array = v112;
    v103 = v112;
    v6 = obj;
    goto LABEL_126;
  }

  v38 = v37;
  v113 = [locations count];
  v39 = [locations objectAtIndexedSubscript:{-[RTVisitPipelineModuleTrajectorySequenceCluster startLocationIndex:](self, "startLocationIndex:", 0)}];
  p_super = [v39 date];

  if ([(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength]> v36)
  {
    v40 = 0;
    v41 = 0;
LABEL_100:
    v81 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:&v41[v113]];
    if (v81 < [locations count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v82 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          *buf = v106;
          v125 = v40;
          v126 = 2048;
          v127 = v36;
          _os_log_debug_impl(&dword_2304B3000, v82, OS_LOG_TYPE_DEBUG, "keeping residual locations for start, %lu, featureVectorSequenceLength, %lu", buf, 0x16u);
        }
      }

      v83 = [locations count] - v81;
      maxSequenceLength = [(RTVisitHyperParameter *)self->_hyperParameter maxSequenceLength];
      if (v83 > [(RTVisitHyperParameter *)self->_hyperParameter windowSize]* maxSequenceLength)
      {
        v99 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v99, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count - residualLocationIndex <= _hyperParameter.maxSequenceLength * _hyperParameter.windowSize", buf, 2u);
        }

        array = v112;
        v6 = obj;
        goto LABEL_125;
      }

      v85 = [locations subarrayWithRange:{v81, objc_msgSend(locations, "count") - v81}];
      v86 = self->_residualLocations;
      self->_residualLocations = v85;
    }

    free(v38);
    v8 = MEMORY[0x277D86220];
    goto LABEL_108;
  }

  v108 = v10;
  v109 = v36;
  v116 = 0;
  v117 = locations;
  v40 = 0;
  while (2)
  {
    maxSequenceLength2 = [(RTVisitHyperParameter *)self->_hyperParameter maxSequenceLength];
    v43 = maxSequenceLength2 + v40;
    if (v36 >= maxSequenceLength2 + v40)
    {
      v44 = maxSequenceLength2 + v40;
    }

    else
    {
      v44 = v36;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v45 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v64 = NSStringFromSelector(a2);
        numOfLocations = self->_numOfLocations;
        *buf = 138413826;
        v125 = v64;
        v126 = 2048;
        v127 = v116;
        v128 = 2048;
        v129 = v40;
        v130 = 2048;
        v131 = v44;
        v132 = 2048;
        v133 = v36;
        v134 = 2112;
        v135 = p_super;
        v136 = 2048;
        v137 = numOfLocations;
        _os_log_debug_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEBUG, "%@: featureVectorStart=%lu, predictionStart=%lu, maxPredictionStop=%lu, featureVectorLength=%lu, firstTimeStepDate=%@, _numOfLocations=%lu", buf, 0x48u);

        v8 = MEMORY[0x277D86220];
      }
    }

    v46 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self performBatchInferenceWithFeatureVector:v38 featureVectorLength:v36 start:v40 firstTimeStepDate:p_super];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v47 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138739971;
        v125 = v46;
        _os_log_debug_impl(&dword_2304B3000, v47, OS_LOG_TYPE_DEBUG, "decoded=%{sensitive}@", buf, 0xCu);
      }

      v8 = MEMORY[0x277D86220];
    }

    if (v46)
    {
      if ([v46 noVisit])
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v48 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEBUG, "no visit detected", buf, 2u);
          }

          v8 = MEMORY[0x277D86220];
        }

        if (v43 >= v36)
        {
          v41 = v116;
          goto LABEL_98;
        }

        noVisitMargin = [(RTVisitHyperParameter *)self->_hyperParameter noVisitMargin];
LABEL_57:
        v40 = v44 - noVisitMargin;
      }

      else
      {
        if ([v46 partialVisit])
        {
          if (v43 >= v36)
          {
            entryDate = [v46 entryDate];
            visit4 = [v108 visit];
            exit3 = [visit4 exit];
            v70 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self createVisitWithLocations:v117 entryDate:entryDate exitDate:exit3];

            if (v70)
            {
              [v112 addObject:v70];
            }

            v111 = v70;
            visit5 = [v108 visit];
            exit4 = [visit5 exit];

            v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
            if (exit4)
            {
              if (v73)
              {
                v74 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_2304B3000, v74, OS_LOG_TYPE_DEBUG, "partial visit: use incoming visit to complete", buf, 2u);
                }
              }

              [(RTVisitPipelineModuleTrajectorySequenceCluster *)self clearWorkingVisitCluster];
            }

            else
            {
              if (v73)
              {
                v80 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138739971;
                  v125 = v111;
                  _os_log_debug_impl(&dword_2304B3000, v80, OS_LOG_TYPE_DEBUG, "partial visit: working visit: %{sensitive}@", buf, 0xCu);
                }
              }

              objc_storeStrong(&self->_workingVisitCluster, v111);
            }

            v41 = v116;
            v113 = v44 - [(RTVisitHyperParameter *)self->_hyperParameter partialVisitMargin];
            v56 = v111;
            goto LABEL_97;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v50 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEBUG, "partial visit: continuing without yielding", buf, 2u);
            }
          }

          noVisitMargin = [(RTVisitHyperParameter *)self->_hyperParameter partialVisitMargin];
          goto LABEL_57;
        }

        if ([v46 completeVisit])
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEBUG, "complete visit", buf, 2u);
            }
          }

          exitDate = [v46 exitDate];
          v53 = [exitDate isBeforeDate:p_super];

          if (v53)
          {
            [v46 setExitDate:p_super];
          }

          entryDate2 = [v46 entryDate];
          exitDate2 = [v46 exitDate];
          v56 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self createVisitWithLocations:v117 entryDate:entryDate2 exitDate:exitDate2];

          if (v56)
          {
            [v112 addObject:v56];
          }

          [(RTVisitPipelineModuleTrajectorySequenceCluster *)self clearWorkingVisitCluster];
          exitDate3 = [v46 exitDate];
          v58 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self sequenceIndexFromDate:exitDate3 firstTimeStepDate:p_super];
          v40 = v58 + [(RTVisitHyperParameter *)self->_hyperParameter completeVisitMargin]+ 1;

          if ([(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength]+ v40 > v36)
          {
            v78 = v36 >= [(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength]+ v40 || v40 >= v36;
            v79 = v113;
            if (!v78)
            {
              v79 = v40;
            }

            v113 = v79;
            v41 = v116;
LABEL_97:

LABEL_98:
            locations = v117;
LABEL_99:
            v10 = v108;
            goto LABEL_100;
          }

          v59 = &v116[v40];
          free(v38);
          v60 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeFeatureVectorFromLocations:v117 start:&v116[v40] end:v109];
          if (!v60)
          {
            v104 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2304B3000, v104, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: featureVector", buf, 2u);
            }

            array = v112;
            v105 = v112;

            v6 = obj;
            locations = v117;
            goto LABEL_126;
          }

          v38 = v60;
          v61 = [v117 objectAtIndexedSubscript:{-[RTVisitPipelineModuleTrajectorySequenceCluster startLocationIndex:](self, "startLocationIndex:", v59)}];
          date3 = [v61 date];

          v116 = v59;
          v36 = v109 - v59;

          v40 = 0;
          p_super = date3;
        }

        else
        {
          v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            decoder = self->_decoder;
            *buf = 138412802;
            v125 = decoder;
            v126 = 2080;
            v127 = "[RTVisitPipelineModuleTrajectorySequenceCluster process:]";
            v128 = 1024;
            LODWORD(v129) = 590;
            _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "decoded visit is not valid, decoder=%@ (in %s:%d)", buf, 0x1Cu);
          }
        }

        v8 = MEMORY[0x277D86220];
      }

      if ([(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength]+ v40 > v36)
      {
        v41 = v116;
        locations = v117;
        goto LABEL_99;
      }

      continue;
    }

    break;
  }

  v99 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v99, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoded", buf, 2u);
  }

  array = v112;
  v6 = obj;
  locations = v117;
LABEL_125:

  v100 = array;
LABEL_126:

LABEL_127:

  return array;
}

@end