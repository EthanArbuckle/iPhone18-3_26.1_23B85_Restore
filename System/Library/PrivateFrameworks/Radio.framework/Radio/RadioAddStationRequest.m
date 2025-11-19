@interface RadioAddStationRequest
- (RadioAddStationRequest)init;
- (RadioAddStationRequest)initWithQueryTerm:(id)a3 queryID:(int64_t)a4;
- (RadioAddStationRequest)initWithStation:(id)a3;
- (RadioAddStationRequest)initWithStationDictionary:(id)a3;
- (id)changeList;
- (void)startWithAddStationCompletionHandler:(id)a3;
@end

@implementation RadioAddStationRequest

- (void)startWithAddStationCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[RadioModel sharedModel];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__RadioAddStationRequest_startWithAddStationCompletionHandler___block_invoke;
  v13[3] = &unk_279AEAE60;
  v6 = v5;
  v14 = v6;
  [v6 performWriteTransactionWithBlock:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__RadioAddStationRequest_startWithAddStationCompletionHandler___block_invoke_2;
  v10[3] = &unk_279AEAA48;
  v10[4] = self;
  v11 = v6;
  v12 = v4;
  v9.receiver = self;
  v9.super_class = RadioAddStationRequest;
  v7 = v4;
  v8 = v6;
  [(RadioSyncRequest *)&v9 startWithCompletionHandler:v10];
}

uint64_t __63__RadioAddStationRequest_startWithAddStationCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 globalVersion] + 1;

  return [v1 setGlobalVersion:v2];
}

void __63__RadioAddStationRequest_startWithAddStationCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) responseDictionary];
    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_INFO, "[RadioAddStationRequest] Add station response: %@", buf, 0xCu);
  }

  if ([*(a1 + 32) status] != 1)
  {
    v17 = *(a1 + 40);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__RadioAddStationRequest_startWithAddStationCompletionHandler___block_invoke_63;
    v24[3] = &unk_279AEAC78;
    v25 = v17;
    v26 = a2;
    [v25 performWriteTransactionWithBlock:v24];
    v9 = 0;
    v18 = v25;
LABEL_25:

    goto LABEL_26;
  }

  v8 = +[RadioModel sharedModel];
  v9 = [v8 stationWithPersistentID:*(*(a1 + 32) + 136)];

  if (*(*(a1 + 32) + 128) && (!v9 || ([v9 isFeatured] & 1) != 0 || objc_msgSend(v9, "isSponsored")))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = +[RadioModel sharedModel];
    v11 = [v10 userStations];

    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          if (![v16 persistentID] && (objc_msgSend(v16, "isFeatured") & 1) == 0 && (objc_msgSend(v16, "isSponsored") & 1) == 0)
          {
            v19 = v16;

            v9 = v19;
            goto LABEL_21;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  if (*(*(a1 + 32) + 152))
  {
    v20 = [v9 stationID];
    if (v20)
    {
      v21 = v20;
      v18 = +[RadioModel sharedModel];
      [v18 copySkipHistoryFromStationHash:*(*(a1 + 32) + 152) toStationID:v21];
      goto LABEL_25;
    }
  }

LABEL_26:
  v22 = *(a1 + 48);
  if (v22)
  {
    (*(v22 + 16))(v22, v9, a2, v5);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __63__RadioAddStationRequest_startWithAddStationCompletionHandler___block_invoke_63(uint64_t a1)
{
  result = [*(a1 + 32) globalVersion];
  if (result == *(a1 + 40))
  {
    v3 = result - 1;
    v4 = *(a1 + 32);

    return [v4 setGlobalVersion:v3];
  }

  return result;
}

- (id)changeList
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_matchDictionary)
  {
    v2 = 0;
  }

  else
  {
    v3 = MEMORY[0x277CBEAC0];
    stationDictionary = self->_stationDictionary;
    v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v6 = [v3 dictionaryWithObjectsAndKeys:{stationDictionary, @"station-dict", v5, @"change-type", 0}];
    v9[0] = v6;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

- (RadioAddStationRequest)initWithQueryTerm:(id)a3 queryID:(int64_t)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"RadioAddStationRequest.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"queryTerm"}];
  }

  v16.receiver = self;
  v16.super_class = RadioAddStationRequest;
  v8 = [(RadioSyncRequest *)&v16 init];
  if (v8)
  {
    v8->_persistentID = arc4random();
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    if (a4)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
      [v9 setObject:v10 forKey:@"id"];
    }

    if (v7)
    {
      [v9 setObject:v7 forKey:@"term"];
    }

    v17 = @"query";
    v18[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    matchDictionary = v8->_matchDictionary;
    v8->_matchDictionary = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (RadioAddStationRequest)initWithStationDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = RadioAddStationRequest;
    v5 = [(RadioSyncRequest *)&v12 init];
    if (v5)
    {
      v5->_persistentID = arc4random();
      v6 = [v4 mutableCopy];
      stationDictionary = v5->_stationDictionary;
      v5->_stationDictionary = v6;

      v8 = v5->_stationDictionary;
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llx", v5->_persistentID];
      [(NSMutableDictionary *)v8 setObject:v9 forKey:@"persistent-id"];
    }

    self = v5;
    v10 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"stationDictionary must be non-nil"];
    v10 = 0;
  }

  return v10;
}

- (RadioAddStationRequest)initWithStation:(id)a3
{
  v4 = a3;
  v5 = [v4 dictionaryRepresentation];
  v6 = [(RadioAddStationRequest *)self initWithStationDictionary:v5];

  if (v6)
  {
    v7 = [v4 stationHash];
    stationHashForSkipHistoryCopying = v6->_stationHashForSkipHistoryCopying;
    v6->_stationHashForSkipHistoryCopying = v7;

    v9 = +[RadioModel sharedModel];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__RadioAddStationRequest_initWithStation___block_invoke;
    v11[3] = &unk_279AEACA0;
    v12 = v4;
    v13 = v6;
    [v9 performWriteTransactionWithBlock:v11];
  }

  return v6;
}

- (RadioAddStationRequest)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"-init is not supported, use -initWithStationDictionary:"}];

  return 0;
}

@end