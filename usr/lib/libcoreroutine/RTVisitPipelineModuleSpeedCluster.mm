@interface RTVisitPipelineModuleSpeedCluster
- (NSString)description;
- (RTVisitPipelineModuleSpeedCluster)initWithHyperParameter:(id)a3;
- (id)process:(id)a3;
- (void)clearAndAddForcedExitSignalToClusters:(id)a3;
- (void)clearWorkingVisit;
@end

@implementation RTVisitPipelineModuleSpeedCluster

- (RTVisitPipelineModuleSpeedCluster)initWithHyperParameter:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = RTVisitPipelineModuleSpeedCluster;
    v6 = [(RTVisitPipelineModuleSpeedCluster *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_hyperParameter, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hyperParameter", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"SpeedCluster"];
  if (self->_workingVisit)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"working visit, %@", self->_workingVisit];
    [v3 appendString:v4];
  }

  return v3;
}

- (void)clearWorkingVisit
{
  lastPoint = self->_lastPoint;
  self->_lastPoint = 0;

  workingVisit = self->_workingVisit;
  self->_workingVisit = 0;
}

- (void)clearAndAddForcedExitSignalToClusters:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_workingVisit)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[RTVisitPipelineModuleSpeedCluster clearAndAddForcedExitSignalToClusters:]";
      v9 = 1024;
      v10 = 63;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "cannot create exit signal without working visit (in %s:%d)", &v7, 0x12u);
    }
  }

  v6 = [[RTVisitCluster alloc] initWithPoints:0 visit:self->_workingVisit];
  if (v6)
  {
    [v4 addObject:v6];
  }

  [(RTVisitPipelineModuleSpeedCluster *)self clearWorkingVisit];
}

- (id)process:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    v5 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTVisitPipelineModuleSpeedCluster process:]";
      *&buf[12] = 1024;
      *&buf[14] = 73;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inClusters.count (in %s:%d)", buf, 0x12u);
    }

    v4 = v5;
  }

  v44 = v4;
  if ([v4 count])
  {
    v48 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v4;
    v47 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
    if (v47)
    {
      v7 = MEMORY[0x277D86220];
      v46 = *v54;
      do
      {
        v8 = 0;
        do
        {
          if (*v54 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v53 + 1) + 8 * v8);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v36 = objc_opt_class();
              v37 = NSStringFromClass(v36);
              *buf = 138412547;
              *&buf[4] = v37;
              *&buf[12] = 2117;
              *&buf[14] = v9;
              _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@ working on cluster, %{sensitive}@", buf, 0x16u);
            }
          }

          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              workingVisit = self->_workingVisit;
              *buf = 138412547;
              *&buf[4] = v39;
              *&buf[12] = 2117;
              *&buf[14] = workingVisit;
              _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@ working visit, %{sensitive}@", buf, 0x16u);
            }
          }

          v12 = [v9 points];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v65 = __Block_byref_object_copy__167;
          v66 = __Block_byref_object_dispose__167;
          v67 = 0;
          v13 = [v12 locations];
          v14 = [v13 count] == 0;

          if (v14)
          {
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              v24 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *v58 = 0;
                _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "received forced exit signal", v58, 2u);
              }
            }

            [(RTVisitPipelineModuleSpeedCluster *)self clearAndAddForcedExitSignalToClusters:v48];
          }

          else
          {
            v15 = self->_workingVisit;
            if (v15)
            {
              if (!self->_lastPoint)
              {
                v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v41 = self->_workingVisit;
                  *v58 = 138740483;
                  v59 = v41;
                  v60 = 2080;
                  v61 = "[RTVisitPipelineModuleSpeedCluster process:]";
                  v62 = 1024;
                  v63 = 93;
                  _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "no last point in working visit, %{sensitive}@ (in %s:%d)", v58, 0x1Cu);
                }

                v15 = self->_workingVisit;
              }

              v17 = [(RTVisit *)v15 entry];
              v18 = [v9 isDateInside:v17];

              v19 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
              if (v18)
              {
                if (v19)
                {
                  v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                  {
                    lastPoint = self->_lastPoint;
                    *v58 = 138739971;
                    v59 = lastPoint;
                    _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "working visit is inside and use last point, %{sensitive}@", v58, 0xCu);
                  }
                }

                objc_storeStrong((*&buf[8] + 40), self->_lastPoint);
                v21 = [*(*&buf[8] + 40) date];
                v22 = [v9 isDateInside:v21];

                if ((v22 & 1) == 0)
                {
                  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    *v58 = 136315394;
                    v59 = "[RTVisitPipelineModuleSpeedCluster process:]";
                    v60 = 1024;
                    LODWORD(v61) = 98;
                    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "working visit is inside but last point is not (in %s:%d)", v58, 0x12u);
                  }
                }
              }

              else
              {
                if (v19)
                {
                  v25 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    *v58 = 0;
                    _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "working visit is outside. send forced exit signal", v58, 2u);
                  }
                }

                [(RTVisitPipelineModuleSpeedCluster *)self clearAndAddForcedExitSignalToClusters:v48];
              }
            }

            if (*(*&buf[8] + 40))
            {
              v57 = *(*&buf[8] + 40);
              v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
              v27 = [RTVisitLocationPoints alloc];
              v28 = [v12 locations];
              v29 = [v26 arrayByAddingObjectsFromArray:v28];
              v30 = [(RTVisitLocationPoints *)v27 initWithLocations:v29];

              v12 = v30;
            }

            hyperParameter = self->_hyperParameter;
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __45__RTVisitPipelineModuleSpeedCluster_process___block_invoke;
            v49[3] = &unk_2788D1340;
            v52 = buf;
            v49[4] = self;
            v32 = v48;
            v50 = v32;
            v51 = v9;
            [v12 enumerateLowSpeedSegementsUsingBlock:hyperParameter block:v49];
            if (self->_workingVisit)
            {
              v33 = [v9 visit];
              v34 = [v33 exit];
              v35 = v34 == 0;

              if (!v35)
              {
                [(RTVisitPipelineModuleSpeedCluster *)self clearAndAddForcedExitSignalToClusters:v32];
              }
            }
          }

          _Block_object_dispose(buf, 8);

          ++v8;
        }

        while (v47 != v8);
        v47 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
      }

      while (v47);
    }
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

void __45__RTVisitPipelineModuleSpeedCluster_process___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (a4)
  {
    if (![v6 count])
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "[RTVisitPipelineModuleSpeedCluster process:]_block_invoke";
        v48 = 1024;
        LODWORD(v49) = 114;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count (in %s:%d)", buf, 0x12u);
      }
    }

    v9 = [v7 firstObject];
    v10 = [v9 date];

    v11 = [v7 lastObject];
    v12 = [v11 date];

    v13 = [*(*(*(a1 + 56) + 8) + 40) date];
    v14 = [v13 isEqualToDate:v10];

    if (v14)
    {
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;

      if ([v7 count] == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "only last point is in this segment.  send force exit signal", buf, 2u);
          }
        }

        [*(a1 + 32) clearAndAddForcedExitSignalToClusters:*(a1 + 40)];
        goto LABEL_26;
      }

      v20 = [*(*(a1 + 32) + 8) entry];

      v21 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];

      v10 = v20;
      v7 = v21;
    }

    else
    {
      v18 = *(a1 + 32);
      if (v18[1])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v47 = v10;
            _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "working visit is terminated as last point of low speed segment is, %@", buf, 0xCu);
          }

          v18 = *(a1 + 32);
        }

        [v18 clearAndAddForcedExitSignalToClusters:*(a1 + 40)];
      }
    }

    if ([*(a1 + 48) isPartialAndExitDateIsEqualToDate:v12])
    {
      v22 = [v7 lastObject];
      v23 = *(a1 + 32);
      v24 = *(v23 + 16);
      *(v23 + 16) = v22;

      v25 = [MEMORY[0x277CBEAA8] date];
      v26 = objc_alloc(MEMORY[0x277D01428]);
      v27 = [v7 firstObject];
      v28 = *MEMORY[0x277D01470];
      v29 = [v26 initWithDate:v25 type:1 location:v27 entry:v10 exit:v12 dataPointCount:0 confidence:*MEMORY[0x277D01470] placeInference:0];
      v30 = *(a1 + 32);
      v31 = *(v30 + 8);
      *(v30 + 8) = v29;

      v32 = objc_alloc(MEMORY[0x277D01428]);
      v33 = [*(*(a1 + 32) + 8) location];
      v34 = [v32 initWithDate:v25 type:1 location:v33 entry:v10 exit:0 dataPointCount:0 confidence:v28 placeInference:0];
LABEL_31:
      v40 = v34;

      v41 = [[RTVisitLocationPoints alloc] initWithLocations:v7];
      v42 = [[RTVisitCluster alloc] initWithPoints:v41 visit:v40];
      if (v42)
      {
        [*(a1 + 40) addObject:v42];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          *buf = 138412547;
          v47 = v45;
          v48 = 2117;
          v49 = v42;
          _os_log_debug_impl(&dword_2304B3000, v43, OS_LOG_TYPE_DEBUG, "%@ adding to output clusters, %{sensitive}@", buf, 0x16u);
        }
      }

      *a4 = 0;

      goto LABEL_38;
    }

    v35 = [*(*(a1 + 32) + 8) entry];
    v36 = [v7 lastObject];
    v37 = [v36 date];
    if ([v35 isEqualToDate:v37])
    {

LABEL_26:
      *a4 = 0;
LABEL_38:

      goto LABEL_39;
    }

    if (*(*(a1 + 32) + 8))
    {
    }

    else
    {
      v38 = [v7 count];

      if (v38 == 1)
      {
        goto LABEL_26;
      }
    }

    [*(a1 + 32) clearWorkingVisit];
    v39 = objc_alloc(MEMORY[0x277D01428]);
    v25 = [MEMORY[0x277CBEAA8] date];
    v33 = [v7 firstObject];
    v34 = [v39 initWithDate:v25 type:3 location:v33 entry:v10 exit:v12 dataPointCount:0 confidence:*MEMORY[0x277D01470] placeInference:0];
    goto LABEL_31;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v47 = "[RTVisitPipelineModuleSpeedCluster process:]_block_invoke";
    v48 = 1024;
    LODWORD(v49) = 110;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: stop (in %s:%d)", buf, 0x12u);
  }

LABEL_39:
}

@end