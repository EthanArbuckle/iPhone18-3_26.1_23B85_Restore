@interface ICQDaemonAlert
+ (BOOL)shouldShowForDaemonOffer:(id)offer;
+ (void)dismissAlertsWithNotificationID:(id)d;
- (BOOL)showAlertWithCompletion:(id)completion;
- (ICQDaemonAlert)init;
- (ICQDaemonAlert)initWithDaemonOffer:(id)offer;
- (void)dealloc;
- (void)dismissAlert;
@end

@implementation ICQDaemonAlert

+ (BOOL)shouldShowForDaemonOffer:(id)offer
{
  offerCopy = offer;
  alertSpecification = [offerCopy alertSpecification];
  if (alertSpecification)
  {
    v5 = [offerCopy level] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ICQDaemonAlert)init
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "attempt to create alert with nil daemonOffer", v5, 2u);
  }

  return 0;
}

- (ICQDaemonAlert)initWithDaemonOffer:(id)offer
{
  v21 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  if ([objc_opt_class() shouldShowForDaemonOffer:offerCopy])
  {
    v18.receiver = self;
    v18.super_class = ICQDaemonAlert;
    v6 = [(ICQDaemonAlert *)&v18 init];
    v7 = v6;
    if (v6)
    {
      v6->_alertState = 0;
      v8 = objc_opt_new();
      alertLock = v7->_alertLock;
      v7->_alertLock = v8;

      [(NSLock *)v7->_alertLock setName:@"ICQDaemonAlertLock"];
      v10 = dispatch_semaphore_create(0);
      alertSema = v7->_alertSema;
      v7->_alertSema = v10;

      v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
      v13 = dispatch_queue_create("ICQDaemonAlertQueue", v12);
      alertQueue = v7->_alertQueue;
      v7->_alertQueue = v13;

      objc_storeStrong(&v7->_daemonOffer, offer);
      *&v7->_showOnlyInSpringboard = 257;
    }
  }

  else
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = offerCopy;
      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "attempt to create alert for invalid daemonOffer %@", buf, 0xCu);
    }

    v7 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  [(ICQDaemonAlert *)self dismissAlert];
  cfAlert = self->_cfAlert;
  if (cfAlert)
  {
    CFRelease(cfAlert);
  }

  v4.receiver = self;
  v4.super_class = ICQDaemonAlert;
  [(ICQDaemonAlert *)&v4 dealloc];
}

- (BOOL)showAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NSLock *)self->_alertLock lock];
  if (!self->_alertState)
  {
    daemonOffer = [(ICQDaemonAlert *)self daemonOffer];
    alertSpecification = [daemonOffer alertSpecification];

    if (alertSpecification)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __42__ICQDaemonAlert_showAlertWithCompletion___block_invoke;
      v13[3] = &unk_27A652038;
      v13[4] = self;
      v14 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], v13);

      v9 = 1;
      goto LABEL_13;
    }
  }

  [(NSLock *)self->_alertLock unlock];
  if (self->_alertState)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "alert already shown; skipping";
LABEL_5:
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else
  {
    daemonOffer2 = [(ICQDaemonAlert *)self daemonOffer];
    alertSpecification2 = [daemonOffer2 alertSpecification];

    if (alertSpecification2)
    {
      goto LABEL_10;
    }

    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "alert not shown: no alert specification";
      goto LABEL_5;
    }
  }

LABEL_10:
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, MEMORY[0x277CBEC10]);
  }

  v9 = 0;
LABEL_13:

  return v9;
}

void __42__ICQDaemonAlert_showAlertWithCompletion___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);
  if (_ICQDaemonAlertMemoryInitOnce_onceToken != -1)
  {
    __42__ICQDaemonAlert_showAlertWithCompletion___block_invoke_cold_1();
  }

  v3 = [v2 daemonOffer];
  v4 = [v3 notificationID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_288431E38;
  }

  v7 = v6;

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v7;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "remember alert for notification %@", buf, 0xCu);
  }

  [_ICQDaemonAlertMemoryLock lock];
  v9 = [_ICQDaemonAlertMemoryDict objectForKey:v7];
  if (v9)
  {
    [_ICQDaemonAlertMemoryLock unlock];
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v7;
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "dismissing old alert for notification %@", buf, 0xCu);
    }

    [v9 dismissAlert];
    [_ICQDaemonAlertMemoryLock lock];
  }

  [_ICQDaemonAlertMemoryDict setObject:v2 forKey:v7];
  [_ICQDaemonAlertMemoryLock unlock];

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = [*(a1 + 32) daemonOffer];
  v13 = [v12 alertSpecification];

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 disableLockScreenAlert];
    v16 = @" (but not on lock screen)";
    if (!v15)
    {
      v16 = &stru_288431E38;
    }

    *buf = 138412290;
    v53 = v16;
    _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "showing alert for daemonOffer%@", buf, 0xCu);
  }

  v17 = [v13 title];
  [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBF188]];

  v18 = [v13 message];
  v19 = [v13 altMessage];
  v20 = [ICQDaemonOffer stringWithPlaceholderFormat:v18 alternateString:v19];
  [v11 setObject:v20 forKeyedSubscript:*MEMORY[0x277CBF198]];

  v21 = [v13 linkForButtonIndex:1];
  v22 = [v21 text];

  v23 = [v13 linkForButtonIndex:2];
  v24 = [v23 text];

  v25 = [v13 linkForButtonIndex:3];
  v26 = [v25 text];

  [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  [v11 setObject:v24 forKeyedSubscript:*MEMORY[0x277CBF218]];
  [v11 setObject:v26 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  v27 = [v13 defaultButtonIndex];
  if ((v27 - 1) > 2)
  {
    v28 = &unk_288443850;
  }

  else
  {
    v28 = qword_27A652830[v27 - 1];
  }

  [v11 setObject:v28 forKeyedSubscript:*MEMORY[0x277D67300]];
  if ([v13 disableLockScreenAlert])
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67320]];
  }

  else
  {
    v29 = [v13 lockScreenMessage];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [v13 message];
    }

    v32 = v31;

    v33 = [v13 altLockScreenMessage];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = [v13 altMessage];
    }

    v36 = v35;

    v37 = [ICQDaemonOffer stringWithPlaceholderFormat:v32 alternateString:v36];
    [v11 setObject:v37 forKeyedSubscript:*MEMORY[0x277D673C8]];

    v38 = [v13 lockScreenTitle];
    if (v38)
    {
      [v11 setObject:v38 forKeyedSubscript:*MEMORY[0x277D673B8]];
    }

    else
    {
      v39 = [v13 title];
      [v11 setObject:v39 forKeyedSubscript:*MEMORY[0x277D673B8]];
    }
  }

  v40 = MEMORY[0x277CBEC38];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
  [v11 setObject:v40 forKeyedSubscript:*MEMORY[0x277D67340]];
  if ([*(a1 + 32) showOnlyInSpringboard])
  {
    [v11 setObject:&unk_2884452E0 forKeyedSubscript:*MEMORY[0x277D672A8]];
  }

  v41 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 32 * (v26 == 0), 0, v11);
  *(*(a1 + 32) + 24) = v41;
  [*(*(a1 + 32) + 8) unlock];
  v43 = *(a1 + 32);
  v42 = *(a1 + 40);
  v44 = *(v43 + 40);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __42__ICQDaemonAlert_showAlertWithCompletion___block_invoke_15;
  v47[3] = &unk_27A6527F0;
  v51 = v41;
  v48 = v13;
  v49 = v43;
  v50 = v42;
  v45 = v13;
  dispatch_async(v44, v47);

  v46 = *MEMORY[0x277D85DE8];
}

void __42__ICQDaemonAlert_showAlertWithCompletion___block_invoke_15(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 56), 0.0, &responseFlags);
  if (responseFlags <= 2 && ([*(a1 + 32) linkForButtonIndex:qword_2755F33A8[responseFlags]], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    if ([*(a1 + 40) handleActionsBeforeCallingCompletionHandler])
    {
      [*(a1 + 40) _handleLink:v3];
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [v3 action];
      v6 = [v3 parameters];
      (*(v4 + 16))(v4, v5, v6);
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 1, MEMORY[0x277CBEC10]);
    }

    v3 = 0;
  }

  [*(*(a1 + 40) + 8) lock];
  v8 = *(a1 + 40);
  v9 = *(v8 + 16);
  *(v8 + 16) = 3;
  v10 = *(a1 + 40);
  v11 = *(v10 + 24);
  if (v11)
  {
    CFRelease(v11);
    *(*(a1 + 40) + 24) = 0;
    v10 = *(a1 + 40);
  }

  [*(v10 + 8) unlock];
  if (v9 == 2)
  {
    dispatch_semaphore_signal(*(*(a1 + 40) + 32));
  }
}

- (void)dismissAlert
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    daemonOffer = [(ICQDaemonAlert *)self daemonOffer];
    v19 = 138412290;
    v20 = daemonOffer;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "dismissing alert for daemonOffer %@", &v19, 0xCu);
  }

  [(NSLock *)self->_alertLock lock];
  if (self->_alertState == 1)
  {
    self->_alertState = 2;
    selfCopy = self;
    if (_ICQDaemonAlertMemoryInitOnce_onceToken != -1)
    {
      [ICQDaemonAlert dismissAlert];
    }

    daemonOffer2 = [(ICQDaemonAlert *)selfCopy daemonOffer];
    notificationID = [daemonOffer2 notificationID];
    v8 = notificationID;
    v9 = &stru_288431E38;
    if (notificationID)
    {
      v9 = notificationID;
    }

    v10 = v9;

    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "forget alert for notification %@", &v19, 0xCu);
    }

    [_ICQDaemonAlertMemoryLock lock];
    [_ICQDaemonAlertMemoryDict removeObjectForKey:v10];
    [_ICQDaemonAlertMemoryLock unlock];

    cfAlert = selfCopy->_cfAlert;
    if (cfAlert)
    {
      CFUserNotificationCancel(cfAlert);
    }

    [(NSLock *)self->_alertLock unlock];
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = selfCopy;
      _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "waiting for alert %@ to dismiss", &v19, 0xCu);
    }

    dispatch_semaphore_wait(selfCopy->_alertSema, 0xFFFFFFFFFFFFFFFFLL);
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = selfCopy;
      v15 = "finished waiting for alert %@ to dismiss";
      v16 = v14;
      v17 = 12;
LABEL_18:
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, v15, &v19, v17);
    }
  }

  else
  {
    [(NSLock *)self->_alertLock unlock];
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v15 = "alert not showing; skipping dismiss";
      v16 = v14;
      v17 = 2;
      goto LABEL_18;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)dismissAlertsWithNotificationID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = dCopy;
  if (_ICQDaemonAlertMemoryInitOnce_onceToken != -1)
  {
    __42__ICQDaemonAlert_showAlertWithCompletion___block_invoke_cold_1();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "dismissing all alerts", &v13, 2u);
    }

    [_ICQDaemonAlertMemoryLock lock];
    v10 = [_ICQDaemonAlertMemoryDict copy];
    [_ICQDaemonAlertMemoryLock unlock];
    [v10 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_67];
    goto LABEL_17;
  }

  if (!dCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  [_ICQDaemonAlertMemoryLock lock];
  v5 = [_ICQDaemonAlertMemoryDict objectForKey:v4];
  if (v5)
  {
LABEL_8:
    [_ICQDaemonAlertMemoryLock unlock];
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = v4;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "dismissing alert for notification %@", &v13, 0xCu);
    }

    v9 = dispatch_get_global_queue(0, 0);
    *&v13 = MEMORY[0x277D85DD0];
    *(&v13 + 1) = 3221225472;
    v14 = ___ICQDismissAlertsWithNotificationID_block_invoke;
    v15 = &unk_27A651BB8;
    v16 = v5;
    v10 = v5;
    dispatch_async(v9, &v13);

    goto LABEL_17;
  }

  v6 = [_ICQDaemonAlertMemoryDict objectForKey:&stru_288431E38];
  if (v6)
  {
    v5 = v6;
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = v4;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Could not find alert for notification %@, dismissing unlabeled alert", &v13, 0xCu);
    }

    goto LABEL_8;
  }

  [_ICQDaemonAlertMemoryLock unlock];
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13) = 138412290;
    *(&v13 + 4) = v4;
    _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Could not find alert for notification %@", &v13, 0xCu);
  }

LABEL_17:

  v12 = *MEMORY[0x277D85DE8];
}

@end