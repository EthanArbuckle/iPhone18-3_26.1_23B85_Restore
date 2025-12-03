@interface RTPersonalizationPortraitManager
- (RTPersonalizationPortraitManager)init;
- (void)_fetchRecentLocationDonationsSince:(id)since handler:(id)handler;
- (void)_shutdownWithHandler:(id)handler;
- (void)feedbackUsedNamedEntities:(id)entities;
- (void)fetchLocationNamesStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchRecentLocationDonationsSince:(id)since handler:(id)handler;
@end

@implementation RTPersonalizationPortraitManager

- (RTPersonalizationPortraitManager)init
{
  v3.receiver = self;
  v3.super_class = RTPersonalizationPortraitManager;
  return [(RTNotifier *)&v3 init];
}

- (void)_shutdownWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)_fetchRecentLocationDonationsSince:(id)since handler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  sinceCopy = since;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (sinceCopy)
    {
      v7 = objc_opt_new();
      v8 = objc_opt_new();
      _coreroutineBundle = [MEMORY[0x277CCA8D8] _coreroutineBundle];
      bundleIdentifier = [_coreroutineBundle bundleIdentifier];
      v16 = v7;
      v17 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __79__RTPersonalizationPortraitManager__fetchRecentLocationDonationsSince_handler___block_invoke;
      v15[3] = &unk_2788CB428;
      v11 = v7;
      [v8 iterRecentLocationDonationsSinceDate:sinceCopy client:bundleIdentifier error:&v17 block:v15];
      v12 = v17;

      handlerCopy[2](handlerCopy, v11, v12);
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D01448];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"requires a valid date.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v8 = [v13 errorWithDomain:v14 code:7 userInfo:v11];
      handlerCopy[2](handlerCopy, 0, v8);
    }
  }
}

void __79__RTPersonalizationPortraitManager__fetchRecentLocationDonationsSince_handler___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [v21 createdAt];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
  }

  v6 = v5;

  v7 = [v21 latitude];
  if (v7)
  {
    v8 = [v21 longitude];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277D01160]);
      v10 = [v21 latitude];
      [v10 doubleValue];
      v12 = v11;
      v13 = [v21 longitude];
      [v13 doubleValue];
      v7 = [v9 initWithLatitude:v6 longitude:v12 horizontalUncertainty:v14 date:1.0];
    }

    else
    {
      v7 = 0;
    }
  }

  v15 = [RTConnectionsLocation alloc];
  v16 = [v21 name];
  v17 = [v21 originatingBundleID];
  v18 = [v21 fullFormattedAddress];
  v19 = [v21 mapItemURL];
  v20 = [(RTConnectionsLocation *)v15 initWithLocation:v7 name:v16 originatingBundleID:v17 fullFormattedAddress:v18 mapItemURL:v19 createdAt:v6];

  [*(a1 + 32) addObject:v20];
}

- (void)fetchRecentLocationDonationsSince:(id)since handler:(id)handler
{
  sinceCopy = since;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTPersonalizationPortraitManager_fetchRecentLocationDonationsSince_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = sinceCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sinceCopy;
  dispatch_async(queue, block);
}

- (void)fetchLocationNamesStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__RTPersonalizationPortraitManager_fetchLocationNamesStartDate_endDate_handler___block_invoke;
    block[3] = &unk_2788C4500;
    v14 = dateCopy;
    v15 = endDateCopy;
    v16 = handlerCopy;
    dispatch_async(queue, block);

    v12 = v14;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTPersonalizationPortraitManager fetchLocationNamesStartDate:endDate:handler:]";
      v19 = 1024;
      v20 = 116;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __80__RTPersonalizationPortraitManager_fetchLocationNamesStartDate_endDate_handler___block_invoke(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277CCA8D8] _coreroutineBundle];
  v4 = [v3 bundleIdentifier];
  v30 = [v2 setWithObjects:{v4, @"com.apple.Maps", 0}];

  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(&unk_2845A1160, "count")}];
  v29 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [&unk_2845A1160 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(&unk_2845A1160);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setLimit:-1];
        [v10 setMatchCategory:1];
        v11 = [MEMORY[0x277CBEB98] setWithObject:v9];
        [v10 setMatchingCategories:v11];

        [v10 setExcludingSourceBundleIds:v30];
        [v10 setFromDate:a1[4]];
        [v10 setToDate:a1[5]];
        v12 = objc_opt_new();
        v31 = 0;
        v13 = [v12 rankedNamedEntitiesWithQuery:v10 error:&v31];
        v14 = v31;

        v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_63];
        v16 = [v13 filteredArrayUsingPredicate:v15];

        v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
        v36 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v19 = [v16 sortedArrayUsingDescriptors:v18];

        v20 = [v19 count];
        if (v20 >= 3)
        {
          v21 = 3;
        }

        else
        {
          v21 = v20;
        }

        v22 = [v19 subarrayWithRange:{0, v21}];

        v23 = [[_RTMap alloc] initWithInput:v22];
        v24 = [(_RTMap *)v23 withBlock:&__block_literal_global_34];

        [v29 addObjectsFromArray:v24];
        if (v14)
        {
          [v28 addObject:v14];
        }
      }

      v6 = [&unk_2845A1160 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  v25 = a1[6];
  v26 = _RTSafeArray();
  v27 = _RTMultiErrorCreate();
  (*(v25 + 16))(v25, v29, v27);
}

BOOL __80__RTPersonalizationPortraitManager_fetchLocationNamesStartDate_endDate_handler___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = [a2 item];
  v3 = [v2 name];
  v4 = v3 != 0;

  return v4;
}

id __80__RTPersonalizationPortraitManager_fetchLocationNamesStartDate_endDate_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 item];
  v4 = [v3 name];
  if ([v4 length])
  {
    v5 = [v2 item];
    v6 = [v5 name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)feedbackUsedNamedEntities:(id)entities
{
  entitiesCopy = entities;
  if ([entitiesCopy count])
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__RTPersonalizationPortraitManager_feedbackUsedNamedEntities___block_invoke;
    block[3] = &unk_2788C4EA0;
    v7 = entitiesCopy;
    dispatch_async(queue, block);
  }
}

void __62__RTPersonalizationPortraitManager_feedbackUsedNamedEntities___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__80;
  v9 = __Block_byref_object_dispose__80;
  v10 = objc_opt_new();
  [v6[5] setClientIdentifier:@"rt-lbl"];
  v2 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithExplicitlyEngagedStrings:*(a1 + 32) explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0];
  v3 = v6[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__RTPersonalizationPortraitManager_feedbackUsedNamedEntities___block_invoke_39;
  v4[3] = &unk_2788CB490;
  v4[4] = &v5;
  [v3 registerFeedback:v2 completion:v4];

  _Block_object_dispose(&v5, 8);
}

void __62__RTPersonalizationPortraitManager_feedbackUsedNamedEntities___block_invoke_39(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end