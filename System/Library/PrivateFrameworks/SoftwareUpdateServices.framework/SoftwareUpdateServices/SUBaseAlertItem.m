@interface SUBaseAlertItem
- (BOOL)_createNotification;
- (BOOL)_updateNotification;
- (BOOL)present;
- (BOOL)update;
- (SUBaseAlertItem)init;
- (id)_notificationButtonActions;
- (id)_notificationButtons;
- (id)_notificationOptions;
- (id)buildAlertItemDefinition;
- (int)_SBPresentationStyleForSUSPresentationStyle:(unint64_t)a3;
- (unint64_t)_notificationFlags;
- (void)_cancelNotification;
- (void)_notificationWasDismissed:(unint64_t)a3;
- (void)alertWasDismissed:(unint64_t)a3;
- (void)dealloc;
- (void)dismiss;
- (void)willPresentAlert;
@end

@implementation SUBaseAlertItem

- (SUBaseAlertItem)init
{
  v8.receiver = self;
  v8.super_class = SUBaseAlertItem;
  v2 = [(SUBaseAlertItem *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_isUILocked = 0;
    v2->_notification = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.sus.alertItem.stateQ", v4);
    stateQ = v3->_stateQ;
    v3->_stateQ = v5;

    objc_storeWeak(&v3->_manager, 0);
  }

  return v3;
}

- (void)dealloc
{
  stateQ = self->_stateQ;
  self->_notification = 0;
  self->_stateQ = 0;

  v4.receiver = self;
  v4.super_class = SUBaseAlertItem;
  [(SUBaseAlertItem *)&v4 dealloc];
}

- (BOOL)present
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_stateQ);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQ = v2->_stateQ;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__SUBaseAlertItem_present__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(stateQ, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __26__SUBaseAlertItem_present__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createNotification];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)update
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_stateQ);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQ = v2->_stateQ;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__SUBaseAlertItem_update__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(stateQ, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __25__SUBaseAlertItem_update__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateNotification];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dismiss
{
  dispatch_assert_queue_not_V2(self->_stateQ);
  stateQ = self->_stateQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SUBaseAlertItem_dismiss__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(stateQ, block);
}

- (void)willPresentAlert
{
  dispatch_assert_queue_V2(self->_stateQ);
  v10 = SULogAlerts();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  SULogInfoForSubsystem(v10, @"[%@] willPresentAlert", v4, v5, v6, v7, v8, v9, v3);
}

- (void)alertWasDismissed:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_stateQ);
  v11 = SULogAlerts();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  SULogInfoForSubsystem(v11, @"[%@] was dismissed for %ld", v5, v6, v7, v8, v9, v10, v4);
}

- (BOOL)_createNotification
{
  dispatch_assert_queue_V2(self->_stateQ);
  if (self->_notification)
  {
    v3 = SULogAlerts();
    SULogErrorForSubsystem(v3, @"%@ is being presented for %@. Dismiss it first", v4, v5, v6, v7, v8, v9, self->_notification);

    return 0;
  }

  else
  {
    [(SUBaseAlertItem *)self willPresentAlert];
    v11 = [(SUBaseAlertItem *)self _notificationFlags];
    v12 = [(SUBaseAlertItem *)self _notificationOptions];
    v13 = [(SUBaseAlertItem *)self _notificationButtonActions];
    error = -1;
    v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, v11, &error, v12);
    v15 = SULogAlerts();
    objc_opt_class();
    SULogDebugForSubsystem(v15, @"created %@ for %@ with error %ld", v16, v17, v18, v19, v20, v21, v14);

    if (v14)
    {
      v22 = error == 0;
    }

    else
    {
      v22 = 0;
    }

    v10 = v22;
    if (v22)
    {
      self->_notification = v14;
      v23 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__SUBaseAlertItem__createNotification__block_invoke;
      block[3] = &unk_279CAA8A8;
      v34 = v14;
      block[4] = self;
      v33 = v13;
      dispatch_async(v23, block);
    }

    else
    {
      v24 = SULogAlerts();
      SULogInfoForSubsystem(v24, @"failed to display notification: %ld", v25, v26, v27, v28, v29, v30, error);

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  return v10;
}

void __38__SUBaseAlertItem__createNotification__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  v2 = CFUserNotificationReceiveResponse(*(a1 + 48), 0.0, &responseFlags);
  if (v2)
  {
    v3 = v2;
    v4 = SULogAlerts();
    SULogInfoForSubsystem(v4, @"failed to get response from CFUserNotification: %ld", v5, v6, v7, v8, v9, v10, v3);

    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__SUBaseAlertItem__createNotification__block_invoke_2;
    block[3] = &unk_279CAAD28;
    v13 = *(a1 + 48);
    v98 = 0;
    v99 = v13;
    block[4] = v11;
    dispatch_async(v12, block);
    v14 = v98;
  }

  else if ((~responseFlags & 3) != 0)
  {
    ResponseDictionary = CFUserNotificationGetResponseDictionary(*(a1 + 48));
    v26 = CFRetain(ResponseDictionary);
    v14 = v26;
    if (v26)
    {
      v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D67218]];
      v28 = SULogAlerts();
      v35 = v28;
      if (v27)
      {
        v36 = [v27 unsignedIntegerValue];
        SULogInfoForSubsystem(v35, @"User clicked button index %ld", v37, v38, v39, v40, v41, v42, v36);

        v43 = [v27 unsignedIntegerValue];
        if (v43 >= [*(a1 + 40) count])
        {
          v70 = SULogAlerts();
          SULogInfoForSubsystem(v70, @"index does not match any button", v71, v72, v73, v74, v75, v76, v81);

          v77 = *(a1 + 32);
          v78 = *(v77 + 16);
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __38__SUBaseAlertItem__createNotification__block_invoke_6;
          v85[3] = &unk_279CAAD28;
          v79 = *(a1 + 48);
          v86 = 0;
          v87 = v79;
          v85[4] = v77;
          dispatch_async(v78, v85);
          v56 = v86;
        }

        else
        {
          v44 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v27, "integerValue")}];
          if (!v44)
          {
            v45 = SULogAlerts();
            v46 = [v27 unsignedIntegerValue];
            SULogInfoForSubsystem(v45, @"No action registered for button %ld", v47, v48, v49, v50, v51, v52, v46);
          }

          v53 = *(a1 + 32);
          v54 = *(v53 + 16);
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __38__SUBaseAlertItem__createNotification__block_invoke_7;
          v82[3] = &unk_279CAAD28;
          v55 = *(a1 + 48);
          v83 = v44;
          v84 = v55;
          v82[4] = v53;
          v56 = v44;
          dispatch_async(v54, v82);
        }
      }

      else
      {
        SULogInfoForSubsystem(v28, @"failed to get button index from response dictionary", v29, v30, v31, v32, v33, v34, v80);

        v67 = *(a1 + 32);
        v68 = *(v67 + 16);
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __38__SUBaseAlertItem__createNotification__block_invoke_5;
        v88[3] = &unk_279CAAD28;
        v69 = *(a1 + 48);
        v89 = 0;
        v90 = v69;
        v88[4] = v67;
        dispatch_async(v68, v88);
        v56 = v89;
      }
    }

    else
    {
      v57 = SULogAlerts();
      SULogInfoForSubsystem(v57, @"failed to get response dictionary from CFUserNotification: %ld", v58, v59, v60, v61, v62, v63, 0);

      v64 = *(a1 + 32);
      v65 = *(v64 + 16);
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __38__SUBaseAlertItem__createNotification__block_invoke_4;
      v91[3] = &unk_279CAAD28;
      v66 = *(a1 + 48);
      v92 = 0;
      v93 = v66;
      v91[4] = v64;
      dispatch_async(v65, v91);
      v27 = v92;
    }
  }

  else
  {
    v15 = SULogAlerts();
    SULogInfoForSubsystem(v15, @"notification was canceled (alert = %@)", v16, v17, v18, v19, v20, v21, *(a1 + 32));

    v22 = *(a1 + 32);
    v23 = *(v22 + 16);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __38__SUBaseAlertItem__createNotification__block_invoke_3;
    v94[3] = &unk_279CAAD28;
    v24 = *(a1 + 48);
    v95 = 0;
    v96 = v24;
    v94[4] = v22;
    dispatch_async(v23, v94);
    v14 = v95;
  }
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_3(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:2];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_4(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_5(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_6(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_7(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:1];
}

- (BOOL)_updateNotification
{
  dispatch_assert_queue_V2(self->_stateQ);
  if (!self->_notification)
  {
    v4 = SULogAlerts();
    SULogErrorForSubsystem(v4, @"No notification for %@", v14, v15, v16, v17, v18, v19, self);
    goto LABEL_5;
  }

  v3 = [(SUBaseAlertItem *)self _notificationFlags];
  v4 = [(SUBaseAlertItem *)self _notificationOptions];
  v5 = CFUserNotificationUpdate(self->_notification, 0.0, v3, v4);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = SULogAlerts();
    SULogErrorForSubsystem(v7, @"Failed to update %@ for %@", v8, v9, v10, v11, v12, v13, self->_notification);

LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (void)_cancelNotification
{
  dispatch_assert_queue_V2(self->_stateQ);
  notification = self->_notification;
  if (notification)
  {

    CFUserNotificationCancel(notification);
  }
}

- (void)_notificationWasDismissed:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_stateQ);
  v5 = SULogAlerts();
  SULogInfoForSubsystem(v5, @"notification was dismissed for %ld", v6, v7, v8, v9, v10, v11, a3);

  [(SUBaseAlertItem *)self alertWasDismissed:a3];
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained _noteAlertDeactivated:self];
}

- (id)buildAlertItemDefinition
{
  v3 = [SUAlertItemDefinition alloc];
  v4 = [(SUBaseAlertItem *)self title];
  v5 = [(SUBaseAlertItem *)self message];
  v6 = [(SUBaseAlertItem *)self buttons];
  v7 = [(SUAlertItemDefinition *)v3 initWithTitle:v4 message:v5 buttons:v6];

  return v7;
}

- (id)_notificationOptions
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SUBaseAlertItem *)self buildAlertItemDefinition];
  v5 = [v4 title];

  if (v5)
  {
    v6 = [v4 title];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  v7 = [(SUBaseAlertItem *)self contentExtensionID];

  if (v7)
  {
    v8 = [(SUBaseAlertItem *)self contentExtensionID];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D67350]];

    v9 = [(SUBaseAlertItem *)self extensionDictionary];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v11 = [(SUBaseAlertItem *)self extensionDictionary];
      [v10 setUserInfo:v11];

      v12 = MEMORY[0x277CCAAB0];
      v39[0] = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];

      if (v14)
      {
        [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277D67358]];
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = [v4 message];

    if (v15)
    {
      v10 = [v4 message];
      [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277CBF198]];
LABEL_10:
    }
  }

  v16 = [(SUBaseAlertItem *)self _notificationButtons];
  v17 = v16;
  if (v16 && [v16 count])
  {
    v18 = [(SUBaseAlertItem *)self _notificationButtons];
    [v3 setObject:v18 forKeyedSubscript:*MEMORY[0x277D67220]];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem shouldShowInLockScreen](self, "shouldShowInLockScreen")}];
  [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x277CBF1B0]];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUBaseAlertItem reappearsAfterLock](self, "reappearsAfterLock") ^ 1}];
  [v3 setObject:v20 forKeyedSubscript:*MEMORY[0x277D67320]];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem reappearsAfterUnlock](self, "reappearsAfterUnlock")}];
  [v3 setObject:v21 forKeyedSubscript:*MEMORY[0x277D67340]];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem forcesModalAlertAppearance](self, "forcesModalAlertAppearance")}];
  [v3 setObject:v22 forKeyedSubscript:*MEMORY[0x277D67360]];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem showButtonsOnLockScreen](self, "showButtonsOnLockScreen")}];
  [v3 setObject:v23 forKeyedSubscript:*MEMORY[0x277D67338]];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem allowInSetup](self, "allowInSetup")}];
  [v3 setObject:v24 forKeyedSubscript:*MEMORY[0x277D67288]];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem undimsScreen](self, "undimsScreen")}];
  [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x277D67450]];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem allowLockScreenDismissal](self, "allowLockScreenDismissal")}];
  [v3 setObject:v26 forKeyedSubscript:*MEMORY[0x277D67290]];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem allowMenuButtonDismissal](self, "allowMenuButtonDismissal")}];
  [v3 setObject:v27 forKeyedSubscript:*MEMORY[0x277D67298]];

  v28 = [(SUBaseAlertItem *)self allowedApps];

  if (v28)
  {
    v29 = [(SUBaseAlertItem *)self allowedApps];
    [v3 setObject:v29 forKeyedSubscript:*MEMORY[0x277D672A8]];
  }

  v30 = SULogAlerts();
  SULogInfoForSubsystem(v30, @"notificationOptions %@", v31, v32, v33, v34, v35, v36, v3);

  v37 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)_notificationFlags
{
  if ([(SUBaseAlertItem *)self allowNoButton])
  {
    return 35;
  }

  else
  {
    return 3;
  }
}

- (id)_notificationButtons
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  [(SUBaseAlertItem *)self buildAlertItemDefinition];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = v21 = 0u;
  v4 = [v17 buttons];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277D66B50]);
        v11 = [v9 label];
        v12 = [v10 initWithTitle:v11];

        [v12 setPresentationStyle:{-[SUBaseAlertItem _SBPresentationStyleForSUSPresentationStyle:](self, "_SBPresentationStyleForSUSPresentationStyle:", objc_msgSend(v9, "presentationStyle"))}];
        [v12 setIsPreferredButton:{objc_msgSend(v9, "isPreferredButton")}];
        v13 = [v12 build];
        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = [v3 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_notificationButtonActions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SUBaseAlertItem *)self buildAlertItemDefinition];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 buttons];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) handler];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (int)_SBPresentationStyleForSUSPresentationStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

@end