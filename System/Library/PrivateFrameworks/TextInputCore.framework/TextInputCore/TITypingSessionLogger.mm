@interface TITypingSessionLogger
- (BOOL)shouldPrintEvent:(id)a3;
- (TITypingSessionLogger)init;
- (TITypingSessionLogger)initWithCoder:(id)a3;
- (id)logDetailsForKeyboardState:(id)a3;
- (id)temporaryKeyboardsDirectory;
- (void)acceptingCandidateWithTrigger:(id)a3;
- (void)addDrawInputWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4;
- (void)addKeyInput:(id)a3 keyboardState:(id)a4;
- (void)addTouchEvent:(id)a3;
- (void)candidateAccepted:(id)a3 withInput:(id)a4 documentState:(id)a5 inputContext:(id)a6 inputStem:(id)a7 predictionBarHit:(BOOL)a8 useCandidateSelection:(BOOL)a9 candidateIndex:(int64_t)a10 keyboardState:(id)a11;
- (void)candidatesOffered:(id)a3 keyboardState:(id)a4;
- (void)changingContextWithTrigger:(id)a3;
- (void)layoutDidChange:(id)a3 keyboardState:(id)a4;
- (void)saveRecording;
- (void)sendTo:(id)a3;
- (void)setClientID:(id)a3 keyboardState:(id)a4;
@end

@implementation TITypingSessionLogger

- (id)temporaryKeyboardsDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Keyboard"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  return v3;
}

- (void)saveRecording
{
  v25 = *MEMORY[0x277D85DE8];
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1)
  {
    v22 = 0;
    v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v22];
    v4 = v22;
    if (v4)
    {
      v5 = IXADefaultLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = [v4 description];
        v8 = [v6 stringWithFormat:@"%s failed to store session in file: %@", "-[TITypingSessionLogger saveRecording]", v7];
        *buf = 138412290;
        v24 = v8;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
      v9 = [v5 stringForKey:@"typingSessionRecordingName"];
      v10 = v9;
      v11 = &stru_283FDFAF8;
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      if (![(__CFString *)v12 length])
      {
        v13 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v13 setDateFormat:@"MM-dd-HH-mm"];
        v14 = [MEMORY[0x277CBEAA8] date];
        v15 = [v13 stringFromDate:v14];

        v12 = v15;
      }

      v16 = [(TITypingSessionLogger *)self temporaryKeyboardsDirectory];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"typingSessionLog-%@.data", v12];
      v18 = [v16 stringByAppendingPathComponent:v17];

      [v3 writeToFile:v18 atomically:1];
    }

    v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
    if ([v19 BOOLForKey:@"typingSessionNotificationsEnabled"])
    {
      v20 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v20 postNotificationName:@"com.apple.keyboard.inputAnalytics.sessionRecordingDidComplete" object:0 userInfo:0 deliverImmediately:1];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)logDetailsForKeyboardState:(id)a3
{
  v3 = a3;
  v4 = [v3 inputMode];
  v5 = TIInputModeGetLanguage();

  v6 = [v3 inputMode];
  v7 = TIInputModeGetRegion();

  v8 = [v3 layoutState];
  v9 = [v8 softwareLayout];

  v10 = [v3 hardwareKeyboardMode];
  v11 = [v3 floatingKeyboardMode];
  v12 = [v3 splitKeyboardMode];
  v13 = [v3 landscapeOrientation];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@|%d|%d|%d|%d|%@", v5, v7, v10, v11, v12, v13, v9];

  return v14;
}

- (void)sendTo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_typingEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) sendTo:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldPrintEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            objc_opt_isKindOfClass();
          }
        }
      }
    }

    v4 = 0;
  }

  return v4;
}

- (void)setClientID:(id)a3 keyboardState:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IXADefaultLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:v7];
    v14 = [v12 stringWithFormat:@"%s Set Client ID: %@, KeyboardState=%@", "-[TITypingSessionLogger setClientID:keyboardState:]", v6, v13];
    *buf = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventSetClientID alloc] initWithClientID:v6 keyboardState:v7];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)layoutDidChange:(id)a3 keyboardState:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IXADefaultLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v6 firstKeyString];
    v14 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:v7];
    v15 = [v12 stringWithFormat:@"%s Layout Did Change: firstKeyString=%s, KeyboardState=%@", "-[TITypingSessionLogger layoutDidChange:keyboardState:]", v13, v14];
    *buf = 138412290;
    v17 = v15;
    _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventLayoutDidChange alloc] initWithLayout:v6 keyboardState:v7];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)changingContextWithTrigger:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Changing context, trigger=%@", "-[TITypingSessionLogger changingContextWithTrigger:]", v4];
    *buf = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v7 = [[TIKeyboardInteractionProtocolEventChangingContextWithTrigger alloc] initWithContextChangeTrigger:v4];
  [(NSMutableArray *)typingEvents addObject:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)candidateAccepted:(id)a3 withInput:(id)a4 documentState:(id)a5 inputContext:(id)a6 inputStem:(id)a7 predictionBarHit:(BOOL)a8 useCandidateSelection:(BOOL)a9 candidateIndex:(int64_t)a10 keyboardState:(id)a11
{
  v30 = a8;
  v33 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a11;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = IXADefaultLogFacility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v27 = MEMORY[0x277CCACA8];
    v29 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:v17];
    v28 = [v27 stringWithFormat:@"%s Candidate accepted, Cand=%@, KeyboardState=%@", "-[TITypingSessionLogger candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]", v16, v29];
    *buf = 138412290;
    v32 = v28;
    _os_log_debug_impl(&dword_22CA55000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  LOBYTE(v26) = a9;
  v24 = [[TIKeyboardInteractionProtocolEventCandidateAccepted alloc] initWithCandidateAccepted:v16 withInput:v21 documentState:v20 inputContext:v19 inputStem:v18 predictionBarHit:v30 useCandidateSelection:v26 candidateIndex:a10 keyboardState:v17];

  [(NSMutableArray *)typingEvents addObject:v24];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)acceptingCandidateWithTrigger:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Accepting candidate, trigger=%@", "-[TITypingSessionLogger acceptingCandidateWithTrigger:]", v4];
    *buf = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v7 = [[TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger alloc] initWithCandidateAcceptedTrigger:v4];
  [(NSMutableArray *)typingEvents addObject:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)candidatesOffered:(id)a3 keyboardState:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = IXADefaultLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v6 corrections];
      v14 = [v13 autocorrection];
      v15 = [v6 predictions];
      v16 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:v7];
      v17 = [v12 stringWithFormat:@"%s Candidates offered, AC=%@, Predictions=%@, KeyboardState=%@", "-[TITypingSessionLogger candidatesOffered:keyboardState:]", v14, v15, v16];
      *buf = 138412290;
      v19 = v17;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventCandidatesOffered alloc] initWithCandidatesOffered:v6 keyboardState:v7];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addDrawInputWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4
{
  typingEvents = self->_typingEvents;
  v6 = a4;
  v7 = [[TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount alloc] initWithSyllableCount:a3 keyboardState:v6];

  [(NSMutableArray *)typingEvents addObject:v7];
}

- (void)addTouchEvent:(id)a3
{
  typingEvents = self->_typingEvents;
  v4 = a3;
  v5 = [[TIKeyboardInteractionProtocolEventAddTouchEvent alloc] initWithTouchEvent:v4];

  [(NSMutableArray *)typingEvents addObject:v5];
}

- (void)addKeyInput:(id)a3 keyboardState:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IXADefaultLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:v7];
    v14 = [v12 stringWithFormat:@"%s Add Key Input: %@, KeyboardState=%@", "-[TITypingSessionLogger addKeyInput:keyboardState:]", v6, v13];
    *buf = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventAddKeyInput alloc] initWithKeyInput:v6 keyboardState:v7];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (TITypingSessionLogger)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TITypingSessionLogger;
  v5 = [(TITypingSessionLogger *)&v23 init];
  if (v5)
  {
    v22 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v22 setWithObjects:{v21, v20, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"typingEvents"];
    typingEvents = v5->_typingEvents;
    v5->_typingEvents = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typingSession"];
    savedSession = v5->_savedSession;
    v5->_savedSession = v17;
  }

  return v5;
}

- (TITypingSessionLogger)init
{
  v6.receiver = self;
  v6.super_class = TITypingSessionLogger;
  v2 = [(TITypingSessionLogger *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    typingEvents = v2->_typingEvents;
    v2->_typingEvents = v3;
  }

  return v2;
}

@end