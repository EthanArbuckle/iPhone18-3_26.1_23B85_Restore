@interface VSRecognitionSession
- (BOOL)_actionStarted:(id)a3;
- (BOOL)isActivelyRecognizing;
- (BOOL)isRecognizing;
- (BOOL)setNextRecognitionAudioInputPath:(id)a3;
- (VSRecognitionSession)init;
- (VSRecognitionSession)initWithModelIdentifier:(id)a3;
- (__CFDictionary)_createKeywordIndex;
- (float)inputLevel;
- (float)inputLevelDB;
- (id)_beginSpeakingAttributedString:(id)a3;
- (id)_beginSpeakingString:(id)a3 attributedString:(id)a4;
- (id)_createPhaseSortedKeywordsFromArray:(id)a3;
- (id)_currentRecognizeAction;
- (id)_keywordsForModelIdentifier:(id)a3;
- (id)_recognitionResultHandlingThread;
- (id)_topLevelKeywords;
- (id)beginNextAction;
- (id)beginSpeakingFeedbackString;
- (id)beginSpeakingString:(id)a3;
- (id)cancelMaintainingKeepAlive:(BOOL)a3;
- (id)keywordAtIndex:(int64_t)a3;
- (id)reset;
- (int64_t)keywordCount;
- (void)_actionCompleted:(id)a3 nextAction:(id)a4 error:(id)a5;
- (void)_init;
- (void)_keywordIndexChanged;
- (void)_notifyDelegateActionStarted;
- (void)_notifyDelegateFinishedSpeakingWithError:(id)a3;
- (void)_notifyDelegateOpenURL:(id)a3 completion:(id)a4;
- (void)_setAction:(id)a3;
- (void)dealloc;
- (void)recognitionResultHandlingThread:(id)a3 didHandleResults:(id)a4 nextAction:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setInputLevelUpdateInterval:(double)a3;
- (void)setKeywordPhase:(unint64_t)a3;
- (void)setPerformRecognitionHandlerActions:(BOOL)a3;
- (void)setSensitiveActionsEnabled:(BOOL)a3;
- (void)speechSynthesizer:(id)a3 didFinishSpeakingRequest:(id)a4 successfully:(BOOL)a5 phonemesSpoken:(id)a6 withError:(id)a7;
@end

@implementation VSRecognitionSession

- (void)setPerformRecognitionHandlerActions:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_sessionFlags = (*&self->_sessionFlags & 0xFFFFFDFF | v3);
}

- (BOOL)setNextRecognitionAudioInputPath:(id)a3
{
  if (self->_audioInputPath == a3)
  {
    return 1;
  }

  v5 = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (!v5)
  {

    self->_audioInputPath = a3;
    return 1;
  }

  return [v5 _setAudioInputPath:a3];
}

- (void)speechSynthesizer:(id)a3 didFinishSpeakingRequest:(id)a4 successfully:(BOOL)a5 phonemesSpoken:(id)a6 withError:(id)a7
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__VSRecognitionSession_speechSynthesizer_didFinishSpeakingRequest_successfully_phonemesSpoken_withError___block_invoke;
  block[3] = &unk_279E4F528;
  block[4] = a3;
  block[5] = self;
  block[6] = a7;
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

- (void)_notifyDelegateFinishedSpeakingWithError:(id)a3
{
  if ((*&self->_sessionFlags & 0x10) != 0)
  {
    [(VSRecognitionSessionDelegate *)self->_delegate recognitionSession:self didFinishSpeakingFeedbackStringWithError:a3];
  }
}

- (id)_beginSpeakingString:(id)a3 attributedString:(id)a4
{
  if (!self->_synthesizer)
  {
    v7 = [[VSSpeechSynthesizer alloc] initForInputFeedback];
    self->_synthesizer = v7;
    [(VSSpeechSynthesizer *)v7 setDelegate:self];
  }

  if (!self->_languageID)
  {
    self->_languageID = VSPreferencesCopySpokenLanguageIdentifier();
  }

  v8 = objc_alloc_init(VSSpeechRequest);
  v9 = v8;
  if (a4)
  {
    [(VSSpeechRequest *)v8 setAttributedText:a4];
  }

  else
  {
    [(VSSpeechRequest *)v8 setText:a3];
  }

  [(VSSpeechRequest *)v9 setLanguageCode:self->_languageID];
  [(VSSpeechRequest *)v9 setOutputPath:0];
  if (![(VSSpeechSynthesizer *)self->_synthesizer startSpeakingRequest:v9])
  {
    *&self->_sessionFlags |= 0x2000u;
  }

  return 0;
}

- (id)_beginSpeakingAttributedString:(id)a3
{
  if ([a3 length])
  {

    return [(VSRecognitionSession *)self _beginSpeakingString:0 attributedString:a3];
  }

  else
  {
    [(VSRecognitionSession *)self _notifyDelegateFinishedSpeakingWithError:0];
    return 0;
  }
}

- (id)beginSpeakingString:(id)a3
{
  if ([a3 length])
  {

    return [(VSRecognitionSession *)self _beginSpeakingString:a3 attributedString:0];
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
    v3 = [(VSRecognitionSession *)self spokenFeedbackAttributedString];
    if (v3)
    {
      v4 = *MEMORY[0x277D85DE8];

      return [(VSRecognitionSession *)self _beginSpeakingAttributedString:v3];
    }

    else
    {
      v11 = [(VSRecognitionSession *)self spokenFeedbackString];
      v12 = *MEMORY[0x277D85DE8];

      return [(VSRecognitionSession *)self beginSpeakingString:v11];
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
    v4 = [MEMORY[0x277CCAB98] defaultCenter];

    [v4 postNotificationName:@"VSRecognitionSessionKeywordsDidChangeNotification" object:self userInfo:0];
  }
}

- (id)_keywordsForModelIdentifier:(id)a3
{
  if (a3)
  {
    v5 = [(VSRecognitionSession *)self _createKeywordIndex];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = VSKeywordIndexCopyKeywordsForModelIdentifier(v5, a3);
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
    v4 = [(VSRecognitionSession *)self _createKeywordIndex];
    if (v4)
    {
      v5 = v4;
      v6 = VSKeywordIndexCopyKeywordsForTopLevelModels(v4);
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

- (id)_createPhaseSortedKeywordsFromArray:(id)a3
{
  if (![a3 count])
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [a3 _scrambledKeywordsAndAddToSet:v5];
  if (self->_keywordPhase)
  {
    v7 = v6;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    v10 = 0;
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
              if (!v10)
              {
                v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v10 addObject:v13];
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
    v10 = [v5 allObjects];
  }

  return v10;
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
  v2 = [(VSRecognitionSession *)self _currentRecognizeAction];

  return [v2 _keywordCount];
}

- (id)keywordAtIndex:(int64_t)a3
{
  v4 = [(VSRecognitionSession *)self _currentRecognizeAction];

  return [v4 _keywordAtIndex:a3];
}

- (void)setKeywordPhase:(unint64_t)a3
{
  if (self->_keywordPhase != a3)
  {
    self->_keywordPhase = a3;

    self->_topLevelKeywords = 0;
  }
}

- (float)inputLevelDB
{
  v2 = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (!v2)
  {
    return 0.0;
  }

  [v2 _inputLevelDB];
  return result;
}

- (float)inputLevel
{
  v2 = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (!v2)
  {
    return 0.0;
  }

  [v2 _inputLevel];
  return result;
}

- (void)setInputLevelUpdateInterval:(double)a3
{
  if (self->_levelInterval != a3)
  {
    self->_levelInterval = a3;
    v4 = [(VSRecognitionSession *)self _currentRecognizeAction];
    if (v4)
    {

      [v4 _setInputLevelUpdateInterval:a3];
    }
  }
}

- (void)recognitionResultHandlingThread:(id)a3 didHandleResults:(id)a4 nextAction:(id)a5
{
  v7 = [(VSRecognitionSession *)self _currentRecognizeAction];

  [v7 _handledThreadedResults:a4 nextAction:a5];
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

- (void)_setAction:(id)a3
{
  currentAction = self->_currentAction;
  if (currentAction != a3)
  {
    [(VSRecognitionAction *)self->_currentAction _setSession:0];

    v6 = a3;
    self->_currentAction = v6;
    [(VSRecognitionAction *)v6 _setSession:self];
  }

  v7 = [(VSRecognitionSession *)self _currentRecognizeAction];
  sessionFlags = self->_sessionFlags;
  if (v7)
  {
    v9 = v7;
    if ((sessionFlags & 0x40) != 0)
    {
      if (self->_debugDumpPath)
      {
        [v7 _setDebugDumpPath:?];
      }

      else
      {
        [v7 _setDebugDumpEnabled:1];
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
  if (currentAction != a3)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];

    [v10 postNotificationName:@"VSRecognitionSessionKeywordsDidChangeNotification" object:self];
  }
}

- (void)_notifyDelegateOpenURL:(id)a3 completion:(id)a4
{
  sessionFlags = self->_sessionFlags;
  if ((*&sessionFlags & 8) != 0)
  {
    delegate = self->_delegate;

    [(VSRecognitionSessionDelegate *)delegate recognitionSession:self openURL:a3 completion:a4];
  }

  else if ((*&sessionFlags & 4) != 0)
  {
    v9 = [VSRecognitionSessionDelegate recognitionSession:"recognitionSession:openURL:" openURL:?];
    v10 = *(a4 + 2);

    v10(a4, v9);
  }
}

- (void)_notifyDelegateActionStarted
{
  if ((*&self->_sessionFlags & 2) != 0)
  {
    [(VSRecognitionSessionDelegate *)self->_delegate recognitionSessionDidBeginAction:self];
  }
}

- (BOOL)_actionStarted:(id)a3
{
  if (self->_currentAction == a3)
  {
    if ([a3 _hasDeferredStartCallback])
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

- (void)_actionCompleted:(id)a3 nextAction:(id)a4 error:(id)a5
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  currentAction = self->_currentAction;
  if (currentAction == a3)
  {
    sessionFlags = self->_sessionFlags;
    if ((*&sessionFlags & 0x20000) == 0)
    {
      if ((*&sessionFlags & 0x8000) != 0)
      {
        v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{-[VSRecognitionSession methodSignatureForSelector:](self, "methodSignatureForSelector:", a2)}];
        [v12 setSelector:a2];
        [v12 setTarget:self];
        [v12 setArgument:&v17 atIndex:2];
        [v12 setArgument:&v16 atIndex:3];
        [v12 setArgument:&v15 atIndex:4];
        [v12 retainArguments];
        [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v12 invocation:0 repeats:0.0];
      }

      else
      {
        v9 = a4;
        v13 = currentAction;
        if ((*(&self->_sessionFlags + 1) & 2) == 0)
        {
          if ([(VSRecognitionSession *)self _currentRecognizeAction])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v9 = 0;
            }
          }
        }

        if (a5)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }

        [(VSRecognitionSession *)self _setAction:v10, v13, v15, v16, v17];
        if (a5 || !v9 && ![v14 completionType])
        {
          *&self->_sessionFlags |= 0x20000u;
        }

        if ((*&self->_sessionFlags & 0x20) != 0)
        {
          [(VSRecognitionSessionDelegate *)self->_delegate recognitionSession:self didCompleteActionWithError:a5];
        }
      }
    }
  }
}

- (id)cancelMaintainingKeepAlive:(BOOL)a3
{
  v5 = [(VSRecognitionAction *)self->_currentAction cancel];
  [(VSRecognitionSession *)self _setAction:0];
  *&self->_sessionFlags |= 0x20000u;
  if (!a3)
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

  return v5;
}

- (void)setSensitiveActionsEnabled:(BOOL)a3
{
  if (a3)
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
  v2 = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (v2)
  {

    LOBYTE(v2) = [v2 _isActivelyRecognizing];
  }

  return v2;
}

- (BOOL)isRecognizing
{
  v2 = [(VSRecognitionSession *)self _currentRecognizeAction];
  if (v2)
  {

    LOBYTE(v2) = [v2 _isRecognizing];
  }

  return v2;
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
      v6 = 0;
      goto LABEL_20;
    }

    v8 = *MEMORY[0x277CBECE8];
    userInfoKeys[0] = *MEMORY[0x277CBEE30];
    v9 = @"action already in progress";
LABEL_10:
    userInfoValues = v9;
    v6 = CFErrorCreateWithUserInfoKeysAndValues(v8, @"VSErrorDomain", -4003, userInfoKeys, &userInfoValues, 1);
    v10 = v6;
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
  v6 = [(VSRecognitionAction *)self->_currentAction perform];
  v7 = self->_sessionFlags;
  self->_sessionFlags = (*&v7 & 0xFFFF7FFF);
  if (v6)
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
      v11 = [(VSRecognitionSession *)self _currentRecognizeAction];
      if (v11)
      {
        self->_debugDumpPath = [v11 _debugDumpPath];
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
  return v6;
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
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

- (VSRecognitionSession)initWithModelIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSRecognitionSession;
  v4 = [(VSRecognitionSession *)&v6 init];
  if (v4)
  {
    v4->_modelIdentifier = a3;
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