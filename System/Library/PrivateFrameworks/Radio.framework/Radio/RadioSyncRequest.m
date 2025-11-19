@interface RadioSyncRequest
- (RadioSyncRequest)init;
- (RadioSyncRequest)initWithGlobalVersion:(unint64_t)a3;
- (id)_sortedChangesByType:(id)a3;
- (id)_stationSortOrderForChanges:(id)a3;
- (id)_updateModel:(id)a3 withChangeDictionary:(id)a4 changeType:(int64_t *)a5 loadArtworkSynchronously:(BOOL)a6;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation RadioSyncRequest

- (id)_updateModel:(id)a3 withChangeDictionary:(id)a4 changeType:(int64_t *)a5 loadArtworkSynchronously:(BOOL)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 objectForKey:@"change-type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = 0;
    goto LABEL_30;
  }

  v11 = [v10 integerValue];
  v12 = v11;
  if (a5)
  {
    *a5 = v11;
  }

  if (v11 == 4)
  {
    v13 = [v9 objectForKey:@"sort-order"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = v13;
      v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v19 = v13;
              goto LABEL_27;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v19 = [v13 valueForKey:@"longLongValue", v29];
      [v8 setStationSortOrdering:v19];
LABEL_27:
    }

    goto LABEL_28;
  }

  v21 = v11 - 1;
  if ((v11 - 1) > 2)
  {
    v13 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v34 = v12;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Unknown change type (%ld): %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = [v9 objectForKey:@"station-dict"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v13 objectForKey:@"station-id"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v22 longLongValue];
        if (v21 > 1)
        {
          v27 = v23;
          v28 = _RadioLogCategoryRequests();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v34 = v27;
            _os_log_impl(&dword_261792000, v28, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Deleting station with id: %llu", buf, 0xCu);
          }

          [v8 deleteStationWithID:v27];
        }

        else
        {
          v20 = [v8 newStationWithDictionary:v13];
          if (v20)
          {
LABEL_37:

            goto LABEL_29;
          }

          v24 = _RadioLogCategoryRequests();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v13;
            _os_log_impl(&dword_261792000, v24, OS_LOG_TYPE_ERROR, "Error: Unable to create station with dictionary: %@", buf, 0xCu);
          }
        }
      }

      v20 = 0;
      goto LABEL_37;
    }
  }

LABEL_28:
  v20 = 0;
LABEL_29:

LABEL_30:
  v25 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_stationSortOrderForChanges:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"change-type", v13}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 integerValue] == 4)
        {
          v10 = [v8 objectForKey:@"sort-order"];

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_sortedChangesByType:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"change-type"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 integerValue] == 1)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v7);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * j);
        v18 = [v17 objectForKey:@"change-type"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 integerValue] == 2)
        {
          [v4 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v14);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v41;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * k);
        v25 = [v24 objectForKey:@"change-type"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 integerValue] == 3)
        {
          [v4 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v21);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = v19;
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v37;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v36 + 1) + 8 * m);
        v32 = [v31 objectForKey:{@"change-type", v36}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 integerValue] == 4)
        {
          [v4 addObject:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v28);
  }

  v33 = [v4 copy];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RadioRequest *)self requestContext];
  v6 = +[RadioModel sharedModel];
  v7 = [v6 databaseVersion];

  if (v7 != 3)
  {
    v8 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261792000, v8, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Doing a full sync for a database version update...", buf, 2u);
    }

    self->_globalVersion = 0;
    self->_isAutomaticUpdate = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke;
  v11[3] = &unk_279AEADC0;
  v12 = v5;
  v13 = v4;
  v11[4] = self;
  v14 = v7 != 3;
  v9 = v5;
  v10 = v4;
  [(RadioRequest *)self _loadRadioStoreBagWithCompletionHandler:v11];
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 baseURL];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"sync"];
    v7 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v6;
      _os_log_impl(&dword_261792000, v7, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Request URL: %@", buf, 0xCu);
    }

    v35 = v6;
    v8 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v6];
    [v8 setShouldProcessProtocol:0];
    v9 = MEMORY[0x277CBEB38];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 32) + 80)];
    v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"global-version", 0}];

    v12 = [*(a1 + 32) changeList];
    if ([v12 count])
    {
      [v11 setObject:v12 forKey:@"change-list"];
    }

    v34 = v12;
    v13 = [*(a1 + 32) matchDictionary];
    if (v13)
    {
      [v11 setObject:v13 forKey:@"match"];
    }

    v33 = v13;
    v14 = [v3 radioConfigurationDictionary];
    v15 = [v14 objectForKey:@"show-explicit-toggle"];

    if ((objc_opt_respondsToSelector() & 1) == 0 || [v15 BOOLValue])
    {
      v16 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 105)];
      [v11 setObject:v16 forKey:@"clean"];
    }

    v17 = +[RadioModel backgroundModel];
    v18 = [v17 globalHash];
    if ([v18 length])
    {
      [v11 setObject:v18 forKey:@"global-hash"];
    }

    v19 = *(a1 + 32);
    if (*(v19 + 106) == 1)
    {
      [v11 setObject:MEMORY[0x277CBEC38] forKey:@"auto-update"];
      v19 = *(a1 + 32);
    }

    if ([*(v19 + 112) length])
    {
      [v8 setValue:*(*(a1 + 32) + 112) forHTTPHeaderField:@"Referer"];
    }

    v20 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v11;
      _os_log_impl(&dword_261792000, v20, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Request parameters: %@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CBEA90] dataForRadioRequestParameters:v11 isAsynchronousBackgroundRequest:objc_msgSend(*(a1 + 32) error:{"isAsynchronousBackgroundRequest"), 0}];
    [v8 setHTTPBody:v21];
    v22 = +[RadioNetworkObserver sharedNetworkObserver];
    [v22 beginUsingNetwork];

    v23 = [MEMORY[0x277D69C98] newRadioRequestWithRequestContext:*(a1 + 40) requestProperties:v8 storeBag:v3];
    v24 = *(a1 + 32);
    v25 = *(v24 + 88);
    *(v24 + 88) = v23;

    v26 = *(a1 + 32);
    v27 = *(v26 + 88);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_39;
    v36[3] = &unk_279AEAD98;
    v36[4] = v26;
    v37 = v17;
    v40 = *(a1 + 56);
    v38 = *(a1 + 40);
    v39 = *(a1 + 48);
    v28 = v17;
    [v27 startWithConnectionResponseBlock:v36];

    v29 = v35;
  }

  else
  {
    [*(a1 + 32) setStatus:5];
    v30 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_2;
    block[3] = &unk_279AEACF0;
    v31 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v42 = v31;
    dispatch_async(v30, block);

    v29 = v42;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1 + 32) + 80), 0);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v80[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[RadioNetworkObserver sharedNetworkObserver];
  [v7 endUsingNetwork];

  v8 = v6;
  v9 = v8;
  if (v5)
  {
    v10 = [v5 statusCode];
  }

  else
  {
    v11 = [v8 userInfo];
    v12 = [v11 objectForKey:*MEMORY[0x277D6A118]];
    v10 = [v12 integerValue];
  }

  v13 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Status code: %lli", &buf, 0xCu);
  }

  if ((v10 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v14 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_261792000, v14, OS_LOG_TYPE_ERROR, "Error: Unable to read station listing (%@)", &buf, 0xCu);
    }

    v15 = v9;
    if (!v9)
    {
      v16 = MEMORY[0x277CCA9B8];
      v79 = *MEMORY[0x277D6A118];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      v80[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
      v15 = [v16 errorWithDomain:*MEMORY[0x277D6A110] code:109 userInfo:v18];
    }

    if (v10 <= 399)
    {
      v19 = 1;
      if (v10 == 200 || v10 == 204)
      {
        goto LABEL_30;
      }
    }

    else
    {
      switch(v10)
      {
        case 404:
          goto LABEL_15;
        case 401:
          v19 = 2;
          goto LABEL_30;
        case 400:
LABEL_15:
          v19 = 4;
LABEL_30:
          [*(a1 + 32) setStatus:v19];
          v26 = 0;
          goto LABEL_57;
      }
    }

    v19 = 3;
    goto LABEL_30;
  }

  v20 = [v5 radio_decompressedBodyData];
  if ([v20 length])
  {
    v72 = 0;
    v73 = v9;
    v53 = [v20 propertyListForRadioResponseReturningError:&v73 unparsedResponseDictionary:&v72];
    v15 = v73;

    v21 = v72;
    v22 = v72;
    if (v22)
    {
      objc_storeStrong((*(a1 + 32) + 96), v21);
      v52 = [v22 objectForKey:@"error"];
      if (v52)
      {
        [*(a1 + 32) setStatus:3];
        v23 = v52;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 objectForKey:@"error-value"];
          if (objc_opt_respondsToSelector())
          {
            v25 = [v24 intValue];
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }

        [*(a1 + 32) setErrorCode:v25];
        v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RadioRequestErrorDomain" code:v25 userInfo:0];

        v41 = os_log_create("com.apple.amp.radio", "Requests");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_261792000, v41, OS_LOG_TYPE_ERROR, "Error: Sync request failed (%@)", &buf, 0xCu);
        }

        v26 = 0;
        v15 = v42;
      }

      else
      {
        v51 = [v53 objectForKey:@"global-version"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v51 unsignedLongLongValue];
          [*(a1 + 40) setGlobalVersion:v26];
        }

        else
        {
          v26 = 0;
        }

        v50 = [v53 objectForKey:@"bag"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v50 copy];
          v29 = *(a1 + 32);
          v30 = *(v29 + 120);
          *(v29 + 120) = v28;
        }

        v49 = [v53 objectForKey:@"global-hash"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 40) setGlobalHash:v49];
        }

        v48 = [v53 objectForKey:@"type"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [v48 unsignedIntValue];
          v32 = os_log_create("com.apple.amp.radio", "Requests");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v31;
            _os_log_impl(&dword_261792000, v32, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Sync type: %lli", &buf, 0xCu);
          }
        }

        else
        {
          v31 = 1;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v75 = 0x3032000000;
        v76 = __Block_byref_object_copy__1054;
        v77 = __Block_byref_object_dispose__1055;
        v78 = [MEMORY[0x277CBEB58] set];
        v70[0] = 0;
        v70[1] = v70;
        v70[2] = 0x3032000000;
        v70[3] = __Block_byref_object_copy__1054;
        v70[4] = __Block_byref_object_dispose__1055;
        v71 = [MEMORY[0x277CBEB58] set];
        v33 = *(a1 + 40);
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_53;
        v62[3] = &unk_279AEAD18;
        v34 = v53;
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        v63 = v34;
        v64 = v35;
        v65 = v36;
        p_buf = &buf;
        v67 = v70;
        v68 = v31;
        v69 = *(a1 + 64);
        [v33 performWriteTransactionWithBlock:v62];
        if (v31 == 2)
        {
          v37 = os_log_create("com.apple.amp.radio", "Requests");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *v61 = 0;
            _os_log_impl(&dword_261792000, v37, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Synchronously fetching featured stations...", v61, 2u);
          }

          v38 = objc_alloc_init(RadioGetFeaturedStationsRequest);
          [(RadioRequest *)v38 setRequestContext:*(a1 + 48)];
          [(RadioGetFeaturedStationsRequest *)v38 setDisableArtworkLoading:*(*(a1 + 32) + 104)];
          v39 = dispatch_semaphore_create(0);
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_62;
          v59[3] = &unk_279AEAD40;
          v40 = v39;
          v60 = v40;
          [(RadioGetFeaturedStationsRequest *)v38 startWithCompletionHandler:v59];
          dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
        }

        [*(a1 + 32) setStatus:1];

        _Block_object_dispose(v70, 8);
        _Block_object_dispose(&buf, 8);

        v41 = v51;
      }
    }

    else
    {
      v27 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_261792000, v27, OS_LOG_TYPE_ERROR, "Error: Unable to deserialize station listing (%@)", &buf, 0xCu);
      }

      [*(a1 + 32) setStatus:3];
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    v15 = v9;
  }

LABEL_57:
  v43 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_261792000, v43, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Sync completed", &buf, 2u);
  }

  v44 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_64;
  block[3] = &unk_279AEAD70;
  v57 = *(a1 + 56);
  v58 = v26;
  v45 = *(a1 + 32);
  v55 = v15;
  v56 = v45;
  v46 = v15;
  dispatch_async(v44, block);

  v47 = *MEMORY[0x277D85DE8];
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_53(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"change-list"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_37;
  }

  v3 = [*(a1 + 40) _sortedChangesByType:v2];

  v26 = [*(a1 + 40) _stationSortOrderForChanges:v3];
  v4 = MEMORY[0x277CBEB58];
  v5 = [*(a1 + 48) userStations];
  v25 = [v4 setWithArray:v5];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = v3;
  v6 = [v2 countByEnumeratingWithState:&v31 objects:v37 count:16];
  v24 = v2;
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = *v32;
  v23 = a1 + 64;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v31 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v26)
        {
          v11 = [v10 objectForKey:@"station-dict"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 objectForKey:@"station-id"];
            if (v12)
            {
              v13 = [v26 indexOfObject:v12] < 2;
            }

            else
            {
              v13 = 0;
            }

            v2 = v24;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        *buf = 1;
        v14 = [*(a1 + 40) _updateModel:*(a1 + 48) withChangeDictionary:v10 changeType:buf loadArtworkSynchronously:{v13, v23}];
        if (v14)
        {
          [v25 removeObject:v14];
          v15 = a1 + 56;
          if (*buf == 1)
          {
            goto LABEL_21;
          }

          if (*buf == 2)
          {
            v15 = v23;
LABEL_21:
            [*(*(*v15 + 8) + 40) addObject:v14];
          }
        }

        continue;
      }
    }

    v7 = [v2 countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v7);
LABEL_25:

  if (*(a1 + 72) == 2)
  {
    v16 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v25;
      _os_log_impl(&dword_261792000, v16, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Removing stations after full sync: %@", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v25;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(a1 + 48) deleteStationWithID:{objc_msgSend(*(*(&v27 + 1) + 8 * j), "stationID", v23)}];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }

    v2 = v24;
  }

LABEL_37:
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 48) setDatabaseVersion:3];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_64(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[7], a1[4]);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:a1[5]];
}

- (RadioSyncRequest)initWithGlobalVersion:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = RadioSyncRequest;
  v4 = [(RadioRequest *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_globalVersion = a3;
    v6 = dispatch_queue_create("com.apple.Radio.RadioSyncRequest.artworkQueue", 0);
    artworkQueue = v5->_artworkQueue;
    v5->_artworkQueue = v6;
  }

  return v5;
}

- (RadioSyncRequest)init
{
  v3 = +[RadioModel sharedModel];
  v4 = -[RadioSyncRequest initWithGlobalVersion:](self, "initWithGlobalVersion:", [v3 globalVersion]);

  return v4;
}

@end