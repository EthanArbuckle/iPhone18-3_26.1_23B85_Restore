@interface STKSIMToolkitAlertSessionManager
- (BOOL)_showAfterDeviceUnlock:(unint64_t)unlock;
- (STKSIMToolkitAlertSessionManager)initWithSubscriptionMonitor:(id)monitor;
- (id)_listItemsFromCTItems:(id)items;
- (id)_newSessionBehaviorFromOptions:(id)options;
- (id)remoteAlertDescriptorForSession:(id)session;
- (void)_queue_handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info;
- (void)_queue_setCurrentSession:(id)session;
- (void)_queue_startListening;
- (void)_removeNotification;
- (void)_showNotification;
- (void)deviceLockStateChanged:(BOOL)changed;
- (void)handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info;
- (void)incomingCallUIStateDidChange:(BOOL)change;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)userEventDidOccur:(id)occur;
@end

@implementation STKSIMToolkitAlertSessionManager

- (void)_removeNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = @"SIMToolkit_Carrier";
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "Remove notifications with Identifier='%@'", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"SIMToolkit_Carrier", 0}];
  [(UNUserNotificationCenter *)self->_userNotificationCenter removePendingNotificationRequestsWithIdentifiers:v4];
  [(UNUserNotificationCenter *)self->_userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (STKSIMToolkitAlertSessionManager)initWithSubscriptionMonitor:(id)monitor
{
  monitorCopy = monitor;
  v6 = objc_opt_new();
  v7 = STKSIMToolkitLog();
  v35.receiver = self;
  v35.super_class = STKSIMToolkitAlertSessionManager;
  v8 = [(STKAlertSessionManager *)&v35 initWithEventQueue:v6 logger:v7];

  if (v8)
  {
    v9 = BSDispatchQueueCreateWithQualityOfService();
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeStrong(&v8->_subscriptionMonitor, monitor);
    v11 = +[STKIncomingCallUIStateMonitor sharedInstance];
    incomingCallUIStateMonitor = v8->_incomingCallUIStateMonitor;
    v8->_incomingCallUIStateMonitor = v11;

    [(STKIncomingCallUIStateMonitor *)v8->_incomingCallUIStateMonitor addObserver:v8];
    v13 = *MEMORY[0x277CC3FD0];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    if ([processName isEqual:@"ctnotifytool"])
    {

      v13 = @"com.apple.ctnotifytool";
    }

    v16 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v13];
    userNotificationCenter = v8->_userNotificationCenter;
    v8->_userNotificationCenter = v16;

    v18 = +[STKDeviceLockMonitor sharedInstance];
    deviceLockMonitor = v8->_deviceLockMonitor;
    v8->_deviceLockMonitor = v18;

    [(STKDeviceLockMonitor *)v8->_deviceLockMonitor addObserver:v8];
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_lock_deviceLocked = 0;
    notificationGroup = v8->_notificationGroup;
    v8->_notificationGroup = 0;

    v21 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v8->_queue];
    telephonyClient = v8->_telephonyClient;
    v8->_telephonyClient = v21;

    v23 = v8->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke;
    block[3] = &unk_279B4C428;
    v24 = v8;
    v34 = v24;
    dispatch_sync(v23, block);
    v25 = v8->_queue;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_2;
    v31 = &unk_279B4C708;
    v26 = v24;
    v32 = v26;
    notify_register_dispatch("com.apple.springboard.homescreenunlocked", v24 + 26, v25, &v28);
    [v26 incomingCallUIStateDidChange:{-[STKIncomingCallUIStateMonitor isShowingIncomingCallUI](v8->_incomingCallUIStateMonitor, "isShowingIncomingCallUI", v28, v29, v30, v31)}];
    [v26 deviceLockStateChanged:{-[STKDeviceLockMonitor isDeviceLocked](v8->_deviceLockMonitor, "isDeviceLocked")}];
  }

  return v8;
}

uint64_t __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_startListening];
  v2 = [[STKTelephonySelectionListItemsProvider alloc] initWithTelephonyClient:*(*(a1 + 32) + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  return MEMORY[0x2821F96F8]();
}

void __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_3;
  block[3] = &unk_279B4C428;
  v4 = v1;
  dispatch_async(v2, block);
}

id __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return [result sendSIMToolkitDisplayReady:0];
  }

  return result;
}

- (void)handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info
{
  responderCopy = responder;
  infoCopy = info;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__STKSIMToolkitAlertSessionManager_handleSIMToolkitEvent_responder_userInfo___block_invoke;
  v13[3] = &unk_279B4C4A0;
  v13[4] = self;
  v14 = responderCopy;
  v15 = infoCopy;
  eventCopy = event;
  v11 = infoCopy;
  v12 = responderCopy;
  dispatch_async(queue, v13);
}

- (void)_showNotification
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_262BB4000, a2, OS_LOG_TYPE_ERROR, "Something wrong with localization; using default language: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__STKSIMToolkitAlertSessionManager__showNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [WeakRetained log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__STKSIMToolkitAlertSessionManager__showNotification__block_invoke_cold_1(v3, v6);
    }
  }
}

- (BOOL)_showAfterDeviceUnlock:(unint64_t)unlock
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_deviceLocked)
  {
    [(STKSIMToolkitAlertSessionManager *)self _showNotification];
    v5 = dispatch_group_create();
    notificationGroup = self->_notificationGroup;
    self->_notificationGroup = v5;

    dispatch_group_enter(self->_notificationGroup);
    os_unfair_lock_unlock(&self->_lock);
    v7 = self->_notificationGroup;
    v8 = dispatch_time(0, 1000000000 * unlock);
    v9 = dispatch_group_wait(v7, v8) == 0;
    os_unfair_lock_lock(&self->_lock);
    v10 = self->_notificationGroup;
    self->_notificationGroup = 0;

    [(STKSIMToolkitAlertSessionManager *)self _removeNotification];
  }

  else
  {
    v9 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "Don't show";
    if (v9)
    {
      v12 = "Show";
    }

    v13 = "timeout waiting for device unlock";
    if (v9)
    {
      v13 = "device unlocked in-time";
    }

    v16 = 136315394;
    v17 = v12;
    v18 = 2080;
    v19 = v13;
    _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "%s STK alert; %s", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)remoteAlertDescriptorForSession:(id)session
{
  v111 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sessionCopy;
    options = [v5 options];
    v83 = v5;
    event = [v5 event];
    v8 = [options valueForKey:*MEMORY[0x277CC40D8]];
    intValue = [v8 intValue];

    v10 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      currentSession = self->_currentSession;
      *buf = 134218240;
      v108 = currentSession;
      v109 = 2048;
      v110 = intValue;
      _os_log_impl(&dword_262BB4000, v10, OS_LOG_TYPE_DEFAULT, "Session <%p> - SlotID %ld", buf, 0x16u);
    }

    v12 = [(STKCarrierSubscriptionMonitor *)self->_subscriptionMonitor subscriptionContextForSlot:intValue];
    if ([(STKCarrierSubscriptionMonitor *)self->_subscriptionMonitor numAvailableSubscriptions]< 2)
    {
      v82 = 0;
      v85 = 0;
    }

    else
    {
      telephonyClient = self->_telephonyClient;
      v106 = 0;
      v85 = [(CoreTelephonyClient *)telephonyClient getSimLabel:v12 error:&v106];
      v14 = v106;
      if (v14)
      {
        v15 = v14;
        v82 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(STKSIMToolkitAlertSessionManager *)intValue remoteAlertDescriptorForSession:v12, v15];
        }
      }

      else
      {
        v82 = 0;
      }
    }

    [options bs_safeStringForKey:*MEMORY[0x277CC40E0]];
    v90 = v89 = options;
    v16 = [(STKSIMToolkitAlertSessionManager *)self _newSessionBehaviorFromOptions:options];
    v19 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
    v20 = self->_telephonyClient;
    v105[1] = 0;
    v86 = v19;
    v21 = [CoreTelephonyClient copyCarrierBundleValueWithDefault:v20 key:"copyCarrierBundleValueWithDefault:key:bundleType:error:" bundleType:v12 error:@"AllowSTKAlertInLockScreen"];
    v22 = 0;
    v87 = v21;
    v88 = v12;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v108 = @"AllowSTKAlertInLockScreen";
        v109 = 2112;
        v110 = v21;
        _os_log_impl(&dword_262BB4000, v23, OS_LOG_TYPE_DEFAULT, "Carrier bundle: key=%@; value=%@", buf, 0x16u);
      }

      bOOLValue = [v21 BOOLValue];
    }

    else
    {
      v25 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [STKSIMToolkitAlertSessionManager remoteAlertDescriptorForSession:];
      }

      bOOLValue = 0;
    }

    v26 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = "Don't allow";
      if (bOOLValue)
      {
        v27 = "Allow";
      }

      *buf = 136315138;
      v108 = v27;
      _os_log_impl(&dword_262BB4000, v26, OS_LOG_TYPE_DEFAULT, "%s STK alerts when device is locked", buf, 0xCu);
    }

    if (bOOLValue)
    {
      v81 = v22;
      v29 = v5;
      v28 = v85;
    }

    else
    {
      v30 = self->_telephonyClient;
      v105[0] = v22;
      v31 = [(CoreTelephonyClient *)v30 copyCarrierBundleValueWithDefault:v88 key:@"STKAlertLockScreenNotificationTimeoutSeconds" bundleType:v86 error:v105];
      v32 = v105[0];

      v81 = v32;
      if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v33 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v108 = @"STKAlertLockScreenNotificationTimeoutSeconds";
          v109 = 2112;
          v110 = v31;
          _os_log_impl(&dword_262BB4000, v33, OS_LOG_TYPE_DEFAULT, "Carrier bundle: key=%@; value=%@", buf, 0x16u);
        }

        unsignedIntegerValue = [v31 unsignedIntegerValue];
        if (unsignedIntegerValue)
        {
          v35 = unsignedIntegerValue;
        }

        else
        {
          v35 = 29;
        }
      }

      else
      {
        v36 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [STKSIMToolkitAlertSessionManager remoteAlertDescriptorForSession:];
        }

        v35 = 29;
      }

      v28 = v85;
      v37 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v108 = v35;
        _os_log_impl(&dword_262BB4000, v37, OS_LOG_TYPE_DEFAULT, "Show STK alerts notification with timeout = %ld secs", buf, 0xCu);
      }

      v38 = [(STKSIMToolkitAlertSessionManager *)self _showAfterDeviceUnlock:v35];
      if (!v38)
      {
        v29 = v83;
        [v83 sendResponse:2];
        v44 = 0;
        v18 = 0;
        v48 = v82;
LABEL_83:

        goto LABEL_84;
      }

      v29 = v83;
    }

    v39 = 0;
    if (event <= 5)
    {
      if ((event - 1) >= 4)
      {
        if (event == 5)
        {
          if (v90)
          {
            v40 = [STKTextSessionData alloc];
            text = [v28 text];
            v42 = [(STKTextSessionData *)v40 initWithText:v90 simLabel:text];

            v43 = [STKTextSessionAction alloc];
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke;
            v103[3] = &unk_279B4C5F8;
            v104 = v29;
            v44 = [(STKTextSessionAction *)v43 initWithBehavior:v16 inputData:v42 response:v103];
            v39 = @"STKTextAlertViewController";
            v45 = v104;
LABEL_79:
            v48 = v82;
LABEL_80:

LABEL_81:
LABEL_82:
            v21 = v87;
            v18 = [[_STKRemoteAlertDescriptor alloc] initWithAction:v44 viewControllerName:v39];
            goto LABEL_83;
          }

          v90 = 0;
          v39 = 0;
          v44 = 0;
LABEL_89:
          v48 = v82;
          goto LABEL_82;
        }

LABEL_74:
        v44 = 0;
        goto LABEL_89;
      }

LABEL_49:
      v46 = v90;
      if (!v90)
      {
        if (event == 2)
        {
          v47 = MEMORY[0x277CC40B0];
        }

        else
        {
          if (event != 3)
          {
            v46 = 0;
            goto LABEL_78;
          }

          v47 = MEMORY[0x277CC40C0];
        }

        v46 = [v89 bs_safeStringForKey:*v47];
      }

LABEL_78:
      v74 = [STKNotifySessionData alloc];
      text2 = [v28 text];
      v90 = v46;
      v42 = [(STKNotifySessionData *)v74 initWithText:v46 simLabel:text2 notifyType:event];

      v76 = [STKNotifySessionAction alloc];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_7;
      v91[3] = &unk_279B4C5F8;
      v92 = v29;
      v44 = [(STKTextSessionAction *)v76 initWithBehavior:v16 inputData:v42 response:v91];
      v39 = @"STKNotifyAlertViewController";
      v45 = v92;
      goto LABEL_79;
    }

    if (event > 7)
    {
      if (event == 8)
      {
        v70 = [(STKTelephonyListItemsProvider *)self->_listItemsProvider selectionListItemsForContext:v88 options:v89];
        v42 = [(STKSIMToolkitAlertSessionManager *)self _listItemsFromCTItems:v70];

        if ([(STKNotifySessionData *)v42 count])
        {
          v71 = [STKListItemsSessionData alloc];
          text3 = [v28 text];
          v45 = [(STKListItemsSessionData *)v71 initWithText:v90 simLabel:text3 listItems:v42];

          v73 = [STKListItemsSessionAction alloc];
          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_5;
          v95[3] = &unk_279B4C780;
          v96 = v29;
          v44 = [(STKListItemsSessionAction *)v73 initWithBehavior:v16 inputData:v45 response:v95];

          v39 = @"STKListDisplayAlertViewController";
          goto LABEL_79;
        }

        v39 = 0;
        v44 = 0;
      }

      else
      {
        if (event != 9)
        {
          goto LABEL_74;
        }

        v42 = [v89 bs_safeObjectForKey:*MEMORY[0x277CC3F10] ofType:objc_opt_class()];
        if (v42)
        {
          v49 = [v89 bs_safeObjectForKey:*MEMORY[0x277CC3F18] ofType:objc_opt_class()];
          if (v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = &stru_287584798;
          }

          v51 = [STKMutableCallSetupSessionData alloc];
          v28 = v85;
          text4 = [v85 text];
          v45 = [(STKCallSetupSessionData *)v51 initWithText:v90 simLabel:text4 phoneNumber:v42];

          [(STKListItemsSessionData *)v45 setIsHighPriority:CFEqual(v50, *MEMORY[0x277CC3F20]) != 0];
          v53 = [STKCallSetupSessionAction alloc];
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_6;
          v93[3] = &unk_279B4C5F8;
          v94 = v29;
          v44 = [(STKTextSessionAction *)v53 initWithBehavior:v16 inputData:v45 response:v93];

          v39 = @"STKSetupCallAlertViewController";
          goto LABEL_79;
        }

        v39 = 0;
        v44 = 0;
        v28 = v85;
      }

      v48 = v82;
      goto LABEL_81;
    }

    if (event != 6)
    {
      event = 5;
      goto LABEL_49;
    }

    options2 = [v29 options];
    v55 = *MEMORY[0x277CC3F90];
    v56 = [options2 bs_safeStringForKey:*MEMORY[0x277CC3F90]];
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = &stru_287584798;
    }

    v58 = [v89 bs_safeStringForKey:v55];
    v59 = *MEMORY[0x277CC3FA0];
    v60 = [v58 isEqualToString:*MEMORY[0x277CC3FA0]];

    v61 = [STKMutableTextInputSessionData alloc];
    text5 = [v28 text];
    v42 = [(STKTextInputSessionData *)v61 initWithText:v90 simLabel:text5];

    -[STKNotifySessionData setIsSecure:](v42, "setIsSecure:", [v89 bs_BOOLForKey:*MEMORY[0x277CC3F70]]);
    v63 = [v89 bs_safeStringForKey:*MEMORY[0x277CC3F60]];
    [(STKNotifySessionData *)v42 setDefaultText:v63];

    [(STKNotifySessionData *)v42 setIsDigitsOnly:v60];
    v64 = [v89 bs_safeNumberForKey:*MEMORY[0x277CC3F80]];
    v45 = v64;
    if (v64)
    {
      [(STKNotifySessionData *)v42 setMinimumInputLength:[(STKListItemsSessionData *)v64 unsignedIntegerValue]];
    }

    v65 = [v89 bs_safeNumberForKey:*MEMORY[0x277CC3F78]];
    v66 = v65;
    if (v65)
    {
      -[STKNotifySessionData setMaximumInputLength:](v42, "setMaximumInputLength:", [v65 unsignedIntegerValue]);
    }

    v67 = [v89 bs_safeNumberForKey:*MEMORY[0x277CC3F68]];
    v84 = v67;
    if (v67 && ([v67 BOOLValue] & 1) == 0)
    {
      v79 = [STKTextInputSessionAction alloc];
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2;
      v101[3] = &unk_279B4C758;
      v69 = &v102;
      v102 = v29;
      v44 = [(STKTextInputSessionAction *)v79 initWithBehavior:v16 inputData:v42 response:v101];
      v39 = @"STKOneShotInputAlertViewController";
    }

    else if (CFEqual(v57, *MEMORY[0x277CC3F98]))
    {
      v68 = [STKYesNoSessionAction alloc];
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_3;
      v99[3] = &unk_279B4C780;
      v69 = &v100;
      v100 = v29;
      v44 = [(STKYesNoSessionAction *)v68 initWithBehavior:v16 inputData:v42 response:v99];
      v39 = @"STKYesNoInputAlertViewController";
    }

    else
    {
      if (!CFEqual(v57, *MEMORY[0x277CC3FA8]) && !CFEqual(v57, v59))
      {
        v39 = 0;
        v44 = 0;
        goto LABEL_97;
      }

      v80 = [STKTextInputSessionAction alloc];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_4;
      v97[3] = &unk_279B4C758;
      v69 = &v98;
      v98 = v29;
      v44 = [(STKTextInputSessionAction *)v80 initWithBehavior:v16 inputData:v42 response:v97];
      v39 = @"STKStandardInputAlertViewController";
    }

    v28 = v85;
LABEL_97:
    v48 = v82;

    goto LABEL_80;
  }

  v16 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_currentSession;
    *buf = 134217984;
    v108 = v17;
    _os_log_impl(&dword_262BB4000, v16, OS_LOG_TYPE_DEFAULT, "Session <%p> - session isKindOfClass is NULL", buf, 0xCu);
  }

  v18 = 0;
LABEL_84:

  v77 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 sendResponse:a2];
  }

  else
  {
    return [v3 sendResponse:0 withStringResult:a3];
  }
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = [a3 BOOLValue];

    return [v4 sendResponse:a2 withBOOLResult:v5];
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 sendResponse:a2];
  }
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 sendResponse:a2];
  }

  else
  {
    return [v3 sendResponse:0 withStringResult:a3];
  }
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = [a3 unsignedIntegerValue];

    return [v3 sendSuccessWithSelectedIndex:v4];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 sendResponse:a2];
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__STKSIMToolkitAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_279B4C4C8;
  v7[4] = self;
  v8 = deactivateCopy;
  v6 = deactivateCopy;
  dispatch_async(queue, v7);
}

void __67__STKSIMToolkitAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 136) alertHandle];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 136);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated", &v7, 0xCu);
    }

    [*(a1 + 32) _queue_setCurrentSession:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  [handleCopy removeObserver:self];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__STKSIMToolkitAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke;
  block[3] = &unk_279B4C7A8;
  block[4] = self;
  v12 = handleCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(queue, block);
}

void __77__STKSIMToolkitAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 136) alertHandle];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 136);
      v6 = *(a1 + 48);
      v8 = 134218242;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated with error: %{public}@", &v8, 0x16u);
    }

    [*(a1 + 32) _queue_setCurrentSession:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)userEventDidOccur:(id)occur
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STKSIMToolkitAlertSessionManager_userEventDidOccur___block_invoke;
  block[3] = &unk_279B4C428;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__STKSIMToolkitAlertSessionManager_userEventDidOccur___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_262BB4000, v2, OS_LOG_TYPE_DEFAULT, "UserEventDidOccur", v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  if (v4)
  {
    [v4 sendResponse:7];
    v3 = *(a1 + 32);
  }

  [*(v3 + 120) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 128);
  *(v7 + 128) = 0;
}

- (void)incomingCallUIStateDidChange:(BOOL)change
{
  if (change)
  {
    if (self->_haltEventQueueProcessingAssertion)
    {
      return;
    }

    v4 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "Halting event queue processing due to incoming call ui being visible.", buf, 2u);
    }

    eventQueue = [(STKAlertSessionManager *)self eventQueue];
    v6 = [eventQueue acquireEventQueueHaltingAssertionForReason:@"incomingCallUIVisible"];
    haltEventQueueProcessingAssertion = self->_haltEventQueueProcessingAssertion;
    self->_haltEventQueueProcessingAssertion = v6;
  }

  else
  {
    v8 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_262BB4000, v8, OS_LOG_TYPE_DEFAULT, "Resulting event queue processing due to incoming call ui being removed.", v9, 2u);
    }

    [(BSInvalidatable *)self->_haltEventQueueProcessingAssertion invalidate];
    eventQueue = self->_haltEventQueueProcessingAssertion;
    self->_haltEventQueueProcessingAssertion = 0;
  }
}

- (void)deviceLockStateChanged:(BOOL)changed
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_deviceLocked = changed;
  if (!changed)
  {
    notificationGroup = self->_notificationGroup;
    if (notificationGroup)
    {
      dispatch_group_leave(notificationGroup);
    }

    [(STKSIMToolkitAlertSessionManager *)self _removeNotification];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_queue_setCurrentSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  BSDispatchQueueAssert();
  currentSession = self->_currentSession;
  if (currentSession != sessionCopy)
  {
    alertHandle = [(STKAlertSession *)currentSession alertHandle];
    [alertHandle removeObserver:self];

    [(STKAlertSession *)self->_currentSession invalidate];
  }

  v8 = self->_currentSession;
  self->_currentSession = sessionCopy;
  v9 = sessionCopy;

  alertHandle2 = [(STKAlertSession *)self->_currentSession alertHandle];

  [alertHandle2 addObserver:self];
}

- (void)_queue_handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info
{
  v99 = *MEMORY[0x277D85DE8];
  responderCopy = responder;
  infoCopy = info;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v11 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSTKSIMToolkitEvent(event);
    *buf = 138543618;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = infoCopy;
    _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "Event received: %{public}@ with options: %@", buf, 0x16u);
  }

  if (event != 14)
  {
    v74 = self->_currentSession;
    behavior = [(STKSIMToolkitAlertSession *)v74 behavior];
    if ([behavior dismissesAfterUserEvent])
    {
      hasSentResponse = [(STKAlertSession *)v74 hasSentResponse];

      if (!hasSentResponse)
      {
        goto LABEL_14;
      }

      v18 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        currentSession = self->_currentSession;
        *buf = 134217984;
        *&buf[4] = currentSession;
        _os_log_impl(&dword_262BB4000, v18, OS_LOG_TYPE_DEFAULT, "Session <%p> - Dismissing because [currentAlert dismissesAfterNextEvent] && [currentAlert hasSentResponse]", buf, 0xCu);
      }

      [(STKSIMToolkitAlertSessionManager *)self _queue_setCurrentSession:0];
      behavior = v74;
      v74 = 0;
    }

LABEL_14:
    if (event == 7)
    {
      v24 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = infoCopy;
        _os_log_impl(&dword_262BB4000, v24, OS_LOG_TYPE_DEFAULT, "Session <%p> - Play Tone userInfo: %{public}@", buf, 0x16u);
      }

      v71 = [STKSoundFactory soundForOptions:infoCopy];
    }

    else
    {
      if (event == 13)
      {
        v20 = *MEMORY[0x277CC40C8];
        v71 = [infoCopy objectForKey:*MEMORY[0x277CC40C8]];
        options = [(STKAlertSession *)v74 options];
        v70 = [options objectForKey:v20];

        if (v74 && BSEqualObjects())
        {
          v22 = [(STKAlertSessionManager *)self log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = self->_currentSession;
            *buf = 134217984;
            *&buf[4] = v23;
            _os_log_impl(&dword_262BB4000, v22, OS_LOG_TYPE_DEFAULT, "Session <%p> - Dismissing because kCTSIMToolkitSessionCompleteNotification", buf, 0xCu);
          }

          [(STKSIMToolkitAlertSessionManager *)self _queue_setCurrentSession:0];
        }

        goto LABEL_104;
      }

      v71 = 0;
    }

    v70 = [(STKSIMToolkitAlertSessionManager *)self _newSessionBehaviorFromOptions:infoCopy];
    v25 = [STKSIMToolkitAlertSession alloc];
    v26 = [(STKAlertSessionManager *)self log];
    v72 = [(STKSIMToolkitAlertSession *)v25 initWithLogger:v26 responseProvider:responderCopy event:event options:infoCopy behavior:v70 sound:v71];

    if (v74 && ![(STKAlertSession *)v74 hasSentResponse])
    {
      v28 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v72;
        _os_log_impl(&dword_262BB4000, v28, OS_LOG_TYPE_DEFAULT, "Session <%p> - Returning early because an existing session already exists and needs a response", buf, 0xCu);
      }

      [(STKAlertSession *)v72 sendResponse:5];
      [(STKAlertSession *)v72 invalidate];
      goto LABEL_103;
    }

    if (event <= 9)
    {
      if (event == 5)
      {
        v40 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v72;
          _os_log_impl(&dword_262BB4000, v40, OS_LOG_TYPE_DEFAULT, "Session <%p> - Text session", buf, 0xCu);
        }

        v41 = [infoCopy bs_safeStringForKey:*MEMORY[0x277CC3F50]];
        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = &stru_287584798;
        }

        if (!CFEqual(v42, *MEMORY[0x277CC3F58]))
        {
          out_token = -1;
          state64 = 0;
          notify_register_check(*MEMORY[0x277D67770], &out_token);
          if (out_token != -1)
          {
            notify_get_state(out_token, &state64);
            notify_cancel(out_token);
          }

          v67 = state64;
          v43 = dispatch_semaphore_create(0);
          configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v96 = __Block_byref_object_copy__0;
          v97 = __Block_byref_object_dispose__0;
          v98 = 0;
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke;
          v81[3] = &unk_279B4C7D0;
          v83 = buf;
          v44 = v43;
          v82 = v44;
          [configurationForDefaultMainDisplayMonitor setTransitionHandler:v81];
          v68 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
          v66 = v44;
          dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
          v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          elements = [*(*&buf[8] + 40) elements];
          v47 = [elements countByEnumeratingWithState:&v77 objects:v94 count:16];
          if (v47)
          {
            v48 = *v78;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v78 != v48)
                {
                  objc_enumerationMutation(elements);
                }

                v50 = *(*(&v77 + 1) + 8 * i);
                if ([v50 isUIApplicationElement])
                {
                  bundleIdentifier = [v50 bundleIdentifier];
                  v52 = [bundleIdentifier length] == 0;

                  if (!v52)
                  {
                    bundleIdentifier2 = [v50 bundleIdentifier];
                    [v45 addObject:bundleIdentifier2];
                  }
                }
              }

              v47 = [elements countByEnumeratingWithState:&v77 objects:v94 count:16];
            }

            while (v47);
          }

          [v68 invalidate];
          if (v67 || [v45 count] && (objc_msgSend(v45, "isEqual:", &unk_28758C110) & 1) == 0)
          {
            v54 = [(STKAlertSessionManager *)self log];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = [v45 count];
              *v86 = 134218754;
              v87 = v72;
              v88 = 1024;
              v89 = v67 != 0;
              v90 = 1024;
              v91 = v55;
              v92 = 2112;
              v93 = v45;
              _os_log_impl(&dword_262BB4000, v54, OS_LOG_TYPE_DEFAULT, "Session <%p> - Sending busy response because locked: %d, applicationCount: %d, applications: %@", v86, 0x22u);
            }

            [(STKAlertSession *)v72 sendResponse:5];
            [(STKAlertSession *)v72 invalidate];
            v56 = 0;
          }

          else
          {
            v56 = 1;
          }

          _Block_object_dispose(buf, 8);
          if ((v56 & 1) == 0)
          {
            goto LABEL_103;
          }
        }
      }

      else if (event == 9)
      {
        v29 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v72;
          _os_log_impl(&dword_262BB4000, v29, OS_LOG_TYPE_DEFAULT, "Session <%p> - Call setup session", buf, 0xCu);
        }

        mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
        v31 = [mEMORY[0x277CF0CA8] deviceClass] == 0;

        if (!v31)
        {
          v32 = [(STKAlertSessionManager *)self log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v72;
            _os_log_impl(&dword_262BB4000, v32, OS_LOG_TYPE_DEFAULT, "Session <%p> - Call setup session not supported", buf, 0xCu);
          }

          [(STKAlertSession *)v72 sendResponse:6];
          [(STKAlertSession *)v72 invalidate];
          goto LABEL_103;
        }

        v58 = [infoCopy bs_safeStringForKey:*MEMORY[0x277CC3F18]];
        v59 = *MEMORY[0x277CC3F28];
        if (BSEqualStrings())
        {
          v60 = CTCopyCurrentCalls();
          if ([v60 count])
          {
            v61 = [(STKAlertSessionManager *)self log];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v72;
              _os_log_impl(&dword_262BB4000, v61, OS_LOG_TYPE_DEFAULT, "Session <%p> - Call setup session busy (has existing phone calls)", buf, 0xCu);
            }

            [(STKAlertSession *)v72 sendResponse:5];
            [(STKAlertSession *)v72 invalidate];

            goto LABEL_103;
          }
        }
      }

      goto LABEL_96;
    }

    if (event == 10)
    {
      v33 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v72;
        _os_log_impl(&dword_262BB4000, v33, OS_LOG_TYPE_DEFAULT, "Session <%p> - Idle text session", buf, 0xCu);
      }

      v34 = [infoCopy bs_safeStringForKey:*MEMORY[0x277CC40E0]];
      SBSSetIdleText();
      [(STKAlertSession *)v72 sendResponse:0];
      [(STKAlertSession *)v72 invalidate];

      goto LABEL_103;
    }

    if (event != 11)
    {
      if (event == 12)
      {
        v27 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v72;
          _os_log_impl(&dword_262BB4000, v27, OS_LOG_TYPE_DEFAULT, "Session <%p> - Language session", buf, 0xCu);
        }

        [(STKAlertSession *)v72 sendResponse:0];
        [(STKAlertSession *)v72 invalidate];
LABEL_103:

LABEL_104:
        goto LABEL_105;
      }

LABEL_96:
      v62 = [infoCopy objectForKey:*MEMORY[0x277CC3FC8]];
      v63 = v62;
      if (v62 && [v62 BOOLValue])
      {
        v64 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v72;
          _os_log_impl(&dword_262BB4000, v64, OS_LOG_TYPE_DEFAULT, "Session <%p> - Not presenting because it asked not to be presented", buf, 0xCu);
        }

        [(STKAlertSession *)v72 sendResponse:0];
        [(STKAlertSession *)v72 invalidate];
      }

      else
      {
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke_110;
        v75[3] = &unk_279B4C620;
        v75[4] = self;
        v76 = v72;
        [(STKAlertSessionManager *)self enqueuePresentationForSession:v76 completion:v75];
      }

      goto LABEL_103;
    }

    v35 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v72;
      _os_log_impl(&dword_262BB4000, v35, OS_LOG_TYPE_DEFAULT, "Session <%p> - Local information session", buf, 0xCu);
    }

    v36 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v37 = v36;
    if (v36 && CFArrayGetCount(v36) >= 1 && (Value = CFArrayGetValueAtIndex(v37, 0)) != 0)
    {
      v39 = 0;
    }

    else
    {
      v57 = CFLocaleCopyCurrent();
      v39 = v57;
      if (!v57 || (Value = CFLocaleGetValue(v57, *MEMORY[0x277CBEED0])) == 0)
      {
        [(STKAlertSession *)v72 sendResponse:3, Value];
        goto LABEL_80;
      }
    }

    [(STKAlertSession *)v72 sendResponse:0 withStringResult:Value];
LABEL_80:
    [(STKAlertSession *)v72 invalidate];
    if (v37)
    {
      CFRelease(v37);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    goto LABEL_103;
  }

  v13 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262BB4000, v13, OS_LOG_TYPE_DEFAULT, "Requested user attention", buf, 2u);
  }

  if (!self->_userEventMonitor)
  {
    v14 = objc_alloc_init(STKUserEventMonitor);
    userEventMonitor = self->_userEventMonitor;
    self->_userEventMonitor = v14;

    objc_storeStrong(&self->_userEventResponder, responder);
    [(STKUserEventMonitor *)self->_userEventMonitor setDelegate:self];
    [(STKUserEventMonitor *)self->_userEventMonitor setEnabled:1];
  }

LABEL_105:

  v65 = *MEMORY[0x277D85DE8];
}

void __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 32));
    v5 = v6;
  }
}

void __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke_110(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke_2;
    v5[3] = &unk_279B4C4C8;
    v5[4] = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

- (id)_listItemsFromCTItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = itemsCopy;
  if (itemsCopy && [itemsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          text = [v11 text];

          if (text)
          {
            v13 = [STKListItem alloc];
            text2 = [v11 text];
            v15 = -[STKListItem initWithText:selected:](v13, "initWithText:selected:", text2, [v11 selected]);
            [array addObject:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_newSessionBehaviorFromOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(STKMutableSessionBehavior);
  v5 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277CC3F40]];
  if (v5)
  {
    v6 = *MEMORY[0x277CC3F48];
    v7 = BSEqualStrings();
  }

  else
  {
    v7 = 0;
  }

  v8 = [optionsCopy bs_safeNumberForKey:*MEMORY[0x277CC40E8]];
  [v8 doubleValue];
  [(STKMutableSessionBehavior *)v4 setTimeout:?];

  [(STKMutableSessionBehavior *)v4 setShouldSendResponseUponDisplay:v7];
  [(STKMutableSessionBehavior *)v4 setDismissesAfterUserEvent:v7];

  return v4;
}

- (void)_queue_startListening
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (!self->_serverConnection)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = _CTServerConnectionCreate();
    self->_serverConnection = v5;
    if (v5)
    {
      v6 = self->_queue;
      _CTServerConnectionSetTargetQueue();
      serverConnection = self->_serverConnection;
      v8 = *MEMORY[0x277CC3F38];
      _CTServerConnectionRegisterForNotification();
      v9 = self->_serverConnection;
      v10 = *MEMORY[0x277CC40A0];
      _CTServerConnectionRegisterForNotification();
      v11 = self->_serverConnection;
      v12 = *MEMORY[0x277CC40A8];
      _CTServerConnectionRegisterForNotification();
      v13 = self->_serverConnection;
      v14 = *MEMORY[0x277CC40B8];
      _CTServerConnectionRegisterForNotification();
      v15 = self->_serverConnection;
      v16 = *MEMORY[0x277CC4098];
      _CTServerConnectionRegisterForNotification();
      v17 = self->_serverConnection;
      v18 = *MEMORY[0x277CC3F88];
      _CTServerConnectionRegisterForNotification();
      v19 = self->_serverConnection;
      v20 = *MEMORY[0x277CC4060];
      _CTServerConnectionRegisterForNotification();
      v21 = self->_serverConnection;
      v22 = *MEMORY[0x277CC3F30];
      _CTServerConnectionRegisterForNotification();
      v23 = self->_serverConnection;
      v24 = *MEMORY[0x277CC3F08];
      _CTServerConnectionRegisterForNotification();
      v25 = self->_serverConnection;
      v26 = *MEMORY[0x277CC3FB0];
      _CTServerConnectionRegisterForNotification();
      v27 = self->_serverConnection;
      v28 = *MEMORY[0x277CC3FC0];
      _CTServerConnectionRegisterForNotification();
      v29 = self->_serverConnection;
      v30 = *MEMORY[0x277CC3FB8];
      _CTServerConnectionRegisterForNotification();
      v31 = self->_serverConnection;
      v32 = *MEMORY[0x277CC40D0];
      _CTServerConnectionRegisterForNotification();
      v33 = self->_serverConnection;
      v34 = *MEMORY[0x277CC4090];
      _CTServerConnectionRegisterForNotification();
    }
  }

  telephonyClient = self->_telephonyClient;
  if (telephonyClient)
  {
    [(CoreTelephonyClient *)telephonyClient setDelegate:self];
  }
}

void __53__STKSIMToolkitAlertSessionManager__showNotification__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_262BB4000, a2, OS_LOG_TYPE_ERROR, "Unable to add notification request %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertDescriptorForSession:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 136315650;
  v7 = CTSubscriptionSlotAsString();
  v8 = 2048;
  v9 = a2;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Getting Sim label failed for %s and context(%p) with error %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertDescriptorForSession:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_262BB4000, v0, v1, "Carrier bundle: key=%@; value=%@; error:%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertDescriptorForSession:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_262BB4000, v0, v1, "Carrier bundle: key=%@; value=%@; error:%@; ", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end