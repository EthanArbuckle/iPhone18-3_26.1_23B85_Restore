@interface TCSIDSIDStatusController
+ (id)stringForDestinationToStatus:(id)a3;
- (NSNumber)status;
- (NSString)tinCanHandle;
- (TCSIDSIDStatusController)initWithItem:(id)a3 delegate:(id)a4 timeout:(double)a5;
- (TCSIDSIDStatusControllerDelegate)delegate;
- (void)_statusQueryTimedOut;
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
- (void)dealloc;
- (void)execute;
@end

@implementation TCSIDSIDStatusController

- (TCSIDSIDStatusController)initWithItem:(id)a3 delegate:(id)a4 timeout:(double)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = TCSIDSIDStatusController;
  v11 = [(TCSIDSIDStatusController *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_item, a3);
    objc_storeWeak(&v12->_delegate, v10);
    v13 = [MEMORY[0x277CBEB38] dictionary];
    destinationToStatus = v12->_destinationToStatus;
    v12->_destinationToStatus = v13;

    v15 = [v9 idsCanonicalDestinations];
    destinations = v12->_destinations;
    v12->_destinations = v15;

    v12->_timeout = a5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v12->_destinations;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(NSMutableDictionary *)v12->_destinationToStatus setObject:&unk_287F26668 forKeyedSubscript:*(*(&v24 + 1) + 8 * v21++), v24];
        }

        while (v19 != v21);
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)execute
{
  v21 = *MEMORY[0x277D85DE8];
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    destinations = self->_destinations;
    v5 = v3;
    v6 = [(NSArray *)destinations componentsJoinedByString:@", "];
    v7 = TCSLogSafeDescription(v6);
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "IDS status query initiated for destinations: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  timer = self->_timer;
  self->_timer = v8;

  v10 = self->_timer;
  v11 = dispatch_time(0, (self->_timeout * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v12 = self->_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __35__TCSIDSIDStatusController_execute__block_invoke;
  handler[3] = &unk_279DC1990;
  objc_copyWeak(&v18, buf);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->_timer);
  v13 = objc_alloc(MEMORY[0x277D186D8]);
  v14 = [v13 initWithService:@"com.apple.private.alloy.tincan.audio" delegate:self queue:MEMORY[0x277D85CD0]];
  queryController = self->_queryController;
  self->_queryController = v14;

  [(IDSBatchIDQueryController *)self->_queryController setDestinations:self->_destinations];
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __35__TCSIDSIDStatusController_execute__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _statusQueryTimedOut];
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  v4.receiver = self;
  v4.super_class = TCSIDSIDStatusController;
  [(TCSIDSIDStatusController *)&v4 dealloc];
}

- (void)_statusQueryTimedOut
{
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  v5 = [(TCSIDSIDStatusController *)self delegate];
  [v5 tinCanIDSIDSStatusControllerTimedOut:self];

  _TCSInitializeLogging();
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
  {
    [TCSIDSIDStatusController _statusQueryTimedOut];
  }
}

- (NSNumber)status
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(TCSIDSIDStatusController *)self destinationToStatus];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {

LABEL_17:
    result = &unk_287F266B0;
    goto LABEL_22;
  }

  v5 = v4;
  v6 = 0;
  v15 = 0;
  v16 = 0;
  v7 = *v18;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      v10 = [(TCSIDSIDStatusController *)self destinationToStatus];
      v11 = [v10 objectForKeyedSubscript:v9];
      v12 = [v11 integerValue];

      switch(v12)
      {
        case 17486201:
          ++v16;
          break;
        case 1:
          ++v6;
          break;
        case 0:
          ++v15;
          break;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);

  if (!v6)
  {
    if (v16)
    {
      result = &unk_287F26668;
      goto LABEL_22;
    }

    if (v15)
    {
      result = &unk_287F26698;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  result = &unk_287F26680;
LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)tinCanHandle
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v3 = [(TCSIDSIDStatusController *)self status];
  v4 = [v3 integerValue];

  if (v4 == 1)
  {
    v5 = [(TCSIDSIDStatusController *)self destinationToStatus];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__TCSIDSIDStatusController_tinCanHandle__block_invoke;
    v8[3] = &unk_279DC1FA0;
    v8[4] = &v9;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __40__TCSIDSIDStatusController_tinCanHandle__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 integerValue] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v9 count])
  {
    if ([@"com.apple.private.alloy.tincan.audio" isEqualToString:v10])
    {
      _TCSInitializeLogging();
      v12 = TCSLogDefault;
      if (v11)
      {
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSIDSIDStatusController batchQueryController:updatedDestinationsStatus:onService:error:];
        }
      }

      else
      {
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [objc_opt_class() stringForDestinationToStatus:v9];
          v15 = TCSLogSafeDescription(v14);
          *buf = 138412290;
          v38 = v15;
          _os_log_impl(&dword_26F110000, v13, OS_LOG_TYPE_DEFAULT, "IDS status query returned status update: %@", buf, 0xCu);
        }

        v31 = [(TCSIDSIDStatusController *)self status];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v16 = v9;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v32 + 1) + 8 * i);
              v22 = [(TCSIDSIDStatusController *)self destinationToStatus];
              v23 = [v22 objectForKeyedSubscript:v21];

              if (v23)
              {
                v24 = [v16 objectForKeyedSubscript:v21];
                v25 = [(TCSIDSIDStatusController *)self destinationToStatus];
                [v25 setObject:v24 forKeyedSubscript:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v18);
        }

        v26 = [(TCSIDSIDStatusController *)self status];
        if (v31 != v26 && ([v31 isEqualToNumber:v26] & 1) == 0)
        {
          v27 = [(TCSIDSIDStatusController *)self delegate];
          [v27 tinCanIDSIDStatusControllerStatusDidChange:self];
        }

        timer = self->_timer;
        v11 = 0;
        if (timer)
        {
          dispatch_source_cancel(timer);
          v29 = self->_timer;
          self->_timer = 0;
        }
      }
    }

    else
    {
      _TCSInitializeLogging();
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSIDSIDStatusController batchQueryController:updatedDestinationsStatus:onService:error:];
      }
    }
  }

  else
  {
    _TCSInitializeLogging();
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSIDSIDStatusController batchQueryController:updatedDestinationsStatus:onService:error:];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

+ (id)stringForDestinationToStatus:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__TCSIDSIDStatusController_stringForDestinationToStatus___block_invoke;
  v9[3] = &unk_279DC1FC8;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 componentsJoinedByString:{@", "}];

  return v7;
}

void __57__TCSIDSIDStatusController_stringForDestinationToStatus___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = IDSCopyRawAddressForDestination();
  v5 = [v4 integerValue];

  v6 = @"valid";
  v7 = @"unknown";
  if (v5 == 2)
  {
    v7 = @"invalid";
  }

  if (v5 == 17486201)
  {
    v8 = @"loading";
  }

  else
  {
    v8 = v7;
  }

  if (v5 != 1)
  {
    v6 = v8;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %@", v10, v6];
  [*(a1 + 32) addObject:v9];
}

- (TCSIDSIDStatusControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)batchQueryController:updatedDestinationsStatus:onService:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batchQueryController:updatedDestinationsStatus:onService:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end