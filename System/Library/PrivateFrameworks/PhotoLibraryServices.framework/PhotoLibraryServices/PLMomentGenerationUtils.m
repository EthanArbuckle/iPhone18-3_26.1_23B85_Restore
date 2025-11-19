@interface PLMomentGenerationUtils
+ (BOOL)isTopFrequentLocationForCoordinate:(CLLocationCoordinate2D)a3 startDate:(id)a4 endDate:(id)a5 frequentLocations:(id)a6;
+ (BOOL)isTopFrequentLocationForMoment:(id)a3 frequentLocations:(id)a4;
+ (BOOL)shouldConsiderAssetAsOutlierForMomentClustering:(id)a3;
+ (id)_sortedOverlappingFrequentLocations:(id)a3;
+ (id)frequentLocationNearMoment:(id)a3 withFrequentLocations:(id)a4;
+ (id)frequentLocationsOverlappingStartDate:(id)a3 endDate:(id)a4 frequentLocations:(id)a5;
+ (id)importedByBundleIdentifiersAllowListForMomentGeneration;
+ (id)importedByBundleIdentifiersToIncludeIfNotProcessed;
+ (id)internalPredicateToIncludeExternalAssetsEligibleForProcessing;
+ (id)today;
+ (signed)externalOriginatorStateForAsset:(id)a3;
+ (signed)originatorStateForAsset:(id)a3;
+ (unsigned)_locationTypeForLocation:(id)a3 horizontalAccuracy:(double)a4 startDate:(id)a5 endDate:(id)a6 locationsOfInterest:(id)a7 frequentLocations:(id)a8;
+ (unsigned)locationTypeForAsset:(id)a3 locationsOfInterest:(id)a4 frequentLocations:(id)a5;
+ (unsigned)locationTypeForMoment:(id)a3 locationsOfInterest:(id)a4 frequentLocations:(id)a5;
+ (void)processLocationIfNecessaryInMoment:(id)a3 usingManager:(id)a4 frequentLocations:(id)a5 frequentLocationsDidChange:(BOOL)a6;
@end

@implementation PLMomentGenerationUtils

+ (id)today
{
  if (PLMomentGenerationUtilsOverridenToday)
  {
    v2 = PLMomentGenerationUtilsOverridenToday;
  }

  else
  {
    v2 = [MEMORY[0x1E695DF00] date];
  }

  return v2;
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

+ (signed)externalOriginatorStateForAsset:(id)a3
{
  v4 = a3;
  if (([v4 syndicationProcessingValue] & 0x3CF1) == 0)
  {
    v6 = [a1 importedByBundleIdentifiersToIncludeIfNotProcessed];
    v7 = [v4 importedByBundleIdentifier];
    if ([v6 containsObject:v7])
    {
      v8 = [v4 syndicationProcessingVersion];

      if (!v8)
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

+ (BOOL)shouldConsiderAssetAsOutlierForMomentClustering:(id)a3
{
  v4 = a3;
  if (([v4 isScreenRecording] & 1) != 0 || objc_msgSend(v4, "kindSubtype") == 10)
  {
    v5 = 1;
  }

  else
  {
    [MEMORY[0x1E69BF328] maskForGuestAsset];
    [v4 savedAssetType];
    if ((PLValidatedSavedAssetTypeApplies() & 1) != 0 || [v4 syndicationHistory])
    {
      v5 = ([v4 syndicationProcessingValue] & 0x3CF1) == 0;
    }

    else
    {
      v7 = [v4 importedByBundleIdentifier];
      if (v7)
      {
        v8 = [a1 importedByBundleIdentifiersAllowListForMomentGeneration];
        v9 = [v8 containsObject:v7];

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

+ (signed)originatorStateForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 shareState];
  if (v5 >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x400020001uLL >> (16 * v5);
  }

  if ([a1 shouldConsiderAssetAsOutlierForMomentClustering:v4])
  {
    v6 |= [a1 externalOriginatorStateForAsset:v4];
  }

  return v6;
}

+ (id)frequentLocationNearMoment:(id)a3 withFrequentLocations:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 startDate];
  v9 = [v6 endDate];
  v28 = v7;
  v10 = [a1 frequentLocationsOverlappingStartDate:v8 endDate:v9 frequentLocations:v7];

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
        v20 = [v18 momentsSet];
        v21 = [v20 containsObject:v6];

        if (v21)
        {
          v26 = v18;

          objc_autoreleasePoolPop(v19);
          v14 = v26;
          goto LABEL_15;
        }

        [v18 coordinate];
        v22 = [v6 approximateLocation];
        [v22 coordinate];

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

+ (id)frequentLocationsOverlappingStartDate:(id)a3 endDate:(id)a4 frequentLocations:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21 = v7;
  v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v8];
  v11 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v9;
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
        v18 = [v17 dateInterval];
        v19 = [v10 intersectsDateInterval:v18];

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

+ (id)_sortedOverlappingFrequentLocations:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_116758];

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

+ (BOOL)isTopFrequentLocationForCoordinate:(CLLocationCoordinate2D)a3 startDate:(id)a4 endDate:(id)a5 frequentLocations:(id)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v23 = *MEMORY[0x1E69E9840];
  v9 = [a1 frequentLocationsOverlappingStartDate:a4 endDate:a5 frequentLocations:a6];
  v10 = [a1 _sortedOverlappingFrequentLocations:v9];
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

+ (BOOL)isTopFrequentLocationForMoment:(id)a3 frequentLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 pl_coordinate];
  v9 = v8;
  v11 = v10;
  v12 = [v7 startDate];
  v13 = [v7 endDate];

  LOBYTE(v7) = [a1 isTopFrequentLocationForCoordinate:v12 startDate:v13 endDate:v6 frequentLocations:{v9, v11}];
  return v7;
}

+ (unsigned)_locationTypeForLocation:(id)a3 horizontalAccuracy:(double)a4 startDate:(id)a5 endDate:(id)a6 locationsOfInterest:(id)a7 frequentLocations:(id)a8
{
  v43 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v14)
  {
    v19 = 2;
    goto LABEL_39;
  }

  if ([PLLocationUtils horizontalAccuracyIsCoarse:a4])
  {
    v19 = 7;
    goto LABEL_39;
  }

  if (!v17)
  {
    v19 = 8;
    goto LABEL_28;
  }

  v37 = a1;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v21)
  {

    v19 = 6;
    a1 = v37;
    if (v18)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v22 = v21;
  v35 = v16;
  v36 = v15;
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
      [v27 distanceFromLocation:v14];
      if (v28 <= 50.0 && v28 < v23)
      {
        v30 = v28;
        v31 = [v27 type];
        switch(v31)
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

  v16 = v35;
  v15 = v36;
  a1 = v37;
  if (v25)
  {
LABEL_28:
    if (v18)
    {
LABEL_29:
      [v14 coordinate];
      v32 = [a1 isTopFrequentLocationForCoordinate:v15 startDate:v16 endDate:v18 frequentLocations:?];
      if (v17)
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

+ (unsigned)locationTypeForMoment:(id)a3 locationsOfInterest:(id)a4 frequentLocations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 approximateLocation];
  [v10 gpsHorizontalAccuracy];
  v13 = v12;
  v14 = [v10 startDate];
  v15 = [v10 endDate];

  LOWORD(v10) = [a1 _locationTypeForLocation:v11 horizontalAccuracy:v14 startDate:v15 endDate:v9 locationsOfInterest:v8 frequentLocations:v13];
  return v10;
}

+ (unsigned)locationTypeForAsset:(id)a3 locationsOfInterest:(id)a4 frequentLocations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 location];
  [v10 gpsHorizontalAccuracy];
  v13 = v12;
  v14 = [v10 dateCreated];
  v15 = [v10 dateCreated];

  LOWORD(v10) = [a1 _locationTypeForLocation:v11 horizontalAccuracy:v14 startDate:v15 endDate:v9 locationsOfInterest:v8 frequentLocations:v13];
  return v10;
}

+ (void)processLocationIfNecessaryInMoment:(id)a3 usingManager:(id)a4 frequentLocations:(id)a5 frequentLocationsDidChange:(BOOL)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v20 processedLocation];
  if (v12 > 0xA || ((1 << v12) & 0x49C) == 0)
  {
    v14 = v12;
    v15 = [v10 routineIsAvailable];
    v16 = v11 && v14 == 9;
    v17 = v16;
    if (!v14 || a6 || v17 || v15 && (v14 == 8 || v14 == 1))
    {
      v18 = [v10 locationsOfInterest];
      v19 = [a1 locationTypeForMoment:v20 locationsOfInterest:v18 frequentLocations:v11];

      [v20 setProcessedLocation:v19];
    }
  }
}

@end