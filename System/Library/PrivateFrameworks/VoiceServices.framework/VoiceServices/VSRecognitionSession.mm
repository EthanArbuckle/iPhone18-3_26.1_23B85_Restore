@interface VSRecognitionSession
- (BOOL)_actionStarted:(id)started;
- (BOOL)isActivelyRecognizing;
- (BOOL)isRecognizing;
- (BOOL)setNextRecognitionAudioInputPath:(id)path;
- (VSRecognitionSession)init;
- (VSRecognitionSession)initWithModelIdentifier:(id)identifier;
- (__CFDictionary)_createKeywordIndex;
- (float)inputLevel;
- (float)inputLevelDB;
- (id)_beginSpeakingAttributedString:(id)string;
- (id)_beginSpeakingString:(id)string attributedString:(id)attributedString;
- (id)_createPhaseSortedKeywordsFromArray:(id)array;
- (id)_currentRecognizeAction;
- (id)_keywordsForModelIdentifier:(id)identifier;
- (id)_recognitionResultHandlingThread;
- (id)_topLevelKeywords;
- (id)beginNextAction;
- (id)beginSpeakingFeedbackString;
- (id)beginSpeakingString:(id)string;
- (id)cancelMaintainingKeepAlive:(BOOL)alive;
- (id)keywordAtIndex:(int64_t)index;
- (id)reset;
- (int64_t)keywordCount;
- (void)_actionCompleted:(id)completed nextAction:(id)action error:(id)error;
- (void)_init;
- (void)_keywordIndexChanged;
- (void)_notifyDelegateActionStarted;
- (void)_notifyDelegateFinishedSpeakingWithError:(id)error;
- (void)_notifyDelegateOpenURL:(id)l completion:(id)completion;
- (void)_setAction:(id)action;
- (void)dealloc;
- (void)recognitionResultHandlingThread:(id)thread didHandleResults:(id)results nextAction:(id)action;
- (void)setDelegate:(id)delegate;
- (void)setInputLevelUpdateInterval:(double)interval;
- (void)setKeywordPhase:(unint64_t)phase;
- (void)setPerformRecognitionHandlerActions:(BOOL)actions;
- (void)setSensitiveActionsEnabled:(BOOL)enabled;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully phonemesSpoken:(id)spoken withError:(id)error;
@end

@implementation VSRecognitionSession

- (void)setPerformRecognitionHandlerActions:(BOOL)actions
{
  if (actions)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFDFF | v3);
}

- (BOOL)setNextRecognitionAudioInputPath:(id)path
{
  if (self->_audioInputPath == path)
  {
    return 1;
  }

  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (!_currentRecognizeAction)
  {

    self->_audioInputPath = path;
    return 1;
  }

  return [_currentRecognizeAction _setAudioInputPath:path];
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully phonemesSpoken:(id)spoken withError:(id)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__VSRecognitionSession_speechSynthesizer_didFinishSpeakingRequest_successfully_phonemesSpoken_withError___block_invoke;
  block[3] = &unk_279E4F528;
  block[4] = synthesizer;
  block[5] = self;
  block[6] = error;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __105__VSRecognitionSession_speechSynthesizer_didFinishSpeakingRequest_successfully_phonemesSpoken_withError___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(result + 32) == *(v1 + 56))
  {
    v2 = *(v1 + 104);
    if ((v2 & 0x2000) != 0)
    {
      *(v1 + 104) = v2 & 0xFFFFDFFF;
      return [*(result + 40) _notifyDelegateFinishedSpeakingWithError:*(result + 48)];
    }
  }

  return result;
}

- (void)_notifyDelegateFinishedSpeakingWithError:(id)error
{
  if ((*&self->_sessionFlags & 0x10) != 0)
  {
    [(VSRecognitionSessionDelegate *)self->_delegate recognitionSession:self didFinishSpeakingFeedbackStringWithError:error];
  }
}

- (id)_beginSpeakingString:(id)string attributedString:(id)attributedString
{
  if (!self->_synthesizer)
  {
    initForInputFeedback = [[VSSpeechSynthesizer alloc] initForInputFeedback];
    self->_synthesizer = initForInputFeedback;
    [(VSSpeechSynthesizer *)initForInputFeedback setDelegate:self];
  }

  if (!self->_languageID)
  {
    self->_languageID = VSPreferencesCopySpokenLanguageIdentifier();
  }

  v8 = objc_alloc_init(VSSpeechRequest);
  v9 = v8;
  if (attributedString)
  {
    [(VSSpeechRequest *)v8 setAttributedText:attributedString];
  }

  else
  {
    [(VSSpeechRequest *)v8 setText:string];
  }

  [(VSSpeechRequest *)v9 setLanguageCode:self->_languageID];
  [(VSSpeechRequest *)v9 setOutputPath:0];
  if (![(VSSpeechSynthesizer *)self->_synthesizer startSpeakingRequest:v9])
  {
    *&self->_sessionFlags |= 0x2000u;
  }

  return 0;
}

- (id)_beginSpeakingAttributedString:(id)string
{
  if ([string length])
  {

    return [(VSRecognitionSession *)self _beginSpeakingString:0 attributedString:string];
  }

  else
  {
    [(VSRecognitionSession *)self _notifyDelegateFinishedSpeakingWithError:0];
    return 0;
  }
}

- (id)beginSpeakingString:(id)string
{
  if ([string length])
  {

    return [(VSRecognitionSession *)self _beginSpeakingString:string attributedString:0];
  }

  else
  {
    [(VSRecognitionSession *)self _notifyDelegateFinishedSpeakingWithError:0];
    return 0;
  }
}

- (id)beginSpeakingFeedbackString
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  if ((*(&self->_sessionFlags + 1) & 0x20) != 0 || !self->_currentAction)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = *MEMORY[0x277CBEE30];
    userInfoValues = @"session is already speaking";
    userInfoKeys[0] = v7;
    v8 = CFErrorCreateWithUserInfoKeysAndValues(v6, @"VSErrorDomain", -4003, userInfoKeys, &userInfoValues, 1);
    v9 = v8;
    v10 = *MEMORY[0x277D85DE8];
    return v8;
  }

  else
  {
    spokenFeedbackAttributedString = [(VSRecognitionSession *)self spokenFeedbackAttributedString];
    if (spokenFeedbackAttributedString)
    {
      v4 = *MEMORY[0x277D85DE8];

      return [(VSRecognitionSession *)self _beginSpeakingAttributedString:spokenFeedbackAttributedString];
    }

    else
    {
      spokenFeedbackString = [(VSRecognitionSession *)self spokenFeedbackString];
      v12 = *MEMORY[0x277D85DE8];

      return [(VSRecognitionSession *)self beginSpeakingString:spokenFeedbackString];
    }
  }
}

- (void)_keywordIndexChanged
{
  topLevelKeywords = self->_topLevelKeywords;
  if (topLevelKeywords)
  {

    self->_topLevelKeywords = 0;
  }

  if ([-[VSRecognitionSession _currentRecognizeAction](self "_currentRecognizeAction")])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"VSRecognitionSessionKeywordsDidChangeNotification" object:self userInfo:0];
  }
}

- (id)_keywordsForModelIdentifier:(id)identifier
{
  if (identifier)
  {
    _createKeywordIndex = [(VSRecognitionSession *)self _createKeywordIndex];
    if (!_createKeywordIndex)
    {
      return 0;
    }

    v6 = _createKeywordIndex;
    v7 = VSKeywordIndexCopyKeywordsForModelIdentifier(_createKeywordIndex, identifier);
    if (v7)
    {
      v8 = v7;
      v9 = [(VSRecognitionSession *)self _createPhaseSortedKeywordsFromArray:v7];
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;
    CFRelease(v6);
    return v9;
  }

  else
  {

    return [(VSRecognitionSession *)self _topLevelKeywords];
  }
}

- (id)_topLevelKeywords
{
  topLevelKeywords = self->_topLevelKeywords;
  if (!topLevelKeywords)
  {
    _createKeywordIndex = [(VSRecognitionSession *)self _createKeywordIndex];
    if (_createKeywordIndex)
    {
      v5 = _createKeywordIndex;
      v6 = VSKeywordIndexCopyKeywordsForTopLevelModels(_createKeywordIndex);
      if (v6)
      {
        v7 = v6;
        topLevelKeywords = [(VSRecognitionSession *)self _createPhaseSortedKeywordsFromArray:v6];

        CFRelease(v5);
        if (topLevelKeywords)
        {
LABEL_8:
          self->_topLevelKeywords = topLevelKeywords;
          return topLevelKeywords;
        }
      }

      else
      {
        CFRelease(v5);
      }
    }

    topLevelKeywords = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_8;
  }

  return topLevelKeywords;
}

- (id)_createPhaseSortedKeywordsFromArray:(id)array
{
  if (![array count])
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [array _scrambledKeywordsAndAddToSet:v5];
  if (self->_keywordPhase)
  {
    v7 = v6;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    allObjects = 0;
    while ([v5 count])
    {
      [v8 removeAllObjects];
      if (self->_keywordPhase)
      {
        v11 = 0;
        do
        {
          if (![v5 count])
          {
            break;
          }

          v12 = [v7 _nextKeywordUsingCursors:Mutable];
          if (v12)
          {
            v13 = v12;
            if (([v8 containsObject:v12] & 1) == 0)
            {
              if (!allObjects)
              {
                allObjects = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [allObjects addObject:v13];
              [v8 addObject:v13];
              [v5 removeObject:v13];
              ++v11;
            }
          }
        }

        while (v11 < self->_keywordPhase);
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    allObjects = [v5 allObjects];
  }

  return allObjects;
}

- (__CFDictionary)_createKeywordIndex
{
  pthread_mutex_lock(&_createKeywordIndex___KeywordIndexLock);
  v3 = MEMORY[0x277CBECE8];
  if (!_createKeywordIndex___KeywordIndexURL)
  {
    _createKeywordIndex___KeywordIndexURL = VSKeywordIndexCopyDefaultURL(*MEMORY[0x277CBECE8]);
  }

  pthread_mutex_unlock(&_createKeywordIndex___KeywordIndexLock);
  if (_createKeywordIndex___KeywordIndexURL)
  {
    v4 = VSKeywordIndexCreateWithURL(*v3, _createKeywordIndex___KeywordIndexURL);
  }

  else
  {
    v4 = 0;
  }

  if ((*(&self->_sessionFlags + 2) & 4) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _VSRecognitionSessionKeywordIndexChangedNotificationHandler, @"com.apple.voiceservices.kwidxchanged", 0, CFNotificationSuspensionBehaviorDrop);
    *&self->_sessionFlags |= 0x40000u;
  }

  return v4;
}

- (int64_t)keywordCount
{
  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];

  return [_currentRecognizeAction _keywordCount];
}

- (id)keywordAtIndex:(int64_t)index
{
  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];

  return [_currentRecognizeAction _keywordAtIndex:index];
}

- (void)setKeywordPhase:(unint64_t)phase
{
  if (self->_keywordPhase != phase)
  {
    self->_keywordPhase = phase;

    self->_topLevelKeywords = 0;
  }
}

- (float)inputLevelDB
{
  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (!_currentRecognizeAction)
  {
    return 0.0;
  }

  [_currentRecognizeAction _inputLevelDB];
  return result;
}

- (float)inputLevel
{
  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (!_currentRecognizeAction)
  {
    return 0.0;
  }

  [_currentRecognizeAction _inputLevel];
  return result;
}

- (void)setInputLevelUpdateInterval:(double)interval
{
  if (self->_levelInterval != interval)
  {
    self->_levelInterval = interval;
    _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
    if (_currentRecognizeAction)
    {

      [_currentRecognizeAction _setInputLevelUpdateInterval:interval];
    }
  }
}

- (void)recognitionResultHandlingThread:(id)thread didHandleResults:(id)results nextAction:(id)action
{
  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];

  [_currentRecognizeAction _handledThreadedResults:results nextAction:action];
}

- (id)_recognitionResultHandlingThread
{
  result = self->_handlingThread;
  if (!result)
  {
    v4 = objc_alloc_init(VSRecognitionResultHandlingThread);
    self->_handlingThread = v4;
    [(VSRecognitionResultHandlingThread *)v4 setDelegate:self];
    return self->_handlingThread;
  }

  return result;
}

- (id)_currentRecognizeAction
{
  currentAction = self->_currentAction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_currentAction;
  }

  else
  {
    return 0;
  }
}

- (void)_setAction:(id)action
{
  currentAction = self->_currentAction;
  if (currentAction != action)
  {
    [(VSRecognitionAction *)self->_currentAction _setSession:0];

    actionCopy = action;
    self->_currentAction = actionCopy;
    [(VSRecognitionAction *)actionCopy _setSession:self];
  }

  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
  sessionFlags = self->_sessionFlags;
  if (_currentRecognizeAction)
  {
    v9 = _currentRecognizeAction;
    if ((sessionFlags & 0x40) != 0)
    {
      if (self->_debugDumpPath)
      {
        [_currentRecognizeAction _setDebugDumpPath:?];
      }

      else
      {
        [_currentRecognizeAction _setDebugDumpEnabled:1];
      }
    }

    [v9 _setPreferredEngine:(*&self->_sessionFlags >> 7) & 3];
    [v9 _setAudioInputPath:self->_audioInputPath];
    [v9 _setInputLevelUpdateInterval:self->_levelInterval];
    [v9 _setEngineResetRequired:(*&self->_sessionFlags >> 12) & 1];
    [v9 _setBluetoothInputAllowed:(*&self->_sessionFlags >> 11) & 1];

    self->_audioInputPath = 0;
    sessionFlags = *&self->_sessionFlags & 0xFFFFEFFF;
  }

  self->_sessionFlags = (sessionFlags & 0xFFFEBFFF);
  if (currentAction != action)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"VSRecognitionSessionKeywordsDidChangeNotification" object:self];
  }
}

- (void)_notifyDelegateOpenURL:(id)l completion:(id)completion
{
  sessionFlags = self->_sessionFlags;
  if ((*&sessionFlags & 8) != 0)
  {
    delegate = self->_delegate;

    [(VSRecognitionSessionDelegate *)delegate recognitionSession:self openURL:l completion:completion];
  }

  else if ((*&sessionFlags & 4) != 0)
  {
    v9 = [VSRecognitionSessionDelegate recognitionSession:"recognitionSession:openURL:" openURL:?];
    v10 = *(completion + 2);

    v10(completion, v9);
  }
}

- (void)_notifyDelegateActionStarted
{
  if ((*&self->_sessionFlags & 2) != 0)
  {
    [(VSRecognitionSessionDelegate *)self->_delegate recognitionSessionDidBeginAction:self];
  }
}

- (BOOL)_actionStarted:(id)started
{
  if (self->_currentAction == started)
  {
    if ([started _hasDeferredStartCallback])
    {
      if (*&self->_sessionFlags)
      {
        v3 = [(VSRecognitionSessionDelegate *)self->_delegate recognitionSessionWillBeginAction:self];
        if (!v3)
        {
          *&self->_sessionFlags |= 0x10000u;
          return v3;
        }
      }

      [(VSRecognitionSession *)self _notifyDelegateActionStarted];
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)_actionCompleted:(id)completed nextAction:(id)action error:(id)error
{
  actionCopy = action;
  completedCopy = completed;
  errorCopy = error;
  currentAction = self->_currentAction;
  if (currentAction == completed)
  {
    sessionFlags = self->_sessionFlags;
    if ((*&sessionFlags & 0x20000) == 0)
    {
      if ((*&sessionFlags & 0x8000) != 0)
      {
        v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{-[VSRecognitionSession methodSignatureForSelector:](self, "methodSignatureForSelector:", a2)}];
        [v12 setSelector:a2];
        [v12 setTarget:self];
        [v12 setArgument:&completedCopy atIndex:2];
        [v12 setArgument:&actionCopy atIndex:3];
        [v12 setArgument:&errorCopy atIndex:4];
        [v12 retainArguments];
        [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v12 invocation:0 repeats:0.0];
      }

      else
      {
        actionCopy2 = action;
        v13 = currentAction;
        if ((*(&self->_sessionFlags + 1) & 2) == 0)
        {
          if ([(VSRecognitionSession *)self _currentRecognizeAction])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              actionCopy2 = 0;
            }
          }
        }

        if (error)
        {
          v10 = 0;
        }

        else
        {
          v10 = actionCopy2;
        }

        [(VSRecognitionSession *)self _setAction:v10, v13, errorCopy, actionCopy, completedCopy];
        if (error || !actionCopy2 && ![v14 completionType])
        {
          *&self->_sessionFlags |= 0x20000u;
        }

        if ((*&self->_sessionFlags & 0x20) != 0)
        {
          [(VSRecognitionSessionDelegate *)self->_delegate recognitionSession:self didCompleteActionWithError:error];
        }
      }
    }
  }
}

- (id)cancelMaintainingKeepAlive:(BOOL)alive
{
  cancel = [(VSRecognitionAction *)self->_currentAction cancel];
  [(VSRecognitionSession *)self _setAction:0];
  *&self->_sessionFlags |= 0x20000u;
  if (!alive)
  {
    [(VSKeepAlive *)self->_keepAlive setActive:0];

    self->_keepAlive = 0;
  }

  handlingThread = self->_handlingThread;
  if (handlingThread)
  {
    [handlingThread invalidate];
    [self->_handlingThread setDelegate:0];

    self->_handlingThread = 0;
  }

  sessionFlags = self->_sessionFlags;
  if ((*&sessionFlags & 0x2000) != 0)
  {
    self->_sessionFlags = (*&sessionFlags & 0xFFFFDFFF);
    [(VSSpeechSynthesizer *)self->_synthesizer stopSpeakingAtNextBoundary:0 synchronously:0 error:0];
  }

  return cancel;
}

- (void)setSensitiveActionsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFBFF | v3);
}

- (BOOL)isActivelyRecognizing
{
  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (_currentRecognizeAction)
  {

    LOBYTE(_currentRecognizeAction) = [_currentRecognizeAction _isActivelyRecognizing];
  }

  return _currentRecognizeAction;
}

- (BOOL)isRecognizing
{
  _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (_currentRecognizeAction)
  {

    LOBYTE(_currentRecognizeAction) = [_currentRecognizeAction _isRecognizing];
  }

  return _currentRecognizeAction;
}

- (id)reset
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  if ((*(&self->_sessionFlags + 2) & 2) != 0 || self->_currentAction)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = *MEMORY[0x277CBEE30];
    userInfoValues = @"session is invalid or not finished";
    userInfoKeys[0] = v4;
    v5 = CFErrorCreateWithUserInfoKeysAndValues(v3, @"VSErrorDomain", -4003, userInfoKeys, &userInfoValues, 1);
  }

  else
  {
    v8 = [[VSRecognitionRecognizeAction alloc] initWithModelIdentifier:self->_modelIdentifier];
    [(VSRecognitionSession *)self _setAction:v8];

    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)beginNextAction
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  sessionFlags = self->_sessionFlags;
  currentAction = self->_currentAction;
  if ((*&sessionFlags & 0x4000) != 0)
  {
    if ((*&sessionFlags & 0x10000) != 0 && currentAction)
    {
      self->_sessionFlags = (*&sessionFlags & 0xFFFEFFFF);
      [(VSRecognitionSession *)self _notifyDelegateActionStarted];
      [(VSRecognitionAction *)self->_currentAction _continueAfterDeferredStart];
      perform = 0;
      goto LABEL_20;
    }

    v8 = *MEMORY[0x277CBECE8];
    userInfoKeys[0] = *MEMORY[0x277CBEE30];
    v9 = @"action already in progress";
LABEL_10:
    userInfoValues = v9;
    perform = CFErrorCreateWithUserInfoKeysAndValues(v8, @"VSErrorDomain", -4003, userInfoKeys, &userInfoValues, 1);
    v10 = perform;
    goto LABEL_20;
  }

  if (!currentAction)
  {
    v8 = *MEMORY[0x277CBECE8];
    userInfoKeys[0] = *MEMORY[0x277CBEE30];
    v9 = @"session is finished or invalid";
    goto LABEL_10;
  }

  v5 = currentAction;
  *&self->_sessionFlags |= 0xC000u;
  perform = [(VSRecognitionAction *)self->_currentAction perform];
  v7 = self->_sessionFlags;
  self->_sessionFlags = (*&v7 & 0xFFFF7FFF);
  if (perform)
  {
    self->_sessionFlags = (*&v7 & 0xFFFF3FFF);
  }

  else
  {
    if (![(VSRecognitionAction *)self->_currentAction _hasDeferredStartCallback])
    {
      [(VSRecognitionSession *)self _notifyDelegateActionStarted];
    }

    if ((*&self->_sessionFlags & 0x40) != 0 && !self->_debugDumpPath)
    {
      _currentRecognizeAction = [(VSRecognitionSession *)self _currentRecognizeAction];
      if (_currentRecognizeAction)
      {
        self->_debugDumpPath = [_currentRecognizeAction _debugDumpPath];
      }
    }

    if (!self->_keepAlive)
    {
      v12 = objc_alloc_init(VSKeepAlive);
      self->_keepAlive = v12;
      [(VSKeepAlive *)v12 setAudioType:3];
      [(VSKeepAlive *)self->_keepAlive setKeepAudioSessionActive:1];
      [(VSKeepAlive *)self->_keepAlive setActive:1];
    }
  }

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return perform;
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFFFD | v4);
    delegate = self->_delegate;
    self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
    v6 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFFFB | v7);
    v8 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFFF7 | v9);
    v10 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFFDF | v11);
    v12 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFFEF | v13);
  }
}

- (void)dealloc
{
  [(VSRecognitionSession *)self cancel];

  [(VSSpeechSynthesizer *)self->_synthesizer setDelegate:0];
  [(VSKeepAlive *)self->_keepAlive setActive:0];

  if ((*(&self->_sessionFlags + 2) & 4) != 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.voiceservices.kwidxchanged", 0);
  }

  v4.receiver = self;
  v4.super_class = VSRecognitionSession;
  [(VSRecognitionSession *)&v4 dealloc];
}

- (VSRecognitionSession)initWithModelIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = VSRecognitionSession;
  v4 = [(VSRecognitionSession *)&v6 init];
  if (v4)
  {
    v4->_modelIdentifier = identifier;
    [(VSRecognitionSession *)v4 _init];
  }

  return v4;
}

- (VSRecognitionSession)init
{
  v5.receiver = self;
  v5.super_class = VSRecognitionSession;
  v2 = [(VSRecognitionSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VSRecognitionSession *)v2 _init];
  }

  return v3;
}

- (void)_init
{
  self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFF87F | 0x600);
  [(VSRecognitionSession *)self reset];
  v2 = time(0);

  srandom(v2);
}

@end