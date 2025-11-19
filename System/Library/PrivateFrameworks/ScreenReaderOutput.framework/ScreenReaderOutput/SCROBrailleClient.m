@interface SCROBrailleClient
+ (id)statusAttributeDotText;
- (BOOL)alwaysUsesNemethCodeForTechnicalText;
- (BOOL)autoAdvanceEnabled;
- (BOOL)automaticBrailleTranslationEnabled;
- (BOOL)blinkEnabled;
- (BOOL)displayDescriptorCallbackEnabled;
- (BOOL)inputEightDotBraille;
- (BOOL)isBrailleUIActive;
- (BOOL)isCandidateSelectionOn;
- (BOOL)isConfigured;
- (BOOL)isWordDescriptionOn;
- (BOOL)showDotsSevenAndEight;
- (BOOL)showEightDotBraille;
- (BOOL)wordWrapEnabled;
- (SCROBrailleClient)initWithDelegate:(id)a3;
- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)a3;
- (double)autoAdvanceDuration;
- (id)_getWorkingString;
- (id)_lazyConnection;
- (id)aggregatedStatus;
- (id)delegate;
- (id)driverConfiguration;
- (id)mainAttributedString;
- (id)mainCellsForVirtualDisplay:(unint64_t)a3;
- (id)pendingAggregatedStatus;
- (id)pendingMainAttributedString;
- (id)tokenArray;
- (int)contractionMode;
- (int)displayMode;
- (int)inputContractionMode;
- (int)virtualStatusAlignment;
- (int64_t)masterStatusCellIndex;
- (int64_t)tokenForRouterIndex:(int64_t)a3 location:(int64_t *)a4 appToken:(id *)a5 forDisplayWithToken:(int)a6;
- (unint64_t)loadVirtualDisplayWithMainSize:(int64_t)a3;
- (unint64_t)numberOfTextLinesInPlanarBraille;
- (unsigned)persistentKeyModifiers;
- (void)_deathTimerHandler;
- (void)_refreshAfterReconnect;
- (void)_registerDelegate;
- (void)cancelCandidateSelection;
- (void)clearTimeoutAlert;
- (void)dealloc;
- (void)display;
- (void)displayIfNeeded;
- (void)endBrailleUIWithOptions:(id)a3;
- (void)exitCurrentDisplayMode;
- (void)handleBrailleUIResponse:(id)a3 forRequest:(id)a4;
- (void)handleCallback:(id)a3;
- (void)loadDisplayWithBluetoothDeviceAddress:(id)a3;
- (void)loadTactileGraphicsDisplayWithBLEIdentifier:(id)a3;
- (void)panDisplayBeginning:(int)a3;
- (void)panDisplayEnd:(int)a3;
- (void)panDisplayLeft:(int)a3;
- (void)panDisplayRight:(int)a3;
- (void)planarPanDisplayLeft:(int)a3;
- (void)planarPanDisplayRight:(int)a3;
- (void)processBrailleUICommand:(id)a3;
- (void)removeDisplayWithBluetoothDeviceAddress:(id)a3;
- (void)resetEditingManager;
- (void)selectAllForToken:(int64_t)a3;
- (void)setAggregatedStatus:(id)a3;
- (void)setAnnouncementString:(id)a3;
- (void)setAnnouncementsDisplayMode;
- (void)setAttributedAnnouncementString:(id)a3;
- (void)setAutoAdvanceDuration:(double)a3;
- (void)setBrailleChordDebounceTimeout:(double)a3;
- (void)setBrailleMap:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setExpandedStatusDisplayModeWithStatus:(id)a3;
- (void)setFocused:(BOOL)a3 forToken:(int64_t)a4;
- (void)setInputTableIdentifier:(id)a3;
- (void)setKeepConnectionAlive:(BOOL)a3;
- (void)setLastUserInteractionTime:(double)a3;
- (void)setMainAttributedString:(id)a3;
- (void)setMasterStatusCellIndex:(int64_t)a3;
- (void)setPlanarData:(id)a3;
- (void)setPrimaryBrailleDisplay:(int)a3;
- (void)setTableIdentifier:(id)a3;
- (void)setTactileGraphicsImageData:(id)a3;
- (void)showNextAnnouncement;
- (void)showNextCandidate;
- (void)showNextWordDescription;
- (void)showPreviousAnnouncement;
- (void)showPreviousCandidate;
- (void)showPreviousWordDescription;
- (void)simulateKeypress:(id)a3;
- (void)startBrailleUIWithOptions:(id)a3;
- (void)systemVirtualDisplayPressKeyChord:(unint64_t)a3;
- (void)translateBrailleToClipboard;
- (void)unloadVirtualDisplay:(unint64_t)a3;
- (void)unselectAllForToken:(int64_t)a3;
- (void)virtualDisplay:(unint64_t)a3 pressButton:(unint64_t)a4;
- (void)virtualDisplay:(unint64_t)a3 pressKeyChord:(unint64_t)a4;
@end

@implementation SCROBrailleClient

- (SCROBrailleClient)initWithDelegate:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SCROBrailleClient;
  v5 = [(SCROBrailleClient *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = objc_alloc(MEMORY[0x277D4B828]);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 initWithDescription:v10];
    threadKey = v5->_threadKey;
    v5->_threadKey = v11;

    v13 = [objc_alloc(MEMORY[0x277D4B820]) initWithTarget:v5 selector:sel__deathTimerHandler threadKey:v5->_threadKey];
    deathTimer = v5->_deathTimer;
    v5->_deathTimer = v13;

    [(SCROBrailleClient *)v5 setDelegate:v4];
  }

  return v5;
}

- (void)dealloc
{
  [(NSLock *)self->_lock lock];
  [(SCROConnection *)self->_connection invalidate];
  [(SCRCTargetSelectorTimer *)self->_deathTimer invalidate];
  [(SCRCTargetSelectorTimer *)self->_deathTimer invalidate];
  [(NSLock *)self->_lock unlock];
  v3.receiver = self;
  v3.super_class = SCROBrailleClient;
  [(SCROBrailleClient *)&v3 dealloc];
}

- (void)setKeepConnectionAlive:(BOOL)a3
{
  v3 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_keepConnectionAlive == v3)
  {
    [(NSLock *)self->_lock unlock];
    if (!v3)
    {
      return;
    }

LABEL_6:
    v6 = [(SCROBrailleClient *)self _lazyConnection];
    return;
  }

  self->_keepConnectionAlive = v3;
  deathTimer = self->_deathTimer;
  if (v3)
  {
    [(SCRCTargetSelectorTimer *)deathTimer cancel];
    [(NSLock *)self->_lock unlock];
    goto LABEL_6;
  }

  [(SCRCTargetSelectorTimer *)deathTimer dispatchAfterDelay:5.0];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_deathTimerHandler
{
  if (SCROBrailleClientLogMaskKey == 1)
  {
    NSLog(&cfstr_AttemptingToCl.isa, a2);
  }

  [(NSLock *)self->_lock lock];
  connection = self->_connection;
  if (connection && !self->_keepConnectionAlive)
  {
    v4 = [(SCROConnection *)connection handlerValueForKey:65];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 BOOLValue] & 1) == 0)
    {
      [(SCROConnection *)self->_connection invalidate];
      v5 = self->_connection;
      self->_connection = 0;

      self->_isReady = 0;
      if (SCROBrailleClientLogMaskKey == 1)
      {
        NSLog(&cfstr_BrailleConnect.isa);
      }
    }

    else
    {
      [(SCRCTargetSelectorTimer *)self->_deathTimer dispatchAfterDelay:5.0];
    }
  }

  [(NSLock *)self->_lock unlock];
}

- (id)_lazyConnection
{
  lock = self->_lock;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v4 dateByAddingTimeInterval:30.0];
  LODWORD(lock) = [(NSLock *)lock lockBeforeDate:v5];

  if (lock)
  {
    connection = self->_connection;
    if (!connection)
    {
      self->_isReady = 0;
      if (SCROBrailleClientLogMaskKey == 1)
      {
        NSLog(&cfstr_AttemptingToOp.isa);
      }

      v7 = [objc_alloc(-[SCROBrailleClient connectionClass](self "connectionClass"))];
      v8 = self->_connection;
      self->_connection = v7;

      connection = self->_connection;
    }

    v9 = connection;
    if (!self->_keepConnectionAlive)
    {
      [(SCRCTargetSelectorTimer *)self->_deathTimer dispatchAfterDelay:5.0];
    }

    [(NSLock *)self->_lock unlock];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_registerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(NSLock *)self->_lock lock];
    [(SCROConnection *)self->_connection registerHandlerCallbackForKey:80];
    [(SCROConnection *)self->_connection registerHandlerCallbackForKey:82];
    v4 = _SCROD_LOG();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 0;
      _os_log_impl(&dword_26490B000, v4, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient _registerDelegate] Register callback: 'Display Configuration Changed'", v63, 2u);
    }

    [(SCROConnection *)self->_connection registerHandlerCallbackForKey:78];
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      self->_wantsDisconnectMessage = 1;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      self->_wantsReconnectMessage = 1;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      self->_wantsDisplayConfigurationChanged = 1;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      self->_delegateWantsKeypresses = 1;
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      self->_delegateWantsReplaceTextRange = 1;
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:83];
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:81];
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:84];
    }

    v21 = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:85];
    }

    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:86];
    }

    v25 = objc_loadWeakRetained(&self->_delegate);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:87];
    }

    v27 = objc_loadWeakRetained(&self->_delegate);
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:88];
    }

    v29 = objc_loadWeakRetained(&self->_delegate);
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:89];
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:90];
    }

    v33 = objc_loadWeakRetained(&self->_delegate);
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:91];
    }

    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:92];
    }

    v37 = objc_loadWeakRetained(&self->_delegate);
    v38 = objc_opt_respondsToSelector();

    if (v38)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:93];
    }

    v39 = objc_loadWeakRetained(&self->_delegate);
    v40 = objc_opt_respondsToSelector();

    if (v40)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:96];
    }

    v41 = objc_loadWeakRetained(&self->_delegate);
    v42 = objc_opt_respondsToSelector();

    if (v42)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:94];
    }

    v43 = objc_loadWeakRetained(&self->_delegate);
    v44 = objc_opt_respondsToSelector();

    if (v44)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:95];
    }

    v45 = objc_loadWeakRetained(&self->_delegate);
    v46 = objc_opt_respondsToSelector();

    if (v46)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:97];
    }

    v47 = objc_loadWeakRetained(&self->_delegate);
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:79];
    }

    v49 = objc_loadWeakRetained(&self->_delegate);
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:98];
    }

    v51 = objc_loadWeakRetained(&self->_delegate);
    v52 = objc_opt_respondsToSelector();

    if (v52)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:99];
    }

    v53 = objc_loadWeakRetained(&self->_delegate);
    v54 = objc_opt_respondsToSelector();

    if (v54)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:100];
    }

    v55 = objc_loadWeakRetained(&self->_delegate);
    v56 = objc_opt_respondsToSelector();

    if (v56)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:101];
    }

    v57 = objc_loadWeakRetained(&self->_delegate);
    v58 = objc_opt_respondsToSelector();

    if (v58)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:103];
    }

    v59 = objc_loadWeakRetained(&self->_delegate);
    v60 = objc_opt_respondsToSelector();

    if (v60)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:104];
    }

    v61 = objc_loadWeakRetained(&self->_delegate);
    v62 = objc_opt_respondsToSelector();

    if (v62)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:102];
    }

    [(NSLock *)self->_lock unlock];
  }
}

- (void)setDelegate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SCROD_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient setDelegate:%@]", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    [(SCROBrailleClient *)self _registerDelegate];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadDisplayWithBluetoothDeviceAddress:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:25];
}

- (void)loadTactileGraphicsDisplayWithBLEIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:27];
}

- (void)removeDisplayWithBluetoothDeviceAddress:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:26];
}

- (void)setTableIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:28];
}

- (void)setInputTableIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:29];
}

- (BOOL)alwaysUsesNemethCodeForTechnicalText
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:30];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isConfigured
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:65];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)driverConfiguration
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerArrayValueForKey:67];

  return v3;
}

- (void)setMainAttributedString:(id)a3
{
  v7 = a3;
  if ([v7 length] > 0x1000)
  {
    v4 = [v7 attributedSubstringFromRange:{0, 4096}];

    v7 = v4;
  }

  [(NSLock *)self->_lock lock];
  self->_needsDisplay = [(NSMutableAttributedString *)self->_mainStringPending isEqual:v7]^ 1;
  v5 = [v7 mutableCopy];
  mainStringPending = self->_mainStringPending;
  self->_mainStringPending = v5;

  [(NSLock *)self->_lock unlock];
}

- (id)pendingMainAttributedString
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableAttributedString *)self->_mainStringPending copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)mainAttributedString
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:31];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAnnouncementString:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5];
    [(SCROBrailleClient *)self setAttributedAnnouncementString:v4];
  }
}

- (void)setAttributedAnnouncementString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(SCROBrailleClient *)self setMainAttributedString:v4];
  }
}

- (void)clearTimeoutAlert
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:12];
}

- (void)setAggregatedStatus:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  self->_needsDisplay = [(NSData *)self->_aggregatedStatusPending isEqual:v4]^ 1;
  aggregatedStatusPending = self->_aggregatedStatusPending;
  self->_aggregatedStatusPending = v4;
  v6 = v4;

  [(NSLock *)self->_lock unlock];
}

- (id)pendingAggregatedStatus
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSData *)self->_aggregatedStatusPending copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)aggregatedStatus
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:40];

  return v3;
}

- (int)virtualStatusAlignment
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:41];
  v4 = [v3 intValue];

  return v4;
}

- (void)setMasterStatusCellIndex:(int64_t)a3
{
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setHandlerValue:v4 forKey:42];
}

- (int64_t)masterStatusCellIndex
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:42];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)showDotsSevenAndEight
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:33];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int)contractionMode
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:37];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)inputEightDotBraille
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:35];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)showEightDotBraille
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:34];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int)inputContractionMode
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:38];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)automaticBrailleTranslationEnabled
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:36];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)wordWrapEnabled
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:44];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)autoAdvanceEnabled
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:45];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setAutoAdvanceDuration:(double)a3
{
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setHandlerValue:v4 forKey:46];
}

- (double)autoAdvanceDuration
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:46];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)blinkEnabled
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:47];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setTactileGraphicsImageData:(id)a3
{
  v4 = a3;
  v5 = [[SCRO2DBrailleData alloc] initWithImageData:v4];

  [(SCROBrailleClient *)self setPlanarData:v5];
}

- (void)setBrailleMap:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB28] data];
  [v4 dimensions];
  if (v6 > 0.0)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      [v4 dimensions];
      if (v9 > 0.0)
      {
        v10 = 0.0;
        v11 = 1;
        do
        {
          [v4 heightAtPoint:{v10, v8}];
          v15 = v12;
          [v5 appendBytes:&v15 length:1];
          v10 = v11;
          [v4 dimensions];
          ++v11;
        }

        while (v13 > v10);
      }

      v8 = ++v7;
      [v4 dimensions];
    }

    while (v14 > v7);
  }

  [(SCROBrailleClient *)self setTactileGraphicsImageData:v5];
}

- (void)setPlanarData:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:50];

  v6 = _SCROD_LOG();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_INFO, "Sending 2D Braille data", v7, 2u);
  }
}

- (unint64_t)numberOfTextLinesInPlanarBraille
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:72];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (int)displayMode
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:68];
  v4 = [v3 intValue];

  return v4;
}

- (unsigned)persistentKeyModifiers
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:43];
  v4 = [v3 intValue];

  return v4;
}

- (void)setLastUserInteractionTime:(double)a3
{
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setHandlerValue:v4 forKey:48];
}

- (void)setExpandedStatusDisplayModeWithStatus:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB48];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:@" "];
    [v6 addAttribute:kSCROStatusAttribute[0] value:v5 range:{0, 1}];

    [(SCROBrailleClient *)self setMainAttributedString:v6];
  }
}

- (void)setAnnouncementsDisplayMode
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:6];
}

- (void)exitCurrentDisplayMode
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:9];
}

- (BOOL)displayDescriptorCallbackEnabled
{
  [(NSLock *)self->_lock lock];
  connection = self->_connection;
  lock = self->_lock;
  v5 = connection;
  [(NSLock *)lock unlock];
  v6 = [(SCROConnection *)v5 handlerValueForKey:39];

  LOBYTE(v5) = [v6 BOOLValue];
  return v5;
}

- (int64_t)tokenForRouterIndex:(int64_t)a3 location:(int64_t *)a4 appToken:(id *)a5 forDisplayWithToken:(int)a6
{
  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v14 = [v11 initWithObjectsAndKeys:{v12, @"index", v13, @"displayToken", 0}];

  v15 = [(SCROBrailleClient *)self _lazyConnection];
  v16 = [v15 handlerValueForKey:66 withObject:v14];

  v17 = [v16 objectForKey:kSCROBrailleRouterKeyLocation];
  *a4 = [v17 integerValue];

  *a5 = [v16 objectForKey:kSCROBrailleRouterKeyAppToken[0]];
  v18 = [v16 objectForKey:kSCROBrailleRouterKeyToken[0]];
  v19 = [v18 integerValue];

  return v19;
}

- (id)_getWorkingString
{
  [(NSLock *)self->_lock lock];
  mainStringPending = self->_mainStringPending;
  if (mainStringPending || (mainStringPending = self->_mainStringCache) != 0)
  {
    v4 = [(NSMutableAttributedString *)mainStringPending copy];
  }

  else
  {
    v4 = 0;
  }

  [(NSLock *)self->_lock unlock];
  if (!v4)
  {
    v4 = [(SCROBrailleClient *)self mainAttributedString];
  }

  return v4;
}

- (id)tokenArray
{
  v2 = [(SCROBrailleClient *)self _getWorkingString];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [v2 length];
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [v2 attribute:kSCROTokenAttribute[0] atIndex:v6 longestEffectiveRange:&v10 inRange:{v6, v5}];
      if (v7)
      {
        [v3 addObject:v7];
      }

      v8 = v11 + v10;
      v5 = v6 + v5 - (v11 + v10);

      v6 = v8;
    }

    while (v5);
  }

  return v3;
}

- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)a3
{
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 handlerValueForKey:69 withObject:v5];

  v7 = [v6 rangeValue];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)selectAllForToken:(int64_t)a3
{
  v9 = 0;
  v10 = 0;
  v5 = [(SCROBrailleClient *)self _getWorkingString];
  v6 = [v5 mutableCopy];

  v7 = kSCROTokenAttribute[0];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  LODWORD(v7) = [v6 getRange:&v9 ofAttribute:v7 withValue:v8];

  if (v7)
  {
    [v6 addAttribute:kSCROSelectionAttribute[0] value:MEMORY[0x277CBEC38] range:{v9, v10}];
    [(SCROBrailleClient *)self setMainAttributedString:v6];
  }
}

- (void)unselectAllForToken:(int64_t)a3
{
  v9 = 0;
  v10 = 0;
  v5 = [(SCROBrailleClient *)self _getWorkingString];
  v6 = [v5 mutableCopy];

  v7 = kSCROTokenAttribute[0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  LODWORD(v7) = [v6 getRange:&v9 ofAttribute:v7 withValue:v8];

  if (v7)
  {
    [v6 removeAttribute:kSCROCursorAttribute[0] range:{v9, v10}];
    [v6 removeAttribute:kSCROSelectionAttribute[0] range:{v9, v10}];
    [(SCROBrailleClient *)self setMainAttributedString:v6];
  }
}

- (void)setFocused:(BOOL)a3 forToken:(int64_t)a4
{
  v5 = a3;
  v11 = 0;
  v12 = 0;
  v7 = [(SCROBrailleClient *)self _getWorkingString];
  v8 = [v7 mutableCopy];

  v9 = kSCROTokenAttribute[0];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  LODWORD(v9) = [v8 getRange:&v11 ofAttribute:v9 withValue:v10];

  if (v9)
  {
    if (v5)
    {
      [v8 addAttribute:kSCROFocusedAttribute[0] value:MEMORY[0x277CBEC38] range:{v11, v12}];
    }

    else
    {
      [v8 removeAttribute:kSCROFocusedAttribute[0] range:{v11, v12}];
    }

    [(SCROBrailleClient *)self setMainAttributedString:v8];
  }
}

- (void)displayIfNeeded
{
  if ([(SCROBrailleClient *)self needsDisplay])
  {

    [(SCROBrailleClient *)self display];
  }
}

- (void)display
{
  v8 = [[SCROEvent alloc] initForHandlerType:1];
  [(NSLock *)self->_lock lock];
  mainStringPending = self->_mainStringPending;
  if (mainStringPending)
  {
    [v8 requestSetValue:self->_mainStringPending forKey:31];
    objc_storeStrong(&self->_mainStringCache, self->_mainStringPending);
    v4 = self->_mainStringPending;
    self->_mainStringPending = 0;
  }

  aggregatedStatusPending = self->_aggregatedStatusPending;
  if (aggregatedStatusPending)
  {
    [v8 requestSetValue:aggregatedStatusPending forKey:40];
    objc_storeStrong(&self->_aggregatedStatusCache, self->_aggregatedStatusPending);
    v6 = self->_aggregatedStatusPending;
    self->_aggregatedStatusPending = 0;

    [(NSLock *)self->_lock unlock];
  }

  else
  {
    [(NSLock *)self->_lock unlock];
    if (!mainStringPending)
    {
      goto LABEL_7;
    }
  }

  v7 = [(SCROBrailleClient *)self _lazyConnection];
  [v7 sendEvent:v8];

LABEL_7:
}

- (void)simulateKeypress:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:56];
}

- (void)panDisplayLeft:(int)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  [v4 setHandlerValue:v5 forKey:52];
}

- (void)panDisplayRight:(int)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  [v4 setHandlerValue:v5 forKey:53];
}

- (void)panDisplayBeginning:(int)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  [v4 setHandlerValue:v5 forKey:54];
}

- (void)panDisplayEnd:(int)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  [v4 setHandlerValue:v5 forKey:55];
}

- (void)planarPanDisplayLeft:(int)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  [v4 setHandlerValue:v5 forKey:63];
}

- (void)planarPanDisplayRight:(int)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  [v4 setHandlerValue:v5 forKey:64];
}

- (void)showPreviousAnnouncement
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:8];
}

- (void)showNextAnnouncement
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:7];
}

- (BOOL)isCandidateSelectionOn
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:70];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)cancelCandidateSelection
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:13];
}

- (void)showPreviousCandidate
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:14];
}

- (void)showNextCandidate
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:15];
}

- (BOOL)isWordDescriptionOn
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:71];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)showPreviousWordDescription
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:16];
}

- (void)showNextWordDescription
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:17];
}

- (void)startBrailleUIWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:73];
}

- (void)endBrailleUIWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  [v5 setHandlerValue:v4 forKey:74];
}

- (void)handleBrailleUIResponse:(id)a3 forRequest:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"response";
  v12[1] = @"request";
  v13[0] = a3;
  v13[1] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [(SCROBrailleClient *)self _lazyConnection];
  [v10 setHandlerValue:v9 forKey:75];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)processBrailleUICommand:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"command";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SCROBrailleClient *)self _lazyConnection];
  [v7 setHandlerValue:v6 forKey:76];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBrailleUIActive
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [v2 handlerValueForKey:77];
  v4 = [v3 BOOLValue];

  return v4;
}

- (unint64_t)loadVirtualDisplayWithMainSize:(int64_t)a3
{
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 handlerValueForKey:19 withObject:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (void)unloadVirtualDisplay:(unint64_t)a3
{
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setHandlerValue:v4 forKey:18];
}

- (id)mainCellsForVirtualDisplay:(unint64_t)a3
{
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 handlerValueForKey:20 withObject:v5];

  return v6;
}

- (void)virtualDisplay:(unint64_t)a3 pressButton:(unint64_t)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"displayToken";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11[1] = @"button";
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = [(SCROBrailleClient *)self _lazyConnection];
  [v9 setHandlerValue:v8 forKey:21];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)virtualDisplay:(unint64_t)a3 pressKeyChord:(unint64_t)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"displayToken";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11[1] = @"keyChord";
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = [(SCROBrailleClient *)self _lazyConnection];
  [v9 setHandlerValue:v8 forKey:22];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)systemVirtualDisplayPressKeyChord:(unint64_t)a3
{
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setHandlerValue:v4 forKey:24];
}

- (void)setPrimaryBrailleDisplay:(int)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(SCROBrailleClient *)self _lazyConnection];
  [v4 setHandlerValue:v5 forKey:58];
}

- (void)resetEditingManager
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:11];
}

- (void)handleCallback:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 key];
  switch(v5)
  {
    case 'N':
      [(NSLock *)self->_lock lock];
      if (!self->_keepConnectionAlive)
      {
        [(SCRCTargetSelectorTimer *)self->_deathTimer dispatchAfterDelay:5.0];
      }

      [(NSLock *)self->_lock unlock];
      v6 = _SCROD_LOG();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        wantsDisplayConfigurationChanged = self->_wantsDisplayConfigurationChanged;
        v8 = [v4 object];
        v37[0] = 67109378;
        v37[1] = wantsDisplayConfigurationChanged;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient handleCallback:] Call delegate's config change handler; Delegate wants == %d, isConfigured == %@", v37, 0x12u);
      }

      if (self->_wantsDisplayConfigurationChanged)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v10 = [v4 object];
        [WeakRetained handleBrailleConfigurationChanged:v10];
        goto LABEL_50;
      }

      goto LABEL_52;
    case 'O':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleTableFailedToLoad:v10];
      goto LABEL_50;
    case 'P':
      if (!self->_delegateWantsKeypresses)
      {
        goto LABEL_52;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleKeypress:v10];
      goto LABEL_50;
    case 'Q':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleUserEventOccured];
      goto LABEL_51;
    case 'R':
      if (!self->_delegateWantsReplaceTextRange)
      {
        goto LABEL_52;
      }

      v11 = [v4 object];
      v12 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackReplaceTextRange_RangeKey];
      v13 = [v12 rangeValue];
      v15 = v14;

      v16 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackReplaceTextRange_StringKey];
      v17 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackReplaceTextRange_CursorKey];
      v18 = [v17 unsignedIntegerValue];

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 handleBrailleReplaceTextRange:v13 withString:v15 cursor:{v16, v18}];
      goto LABEL_41;
    case 'S':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleBrailleStartEditing];
      goto LABEL_51;
    case 'T':
      v11 = [v4 object];
      v16 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpokenTextKey];
      v30 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpeakLiterallyKey];
      v31 = [v30 BOOLValue];

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 handleBrailleInsertedUntranslatedText:v16 speakLiterally:v31];
      goto LABEL_41;
    case 'U':
      v11 = [v4 object];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_46;
      }

      v16 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpokenTextKey];
      v28 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpeakLiterallyKey];
      v29 = [v28 BOOLValue];

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 handleBrailleDeletedUntranslatedText:v16 speakLiterally:v29];
LABEL_41:

LABEL_45:
      goto LABEL_46;
    case 'V':
      v11 = [v4 object];
      v16 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpokenTextKey];
      v32 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_LanguageKey];
      v33 = [v11 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_ShouldQueueKey];
      v34 = [v33 BOOLValue];

      v35 = objc_loadWeakRetained(&self->_delegate);
      [v35 handleBrailleSpeechRequest:v16 language:v32 shouldQueue:v34];

      goto LABEL_45;
    case 'W':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleKeyWillMemorize:v10];
      goto LABEL_50;
    case 'X':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleKeyMemorize:v10];
      goto LABEL_50;
    case 'Y':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleDidDisplay:v10];
      goto LABEL_50;
    case 'Z':
      v11 = [v4 object];
      v23 = objc_loadWeakRetained(&self->_delegate);
      v24 = [v11 objectForKey:@"success"];
      v25 = [v11 objectForKey:@"token"];
      v26 = [v11 objectForKey:@"appToken"];
      v27 = [v11 objectForKeyedSubscript:@"lineOffset"];
      [v23 handleBrailleDidPanLeft:v24 elementToken:v25 appToken:v26 lineOffset:v27];
      goto LABEL_38;
    case '[':
      v11 = [v4 object];
      v23 = objc_loadWeakRetained(&self->_delegate);
      v24 = [v11 objectForKey:@"success"];
      v25 = [v11 objectForKey:@"token"];
      v26 = [v11 objectForKey:@"appToken"];
      v27 = [v11 objectForKeyedSubscript:@"lineOffset"];
      [v23 handleBrailleDidPanRight:v24 elementToken:v25 appToken:v26 lineOffset:v27];
LABEL_38:

      goto LABEL_39;
    case '\\':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleDidShowPreviousAnnouncement:v10];
      goto LABEL_50;
    case ']':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleDidShowNextAnnouncement:v10];
      goto LABEL_50;
    case '^':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleBraillePlayBorderHitSound];
      goto LABEL_51;
    case '_':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleBraillePlayCommandNotSupportedSound];
      goto LABEL_51;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBraillePlayDisplayConnectionSound:v10];
      goto LABEL_50;
    case 'a':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleFailedToLoadBluetoothDevice:v10];
      goto LABEL_50;
    case 'b':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleDisplayModeChanged:v10];
      goto LABEL_50;
    case 'c':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleBrailleDisplayCopyStringToClipboard:v10];
      goto LABEL_50;
    case 'd':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handleTactileGraphicsCanvasDidChange:v10];
      goto LABEL_50;
    case 'e':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v4 object];
      [WeakRetained handlePlanarPanFailedIsLeft:{objc_msgSend(v10, "BOOLValue")}];
LABEL_50:

      goto LABEL_51;
    case 'f':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleDidBrailleUIStart];
      goto LABEL_51;
    case 'g':
      v11 = [v4 object];
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 handleBrailleUIRequest:v11];
LABEL_39:

      goto LABEL_46;
    case 'h':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleDidBrailleUIEnd];
LABEL_51:

      goto LABEL_52;
    default:
      if (v5 == 3)
      {
        v20 = _SCROD_LOG();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v37[0]) = 0;
          _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient handleCallback:] for key CallbackConnect", v37, 2u);
        }

        [(NSLock *)self->_lock lock];
        v21 = [v4 object];
        connection = self->_connection;

        [(NSLock *)self->_lock unlock];
        if (v21 == connection)
        {
          self->_isReady = 1;
          [(SCROBrailleClient *)self _registerDelegate];
          [(SCROBrailleClient *)self _refreshAfterReconnect];
          if (self->_wantsReconnectMessage)
          {
            v11 = objc_loadWeakRetained(&self->_delegate);
            [v11 handleBrailleDidReconnect:self];
            goto LABEL_46;
          }
        }
      }

      else if (v5 == 4)
      {
        self->_isReady = 0;
        if (self->_wantsDisconnectMessage)
        {
          v11 = objc_loadWeakRetained(&self->_delegate);
          [v11 handleBrailleDidDisconnect:self];
LABEL_46:
        }
      }

LABEL_52:

      v36 = *MEMORY[0x277D85DE8];
      return;
  }
}

- (void)_refreshAfterReconnect
{
  [(NSLock *)self->_lock lock];
  if (!self->_mainStringPending)
  {
    objc_storeStrong(&self->_mainStringPending, self->_mainStringCache);
  }

  if (!self->_aggregatedStatusPending)
  {
    objc_storeStrong(&self->_aggregatedStatusPending, self->_aggregatedStatusCache);
  }

  displayDescriptorCallbackEnabled = self->_displayDescriptorCallbackEnabled;
  [(NSLock *)self->_lock unlock];
  [(SCROBrailleClient *)self display];
  if (displayDescriptorCallbackEnabled)
  {

    [(SCROBrailleClient *)self setDisplayDescriptorCallbackEnabled:1];
  }
}

- (void)setBrailleChordDebounceTimeout:(double)a3
{
  v5 = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setHandlerValue:v4 forKey:62];
}

+ (id)statusAttributeDotText
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    [v2 addObject:kSCROStatusAttributeDotText[i]];
  }

  return v2;
}

- (void)translateBrailleToClipboard
{
  v2 = [(SCROBrailleClient *)self _lazyConnection];
  [v2 performHandlerActionForKey:10];
}

@end