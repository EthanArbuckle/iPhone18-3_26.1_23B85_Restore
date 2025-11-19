@interface VSRecognitionRecognizeAction
- (BOOL)_keywordIndexChanged;
- (BOOL)_setAudioInputPath:(id)a3;
- (BOOL)_setBluetoothInputAllowed:(BOOL)a3;
- (BOOL)_setDebugDumpEnabled:(BOOL)a3 dumpPath:(id)a4;
- (BOOL)_setEngineResetRequired:(BOOL)a3;
- (BOOL)_setPreferredEngine:(int)a3;
- (VSRecognitionRecognizeAction)initWithModelIdentifier:(id)a3;
- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)a3 info:(void *)a4;
- (float)_inputLevel;
- (float)_inputLevelDB;
- (id)_keywordAtIndex:(int64_t)a3;
- (id)_keywords;
- (id)cancel;
- (id)perform;
- (int64_t)_keywordCount;
- (void)_configureNewRecognitionInstance;
- (void)_handleRecognitionCompleted:(__VSRecognition *)a3 withResults:(__CFArray *)a4 error:(__CFError *)a5;
- (void)_handleRecognitionPrepared:(__VSRecognition *)a3;
- (void)_handleRecognitionStarted:(__VSRecognition *)a3;
- (void)_handledThreadedResults:(id)a3 nextAction:(id)a4;
- (void)_releaseFromPrepare;
- (void)_reset;
- (void)_setResults:(id)a3;
- (void)dealloc;
@end

@implementation VSRecognitionRecognizeAction

- (void)_handledThreadedResults:(id)a3 nextAction:(id)a4
{
  if (self->_results == a3)
  {
    [(VSRecognitionRecognizeAction *)self _setResults:0];

    [(VSRecognitionAction *)self completeWithNextAction:a4 error:0];
  }
}

- (void)_handleRecognitionCompleted:(__VSRecognition *)a3 withResults:(__CFArray *)a4 error:(__CFError *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_recognition != a3)
  {
    goto LABEL_51;
  }

  v8 = self;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  if (!a4 || a5)
  {
    v19 = 0;
    v16 = 0;
  }

  else
  {
    v12 = [(__CFArray *)a4 count];
    v14 = v12 - 1;
    if (v12 < 1)
    {
      v10 = 0;
      v9 = 0;
      v19 = 0;
      v16 = 0;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v9 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 1;
      *&v13 = 138412290;
      v26 = v13;
      otherArray = a4;
      while (1)
      {
        v19 = [(__CFArray *)a4 objectAtIndex:v15, v26];
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
          v16 = [v19 createHandler];
          ++v17;
          if (v16)
          {
            v21 = objc_opt_respondsToSelector();
            v9 = v21;
            if (v15 >= v14)
            {
              a4 = [(__CFArray *)a4 subarrayWithRange:v15, 1];
            }

            else if (v21)
            {
              v28 = [v19 modelIdentifier];
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

        v18 = v16 == 0;
        ++v15;
        if (!((v16 == 0) | v9 & 1))
        {
          v9 = 0;
          break;
        }
      }

      v11 = v17 == 0;
      a5 = 0;
      v10 = v29;
    }
  }

  [(VSRecognitionRecognizeAction *)self _setResults:0];
  if (v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = a4;
  }

  if (a5 || !v11)
  {
    if (v16)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![v16 requiresThreadedProcessing])
      {
        if (v9)
        {
          [(__CFArray *)v22 makeObjectsPerformSelector:sel_setRecognitionAction_ withObject:self];
          v23 = [v16 actionForRecognitionResults:v22];
          [(__CFArray *)v22 makeObjectsPerformSelector:sel_setRecognitionAction_ withObject:0];
        }

        else
        {
          [v19 setRecognitionAction:self];
          v23 = [v16 actionForRecognitionResult:v19];
          [v19 setRecognitionAction:0];
        }

        goto LABEL_46;
      }

      if ((v9 & 1) == 0)
      {
        v22 = [MEMORY[0x277CBEA60] arrayWithObject:v19];
      }

      [(VSRecognitionRecognizeAction *)self _setResults:v22];
      [objc_msgSend(-[VSRecognitionAction _session](self "_session")];
    }

    v23 = 0;
  }

  else
  {
    v23 = [(VSRecognitionRecognizeAction *)self _actionForEmptyResults];
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
    [(VSRecognitionAction *)self completeWithNextAction:v23 error:a5];
  }

LABEL_51:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecognitionStarted:(__VSRecognition *)a3
{
  if (self->_recognition == a3)
  {
    *&self->_recognizeFlags |= 0x20u;
  }
}

- (void)_handleRecognitionPrepared:(__VSRecognition *)a3
{
  if (self->_recognition == a3 && [-[VSRecognitionAction _session](self "_session")] && self->_recognition)
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

- (void)_setResults:(id)a3
{
  results = self->_results;
  if (results != a3)
  {

    self->_results = a3;
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

- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)a3 info:(void *)a4
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

  return _VSRecognitionCreate(*MEMORY[0x277CBECE8], modelIdentifier, 0, a3, a4);
}

- (BOOL)_setEngineResetRequired:(BOOL)a3
{
  recognizeFlags = self->_recognizeFlags;
  if ((((recognizeFlags & 8) == 0) ^ a3))
  {
LABEL_9:
    LOBYTE(v7) = 1;
    return v7;
  }

  v4 = a3;
  recognition = self->_recognition;
  if (!recognition)
  {
LABEL_5:
    if (v4)
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

  v7 = VSRecognitionSetEngineResetRequired(recognition, a3);
  if (v7)
  {
    recognizeFlags = self->_recognizeFlags;
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_setAudioInputPath:(id)a3
{
  audioInputPath = self->_audioInputPath;
  if (audioInputPath == a3)
  {
    goto LABEL_6;
  }

  recognition = self->_recognition;
  if (!recognition)
  {
LABEL_5:

    self->_audioInputPath = a3;
LABEL_6:
    LOBYTE(v7) = 1;
    return v7;
  }

  v7 = VSRecognitionSetAudioInputPath(recognition, a3);
  if (v7)
  {
    audioInputPath = self->_audioInputPath;
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_setPreferredEngine:(int)a3
{
  recognizeFlags = self->_recognizeFlags;
  if (((*&recognizeFlags >> 1) & 3) == a3)
  {
    goto LABEL_6;
  }

  v4 = a3;
  recognition = self->_recognition;
  if (!recognition)
  {
LABEL_5:
    *&self->_recognizeFlags = *&recognizeFlags & 0xF9 | (2 * (v4 & 3));
LABEL_6:
    LOBYTE(v7) = 1;
    return v7;
  }

  v7 = VSRecognitionSetPreferredEngine(recognition, a3);
  if (v7)
  {
    *&recognizeFlags = self->_recognizeFlags;
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_setDebugDumpEnabled:(BOOL)a3 dumpPath:(id)a4
{
  if ((*&self->_recognizeFlags & 1) == a3)
  {
    return 1;
  }

  v5 = a3;

  self->_debugDumpPath = 0;
  recognition = self->_recognition;
  if (!recognition)
  {
    v10 = 1;
LABEL_11:
    if (v5)
    {
      if (a4 || (v12 = self->_recognition) == 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = VSRecognitionCopyDebugDumpPath(v12);
      }

      self->_debugDumpPath = v11;
    }

    goto LABEL_17;
  }

  v8 = *MEMORY[0x277CBEEE8];
  if (a4)
  {
    v8 = a4;
  }

  if (v5)
  {
    v9 = v8;
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
    *&self->_recognizeFlags = *&self->_recognizeFlags & 0xFE | v5;
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
  v2 = [(VSRecognitionRecognizeAction *)self _keywords];

  return [v2 count];
}

- (id)_keywordAtIndex:(int64_t)a3
{
  v4 = [(VSRecognitionRecognizeAction *)self _keywords];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndex:a3];
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

- (BOOL)_setBluetoothInputAllowed:(BOOL)a3
{
  recognizeFlags = self->_recognizeFlags;
  if (((((recognizeFlags & 0x10) == 0) ^ a3) & 1) == 0)
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

- (VSRecognitionRecognizeAction)initWithModelIdentifier:(id)a3
{
  v4 = [(VSRecognitionRecognizeAction *)self init];
  if (v4)
  {
    v4->_modelIdentifier = a3;
  }

  return v4;
}

@end