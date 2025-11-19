@interface WRM_iRATInterface
- (WRM_iRATInterface)init;
- (int)getStatusUpdateMessageType:(int)a3;
- (int)getSubscribeMessageType:(int)a3;
- (void)_expediteBBAssertionBGAppActive_sync:(BOOL)a3 handler:(id)a4;
- (void)assertCommCenterBaseBandMode:(int)a3;
- (void)expediteBBAssertionBGAppActive:(BOOL)a3 handler:(id)a4;
- (void)expediteCellularForReason:(BOOL)a3 reason:(id)a4;
- (void)getLinkRecommendationMetrics:(id)a3;
- (void)getMLPredictedThroughput:(id)a3 options:(id)a4;
- (void)getProximityLinkRecommendation:(BOOL)a3 recommendation:(id)a4;
- (void)getStreamingInfo:(id)a3 linkType:(int)a4;
- (void)getVoiceLqmValue:(int64_t)a3 completionHandler:(id)a4;
- (void)handleNotification:(id)a3 :(BOOL)a4;
- (void)processBTLQMNotification:(id)a3;
- (void)processLowPowerModePeriodicWakeUpNotification;
- (void)processMetricsNotificationReport:(id)a3;
- (void)processNotificationList:(id)a3 :(unint64_t)a4;
- (void)processNotificationListForTerminus:(id)a3;
- (void)processOperatingModeNotification:(id)a3;
- (void)processVoiceLqmNotification:(id)a3;
- (void)reConnect;
- (void)removeAppType:(id)a3;
- (void)removeProximityLinkRecommendationType:(id)a3;
- (void)setTelephonyEnabled:(BOOL)a3;
- (void)statusUpdateAppLinkPreference:(int)a3 status:(BOOL)a4;
- (void)statusUpdateAppType:(int)a3 linkType:(int)a4 serviceStatus:(BOOL)a5;
- (void)subscribeAppType:(id)a3 observer:(id)a4;
- (void)subscribeBtLqmScoreNotification:(id)a3;
- (void)subscribeMultipleAppTypes:(id)a3 observer:(id)a4;
- (void)subscribeOperatingModeChangeNotification:(id)a3;
- (void)subscribeProximityLinkRecommendation:(id)a3;
- (void)subscribeVoiceLqmNotification:(id)a3;
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

- (void)removeAppType:(id)a3
{
  mAppLists = self->mAppLists;
  if (mAppLists)
  {
    [(NSMutableArray *)mAppLists removeObject:a3];
  }
}

- (void)removeProximityLinkRecommendationType:(id)a3
{
  mProximityLinkRecommendationList = self->mProximityLinkRecommendationList;
  if (mProximityLinkRecommendationList)
  {
    [(NSMutableArray *)mProximityLinkRecommendationList removeObject:a3];
  }
}

- (void)processBTLQMNotification:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WRM_iRATInterface_processBTLQMNotification___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)processOperatingModeNotification:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WRM_iRATInterface_processOperatingModeNotification___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (void)processVoiceLqmNotification:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__WRM_iRATInterface_processVoiceLqmNotification___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (void)processMetricsNotificationReport:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WRM_iRATInterface_processMetricsNotificationReport___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (void)processNotificationListForTerminus:(id)a3
{
  v4 = a3;
  count = xpc_array_get_count(v4);
  [(NSMutableArray *)self->mProximityLinkRecommendationList removeAllObjects];
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WRM_iRATInterface_processNotificationListForTerminus___block_invoke;
  block[3] = &unk_279ED5D90;
  v10 = self;
  v11 = count;
  v9 = v4;
  v7 = v4;
  dispatch_async(mQueue, block);
}

- (void)processNotificationList:(id)a3 :(unint64_t)a4
{
  v6 = a3;
  count = xpc_array_get_count(v6);
  if (count)
  {
    v8 = count;
    for (i = 0; i != v8; ++i)
    {
      v10 = xpc_array_get_value(v6, i);
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

- (void)handleNotification:(id)a3 :(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  xdict = v6;
  if (v4)
  {
    NSLog(&cfstr_InvokingReconn.isa);
    [(WRM_iRATInterface *)self reConnect];
    goto LABEL_28;
  }

  uint64 = xpc_dictionary_get_uint64(v6, "kMessageId");
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

- (int)getSubscribeMessageType:(int)a3
{
  if ((a3 - 11) > 0xF)
  {
    return 400;
  }

  else
  {
    return dword_2742E21C8[a3 - 11];
  }
}

- (int)getStatusUpdateMessageType:(int)a3
{
  if ((a3 - 11) > 0xF)
  {
    return 401;
  }

  else
  {
    return dword_2742E2208[a3 - 11];
  }
}

- (void)subscribeBtLqmScoreNotification:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WRM_iRATInterface_subscribeBtLqmScoreNotification___block_invoke;
  v7[3] = &unk_279ED5DB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (void)getVoiceLqmValue:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WRM_iRATInterface_getVoiceLqmValue_completionHandler___block_invoke;
  block[3] = &unk_279ED5E08;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(mQueue, block);
}

- (void)subscribeVoiceLqmNotification:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WRM_iRATInterface_subscribeVoiceLqmNotification___block_invoke;
  v7[3] = &unk_279ED5DB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (void)subscribeOperatingModeChangeNotification:(id)a3
{
  v4 = MEMORY[0x2743E9050](a3, a2);
  mOppModeObserver = self->mOppModeObserver;
  self->mOppModeObserver = v4;

  MEMORY[0x2821F96F8]();
}

- (void)subscribeProximityLinkRecommendation:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v8 = v4;
  dispatch_async(mQueue, block);
}

- (void)getLinkRecommendationMetrics:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v8 = v4;
  dispatch_async(mQueue, block);
}

- (void)getProximityLinkRecommendation:(BOOL)a3 recommendation:(id)a4
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
  v13 = a3;
  v10 = v6;
  dispatch_async(mQueue, block);
}

- (void)statusUpdateAppLinkPreference:(int)a3 status:(BOOL)a4
{
  if (a3 >= 3)
  {
    v7 = "INVALID_AppLinkPreferenceType!!!";
    if (a3 == 3)
    {
      v7 = "Cellular";
    }
  }

  else
  {
    v7 = off_279ED5FA0[a3];
  }

  v8 = "No";
  if (a4)
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
  v11 = a3;
  v12 = a4;
  dispatch_async(mQueue, block);
}

- (void)getStreamingInfo:(id)a3 linkType:(int)a4
{
  v6 = a3;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WRM_iRATInterface_getStreamingInfo_linkType___block_invoke;
  block[3] = &unk_279ED5E80;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(mQueue, block);
}

- (void)getMLPredictedThroughput:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WRM_iRATInterface_getMLPredictedThroughput_options___block_invoke;
  block[3] = &unk_279ED5EA8;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(mQueue, block);
}

- (void)assertCommCenterBaseBandMode:(int)a3
{
  mQueue = self->super.mQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__WRM_iRATInterface_assertCommCenterBaseBandMode___block_invoke;
  v4[3] = &unk_279ED5ED0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(mQueue, v4);
}

- (void)expediteCellularForReason:(BOOL)a3 reason:(id)a4
{
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WRM_iRATInterface_expediteCellularForReason_reason___block_invoke;
  block[3] = &unk_279ED5E30;
  v7 = a3;
  block[4] = self;
  v6 = 0;
  dispatch_async(mQueue, block);
}

- (void)setTelephonyEnabled:(BOOL)a3
{
  mQueue = self->super.mQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__WRM_iRATInterface_setTelephonyEnabled___block_invoke;
  v4[3] = &unk_279ED5F20;
  v4[4] = self;
  v5 = a3;
  dispatch_async(mQueue, v4);
}

- (void)subscribeAppType:(id)a3 observer:(id)a4
{
  v4 = *&a3.var2;
  v5 = *&a3.var0;
  v7 = a4;
  mQueue = self->super.mQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WRM_iRATInterface_subscribeAppType_observer___block_invoke;
  v10[3] = &unk_279ED5F48;
  v12 = v5;
  v13 = v4;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(mQueue, v10);
}

- (void)subscribeMultipleAppTypes:(id)a3 observer:(id)a4
{
  v6 = a3;
  v7 = a4;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WRM_iRATInterface_subscribeMultipleAppTypes_observer___block_invoke;
  block[3] = &unk_279ED5EA8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(mQueue, block);
}

- (void)statusUpdateAppType:(int)a3 linkType:(int)a4 serviceStatus:(BOOL)a5
{
  mQueue = self->super.mQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__WRM_iRATInterface_statusUpdateAppType_linkType_serviceStatus___block_invoke;
  v6[3] = &unk_279ED5E58;
  v6[4] = self;
  v7 = a3;
  v8 = a5;
  dispatch_async(mQueue, v6);
}

- (void)_expediteBBAssertionBGAppActive_sync:(BOOL)a3 handler:(id)a4
{
  v6 = a4;
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WRM_iRATInterface__expediteBBAssertionBGAppActive_sync_handler___block_invoke;
  block[3] = &unk_279ED5E30;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(mQueue, block);
}

- (void)expediteBBAssertionBGAppActive:(BOOL)a3 handler:(id)a4
{
  v6 = MEMORY[0x2743E9050](a4, a2);
  mQueue = self->super.mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WRM_iRATInterface_expediteBBAssertionBGAppActive_handler___block_invoke;
  block[3] = &unk_279ED5E30;
  v11 = a3;
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