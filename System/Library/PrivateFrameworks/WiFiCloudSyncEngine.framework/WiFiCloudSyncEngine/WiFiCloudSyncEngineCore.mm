@interface WiFiCloudSyncEngineCore
- (id)readCompleteKVStore;
- (uint64_t)queryKeychainSyncState;
- (void)addToKVStore:(id)a3 synchronize:(BOOL)a4;
- (void)clearKVS;
- (void)dealloc;
- (void)dispatchUbiquitousKeyValueStoreDidChangeOnBackground:(id)a3;
- (void)enableIcloudSyncing:(BOOL)a3 ForBundleId:(id)a4;
- (void)printCompleteKVStore;
- (void)pruneKVSStoreAndReply:(id)a3;
- (void)queryKeychainSyncState;
- (void)readStoreValueForKey:(id)a3;
- (void)registerCallback:(void *)a3 context:(void *)a4;
- (void)registerCallback:(void *)a3 queue:(id)a4 context:(void *)a5;
- (void)relayCloudCleanUpEvent;
- (void)relayCloudEvent:(id)a3;
- (void)relayKeychainSyncState:(id)a3;
- (void)relayMergeNetworks:(id)a3;
- (void)relayPruneKVSStore:(id)a3;
- (void)relayReadStoreValueAction:(id)a3;
- (void)removeFromKVStore:(id)a3;
- (void)subscribeKVStoreNotficationsForBundleId:(id)a3;
- (void)synchronizeAndCallMergeNetworksAndReply:(id)a3;
- (void)synchronizeKVS;
- (void)ubiquitousKeyValueStoreDidChange:(id)a3;
- (void)unSubscribeKVStoreNotfications;
@end

@implementation WiFiCloudSyncEngineCore

- (void)registerCallback:(void *)a3 context:(void *)a4
{
  v7 = *MEMORY[0x277D85DE8];
  [(WiFiCloudSyncEngineCore *)self setContext:a4];
  [(WiFiCloudSyncEngineCore *)self setCallback:a3];
  -[WiFiCloudSyncEngineCore setClientThread:](self, "setClientThread:", [MEMORY[0x277CCACC8] currentThread]);
  [(WiFiCloudSyncEngineCore *)self setClientQueue:0];
  [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerCallback:(void *)a3 queue:(id)a4 context:(void *)a5
{
  v9 = *MEMORY[0x277D85DE8];
  [(WiFiCloudSyncEngineCore *)self setContext:a5];
  [(WiFiCloudSyncEngineCore *)self setCallback:a3];
  [(WiFiCloudSyncEngineCore *)self setClientThread:0];
  [(WiFiCloudSyncEngineCore *)self setClientQueue:a4];
  [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(WiFiCloudSyncEngineCore *)self unSubscribeKVStoreNotfications];
  v3.receiver = self;
  v3.super_class = WiFiCloudSyncEngineCore;
  [(WiFiCloudSyncEngineCore *)&v3 dealloc];
}

- (void)synchronizeKVS
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] synchronize];
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    _os_log_send_and_compose_impl();
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addToKVStore:(id)a3 synchronize:(BOOL)a4
{
  v72 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    goto LABEL_45;
  }

  v4 = a4;
  if (![(WiFiCloudSyncEngineCore *)self iCloudSyncingEnabled])
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    goto LABEL_45;
  }

  v7 = [a3 allKeys];
  if (!v7 || (v8 = v7, ![v7 count]))
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    goto LABEL_45;
  }

  v9 = [v8 objectAtIndex:0];
  v10 = [a3 objectForKey:v9];
  if (!v9 || (v11 = v10) == 0)
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    goto LABEL_45;
  }

  v12 = [v9 lengthOfBytesUsingEncoding:4];
  v13 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] maximumKeyLength];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v60 = 136316418;
    v61 = "[WiFiCloudSyncEngineCore addToKVStore:synchronize:]";
    v62 = 2080;
    v63 = "WiFiCloudSyncEngineCore.m";
    v64 = 1024;
    v65 = 155;
    v66 = 2112;
    v67 = v9;
    v68 = 2048;
    v69 = v12;
    v70 = 2048;
    v71 = v13;
    LODWORD(v50) = 58;
    v48 = &v60;
    _os_log_send_and_compose_impl();
  }

  if (v12 >= v13 + 1)
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    goto LABEL_45;
  }

  v14 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] objectForKey:v9];
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 mutableCopy];
    if ([(WiFiCloudSyncEngineCore *)self isKVSEncrypted])
    {
      v57 = v4;
      v52 = [v15 objectForKeyedSubscript:@"addedAt"];
      v53 = [v15 objectForKeyedSubscript:@"lastJoinedByUserAt"];
      v54 = [v15 objectForKeyedSubscript:@"lastJoinedBySystemAtWeek"];
      *(&v56 + 1) = [v15 objectForKeyedSubscript:@"removedAt"];
      v55 = [v15 objectForKeyedSubscript:@"was6GHzOnlyAtWeek"];
      v17 = [v11 objectForKeyedSubscript:@"addedAt"];
      v18 = [v11 objectForKeyedSubscript:@"lastJoinedByUserAt"];
      v19 = [v11 objectForKeyedSubscript:@"lastJoinedBySystemAtWeek"];
      *&v56 = [v11 objectForKeyedSubscript:@"removedAt"];
      v20 = [v11 objectForKeyedSubscript:@"was6GHzOnlyAtWeek"];
      [v16 addEntriesFromDictionary:v11];
      if (v52 | v17)
      {
        v21 = MEMORY[0x277CBEAA8];
        [v52 timeIntervalSinceReferenceDate];
        v23 = v22;
        [v17 timeIntervalSinceReferenceDate];
        if (v23 >= v24)
        {
          v24 = v23;
        }

        [v16 setObject:objc_msgSend(v21 forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", v24, v48, v50), @"addedAt"}];
      }

      if (v53 | v18)
      {
        v25 = MEMORY[0x277CBEAA8];
        [v53 timeIntervalSinceReferenceDate];
        v27 = v26;
        [v18 timeIntervalSinceReferenceDate];
        if (v27 >= v28)
        {
          v28 = v27;
        }

        [v16 setObject:objc_msgSend(v25 forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", v28, v48, v50), @"lastJoinedByUserAt"}];
      }

      if (v54 | v19)
      {
        v29 = MEMORY[0x277CCABB0];
        v30 = [v54 unsignedIntegerValue];
        v31 = [v19 unsignedIntegerValue];
        if (v30 <= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30;
        }

        [v16 setObject:objc_msgSend(v29 forKeyedSubscript:{"numberWithUnsignedInteger:", v32, v48, v50), @"lastJoinedBySystemAtWeek"}];
      }

      if (v55 | v20)
      {
        v33 = MEMORY[0x277CCABB0];
        v34 = [v55 unsignedIntegerValue];
        v35 = [v20 unsignedIntegerValue];
        if (v34 <= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = v34;
        }

        [v16 setObject:objc_msgSend(v33 forKeyedSubscript:{"numberWithUnsignedInteger:", v36, v48, v50), @"was6GHzOnlyAtWeek"}];
      }

      if (v56 != 0)
      {
        v37 = MEMORY[0x277CBEAA8];
        [*(&v56 + 1) timeIntervalSinceReferenceDate];
        v39 = v38;
        [v56 timeIntervalSinceReferenceDate];
        if (v39 >= v40)
        {
          v40 = v39;
        }

        [v16 setObject:objc_msgSend(v37 forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", v40, v48, v50), @"removedAt"}];
      }

      v41 = [v15 objectForKeyedSubscript:{@"addedByVersion", v48, v50}];
      if (v41)
      {
        [v16 setObject:v41 forKeyedSubscript:@"addedByVersion"];
      }

      [v16 setObject:0 forKeyedSubscript:@"BSSID"];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWEP", @"isWEP"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWAPI", @"isWAPI"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWPA", @"isWPA"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWPA2", @"isWPA2"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWPA3", @"isWPA3"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isOpen", @"isOpen"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isPSK", @"isPSK"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isEAP", @"isEAP"}];
      if (([v16 isEqualToDictionary:v15] & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v60 = 136316418;
          v61 = "[WiFiCloudSyncEngineCore addToKVStore:synchronize:]";
          v62 = 2080;
          v63 = "WiFiCloudSyncEngineCore.m";
          v64 = 1024;
          v65 = 236;
          v66 = 2112;
          v67 = v9;
          v68 = 2112;
          v69 = v15;
          v70 = 2112;
          v71 = v16;
          LODWORD(v51) = 58;
          v49 = &v60;
          _os_log_send_and_compose_impl();
        }

        [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore:v49] setObject:v16 forKey:v9];
        if (v57)
        {
          v42 = self;
          global_queue = dispatch_get_global_queue(0, 0);
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke;
          v59[3] = &unk_279EBBAB8;
          v59[4] = self;
          v44 = v59;
LABEL_44:
          dispatch_async(global_queue, v44);
        }
      }
    }

    else
    {
      [v16 addEntriesFromDictionary:v11];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"WEP", @"WEP"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"WPA_IE", @"WPA_IE"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"RSN_IE", @"RSN_IE"}];
      [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"WPA3_RSN_IE", @"WPA3_RSN_IE"}];
      v47 = [v15 objectForKeyedSubscript:@"addedByVersion"];
      if (v47)
      {
        [v16 setObject:v47 forKeyedSubscript:@"addedByVersion"];
      }

      [v16 setObject:0 forKeyedSubscript:{@"BSSID", v48, v50}];
      if (([v16 isEqualToDictionary:v15] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v60 = 136316418;
        v61 = "[WiFiCloudSyncEngineCore addToKVStore:synchronize:]";
        v62 = 2080;
        v63 = "WiFiCloudSyncEngineCore.m";
        v64 = 1024;
        v65 = 291;
        v66 = 2112;
        v67 = v9;
        v68 = 2112;
        v69 = v15;
        v70 = 2112;
        v71 = v16;
        _os_log_send_and_compose_impl();
      }
    }
  }

  else
  {
    [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore:v48] setObject:v11 forKey:v9];
    if (v4)
    {
      v45 = self;
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke_62;
      block[3] = &unk_279EBBAB8;
      block[4] = self;
      v44 = block;
      goto LABEL_44;
    }
  }

LABEL_45:
  v46 = *MEMORY[0x277D85DE8];
}

void __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

void __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke_62(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)removeFromKVStore:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [(WiFiCloudSyncEngineCore *)self iCloudSyncingEnabled];
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v6)
      {
        v13 = 136315906;
        v14 = "[WiFiCloudSyncEngineCore removeFromKVStore:]";
        v15 = 2080;
        v16 = "WiFiCloudSyncEngineCore.m";
        v17 = 1024;
        v18 = 323;
        v19 = 2112;
        v20 = a3;
        LODWORD(v11) = 38;
        v10 = &v13;
        _os_log_send_and_compose_impl();
      }

      [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore:v10] removeObjectForKey:a3];
      v7 = self;
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__WiFiCloudSyncEngineCore_removeFromKVStore___block_invoke;
      block[3] = &unk_279EBBAB8;
      block[4] = self;
      dispatch_async(global_queue, block);
    }

    else
    {
      [WiFiCloudSyncEngineCore removeFromKVStore:v6];
    }
  }

  else
  {
    [WiFiCloudSyncEngineCore removeFromKVStore:];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __45__WiFiCloudSyncEngineCore_removeFromKVStore___block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)readStoreValueForKey:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!a3)
  {
    [WiFiCloudSyncEngineCore readStoreValueForKey:v5];
    goto LABEL_17;
  }

  if (v5)
  {
    v14 = 136315906;
    v15 = "[WiFiCloudSyncEngineCore readStoreValueForKey:]";
    v16 = 2080;
    v17 = "WiFiCloudSyncEngineCore.m";
    v18 = 1024;
    v19 = 345;
    v20 = 2112;
    v21 = a3;
    LODWORD(v11) = 38;
    v10 = &v14;
    _os_log_send_and_compose_impl();
  }

  v6 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore:v10] objectForKey:a3];
  if ([(WiFiCloudSyncEngineCore *)self clientThread]|| [(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([(WiFiCloudSyncEngineCore *)self clientThread])
      {
        [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayReadStoreValueAction_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:v6 waitUntilDone:1];
      }

      if ([(WiFiCloudSyncEngineCore *)self clientQueue])
      {
        v7 = [(WiFiCloudSyncEngineCore *)self clientQueue];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __48__WiFiCloudSyncEngineCore_readStoreValueForKey___block_invoke;
        v13[3] = &unk_279EBBAE0;
        v13[4] = self;
        v13[5] = v6;
        v8 = v13;
LABEL_16:
        dispatch_sync(v7, v8);
      }
    }

    else
    {
      if ([(WiFiCloudSyncEngineCore *)self clientThread])
      {
        [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayReadStoreValueAction_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:a3 waitUntilDone:1];
      }

      if ([(WiFiCloudSyncEngineCore *)self clientQueue])
      {
        v7 = [(WiFiCloudSyncEngineCore *)self clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__WiFiCloudSyncEngineCore_readStoreValueForKey___block_invoke_2;
        block[3] = &unk_279EBBAE0;
        block[4] = self;
        block[5] = a3;
        v8 = block;
        goto LABEL_16;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[WiFiCloudSyncEngineCore readStoreValueForKey:]";
    v16 = 2080;
    v17 = "WiFiCloudSyncEngineCore.m";
    v18 = 1024;
    v19 = 351;
    _os_log_send_and_compose_impl();
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)relayReadStoreValueAction:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
    v18 = 2080;
    v19 = "WiFiCloudSyncEngineCore.m";
    v20 = 1024;
    v21 = 382;
    LODWORD(v13) = 28;
    v12 = &v16;
    _os_log_send_and_compose_impl();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 objectForKeyedSubscript:@"removedAt"];
    v6 = [a3 objectForKeyedSubscript:@"addedAt"];
    if (v5)
    {
      v7 = v6;
      [v5 timeIntervalSinceReferenceDate];
      v9 = v8;
      [v7 timeIntervalSinceReferenceDate];
      if (v9 > v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
          v18 = 2080;
          v19 = "WiFiCloudSyncEngineCore.m";
          v20 = 1024;
          v21 = 392;
          LODWORD(v13) = 28;
          v12 = &v16;
LABEL_11:
          _os_log_send_and_compose_impl();
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
      v18 = 2080;
      v19 = "WiFiCloudSyncEngineCore.m";
      v20 = 1024;
      v21 = 398;
      LODWORD(v13) = 28;
      v12 = &v16;
      _os_log_send_and_compose_impl();
    }

    WiFiCloudSyncEngineAddNetworkToKnownNetworksList([(WiFiCloudSyncEngineCore *)self context:v12], self, a3);
  }

  else if (![(WiFiCloudSyncEngineCore *)self isKVSEncrypted])
  {
    v14 = @"SSID_STR";
    v15 = a3;
    a3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
      v18 = 2080;
      v19 = "WiFiCloudSyncEngineCore.m";
      v20 = 1024;
      v21 = 408;
      LODWORD(v13) = 28;
      v12 = &v16;
      goto LABEL_11;
    }

LABEL_12:
    WiFiCloudSyncEngineRemoveNetworkFromKnownNetworksList([(WiFiCloudSyncEngineCore *)self context:v12], self, a3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)readCompleteKVStore
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[WiFiCloudSyncEngineCore readCompleteKVStore]";
    v9 = 2080;
    v10 = "WiFiCloudSyncEngineCore.m";
    v11 = 1024;
    v12 = 417;
    LODWORD(v6) = 28;
    v5 = &v7;
    _os_log_send_and_compose_impl();
  }

  result = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore:v5] dictionaryRepresentation];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)printCompleteKVStore
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] synchronize];
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *v9 = 136315650;
    *&v9[4] = "[WiFiCloudSyncEngineCore printCompleteKVStore]";
    *&v9[12] = 2080;
    *&v9[14] = "WiFiCloudSyncEngineCore.m";
    *&v9[22] = 1024;
    *v10 = 428;
    LODWORD(v8) = 28;
    v7 = v9;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *v9 = 136315650;
    *&v9[4] = "[WiFiCloudSyncEngineCore printCompleteKVStore]";
    *&v9[12] = 2080;
    *&v9[14] = "WiFiCloudSyncEngineCore.m";
    *&v9[22] = 1024;
    *v10 = 431;
    LODWORD(v8) = 28;
    v7 = v9;
  }

  _os_log_send_and_compose_impl();
LABEL_7:
  v5 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore:v7] dictionaryRepresentation];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136315906;
    *&v9[4] = "[WiFiCloudSyncEngineCore printCompleteKVStore]";
    *&v9[12] = 2080;
    *&v9[14] = "WiFiCloudSyncEngineCore.m";
    *&v9[22] = 1024;
    *v10 = 435;
    *&v10[4] = 2112;
    *&v10[6] = v5;
    _os_log_send_and_compose_impl();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearKVS
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(WiFiCloudSyncEngineCore *)self isKVSEncrypted];
    v4 = "";
    v22 = "[WiFiCloudSyncEngineCore clearKVS]";
    v24 = "WiFiCloudSyncEngineCore.m";
    v25 = 1024;
    v21 = 136315906;
    v26 = 443;
    v23 = 2080;
    if (v3)
    {
      v4 = "Encrypted ";
    }

    v27 = 2080;
    v28 = v4;
    LODWORD(v14) = 38;
    v13 = &v21;
    _os_log_send_and_compose_impl();
  }

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [-[WiFiCloudSyncEngineCore readCompleteKVStore](self readCompleteKVStore];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] removeObjectForKey:*(*(&v16 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v10 = self;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WiFiCloudSyncEngineCore_clearKVS__block_invoke;
  block[3] = &unk_279EBBAB8;
  block[4] = self;
  dispatch_async(global_queue, block);
  v12 = *MEMORY[0x277D85DE8];
}

void __35__WiFiCloudSyncEngineCore_clearKVS__block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)dispatchUbiquitousKeyValueStoreDidChangeOnBackground:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(WiFiCloudSyncEngineCore *)self clientThread]&& ![(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[WiFiCloudSyncEngineCore dispatchUbiquitousKeyValueStoreDidChangeOnBackground:]";
      v15 = 2080;
      v16 = "WiFiCloudSyncEngineCore.m";
      v17 = 1024;
      v18 = 467;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_17;
  }

  if ([(WiFiCloudSyncEngineCore *)self clientThread])
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    if (v5 == [(WiFiCloudSyncEngineCore *)self clientThread])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[WiFiCloudSyncEngineCore dispatchUbiquitousKeyValueStoreDidChangeOnBackground:]";
        v15 = 2080;
        v16 = "WiFiCloudSyncEngineCore.m";
        v17 = 1024;
        v18 = 473;
        _os_log_send_and_compose_impl();
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __80__WiFiCloudSyncEngineCore_dispatchUbiquitousKeyValueStoreDidChangeOnBackground___block_invoke;
      v12[3] = &unk_279EBBAE0;
      v12[4] = self;
      v12[5] = a3;
      v9 = v12;
      goto LABEL_16;
    }
  }

  if ([(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    current_queue = dispatch_get_current_queue();
    if (current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[WiFiCloudSyncEngineCore dispatchUbiquitousKeyValueStoreDidChangeOnBackground:]";
        v15 = 2080;
        v16 = "WiFiCloudSyncEngineCore.m";
        v17 = 1024;
        v18 = 481;
        _os_log_send_and_compose_impl();
      }

      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__WiFiCloudSyncEngineCore_dispatchUbiquitousKeyValueStoreDidChangeOnBackground___block_invoke_70;
      block[3] = &unk_279EBBAE0;
      block[4] = self;
      block[5] = a3;
      v9 = block;
LABEL_16:
      dispatch_async(global_queue, v9);
LABEL_17:
      v10 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  [(WiFiCloudSyncEngineCore *)self ubiquitousKeyValueStoreDidChange:a3];
}

- (void)ubiquitousKeyValueStoreDidChange:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [objc_msgSend(v4 objectForKey:{*MEMORY[0x277CCA7B0]), "intValue"}];
  v6 = [v4 objectForKey:*MEMORY[0x277CCA7B8]];
  if ([(WiFiCloudSyncEngineCore *)self clientThread]|| [(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    if ([v6 indexOfObject:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"] == 0x7FFFFFFFFFFFFFFFLL || !-[NSUbiquitousKeyValueStore objectForKey:](-[WiFiCloudSyncEngineCore keyValueStore](self, "keyValueStore"), "objectForKey:", @"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"))
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = "[WiFiCloudSyncEngineCore ubiquitousKeyValueStoreDidChange:]";
      v18 = 2080;
      v19 = "WiFiCloudSyncEngineCore.m";
      v20 = 1024;
      v21 = 509;
      v22 = 1024;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      LODWORD(v13) = 44;
      v12 = &v16;
      _os_log_send_and_compose_impl();
    }

    if ([(WiFiCloudSyncEngineCore *)self clientThread:v12])
    {
      [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayCloudCleanUpEvent onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:0 waitUntilDone:0];
    }

    if ([(WiFiCloudSyncEngineCore *)self clientQueue])
    {
      v7 = [(WiFiCloudSyncEngineCore *)self clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__WiFiCloudSyncEngineCore_ubiquitousKeyValueStoreDidChange___block_invoke;
      block[3] = &unk_279EBBAB8;
      block[4] = self;
      dispatch_async(v7, block);
    }

    if (v5 >= 2)
    {
LABEL_12:
      v8 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v8 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v5), @"reason", v6, @"changedKeys", 0}];
      if ([(WiFiCloudSyncEngineCore *)self clientThread])
      {
        [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayCloudEvent_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:v9 waitUntilDone:0];
      }

      if ([(WiFiCloudSyncEngineCore *)self clientQueue])
      {
        v10 = [(WiFiCloudSyncEngineCore *)self clientQueue];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __60__WiFiCloudSyncEngineCore_ubiquitousKeyValueStoreDidChange___block_invoke_2;
        v14[3] = &unk_279EBBAE0;
        v14[4] = self;
        v14[5] = v9;
        dispatch_async(v10, v14);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[WiFiCloudSyncEngineCore ubiquitousKeyValueStoreDidChange:]";
    v18 = 2080;
    v19 = "WiFiCloudSyncEngineCore.m";
    v20 = 1024;
    v21 = 501;
    _os_log_send_and_compose_impl();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)enableIcloudSyncing:(BOOL)a3 ForBundleId:(id)a4
{
  v5 = a3;
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  if (v5)
  {
    [(WiFiCloudSyncEngineCore *)self subscribeKVStoreNotficationsForBundleId:a4];
    [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:1];
  }

  else
  {
    [(WiFiCloudSyncEngineCore *)self unSubscribeKVStoreNotfications];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)subscribeKVStoreNotficationsForBundleId:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(WiFiCloudSyncEngineCore *)self isKVSEncrypted];
  v6 = objc_alloc(MEMORY[0x277CCAD80]);
  if (v5)
  {
    self->keyValueStore = [v6 _initWithStoreIdentifier:@"com.apple.wifi.syncable-networks" usingEndToEndEncryption:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = "[WiFiCloudSyncEngineCore subscribeKVStoreNotficationsForBundleId:]";
      v14 = 2080;
      v15 = "WiFiCloudSyncEngineCore.m";
      v16 = 1024;
      v17 = 559;
      v18 = 2112;
      v19 = a3;
      v20 = 2112;
      v21 = @"com.apple.wifi.syncable-networks";
LABEL_6:
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    self->keyValueStore = [v6 initWithBundleIdentifier:a3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = "[WiFiCloudSyncEngineCore subscribeKVStoreNotficationsForBundleId:]";
      v14 = 2080;
      v15 = "WiFiCloudSyncEngineCore.m";
      v16 = 1024;
      v17 = 569;
      v18 = 2112;
      v19 = a3;
      v20 = 2112;
      v21 = @"com.apple.wifid.known-networks";
      goto LABEL_6;
    }
  }

  v7 = self;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WiFiCloudSyncEngineCore_subscribeKVStoreNotficationsForBundleId___block_invoke;
  block[3] = &unk_279EBBAB8;
  block[4] = self;
  dispatch_async(global_queue, block);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_dispatchUbiquitousKeyValueStoreDidChangeOnBackground_ name:*MEMORY[0x277CCA7C0] object:{-[WiFiCloudSyncEngineCore keyValueStore](self, "keyValueStore")}];
  v10 = *MEMORY[0x277D85DE8];
}

void __67__WiFiCloudSyncEngineCore_subscribeKVStoreNotficationsForBundleId___block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)unSubscribeKVStoreNotfications
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[WiFiCloudSyncEngineCore unSubscribeKVStoreNotfications]";
    v8 = 2080;
    v9 = "WiFiCloudSyncEngineCore.m";
    v10 = 1024;
    v11 = 589;
    LODWORD(v5) = 28;
    v4 = &v6;
    _os_log_send_and_compose_impl();
  }

  [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:0, v4, v5];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->keyValueStore = 0;
  v3 = *MEMORY[0x277D85DE8];
}

- (void)relayPruneKVSStore:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") || (v5 = [MEMORY[0x277CCACC8] currentThread], v5 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = "[WiFiCloudSyncEngineCore relayPruneKVSStore:]";
        v12 = 2080;
        v13 = "WiFiCloudSyncEngineCore.m";
        v14 = 1024;
        v15 = 615;
        LODWORD(v9) = 28;
        v8 = &v10;
        _os_log_send_and_compose_impl();
      }

      WiFiCloudSyncEnginePruneNetworksInCloud([(WiFiCloudSyncEngineCore *)self context:v8], self, a3);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[WiFiCloudSyncEngineCore relayPruneKVSStore:]";
      v12 = 2080;
      v13 = "WiFiCloudSyncEngineCore.m";
      v14 = 1024;
      v15 = 611;
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[WiFiCloudSyncEngineCore relayPruneKVSStore:]";
    v12 = 2080;
    v13 = "WiFiCloudSyncEngineCore.m";
    v14 = 1024;
    v15 = 606;
LABEL_9:
    _os_log_send_and_compose_impl();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pruneKVSStoreAndReply:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[WiFiCloudSyncEngineCore pruneKVSStoreAndReply:]";
    v15 = 2080;
    v16 = "WiFiCloudSyncEngineCore.m";
    v17 = 1024;
    v18 = 622;
    LODWORD(v11) = 28;
    v10 = &v13;
    _os_log_send_and_compose_impl();
  }

  v5 = [(WiFiCloudSyncEngineCore *)self readCompleteKVStore:v10];
  if (!v5 || (v6 = v5, -[WiFiCloudSyncEngineCore removeFromKVStore:](self, "removeFromKVStore:", @"WiFiCloudSyncEngineNonSSIDKeyPrefix_KVSVersion"), (v7 = [objc_msgSend(v6 objectForKey:{@"WiFiCloudSyncEngineNonSSIDKeyPrefix_NonNetworkContainer", "objectForKey:", @"WiFiCloudSyncEngineNonSSIDKeyPrefix_KVSVersion"}]) != 0) && objc_msgSend(v7, "intValue") > 1)
  {
    if (a3)
    {
      (*(a3 + 2))(a3);
    }
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__WiFiCloudSyncEngineCore_pruneKVSStoreAndReply___block_invoke;
    block[3] = &unk_279EBBB08;
    block[4] = self;
    block[5] = v6;
    block[6] = a3;
    dispatch_async(global_queue, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__WiFiCloudSyncEngineCore_pruneKVSStoreAndReply___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) clientThread])
  {
    [*(a1 + 32) performSelector:sel_relayPruneKVSStore_ onThread:objc_msgSend(*(a1 + 32) withObject:"clientThread") waitUntilDone:{*(a1 + 40), 1}];
  }

  if ([*(a1 + 32) clientQueue])
  {
    v2 = [*(a1 + 32) clientQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __49__WiFiCloudSyncEngineCore_pruneKVSStoreAndReply___block_invoke_2;
    v4[3] = &unk_279EBBAE0;
    v5 = *(a1 + 32);
    dispatch_sync(v2, v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)relayCloudEvent:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(WiFiCloudSyncEngineCore *)self clientThread])
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    if (v5 != [(WiFiCloudSyncEngineCore *)self clientThread])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  if ([(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    current_queue = dispatch_get_current_queue();
    if (current_queue != [(WiFiCloudSyncEngineCore *)self clientQueue])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        _os_log_send_and_compose_impl();
      }

LABEL_13:
      v9 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  if (![(WiFiCloudSyncEngineCore *)self callback])
  {
    goto LABEL_13;
  }

  v10 = [(WiFiCloudSyncEngineCore *)self callback];
  v7 = [(WiFiCloudSyncEngineCore *)self context];
  v8 = *MEMORY[0x277D85DE8];

  v10(self, a3, v7);
}

- (void)relayCloudCleanUpEvent
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(WiFiCloudSyncEngineCore *)self clientThread])
  {
    v3 = [MEMORY[0x277CCACC8] currentThread];
    if (v3 != [(WiFiCloudSyncEngineCore *)self clientThread])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  if ([(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    current_queue = dispatch_get_current_queue();
    if (current_queue != [(WiFiCloudSyncEngineCore *)self clientQueue])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        _os_log_send_and_compose_impl();
      }

LABEL_9:
      v5 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  [(WiFiCloudSyncEngineCore *)self removeFromKVStore:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"];
}

- (void)relayMergeNetworks:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") || (v5 = [MEMORY[0x277CCACC8] currentThread], v5 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = "[WiFiCloudSyncEngineCore relayMergeNetworks:]";
        v12 = 2080;
        v13 = "WiFiCloudSyncEngineCore.m";
        v14 = 1024;
        v15 = 714;
        LODWORD(v9) = 28;
        v8 = &v10;
        _os_log_send_and_compose_impl();
      }

      WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS([(WiFiCloudSyncEngineCore *)self context:v8], self, a3);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[WiFiCloudSyncEngineCore relayMergeNetworks:]";
      v12 = 2080;
      v13 = "WiFiCloudSyncEngineCore.m";
      v14 = 1024;
      v15 = 710;
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[WiFiCloudSyncEngineCore relayMergeNetworks:]";
    v12 = 2080;
    v13 = "WiFiCloudSyncEngineCore.m";
    v14 = 1024;
    v15 = 705;
LABEL_9:
    _os_log_send_and_compose_impl();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeAndCallMergeNetworksAndReply:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[WiFiCloudSyncEngineCore synchronizeAndCallMergeNetworksAndReply:]";
    v13 = 2080;
    v14 = "WiFiCloudSyncEngineCore.m";
    v15 = 1024;
    v16 = 721;
    LODWORD(v9) = 28;
    v8 = &v11;
    _os_log_send_and_compose_impl();
  }

  [(WiFiCloudSyncEngineCore *)self synchronizeKVS:v8];
  v5 = [(WiFiCloudSyncEngineCore *)self readCompleteKVStore];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WiFiCloudSyncEngineCore_synchronizeAndCallMergeNetworksAndReply___block_invoke;
  block[3] = &unk_279EBBB08;
  block[4] = v5;
  block[5] = self;
  block[6] = a3;
  dispatch_async(global_queue, block);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __67__WiFiCloudSyncEngineCore_synchronizeAndCallMergeNetworksAndReply___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([*(a1 + 40) clientThread])
    {
      [*(a1 + 40) performSelector:sel_relayMergeNetworks_ onThread:objc_msgSend(*(a1 + 40) withObject:"clientThread") waitUntilDone:{*(a1 + 32), 1}];
    }

    if ([*(a1 + 40) clientQueue])
    {
      v2 = [*(a1 + 40) clientQueue];
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __67__WiFiCloudSyncEngineCore_synchronizeAndCallMergeNetworksAndReply___block_invoke_2;
      v4[3] = &unk_279EBBAE0;
      v5 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      dispatch_sync(v2, v4);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)queryKeychainSyncState
{
  if ([(WiFiCloudSyncEngineCore *)self context])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:WiFiCloudSyncEngineIsRunning() != 0];
    if ([(WiFiCloudSyncEngineCore *)self clientThread])
    {
      [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayKeychainSyncState_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:v3 waitUntilDone:1];
    }

    if ([(WiFiCloudSyncEngineCore *)self clientQueue])
    {
      v4 = [(WiFiCloudSyncEngineCore *)self clientQueue];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __49__WiFiCloudSyncEngineCore_queryKeychainSyncState__block_invoke;
      v5[3] = &unk_279EBBAE0;
      v5[4] = self;
      v5[5] = v3;
      dispatch_sync(v4, v5);
    }
  }

  else
  {
    [WiFiCloudSyncEngineCore queryKeychainSyncState];
  }
}

- (void)relayKeychainSyncState:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(WiFiCloudSyncEngineCore *)self context];
  if (a3)
  {
    LODWORD(a3) = [a3 BOOLValue];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[WiFiCloudSyncEngineCore relayKeychainSyncState:]";
    v13 = 2080;
    v14 = "WiFiCloudSyncEngineCore.m";
    v15 = 1024;
    v16 = 785;
    v17 = 1024;
    v18 = a3;
    LODWORD(v10) = 34;
    v9 = &v11;
    _os_log_send_and_compose_impl();
  }

  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread", v9, v10) || (v6 = [MEMORY[0x277CCACC8] currentThread], v6 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {
      if (a3)
      {
        WiFiCloudSyncEngineStartEngine(v5);
      }

      else
      {
        WiFiCloudSyncEngineStopEngine(v5);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[WiFiCloudSyncEngineCore relayKeychainSyncState:]";
      v13 = 2080;
      v14 = "WiFiCloudSyncEngineCore.m";
      v15 = 1024;
      v16 = 793;
      goto LABEL_13;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[WiFiCloudSyncEngineCore relayKeychainSyncState:]";
    v13 = 2080;
    v14 = "WiFiCloudSyncEngineCore.m";
    v15 = 1024;
    v16 = 788;
LABEL_13:
    _os_log_send_and_compose_impl();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)addToKVStore:synchronize:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.4()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)removeFromKVStore:(uint64_t)result .cold.1(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)removeFromKVStore:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)readStoreValueForKey:(uint64_t)result .cold.1(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)queryKeychainSyncState
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    result = OUTLINED_FUNCTION_2();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

@end