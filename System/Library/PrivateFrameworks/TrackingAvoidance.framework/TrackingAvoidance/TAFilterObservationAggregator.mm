@interface TAFilterObservationAggregator
+ (id)aggregateObservationsThroughHistoryForDetectionResults:(id)a3 visitSnapshotBuffer:(id)a4 intervisitSnapshotBuffer:(id)a5 clock:(id)a6;
+ (id)aggregateObservationsThroughHistoryForSingleDetection:(id)a3 visitSnapshotBuffer:(id)a4 intervisitSnapshotBuffer:(id)a5 clock:(id)a6;
+ (id)location:(id)a3 withAdvertisementTimestamp:(id)a4;
+ (id)normalizeDualT18PoshAdvertisersAsPosh:(id)a3 deviceRecord:(id)a4;
+ (void)attachAISInfo:(id)a3 deviceRecord:(id)a4;
@end

@implementation TAFilterObservationAggregator

+ (id)location:(id)a3 withAdvertisementTimestamp:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [TALocationLite alloc];
  v8 = [v5 scanDate];

  [v6 latitude];
  v41 = v9;
  [v6 longitude];
  v40 = v10;
  [v6 horizontalAccuracy];
  v39 = v11;
  [v6 altitude];
  v38 = v12;
  [v6 verticalAccuracy];
  v37 = v13;
  [v6 speed];
  v36 = v14;
  [v6 speedAccuracy];
  v35 = v15;
  [v6 course];
  v17 = v16;
  [v6 courseAccuracy];
  v19 = v18;
  [v6 deltaDistance];
  v21 = v20;
  [v6 deltaDistanceAccuracy];
  v23 = v22;
  [v6 groundAltitude];
  v25 = v24;
  [v6 groundAltitudeUncertainty];
  v27 = v26;
  [v6 pressure];
  v29 = v28;
  [v6 pressureUncertainty];
  v31 = v30;
  v32 = [v6 isSimulatedOrSpoofed];

  v33 = [(TALocationLite *)v7 initWithTimestamp:v8 latitude:v32 longitude:v41 horizontalAccuracy:v40 altitude:v39 verticalAccuracy:v38 speed:v37 speedAccuracy:v36 course:v35 courseAccuracy:v17 deltaDistance:v19 deltaDistanceAccuracy:v21 groundAltitude:v23 groundAltitudeUncertainty:v25 pressure:v27 pressureUncertainty:v29 isSimulatedOrSpoofed:v31];

  return v33;
}

+ (id)aggregateObservationsThroughHistoryForSingleDetection:(id)a3 visitSnapshotBuffer:(id)a4 intervisitSnapshotBuffer:(id)a5 clock:(id)a6
{
  v65 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  if (v9 && v12)
  {
    v51 = v12;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = v10;
    if (v10)
    {
      v50 = v11;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = [v10 bufferCopy];
      v15 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v60;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v60 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v59 + 1) + 8 * i);
            v20 = [v19 earliestUtAdvertisements];
            v21 = [v9 address];
            v22 = [v20 objectForKeyedSubscript:v21];

            v23 = [v19 latestUtAdvertisements];
            v24 = [v9 address];
            v25 = [v23 objectForKeyedSubscript:v24];

            v26 = [v19 getLocationRepresentingSnapshot];
            if (v22)
            {
              v27 = [TAFilterObservationAggregator location:v26 withAdvertisementTimestamp:v22];
              [v14 addObject:v27];
            }

            if (v25 && ([v25 isEqual:v22] & 1) == 0)
            {
              v28 = [TAFilterObservationAggregator location:v26 withAdvertisementTimestamp:v25];
              [v14 addObject:v28];
            }
          }

          v16 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v16);
      }

      v11 = v50;
    }

    if (v11)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v29 = [v11 bufferCopy];
      v30 = [v29 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v56;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = [*(*(&v55 + 1) + 8 * j) accumulatedDeviceMetrics];
            v35 = [v9 address];
            v36 = [v34 objectForKeyedSubscript:v35];

            if (v36)
            {
              v37 = [v36 sampledObservedLocations];
              [v14 addObjectsFromArray:v37];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v31);
      }
    }

    v38 = [v9 locationHistory];
    [v14 addObjectsFromArray:v38];

    obja = [TASuspiciousDevice alloc];
    v39 = [v9 latestAdvertisement];
    v40 = [v9 detectionSummary];
    v41 = [v14 copy];
    v42 = [v9 detectionMetrics];
    v43 = [v9 detectionType];
    v44 = v11;
    v45 = [v9 immediacyType];
    v46 = [v9 accessoryInfo];
    v49 = v45;
    v11 = v44;
    v13 = -[TASuspiciousDevice initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:](obja, "initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:", v39, v40, v51, v41, v42, v43, v49, v46, [v9 forceSurfaceReason]);

    v12 = v51;
    v10 = v52;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)aggregateObservationsThroughHistoryForDetectionResults:(id)a3 visitSnapshotBuffer:(id)a4 intervisitSnapshotBuffer:(id)a5 clock:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [TAFilterObservationAggregator aggregateObservationsThroughHistoryForSingleDetection:*(*(&v22 + 1) + 8 * i) visitSnapshotBuffer:v10 intervisitSnapshotBuffer:v11 clock:v12, v22];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)attachAISInfo:(id)a3 deviceRecord:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 address];
        v13 = [v6 getAccessoryInfo:v12];

        [v11 setAccessoryInfo:v13];
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)normalizeDualT18PoshAdvertisersAsPosh:(id)a3 deviceRecord:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v29 = v8;
    v30 = v6;
    v28 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [v13 address];
        v15 = [v6 getLatestAdvertisement:v14];

        if ([v15 isApple] && objc_msgSend(v15, "isPosh") && (objc_msgSend(v13, "latestAdvertisement"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isPosh"), v16, (v17 & 1) == 0))
        {
          v33 = [TASuspiciousDevice alloc];
          v32 = [v13 detectionSummary];
          v18 = [v13 date];
          v19 = [v13 locationHistory];
          v20 = [v13 detectionMetrics];
          v31 = [v13 detectionType];
          v21 = [v13 immediacyType];
          [v13 accessoryInfo];
          v23 = v22 = v7;
          v24 = -[TASuspiciousDevice initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:](v33, "initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:", v15, v32, v18, v19, v20, v31, v21, v23, [v13 forceSurfaceReason]);

          v7 = v22;
          v8 = v29;

          v11 = v28;
          [v22 addObject:v24];

          v6 = v30;
        }

        else
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v25 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v10 = v25;
    }

    while (v25);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v7;
}

@end