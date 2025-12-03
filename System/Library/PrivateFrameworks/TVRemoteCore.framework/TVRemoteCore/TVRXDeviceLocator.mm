@interface TVRXDeviceLocator
- (TVRXDeviceLocator)init;
- (void)_timerExpired:(id)expired;
- (void)cancelSearchForDeviceWithIdentifier:(id)identifier;
- (void)deviceQueryDidUpdateDevices:(id)devices;
- (void)findDeviceWithIdentifier:(id)identifier timeout:(double)timeout completion:(id)completion;
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

- (void)findDeviceWithIdentifier:(id)identifier timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v12 = objc_alloc_init(_TVRXSearchReference);
  [(_TVRXSearchReference *)v12 setIdentifier:identifierCopy];
  v10 = MEMORY[0x26D6B0B70](completionCopy);

  [(_TVRXSearchReference *)v12 setCompletionBlock:v10];
  v11 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerExpired_ selector:v12 userInfo:0 repeats:timeout];
  [(_TVRXSearchReference *)v12 setExpirationTimer:v11];
  [(NSMutableDictionary *)self->_searches setObject:v12 forKey:identifierCopy];

  [(TVRXDeviceQuery *)self->_query start];
}

- (void)cancelSearchForDeviceWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Device Locator: Cancelling search with identifier %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_searches allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqualToString:identifierCopy];

        if (v13)
        {
          v14 = v11;

          if (v14)
          {
            [(NSMutableDictionary *)self->_searches removeObjectForKey:identifierCopy];
            if (![(NSMutableDictionary *)self->_searches count])
            {
              [(TVRXDeviceQuery *)self->_query stop];
            }
          }

          goto LABEL_15;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_timerExpired:(id)expired
{
  v14 = *MEMORY[0x277D85DE8];
  userInfo = [expired userInfo];
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [userInfo identifier];
    v12 = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Device Locator: Timer expired while looking for search with identifier %@", &v12, 0xCu);
  }

  completionBlock = [userInfo completionBlock];
  v8 = completionBlock;
  if (completionBlock)
  {
    (*(completionBlock + 16))(completionBlock, 0);
  }

  searches = self->_searches;
  identifier2 = [userInfo identifier];
  [(NSMutableDictionary *)searches removeObjectForKey:identifier2];

  if (![(NSMutableDictionary *)self->_searches count])
  {
    [(TVRXDeviceQuery *)self->_query stop];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceQueryDidUpdateDevices:(id)devices
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  devices = [devices devices];
  v26 = [devices countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v26)
  {
    v5 = *v32;
    v24 = *v32;
    v25 = devices;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        identifier = [v7 identifier];
        alternateIdentifiers = [v7 alternateIdentifiers];
        allValues = [alternateIdentifiers allValues];

        v11 = [(NSMutableDictionary *)self->_searches objectForKey:identifier];
        if (v11)
        {
LABEL_17:
          v18 = _TVRCGeneralLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [v11 identifier];
            *buf = 138412290;
            v36 = identifier2;
            _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Device Locator: Found device in query with identifier %@", buf, 0xCu);
          }

          expirationTimer = [v11 expirationTimer];
          [expirationTimer invalidate];

          completionBlock = [v11 completionBlock];
          v22 = completionBlock;
          if (completionBlock)
          {
            (*(completionBlock + 16))(completionBlock, v7);
          }

          [(NSMutableDictionary *)self->_searches removeObjectForKey:identifier];
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
          v11 = allValues;
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
                  devices = v25;
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
            devices = v25;
          }
        }
      }

      v26 = [devices countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v26);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end