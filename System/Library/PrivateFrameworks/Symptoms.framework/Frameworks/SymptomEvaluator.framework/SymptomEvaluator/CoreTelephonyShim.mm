@interface CoreTelephonyShim
+ (CoreTelephonyShim)sharedInstance;
+ (double)timestampFromCTDumpFolderPrefix:(id)prefix;
+ (id)dateTimeStringFromCTDumpFolderPrefix:(id)prefix;
+ (id)elevatedQueue;
- (BOOL)findSubscriberBestMatchForICCID:(id)d MDN:(id)n slotID:(int64_t)iD update:(BOOL)update;
- (BOOL)findSubscriberExactMatchForICCID:(id)d MDN:(id)n slotID:(int64_t)iD;
- (BOOL)getBasebandTraceEnabledState:(BOOL *)state coreDumpEnabled:(BOOL *)enabled;
- (BOOL)getSmartDataModeSetting;
- (BOOL)subscriptionContextIsCurrentDataSubscription:(id)subscription;
- (CoreTelephonyShim)init;
- (CoreTelephonyShim)initWithQueue:(id)queue;
- (NSMutableDictionary)subscriptions;
- (__CTServerConnection)ctServerConnection;
- (id)cellCarrierNameForContext:(id)context refresh:(BOOL)refresh;
- (id)dictionaryForSubscriptionContext:(id)context;
- (id)extractCellInfo:(id)info;
- (id)getCachedContentsForEnhancedLinkQualityMetricType:(int64_t)type forSlot:(int64_t)slot;
- (id)getCurrentDataStatus;
- (id)getCurrentDataSubscriptionContext;
- (id)getCurrentSIMStatus;
- (id)getNetworkSlicingStates;
- (id)getSortedSubscriberKeys;
- (id)internalVariables;
- (id)wifiHotSpotOutrankPolicyStringFor:(int)for;
- (int)getCurrentSISWiFiHotSpotOutrankPolicy;
- (unsigned)processEnhancedLinkQualityHighThroughputNotification:(id)notification;
- (void)_completeInitialization;
- (void)_deliverRNFSettingAvailable:(BOOL)available enabled:(BOOL)enabled;
- (void)_deliverRatSelectionChanged:(id)changed withSubscriptionDict:(id)dict;
- (void)_deliverSignalStrengthChanged:(id)changed cellularRSRP:(id)p cellularSNR:(id)r;
- (void)_dispatchCellInfoResult:(id)result error:(id)error queue:(id)queue completion:(id)completion;
- (void)_processBarcodeActivationNotification:(id)notification;
- (void)_processEngineReadyNotification:(id)notification;
- (void)_registerForCoreTelephonyNotifications:(unint64_t)notifications;
- (void)_unregisterFromCoreTelephonyNotifications:(unint64_t)notifications;
- (void)_updateSubscribers;
- (void)activeSubscriptionsDidChange;
- (void)addDelegate:(id)delegate;
- (void)addNewSubscriberForICCID:(id)d MDN:(id)n slotID:(int64_t)iD;
- (void)cacheEnhancedLinkQualityMetricType:(int64_t)type withContents:(id)contents forSlot:(int64_t)slot;
- (void)carrierBundleChange:(id)change;
- (void)carrierSettingsDidChange;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)commonInit;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)copyCellInfoOnQueue:(id)queue completion:(id)completion;
- (void)countryCodeChanged:(id)changed forContext:(id)context;
- (void)currentDataSimChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)displayStatusChanged:(id)changed status:(id)status;
- (void)dualSimStatusChangedTo:(unsigned __int8)to;
- (void)dualSimStatusInspection:(id)inspection withSubscriptionsInUse:(id)use;
- (void)enhancedDataLinkQualityChanged:(id)changed metric:(id)metric;
- (void)get5GSupportedForContext:(id)context;
- (void)handleCTServerNotification:(__CFString *)notification notificationInfo:(__CFDictionary *)info;
- (void)initializeCoreTelephonyClient;
- (void)initializeStewieStateMonitor;
- (void)networkCodeChanged:(id)changed forContext:(id)context;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)preferPrivateNetworkCellularOverWiFiDidChange;
- (void)processDataStatus:(id)status forContext:(id)context;
- (void)ratSelectionChanged:(id)changed selection:(id)selection;
- (void)registerForCTDumpNotifications;
- (void)registerRNFChangedWithDelegate:(id)delegate;
- (void)registerSignalStrengthChangedWithDelegate:(id)delegate;
- (void)removeCachedContentsForEnhancedLinkQualityMetricType:(int64_t)type forSlot:(int64_t)slot;
- (void)removeDelegate:(id)delegate;
- (void)sendNetworkSlicingStatesToDelegate;
- (void)sendTaggedInfo:(unint64_t)info payload:(id)payload;
- (void)set5GSupportChanged:(id)changed forContext:(id)context;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)simLessSubscriptionsDidChange;
- (void)stateChanged:(id)changed;
- (void)subscriptionInfoDidChange;
- (void)taggedInfoIndicationChanged:(id)changed type:(unint64_t)type payload:(id)payload;
- (void)unregisterForCTDumpNotifications;
- (void)unregisterRNFChangedWithDelegate:(id)delegate;
- (void)unregisterSignalStrengthChangedWithDelegate:(id)delegate;
- (void)updateCurrentRatSelection;
- (void)updateCurrentSubscriberTag:(id)tag;
- (void)updateSubscribers;
@end

@implementation CoreTelephonyShim

- (id)getCurrentDataSubscriptionContext
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__CoreTelephonyShim_getCurrentDataSubscriptionContext__block_invoke;
  v4[3] = &unk_27898DA28;
  v4[4] = self;
  v4[5] = &v5;
  sf_synchronize(&self->coreTelephonyClientContextLock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __54__CoreTelephonyShim_getCurrentDataSubscriptionContext__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "CTShim: returning cached CTXPCServiceSubscriptionContext", buf, 2u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
    goto LABEL_19;
  }

  v4 = *(v2 + 8);
  v5 = netepochsLogHandle;
  v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "CTShim: calling getCurrentDataSubscriptionContextSync...", buf, 2u);
    }

    v7 = *(*(a1 + 32) + 8);
    v16 = 0;
    v8 = [v7 getCurrentDataSubscriptionContextSync:&v16];
    v9 = v16;
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    v12 = [v9 domain];
    if (v12)
    {
    }

    else if (![v9 code])
    {
      v14 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "CTShim: getCurrentDataSubscriptionContextSync succeeded", buf, 2u);
      }

      objc_storeStrong((*(a1 + 32) + 16), *(*(*(a1 + 40) + 8) + 40));
      goto LABEL_18;
    }

    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "CTShim: getCurrentDataSubscriptionContextSync failed, error %@", buf, 0xCu);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "CTShim: cannot get current data subscription context, no CoreTelephonyClient yet", buf, 2u);
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
}

+ (CoreTelephonyShim)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CoreTelephonyShim_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_32 != -1)
  {
    dispatch_once(&sharedInstance_pred_32, block);
  }

  v2 = sharedInstance_sharedInstance_32;

  return v2;
}

void __35__CoreTelephonyShim_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = +[SystemProperties sharedInstance];
  v3 = [v2 isSymptomsdHelper];

  if ((v3 & 1) == 0)
  {
    v4 = objc_alloc_init(*(a1 + 32));
    v5 = sharedInstance_sharedInstance_32;
    sharedInstance_sharedInstance_32 = v4;

    MEMORY[0x2821F96F8](v4, v5);
  }
}

+ (id)elevatedQueue
{
  v2 = +[CoreTelephonyShim sharedInstance];
  elevatedQueue = [v2 elevatedQueue];

  return elevatedQueue;
}

- (CoreTelephonyShim)init
{
  v7.receiver = self;
  v7.super_class = CoreTelephonyShim;
  v2 = [(CoreTelephonyShim *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.coretelephonyshim.queue", v3);
    elevatedQueue = v2->elevatedQueue;
    v2->elevatedQueue = v4;

    [(CoreTelephonyShim *)v2 commonInit];
  }

  return v2;
}

- (CoreTelephonyShim)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CoreTelephonyShim;
  v6 = [(CoreTelephonyShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->elevatedQueue, queue);
    [(CoreTelephonyShim *)v7 commonInit];
  }

  return v7;
}

- (void)commonInit
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  subscriptions = self->_subscriptions;
  self->_subscriptions = dictionary;

  v5 = [MEMORY[0x277CBEB58] set];
  delegates = self->delegates;
  self->delegates = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  carrierNameForSlot = self->_carrierNameForSlot;
  self->_carrierNameForSlot = v7;

  coreTelephonyClientContext = self->coreTelephonyClientContext;
  self->coreTelephonyClientContext = 0;

  self->coreTelephonyClientContextLock._os_unfair_lock_opaque = 0;
  self->currentSubscriberSlotID = 0;
  lastCellInfo = self->lastCellInfo;
  self->lastCellInfo = 0;

  self->lastCellInfoTime.tv_sec = 0;
  self->lastCellInfoTime.tv_usec = 0;
  cellInfoCompletionHandlers = self->cellInfoCompletionHandlers;
  self->cellInfoCompletionHandlers = 0;

  self->cellInfoInflight = 0;
  self->cellInfoLock._os_unfair_lock_opaque = 0;
  self->rnfChangedLock._os_unfair_lock_opaque = 0;
  self->signalStrengthChangedLock._os_unfair_lock_opaque = 0;
  self->ctClientInitReadyFlag = 0;
  self->initializationComplete = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __31__CoreTelephonyShim_commonInit__block_invoke;
  v18[3] = &unk_27898A690;
  v18[4] = self;
  v13 = [defaultCenter addObserverForName:@"kNotificationOfPartialInitialization" object:0 queue:0 usingBlock:v18];
  engineReadyObserver = self->engineReadyObserver;
  self->engineReadyObserver = v13;

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __31__CoreTelephonyShim_commonInit__block_invoke_2;
  v17[3] = &unk_27898A690;
  v17[4] = self;
  v15 = [defaultCenter addObserverForName:@"kNotificationBarcodeActivation" object:0 queue:0 usingBlock:v17];
  barcodeActivationObserver = self->barcodeActivationObserver;
  self->barcodeActivationObserver = v15;
}

void __31__CoreTelephonyShim_commonInit__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 userInfo];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CTShim: received engine ready notification - dispatching for processing (%@)", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 208);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__CoreTelephonyShim_commonInit__block_invoke_128;
  v11[3] = &unk_27898A7D0;
  v12 = v3;
  v13 = v7;
  v9 = v3;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __31__CoreTelephonyShim_commonInit__block_invoke_128(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [*(a1 + 40) _processEngineReadyNotification:v2];
}

void __31__CoreTelephonyShim_commonInit__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "CTShim: received notification of barcode activation from BarcodeSupport", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 208);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__CoreTelephonyShim_commonInit__block_invoke_130;
  v8[3] = &unk_27898A7D0;
  v9 = v3;
  v10 = v5;
  v7 = v3;
  dispatch_async(v6, v8);
}

void __31__CoreTelephonyShim_commonInit__block_invoke_130(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [*(a1 + 40) _processBarcodeActivationNotification:v2];
}

- (void)_processEngineReadyNotification:(id)notification
{
  v27 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = notificationCopy;
  if (notificationCopy)
  {
    v6 = [notificationCopy objectForKeyedSubscript:@"ObjectKey"];
    if (!v6)
    {
      v11 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      LOWORD(v26) = 0;
      v12 = "CTShim: engine is nil upon receiving kNotificationOfPartialInitialization";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->ctClientInitReadyFlag |= 1u;
      v7 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        ctClientInitReadyFlag = self->ctClientInitReadyFlag;
        if ((ctClientInitReadyFlag & 0x103) == 3)
        {
          v17 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CTShim: Initialize CTClient as necessary upon CTClientInitReady", &v26, 2u);
          }

          self->ctClientInitReadyFlag |= 0x100u;
          [(CoreTelephonyShim *)self initializeCoreTelephonyClient:v26];
          [(CoreTelephonyShim *)self initializeStewieStateMonitor];
          v18 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "CTShim: Initialization complete, removing engine ready observer", &v26, 2u);
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter removeObserver:self->engineReadyObserver];

          engineReadyObserver = self->engineReadyObserver;
          self->engineReadyObserver = 0;

          goto LABEL_27;
        }

        v21 = netepochsLogHandle;
        v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
        if ((ctClientInitReadyFlag & 0x100) == 0)
        {
          if (v22)
          {
            v23 = self->ctClientInitReadyFlag;
            LODWORD(v26) = 67109120;
            HIDWORD(v26) = v23;
            v12 = "CTShim: Waiting for additional engines to be ready, flag: %d";
            v13 = v21;
            v14 = OS_LOG_TYPE_DEFAULT;
            v24 = 8;
LABEL_26:
            _os_log_impl(&dword_23255B000, v13, v14, v12, &v26, v24);
          }

LABEL_27:

          goto LABEL_28;
        }

        if (!v22)
        {
          goto LABEL_27;
        }

        LOWORD(v26) = 0;
        v12 = "CTShim: CTClient initialization already in progress - skipping";
        v13 = v21;
        v14 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
        v24 = 2;
        goto LABEL_26;
      }

      v8 = self->ctClientInitReadyFlag;
      LODWORD(v26) = 67109120;
      HIDWORD(v26) = v8;
      v9 = "CTShim: FlowAnalyticsEngine is ready, flag: %d";
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }

      self->ctClientInitReadyFlag |= 2u;
      v7 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v15 = self->ctClientInitReadyFlag;
      LODWORD(v26) = 67109120;
      HIDWORD(v26) = v15;
      v9 = "CTShim: NetworkAnalyticsEngine is ready, flag: %d";
    }

    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v9, &v26, 8u);
    goto LABEL_14;
  }

  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "CTShim: info is nil upon receiving kNotificationOfPartialInitialization", &v26, 2u);
  }

LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_completeInitialization
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CoreTelephonyShim__completeInitialization__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (_completeInitialization_onceToken != -1)
  {
    dispatch_once(&_completeInitialization_onceToken, block);
  }
}

void __44__CoreTelephonyShim__completeInitialization__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D6B500];
  v3 = +[SystemSettingsRelay defaultRelay];
  v4 = [v3 symptomEvaluatorDatabaseContainerPath];
  v5 = [v2 workspaceWithName:@"netusage" atPath:v4 objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v6 = [v5 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (!v10)
  {
    v23 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v24 = "CTShim: Unable to provide persistence, fatal initialization failure";
LABEL_10:
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_15;
  }

  v11 = [ImpoExpoService impoExpoServiceInWorkspace:v10 andQueue:*(v9 + 208)];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(a1 + 32) + 40);
  if (!v14)
  {
    v23 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v24 = "CTShim: Failed to allocate impo/expo service";
    goto LABEL_10;
  }

  v29 = 0;
  v15 = [v14 exportAndUnarchiveItemUnderName:@"CoreTelephonyShim-Subscribers" lastUpdated:&v29 verificationBlock:&__block_literal_global_37];
  v16 = v29;
  v17 = *(a1 + 32);
  v18 = *(v17 + 232);
  *(v17 + 232) = v15;

  v19 = *(*(a1 + 32) + 232);
  v20 = netepochsLogHandle;
  v21 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v22 = *(*(a1 + 32) + 232);
      *buf = 138477827;
      v31 = v22;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CTShim: Retrieved persisted subscribers: %{private}@", buf, 0xCu);
    }
  }

  else
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CTShim: Persisting subscribers for the first time", buf, 2u);
    }

    v25 = [MEMORY[0x277CBEB38] dictionary];
    v26 = *(a1 + 32);
    v27 = *(v26 + 232);
    *(v26 + 232) = v25;
  }

  *(*(a1 + 32) + 72) = 1;
  [*(a1 + 32) _updateSubscribers];
  [*(a1 + 32) _processPendingCoreTelephonyNotificationRegistrations];

LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CoreTelephonyShim__completeInitialization__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)dealloc
{
  [(CoreTelephonyClient *)self->coreTelephonyClient setDelegate:0];
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
    self->_ctServerConnection = 0;
  }

  if (self->barcodeActivationObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->barcodeActivationObserver];

    barcodeActivationObserver = self->barcodeActivationObserver;
    self->barcodeActivationObserver = 0;
  }

  [(NSMutableSet *)self->delegates removeAllObjects];
  v6.receiver = self;
  v6.super_class = CoreTelephonyShim;
  [(CoreTelephonyShim *)&v6 dealloc];
}

- (id)internalVariables
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_ctRnfChangedDelegates forKeyedSubscript:@"rnfChangedDelegates"];
  [v3 setObject:self->_ctSignalStrengthChangedDelegates forKeyedSubscript:@"signalStrengthChangedDelegates"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pendingCTNotificationRegistrationFlags];
  [v3 setObject:v4 forKeyedSubscript:@"pendingCTNRFlags"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentCTNotificationRegistrationFlags];
  [v3 setObject:v5 forKeyedSubscript:@"currentCTNRFlags"];

  return v3;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->delegates addObject:delegateCopy];
  }

  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->delegates removeObject:delegateCopy];
  }

  objc_sync_exit(v4);
}

- (__CTServerConnection)ctServerConnection
{
  result = self->_ctServerConnection;
  if (!result)
  {
    v4 = *MEMORY[0x277CBECE8];
    elevatedQueue = self->elevatedQueue;
    result = _CTServerConnectionCreateOnTargetQueue();
    self->_ctServerConnection = result;
  }

  return result;
}

- (NSMutableDictionary)subscriptions
{
  v3 = self->delegates;
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_subscriptions];
  objc_sync_exit(v3);

  return v4;
}

- (void)initializeCoreTelephonyClient
{
  if (self->coreTelephonyClient)
  {
    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CTShim: CoreTelephonyClient object already exists - skipping new allocation", v6, 2u);
    }
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:self->elevatedQueue];
    coreTelephonyClient = self->coreTelephonyClient;
    self->coreTelephonyClient = v4;

    [(CoreTelephonyClient *)self->coreTelephonyClient setDelegate:self];
  }

  [(CoreTelephonyShim *)self carrierSettingsDidChange];
  [(CoreTelephonyShim *)self sendNetworkSlicingStatesToDelegate];
  [(CoreTelephonyShim *)self _completeInitialization];
}

- (void)initializeStewieStateMonitor
{
  if (!self->stewieStateMonitor)
  {
    v4 = [objc_alloc(MEMORY[0x277CC3768]) initWithDelegate:self queue:self->elevatedQueue];
    stewieStateMonitor = self->stewieStateMonitor;
    self->stewieStateMonitor = v4;

    v6 = self->stewieStateMonitor;

    [(CTStewieStateMonitor *)v6 start];
  }
}

- (void)handleCTServerNotification:(__CFString *)notification notificationInfo:(__CFDictionary *)info
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = self->delegates;
  objc_sync_enter(v7);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  selfCopy = self;
  v8 = self->delegates;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v9)
  {
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 ctServerConnectionNotification:notification notificationInfo:info];
        }
      }

      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  if (CFStringCompare(notification, *MEMORY[0x277CC3E98], 0) == kCFCompareEqualTo)
  {
    infoCopy = info;
    v14 = infoCopy;
    if (infoCopy)
    {
      v15 = [(__CFDictionary *)infoCopy objectForKeyedSubscript:*MEMORY[0x277CC3EA0]];
      v16 = [(__CFDictionary *)v14 objectForKeyedSubscript:*MEMORY[0x277CC3EA8]];
      v17 = v16;
      if (v16)
      {
        bOOLValue = [v16 BOOLValue];
        bOOLValue2 = [v15 BOOLValue];
        v20 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v21 = "OFF";
          if (bOOLValue)
          {
            v21 = "ON";
          }

          v22 = "available";
          if (!bOOLValue2)
          {
            v22 = "unavailable";
          }

          *buf = 136315394;
          notificationCopy = v21;
          v59 = 2080;
          v60 = v22;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "RNF is %s (%s)", buf, 0x16u);
        }

        [(CoreTelephonyShim *)selfCopy _deliverRNFSettingAvailable:bOOLValue2 enabled:bOOLValue, selfCopy];
      }

      else
      {
        v24 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "Failed to retrieve RNF flag from CT", buf, 2u);
        }
      }
    }

    else
    {
      v23 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "RNF setting changed notificationInfo is NULL", buf, 2u);
      }
    }
  }

  if (CFStringCompare(notification, *MEMORY[0x277CC3A40], 0) == kCFCompareEqualTo)
  {
    infoCopy2 = info;
    v26 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      notificationCopy = infoCopy2;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Received a callback about signal strength: %@", buf, 0xCu);
    }

    if (infoCopy2)
    {
      v27 = [(__CFDictionary *)infoCopy2 objectForKeyedSubscript:*MEMORY[0x277CC3A30]];
      if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v28 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          notificationCopy = v27;
          _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "Signal strength bars is %@", buf, 0xCu);
        }

        [(CoreTelephonyShim *)selfCopy _deliverSignalStrengthChanged:v27 cellularRSRP:0 cellularSNR:0, selfCopy];
      }

      else
      {
        v29 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          notificationCopy = v27;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "Failed to retrieve signal strength from CT (%@)", buf, 0xCu);
        }
      }
    }

    else
    {
      v30 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Signal strength setting changed notificationInfo is NULL", buf, 2u);
      }

      v27 = &unk_2847EFB78;
    }
  }

  v31 = CFStringCompare(notification, *MEMORY[0x277CC3A20], 0) == kCFCompareEqualTo;
  v32 = CFStringCompare(notification, *MEMORY[0x277CC3A28], 0);
  v33 = v32 == kCFCompareEqualTo;
  if (v32)
  {
    v34 = v31;
  }

  else
  {
    v34 = 1;
  }

  if (v34 == 1)
  {
    infoCopy3 = info;
    v36 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      notificationCopy = notification;
      v59 = 2112;
      v60 = infoCopy3;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
    }

    selfCopy = [(__CFDictionary *)infoCopy3 objectForKeyedSubscript:*MEMORY[0x277CC3A58], selfCopy];
    v38 = [(__CFDictionary *)infoCopy3 objectForKeyedSubscript:*MEMORY[0x277CC3A48]];
    v39 = [(__CFDictionary *)infoCopy3 objectForKeyedSubscript:*MEMORY[0x277CC3A50]];
    v40 = *(v46 + 208);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CoreTelephonyShim_handleCTServerNotification_notificationInfo___block_invoke;
    block[3] = &unk_27898BE40;
    v51 = v31;
    block[4] = v46;
    v48 = selfCopy;
    v49 = v38;
    v50 = v39;
    v52 = v33;
    v41 = v39;
    v42 = v38;
    v43 = selfCopy;
    dispatch_async(v40, block);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __65__CoreTelephonyShim_handleCTServerNotification_notificationInfo___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  obj = *(*(a1 + 32) + 200);
  objc_sync_enter(obj);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 200);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        if (*(a1 + 64) == 1 && (v7 = *(*(&v14 + 1) + 8 * v5), (objc_opt_respondsToSelector() & 1) != 0))
        {
          v8 = *(a1 + 40);
          v9 = *(a1 + 48);
          v10 = *(a1 + 56);
          if (v10)
          {
            v11 = [v10 BOOLValue];
          }

          else
          {
            v11 = 0;
          }

          [v6 coreTelephonyDumpStartedTo:v8 folderPrefix:v9 gotFilteredOut:v11];
        }

        else if (*(a1 + 65) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v6 coreTelephonyDumpCompletedTo:*(a1 + 40) folderPrefix:*(a1 + 48)];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  objc_sync_exit(obj);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)cellCarrierNameForContext:(id)context refresh:(BOOL)refresh
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v7 = self->_carrierNameForSlot;
    objc_sync_enter(v7);
    carrierNameForSlot = self->_carrierNameForSlot;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
    v10 = [(NSMutableDictionary *)carrierNameForSlot objectForKeyedSubscript:v9];

    objc_sync_exit(v7);
    if (!refresh && v10)
    {
      v11 = v10;
      goto LABEL_17;
    }

    v13 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
    coreTelephonyClient = self->coreTelephonyClient;
    v29 = 0;
    v15 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValue:contextCopy key:@"CarrierName" bundleType:v13 error:&v29];
    v16 = v29;
    domain = [v16 domain];
    if (domain)
    {
    }

    else if (![v16 code])
    {
      v22 = self->_carrierNameForSlot;
      objc_sync_enter(v22);
      v23 = self->_carrierNameForSlot;
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
      [(NSMutableDictionary *)v23 setObject:v15 forKeyedSubscript:v24];

      objc_sync_exit(v22);
      v25 = netepochsLogHandle;
      v26 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
      v18 = v15;
      if (v26)
      {
        v27 = v25;
        slotID = [contextCopy slotID];
        *buf = 134218243;
        v31 = slotID;
        v32 = 2113;
        v33 = v15;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "CTShim: Carrier name for slot %ld updated to %{private}@", buf, 0x16u);

        v18 = v15;
      }

      goto LABEL_13;
    }

    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "CTShim: CoreTelephonyClient failed to retrieve carrier name (cached name: %@)", buf, 0xCu);
    }

    v18 = v10;
    if (!v10)
    {
      v19 = 1;
LABEL_15:

      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_13:
    v11 = v18;
    v19 = 0;
    goto LABEL_15;
  }

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "CTShim: Unable to query carrier name with a nil context!", buf, 2u);
  }

LABEL_16:
  v11 = 0;
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_processBarcodeActivationNotification:(id)notification
{
  v33 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = notificationCopy;
  selfCopy = self;
  if (self->coreTelephonyClient)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [notificationCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      v10 = *v25;
      *&v7 = 136315394;
      v22 = v7;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v24 + 1) + 8 * v11);

          v13 = [v5 objectForKeyedSubscript:v9];
          eventData = [v13 eventData];
          if (eventData && (*(eventData + 4) & 1) != 0)
          {
            v15 = *(eventData + 24) != 0;
            v16 = "with";
          }

          else
          {
            v15 = 1;
            v16 = "without";
          }

          v17 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v18 = "stop";
            if (v15)
            {
              v18 = "start";
            }

            v29 = v18;
            v30 = 2080;
            v31 = v16;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CTShim: Received barcode %s scan symptom (%s qualifier)", buf, 0x16u);
          }

          if (v15)
          {
            v19 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "CTShim: Asking baseband to activate turbo mode", buf, 2u);
            }

            [(CoreTelephonyClient *)selfCopy->coreTelephonyClient activateTurboMode:&__block_literal_global_179, v22];
          }

          ++v11;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v20 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "CTShim: Unable to ask baseband to activate turbo mode, no coreTelephonyClient yet", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __59__CoreTelephonyShim__processBarcodeActivationNotification___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "Could not activate";
    if (a2)
    {
      v4 = "Successfully activated";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CTShim: %s turbo mode upon barcode scan", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerForCoreTelephonyNotifications:(unint64_t)notifications
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    notificationsCopy = notifications;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Registering CoreTelephony notifications with flags: %lx", buf, 0xCu);
  }

  if (self->coreTelephonyClient)
  {
    if (notifications)
    {
      v6 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Using CoreTelephonyClient callbacks - marking RNF flags from pending to current", buf, 2u);
      }

      v8 = *&self->_pendingCTNotificationRegistrationFlags;
      v7.i64[0] = -2;
      *&v9 = vandq_s8(v8, v7).u64[0];
      *(&v9 + 1) = vorrq_s8(v8, vdupq_n_s64(1uLL)).i64[1];
      *&self->_pendingCTNotificationRegistrationFlags = v9;
    }

    if ((notifications & 2) != 0)
    {
      v10 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Using CoreTelephonyClient callbacks - marking signal strength flags from pending to current", buf, 2u);
      }

      v12 = *&self->_pendingCTNotificationRegistrationFlags;
      v11.i64[0] = -3;
      *&v13 = vandq_s8(v12, v11).u64[0];
      *(&v13 + 1) = vorrq_s8(v12, vdupq_n_s64(2uLL)).i64[1];
      *&self->_pendingCTNotificationRegistrationFlags = v13;
    }
  }

  else
  {
    if (notifications)
    {
      v14 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "Registering for CTServerConnection RNF notifications", buf, 2u);
      }

      v15 = *MEMORY[0x277CC3E98];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __60__CoreTelephonyShim__registerForCoreTelephonyNotifications___block_invoke;
      v20[3] = &unk_27898D068;
      v20[4] = self;
      [CTServerConnection registerForCTNofication:v15 ctShim:self completion:v20];
    }

    if ((notifications & 2) != 0)
    {
      v16 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Registering for CTServerConnection signal strength notifications", buf, 2u);
      }

      v17 = *MEMORY[0x277CC3A40];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __60__CoreTelephonyShim__registerForCoreTelephonyNotifications___block_invoke_184;
      v19[3] = &unk_27898D068;
      v19[4] = self;
      [CTServerConnection registerForCTNofication:v17 ctShim:self completion:v19];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __60__CoreTelephonyShim__registerForCoreTelephonyNotifications___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) |= 1uLL;
    *(*(a1 + 32) + 144) &= ~1uLL;
  }

  else
  {
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to register for kCTReliableNetworkFallbackToCellularChangedNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __60__CoreTelephonyShim__registerForCoreTelephonyNotifications___block_invoke_184(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) |= 2uLL;
    *(*(a1 + 32) + 144) &= ~2uLL;
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to register for kCTIndicatorsSignalStrengthNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterFromCoreTelephonyNotifications:(unint64_t)notifications
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    notificationsCopy = notifications;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering CoreTelephony notifications with flags: %lx", buf, 0xCu);
  }

  if (self->coreTelephonyClient)
  {
    if (notifications)
    {
      v6 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Using CoreTelephonyClient callbacks - unmarking RNF flags", buf, 2u);
      }

      self->_currentCTNotificationRegistrationFlags &= ~1uLL;
    }

    if ((notifications & 2) != 0)
    {
      v7 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Using CoreTelephonyClient callbacks - unmarking signal strength flags", buf, 2u);
      }

      self->_currentCTNotificationRegistrationFlags &= ~2uLL;
    }
  }

  else
  {
    if (notifications)
    {
      v8 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "Unregistering from CTServerConnection RNF notifications", buf, 2u);
      }

      v9 = *MEMORY[0x277CC3E98];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __63__CoreTelephonyShim__unregisterFromCoreTelephonyNotifications___block_invoke;
      v14[3] = &unk_27898D068;
      v14[4] = self;
      [CTServerConnection unregisterForCTNotification:v9 ctShim:self completion:v14];
    }

    if ((notifications & 2) != 0)
    {
      v10 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Unregistering from CTServerConnection signal strength notifications", buf, 2u);
      }

      v11 = *MEMORY[0x277CC3A40];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __63__CoreTelephonyShim__unregisterFromCoreTelephonyNotifications___block_invoke_185;
      v13[3] = &unk_27898D068;
      v13[4] = self;
      [CTServerConnection unregisterForCTNotification:v11 ctShim:self completion:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __63__CoreTelephonyShim__unregisterFromCoreTelephonyNotifications___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) &= ~1uLL;
  }

  else
  {
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to unregister kCTReliableNetworkFallbackToCellularChangedNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __63__CoreTelephonyShim__unregisterFromCoreTelephonyNotifications___block_invoke_185(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) &= ~2uLL;
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to unregister kCTIndicatorsSignalStrengthNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_deliverRNFSettingAvailable:(BOOL)available enabled:(BOOL)enabled
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__CoreTelephonyShim__deliverRNFSettingAvailable_enabled___block_invoke;
  v12[3] = &unk_27898A848;
  v12[4] = self;
  v12[5] = &v13;
  sf_synchronize(&self->rnfChangedLock, v12);
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Delivering new RNF setting change to delegates", buf, 2u);
  }

  v7 = v14[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__CoreTelephonyShim__deliverRNFSettingAvailable_enabled___block_invoke_186;
  v8[3] = &__block_descriptor_34_e41_v24__0___CoreTelephonyShimDelegate__8_B16l;
  availableCopy = available;
  enabledCopy = enabled;
  [v7 enumerateObjectsUsingBlock:v8];
  _Block_object_dispose(&v13, 8);
}

uint64_t __57__CoreTelephonyShim__deliverRNFSettingAvailable_enabled___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __57__CoreTelephonyShim__deliverRNFSettingAvailable_enabled___block_invoke_186(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rnfSettingChangedToFeatureEnabled:*(a1 + 32) userEnabled:*(a1 + 33)];
  }
}

- (void)_deliverSignalStrengthChanged:(id)changed cellularRSRP:(id)p cellularSNR:(id)r
{
  changedCopy = changed;
  pCopy = p;
  rCopy = r;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__14;
  v26 = __Block_byref_object_dispose__14;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__CoreTelephonyShim__deliverSignalStrengthChanged_cellularRSRP_cellularSNR___block_invoke;
  v21[3] = &unk_27898A848;
  v21[4] = self;
  v21[5] = &v22;
  sf_synchronize(&self->signalStrengthChangedLock, v21);
  v11 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Delivering new signal strength value to delegates", buf, 2u);
  }

  v12 = v23[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__CoreTelephonyShim__deliverSignalStrengthChanged_cellularRSRP_cellularSNR___block_invoke_191;
  v16[3] = &unk_27898EC58;
  v13 = changedCopy;
  v17 = v13;
  v14 = pCopy;
  v18 = v14;
  v15 = rCopy;
  v19 = v15;
  [v12 enumerateObjectsUsingBlock:v16];

  _Block_object_dispose(&v22, 8);
}

uint64_t __76__CoreTelephonyShim__deliverSignalStrengthChanged_cellularRSRP_cellularSNR___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __76__CoreTelephonyShim__deliverSignalStrengthChanged_cellularRSRP_cellularSNR___block_invoke_191(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 signalStrengthChanged:a1[4] cellularRSRP:a1[5] cellularSNR:a1[6]];
  }
}

- (void)copyCellInfoOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
    if (getCurrentDataSubscriptionContext)
    {
      coreTelephonyClient = self->coreTelephonyClient;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__CoreTelephonyShim_copyCellInfoOnQueue_completion___block_invoke;
      v13[3] = &unk_27898D988;
      v14 = queueCopy;
      v15 = completionCopy;
      [(CoreTelephonyClient *)coreTelephonyClient copyCellInfo:getCurrentDataSubscriptionContext completion:v13];
    }

    else
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "copyCellInfoOnQueue: Looked up a nil subscription context, skipping.", v12, 2u);
      }
    }
  }

  else
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Missing completion callback block!", v12, 2u);
    }
  }
}

void __52__CoreTelephonyShim_copyCellInfoOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CoreTelephonyShim_copyCellInfoOnQueue_completion___block_invoke_2;
  block[3] = &unk_27898EC80;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)registerRNFChangedWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    elevatedQueue = self->elevatedQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__CoreTelephonyShim_registerRNFChangedWithDelegate___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = delegateCopy;
    dispatch_async(elevatedQueue, v8);
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "registerRNFChangedWithDelegate requires a valid delegate!", buf, 2u);
    }
  }
}

void __52__CoreTelephonyShim_registerRNFChangedWithDelegate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__CoreTelephonyShim_registerRNFChangedWithDelegate___block_invoke_2;
  v2[3] = &unk_27898A7D0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sf_synchronize(v1 + 42, v2);
}

void __52__CoreTelephonyShim_registerRNFChangedWithDelegate___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 152);
    v14 = 134217984;
    v15 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Preparing to register for RNF setting changes (curFlags: %lu)", &v14, 0xCu);
  }

  v4 = *(*(a1 + 32) + 160);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = *(a1 + 32);
    v7 = *(v6 + 160);
    *(v6 + 160) = v5;

    v4 = *(*(a1 + 32) + 160);
  }

  [v4 addObject:*(a1 + 40)];
  v8 = *(a1 + 32);
  if (*(v8 + 152))
  {
    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "Already registered for RNF setting changes", &v14, 2u);
    }
  }

  else
  {
    v9 = *(v8 + 72);
    v10 = netepochsLogHandle;
    v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Registering for RNF setting changes", &v14, 2u);
      }

      [*(a1 + 32) _registerForCoreTelephonyNotifications:1];
    }

    else
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CTShim not yet initialized. Marking that we need to register for RNF setting changes", &v14, 2u);
      }

      *(*(a1 + 32) + 144) |= 1uLL;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)unregisterRNFChangedWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    elevatedQueue = self->elevatedQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__CoreTelephonyShim_unregisterRNFChangedWithDelegate___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = delegateCopy;
    dispatch_async(elevatedQueue, v8);
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "unregisterRNFChangedWithDelegate requires a valid delegate!", buf, 2u);
    }
  }
}

void __54__CoreTelephonyShim_unregisterRNFChangedWithDelegate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__CoreTelephonyShim_unregisterRNFChangedWithDelegate___block_invoke_2;
  v2[3] = &unk_27898A7D0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sf_synchronize(v1 + 42, v2);
}

void __54__CoreTelephonyShim_unregisterRNFChangedWithDelegate___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 160) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 160) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 160);
    *(v2 + 160) = 0;
  }

  v4 = *(*(a1 + 32) + 152);
  v5 = netepochsLogHandle;
  v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering from RNF setting changes", buf, 2u);
    }

    [*(a1 + 32) _unregisterFromCoreTelephonyNotifications:1];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unmarking that we need to register for RNF setting changes", v7, 2u);
    }

    *(*(a1 + 32) + 144) &= ~1uLL;
  }
}

- (void)registerSignalStrengthChangedWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    elevatedQueue = self->elevatedQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__CoreTelephonyShim_registerSignalStrengthChangedWithDelegate___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = delegateCopy;
    dispatch_async(elevatedQueue, v8);
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "registerSignalStrengthChangedWithDelegate requires a valid delegate!", buf, 2u);
    }
  }
}

void __63__CoreTelephonyShim_registerSignalStrengthChangedWithDelegate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__CoreTelephonyShim_registerSignalStrengthChangedWithDelegate___block_invoke_2;
  v2[3] = &unk_27898A7D0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sf_synchronize(v1 + 46, v2);
}

void __63__CoreTelephonyShim_registerSignalStrengthChangedWithDelegate___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 152);
    v14 = 134217984;
    v15 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Preparing to register for signal strength changes (curFlags: %lu)", &v14, 0xCu);
  }

  v4 = *(*(a1 + 32) + 176);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = *(a1 + 32);
    v7 = *(v6 + 176);
    *(v6 + 176) = v5;

    v4 = *(*(a1 + 32) + 176);
  }

  [v4 addObject:*(a1 + 40)];
  v8 = *(a1 + 32);
  if ((*(v8 + 152) & 2) != 0)
  {
    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "Already registered for signal strength changes", &v14, 2u);
    }
  }

  else
  {
    v9 = *(v8 + 72);
    v10 = netepochsLogHandle;
    v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Registering for signal strength changes", &v14, 2u);
      }

      [*(a1 + 32) _registerForCoreTelephonyNotifications:2];
    }

    else
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CTShim not yet initialized. Marking that we need to register for signal strength changes", &v14, 2u);
      }

      *(*(a1 + 32) + 144) |= 2uLL;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSignalStrengthChangedWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    elevatedQueue = self->elevatedQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__CoreTelephonyShim_unregisterSignalStrengthChangedWithDelegate___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = delegateCopy;
    dispatch_async(elevatedQueue, v8);
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "unregisterSignalStrengthChangedWithDelegate requires a valid delegate!", buf, 2u);
    }
  }
}

void __65__CoreTelephonyShim_unregisterSignalStrengthChangedWithDelegate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__CoreTelephonyShim_unregisterSignalStrengthChangedWithDelegate___block_invoke_2;
  v2[3] = &unk_27898A7D0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sf_synchronize(v1 + 46, v2);
}

void __65__CoreTelephonyShim_unregisterSignalStrengthChangedWithDelegate___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 176) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 176) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 176);
    *(v2 + 176) = 0;
  }

  v4 = *(*(a1 + 32) + 152);
  v5 = netepochsLogHandle;
  v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 2) != 0)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering from signal strength changes", buf, 2u);
    }

    [*(a1 + 32) _unregisterFromCoreTelephonyNotifications:2];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unmarking that we need to register for signal strength changes", v7, 2u);
    }

    *(*(a1 + 32) + 144) &= ~2uLL;
  }
}

- (BOOL)getSmartDataModeSetting
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Updating current SDM setting", buf, 2u);
  }

  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    v5 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:getCurrentDataSubscriptionContext];
    if (v5)
    {
      coreTelephonyClient = self->coreTelephonyClient;
      v17 = 0;
      v7 = [(CoreTelephonyClient *)coreTelephonyClient smartDataMode:v5 error:&v17];
      v8 = v17;
      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      v9 = v8;
      v10 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        localizedDescription = [v9 localizedDescription];
        *buf = 138412290;
        v19 = localizedDescription;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Error querying smartDataMode: %@", buf, 0xCu);
      }
    }

    else
    {
      v14 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "Cannot query smart data mode, no service descriptor yet", buf, 2u);
      }
    }

    v7 = 0;
    goto LABEL_15;
  }

  v13 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "getSmartDataModeSetting: Looked up a nil subscription context, skipping.", buf, 2u);
  }

  v7 = 0;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)getCurrentSISWiFiHotSpotOutrankPolicy
{
  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    coreTelephonyClient = self->coreTelephonyClient;
    v5 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
    v14 = 0;
    v6 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValue:getCurrentDataSubscriptionContext key:@"EnableMmWaveSisOutrank" bundleType:v5 error:&v14];
    v7 = v14;

    domain = [v7 domain];
    if (domain)
    {
    }

    else if (![v7 code])
    {
      intValue = [v6 intValue];
      if (intValue == 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (intValue == 2);
      }

      goto LABEL_9;
    }

    v10 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "getCurrentSISWiFiHotSpotOutrankPolicy: Looked up a nil subscription context, skipping.", v13, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)wifiHotSpotOutrankPolicyStringFor:(int)for
{
  v3 = @"No Advice";
  if (for == 2)
  {
    v3 = @"Never Outrank";
  }

  if (for == 1)
  {
    return @"Always Outrank";
  }

  else
  {
    return v3;
  }
}

- (id)getCurrentSIMStatus
{
  v17 = *MEMORY[0x277D85DE8];
  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    coreTelephonyClient = self->coreTelephonyClient;
    v12 = 0;
    v5 = [(CoreTelephonyClient *)coreTelephonyClient getSIMStatus:getCurrentDataSubscriptionContext error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412547;
        v14 = v6;
        v15 = 2113;
        v16 = getCurrentDataSubscriptionContext;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "getSIMStatus failed error: %@, context: %{private}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "getCurrentSIMStatus: Looked up a nil subscription context, skipping.", buf, 2u);
    }

    v6 = 0;
    v5 = 0;
  }

  v9 = v5;

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)getCurrentDataStatus
{
  v17 = *MEMORY[0x277D85DE8];
  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    coreTelephonyClient = self->coreTelephonyClient;
    v12 = 0;
    v5 = [(CoreTelephonyClient *)coreTelephonyClient getDataStatus:getCurrentDataSubscriptionContext error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412547;
        v14 = v6;
        v15 = 2113;
        v16 = getCurrentDataSubscriptionContext;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "getDataStatus failed error: %@, context: %{private}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "getCurrentDataStatus: Looked up a nil subscription context, skipping.", buf, 2u);
    }

    v6 = 0;
    v5 = 0;
  }

  v9 = v5;

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)getNetworkSlicingStates
{
  v17[8] = *MEMORY[0x277D85DE8];
  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 28, getCurrentDataSubscriptionContext)}];
    v17[0] = v4;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 29, getCurrentDataSubscriptionContext)}];
    v17[1] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 30, getCurrentDataSubscriptionContext)}];
    v17[2] = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 31, getCurrentDataSubscriptionContext)}];
    v17[3] = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 32, getCurrentDataSubscriptionContext)}];
    v17[4] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 33, getCurrentDataSubscriptionContext)}];
    v17[5] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 34, getCurrentDataSubscriptionContext)}];
    v17[6] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim getConnectionType:activeForContext:](self, "getConnectionType:activeForContext:", 35, getCurrentDataSubscriptionContext)}];
    v17[7] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:8];
  }

  else
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "getNetworkSlicingStates: Looked up a nil subscription context, skipping.", v16, 2u);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)sendTaggedInfo:(unint64_t)info payload:(id)payload
{
  payloadCopy = payload;
  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    coreTelephonyClient = self->coreTelephonyClient;
    if (objc_opt_respondsToSelector())
    {
      [(CoreTelephonyClient *)self->coreTelephonyClient sendTaggedInfo:getCurrentDataSubscriptionContext type:info payload:payloadCopy completion:&__block_literal_global_218];
      goto LABEL_7;
    }

    v8 = +[BasebandFlowInformer sharedInstance];
    v9 = v8;
    v10 = @"no selector for sendTaggedInfo:type:payload:completion:";
  }

  else
  {
    v8 = +[BasebandFlowInformer sharedInstance];
    v9 = v8;
    v10 = @"no context";
  }

  [v8 trace:"sendTaggedInfo" item:v10];

LABEL_7:
}

void __44__CoreTelephonyShim_sendTaggedInfo_payload___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = +[BasebandFlowInformer sharedInstance];
    [v3 trace:"sendTaggedInfo" item:v2];

    v4 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "CT client failed to send tagged info, error %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentRatSelection
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Updating current RAT selection", buf, 2u);
  }

  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    v5 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:getCurrentDataSubscriptionContext];
    if (v5)
    {
      coreTelephonyClient = self->coreTelephonyClient;
      v15 = 0;
      v7 = [(CoreTelephonyClient *)coreTelephonyClient getRatSelectionMask:v5 error:&v15];
      v8 = v15;
      if (v8)
      {
        v9 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          localizedDescription = [v8 localizedDescription];
          *buf = 138412290;
          v17 = localizedDescription;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Error querying getRatSelectionMask: %@", buf, 0xCu);
        }
      }

      else
      {
        [(CoreTelephonyShim *)self ratSelectionChanged:v5 selection:v7];
      }
    }

    else
    {
      v13 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Cannot query smart data mode, no service descriptor yet", buf, 2u);
      }
    }
  }

  else
  {
    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "updateCurrentRatSelection: Looked up a nil subscription context, skipping.", buf, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enhancedDataLinkQualityChanged:(id)changed metric:(id)metric
{
  v140[2] = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  metricCopy = metric;
  slotID = [changedCopy slotID];
  v7 = netepochsLogHandle;
  if (slotID == self->currentSubscriberSlotID)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      *buf = 134218499;
      v134 = currentSubscriberSlotID;
      v135 = 2113;
      v136 = changedCopy;
      v137 = 2112;
      v138 = metricCopy;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "CTShim: enhancedDataLinkQualityChanged, currentSubscriberSlotID: %ld, context: %{private}@, metric: %@", buf, 0x20u);
    }

    metricType = [metricCopy metricType];
    if (metricType <= 4)
    {
      if (metricType > 2)
      {
        if (metricType == 3)
        {
          v54 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
          v55 = self->delegates;
          objc_sync_enter(v55);
          enhancedLinkQuality = [metricCopy enhancedLinkQuality];
          [v54 setObject:enhancedLinkQuality forKeyedSubscript:@"trafficClass"];

          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v57 = self->delegates;
          v58 = [(NSMutableSet *)v57 countByEnumeratingWithState:&v113 objects:v130 count:16];
          if (v58)
          {
            v59 = *v114;
            do
            {
              v60 = 0;
              do
              {
                if (*v114 != v59)
                {
                  objc_enumerationMutation(v57);
                }

                v61 = *(*(&v113 + 1) + 8 * v60);
                if (objc_opt_respondsToSelector())
                {
                  [v61 infoTrafficClassChangedForSubscription:v54];
                }

                ++v60;
              }

              while (v58 != v60);
              v58 = [(NSMutableSet *)v57 countByEnumeratingWithState:&v113 objects:v130 count:16];
            }

            while (v58);
          }

          objc_sync_exit(v55);
        }

        else
        {
          v30 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
          v31 = self->delegates;
          objc_sync_enter(v31);
          enhancedLinkQuality2 = [metricCopy enhancedLinkQuality];
          [v30 setObject:enhancedLinkQuality2 forKeyedSubscript:@"dataTransferTime"];

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v33 = self->delegates;
          v34 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v109 objects:v129 count:16];
          if (v34)
          {
            v35 = *v110;
            do
            {
              v36 = 0;
              do
              {
                if (*v110 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v37 = *(*(&v109 + 1) + 8 * v36);
                if (objc_opt_respondsToSelector())
                {
                  [v37 infoDataTransferTimeChangedForSubscription:v30];
                }

                ++v36;
              }

              while (v34 != v36);
              v34 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v109 objects:v129 count:16];
            }

            while (v34);
          }

          objc_sync_exit(v31);
        }
      }

      else if (metricType == 1)
      {
        v46 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
        v47 = self->delegates;
        objc_sync_enter(v47);
        enhancedLinkQuality3 = [metricCopy enhancedLinkQuality];
        [v46 setObject:enhancedLinkQuality3 forKeyedSubscript:@"linkState"];

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v49 = self->delegates;
        v50 = [(NSMutableSet *)v49 countByEnumeratingWithState:&v121 objects:v132 count:16];
        if (v50)
        {
          v51 = *v122;
          do
          {
            v52 = 0;
            do
            {
              if (*v122 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v53 = *(*(&v121 + 1) + 8 * v52);
              if (objc_opt_respondsToSelector())
              {
                [v53 infoLinkStateChangedForSubscription:v46];
              }

              ++v52;
            }

            while (v50 != v52);
            v50 = [(NSMutableSet *)v49 countByEnumeratingWithState:&v121 objects:v132 count:16];
          }

          while (v50);
        }

        objc_sync_exit(v47);
      }

      else
      {
        if (metricType != 2)
        {
LABEL_101:
          v86 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
          {
            v87 = v86;
            metricType2 = [metricCopy metricType];
            *buf = 134217984;
            v134 = metricType2;
            _os_log_impl(&dword_23255B000, v87, OS_LOG_TYPE_INFO, "CTShim: enhancedDataLinkQualityChanged: Unknown metrictype: %lu", buf, 0xCu);
          }

          goto LABEL_103;
        }

        v22 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
        v23 = self->delegates;
        objc_sync_enter(v23);
        enhancedLinkQuality4 = [metricCopy enhancedLinkQuality];
        [v22 setObject:enhancedLinkQuality4 forKeyedSubscript:@"linkQualityFingerprint"];

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v25 = self->delegates;
        v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v117 objects:v131 count:16];
        if (v26)
        {
          v27 = *v118;
          do
          {
            v28 = 0;
            do
            {
              if (*v118 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v117 + 1) + 8 * v28);
              if (objc_opt_respondsToSelector())
              {
                [v29 infoLinkQualityFingeprintChangedForSubscription:v22];
              }

              ++v28;
            }

            while (v26 != v28);
            v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v117 objects:v131 count:16];
          }

          while (v26);
        }

        objc_sync_exit(v23);
      }
    }

    else if (metricType <= 6)
    {
      if (metricType == 5)
      {
        v70 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
        v71 = self->delegates;
        objc_sync_enter(v71);
        enhancedLinkQuality5 = [metricCopy enhancedLinkQuality];
        [v70 setObject:enhancedLinkQuality5 forKeyedSubscript:@"linkPowerCost"];

        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v73 = self->delegates;
        v74 = [(NSMutableSet *)v73 countByEnumeratingWithState:&v101 objects:v127 count:16];
        if (v74)
        {
          v75 = *v102;
          do
          {
            v76 = 0;
            do
            {
              if (*v102 != v75)
              {
                objc_enumerationMutation(v73);
              }

              v77 = *(*(&v101 + 1) + 8 * v76);
              if (objc_opt_respondsToSelector())
              {
                [v77 infoLinkPowerCostChangedForSubscription:v70];
              }

              ++v76;
            }

            while (v74 != v76);
            v74 = [(NSMutableSet *)v73 countByEnumeratingWithState:&v101 objects:v127 count:16];
          }

          while (v74);
        }

        objc_sync_exit(v71);
      }

      else
      {
        v38 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
        v39 = self->delegates;
        objc_sync_enter(v39);
        enhancedLinkQuality6 = [metricCopy enhancedLinkQuality];
        [v38 setObject:enhancedLinkQuality6 forKeyedSubscript:@"dataTransferTimeEnabled"];

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v41 = self->delegates;
        v42 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v105 objects:v128 count:16];
        if (v42)
        {
          v43 = *v106;
          do
          {
            v44 = 0;
            do
            {
              if (*v106 != v43)
              {
                objc_enumerationMutation(v41);
              }

              v45 = *(*(&v105 + 1) + 8 * v44);
              if (objc_opt_respondsToSelector())
              {
                [v45 infoDataTransferTimeEnabledChangedForSubscription:v38];
              }

              ++v44;
            }

            while (v42 != v44);
            v42 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v105 objects:v128 count:16];
          }

          while (v42);
        }

        objc_sync_exit(v39);
      }
    }

    else
    {
      switch(metricType)
      {
        case 7:
          v62 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
          v63 = self->delegates;
          objc_sync_enter(v63);
          enhancedLinkQuality7 = [metricCopy enhancedLinkQuality];
          [v62 setObject:enhancedLinkQuality7 forKeyedSubscript:@"dataStall"];

          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v65 = self->delegates;
          v66 = [(NSMutableSet *)v65 countByEnumeratingWithState:&v97 objects:v126 count:16];
          if (v66)
          {
            v67 = *v98;
            do
            {
              v68 = 0;
              do
              {
                if (*v98 != v67)
                {
                  objc_enumerationMutation(v65);
                }

                v69 = *(*(&v97 + 1) + 8 * v68);
                if (objc_opt_respondsToSelector())
                {
                  [v69 infoDataStallChangedForSubscription:v62];
                }

                ++v68;
              }

              while (v66 != v68);
              v66 = [(NSMutableSet *)v65 countByEnumeratingWithState:&v97 objects:v126 count:16];
            }

            while (v66);
          }

          objc_sync_exit(v63);
          break;
        case 8:
          -[CoreTelephonyShim removeCachedContentsForEnhancedLinkQualityMetricType:forSlot:](self, "removeCachedContentsForEnhancedLinkQualityMetricType:forSlot:", 8, [changedCopy slotID]);
          enhancedLinkQuality8 = [metricCopy enhancedLinkQuality];
          v79 = [(CoreTelephonyShim *)self processEnhancedLinkQualityHighThroughputNotification:enhancedLinkQuality8];

          obj = self->delegates;
          objc_sync_enter(obj);
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v80 = self->delegates;
          v81 = [(NSMutableSet *)v80 countByEnumeratingWithState:&v93 objects:v125 count:16];
          if (v81)
          {
            v82 = *v94;
            do
            {
              v83 = 0;
              do
              {
                if (*v94 != v82)
                {
                  objc_enumerationMutation(v80);
                }

                v84 = *(*(&v93 + 1) + 8 * v83);
                if (objc_opt_respondsToSelector())
                {
                  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v79];
                  [v84 infoHighThroughputStateChanged:v85];
                }

                ++v83;
              }

              while (v81 != v83);
              v81 = [(NSMutableSet *)v80 countByEnumeratingWithState:&v93 objects:v125 count:16];
            }

            while (v81);
          }

          objc_sync_exit(obj);
          break;
        case 9:
          break;
        default:
          goto LABEL_101;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7;
      slotID2 = [changedCopy slotID];
      v12 = self->currentSubscriberSlotID;
      *buf = 134218240;
      v134 = slotID2;
      v135 = 2048;
      v136 = v12;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CTShim: enhancedDataLinkQualityChanged, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", buf, 0x16u);
    }

    if ([metricCopy metricType] == 8)
    {
      enhancedLinkQuality9 = [metricCopy enhancedLinkQuality];
      v14 = [(CoreTelephonyShim *)self processEnhancedLinkQualityHighThroughputNotification:enhancedLinkQuality9];

      v139[0] = @"highThroughputState";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      v139[1] = @"timestamp";
      v140[0] = v15;
      v16 = MEMORY[0x277CCABB0];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v17 = [v16 numberWithDouble:?];
      v140[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:2];

      -[CoreTelephonyShim cacheEnhancedLinkQualityMetricType:withContents:forSlot:](self, "cacheEnhancedLinkQualityMetricType:withContents:forSlot:", 8, v18, [changedCopy slotID]);
    }

    else
    {
      v19 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        metricType3 = [metricCopy metricType];
        *buf = 134217984;
        v134 = metricType3;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "CTShim: Dropping eLQM metric type %ld", buf, 0xCu);
      }
    }
  }

LABEL_103:

  v89 = *MEMORY[0x277D85DE8];
}

- (void)taggedInfoIndicationChanged:(id)changed type:(unint64_t)type payload:(id)payload
{
  v30 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  payloadCopy = payload;
  if ([changedCopy slotID] == self->currentSubscriberSlotID)
  {
    obj = self->delegates;
    objc_sync_enter(obj);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->delegates;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 receiveIndicationForTag:type payload:payloadCopy];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    objc_sync_exit(obj);
  }

  else
  {
    v15 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      slotID = [changedCopy slotID];
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      *buf = 134218240;
      v27 = slotID;
      v28 = 2048;
      v29 = currentSubscriberSlotID;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "CTShim: taggedInfoIndicationChanged, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  nameCopy = name;
  slotID = [changedCopy slotID];
  v9 = netepochsLogHandle;
  if (slotID == self->currentSubscriberSlotID)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      *buf = 134218499;
      v29 = currentSubscriberSlotID;
      v30 = 2113;
      v31 = changedCopy;
      v32 = 2112;
      v33 = nameCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "CTShim: operatorNameChanged, currentSubscriberSlotID: %ld, context: %{private}@, name: %@", buf, 0x20u);
    }

    v11 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
    v12 = self->delegates;
    objc_sync_enter(v12);
    [v11 setObject:nameCopy forKeyedSubscript:@"operatorName"];
    v22 = nameCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->delegates;
    v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 operatorNameChangedForSubscription:v11];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    nameCopy = v22;
    objc_sync_exit(v12);
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v9;
    slotID2 = [changedCopy slotID];
    v20 = self->currentSubscriberSlotID;
    *buf = 134218240;
    v29 = slotID2;
    v30 = 2048;
    v31 = v20;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "CTShim: operatorNameChanged, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dualSimStatusChangedTo:(unsigned __int8)to
{
  toCopy = to;
  v17 = *MEMORY[0x277D85DE8];
  v5 = self->delegates;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->delegates;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 cellularDualSimStatusChangedTo:{toCopy, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)get5GSupportedForContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  coreTelephonyClient = self->coreTelephonyClient;
  v10 = 0;
  v6 = [(CoreTelephonyClient *)coreTelephonyClient getSupports5G:contextCopy error:&v10];
  v7 = v10;
  if (v6)
  {
    [(CoreTelephonyShim *)self set5GSupportChanged:v6 forContext:contextCopy];
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Error from getSupports5G Error: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)set5GSupportChanged:(id)changed forContext:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  contextCopy = context;
  slotID = [contextCopy slotID];
  currentSubscriberSlotID = self->currentSubscriberSlotID;
  v10 = netepochsLogHandle;
  v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (slotID == currentSubscriberSlotID)
  {
    if (v11)
    {
      v12 = self->currentSubscriberSlotID;
      *buf = 134218499;
      v31 = v12;
      v32 = 2113;
      v33 = contextCopy;
      v34 = 2112;
      v35 = changedCopy;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CTShim: supports5G, currentSubscriberSlotID: %ld, context: %{private}@, supports5G: %@", buf, 0x20u);
    }

    v13 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:contextCopy];
    v14 = self->delegates;
    objc_sync_enter(v14);
    [v13 setObject:changedCopy forKeyedSubscript:@"subscriberSupports5G"];
    v24 = v13;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->delegates;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          if (objc_opt_respondsToSelector())
          {
            [v19 supports5GChangedTo:{objc_msgSend(changedCopy, "BOOLValue")}];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    objc_sync_exit(v14);
  }

  else if (v11)
  {
    v20 = v10;
    slotID2 = [contextCopy slotID];
    v22 = self->currentSubscriberSlotID;
    *buf = 134218240;
    v31 = slotID2;
    v32 = 2048;
    v33 = v22;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CTShim: supports5G, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)networkCodeChanged:(id)changed forContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  contextCopy = context;
  userDataPreferred = [contextCopy userDataPreferred];
  bOOLValue = [userDataPreferred BOOLValue];

  if (bOOLValue)
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "CTShim: networkCodeChanged on the user data preferred SIM.", buf, 2u);
    }
  }

  else
  {
    v11 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:contextCopy];
    v12 = self->delegates;
    objc_sync_enter(v12);
    [v11 setObject:changedCopy forKeyedSubscript:@"mobileNetworkCode"];
    v19 = changedCopy;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = self->delegates;
    v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 networkCodeChangedForSubscription:v11];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }

    changedCopy = v19;
    objc_sync_exit(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)countryCodeChanged:(id)changed forContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  contextCopy = context;
  userDataPreferred = [contextCopy userDataPreferred];
  bOOLValue = [userDataPreferred BOOLValue];

  if (bOOLValue)
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "CTShim: countryCodeChanged on the user data preferred SIM.", buf, 2u);
    }
  }

  else
  {
    v11 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:contextCopy];
    v12 = self->delegates;
    objc_sync_enter(v12);
    [v11 setObject:changedCopy forKeyedSubscript:@"mobileCountryCode"];
    v19 = changedCopy;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = self->delegates;
    v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 countryCodeChangedForSubscription:v11];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }

    changedCopy = v19;
    objc_sync_exit(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  v46 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  slotID = [changedCopy slotID];
  v9 = netepochsLogHandle;
  if (slotID == self->currentSubscriberSlotID)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      *buf = 134218499;
      v41 = currentSubscriberSlotID;
      v42 = 2113;
      v43 = changedCopy;
      v44 = 2112;
      v45 = infoCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "CTShim: signalStrengthChanged, currentSubscriberSlotID: %ld, context: %{private}@, info: %@", buf, 0x20u);
    }

    v11 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changedCopy];
    v12 = self->delegates;
    objc_sync_enter(v12);
    bars = [infoCopy bars];
    [v11 setObject:bars forKeyedSubscript:@"bars"];

    v33 = changedCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = self->delegates;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v18 signalStrengthChangedForSubscription:v11];
          }
        }

        v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
    }

    changedCopy = v33;
    objc_sync_exit(v12);

    v19 = [v11 objectForKeyedSubscript:@"isCurrentDataSubscription"];
    v20 = v19;
    if (v19 && [v19 BOOLValue])
    {
      v32 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v33];
      coreTelephonyClient = self->coreTelephonyClient;
      v34 = 0;
      v22 = [(CoreTelephonyClient *)coreTelephonyClient getSignalStrengthMeasurements:v32 error:&v34];
      v23 = v34;
      if (v23)
      {
        rsrp = &unk_2847EFB78;
        v25 = &unk_2847EFE30;
      }

      else
      {
        rsrp = [v22 rsrp];
        v25 = [v22 snr];
      }

      v29 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v41 = rsrp;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "CTShim: RSRP: %@ SNR: %@", buf, 0x16u);
      }

      v30 = [v11 objectForKeyedSubscript:@"bars"];
      [(CoreTelephonyShim *)self _deliverSignalStrengthChanged:v30 cellularRSRP:rsrp cellularSNR:v25];
    }
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v9;
    slotID2 = [changedCopy slotID];
    v28 = self->currentSubscriberSlotID;
    *buf = 134218240;
    v41 = slotID2;
    v42 = 2048;
    v43 = v28;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "CTShim: signalStrengthChanged, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", buf, 0x16u);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  v43 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  infoCopy = info;
  slotID = [updateCopy slotID];
  v9 = netepochsLogHandle;
  if (slotID == self->currentSubscriberSlotID)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      *buf = 134218499;
      v38 = currentSubscriberSlotID;
      v39 = 2113;
      v40 = updateCopy;
      v41 = 2112;
      v42 = infoCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "CTShim: cellMonitorUpdate, currentSubscriberSlotID: %ld, context: %{private}@, info: %@", buf, 0x20u);
    }

    if (infoCopy)
    {
      legacyInfo = [infoCopy legacyInfo];
      v12 = legacyInfo == 0;

      if (!v12)
      {
        v13 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:updateCopy];
        obj = self->delegates;
        objc_sync_enter(obj);
        v14 = [v13 objectForKeyedSubscript:@"ctCellInfo"];
        v15 = [(CoreTelephonyShim *)self extractCellInfo:v14];

        if (v15 && (-[CoreTelephonyShim extractCellInfo:](self, "extractCellInfo:", infoCopy), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 isEqualToDictionary:v16], v16, (v17 & 1) != 0))
        {
          v18 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v38 = v15;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "CTShim: not processing duplicate cellInfo, stored: %@", buf, 0xCu);
          }
        }

        else
        {
          [v13 setObject:infoCopy forKeyedSubscript:@"ctCellInfo"];
          v22 = [(CoreTelephonyShim *)self cellCarrierNameForContext:updateCopy refresh:0];
          if (v22)
          {
            [v13 setObject:v22 forKeyedSubscript:@"carrierName"];
          }

          v23 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "CTShim: processing received cellInfo", buf, 2u);
          }

          v30 = v15;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v24 = self->delegates;
          v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v25)
          {
            v26 = *v33;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v33 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v32 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  [v28 cellInfoChangedForSubscription:v13];
                }
              }

              v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
            }

            while (v25);
          }

          v15 = v30;
        }

        objc_sync_exit(obj);
      }
    }
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v9;
    slotID2 = [updateCopy slotID];
    v21 = self->currentSubscriberSlotID;
    *buf = 134218240;
    v38 = slotID2;
    v39 = 2048;
    v40 = v21;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "CTShim: cellMonitorUpdate, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", buf, 0x16u);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)ratSelectionChanged:(id)changed selection:(id)selection
{
  v27 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selectionCopy = selection;
  v8 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:changedCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 slotID] == self->currentSubscriberSlotID)
    {
      v10 = netepochsLogHandle;
      if (selectionCopy)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          currentSubscriberSlotID = self->currentSubscriberSlotID;
          v21 = 134218499;
          v22 = currentSubscriberSlotID;
          v23 = 2113;
          v24 = v9;
          v25 = 2112;
          v26 = selectionCopy;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "CTShim: ratSelectionChanged, currentSubscriberSlotID: %ld, context: %{private}@, selection: %@", &v21, 0x20u);
        }

        v12 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:v9];
        [(CoreTelephonyShim *)self _deliverRatSelectionChanged:selectionCopy withSubscriptionDict:v12];
        goto LABEL_11;
      }

      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      LOWORD(v21) = 0;
      v14 = "CTShim: ratSelectionChanged, value for CTRatSelection was nil";
      v15 = v10;
      v16 = 2;
LABEL_14:
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, v14, &v21, v16);
      goto LABEL_15;
    }

    v17 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v17;
      slotID = [v9 slotID];
      v19 = self->currentSubscriberSlotID;
      v21 = 134218240;
      v22 = slotID;
      v23 = 2048;
      v24 = v19;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "CTShim: ratSelectionChanged, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", &v21, 0x16u);
LABEL_11:
    }
  }

  else
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = changedCopy;
      v14 = "CTShim: ratSelectionChanged, couldn't convert descriptor to context = %@";
      v15 = v13;
      v16 = 12;
      goto LABEL_14;
    }
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_deliverRatSelectionChanged:(id)changed withSubscriptionDict:(id)dict
{
  v34 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  dictCopy = dict;
  v8 = self->delegates;
  objc_sync_enter(v8);
  selection = [changedCopy selection];
  [dictCopy setObject:selection forKeyedSubscript:@"currentRATSelection"];

  preferred = [changedCopy preferred];
  [dictCopy setObject:preferred forKeyedSubscript:@"preferredRATSelection"];

  mask = [changedCopy mask];
  0x3F = [MEMORY[0x277CCABB0] numberWithInt:mask > 0x3F];
  [dictCopy setObject:0x3F forKeyedSubscript:@"ratSelectionIsNR"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:mask];
  [dictCopy setObject:v13 forKeyedSubscript:@"ratSelectionMask"];

  v14 = netepochsLogHandle;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    mask2 = [changedCopy mask];
    selection2 = [changedCopy selection];
    preferred2 = [changedCopy preferred];
    *buf = 67109634;
    *v33 = mask2;
    *&v33[4] = 2112;
    *&v33[6] = selection2;
    *&v33[14] = 2112;
    *&v33[16] = preferred2;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "CTShim: ratSelectionChanged mask:%d selection:%@ preferred:%@", buf, 0x1Cu);
  }

  v18 = netepochsLogHandle;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [(NSMutableSet *)self->delegates count];
    delegates = self->delegates;
    *buf = 134218242;
    *v33 = v19;
    *&v33[8] = 2112;
    *&v33[10] = delegates;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "CTShim: ratSelectionChanged and we have %lu delegates: %@", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = self->delegates;
  v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v22)
  {
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        if (objc_opt_respondsToSelector())
        {
          [v25 ratSelectionChangedForSubscription:{dictCopy, v27}];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  objc_sync_exit(v8);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)currentDataSimChanged:(id)changed
{
  v27 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v26 = changedCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CTShim: currentDataSimChanged, context: %{private}@", buf, 0xCu);
  }

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __43__CoreTelephonyShim_currentDataSimChanged___block_invoke;
  v22 = &unk_27898A7D0;
  v6 = changedCopy;
  v23 = v6;
  selfCopy = self;
  sf_synchronize(&self->coreTelephonyClientContextLock, &v19);
  coreTelephonyClientContext = self->coreTelephonyClientContext;
  if (!coreTelephonyClientContext)
  {
    v12 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = "CTShim: ignoring current data SIM change callback as context is nil";
    v14 = v12;
    v15 = 2;
LABEL_14:
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    goto LABEL_15;
  }

  v8 = [(CoreTelephonyShim *)self cellCarrierNameForContext:coreTelephonyClientContext refresh:1, v19, v20, v21, v22];
  if (!self->initializationComplete)
  {
    v16 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    initializationComplete = self->initializationComplete;
    *buf = 67109120;
    LODWORD(v26) = initializationComplete;
    v13 = "CTShim: ignoring current data SIM change callback as initializationComplete is %d";
    v14 = v16;
    v15 = 8;
    goto LABEL_14;
  }

  [(CoreTelephonyShim *)self _updateSubscribers];
  getSmartDataModeSetting = [(CoreTelephonyShim *)self getSmartDataModeSetting];
  v10 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "dis";
    if (getSmartDataModeSetting)
    {
      v11 = "en";
    }

    *buf = 136315138;
    v26 = v11;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Data SIM changed, new SIM's SmartDataMode is %sabled", buf, 0xCu);
  }

  [(CoreTelephonyShim *)self _deliverSmartDataModeSettingChanged:getSmartDataModeSetting];
  [(CoreTelephonyShim *)self get5GSupportedForContext:v6];
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

void __43__CoreTelephonyShim_currentDataSimChanged___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 138477827;
      v6 = v3;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "CTShim: updating CTXPCServiceSubscriptionContext: %{private}@", &v5, 0xCu);
    }

    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  infoCopy = info;
  slotID = [statusCopy slotID];
  v9 = netepochsLogHandle;
  if (slotID == self->currentSubscriberSlotID)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      v15 = 134218499;
      v16 = currentSubscriberSlotID;
      v17 = 2113;
      v18 = statusCopy;
      v19 = 2112;
      v20 = infoCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "CTShim: dataStatus, currentSubscriberSlotID: %ld, context: %{private}@, dataStatus: %@", &v15, 0x20u);
    }

    [(CoreTelephonyShim *)self processDataStatus:infoCopy forContext:statusCopy];
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
    slotID2 = [statusCopy slotID];
    v13 = self->currentSubscriberSlotID;
    v15 = 134218240;
    v16 = slotID2;
    v17 = 2048;
    v18 = v13;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "CTShim: dataStatus, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processDataStatus:(id)status forContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  contextCopy = context;
  if (statusCopy)
  {
    v16 = contextCopy;
    v8 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:contextCopy];
    v9 = self->delegates;
    objc_sync_enter(v9);
    [v8 setObject:statusCopy forKeyedSubscript:@"ctDataStatus"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->delegates;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 ctDataStatusChangedForSubscription:v8];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    objc_sync_exit(v9);
    contextCopy = v16;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  if ([changedCopy slotID] == self->currentSubscriberSlotID)
  {
    state = [infoCopy state];
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v20 = 67109376;
      *v21 = connection;
      *&v21[4] = 1024;
      *&v21[6] = state == 2;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Received a callback for connection state change. Connection %d active: %{BOOL}d", &v20, 0xEu);
    }

    if (connection > 31)
    {
      if (connection <= 33)
      {
        v12 = state == 2;
        selfCopy6 = self;
        if (connection == 32)
        {
          v14 = 4;
        }

        else
        {
          v14 = 5;
        }

        goto LABEL_23;
      }

      if (connection == 34)
      {
        v12 = state == 2;
        selfCopy6 = self;
        v14 = 6;
        goto LABEL_23;
      }

      if (connection == 35)
      {
        v12 = state == 2;
        selfCopy6 = self;
        v14 = 7;
        goto LABEL_23;
      }
    }

    else
    {
      if (connection > 29)
      {
        v12 = state == 2;
        selfCopy6 = self;
        if (connection == 30)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }

        goto LABEL_23;
      }

      if (connection == 28)
      {
        v12 = state == 2;
        selfCopy6 = self;
        v14 = 0;
        goto LABEL_23;
      }

      if (connection == 29)
      {
        v12 = state == 2;
        selfCopy6 = self;
        v14 = 1;
LABEL_23:
        [(CoreTelephonyShim *)selfCopy6 _deliverNetworkSlicingActiveChangedTo:v12 forSliceIndex:v14];
      }
    }
  }

  else
  {
    v15 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      slotID = [changedCopy slotID];
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      v20 = 134218240;
      *v21 = slotID;
      *&v21[8] = 2048;
      v22 = currentSubscriberSlotID;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "CTShim: connectionStateChanged, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  statusCopy = status;
  if ([changed slotID] == self->currentSubscriberSlotID)
  {
    -[CoreTelephonyShim _deliverNonTerrestrialNetworkActiveChangedTo:](self, "_deliverNonTerrestrialNetworkActiveChangedTo:", [statusCopy isSatelliteSystem]);
  }
}

- (void)carrierBundleChange:(id)change
{
  v33 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if ([changeCopy slotID] == self->currentSubscriberSlotID)
  {
    v5 = self->delegates;
    objc_sync_enter(v5);
    v6 = [(CoreTelephonyShim *)self dictionaryForSubscriptionContext:changeCopy];
    v7 = [v6 objectForKeyedSubscript:@"EnableMmWaveSisOutrank"];
    intValue = [v7 intValue];

    getCurrentSISWiFiHotSpotOutrankPolicy = [(CoreTelephonyShim *)self getCurrentSISWiFiHotSpotOutrankPolicy];
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CoreTelephonyShim *)self wifiHotSpotOutrankPolicyStringFor:getCurrentSISWiFiHotSpotOutrankPolicy];
      v12 = [(CoreTelephonyShim *)self wifiHotSpotOutrankPolicyStringFor:intValue];
      *buf = 138412546;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CTShim: wifiHotSpotOutrankPolicy is now %@, was %@", buf, 0x16u);
    }

    if (intValue != getCurrentSISWiFiHotSpotOutrankPolicy)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:getCurrentSISWiFiHotSpotOutrankPolicy];
      [v6 setObject:v13 forKeyedSubscript:@"EnableMmWaveSisOutrank"];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = self->delegates;
      v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        v16 = *v25;
        do
        {
          v17 = 0;
          do
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v24 + 1) + 8 * v17);
            if (objc_opt_respondsToSelector())
            {
              [v18 carrierBundleSISWiFiOutrankPolicyChangedForSubscription:{v6, v24}];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }
    }

    objc_sync_exit(v5);
  }

  else
  {
    v19 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      slotID = [changeCopy slotID];
      currentSubscriberSlotID = self->currentSubscriberSlotID;
      *buf = 134218240;
      v30 = slotID;
      v31 = 2048;
      v32 = currentSubscriberSlotID;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CTShim: carrierBundleChange, context slotID (%ld) does not match with currentSubscriberSlotID (%ld)", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)stateChanged:(id)changed
{
  isStewieActive = [changed isStewieActive];

  [(CoreTelephonyShim *)self _deliverStewieActiveChangedTo:isStewieActive];
}

- (BOOL)subscriptionContextIsCurrentDataSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v5 = subscriptionCopy;
  if (subscriptionCopy)
  {
    uuid = [subscriptionCopy uuid];

    if (uuid)
    {
      getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
      v8 = getCurrentDataSubscriptionContext;
      if (getCurrentDataSubscriptionContext)
      {
        uuid = [getCurrentDataSubscriptionContext uuid];

        if (uuid)
        {
          uuid2 = [v5 uuid];
          uuid3 = [v8 uuid];
          LOBYTE(uuid) = [uuid2 isEqual:uuid3];
        }
      }

      else
      {
        LOBYTE(uuid) = 0;
      }
    }
  }

  else
  {
    LOBYTE(uuid) = 0;
  }

  return uuid;
}

- (id)dictionaryForSubscriptionContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy && ([contextCopy uuid], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = self->delegates;
    objc_sync_enter(v7);
    subscriptions = self->_subscriptions;
    uuid = [v5 uuid];
    v10 = [(NSMutableDictionary *)subscriptions objectForKeyedSubscript:uuid];

    if (!v10)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:31];
      [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"inUse"];
      if ([v5 slotID])
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
        [v10 setObject:v11 forKeyedSubscript:@"slot"];
      }

      v12 = self->_subscriptions;
      uuid2 = [v5 uuid];
      [(NSMutableDictionary *)v12 setObject:v10 forKeyedSubscript:uuid2];
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v16 = v15;

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    [v10 setObject:v17 forKeyedSubscript:@"timestamp"];

    label = [v5 label];

    if (label)
    {
      label2 = [v5 label];
      [v10 setObject:label2 forKeyedSubscript:@"label"];
    }

    userDataPreferred = [v5 userDataPreferred];

    if (userDataPreferred)
    {
      userDataPreferred2 = [v5 userDataPreferred];
      [v10 setObject:userDataPreferred2 forKeyedSubscript:@"userDataPreferred"];
    }

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[CoreTelephonyShim subscriptionContextIsCurrentDataSubscription:](self, "subscriptionContextIsCurrentDataSubscription:", v5)}];
    [v10 setObject:v22 forKeyedSubscript:@"isCurrentDataSubscription"];

    objc_sync_exit(v7);
  }

  else
  {
    v23 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Missing subscription context UUID", v25, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)dualSimStatusInspection:(id)inspection withSubscriptionsInUse:(id)use
{
  useCopy = use;
  v7 = 2;
  v10 = useCopy;
  if (inspection && useCopy)
  {
    v8 = [inspection count];
    v9 = [v10 count] == 2 && v8 == 2;
    v7 = v9 ? 5 : 4;
    if (!v8)
    {
      v7 = 3;
    }
  }

  [(CoreTelephonyShim *)self dualSimStatusChangedTo:v7];
}

- (void)carrierSettingsDidChange
{
  coreTelephonyClient = self->coreTelephonyClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke;
  v3[3] = &unk_27898ED68;
  v3[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfo:v3];
}

void __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Error getting subscription Error: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [v5 subscriptionsInUse];
    v9 = [v5 subscriptions];
    [*(a1 + 32) dualSimStatusInspection:v9 withSubscriptionsInUse:v8];
    if (v8)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_2;
      v13[3] = &unk_27898ED40;
      v13[4] = *(a1 + 32);
      [v8 enumerateObjectsUsingBlock:v13];
    }

    else
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "subscriptionsInUse from CTXPCServiceSubscriptionInfo is nil", buf, 2u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_3;
  v27[3] = &unk_27898ECC8;
  v27[4] = v4;
  v6 = v3;
  v28 = v6;
  [v5 getSignalStrengthInfo:v6 completion:v27];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_275;
  v25[3] = &unk_27898ECF0;
  v25[4] = v7;
  v9 = v6;
  v26 = v9;
  [v8 copyOperatorName:v9 completion:v25];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_277;
  v23[3] = &unk_27898ECF0;
  v23[4] = v10;
  v12 = v9;
  v24 = v12;
  [v11 copyMobileSubscriberNetworkCode:v12 completion:v23];
  v13 = *(a1 + 32);
  v14 = *(v13 + 8);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_278;
  v21[3] = &unk_27898ECF0;
  v21[4] = v13;
  v15 = v12;
  v22 = v15;
  [v14 copyMobileCountryCode:v15 completion:v21];
  [*(a1 + 32) get5GSupportedForContext:v15];
  v16 = *(a1 + 32);
  v17 = *(v16 + 8);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_279;
  v19[3] = &unk_27898ED18;
  v19[4] = v16;
  v20 = v15;
  v18 = v15;
  [v17 getPrivateNetworkCapabilitiesForContext:v18 completion:v19];
}

void __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Error from getSignalStrengthInfo Error: %@", &v9, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) signalStrengthChanged:*(a1 + 40) info:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_275(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Error from copyOperatorName Error: %@", &v9, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) operatorNameChanged:*(a1 + 40) name:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "CTShim: Dual-SIM telemetry; Error from copyMobileSubscriberNetworkCode Error: %@", &v10, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) networkCodeChanged:v5 forContext:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_278(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "CTShim: Dual-SIM telemetry; Error from copyMobileCountryCode Error: %@", &v10, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) countryCodeChanged:v5 forContext:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __45__CoreTelephonyShim_carrierSettingsDidChange__block_invoke_279(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) getPrivateNetworkSupported:objc_msgSend(v5 forContext:{"isPrivateNetworkPreferredOverWifi"), *(a1 + 40)}];
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Error from getPrivateNetworkCapabilitiesForContext Error: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendNetworkSlicingStatesToDelegate
{
  getCurrentDataSubscriptionContext = [(CoreTelephonyShim *)self getCurrentDataSubscriptionContext];
  if (getCurrentDataSubscriptionContext)
  {
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:28 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:0];
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:29 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:1];
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:30 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:2];
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:31 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:3];
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:32 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:4];
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:33 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:5];
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:34 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:6];
    [(CoreTelephonyShim *)self _deliverNetworkSlicingActiveChangedTo:[(CoreTelephonyShim *)self getConnectionType:35 activeForContext:getCurrentDataSubscriptionContext] forSliceIndex:7];
  }

  else
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "sendNetworkSlicingStatesToDelegate: Looked up a nil subscription context, skipping.", v5, 2u);
    }
  }
}

- (void)updateSubscribers
{
  if (self->initializationComplete)
  {

    [(CoreTelephonyShim *)self _updateSubscribers];
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CTShim: ignoring request to updateSubscribers as initialization is not yet complete", v5, 2u);
    }
  }
}

- (void)_updateSubscribers
{
  coreTelephonyClient = self->coreTelephonyClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CoreTelephonyShim__updateSubscribers__block_invoke;
  v3[3] = &unk_27898EE08;
  v3[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient copyMobileEquipmentInfo:v3];
}

void __39__CoreTelephonyShim__updateSubscribers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2 && !a3)
  {
    v4 = [a2 meInfoList];
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CTShim: Mobile equipment info list: %@", buf, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v25 = 0;
    v7 = [v6 getSubscriptionInfoWithError:&v25];
    v8 = v25;
    v9 = v8;
    if (v7 && v8 == 0)
    {
      v12 = [v7 subscriptionsInUse];
      v13 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v27 = v12;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "CTShim: Subscriptions in-use: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "CTShim: Failed to get subscription info", buf, 2u);
      }

      v12 = 0;
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __39__CoreTelephonyShim__updateSubscribers__block_invoke_283;
    v22[3] = &unk_27898EDB8;
    v14 = v12;
    v15 = *(a1 + 32);
    v23 = v14;
    v24 = v15;
    [v4 enumerateObjectsUsingBlock:v22];

    if (v14)
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 8);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __39__CoreTelephonyShim__updateSubscribers__block_invoke_285;
      v21[3] = &unk_27898EDE0;
      v21[4] = v16;
      [v17 getCurrentDataSubscriptionContext:v21];
    }

    else
    {
LABEL_17:
      v18 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 240);
        *buf = 138412290;
        v27 = v19;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "CTShim: No subscription contexts are in use (i.e., no SIM present), keeping current subscriber tag: %@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __39__CoreTelephonyShim__updateSubscribers__block_invoke_283(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 ICCID];

  if (v4)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__14;
    v27 = __Block_byref_object_dispose__14;
    v28 = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __39__CoreTelephonyShim__updateSubscribers__block_invoke_2;
      v20 = &unk_27898ED90;
      v21 = v3;
      v22 = &v23;
      [v5 enumerateObjectsUsingBlock:&v17];
    }

    v6 = *(a1 + 40);
    v7 = [v3 ICCID];
    LOBYTE(v6) = [v6 findSubscriberExactMatchForICCID:v7 MDN:v24[5] slotID:{objc_msgSend(v3, "slotId")}];

    if ((v6 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [v3 ICCID];
      LOBYTE(v8) = [v8 findSubscriberBestMatchForICCID:v9 MDN:v24[5] slotID:objc_msgSend(v3 update:{"slotId"), 1}];

      if ((v8 & 1) == 0)
      {
        v10 = [v3 ICCID];
        if (v10)
        {
          v11 = [v3 slotId] == 0;

          if (!v11)
          {
            v12 = *(a1 + 40);
            v13 = [v3 ICCID];
            [v12 addNewSubscriberForICCID:v13 MDN:v24[5] slotID:{objc_msgSend(v3, "slotId")}];
          }
        }
      }
    }

    if (([*(*(a1 + 40) + 40) archiveAndImportItemUnderName:@"CoreTelephonyShim-Subscribers" item:*(*(a1 + 40) + 232)] & 1) == 0)
    {
      v14 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1 + 40) + 232);
        *buf = 138477827;
        v30 = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "CTShim: Failed to persist subscribers dictionary in the DB: %{private}@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v23, 8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __39__CoreTelephonyShim__updateSubscribers__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 slotID];
  if (v6 == [*(a1 + 32) slotId])
  {
    v7 = [v10 phoneNumber];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

uint64_t __39__CoreTelephonyShim__updateSubscribers__block_invoke_285(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      return [*(result + 32) updateCurrentSubscriberTag:a2];
    }
  }

  return result;
}

- (void)_dispatchCellInfoResult:(id)result error:(id)error queue:(id)queue completion:(id)completion
{
  resultCopy = result;
  errorCopy = error;
  queueCopy = queue;
  completionCopy = completion;
  v14 = completionCopy;
  if (queueCopy)
  {
    if (completionCopy)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__CoreTelephonyShim__dispatchCellInfoResult_error_queue_completion___block_invoke;
      v15[3] = &unk_27898EE30;
      v15[4] = self;
      v16 = resultCopy;
      v17 = queueCopy;
      v19 = v14;
      v18 = errorCopy;
      sf_synchronize(&self->cellInfoLock, v15);
    }

    else
    {
      [CoreTelephonyShim _dispatchCellInfoResult:error:queue:completion:];
    }
  }

  else
  {
    [CoreTelephonyShim _dispatchCellInfoResult:error:queue:completion:];
  }
}

void __68__CoreTelephonyShim__dispatchCellInfoResult_error_queue_completion___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 104);
    if (v3)
    {
      v3 = [v3 count];
    }

    *buf = 134217984;
    v54 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "CTShim: dispatching cell info result, %lu queued completion handlers", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v36 = a1;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 40);
      v4 = v5;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v6 = *(a1 + 40);
      v7 = [v6 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v49;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v49 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v48 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v18 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
              {
                v19 = v18;
                v20 = objc_opt_class();
                v21 = NSStringFromClass(v20);
                *buf = 138412546;
                v54 = v21;
                v55 = 2112;
                v56 = v11;
                _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "CTShim: expected to find class NSDictionary, found class %@, %@", buf, 0x16u);
              }

              v4 = 0;
              goto LABEL_23;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      if (v4)
      {
        a1 = v36;
        objc_storeStrong((*(v36 + 32) + 80), v5);
        gettimeofday((*(v36 + 32) + 88), 0);
      }

      else
      {
LABEL_23:
        a1 = v36;
      }
    }

    else
    {
      v12 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        v14 = v12;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = *(a1 + 40);
        *buf = 138412546;
        v54 = v16;
        v55 = 2112;
        v56 = v17;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "CTShim: expected to find class NSArray, found class %@, %@", buf, 0x16u);
      }

      v4 = 0;
    }
  }

  v22 = *(a1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CoreTelephonyShim__dispatchCellInfoResult_error_queue_completion___block_invoke_290;
  block[3] = &unk_27898EC80;
  v47 = *(a1 + 64);
  v23 = v4;
  v45 = v23;
  v46 = *(a1 + 56);
  dispatch_async(v22, block);
  v24 = *(a1 + 32);
  v25 = *(v24 + 104);
  if (v25)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v40 + 1) + 8 * j);
          v32 = [v31 queue];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __68__CoreTelephonyShim__dispatchCellInfoResult_error_queue_completion___block_invoke_2;
          v37[3] = &unk_27898A328;
          v37[4] = v31;
          v38 = v23;
          a1 = v36;
          v39 = *(v36 + 56);
          dispatch_async(v32, v37);
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v28);
    }

    v33 = *(a1 + 32);
    v34 = *(v33 + 104);
    *(v33 + 104) = 0;

    v24 = *(a1 + 32);
  }

  *(v24 + 112) = 0;

  v35 = *MEMORY[0x277D85DE8];
}

void __68__CoreTelephonyShim__dispatchCellInfoResult_error_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (BOOL)findSubscriberExactMatchForICCID:(id)d MDN:(id)n slotID:(int64_t)iD
{
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nCopy = n;
  v10 = nCopy;
  if (dCopy && nCopy)
  {
    [(CoreTelephonyShim *)self getSortedSubscriberKeys];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v39 = 0u;
    v11 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      iDCopy = iD;
      v34 = v10;
      v13 = *v37;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [(NSMutableDictionary *)self->_subscribers objectForKeyedSubscript:v15];
          if ([(__CFString *)v15 isEqualToString:dCopy])
          {
            v17 = [v16 objectForKeyedSubscript:@"subscriberMDN"];
            v18 = [v17 isEqualToString:v34];

            if (v18)
            {
              v21 = MEMORY[0x277CCABB0];
              date = [MEMORY[0x277CBEAA8] date];
              [date timeIntervalSince1970];
              v23 = [v21 numberWithDouble:?];
              [v16 setObject:v23 forKeyedSubscript:@"subscriberLastUpdateTime"];

              v24 = [v16 objectForKeyedSubscript:@"subscriberSlotID"];
              integerValue = [v24 integerValue];

              if (integerValue != iDCopy)
              {
                v26 = [MEMORY[0x277CCABB0] numberWithInteger:iDCopy];
                [v16 setObject:v26 forKeyedSubscript:@"subscriberSlotID"];

                self->currentSubscriberSlotID = iDCopy;
                v27 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  currentSubscriberSlotID = self->currentSubscriberSlotID;
                  *buf = 138478595;
                  v41 = v15;
                  v42 = 2048;
                  v43 = integerValue;
                  v44 = 2048;
                  v45 = iDCopy;
                  v46 = 2048;
                  v47 = currentSubscriberSlotID;
                  _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "CTShim: exact match, slotID changed for subscriber key %{private}@ (old/new): (%ld/%ld), currentSubscriberSlotID: %ld", buf, 0x2Au);
                }
              }

              v19 = 1;
              goto LABEL_19;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_19:
      v10 = v34;
    }

    else
    {
      v19 = 0;
    }

    v29 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v30 = @"not found";
      *buf = 138412803;
      if (v19)
      {
        v30 = @"found";
      }

      v41 = v30;
      v42 = 2113;
      v43 = dCopy;
      v44 = 2113;
      v45 = v10;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "CTShim: Exact match %@ for subscriber key %{private}@, MDN %{private}@", buf, 0x20u);
    }
  }

  else
  {
    v20 = netepochsLogHandle;
    LOBYTE(v19) = 0;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v41 = dCopy;
      v42 = 2113;
      v43 = v10;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CTShim: ICCID: %{private}@, MDN: %{private}@, no exact match possible", buf, 0x16u);
      LOBYTE(v19) = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)findSubscriberBestMatchForICCID:(id)d MDN:(id)n slotID:(int64_t)iD update:(BOOL)update
{
  updateCopy = update;
  v55 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nCopy = n;
  v10 = nCopy;
  if (!dCopy)
  {
    v24 = netepochsLogHandle;
    LOBYTE(v23) = 0;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "CTShim: ICCID is nil, no best match possible", buf, 2u);
      LOBYTE(v23) = 0;
    }

    goto LABEL_40;
  }

  iDCopy = iD;
  if (!nCopy)
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "CTShim: MDN is nil, proceeding to find a best match", buf, 2u);
    }
  }

  [(CoreTelephonyShim *)self getSortedSubscriberKeys];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v12 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (!v12)
  {
    v23 = 0;
    goto LABEL_35;
  }

  v13 = v12;
  v14 = *v43;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v43 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v42 + 1) + 8 * i);
      v17 = [(NSMutableDictionary *)self->_subscribers objectForKeyedSubscript:v16];
      if ([dCopy length])
      {
        v18 = [(__CFString *)v16 isEqualToString:dCopy];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = 0;
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      if (![v10 length])
      {
LABEL_16:
        v20 = 0;
        v21 = 0;
        goto LABEL_17;
      }

      v19 = [v17 objectForKeyedSubscript:@"subscriberMDN"];
      v20 = [v19 isEqualToString:v10];

      v21 = 1;
LABEL_17:
      v22 = v18 | v20;
      if ((v22 & 1) != 0 && updateCopy)
      {
        v25 = MEMORY[0x277CCABB0];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v27 = [v25 numberWithDouble:?];
        [v17 setObject:v27 forKeyedSubscript:@"subscriberLastUpdateTime"];

        v28 = [v17 objectForKeyedSubscript:@"subscriberSlotID"];
        integerValue = [v28 integerValue];

        if (integerValue != v38)
        {
          v30 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
          [v17 setObject:v30 forKeyedSubscript:@"subscriberSlotID"];

          self->currentSubscriberSlotID = v38;
          v31 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            currentSubscriberSlotID = self->currentSubscriberSlotID;
            *buf = 138478595;
            v47 = v16;
            v48 = 2048;
            v49 = integerValue;
            v50 = 2048;
            v51 = v38;
            v52 = 2048;
            v53 = currentSubscriberSlotID;
            _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "CTShim: best match, slotID changed for subscriber key %{private}@ (old/new): (%ld/%ld), currentSubscriberSlotID: %ld", buf, 0x2Au);
          }
        }

        if (v21)
        {
          [v17 setObject:v10 forKeyedSubscript:@"subscriberMDN"];
        }

        if ((v18 & 1) == 0)
        {
          [(NSMutableDictionary *)self->_subscribers setObject:v17 forKey:dCopy];
          [(NSMutableDictionary *)self->_subscribers removeObjectForKey:v16];
        }

        v23 = 1;
        goto LABEL_35;
      }

      if (v22)
      {
        v23 = 1;
        goto LABEL_35;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    v23 = 0;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v33 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v34 = @"not found";
    *buf = 138412803;
    if (v23)
    {
      v34 = @"found";
    }

    v47 = v34;
    v48 = 2113;
    v49 = dCopy;
    v50 = 2113;
    v51 = v10;
    _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "CTShim: best match %@ for subscriber key %{private}@, MDN %{private}@", buf, 0x20u);
  }

LABEL_40:
  v35 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)getSortedSubscriberKeys
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_subscribers count])
  {
    v3 = [(NSMutableDictionary *)self->_subscribers mutableCopy];
    [v3 removeObjectForKey:@"subscriberTagCounter"];
    if ([v3 count])
    {
      v4 = [v3 keysSortedByValueUsingComparator:&__block_literal_global_299];
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CTShim: Sorted subscriber keys: %@", &v9, 0xCu);
      }
    }

    else
    {
      v6 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "CTShim: Empty subscriber list", &v9, 2u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __44__CoreTelephonyShim_getSortedSubscriberKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 objectForKeyedSubscript:@"subscriberLastUpdateTime"];
  v6 = [v4 objectForKeyedSubscript:@"subscriberLastUpdateTime"];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)extractCellInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = infoCopy;
  if (infoCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__14;
    v17 = __Block_byref_object_dispose__14;
    v18 = 0;
    legacyInfo = [infoCopy legacyInfo];
    if (legacyInfo && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __37__CoreTelephonyShim_extractCellInfo___block_invoke;
      v12[3] = &unk_27898BED8;
      v12[4] = &v13;
      [legacyInfo enumerateObjectsUsingBlock:v12];
    }

    else
    {
      v6 = netepochsLogHandle;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "CTShim: Expected legacyInfo to be an NSArray, received %@", buf, 0xCu);
      }
    }

    v9 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __37__CoreTelephonyShim_extractCellInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v12;
  if (isKindOfClass)
  {
    v9 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC3880]];
    v10 = v9;
    if (v9 && [v9 isEqualToString:*MEMORY[0x277CC3890]])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }

    v8 = v12;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v8);
}

- (void)addNewSubscriberForICCID:(id)d MDN:(id)n slotID:(int64_t)iD
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nCopy = n;
  v10 = [(NSMutableDictionary *)self->_subscribers objectForKeyedSubscript:@"subscriberTagCounter"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 unsignedIntValue] + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  [(NSMutableDictionary *)self->_subscribers setObject:v13 forKeyedSubscript:@"subscriberTagCounter"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v17 = [v15 numberWithDouble:?];
  [dictionary setObject:v17 forKeyedSubscript:@"subscriberLastUpdateTime"];

  if (nCopy && [nCopy length])
  {
    [dictionary setObject:nCopy forKeyedSubscript:@"subscriberMDN"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:iD];
  [dictionary setObject:v18 forKeyedSubscript:@"subscriberSlotID"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  [dictionary setObject:v19 forKeyedSubscript:@"subscriberTag"];

  [(NSMutableDictionary *)self->_subscribers setObject:dictionary forKeyedSubscript:dCopy];
  v20 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    subscribers = self->_subscribers;
    v23 = 138478083;
    v24 = dCopy;
    v25 = 2113;
    v26 = subscribers;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CTShim: New subscriber added with subscriber key (ICCID) %{private}@, subscribers: %{private}@", &v23, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentSubscriberTag:(id)tag
{
  v79 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  slotID = [tagCopy slotID];
  selfCopy = self;
  [(CoreTelephonyShim *)self getSortedSubscriberKeys];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v6 = [obj countByEnumeratingWithState:&v60 objects:v78 count:16];
  v47 = tagCopy;
  if (v6)
  {
    v7 = *v61;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v61 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v60 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)selfCopy->_subscribers objectForKeyedSubscript:v9];
        v11 = [v10 objectForKeyedSubscript:@"subscriberSlotID"];
        v12 = v11;
        if (v11 && [v11 integerValue] == slotID)
        {
          [v10 objectForKeyedSubscript:@"subscriberTag"];
          v43 = p_currentSubscriberTag = &selfCopy->_currentSubscriberTag;
          if ([(NSNumber *)selfCopy->_currentSubscriberTag isEqualToNumber:v43])
          {
            v14 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
            {
              v15 = *p_currentSubscriberTag;
              *buf = 138412803;
              *v67 = v15;
              *&v67[8] = 2113;
              *&v67[10] = v9;
              *&v67[18] = 2113;
              *&v67[20] = v10;
              _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "CTShim: Subscriber tag remains the same: %@, current data SIM for subscriber key %{private}@: %{private}@", buf, 0x20u);
            }
          }

          else
          {
            v44 = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
            v42 = [TrackedFlow cellUsageGrandTallyAfterSetting:0];
            v16 = [TrackedFlow rnfUsageGrandTallyAfterAdding:0];
            v17 = [TrackedFlow rnfUsageGrandTallyAfterSetting:0];
            v18 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *p_currentSubscriberTag;
              *buf = 138414083;
              *v67 = v19;
              *&v67[8] = 2112;
              *&v67[10] = v43;
              *&v67[18] = 2048;
              *&v67[20] = v44;
              v68 = 2048;
              v69 = v42;
              v70 = 2048;
              v71 = v16;
              v72 = 2048;
              v73 = v17;
              v74 = 2113;
              v75 = v9;
              v76 = 2113;
              v77 = v10;
              _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "CTShim: Subscriber tag updated (old/new): (%@/%@), grand tally reset cell: (%llu/%llu), rnf: (%llu/%llu), current data SIM for subscriber key %{private}@: %{private}@", buf, 0x52u);
            }

            objc_storeStrong(p_currentSubscriberTag, v43);
            selfCopy->currentSubscriberSlotID = slotID;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __48__CoreTelephonyShim_updateCurrentSubscriberTag___block_invoke;
            block[3] = &unk_27898A7D0;
            block[4] = selfCopy;
            v59 = tagCopy;
            if (updateCurrentSubscriberTag__once_token != -1)
            {
              dispatch_once(&updateCurrentSubscriberTag__once_token, block);
            }
          }

          v45 = selfCopy->delegates;
          objc_sync_enter(v45);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v20 = selfCopy->delegates;
          v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v54 objects:v65 count:16];
          if (v21)
          {
            v22 = *v55;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v55 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v54 + 1) + 8 * j);
                if (objc_opt_respondsToSelector())
                {
                  [v24 currentDataSIMIdentifier:v9];
                }
              }

              v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v54 objects:v65 count:16];
            }

            while (v21);
          }

          tagCopy = v47;
          objc_sync_exit(v45);

          goto LABEL_29;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v60 objects:v78 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:

  v25 = [(CoreTelephonyShim *)selfCopy getCachedContentsForEnhancedLinkQualityMetricType:8 forSlot:selfCopy->currentSubscriberSlotID];
  if ([v25 count])
  {
    v26 = [v25 objectForKeyedSubscript:@"highThroughputState"];
    v27 = [v25 objectForKeyedSubscript:@"timestamp"];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v29 = v28;
    [v27 doubleValue];
    if (v26)
    {
      v31 = v29 - v30;
      if (v31 < 300.0)
      {
        v32 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          v33 = v32;
          unsignedIntValue = [v26 unsignedIntValue];
          [v27 doubleValue];
          *buf = 67109632;
          *v67 = unsignedIntValue;
          *&v67[4] = 2048;
          *&v67[6] = v35;
          *&v67[14] = 2048;
          *&v67[16] = v31;
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_INFO, "CTShim: Processing cached eLQM high throughput indication with value of %d received at %.4lf (%.4lf ago)", buf, 0x1Cu);
        }

        v46 = selfCopy->delegates;
        objc_sync_enter(v46);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v36 = selfCopy->delegates;
        v37 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v50 objects:v64 count:16];
        if (v37)
        {
          v38 = *v51;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v51 != v38)
              {
                objc_enumerationMutation(v36);
              }

              v40 = *(*(&v50 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                [v40 infoHighThroughputStateChanged:v26];
              }
            }

            v37 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v50 objects:v64 count:16];
          }

          while (v37);
        }

        tagCopy = v47;
        objc_sync_exit(v46);
      }
    }

    [(CoreTelephonyShim *)selfCopy removeCachedContentsForEnhancedLinkQualityMetricType:8 forSlot:selfCopy->currentSubscriberSlotID];
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __48__CoreTelephonyShim_updateCurrentSubscriberTag___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    *buf = 134217984;
    v19 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CTShim: CT BB registration after setting CoreTelephonyClient delegate and current subscriber slotID (FAE and NAE are ready by now), currentSubscriberSlotID: %ld", buf, 0xCu);
  }

  +[NetworkAnalyticsEngine setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v17 = 0;
  v6 = [v5 getDataStatus:v4 error:&v17];
  v7 = v17;
  v8 = [v7 domain];
  if (v8)
  {

    goto LABEL_6;
  }

  if ([v7 code])
  {
LABEL_6:
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "CTShim: Failed to fetch initial dataStatus, error %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 24);
    *buf = 134218499;
    v19 = v12;
    v20 = 2113;
    v21 = v11;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CTShim: dataStatus (initial), currentSubscriberSlotID: %ld, context: %{private}@, dataStatus: %@", buf, 0x20u);
  }

  [*(a1 + 32) processDataStatus:v6 forContext:*(a1 + 40)];
LABEL_11:
  v13 = [*(a1 + 32) getSmartDataModeSetting];
  v14 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v15 = "dis";
    if (v13)
    {
      v15 = "en";
    }

    *buf = 136315138;
    v19 = v15;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "CTShim: CoreTelephonyClient initialized, SmartDataMode (initial) is %sabled", buf, 0xCu);
  }

  [*(a1 + 32) _deliverSmartDataModeSettingChanged:v13];
  [*(a1 + 32) updateCurrentRatSelection];
  [*(a1 + 32) get5GSupportedForContext:*(a1 + 40)];

  v16 = *MEMORY[0x277D85DE8];
}

- (unsigned)processEnhancedLinkQualityHighThroughputNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v18 = -1;
  if (notificationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v20 = notificationCopy;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB high throughput enable/disable notification: payload = %{public}@", buf, 0xCu);
    }

    Length = CFDataGetLength(notificationCopy);
    if (Length == 8)
    {
      *buffer = 0;
      v23.location = 4;
      v23.length = 4;
      CFDataGetBytes(notificationCopy, v23, buffer);
      v6 = *buffer;
      v7 = *buffer != 0;
      v18 = *buffer != 0;
      v8 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v20 = *buffer;
        *&v20[4] = 1024;
        *&v20[6] = v6 != 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "eLQM: Payload size is 8, second word %d, cellHighThroughputState %d", buf, 0xEu);
      }
    }

    else
    {
      v14 = Length;
      if (Length < 2)
      {
        goto LABEL_16;
      }

      v24.location = 1;
      v24.length = 1;
      CFDataGetBytes(notificationCopy, v24, &v18);
      v15 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v20 = v14;
        *&v20[4] = 1024;
        *&v20[6] = v18;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "eLQM: Payload size is %d, cellHighThroughputState %d", buf, 0xEu);
      }

      v7 = v18;
      if (v18 >= 2u)
      {
LABEL_16:
        v16 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v20 = v18;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "eLQM: Decoded an unexpected value for cellHighThroughputState: %d", buf, 8u);
        }

        v7 = v18;
      }
    }
  }

  else
  {
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      *buf = 134218242;
      *v20 = notificationCopy;
      *&v20[8] = 2112;
      v21 = objc_opt_class();
      v11 = v21;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "eLQM: Received BB high throughput enable/disable notification payload %p or unexpected class %@", buf, 0x16u);
    }

    v7 = -1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)cacheEnhancedLinkQualityMetricType:(int64_t)type withContents:(id)contents forSlot:(int64_t)slot
{
  v26 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  cachedELQMMetricsForSlot = self->_cachedELQMMetricsForSlot;
  if (!cachedELQMMetricsForSlot)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->_cachedELQMMetricsForSlot;
    self->_cachedELQMMetricsForSlot = v10;

    cachedELQMMetricsForSlot = self->_cachedELQMMetricsForSlot;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:slot];
  v13 = [(NSMutableDictionary *)cachedELQMMetricsForSlot objectForKeyedSubscript:v12];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = self->_cachedELQMMetricsForSlot;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:slot];
    [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

    v16 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      typeCopy = slot;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "eLQM: Created new metrics cache for slot %ld", &v20, 0xCu);
    }
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v13 setObject:contentsCopy forKeyedSubscript:v17];

  v18 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v20 = 134218498;
    typeCopy = type;
    v22 = 2048;
    slotCopy2 = slot;
    v24 = 2112;
    v25 = contentsCopy;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "eLQM: Caching contents for metric type %ld and slot %ld (changed to %@)", &v20, 0x20u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getCachedContentsForEnhancedLinkQualityMetricType:(int64_t)type forSlot:(int64_t)slot
{
  v25 = *MEMORY[0x277D85DE8];
  cachedELQMMetricsForSlot = self->_cachedELQMMetricsForSlot;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:slot];
  v8 = [(NSMutableDictionary *)cachedELQMMetricsForSlot objectForKeyedSubscript:v7];

  v9 = netepochsLogHandle;
  if (!v8)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      typeCopy2 = slot;
      v13 = "eLQM: Cached metrics for slot %ld is nil";
      v14 = v9;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 12;
LABEL_11:
      _os_log_impl(&dword_23255B000, v14, v15, v13, &v19, v16);
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v19 = 134218242;
    typeCopy2 = slot;
    v21 = 2112;
    slotCopy4 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "eLQM: Cached metrics for slot %ld is %@", &v19, 0x16u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v11 = [v8 objectForKeyedSubscript:v10];

  v12 = netepochsLogHandle;
  if (!v11)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218240;
      typeCopy2 = type;
      v21 = 2048;
      slotCopy4 = slot;
      v13 = "eLQM: Cached contents for metric type %ld and slot %ld is nil";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v19 = 134218498;
    typeCopy2 = type;
    v21 = 2048;
    slotCopy4 = slot;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "eLQM: Cached contents for metric type %ld and slot %ld is %@", &v19, 0x20u);
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeCachedContentsForEnhancedLinkQualityMetricType:(int64_t)type forSlot:(int64_t)slot
{
  v23 = *MEMORY[0x277D85DE8];
  cachedELQMMetricsForSlot = self->_cachedELQMMetricsForSlot;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:slot];
  v8 = [(NSMutableDictionary *)cachedELQMMetricsForSlot objectForKeyedSubscript:v7];

  v9 = netepochsLogHandle;
  if (v8)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v17 = 134218242;
      slotCopy3 = slot;
      v19 = 2112;
      slotCopy2 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "eLQM: Cached metrics for slot %ld is %@", &v17, 0x16u);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [v8 setObject:0 forKeyedSubscript:v10];

    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = v11;
      v14 = [v12 numberWithInteger:type];
      v15 = [v8 objectForKeyedSubscript:v14];
      v17 = 134218498;
      slotCopy3 = type;
      v19 = 2048;
      slotCopy2 = slot;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "eLQM: Removed cache for metric type %ld and slot %ld (changed to %@)", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    slotCopy3 = slot;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "eLQM: Cached metrics for slot %ld is nil", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionInfoDidChange
{
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CTShim: subscriptionInfoDidChange", v4, 2u);
  }

  [(CoreTelephonyShim *)self carrierSettingsDidChange];
}

- (void)activeSubscriptionsDidChange
{
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CTShim: activeSubscriptionsDidChange", buf, 2u);
  }

  [(CoreTelephonyShim *)self carrierSettingsDidChange];
  if (self->initializationComplete)
  {
    [(CoreTelephonyShim *)self _updateSubscribers];
  }

  else
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CTShim: ignoring activeSubscriptionsDidChange callback as initialization is not yet complete", v5, 2u);
    }
  }
}

- (void)simLessSubscriptionsDidChange
{
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CTShim: simLessSubscriptionsDidChange", v4, 2u);
  }

  [(CoreTelephonyShim *)self carrierSettingsDidChange];
}

- (void)preferPrivateNetworkCellularOverWiFiDidChange
{
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CTShim: preferPrivateNetworkCellularOverWiFiDidChange", v4, 2u);
  }

  [(CoreTelephonyShim *)self carrierSettingsDidChange];
}

- (void)registerForCTDumpNotifications
{
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Registering for CT Dump Begin/End notifications", buf, 2u);
  }

  v4 = *MEMORY[0x277CC3A20];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CoreTelephonyShim_registerForCTDumpNotifications__block_invoke;
  v7[3] = &unk_27898D068;
  v7[4] = self;
  [CTServerConnection registerForCTNofication:v4 ctShim:self completion:v7];
  v5 = *MEMORY[0x277CC3A28];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CoreTelephonyShim_registerForCTDumpNotifications__block_invoke_305;
  v6[3] = &unk_27898D068;
  v6[4] = self;
  [CTServerConnection registerForCTNofication:v5 ctShim:self completion:v6];
}

void __51__CoreTelephonyShim_registerForCTDumpNotifications__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) |= 4uLL;
    *(*(a1 + 32) + 144) &= ~4uLL;
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to register for kCTIndicatorsBeginStateDumpNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__CoreTelephonyShim_registerForCTDumpNotifications__block_invoke_305(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) |= 8uLL;
    *(*(a1 + 32) + 144) &= ~8uLL;
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to register for kCTIndicatorsEndStateDumpNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForCTDumpNotifications
{
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Unregistering for CT Dump Begin/End notifications", buf, 2u);
  }

  currentCTNotificationRegistrationFlags = self->_currentCTNotificationRegistrationFlags;
  if ((currentCTNotificationRegistrationFlags & 4) != 0)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering for CT Dump Begin notifications", buf, 2u);
    }

    v6 = *MEMORY[0x277CC3A20];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__CoreTelephonyShim_unregisterForCTDumpNotifications__block_invoke;
    v10[3] = &unk_27898D068;
    v10[4] = self;
    [CTServerConnection unregisterForCTNotification:v6 ctShim:self completion:v10];
    currentCTNotificationRegistrationFlags = self->_currentCTNotificationRegistrationFlags;
  }

  if ((currentCTNotificationRegistrationFlags & 8) != 0)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering for CT Dump End notifications", buf, 2u);
    }

    v8 = *MEMORY[0x277CC3A28];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__CoreTelephonyShim_unregisterForCTDumpNotifications__block_invoke_306;
    v9[3] = &unk_27898D068;
    v9[4] = self;
    [CTServerConnection unregisterForCTNotification:v8 ctShim:self completion:v9];
  }
}

void __53__CoreTelephonyShim_unregisterForCTDumpNotifications__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) &= ~4uLL;
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to unregister kCTIndicatorsBeginStateDumpNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __53__CoreTelephonyShim_unregisterForCTDumpNotifications__block_invoke_306(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 152) &= ~8uLL;
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to unregister kCTIndicatorsEndStateDumpNotification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)getBasebandTraceEnabledState:(BOOL *)state coreDumpEnabled:(BOOL *)enabled
{
  v25 = *MEMORY[0x277D85DE8];
  [(CoreTelephonyShim *)self ctServerConnection];
  v5 = _CTServerConnectionCopyTraceProperty();
  if (v5)
  {
    v6 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 67109376;
    v22 = v5;
    v23 = 1024;
    v24 = HIDWORD(v5);
    v7 = "_CTServerConnectionCopyTraceProperty BasebandTrace Enabled failed %d:%d";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 14;
  }

  else
  {
    v11 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "Couldn't get the BasebandTrace Enabled value for BasebandTraces";
    v8 = v11;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 2;
  }

  _os_log_impl(&dword_23255B000, v8, v9, v7, buf, v10);
LABEL_7:
  [(CoreTelephonyShim *)self ctServerConnection];
  v12 = _CTServerConnectionCopyTraceProperty();
  if (v12)
  {
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v22 = v12;
      v23 = 1024;
      v24 = HIDWORD(v12);
      v14 = "_CTServerConnectionCopyTraceProperty CoreDump Enabled failed %d:%d";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 14;
LABEL_12:
      _os_log_impl(&dword_23255B000, v15, v16, v14, buf, v17);
    }
  }

  else
  {
    v18 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Couldn't get the CoreDump Enabled value for CoreTelephony Dumps";
      v15 = v18;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 2;
      goto LABEL_12;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)dateTimeStringFromCTDumpFolderPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy length] && objc_msgSend(prefixCopy, "hasPrefix:", @"log-bb-"))
  {
    v4 = [prefixCopy substringFromIndex:{objc_msgSend(@"log-bb-", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (double)timestampFromCTDumpFolderPrefix:(id)prefix
{
  v3 = [CoreTelephonyShim dateTimeStringFromCTDumpFolderPrefix:prefix];
  if (![v3 length])
  {
    goto LABEL_3;
  }

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd-HH-mm-ss-SSS"];
  v5 = [v4 dateFromString:v3];
  [v5 timeIntervalSince1970];
  v7 = v6;

  if (v7 == 0.0)
  {
LABEL_3:
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v7 = v9;
  }

  return v7;
}

- (void)_dispatchCellInfoResult:error:queue:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_4(&dword_23255B000, v0, v1, "Invalid parameter %s", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchCellInfoResult:error:queue:completion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_4(&dword_23255B000, v0, v1, "Invalid parameter %s", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end