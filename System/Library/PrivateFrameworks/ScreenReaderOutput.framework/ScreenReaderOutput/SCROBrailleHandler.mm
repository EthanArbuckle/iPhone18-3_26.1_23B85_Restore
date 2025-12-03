@interface SCROBrailleHandler
- (SCROBrailleHandler)initWithBrailleDisplayManager:(id)manager;
- (int)handlePerformActionForKey:(int)key trusted:(BOOL)trusted;
- (int)handleRegisterCallbackForKey:(int)key trusted:(BOOL)trusted;
- (void)configurationDidChange;
- (void)handleBrailleDidDisplay:(id)display;
- (void)handleBrailleDidPanLeft:(id)left elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset;
- (void)handleBrailleDidPanRight:(id)right elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset;
- (void)handleBrailleDidShowNextAnnouncement:(id)announcement;
- (void)handleBrailleDidShowPreviousAnnouncement:(id)announcement;
- (void)handleBrailleDriverDidLoad;
- (void)handleBrailleDriverDisconnected;
- (void)handleBrailleKeyMemorize:(id)memorize;
- (void)handleBrailleKeyWillMemorize:(id)memorize;
- (void)handleBrailleKeypress:(id)keypress;
- (void)handleBrailleReplaceTextRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor;
- (void)handleBrailleTableFailedToLoad:(id)load;
- (void)handleBrailleUIRequest:(id)request;
- (void)handleCopyStringToClipboard:(id)clipboard;
- (void)handleDidBrailleUIEnd;
- (void)handleDidBrailleUIStart;
- (void)handleDisplayModeChanged:(id)changed;
- (void)handleFailedToLoadBluetoothDevice:(id)device;
- (void)handlePlayBorderHitSound;
- (void)handlePlayCommandNotSupportedSound;
- (void)handleStartEditing;
- (void)handleTacticalGraphicsCanvasDidChange:(id)change;
- (void)handleUserEventOccured;
- (void)invalidate;
@end

@implementation SCROBrailleHandler

- (SCROBrailleHandler)initWithBrailleDisplayManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SCROBrailleHandler;
  v6 = [(SCROHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brailleDisplayManager, manager);
    [(SCROBrailleDisplayManager *)v7->_brailleDisplayManager setDelegate:v7];
  }

  return v7;
}

- (void)invalidate
{
  [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = SCROBrailleHandler;
  [(SCROHandler *)&v3 invalidate];
}

- (int)handleRegisterCallbackForKey:(int)key trusted:(BOOL)trusted
{
  switch(key)
  {
    case 'N':
      result = 0;
      self->_callbacks.configChanged = 1;
      break;
    case 'O':
      result = 0;
      self->_callbacks.tableLoadFailed = 1;
      break;
    case 'P':
      result = 0;
      self->_callbacks.keypress = 1;
      break;
    case 'Q':
      result = 0;
      self->_callbacks.userEventOccured = 1;
      break;
    case 'R':
      result = 0;
      self->_callbacks.replaceTextRange = 1;
      break;
    case 'S':
      result = 0;
      self->_callbacks.startEditing = 1;
      break;
    case 'T':
      result = 0;
      self->_callbacks.insertUntranslatedText = 1;
      break;
    case 'U':
      result = 0;
      self->_callbacks.deleteUntranslatedText = 1;
      break;
    case 'V':
      result = 0;
      self->_callbacks.speechRequest = 1;
      break;
    case 'W':
      result = 0;
      self->_callbacks.keyWillMem = 1;
      break;
    case 'X':
      result = 0;
      self->_callbacks.keymem = 1;
      break;
    case 'Y':
      if (!trusted)
      {
        goto LABEL_29;
      }

      result = 0;
      self->_callbacks.didDisplay = 1;
      break;
    case 'Z':
      result = 0;
      self->_callbacks.panLeft = 1;
      break;
    case '[':
      result = 0;
      self->_callbacks.panRight = 1;
      break;
    case '\\':
      result = 0;
      self->_callbacks.showPreviousAnnouncement = 1;
      break;
    case ']':
      result = 0;
      self->_callbacks.showNextAnnouncement = 1;
      break;
    case '^':
      result = 0;
      self->_callbacks.playBorderHitSound = 1;
      break;
    case '_':
      result = 0;
      self->_callbacks.playCommandNotSupportedSound = 1;
      break;
      v6 = _SCROD_LOG();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Made connection sound", buf, 2u);
      }

      self->_callbacks.playDisplayConnectionSound = 1;
      result = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager hasActiveUserDisplays];
      if (result)
      {
        v7 = _SCROD_LOG();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Handle did load", buf, 2u);
        }

        [(SCROBrailleHandler *)self performSelector:sel_handleBrailleDriverDidLoad withObject:0 afterDelay:0.0];
LABEL_29:
        result = 0;
      }

      break;
    case 'a':
      result = 0;
      self->_callbacks.bluetoothDisplayLoadFailed = 1;
      break;
    case 'b':
      result = 0;
      self->_callbacks.displayModeChanged = 1;
      break;
    case 'c':
      result = 0;
      self->_callbacks.copyStringToClipboard = 1;
      break;
    case 'd':
      result = 0;
      self->_callbacks.planarCanvasDidChange = 1;
      break;
    case 'e':
      result = 0;
      self->_callbacks.planarPan = 1;
      break;
    case 'f':
      result = 0;
      self->_callbacks.didBrailleUIStart = 1;
      break;
    case 'g':
      result = 0;
      self->_callbacks.brailleUIRequest = 1;
      break;
    case 'h':
      result = 0;
      self->_callbacks.didBrailleUIEnd = 1;
      break;
    default:
      v8.receiver = self;
      v8.super_class = SCROBrailleHandler;
      result = [SCROHandler handleRegisterCallbackForKey:sel_handleRegisterCallbackForKey_trusted_ trusted:?];
      break;
  }

  return result;
}

- (int)handlePerformActionForKey:(int)key trusted:(BOOL)trusted
{
  switch(key)
  {
    case 1:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager beginUpdates];
      goto LABEL_16;
    case 2:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager endUpdates];
      goto LABEL_16;
    case 6:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setAnnouncementsDisplayMode];
      goto LABEL_16;
    case 7:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showNextAnnouncement];
      goto LABEL_16;
    case 8:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showPreviousAnnouncement];
      goto LABEL_16;
    case 9:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager exitCurrentDisplayMode];
      goto LABEL_16;
    case 10:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager translateBrailleToClipboard];
      goto LABEL_16;
    case 11:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager resetEditingManager];
      goto LABEL_16;
    case 12:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager clearTimeoutAlert];
      goto LABEL_16;
    case 13:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager cancelCandidateSelection];
      goto LABEL_16;
    case 14:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showPreviousCandidate];
      goto LABEL_16;
    case 15:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showNextCandidate];
      goto LABEL_16;
    case 16:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showPreviousWordDescription];
      goto LABEL_16;
    case 17:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showNextWordDescription];
LABEL_16:
      result = 0;
      break;
    default:
      v5.receiver = self;
      v5.super_class = SCROBrailleHandler;
      result = [SCROHandler handlePerformActionForKey:sel_handlePerformActionForKey_trusted_ trusted:?];
      break;
  }

  return result;
}

- (void)handleBrailleKeypress:(id)keypress
{
  if (self->_callbacks.keypress)
  {
    keypressCopy = keypress;
    v7 = [[SCROCallback alloc] initWithKey:80 object:keypressCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleReplaceTextRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (self->_callbacks.replaceTextRange)
  {
    length = range.length;
    location = range.location;
    v18[0] = kSCROBrailleCallbackReplaceTextRange_RangeKey;
    v9 = MEMORY[0x277CCAE60];
    stringCopy = string;
    v11 = [v9 valueWithRange:{location, length}];
    v19[0] = v11;
    v19[1] = stringCopy;
    v18[1] = kSCROBrailleCallbackReplaceTextRange_StringKey;
    v18[2] = kSCROBrailleCallbackReplaceTextRange_CursorKey;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:cursor];
    v19[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v14 = [SCROCallback alloc];
    v15 = [(SCROCallback *)v14 initWithKey:82 object:v13];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v15 postToHandler:callbackDelegate];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleUserEventOccured
{
  if (self->_callbacks.userEventOccured)
  {
    v5 = [[SCROCallback alloc] initWithKey:81 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleStartEditing
{
  if (self->_callbacks.startEditing)
  {
    v5 = [[SCROCallback alloc] initWithKey:83 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleKeyWillMemorize:(id)memorize
{
  if (self->_callbacks.keyWillMem)
  {
    memorizeCopy = memorize;
    v7 = [[SCROCallback alloc] initWithKey:87 object:memorizeCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleKeyMemorize:(id)memorize
{
  if (self->_callbacks.keymem)
  {
    memorizeCopy = memorize;
    v7 = [[SCROCallback alloc] initWithKey:88 object:memorizeCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidDisplay:(id)display
{
  displayCopy = display;
  if (self->_callbacks.didDisplay)
  {
    v8 = displayCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v8 copy];

      v8 = v5;
    }

    v6 = [[SCROCallback alloc] initWithKey:89 object:v8];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];

    displayCopy = v8;
  }
}

- (void)handleBrailleDidPanLeft:(id)left elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset
{
  if (self->_callbacks.panLeft)
  {
    v11 = MEMORY[0x277CBEAC0];
    offsetCopy = offset;
    appTokenCopy = appToken;
    tokenCopy = token;
    leftCopy = left;
    v18 = [[v11 alloc] initWithObjectsAndKeys:{leftCopy, @"success", tokenCopy, @"token", offsetCopy, @"lineOffset", appTokenCopy, @"appToken", 0}];

    v16 = [[SCROCallback alloc] initWithKey:90 object:v18];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v16 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidPanRight:(id)right elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset
{
  if (self->_callbacks.panRight)
  {
    v11 = MEMORY[0x277CBEAC0];
    offsetCopy = offset;
    appTokenCopy = appToken;
    tokenCopy = token;
    rightCopy = right;
    v18 = [[v11 alloc] initWithObjectsAndKeys:{rightCopy, @"success", tokenCopy, @"token", offsetCopy, @"lineOffset", appTokenCopy, @"appToken", 0}];

    v16 = [[SCROCallback alloc] initWithKey:91 object:v18];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v16 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidShowPreviousAnnouncement:(id)announcement
{
  if (self->_callbacks.showPreviousAnnouncement)
  {
    announcementCopy = announcement;
    v7 = [[SCROCallback alloc] initWithKey:92 object:announcementCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidShowNextAnnouncement:(id)announcement
{
  if (self->_callbacks.showNextAnnouncement)
  {
    announcementCopy = announcement;
    v7 = [[SCROCallback alloc] initWithKey:93 object:announcementCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDriverDisconnected
{
  if (self->_callbacks.playDisplayConnectionSound)
  {
    v4 = [SCROCallback alloc];
    v6 = [(SCROCallback *)v4 initWithKey:96 object:MEMORY[0x277CBEC28]];
    [(SCROCallback *)v6 setIsAtomic:1];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDriverDidLoad
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _SCROD_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_callbacks.playDisplayConnectionSound];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_26490B000, v3, OS_LOG_TYPE_DEFAULT, "Brailler driver did load %@", &v9, 0xCu);
  }

  if (self->_callbacks.playDisplayConnectionSound)
  {
    v5 = [SCROCallback alloc];
    v6 = [(SCROCallback *)v5 initWithKey:96 object:MEMORY[0x277CBEC38]];
    [(SCROCallback *)v6 setIsAtomic:1];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configurationDidChange
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _SCROD_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    configChanged = self->_callbacks.configChanged;
    v11[0] = 67109120;
    v11[1] = configChanged;
    _os_log_impl(&dword_26490B000, v3, OS_LOG_TYPE_DEFAULT, "[SCROBrailleHandler configurationDidChange]: _callbacks.configChanged == %d", v11, 8u);
  }

  if (self->_callbacks.configChanged)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SCROBrailleDisplayManager isConfigured](self->_brailleDisplayManager, "isConfigured")}];
    v6 = [[SCROCallback alloc] initWithKey:78 object:v5];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];

    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Posting SCRODisplayConfigurationChangedNotification", v11, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kSCRODisplayConfigurationChangedNotification, 0, 0, 1u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleFailedToLoadBluetoothDevice:(id)device
{
  if (self->_callbacks.bluetoothDisplayLoadFailed)
  {
    deviceCopy = device;
    v7 = [[SCROCallback alloc] initWithKey:97 object:deviceCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleTableFailedToLoad:(id)load
{
  if (self->_callbacks.tableLoadFailed)
  {
    loadCopy = load;
    v7 = [[SCROCallback alloc] initWithKey:79 object:loadCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleDisplayModeChanged:(id)changed
{
  if (self->_callbacks.displayModeChanged)
  {
    changedCopy = changed;
    v7 = [[SCROCallback alloc] initWithKey:98 object:changedCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleCopyStringToClipboard:(id)clipboard
{
  if (self->_callbacks.copyStringToClipboard)
  {
    clipboardCopy = clipboard;
    v7 = [[SCROCallback alloc] initWithKey:99 object:clipboardCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleTacticalGraphicsCanvasDidChange:(id)change
{
  if (self->_callbacks.planarCanvasDidChange)
  {
    changeCopy = change;
    v7 = [[SCROCallback alloc] initWithKey:100 object:changeCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handlePlayBorderHitSound
{
  if (self->_callbacks.playBorderHitSound)
  {
    v5 = [[SCROCallback alloc] initWithKey:94 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handlePlayCommandNotSupportedSound
{
  if (self->_callbacks.playCommandNotSupportedSound)
  {
    v5 = [[SCROCallback alloc] initWithKey:95 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleDidBrailleUIStart
{
  if (self->_callbacks.didBrailleUIStart)
  {
    v5 = [[SCROCallback alloc] initWithKey:102 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleUIRequest:(id)request
{
  if (self->_callbacks.brailleUIRequest)
  {
    requestCopy = request;
    v7 = [[SCROCallback alloc] initWithKey:103 object:requestCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleDidBrailleUIEnd
{
  if (self->_callbacks.didBrailleUIEnd)
  {
    v5 = [[SCROCallback alloc] initWithKey:104 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

@end