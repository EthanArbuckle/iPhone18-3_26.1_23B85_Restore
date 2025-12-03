@interface RadioGetFeaturedStationsRequest
- (RadioGetFeaturedStationsRequest)initWithStationCount:(unsigned int)count;
- (id)_importFeaturedStationWithDictionary:(id)dictionary inModel:(id)model loadArtworkSynchronously:(BOOL)synchronously;
- (id)_stationDictionariesByApplyingResponse:(id)response error:(id *)error;
- (void)startWithCompletionHandler:(id)handler;
- (void)startWithFeaturedStationsCompletionHandler:(id)handler;
@end

@implementation RadioGetFeaturedStationsRequest

- (id)_stationDictionariesByApplyingResponse:(id)response error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  radio_decompressedBodyData = [response radio_decompressedBodyData];
  if ([radio_decompressedBodyData length])
  {
    v17 = 0;
    v7 = [radio_decompressedBodyData propertyListForRadioResponseReturningError:&v17];
    v8 = v17;
    v9 = v8;
    if (v7)
    {
      v10 = [v7 objectForKey:@"stations"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!self->_stationCount || [v10 count]<= self->_stationCount)
        {
          v12 = 0;
          v13 = 1;
LABEL_16:
          [(RadioRequest *)self setStatus:v13];

          if (!error)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v11 = [v10 subarrayWithRange:0];
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      v13 = 1;
    }

    else
    {
      v12 = v8;
      v10 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = radio_decompressedBodyData;
        _os_log_impl(&dword_261792000, v10, OS_LOG_TYPE_ERROR, "Error: Unable to deserialize featured stations response (%@), data: %@", buf, 0x16u);
      }

      v11 = 0;
      v13 = 3;
    }

    v10 = v11;
    goto LABEL_16;
  }

  v10 = 0;
  v12 = 0;
  if (error)
  {
LABEL_17:
    v14 = v12;
    *error = v12;
  }

LABEL_18:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_importFeaturedStationWithDictionary:(id)dictionary inModel:(id)model loadArtworkSynchronously:(BOOL)synchronously
{
  v16 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  modelCopy = model;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v8 = [dictionaryCopy objectForKey:@"station-hash"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [modelCopy stationWithHash:v8];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  if (![v8 length])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v9 = [modelCopy newFeaturedStationWithDictionary:dictionaryCopy];
  if (!v9)
  {
    v11 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = dictionaryCopy;
      _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_ERROR, "Error: Unable to create featured station with dictionary: %@", &v14, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_6:
  v10 = v9;
LABEL_12:

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)startWithFeaturedStationsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke;
  v7[3] = &unk_279AEACF0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestContext];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_2;
  v6[3] = &unk_279AEABD8;
  v6[4] = v3;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 _loadRadioStoreBagWithCompletionHandler:v6];
}

void __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 baseURL];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"getFeaturedStations"];
    v7 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 absoluteString];
      *buf = 138412290;
      v39 = v8;
      _os_log_impl(&dword_261792000, v7, OS_LOG_TYPE_INFO, "[RadioGetFeaturedStationsRequest] Request URL: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v6];
    v10 = *(a1 + 32);
    v11 = [objc_opt_class() defaultURLCache];
    v12 = [v11 cachedConnectionResponseForRequestProperties:v9];

    if (v12 && ([v12 ssv_isExpiredResponse] & 1) == 0)
    {
      v13 = *(a1 + 32);
      v33 = 0;
      v14 = [v13 _stationDictionariesByApplyingResponse:v12 error:&v33];
      v15 = v33;
      v16 = v15;
      if (v14)
      {
        [*(a1 + 32) setCachedResponse:1];
        v17 = *(a1 + 48);
        if (v17)
        {
          (*(v17 + 16))(v17, v14, v16);
        }

        v18 = [MEMORY[0x277CCAB98] defaultCenter];
        [v18 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];

        goto LABEL_16;
      }
    }

    v21 = *(a1 + 32);
    if (v21[22])
    {
      v36 = @"count";
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      v37 = v22;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

      v21 = *(a1 + 32);
    }

    else
    {
      v16 = MEMORY[0x277CBEC10];
    }

    v14 = [MEMORY[0x277CBEA90] dataForRadioRequestParameters:v16 isAsynchronousBackgroundRequest:objc_msgSend(v21 error:{"isAsynchronousBackgroundRequest"), 0}];
    [v9 setHTTPBody:v14];
    v23 = +[RadioNetworkObserver sharedNetworkObserver];
    [v23 beginUsingNetwork];

    v24 = [MEMORY[0x277D69C98] newRadioRequestWithRequestContext:*(a1 + 40) requestProperties:v9 storeBag:v3];
    v25 = *(a1 + 32);
    v26 = *(v25 + 80);
    *(v25 + 80) = v24;

    v27 = *(a1 + 32);
    v28 = *(v27 + 80);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_28;
    v30[3] = &unk_279AEAAE8;
    v30[4] = v27;
    v31 = v9;
    v32 = *(a1 + 48);
    [v28 startWithConnectionResponseBlock:v30];

LABEL_16:
    goto LABEL_17;
  }

  [*(a1 + 32) setStatus:5];
  v19 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_3;
  block[3] = &unk_279AEACF0;
  v20 = *(a1 + 48);
  block[4] = *(a1 + 32);
  v35 = v20;
  dispatch_async(v19, block);

  v6 = v35;
LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
}

void __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
}

void __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[RadioNetworkObserver sharedNetworkObserver];
  [v7 endUsingNetwork];

  if (v5)
  {
    v8 = [v5 statusCode];
  }

  else
  {
    v9 = [v6 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x277D6A118]];
    v8 = [v10 integerValue];
  }

  v11 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v36 = v8;
    _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioGetFeaturedStationsRequest] Status code: %lli", buf, 0xCu);
  }

  if ((v8 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v12 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&dword_261792000, v12, OS_LOG_TYPE_ERROR, "Error: Unable to get featured stations (%@)", buf, 0xCu);
    }

    v13 = v6;
    if (!v6)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D6A110];
      v33 = *MEMORY[0x277D6A118];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      v34 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v13 = [v14 errorWithDomain:v15 code:109 userInfo:v17];
    }

    if (v8 <= 399)
    {
      v18 = 1;
      if (v8 == 200 || v8 == 204)
      {
        goto LABEL_23;
      }
    }

    else
    {
      switch(v8)
      {
        case 404:
          goto LABEL_15;
        case 401:
          v18 = 2;
          goto LABEL_23;
        case 400:
LABEL_15:
          v18 = 4;
LABEL_23:
          [*(a1 + 32) setStatus:v18];
          v20 = 0;
          goto LABEL_24;
      }
    }

    v18 = 3;
    goto LABEL_23;
  }

  v19 = *(a1 + 32);
  if (v6)
  {
    v32 = v6;
    v20 = [v19 _stationDictionariesByApplyingResponse:v5 error:&v32];
    v13 = v32;
  }

  else
  {
    v20 = [v19 _stationDictionariesByApplyingResponse:v5 error:0];
    v13 = 0;
  }

LABEL_24:
  if ([v20 count] && (*(*(a1 + 32) + 93) & 1) == 0)
  {
    v21 = [objc_opt_class() defaultURLCache];
    [v21 storeConnectionResponse:v5 forRequestProperties:*(a1 + 40)];
  }

  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_30;
  block[3] = &unk_279AEAB88;
  v23 = *(a1 + 48);
  v28 = v20;
  v29 = v13;
  v30 = *(a1 + 32);
  v31 = v23;
  v24 = v13;
  v25 = v20;
  dispatch_async(v22, block);

  v26 = *MEMORY[0x277D85DE8];
}

void __78__RadioGetFeaturedStationsRequest_startWithFeaturedStationsCompletionHandler___block_invoke_30(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:a1[6]];
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__RadioGetFeaturedStationsRequest_startWithCompletionHandler___block_invoke;
  v6[3] = &unk_279AEAA98;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(RadioGetFeaturedStationsRequest *)self startWithFeaturedStationsCompletionHandler:v6];
}

void __62__RadioGetFeaturedStationsRequest_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v20 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__604;
  v36 = __Block_byref_object_dispose__605;
  v37 = 0;
  if ([*(a1 + 32) status] == 1)
  {
    if ([*(a1 + 32) isCachedResponse] && objc_msgSend(v21, "count"))
    {
      v22 = +[RadioModel sharedModel];
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v21, "count")}];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = v21;
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v7)
      {
        v8 = *v29;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v10 objectForKey:@"station-hash"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v12 = [v22 stationWithHash:v11];
                if (!v12)
                {

                  goto LABEL_20;
                }

                [v5 addObject:v12];
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      if ([v5 count])
      {
        v5 = v5;
        v13 = v5;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
LABEL_20:
      v14 = +[RadioModel backgroundModel];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__RadioGetFeaturedStationsRequest_startWithCompletionHandler___block_invoke_5;
      v23[3] = &unk_279AEAA70;
      v27 = &v32;
      v24 = v14;
      v15 = v21;
      v16 = *(a1 + 32);
      v25 = v15;
      v26 = v16;
      v22 = v24;
      [v24 performWriteTransactionWithBlock:v23];
      v17 = +[RadioModel sharedModel];
      v13 = [v17 convertObjects:v33[5]];

      v5 = v24;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v13, v20);
  }

  _Block_object_dispose(&v32, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __62__RadioGetFeaturedStationsRequest_startWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = MEMORY[0x277CBEB98];
  v6 = [*(a1 + 32) userStations];
  v7 = [v6 valueForKey:@"stationHash"];
  v28 = [v5 setWithArray:v7];

  v8 = MEMORY[0x277CBEB58];
  v9 = [*(a1 + 32) featuredStations];
  v27 = [v8 setWithArray:v9];

  v10 = [*(a1 + 40) count];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 40);
  v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v30 = ~v10;
    v14 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = [v16 objectForKey:{@"station-hash", v27}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v28 containsObject:v17] & 1) == 0)
        {
          v18 = [*(a1 + 48) _importFeaturedStationWithDictionary:v16 inModel:*(a1 + 32) loadArtworkSynchronously:v13 < 3];
          v19 = v18;
          if (v18)
          {
            [v18 setSortOrder:?];
            [*(*(*(a1 + 56) + 8) + 40) addObject:v19];
            ++v13;
            ++v30;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v20 = [MEMORY[0x277CBEB98] setWithArray:*(*(*(a1 + 56) + 8) + 40)];
  [v27 minusSet:v20];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v27;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(a1 + 32) deleteStation:{*(*(&v31 + 1) + 8 * j), v27}];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (RadioGetFeaturedStationsRequest)initWithStationCount:(unsigned int)count
{
  v9.receiver = self;
  v9.super_class = RadioGetFeaturedStationsRequest;
  v4 = [(RadioRequest *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_stationCount = count;
    v6 = dispatch_queue_create("com.apple.Radio.RadioSyncRequest.artworkQueue", 0);
    artworkQueue = v5->_artworkQueue;
    v5->_artworkQueue = v6;
  }

  return v5;
}

@end