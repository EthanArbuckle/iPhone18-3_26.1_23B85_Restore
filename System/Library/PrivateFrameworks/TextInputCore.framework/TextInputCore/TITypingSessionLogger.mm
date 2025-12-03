@interface TITypingSessionLogger
- (BOOL)shouldPrintEvent:(id)event;
- (TITypingSessionLogger)init;
- (TITypingSessionLogger)initWithCoder:(id)coder;
- (id)logDetailsForKeyboardState:(id)state;
- (id)temporaryKeyboardsDirectory;
- (void)acceptingCandidateWithTrigger:(id)trigger;
- (void)addDrawInputWithSyllableCount:(unint64_t)count keyboardState:(id)state;
- (void)addKeyInput:(id)input keyboardState:(id)state;
- (void)addTouchEvent:(id)event;
- (void)candidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1;
- (void)candidatesOffered:(id)offered keyboardState:(id)state;
- (void)changingContextWithTrigger:(id)trigger;
- (void)layoutDidChange:(id)change keyboardState:(id)state;
- (void)saveRecording;
- (void)sendTo:(id)to;
- (void)setClientID:(id)d keyboardState:(id)state;
@end

@implementation TITypingSessionLogger

- (id)temporaryKeyboardsDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Keyboard"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  [defaultManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

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
        date = [MEMORY[0x277CBEAA8] date];
        v15 = [v13 stringFromDate:date];

        v12 = v15;
      }

      temporaryKeyboardsDirectory = [(TITypingSessionLogger *)self temporaryKeyboardsDirectory];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"typingSessionLog-%@.data", v12];
      v18 = [temporaryKeyboardsDirectory stringByAppendingPathComponent:v17];

      [v3 writeToFile:v18 atomically:1];
    }

    v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
    if ([v19 BOOLForKey:@"typingSessionNotificationsEnabled"])
    {
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.keyboard.inputAnalytics.sessionRecordingDidComplete" object:0 userInfo:0 deliverImmediately:1];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)logDetailsForKeyboardState:(id)state
{
  stateCopy = state;
  inputMode = [stateCopy inputMode];
  v5 = TIInputModeGetLanguage();

  inputMode2 = [stateCopy inputMode];
  v7 = TIInputModeGetRegion();

  layoutState = [stateCopy layoutState];
  softwareLayout = [layoutState softwareLayout];

  hardwareKeyboardMode = [stateCopy hardwareKeyboardMode];
  floatingKeyboardMode = [stateCopy floatingKeyboardMode];
  splitKeyboardMode = [stateCopy splitKeyboardMode];
  landscapeOrientation = [stateCopy landscapeOrientation];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@|%d|%d|%d|%d|%@", v5, v7, hardwareKeyboardMode, floatingKeyboardMode, splitKeyboardMode, landscapeOrientation, softwareLayout];

  return v14;
}

- (void)sendTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

        [*(*(&v11 + 1) + 8 * v9++) sendTo:{toCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldPrintEvent:(id)event
{
  eventCopy = event;
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

- (void)setClientID:(id)d keyboardState:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stateCopy = state;
  v8 = IXADefaultLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:stateCopy];
    v14 = [v12 stringWithFormat:@"%s Set Client ID: %@, KeyboardState=%@", "-[TITypingSessionLogger setClientID:keyboardState:]", dCopy, v13];
    *buf = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventSetClientID alloc] initWithClientID:dCopy keyboardState:stateCopy];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)layoutDidChange:(id)change keyboardState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  stateCopy = state;
  v8 = IXADefaultLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    firstKeyString = [changeCopy firstKeyString];
    v14 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:stateCopy];
    v15 = [v12 stringWithFormat:@"%s Layout Did Change: firstKeyString=%s, KeyboardState=%@", "-[TITypingSessionLogger layoutDidChange:keyboardState:]", firstKeyString, v14];
    *buf = 138412290;
    v17 = v15;
    _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventLayoutDidChange alloc] initWithLayout:changeCopy keyboardState:stateCopy];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)changingContextWithTrigger:(id)trigger
{
  v12 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    triggerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Changing context, trigger=%@", "-[TITypingSessionLogger changingContextWithTrigger:]", triggerCopy];
    *buf = 138412290;
    v11 = triggerCopy;
    _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v7 = [[TIKeyboardInteractionProtocolEventChangingContextWithTrigger alloc] initWithContextChangeTrigger:triggerCopy];
  [(NSMutableArray *)typingEvents addObject:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)candidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1
{
  hitCopy = hit;
  v33 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  keyboardStateCopy = keyboardState;
  stemCopy = stem;
  contextCopy = context;
  stateCopy = state;
  inputCopy = input;
  v22 = IXADefaultLogFacility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v27 = MEMORY[0x277CCACA8];
    v29 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:keyboardStateCopy];
    v28 = [v27 stringWithFormat:@"%s Candidate accepted, Cand=%@, KeyboardState=%@", "-[TITypingSessionLogger candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]", acceptedCopy, v29];
    *buf = 138412290;
    v32 = v28;
    _os_log_debug_impl(&dword_22CA55000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  LOBYTE(v26) = selection;
  v24 = [[TIKeyboardInteractionProtocolEventCandidateAccepted alloc] initWithCandidateAccepted:acceptedCopy withInput:inputCopy documentState:stateCopy inputContext:contextCopy inputStem:stemCopy predictionBarHit:hitCopy useCandidateSelection:v26 candidateIndex:index keyboardState:keyboardStateCopy];

  [(NSMutableArray *)typingEvents addObject:v24];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)acceptingCandidateWithTrigger:(id)trigger
{
  v12 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    triggerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Accepting candidate, trigger=%@", "-[TITypingSessionLogger acceptingCandidateWithTrigger:]", triggerCopy];
    *buf = 138412290;
    v11 = triggerCopy;
    _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v7 = [[TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger alloc] initWithCandidateAcceptedTrigger:triggerCopy];
  [(NSMutableArray *)typingEvents addObject:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)candidatesOffered:(id)offered keyboardState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  offeredCopy = offered;
  stateCopy = state;
  if (offeredCopy)
  {
    v8 = IXADefaultLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = MEMORY[0x277CCACA8];
      corrections = [offeredCopy corrections];
      autocorrection = [corrections autocorrection];
      predictions = [offeredCopy predictions];
      v16 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:stateCopy];
      v17 = [v12 stringWithFormat:@"%s Candidates offered, AC=%@, Predictions=%@, KeyboardState=%@", "-[TITypingSessionLogger candidatesOffered:keyboardState:]", autocorrection, predictions, v16];
      *buf = 138412290;
      v19 = v17;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventCandidatesOffered alloc] initWithCandidatesOffered:offeredCopy keyboardState:stateCopy];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addDrawInputWithSyllableCount:(unint64_t)count keyboardState:(id)state
{
  typingEvents = self->_typingEvents;
  stateCopy = state;
  v7 = [[TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount alloc] initWithSyllableCount:count keyboardState:stateCopy];

  [(NSMutableArray *)typingEvents addObject:v7];
}

- (void)addTouchEvent:(id)event
{
  typingEvents = self->_typingEvents;
  eventCopy = event;
  v5 = [[TIKeyboardInteractionProtocolEventAddTouchEvent alloc] initWithTouchEvent:eventCopy];

  [(NSMutableArray *)typingEvents addObject:v5];
}

- (void)addKeyInput:(id)input keyboardState:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  stateCopy = state;
  v8 = IXADefaultLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(TITypingSessionLogger *)self logDetailsForKeyboardState:stateCopy];
    v14 = [v12 stringWithFormat:@"%s Add Key Input: %@, KeyboardState=%@", "-[TITypingSessionLogger addKeyInput:keyboardState:]", inputCopy, v13];
    *buf = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  typingEvents = self->_typingEvents;
  v10 = [[TIKeyboardInteractionProtocolEventAddKeyInput alloc] initWithKeyInput:inputCopy keyboardState:stateCopy];
  [(NSMutableArray *)typingEvents addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (TITypingSessionLogger)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"typingEvents"];
    typingEvents = v5->_typingEvents;
    v5->_typingEvents = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typingSession"];
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
    array = [MEMORY[0x277CBEB18] array];
    typingEvents = v2->_typingEvents;
    v2->_typingEvents = array;
  }

  return v2;
}

@end