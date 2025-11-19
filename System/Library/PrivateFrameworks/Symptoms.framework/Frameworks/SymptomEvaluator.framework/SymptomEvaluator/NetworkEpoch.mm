@interface NetworkEpoch
+ (BOOL)parsePrimaryKey:(id)a3 majorID:(id *)a4 minorID:(id *)a5;
+ (BOOL)parsePrimaryKeyStr:(const char *)a3 majorIDLengthInBytes:(int *)a4 minorIDLengthInBytes:(int *)a5;
+ (BOOL)pruneDataOlderThan:(id)a3 exceptFor:(id)a4 inWorkspace:(id)a5;
+ (id)getNetworkSignatureForAddressFamily:(int)a3 interfaceName:(id)a4 identifier:(id)a5;
+ (id)snapshotsIn:(id)a3 olderThan:(id)a4;
+ (void)resetDataFor:(id)a3 exceptFor:(id)a4 inWorkspace:(id)a5;
+ (void)resetDataForSSIDs:(id)a3 exceptFor:(id)a4 inWorkspace:(id)a5;
- (BOOL)_isLiveRoutePerfinScope:(id)a3 forTime:(id)a4;
- (BOOL)countDownStop:(id)a3 eventTimeStamp:(id)a4;
- (BOOL)createCountDown:(id)a3 atTime:(id)a4 nextTick:(unint64_t)a5 ticksTotal:(unint64_t)a6 onQueue:(id)a7 withIterationBlock:(id)a8 completionBlock:(id)a9;
- (BOOL)hasCountDownActive:(id)a3;
- (BOOL)hasTypicalShortStay;
- (BOOL)matchesLOI:(int64_t)a3;
- (SFLiveRoutePerf)currentLiveRoutePerf;
- (SFNetworkAttachment)durable;
- (id)_createCellSignature;
- (id)_init;
- (id)_initWithPrimaryKey:(id)a3 interfaceName:(id)a4 isCell:(BOOL)a5 maxBars:(int)a6 roamingEvent:(BOOL)a7 roamingAttrs:(int64_t)a8 supportsIPv4:(BOOL)a9 supportsIPv6:(BOOL)a10 inWorkspace:(id)a11 andQueue:(id)a12;
- (id)_networkAttachmentDurableState;
- (id)copyWithZone:(_NSZone *)a3;
- (id)establishPartials:(id)a3 withFlag:(BOOL)a4;
- (id)mapLOIToString;
- (int)compareToSnapshot:(id)a3;
- (int64_t)RTLocationOfInterestTypeForExtended:(int64_t)a3;
- (int64_t)getMatchingRTLocationOfInterestType;
- (void)_retrieveLOIAttrsOnQueue:(id)a3 roamingEvent:(BOOL)a4 roamingAttrs:(int64_t)a5 reply:(id)a6;
- (void)dealloc;
- (void)refreshLOIOnQueue:(id)a3 reply:(id)a4;
- (void)reportAdminDisable;
- (void)reportCaptivityRedirect;
- (void)reportCertError;
- (void)reportDataStall;
- (void)retire;
- (void)setDefRoute4:(__NStatSource *)a3;
- (void)setDefRoute6:(__NStatSource *)a3;
- (void)setLoi:(int64_t)a3;
- (void)unloadDurableState;
- (void)updateMetrics:(id)a3 source:(__NStatSource *)a4 wasProgress:(id)a5;
@end

@implementation NetworkEpoch

- (SFNetworkAttachment)durable
{
  durable = self->_durable;
  if (!durable)
  {
    v4 = [(NetworkEpoch *)self _networkAttachmentDurableState];
    v5 = self->_durable;
    self->_durable = v4;

    durable = self->_durable;
  }

  v6 = durable;

  return v6;
}

- (id)mapLOIToString
{
  v2 = [(NetworkEpoch *)self loi];
  v3 = @"Unknown";
  if (v2 == 261)
  {
    v3 = @"Work";
  }

  if (v2 == 260)
  {
    return @"Home";
  }

  else
  {
    return v3;
  }
}

- (SFLiveRoutePerf)currentLiveRoutePerf
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  if (self->currentLiveRoutePerfObjectID)
  {
    v4 = [(AnalyticsWorkspace *)self->workspace mainObjectContext];
    v5 = [v4 objectWithID:self->currentLiveRoutePerfObjectID];

    if ([v5 isFault])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
      if ([(NetworkEpoch *)self _isLiveRoutePerfinScope:v6 forTime:v3])
      {
        goto LABEL_26;
      }
    }

    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      currentLiveRoutePerfObjectID = self->currentLiveRoutePerfObjectID;
      v9 = v7;
      v10 = [(NSManagedObjectID *)currentLiveRoutePerfObjectID URIRepresentation];
      durable = self->_durable;
      *buf = 134218498;
      v43 = self;
      v44 = 2112;
      v45 = v10;
      v46 = 2048;
      v47 = durable;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "%p failure to fetch %@, recovering, durable: %p", buf, 0x20u);
    }
  }

  else
  {
    v6 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [(NetworkEpoch *)self durable];
  v13 = [v12 hasDefaultRoute];

  v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        if ([(NetworkEpoch *)self _isLiveRoutePerfinScope:v18 forTime:v3])
        {
          v19 = v18;

          v6 = v19;
          goto LABEL_19;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (!v6)
  {
    naspace = self->naspace;
    v21 = [MEMORY[0x277D6B5A0] entityName];
    v6 = [(NetworkAttachmentAnalytics *)naspace createEntityForEntityName:v21];

    [v6 setEpochs:0.0];
    v22 = [(NetworkEpoch *)self durable];
    v23 = [v22 kind];
    [v6 setKind:{objc_msgSend(v23, "shortValue")}];

    v24 = [DateRounder roundToDayResolutionOnly:v3];
    [v6 setTimeStamp:v24];

    [v6 setRttMin:1.79769313e308];
    v25 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      identifier = self->identifier;
      *buf = 134218243;
      v43 = self;
      v44 = 2113;
      v45 = identifier;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "%p creating a new lrp for %{private}@", buf, 0x16u);
    }

    v27 = [(NetworkEpoch *)self durable];
    [v27 addHasDefaultRouteObject:v6];

    v28 = [(NetworkEpoch *)self durable];
    v29 = [v28 hasDefaultRoute];
    v30 = [v29 count];

    if (v30 == 1)
    {
      v31 = [v6 timeStamp];
      v32 = [(NetworkEpoch *)self durable];
      [v32 setFirstTimeStamp:v31];
    }

    [(AnalyticsWorkspace *)self->workspace save];
  }

  v33 = [v6 objectID];
  v34 = self->currentLiveRoutePerfObjectID;
  self->currentLiveRoutePerfObjectID = v33;

  v6 = v6;
LABEL_26:

  v35 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_initWithPrimaryKey:(id)a3 interfaceName:(id)a4 isCell:(BOOL)a5 maxBars:(int)a6 roamingEvent:(BOOL)a7 roamingAttrs:(int64_t)a8 supportsIPv4:(BOOL)a9 supportsIPv6:(BOOL)a10 inWorkspace:(id)a11 andQueue:(id)a12
{
  v68 = a7;
  v79 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v69 = a4;
  v18 = a11;
  v19 = a12;
  v72.receiver = self;
  v72.super_class = NetworkEpoch;
  v20 = [(NetworkEpoch *)&v72 init];
  if (!v20)
  {
LABEL_30:
    v55 = v20;
    goto LABEL_31;
  }

  if (v17)
  {
    v21 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:v18 withCache:0];
    naspace = v20->naspace;
    v20->naspace = v21;

    if (v20->naspace)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
      tickers = v20->tickers;
      v20->tickers = v23;

      if (v20->tickers)
      {
        v25 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
        hasDNS = v20->_hasDNS;
        v20->_hasDNS = v25;

        if (v20->_hasDNS)
        {
          v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
          impDNS = v20->_impDNS;
          v20->_impDNS = v27;

          if (v20->_impDNS)
          {
            v29 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
            hasGW = v20->_hasGW;
            v20->_hasGW = v29;

            if (v20->_hasGW)
            {
              v20->_active = 1;
              v31 = [MEMORY[0x277CBEAA8] date];
              createdAt = v20->createdAt;
              v20->createdAt = v31;

              objc_storeStrong(&v20->identifier, a3);
              objc_storeStrong(&v20->_interfaceName, a4);
              v20->_oncell = a5;
              v20->fromRoamingEvent = v68;
              objc_storeStrong(&v20->workspace, a11);
              v20->_bars = a6;
              v33 = objc_alloc_init(StopWatch);
              overall = v20->_overall;
              v20->_overall = v33;

              [(StopWatch *)v20->_overall start];
              v35 = objc_alloc_init(StopWatch);
              lowLqm = v20->_lowLqm;
              v20->_lowLqm = v35;

              v37 = objc_alloc_init(StopWatch);
              lowq = v20->_lowq;
              v20->_lowq = v37;

              v39 = objc_alloc_init(StopWatch);
              fatal = v20->_fatal;
              v20->_fatal = v39;

              v20->_supportsIPv4 = a9;
              v20->_supportsIPv6 = a10;
              v41 = [(NetworkEpoch *)v20 _networkAttachmentDurableState];
              durable = v20->_durable;
              v20->_durable = v41;

              if (v20->_durable)
              {
                if (!v20->_oncell)
                {
                  v43 = +[WiFiShim sharedInstance];
                  -[SFNetworkAttachment setIsHotSpot:](v20->_durable, "setIsHotSpot:", [v43 isHotspot]);

                  v44 = netepochsLogHandle;
                  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
                  {
                    v45 = v20->_durable;
                    v46 = v44;
                    v47 = [(SFNetworkAttachment *)v45 isHotSpot];
                    v48 = "NO";
                    identifier = v20->identifier;
                    if (v47)
                    {
                      v48 = "YES";
                    }

                    *buf = 136315395;
                    v74 = v48;
                    v75 = 2113;
                    v76 = identifier;
                    _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_INFO, "Set hotspot %s for: %{private}@", buf, 0x16u);
                  }

                  v50 = [(SFNetworkAttachment *)v20->_durable netSignature];
                  if (!v50 || (v51 = v50, [(SFNetworkAttachment *)v20->_durable netSignature], v52 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v52, v51, (isKindOfClass & 1) != 0))
                  {
                    if (v20->_supportsIPv4)
                    {
                      v54 = [NetworkEpoch getNetworkSignatureForAddressFamily:2 interfaceName:v20->_interfaceName identifier:v20->identifier];
                      [(SFNetworkAttachment *)v20->_durable setNetSignature:v54];
                    }

                    else
                    {
                      v56 = netepochsLogHandle;
                      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEFAULT, "No IPv4 route, can't get IPv4 network signature", buf, 2u);
                      }
                    }
                  }

                  v57 = [(SFNetworkAttachment *)v20->_durable netSignatureV6];
                  if (!v57 || (v58 = v57, [(SFNetworkAttachment *)v20->_durable netSignatureV6], v59 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v60 = objc_opt_isKindOfClass(), v59, v58, (v60 & 1) != 0))
                  {
                    if (v20->_supportsIPv6)
                    {
                      v61 = [NetworkEpoch getNetworkSignatureForAddressFamily:30 interfaceName:v20->_interfaceName identifier:v20->identifier];
                      [(SFNetworkAttachment *)v20->_durable setNetSignatureV6:v61];
                    }

                    else
                    {
                      v62 = netepochsLogHandle;
                      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEFAULT, "No IPv6 route, can't get IPv6 network signature", buf, 2u);
                      }
                    }
                  }
                }

                v20->_loi = 259;
                v70[0] = MEMORY[0x277D85DD0];
                v70[1] = 3221225472;
                v70[2] = __138__NetworkEpoch__initWithPrimaryKey_interfaceName_isCell_maxBars_roamingEvent_roamingAttrs_supportsIPv4_supportsIPv6_inWorkspace_andQueue___block_invoke;
                v70[3] = &unk_27898E068;
                v63 = v20;
                v71 = v63;
                [(NetworkEpoch *)v63 _retrieveLOIAttrsOnQueue:v19 roamingEvent:v68 roamingAttrs:a8 reply:v70];
                v63->_seqno = ++epoch_count;
                v64 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218499;
                  v74 = v63;
                  v75 = 2113;
                  v76 = v17;
                  v77 = 1024;
                  v78 = epoch_count;
                  _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEFAULT, "%p created epoch for %{private}@, total epochs=%d", buf, 0x1Cu);
                }

                goto LABEL_30;
              }
            }
          }
        }
      }
    }
  }

  v55 = 0;
LABEL_31:

  v65 = *MEMORY[0x277D85DE8];
  return v55;
}

uint64_t __138__NetworkEpoch__initWithPrimaryKey_interfaceName_isCell_maxBars_roamingEvent_roamingAttrs_supportsIPv4_supportsIPv6_inWorkspace_andQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) RTLocationOfInterestTypeForExtended:a2];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 101))
    {
      v6 = @"cell";
    }

    else
    {
      v6 = @"wifi";
    }

    v10 = 138412802;
    v11 = v6;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "LOI: updateLOI on %@, replying rtLOI: %ld from extended: %ld", &v10, 0x20u);
  }

  if (*(*(a1 + 32) + 101))
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  result = [NetworkAnalyticsEngine updateLOI:v4 forInterfaceType:v7];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)refreshLOIOnQueue:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__NetworkEpoch_refreshLOIOnQueue_reply___block_invoke;
  v8[3] = &unk_27898E090;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(NetworkEpoch *)self _retrieveLOIAttrsOnQueue:a3 roamingEvent:0 roamingAttrs:259 reply:v8];
}

uint64_t __40__NetworkEpoch_refreshLOIOnQueue_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) RTLocationOfInterestTypeForExtended:a2];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = v4;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "LOI: refreshLOIOnQueue replying rtLOI:%ld from extended:%ld", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_retrieveLOIAttrsOnQueue:(id)a3 roamingEvent:(BOOL)a4 roamingAttrs:(int64_t)a5 reply:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(SFNetworkAttachment *)self->_durable attrs];
  v13 = [v12 integerValue];

  if ((v13 - 262) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(NetworkEpoch *)self setLoi:v13];
    if (v10 && v11)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_2;
      v43[3] = &unk_27898B678;
      v43[4] = self;
      v44 = v11;
      dispatch_async(v10, v43);
    }

    v18 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->identifier;
      v20 = v18;
      v21 = [(NetworkEpoch *)self loi];
      *buf = 138478083;
      v58 = identifier;
      v59 = 2048;
      v60 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "LOI: epoch with primary key = %{private}@ inherits persisted value (loi=%ld)", buf, 0x16u);
    }

    goto LABEL_37;
  }

  oncell = self->_oncell;
  if (!a4)
  {
    if (!self->_oncell)
    {
LABEL_27:
      v33 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v34 = self->identifier;
        *buf = 138478083;
        v58 = v34;
        v59 = 2048;
        v60 = v13;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "LOI: slow path for epoch w/ primary key = %{private}@, old LOI = %ld", buf, 0x16u);
      }

      v35 = +[LocationStateRelay sharedInstance];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_21;
      v45[3] = &unk_27898E0B8;
      v45[4] = self;
      v47 = v11;
      v46 = v10;
      [v35 fetchCurrentLocationLOIOnQueue:v46 desiredAccuracy:v45 reply:1000.0];

      v17 = v47;
      goto LABEL_30;
    }

LABEL_15:
    v42 = v10;
    +[NetworkAnalyticsEngine concurrentEpochs];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = v53 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v51;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v50 + 1) + 8 * i);
          if (([v27 oncell] & 1) == 0)
          {
            v28 = [v27 durable];
            v29 = [v28 attrs];
            v30 = [v29 integerValue];

            v31 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v32 = self->identifier;
              *buf = 138478083;
              v58 = v32;
              v59 = 2048;
              v60 = v30;
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "LOI: Cell, found LOI from concurrent epoch with primary key = %{private}@, LOI = %ld", buf, 0x16u);
            }

            if ((v30 & 0xFFFFFFFFFFFFFFFELL) == 0x104)
            {
              [(NetworkEpoch *)self setLoi:v30];

              v36 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v37 = self->identifier;
                v38 = v36;
                v39 = [(NetworkEpoch *)self loi];
                *buf = 138478083;
                v58 = v37;
                v59 = 2048;
                v60 = v39;
                _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "LOI: Cell, adopted LOI from concurrent epoch with primary key = %{private}@, LOI = %ld", buf, 0x16u);
              }

              v11 = v41;
              v10 = v42;
              if (v42 && v41)
              {
                v48[0] = MEMORY[0x277D85DD0];
                v48[1] = 3221225472;
                v48[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_19;
                v48[3] = &unk_27898B678;
                v48[4] = self;
                v49 = v41;
                dispatch_async(v42, v48);
              }

              goto LABEL_37;
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v11 = v41;
    v10 = v42;
    goto LABEL_27;
  }

  if (self->_oncell)
  {
    goto LABEL_15;
  }

  v15 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->identifier;
    *buf = 138478083;
    v58 = v16;
    v59 = 2048;
    v60 = a5;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "LOI: WiFi roaming, setting LOI from retired epoch for NA with primary key = %{private}@, old LOI = %ld", buf, 0x16u);
  }

  [(NetworkEpoch *)self setLoi:a5];
  if (v10 && v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke;
    block[3] = &unk_27898B678;
    block[4] = self;
    v55 = v11;
    dispatch_async(v10, block);
    v17 = v55;
LABEL_30:
  }

LABEL_37:

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_19(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_21(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if ([v9 code] == 1)
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 16);
        *buf = 138477827;
        v43 = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "LOI: Location capturing is not approved for NA with primary key = %{private}@", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v14 = 258;
    }

    else
    {
      if ([v10 code] != 45)
      {
        v28 = [v10 code];
        v29 = netepochsLogHandle;
        v30 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
        if (v28 == 60)
        {
          if (!v30)
          {
            goto LABEL_19;
          }

          *buf = 0;
          v31 = "LOI: Location retrieval timed out";
          v32 = v29;
          v33 = 2;
        }

        else
        {
          if (!v30)
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v43 = v10;
          v31 = "LOI: Location retrieval failed with error: %@";
          v32 = v29;
          v33 = 12;
        }

        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
        goto LABEL_19;
      }

      v21 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*(a1 + 32) + 16);
        *buf = 138477827;
        v43 = v22;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "LOI: Location capturing is not supported for NA with primary key = %{private}@", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v14 = 257;
    }

    [v13 setLoi:v14];
LABEL_19:
    v23 = *(a1 + 48);
    if (v23)
    {
      v24 = *(a1 + 40);
      if (v24)
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_23;
        v38[3] = &unk_27898B678;
        v25 = &v39;
        v26 = v23;
        v38[4] = *(a1 + 32);
        v39 = v26;
        v27 = v38;
LABEL_35:
        dispatch_async(v24, v27);

        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  if (!v7)
  {
    v18 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 259;
      goto LABEL_32;
    }

    v34 = *(*(a1 + 32) + 16);
    *buf = 138478083;
    v43 = v34;
    v44 = 2048;
    v17 = 259;
    v45 = 259;
    v20 = "LOI: CoreRoutine has not assigned LOI to the current location yet, setting LOI for NA with primary key = %{private}@ to %ld";
    goto LABEL_27;
  }

  v15 = [v7 type];
  v16 = 259;
  if (!v15)
  {
    v16 = 260;
  }

  if (v15 == 1)
  {
    v17 = 261;
  }

  else
  {
    v17 = v16;
  }

  v18 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 16);
    *buf = 138478083;
    v43 = v19;
    v44 = 2048;
    v45 = v17;
    v20 = "LOI: Retrieved LOI from CoreRoutine for NA with primary key = %{private}@, LOI type = %ld";
LABEL_27:
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
  }

LABEL_32:
  [*(a1 + 32) setLoi:v17];
  v35 = *(a1 + 48);
  if (v35)
  {
    v24 = *(a1 + 40);
    if (v24)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_22;
      block[3] = &unk_27898B678;
      v25 = &v41;
      v36 = v35;
      block[4] = *(a1 + 32);
      v41 = v36;
      v27 = block;
      goto LABEL_35;
    }
  }

LABEL_36:

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = NetworkEpoch;
  v2 = [(NetworkEpoch *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->isSnapshot = 1;
    v4 = [MEMORY[0x277CBEAA8] date];
    createdAt = v3->createdAt;
    v3->createdAt = v4;

    v3->_seqno = ++epoch_count;
  }

  return v3;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  --epoch_count;
  partial4 = self->_partial4;
  if (partial4)
  {
    [(SFLiveRoutePerf *)partial4 setHasNetworkAttachment:0];
  }

  partial6 = self->_partial6;
  if (partial6)
  {
    [(SFLiveRoutePerf *)partial6 setHasNetworkAttachment:0];
  }

  partial = self->_partial;
  if (partial)
  {
    [(SFLiveRoutePerf *)partial setHasNetworkAttachment:0];
  }

  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v10 = self;
    v11 = 1024;
    v12 = epoch_count;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p collecting epoch, total epochs=%u", buf, 0x12u);
  }

  v8.receiver = self;
  v8.super_class = NetworkEpoch;
  [(NetworkEpoch *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLoi:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  loi = self->_loi;
  self->_loi = a3;
  if (self->_oncell)
  {
    v5 = [(SFNetworkAttachment *)self->_durable netSignature];
    if (v5)
    {
      v6 = v5;
      v7 = [(SFNetworkAttachment *)self->_durable netSignature];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
      }

      else
      {
        v8 = self->_loi;

        if (loi == v8)
        {
          goto LABEL_8;
        }
      }
    }

    v9 = [(NetworkEpoch *)self _createCellSignature];
    v10 = [(NetworkEpoch *)self durable];
    [v10 setNetSignature:v9];

    v11 = [(NetworkEpoch *)self durable];
    v12 = [v11 netSignature];
    v13 = [(NetworkEpoch *)self durable];
    [v13 setNetSignatureV6:v12];

    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      identifier = self->identifier;
      v16 = v14;
      v17 = [(NetworkEpoch *)self durable];
      v18 = [v17 netSignature];
      v20 = 138478083;
      v21 = identifier;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Set both IPv4 and IPv6 signature for: %{private}@, sig: %@", &v20, 0x16u);
    }
  }

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_createCellSignature
{
  v22 = *MEMORY[0x277D85DE8];
  identifier = self->identifier;
  v18 = 0;
  v4 = [NetworkEpoch parsePrimaryKey:identifier majorID:&v18 minorID:0];
  v5 = v18;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(NetworkEpoch *)self mapLOIToString];
    v8 = [v6 stringWithFormat:@"%@-%@", v5, v7];

    v9 = [NetworkAnalyticsEngine hashPrimaryKey:v8];
    if ([v9 isEqualToString:@"HASH-FAILED"])
    {
      v10 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = self->identifier;
        *buf = 138478083;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = @"HASH-FAILED";
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Failed to set signature for: %{private}@, using back-stop string: %@", buf, 0x16u);
      }
    }

    v12 = [v9 dataUsingEncoding:4];
    memset(buf, 0, sizeof(buf));
    v20 = 0u;
    v21 = 0u;
    [v12 bytes];
    [v12 length];
    __memcpy_chk();
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:24];
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = self->identifier;
      *buf = 138477827;
      *&buf[4] = v15;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to set signature for: %{private}@", buf, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setDefRoute4:(__NStatSource *)a3
{
  self->_defRoute4 = a3;
  if (a3)
  {
    MEMORY[0x238386EB0](a3, a2);

    JUMPOUT(0x238386EA0);
  }
}

- (void)setDefRoute6:(__NStatSource *)a3
{
  self->_defRoute6 = a3;
  if (a3)
  {
    MEMORY[0x238386EB0](a3, a2);

    JUMPOUT(0x238386EA0);
  }
}

- (BOOL)createCountDown:(id)a3 atTime:(id)a4 nextTick:(unint64_t)a5 ticksTotal:(unint64_t)a6 onQueue:(id)a7 withIterationBlock:(id)a8 completionBlock:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  LOBYTE(v20) = 0;
  if (v15 && self->_active)
  {
    v21 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:v15];

    if (v21)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v22 = objc_alloc_init(CountDown);
      v23 = v22;
      v20 = v22 != 0;
      if (v22)
      {
        [(CountDown *)v22 goOffNext:a5 fromTime:v16 forEpoch:self timesTotal:a6 onQueue:v17 withIterationBlock:v18 completionBlock:v19];
        [(NSMutableDictionary *)self->tickers setObject:v23 forKeyedSubscript:v15];
        [(NetworkEpoch *)self setLastCountedDown:v16];
      }
    }
  }

  return v20;
}

- (BOOL)countDownStop:(id)a3 eventTimeStamp:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = [v8 startTime];
      [v7 timeIntervalSinceDate:v10];
      v12 = v11;

      v13 = netepochsLogHandle;
      v14 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v12 < 0.0)
      {
        if (v14)
        {
          v15 = v13;
          v16 = [(NetworkEpoch *)self interfaceName];
          v17 = [v9 startTime];
          [v7 timeIntervalSinceDate:v17];
          v27 = 138412802;
          v28 = v16;
          v29 = 2112;
          v30 = v6;
          v31 = 2048;
          v32 = v18;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "no stop on %@ for %@ because the event timeStamp doesn't qualify: %f", &v27, 0x20u);

LABEL_8:
          goto LABEL_9;
        }

        goto LABEL_9;
      }

      if (v14)
      {
        v21 = v13;
        v22 = [(NetworkEpoch *)self interfaceName];
        v23 = [v9 startTime];
        [v7 timeIntervalSinceDate:v23];
        v27 = 138412802;
        v28 = v22;
        v29 = 2112;
        v30 = v6;
        v31 = 2048;
        v32 = v24;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "stop on %@ for %@ because the event timeStamp qualify: %f", &v27, 0x20u);
      }
    }

    [v9 stop];
    [(NSMutableDictionary *)self->tickers removeObjectForKey:v6];
    v20 = 1;
    goto LABEL_13;
  }

  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v15 = v19;
    v16 = [(NetworkEpoch *)self interfaceName];
    v27 = 138412546;
    v28 = v16;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "no stop on %@ for %@ because the ticker was not found", &v27, 0x16u);
    goto LABEL_8;
  }

LABEL_9:
  v20 = 0;
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)hasCountDownActive:(id)a3
{
  v3 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasTypicalShortStay
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [(NetworkEpoch *)self durable];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v4 = [v2 overallStayMean];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 overallStayVar];
  [v7 doubleValue];
  v9 = v8;

  v10 = v6 > 0.0 && v6 < 120.0;
  if (v10 && v9 < 1600.0)
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v3 identifier];
      v18 = 138412802;
      v19 = v15;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "net attachm %@ reported to be shorty (mean/var) = %f,%f", &v18, 0x20u);
    }

    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isLiveRoutePerfinScope:(id)a3 forTime:(id)a4
{
  v5 = a4;
  v6 = [a3 timeStamp];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  v9 = v8;
  if (v8 < 0)
  {
    v9 = -v9;
  }

  return v9 < 0x93A80;
}

- (id)establishPartials:(id)a3 withFlag:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  naspace = self->naspace;
  v8 = [MEMORY[0x277D6B5A0] entityName];
  v9 = [(NetworkAttachmentAnalytics *)naspace createTemporaryEntityForEntityName:v8];

  v10 = [MEMORY[0x277CBEAA8] date];
  [v9 setTimeStamp:v10];

  v11 = self->naspace;
  v12 = [MEMORY[0x277D6B5A8] entityName];
  v13 = [(NetworkAttachmentAnalytics *)v11 createTemporaryEntityForEntityName:v12];

  v14 = [(NetworkEpoch *)self durable];
  v15 = [v14 identifier];
  [v13 setIdentifier:v15];

  [v9 setHasNetworkAttachment:v13];
  v16 = 1.79769313e308;
  if (self->fromRoamingEvent && !v4)
  {
    [v9 setConnSuccesses:{objc_msgSend(v6, "connectSuccesses", 1.79769313e308)}];
    [v9 setConnAttempts:{objc_msgSend(v6, "connectAttempts")}];
    [v9 setPacketsIn:{objc_msgSend(v6, "rxPackets")}];
    [v9 setPacketsOut:{objc_msgSend(v6, "txPackets")}];
    [v9 setBytesIn:{objc_msgSend(v6, "rxBytes")}];
    [v9 setBytesOut:{objc_msgSend(v6, "txBytes")}];
    [v9 setRxDupeBytes:{objc_msgSend(v6, "rxDuplicateBytes")}];
    [v9 setRxOOOBytes:{objc_msgSend(v6, "rxOutOfOrderBytes")}];
    [v9 setReTxBytes:{objc_msgSend(v6, "txRetransmittedBytes")}];
    [v6 rttMinimum];
    if (v16 == 0.0)
    {
      v16 = 1.79769313e308;
    }
  }

  [v9 setRttMin:v16];
  if (v4)
  {
    [v6 rttAverage];
    if (v17 != 0.0)
    {
      v18 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "Initializing rtt avg and rtt var", v22, 2u);
      }

      [v6 rttAverage];
      self->_initialRttAvg = v19;
      [v6 rttVariation];
      self->_initialRttVar = v20;
    }
  }

  return v9;
}

- (void)updateMetrics:(id)a3 source:(__NStatSource *)a4 wasProgress:(id)a5
{
  v118 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([(NetworkEpoch *)self defRoute4]== a4 && !self->_partial4)
  {
    v87 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v88 = v87;
      v89 = [(NetworkEpoch *)self oncell];
      v90 = "wifi";
      if (v89)
      {
        v90 = "cell";
      }

      *v111 = 136315138;
      *&v111[4] = v90;
      _os_log_impl(&dword_23255B000, v88, OS_LOG_TYPE_DEFAULT, "Establishing a partial for IPv4 on %s", v111, 0xCu);
    }

    v91 = [(NetworkEpoch *)self establishPartials:v8 withFlag:0];
    partial4 = self->_partial4;
    self->_partial4 = v91;

    if (self->_partial)
    {
      goto LABEL_84;
    }

    v93 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    v94 = v93;
    v95 = [(NetworkEpoch *)self oncell];
    v96 = "wifi";
    if (v95)
    {
      v96 = "cell";
    }

    *v111 = 136315138;
    *&v111[4] = v96;
    goto LABEL_82;
  }

  if ([(NetworkEpoch *)self defRoute6]== a4 && !self->_partial6)
  {
    v97 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v98 = v97;
      v99 = [(NetworkEpoch *)self oncell];
      v100 = "wifi";
      if (v99)
      {
        v100 = "cell";
      }

      *v111 = 136315138;
      *&v111[4] = v100;
      _os_log_impl(&dword_23255B000, v98, OS_LOG_TYPE_DEFAULT, "Establishing a partial for IPv6 on %s", v111, 0xCu);
    }

    v101 = [(NetworkEpoch *)self establishPartials:v8 withFlag:0];
    partial6 = self->_partial6;
    self->_partial6 = v101;

    if (self->_partial)
    {
      goto LABEL_84;
    }

    v103 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
LABEL_83:
      v106 = [(NetworkEpoch *)self establishPartials:v8 withFlag:1, *v111];
      partial = self->_partial;
      self->_partial = v106;

LABEL_84:
      v108 = [MEMORY[0x277CBEAA8] date];
      lastBytesPartialUpdate = self->lastBytesPartialUpdate;
      self->lastBytesPartialUpdate = v108;

LABEL_85:
      (*(v9 + 2))(v9, 0, 0);
      goto LABEL_86;
    }

    v94 = v103;
    v104 = [(NetworkEpoch *)self oncell];
    v105 = "wifi";
    if (v104)
    {
      v105 = "cell";
    }

    *v111 = 136315138;
    *&v111[4] = v105;
LABEL_82:
    _os_log_impl(&dword_23255B000, v94, OS_LOG_TYPE_DEFAULT, "Establishing _partial on %s", v111, 0xCu);

    goto LABEL_83;
  }

  if ([(NetworkEpoch *)self defRoute4]== a4)
  {
    v11 = @"IPv4";
    v12 = 216;
  }

  else
  {
    if ([(NetworkEpoch *)self defRoute6]!= a4)
    {
      v10 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v111 = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "src is neither of type defRoute4 or defRoute6", v111, 2u);
      }

      goto LABEL_85;
    }

    v11 = @"IPv6";
    v12 = 224;
  }

  v13 = *(&self->super.isa + v12);
  if (self->_initialRttAvg == 0.0)
  {
    [v8 rttAverage];
    if (v14 != 0.0)
    {
      [v8 rttAverage];
      self->_initialRttAvg = v15;
      [v8 rttVariation];
      self->_initialRttVar = v16;
    }
  }

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    active = self->_active;
    *v111 = 138412802;
    *&v111[4] = v11;
    *&v111[12] = 2112;
    *&v111[14] = self;
    v112 = 1024;
    LODWORD(v113) = active;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "comparing new %@ counts against partial, epoch: %@, active: %d", v111, 0x1Cu);
  }

  v19 = [(NetworkEpoch *)self currentLiveRoutePerf];
  v20 = [v8 connectSuccesses];
  [v13 connSuccesses];
  v22 = v20 - v21;
  if (v20 - v21 > 0.0)
  {
    [v19 connSuccesses];
    [v19 setConnSuccesses:v22 + v23];
    [v13 setConnSuccesses:v20];
    [(SFLiveRoutePerf *)self->_partial connSuccesses];
    [(SFLiveRoutePerf *)self->_partial setConnSuccesses:v22 + v24];
  }

  v25 = [v8 connectAttempts];
  [v13 connAttempts];
  v27 = v25 - v26;
  if (v25 - v26 > 0.0)
  {
    [v19 connAttempts];
    [v19 setConnAttempts:v27 + v28];
    [v13 setConnAttempts:v25];
    [(SFLiveRoutePerf *)self->_partial connAttempts];
    [(SFLiveRoutePerf *)self->_partial setConnAttempts:v27 + v29];
  }

  v30 = [v8 rxPackets];
  [v13 packetsIn];
  v32 = v30 - v31;
  if (v30 - v31 > 0.0)
  {
    [v19 packetsIn];
    [v19 setPacketsIn:v32 + v33];
    [v13 setPacketsIn:v30];
    [(SFLiveRoutePerf *)self->_partial packetsIn];
    [(SFLiveRoutePerf *)self->_partial setPacketsIn:v32 + v34];
  }

  v35 = [v8 txPackets];
  [v13 packetsOut];
  v37 = v35 - v36;
  if (v35 - v36 > 0.0)
  {
    [v19 packetsOut];
    [v19 setPacketsOut:v37 + v38];
    [v13 setPacketsOut:v35];
    [(SFLiveRoutePerf *)self->_partial packetsOut];
    [(SFLiveRoutePerf *)self->_partial setPacketsOut:v37 + v39];
  }

  v40 = [v8 rxBytes];
  [v13 bytesIn];
  v42 = v40 - v41;
  if (v40 - v41 > 0.0)
  {
    [v19 bytesIn];
    [v19 setBytesIn:v42 + v43];
    [v13 setBytesIn:v40];
    [(SFLiveRoutePerf *)self->_partial bytesIn];
    [(SFLiveRoutePerf *)self->_partial setBytesIn:v42 + v44];
  }

  v45 = [v8 txBytes];
  [v13 bytesOut];
  v47 = v45 - v46;
  if (v45 - v46 > 0.0)
  {
    [v19 bytesOut];
    [v19 setBytesOut:v47 + v48];
    [v13 setBytesOut:v45];
    [(SFLiveRoutePerf *)self->_partial bytesOut];
    [(SFLiveRoutePerf *)self->_partial setBytesOut:v47 + v49];
  }

  v50 = [v8 rxDuplicateBytes];
  [v13 rxDupeBytes];
  v52 = v50 - v51;
  if (v50 - v51 > 0.0)
  {
    [v19 rxDupeBytes];
    [v19 setRxDupeBytes:v52 + v53];
    [v13 setRxDupeBytes:v50];
    [(SFLiveRoutePerf *)self->_partial rxDupeBytes];
    [(SFLiveRoutePerf *)self->_partial setRxDupeBytes:v52 + v54];
  }

  v55 = [v8 rxOutOfOrderBytes];
  [v13 rxOOOBytes];
  v57 = v55 - v56;
  if (v55 - v56 > 0.0)
  {
    [v19 rxOOOBytes];
    [v19 setRxOOOBytes:v57 + v58];
    [v13 setRxOOOBytes:v55];
    [(SFLiveRoutePerf *)self->_partial rxOOOBytes];
    [(SFLiveRoutePerf *)self->_partial setRxOOOBytes:v57 + v59];
  }

  v60 = [v8 txRetransmittedBytes];
  [v13 reTxBytes];
  v62 = v60 - v61;
  if (v60 - v61 > 0.0)
  {
    [v19 reTxBytes];
    [v19 setReTxBytes:v62 + v63];
    [v13 setReTxBytes:v60];
    [(SFLiveRoutePerf *)self->_partial reTxBytes];
    [(SFLiveRoutePerf *)self->_partial setReTxBytes:v62 + v64];
  }

  [v8 rttMinimum];
  if (v65 != 0.0)
  {
    v66 = v65;
    [v13 rttMin];
    if (v66 < v67)
    {
      [v19 rttMin];
      if (v68 >= v66)
      {
        v68 = v66;
      }

      [v19 setRttMin:v68];
      [v13 setRttMin:v66];
      [(SFLiveRoutePerf *)self->_partial rttMin];
      if (v69 >= v66)
      {
        v69 = v66;
      }

      [(SFLiveRoutePerf *)self->_partial setRttMin:v69];
    }
  }

  [v8 rttAverage];
  [v13 setRttAvg:?];
  [v13 rttAvg];
  [(SFLiveRoutePerf *)self->_partial setRttAvg:?];
  [v8 rttVariation];
  [v13 setRttVar:?];
  [v13 rttVar];
  [(SFLiveRoutePerf *)self->_partial setRttVar:?];
  if (!self->_active)
  {
    if ([(NetworkEpoch *)self defRoute4]== a4)
    {
      v70 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v71 = v70;
        v72 = [(NetworkEpoch *)self defRoute4];
        *v111 = 134217984;
        *&v111[4] = v72;
        _os_log_impl(&dword_23255B000, v71, OS_LOG_TYPE_INFO, "forcefully removing defroute4: %p", v111, 0xCu);
      }

      [(NetworkEpoch *)self defRoute4];
      NStatSourceRemove();
      [(NetworkEpoch *)self setDefRoute4:0];
    }

    if ([(NetworkEpoch *)self defRoute6]== a4)
    {
      v73 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v74 = v73;
        v75 = [(NetworkEpoch *)self defRoute6];
        *v111 = 134217984;
        *&v111[4] = v75;
        _os_log_impl(&dword_23255B000, v74, OS_LOG_TYPE_INFO, "forcefully removing defroute6: %p", v111, 0xCu);
      }

      [(NetworkEpoch *)self defRoute6];
      NStatSourceRemove();
      [(NetworkEpoch *)self setDefRoute6:0];
    }

    if (![(NetworkEpoch *)self defRoute4]&& ![(NetworkEpoch *)self defRoute6]&& ![(NetworkEpoch *)self oncell]&& !self->fromRoamingEvent)
    {
      v76 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v76;
        v78 = [(NetworkEpoch *)self primaryKey];
        *v111 = 138477827;
        *&v111[4] = v78;
        _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_DEFAULT, "persisting data for %{private}@", v111, 0xCu);
      }

      [(AnalyticsWorkspace *)self->workspace save];
    }
  }

  v79 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v80 = v79;
    v81 = [(NetworkEpoch *)self interfaceName];
    v82 = [(NetworkEpoch *)self primaryKey];
    v83 = v82;
    v84 = "below";
    *v111 = 138413315;
    *&v111[4] = v11;
    *&v111[12] = 2112;
    *&v111[14] = v81;
    if (v42 > 10240.0)
    {
      v84 = "above";
    }

    v112 = 2113;
    v113 = v82;
    v114 = 2048;
    v115 = v42;
    v116 = 2080;
    v117 = v84;
    _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEFAULT, "%@ progress on %@ for %{private}@: deltaBytesIn: %llu is %s threshold", v111, 0x34u);
  }

  (*(v9 + 2))(v9, v42 > 10240.0, self->lastBytesPartialUpdate);
  if (v42 != 0.0)
  {
    v85 = [MEMORY[0x277CBEAA8] date];
    v86 = self->lastBytesPartialUpdate;
    self->lastBytesPartialUpdate = v85;
  }

LABEL_86:
  v110 = *MEMORY[0x277D85DE8];
}

- (void)reportDataStall
{
  v3 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v3 dataStalls];
  v5 = v4 + 1.0;
  v6 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v6 setDataStalls:v5];

  v10 = [(NetworkEpoch *)self partial];
  [v10 dataStalls];
  v8 = v7 + 1.0;
  v9 = [(NetworkEpoch *)self partial];
  [v9 setDataStalls:v8];
}

- (void)reportCaptivityRedirect
{
  v3 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v3 captivityRedirects];
  v5 = v4 + 1.0;
  v6 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v6 setCaptivityRedirects:v5];

  v10 = [(NetworkEpoch *)self partial];
  [v10 captivityRedirects];
  v8 = v7 + 1.0;
  v9 = [(NetworkEpoch *)self partial];
  [v9 setCaptivityRedirects:v8];
}

- (void)reportCertError
{
  v3 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v3 certErrors];
  v5 = v4 + 1.0;
  v6 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v6 setCertErrors:v5];

  v10 = [(NetworkEpoch *)self partial];
  [v10 certErrors];
  v8 = v7 + 1.0;
  v9 = [(NetworkEpoch *)self partial];
  [v9 setCertErrors:v8];
}

- (void)reportAdminDisable
{
  v3 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v3 adminDisables];
  v5 = v4 + 1.0;
  v6 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v6 setAdminDisables:v5];

  v10 = [(NetworkEpoch *)self partial];
  [v10 adminDisables];
  v8 = v7 + 1.0;
  v9 = [(NetworkEpoch *)self partial];
  [v9 setAdminDisables:v8];
}

- (void)retire
{
  v101[1] = *MEMORY[0x277D85DE8];
  self->_active = 0;
  v3 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [v3 epochs];
  v5 = v4;
  [v3 overallStay];
  v7 = v6;
  v8 = [(NetworkEpoch *)self overall];
  [v8 stop];
  v10 = v9;

  v11 = v7 / v5;
  if (v5 == 0.0)
  {
    v11 = v10;
  }

  v12 = v10 - v11;
  [v3 setOverallStay:v7 + v10];
  [v3 setEpochs:v5 + 1.0];
  [v3 overallStay];
  v14 = v13;
  [v3 epochs];
  v16 = v14 / v15;
  [v3 overallStayM2];
  [v3 setOverallStayM2:v17 + v12 * (v10 - v16)];
  [v3 lqmTransitionCount];
  v19 = v18;
  [(NetworkEpoch *)self lqmTransitions];
  [v3 setLqmTransitionCount:v19 + v20];
  v21 = [(NetworkEpoch *)self lowLqm];
  [v21 stop];
  v23 = v22;

  [v3 lowLqmStay];
  [v3 setLowLqmStay:v23 + v24];
  v25 = [(NetworkEpoch *)self lowq];
  [v25 stop];
  v27 = v26;

  [v3 lowqStay];
  [v3 setLowqStay:v27 + v28];
  v29 = [(NetworkEpoch *)self fatal];
  [v29 stop];
  v31 = v30;

  [v3 faultyStay];
  [v3 setFaultyStay:v31 + v32];
  v33 = [MEMORY[0x277CBEAA8] date];
  v34 = [DateRounder roundToDayResolutionOnly:v33];
  [v3 setTimeStamp:v34];

  [(NetworkEpoch *)self topDownlRate];
  v36 = v35;
  [v3 topDownloadRate];
  if (v36 > v37)
  {
    [(NetworkEpoch *)self topDownlRate];
    [v3 setTopDownloadRate:?];
  }

  v38 = [v3 timeStamp];
  v39 = [(NetworkEpoch *)self durable];
  [v39 setTimeStamp:v38];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NetworkEpoch loi](self, "loi")}];
  v41 = [(NetworkEpoch *)self durable];
  [v41 setAttrs:v40];

  [(NSMutableDictionary *)self->tickers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27];
  [(NSMutableDictionary *)self->tickers removeAllObjects];
  if ([(NetworkEpoch *)self defRoute4])
  {
    MEMORY[0x238386EA0]([(NetworkEpoch *)self defRoute4]);
  }

  if ([(NetworkEpoch *)self defRoute6])
  {
    MEMORY[0x238386EA0]([(NetworkEpoch *)self defRoute6]);
  }

  if (self->_deleteNetworkAttachmentsWhenDone)
  {
    identifier = self->identifier;
    v70 = 0;
    v43 = [NetworkEpoch parsePrimaryKey:identifier majorID:&v70 minorID:0];
    v44 = v70;
    v45 = v44;
    if (v43)
    {
      v101[0] = v44;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:1];
      [NetworkEpoch resetDataForSSIDs:v46 exceptFor:0 inWorkspace:self->workspace];
    }
  }

  v47 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v47;
    v49 = [(NetworkEpoch *)self interfaceName];
    v50 = [(NetworkEpoch *)self primaryKey];
    v51 = epoch_count;
    [v3 lqmTransitionCount];
    v53 = v52;
    [v3 lowLqmStay];
    v55 = v54;
    [v3 lowqStay];
    v57 = v56;
    [v3 dataStalls];
    v59 = v58;
    [v3 captivityRedirects];
    v61 = v60;
    [v3 certErrors];
    v63 = v62;
    [v3 adminDisables];
    v65 = v64;
    v66 = [(NetworkEpoch *)self defRoute4];
    v67 = [(NetworkEpoch *)self defRoute6];
    v68 = [(NetworkEpoch *)self loi];
    *buf = 134221571;
    v72 = self;
    v73 = 2112;
    v74 = v49;
    v75 = 2113;
    v76 = v50;
    v77 = 2048;
    v78 = v10;
    v79 = 1024;
    v80 = v51;
    v81 = 2048;
    v82 = v53;
    v83 = 2048;
    v84 = v55;
    v85 = 2048;
    v86 = v57;
    v87 = 2048;
    v88 = v59;
    v89 = 2048;
    v90 = v61;
    v91 = 2048;
    v92 = v63;
    v93 = 2048;
    v94 = v65;
    v95 = 2048;
    v96 = v66;
    v97 = 2048;
    v98 = v67;
    v99 = 2048;
    v100 = v68;
    _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "%p retired epoch on %@ for %{private}@: stay time accrued = %f, total epochs = %d, LQM transitions = %f, low LQM stay = %f, low RSSI stay = %f, data stalls: %f, captRedirects: %f, certErrors: %f, adminDisables: %f, defroutes %p %p, loi: %ld", buf, 0x94u);
  }

  v69 = *MEMORY[0x277D85DE8];
}

- (id)_networkAttachmentDurableState
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = self->identifier;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__10;
  v52 = __Block_byref_object_dispose__10;
  v53 = 0;
  if ([(NetworkEpoch *)self oncell])
  {
    v5 = [NetworkStateRelay getStateRelayFor:5];
    v6 = [v5 radioTechnology];
    if (v6 == 11 && nrNetworkAttachmentLastCreationTime != 0)
    {
      [nrNetworkAttachmentLastCreationTime timeIntervalSinceNow];
      if (v8 > -2.0)
      {

        if (collapsedNRNetworkAttachmentID)
        {
          v9 = [(AnalyticsWorkspace *)self->workspace mainObjectContext];
          v10 = [v9 objectWithID:collapsedNRNetworkAttachmentID];
          v11 = v49[5];
          v49[5] = v10;
        }

        v4 = @"CollapsedNR";
      }
    }

    v12 = v6 != 11;
  }

  else
  {
    v12 = 1;
  }

  if (v49[5])
  {
    goto LABEL_14;
  }

  v13 = [(NetworkAttachmentAnalytics *)self->naspace networkAttachmentsWithId:v4];
  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = __46__NetworkEpoch__networkAttachmentDurableState__block_invoke;
  v45 = &unk_27898C848;
  v14 = v4;
  v46 = v14;
  v47 = &v48;
  [v13 enumerateObjectsUsingBlock:&v42];

  if (v49[5])
  {
LABEL_14:
    v15 = [DateRounder roundToDayResolutionOnly:v3, v42, v43, v44, v45];
    [v49[5] setTimeStamp:v15];

    goto LABEL_15;
  }

  v19 = [(NetworkAttachmentAnalytics *)self->naspace createEntity:v42];
  v20 = v49[5];
  v49[5] = v19;

  v21 = v49[5];
  if (v21)
  {
    [v21 setIdentifier:v14];
    v22 = [DateRounder roundToDayResolutionOnly:v3];
    [v49[5] setFirstTimeStamp:v22];

    v23 = [v49[5] firstTimeStamp];
    [v49[5] setTimeStamp:v23];

    v24 = MEMORY[0x277CCABB0];
    if ([(NetworkEpoch *)self oncell])
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = [v24 numberWithShort:v25];
    [v49[5] setKind:v26];

    [v49[5] setIsKnownGood:1];
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:256];
    [v49[5] setAttrs:v27];

    if (v12)
    {
      v28 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      identifier = self->identifier;
      *buf = 134218243;
      v55 = self;
      v56 = 2113;
      v57 = identifier;
      v30 = "%p created new entry for %{private}@";
    }

    else
    {
      v33 = [MEMORY[0x277CBEAA8] date];
      v34 = nrNetworkAttachmentLastCreationTime;
      nrNetworkAttachmentLastCreationTime = v33;

      if ([(__CFString *)v14 isEqualToString:@"CollapsedNR"])
      {
        [(AnalyticsWorkspace *)self->workspace save];
        v35 = [v49[5] objectID];
        v36 = collapsedNRNetworkAttachmentID;
        collapsedNRNetworkAttachmentID = v35;

        v37 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v38 = self->identifier;
        *buf = 134218499;
        v55 = self;
        v56 = 2113;
        v57 = v38;
        v58 = 2112;
        v59 = collapsedNRNetworkAttachmentID;
        v30 = "%p collapsed NR entry %{private}@ attachment ID %@";
        v39 = v37;
        v40 = 32;
        goto LABEL_34;
      }

      v28 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v41 = self->identifier;
      *buf = 134218243;
      v55 = self;
      v56 = 2113;
      v57 = v41;
      v30 = "%p created new entry for NR %{private}@";
    }

    v39 = v28;
    v40 = 22;
LABEL_34:
    _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, v30, buf, v40);
    goto LABEL_15;
  }

  v31 = netepochsLogHandle;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = [(NSString *)self->identifier UTF8String];
    *buf = 134218243;
    v55 = self;
    v56 = 2081;
    v57 = v32;
    _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "%p couldn't create a new entry of %{private}s", buf, 0x16u);
  }

LABEL_15:
  v16 = v49[5];
  _Block_object_dispose(&v48, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __46__NetworkEpoch__networkAttachmentDurableState__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)unloadDurableState
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->identifier;
    v7 = 134218243;
    v8 = self;
    v9 = 2113;
    v10 = identifier;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "%p unloaded durable state for %{private}@", &v7, 0x16u);
  }

  durable = self->_durable;
  self->_durable = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [[NetworkEpoch allocWithZone:?]];
  objc_storeStrong(v4 + 2, self->identifier);
  v5 = +[WiFiTriggerHandler getNetScoreInfo];
  v6 = v4[11];
  v4[11] = v5;

  [(NetworkEpoch *)self topDownlRate];
  v4[31] = v7;
  v8 = [(NetworkEpoch *)self fatal];
  *(v4 + 98) = [v8 isRunning];

  v9 = [(NetworkEpoch *)self lowLqm];
  *(v4 + 96) = [v9 isRunning];

  v10 = [(NetworkEpoch *)self lowq];
  *(v4 + 97) = [v10 isRunning];

  v11 = [(NetworkEpoch *)self durable];
  *(v4 + 99) = [v11 isKnownGood];

  *(v4 + 101) = [(NetworkEpoch *)self oncell];
  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->identifier;
    v14 = v4[11];
    v17 = 134218499;
    v18 = v4;
    v19 = 2113;
    v20 = identifier;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "%p is a snapshot of %{private}@, scores are: %@", &v17, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)compareToSnapshot:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[WiFiTriggerHandler getNetScoreInfo];
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    *v38 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "relative comparison, current scores are: %@", &v37, 0xCu);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScore];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 intValue];

  v10 = v4[11];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScore];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 intValue];

  if (v9 <= v13)
  {
    v15 = 0;
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 67109376;
      *v38 = v9;
      *&v38[4] = 1024;
      *&v38[6] = v13;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "relative comparison, netscore improved, %d vs %d", &v37, 0xEu);
    }

    v15 = 1;
  }

  if (v9 >= 51 && v13 <= 50)
  {
    v16 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "relative comparison: bonus point for going from bottom half to top half", &v37, 2u);
    }

    ++v15;
  }

  v17 = [(NetworkEpoch *)self lowLqm];
  if ([v17 isRunning])
  {
  }

  else
  {
    v18 = *(v4 + 96);

    if (v18 == 1)
    {
      v19 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "relative comparison, was lowLqm, not anymore", &v37, 2u);
      }

      ++v15;
    }
  }

  v20 = [(NetworkEpoch *)self lowq];
  if ([v20 isRunning])
  {
  }

  else
  {
    v21 = *(v4 + 97);

    if (v21 == 1)
    {
      v22 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "relative comparison, was lowQ, not anymore", &v37, 2u);
      }

      ++v15;
    }
  }

  if (*(v4 + 98) == 1)
  {
    v23 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "relative comparison, was faulty, not anymore", &v37, 2u);
    }

    ++v15;
  }

  [(NetworkEpoch *)self topDownlRate];
  if (v24 != 0.0 && *(v4 + 31) != 0.0)
  {
    [(NetworkEpoch *)self topDownlRate];
    if (v25 > *(v4 + 31))
    {
      v26 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        [(NetworkEpoch *)self topDownlRate];
        v28 = v4[31];
        v37 = 134218240;
        *v38 = v29;
        *&v38[8] = 2048;
        v39 = v28;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "relative comparison, superior rate clocked, %f vs %f", &v37, 0x16u);
      }

      ++v15;
    }
  }

  v30 = [(NetworkEpoch *)self durable];
  if ([v30 isKnownGood])
  {
    v31 = *(v4 + 99);

    if ((v31 & 1) == 0)
    {
      v32 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "relative comparison, wasn't known good, now it is", &v37, 2u);
      }

      ++v15;
    }
  }

  else
  {
  }

  if (v15 == 1)
  {
    v33 = 9;
  }

  else
  {
    v33 = 10;
  }

  if (v15 <= 1)
  {
    v34 = v33;
  }

  else
  {
    v34 = 8;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)matchesLOI:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return 0;
    }

    v3 = 261;
  }

  else
  {
    v3 = 260;
  }

  v4 = [(NetworkEpoch *)self durable];
  v5 = [v4 attrs];
  v6 = [v5 integerValue] == v3;

  return v6;
}

- (int64_t)getMatchingRTLocationOfInterestType
{
  v3 = [(NetworkEpoch *)self durable];
  v4 = [v3 attrs];
  v5 = -[NetworkEpoch RTLocationOfInterestTypeForExtended:](self, "RTLocationOfInterestTypeForExtended:", [v4 integerValue]);

  return v5;
}

- (int64_t)RTLocationOfInterestTypeForExtended:(int64_t)a3
{
  v3 = 1;
  if (a3 != 261)
  {
    v3 = -1;
  }

  if (a3 == 260)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (id)snapshotsIn:(id)a3 olderThan:(id)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"createdAt < %@", a4];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  return v8;
}

+ (BOOL)pruneDataOlderThan:(id)a3 exceptFor:(id)a4 inWorkspace:(id)a5
{
  v31[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CCAC30];
  v11 = [MEMORY[0x277CBEAA8] distantPast];
  v12 = [v10 predicateWithFormat:@"%K >= %@ AND %K < %@", @"timeStamp", v11, @"timeStamp", v7];

  if (v8 && [v8 count])
  {
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"identifier", v8];
    v14 = MEMORY[0x277CCA920];
    v31[0] = v12;
    v31[1] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v16 = v12;
  }

  v17 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:v9 withCache:0];
  v18 = [v17 removeEntitiesMatching:v16];
  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    v26 = v18;
    v27 = 2112;
    v28 = v7;
    v29 = 2113;
    v30 = v8;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld NetworkAttachment entries with timestamp before %@, except %{private}@", buf, 0x20u);
  }

  v20 = [objc_alloc(MEMORY[0x277D6B540]) initWithWorkspace:v9 entityName:@"LiveRoutePerf" withCache:0];
  v21 = [v20 removeEntitiesMatching:v12];
  v22 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v26 = v21;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Removed %ld LiveRoutePerf entries with timestamp before %@", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return (v18 | v21) != 0;
}

+ (void)resetDataFor:(id)a3 exceptFor:(id)a4 inWorkspace:(id)a5
{
  v31[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D6B538];
  v10 = a5;
  v11 = [[v9 alloc] initWithWorkspace:v10 withCache:0];

  if (v7 && [v7 count])
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v7];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE", v21, v23];
  }
  v12 = ;
  if (v8 && [v8 count])
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"identifier", v8];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE", v22, v24];
  }
  v13 = ;
  v14 = MEMORY[0x277CCA920];
  v31[0] = v12;
  v31[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v16;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Final reset predicate %@", buf, 0xCu);
  }

  v18 = [v11 removeEntitiesMatching:v16];
  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    v26 = v18;
    v27 = 2113;
    v28 = v7;
    v29 = 2113;
    v30 = v8;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld NetworkAttachment entries with identifier matching %{private}@ except %{private}@", buf, 0x20u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)resetDataForSSIDs:(id)a3 exceptFor:(id)a4 inWorkspace:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v47 = a5;
  v9 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:v47 withCache:0];
  v10 = [MEMORY[0x277CBEB18] array];
  v49 = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v59;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v59 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 = [v9 networkAttachmentsWithMajorID:*(*(&v58 + 1) + 8 * v16)];

        if ([v14 count])
        {
          [v10 addObjectsFromArray:v14];
        }

        ++v16;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v48 = v9;
  v50 = v11;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v10;
  v18 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_37;
  }

  v19 = v18;
  v20 = 0;
  v21 = *v55;
  do
  {
    v22 = 0;
    do
    {
      if (*v55 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v54 + 1) + 8 * v22);
      if (v8)
      {
        v24 = [*(*(&v54 + 1) + 8 * v22) identifier];
        v25 = [v8 member:v24];

        if (v25)
        {
          v26 = netepochsLogHandle;
          if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = v26;
          v28 = [v23 identifier];
          *buf = 138477827;
          v63 = v28;
          _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "Resetting entries for NetworkAttachment entries must skip %{private}@", buf, 0xCu);

          goto LABEL_28;
        }
      }

      v27 = [v23 kind];
      if ([v27 intValue]== 1)
      {
        v29 = [v23 identifier];
        v53 = 0;
        v30 = [a1 parsePrimaryKey:v29 majorID:&v53 minorID:0];
        v31 = v53;
        v20 = v31;
        if (v30)
        {
          v32 = v31 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {

LABEL_28:
          goto LABEL_30;
        }

        v33 = [v50 containsObject:v31];

        if (v33)
        {
          [v49 addObject:v23];
        }
      }

      else
      {

        v20 = 0;
      }

LABEL_30:
      ++v22;
    }

    while (v19 != v22);
    v34 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    v19 = v34;
  }

  while (v34);
LABEL_37:

  v35 = v48;
  v36 = v50;
  if ([v49 count])
  {
    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 1];
    v38 = [v48 countEntitiesMatching:v37];
    v39 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v63 = v50;
      _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "Resetting entries for NetworkAttachment entries for SSIDs:%{private}@", buf, 0xCu);
    }

    [v48 removeEntities:v49];
    if (![v48 countEntitiesMatching:v37] && v38 >= 0x15)
    {
      v40 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v63 = v38;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_ERROR, "All %lu Wi-Fi NAs have been deleted", buf, 0xCu);
      }

      v41 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      if (v41)
      {
        v42 = *MEMORY[0x277D6B020];
        v43 = *MEMORY[0x277D6B220];
        v44 = [&unk_2847EFB00 stringValue];
        v45 = [v41 signatureWithDomain:v42 type:v43 subType:@"All Wi-Fi NAs Deleted" subtypeContext:0 detectedProcess:@"symptomsd" triggerThresholdValues:v44];

        v36 = v50;
        v35 = v48;
        [v41 snapshotWithSignature:v45 duration:0 events:0 payload:0 actions:&__block_literal_global_108_0 reply:0.0];
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __56__NetworkEpoch_resetDataForSSIDs_exceptFor_inWorkspace___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "All Wi-Fi NAs Deleted Snapshot response: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)parsePrimaryKey:(id)a3 majorID:(id *)a4 minorID:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 UTF8String];
  v18 = 0;
  v9 = [NetworkEpoch parsePrimaryKeyStr:v8 majorIDLengthInBytes:&v18 + 4 minorIDLengthInBytes:&v18];
  if (v9)
  {
    if (a4)
    {
      if (HIDWORD(v18))
      {
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = [v10 initWithBytes:v8 length:SHIDWORD(v18) encoding:4];
        *a4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v11];
      }

      else
      {
        *a4 = &stru_2847966D8;
        v12 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v20 = v7;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "primaryKey (%{private}@) has no Major ID", buf, 0xCu);
        }
      }
    }

    if (a5)
    {
      if (v18)
      {
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        v14 = [v13 initWithBytes:v8 + SHIDWORD(v18) + 1 length:v18 encoding:4];
        *a5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v14];
      }

      else
      {
        *a5 = &stru_2847966D8;
        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v20 = v7;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "primaryKey (%{private}@) has no Minor ID", buf, 0xCu);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)parsePrimaryKeyStr:(const char *)a3 majorIDLengthInBytes:(int *)a4 minorIDLengthInBytes:(int *)a5
{
  if (!a3)
  {
    v9 = netepochsLogHandle;
    v10 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    *buf = 0;
    v11 = "primaryKey is null.";
    v12 = buf;
LABEL_8:
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, v11, v12, 2u);
LABEL_9:
    LOBYTE(v10) = 0;
    return v10;
  }

  v8 = strlen(a3);
  if (v8 < 3 || a3[v8 - 1] == 45)
  {
    v9 = netepochsLogHandle;
    v10 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    v15 = 0;
    v11 = "Invalid primary key format.";
    v12 = &v15;
    goto LABEL_8;
  }

  v13 = 0;
  while (a3[--v8] != 45)
  {
    ++v13;
    if (v8 <= 1)
    {
      goto LABEL_9;
    }
  }

  if (a4)
  {
    *a4 = v8;
  }

  if (a5)
  {
    *a5 = v13;
  }

  LOBYTE(v10) = 1;
  return v10;
}

+ (id)getNetworkSignatureForAddressFamily:(int)a3 interfaceName:(id)a4 identifier:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (a3 == 2 || a3 == 30)
  {
    v19 = 0;
    v9 = @"IPv6";
    if (a3 == 2)
    {
      v9 = @"IPv4";
    }

    v10 = v9;
    *v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    if (ifnet_get_signature([v7 UTF8String], a3, v26, &v19))
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = &stru_2847966D8;
        if (v8)
        {
          v12 = v8;
        }

        *buf = 138412547;
        v21 = v10;
        v22 = 2113;
        v23 = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Failed to set %@ network signature for: %{private}@", buf, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:24];
      v15 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v16 = &stru_2847966D8;
        *buf = 138412803;
        if (v8)
        {
          v16 = v8;
        }

        v21 = v10;
        v22 = 2113;
        v23 = v16;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Set %@ network signature for: %{private}@, sig: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v26 = 67109120;
      *&v26[4] = a3;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Cannot get network signature for unknown address family %d", v26, 8u);
    }

    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

@end