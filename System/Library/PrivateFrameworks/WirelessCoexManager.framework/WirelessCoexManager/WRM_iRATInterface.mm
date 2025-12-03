@interface WRM_iRATInterface
- (WRM_iRATInterface)init;
- (int)getStatusUpdateMessageType:(int)type;
- (int)getSubscribeMessageType:(int)type;
- (void)_expediteBBAssertionBGAppActive_sync:(BOOL)active_sync handler:(id)handler;
- (void)assertCommCenterBaseBandMode:(int)mode;
- (void)expediteBBAssertionBGAppActive:(BOOL)active handler:(id)handler;
- (void)expediteCellularForReason:(BOOL)reason reason:(id)a4;
- (void)getLinkRecommendationMetrics:(id)metrics;
- (void)getMLPredictedThroughput:(id)throughput options:(id)options;
- (void)getProximityLinkRecommendation:(BOOL)recommendation recommendation:(id)a4;
- (void)getStreamingInfo:(id)info linkType:(int)type;
- (void)getVoiceLqmValue:(int64_t)value completionHandler:(id)handler;
- (void)handleNotification:(id)notification :(BOOL)a4;
- (void)processBTLQMNotification:(id)notification;
- (void)processLowPowerModePeriodicWakeUpNotification;
- (void)processMetricsNotificationReport:(id)report;
- (void)processNotificationList:(id)list :(unint64_t)a4;
- (void)processNotificationListForTerminus:(id)terminus;
- (void)processOperatingModeNotification:(id)notification;
- (void)processVoiceLqmNotification:(id)notification;
- (void)reConnect;
- (void)removeAppType:(id)type;
- (void)removeProximityLinkRecommendationType:(id)type;
- (void)setTelephonyEnabled:(BOOL)enabled;
- (void)statusUpdateAppLinkPreference:(int)preference status:(BOOL)status;
- (void)statusUpdateAppType:(int)type linkType:(int)linkType serviceStatus:(BOOL)status;
- (void)subscribeAppType:(id)type observer:(id)observer;
- (void)subscribeBtLqmScoreNotification:(id)notification;
- (void)subscribeMultipleAppTypes:(id)types observer:(id)observer;
- (void)subscribeOperatingModeChangeNotification:(id)notification;
- (void)subscribeProximityLinkRecommendation:(id)recommendation;
- (void)subscribeVoiceLqmNotification:(id)notification;
- (void)unregisterClient;
@end

@implementation WRM_iRATInterface

- (WRM_iRATInterface)init
{
  v15.receiver = self;
  v15.super_class = WRM_iRATInterface;
  v2 = [(WRMClientInterface *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAppLists = v2->mAppLists;
    v2->mAppLists = v3;

    v2->mClientSupportsMultipleAppTypes = 0;
    mObserver = v2->mObserver;
    v2->mObserver = 0;

    mOppModeObserver = v2->mOppModeObserver;
    v2->mOppModeObserver = 0;

    mProximitySubscribeLinkRecommendationHandler = v2->mProximitySubscribeLinkRecommendationHandler;
    v2->mProximitySubscribeLinkRecommendationHandler = 0;

    mProximityGetLinkRecommendationHandler = v2->mProximityGetLinkRecommendationHandler;
    v2->mProximityGetLinkRecommendationHandler = 0;

    mOppBtLQMObserver = v2->mOppBtLQMObserver;
    v2->mOppBtLQMObserver = 0;

    mLowPowerModePeriodicWakeUpCb = v2->mLowPowerModePeriodicWakeUpCb;
    v2->mLowPowerModePeriodicWakeUpCb = 0;

    v2->mLinkPreferenceSubscriptionEnabled = 0;
    v2->mTelephoneAssertionEnabled = 0;
    v2->mLocationAssertionEnabled = 0;
    v2->mLocationState = 0;
    v2->mTelephonyStateEnabled = 1;
    v2->mProximitySubscribeLinkRecommendationEnabled = 0;
    v2->mVoiceLqmCbEnabled = 0;
    v2->mProximityGetLinkRecommendationEnabled = 0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mProximityLinkRecommendationList = v2->mProximityLinkRecommendationList;
    v2->mProximityLinkRecommendationList = v11;

    v13 = v2;
  }

  return v2;
}

- (void)removeAppType:(id)type
{
  mAppLists = self->mAppLists;
  if (mAppLists)
  {
    [(NSMutableArray *)mAppLists removeObject:type];
  }
}

- (void)removeProximityLinkRecommendationType:(id)type
{
  mProximityLinkRecommendationList = self->mProximityLinkRecommendationList;
  if (mProximityLinkRecommendationList)
  {
    [(NSMutableArray *)mProximityLinkRecommendationList removeObject:type];
  }
}

- (void)processBTLQMNotification:(id)notification
{
  notificationCopy = notification;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WRM_iRATInterface_processBTLQMNotification___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(mQueue, v7);
}

- (void)processLowPowerModePeriodicWakeUpNotification
{
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WRM_iRATInterface_processLowPowerModePeriodicWakeUpNotification__block_invoke;
  block[3] = &unk_279ED5D68;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)processOperatingModeNotification:(id)notification
{
  notificationCopy = notification;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WRM_iRATInterface_processOperatingModeNotification___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(mQueue, v7);
}

- (void)processVoiceLqmNotification:(id)notification
{
  notificationCopy = notification;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__WRM_iRATInterface_processVoiceLqmNotification___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(mQueue, v7);
}

- (void)processMetricsNotificationReport:(id)report
{
  reportCopy = report;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WRM_iRATInterface_processMetricsNotificationReport___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = reportCopy;
  selfCopy = self;
  v6 = reportCopy;
  dispatch_async(mQueue, v7);
}

- (void)processNotificationListForTerminus:(id)terminus
{
  terminusCopy = terminus;
  count = xpc_array_get_count(terminusCopy);
  [(NSMutableArray *)self->mProximityLinkRecommendationList removeAllObjects];
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WRM_iRATInterface_processNotificationListForTerminus___block_invoke;
  block[3] = &unk_279ED5D90;
  selfCopy = self;
  v11 = count;
  v9 = terminusCopy;
  v7 = terminusCopy;
  dispatch_async(mQueue, block);
}

- (void)processNotificationList:(id)list :(unint64_t)a4
{
  listCopy = list;
  count = xpc_array_get_count(listCopy);
  if (count)
  {
    v8 = count;
    for (i = 0; i != v8; ++i)
    {
      v10 = xpc_array_get_value(listCopy, i);
      uint64 = xpc_dictionary_get_uint64(v10, "kWRMApplicationType");
      v12 = xpc_dictionary_get_uint64(v10, "kWRMLinkType");
      xpc_dictionary_get_uint64(v10, "kWRMLinkTypeChangeReasonCode");
      if (a4 == 1301)
      {
        LODWORD(v15) = 0;
        v13 = [MEMORY[0x277CCAE60] valueWithBytes:&v15 objCType:"{?=i}"];
        LODWORD(v15) = xpc_dictionary_get_uint64(v10, "kWRMSubscriptionType");
      }

      else if (a4 == 1302)
      {
        v15 = 0u;
        v16 = 0u;
        *&v15 = xpc_dictionary_get_uint64(v10, "kWRMCurrentLinkBandwidthEstimateMin");
        *(&v15 + 1) = xpc_dictionary_get_uint64(v10, "kWRMCurrentLinkBandwidthEstimateMax");
        *&v16 = xpc_dictionary_get_uint64(v10, "kWRMCurrentLinkMovBandwidthEstimateMin");
        *(&v16 + 1) = xpc_dictionary_get_uint64(v10, "kWRMCurrentLinkMovBandwidthEstimateMax");
        v13 = [MEMORY[0x277CCAE60] valueWithBytes:&v15 objCType:"{?=QQQQ}"];
      }

      else
      {
        *&v15 = 0;
        v13 = [MEMORY[0x277CCAE60] valueWithBytes:&v15 objCType:"{?=Q}"];
        *&v15 = 0;
      }

      mObserver = self->mObserver;
      if (mObserver)
      {
        mObserver[2](mObserver, uint64, v12, v13);
      }
    }
  }
}

- (void)reConnect
{
  v7.receiver = self;
  v7.super_class = WRM_iRATInterface;
  [(WRMClientInterface *)&v7 unregisterClient];
  [(WRM_iRATInterface *)self registerClient:self->super.mProcessId queue:self->super.mQueue];
  if (self->mLinkPreferenceSubscriptionEnabled)
  {
    mAppLists = self->mAppLists;
    if (self->mClientSupportsMultipleAppTypes)
    {
      [(WRM_iRATInterface *)self subscribeMultipleAppTypes:mAppLists observer:self->mObserver];
    }

    else if (mAppLists)
    {
      v5 = 0;
      v6 = 0;
      v4 = [(NSMutableArray *)mAppLists objectAtIndex:0];
      [v4 getValue:&v5];
      [(WRM_iRATInterface *)self subscribeAppType:v5 observer:v6, self->mObserver];
    }
  }

  if (self->mTelephoneAssertionEnabled)
  {
    [(WRM_iRATInterface *)self setTelephonyEnabled:self->mTelephonyStateEnabled];
  }

  if (self->mLocationAssertionEnabled)
  {
    [(WRM_iRATInterface *)self assertCommCenterBaseBandMode:self->mLocationState];
  }

  if (self->mBBAssertionBGAppActive)
  {
    self->mBBAssertionBGAppActive = 0;
    [(WRM_iRATInterface *)self expediteBBAssertionBGAppActive:1 handler:0];
  }

  if (self->mProximitySubscribeLinkRecommendationEnabled)
  {
    [(WRM_iRATInterface *)self subscribeProximityLinkRecommendation:self->mProximitySubscribeLinkRecommendationHandler];
  }

  if (self->mVoiceLqmCbEnabled && self->mVoiceLqmCb)
  {
    [(WRM_iRATInterface *)self subscribeVoiceLqmNotification:?];
  }

  if (self->mProximityGetLinkRecommendationEnabled)
  {
    [(WRM_iRATInterface *)self getProximityLinkRecommendation:0 recommendation:self->mProximityGetLinkRecommendationHandler];
  }
}

- (void)handleNotification:(id)notification :(BOOL)a4
{
  v4 = a4;
  notificationCopy = notification;
  xdict = notificationCopy;
  if (v4)
  {
    NSLog(&cfstr_InvokingReconn.isa);
    [(WRM_iRATInterface *)self reConnect];
    goto LABEL_28;
  }

  uint64 = xpc_dictionary_get_uint64(notificationCopy, "kMessageId");
  v8 = xpc_dictionary_get_value(xdict, "kMessageArgs");
  v9 = v8;
  if (uint64 <= 1308)
  {
    switch(uint64)
    {
      case 1304:
        [(WRM_iRATInterface *)self processOperatingModeNotification:v8];
        break;
      case 1305:
        if (v8)
        {
          v12 = xpc_dictionary_get_value(v8, "kWRMApplicationTypeList");
          if (v12)
          {
            v13 = v12;
            NSLog(&cfstr_ReceviedMessag.isa);
            if (self->mProximityGetLinkRecommendationEnabled || self->mProximitySubscribeLinkRecommendationEnabled)
            {
              [(WRM_iRATInterface *)self processNotificationListForTerminus:v13];
            }

            else
            {
              NSLog(&cfstr_IsProximityLin.isa, 0, 0);
            }
          }
        }

        break;
      case 1308:
        [(WRM_iRATInterface *)self processMetricsNotificationReport:v8];
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    if (uint64 <= 1310)
    {
      if (uint64 != 1309)
      {
        goto LABEL_27;
      }

      [(WRM_iRATInterface *)self processBTLQMNotification:v8];
LABEL_16:
      if (v9)
      {
        v10 = xpc_dictionary_get_value(v9, "kWRMApplicationTypeList");
        if (v10)
        {
          v11 = v10;
          NSLog(&cfstr_ReceviedMessag_0.isa, xdict, v10);
          [(WRM_iRATInterface *)self processNotificationList:v11];
        }
      }

      goto LABEL_27;
    }

    if (uint64 == 1311)
    {
      [(WRM_iRATInterface *)self processLowPowerModePeriodicWakeUpNotification];
    }

    else
    {
      if (uint64 != 2200)
      {
        goto LABEL_16;
      }

      [(WRM_iRATInterface *)self processVoiceLqmNotification:v8];
    }
  }

LABEL_27:

LABEL_28:
}

- (int)getSubscribeMessageType:(int)type
{
  if ((type - 11) > 0xF)
  {
    return 400;
  }

  else
  {
    return dword_2742E21C8[type - 11];
  }
}

- (int)getStatusUpdateMessageType:(int)type
{
  if ((type - 11) > 0xF)
  {
    return 401;
  }

  else
  {
    return dword_2742E2208[type - 11];
  }
}

- (void)subscribeBtLqmScoreNotification:(id)notification
{
  notificationCopy = notification;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WRM_iRATInterface_subscribeBtLqmScoreNotification___block_invoke;
  v7[3] = &unk_279ED5DB8;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(mQueue, v7);
}

- (void)getVoiceLqmValue:(int64_t)value completionHandler:(id)handler
{
  handlerCopy = handler;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WRM_iRATInterface_getVoiceLqmValue_completionHandler___block_invoke;
  block[3] = &unk_279ED5E08;
  v10 = handlerCopy;
  valueCopy = value;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(mQueue, block);
}

- (void)subscribeVoiceLqmNotification:(id)notification
{
  notificationCopy = notification;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WRM_iRATInterface_subscribeVoiceLqmNotification___block_invoke;
  v7[3] = &unk_279ED5DB8;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(mQueue, v7);
}

- (void)subscribeOperatingModeChangeNotification:(id)notification
{
  v4 = MEMORY[0x2743E9050](notification, a2);
  mOppModeObserver = self->mOppModeObserver;
  self->mOppModeObserver = v4;

  MEMORY[0x2821F96F8]();
}

- (void)subscribeProximityLinkRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  mProcessId = self->super.mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v6 = off_279ED5FB8[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v6 = "WRMSOS";
  }

  else
  {
    v6 = "INVALID_PROC_ID!!!";
  }

  NSLog(&cfstr_ReceivedSubscr_0.isa, v6);
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WRM_iRATInterface_subscribeProximityLinkRecommendation___block_invoke;
  block[3] = &unk_279ED5DB8;
  block[4] = self;
  v10 = recommendationCopy;
  v8 = recommendationCopy;
  dispatch_async(mQueue, block);
}

- (void)getLinkRecommendationMetrics:(id)metrics
{
  metricsCopy = metrics;
  mProcessId = self->super.mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v6 = off_279ED5FB8[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v6 = "WRMSOS";
  }

  else
  {
    v6 = "INVALID_PROC_ID!!!";
  }

  NSLog(&cfstr_ReceivedGetlin.isa, v6);
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WRM_iRATInterface_getLinkRecommendationMetrics___block_invoke;
  block[3] = &unk_279ED5DB8;
  block[4] = self;
  v10 = metricsCopy;
  v8 = metricsCopy;
  dispatch_async(mQueue, block);
}

- (void)getProximityLinkRecommendation:(BOOL)recommendation recommendation:(id)a4
{
  v6 = a4;
  mProcessId = self->super.mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v8 = off_279ED5FB8[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v8 = "WRMSOS";
  }

  else
  {
    v8 = "INVALID_PROC_ID!!!";
  }

  NSLog(&cfstr_ReceivedGetpro.isa, v8);
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WRM_iRATInterface_getProximityLinkRecommendation_recommendation___block_invoke;
  block[3] = &unk_279ED5E30;
  block[4] = self;
  v12 = v6;
  recommendationCopy = recommendation;
  v10 = v6;
  dispatch_async(mQueue, block);
}

- (void)statusUpdateAppLinkPreference:(int)preference status:(BOOL)status
{
  if (preference >= 3)
  {
    v7 = "INVALID_AppLinkPreferenceType!!!";
    if (preference == 3)
    {
      v7 = "Cellular";
    }
  }

  else
  {
    v7 = off_279ED5FA0[preference];
  }

  v8 = "No";
  if (status)
  {
    v8 = "Yes";
  }

  NSLog(&cfstr_SLinkpreftypeS.isa, a2, "[WRM_iRATInterface statusUpdateAppLinkPreference:status:]", v7, v8);
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WRM_iRATInterface_statusUpdateAppLinkPreference_status___block_invoke;
  block[3] = &unk_279ED5E58;
  block[4] = self;
  preferenceCopy = preference;
  statusCopy = status;
  dispatch_async(mQueue, block);
}

- (void)getStreamingInfo:(id)info linkType:(int)type
{
  infoCopy = info;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WRM_iRATInterface_getStreamingInfo_linkType___block_invoke;
  block[3] = &unk_279ED5E80;
  block[4] = self;
  v10 = infoCopy;
  typeCopy = type;
  v8 = infoCopy;
  dispatch_async(mQueue, block);
}

- (void)getMLPredictedThroughput:(id)throughput options:(id)options
{
  throughputCopy = throughput;
  optionsCopy = options;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WRM_iRATInterface_getMLPredictedThroughput_options___block_invoke;
  block[3] = &unk_279ED5EA8;
  v12 = optionsCopy;
  v13 = throughputCopy;
  block[4] = self;
  v9 = optionsCopy;
  v10 = throughputCopy;
  dispatch_async(mQueue, block);
}

- (void)assertCommCenterBaseBandMode:(int)mode
{
  mQueue = self->super.mQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__WRM_iRATInterface_assertCommCenterBaseBandMode___block_invoke;
  v4[3] = &unk_279ED5ED0;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(mQueue, v4);
}

- (void)expediteCellularForReason:(BOOL)reason reason:(id)a4
{
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WRM_iRATInterface_expediteCellularForReason_reason___block_invoke;
  block[3] = &unk_279ED5E30;
  reasonCopy = reason;
  block[4] = self;
  v6 = 0;
  dispatch_async(mQueue, block);
}

- (void)setTelephonyEnabled:(BOOL)enabled
{
  mQueue = self->super.mQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__WRM_iRATInterface_setTelephonyEnabled___block_invoke;
  v4[3] = &unk_279ED5F20;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(mQueue, v4);
}

- (void)subscribeAppType:(id)type observer:(id)observer
{
  v4 = *&type.var2;
  v5 = *&type.var0;
  observerCopy = observer;
  mQueue = self->super.mQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WRM_iRATInterface_subscribeAppType_observer___block_invoke;
  v10[3] = &unk_279ED5F48;
  v12 = v5;
  v13 = v4;
  v10[4] = self;
  v11 = observerCopy;
  v9 = observerCopy;
  dispatch_async(mQueue, v10);
}

- (void)subscribeMultipleAppTypes:(id)types observer:(id)observer
{
  typesCopy = types;
  observerCopy = observer;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WRM_iRATInterface_subscribeMultipleAppTypes_observer___block_invoke;
  block[3] = &unk_279ED5EA8;
  v12 = typesCopy;
  v13 = observerCopy;
  block[4] = self;
  v9 = typesCopy;
  v10 = observerCopy;
  dispatch_async(mQueue, block);
}

- (void)statusUpdateAppType:(int)type linkType:(int)linkType serviceStatus:(BOOL)status
{
  mQueue = self->super.mQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__WRM_iRATInterface_statusUpdateAppType_linkType_serviceStatus___block_invoke;
  v6[3] = &unk_279ED5E58;
  v6[4] = self;
  typeCopy = type;
  statusCopy = status;
  dispatch_async(mQueue, v6);
}

- (void)_expediteBBAssertionBGAppActive_sync:(BOOL)active_sync handler:(id)handler
{
  handlerCopy = handler;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WRM_iRATInterface__expediteBBAssertionBGAppActive_sync_handler___block_invoke;
  block[3] = &unk_279ED5E30;
  active_syncCopy = active_sync;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(mQueue, block);
}

- (void)expediteBBAssertionBGAppActive:(BOOL)active handler:(id)handler
{
  v6 = MEMORY[0x2743E9050](handler, a2);
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WRM_iRATInterface_expediteBBAssertionBGAppActive_handler___block_invoke;
  block[3] = &unk_279ED5E30;
  activeCopy = active;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(mQueue, block);
}

- (void)unregisterClient
{
  v5.receiver = self;
  v5.super_class = WRM_iRATInterface;
  [(WRMClientInterface *)&v5 unregisterClient];
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WRM_iRATInterface_unregisterClient__block_invoke;
  block[3] = &unk_279ED5D68;
  block[4] = self;
  dispatch_async(mQueue, block);
}

@end