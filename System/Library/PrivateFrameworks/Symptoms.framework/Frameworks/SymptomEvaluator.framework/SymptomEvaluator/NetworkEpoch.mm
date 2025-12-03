@interface NetworkEpoch
+ (BOOL)parsePrimaryKey:(id)key majorID:(id *)d minorID:(id *)iD;
+ (BOOL)parsePrimaryKeyStr:(const char *)str majorIDLengthInBytes:(int *)bytes minorIDLengthInBytes:(int *)inBytes;
+ (BOOL)pruneDataOlderThan:(id)than exceptFor:(id)for inWorkspace:(id)workspace;
+ (id)getNetworkSignatureForAddressFamily:(int)family interfaceName:(id)name identifier:(id)identifier;
+ (id)snapshotsIn:(id)in olderThan:(id)than;
+ (void)resetDataFor:(id)for exceptFor:(id)exceptFor inWorkspace:(id)workspace;
+ (void)resetDataForSSIDs:(id)ds exceptFor:(id)for inWorkspace:(id)workspace;
- (BOOL)_isLiveRoutePerfinScope:(id)scope forTime:(id)time;
- (BOOL)countDownStop:(id)stop eventTimeStamp:(id)stamp;
- (BOOL)createCountDown:(id)down atTime:(id)time nextTick:(unint64_t)tick ticksTotal:(unint64_t)total onQueue:(id)queue withIterationBlock:(id)block completionBlock:(id)completionBlock;
- (BOOL)hasCountDownActive:(id)active;
- (BOOL)hasTypicalShortStay;
- (BOOL)matchesLOI:(int64_t)i;
- (SFLiveRoutePerf)currentLiveRoutePerf;
- (SFNetworkAttachment)durable;
- (id)_createCellSignature;
- (id)_init;
- (id)_initWithPrimaryKey:(id)key interfaceName:(id)name isCell:(BOOL)cell maxBars:(int)bars roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs supportsIPv4:(BOOL)pv4 supportsIPv6:(BOOL)self0 inWorkspace:(id)self1 andQueue:(id)self2;
- (id)_networkAttachmentDurableState;
- (id)copyWithZone:(_NSZone *)zone;
- (id)establishPartials:(id)partials withFlag:(BOOL)flag;
- (id)mapLOIToString;
- (int)compareToSnapshot:(id)snapshot;
- (int64_t)RTLocationOfInterestTypeForExtended:(int64_t)extended;
- (int64_t)getMatchingRTLocationOfInterestType;
- (void)_retrieveLOIAttrsOnQueue:(id)queue roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs reply:(id)reply;
- (void)dealloc;
- (void)refreshLOIOnQueue:(id)queue reply:(id)reply;
- (void)reportAdminDisable;
- (void)reportCaptivityRedirect;
- (void)reportCertError;
- (void)reportDataStall;
- (void)retire;
- (void)setDefRoute4:(__NStatSource *)route4;
- (void)setDefRoute6:(__NStatSource *)route6;
- (void)setLoi:(int64_t)loi;
- (void)unloadDurableState;
- (void)updateMetrics:(id)metrics source:(__NStatSource *)source wasProgress:(id)progress;
@end

@implementation NetworkEpoch

- (SFNetworkAttachment)durable
{
  durable = self->_durable;
  if (!durable)
  {
    _networkAttachmentDurableState = [(NetworkEpoch *)self _networkAttachmentDurableState];
    v5 = self->_durable;
    self->_durable = _networkAttachmentDurableState;

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
  date = [MEMORY[0x277CBEAA8] date];
  if (self->currentLiveRoutePerfObjectID)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->workspace mainObjectContext];
    v5 = [mainObjectContext objectWithID:self->currentLiveRoutePerfObjectID];

    if ([v5 isFault])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
      if ([(NetworkEpoch *)self _isLiveRoutePerfinScope:v6 forTime:date])
      {
        goto LABEL_26;
      }
    }

    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      currentLiveRoutePerfObjectID = self->currentLiveRoutePerfObjectID;
      v9 = v7;
      uRIRepresentation = [(NSManagedObjectID *)currentLiveRoutePerfObjectID URIRepresentation];
      durable = self->_durable;
      *buf = 134218498;
      selfCopy2 = self;
      v44 = 2112;
      v45 = uRIRepresentation;
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
  durable = [(NetworkEpoch *)self durable];
  hasDefaultRoute = [durable hasDefaultRoute];

  v14 = [hasDefaultRoute countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(hasDefaultRoute);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        if ([(NetworkEpoch *)self _isLiveRoutePerfinScope:v18 forTime:date])
        {
          v19 = v18;

          v6 = v19;
          goto LABEL_19;
        }
      }

      v15 = [hasDefaultRoute countByEnumeratingWithState:&v37 objects:v41 count:16];
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
    entityName = [MEMORY[0x277D6B5A0] entityName];
    v6 = [(NetworkAttachmentAnalytics *)naspace createEntityForEntityName:entityName];

    [v6 setEpochs:0.0];
    durable2 = [(NetworkEpoch *)self durable];
    kind = [durable2 kind];
    [v6 setKind:{objc_msgSend(kind, "shortValue")}];

    v24 = [DateRounder roundToDayResolutionOnly:date];
    [v6 setTimeStamp:v24];

    [v6 setRttMin:1.79769313e308];
    v25 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      identifier = self->identifier;
      *buf = 134218243;
      selfCopy2 = self;
      v44 = 2113;
      v45 = identifier;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "%p creating a new lrp for %{private}@", buf, 0x16u);
    }

    durable3 = [(NetworkEpoch *)self durable];
    [durable3 addHasDefaultRouteObject:v6];

    durable4 = [(NetworkEpoch *)self durable];
    hasDefaultRoute2 = [durable4 hasDefaultRoute];
    v30 = [hasDefaultRoute2 count];

    if (v30 == 1)
    {
      timeStamp = [v6 timeStamp];
      durable5 = [(NetworkEpoch *)self durable];
      [durable5 setFirstTimeStamp:timeStamp];
    }

    [(AnalyticsWorkspace *)self->workspace save];
  }

  objectID = [v6 objectID];
  v34 = self->currentLiveRoutePerfObjectID;
  self->currentLiveRoutePerfObjectID = objectID;

  v6 = v6;
LABEL_26:

  v35 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_initWithPrimaryKey:(id)key interfaceName:(id)name isCell:(BOOL)cell maxBars:(int)bars roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs supportsIPv4:(BOOL)pv4 supportsIPv6:(BOOL)self0 inWorkspace:(id)self1 andQueue:(id)self2
{
  eventCopy = event;
  v79 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  nameCopy = name;
  workspaceCopy = workspace;
  queueCopy = queue;
  v72.receiver = self;
  v72.super_class = NetworkEpoch;
  v20 = [(NetworkEpoch *)&v72 init];
  if (!v20)
  {
LABEL_30:
    v55 = v20;
    goto LABEL_31;
  }

  if (keyCopy)
  {
    v21 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:workspaceCopy withCache:0];
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
              date = [MEMORY[0x277CBEAA8] date];
              createdAt = v20->createdAt;
              v20->createdAt = date;

              objc_storeStrong(&v20->identifier, key);
              objc_storeStrong(&v20->_interfaceName, name);
              v20->_oncell = cell;
              v20->fromRoamingEvent = eventCopy;
              objc_storeStrong(&v20->workspace, workspace);
              v20->_bars = bars;
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

              v20->_supportsIPv4 = pv4;
              v20->_supportsIPv6 = pv6;
              _networkAttachmentDurableState = [(NetworkEpoch *)v20 _networkAttachmentDurableState];
              durable = v20->_durable;
              v20->_durable = _networkAttachmentDurableState;

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
                    isHotSpot = [(SFNetworkAttachment *)v45 isHotSpot];
                    v48 = "NO";
                    identifier = v20->identifier;
                    if (isHotSpot)
                    {
                      v48 = "YES";
                    }

                    *buf = 136315395;
                    v74 = v48;
                    v75 = 2113;
                    v76 = identifier;
                    _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_INFO, "Set hotspot %s for: %{private}@", buf, 0x16u);
                  }

                  netSignature = [(SFNetworkAttachment *)v20->_durable netSignature];
                  if (!netSignature || (v51 = netSignature, [(SFNetworkAttachment *)v20->_durable netSignature], v52 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v52, v51, (isKindOfClass & 1) != 0))
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

                  netSignatureV6 = [(SFNetworkAttachment *)v20->_durable netSignatureV6];
                  if (!netSignatureV6 || (v58 = netSignatureV6, [(SFNetworkAttachment *)v20->_durable netSignatureV6], v59 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v60 = objc_opt_isKindOfClass(), v59, v58, (v60 & 1) != 0))
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
                [(NetworkEpoch *)v63 _retrieveLOIAttrsOnQueue:queueCopy roamingEvent:eventCopy roamingAttrs:attrs reply:v70];
                v63->_seqno = ++epoch_count;
                v64 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218499;
                  v74 = v63;
                  v75 = 2113;
                  v76 = keyCopy;
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

- (void)refreshLOIOnQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__NetworkEpoch_refreshLOIOnQueue_reply___block_invoke;
  v8[3] = &unk_27898E090;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  [(NetworkEpoch *)self _retrieveLOIAttrsOnQueue:queue roamingEvent:0 roamingAttrs:259 reply:v8];
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

- (void)_retrieveLOIAttrsOnQueue:(id)queue roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs reply:(id)reply
{
  v61 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  replyCopy = reply;
  attrs = [(SFNetworkAttachment *)self->_durable attrs];
  integerValue = [attrs integerValue];

  if ((integerValue - 262) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(NetworkEpoch *)self setLoi:integerValue];
    if (queueCopy && replyCopy)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_2;
      v43[3] = &unk_27898B678;
      v43[4] = self;
      v44 = replyCopy;
      dispatch_async(queueCopy, v43);
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
      attrsCopy = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "LOI: epoch with primary key = %{private}@ inherits persisted value (loi=%ld)", buf, 0x16u);
    }

    goto LABEL_37;
  }

  oncell = self->_oncell;
  if (!event)
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
        attrsCopy = integerValue;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "LOI: slow path for epoch w/ primary key = %{private}@, old LOI = %ld", buf, 0x16u);
      }

      v35 = +[LocationStateRelay sharedInstance];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_21;
      v45[3] = &unk_27898E0B8;
      v45[4] = self;
      v47 = replyCopy;
      v46 = queueCopy;
      [v35 fetchCurrentLocationLOIOnQueue:v46 desiredAccuracy:v45 reply:1000.0];

      v17 = v47;
      goto LABEL_30;
    }

LABEL_15:
    v42 = queueCopy;
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
            durable = [v27 durable];
            attrs2 = [durable attrs];
            integerValue2 = [attrs2 integerValue];

            v31 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v32 = self->identifier;
              *buf = 138478083;
              v58 = v32;
              v59 = 2048;
              attrsCopy = integerValue2;
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "LOI: Cell, found LOI from concurrent epoch with primary key = %{private}@, LOI = %ld", buf, 0x16u);
            }

            if ((integerValue2 & 0xFFFFFFFFFFFFFFFELL) == 0x104)
            {
              [(NetworkEpoch *)self setLoi:integerValue2];

              v36 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v37 = self->identifier;
                v38 = v36;
                v39 = [(NetworkEpoch *)self loi];
                *buf = 138478083;
                v58 = v37;
                v59 = 2048;
                attrsCopy = v39;
                _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "LOI: Cell, adopted LOI from concurrent epoch with primary key = %{private}@, LOI = %ld", buf, 0x16u);
              }

              replyCopy = v41;
              queueCopy = v42;
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

    replyCopy = v41;
    queueCopy = v42;
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
    attrsCopy = attrs;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "LOI: WiFi roaming, setting LOI from retired epoch for NA with primary key = %{private}@, old LOI = %ld", buf, 0x16u);
  }

  [(NetworkEpoch *)self setLoi:attrs];
  if (queueCopy && replyCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke;
    block[3] = &unk_27898B678;
    block[4] = self;
    v55 = replyCopy;
    dispatch_async(queueCopy, block);
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
    date = [MEMORY[0x277CBEAA8] date];
    createdAt = v3->createdAt;
    v3->createdAt = date;

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
    selfCopy = self;
    v11 = 1024;
    v12 = epoch_count;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p collecting epoch, total epochs=%u", buf, 0x12u);
  }

  v8.receiver = self;
  v8.super_class = NetworkEpoch;
  [(NetworkEpoch *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLoi:(int64_t)loi
{
  v24 = *MEMORY[0x277D85DE8];
  loi = self->_loi;
  self->_loi = loi;
  if (self->_oncell)
  {
    netSignature = [(SFNetworkAttachment *)self->_durable netSignature];
    if (netSignature)
    {
      v6 = netSignature;
      netSignature2 = [(SFNetworkAttachment *)self->_durable netSignature];
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

    _createCellSignature = [(NetworkEpoch *)self _createCellSignature];
    durable = [(NetworkEpoch *)self durable];
    [durable setNetSignature:_createCellSignature];

    durable2 = [(NetworkEpoch *)self durable];
    netSignature3 = [durable2 netSignature];
    durable3 = [(NetworkEpoch *)self durable];
    [durable3 setNetSignatureV6:netSignature3];

    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      identifier = self->identifier;
      v16 = v14;
      durable4 = [(NetworkEpoch *)self durable];
      netSignature4 = [durable4 netSignature];
      v20 = 138478083;
      v21 = identifier;
      v22 = 2112;
      v23 = netSignature4;
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
    mapLOIToString = [(NetworkEpoch *)self mapLOIToString];
    v8 = [v6 stringWithFormat:@"%@-%@", v5, mapLOIToString];

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

- (void)setDefRoute4:(__NStatSource *)route4
{
  self->_defRoute4 = route4;
  if (route4)
  {
    MEMORY[0x238386EB0](route4, a2);

    JUMPOUT(0x238386EA0);
  }
}

- (void)setDefRoute6:(__NStatSource *)route6
{
  self->_defRoute6 = route6;
  if (route6)
  {
    MEMORY[0x238386EB0](route6, a2);

    JUMPOUT(0x238386EA0);
  }
}

- (BOOL)createCountDown:(id)down atTime:(id)time nextTick:(unint64_t)tick ticksTotal:(unint64_t)total onQueue:(id)queue withIterationBlock:(id)block completionBlock:(id)completionBlock
{
  downCopy = down;
  timeCopy = time;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  LOBYTE(v20) = 0;
  if (downCopy && self->_active)
  {
    v21 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:downCopy];

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
        [(CountDown *)v22 goOffNext:tick fromTime:timeCopy forEpoch:self timesTotal:total onQueue:queueCopy withIterationBlock:blockCopy completionBlock:completionBlockCopy];
        [(NSMutableDictionary *)self->tickers setObject:v23 forKeyedSubscript:downCopy];
        [(NetworkEpoch *)self setLastCountedDown:timeCopy];
      }
    }
  }

  return v20;
}

- (BOOL)countDownStop:(id)stop eventTimeStamp:(id)stamp
{
  v33 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  stampCopy = stamp;
  v8 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:stopCopy];
  v9 = v8;
  if (v8)
  {
    if (stampCopy)
    {
      startTime = [v8 startTime];
      [stampCopy timeIntervalSinceDate:startTime];
      v12 = v11;

      v13 = netepochsLogHandle;
      v14 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v12 < 0.0)
      {
        if (v14)
        {
          v15 = v13;
          interfaceName = [(NetworkEpoch *)self interfaceName];
          startTime2 = [v9 startTime];
          [stampCopy timeIntervalSinceDate:startTime2];
          v27 = 138412802;
          v28 = interfaceName;
          v29 = 2112;
          v30 = stopCopy;
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
        interfaceName2 = [(NetworkEpoch *)self interfaceName];
        startTime3 = [v9 startTime];
        [stampCopy timeIntervalSinceDate:startTime3];
        v27 = 138412802;
        v28 = interfaceName2;
        v29 = 2112;
        v30 = stopCopy;
        v31 = 2048;
        v32 = v24;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "stop on %@ for %@ because the event timeStamp qualify: %f", &v27, 0x20u);
      }
    }

    [v9 stop];
    [(NSMutableDictionary *)self->tickers removeObjectForKey:stopCopy];
    v20 = 1;
    goto LABEL_13;
  }

  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v15 = v19;
    interfaceName = [(NetworkEpoch *)self interfaceName];
    v27 = 138412546;
    v28 = interfaceName;
    v29 = 2112;
    v30 = stopCopy;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "no stop on %@ for %@ because the ticker was not found", &v27, 0x16u);
    goto LABEL_8;
  }

LABEL_9:
  v20 = 0;
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)hasCountDownActive:(id)active
{
  v3 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:active];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasTypicalShortStay
{
  v24 = *MEMORY[0x277D85DE8];
  durable = [(NetworkEpoch *)self durable];
  v3 = durable;
  if (!durable)
  {
    goto LABEL_9;
  }

  overallStayMean = [durable overallStayMean];
  [overallStayMean doubleValue];
  v6 = v5;

  overallStayVar = [v3 overallStayVar];
  [overallStayVar doubleValue];
  v9 = v8;

  v10 = v6 > 0.0 && v6 < 120.0;
  if (v10 && v9 < 1600.0)
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      identifier = [v3 identifier];
      v18 = 138412802;
      v19 = identifier;
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

- (BOOL)_isLiveRoutePerfinScope:(id)scope forTime:(id)time
{
  timeCopy = time;
  timeStamp = [scope timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v8 = v7;

  v9 = v8;
  if (v8 < 0)
  {
    v9 = -v9;
  }

  return v9 < 0x93A80;
}

- (id)establishPartials:(id)partials withFlag:(BOOL)flag
{
  flagCopy = flag;
  partialsCopy = partials;
  naspace = self->naspace;
  entityName = [MEMORY[0x277D6B5A0] entityName];
  v9 = [(NetworkAttachmentAnalytics *)naspace createTemporaryEntityForEntityName:entityName];

  date = [MEMORY[0x277CBEAA8] date];
  [v9 setTimeStamp:date];

  v11 = self->naspace;
  entityName2 = [MEMORY[0x277D6B5A8] entityName];
  v13 = [(NetworkAttachmentAnalytics *)v11 createTemporaryEntityForEntityName:entityName2];

  durable = [(NetworkEpoch *)self durable];
  identifier = [durable identifier];
  [v13 setIdentifier:identifier];

  [v9 setHasNetworkAttachment:v13];
  v16 = 1.79769313e308;
  if (self->fromRoamingEvent && !flagCopy)
  {
    [v9 setConnSuccesses:{objc_msgSend(partialsCopy, "connectSuccesses", 1.79769313e308)}];
    [v9 setConnAttempts:{objc_msgSend(partialsCopy, "connectAttempts")}];
    [v9 setPacketsIn:{objc_msgSend(partialsCopy, "rxPackets")}];
    [v9 setPacketsOut:{objc_msgSend(partialsCopy, "txPackets")}];
    [v9 setBytesIn:{objc_msgSend(partialsCopy, "rxBytes")}];
    [v9 setBytesOut:{objc_msgSend(partialsCopy, "txBytes")}];
    [v9 setRxDupeBytes:{objc_msgSend(partialsCopy, "rxDuplicateBytes")}];
    [v9 setRxOOOBytes:{objc_msgSend(partialsCopy, "rxOutOfOrderBytes")}];
    [v9 setReTxBytes:{objc_msgSend(partialsCopy, "txRetransmittedBytes")}];
    [partialsCopy rttMinimum];
    if (v16 == 0.0)
    {
      v16 = 1.79769313e308;
    }
  }

  [v9 setRttMin:v16];
  if (flagCopy)
  {
    [partialsCopy rttAverage];
    if (v17 != 0.0)
    {
      v18 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "Initializing rtt avg and rtt var", v22, 2u);
      }

      [partialsCopy rttAverage];
      self->_initialRttAvg = v19;
      [partialsCopy rttVariation];
      self->_initialRttVar = v20;
    }
  }

  return v9;
}

- (void)updateMetrics:(id)metrics source:(__NStatSource *)source wasProgress:(id)progress
{
  v118 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  progressCopy = progress;
  if ([(NetworkEpoch *)self defRoute4]== source && !self->_partial4)
  {
    v87 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v88 = v87;
      oncell = [(NetworkEpoch *)self oncell];
      v90 = "wifi";
      if (oncell)
      {
        v90 = "cell";
      }

      *v111 = 136315138;
      *&v111[4] = v90;
      _os_log_impl(&dword_23255B000, v88, OS_LOG_TYPE_DEFAULT, "Establishing a partial for IPv4 on %s", v111, 0xCu);
    }

    v91 = [(NetworkEpoch *)self establishPartials:metricsCopy withFlag:0];
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
    oncell2 = [(NetworkEpoch *)self oncell];
    v96 = "wifi";
    if (oncell2)
    {
      v96 = "cell";
    }

    *v111 = 136315138;
    *&v111[4] = v96;
    goto LABEL_82;
  }

  if ([(NetworkEpoch *)self defRoute6]== source && !self->_partial6)
  {
    v97 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v98 = v97;
      oncell3 = [(NetworkEpoch *)self oncell];
      v100 = "wifi";
      if (oncell3)
      {
        v100 = "cell";
      }

      *v111 = 136315138;
      *&v111[4] = v100;
      _os_log_impl(&dword_23255B000, v98, OS_LOG_TYPE_DEFAULT, "Establishing a partial for IPv6 on %s", v111, 0xCu);
    }

    v101 = [(NetworkEpoch *)self establishPartials:metricsCopy withFlag:0];
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
      v106 = [(NetworkEpoch *)self establishPartials:metricsCopy withFlag:1, *v111];
      partial = self->_partial;
      self->_partial = v106;

LABEL_84:
      date = [MEMORY[0x277CBEAA8] date];
      lastBytesPartialUpdate = self->lastBytesPartialUpdate;
      self->lastBytesPartialUpdate = date;

LABEL_85:
      (*(progressCopy + 2))(progressCopy, 0, 0);
      goto LABEL_86;
    }

    v94 = v103;
    oncell4 = [(NetworkEpoch *)self oncell];
    v105 = "wifi";
    if (oncell4)
    {
      v105 = "cell";
    }

    *v111 = 136315138;
    *&v111[4] = v105;
LABEL_82:
    _os_log_impl(&dword_23255B000, v94, OS_LOG_TYPE_DEFAULT, "Establishing _partial on %s", v111, 0xCu);

    goto LABEL_83;
  }

  if ([(NetworkEpoch *)self defRoute4]== source)
  {
    v11 = @"IPv4";
    v12 = 216;
  }

  else
  {
    if ([(NetworkEpoch *)self defRoute6]!= source)
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
    [metricsCopy rttAverage];
    if (v14 != 0.0)
    {
      [metricsCopy rttAverage];
      self->_initialRttAvg = v15;
      [metricsCopy rttVariation];
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

  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  connectSuccesses = [metricsCopy connectSuccesses];
  [v13 connSuccesses];
  v22 = connectSuccesses - v21;
  if (connectSuccesses - v21 > 0.0)
  {
    [currentLiveRoutePerf connSuccesses];
    [currentLiveRoutePerf setConnSuccesses:v22 + v23];
    [v13 setConnSuccesses:connectSuccesses];
    [(SFLiveRoutePerf *)self->_partial connSuccesses];
    [(SFLiveRoutePerf *)self->_partial setConnSuccesses:v22 + v24];
  }

  connectAttempts = [metricsCopy connectAttempts];
  [v13 connAttempts];
  v27 = connectAttempts - v26;
  if (connectAttempts - v26 > 0.0)
  {
    [currentLiveRoutePerf connAttempts];
    [currentLiveRoutePerf setConnAttempts:v27 + v28];
    [v13 setConnAttempts:connectAttempts];
    [(SFLiveRoutePerf *)self->_partial connAttempts];
    [(SFLiveRoutePerf *)self->_partial setConnAttempts:v27 + v29];
  }

  rxPackets = [metricsCopy rxPackets];
  [v13 packetsIn];
  v32 = rxPackets - v31;
  if (rxPackets - v31 > 0.0)
  {
    [currentLiveRoutePerf packetsIn];
    [currentLiveRoutePerf setPacketsIn:v32 + v33];
    [v13 setPacketsIn:rxPackets];
    [(SFLiveRoutePerf *)self->_partial packetsIn];
    [(SFLiveRoutePerf *)self->_partial setPacketsIn:v32 + v34];
  }

  txPackets = [metricsCopy txPackets];
  [v13 packetsOut];
  v37 = txPackets - v36;
  if (txPackets - v36 > 0.0)
  {
    [currentLiveRoutePerf packetsOut];
    [currentLiveRoutePerf setPacketsOut:v37 + v38];
    [v13 setPacketsOut:txPackets];
    [(SFLiveRoutePerf *)self->_partial packetsOut];
    [(SFLiveRoutePerf *)self->_partial setPacketsOut:v37 + v39];
  }

  rxBytes = [metricsCopy rxBytes];
  [v13 bytesIn];
  v42 = rxBytes - v41;
  if (rxBytes - v41 > 0.0)
  {
    [currentLiveRoutePerf bytesIn];
    [currentLiveRoutePerf setBytesIn:v42 + v43];
    [v13 setBytesIn:rxBytes];
    [(SFLiveRoutePerf *)self->_partial bytesIn];
    [(SFLiveRoutePerf *)self->_partial setBytesIn:v42 + v44];
  }

  txBytes = [metricsCopy txBytes];
  [v13 bytesOut];
  v47 = txBytes - v46;
  if (txBytes - v46 > 0.0)
  {
    [currentLiveRoutePerf bytesOut];
    [currentLiveRoutePerf setBytesOut:v47 + v48];
    [v13 setBytesOut:txBytes];
    [(SFLiveRoutePerf *)self->_partial bytesOut];
    [(SFLiveRoutePerf *)self->_partial setBytesOut:v47 + v49];
  }

  rxDuplicateBytes = [metricsCopy rxDuplicateBytes];
  [v13 rxDupeBytes];
  v52 = rxDuplicateBytes - v51;
  if (rxDuplicateBytes - v51 > 0.0)
  {
    [currentLiveRoutePerf rxDupeBytes];
    [currentLiveRoutePerf setRxDupeBytes:v52 + v53];
    [v13 setRxDupeBytes:rxDuplicateBytes];
    [(SFLiveRoutePerf *)self->_partial rxDupeBytes];
    [(SFLiveRoutePerf *)self->_partial setRxDupeBytes:v52 + v54];
  }

  rxOutOfOrderBytes = [metricsCopy rxOutOfOrderBytes];
  [v13 rxOOOBytes];
  v57 = rxOutOfOrderBytes - v56;
  if (rxOutOfOrderBytes - v56 > 0.0)
  {
    [currentLiveRoutePerf rxOOOBytes];
    [currentLiveRoutePerf setRxOOOBytes:v57 + v58];
    [v13 setRxOOOBytes:rxOutOfOrderBytes];
    [(SFLiveRoutePerf *)self->_partial rxOOOBytes];
    [(SFLiveRoutePerf *)self->_partial setRxOOOBytes:v57 + v59];
  }

  txRetransmittedBytes = [metricsCopy txRetransmittedBytes];
  [v13 reTxBytes];
  v62 = txRetransmittedBytes - v61;
  if (txRetransmittedBytes - v61 > 0.0)
  {
    [currentLiveRoutePerf reTxBytes];
    [currentLiveRoutePerf setReTxBytes:v62 + v63];
    [v13 setReTxBytes:txRetransmittedBytes];
    [(SFLiveRoutePerf *)self->_partial reTxBytes];
    [(SFLiveRoutePerf *)self->_partial setReTxBytes:v62 + v64];
  }

  [metricsCopy rttMinimum];
  if (v65 != 0.0)
  {
    v66 = v65;
    [v13 rttMin];
    if (v66 < v67)
    {
      [currentLiveRoutePerf rttMin];
      if (v68 >= v66)
      {
        v68 = v66;
      }

      [currentLiveRoutePerf setRttMin:v68];
      [v13 setRttMin:v66];
      [(SFLiveRoutePerf *)self->_partial rttMin];
      if (v69 >= v66)
      {
        v69 = v66;
      }

      [(SFLiveRoutePerf *)self->_partial setRttMin:v69];
    }
  }

  [metricsCopy rttAverage];
  [v13 setRttAvg:?];
  [v13 rttAvg];
  [(SFLiveRoutePerf *)self->_partial setRttAvg:?];
  [metricsCopy rttVariation];
  [v13 setRttVar:?];
  [v13 rttVar];
  [(SFLiveRoutePerf *)self->_partial setRttVar:?];
  if (!self->_active)
  {
    if ([(NetworkEpoch *)self defRoute4]== source)
    {
      v70 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v71 = v70;
        defRoute4 = [(NetworkEpoch *)self defRoute4];
        *v111 = 134217984;
        *&v111[4] = defRoute4;
        _os_log_impl(&dword_23255B000, v71, OS_LOG_TYPE_INFO, "forcefully removing defroute4: %p", v111, 0xCu);
      }

      [(NetworkEpoch *)self defRoute4];
      NStatSourceRemove();
      [(NetworkEpoch *)self setDefRoute4:0];
    }

    if ([(NetworkEpoch *)self defRoute6]== source)
    {
      v73 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v74 = v73;
        defRoute6 = [(NetworkEpoch *)self defRoute6];
        *v111 = 134217984;
        *&v111[4] = defRoute6;
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
        primaryKey = [(NetworkEpoch *)self primaryKey];
        *v111 = 138477827;
        *&v111[4] = primaryKey;
        _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_DEFAULT, "persisting data for %{private}@", v111, 0xCu);
      }

      [(AnalyticsWorkspace *)self->workspace save];
    }
  }

  v79 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v80 = v79;
    interfaceName = [(NetworkEpoch *)self interfaceName];
    primaryKey2 = [(NetworkEpoch *)self primaryKey];
    v83 = primaryKey2;
    v84 = "below";
    *v111 = 138413315;
    *&v111[4] = v11;
    *&v111[12] = 2112;
    *&v111[14] = interfaceName;
    if (v42 > 10240.0)
    {
      v84 = "above";
    }

    v112 = 2113;
    v113 = primaryKey2;
    v114 = 2048;
    v115 = v42;
    v116 = 2080;
    v117 = v84;
    _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEFAULT, "%@ progress on %@ for %{private}@: deltaBytesIn: %llu is %s threshold", v111, 0x34u);
  }

  (*(progressCopy + 2))(progressCopy, v42 > 10240.0, self->lastBytesPartialUpdate);
  if (v42 != 0.0)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    v86 = self->lastBytesPartialUpdate;
    self->lastBytesPartialUpdate = date2;
  }

LABEL_86:
  v110 = *MEMORY[0x277D85DE8];
}

- (void)reportDataStall
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf dataStalls];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setDataStalls:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial dataStalls];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setDataStalls:v8];
}

- (void)reportCaptivityRedirect
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf captivityRedirects];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setCaptivityRedirects:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial captivityRedirects];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setCaptivityRedirects:v8];
}

- (void)reportCertError
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf certErrors];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setCertErrors:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial certErrors];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setCertErrors:v8];
}

- (void)reportAdminDisable
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf adminDisables];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setAdminDisables:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial adminDisables];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setAdminDisables:v8];
}

- (void)retire
{
  v101[1] = *MEMORY[0x277D85DE8];
  self->_active = 0;
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf epochs];
  v5 = v4;
  [currentLiveRoutePerf overallStay];
  v7 = v6;
  overall = [(NetworkEpoch *)self overall];
  [overall stop];
  v10 = v9;

  v11 = v7 / v5;
  if (v5 == 0.0)
  {
    v11 = v10;
  }

  v12 = v10 - v11;
  [currentLiveRoutePerf setOverallStay:v7 + v10];
  [currentLiveRoutePerf setEpochs:v5 + 1.0];
  [currentLiveRoutePerf overallStay];
  v14 = v13;
  [currentLiveRoutePerf epochs];
  v16 = v14 / v15;
  [currentLiveRoutePerf overallStayM2];
  [currentLiveRoutePerf setOverallStayM2:v17 + v12 * (v10 - v16)];
  [currentLiveRoutePerf lqmTransitionCount];
  v19 = v18;
  [(NetworkEpoch *)self lqmTransitions];
  [currentLiveRoutePerf setLqmTransitionCount:v19 + v20];
  lowLqm = [(NetworkEpoch *)self lowLqm];
  [lowLqm stop];
  v23 = v22;

  [currentLiveRoutePerf lowLqmStay];
  [currentLiveRoutePerf setLowLqmStay:v23 + v24];
  lowq = [(NetworkEpoch *)self lowq];
  [lowq stop];
  v27 = v26;

  [currentLiveRoutePerf lowqStay];
  [currentLiveRoutePerf setLowqStay:v27 + v28];
  fatal = [(NetworkEpoch *)self fatal];
  [fatal stop];
  v31 = v30;

  [currentLiveRoutePerf faultyStay];
  [currentLiveRoutePerf setFaultyStay:v31 + v32];
  date = [MEMORY[0x277CBEAA8] date];
  v34 = [DateRounder roundToDayResolutionOnly:date];
  [currentLiveRoutePerf setTimeStamp:v34];

  [(NetworkEpoch *)self topDownlRate];
  v36 = v35;
  [currentLiveRoutePerf topDownloadRate];
  if (v36 > v37)
  {
    [(NetworkEpoch *)self topDownlRate];
    [currentLiveRoutePerf setTopDownloadRate:?];
  }

  timeStamp = [currentLiveRoutePerf timeStamp];
  durable = [(NetworkEpoch *)self durable];
  [durable setTimeStamp:timeStamp];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NetworkEpoch loi](self, "loi")}];
  durable2 = [(NetworkEpoch *)self durable];
  [durable2 setAttrs:v40];

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
    interfaceName = [(NetworkEpoch *)self interfaceName];
    primaryKey = [(NetworkEpoch *)self primaryKey];
    v51 = epoch_count;
    [currentLiveRoutePerf lqmTransitionCount];
    v53 = v52;
    [currentLiveRoutePerf lowLqmStay];
    v55 = v54;
    [currentLiveRoutePerf lowqStay];
    v57 = v56;
    [currentLiveRoutePerf dataStalls];
    v59 = v58;
    [currentLiveRoutePerf captivityRedirects];
    v61 = v60;
    [currentLiveRoutePerf certErrors];
    v63 = v62;
    [currentLiveRoutePerf adminDisables];
    v65 = v64;
    defRoute4 = [(NetworkEpoch *)self defRoute4];
    defRoute6 = [(NetworkEpoch *)self defRoute6];
    v68 = [(NetworkEpoch *)self loi];
    *buf = 134221571;
    selfCopy = self;
    v73 = 2112;
    v74 = interfaceName;
    v75 = 2113;
    v76 = primaryKey;
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
    v96 = defRoute4;
    v97 = 2048;
    v98 = defRoute6;
    v99 = 2048;
    v100 = v68;
    _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "%p retired epoch on %@ for %{private}@: stay time accrued = %f, total epochs = %d, LQM transitions = %f, low LQM stay = %f, low RSSI stay = %f, data stalls: %f, captRedirects: %f, certErrors: %f, adminDisables: %f, defroutes %p %p, loi: %ld", buf, 0x94u);
  }

  v69 = *MEMORY[0x277D85DE8];
}

- (id)_networkAttachmentDurableState
{
  v60 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
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
    radioTechnology = [v5 radioTechnology];
    if (radioTechnology == 11 && nrNetworkAttachmentLastCreationTime != 0)
    {
      [nrNetworkAttachmentLastCreationTime timeIntervalSinceNow];
      if (v8 > -2.0)
      {

        if (collapsedNRNetworkAttachmentID)
        {
          mainObjectContext = [(AnalyticsWorkspace *)self->workspace mainObjectContext];
          v10 = [mainObjectContext objectWithID:collapsedNRNetworkAttachmentID];
          v11 = v49[5];
          v49[5] = v10;
        }

        v4 = @"CollapsedNR";
      }
    }

    v12 = radioTechnology != 11;
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
    v15 = [DateRounder roundToDayResolutionOnly:date, v42, v43, v44, v45];
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
    v22 = [DateRounder roundToDayResolutionOnly:date];
    [v49[5] setFirstTimeStamp:v22];

    firstTimeStamp = [v49[5] firstTimeStamp];
    [v49[5] setTimeStamp:firstTimeStamp];

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
      selfCopy4 = self;
      v56 = 2113;
      v57 = identifier;
      v30 = "%p created new entry for %{private}@";
    }

    else
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v34 = nrNetworkAttachmentLastCreationTime;
      nrNetworkAttachmentLastCreationTime = date2;

      if ([(__CFString *)v14 isEqualToString:@"CollapsedNR"])
      {
        [(AnalyticsWorkspace *)self->workspace save];
        objectID = [v49[5] objectID];
        v36 = collapsedNRNetworkAttachmentID;
        collapsedNRNetworkAttachmentID = objectID;

        v37 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v38 = self->identifier;
        *buf = 134218499;
        selfCopy4 = self;
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
      selfCopy4 = self;
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
    uTF8String = [(NSString *)self->identifier UTF8String];
    *buf = 134218243;
    selfCopy4 = self;
    v56 = 2081;
    v57 = uTF8String;
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
    selfCopy = self;
    v9 = 2113;
    v10 = identifier;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "%p unloaded durable state for %{private}@", &v7, 0x16u);
  }

  durable = self->_durable;
  self->_durable = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [[NetworkEpoch allocWithZone:?]];
  objc_storeStrong(v4 + 2, self->identifier);
  v5 = +[WiFiTriggerHandler getNetScoreInfo];
  v6 = v4[11];
  v4[11] = v5;

  [(NetworkEpoch *)self topDownlRate];
  v4[31] = v7;
  fatal = [(NetworkEpoch *)self fatal];
  *(v4 + 98) = [fatal isRunning];

  lowLqm = [(NetworkEpoch *)self lowLqm];
  *(v4 + 96) = [lowLqm isRunning];

  lowq = [(NetworkEpoch *)self lowq];
  *(v4 + 97) = [lowq isRunning];

  durable = [(NetworkEpoch *)self durable];
  *(v4 + 99) = [durable isKnownGood];

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

- (int)compareToSnapshot:(id)snapshot
{
  v40 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
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
  intValue = [v8 intValue];

  v10 = snapshotCopy[11];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScore];
  v12 = [v10 objectForKeyedSubscript:v11];
  intValue2 = [v12 intValue];

  if (intValue <= intValue2)
  {
    v15 = 0;
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 67109376;
      *v38 = intValue;
      *&v38[4] = 1024;
      *&v38[6] = intValue2;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "relative comparison, netscore improved, %d vs %d", &v37, 0xEu);
    }

    v15 = 1;
  }

  if (intValue >= 51 && intValue2 <= 50)
  {
    v16 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "relative comparison: bonus point for going from bottom half to top half", &v37, 2u);
    }

    ++v15;
  }

  lowLqm = [(NetworkEpoch *)self lowLqm];
  if ([lowLqm isRunning])
  {
  }

  else
  {
    v18 = *(snapshotCopy + 96);

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

  lowq = [(NetworkEpoch *)self lowq];
  if ([lowq isRunning])
  {
  }

  else
  {
    v21 = *(snapshotCopy + 97);

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

  if (*(snapshotCopy + 98) == 1)
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
  if (v24 != 0.0 && *(snapshotCopy + 31) != 0.0)
  {
    [(NetworkEpoch *)self topDownlRate];
    if (v25 > *(snapshotCopy + 31))
    {
      v26 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        [(NetworkEpoch *)self topDownlRate];
        v28 = snapshotCopy[31];
        v37 = 134218240;
        *v38 = v29;
        *&v38[8] = 2048;
        v39 = v28;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "relative comparison, superior rate clocked, %f vs %f", &v37, 0x16u);
      }

      ++v15;
    }
  }

  durable = [(NetworkEpoch *)self durable];
  if ([durable isKnownGood])
  {
    v31 = *(snapshotCopy + 99);

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

- (BOOL)matchesLOI:(int64_t)i
{
  if (i)
  {
    if (i != 1)
    {
      return 0;
    }

    v3 = 261;
  }

  else
  {
    v3 = 260;
  }

  durable = [(NetworkEpoch *)self durable];
  attrs = [durable attrs];
  v6 = [attrs integerValue] == v3;

  return v6;
}

- (int64_t)getMatchingRTLocationOfInterestType
{
  durable = [(NetworkEpoch *)self durable];
  attrs = [durable attrs];
  v5 = -[NetworkEpoch RTLocationOfInterestTypeForExtended:](self, "RTLocationOfInterestTypeForExtended:", [attrs integerValue]);

  return v5;
}

- (int64_t)RTLocationOfInterestTypeForExtended:(int64_t)extended
{
  v3 = 1;
  if (extended != 261)
  {
    v3 = -1;
  }

  if (extended == 260)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (id)snapshotsIn:(id)in olderThan:(id)than
{
  v5 = MEMORY[0x277CCAC30];
  inCopy = in;
  than = [v5 predicateWithFormat:@"createdAt < %@", than];
  v8 = [inCopy filteredArrayUsingPredicate:than];

  return v8;
}

+ (BOOL)pruneDataOlderThan:(id)than exceptFor:(id)for inWorkspace:(id)workspace
{
  v31[2] = *MEMORY[0x277D85DE8];
  thanCopy = than;
  forCopy = for;
  workspaceCopy = workspace;
  v10 = MEMORY[0x277CCAC30];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  thanCopy = [v10 predicateWithFormat:@"%K >= %@ AND %K < %@", @"timeStamp", distantPast, @"timeStamp", thanCopy];

  if (forCopy && [forCopy count])
  {
    forCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"identifier", forCopy];
    v14 = MEMORY[0x277CCA920];
    v31[0] = thanCopy;
    v31[1] = forCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v16 = thanCopy;
  }

  v17 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:workspaceCopy withCache:0];
  v18 = [v17 removeEntitiesMatching:v16];
  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    v26 = v18;
    v27 = 2112;
    v28 = thanCopy;
    v29 = 2113;
    v30 = forCopy;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld NetworkAttachment entries with timestamp before %@, except %{private}@", buf, 0x20u);
  }

  v20 = [objc_alloc(MEMORY[0x277D6B540]) initWithWorkspace:workspaceCopy entityName:@"LiveRoutePerf" withCache:0];
  v21 = [v20 removeEntitiesMatching:thanCopy];
  v22 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v26 = v21;
    v27 = 2112;
    v28 = thanCopy;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Removed %ld LiveRoutePerf entries with timestamp before %@", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return (v18 | v21) != 0;
}

+ (void)resetDataFor:(id)for exceptFor:(id)exceptFor inWorkspace:(id)workspace
{
  v31[2] = *MEMORY[0x277D85DE8];
  forCopy = for;
  exceptForCopy = exceptFor;
  v9 = MEMORY[0x277D6B538];
  workspaceCopy = workspace;
  v11 = [[v9 alloc] initWithWorkspace:workspaceCopy withCache:0];

  if (forCopy && [forCopy count])
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", forCopy];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE", v21, v23];
  }
  v12 = ;
  if (exceptForCopy && [exceptForCopy count])
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"identifier", exceptForCopy];
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
    v28 = forCopy;
    v29 = 2113;
    v30 = exceptForCopy;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld NetworkAttachment entries with identifier matching %{private}@ except %{private}@", buf, 0x20u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)resetDataForSSIDs:(id)ds exceptFor:(id)for inWorkspace:(id)workspace
{
  v66 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  forCopy = for;
  workspaceCopy = workspace;
  v9 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:workspaceCopy withCache:0];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v11 = dsCopy;
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
          [array addObjectsFromArray:v14];
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
  obj = array;
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
      if (forCopy)
      {
        identifier = [*(*(&v54 + 1) + 8 * v22) identifier];
        v25 = [forCopy member:identifier];

        if (v25)
        {
          v26 = netepochsLogHandle;
          if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          kind = v26;
          identifier2 = [v23 identifier];
          *buf = 138477827;
          v63 = identifier2;
          _os_log_impl(&dword_23255B000, kind, OS_LOG_TYPE_DEFAULT, "Resetting entries for NetworkAttachment entries must skip %{private}@", buf, 0xCu);

          goto LABEL_28;
        }
      }

      kind = [v23 kind];
      if ([kind intValue]== 1)
      {
        identifier3 = [v23 identifier];
        v53 = 0;
        v30 = [self parsePrimaryKey:identifier3 majorID:&v53 minorID:0];
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
          [array2 addObject:v23];
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
  if ([array2 count])
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

    [v48 removeEntities:array2];
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
        stringValue = [&unk_2847EFB00 stringValue];
        v45 = [v41 signatureWithDomain:v42 type:v43 subType:@"All Wi-Fi NAs Deleted" subtypeContext:0 detectedProcess:@"symptomsd" triggerThresholdValues:stringValue];

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

+ (BOOL)parsePrimaryKey:(id)key majorID:(id *)d minorID:(id *)iD
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];
  v18 = 0;
  v9 = [NetworkEpoch parsePrimaryKeyStr:uTF8String majorIDLengthInBytes:&v18 + 4 minorIDLengthInBytes:&v18];
  if (v9)
  {
    if (d)
    {
      if (HIDWORD(v18))
      {
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = [v10 initWithBytes:uTF8String length:SHIDWORD(v18) encoding:4];
        *d = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v11];
      }

      else
      {
        *d = &stru_2847966D8;
        v12 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v20 = keyCopy;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "primaryKey (%{private}@) has no Major ID", buf, 0xCu);
        }
      }
    }

    if (iD)
    {
      if (v18)
      {
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        v14 = [v13 initWithBytes:uTF8String + SHIDWORD(v18) + 1 length:v18 encoding:4];
        *iD = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v14];
      }

      else
      {
        *iD = &stru_2847966D8;
        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v20 = keyCopy;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "primaryKey (%{private}@) has no Minor ID", buf, 0xCu);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)parsePrimaryKeyStr:(const char *)str majorIDLengthInBytes:(int *)bytes minorIDLengthInBytes:(int *)inBytes
{
  if (!str)
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

  v8 = strlen(str);
  if (v8 < 3 || str[v8 - 1] == 45)
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
  while (str[--v8] != 45)
  {
    ++v13;
    if (v8 <= 1)
    {
      goto LABEL_9;
    }
  }

  if (bytes)
  {
    *bytes = v8;
  }

  if (inBytes)
  {
    *inBytes = v13;
  }

  LOBYTE(v10) = 1;
  return v10;
}

+ (id)getNetworkSignatureForAddressFamily:(int)family interfaceName:(id)name identifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  if (family == 2 || family == 30)
  {
    v19 = 0;
    v9 = @"IPv6";
    if (family == 2)
    {
      v9 = @"IPv4";
    }

    v10 = v9;
    *v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    if (ifnet_get_signature([nameCopy UTF8String], family, v26, &v19))
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = &stru_2847966D8;
        if (identifierCopy)
        {
          v12 = identifierCopy;
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
        if (identifierCopy)
        {
          v16 = identifierCopy;
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
      *&v26[4] = family;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Cannot get network signature for unknown address family %d", v26, 8u);
    }

    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

@end