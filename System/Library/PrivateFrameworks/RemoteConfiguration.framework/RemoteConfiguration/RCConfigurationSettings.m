@interface RCConfigurationSettings
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)useBackgroundRefreshRate;
- (NSString)JSONRepresentation;
- (NSString)description;
- (NSString)loggingKey;
- (RCBackgroundFetchConfiguration)backgroundFetchConfiguration;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 backgroundFetchConfiguration:(id)a10 requestMode:(unint64_t)a11 endpointConfig:(id)a12 endpointTimeoutDuration:(double)a13 fallbackTimeoutDuration:(double)a14;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 backgroundFetchConfiguration:(id)a10 requestMode:(unint64_t)a11 endpointTimeoutDuration:(double)a12 fallbackTimeoutDuration:(double)a13;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 requestMode:(unint64_t)a10;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 requestMode:(unint64_t)a10 endpointTimeoutDuration:(double)a11;
- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 requestMode:(unint64_t)a10 endpointTimeoutDuration:(double)a11 fallbackTimeoutDuration:(double)a12;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 requestMode:(unint64_t)a11;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11 backgroundFetchConfiguration:(id)a12 requestMode:(unint64_t)a13 endpointConfig:(id)a14 endpointTimeoutDuration:(double)a15 fallbackTimeoutDuration:(double)a16;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11 backgroundFetchConfiguration:(id)a12 requestMode:(unint64_t)a13 endpointTimeoutDuration:(double)a14 fallbackTimeoutDuration:(double)a15;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11 requestMode:(unint64_t)a12 endpointTimeoutDuration:(double)a13;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 userID:(id)a5 storefrontID:(id)a6 bundleID:(id)a7 deviceInfo:(id)a8;
- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 userID:(id)a5 storefrontID:(id)a6 bundleID:(id)a7 deviceInfo:(id)a8 debugOverrides:(id)a9 backgroundFetchConfiguration:(id)a10;
- (RCDebugOverrides)debugOverrides;
- (RCEndpointConfig)endpointConfig;
- (double)endpointTimeoutDuration;
- (double)fallbackTimeoutDuration;
- (id)applicationStateDescription;
- (id)dictionaryRepresentation;
- (id)fallbackURL;
- (id)requestInfoForRequestCacheKey:(id)a3;
- (unint64_t)applicationState;
- (unint64_t)hash;
- (unint64_t)requestMode;
- (void)setApplicationState:(unint64_t)a3;
- (void)setBackgroundFetchConfiguration:(id)a3;
- (void)setDebugOverrides:(id)a3;
- (void)setEndpointConfig:(id)a3;
- (void)setEndpointTimeoutDuration:(double)a3;
- (void)setFallbackTimeoutDuration:(double)a3;
- (void)setLoggingKey:(id)a3;
- (void)setRequestMode:(unint64_t)a3;
- (void)setUseBackgroundRefreshRate:(BOOL)a3;
@end

@implementation RCConfigurationSettings

- (RCEndpointConfig)endpointConfig
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__RCConfigurationSettings_endpointConfig__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (RCDebugOverrides)debugOverrides
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__RCConfigurationSettings_debugOverrides__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unint64_t)requestMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__RCConfigurationSettings_requestMode__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)useBackgroundRefreshRate
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__RCConfigurationSettings_useBackgroundRefreshRate__block_invoke;
  v5[3] = &unk_27822F288;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performWithLockSync:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 userID:(id)a5 storefrontID:(id)a6 bundleID:(id)a7 deviceInfo:(id)a8
{
  v31[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  obj = a7;
  v18 = a7;
  v29 = a8;
  v19 = a8;
  if (!v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_6:
  if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else if (v17)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_11:
  if (!v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
    if (v19)
    {
      goto LABEL_16;
    }
  }

  else if (v19)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_16:
  v20 = [[RCRequestInfo alloc] initWithRequestKey:v14 responseKey:v15 fallbackURL:0];
  v30.receiver = self;
  v30.super_class = RCConfigurationSettings;
  v21 = [(RCConfigurationSettings *)&v30 init];
  if (v21)
  {
    v31[0] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    requestInfos = v21->_requestInfos;
    v21->_requestInfos = v22;

    objc_storeStrong(&v21->_userID, a5);
    objc_storeStrong(&v21->_storefrontID, a6);
    objc_storeStrong(&v21->_bundleID, obj);
    objc_storeStrong(&v21->_deviceInfo, v29);
    v24 = objc_alloc_init(RCUnfairLock);
    accessLock = v21->_accessLock;
    v21->_accessLock = v24;

    v21->_internalRequestMode = 2;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  obj = a7;
  v16 = a7;
  v17 = v12;
  if (!v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
  }

  v33 = v13;
  if (!v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_9:
  v18 = v12;
  if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
    if (v16)
    {
      goto LABEL_14;
    }
  }

  else if (v16)
  {
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_14:
  v38.receiver = self;
  v38.super_class = RCConfigurationSettings;
  v19 = [(RCConfigurationSettings *)&v38 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_requestInfos, a3);
    objc_storeStrong(&v20->_userID, a4);
    objc_storeStrong(&v20->_storefrontID, a5);
    objc_storeStrong(&v20->_bundleID, a6);
    objc_storeStrong(&v20->_deviceInfo, obj);
    v20->_internalRequestMode = 2;
    v21 = objc_alloc_init(RCUnfairLock);
    accessLock = v20->_accessLock;
    v20->_accessLock = v21;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v17;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v34 + 1) + 8 * i) fallbackURL];

          if (v28)
          {
            v20->_internalRequestMode = 1;
            goto LABEL_25;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
  }

  v29 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = MEMORY[0x277D82BB8];
    v7 = [(RCConfigurationSettings *)self requestInfos];
    v8 = [v5 requestInfos];
    if ([v6 rc_object:v7 isEqualToObject:v8])
    {
      v9 = [(RCConfigurationSettings *)self userID];
      v10 = [v5 userID];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(RCConfigurationSettings *)self storefrontID];
        v12 = [v5 storefrontID];
        if ([v11 isEqualToString:v12])
        {
          v41 = v11;
          v13 = [(RCConfigurationSettings *)self bundleID];
          [v5 bundleID];
          v40 = v42 = v13;
          if ([v13 isEqualToString:?])
          {
            v14 = [(RCConfigurationSettings *)self deviceInfo];
            v38 = [v5 deviceInfo];
            v39 = v14;
            if ([v14 isEqual:?])
            {
              v36 = MEMORY[0x277D82BB8];
              v15 = [(RCConfigurationSettings *)self debugOverrides];
              v16 = [v5 debugOverrides];
              v17 = v36;
              v35 = v16;
              v37 = v15;
              if ([v17 rc_object:v15 isEqualToObject:?] && (v18 = -[RCConfigurationSettings useBackgroundRefreshRate](self, "useBackgroundRefreshRate"), v18 == objc_msgSend(v5, "useBackgroundRefreshRate")))
              {
                v20 = MEMORY[0x277D82BB8];
                v21 = [(RCConfigurationSettings *)self backgroundFetchConfiguration];
                v33 = [v5 backgroundFetchConfiguration];
                v34 = v21;
                if ([v20 rc_object:v21 isEqualToObject:?] && (v22 = -[RCConfigurationSettings requestMode](self, "requestMode"), v22 == objc_msgSend(v5, "requestMode")))
                {
                  v23 = [(RCConfigurationSettings *)self endpointConfig];
                  v32 = [v5 endpointConfig];
                  if ([v23 isEqual:?])
                  {
                    [(RCConfigurationSettings *)self endpointTimeoutDuration];
                    v25 = v24;
                    [v5 endpointTimeoutDuration];
                    v11 = v41;
                    if (v25 == v26 && (-[RCConfigurationSettings fallbackTimeoutDuration](self, "fallbackTimeoutDuration"), v28 = v27, [v5 fallbackTimeoutDuration], v28 == v29))
                    {
                      v30 = [(RCConfigurationSettings *)self applicationState];
                      v19 = v30 == [v5 applicationState];
                    }

                    else
                    {
                      v19 = 0;
                    }
                  }

                  else
                  {
                    v19 = 0;
                    v11 = v41;
                  }
                }

                else
                {
                  v19 = 0;
                  v11 = v41;
                }
              }

              else
              {
                v19 = 0;
                v11 = v41;
              }
            }

            else
            {
              v19 = 0;
              v11 = v41;
            }
          }

          else
          {
            v19 = 0;
            v11 = v41;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v31 = [(RCConfigurationSettings *)self requestInfos];
  v3 = [v31 hash];
  v30 = [(RCConfigurationSettings *)self userID];
  v4 = [v30 hash] ^ v3;
  v29 = [(RCConfigurationSettings *)self storefrontID];
  v5 = [v29 hash];
  v28 = [(RCConfigurationSettings *)self bundleID];
  v6 = v4 ^ v5 ^ [v28 hash];
  v27 = [(RCConfigurationSettings *)self deviceInfo];
  v7 = [v27 hash];
  v26 = [(RCConfigurationSettings *)self debugOverrides];
  v8 = v7 ^ [v26 hash];
  v9 = [(RCConfigurationSettings *)self backgroundFetchConfiguration];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCConfigurationSettings useBackgroundRefreshRate](self, "useBackgroundRefreshRate")}];
  v12 = v10 ^ [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationSettings requestMode](self, "requestMode")}];
  v14 = [v13 hash];
  v15 = [(RCConfigurationSettings *)self endpointConfig];
  v25 = v12 ^ v14 ^ [v15 hash];
  v16 = MEMORY[0x277CCABB0];
  [(RCConfigurationSettings *)self endpointTimeoutDuration];
  v17 = [v16 numberWithDouble:?];
  v18 = [v17 hash];
  v19 = MEMORY[0x277CCABB0];
  [(RCConfigurationSettings *)self fallbackTimeoutDuration];
  v20 = [v19 numberWithDouble:?];
  v21 = v18 ^ [v20 hash];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationSettings applicationState](self, "applicationState")}];
  v23 = v21 ^ [v22 hash];

  return v25 ^ v23;
}

- (NSString)description
{
  v22 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v20 = [(RCConfigurationSettings *)self requestInfos];
  v3 = [(RCConfigurationSettings *)self userID];
  v4 = [(RCConfigurationSettings *)self storefrontID];
  v5 = [(RCConfigurationSettings *)self bundleID];
  v6 = [(RCConfigurationSettings *)self endpointConfig];
  v19 = [(RCConfigurationSettings *)self deviceInfo];
  v7 = [v19 description];
  v8 = [(RCConfigurationSettings *)self debugOverrides];
  v9 = [v8 description];
  v10 = [v22 stringWithFormat:@"<%@: %p requestInfos: %@\n userID: %@\n storefrontID: %@\n bundleID: %@\n endpointConfig: %@\n deviceInfo: %@\n debugOverrides: %@\n useBackgroundRefreshRate: %d requestMode: %lu applicationState: %lu", v21, self, v20, v3, v4, v5, v6, v7, v9, -[RCConfigurationSettings useBackgroundRefreshRate](self, "useBackgroundRefreshRate"), -[RCConfigurationSettings requestMode](self, "requestMode"), -[RCConfigurationSettings applicationState](self, "applicationState")];;

  [(RCConfigurationSettings *)self endpointTimeoutDuration];
  if (v11 != 1.79769313e308)
  {
    [(RCConfigurationSettings *)self endpointTimeoutDuration];
    v13 = [v10 stringByAppendingFormat:@" endpointTimeout: %.1f", v12];

    v10 = v13;
  }

  [(RCConfigurationSettings *)self fallbackTimeoutDuration];
  if (v14 != 1.79769313e308)
  {
    [(RCConfigurationSettings *)self fallbackTimeoutDuration];
    v16 = [v10 stringByAppendingFormat:@" fallbackTimeout: %.1f", v15];

    v10 = v16;
  }

  v17 = [v10 stringByAppendingString:@">"];

  return v17;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(RCConfigurationSettings *)self userID];
  [v3 rc_safelySetObjectAllowingNil:v4 forKey:@"feldsparId"];

  v5 = [(RCConfigurationSettings *)self storefrontID];
  [v3 rc_safelySetObjectAllowingNil:v5 forKey:@"storefrontId"];

  v6 = [(RCConfigurationSettings *)self bundleID];
  [v3 rc_safelySetObjectAllowingNil:v6 forKey:@"bundleId"];

  v7 = [(RCConfigurationSettings *)self deviceInfo];
  v8 = [v7 dictionaryRepresentation];
  [v3 rc_safelySetObjectAllowingNil:v8 forKey:@"deviceInfo"];

  v9 = [(RCConfigurationSettings *)self debugOverrides];
  v10 = [v9 dictionaryRepresentation];
  [v3 rc_safelySetObjectAllowingNil:v10 forKey:@"debugOverrides"];

  v11 = [(RCConfigurationSettings *)self applicationStateDescription];
  [v3 rc_safelySetObjectAllowingNil:v11 forKey:@"applicationState"];

  v12 = [v3 copy];

  return v12;
}

- (id)applicationStateDescription
{
  v2 = [(RCConfigurationSettings *)self applicationState];
  v3 = @"foreground";
  if (v2 != 1)
  {
    v3 = 0;
  }

  if (v2 == 2)
  {
    return @"background";
  }

  else
  {
    return v3;
  }
}

- (NSString)JSONRepresentation
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(RCConfigurationSettings *)self dictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:0 error:0];

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v5;
}

- (BOOL)isValid
{
  v3 = [(RCConfigurationSettings *)self requestInfos];
  if (v3)
  {
    v4 = [(RCConfigurationSettings *)self userID];
    if (v4)
    {
      v5 = [(RCConfigurationSettings *)self storefrontID];
      if (v5)
      {
        v6 = [(RCConfigurationSettings *)self bundleID];
        if (v6)
        {
          v7 = [(RCConfigurationSettings *)self deviceInfo];
          v8 = v7 != 0;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fallbackURL
{
  v2 = [(RCConfigurationSettings *)self requestInfos];
  v3 = [v2 firstObject];
  v4 = [v3 fallbackURL];

  return v4;
}

- (id)requestInfoForRequestCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(RCConfigurationSettings *)self requestInfos];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__RCConfigurationSettings_requestInfoForRequestCacheKey___block_invoke;
  v9[3] = &unk_278230098;
  v10 = v4;
  v6 = v4;
  v7 = [v5 rc_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __57__RCConfigurationSettings_requestInfoForRequestCacheKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestCacheKey];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 userID:(id)a5 storefrontID:(id)a6 bundleID:(id)a7 deviceInfo:(id)a8 debugOverrides:(id)a9 backgroundFetchConfiguration:(id)a10
{
  v34[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v32 = a9;
  v31 = a10;
  if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

LABEL_6:
  if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
    if (v18)
    {
      goto LABEL_11;
    }
  }

  else if (v18)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

LABEL_11:
  v21 = v18;
  if (!v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

  v22 = v17;
  v23 = v20;
  if (!v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

  v24 = [[RCRequestInfo alloc] initWithRequestKey:v15 responseKey:v16 fallbackURL:0];
  v25 = [RCConfigurationSettings alloc];
  v34[0] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  LOBYTE(v30) = 0;
  v27 = [(RCConfigurationSettings *)v25 initWithRequestInfos:v26 userID:v22 storefrontID:v21 bundleID:v19 deviceInfo:v23 debugOverrides:v32 useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v30 endpointTimeoutDuration:v31 fallbackTimeoutDuration:1];

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10
{
  v32[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v30 = a10;
  if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
  }

LABEL_6:
  if (!v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
    if (v19)
    {
      goto LABEL_11;
    }
  }

  else if (v19)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
  }

LABEL_11:
  if (!v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
    if (v21)
    {
      goto LABEL_16;
    }
  }

  else if (v21)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
  }

LABEL_16:
  v22 = [[RCRequestInfo alloc] initWithRequestKey:v15 responseKey:v16 fallbackURL:v17];
  v23 = [RCConfigurationSettings alloc];
  v32[0] = v22;
  [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v24 = v29 = v17;
  LOBYTE(v28) = 0;
  v25 = [(RCConfigurationSettings *)v23 initWithRequestInfos:v24 userID:v18 storefrontID:v19 bundleID:v20 deviceInfo:v21 debugOverrides:v30 useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v28 endpointTimeoutDuration:0 fallbackTimeoutDuration:0];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 requestMode:(unint64_t)a11
{
  v34[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v32 = a10;
  if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
    if (v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

LABEL_6:
  if (!v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
    if (v20)
    {
      goto LABEL_11;
    }
  }

  else if (v20)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

LABEL_11:
  if (!v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

  if (!v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

  v23 = [[RCRequestInfo alloc] initWithRequestKey:v16 responseKey:v17 fallbackURL:v18];
  v24 = [RCConfigurationSettings alloc];
  v34[0] = v23;
  [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v31 = v16;
  v26 = v25 = v18;
  LOBYTE(v30) = 0;
  v27 = [(RCConfigurationSettings *)v24 initWithRequestInfos:v26 userID:v19 storefrontID:v20 bundleID:v21 deviceInfo:v22 debugOverrides:v32 useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v30 endpointTimeoutDuration:0 fallbackTimeoutDuration:a11];

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11
{
  v34[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v32 = a10;
  if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
    if (v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

LABEL_6:
  if (!v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
    if (v20)
    {
      goto LABEL_11;
    }
  }

  else if (v20)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

LABEL_11:
  if (!v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

  if (!v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

  v23 = [[RCRequestInfo alloc] initWithRequestKey:v16 responseKey:v17 fallbackURL:v18];
  v24 = [RCConfigurationSettings alloc];
  v34[0] = v23;
  [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v31 = v16;
  v26 = v25 = v18;
  LOBYTE(v30) = a11;
  v27 = [(RCConfigurationSettings *)v24 initWithRequestInfos:v26 userID:v19 storefrontID:v20 bundleID:v21 deviceInfo:v22 debugOverrides:v32 useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v30 endpointTimeoutDuration:0 fallbackTimeoutDuration:0];

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11 requestMode:(unint64_t)a12 endpointTimeoutDuration:(double)a13
{
  v39[1] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v36 = a10;
  if (!v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
    if (v20)
    {
      goto LABEL_6;
    }
  }

  else if (v20)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

LABEL_6:
  if (!v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else if (v23)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

LABEL_11:
  if (!v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

  v37 = v24;
  v26 = v23;
  if (!v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

  v27 = [[RCRequestInfo alloc] initWithRequestKey:v19 responseKey:v20 fallbackURL:v21];
  v35 = v19;
  v28 = [RCConfigurationSettings alloc];
  v39[0] = v27;
  [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v30 = v29 = v21;
  LOBYTE(v34) = a11;
  v31 = [(RCConfigurationSettings *)v28 initWithRequestInfos:v30 userID:v22 storefrontID:v26 bundleID:v37 deviceInfo:v25 debugOverrides:v36 useBackgroundRefreshRate:a13 backgroundFetchConfiguration:1.79769313e308 requestMode:v34 endpointTimeoutDuration:0 fallbackTimeoutDuration:a12];

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11 backgroundFetchConfiguration:(id)a12 requestMode:(unint64_t)a13 endpointTimeoutDuration:(double)a14 fallbackTimeoutDuration:(double)a15
{
  v38[1] = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a4;
  v36 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v35 = a10;
  v34 = a12;
  if (!v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (v22)
    {
      goto LABEL_6;
    }
  }

  else if (v22)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_6:
  if (!v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (v24)
    {
      goto LABEL_11;
    }
  }

  else if (v24)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_11:
  if (!v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  if (!v26 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v27 = [[RCRequestInfo alloc] initWithRequestKey:v21 responseKey:v22 fallbackURL:v36];
  v28 = [RCConfigurationSettings alloc];
  v38[0] = v27;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  LOBYTE(v33) = a11;
  v30 = [(RCConfigurationSettings *)v28 initWithRequestInfos:v29 userID:v23 storefrontID:v24 bundleID:v25 deviceInfo:v26 debugOverrides:v35 useBackgroundRefreshRate:a14 backgroundFetchConfiguration:1.79769313e308 requestMode:v33 endpointConfig:v34 endpointTimeoutDuration:a13 fallbackTimeoutDuration:0];

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (RCConfigurationSettings)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 userID:(id)a6 storefrontID:(id)a7 bundleID:(id)a8 deviceInfo:(id)a9 debugOverrides:(id)a10 useBackgroundRefreshRate:(BOOL)a11 backgroundFetchConfiguration:(id)a12 requestMode:(unint64_t)a13 endpointConfig:(id)a14 endpointTimeoutDuration:(double)a15 fallbackTimeoutDuration:(double)a16
{
  v42[1] = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = a4;
  v40 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v38 = a10;
  v37 = a12;
  v36 = a14;
  if (!v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (v24)
    {
      goto LABEL_6;
    }
  }

  else if (v24)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_6:
  if (!v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (v26)
    {
      goto LABEL_11;
    }
  }

  else if (v26)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_11:
  if (!v27 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v39 = v26;
  if (!v28 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v29 = [[RCRequestInfo alloc] initWithRequestKey:v23 responseKey:v24 fallbackURL:v40];
  v30 = [RCConfigurationSettings alloc];
  v42[0] = v29;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  LOBYTE(v34) = a11;
  v35 = [(RCConfigurationSettings *)v30 initWithRequestInfos:v31 userID:v25 storefrontID:v39 bundleID:v27 deviceInfo:v28 debugOverrides:v38 useBackgroundRefreshRate:a15 backgroundFetchConfiguration:a16 requestMode:v34 endpointConfig:v37 endpointTimeoutDuration:a13 fallbackTimeoutDuration:v36];

  v32 = *MEMORY[0x277D85DE8];
  return v35;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  LOBYTE(v22) = 0;
  v20 = [[RCConfigurationSettings alloc] initWithRequestInfos:v19 userID:v18 storefrontID:v17 bundleID:v16 deviceInfo:v15 debugOverrides:v14 useBackgroundRefreshRate:1.79769313e308 requestMode:1.79769313e308 endpointTimeoutDuration:v22 fallbackTimeoutDuration:0];

  return v20;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  LOBYTE(v23) = a9;
  v21 = [[RCConfigurationSettings alloc] initWithRequestInfos:v20 userID:v19 storefrontID:v18 bundleID:v17 deviceInfo:v16 debugOverrides:v15 useBackgroundRefreshRate:1.79769313e308 requestMode:1.79769313e308 endpointTimeoutDuration:v23 fallbackTimeoutDuration:0];

  return v21;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 requestMode:(unint64_t)a10
{
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  LOBYTE(v24) = a9;
  v22 = [[RCConfigurationSettings alloc] initWithRequestInfos:v21 userID:v20 storefrontID:v19 bundleID:v18 deviceInfo:v17 debugOverrides:v16 useBackgroundRefreshRate:1.79769313e308 requestMode:1.79769313e308 endpointTimeoutDuration:v24 fallbackTimeoutDuration:a10];

  return v22;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 requestMode:(unint64_t)a10 endpointTimeoutDuration:(double)a11
{
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  LOBYTE(v26) = a9;
  v24 = [[RCConfigurationSettings alloc] initWithRequestInfos:v23 userID:v22 storefrontID:v21 bundleID:v20 deviceInfo:v19 debugOverrides:v18 useBackgroundRefreshRate:a11 requestMode:1.79769313e308 endpointTimeoutDuration:v26 fallbackTimeoutDuration:a10];

  return v24;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 requestMode:(unint64_t)a10 endpointTimeoutDuration:(double)a11 fallbackTimeoutDuration:(double)a12
{
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  LOBYTE(v28) = a9;
  v26 = [[RCConfigurationSettings alloc] initWithRequestInfos:v25 userID:v24 storefrontID:v23 bundleID:v22 deviceInfo:v21 debugOverrides:v20 useBackgroundRefreshRate:a11 backgroundFetchConfiguration:a12 requestMode:v28 endpointTimeoutDuration:0 fallbackTimeoutDuration:a10];

  return v26;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 backgroundFetchConfiguration:(id)a10 requestMode:(unint64_t)a11 endpointTimeoutDuration:(double)a12 fallbackTimeoutDuration:(double)a13
{
  v21 = a10;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  LOBYTE(v30) = a9;
  v28 = [[RCConfigurationSettings alloc] initWithRequestInfos:v27 userID:v26 storefrontID:v25 bundleID:v24 deviceInfo:v23 debugOverrides:v22 useBackgroundRefreshRate:a12 backgroundFetchConfiguration:a13 requestMode:v30 endpointConfig:v21 endpointTimeoutDuration:a11 fallbackTimeoutDuration:0];

  return v28;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)a3 userID:(id)a4 storefrontID:(id)a5 bundleID:(id)a6 deviceInfo:(id)a7 debugOverrides:(id)a8 useBackgroundRefreshRate:(BOOL)a9 backgroundFetchConfiguration:(id)a10 requestMode:(unint64_t)a11 endpointConfig:(id)a12 endpointTimeoutDuration:(double)a13 fallbackTimeoutDuration:(double)a14
{
  v22 = a3;
  v34 = a4;
  v23 = a4;
  v35 = a5;
  v24 = a5;
  v36 = a6;
  v25 = a6;
  v37 = a7;
  v26 = a7;
  v27 = a8;
  v39 = a10;
  v38 = a12;
  if (!v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (v23)
    {
      goto LABEL_6;
    }
  }

  else if (v23)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_6:
  if (!v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (v25)
    {
      goto LABEL_11;
    }
  }

  else if (v25)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_11:
  if (!v26 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v40.receiver = self;
  v40.super_class = RCConfigurationSettings;
  v28 = [(RCConfigurationSettings *)&v40 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_requestInfos, a3);
    objc_storeStrong(&v29->_userID, v34);
    objc_storeStrong(&v29->_storefrontID, v35);
    objc_storeStrong(&v29->_bundleID, v36);
    objc_storeStrong(&v29->_deviceInfo, v37);
    objc_storeStrong(&v29->_internalDebugOverrides, a8);
    v29->_internalUseBackgroundRefreshRate = a9;
    objc_storeStrong(&v29->_internalBackgroundFetchConfiguration, a10);
    v29->_internalRequestMode = a11;
    objc_storeStrong(&v29->_internalEndpointConfig, a12);
    v29->_internalEndpointTimeoutDuration = a13;
    v29->_internalFallbackTimeoutDuration = a14;
    v30 = objc_alloc_init(RCUnfairLock);
    accessLock = v29->_accessLock;
    v29->_accessLock = v30;
  }

  return v29;
}

- (void)setDebugOverrides:(id)a3
{
  v4 = a3;
  v5 = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__RCConfigurationSettings_setDebugOverrides___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithLockSync:v7];
}

- (void)setLoggingKey:(id)a3
{
  v4 = a3;
  v5 = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__RCConfigurationSettings_setLoggingKey___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithLockSync:v7];
}

- (NSString)loggingKey
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__RCConfigurationSettings_loggingKey__block_invoke;
  v10[3] = &unk_27822F288;
  v10[4] = self;
  v10[5] = &v11;
  [v3 performWithLockSync:v10];

  v4 = v12[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = [(RCConfigurationSettings *)self requestInfos];
    v5 = [v6 stringWithFormat:@"<%@: %p requestInfos: %@>", v7, self, v8];;
  }

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)setBackgroundFetchConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RCConfigurationSettings_setBackgroundFetchConfiguration___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithLockSync:v7];
}

- (RCBackgroundFetchConfiguration)backgroundFetchConfiguration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__RCConfigurationSettings_backgroundFetchConfiguration__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setUseBackgroundRefreshRate:(BOOL)a3
{
  v5 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__RCConfigurationSettings_setUseBackgroundRefreshRate___block_invoke;
  v6[3] = &unk_27822FE90;
  v6[4] = self;
  v7 = a3;
  [v5 performWithLockSync:v6];
}

- (void)setRequestMode:(unint64_t)a3
{
  v5 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__RCConfigurationSettings_setRequestMode___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  v6[5] = a3;
  [v5 performWithLockSync:v6];
}

- (void)setEndpointConfig:(id)a3
{
  v4 = a3;
  v5 = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__RCConfigurationSettings_setEndpointConfig___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithLockSync:v7];
}

- (void)setEndpointTimeoutDuration:(double)a3
{
  v5 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RCConfigurationSettings_setEndpointTimeoutDuration___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  *&v6[5] = a3;
  [v5 performWithLockSync:v6];
}

double __54__RCConfigurationSettings_setEndpointTimeoutDuration___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 96) = result;
  return result;
}

- (double)endpointTimeoutDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__RCConfigurationSettings_endpointTimeoutDuration__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __50__RCConfigurationSettings_endpointTimeoutDuration__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setFallbackTimeoutDuration:(double)a3
{
  v5 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RCConfigurationSettings_setFallbackTimeoutDuration___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  *&v6[5] = a3;
  [v5 performWithLockSync:v6];
}

double __54__RCConfigurationSettings_setFallbackTimeoutDuration___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 104) = result;
  return result;
}

- (double)fallbackTimeoutDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__RCConfigurationSettings_fallbackTimeoutDuration__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __50__RCConfigurationSettings_fallbackTimeoutDuration__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setApplicationState:(unint64_t)a3
{
  v5 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RCConfigurationSettings_setApplicationState___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  v6[5] = a3;
  [v5 performWithLockSync:v6];
}

- (unint64_t)applicationState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__RCConfigurationSettings_applicationState__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestInfos", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "responseKey", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "requestInfos", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "userID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "storefrontID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "deviceInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end