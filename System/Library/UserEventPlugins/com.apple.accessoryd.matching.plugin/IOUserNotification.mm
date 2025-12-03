@interface IOUserNotification
+ (NSLock)_notificationMapTableLock;
+ (NSMapTable)_notificationMapTable;
+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)notification;
+ (id)notificationWithHeader:(id)header andMessage:(id)message;
- (BOOL)_addButton:(id)button;
- (BOOL)_addOption:(id)option;
- (BOOL)addButtonWithTitle:(id)title;
- (IOUserNotification)initWithHeader:(id)header andMessage:(id)message;
- (NSArray)buttons;
- (NSArray)options;
- (id)_userNotificationDictionary;
- (id)description;
- (unint64_t)_userNotificationOptionFlags;
- (void)dealloc;
- (void)dismissNotification;
- (void)presentNotification;
- (void)presentNotificationWithResponseHandler:(id)handler;
- (void)updateNotification;
@end

@implementation IOUserNotification

+ (id)notificationWithHeader:(id)header andMessage:(id)message
{
  messageCopy = message;
  headerCopy = header;
  v8 = [[self alloc] initWithHeader:headerCopy andMessage:messageCopy];

  return v8;
}

- (IOUserNotification)initWithHeader:(id)header andMessage:(id)message
{
  headerCopy = header;
  messageCopy = message;
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
    v11 = [headerCopy copy];
    header = v9->_header;
    v9->_header = v11;

    v13 = [messageCopy copy];
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
  header = [(IOUserNotification *)self header];
  message = [(IOUserNotification *)self message];
  buttonsMutable = [(IOUserNotification *)self buttonsMutable];
  v8 = [buttonsMutable count];
  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v10 = [optionsMutable count];
  isVisible = [(IOUserNotification *)self isVisible];
  v12 = "NO";
  if (isVisible)
  {
    v12 = "YES";
  }

  v13 = [NSString stringWithFormat:@"<%@: %p, header: %@, message: %@, numButtons: %lu, numOptions: %lu, visible: %s>", v4, self, header, message, v8, v10, v12];

  return v13;
}

- (NSArray)buttons
{
  buttonsMutable = [(IOUserNotification *)self buttonsMutable];
  v3 = [buttonsMutable copy];

  return v3;
}

- (NSArray)options
{
  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v3 = [optionsMutable copy];

  return v3;
}

- (BOOL)_addButton:(id)button
{
  buttonCopy = button;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addButton___block_invoke;
  block[3] = &unk_59200;
  block[4] = self;
  v9 = buttonCopy;
  v10 = &v11;
  v6 = buttonCopy;
  dispatch_sync(queue, block);

  LOBYTE(buttonCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return buttonCopy;
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

- (BOOL)addButtonWithTitle:(id)title
{
  v4 = [IOUserNotificationButton buttonWithTitle:title];
  LOBYTE(self) = [(IOUserNotification *)self _addButton:v4];

  return self;
}

- (BOOL)_addOption:(id)option
{
  optionCopy = option;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addOption___block_invoke;
  block[3] = &unk_59200;
  block[4] = self;
  v9 = optionCopy;
  v10 = &v11;
  v6 = optionCopy;
  dispatch_sync(queue, block);

  LOBYTE(optionCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return optionCopy;
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

- (void)presentNotificationWithResponseHandler:(id)handler
{
  [(IOUserNotification *)self setResponseHandler:handler];

  [(IOUserNotification *)self presentNotification];
}

- (void)presentNotification
{
  queue = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_presentNotification__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(queue, block);
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
  queue = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__IOUserNotification_updateNotification__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(queue, block);
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
  queue = [(IOUserNotification *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_dismissNotification__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(queue, block);
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
  notificationLevel = [(IOUserNotification *)self notificationLevel];
  if (notificationLevel - 1 > 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = qword_516F0[notificationLevel - 1];
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

  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __50__IOUserNotification__userNotificationOptionFlags__block_invoke;
  v8[3] = &unk_592C0;
  v8[4] = &v9;
  [optionsMutable enumerateObjectsUsingBlock:v8];

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

  header = [(IOUserNotification *)self header];

  if (header)
  {
    header2 = [(IOUserNotification *)self header];
    [v3 setObject:header2 forKey:kCFUserNotificationAlertHeaderKey];
  }

  message = [(IOUserNotification *)self message];

  if (message)
  {
    message2 = [(IOUserNotification *)self message];
    [v3 setObject:message2 forKey:kCFUserNotificationAlertMessageKey];
  }

  iconURL = [(IOUserNotification *)self iconURL];

  if (iconURL)
  {
    iconURL2 = [(IOUserNotification *)self iconURL];
    [v3 setObject:iconURL2 forKey:kCFUserNotificationIconURLKey];
  }

  lockScreenHeader = [(IOUserNotification *)self lockScreenHeader];

  if (lockScreenHeader)
  {
    lockScreenHeader2 = [(IOUserNotification *)self lockScreenHeader];
    [v3 setObject:lockScreenHeader2 forKey:SBUserNotificationLockScreenAlertHeaderKey];
  }

  lockScreenMessage = [(IOUserNotification *)self lockScreenMessage];

  if (lockScreenMessage)
  {
    lockScreenMessage2 = [(IOUserNotification *)self lockScreenMessage];
    [v3 setObject:lockScreenMessage2 forKey:SBUserNotificationLockScreenAlertMessageKey];
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

  systemSoundID = [(IOUserNotification *)self systemSoundID];

  if (systemSoundID)
  {
    systemSoundID2 = [(IOUserNotification *)self systemSoundID];
    [v3 setObject:systemSoundID2 forKey:SBUserNotificationSystemSoundIDKey];
  }

  extensionIdentifier = [(IOUserNotification *)self extensionIdentifier];

  if (extensionIdentifier)
  {
    extensionIdentifier2 = [(IOUserNotification *)self extensionIdentifier];
    [v3 setObject:extensionIdentifier2 forKey:SBUserNotificationExtensionIdentifierKey];
  }

  extensionItems = [(IOUserNotification *)self extensionItems];

  if (extensionItems)
  {
    extensionItems2 = [(IOUserNotification *)self extensionItems];
    v64 = 0;
    v27 = [NSKeyedArchiver archivedDataWithRootObject:extensionItems2 requiringSecureCoding:1 error:&v64];
    v28 = v64;
    [v3 setObject:v27 forKey:SBUserNotificationExtensionItemsKey];

    if (v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [IOUserNotification _userNotificationDictionary];
    }
  }

  iconConfiguration = [(IOUserNotification *)self iconConfiguration];

  if (iconConfiguration)
  {
    iconConfiguration2 = [(IOUserNotification *)self iconConfiguration];
    [v3 setObject:iconConfiguration2 forKey:SBUserNotificationHeaderGraphicIconDefinitionKey];
  }

  buttonsMutable = [(IOUserNotification *)self buttonsMutable];
  v32 = [buttonsMutable count];

  if (v32)
  {
    buttonsMutable2 = [(IOUserNotification *)self buttonsMutable];
    v34 = [buttonsMutable2 objectAtIndexedSubscript:0];
    title = [v34 title];
    [v3 setObject:title forKey:kCFUserNotificationDefaultButtonTitleKey];
  }

  buttonsMutable3 = [(IOUserNotification *)self buttonsMutable];
  v37 = [buttonsMutable3 count];

  if (v37 >= 2)
  {
    buttonsMutable4 = [(IOUserNotification *)self buttonsMutable];
    v39 = [buttonsMutable4 objectAtIndexedSubscript:1];
    title2 = [v39 title];
    [v3 setObject:title2 forKey:kCFUserNotificationAlternateButtonTitleKey];
  }

  buttonsMutable5 = [(IOUserNotification *)self buttonsMutable];
  v42 = [buttonsMutable5 count];

  if (v42 >= 3)
  {
    buttonsMutable6 = [(IOUserNotification *)self buttonsMutable];
    v44 = [buttonsMutable6 objectAtIndexedSubscript:2];
    title3 = [v44 title];
    [v3 setObject:title3 forKey:kCFUserNotificationOtherButtonTitleKey];
  }

  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v47 = [optionsMutable count];

  if (v47)
  {
    v48 = +[NSMutableArray array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    optionsMutable2 = [(IOUserNotification *)self optionsMutable];
    v50 = [optionsMutable2 countByEnumeratingWithState:&v60 objects:v65 count:16];
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
            objc_enumerationMutation(optionsMutable2);
          }

          title4 = [*(*(&v60 + 1) + 8 * i) title];
          v55 = [title4 copy];
          [v48 addObject:v55];
        }

        v51 = [optionsMutable2 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v51);
    }

    [v3 setObject:v48 forKey:kCFUserNotificationCheckBoxTitlesKey];
  }

  additionalConfiguration = [(IOUserNotification *)self additionalConfiguration];

  if (additionalConfiguration)
  {
    additionalConfiguration2 = [(IOUserNotification *)self additionalConfiguration];
    [v3 addEntriesFromDictionary:additionalConfiguration2];
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

+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)notification
{
  notificationCopy = notification;
  v4 = +[IOUserNotification _notificationMapTableLock];
  [v4 lock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[IOUserNotification _notificationMapTable];
  pointerValue = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (pointerValue)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != pointerValue; i = (i + 1))
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[IOUserNotification _notificationMapTable];
        v11 = [v10 objectForKey:v9];

        if (v11 == notificationCopy)
        {
          pointerValue = [v9 pointerValue];

          goto LABEL_11;
        }
      }

      pointerValue = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (pointerValue)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = +[IOUserNotification _notificationMapTableLock];
  [v12 unlock];

  return pointerValue;
}

@end