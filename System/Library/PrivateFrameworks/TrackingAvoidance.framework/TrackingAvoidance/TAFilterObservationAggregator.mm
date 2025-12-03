@interface TAFilterObservationAggregator
+ (id)aggregateObservationsThroughHistoryForDetectionResults:(id)results visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock;
+ (id)aggregateObservationsThroughHistoryForSingleDetection:(id)detection visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock;
+ (id)location:(id)location withAdvertisementTimestamp:(id)timestamp;
+ (id)normalizeDualT18PoshAdvertisersAsPosh:(id)posh deviceRecord:(id)record;
+ (void)attachAISInfo:(id)info deviceRecord:(id)record;
@end

@implementation TAFilterObservationAggregator

+ (id)location:(id)location withAdvertisementTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  locationCopy = location;
  v7 = [TALocationLite alloc];
  scanDate = [timestampCopy scanDate];

  [locationCopy latitude];
  v41 = v9;
  [locationCopy longitude];
  v40 = v10;
  [locationCopy horizontalAccuracy];
  v39 = v11;
  [locationCopy altitude];
  v38 = v12;
  [locationCopy verticalAccuracy];
  v37 = v13;
  [locationCopy speed];
  v36 = v14;
  [locationCopy speedAccuracy];
  v35 = v15;
  [locationCopy course];
  v17 = v16;
  [locationCopy courseAccuracy];
  v19 = v18;
  [locationCopy deltaDistance];
  v21 = v20;
  [locationCopy deltaDistanceAccuracy];
  v23 = v22;
  [locationCopy groundAltitude];
  v25 = v24;
  [locationCopy groundAltitudeUncertainty];
  v27 = v26;
  [locationCopy pressure];
  v29 = v28;
  [locationCopy pressureUncertainty];
  v31 = v30;
  isSimulatedOrSpoofed = [locationCopy isSimulatedOrSpoofed];

  v33 = [(TALocationLite *)v7 initWithTimestamp:scanDate latitude:isSimulatedOrSpoofed longitude:v41 horizontalAccuracy:v40 altitude:v39 verticalAccuracy:v38 speed:v37 speedAccuracy:v36 course:v35 courseAccuracy:v17 deltaDistance:v19 deltaDistanceAccuracy:v21 groundAltitude:v23 groundAltitudeUncertainty:v25 pressure:v27 pressureUncertainty:v29 isSimulatedOrSpoofed:v31];

  return v33;
}

+ (id)aggregateObservationsThroughHistoryForSingleDetection:(id)detection visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock
{
  v65 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  bufferCopy = buffer;
  snapshotBufferCopy = snapshotBuffer;
  clockCopy = clock;
  v13 = 0;
  if (detectionCopy && clockCopy)
  {
    v51 = clockCopy;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = bufferCopy;
    if (bufferCopy)
    {
      v50 = snapshotBufferCopy;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = [bufferCopy bufferCopy];
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
            earliestUtAdvertisements = [v19 earliestUtAdvertisements];
            address = [detectionCopy address];
            v22 = [earliestUtAdvertisements objectForKeyedSubscript:address];

            latestUtAdvertisements = [v19 latestUtAdvertisements];
            address2 = [detectionCopy address];
            v25 = [latestUtAdvertisements objectForKeyedSubscript:address2];

            getLocationRepresentingSnapshot = [v19 getLocationRepresentingSnapshot];
            if (v22)
            {
              v27 = [TAFilterObservationAggregator location:getLocationRepresentingSnapshot withAdvertisementTimestamp:v22];
              [v14 addObject:v27];
            }

            if (v25 && ([v25 isEqual:v22] & 1) == 0)
            {
              v28 = [TAFilterObservationAggregator location:getLocationRepresentingSnapshot withAdvertisementTimestamp:v25];
              [v14 addObject:v28];
            }
          }

          v16 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v16);
      }

      snapshotBufferCopy = v50;
    }

    if (snapshotBufferCopy)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      bufferCopy = [snapshotBufferCopy bufferCopy];
      v30 = [bufferCopy countByEnumeratingWithState:&v55 objects:v63 count:16];
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
              objc_enumerationMutation(bufferCopy);
            }

            accumulatedDeviceMetrics = [*(*(&v55 + 1) + 8 * j) accumulatedDeviceMetrics];
            address3 = [detectionCopy address];
            v36 = [accumulatedDeviceMetrics objectForKeyedSubscript:address3];

            if (v36)
            {
              sampledObservedLocations = [v36 sampledObservedLocations];
              [v14 addObjectsFromArray:sampledObservedLocations];
            }
          }

          v31 = [bufferCopy countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v31);
      }
    }

    locationHistory = [detectionCopy locationHistory];
    [v14 addObjectsFromArray:locationHistory];

    obja = [TASuspiciousDevice alloc];
    latestAdvertisement = [detectionCopy latestAdvertisement];
    detectionSummary = [detectionCopy detectionSummary];
    v41 = [v14 copy];
    detectionMetrics = [detectionCopy detectionMetrics];
    detectionType = [detectionCopy detectionType];
    v44 = snapshotBufferCopy;
    immediacyType = [detectionCopy immediacyType];
    accessoryInfo = [detectionCopy accessoryInfo];
    v49 = immediacyType;
    snapshotBufferCopy = v44;
    v13 = -[TASuspiciousDevice initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:](obja, "initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:", latestAdvertisement, detectionSummary, v51, v41, detectionMetrics, detectionType, v49, accessoryInfo, [detectionCopy forceSurfaceReason]);

    clockCopy = v51;
    bufferCopy = v52;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)aggregateObservationsThroughHistoryForDetectionResults:(id)results visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock
{
  v27 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  bufferCopy = buffer;
  snapshotBufferCopy = snapshotBuffer;
  clockCopy = clock;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = resultsCopy;
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

        v19 = [TAFilterObservationAggregator aggregateObservationsThroughHistoryForSingleDetection:*(*(&v22 + 1) + 8 * i) visitSnapshotBuffer:bufferCopy intervisitSnapshotBuffer:snapshotBufferCopy clock:clockCopy, v22];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)attachAISInfo:(id)info deviceRecord:(id)record
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  recordCopy = record;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [infoCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(infoCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        address = [v11 address];
        v13 = [recordCopy getAccessoryInfo:address];

        [v11 setAccessoryInfo:v13];
      }

      v8 = [infoCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)normalizeDualT18PoshAdvertisersAsPosh:(id)posh deviceRecord:(id)record
{
  v39 = *MEMORY[0x277D85DE8];
  poshCopy = posh;
  recordCopy = record;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(poshCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = poshCopy;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v29 = v8;
    v30 = recordCopy;
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
        address = [v13 address];
        v15 = [recordCopy getLatestAdvertisement:address];

        if ([v15 isApple] && objc_msgSend(v15, "isPosh") && (objc_msgSend(v13, "latestAdvertisement"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isPosh"), v16, (v17 & 1) == 0))
        {
          v33 = [TASuspiciousDevice alloc];
          detectionSummary = [v13 detectionSummary];
          date = [v13 date];
          locationHistory = [v13 locationHistory];
          detectionMetrics = [v13 detectionMetrics];
          detectionType = [v13 detectionType];
          immediacyType = [v13 immediacyType];
          [v13 accessoryInfo];
          v23 = v22 = v7;
          v24 = -[TASuspiciousDevice initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:](v33, "initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:", v15, detectionSummary, date, locationHistory, detectionMetrics, detectionType, immediacyType, v23, [v13 forceSurfaceReason]);

          v7 = v22;
          v8 = v29;

          v11 = v28;
          [v22 addObject:v24];

          recordCopy = v30;
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