@interface HVDonationReceiver
+ (id)defaultReceiver;
- (BOOL)deleteContentWithRequest:(id)request error:(id *)error;
- (BOOL)donateInteractions:(id)interactions bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)donateSearchableItems:(id)items bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)donateUserAction:(id)action searchableItem:(id)item error:(id *)error;
- (HVDonationReceiver)init;
- (HVDonationReceiver)initWithQueues:(id)queues;
- (void)_setUpUserActivityDonations;
@end

@implementation HVDonationReceiver

+ (id)defaultReceiver
{
  if (defaultReceiver__pasOnceToken8 != -1)
  {
    dispatch_once(&defaultReceiver__pasOnceToken8, &__block_literal_global_1244);
  }

  v3 = defaultReceiver__pasExprOnceResult;

  return v3;
}

- (BOOL)deleteContentWithRequest:(id)request error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v20 = requestCopy;
    _os_log_debug_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEBUG, "HVDonationReceiver: deleteContentWithRequest called: %{private}@", buf, 0xCu);
  }

  queues = self->_queues;
  v16 = 0;
  v9 = [(HVQueues *)queues deleteContentWithRequest:requestCopy error:&v16];
  v10 = v16;
  if (!v9)
  {
    v11 = hv_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_error_impl(&dword_2321EC000, v11, OS_LOG_TYPE_ERROR, "HVDonationReceiver: deleteContentWithRequest failed: %@", buf, 0xCu);
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA7E8];
      v18 = v10;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *error = [v12 errorWithDomain:@"HVErrorDomain" code:6 userInfo:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)donateInteractions:(id)interactions bundleIdentifier:(id)identifier error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  interactionsCopy = interactions;
  identifierCopy = identifier;
  if ([HVContentAdmission shouldAdmitContentFromBundleIdentifier:?])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = interactionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
    v11 = v10 == 0;
    if (v10)
    {
      v12 = v10;
      obj = v9;
      v30 = v10 == 0;
      errorCopy = error;
      v32 = interactionsCopy;
      v9 = 0;
      v13 = *v38;
      v14 = *MEMORY[0x277CCA1B8];
      v33 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          identifier = [v16 identifier];

          if (identifier)
          {
            v19 = [[HVInteraction alloc] initWithInteraction:v16 bundleIdentifier:identifierCopy];
            queues = self->_queues;
            v36 = 0;
            v21 = [(HVQueues *)queues enqueueContent:v19 contentProtection:v14 error:&v36];
            v22 = v36;
            if (!v21)
            {
              v23 = hv_default_log_handle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v44 = v22;
                _os_log_error_impl(&dword_2321EC000, v23, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateInteractions: HVQueues enqueueContent failed: %@", buf, 0xCu);
              }

              v24 = v22;
              v33 = 0;
              v9 = v24;
            }
          }

          else
          {
            v22 = hv_default_log_handle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543619;
              v44 = identifierCopy;
              v45 = 2117;
              v46 = v16;
              _os_log_fault_impl(&dword_2321EC000, v22, OS_LOG_TYPE_FAULT, "Received interaction with nil identifier from bundle id %{public}@: %{sensitive}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v12 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v12);

      v11 = v33;
      if ((errorCopy == 0) | v33 & 1)
      {
        interactionsCopy = v32;
        v25 = v9;
        goto LABEL_27;
      }

      v26 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA7E8];
      v25 = v9;
      interactionsCopy = v32;
      if (!v9)
      {
        v9 = objc_opt_new();
      }

      v42 = v9;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *errorCopy = [v26 errorWithDomain:@"HVErrorDomain" code:2 userInfo:v27];

      v11 = v30;
      if (v25)
      {
        v11 = 0;
        goto LABEL_27;
      }
    }

    v25 = 0;
    goto LABEL_27;
  }

  v25 = hv_default_log_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = identifierCopy;
    _os_log_impl(&dword_2321EC000, v25, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateInteraction: ignoring interaction from %@ due to user settings.", buf, 0xCu);
  }

  v11 = 1;
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)donateUserAction:(id)action searchableItem:(id)item error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemCopy = item;
  bundleID = [itemCopy bundleID];
  v11 = [HVContentAdmission shouldAdmitContentFromBundleIdentifier:bundleID];

  if (v11)
  {
    v12 = dispatch_semaphore_create(0);
    *&v49 = 0;
    *(&v49 + 1) = &v49;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__1209;
    v52 = __Block_byref_object_dispose__1210;
    v53 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__1209;
    v43 = __Block_byref_object_dispose__1210;
    v44 = 0;
    v13 = MEMORY[0x277CCAE58];
    uaIdentifier = [actionCopy uaIdentifier];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __60__HVDonationReceiver_donateUserAction_searchableItem_error___block_invoke;
    v35[3] = &unk_278969780;
    v37 = &v39;
    v38 = &v49;
    v15 = v12;
    v36 = v15;
    v16 = [v13 _fetchUserActivityWithUUID:uaIdentifier intervalToWaitForDocumentSynchronizationToComplete:v35 completionHandler:5.0];

    [MEMORY[0x277D425A0] waitForSemaphore:v15];
    if (!*(*(&v49 + 1) + 40))
    {
      v23 = 0;
      if (error)
      {
        *error = v40[5];
      }

      goto LABEL_19;
    }

    v17 = hv_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(&v49 + 1) + 40);
      *buf = 138412290;
      v48 = v18;
      _os_log_impl(&dword_2321EC000, v17, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateUserActivity: fetched user activity: %@", buf, 0xCu);
    }

    v19 = [HVSearchableUserActivity alloc];
    v20 = [(HVSearchableUserActivity *)v19 initWithUserActivity:*(*(&v49 + 1) + 40) searchableItem:itemCopy];
    queues = self->_queues;
    protection = [itemCopy protection];
    v34 = 0;
    v23 = [(HVQueues *)queues enqueueContent:v20 contentProtection:protection error:&v34];
    v24 = v34;

    if ((v23 & 1) == 0)
    {
      v27 = hv_default_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v48 = v24;
        _os_log_error_impl(&dword_2321EC000, v27, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateUserAction: HVQueues enqueueContent failed: %@", buf, 0xCu);
      }

      v28 = v24;
      v25 = v28;
      if (!error)
      {
        goto LABEL_18;
      }

      v33 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA7E8];
      v29 = v28;
      if (!v28)
      {
        v29 = objc_opt_new();
      }

      v46 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *error = [v33 errorWithDomain:@"HVErrorDomain" code:2 userInfo:v30];

      if (v25)
      {
        goto LABEL_18;
      }
    }

    v25 = 0;
LABEL_18:

LABEL_19:
    _Block_object_dispose(&v39, 8);

    _Block_object_dispose(&v49, 8);
    goto LABEL_20;
  }

  v15 = hv_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    bundleID2 = [itemCopy bundleID];
    LODWORD(v49) = 138412290;
    *(&v49 + 4) = bundleID2;
    _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateUserActivity: ignoring activity from %@ due to user settings.", &v49, 0xCu);
  }

  v23 = 1;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
  return v23;
}

void __60__HVDonationReceiver_donateUserAction_searchableItem_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_2321EC000, v7, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateUserAction: failed to fetch user activity: %@", &v12, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)donateSearchableItems:(id)items bundleIdentifier:(id)identifier error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifierCopy = identifier;
  v9 = hv_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [itemsCopy count];
    v11 = [itemsCopy _pas_mappedArrayWithTransform:&__block_literal_global_21];
    *buf = 134218498;
    v62 = v10;
    v63 = 2114;
    v64 = identifierCopy;
    v65 = 2114;
    v66 = v11;
    _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: received %tu searchableItems for %{public}@ (%{public}@)", buf, 0x20u);
  }

  if ([HVContentAdmission shouldAdmitContentFromBundleIdentifier:identifierCopy])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v55 objects:v69 count:16];
    v14 = v13 == 0;
    v52 = v13;
    if (v13)
    {
      errorCopy = error;
      v44 = itemsCopy;
      v15 = 0;
      v16 = *v56;
      v49 = 1;
      v48 = *v56;
      v46 = v12;
      do
      {
        v17 = 0;
        do
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v55 + 1) + 8 * v17);
          v19 = objc_autoreleasePoolPush();
          bundleID = [v18 bundleID];
          v21 = [bundleID isEqualToString:identifierCopy];

          if (v21)
          {
            v54 = 0;
            v22 = [HVBiomeConversions biomeEventFromSearchableItem:v18 bundleIdentifier:identifierCopy error:&v54];
            v23 = v54;
            if (v22)
            {
              v24 = v15;
              v25 = identifierCopy;
              queues = self->_queues;
              protection = [v18 protection];
              v53 = 0;
              v28 = [(HVQueues *)queues enqueueContent:v22 contentProtection:protection error:&v53];
              v29 = v53;

              if (v28)
              {
                identifierCopy = v25;
                v15 = v24;
              }

              else
              {
                v31 = hv_default_log_handle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  bundleID2 = [v18 bundleID];
                  uniqueIdentifier = [v18 uniqueIdentifier];
                  domainIdentifier = [v18 domainIdentifier];
                  *buf = 138544130;
                  v62 = bundleID2;
                  v63 = 2114;
                  v64 = uniqueIdentifier;
                  v65 = 2114;
                  v66 = domainIdentifier;
                  v67 = 2112;
                  v68 = v29;
                  _os_log_error_impl(&dword_2321EC000, v31, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateSearchableItems: HVQueues enqueueContent bid:%{public}@ uid:%{public}@ did:%{public}@ failed: %@", buf, 0x2Au);
                }

                v29 = v29;
                v49 = 0;
                v15 = v29;
                identifierCopy = v25;
              }

              v12 = v46;
              v16 = v48;
            }

            else
            {
              v30 = hv_default_log_handle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                bundleID3 = [v18 bundleID];
                [v18 uniqueIdentifier];
                v35 = v50 = v15;
                domainIdentifier2 = [v18 domainIdentifier];
                *buf = 138544130;
                v62 = bundleID3;
                v63 = 2114;
                v64 = v35;
                v65 = 2114;
                v66 = domainIdentifier2;
                v67 = 2112;
                v68 = v23;
                _os_log_error_impl(&dword_2321EC000, v30, OS_LOG_TYPE_ERROR, "HVDonationReceiver: HVBiomeConversions biomeEventFromSearchableItem bid:%{public}@ uid:%{public}@ did:%{public}@ failed: %@", buf, 0x2Au);

                v16 = v48;
                v15 = v50;
              }

              v49 = 0;
              v29 = v15;
              v15 = v23;
            }
          }

          else
          {
            v23 = hv_default_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              bundleID4 = [v18 bundleID];
              uniqueIdentifier2 = [v18 uniqueIdentifier];
              domainIdentifier3 = [v18 domainIdentifier];
              *buf = 138544130;
              v62 = bundleID4;
              v63 = 2114;
              v64 = identifierCopy;
              v65 = 2114;
              v66 = uniqueIdentifier2;
              v67 = 2114;
              v68 = domainIdentifier3;
              _os_log_fault_impl(&dword_2321EC000, v23, OS_LOG_TYPE_FAULT, "HVDonationReceiver: HVBiomeConversions mismatched bundle id (%{public}@ != %{public}@) uid:%{public}@ did:%{public}@", buf, 0x2Au);
            }

            v49 = 0;
          }

          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v52 != v17);
        v52 = [v12 countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v52);

      v14 = v49;
      if ((errorCopy == 0) | v49 & 1)
      {
        itemsCopy = v44;
        goto LABEL_36;
      }

      v39 = MEMORY[0x277CCA9B8];
      v59 = *MEMORY[0x277CCA7E8];
      v12 = v15;
      itemsCopy = v44;
      if (!v15)
      {
        v12 = objc_opt_new();
      }

      v60 = v12;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      *errorCopy = [v39 errorWithDomain:@"HVErrorDomain" code:2 userInfo:v40];

      v14 = 0;
      if (v15)
      {
        v14 = 0;
        goto LABEL_36;
      }
    }

    v15 = 0;
    goto LABEL_36;
  }

  v15 = hv_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v62 = identifierCopy;
    _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateSearchableItems: ignoring content from %{public}@ due to user settings.", buf, 0xCu);
  }

  v14 = 1;
LABEL_36:

  v41 = *MEMORY[0x277D85DE8];
  return v14;
}

__CFString *__67__HVDonationReceiver_donateSearchableItems_bundleIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"(NO UNIQUEID!)";
  }

  v5 = v4;

  return v4;
}

- (void)_setUpUserActivityDonations
{
  v3 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"HVDonationReceiver.biomeSubQueue" qosClass:9];
  biomeSubQueue = self->_biomeSubQueue;
  self->_biomeSubQueue = v3;

  v5 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.HVDonationReceiver.BiomeScheduler" targetQueue:self->_biomeSubQueue];
  biomeScheduler = self->_biomeScheduler;
  self->_biomeScheduler = v5;

  v7 = objc_opt_new();
  publisher = [v7 publisher];
  v9 = [publisher subscribeOn:self->_biomeScheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HVDonationReceiver__setUpUserActivityDonations__block_invoke_16;
  v12[3] = &unk_278969738;
  v12[4] = self;
  v10 = [v9 sinkWithCompletion:&__block_literal_global_15_1230 receiveInput:v12];
  biomeSink = self->_biomeSink;
  self->_biomeSink = v10;
}

void __49__HVDonationReceiver__setUpUserActivityDonations__block_invoke_16(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 eventBody];
  v4 = [v3 associatedBundleId];
  v5 = [HVContentAdmission shouldAdmitContentFromBundleIdentifier:v4];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *MEMORY[0x277CCA1A0];
    v14 = 0;
    v8 = [v6 enqueueContent:v3 contentProtection:v7 error:&v14];
    v9 = v14;
    if ((v8 & 1) == 0)
    {
      v10 = hv_default_log_handle();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      v11 = [v3 uuid];
      v12 = [v3 associatedBundleId];
      *buf = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_2321EC000, v10, OS_LOG_TYPE_ERROR, "HVDonationReceiver: user activities: failed to enqueue %@ from %@: %@", buf, 0x20u);

LABEL_7:
      goto LABEL_8;
    }
  }

  else
  {
    v9 = hv_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 uuid];
      v11 = [v3 associatedBundleId];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: user activities: ignoring %@ from %@ due to settings.", buf, 0x16u);
      goto LABEL_7;
    }
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

void __49__HVDonationReceiver__setUpUserActivityDonations__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = hv_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 error];
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_2321EC000, v3, OS_LOG_TYPE_ERROR, "HVDonationReceiver: user activities: completion error: %@", &v7, 0xCu);
    }
  }

  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: user activities: completed.", &v7, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (HVDonationReceiver)initWithQueues:(id)queues
{
  queuesCopy = queues;
  v9.receiver = self;
  v9.super_class = HVDonationReceiver;
  v6 = [(HVDonationReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queues, queues);
  }

  return v7;
}

- (HVDonationReceiver)init
{
  v3 = +[HVQueues defaultQueues];
  v4 = [(HVDonationReceiver *)self initWithQueues:v3];

  return v4;
}

void __37__HVDonationReceiver_defaultReceiver__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultReceiver__pasExprOnceResult;
  defaultReceiver__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end