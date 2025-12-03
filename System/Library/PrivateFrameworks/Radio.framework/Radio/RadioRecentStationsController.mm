@interface RadioRecentStationsController
- (NSArray)stationGroups;
- (NSArray)stations;
- (RadioRecentStationsController)init;
- (id)_newRecentStationsRequest;
- (void)_createStationGroups;
- (void)_handleRecentStationsResponse:(id)response fromRequest:(id)request pendingRecentStations:(id)stations isInitialCacheLoad:(BOOL)load;
- (void)_insertPendingRecentStation:(id)station;
- (void)_postStationsDidChangeNotification;
- (void)insertPendingRecentStation:(id)station;
- (void)insertPendingRecentStationDictionary:(id)dictionary;
- (void)refreshWithCompletionHandler:(id)handler;
- (void)removePendingRecentStation:(id)station;
@end

@implementation RadioRecentStationsController

- (RadioRecentStationsController)init
{
  v11.receiver = self;
  v11.super_class = RadioRecentStationsController;
  v2 = [(RadioRecentStationsController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Radio.RadioRecentStationsController.accessQueue", MEMORY[0x277D85CD8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v2->_hasValidStationGroups = 1;
    _newRecentStationsRequest = [(RadioRecentStationsController *)v2 _newRecentStationsRequest];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__RadioRecentStationsController_init__block_invoke;
    v8[3] = &unk_279AEA978;
    v9 = v2;
    v10 = _newRecentStationsRequest;
    v6 = _newRecentStationsRequest;
    [v6 getCachedRecentStationsResponseWithCompletionHandler:v8];
  }

  return v2;
}

- (id)_newRecentStationsRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__212;
  v11 = __Block_byref_object_dispose__213;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__RadioRecentStationsController__newRecentStationsRequest__block_invoke;
  v6[3] = &unk_279AEAE88;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v3 = [RadioRecentStationsRequest alloc];
  v4 = [(RadioRecentStationsRequest *)v3 initWithCurrentStation:v8[5]];
  [(RadioRecentStationsRequest *)v4 setShouldGroupResponses:1];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __58__RadioRecentStationsController__newRecentStationsRequest__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_postStationsDidChangeNotification
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RadioRecentStationsController__postStationsDidChangeNotification__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_async(v3, block);
}

void __67__RadioRecentStationsController__postStationsDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"RadioRecentStationsControllerStationsDidChangeNotification" object:*(a1 + 32)];
}

- (void)_insertPendingRecentStation:(id)station
{
  stationCopy = station;
  v4 = [(NSMutableArray *)self->_pendingRecentStations containsObject:?];
  pendingRecentStations = self->_pendingRecentStations;
  if (!pendingRecentStations)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v7 = self->_pendingRecentStations;
    self->_pendingRecentStations = v6;

    pendingRecentStations = self->_pendingRecentStations;
  }

  [(NSMutableArray *)pendingRecentStations insertObject:stationCopy atIndex:0];
  if ((v4 & 1) == 0)
  {
    self->_hasValidStationGroups = 0;
    [(RadioRecentStationsController *)self _postStationsDidChangeNotification];
  }
}

- (void)_handleRecentStationsResponse:(id)response fromRequest:(id)request pendingRecentStations:(id)stations isInitialCacheLoad:(BOOL)load
{
  v52 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requestCopy = request;
  stationsCopy = stations;
  v13 = stationsCopy;
  if (responseCopy)
  {
    selfCopy = self;
    v31 = stationsCopy;
    [responseCopy stationGroups];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v34 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    v32 = requestCopy;
    v14 = 0;
    v15 = 0;
    if (v34)
    {
      v33 = *v47;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v46 + 1) + 8 * i);
          v37 = v14;
          stationDictionaries = [v36 stationDictionaries];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v18 = [stationDictionaries countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = 0;
            v21 = *v43;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v43 != v21)
                {
                  objc_enumerationMutation(stationDictionaries);
                }

                v23 = *(*(&v42 + 1) + 8 * j);
                if (!v15)
                {
                  v15 = +[RadioModel backgroundModel];
                }

                v24 = [v15 newStationWithDictionary:v23];
                if (v24)
                {
                  if (!v20)
                  {
                    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(stationDictionaries, "count")}];
                  }

                  [v20 addObject:v24];
                }
              }

              v19 = [stationDictionaries countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v19);
          }

          else
          {
            v20 = 0;
          }

          v14 = v37;
          if (!v37)
          {
            v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
          }

          v25 = objc_alloc_init(RadioMutableRecentStationsGroup);
          -[RadioMutableRecentStationsGroup setActive:](v25, "setActive:", [v36 isActive]);
          localizedTitle = [v36 localizedTitle];
          [(RadioMutableRecentStationsGroup *)v25 setLocalizedTitle:localizedTitle];

          [(RadioMutableRecentStationsGroup *)v25 setStations:v20];
          if (v25)
          {
            if (!v14)
            {
              v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
            }

            [v14 addObject:v25];
          }
        }

        v34 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v34);
    }

    accessQueue = selfCopy->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __116__RadioRecentStationsController__handleRecentStationsResponse_fromRequest_pendingRecentStations_isInitialCacheLoad___block_invoke;
    block[3] = &unk_279AEAA18;
    block[4] = selfCopy;
    loadCopy = load;
    v13 = v31;
    v39 = v31;
    v40 = v14;
    v28 = v14;
    dispatch_barrier_async(accessQueue, block);

    requestCopy = v32;
  }

  v29 = *MEMORY[0x277D85DE8];
}

id *__116__RadioRecentStationsController__handleRecentStationsResponse_fromRequest_pendingRecentStations_isInitialCacheLoad___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) == 0 && (*(a1 + 56) & 1) == 0)
  {
    *(v2 + 16) = 1;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 24))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(a1 + 32) + 24) indexOfObject:{*(*(&v15 + 1) + 8 * i), v15}];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [*(*(a1 + 32) + 24) removeObjectAtIndex:v9];
            v6 = 1;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);

      v10 = *(a1 + 32);
      result = (v10 + 32);
      v12 = *(a1 + 48);
      if (*(v10 + 32) == v12)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      objc_storeStrong(result, v12);
      v10 = *(a1 + 32);
LABEL_20:
      *(v10 + 17) = 0;
      result = [*(a1 + 32) _postStationsDidChangeNotification];
      goto LABEL_21;
    }

    v2 = *(a1 + 32);
  }

  v13 = *(v2 + 32);
  result = (v2 + 32);
  v12 = *(a1 + 48);
  if (v13 != v12)
  {
    goto LABEL_19;
  }

LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_createStationGroups
{
  if ([(NSMutableArray *)self->_pendingRecentStations count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:self->_pendingRecentStations];
  }

  else
  {
    v3 = 0;
  }

  array = [v3 array];
  v5 = [array mutableCopy];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__212;
  v30 = __Block_byref_object_dispose__213;
  v31 = 0;
  if (-[NSArray count](self->_serverRecentStationGroups, "count") || ![v3 count])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    serverRecentStationGroups = self->_serverRecentStationGroups;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__RadioRecentStationsController__createStationGroups__block_invoke;
    v17[3] = &unk_279AEA9F0;
    v20 = &v22;
    v7 = v5;
    v21 = &v26;
    v18 = v7;
    selfCopy = self;
    [(NSArray *)serverRecentStationGroups enumerateObjectsUsingBlock:v17];
    if (v23[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v27[5] count])
      {
        v23[3] = 0;
      }

      else if (v23[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_20:

        _Block_object_dispose(&v22, 8);
        goto LABEL_21;
      }
    }

    if ([v7 count])
    {
      v11 = [v27[5] objectAtIndex:v23[3]];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 mutableCopy];
        stations = [v13 stations];
        if ([stations count])
        {
          v15 = [v7 arrayByAddingObjectsFromArray:stations];
        }

        else
        {
          v15 = v7;
        }

        v16 = v15;
        [v13 setStations:v15];
        [v27[5] replaceObjectAtIndex:v23[3] withObject:v13];
      }
    }

    goto LABEL_20;
  }

  v8 = objc_alloc_init(RadioMutableRecentStationsGroup);
  [(RadioMutableRecentStationsGroup *)v8 setStations:v5];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v8, 0}];
    v10 = v27[5];
    v27[5] = v9;
  }

LABEL_21:
  objc_storeStrong(&self->_stationGroups, v27[5]);
  _Block_object_dispose(&v26, 8);
}

void __53__RadioRecentStationsController__createStationGroups__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v16 = v5;
  if (*(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 isActive];
    v6 = v16;
    if (v7)
    {
      *(*(a1[6] + 8) + 24) = a3;
    }
  }

  v8 = [v6 stations];
  if ([v8 count])
  {
    v9 = [v8 mutableCopy];
    [v9 removeObjectsInArray:a1[4]];
    if (v8 != v9 && ([v8 isEqualToArray:v9] & 1) == 0)
    {
      v10 = [v16 mutableCopy];
      [v10 setStations:v9];

      v16 = v10;
    }
  }

  v11 = *(*(a1[7] + 8) + 40);
  v12 = v16;
  if (!v11)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1[5] + 32), "count")}];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v12 = v16;
    v11 = *(*(a1[7] + 8) + 40);
  }

  v17 = v12;
  [v11 addObject:v12];
}

- (void)removePendingRecentStation:(id)station
{
  stationCopy = station;
  v5 = stationCopy;
  if (stationCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__RadioRecentStationsController_removePendingRecentStation___block_invoke;
    v7[3] = &unk_279AEACA0;
    v7[4] = self;
    v8 = stationCopy;
    dispatch_barrier_async(accessQueue, v7);
  }
}

void __60__RadioRecentStationsController_removePendingRecentStation___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__RadioRecentStationsController_removePendingRecentStation___block_invoke_2;
    v6[3] = &unk_279AEA9C8;
    v7 = *(a1 + 40);
    v3 = [v1 indexOfObjectWithOptions:2 passingTest:v6];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(*(a1 + 32) + 24) removeObjectAtIndex:v3];
      if (![*(*(a1 + 32) + 24) count])
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 24);
        *(v4 + 24) = 0;
      }

      *(*(a1 + 32) + 17) = 0;
    }
  }
}

- (void)refreshWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(NSMutableArray *)self->_pendingRecentStations copy];
  _newRecentStationsRequest = [(RadioRecentStationsController *)self _newRecentStationsRequest];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__RadioRecentStationsController_refreshWithCompletionHandler___block_invoke;
  v10[3] = &unk_279AEA9A0;
  v10[4] = self;
  v11 = _newRecentStationsRequest;
  v12 = v5;
  v13 = handlerCopy;
  v7 = handlerCopy;
  v8 = v5;
  v9 = _newRecentStationsRequest;
  [v9 startWithCompletionHandler:v10];
}

void __62__RadioRecentStationsController_refreshWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) _handleRecentStationsResponse:v7 fromRequest:*(a1 + 40) pendingRecentStations:*(a1 + 48) isInitialCacheLoad:0];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

- (void)insertPendingRecentStationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__RadioRecentStationsController_insertPendingRecentStationDictionary___block_invoke;
    v7[3] = &unk_279AEACA0;
    v8 = dictionaryCopy;
    selfCopy = self;
    dispatch_barrier_async(accessQueue, v7);
  }
}

void __70__RadioRecentStationsController_insertPendingRecentStationDictionary___block_invoke(uint64_t a1)
{
  v2 = +[RadioModel backgroundModel];
  v4 = [v2 newStationWithDictionary:*(a1 + 32)];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 40) _insertPendingRecentStation:v4];
    v3 = v4;
  }
}

- (void)insertPendingRecentStation:(id)station
{
  stationCopy = station;
  v5 = stationCopy;
  if (stationCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__RadioRecentStationsController_insertPendingRecentStation___block_invoke;
    v7[3] = &unk_279AEACA0;
    v7[4] = self;
    v8 = stationCopy;
    dispatch_barrier_async(accessQueue, v7);
  }
}

- (NSArray)stations
{
  v16 = *MEMORY[0x277D85DE8];
  stationGroups = [(RadioRecentStationsController *)self stationGroups];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [stationGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(stationGroups);
        }

        stations = [*(*(&v11 + 1) + 8 * i) stations];
        if ([stations count])
        {
          if (!v5)
          {
            v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(stations, "count")}];
          }

          [v5 addObjectsFromArray:stations];
        }
      }

      v4 = [stationGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)stationGroups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__212;
  v10 = __Block_byref_object_dispose__213;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__RadioRecentStationsController_stationGroups__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__RadioRecentStationsController_stationGroups__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 17) & 1) == 0)
  {
    *(v2 + 17) = 1;
    [*(a1 + 32) _createStationGroups];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 40);
  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

@end