@interface PLMomentGenerationUtils
+ (BOOL)isTopFrequentLocationForCoordinate:(CLLocationCoordinate2D)coordinate startDate:(id)date endDate:(id)endDate frequentLocations:(id)locations;
+ (BOOL)isTopFrequentLocationForMoment:(id)moment frequentLocations:(id)locations;
+ (BOOL)shouldConsiderAssetAsOutlierForMomentClustering:(id)clustering;
+ (id)_sortedOverlappingFrequentLocations:(id)locations;
+ (id)frequentLocationNearMoment:(id)moment withFrequentLocations:(id)locations;
+ (id)frequentLocationsOverlappingStartDate:(id)date endDate:(id)endDate frequentLocations:(id)locations;
+ (id)importedByBundleIdentifiersAllowListForMomentGeneration;
+ (id)importedByBundleIdentifiersToIncludeIfNotProcessed;
+ (id)internalPredicateToIncludeExternalAssetsEligibleForProcessing;
+ (id)today;
+ (signed)externalOriginatorStateForAsset:(id)asset;
+ (signed)originatorStateForAsset:(id)asset;
+ (unsigned)_locationTypeForLocation:(id)location horizontalAccuracy:(double)accuracy startDate:(id)date endDate:(id)endDate locationsOfInterest:(id)interest frequentLocations:(id)locations;
+ (unsigned)locationTypeForAsset:(id)asset locationsOfInterest:(id)interest frequentLocations:(id)locations;
+ (unsigned)locationTypeForMoment:(id)moment locationsOfInterest:(id)interest frequentLocations:(id)locations;
+ (void)processLocationIfNecessaryInMoment:(id)moment usingManager:(id)manager frequentLocations:(id)locations frequentLocationsDidChange:(BOOL)change;
@end

@implementation PLMomentGenerationUtils

+ (id)today
{
  if (PLMomentGenerationUtilsOverridenToday)
  {
    date = PLMomentGenerationUtilsOverridenToday;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  return date;
}

+ (id)internalPredicateToIncludeExternalAssetsEligibleForProcessing
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AE18];
  v3 = +[PLMomentGenerationUtils importedByBundleIdentifiersAllowListForMomentGeneration];
  v4 = [v2 predicateWithFormat:@"%K != nil && NOT %K IN %@", @"additionalAttributes.importedByBundleIdentifier", @"additionalAttributes.importedByBundleIdentifier", v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"additionalAttributes.syndicationHistory", 1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype = %d", 10];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype = %d", 103];
  v8 = MEMORY[0x1E696AB28];
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v10 = [v8 orPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)importedByBundleIdentifiersAllowListForMomentGeneration
{
  if (importedByBundleIdentifiersAllowListForMomentGeneration_onceToken != -1)
  {
    dispatch_once(&importedByBundleIdentifiersAllowListForMomentGeneration_onceToken, &__block_literal_global_49_116735);
  }

  v3 = importedByBundleIdentifiersAllowListForMomentGeneration_allowList;

  return v3;
}

void __82__PLMomentGenerationUtils_importedByBundleIdentifiersAllowListForMomentGeneration__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69BFF40];
  v9[0] = *MEMORY[0x1E69BFF18];
  v9[1] = v0;
  v1 = *MEMORY[0x1E69BFFA0];
  v9[2] = *MEMORY[0x1E69BF430];
  v9[3] = v1;
  v2 = *MEMORY[0x1E69BF428];
  v9[4] = *MEMORY[0x1E69BF420];
  v9[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  if (MEMORY[0x19EAEE230]())
  {
    v8[0] = @"com.apple.PhotoKitEntitledTests.xctrunner";
    v8[1] = @"com.apple.photosgraph.tests.xctrunner";
    v8[2] = @"com.apple.photosctl";
    v8[3] = @"com.apple.plphotosctl";
    v8[4] = @"com.apple.PhotosIntelligenceTests.xctrunner";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];

    v3 = v5;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v3];
  v7 = importedByBundleIdentifiersAllowListForMomentGeneration_allowList;
  importedByBundleIdentifiersAllowListForMomentGeneration_allowList = v6;
}

+ (id)importedByBundleIdentifiersToIncludeIfNotProcessed
{
  if (importedByBundleIdentifiersToIncludeIfNotProcessed_onceToken != -1)
  {
    dispatch_once(&importedByBundleIdentifiersToIncludeIfNotProcessed_onceToken, &__block_literal_global_46_116753);
  }

  v3 = importedByBundleIdentifiersToIncludeIfNotProcessed_allowList;

  return v3;
}

void __77__PLMomentGenerationUtils_importedByBundleIdentifiersToIncludeIfNotProcessed__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E69BFF00], *MEMORY[0x1E69BFFA8], 0}];
  v2 = importedByBundleIdentifiersToIncludeIfNotProcessed_allowList;
  importedByBundleIdentifiersToIncludeIfNotProcessed_allowList = v1;
}

+ (signed)externalOriginatorStateForAsset:(id)asset
{
  assetCopy = asset;
  if (([assetCopy syndicationProcessingValue] & 0x3CF1) == 0)
  {
    importedByBundleIdentifiersToIncludeIfNotProcessed = [self importedByBundleIdentifiersToIncludeIfNotProcessed];
    importedByBundleIdentifier = [assetCopy importedByBundleIdentifier];
    if ([importedByBundleIdentifiersToIncludeIfNotProcessed containsObject:importedByBundleIdentifier])
    {
      syndicationProcessingVersion = [assetCopy syndicationProcessingVersion];

      if (!syndicationProcessingVersion)
      {
        v5 = 16;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v5 = 8;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (BOOL)shouldConsiderAssetAsOutlierForMomentClustering:(id)clustering
{
  clusteringCopy = clustering;
  if (([clusteringCopy isScreenRecording] & 1) != 0 || objc_msgSend(clusteringCopy, "kindSubtype") == 10)
  {
    v5 = 1;
  }

  else
  {
    [MEMORY[0x1E69BF328] maskForGuestAsset];
    [clusteringCopy savedAssetType];
    if ((PLValidatedSavedAssetTypeApplies() & 1) != 0 || [clusteringCopy syndicationHistory])
    {
      v5 = ([clusteringCopy syndicationProcessingValue] & 0x3CF1) == 0;
    }

    else
    {
      importedByBundleIdentifier = [clusteringCopy importedByBundleIdentifier];
      if (importedByBundleIdentifier)
      {
        importedByBundleIdentifiersAllowListForMomentGeneration = [self importedByBundleIdentifiersAllowListForMomentGeneration];
        v9 = [importedByBundleIdentifiersAllowListForMomentGeneration containsObject:importedByBundleIdentifier];

        v5 = v9 ^ 1;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

+ (signed)originatorStateForAsset:(id)asset
{
  assetCopy = asset;
  shareState = [assetCopy shareState];
  if (shareState >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x400020001uLL >> (16 * shareState);
  }

  if ([self shouldConsiderAssetAsOutlierForMomentClustering:assetCopy])
  {
    v6 |= [self externalOriginatorStateForAsset:assetCopy];
  }

  return v6;
}

+ (id)frequentLocationNearMoment:(id)moment withFrequentLocations:(id)locations
{
  v34 = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  locationsCopy = locations;
  startDate = [momentCopy startDate];
  endDate = [momentCopy endDate];
  v28 = locationsCopy;
  v10 = [self frequentLocationsOverlappingStartDate:startDate endDate:endDate frequentLocations:locationsCopy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v30;
    v16 = 1.79769313e308;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        momentsSet = [v18 momentsSet];
        v21 = [momentsSet containsObject:momentCopy];

        if (v21)
        {
          v26 = v18;

          objc_autoreleasePoolPop(v19);
          v14 = v26;
          goto LABEL_15;
        }

        [v18 coordinate];
        approximateLocation = [momentCopy approximateLocation];
        [approximateLocation coordinate];

        CLLocationCoordinate2DGetDistanceFrom();
        if (v23 < v16)
        {
          v24 = v23;
          if (v23 < 100.0)
          {
            v25 = v18;

            v16 = v24;
            v14 = v25;
          }
        }

        objc_autoreleasePoolPop(v19);
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  return v14;
}

+ (id)frequentLocationsOverlappingStartDate:(id)date endDate:(id)endDate frequentLocations:(id)locations
{
  v27 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  locationsCopy = locations;
  v21 = dateCopy;
  v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:endDateCopy];
  v11 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = locationsCopy;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        dateInterval = [v17 dateInterval];
        v19 = [v10 intersectsDateInterval:dateInterval];

        if (v19)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)_sortedOverlappingFrequentLocations:(id)locations
{
  allObjects = [locations allObjects];
  v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_116758];

  return v4;
}

uint64_t __63__PLMomentGenerationUtils__sortedOverlappingFrequentLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortedMoments];
  v7 = [v6 count];

  v8 = [v5 sortedMoments];
  v9 = [v8 count];

  if (v7 > v9)
  {
    goto LABEL_2;
  }

  if (v9 > v7)
  {
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v12 = [v4 dateInterval];
  [v12 duration];
  v14 = v13;

  v15 = [v5 dateInterval];
  [v15 duration];
  v17 = v16;

  if (v14 <= v17)
  {
    if (v17 <= v14)
    {
      v18 = [v5 dateInterval];
      v19 = [v18 startDate];
      v20 = [v4 dateInterval];
      v21 = [v20 startDate];
      v10 = [v19 compare:v21];

      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_2:
  v10 = -1;
LABEL_5:

  return v10;
}

+ (BOOL)isTopFrequentLocationForCoordinate:(CLLocationCoordinate2D)coordinate startDate:(id)date endDate:(id)endDate frequentLocations:(id)locations
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v23 = *MEMORY[0x1E69E9840];
  v9 = [self frequentLocationsOverlappingStartDate:date endDate:endDate frequentLocations:locations];
  v10 = [self _sortedOverlappingFrequentLocations:v9];
  v11 = [v10 count];
  if (v11 >= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  [v10 subarrayWithRange:{0, v12}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v21 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v18 + 1) + 8 * i) isWithinDistance:100.0 toCoordinate:{latitude, longitude, v18}])
        {
          LOBYTE(v14) = 1;
          goto LABEL_14;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v14;
}

+ (BOOL)isTopFrequentLocationForMoment:(id)moment frequentLocations:(id)locations
{
  locationsCopy = locations;
  momentCopy = moment;
  [momentCopy pl_coordinate];
  v9 = v8;
  v11 = v10;
  startDate = [momentCopy startDate];
  endDate = [momentCopy endDate];

  LOBYTE(momentCopy) = [self isTopFrequentLocationForCoordinate:startDate startDate:endDate endDate:locationsCopy frequentLocations:{v9, v11}];
  return momentCopy;
}

+ (unsigned)_locationTypeForLocation:(id)location horizontalAccuracy:(double)accuracy startDate:(id)date endDate:(id)endDate locationsOfInterest:(id)interest frequentLocations:(id)locations
{
  v43 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  dateCopy = date;
  endDateCopy = endDate;
  interestCopy = interest;
  locationsCopy = locations;
  if (!locationCopy)
  {
    v19 = 2;
    goto LABEL_39;
  }

  if ([PLLocationUtils horizontalAccuracyIsCoarse:accuracy])
  {
    v19 = 7;
    goto LABEL_39;
  }

  if (!interestCopy)
  {
    v19 = 8;
    goto LABEL_28;
  }

  selfCopy = self;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = interestCopy;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v21)
  {

    v19 = 6;
    self = selfCopy;
    if (locationsCopy)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v22 = v21;
  v35 = endDateCopy;
  v36 = dateCopy;
  v23 = *MEMORY[0x1E6985C30];
  v24 = *v39;
  v25 = 1;
  v19 = 6;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v39 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v27 = *(*(&v38 + 1) + 8 * i);
      [v27 distanceFromLocation:locationCopy];
      if (v28 <= 50.0 && v28 < v23)
      {
        v30 = v28;
        type = [v27 type];
        switch(type)
        {
          case -1:
            v19 = 6;
            break;
          case 1:
            v25 = 0;
            v19 = 4;
            break;
          case 0:
            v25 = 0;
            v19 = 3;
            break;
        }

        v23 = v30;
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v22);

  endDateCopy = v35;
  dateCopy = v36;
  self = selfCopy;
  if (v25)
  {
LABEL_28:
    if (locationsCopy)
    {
LABEL_29:
      [locationCopy coordinate];
      v32 = [self isTopFrequentLocationForCoordinate:dateCopy startDate:endDateCopy endDate:locationsCopy frequentLocations:?];
      if (interestCopy)
      {
        v33 = 5;
      }

      else
      {
        v33 = 1;
      }

      if (v32)
      {
        v19 = v33;
      }

      goto LABEL_39;
    }

LABEL_36:
    if (v19 == 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = 9;
    }
  }

LABEL_39:

  return v19;
}

+ (unsigned)locationTypeForMoment:(id)moment locationsOfInterest:(id)interest frequentLocations:(id)locations
{
  locationsCopy = locations;
  interestCopy = interest;
  momentCopy = moment;
  approximateLocation = [momentCopy approximateLocation];
  [momentCopy gpsHorizontalAccuracy];
  v13 = v12;
  startDate = [momentCopy startDate];
  endDate = [momentCopy endDate];

  LOWORD(momentCopy) = [self _locationTypeForLocation:approximateLocation horizontalAccuracy:startDate startDate:endDate endDate:interestCopy locationsOfInterest:locationsCopy frequentLocations:v13];
  return momentCopy;
}

+ (unsigned)locationTypeForAsset:(id)asset locationsOfInterest:(id)interest frequentLocations:(id)locations
{
  locationsCopy = locations;
  interestCopy = interest;
  assetCopy = asset;
  location = [assetCopy location];
  [assetCopy gpsHorizontalAccuracy];
  v13 = v12;
  dateCreated = [assetCopy dateCreated];
  dateCreated2 = [assetCopy dateCreated];

  LOWORD(assetCopy) = [self _locationTypeForLocation:location horizontalAccuracy:dateCreated startDate:dateCreated2 endDate:interestCopy locationsOfInterest:locationsCopy frequentLocations:v13];
  return assetCopy;
}

+ (void)processLocationIfNecessaryInMoment:(id)moment usingManager:(id)manager frequentLocations:(id)locations frequentLocationsDidChange:(BOOL)change
{
  momentCopy = moment;
  managerCopy = manager;
  locationsCopy = locations;
  processedLocation = [momentCopy processedLocation];
  if (processedLocation > 0xA || ((1 << processedLocation) & 0x49C) == 0)
  {
    v14 = processedLocation;
    routineIsAvailable = [managerCopy routineIsAvailable];
    v16 = locationsCopy && v14 == 9;
    v17 = v16;
    if (!v14 || change || v17 || routineIsAvailable && (v14 == 8 || v14 == 1))
    {
      locationsOfInterest = [managerCopy locationsOfInterest];
      v19 = [self locationTypeForMoment:momentCopy locationsOfInterest:locationsOfInterest frequentLocations:locationsCopy];

      [momentCopy setProcessedLocation:v19];
    }
  }
}

@end