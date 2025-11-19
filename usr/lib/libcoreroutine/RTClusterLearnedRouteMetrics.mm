@interface RTClusterLearnedRouteMetrics
+ (id)sharedInstance:(id)a3;
- (RTClusterLearnedRouteMetrics)init;
- (id)prepareCloudSyncMetrics;
- (id)prepareMetrics;
- (void)_initData;
- (void)_processClusterStatistics;
- (void)_processCompoundRouteMetric;
- (void)printMetricDictionary:(id)a3;
- (void)submitToCoreAnalytics:(int64_t)a3;
@end

@implementation RTClusterLearnedRouteMetrics

- (void)_initData
{
  clusterMetrics = self->_clusterMetrics;
  self->_clusterMetrics = 0;

  spiStatMetrics = self->_spiStatMetrics;
  self->_spiStatMetrics = 0;

  cloudKitSyncMetrics = self->_cloudKitSyncMetrics;
  self->_cloudKitSyncMetrics = 0;

  multiModalStatMetrics = self->_multiModalStatMetrics;
  self->_multiModalStatMetrics = 0;

  compoundRouteMetric = self->_compoundRouteMetric;
  self->_compoundRouteMetric = 0;

  clusterStatisticsArray = self->_clusterStatisticsArray;
  self->_clusterStatisticsArray = 0;

  compoundRoutesArray = self->_compoundRoutesArray;
  self->_compoundRoutesArray = 0;
}

- (RTClusterLearnedRouteMetrics)init
{
  v5.receiver = self;
  v5.super_class = RTClusterLearnedRouteMetrics;
  v2 = [(RTClusterLearnedRouteMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTClusterLearnedRouteMetrics *)v2 _initData];
  }

  return v3;
}

+ (id)sharedInstance:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTClusterLearnedRouteMetrics_sharedInstance___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_2814A7DB8 != -1)
  {
    dispatch_once(&qword_2814A7DB8, block);
  }

  if (_MergedGlobals_123)
  {
    [_MergedGlobals_123 setDefaultsManager:v4];
    v5 = _MergedGlobals_123;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

uint64_t __47__RTClusterLearnedRouteMetrics_sharedInstance___block_invoke(uint64_t a1)
{
  _MergedGlobals_123 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)_processCompoundRouteMetric
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_compoundRoutesArray)
  {
    v3 = objc_alloc_init(RTLearnedRouteCompoundRouteMetrics);
    compoundRouteMetric = self->_compoundRouteMetric;
    self->_compoundRouteMetric = v3;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_compoundRoutesArray;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v9 = 0.0;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          -[RTLearnedRouteCompoundRouteMetrics setCompoundRoutesNumFailureTripSegments:](self->_compoundRouteMetric, "setCompoundRoutesNumFailureTripSegments:", -[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureTripSegments](self->_compoundRouteMetric, "compoundRoutesNumFailureTripSegments") + [v12 compoundRoutesNumFailureTripSegments]);
          -[RTLearnedRouteCompoundRouteMetrics setCompoundRoutesNumSuccessTripSegments:](self->_compoundRouteMetric, "setCompoundRoutesNumSuccessTripSegments:", -[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumSuccessTripSegments](self->_compoundRouteMetric, "compoundRoutesNumSuccessTripSegments") + [v12 compoundRoutesNumSuccessTripSegments]);
          -[RTLearnedRouteCompoundRouteMetrics setCompoundRoutesNumFailureDrivesTooFar:](self->_compoundRouteMetric, "setCompoundRoutesNumFailureDrivesTooFar:", -[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureDrivesTooFar](self->_compoundRouteMetric, "compoundRoutesNumFailureDrivesTooFar") + [v12 compoundRoutesNumFailureDrivesTooFar]);
          -[RTLearnedRouteCompoundRouteMetrics setCompoundRoutesNumFailureDrivesTooLong:](self->_compoundRouteMetric, "setCompoundRoutesNumFailureDrivesTooLong:", -[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureDrivesTooLong](self->_compoundRouteMetric, "compoundRoutesNumFailureDrivesTooLong") + [v12 compoundRoutesNumFailureDrivesTooLong]);
          -[RTLearnedRouteCompoundRouteMetrics setCompoundRoutesNumFailureDrivesTooMany:](self->_compoundRouteMetric, "setCompoundRoutesNumFailureDrivesTooMany:", -[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureDrivesTooMany](self->_compoundRouteMetric, "compoundRoutesNumFailureDrivesTooMany") + [v12 compoundRoutesNumFailureDrivesTooMany]);
          [v12 compoundRoutesNumDriveSegmentsCompoundedAvg];
          v10 = v10 + v13;
          [v12 compoundRoutesDistanceBetweenAdjacentCompoundTripSegmentsAvg];
          v9 = v9 + v14;
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
      v10 = 0.0;
    }

    v20 = [(NSMutableArray *)self->_compoundRoutesArray count];
    if (v20)
    {
      v21 = v20;
      v22 = v10 / v21;
      *&v22 = v10 / v21;
      [(RTLearnedRouteCompoundRouteMetrics *)self->_compoundRouteMetric setCompoundRoutesNumDriveSegmentsCompoundedAvg:v22];
      v23 = v9 / v21;
      v24 = v9 / v21;
    }

    else
    {
      v24 = 0.0;
      [(RTLearnedRouteCompoundRouteMetrics *)self->_compoundRouteMetric setCompoundRoutesNumDriveSegmentsCompoundedAvg:0.0];
    }

    *&v23 = v24;
    [(RTLearnedRouteCompoundRouteMetrics *)self->_compoundRouteMetric setCompoundRoutesDistanceBetweenAdjacentCompoundTripSegmentsAvg:v23, v25];
    p_super = &self->_compoundRoutesArray->super.super;
    self->_compoundRoutesArray = 0;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    p_super = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_INFO, "%@:%@,No Compund Routes for metrics", buf, 0x16u);
    }
  }
}

- (void)_processClusterStatistics
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = [(RTClusterLearnedRouteMetrics *)self defaultsManager];
  v5 = [RTClusterLearnedRouteMetrics sharedInstance:v4];

  if (v5)
  {
    v6 = [v5 clusterStatisticsArray];

    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        v84 = v9;
        v85 = 2112;
        v86 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@,Cluster data for metrics", buf, 0x16u);
      }

      if (!self->_clusterMetrics)
      {
        v11 = objc_alloc_init(RTLearnedRouteClusterStatisticsMetrics);
        clusterMetrics = self->_clusterMetrics;
        self->_clusterMetrics = v11;
      }

      aSelector = a2;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v13 = self->_clusterStatisticsArray;
      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v79 objects:v107 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = *v80;
        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v80 != v19)
            {
              objc_enumerationMutation(v13);
            }

            v27 = *(*(&v79 + 1) + 8 * i);
            [v27 tripsToFormLearnedRouteAvg];
            if (v28 > 0.0)
            {
              ++v17;
            }

            [v27 dtwForMatchedTripAvg];
            if (v29 >= 0.0)
            {
              [v27 dtwForMatchedTripAvg];
              v25 = v25 + v30;
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics dtwForMatchedTripMax];
              v32 = v31;
              [v27 dtwForMatchedTripAvg];
              *&v34 = fmaxf(v32, v33);
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setDtwForMatchedTripMax:v34];
              ++v18;
              [v27 routeLengthAvg];
              v23 = v23 + v35;
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics routeLengthMax];
              v37 = v36;
              [v27 routeLengthMax];
              *&v39 = fmaxf(v37, v38);
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setRouteLengthMax:v39];
              [v27 tripsToFormLearnedRouteAvg];
              v22 = v22 + v40;
              -[RTLearnedRouteClusterStatisticsMetrics setTripsToFormLearnedRouteMax:](self->_clusterMetrics, "setTripsToFormLearnedRouteMax:", fmax(-[RTLearnedRouteClusterStatisticsMetrics tripsToFormLearnedRouteMax](self->_clusterMetrics, "tripsToFormLearnedRouteMax"), [v27 tripsToFormLearnedRouteMax]));
              [v27 waypointCountAvg];
              v21 = v21 + v41;
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics waypointCountMax];
              v43 = fmax(v42, v21);
              *&v43 = v43;
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setWaypointCountMax:v43];
              -[RTLearnedRouteClusterStatisticsMetrics setNumOfDaysSinceClusterTraversalMax:](self->_clusterMetrics, "setNumOfDaysSinceClusterTraversalMax:", fmax(-[RTLearnedRouteClusterStatisticsMetrics numOfDaysSinceClusterTraversalMax](self->_clusterMetrics, "numOfDaysSinceClusterTraversalMax"), [v27 numOfDaysSinceClusterTraversalMax]));
              -[RTLearnedRouteClusterStatisticsMetrics setNumClustersBetweenODPairMax:](self->_clusterMetrics, "setNumClustersBetweenODPairMax:", fmax(-[RTLearnedRouteClusterStatisticsMetrics numClustersBetweenODPairMax](self->_clusterMetrics, "numClustersBetweenODPairMax"), [v27 numClustersBetweenODPairMax]));
              [v27 clusterProcessingRunTimeAvg];
              v20 = v20 + v44;
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics clusterProcessingRunTimeMax];
              v46 = v45;
              [v27 clusterProcessingRunTimeAvg];
              *&v48 = fmaxf(v46, v47);
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setClusterProcessingRunTimeMax:v48];
            }

            [v27 dtwForUnmatchedTripAvg];
            if (v49 >= 0.0)
            {
              [v27 dtwForUnmatchedTripAvg];
              v51 = v50;
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics dtwForUnmatchedTripMax];
              v53 = v52;
              [v27 dtwForUnmatchedTripAvg];
              *&v55 = fmaxf(v53, v54);
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setDtwForUnmatchedTripMax:v55];
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics dtwForUnmatchedTripMin];
              if (v56 >= 0.0)
              {
                [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics dtwForUnmatchedTripMin];
                v59 = v58;
                [v27 dtwForUnmatchedTripAvg];
                *&v57 = fminf(v59, *&v57);
              }

              else
              {
                [v27 dtwForUnmatchedTripAvg];
              }

              v24 = v24 + v51;
              [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setDtwForUnmatchedTripMin:v57];
              ++v16;
            }
          }

          v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v79 objects:v107 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
      }

      v64 = [(NSMutableArray *)self->_clusterStatisticsArray count];
      v65 = 0.0;
      v66 = 0.0;
      if (v18)
      {
        v66 = v25 / v18;
        *&v66 = v66;
      }

      [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setDtwForMatchedTripAvg:v66];
      if (v16)
      {
        v67 = v24 / v16;
        v65 = v67;
      }

      *&v67 = v65;
      [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setDtwForUnmatchedTripAvg:v67];
      v68 = 0.0;
      v69 = 0.0;
      if (v18)
      {
        v69 = v23 / v18;
        *&v69 = v69;
      }

      [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setRouteLengthAvg:v69];
      if (v17)
      {
        v70 = v22 / v17;
        v68 = v70;
      }

      *&v70 = v68;
      [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setTripsToFormLearnedRouteAvg:v70];
      v71 = 0.0;
      v72 = 0.0;
      if (v18)
      {
        v72 = v21 / v18;
        *&v72 = v72;
      }

      [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setWaypointCountAvg:v72];
      if (v64)
      {
        v73 = v20 / v64;
        v71 = v73;
      }

      *&v73 = v71;
      [(RTLearnedRouteClusterStatisticsMetrics *)self->_clusterMetrics setClusterProcessingRunTimeAvg:v73];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v74 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v75 = objc_opt_class();
          v76 = NSStringFromClass(v75);
          v77 = NSStringFromSelector(aSelector);
          *buf = 138415106;
          v84 = v76;
          v85 = 2112;
          v86 = v77;
          v87 = 1026;
          v88 = v18;
          v89 = 1026;
          v90 = v16;
          v91 = 1026;
          v92 = v17;
          v93 = 1026;
          v94 = v64;
          v95 = 2050;
          v96 = v25;
          v97 = 2050;
          v98 = v24;
          v99 = 2050;
          v100 = v23;
          v101 = 2050;
          v102 = v22;
          v103 = 2050;
          v104 = v21;
          v105 = 2050;
          v106 = v20;
          _os_log_debug_impl(&dword_2304B3000, v74, OS_LOG_TYPE_DEBUG, "%@:%@,Cluster data for metrics,numberOfMatchedCluster,%{public}d,numberOfUnMatchedCluster,%{public}d,numberOfTripsToFormLR,%{public}d,numberOfClusterStat,%{public}d,dtwForMatchedTripAvg,%{public}.3lf,dtwForUnmatchedTripAvg,%{public}.3lf,routeLengthAvg,%{public}.3lf,tripsToFormLearnedRouteAvg,%{public}.3lf,waypointCountAvg,%{public}.3lf,clusterProcessingRunTimeAvg,%{public}.3lf", buf, 0x6Au);
        }
      }

      p_super = &self->_clusterStatisticsArray->super.super;
      self->_clusterStatisticsArray = 0;
LABEL_45:

      goto LABEL_46;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    p_super = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = NSStringFromSelector(a2);
      *buf = 138412546;
      v84 = v62;
      v85 = 2112;
      v86 = v63;
      _os_log_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_INFO, "%@:%@,No Cluster data for metrics", buf, 0x16u);
    }

    goto LABEL_45;
  }

LABEL_46:
}

- (id)prepareCloudSyncMetrics
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = self->_cloudKitSyncMetrics;
  if (!v2)
  {
    v2 = [[RTLearnedRouteCloudKitSyncStatisticsMetrics alloc] initForDefaultMetric];
  }

  v11[0] = @"NumEntriesTripClusterMO";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCloudKitSyncStatisticsMetrics numEntriesTripClusterMO](v2, "numEntriesTripClusterMO")}];
  v12[0] = v3;
  v11[1] = @"NumEntriesTripClusterRecencyMO";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCloudKitSyncStatisticsMetrics numEntriesTripClusterRecencyMO](v2, "numEntriesTripClusterRecencyMO")}];
  v12[1] = v4;
  v11[2] = @"NumEntriesTripClusterRoadTransitionsMO";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCloudKitSyncStatisticsMetrics numEntriesTripClusterRoadTransitionsMO](v2, "numEntriesTripClusterRoadTransitionsMO")}];
  v12[2] = v5;
  v11[3] = @"NumEntriesTripClusterRouteMO";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCloudKitSyncStatisticsMetrics numEntriesTripClusterRouteMO](v2, "numEntriesTripClusterRouteMO")}];
  v12[3] = v6;
  v11[4] = @"NumEntriesTripClusterScheduleMO";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCloudKitSyncStatisticsMetrics numEntriesTripClusterScheduleMO](v2, "numEntriesTripClusterScheduleMO")}];
  v12[4] = v7;
  v11[5] = @"NumTransactionsTripClusterRoadTransitionsMO";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCloudKitSyncStatisticsMetrics numTransactionsTripClusterRoadTransitionsMO](v2, "numTransactionsTripClusterRoadTransitionsMO")}];
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (id)prepareMetrics
{
  v127[74] = *MEMORY[0x277D85DE8];
  [(RTClusterLearnedRouteMetrics *)self _processClusterStatistics];
  [(RTClusterLearnedRouteMetrics *)self _processCompoundRouteMetric];
  v3 = self->_clusterMetrics;
  v4 = self->_spiStatMetrics;
  v5 = self->_multiModalStatMetrics;
  v6 = self->_compoundRouteMetric;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = [[RTLearnedRouteClusterStatisticsMetrics alloc] initForDefaultMetric];
    if (v4)
    {
LABEL_3:
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      v5 = [[RTLearnedRouteMultiModalStatisticsMetrics alloc] initForDefaultMetric];
      if (v6)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v4 = [[RTLearnedRouteSPIStatisticsMetrics alloc] initForDefaultMetric];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_11:
  v6 = [[RTLearnedRouteCompoundRouteMetrics alloc] initForDefaultMetric];
LABEL_5:
  v126[0] = @"DTWForMatchedTripAvg";
  v7 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 dtwForMatchedTripAvg];
  v125 = [v7 numberWithFloat:?];
  v127[0] = v125;
  v126[1] = @"DTWForMatchedTripMax";
  v8 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 dtwForMatchedTripMax];
  v124 = [v8 numberWithFloat:?];
  v127[1] = v124;
  v126[2] = @"DTWForUnmatchedTripAvg";
  v9 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 dtwForUnmatchedTripAvg];
  v123 = [v9 numberWithFloat:?];
  v127[2] = v123;
  v126[3] = @"DTWForUnmatchedTripMax";
  v10 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 dtwForUnmatchedTripMax];
  v122 = [v10 numberWithFloat:?];
  v127[3] = v122;
  v126[4] = @"DTWForUnmatchedTripMin";
  v11 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 dtwForUnmatchedTripMin];
  v121 = [v11 numberWithFloat:?];
  v127[4] = v121;
  v126[5] = @"RouteLengthAvg";
  v12 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 routeLengthAvg];
  v120 = [v12 numberWithFloat:?];
  v127[5] = v120;
  v126[6] = @"RouteLengthMax";
  v13 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 routeLengthMax];
  v119 = [v13 numberWithFloat:?];
  v127[6] = v119;
  v126[7] = @"TripsToFormLearnedRouteAvg";
  v14 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 tripsToFormLearnedRouteAvg];
  v118 = [v14 numberWithFloat:?];
  v127[7] = v118;
  v126[8] = @"TripsToFormLearnedRouteMax";
  v117 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteClusterStatisticsMetrics tripsToFormLearnedRouteMax](v3, "tripsToFormLearnedRouteMax")}];
  v127[8] = v117;
  v126[9] = @"WaypointCountAvg";
  v15 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 waypointCountAvg];
  v116 = [v15 numberWithFloat:?];
  v127[9] = v116;
  v126[10] = @"WaypointCountMax";
  v16 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 waypointCountMax];
  v115 = [v16 numberWithFloat:?];
  v127[10] = v115;
  v126[11] = @"NumOfDaysSinceClusterTraversalMax";
  v114 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteClusterStatisticsMetrics numOfDaysSinceClusterTraversalMax](v3, "numOfDaysSinceClusterTraversalMax")}];
  v127[11] = v114;
  v126[12] = @"NumClustersBetweenODPairMax";
  v113 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteClusterStatisticsMetrics numClustersBetweenODPairMax](v3, "numClustersBetweenODPairMax")}];
  v127[12] = v113;
  v126[13] = @"NumRoadsDifferenceBetweenTripSegmentAndLearnedRoute";
  v112 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteClusterStatisticsMetrics numRoadsDifferenceBetweenTripSegmentAndLearnedRoute](v3, "numRoadsDifferenceBetweenTripSegmentAndLearnedRoute")}];
  v127[13] = v112;
  v126[14] = @"ClusterProcessingRunTimeAvg";
  v17 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 clusterProcessingRunTimeAvg];
  v111 = [v17 numberWithFloat:?];
  v127[14] = v111;
  v126[15] = @"ClusterProcessingRunTimeMax";
  v18 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 clusterProcessingRunTimeMax];
  v110 = [v18 numberWithFloat:?];
  v127[15] = v110;
  v126[16] = @"LearningPipelineDeferralCount";
  v109 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteClusterStatisticsMetrics learningPipelineDeferralCount](v3, "learningPipelineDeferralCount")}];
  v127[16] = v109;
  v126[17] = @"TSPRunTimeAvg";
  v19 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 tspRunTimeAvg];
  v108 = [v19 numberWithFloat:?];
  v127[17] = v108;
  v126[18] = @"TSPRunTimeMax";
  v20 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteClusterStatisticsMetrics *)v3 tspRunTimeMax];
  v107 = [v20 numberWithFloat:?];
  v127[18] = v107;
  v126[19] = @"IsSPISuccess";
  v106 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics isSPISuccess](v4, "isSPISuccess")}];
  v127[19] = v106;
  v126[20] = @"DidSPIReturnDestinationVisit";
  v105 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics didSPIReturnDestinationVisit](v4, "didSPIReturnDestinationVisit")}];
  v127[20] = v105;
  v126[21] = @"DidSPIReturned2Routes";
  v104 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics didSPIReturned2Routes](v4, "didSPIReturned2Routes")}];
  v127[21] = v104;
  v126[22] = @"DidSPIReturned3Routes";
  v103 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics didSPIReturned3Routes](v4, "didSPIReturned3Routes")}];
  v127[22] = v103;
  v126[23] = @"DidSPIReturnNonVisit";
  v102 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics didSPIReturnNonVisit](v4, "didSPIReturnNonVisit")}];
  v127[23] = v102;
  v126[24] = @"DidSPIReturnODPair";
  v101 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics didSPIReturnODPair](v4, "didSPIReturnODPair")}];
  v127[24] = v101;
  v126[25] = @"DidSPIReturnOriginVisit";
  v100 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics didSPIReturnOriginVisit](v4, "didSPIReturnOriginVisit")}];
  v127[25] = v100;
  v126[26] = @"NumSPIReturnWaypointsAvg";
  v99 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteSPIStatisticsMetrics numSPIReturnWaypointsAvg](v4, "numSPIReturnWaypointsAvg")}];
  v127[26] = v99;
  v126[27] = @"SpiQueryType";
  v98 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteSPIStatisticsMetrics spiQueryType](v4, "spiQueryType")}];
  v127[27] = v98;
  v126[28] = @"SpiResponseTime";
  v21 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteSPIStatisticsMetrics *)v4 spiResponseTime];
  v97 = [v21 numberWithFloat:?];
  v127[28] = v97;
  v126[29] = @"SPIReturnRouteLengthAvg";
  v22 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteSPIStatisticsMetrics *)v4 spiReturnRouteLengthAvg];
  v96 = [v22 numberWithFloat:?];
  v127[29] = v96;
  v126[30] = @"TimeBetweenSPIQueriesAvg";
  v23 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteSPIStatisticsMetrics *)v4 timeBetweenSPIQueries];
  v95 = [v23 numberWithFloat:?];
  v127[30] = v95;
  v126[31] = @"IsSPIResponseRouteHighLikelihood";
  v94 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics isSPIResponseRouteHighLikelihood](v4, "isSPIResponseRouteHighLikelihood")}];
  v127[31] = v94;
  v126[32] = @"IsSPIResponseRouteLowLikelihood";
  v93 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics isSPIResponseRouteLowLikelihood](v4, "isSPIResponseRouteLowLikelihood")}];
  v127[32] = v93;
  v126[33] = @"FetchReasonCode";
  v92 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteSPIStatisticsMetrics fetchReasonCode](v4, "fetchReasonCode")}];
  v127[33] = v92;
  v126[34] = @"IsSPIBestRouteLikelihood";
  v91 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTLearnedRouteSPIStatisticsMetrics isSPIBestRouteLikelihood](v4, "isSPIBestRouteLikelihood")}];
  v127[34] = v91;
  v126[35] = @"MultiModalBikeDistanceAfterDriveAvg";
  v24 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeDistanceAfterDriveAvg];
  v90 = [v24 numberWithFloat:?];
  v127[35] = v90;
  v126[36] = @"MultiModalBikeDistanceAfterDriveMax";
  v25 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeDistanceAfterDriveMax];
  v89 = [v25 numberWithFloat:?];
  v127[36] = v89;
  v126[37] = @"MultiModalBikeDistanceBeforeDriveAvg";
  v26 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeDistanceBeforeDriveAvg];
  v88 = [v26 numberWithFloat:?];
  v127[37] = v88;
  v126[38] = @"MultiModalBikeDistanceBeforeDriveMax";
  v27 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeDistanceBeforeDriveMax];
  v87 = [v27 numberWithFloat:?];
  v127[38] = v87;
  v126[39] = @"MultiModalBikeTimeAfterDriveAvg";
  v28 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeTimeAfterDriveAvg];
  v86 = [v28 numberWithFloat:?];
  v127[39] = v86;
  v126[40] = @"MultiModalBikeTimeAfterDriveMax";
  v29 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeTimeAfterDriveMax];
  v85 = [v29 numberWithFloat:?];
  v127[40] = v85;
  v126[41] = @"MultiModalBikeTimeBeforeDriveAvg";
  v30 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeTimeBeforeDriveAvg];
  v84 = [v30 numberWithFloat:?];
  v127[41] = v84;
  v126[42] = @"MultiModalBikeTimeBeforeDriveMax";
  v31 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalBikeTimeBeforeDriveMax];
  v83 = [v31 numberWithFloat:?];
  v127[42] = v83;
  v126[43] = @"MultiModalDriveDistanceMax";
  v32 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalDriveDistanceMax];
  v82 = [v32 numberWithFloat:?];
  v127[43] = v82;
  v126[44] = @"MultiModalDriveTimeMax";
  v33 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalDriveTimeMax];
  v81 = [v33 numberWithFloat:?];
  v127[44] = v81;
  v126[45] = @"MultiModalNumBikeSegmentsAvg";
  v34 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalNumBikeSegmentsAvg];
  v80 = [v34 numberWithFloat:?];
  v127[45] = v80;
  v126[46] = @"MultiModalNumBikeSegmentsMax";
  v35 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalNumBikeSegmentsMax];
  v79 = [v35 numberWithFloat:?];
  v127[46] = v79;
  v126[47] = @"MultiModalNumWalkSegmentsAvg";
  v36 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalNumWalkSegmentsAvg];
  v78 = [v36 numberWithFloat:?];
  v127[47] = v78;
  v126[48] = @"MultiModalNumWalkSegmentsMax";
  v37 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalNumWalkSegmentsMax];
  v77 = [v37 numberWithFloat:?];
  v127[48] = v77;
  v126[49] = @"MultiModalTripSegmentsBikeOnly";
  v76 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics multiModalTripSegmentsBikeOnly](v5, "multiModalTripSegmentsBikeOnly")}];
  v127[49] = v76;
  v126[50] = @"MultiModalTripSegmentsWalkOnly";
  v75 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics multiModalTripSegmentsWalkOnly](v5, "multiModalTripSegmentsWalkOnly")}];
  v127[50] = v75;
  v126[51] = @"MultiModalTripSegmentsWithDrive";
  v74 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics multiModalTripSegmentsWithDrive](v5, "multiModalTripSegmentsWithDrive")}];
  v127[51] = v74;
  v126[52] = @"MultiModalWalkDistanceAfterDriveAvg";
  v38 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkDistanceAfterDriveAvg];
  v72 = [v38 numberWithFloat:?];
  v127[52] = v72;
  v126[53] = @"MultiModalWalkDistanceAfterDriveMax";
  v39 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkDistanceAfterDriveMax];
  v70 = [v39 numberWithFloat:?];
  v127[53] = v70;
  v126[54] = @"MultiModalWalkDistanceBeforeDriveAvg";
  v40 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkDistanceBeforeDriveAvg];
  v69 = [v40 numberWithFloat:?];
  v127[54] = v69;
  v126[55] = @"MultiModalWalkDistanceBeforeDriveMax";
  v41 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkDistanceBeforeDriveMax];
  v68 = [v41 numberWithFloat:?];
  v127[55] = v68;
  v126[56] = @"MultiModalWalkTimeAfterDriveAvg";
  v42 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkTimeAfterDriveAvg];
  v67 = [v42 numberWithFloat:?];
  v127[56] = v67;
  v126[57] = @"MultiModalWalkTimeAfterDriveMax";
  v43 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkTimeAfterDriveMax];
  v66 = [v43 numberWithFloat:?];
  v127[57] = v66;
  v126[58] = @"MultiModalWalkTimeBeforeDriveAvg";
  v44 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkTimeBeforeDriveAvg];
  v65 = [v44 numberWithFloat:?];
  v127[58] = v65;
  v126[59] = @"MultiModalWalkTimeBeforeDriveMax";
  v45 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteMultiModalStatisticsMetrics *)v5 multiModalWalkTimeBeforeDriveMax];
  v64 = [v45 numberWithFloat:?];
  v127[59] = v64;
  v126[60] = @"NumCyclingAfterDriveClusters";
  v63 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics numCyclingAfterDriveClusters](v5, "numCyclingAfterDriveClusters")}];
  v127[60] = v63;
  v126[61] = @"NumCyclingBeforeDriveClusters";
  v62 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics numCyclingBeforeDriveClusters](v5, "numCyclingBeforeDriveClusters")}];
  v127[61] = v62;
  v126[62] = @"NumCyclingOnlyClusters";
  v61 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics numCyclingOnlyClusters](v5, "numCyclingOnlyClusters")}];
  v127[62] = v61;
  v126[63] = @"NumDrivingOnlyClusters";
  v60 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics numDrivingOnlyClusters](v5, "numDrivingOnlyClusters")}];
  v127[63] = v60;
  v126[64] = @"NumWalkingAfterDriveClusters";
  v59 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics numWalkingAfterDriveClusters](v5, "numWalkingAfterDriveClusters")}];
  v127[64] = v59;
  v126[65] = @"NumWalkingBeforeDriveClusters";
  v58 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics numWalkingBeforeDriveClusters](v5, "numWalkingBeforeDriveClusters")}];
  v127[65] = v58;
  v126[66] = @"NumWalkingOnlyClusters";
  [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteMultiModalStatisticsMetrics numWalkingOnlyClusters](v5, "numWalkingOnlyClusters")}];
  v46 = v73 = v3;
  v127[66] = v46;
  v126[67] = @"CompoundRoutesDistanceBetweenAdjacentCompoundTripSegmentsAvg";
  v47 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteCompoundRouteMetrics *)v6 compoundRoutesDistanceBetweenAdjacentCompoundTripSegmentsAvg];
  v48 = [v47 numberWithFloat:?];
  v127[67] = v48;
  v126[68] = @"CompoundRoutesNumDriveSegmentsCompoundedAvg";
  v49 = MEMORY[0x277CCABB0];
  [(RTLearnedRouteCompoundRouteMetrics *)v6 compoundRoutesNumDriveSegmentsCompoundedAvg];
  [v49 numberWithFloat:?];
  v50 = v71 = v4;
  v127[68] = v50;
  v126[69] = @"CompoundRoutesNumFailureDrivesTooFar";
  v51 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureDrivesTooFar](v6, "compoundRoutesNumFailureDrivesTooFar")}];
  v127[69] = v51;
  v126[70] = @"CompoundRoutesNumFailureDrivesTooLong";
  v52 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureDrivesTooLong](v6, "compoundRoutesNumFailureDrivesTooLong")}];
  v127[70] = v52;
  v126[71] = @"CompoundRoutesNumFailureDrivesTooMany";
  v53 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureDrivesTooMany](v6, "compoundRoutesNumFailureDrivesTooMany")}];
  v127[71] = v53;
  v126[72] = @"CompoundRoutesNumFailureTripSegments";
  v54 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumFailureTripSegments](v6, "compoundRoutesNumFailureTripSegments")}];
  v127[72] = v54;
  v126[73] = @"CompoundRoutesNumSuccessTripSegments";
  v55 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTLearnedRouteCompoundRouteMetrics compoundRoutesNumSuccessTripSegments](v6, "compoundRoutesNumSuccessTripSegments")}];
  v127[73] = v55;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:74];

  return v57;
}

- (void)printMetricDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v4 objectForKeyedSubscript:v9];
            *buf = 138478083;
            v17 = v9;
            v18 = 2113;
            v19 = v11;
            _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "Metric,%{private}@,%{private}@", buf, 0x16u);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v6);
    }
  }
}

- (void)submitToCoreAnalytics:(int64_t)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = [(RTClusterLearnedRouteMetrics *)self defaultsManager];
  if (!v6 || (v7 = v6, -[RTClusterLearnedRouteMetrics defaultsManager](self, "defaultsManager"), v8 = objc_claimAutoreleasedReturnValue(), [v8 objectForKey:@"RTDefaultsTripSegmentMetricDisablement"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9) || (-[RTClusterLearnedRouteMetrics defaultsManager](self, "defaultsManager"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", @"RTDefaultsTripSegmentMetricDisablement"), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11) || (v12 = objc_msgSend(v11, "BOOLValue"), v11, !v12))
  {
    if (a3 != 3)
    {
      if (a3 != 5)
      {
LABEL_21:
        [(RTClusterLearnedRouteMetrics *)self _initData];
        return;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(a2);
          *buf = 138412546;
          v48 = v19;
          v49 = 2112;
          v50 = v20;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@:%@,All metrics collection", buf, 0x16u);
        }
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke;
      aBlock[3] = &unk_2788C9998;
      aBlock[4] = self;
      v21 = _Block_copy(aBlock);
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = [v22 initWithCString:RTAnalyticsEventRTTripClusterLearnedRoute encoding:1];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke_2;
      v43[3] = &unk_2788C8D18;
      v44 = v23;
      v45 = v21;
      v24 = v23;
      v25 = v21;
      v26 = _Block_copy(v43);
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v24];
      AnalyticsSendEventLazy();
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        *buf = 138412546;
        v48 = v30;
        v49 = 2112;
        v50 = v31;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@:%@,Cloud metrics collection", buf, 0x16u);
      }
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke_905;
    v42[3] = &unk_2788C9998;
    v42[4] = self;
    v32 = _Block_copy(v42);
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    v34 = [v33 initWithCString:RTAnalyticsEventRTTripClusterLearnedRouteCloudSync encoding:1];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke_2_906;
    v39[3] = &unk_2788C8D18;
    v40 = v34;
    v41 = v32;
    v35 = v34;
    v36 = v32;
    v37 = _Block_copy(v39);
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v35];
    AnalyticsSendEventLazy();

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v48 = v15;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@:%@,MetricSubmission is disabled", buf, 0x16u);
    }
  }
}

id __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) prepareMetrics];
  [*(a1 + 32) printMetricDictionary:v2];

  return v2;
}

id __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

id __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke_905(uint64_t a1)
{
  v2 = [*(a1 + 32) prepareCloudSyncMetrics];
  [*(a1 + 32) printMetricDictionary:v2];

  return v2;
}

id __54__RTClusterLearnedRouteMetrics_submitToCoreAnalytics___block_invoke_2_906(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

@end