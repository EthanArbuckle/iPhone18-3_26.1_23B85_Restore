@interface VCActionDonationFetcher
+ (BOOL)shouldKeepActionWithAppBundleIdentifierForDisplay:(id)a3;
+ (id)atxClient;
+ (id)donationWithUUID:(id)a3;
+ (id)fetchEventsWithPredicate:(id)a3 limit:(unint64_t)a4 directAccess:(BOOL)a5;
+ (id)filterDonations:(id)a3 forApplicationBundleIdentifier:(id)a4;
+ (id)isEligibleForPredictionPredicate;
+ (id)keyPathForStream:(id)a3;
+ (id)predicateForShortcutAvailabilityOptions:(unint64_t)a3;
+ (id)streams;
+ (id)whitelistedDonationsWithOptions:(unint64_t)a3;
+ (void)fetchDonationsForApplicationBundleIdentifier:(id)a3 limit:(unint64_t)a4 filteringForTopLevel:(BOOL)a5 filteringForIsEligibleForPrediction:(BOOL)a6 filteringForRecent:(BOOL)a7 completion:(id)a8;
+ (void)fetchDonationsForApplicationBundleIdentifier:(id)a3 limit:(unint64_t)a4 shortcutAvailability:(unint64_t)a5 completion:(id)a6;
+ (void)getPredicateForIntentsWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getPredicateForUserActivitiesWithApplicationBundleIdentifier:(id)a3 filteringForIsEligibleForPrediction:(BOOL)a4 completionHandler:(id)a5;
+ (void)sourceAppIdentifierArrayForApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation VCActionDonationFetcher

+ (id)filterDonations:(id)a3 forApplicationBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = filterDonations_forApplicationBundleIdentifier__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    dispatch_once(&filterDonations_forApplicationBundleIdentifier__onceToken, &__block_literal_global_120);
  }

  v8 = [filterDonations_forApplicationBundleIdentifier__bundleIdentifiersRequiringDisplayFilter containsObject:v5];
  v9 = MEMORY[0x1E696AE18];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __74__VCActionDonationFetcher_filterDonations_forApplicationBundleIdentifier___block_invoke_2;
  v17 = &unk_1E7B00C00;
  v19 = v8;
  v18 = v5;
  v10 = v5;
  v11 = [v9 predicateWithBlock:&v14];
  v12 = [v7 filteredArrayUsingPredicate:{v11, v14, v15, v16, v17}];

  return v12;
}

uint64_t __74__VCActionDonationFetcher_filterDonations_forApplicationBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1)
  {
    return 1;
  }

  v3 = [a2 sourceAppIdentifierForDisplay];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __74__VCActionDonationFetcher_filterDonations_forApplicationBundleIdentifier___block_invoke()
{
  filterDonations_forApplicationBundleIdentifier__bundleIdentifiersRequiringDisplayFilter = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mobilephone", @"com.apple.facetime", @"com.apple.Passbook", @"com.apple.MobileSMS", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)isEligibleForPredictionPredicate
{
  v2 = MEMORY[0x1E69979D0];
  v3 = [MEMORY[0x1E6997948] isEligibleForPrediction];
  v4 = [v2 predicateForObjectsWithMetadataKey:v3 andIntegerValue:1];

  return v4;
}

+ (id)donationWithUUID:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69979D0] predicateForObjectWithUUID:v4];
  v6 = [a1 fetchEventsWithPredicate:v5 limit:1];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v7 stream];
    v9 = [MEMORY[0x1E69979E8] appIntentsStream];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = VCInteractionDonation;
LABEL_8:
      v20 = [[v11 alloc] initWithEvent:v7];
      goto LABEL_13;
    }

    v17 = [v7 stream];
    v18 = [MEMORY[0x1E69979E8] appActivityStream];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      v11 = VCUserActivityDonation;
      goto LABEL_8;
    }

    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 UUIDString];
      v23 = 136315650;
      v24 = "+[VCActionDonationFetcher donationWithUUID:]";
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v7;
      v14 = "%s Event with uuid (%@) is not of a supported type: %@";
      v15 = v12;
      v16 = 32;
      goto LABEL_11;
    }
  }

  else
  {
    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 UUIDString];
      v23 = 136315394;
      v24 = "+[VCActionDonationFetcher donationWithUUID:]";
      v25 = 2112;
      v26 = v13;
      v14 = "%s Event with uuid (%@) not found";
      v15 = v12;
      v16 = 22;
LABEL_11:
      _os_log_impl(&dword_1B1DE3000, v15, OS_LOG_TYPE_ERROR, v14, &v23, v16);
    }
  }

  v20 = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (void)getPredicateForIntentsWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E7B00BD8;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [a1 sourceAppIdentifierArrayForApplicationBundleIdentifier:v8 completionHandler:v10];
}

void __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__5659;
    v14 = __Block_byref_object_dispose__5660;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7B00B88;
    v9[4] = &v10;
    [v4 enumerateObjectsUsingBlock:v9];
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v11[5]];
    (*(v5 + 16))(v5, v6);

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E69979D0] predicateForEventsWithSourceID:@"intents" bundleID:*(a1 + 32)];
    (*(v7 + 16))(v7, v8);
  }
}

uint64_t __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69979D0] predicateForEventsWithSourceID:@"intents" bundleID:a2];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (void)getPredicateForUserActivitiesWithApplicationBundleIdentifier:(id)a3 filteringForIsEligibleForPrediction:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke;
  v12[3] = &unk_1E7B00BB0;
  v16 = a4;
  v14 = v9;
  v15 = a1;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [a1 sourceAppIdentifierArrayForApplicationBundleIdentifier:v11 completionHandler:v12];
}

void __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__5659;
    v17 = __Block_byref_object_dispose__5660;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7B00B88;
    v12[4] = &v13;
    [v4 enumerateObjectsUsingBlock:v12];
    v5 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v14[5]];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v5 = [MEMORY[0x1E69979D0] predicateForEventsWithStringValue:*(a1 + 32)];
  }

  if (*(a1 + 56) == 1 && [*(a1 + 48) shouldFilterDonationsForAppWithApplicationBundleIdentifier:*(a1 + 32)])
  {
    v6 = MEMORY[0x1E696AB28];
    v19[0] = v5;
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) isEligibleForPredictionPredicate];
    v19[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v10 = [v6 andPredicateWithSubpredicates:v9];
    (*(v7 + 16))(v7, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69979D0] predicateForEventsWithStringValue:a2];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (id)whitelistedDonationsWithOptions:(unint64_t)a3
{
  v61[4] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  if (a3)
  {
    v60[0] = @"com.apple.mobilenotes";
    v60[1] = @"com.apple.podcasts";
    v61[0] = &unk_1F2931080;
    v61[1] = &unk_1F2931098;
    v60[2] = @"com.apple.Music";
    v60[3] = @"com.apple.weather";
    v61[2] = &unk_1F29310B0;
    v61[3] = &unk_1F29310C8;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:4];
    if ((a3 & 2) != 0)
    {
      v7 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.mobilenotes"];
      v8 = MEMORY[0x1E69979D0];
      v9 = [MEMORY[0x1E6997990] intentClass];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 predicateForObjectsWithMetadataKey:v9 andStringValue:v11];

      v13 = MEMORY[0x1E696AB28];
      v59[0] = v7;
      v59[1] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
      v15 = [v13 andPredicateWithSubpredicates:v14];

      v16 = MEMORY[0x1E69979D0];
      v17 = [MEMORY[0x1E6997948] activityType];
      v18 = [v16 predicateForObjectsWithMetadataKey:v17 andStringValue:@"com.apple.notes.activity.edit-note"];

      v19 = MEMORY[0x1E696AB28];
      v58[0] = v18;
      v58[1] = v7;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      v21 = [v19 andPredicateWithSubpredicates:v20];

      [v5 addObject:v15];
      [v5 addObject:v21];
    }

    if ((a3 & 8) != 0)
    {
      v35 = MEMORY[0x1E69979D0];
      v36 = [MEMORY[0x1E6997990] intentClass];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v35 predicateForObjectsWithMetadataKey:v36 andStringValue:v38];

      v40 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.podcasts"];
      v41 = MEMORY[0x1E696AB28];
      v57[0] = v39;
      v57[1] = v40;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      v43 = [v41 andPredicateWithSubpredicates:v42];

      [v5 addObject:v43];
      if ((a3 & 4) == 0)
      {
LABEL_6:
        if ((a3 & 0x20) == 0)
        {
LABEL_8:
          v29 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
          v30 = [a1 fetchDonationsWithPredicate:v29 limit:40 filteringForTopLevel:0 directAccess:0];
          v31 = [v30 array];

          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __59__VCActionDonationFetcher_whitelistedDonationsWithOptions___block_invoke;
          v53[3] = &unk_1E7B00B60;
          v54 = v6;
          v32 = v6;
          [v31 enumerateObjectsUsingBlock:v53];

          goto LABEL_10;
        }

LABEL_7:
        v22 = MEMORY[0x1E69979D0];
        v23 = [MEMORY[0x1E6997990] intentClass];
        v24 = [v22 predicateForObjectsWithMetadataKey:v23 andStringValue:@"WeatherIntent"];

        v25 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.weather"];
        v26 = MEMORY[0x1E696AB28];
        v55[0] = v24;
        v55[1] = v25;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
        v28 = [v26 andPredicateWithSubpredicates:v27];

        [v5 addObject:v28];
        goto LABEL_8;
      }
    }

    else if ((a3 & 4) == 0)
    {
      goto LABEL_6;
    }

    v44 = MEMORY[0x1E69979D0];
    v45 = [MEMORY[0x1E6997990] intentClass];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v44 predicateForObjectsWithMetadataKey:v45 andStringValue:v47];

    v49 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.Music"];
    v50 = MEMORY[0x1E696AB28];
    v56[0] = v48;
    v56[1] = v49;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
    v52 = [v50 andPredicateWithSubpredicates:v51];

    [v5 addObject:v52];
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v31 = MEMORY[0x1E695E0F0];
LABEL_10:

  v33 = *MEMORY[0x1E69E9840];

  return v31;
}

uint64_t __59__VCActionDonationFetcher_whitelistedDonationsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 sourceAppIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 unsignedIntegerValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v13 interaction];
    v11 = [v10 intent];
    [v11 setShortcutAvailability:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = [v13 userActivity];
    [v10 setShortcutAvailability:v9];
  }

LABEL_11:

  return MEMORY[0x1EEE66BB8]();
}

+ (id)predicateForShortcutAvailabilityOptions:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = objc_opt_new();
    for (i = 0; i != 64; ++i)
    {
      if (((1 << i) & v3) != 0)
      {
        v6 = MEMORY[0x1E69979D0];
        v7 = [MEMORY[0x1E6997990] shortcutAvailability];
        v8 = [v6 predicateForObjectsWithMetadataKey:v7 andIntegerValue:1 << i];

        v9 = MEMORY[0x1E69979D0];
        v10 = [MEMORY[0x1E6997948] shortcutAvailability];
        v11 = [v9 predicateForObjectsWithMetadataKey:v10 andIntegerValue:1 << i];

        [v4 addObject:v8];
        [v4 addObject:v11];
      }
    }

    v3 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
  }

  return v3;
}

+ (void)fetchDonationsForApplicationBundleIdentifier:(id)a3 limit:(unint64_t)a4 shortcutAvailability:(unint64_t)a5 completion:(id)a6
{
  v18 = a3;
  if (a5)
  {
    v10 = a6;
    v11 = [a1 predicateForShortcutAvailabilityOptions:a5];
    v12 = [a1 fetchDonationsWithPredicate:v11 limit:a4 filteringForTopLevel:0 directAccess:0];
    v13 = [v12 array];

    v14 = [a1 whitelistedDonationsWithOptions:a5];
    v15 = [v13 arrayByAddingObjectsFromArray:v14];
    v16 = [a1 filterDonations:v15 forApplicationBundleIdentifier:v18];

    v10[2](v10, v16);
  }

  else
  {
    v17 = *(a6 + 2);
    v11 = a6;
    v17();
  }
}

+ (void)fetchDonationsForApplicationBundleIdentifier:(id)a3 limit:(unint64_t)a4 filteringForTopLevel:(BOOL)a5 filteringForIsEligibleForPrediction:(BOOL)a6 filteringForRecent:(BOOL)a7 completion:(id)a8
{
  v30 = a6;
  v33 = a5;
  v66[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v26 = a8;
  v27 = v10;
  if (v10)
  {
    v66[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
    v13 = [v12 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v13)
    {
      v14 = *v61;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v61 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v60 + 1) + 8 * i) bundleIdentifier];
          [v11 addObject:v16];
        }

        v13 = [v12 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v13);
    }
  }

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__5659;
  v58[4] = __Block_byref_object_dispose__5660;
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__5659;
  v56[4] = __Block_byref_object_dispose__5660;
  v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v32 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v17 = dispatch_group_create();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v11;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v18)
  {
    v19 = *v53;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * j);
        if (([v21 isEqualToString:@"com.apple.tv"] & 1) == 0)
        {
          if (!v33 || ([v21 hasPrefix:@"com.apple."] & 1) == 0)
          {
            dispatch_group_enter(v17);
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke;
            v48[3] = &unk_1E7B00B08;
            v49 = v31;
            v51 = v58;
            v50 = v17;
            [a1 getPredicateForUserActivitiesWithApplicationBundleIdentifier:v21 filteringForIsEligibleForPrediction:v30 completionHandler:v48];
          }

          dispatch_group_enter(v17);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_2;
          v44[3] = &unk_1E7B00B08;
          v45 = v32;
          v47 = v56;
          v46 = v17;
          [a1 getPredicateForIntentsWithApplicationBundleIdentifier:v21 completionHandler:v44];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v18);
  }

  v22 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_3;
  block[3] = &unk_1E7B00B30;
  v38 = v58;
  v39 = v56;
  v42 = a7;
  v40 = a1;
  v41 = a4;
  v43 = v33;
  v36 = v27;
  v37 = v26;
  v23 = v26;
  v24 = v27;
  dispatch_group_notify(v17, v22, block);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);

  v25 = *MEMORY[0x1E69E9840];
}

void __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v4];

  [*(a1 + 32) unlock];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v4];

  [*(a1 + 32) unlock];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_3(uint64_t a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:*(*(*(a1 + 48) + 8) + 40)];
  v3 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:*(*(*(a1 + 56) + 8) + 40)];
  v4 = MEMORY[0x1E696AB28];
  v20[0] = v2;
  v20[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v6 = [v4 orPredicateWithSubpredicates:v5];

  v7 = v6;
  v8 = v7;
  if (*(a1 + 80) == 1)
  {
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [v9 dateByAddingUnit:16 value:-7 toDate:v10 options:0];

    v12 = [MEMORY[0x1E69979D0] predicateForEventsWithStartDateAfter:v11];
    v13 = MEMORY[0x1E696AB28];
    v19[0] = v7;
    v19[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v8 = [v13 andPredicateWithSubpredicates:v14];
  }

  v15 = [*(a1 + 64) fetchDonationsWithPredicate:v8 limit:*(a1 + 72) filteringForTopLevel:*(a1 + 81)];
  v16 = [v15 array];

  v17 = [*(a1 + 64) filterDonations:v16 forApplicationBundleIdentifier:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)fetchEventsWithPredicate:(id)a3 limit:(unint64_t)a4 directAccess:(BOOL)a5
{
  v5 = a5;
  v39[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x1E69979D0];
    v10 = [MEMORY[0x1E695DF00] distantPast];
    v11 = [MEMORY[0x1E695DF00] distantFuture];
    v8 = [v9 predicateForEventsWithEndInDateRangeFrom:v10 to:v11];
  }

  v12 = getWFVoiceShortcutClientLogObject();
  v13 = os_signpost_id_generate(v12);

  v14 = getWFVoiceShortcutClientLogObject();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CoreDuetEventFetch", "", buf, 2u);
  }

  v16 = MEMORY[0x1E6997968];
  v17 = [a1 streams];
  v18 = [MEMORY[0x1E69979D0] startDateSortDescriptorAscending:0];
  v39[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v20 = [v16 eventQueryWithPredicate:v8 eventStreams:v17 offset:0 limit:a4 sortDescriptors:v19];

  if (v5)
  {
    v21 = [MEMORY[0x1E69979A0] knowledgeStoreWithDirectReadOnlyAccess];
    v22 = v21;
    v34 = 0;
    v23 = &v34;
    v24 = &v34;
  }

  else
  {
    v21 = [MEMORY[0x1E69979A0] knowledgeStore];
    v22 = v21;
    v33 = 0;
    v23 = &v33;
    v24 = &v33;
  }

  v25 = [v21 executeQuery:v20 error:{v24, v33, v34}];
  v26 = *v23;

  v27 = getWFVoiceShortcutClientLogObject();
  v28 = v27;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v28, OS_SIGNPOST_INTERVAL_END, v13, "CoreDuetEventFetch", "", buf, 2u);
  }

  if (v25)
  {
    v29 = v25;
  }

  else
  {
    v30 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "+[VCActionDonationFetcher fetchEventsWithPredicate:limit:directAccess:]";
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_1B1DE3000, v30, OS_LOG_TYPE_ERROR, "%s Failed to execute CoreDuet query: %@", buf, 0x16u);
    }
  }

  v31 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)keyPathForStream:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69979E8] appIntentsStream];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E6997A68] keyPathForIntentsDataDictionary];
LABEL_5:
    v9 = v6;
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E69979E8] appActivityStream];
  v8 = [v3 isEqual:v7];

  if (v8)
  {
    v6 = [MEMORY[0x1E6997A68] keyPathForUserActivityDataDictionary];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (BOOL)shouldKeepActionWithAppBundleIdentifierForDisplay:(id)a3
{
  v4 = a3;
  v5 = [a1 atxClient];
  v6 = [v5 shouldPredictBundleIdForShortcuts:v4 action:@"_"];

  return v6;
}

+ (id)atxClient
{
  if (atxClient_onceToken != -1)
  {
    dispatch_once(&atxClient_onceToken, &__block_literal_global_5714);
  }

  v3 = atxClient_client;

  return v3;
}

uint64_t __36__VCActionDonationFetcher_atxClient__block_invoke()
{
  atxClient_client = [(objc_class *)getATXClientClass() clientForConsumerType:13];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)streams
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69979E8] appIntentsStream];
  v7[0] = v2;
  v3 = [MEMORY[0x1E69979E8] appActivityStream];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)sourceAppIdentifierArrayForApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (([v5 isEqualToString:@"com.apple.mobilephone"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.facetime"))
  {
    v6[2](v6, &unk_1F2931548);
  }

  else if ([v5 isEqualToString:@"com.apple.Passbook"])
  {
    v18[0] = @"com.apple.Passbook";
    v18[1] = @"com.apple.MobileSMS";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v6[2](v6, v8);
  }

  else if ([v5 isEqualToString:@"com.apple.DocumentsApp"])
  {
    v9 = MEMORY[0x1E696ABD0];
    v10 = *MEMORY[0x1E696A2F8];
    v15 = @"com.apple.fileprovider-nonui";
    v16 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v17 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__VCActionDonationFetcher_sourceAppIdentifierArrayForApplicationBundleIdentifier_completionHandler___block_invoke;
    v13[3] = &unk_1E7B026A8;
    v14 = v6;
    [v9 extensionsWithMatchingAttributes:v12 completion:v13];
  }

  else
  {
    v6[2](v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __100__VCActionDonationFetcher_sourceAppIdentifierArrayForApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [v4 valueForKey:@"identifier"];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end