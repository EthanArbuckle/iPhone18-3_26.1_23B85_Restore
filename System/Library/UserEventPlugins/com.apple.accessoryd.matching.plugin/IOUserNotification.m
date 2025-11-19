@interface IOUserNotification
+ (NSLock)_notificationMapTableLock;
+ (NSMapTable)_notificationMapTable;
+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)a3;
+ (id)notificationWithHeader:(id)a3 andMessage:(id)a4;
- (BOOL)_addButton:(id)a3;
- (BOOL)_addOption:(id)a3;
- (BOOL)addButtonWithTitle:(id)a3;
- (IOUserNotification)initWithHeader:(id)a3 andMessage:(id)a4;
- (NSArray)buttons;
- (NSArray)options;
- (id)_userNotificationDictionary;
- (id)description;
- (unint64_t)_userNotificationOptionFlags;
- (void)dealloc;
- (void)dismissNotification;
- (void)presentNotification;
- (void)presentNotificationWithResponseHandler:(id)a3;
- (void)updateNotification;
@end

@implementation IOUserNotification

+ (id)notificationWithHeader:(id)a3 andMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithHeader:v7 andMessage:v6];

  return v8;
}

- (IOUserNotification)initWithHeader:(id)a3 andMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = IOUserNotification;
  v8 = [(IOUserNotification *)&v32 init];
  v9 = v8;
  if (v8)
  {
    responseHandler = v8->_responseHandler;
    v8->_responseHandler = 0;

    v9->_shouldDisplayOnTop = 0;
    v9->_timeout = 0.0;
    v9->_notificationLevel = 0;
    v11 = [v6 copy];
    header = v9->_header;
    v9->_header = v11;

    v13 = [v7 copy];
    message = v9->_message;
    v9->_message = v13;

    iconURL = v9->_iconURL;
    v9->_iconURL = 0;

    lockScreenHeader = v9->_lockScreenHeader;
    v9->_lockScreenHeader = 0;

    lockScreenMessage = v9->_lockScreenMessage;
    v9->_lockScreenMessage = 0;

    *&v9->_shouldPresentViaSystemAperture = 0x1000000;
    *&v9->_shouldIgnoreQuietMode = 0;
    systemSoundID = v9->_systemSoundID;
    v9->_systemSoundID = 0;

    extensionIdentifier = v9->_extensionIdentifier;
    v9->_extensionIdentifier = 0;

    extensionItems = v9->_extensionItems;
    v9->_extensionItems = 0;

    iconConfiguration = v9->_iconConfiguration;
    v9->_iconConfiguration = 0;

    additionalConfiguration = v9->_additionalConfiguration;
    v9->_additionalConfiguration = 0;

    v9->_updateCount = 0;
    *&v9->_noDefaultButton = 0;
    *&v9->_notificationCancelled = 0;
    v23 = +[NSMutableArray array];
    buttonsMutable = v9->_buttonsMutable;
    v9->_buttonsMutable = v23;

    v25 = +[NSMutableArray array];
    optionsMutable = v9->_optionsMutable;
    v9->_optionsMutable = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = dispatch_queue_create([v28 UTF8String], 0);
    queue = v9->_queue;
    v9->_queue = v29;
  }

  return v9;
}

- (void)dealloc
{
  if ([(IOUserNotification *)self isVisible])
  {
    [(IOUserNotification *)self dismissNotification];
  }

  v3.receiver = self;
  v3.super_class = IOUserNotification;
  [(IOUserNotification *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IOUserNotification *)self header];
  v6 = [(IOUserNotification *)self message];
  v7 = [(IOUserNotification *)self buttonsMutable];
  v8 = [v7 count];
  v9 = [(IOUserNotification *)self optionsMutable];
  v10 = [v9 count];
  v11 = [(IOUserNotification *)self isVisible];
  v12 = "NO";
  if (v11)
  {
    v12 = "YES";
  }

  v13 = [NSString stringWithFormat:@"<%@: %p, header: %@, message: %@, numButtons: %lu, numOptions: %lu, visible: %s>", v4, self, v5, v6, v8, v10, v12];

  return v13;
}

- (NSArray)buttons
{
  v2 = [(IOUserNotification *)self buttonsMutable];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)options
{
  v2 = [(IOUserNotification *)self optionsMutable];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)_addButton:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addButton___block_invoke;
  block[3] = &unk_59200;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __33__IOUserNotification__addButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonsMutable];
  v3 = [v2 count];

  if (v3 > 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __33__IOUserNotification__addButton___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [*(a1 + 32) buttonsMutable];
    [v4 addObject:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)addButtonWithTitle:(id)a3
{
  v4 = [IOUserNotificationButton buttonWithTitle:a3];
  LOBYTE(self) = [(IOUserNotification *)self _addButton:v4];

  return self;
}

- (BOOL)_addOption:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addOption___block_invoke;
  block[3] = &unk_59200;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __33__IOUserNotification__addOption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) optionsMutable];
  v3 = [v2 count];

  if (v3 > 7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __33__IOUserNotification__addOption___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [*(a1 + 32) optionsMutable];
    [v4 addObject:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)presentNotificationWithResponseHandler:(id)a3
{
  [(IOUserNotification *)self setResponseHandler:a3];

  [(IOUserNotification *)self presentNotification];
}

- (void)presentNotification
{
  v3 = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_presentNotification__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(v3, block);
}

void __41__IOUserNotification_presentNotification__block_invoke(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v2 = [IOUserNotification _findCFUserNotificationForUserNotification:*(a1 + 32)];
  v25[3] = v2;
  if (v2)
  {
    CFRetain(v2);
    if (v25[3])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __41__IOUserNotification_presentNotification__block_invoke_cold_1();
      }

      goto LABEL_10;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_INFO, "Creating CFUserNotification...", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_presentNotification__block_invoke_13;
  block[3] = &unk_59228;
  block[4] = *(a1 + 32);
  block[5] = &v24;
  block[6] = &v20;
  dispatch_sync(&_dispatch_main_q, block);
  v3 = *(v21 + 6);
  if (v25[3] && !v3)
  {
    [*(a1 + 32) setVisible:1];
    v4 = +[IOUserNotification _notificationMapTableLock];
    [v4 lock];

    v5 = +[IOUserNotification _notificationMapTable];
    v6 = *(a1 + 32);
    v7 = [NSValue valueWithPointer:v25[3]];
    [v5 setObject:v6 forKey:v7];

    v8 = +[IOUserNotification _notificationMapTableLock];
    [v8 unlock];

    CFRetain(v25[3]);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v25[3], _userNotificationCallback, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
    CFRelease(RunLoopSource);
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v28 = NSLocalizedDescriptionKey;
  v16 = [NSString stringWithFormat:@"CFUserNotificationCreate() failed! (error: %d)", v3];
  v29 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v11 = [NSError errorWithDomain:@"IOUserNotificationErrorDomain" code:2 userInfo:v17];

LABEL_11:
  v12 = v25[3];
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    v13 = [*(a1 + 32) responseHandler];
    v14 = v13 == 0;

    if (!v14)
    {
      v15 = [*(a1 + 32) responseHandler];
      (v15)[2](v15, *(a1 + 32), v11);
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __41__IOUserNotification_presentNotification__block_invoke_13(uint64_t a1)
{
  [*(a1 + 32) timeout];
  v3 = v2;
  v4 = [*(a1 + 32) _userNotificationOptionFlags];
  v5 = *(*(a1 + 48) + 8);
  v6 = [*(a1 + 32) _userNotificationDictionary];
  *(*(*(a1 + 40) + 8) + 24) = CFUserNotificationCreate(kCFAllocatorDefault, v3, v4, (v5 + 24), v6);
}

- (void)updateNotification
{
  v3 = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__IOUserNotification_updateNotification__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(v3, block);
}

void __40__IOUserNotification_updateNotification__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isVisible])
  {
    v2 = [IOUserNotification _findCFUserNotificationForUserNotification:*(a1 + 32)];
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_INFO, "Updating CFUserNotification...", buf, 2u);
      }

      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = __40__IOUserNotification_updateNotification__block_invoke_20;
      v4[3] = &unk_59278;
      v4[4] = *(a1 + 32);
      v4[5] = v3;
      dispatch_sync(&_dispatch_main_q, v4);
    }
  }
}

void __40__IOUserNotification_updateNotification__block_invoke_20(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  [*(a1 + 32) timeout];
  v4 = v3;
  v5 = [*(v1 + 32) _userNotificationOptionFlags];
  v6 = [*(v1 + 32) _userNotificationDictionary];
  LODWORD(v1) = CFUserNotificationUpdate(v2, v4, v5, v6);

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __40__IOUserNotification_updateNotification__block_invoke_20_cold_1();
    }
  }
}

- (void)dismissNotification
{
  v3 = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_dismissNotification__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(v3, block);
}

void __41__IOUserNotification_dismissNotification__block_invoke(uint64_t a1)
{
  v2 = [IOUserNotification _findCFUserNotificationForUserNotification:*(a1 + 32)];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setNotificationDismissed:1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_INFO, "Cancelling CFUserNotification...", buf, 2u);
    }

    CFRetain(v3);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __41__IOUserNotification_dismissNotification__block_invoke_21;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v3;
    dispatch_sync(&_dispatch_main_q, block);
    v4 = dispatch_time(0, 1000000000);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __41__IOUserNotification_dismissNotification__block_invoke_22;
    v5[3] = &__block_descriptor_40_e5_v8__0l;
    v5[4] = v3;
    dispatch_after(v4, &_dispatch_main_q, v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __41__IOUserNotification_dismissNotification__block_invoke_cold_1();
  }
}

void __41__IOUserNotification_dismissNotification__block_invoke_21(uint64_t a1)
{
  if (CFUserNotificationCancel(*(a1 + 32)))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __41__IOUserNotification_dismissNotification__block_invoke_21_cold_1();
    }
  }
}

void __41__IOUserNotification_dismissNotification__block_invoke_22(uint64_t a1)
{
  if (CFUserNotificationCancel(*(a1 + 32)) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __41__IOUserNotification_dismissNotification__block_invoke_22_cold_1();
  }

  CFRelease(*(a1 + 32));
}

- (unint64_t)_userNotificationOptionFlags
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(IOUserNotification *)self notificationLevel];
  if (v3 - 1 > 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = qword_516F0[v3 - 1];
  }

  v10[3] |= v4;
  if ([(IOUserNotification *)self noDefaultButton])
  {
    v10[3] |= 0x20uLL;
  }

  if ([(IOUserNotification *)self useRadioOptions])
  {
    v10[3] |= 0x40uLL;
  }

  v5 = [(IOUserNotification *)self optionsMutable];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __50__IOUserNotification__userNotificationOptionFlags__block_invoke;
  v8[3] = &unk_592C0;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __50__IOUserNotification__userNotificationOptionFlags__block_invoke(uint64_t a1, void *a2, char a3)
{
  result = [a2 selected];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) |= 1 << (a3 + 8);
  }

  return result;
}

- (id)_userNotificationDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(IOUserNotification *)self shouldDisplayOnTop])
  {
    v4 = [NSNumber numberWithBool:[(IOUserNotification *)self shouldDisplayOnTop]];
    [v3 setObject:v4 forKey:kCFUserNotificationAlertTopMostKey];
  }

  v5 = [(IOUserNotification *)self header];

  if (v5)
  {
    v6 = [(IOUserNotification *)self header];
    [v3 setObject:v6 forKey:kCFUserNotificationAlertHeaderKey];
  }

  v7 = [(IOUserNotification *)self message];

  if (v7)
  {
    v8 = [(IOUserNotification *)self message];
    [v3 setObject:v8 forKey:kCFUserNotificationAlertMessageKey];
  }

  v9 = [(IOUserNotification *)self iconURL];

  if (v9)
  {
    v10 = [(IOUserNotification *)self iconURL];
    [v3 setObject:v10 forKey:kCFUserNotificationIconURLKey];
  }

  v11 = [(IOUserNotification *)self lockScreenHeader];

  if (v11)
  {
    v12 = [(IOUserNotification *)self lockScreenHeader];
    [v3 setObject:v12 forKey:SBUserNotificationLockScreenAlertHeaderKey];
  }

  v13 = [(IOUserNotification *)self lockScreenMessage];

  if (v13)
  {
    v14 = [(IOUserNotification *)self lockScreenMessage];
    [v3 setObject:v14 forKey:SBUserNotificationLockScreenAlertMessageKey];
  }

  v15 = [NSNumber numberWithBool:[(IOUserNotification *)self shouldPresentViaSystemAperture]];
  [v3 setObject:v15 forKey:SBUserNotificationSystemAperturePresentationKey];

  v16 = [NSNumber numberWithBool:[(IOUserNotification *)self shouldDismissOnLock]];
  [v3 setObject:v16 forKey:SBUserNotificationDismissOnLock];

  v17 = [NSNumber numberWithInt:[(IOUserNotification *)self shouldDismissOnUnlock]^ 1];
  [v3 setObject:v17 forKey:SBUserNotificationDontDismissOnUnlock];

  v18 = [NSNumber numberWithBool:[(IOUserNotification *)self shouldAllowLockScreenDismissal]];
  [v3 setObject:v18 forKey:SBUserNotificationAllowLockscreenDismissalKey];

  v19 = [NSNumber numberWithBool:[(IOUserNotification *)self shouldIgnoreQuietMode]];
  [v3 setObject:v19 forKey:SBUserNotificationIgnoresQuietMode];

  v20 = [NSNumber numberWithBool:[(IOUserNotification *)self shouldHideOnMirroredDisplay]];
  [v3 setObject:v20 forKey:SBUserNotificationHideOnClonedDisplay];

  v21 = [(IOUserNotification *)self systemSoundID];

  if (v21)
  {
    v22 = [(IOUserNotification *)self systemSoundID];
    [v3 setObject:v22 forKey:SBUserNotificationSystemSoundIDKey];
  }

  v23 = [(IOUserNotification *)self extensionIdentifier];

  if (v23)
  {
    v24 = [(IOUserNotification *)self extensionIdentifier];
    [v3 setObject:v24 forKey:SBUserNotificationExtensionIdentifierKey];
  }

  v25 = [(IOUserNotification *)self extensionItems];

  if (v25)
  {
    v26 = [(IOUserNotification *)self extensionItems];
    v64 = 0;
    v27 = [NSKeyedArchiver archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v64];
    v28 = v64;
    [v3 setObject:v27 forKey:SBUserNotificationExtensionItemsKey];

    if (v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [IOUserNotification _userNotificationDictionary];
    }
  }

  v29 = [(IOUserNotification *)self iconConfiguration];

  if (v29)
  {
    v30 = [(IOUserNotification *)self iconConfiguration];
    [v3 setObject:v30 forKey:SBUserNotificationHeaderGraphicIconDefinitionKey];
  }

  v31 = [(IOUserNotification *)self buttonsMutable];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [(IOUserNotification *)self buttonsMutable];
    v34 = [v33 objectAtIndexedSubscript:0];
    v35 = [v34 title];
    [v3 setObject:v35 forKey:kCFUserNotificationDefaultButtonTitleKey];
  }

  v36 = [(IOUserNotification *)self buttonsMutable];
  v37 = [v36 count];

  if (v37 >= 2)
  {
    v38 = [(IOUserNotification *)self buttonsMutable];
    v39 = [v38 objectAtIndexedSubscript:1];
    v40 = [v39 title];
    [v3 setObject:v40 forKey:kCFUserNotificationAlternateButtonTitleKey];
  }

  v41 = [(IOUserNotification *)self buttonsMutable];
  v42 = [v41 count];

  if (v42 >= 3)
  {
    v43 = [(IOUserNotification *)self buttonsMutable];
    v44 = [v43 objectAtIndexedSubscript:2];
    v45 = [v44 title];
    [v3 setObject:v45 forKey:kCFUserNotificationOtherButtonTitleKey];
  }

  v46 = [(IOUserNotification *)self optionsMutable];
  v47 = [v46 count];

  if (v47)
  {
    v48 = +[NSMutableArray array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v49 = [(IOUserNotification *)self optionsMutable];
    v50 = [v49 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v61;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v61 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [*(*(&v60 + 1) + 8 * i) title];
          v55 = [v54 copy];
          [v48 addObject:v55];
        }

        v51 = [v49 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v51);
    }

    [v3 setObject:v48 forKey:kCFUserNotificationCheckBoxTitlesKey];
  }

  v56 = [(IOUserNotification *)self additionalConfiguration];

  if (v56)
  {
    v57 = [(IOUserNotification *)self additionalConfiguration];
    [v3 addEntriesFromDictionary:v57];
  }

  v58 = [v3 copy];

  return v58;
}

+ (NSMapTable)_notificationMapTable
{
  if (_notificationMapTable_onceToken != -1)
  {
    +[IOUserNotification _notificationMapTable];
  }

  v3 = _notificationMapTable_mapTable;

  return v3;
}

void __43__IOUserNotification__notificationMapTable__block_invoke(id a1)
{
  _notificationMapTable_mapTable = objc_alloc_init(NSMapTable);

  _objc_release_x1();
}

+ (NSLock)_notificationMapTableLock
{
  if (_notificationMapTableLock_onceToken != -1)
  {
    +[IOUserNotification _notificationMapTableLock];
  }

  v3 = _notificationMapTableLock_lock;

  return v3;
}

void __47__IOUserNotification__notificationMapTableLock__block_invoke(id a1)
{
  _notificationMapTableLock_lock = objc_alloc_init(NSLock);

  _objc_release_x1();
}

+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)a3
{
  v3 = a3;
  v4 = +[IOUserNotification _notificationMapTableLock];
  [v4 lock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[IOUserNotification _notificationMapTable];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[IOUserNotification _notificationMapTable];
        v11 = [v10 objectForKey:v9];

        if (v11 == v3)
        {
          v6 = [v9 pointerValue];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = +[IOUserNotification _notificationMapTableLock];
  [v12 unlock];

  return v6;
}

@end