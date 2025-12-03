@interface STDataAccessStatusDomainDataProvider
- (STDataAccessStatusDomainData)dataAccessData;
- (STDataAccessStatusDomainDataProvider)init;
- (STLocationStatusDomainData)locationData;
- (STMediaStatusDomainData)mediaData;
- (id)_dataAccessAttributionsForAttributions:(uint64_t)attributions dataAccessType:(void *)type dataAccessAttributionProvider:;
- (id)_internalQueue_generatedData;
- (id)setLocationData:(id)data mediaData:(id)mediaData;
- (void)_internalQueue_handleLocationData:(void *)data mediaData:;
- (void)_internalQueue_makeAttributionRecent:(id *)recent;
- (void)_internalQueue_notifyForNewData:(uint64_t)data manualUpdate:;
- (void)dealloc;
- (void)invalidate;
@end

@implementation STDataAccessStatusDomainDataProvider

- (id)_internalQueue_generatedData
{
  selfCopy = self;
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    v2 = [selfCopy[8] mutableCopy];
    [v2 addObjectsFromArray:selfCopy[9]];
    [v2 addObjectsFromArray:selfCopy[11]];
    selfCopy = objc_alloc_init(MEMORY[0x277D6BA08]);
    [selfCopy setDataAccessAttributions:v2];
  }

  return selfCopy;
}

- (STDataAccessStatusDomainDataProvider)init
{
  v19.receiver = self;
  v19.super_class = STDataAccessStatusDomainDataProvider;
  v2 = [(STDataAccessStatusDomainDataProvider *)&v19 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = Serial;

    array = [MEMORY[0x277CBEA60] array];
    activeAttributions = v2->_activeAttributions;
    v2->_activeAttributions = array;

    array2 = [MEMORY[0x277CBEB18] array];
    attributionsWaitingForMinimumDisplayTime = v2->_attributionsWaitingForMinimumDisplayTime;
    v2->_attributionsWaitingForMinimumDisplayTime = array2;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeAttributionMinimumDisplayTimers = v2->_activeAttributionMinimumDisplayTimers;
    v2->_activeAttributionMinimumDisplayTimers = dictionary;

    array3 = [MEMORY[0x277CBEB18] array];
    recentAttributions = v2->_recentAttributions;
    v2->_recentAttributions = array3;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    recentAttributionExpirationTimers = v2->_recentAttributionExpirationTimers;
    v2->_recentAttributionExpirationTimers = dictionary2;

    v15 = v2->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__STDataAccessStatusDomainDataProvider_init__block_invoke;
    block[3] = &unk_279D35098;
    v18 = v2;
    dispatch_sync(v15, block);
  }

  return v2;
}

- (void)_internalQueue_handleLocationData:(void *)data mediaData:
{
  v111 = *MEMORY[0x277D85DE8];
  v76 = a2;
  dataCopy = data;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    if ((*(self + 24) & 1) == 0)
    {
      v5 = v76;
      v6 = dataCopy;
      dispatch_assert_queue_V2(*(self + 40));
      v75 = v6;
      if (!(v5 | v6))
      {
        objc_setProperty_nonatomic_copy(self, v7, 0, 56);
LABEL_54:

        [(STDataAccessStatusDomainDataProvider *)self _internalQueue_notifyForNewData:1 manualUpdate:?];
        goto LABEL_55;
      }

      v74 = v5;
      val = self;
      cameraAttributions = [v6 cameraAttributions];
      v73 = [(STDataAccessStatusDomainDataProvider *)self _dataAccessAttributionsForAttributions:cameraAttributions dataAccessType:1 dataAccessAttributionProvider:&__block_literal_global_16];

      microphoneAttributions = [v6 microphoneAttributions];
      v72 = [(STDataAccessStatusDomainDataProvider *)self _dataAccessAttributionsForAttributions:microphoneAttributions dataAccessType:0 dataAccessAttributionProvider:&__block_literal_global_4];

      mutedMicrophoneRecordingAttributions = [v6 mutedMicrophoneRecordingAttributions];
      v71 = [(STDataAccessStatusDomainDataProvider *)self _dataAccessAttributionsForAttributions:mutedMicrophoneRecordingAttributions dataAccessType:3 dataAccessAttributionProvider:&__block_literal_global_14];

      v11 = v74;
      activeDisplayModes = [v11 activeDisplayModes];
      attributions = [v11 attributions];

      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke;
      v108[3] = &__block_descriptor_40_e51_B16__0__STLocationStatusDomainLocationAttribution_8l;
      v108[4] = activeDisplayModes;
      v14 = [attributions bs_filter:v108];

      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke_2;
      v109[3] = &unk_279D35108;
      v110 = (activeDisplayModes & 2) != 0;
      v109[4] = val;
      v70 = [v14 bs_map:v109];

      v69 = [(STDataAccessStatusDomainDataProvider *)val _dataAccessAttributionsForAttributions:v70 dataAccessType:2 dataAccessAttributionProvider:&__block_literal_global_18];
      v15 = [v73 mutableCopy];
      [v15 addObjectsFromArray:v72];
      [v15 addObjectsFromArray:v71];
      [v15 addObjectsFromArray:v69];
      v16 = v15;
      dispatch_assert_queue_V2(*(val + 5));
      v17 = *(val + 8);
      objc_setProperty_nonatomic_copy(val, v18, v16, 64);
      v19 = [v16 mutableCopy];
      [v19 st_subtractArray:v17];
      v66 = v17;
      v67 = [v17 mutableCopy];
      v68 = v16;
      [v67 st_subtractArray:v16];
      v84 = *(val + 9);
      v85 = *(val + 10);
      v83 = *(val + 11);
      v20 = *(val + 12);
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      obj = v19;
      v80 = [obj countByEnumeratingWithState:&v98 objects:v109 count:16];
      if (v80)
      {
        v79 = *v99;
        do
        {
          v21 = 0;
          do
          {
            if (*v99 != v79)
            {
              v22 = v21;
              objc_enumerationMutation(obj);
              v21 = v22;
            }

            v81 = v21;
            v23 = *(*(&v98 + 1) + 8 * v21);
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            allKeys = [v85 allKeys];
            v25 = [allKeys countByEnumeratingWithState:&v94 objects:v108 count:16];
            if (v25)
            {
              v26 = *v95;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v95 != v26)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v28 = *(*(&v94 + 1) + 8 * i);
                  attributedEntity = [v28 attributedEntity];
                  attributedEntity2 = [v23 attributedEntity];
                  if ([attributedEntity isEqual:attributedEntity2])
                  {
                    dataAccessType = [v28 dataAccessType];
                    LODWORD(dataAccessType) = dataAccessType == [v23 dataAccessType];

                    if (dataAccessType)
                    {
                      v32 = [v85 objectForKey:v28];
                      [v32 invalidate];

                      [v85 removeObjectForKey:v28];
                      [v84 removeObject:v28];
                    }
                  }

                  else
                  {
                  }
                }

                v25 = [allKeys countByEnumeratingWithState:&v94 objects:v108 count:16];
              }

              while (v25);
            }

            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            allKeys2 = [v20 allKeys];
            v34 = [allKeys2 countByEnumeratingWithState:&v90 objects:v107 count:16];
            if (v34)
            {
              v35 = *v91;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v91 != v35)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v37 = *(*(&v90 + 1) + 8 * j);
                  attributedEntity3 = [v37 attributedEntity];
                  attributedEntity4 = [v23 attributedEntity];
                  if ([attributedEntity3 isEqual:attributedEntity4])
                  {
                    dataAccessType2 = [v37 dataAccessType];
                    LODWORD(dataAccessType2) = dataAccessType2 == [v23 dataAccessType];

                    if (dataAccessType2)
                    {
                      v41 = [v20 objectForKey:v37];
                      [v41 invalidate];

                      [v20 removeObjectForKey:v37];
                      [v83 removeObject:v37];
                    }
                  }

                  else
                  {
                  }
                }

                v34 = [allKeys2 countByEnumeratingWithState:&v90 objects:v107 count:16];
              }

              while (v34);
            }

            v21 = v81 + 1;
          }

          while (v81 + 1 != v80);
          v80 = [obj countByEnumeratingWithState:&v98 objects:v109 count:16];
        }

        while (v80);
      }

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v42 = v67;
      v43 = 0;
      v44 = [v42 countByEnumeratingWithState:&v86 objects:v106 count:16];
      if (!v44)
      {
LABEL_51:

        if (([obj count] != 0) | v43 & 1)
        {
          _internalQueue_generatedData = [(STDataAccessStatusDomainDataProvider *)val _internalQueue_generatedData];
          objc_setProperty_nonatomic_copy(val, v64, _internalQueue_generatedData, 56);
        }

        self = val;
        v5 = v74;
        goto LABEL_54;
      }

      v45 = *v87;
      v46 = *MEMORY[0x277D6BD30];
LABEL_36:
      v47 = 0;
      while (1)
      {
        if (*v87 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v48 = *(*(&v86 + 1) + 8 * v47);
        [v48 accessDuration];
        v50 = v49;
        dataAccessType3 = [v48 dataAccessType];
        if (dataAccessType3 == 3)
        {
          v56 = 0.0 - v50;
          if (!BSFloatGreaterThanFloat())
          {
            goto LABEL_48;
          }
        }

        else
        {
          v52 = v46;
          if (!dataAccessType3)
          {
            microphoneRecordingAttribution = [v48 microphoneRecordingAttribution];
            [microphoneRecordingAttribution maximumHistoryAccessed];
            v55 = v54;

            if (v46 >= v55)
            {
              v52 = v46;
            }

            else
            {
              v52 = v55;
            }
          }

          v56 = v52 - v50;
          if ((BSFloatGreaterThanFloat() & 1) == 0)
          {
            [(STDataAccessStatusDomainDataProvider *)val _internalQueue_makeAttributionRecent:v48];
LABEL_48:
            v43 = 1;
            goto LABEL_49;
          }
        }

        v57 = v48;
        objc_initWeak(&location, val);
        v58 = *(val + 9);
        [v58 addObject:v57];

        v59 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"STDataAccessStatusDomain-MinimumDisplayTime"];
        v60 = *(val + 10);
        [v60 setObject:v59 forKey:v57];

        v61 = *(val + 5);
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __104__STDataAccessStatusDomainDataProvider__internalQueue_beginWaitingForMinimumDisplayTime_forAttribution___block_invoke;
        v102[3] = &unk_279D35150;
        objc_copyWeak(&v104, &location);
        v62 = v57;
        v103 = v62;
        [v59 scheduleWithFireInterval:v61 leewayInterval:v102 queue:v56 handler:0.5];

        objc_destroyWeak(&v104);
        objc_destroyWeak(&location);

LABEL_49:
        if (v44 == ++v47)
        {
          v44 = [v42 countByEnumeratingWithState:&v86 objects:v106 count:16];
          if (!v44)
          {
            goto LABEL_51;
          }

          goto LABEL_36;
        }
      }
    }
  }

LABEL_55:

  v65 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = STDataAccessStatusDomainDataProvider;
  [(STDataAccessStatusDomainDataProvider *)&v2 dealloc];
}

- (STDataAccessStatusDomainData)dataAccessData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__STDataAccessStatusDomainDataProvider_dataAccessData__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__STDataAccessStatusDomainDataProvider_dataAccessData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (STLocationStatusDomainData)locationData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__STDataAccessStatusDomainDataProvider_locationData__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __52__STDataAccessStatusDomainDataProvider_locationData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (STMediaStatusDomainData)mediaData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__STDataAccessStatusDomainDataProvider_mediaData__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__STDataAccessStatusDomainDataProvider_mediaData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)setLocationData:(id)data mediaData:(id)mediaData
{
  dataCopy = data;
  mediaDataCopy = mediaData;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__STDataAccessStatusDomainDataProvider_setLocationData_mediaData___block_invoke;
  v13[3] = &unk_279D350C0;
  v14 = dataCopy;
  selfCopy = self;
  v16 = mediaDataCopy;
  v17 = &v18;
  v9 = mediaDataCopy;
  v10 = dataCopy;
  dispatch_sync(internalQueue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

uint64_t __66__STDataAccessStatusDomainDataProvider_setLocationData_mediaData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = BSEqualObjects();
  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) copy];
    v6 = *(a1 + 40);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;
  }

  v8 = *(a1 + 48);
  v9 = *(*(a1 + 40) + 16);
  if ((BSEqualObjects() & 1) == 0)
  {
    v10 = [*(a1 + 48) copy];
    v11 = *(a1 + 40);
    v12 = *(v11 + 16);
    *(v11 + 16) = v10;

    goto LABEL_7;
  }

  if ((v4 & 1) == 0)
  {
LABEL_7:
    [(STDataAccessStatusDomainDataProvider *)*(a1 + 40) _internalQueue_handleLocationData:*(*(a1 + 40) + 16) mediaData:?];
  }

  v13 = [*(*(a1 + 40) + 56) copy];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  return MEMORY[0x2821F96F8]();
}

- (void)invalidate
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__STDataAccessStatusDomainDataProvider_invalidate__block_invoke;
  block[3] = &unk_279D35098;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

uint64_t __50__STDataAccessStatusDomainDataProvider_invalidate__block_invoke(uint64_t result)
{
  v1 = result;
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(result + 32);
  if (v2)
  {
    if (*(v2 + 24))
    {
      goto LABEL_24;
    }

    *(v2 + 24) = 1;
    v3 = *(result + 32);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    if (v3)
    {
      v4 = *(v3 + 80);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
  }

  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v24 + 1) + 8 * i) invalidate];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = *(v1 + 32);
  if (v10)
  {
    v11 = *(v10 + 96);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 allValues];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * j) invalidate];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = *(v1 + 32);
  if (v17)
  {
    v18 = *(v17 + 48);
  }

  else
  {
    v18 = 0;
  }

  result = [v18 invalidate];
LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_internalQueue_notifyForNewData:(uint64_t)data manualUpdate:
{
  v7 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    dataChangedHandler = [(dispatch_queue_t *)self dataChangedHandler];
    v6 = dataChangedHandler;
    if (dataChangedHandler)
    {
      (*(dataChangedHandler + 16))(dataChangedHandler, v7, data);
    }
  }
}

BOOL __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 locationState] == 1)
  {
    v4 = *(a1 + 32);
    v5 = ([v3 eligibleDisplayModes] & v4) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 eligibleDisplayModes] & 1) != 0 || (*(a1 + 40) & 1) != 0 || (objc_msgSend(v3, "activityAttribution"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "attributedEntity"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isSystemService"), v5, v4, !v6))
  {
    v20 = v3;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = v3;
    v9 = v8;
    if (v7)
    {
      v10 = [v8 activityAttribution];
      v11 = [v10 attributedEntity];
      if ([v11 isSystemService])
      {
        v12 = objc_alloc(MEMORY[0x277D6B8F0]);
        v13 = [v11 executableIdentity];
        v14 = [v11 website];
        v15 = [v11 localizedExecutableDisplayName];
        v16 = [v11 localizedExecutableDisplayName];
        v17 = [v12 initWithExecutableIdentity:v13 website:v14 systemService:0 localizedDisplayName:v15 localizedExecutableDisplayName:v16];

        v18 = [v10 activeEntity];
        if ([v18 isEqual:v11])
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        v22 = [objc_alloc(MEMORY[0x277D6B8E8]) initWithAttributedEntity:v17 activeEntity:v19];
        v20 = [objc_alloc(MEMORY[0x277D6B9A8]) initWithLocationState:objc_msgSend(v9 activityAttribution:"locationState") eligibleDisplayModes:{v22, objc_msgSend(v9, "eligibleDisplayModes")}];
      }

      else
      {
        v20 = v9;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

id __98__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForMicrophoneRecordingAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithMicrophoneRecordingAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

- (id)_dataAccessAttributionsForAttributions:(uint64_t)attributions dataAccessType:(void *)type dataAccessAttributionProvider:
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  typeCopy = type;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = [*(self + 64) mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v31)
  {
    v29 = *v37;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v30;
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
LABEL_8:
          v14 = 0;
LABEL_9:
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * v14);
          if ([v15 dataAccessType] != attributions)
          {
            goto LABEL_23;
          }

          v16 = v15;
          dataAccessType = [v16 dataAccessType];
          if (dataAccessType > 1)
          {
            if (dataAccessType == 2)
            {
              locationAttribution = [v16 locationAttribution];
            }

            else
            {
              if (dataAccessType != 3)
              {
                goto LABEL_22;
              }

              locationAttribution = [v16 mutedMicrophoneRecordingActivityAttribution];
            }
          }

          else
          {
            if (dataAccessType)
            {
              if (dataAccessType == 1)
              {
                locationAttribution = [v16 cameraCaptureAttribution];
                goto LABEL_21;
              }

LABEL_22:

              v19 = [v15 isEqual:v9];
              if (v19)
              {
                v20 = v16;

                if (!v20)
                {
                  goto LABEL_28;
                }

                v21 = v20;
                [v10 st_removeFirstOccurrenceOfObject:v21];
                v22 = v21;
LABEL_30:
                [v28 addObject:v21];

                continue;
              }

LABEL_23:
              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
                if (v12)
                {
                  goto LABEL_8;
                }

                goto LABEL_25;
              }

              goto LABEL_9;
            }

            locationAttribution = [v16 microphoneRecordingAttribution];
          }

LABEL_21:
          v15 = locationAttribution;
          goto LABEL_22;
        }

LABEL_25:

LABEL_28:
        v23 = typeCopy[2](typeCopy, v9);
        if (v23)
        {
          v21 = v23;
          v22 = 0;
          goto LABEL_30;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v31);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v28;
}

id __111__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForMutedMicrophoneRecordingActivityAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithMutedMicrophoneRecordingActivityAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

id __92__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForCameraCaptureAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithCameraCaptureAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

id __87__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForLocationAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithLocationAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

- (void)_internalQueue_makeAttributionRecent:(id *)recent
{
  v3 = a2;
  if (recent)
  {
    objc_initWeak(&location, recent);
    v4 = v3;
    MEMORY[0x26D6A2820]();
    dataAccessType = [v4 dataAccessType];
    if (dataAccessType == 2)
    {
      v10 = objc_alloc(MEMORY[0x277D6B950]);
      locationAttribution = [v4 locationAttribution];
      [v4 accessStartTimestamp];
      v8 = [v10 initWithLocationAttribution:locationAttribution recent:1 startTimestamp:? endTimestamp:?];
    }

    else if (dataAccessType == 1)
    {
      v9 = objc_alloc(MEMORY[0x277D6B950]);
      locationAttribution = [v4 cameraCaptureAttribution];
      [v4 accessStartTimestamp];
      v8 = [v9 initWithCameraCaptureAttribution:locationAttribution recent:1 startTimestamp:? endTimestamp:?];
    }

    else
    {
      if (dataAccessType)
      {
        v11 = 0;
        goto LABEL_10;
      }

      v6 = objc_alloc(MEMORY[0x277D6B950]);
      locationAttribution = [v4 audioRecordingActivityAttribution];
      [v4 accessStartTimestamp];
      v8 = [v6 initWithAudioRecordingActivityAttribution:locationAttribution recent:1 startTimestamp:? endTimestamp:?];
    }

    v11 = v8;

LABEL_10:
    v12 = recent[11];
    [v12 addObject:v11];

    v13 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"STDataAccessStatusDomain-RecentAttributionExpiration"];
    v14 = recent[12];
    [v14 setObject:v13 forKey:v11];

    v15 = recent[5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__STDataAccessStatusDomainDataProvider__internalQueue_makeAttributionRecent___block_invoke;
    v17[3] = &unk_279D35150;
    objc_copyWeak(&v19, &location);
    v16 = v11;
    v18 = v16;
    [v13 scheduleWithFireInterval:v15 leewayInterval:v17 queue:15.0 handler:0.5];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __104__STDataAccessStatusDomainDataProvider__internalQueue_beginWaitingForMinimumDisplayTime_forAttribution___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  self = objc_loadWeakRetained((a1 + 40));
  [v3 invalidate];

  v4 = self;
  if (self)
  {
    v4 = *(self + 10);
  }

  [v4 removeObjectForKey:*(a1 + 32)];
  v5 = self;
  if (self)
  {
    v5 = *(self + 9);
  }

  [v5 removeObject:*(a1 + 32)];
  [(STDataAccessStatusDomainDataProvider *)self _internalQueue_makeAttributionRecent:?];
  v7 = [(STDataAccessStatusDomainDataProvider *)self _internalQueue_generatedData];
  v8 = self;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v6, v7, 56);
    v8 = self;
  }

  [(STDataAccessStatusDomainDataProvider *)v8 _internalQueue_notifyForNewData:v7 manualUpdate:0];
}

void __77__STDataAccessStatusDomainDataProvider__internalQueue_makeAttributionRecent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  self = objc_loadWeakRetained((a1 + 40));
  [v3 invalidate];

  v4 = self;
  if (self)
  {
    v4 = *(self + 12);
  }

  [v4 removeObjectForKey:*(a1 + 32)];
  v5 = self;
  if (self)
  {
    v5 = *(self + 11);
  }

  [v5 removeObject:*(a1 + 32)];
  v7 = [(STDataAccessStatusDomainDataProvider *)self _internalQueue_generatedData];
  v8 = self;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v6, v7, 56);
    v8 = self;
  }

  [(STDataAccessStatusDomainDataProvider *)v8 _internalQueue_notifyForNewData:v7 manualUpdate:0];
}

@end