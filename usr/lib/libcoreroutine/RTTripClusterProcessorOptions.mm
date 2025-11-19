@interface RTTripClusterProcessorOptions
- (RTTripClusterProcessorOptions)initWithDefaultsManager:(id)a3;
- (id)description;
@end

@implementation RTTripClusterProcessorOptions

- (RTTripClusterProcessorOptions)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = RTTripClusterProcessorOptions;
  v5 = [(RTTripClusterProcessorOptions *)&v54 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = xmmword_230B00ED0;
    *(v5 + 40) = xmmword_230B00EE0;
    *(v5 + 2) = 16843008;
    *(v5 + 6) = 256;
    *(v5 + 5) = xmmword_230B00EF0;
    *(v5 + 6) = xmmword_230B00F00;
    *(v5 + 7) = xmmword_230B00F10;
    *(v5 + 8) = xmmword_230B00F20;
    *(v5 + 56) = xmmword_230B00F30;
    *(v5 + 9) = 14400;
    *(v5 + 18) = 0x3FF0000000000000;
    *(v5 + 19) = 0;
    *(v5 + 20) = @"/var/mobile/Library/Caches/com.apple.routined/tripSegments/";
    v7 = +[RTPlatform currentPlatform];
    v6[14] = [v7 internalInstall];

    *(v6 + 15) = 16843009;
    *(v6 + 21) = 0x3FE8000000000000;
    *(v6 + 22) = 3;
    *(v6 + 184) = vdupq_n_s64(5uLL);
    if (v4)
    {
      v8 = [v4 objectForKey:@"RTDefaultsTripSegmentClusteringDtwDistanceThreshold"];
      v53 = v8;
      if (v8)
      {
        [v8 doubleValue];
      }

      else
      {
        v9 = *(v6 + 11);
      }

      *(v6 + 11) = v9;
      v10 = [v4 objectForKey:@"RTDefaultsTripSegmentClusterUsingRoadCoordinates"];
      v52 = v10;
      if (v10)
      {
        v11 = [v10 BOOLValue];
      }

      else
      {
        v11 = v6[13];
      }

      v6[13] = v11;
      v12 = [v4 objectForKey:@"RTDefaultsTripSegmentRecordDebuggingDataInFile"];
      v51 = v12;
      if (v12)
      {
        v13 = [v12 BOOLValue];
      }

      else
      {
        v13 = v6[14];
      }

      v6[14] = v13;
      v14 = [v4 objectForKey:@"RTDefaultsLearnedRoutesCurrentLocationSPIEnabled"];
      v50 = v14;
      if (v14)
      {
        v15 = [v14 BOOLValue];
      }

      else
      {
        v15 = v6[15];
      }

      v6[15] = v15;
      v16 = [v4 objectForKey:@"RTDefaultsTripClusterStartEndRoadCountBufferZonePercentage"];
      v49 = v16;
      if (v16)
      {
        [v16 doubleValue];
      }

      else
      {
        v17 = *(v6 + 21);
      }

      *(v6 + 21) = v17;
      v18 = [v4 objectForKey:@"RTDefaultsTripClusterMaxClusterTraversalCount"];
      v48 = v18;
      if (v18)
      {
        v19 = [v18 intValue];
      }

      else
      {
        v19 = *(v6 + 7);
      }

      *(v6 + 7) = v19;
      v20 = [v4 objectForKey:@"RTDefaultsTripClusterMaxTripSegmentDistance"];
      v47 = v20;
      if (v20)
      {
        v21 = [v20 intValue];
      }

      else
      {
        v21 = *(v6 + 8);
      }

      *(v6 + 8) = v21;
      v22 = [v4 objectForKey:@"RTDefaultsTripClusterMaxTripSegmentTime"];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 intValue];
      }

      else
      {
        v24 = *(v6 + 9);
      }

      *(v6 + 9) = v24;
      v25 = [v4 objectForKey:@"RTDefaultsTripClusterRoadFamiliarityDecayFactor"];
      v26 = v25;
      if (v25)
      {
        [v25 doubleValue];
      }

      else
      {
        v27 = *(v6 + 18);
      }

      *(v6 + 18) = v27;
      v28 = [v4 objectForKey:@"RTDefaultsTripClusterEnableWalkBikeClustering"];
      v29 = v28;
      if (v28)
      {
        v30 = [v28 BOOLValue];
      }

      else
      {
        v30 = v6[16];
      }

      v6[16] = v30;
      v31 = [v4 objectForKey:@"RTDefaultsTripClusterMaxDeletionAttemptsForClusterData"];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 intValue];
      }

      else
      {
        v33 = *(v6 + 22);
      }

      *(v6 + 22) = v33;
      v34 = [v4 objectForKey:@"RTDefaultsTripClusterRehydrateRouteLocationsFromWaypoints"];
      v35 = v34;
      if (v34)
      {
        v36 = [v34 BOOLValue];
      }

      else
      {
        v36 = v6[17];
      }

      v6[17] = v36;
      v37 = [v4 objectForKey:@"RTDefaultsTripClusterCleanUpClustersWithDuplicateWaypoints"];
      v38 = v37;
      if (v37)
      {
        v39 = [v37 BOOLValue];
      }

      else
      {
        v39 = v6[18];
      }

      v6[18] = v39;
      v40 = [v4 objectForKey:@"RTDefaultsTripClusterMaxCleanUpOperationsCountPerRun"];
      v41 = v40;
      if (v40)
      {
        v42 = [v40 intValue];
      }

      else
      {
        v42 = *(v6 + 23);
      }

      *(v6 + 23) = v42;
      v43 = [v4 objectForKey:@"RTDefaultsTripClusterMaxRouteRehydrationsCountPerRun"];
      v44 = v43;
      if (v43)
      {
        v45 = [v43 intValue];
      }

      else
      {
        v45 = *(v6 + 24);
      }

      *(v6 + 24) = v45;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = @"NO";
  if (self->_useMaxProcessedTripSegments)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_purgeClustersDataBase)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_writeTripSegmentsToFile)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_enableClusterProcessing)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_saveToHTML)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_learnedRoutesCurrentLocationSPIEnabled)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_rehydrateRouteLocationsFromWaypoints)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_cleanUpClusterWithDuplicateWaypoints)
  {
    v6 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p, downsampleFactor, %ld, windowSize, %ld, maxLocationPerTrip, %ld, maxProcessedTripSegments, %ld, useMaxProcessedTripSegments, %@, purgeClustersDataBase, %@, distBetweenTrips_km, %.2f, distanceThreshold_m, %.2f, unreachableDistance_m, %.2f, clusterLifeTimeThreshold_d, %ld, lengthDeviationThreshold_m, %.2f, locationThresholdRadius_m, %.2f, distAccuracyThreshold_m, %.2f, writeTripSegmentsToFile, %@, enableClusterProcessing, %@, saveToHTML, %@, clusterProcessorMode, %ld, learnedRoutesCurrentLocationSPIEnabled, %@, maxCleanUpOperationsCountPerRun, %ld, maxRouteRehydrationsCountPerRun, %ld, maxDeletionAttemptsForClusterData, %ld, rehydrateRouteLocationsFromWaypoints, %@, cleanUpClusterWithDuplicateWaypoints, %@>", v5, self, *&self->_downsampleFactor, self->_maxLocationPerTrip, self->_maxProcessedTripSegments, v7, v8, *&self->_distBetweenTrips_km, *&self->_unreachableDistance_m, self->_clusterLifeTimeThreshold_days, *&self->_lengthDeviationThreshold_m, *&self->_distAccuracyThreshold_m, v9, v10, v11, self->_clusterProcessorMode, v12, *&self->_maxCleanUpOperationsCountPerRun, self->_maxDeletionAttemptsForClusterData, v13, v6];

  return v14;
}

@end