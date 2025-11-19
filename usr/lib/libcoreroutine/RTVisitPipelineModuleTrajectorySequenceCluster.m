@interface RTVisitPipelineModuleTrajectorySequenceCluster
+ (double)normalizeFeature:(double)a3 min:(double)a4 max:(double)a5;
- (BOOL)computeFeatureVector:(float *)a3 cumSumNumLocations:(unint64_t)a4 cumSumNorthings:(double *)a5 cumSumEastings:(double *)a6 cumSumSquaredNorthings:(double *)a7 cumSumSquaredEastings:(double *)a8 sequenceLength:(unint64_t)a9;
- (RTVisitPipelineModuleTrajectorySequenceCluster)initWithVisitTrajectorySequenceClassifier:(id)a3 hyperParameter:(id)a4;
- (double)computeRadiusFromCumSumNorthings:(const double *)a3 cumSumEastings:(const double *)a4 cumSumSquaredNorthings:(const double *)a5 cumSumSuaredEastings:(const double *)a6 firstLocationIndex:(unint64_t)a7 lastLocationIndex:(unint64_t)a8;
- (float)computeFeatureVectorFromLocalFramesNumOfLocations:(unint64_t)a3 northings:(const double *)a4 eastings:(const double *)a5 sequenceLength:(unint64_t)a6;
- (float)computeFeatureVectorFromLocations:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5;
- (id)createVisitWithLocations:(id)a3 entryDate:(id)a4 exitDate:(id)a5;
- (id)performBatchInferenceWithFeatureVector:(const float *)a3 featureVectorLength:(unint64_t)a4 start:(unint64_t)a5 firstTimeStepDate:(id)a6;
- (id)process:(id)a3;
- (unint64_t)numLocationsFrom:(unint64_t)a3;
- (unint64_t)sequenceIndexFromDate:(id)a3 firstTimeStepDate:(id)a4;
- (unint64_t)sequenceLengthFrom:(unint64_t)a3;
- (void)clearWorkingVisitCluster;
@end

@implementation RTVisitPipelineModuleTrajectorySequenceCluster

+ (double)normalizeFeature:(double)a3 min:(double)a4 max:(double)a5
{
  if (a3 < a4)
  {
    a3 = a4;
  }

  if (a3 >= a5)
  {
    a3 = a5;
  }

  return -(a4 + a5 - a3 * 2.0) / (a5 - a4);
}

- (RTVisitPipelineModuleTrajectorySequenceCluster)initWithVisitTrajectorySequenceClassifier:(id)a3 hyperParameter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: trajectorySequenceClassifier";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
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
    objc_storeStrong(&v10->_trajectorySequenceClassifier, a3);
    objc_storeStrong(&v11->_hyperParameter, a4);
    v12 = [[RTVisitDecoder alloc] initWithHyperParameter:v9];
    decoder = v11->_decoder;
    v11->_decoder = v12;
  }

  self = v11;
  v14 = self;
LABEL_10:

  return v14;
}

- (unint64_t)numLocationsFrom:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3 - 1;
  v5 = [(RTVisitHyperParameter *)self->_hyperParameter stride];
  v6 = [(RTVisitHyperParameter *)self->_hyperParameter referenceSize]+ v5 * v4;
  return v6 + [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
}

- (unint64_t)sequenceLengthFrom:(unint64_t)a3
{
  v5 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
  v6 = [(RTVisitHyperParameter *)self->_hyperParameter referenceSize]+ v5;
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    return v8 / [(RTVisitHyperParameter *)self->_hyperParameter stride]+ 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)sequenceIndexFromDate:(id)a3 firstTimeStepDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
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

  if (([v7 isOnOrBefore:v6] & 1) == 0)
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

  [v6 timeIntervalSinceDate:v8];
  v10 = (v9 / [(RTVisitHyperParameter *)self->_hyperParameter windowInterval]);
LABEL_8:

  return v10;
}

- (double)computeRadiusFromCumSumNorthings:(const double *)a3 cumSumEastings:(const double *)a4 cumSumSquaredNorthings:(const double *)a5 cumSumSuaredEastings:(const double *)a6 firstLocationIndex:(unint64_t)a7 lastLocationIndex:(unint64_t)a8
{
  if (a8 <= a7)
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
    v11 = a3[a8] - a3[a7];
    v10 = a8 - a7;
    return sqrt(vabdd_f64((a5[a8] - a5[a7] + a6[a8] - a6[a7]) / v10, (v11 * v11 + (a4[a8] - a4[a7]) * (a4[a8] - a4[a7])) / (v10 * v10)));
  }
}

- (float)computeFeatureVectorFromLocalFramesNumOfLocations:(unint64_t)a3 northings:(const double *)a4 eastings:(const double *)a5 sequenceLength:(unint64_t)a6
{
  if (a6)
  {
    v9 = a3;
    v34 = a3 + 1;
    v11 = 8 * (a3 + 1);
    v12 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v13 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v14 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v15 = malloc_type_malloc(v11, 0x100004000313F17uLL);
    v16 = v15;
    if (v12 && v13 && v14 && v15)
    {
      v17 = malloc_type_malloc(4 * a6 * [(RTVisitHyperParameter *)self->_hyperParameter featureDimension], 0x100004052888210uLL);
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
      if (v9)
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
          v27 = *a4++;
          v28 = v27;
          v26 = v26 + v27;
          v29 = *a5++;
          v25 = v25 + v29;
          v24 = v24 + v28 * v28;
          *v22++ = v26;
          *v21++ = v25;
          v23 = v23 + v29 * v29;
          *v20++ = v24;
          *v19++ = v23;
          --v9;
        }

        while (v9);
      }

      if (![(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeFeatureVector:v17 cumSumNumLocations:v34 cumSumNorthings:v12 cumSumEastings:v13 cumSumSquaredNorthings:v14 cumSumSquaredEastings:v16 sequenceLength:a6])
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

- (BOOL)computeFeatureVector:(float *)a3 cumSumNumLocations:(unint64_t)a4 cumSumNorthings:(double *)a5 cumSumEastings:(double *)a6 cumSumSquaredNorthings:(double *)a7 cumSumSquaredEastings:(double *)a8 sequenceLength:(unint64_t)a9
{
  if (!a3)
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

  if (!a5)
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

  if (!a6)
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

  v11 = a7;
  if (!a7)
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

  v12 = a8;
  if (a8)
  {
    if (a4 <= 1)
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

    v16 = a3;
    v18 = a9;
    [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMin];
    v84 = exp(v19);
    [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMax];
    v21 = exp(-v20);
    v22 = [(RTVisitHyperParameter *)self->_hyperParameter referenceSize];
    v23 = [(RTVisitHyperParameter *)self->_hyperParameter stride];
    if (a9)
    {
      v24 = 0;
      v83 = &v16[2 * a9];
      v85 = v22 / v23;
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
        v27 = a5[v26];
        v93 = a5[v25];
        v91 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v92 = a6[v26];
        v90 = a6[v25];
        v89 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v28 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24];
        v29 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize]+ v28;
        v88 = a5[v29];
        v30 = a5[v28];
        v87 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v31 = a6[v29];
        v32 = a6[v28];
        v86 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
        v33 = 0.0;
        if (v24 + v85 >= [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDwellness])
        {
          v82 = v24;
          v34 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24];
          v35 = [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDwellness];
          if (v34 < [(RTVisitHyperParameter *)self->_hyperParameter stride]* v35)
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
          v36 = [(RTVisitHyperParameter *)self->_hyperParameter numOfTimeStepForDwellness];
          v37 = [(RTVisitHyperParameter *)self->_hyperParameter stride];
          if ([(RTVisitHyperParameter *)self->_hyperParameter windowSize])
          {
            v38 = 0;
            v39 = v34 - v37 * v36;
            v40 = v34 + 1;
            v41 = ~v34;
            v42 = 0.0;
            v43 = v34 + 1;
            v77 = v39;
            v78 = v16;
            v76 = v34 + 1;
LABEL_30:
            v44 = v11;
            v45 = v12;
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

              if (v48 >= a4)
              {
                break;
              }

              [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeRadiusFromCumSumNorthings:a5 cumSumEastings:a6 cumSumSquaredNorthings:v44 cumSumSuaredEastings:v45 firstLocationIndex:v46 lastLocationIndex:v48];
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
                v54 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
                --v41;
                v43 = v79 + 1;
                v12 = v45;
                v11 = v44;
                v39 = v77;
                v16 = v78;
                v40 = v76;
                if (v80 + 1 < v54)
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
          v18 = a9;
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

        v56 = sqrt(((v88 - v30) / v87 - (v27 - v93) / v91) * ((v88 - v30) / v87 - (v27 - v93) / v91) + ((v31 - v32) / v86 - (v92 - v90) / v89) * ((v31 - v32) / v86 - (v92 - v90) / v89));
        [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeRadiusFromCumSumNorthings:a5 cumSumEastings:a6 cumSumSquaredNorthings:v11 cumSumSuaredEastings:v12 firstLocationIndex:v55 lastLocationIndex:[(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:v24]];
        v58 = v57;
        v59 = objc_opt_class();
        [(RTVisitHyperParameter *)self->_hyperParameter featureDistanceMin];
        v61 = v60;
        [(RTVisitHyperParameter *)self->_hyperParameter featureDistanceMax];
        [v59 normalizeFeature:v56 min:v61 max:v62];
        *&v63 = v63;
        v64 = &v16[v24];
        *v64 = *&v63;
        v65 = objc_opt_class();
        v66 = log(v84 + v33);
        [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMin];
        v68 = v67;
        [(RTVisitHyperParameter *)self->_hyperParameter featureDwellnessLogMax];
        [v65 normalizeFeature:v66 min:v68 max:v69];
        *&v70 = v70;
        v64[v18] = *&v70;
        v71 = objc_opt_class();
        [(RTVisitHyperParameter *)self->_hyperParameter featureRadiusMin];
        v73 = v72;
        [(RTVisitHyperParameter *)self->_hyperParameter featureRadiusMax];
        [v71 normalizeFeature:v58 min:v73 max:v74];
        *&v75 = v75;
        v83[v24++] = *&v75;
        result = 1;
        if (v24 == v18)
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

- (float)computeFeatureVectorFromLocations:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5
{
  v8 = a3;
  if (!v8)
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

  v9 = a5 - a4;
  if (a5 <= a4)
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

  if ([(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength]+ a4 > a5)
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

  v14 = [(RTVisitHyperParameter *)self->_hyperParameter stride]* a4;
  v15 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self numLocationsFrom:a5];
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

  if (v15 > [v8 count])
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
    v22 = [v8 objectAtIndexedSubscript:v14];
    [v22 latitude];

    v23 = [v8 objectAtIndexedSubscript:v14];
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
      v25 = [v8 objectAtIndexedSubscript:v14];
      [v25 latitude];
      v26 = [v8 objectAtIndexedSubscript:v14];
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

- (id)createVisitWithLocations:(id)a3 entryDate:(id)a4 exitDate:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(RTVisitCluster *)self->_workingVisitCluster visit];
    v12 = [v11 location];

    if ([v8 count])
    {
      v13 = objc_alloc(MEMORY[0x277D01160]);
      v14 = [v8 objectAtIndexedSubscript:0];
      [v14 latitude];
      v16 = v15;
      v17 = [v8 objectAtIndexedSubscript:0];
      [v17 longitude];
      v19 = [v13 initWithLatitude:v9 longitude:v16 horizontalUncertainty:v18 date:0.0];

      v20 = [v8 indexOfObject:v19 inSortedRange:0 options:objc_msgSend(v8 usingComparator:{"count"), 1280, &__block_literal_global_65}];
      if (v20 >= [v8 count])
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

      v21 = [v8 count];
      v73 = v10;
      if (v10)
      {
        v71 = v12;
        v22 = objc_alloc(MEMORY[0x277D01160]);
        v23 = [v8 objectAtIndexedSubscript:0];
        [v23 latitude];
        v25 = v24;
        v26 = [v8 objectAtIndexedSubscript:0];
        [v26 longitude];
        v28 = [v22 initWithLatitude:v10 longitude:v25 horizontalUncertainty:v27 date:0.0];

        v29 = [v8 indexOfObject:v28 inSortedRange:v20 options:objc_msgSend(v8 usingComparator:{"count") - v20, 1536, &__block_literal_global_65}];
        if (v29 < [v8 count])
        {
          v30 = [v8 objectAtIndexedSubscript:v29];
          v31 = [v30 date];
          v32 = [v10 isEqualToDate:v31];

          v29 += v32 & 1;
        }

        v19 = v28;
        v12 = v71;
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
        v43 = [v8 objectAtIndexedSubscript:v20];
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
          v46 = [v8 objectAtIndexedSubscript:v45];
          [v46 latitude];
          v47 = [v8 objectAtIndexedSubscript:v45];
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
        v10 = v73;
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
        v10 = v73;
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
            v64 = [v8 subarrayWithRange:{v20, v70}];
            v65 = v63;
            v61 = v62;
            v34 = [(RTVisitLocationPoints *)v65 initWithLocations:v64];
          }

          v12 = v61;
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
        v10 = v73;
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
    if (!v12)
    {
LABEL_41:
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: centroid", buf, 2u);
      }

      v33 = 0;
      v12 = v34;
      goto LABEL_51;
    }

LABEL_11:
    v35 = objc_alloc(MEMORY[0x277D01428]);
    v36 = [MEMORY[0x277CBEAA8] date];
    if (v10)
    {
      v37 = 3;
    }

    else
    {
      v37 = 1;
    }

    v38 = [v35 initWithDate:v36 type:v37 location:v12 entry:v9 exit:v10 dataPointCount:self->_numOfLocations confidence:*MEMORY[0x277D01470] placeInference:0];

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

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entryDate", buf, 2u);
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

- (id)performBatchInferenceWithFeatureVector:(const float *)a3 featureVectorLength:(unint64_t)a4 start:(unint64_t)a5 firstTimeStepDate:(id)a6
{
  v10 = a6;
  v32 = v10;
  if (!a3)
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

  v11 = a4 - a5;
  if (a4 <= a5)
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

  v12 = v10;
  if (!v10)
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

  v13 = [(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength];
  v14 = [(RTVisitHyperParameter *)self->_hyperParameter maxSequenceLength];
  if (v11 >= v14)
  {
    v11 = v14;
  }

  v15 = [v12 dateByAddingTimeInterval:{(-[RTVisitHyperParameter windowInterval](self->_hyperParameter, "windowInterval") * (a5 + v13 - 1))}];
  v16 = [(RTVisitHyperParameter *)self->_hyperParameter onDeviceInferenceBatchSize];
  if (v13 > v11)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = v11;
  v30 = 0;
  v19 = v15;
  while (1)
  {
    if (v18 < v13 + [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution:v30]* (v17 - 1))
    {
      v20 = v18 + ~v13 + [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution];
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

    v21 = [(RTVisitModelController *)self->_trajectorySequenceClassifier predictFromInput:a3 featureVectorStride:a4 firstSequenceIndex:a5 firstSequenceLength:v13 batchSize:v17];
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

    v13 += [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution]* v17;
    v15 = [v19 dateByAddingTimeInterval:([(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution]* v17 * [(RTVisitHyperParameter *)self->_hyperParameter windowInterval])];

    v19 = v15;
    v30 = v22;
    if (v13 > v18)
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

- (id)process:(id)a3
{
  v139 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v6 = v4;
  v119 = [v6 countByEnumeratingWithState:&v120 objects:v138 count:16];
  if (!v119)
  {
LABEL_121:

    v98 = v5;
    goto LABEL_127;
  }

  v8 = MEMORY[0x277D86220];
  v118 = *v121;
  *&v7 = 134218240;
  v106 = v7;
  v112 = v5;
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

    v12 = [v10 points];
    v13 = [v12 locations];

    if ([(NSArray *)self->_residualLocations count])
    {
      v14 = [v10 points];
      v15 = [v14 locations];
      if ([v15 count])
      {
        v16 = v10;
        v17 = [(NSArray *)self->_residualLocations lastObject];
        v18 = [v17 date];
        v19 = [v13 firstObject];
        v20 = [v19 date];
        [v18 timeIntervalSinceDate:v20];
        v22 = v21;
        v23 = [(RTVisitHyperParameter *)self->_hyperParameter timeIntervalBetweenSmoothedPoints]+ 1.0;

        if (v22 > v23)
        {
          v8 = MEMORY[0x277D86220];
          v10 = v16;
          goto LABEL_17;
        }

        [(NSArray *)self->_residualLocations arrayByAddingObjectsFromArray:v13];
        v13 = v14 = v13;
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

    v25 = [v10 points];
    v26 = [v25 locations];
    v27 = [v26 count];

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
    v87 = [v10 visit];
    v88 = [v87 exit];

    if (v88)
    {
      v89 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self workingVisitCluster];

      if (v89)
      {
        v90 = [v10 points];
        v91 = [v90 locations];
        v92 = [(RTVisitCluster *)self->_workingVisitCluster visit];
        v93 = [v92 entry];
        v94 = [v10 visit];
        v95 = [v94 exit];
        v96 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self createVisitWithLocations:v91 entryDate:v93 exitDate:v95];

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
      v5 = v112;
      v119 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
      if (!v119)
      {
        goto LABEL_121;
      }

      goto LABEL_3;
    }
  }

  v28 = [v13 count];
  v29 = [(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength];
  v30 = [(RTVisitHyperParameter *)self->_hyperParameter windowSize];
  if (v28 < [(RTVisitHyperParameter *)self->_hyperParameter referenceSize]+ v30 * v29)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        v77 = [v13 count];
        *buf = 138412546;
        v125 = v76;
        v126 = 2048;
        v127 = v77;
        _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "%@ early bail: insufficient number of locations, %lu", buf, 0x16u);
      }
    }

    v32 = v13;
    p_super = &self->_residualLocations->super;
    self->_residualLocations = v32;
LABEL_108:

    goto LABEL_109;
  }

  v36 = -[RTVisitPipelineModuleTrajectorySequenceCluster sequenceLengthFrom:](self, "sequenceLengthFrom:", [v13 count]);
  v37 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self computeFeatureVectorFromLocations:v13 start:0 end:v36];
  if (!v37)
  {
    v102 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v102, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: featureVector", buf, 2u);
    }

    v5 = v112;
    v103 = v112;
    v6 = obj;
    goto LABEL_126;
  }

  v38 = v37;
  v113 = [v13 count];
  v39 = [v13 objectAtIndexedSubscript:{-[RTVisitPipelineModuleTrajectorySequenceCluster startLocationIndex:](self, "startLocationIndex:", 0)}];
  p_super = [v39 date];

  if ([(RTVisitHyperParameter *)self->_hyperParameter minSequenceLength]> v36)
  {
    v40 = 0;
    v41 = 0;
LABEL_100:
    v81 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self startLocationIndex:&v41[v113]];
    if (v81 < [v13 count])
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

      v83 = [v13 count] - v81;
      v84 = [(RTVisitHyperParameter *)self->_hyperParameter maxSequenceLength];
      if (v83 > [(RTVisitHyperParameter *)self->_hyperParameter windowSize]* v84)
      {
        v99 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v99, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count - residualLocationIndex <= _hyperParameter.maxSequenceLength * _hyperParameter.windowSize", buf, 2u);
        }

        v5 = v112;
        v6 = obj;
        goto LABEL_125;
      }

      v85 = [v13 subarrayWithRange:{v81, objc_msgSend(v13, "count") - v81}];
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
  v117 = v13;
  v40 = 0;
  while (2)
  {
    v42 = [(RTVisitHyperParameter *)self->_hyperParameter maxSequenceLength];
    v43 = v42 + v40;
    if (v36 >= v42 + v40)
    {
      v44 = v42 + v40;
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

        v49 = [(RTVisitHyperParameter *)self->_hyperParameter noVisitMargin];
LABEL_57:
        v40 = v44 - v49;
      }

      else
      {
        if ([v46 partialVisit])
        {
          if (v43 >= v36)
          {
            v110 = [v46 entryDate];
            v114 = [v108 visit];
            v69 = [v114 exit];
            v70 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self createVisitWithLocations:v117 entryDate:v110 exitDate:v69];

            if (v70)
            {
              [v112 addObject:v70];
            }

            v111 = v70;
            v71 = [v108 visit];
            v72 = [v71 exit];

            v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
            if (v72)
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

          v49 = [(RTVisitHyperParameter *)self->_hyperParameter partialVisitMargin];
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

          v52 = [v46 exitDate];
          v53 = [v52 isBeforeDate:p_super];

          if (v53)
          {
            [v46 setExitDate:p_super];
          }

          v54 = [v46 entryDate];
          v55 = [v46 exitDate];
          v56 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self createVisitWithLocations:v117 entryDate:v54 exitDate:v55];

          if (v56)
          {
            [v112 addObject:v56];
          }

          [(RTVisitPipelineModuleTrajectorySequenceCluster *)self clearWorkingVisitCluster];
          v57 = [v46 exitDate];
          v58 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)self sequenceIndexFromDate:v57 firstTimeStepDate:p_super];
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
            v13 = v117;
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

            v5 = v112;
            v105 = v112;

            v6 = obj;
            v13 = v117;
            goto LABEL_126;
          }

          v38 = v60;
          v61 = [v117 objectAtIndexedSubscript:{-[RTVisitPipelineModuleTrajectorySequenceCluster startLocationIndex:](self, "startLocationIndex:", v59)}];
          v62 = [v61 date];

          v116 = v59;
          v36 = v109 - v59;

          v40 = 0;
          p_super = v62;
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
        v13 = v117;
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

  v5 = v112;
  v6 = obj;
  v13 = v117;
LABEL_125:

  v100 = v5;
LABEL_126:

LABEL_127:

  return v5;
}

@end