@interface VSRecognitionRecognizeAction
- (BOOL)_keywordIndexChanged;
- (BOOL)_setAudioInputPath:(id)path;
- (BOOL)_setBluetoothInputAllowed:(BOOL)allowed;
- (BOOL)_setDebugDumpEnabled:(BOOL)enabled dumpPath:(id)path;
- (BOOL)_setEngineResetRequired:(BOOL)required;
- (BOOL)_setPreferredEngine:(int)engine;
- (VSRecognitionRecognizeAction)initWithModelIdentifier:(id)identifier;
- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)callbacks info:(void *)info;
- (float)_inputLevel;
- (float)_inputLevelDB;
- (id)_keywordAtIndex:(int64_t)index;
- (id)_keywords;
- (id)cancel;
- (id)perform;
- (int64_t)_keywordCount;
- (void)_configureNewRecognitionInstance;
- (void)_handleRecognitionCompleted:(__VSRecognition *)completed withResults:(__CFArray *)results error:(__CFError *)error;
- (void)_handleRecognitionPrepared:(__VSRecognition *)prepared;
- (void)_handleRecognitionStarted:(__VSRecognition *)started;
- (void)_handledThreadedResults:(id)results nextAction:(id)action;
- (void)_releaseFromPrepare;
- (void)_reset;
- (void)_setResults:(id)results;
- (void)dealloc;
@end

@implementation VSRecognitionRecognizeAction

- (void)_handledThreadedResults:(id)results nextAction:(id)action
{
  if (self->_results == results)
  {
    [(VSRecognitionRecognizeAction *)self _setResults:0];

    [(VSRecognitionAction *)self completeWithNextAction:action error:0];
  }
}

- (void)_handleRecognitionCompleted:(__VSRecognition *)completed withResults:(__CFArray *)results error:(__CFError *)error
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_recognition != completed)
  {
    goto LABEL_51;
  }

  selfCopy = self;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  if (!results || error)
  {
    v19 = 0;
    createHandler = 0;
  }

  else
  {
    v12 = [(__CFArray *)results count];
    v14 = v12 - 1;
    if (v12 < 1)
    {
      v10 = 0;
      v9 = 0;
      v19 = 0;
      createHandler = 0;
    }

    else
    {
      modelIdentifier = 0;
      v29 = 0;
      v9 = 0;
      v15 = 0;
      createHandler = 0;
      v17 = 0;
      v18 = 1;
      *&v13 = 138412290;
      v26 = v13;
      otherArray = results;
      while (1)
      {
        v19 = [(__CFArray *)results objectAtIndex:v15, v26];
        if (*&self->_recognizeFlags)
        {
          v20 = VSGetLogDefault();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v26;
            v31 = v19;
            _os_log_debug_impl(&dword_272850000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        if (v18)
        {
          createHandler = [v19 createHandler];
          ++v17;
          if (createHandler)
          {
            v21 = objc_opt_respondsToSelector();
            v9 = v21;
            if (v15 >= v14)
            {
              results = [(__CFArray *)results subarrayWithRange:v15, 1];
            }

            else if (v21)
            {
              modelIdentifier = [v19 modelIdentifier];
              if (v15)
              {
                v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v29 addObject:v19];
              }

              v9 = 1;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else if ([objc_msgSend(v19 "modelIdentifier")])
        {
          if (v29)
          {
            [v29 addObject:v19];
          }

          ++v17;
        }

        else if (!v29)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v33.location = 0;
          v33.length = v15;
          CFArrayAppendArray(v29, otherArray, v33);
        }

        if (v14 == v15)
        {
          break;
        }

        v18 = createHandler == 0;
        ++v15;
        if (!((createHandler == 0) | v9 & 1))
        {
          v9 = 0;
          break;
        }
      }

      v11 = v17 == 0;
      error = 0;
      v10 = v29;
    }
  }

  [(VSRecognitionRecognizeAction *)self _setResults:0];
  if (v10)
  {
    resultsCopy = v10;
  }

  else
  {
    resultsCopy = results;
  }

  if (error || !v11)
  {
    if (createHandler)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![createHandler requiresThreadedProcessing])
      {
        if (v9)
        {
          [(__CFArray *)resultsCopy makeObjectsPerformSelector:sel_setRecognitionAction_ withObject:self];
          _actionForEmptyResults = [createHandler actionForRecognitionResults:resultsCopy];
          [(__CFArray *)resultsCopy makeObjectsPerformSelector:sel_setRecognitionAction_ withObject:0];
        }

        else
        {
          [v19 setRecognitionAction:self];
          _actionForEmptyResults = [createHandler actionForRecognitionResult:v19];
          [v19 setRecognitionAction:0];
        }

        goto LABEL_46;
      }

      if ((v9 & 1) == 0)
      {
        resultsCopy = [MEMORY[0x277CBEA60] arrayWithObject:v19];
      }

      [(VSRecognitionRecognizeAction *)self _setResults:resultsCopy];
      [objc_msgSend(-[VSRecognitionAction _session](self "_session")];
    }

    _actionForEmptyResults = 0;
  }

  else
  {
    _actionForEmptyResults = [(VSRecognitionRecognizeAction *)self _actionForEmptyResults];
  }

LABEL_46:
  recognition = self->_recognition;
  if (recognition)
  {
    CFRelease(recognition);
    self->_recognition = 0;
  }

  if (!self->_results)
  {
    [(VSRecognitionAction *)self completeWithNextAction:_actionForEmptyResults error:error];
  }

LABEL_51:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecognitionStarted:(__VSRecognition *)started
{
  if (self->_recognition == started)
  {
    *&self->_recognizeFlags |= 0x20u;
  }
}

- (void)_handleRecognitionPrepared:(__VSRecognition *)prepared
{
  if (self->_recognition == prepared && [-[VSRecognitionAction _session](self "_session")] && self->_recognition)
  {

    [(VSRecognitionRecognizeAction *)self _releaseFromPrepare];
  }
}

- (void)_reset
{
  *&self->_recognizeFlags &= 0xD7u;
  audioInputPath = self->_audioInputPath;
  if (audioInputPath)
  {

    self->_audioInputPath = 0;
  }

  recognition = self->_recognition;
  if (recognition)
  {
    CFRelease(recognition);
  }

  self->_recognition = 0;

  [(VSRecognitionRecognizeAction *)self _setResults:0];
}

- (void)_setResults:(id)results
{
  results = self->_results;
  if (results != results)
  {

    self->_results = results;
  }
}

- (void)_releaseFromPrepare
{
  cf = 0;
  if (!_VSRecognitionPrepareAndBegin(self->_recognition, 1, &cf))
  {
    CFRelease(self->_recognition);
    self->_recognition = 0;
    [(VSRecognitionAction *)self completeWithNextAction:0 error:cf];
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (id)cancel
{
  v5 = 0;
  recognition = self->_recognition;
  if (recognition)
  {
    VSRecognitionCancel(recognition, &v5);
    CFRelease(self->_recognition);
    self->_recognition = 0;
  }

  [(VSRecognitionRecognizeAction *)self _setResults:0];
  return v5;
}

- (id)perform
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (self->_recognition)
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *MEMORY[0x277CBEE30];
    userInfoValues = @"recognition already attempted or in progress";
    userInfoKeys[0] = v3;
    v4 = -4003;
LABEL_3:
    v10 = CFErrorCreateWithUserInfoKeysAndValues(v2, @"VSErrorDomain", v4, userInfoKeys, &userInfoValues, 1);
    goto LABEL_4;
  }

  *&self->_recognizeFlags &= ~0x20u;
  [(VSRecognitionRecognizeAction *)self _configureNewRecognitionInstance];
  recognition = self->_recognition;
  if (!recognition)
  {
    v2 = *MEMORY[0x277CBECE8];
    v9 = *MEMORY[0x277CBEE30];
    userInfoValues = @"could not create recognition instance";
    userInfoKeys[0] = v9;
    v4 = -4001;
    goto LABEL_3;
  }

  if (!_VSRecognitionPrepareAndBegin(recognition, 0, &v10))
  {
    CFRelease(self->_recognition);
    self->_recognition = 0;
  }

LABEL_4:
  result = v10;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_configureNewRecognitionInstance
{
  v10 = xmmword_2881D6710;
  v11 = off_2881D6720;
  v3 = [(VSRecognitionRecognizeAction *)self _createRecognitionInstanceWithCallbacks:&v10 info:self];
  self->_recognition = v3;
  if (v3)
  {
    recognizeFlags = self->_recognizeFlags;
    v5 = (*&recognizeFlags >> 1) & 3;
    if (v5)
    {
      VSRecognitionSetPreferredEngine(v3, v5);
      *&recognizeFlags = self->_recognizeFlags;
    }

    if (*&recognizeFlags)
    {
      v6 = self->_debugDumpPath ? self->_debugDumpPath : *MEMORY[0x277CBEEE8];
      if (VSRecognitionSetDebugDumpPath(self->_recognition, v6) && !self->_debugDumpPath)
      {
        self->_debugDumpPath = VSRecognitionCopyDebugDumpPath(self->_recognition);
      }
    }

    audioInputPath = self->_audioInputPath;
    recognition = self->_recognition;
    if (audioInputPath)
    {
      VSRecognitionSetAudioInputPath(recognition, audioInputPath);
      recognition = self->_recognition;
    }

    if ((*&self->_recognizeFlags & 8) != 0)
    {
      VSRecognitionSetEngineResetRequired(recognition, 1);
      recognition = self->_recognition;
    }

    levelInterval = self->_levelInterval;
    if (levelInterval > 0.0)
    {
      VSRecognitionSetInputLevelUpdateInterval(recognition, levelInterval);
      recognition = self->_recognition;
    }

    VSRecognitionSetBluetoothInputAllowed(recognition, (*&self->_recognizeFlags & 0x10) != 0);
  }
}

- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)callbacks info:(void *)info
{
  v4 = *MEMORY[0x277CBECE8];
  if (self->_modelIdentifier)
  {
    modelIdentifier = self->_modelIdentifier;
  }

  else
  {
    modelIdentifier = @"_default";
  }

  return _VSRecognitionCreate(*MEMORY[0x277CBECE8], modelIdentifier, 0, callbacks, info);
}

- (BOOL)_setEngineResetRequired:(BOOL)required
{
  recognizeFlags = self->_recognizeFlags;
  if ((((recognizeFlags & 8) == 0) ^ required))
  {
LABEL_9:
    LOBYTE(v7) = 1;
    return v7;
  }

  requiredCopy = required;
  recognition = self->_recognition;
  if (!recognition)
  {
LABEL_5:
    if (requiredCopy)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_recognizeFlags = recognizeFlags & 0xF7 | v8;
    goto LABEL_9;
  }

  v7 = VSRecognitionSetEngineResetRequired(recognition, required);
  if (v7)
  {
    recognizeFlags = self->_recognizeFlags;
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_setAudioInputPath:(id)path
{
  audioInputPath = self->_audioInputPath;
  if (audioInputPath == path)
  {
    goto LABEL_6;
  }

  recognition = self->_recognition;
  if (!recognition)
  {
LABEL_5:

    self->_audioInputPath = path;
LABEL_6:
    LOBYTE(v7) = 1;
    return v7;
  }

  v7 = VSRecognitionSetAudioInputPath(recognition, path);
  if (v7)
  {
    audioInputPath = self->_audioInputPath;
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_setPreferredEngine:(int)engine
{
  recognizeFlags = self->_recognizeFlags;
  if (((*&recognizeFlags >> 1) & 3) == engine)
  {
    goto LABEL_6;
  }

  engineCopy = engine;
  recognition = self->_recognition;
  if (!recognition)
  {
LABEL_5:
    *&self->_recognizeFlags = *&recognizeFlags & 0xF9 | (2 * (engineCopy & 3));
LABEL_6:
    LOBYTE(v7) = 1;
    return v7;
  }

  v7 = VSRecognitionSetPreferredEngine(recognition, engine);
  if (v7)
  {
    *&recognizeFlags = self->_recognizeFlags;
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_setDebugDumpEnabled:(BOOL)enabled dumpPath:(id)path
{
  if ((*&self->_recognizeFlags & 1) == enabled)
  {
    return 1;
  }

  enabledCopy = enabled;

  self->_debugDumpPath = 0;
  recognition = self->_recognition;
  if (!recognition)
  {
    v10 = 1;
LABEL_11:
    if (enabledCopy)
    {
      if (path || (v12 = self->_recognition) == 0)
      {
        pathCopy = path;
      }

      else
      {
        pathCopy = VSRecognitionCopyDebugDumpPath(v12);
      }

      self->_debugDumpPath = pathCopy;
    }

    goto LABEL_17;
  }

  pathCopy2 = *MEMORY[0x277CBEEE8];
  if (path)
  {
    pathCopy2 = path;
  }

  if (enabledCopy)
  {
    v9 = pathCopy2;
  }

  else
  {
    v9 = 0;
  }

  v10 = VSRecognitionSetDebugDumpPath(recognition, v9) != 0;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (v10)
  {
    *&self->_recognizeFlags = *&self->_recognizeFlags & 0xFE | enabledCopy;
    return 1;
  }

  return 0;
}

- (BOOL)_keywordIndexChanged
{
  keywords = self->_keywords;
  if (keywords)
  {

    self->_keywords = 0;
  }

  return 1;
}

- (int64_t)_keywordCount
{
  _keywords = [(VSRecognitionRecognizeAction *)self _keywords];

  return [_keywords count];
}

- (id)_keywordAtIndex:(int64_t)index
{
  _keywords = [(VSRecognitionRecognizeAction *)self _keywords];
  if ([_keywords count] <= index)
  {
    return 0;
  }

  return [_keywords objectAtIndex:index];
}

- (id)_keywords
{
  result = self->_keywords;
  if (!result)
  {
    result = [-[VSRecognitionAction _session](self "_session")];
    self->_keywords = result;
    if (!result)
    {
      result = objc_alloc_init(MEMORY[0x277CBEA60]);
      self->_keywords = result;
    }
  }

  return result;
}

- (float)_inputLevelDB
{
  recognition = self->_recognition;
  if (recognition && (*&self->_recognizeFlags & 0x20) != 0)
  {
    return VSRecognitionGetInputLevelDB(recognition);
  }

  else
  {
    return 0.0;
  }
}

- (float)_inputLevel
{
  recognition = self->_recognition;
  if (recognition && (*&self->_recognizeFlags & 0x20) != 0)
  {
    return VSRecognitionGetInputLevel(recognition);
  }

  else
  {
    return 0.0;
  }
}

- (BOOL)_setBluetoothInputAllowed:(BOOL)allowed
{
  recognizeFlags = self->_recognizeFlags;
  if (((((recognizeFlags & 0x10) == 0) ^ allowed) & 1) == 0)
  {
    if (self->_recognition)
    {
      return 0;
    }

    *&self->_recognizeFlags = recognizeFlags | 0x10;
  }

  return 1;
}

- (void)dealloc
{
  [(VSRecognitionRecognizeAction *)self cancel];

  recognition = self->_recognition;
  if (recognition)
  {
    CFRelease(recognition);
  }

  v4.receiver = self;
  v4.super_class = VSRecognitionRecognizeAction;
  [(VSRecognitionAction *)&v4 dealloc];
}

- (VSRecognitionRecognizeAction)initWithModelIdentifier:(id)identifier
{
  v4 = [(VSRecognitionRecognizeAction *)self init];
  if (v4)
  {
    v4->_modelIdentifier = identifier;
  }

  return v4;
}

@end