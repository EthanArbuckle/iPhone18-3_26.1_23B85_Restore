@interface RCConfigurationSettings
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (BOOL)useBackgroundRefreshRate;
- (NSString)JSONRepresentation;
- (NSString)description;
- (NSString)loggingKey;
- (RCBackgroundFetchConfiguration)backgroundFetchConfiguration;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate backgroundFetchConfiguration:(id)self0 requestMode:(unint64_t)self1 endpointConfig:(id)self2 endpointTimeoutDuration:(double)self3 fallbackTimeoutDuration:(double)self4;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate backgroundFetchConfiguration:(id)self0 requestMode:(unint64_t)self1 endpointTimeoutDuration:(double)self2 fallbackTimeoutDuration:(double)self3;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate requestMode:(unint64_t)self0;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate requestMode:(unint64_t)self0 endpointTimeoutDuration:(double)self1;
- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate requestMode:(unint64_t)self0 endpointTimeoutDuration:(double)self1 fallbackTimeoutDuration:(double)self2;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 requestMode:(unint64_t)self1;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1 backgroundFetchConfiguration:(id)self2 requestMode:(unint64_t)self3 endpointConfig:(id)self4 endpointTimeoutDuration:(double)self5 fallbackTimeoutDuration:(double)self6;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1 backgroundFetchConfiguration:(id)self2 requestMode:(unint64_t)self3 endpointTimeoutDuration:(double)self4 fallbackTimeoutDuration:(double)self5;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1 requestMode:(unint64_t)self2 endpointTimeoutDuration:(double)self3;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info;
- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides backgroundFetchConfiguration:(id)self0;
- (RCDebugOverrides)debugOverrides;
- (RCEndpointConfig)endpointConfig;
- (double)endpointTimeoutDuration;
- (double)fallbackTimeoutDuration;
- (id)applicationStateDescription;
- (id)dictionaryRepresentation;
- (id)fallbackURL;
- (id)requestInfoForRequestCacheKey:(id)key;
- (unint64_t)applicationState;
- (unint64_t)hash;
- (unint64_t)requestMode;
- (void)setApplicationState:(unint64_t)state;
- (void)setBackgroundFetchConfiguration:(id)configuration;
- (void)setDebugOverrides:(id)overrides;
- (void)setEndpointConfig:(id)config;
- (void)setEndpointTimeoutDuration:(double)duration;
- (void)setFallbackTimeoutDuration:(double)duration;
- (void)setLoggingKey:(id)key;
- (void)setRequestMode:(unint64_t)mode;
- (void)setUseBackgroundRefreshRate:(BOOL)rate;
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
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__RCConfigurationSettings_endpointConfig__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

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
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__RCConfigurationSettings_debugOverrides__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

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
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__RCConfigurationSettings_requestMode__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)useBackgroundRefreshRate
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__RCConfigurationSettings_useBackgroundRefreshRate__block_invoke;
  v5[3] = &unk_27822F288;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [accessLock performWithLockSync:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info
{
  v31[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  dCopy = d;
  iDCopy = iD;
  obj = bundleID;
  bundleIDCopy = bundleID;
  infoCopy = info;
  infoCopy2 = info;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_11:
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
    if (infoCopy2)
    {
      goto LABEL_16;
    }
  }

  else if (infoCopy2)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_16:
  v20 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:0];
  v30.receiver = self;
  v30.super_class = RCConfigurationSettings;
  v21 = [(RCConfigurationSettings *)&v30 init];
  if (v21)
  {
    v31[0] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    requestInfos = v21->_requestInfos;
    v21->_requestInfos = v22;

    objc_storeStrong(&v21->_userID, d);
    objc_storeStrong(&v21->_storefrontID, iD);
    objc_storeStrong(&v21->_bundleID, obj);
    objc_storeStrong(&v21->_deviceInfo, infoCopy);
    v24 = objc_alloc_init(RCUnfairLock);
    accessLock = v21->_accessLock;
    v21->_accessLock = v24;

    v21->_internalRequestMode = 2;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info
{
  v40 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  obj = info;
  infoCopy = info;
  v17 = infosCopy;
  if (!infosCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
  }

  v33 = dCopy;
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
    if (iDCopy)
    {
      goto LABEL_9;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
  }

LABEL_9:
  v18 = infosCopy;
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:];
    if (infoCopy)
    {
      goto LABEL_14;
    }
  }

  else if (infoCopy)
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
    objc_storeStrong(&v19->_requestInfos, infos);
    objc_storeStrong(&v20->_userID, d);
    objc_storeStrong(&v20->_storefrontID, iD);
    objc_storeStrong(&v20->_bundleID, bundleID);
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

          fallbackURL = [*(*(&v34 + 1) + 8 * i) fallbackURL];

          if (fallbackURL)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = MEMORY[0x277D82BB8];
    requestInfos = [(RCConfigurationSettings *)self requestInfos];
    requestInfos2 = [v5 requestInfos];
    if ([v6 rc_object:requestInfos isEqualToObject:requestInfos2])
    {
      userID = [(RCConfigurationSettings *)self userID];
      userID2 = [v5 userID];
      if ([userID isEqualToString:userID2])
      {
        storefrontID = [(RCConfigurationSettings *)self storefrontID];
        storefrontID2 = [v5 storefrontID];
        if ([storefrontID isEqualToString:storefrontID2])
        {
          v41 = storefrontID;
          bundleID = [(RCConfigurationSettings *)self bundleID];
          [v5 bundleID];
          v40 = v42 = bundleID;
          if ([bundleID isEqualToString:?])
          {
            deviceInfo = [(RCConfigurationSettings *)self deviceInfo];
            deviceInfo2 = [v5 deviceInfo];
            v39 = deviceInfo;
            if ([deviceInfo isEqual:?])
            {
              v36 = MEMORY[0x277D82BB8];
              debugOverrides = [(RCConfigurationSettings *)self debugOverrides];
              debugOverrides2 = [v5 debugOverrides];
              v17 = v36;
              v35 = debugOverrides2;
              v37 = debugOverrides;
              if ([v17 rc_object:debugOverrides isEqualToObject:?] && (v18 = -[RCConfigurationSettings useBackgroundRefreshRate](self, "useBackgroundRefreshRate"), v18 == objc_msgSend(v5, "useBackgroundRefreshRate")))
              {
                v20 = MEMORY[0x277D82BB8];
                backgroundFetchConfiguration = [(RCConfigurationSettings *)self backgroundFetchConfiguration];
                backgroundFetchConfiguration2 = [v5 backgroundFetchConfiguration];
                v34 = backgroundFetchConfiguration;
                if ([v20 rc_object:backgroundFetchConfiguration isEqualToObject:?] && (v22 = -[RCConfigurationSettings requestMode](self, "requestMode"), v22 == objc_msgSend(v5, "requestMode")))
                {
                  endpointConfig = [(RCConfigurationSettings *)self endpointConfig];
                  endpointConfig2 = [v5 endpointConfig];
                  if ([endpointConfig isEqual:?])
                  {
                    [(RCConfigurationSettings *)self endpointTimeoutDuration];
                    v25 = v24;
                    [v5 endpointTimeoutDuration];
                    storefrontID = v41;
                    if (v25 == v26 && (-[RCConfigurationSettings fallbackTimeoutDuration](self, "fallbackTimeoutDuration"), v28 = v27, [v5 fallbackTimeoutDuration], v28 == v29))
                    {
                      applicationState = [(RCConfigurationSettings *)self applicationState];
                      v19 = applicationState == [v5 applicationState];
                    }

                    else
                    {
                      v19 = 0;
                    }
                  }

                  else
                  {
                    v19 = 0;
                    storefrontID = v41;
                  }
                }

                else
                {
                  v19 = 0;
                  storefrontID = v41;
                }
              }

              else
              {
                v19 = 0;
                storefrontID = v41;
              }
            }

            else
            {
              v19 = 0;
              storefrontID = v41;
            }
          }

          else
          {
            v19 = 0;
            storefrontID = v41;
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
  requestInfos = [(RCConfigurationSettings *)self requestInfos];
  v3 = [requestInfos hash];
  userID = [(RCConfigurationSettings *)self userID];
  v4 = [userID hash] ^ v3;
  storefrontID = [(RCConfigurationSettings *)self storefrontID];
  v5 = [storefrontID hash];
  bundleID = [(RCConfigurationSettings *)self bundleID];
  v6 = v4 ^ v5 ^ [bundleID hash];
  deviceInfo = [(RCConfigurationSettings *)self deviceInfo];
  v7 = [deviceInfo hash];
  debugOverrides = [(RCConfigurationSettings *)self debugOverrides];
  v8 = v7 ^ [debugOverrides hash];
  backgroundFetchConfiguration = [(RCConfigurationSettings *)self backgroundFetchConfiguration];
  v10 = v6 ^ v8 ^ [backgroundFetchConfiguration hash];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCConfigurationSettings useBackgroundRefreshRate](self, "useBackgroundRefreshRate")}];
  v12 = v10 ^ [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationSettings requestMode](self, "requestMode")}];
  v14 = [v13 hash];
  endpointConfig = [(RCConfigurationSettings *)self endpointConfig];
  v25 = v12 ^ v14 ^ [endpointConfig hash];
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
  requestInfos = [(RCConfigurationSettings *)self requestInfos];
  userID = [(RCConfigurationSettings *)self userID];
  storefrontID = [(RCConfigurationSettings *)self storefrontID];
  bundleID = [(RCConfigurationSettings *)self bundleID];
  endpointConfig = [(RCConfigurationSettings *)self endpointConfig];
  deviceInfo = [(RCConfigurationSettings *)self deviceInfo];
  v7 = [deviceInfo description];
  debugOverrides = [(RCConfigurationSettings *)self debugOverrides];
  v9 = [debugOverrides description];
  v10 = [v22 stringWithFormat:@"<%@: %p requestInfos: %@\n userID: %@\n storefrontID: %@\n bundleID: %@\n endpointConfig: %@\n deviceInfo: %@\n debugOverrides: %@\n useBackgroundRefreshRate: %d requestMode: %lu applicationState: %lu", v21, self, requestInfos, userID, storefrontID, bundleID, endpointConfig, v7, v9, -[RCConfigurationSettings useBackgroundRefreshRate](self, "useBackgroundRefreshRate"), -[RCConfigurationSettings requestMode](self, "requestMode"), -[RCConfigurationSettings applicationState](self, "applicationState")];;

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  userID = [(RCConfigurationSettings *)self userID];
  [dictionary rc_safelySetObjectAllowingNil:userID forKey:@"feldsparId"];

  storefrontID = [(RCConfigurationSettings *)self storefrontID];
  [dictionary rc_safelySetObjectAllowingNil:storefrontID forKey:@"storefrontId"];

  bundleID = [(RCConfigurationSettings *)self bundleID];
  [dictionary rc_safelySetObjectAllowingNil:bundleID forKey:@"bundleId"];

  deviceInfo = [(RCConfigurationSettings *)self deviceInfo];
  dictionaryRepresentation = [deviceInfo dictionaryRepresentation];
  [dictionary rc_safelySetObjectAllowingNil:dictionaryRepresentation forKey:@"deviceInfo"];

  debugOverrides = [(RCConfigurationSettings *)self debugOverrides];
  dictionaryRepresentation2 = [debugOverrides dictionaryRepresentation];
  [dictionary rc_safelySetObjectAllowingNil:dictionaryRepresentation2 forKey:@"debugOverrides"];

  applicationStateDescription = [(RCConfigurationSettings *)self applicationStateDescription];
  [dictionary rc_safelySetObjectAllowingNil:applicationStateDescription forKey:@"applicationState"];

  v12 = [dictionary copy];

  return v12;
}

- (id)applicationStateDescription
{
  applicationState = [(RCConfigurationSettings *)self applicationState];
  v3 = @"foreground";
  if (applicationState != 1)
  {
    v3 = 0;
  }

  if (applicationState == 2)
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
  dictionaryRepresentation = [(RCConfigurationSettings *)self dictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:dictionaryRepresentation options:0 error:0];

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v5;
}

- (BOOL)isValid
{
  requestInfos = [(RCConfigurationSettings *)self requestInfos];
  if (requestInfos)
  {
    userID = [(RCConfigurationSettings *)self userID];
    if (userID)
    {
      storefrontID = [(RCConfigurationSettings *)self storefrontID];
      if (storefrontID)
      {
        bundleID = [(RCConfigurationSettings *)self bundleID];
        if (bundleID)
        {
          deviceInfo = [(RCConfigurationSettings *)self deviceInfo];
          v8 = deviceInfo != 0;
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
  requestInfos = [(RCConfigurationSettings *)self requestInfos];
  firstObject = [requestInfos firstObject];
  fallbackURL = [firstObject fallbackURL];

  return fallbackURL;
}

- (id)requestInfoForRequestCacheKey:(id)key
{
  keyCopy = key;
  requestInfos = [(RCConfigurationSettings *)self requestInfos];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__RCConfigurationSettings_requestInfoForRequestCacheKey___block_invoke;
  v9[3] = &unk_278230098;
  v10 = keyCopy;
  v6 = keyCopy;
  v7 = [requestInfos rc_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __57__RCConfigurationSettings_requestInfoForRequestCacheKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestCacheKey];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides backgroundFetchConfiguration:(id)self0
{
  v34[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  infoCopy = info;
  overridesCopy = overrides;
  configurationCopy = configuration;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

LABEL_11:
  v21 = iDCopy;
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

  v22 = dCopy;
  v23 = infoCopy;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:userID:storefrontID:bundleID:deviceInfo:debugOverrides:backgroundFetchConfiguration:];
  }

  v24 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:0];
  v25 = [RCConfigurationSettings alloc];
  v34[0] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  LOBYTE(v30) = 0;
  v27 = [(RCConfigurationSettings *)v25 initWithRequestInfos:v26 userID:v22 storefrontID:v21 bundleID:bundleIDCopy deviceInfo:v23 debugOverrides:overridesCopy useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v30 endpointTimeoutDuration:configurationCopy fallbackTimeoutDuration:1];

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0
{
  v32[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  infoCopy = info;
  overridesCopy = overrides;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
  }

LABEL_11:
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
    if (infoCopy)
    {
      goto LABEL_16;
    }
  }

  else if (infoCopy)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:];
  }

LABEL_16:
  v22 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy];
  v23 = [RCConfigurationSettings alloc];
  v32[0] = v22;
  [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v24 = v29 = lCopy;
  LOBYTE(v28) = 0;
  v25 = [(RCConfigurationSettings *)v23 initWithRequestInfos:v24 userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v28 endpointTimeoutDuration:0 fallbackTimeoutDuration:0];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 requestMode:(unint64_t)self1
{
  v34[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  infoCopy = info;
  overridesCopy = overrides;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

LABEL_11:
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:requestMode:];
  }

  v23 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy];
  v24 = [RCConfigurationSettings alloc];
  v34[0] = v23;
  [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v31 = keyCopy;
  v26 = v25 = lCopy;
  LOBYTE(v30) = 0;
  v27 = [(RCConfigurationSettings *)v24 initWithRequestInfos:v26 userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v30 endpointTimeoutDuration:0 fallbackTimeoutDuration:mode];

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1
{
  v34[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  infoCopy = info;
  overridesCopy = overrides;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

LABEL_11:
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:];
  }

  v23 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy];
  v24 = [RCConfigurationSettings alloc];
  v34[0] = v23;
  [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v31 = keyCopy;
  v26 = v25 = lCopy;
  LOBYTE(v30) = rate;
  v27 = [(RCConfigurationSettings *)v24 initWithRequestInfos:v26 userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:1.79769313e308 backgroundFetchConfiguration:1.79769313e308 requestMode:v30 endpointTimeoutDuration:0 fallbackTimeoutDuration:0];

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1 requestMode:(unint64_t)self2 endpointTimeoutDuration:(double)self3
{
  v39[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  infoCopy = info;
  overridesCopy = overrides;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

LABEL_11:
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

  v37 = bundleIDCopy;
  v26 = iDCopy;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:requestMode:endpointTimeoutDuration:];
  }

  v27 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy];
  v35 = keyCopy;
  v28 = [RCConfigurationSettings alloc];
  v39[0] = v27;
  [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v30 = v29 = lCopy;
  LOBYTE(v34) = rate;
  v31 = [(RCConfigurationSettings *)v28 initWithRequestInfos:v30 userID:dCopy storefrontID:v26 bundleID:v37 deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:duration backgroundFetchConfiguration:1.79769313e308 requestMode:v34 endpointTimeoutDuration:0 fallbackTimeoutDuration:mode];

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1 backgroundFetchConfiguration:(id)self2 requestMode:(unint64_t)self3 endpointTimeoutDuration:(double)self4 fallbackTimeoutDuration:(double)self5
{
  v38[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  infoCopy = info;
  overridesCopy = overrides;
  configurationCopy = configuration;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_11:
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v27 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy];
  v28 = [RCConfigurationSettings alloc];
  v38[0] = v27;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  LOBYTE(v33) = rate;
  v30 = [(RCConfigurationSettings *)v28 initWithRequestInfos:v29 userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:duration backgroundFetchConfiguration:1.79769313e308 requestMode:v33 endpointConfig:configurationCopy endpointTimeoutDuration:mode fallbackTimeoutDuration:0];

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (RCConfigurationSettings)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)self0 useBackgroundRefreshRate:(BOOL)self1 backgroundFetchConfiguration:(id)self2 requestMode:(unint64_t)self3 endpointConfig:(id)self4 endpointTimeoutDuration:(double)self5 fallbackTimeoutDuration:(double)self6
{
  v42[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  infoCopy = info;
  overridesCopy = overrides;
  configurationCopy = configuration;
  configCopy = config;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_11:
  if (!bundleIDCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v39 = iDCopy;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestKey:responseKey:fallbackURL:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v29 = [[RCRequestInfo alloc] initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy];
  v30 = [RCConfigurationSettings alloc];
  v42[0] = v29;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  LOBYTE(v34) = rate;
  v35 = [(RCConfigurationSettings *)v30 initWithRequestInfos:v31 userID:dCopy storefrontID:v39 bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:duration backgroundFetchConfiguration:timeoutDuration requestMode:v34 endpointConfig:configurationCopy endpointTimeoutDuration:mode fallbackTimeoutDuration:configCopy];

  v32 = *MEMORY[0x277D85DE8];
  return v35;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides
{
  overridesCopy = overrides;
  infoCopy = info;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  infosCopy = infos;
  LOBYTE(v22) = 0;
  v20 = [[RCConfigurationSettings alloc] initWithRequestInfos:infosCopy userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:1.79769313e308 requestMode:1.79769313e308 endpointTimeoutDuration:v22 fallbackTimeoutDuration:0];

  return v20;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate
{
  overridesCopy = overrides;
  infoCopy = info;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  infosCopy = infos;
  LOBYTE(v23) = rate;
  v21 = [[RCConfigurationSettings alloc] initWithRequestInfos:infosCopy userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:1.79769313e308 requestMode:1.79769313e308 endpointTimeoutDuration:v23 fallbackTimeoutDuration:0];

  return v21;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate requestMode:(unint64_t)self0
{
  overridesCopy = overrides;
  infoCopy = info;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  infosCopy = infos;
  LOBYTE(v24) = rate;
  v22 = [[RCConfigurationSettings alloc] initWithRequestInfos:infosCopy userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:1.79769313e308 requestMode:1.79769313e308 endpointTimeoutDuration:v24 fallbackTimeoutDuration:mode];

  return v22;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate requestMode:(unint64_t)self0 endpointTimeoutDuration:(double)self1
{
  overridesCopy = overrides;
  infoCopy = info;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  infosCopy = infos;
  LOBYTE(v26) = rate;
  v24 = [[RCConfigurationSettings alloc] initWithRequestInfos:infosCopy userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:duration requestMode:1.79769313e308 endpointTimeoutDuration:v26 fallbackTimeoutDuration:mode];

  return v24;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate requestMode:(unint64_t)self0 endpointTimeoutDuration:(double)self1 fallbackTimeoutDuration:(double)self2
{
  overridesCopy = overrides;
  infoCopy = info;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  infosCopy = infos;
  LOBYTE(v28) = rate;
  v26 = [[RCConfigurationSettings alloc] initWithRequestInfos:infosCopy userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:duration backgroundFetchConfiguration:timeoutDuration requestMode:v28 endpointTimeoutDuration:0 fallbackTimeoutDuration:mode];

  return v26;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate backgroundFetchConfiguration:(id)self0 requestMode:(unint64_t)self1 endpointTimeoutDuration:(double)self2 fallbackTimeoutDuration:(double)self3
{
  configurationCopy = configuration;
  overridesCopy = overrides;
  infoCopy = info;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  infosCopy = infos;
  LOBYTE(v30) = rate;
  v28 = [[RCConfigurationSettings alloc] initWithRequestInfos:infosCopy userID:dCopy storefrontID:iDCopy bundleID:bundleIDCopy deviceInfo:infoCopy debugOverrides:overridesCopy useBackgroundRefreshRate:duration backgroundFetchConfiguration:timeoutDuration requestMode:v30 endpointConfig:configurationCopy endpointTimeoutDuration:mode fallbackTimeoutDuration:0];

  return v28;
}

- (RCConfigurationSettings)initWithRequestInfos:(id)infos userID:(id)d storefrontID:(id)iD bundleID:(id)bundleID deviceInfo:(id)info debugOverrides:(id)overrides useBackgroundRefreshRate:(BOOL)rate backgroundFetchConfiguration:(id)self0 requestMode:(unint64_t)self1 endpointConfig:(id)self2 endpointTimeoutDuration:(double)self3 fallbackTimeoutDuration:(double)self4
{
  infosCopy = infos;
  dCopy = d;
  dCopy2 = d;
  iDCopy = iD;
  iDCopy2 = iD;
  bundleIDCopy = bundleID;
  bundleIDCopy2 = bundleID;
  infoCopy = info;
  infoCopy2 = info;
  overridesCopy = overrides;
  configurationCopy = configuration;
  configCopy = config;
  if (!infosCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (dCopy2)
    {
      goto LABEL_6;
    }
  }

  else if (dCopy2)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_6:
  if (!iDCopy2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
    if (bundleIDCopy2)
    {
      goto LABEL_11;
    }
  }

  else if (bundleIDCopy2)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

LABEL_11:
  if (!infoCopy2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationSettings initWithRequestInfos:userID:storefrontID:bundleID:deviceInfo:debugOverrides:useBackgroundRefreshRate:backgroundFetchConfiguration:requestMode:endpointConfig:endpointTimeoutDuration:fallbackTimeoutDuration:];
  }

  v40.receiver = self;
  v40.super_class = RCConfigurationSettings;
  v28 = [(RCConfigurationSettings *)&v40 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_requestInfos, infos);
    objc_storeStrong(&v29->_userID, dCopy);
    objc_storeStrong(&v29->_storefrontID, iDCopy);
    objc_storeStrong(&v29->_bundleID, bundleIDCopy);
    objc_storeStrong(&v29->_deviceInfo, infoCopy);
    objc_storeStrong(&v29->_internalDebugOverrides, overrides);
    v29->_internalUseBackgroundRefreshRate = rate;
    objc_storeStrong(&v29->_internalBackgroundFetchConfiguration, configuration);
    v29->_internalRequestMode = mode;
    objc_storeStrong(&v29->_internalEndpointConfig, config);
    v29->_internalEndpointTimeoutDuration = duration;
    v29->_internalFallbackTimeoutDuration = timeoutDuration;
    v30 = objc_alloc_init(RCUnfairLock);
    accessLock = v29->_accessLock;
    v29->_accessLock = v30;
  }

  return v29;
}

- (void)setDebugOverrides:(id)overrides
{
  overridesCopy = overrides;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__RCConfigurationSettings_setDebugOverrides___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = overridesCopy;
  v6 = overridesCopy;
  [accessLock performWithLockSync:v7];
}

- (void)setLoggingKey:(id)key
{
  keyCopy = key;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__RCConfigurationSettings_setLoggingKey___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  [accessLock performWithLockSync:v7];
}

- (NSString)loggingKey
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__RCConfigurationSettings_loggingKey__block_invoke;
  v10[3] = &unk_27822F288;
  v10[4] = self;
  v10[5] = &v11;
  [accessLock performWithLockSync:v10];

  v4 = v12[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    requestInfos = [(RCConfigurationSettings *)self requestInfos];
    v5 = [v6 stringWithFormat:@"<%@: %p requestInfos: %@>", v7, self, requestInfos];;
  }

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)setBackgroundFetchConfiguration:(id)configuration
{
  configurationCopy = configuration;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RCConfigurationSettings_setBackgroundFetchConfiguration___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [accessLock performWithLockSync:v7];
}

- (RCBackgroundFetchConfiguration)backgroundFetchConfiguration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__RCConfigurationSettings_backgroundFetchConfiguration__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setUseBackgroundRefreshRate:(BOOL)rate
{
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__RCConfigurationSettings_setUseBackgroundRefreshRate___block_invoke;
  v6[3] = &unk_27822FE90;
  v6[4] = self;
  rateCopy = rate;
  [accessLock performWithLockSync:v6];
}

- (void)setRequestMode:(unint64_t)mode
{
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__RCConfigurationSettings_setRequestMode___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  v6[5] = mode;
  [accessLock performWithLockSync:v6];
}

- (void)setEndpointConfig:(id)config
{
  configCopy = config;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__RCConfigurationSettings_setEndpointConfig___block_invoke;
  v7[3] = &unk_27822F130;
  v7[4] = self;
  v8 = configCopy;
  v6 = configCopy;
  [accessLock performWithLockSync:v7];
}

- (void)setEndpointTimeoutDuration:(double)duration
{
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RCConfigurationSettings_setEndpointTimeoutDuration___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  *&v6[5] = duration;
  [accessLock performWithLockSync:v6];
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
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__RCConfigurationSettings_endpointTimeoutDuration__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

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

- (void)setFallbackTimeoutDuration:(double)duration
{
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RCConfigurationSettings_setFallbackTimeoutDuration___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  *&v6[5] = duration;
  [accessLock performWithLockSync:v6];
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
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__RCConfigurationSettings_fallbackTimeoutDuration__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

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

- (void)setApplicationState:(unint64_t)state
{
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RCConfigurationSettings_setApplicationState___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  v6[5] = state;
  [accessLock performWithLockSync:v6];
}

- (unint64_t)applicationState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessLock = [(RCConfigurationSettings *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__RCConfigurationSettings_applicationState__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

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