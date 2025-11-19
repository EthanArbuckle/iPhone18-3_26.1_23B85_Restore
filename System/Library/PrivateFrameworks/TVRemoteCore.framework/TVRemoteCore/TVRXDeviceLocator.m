@interface TVRXDeviceLocator
- (TVRXDeviceLocator)init;
- (void)_timerExpired:(id)a3;
- (void)cancelSearchForDeviceWithIdentifier:(id)a3;
- (void)deviceQueryDidUpdateDevices:(id)a3;
- (void)findDeviceWithIdentifier:(id)a3 timeout:(double)a4 completion:(id)a5;
@end

@implementation TVRXDeviceLocator

- (TVRXDeviceLocator)init
{
  v8.receiver = self;
  v8.super_class = TVRXDeviceLocator;
  v2 = [(TVRXDeviceLocator *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TVRXDeviceQuery);
    query = v2->_query;
    v2->_query = v3;

    [(TVRXDeviceQuery *)v2->_query setDelegate:v2];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    searches = v2->_searches;
    v2->_searches = v5;
  }

  return v2;
}

- (void)findDeviceWithIdentifier:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v12 = objc_alloc_init(_TVRXSearchReference);
  [(_TVRXSearchReference *)v12 setIdentifier:v9];
  v10 = MEMORY[0x26D6B0B70](v8);

  [(_TVRXSearchReference *)v12 setCompletionBlock:v10];
  v11 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerExpired_ selector:v12 userInfo:0 repeats:a4];
  [(_TVRXSearchReference *)v12 setExpirationTimer:v11];
  [(NSMutableDictionary *)self->_searches setObject:v12 forKey:v9];

  [(TVRXDeviceQuery *)self->_query start];
}

- (void)cancelSearchForDeviceWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Device Locator: Cancelling search with identifier %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableDictionary *)self->_searches allValues];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v14 = v11;

          if (v14)
          {
            [(NSMutableDictionary *)self->_searches removeObjectForKey:v4];
            if (![(NSMutableDictionary *)self->_searches count])
            {
              [(TVRXDeviceQuery *)self->_query stop];
            }
          }

          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_timerExpired:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Device Locator: Timer expired while looking for search with identifier %@", &v12, 0xCu);
  }

  v7 = [v4 completionBlock];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  searches = self->_searches;
  v10 = [v4 identifier];
  [(NSMutableDictionary *)searches removeObjectForKey:v10];

  if (![(NSMutableDictionary *)self->_searches count])
  {
    [(TVRXDeviceQuery *)self->_query stop];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceQueryDidUpdateDevices:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [a3 devices];
  v26 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v26)
  {
    v5 = *v32;
    v24 = *v32;
    v25 = v4;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v7 alternateIdentifiers];
        v10 = [v9 allValues];

        v11 = [(NSMutableDictionary *)self->_searches objectForKey:v8];
        if (v11)
        {
LABEL_17:
          v18 = _TVRCGeneralLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v11 identifier];
            *buf = 138412290;
            v36 = v19;
            _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Device Locator: Found device in query with identifier %@", buf, 0xCu);
          }

          v20 = [v11 expirationTimer];
          [v20 invalidate];

          v21 = [v11 completionBlock];
          v22 = v21;
          if (v21)
          {
            (*(v21 + 16))(v21, v7);
          }

          [(NSMutableDictionary *)self->_searches removeObjectForKey:v8];
          if (![(NSMutableDictionary *)self->_searches count])
          {
            [(TVRXDeviceQuery *)self->_query stop];
          }
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v28;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [(NSMutableDictionary *)self->_searches objectForKey:*(*(&v27 + 1) + 8 * j)];
                if (v16)
                {
                  v17 = v16;

                  v11 = v17;
                  v5 = v24;
                  v4 = v25;
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

            v5 = v24;
            v4 = v25;
          }
        }
      }

      v26 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v26);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end