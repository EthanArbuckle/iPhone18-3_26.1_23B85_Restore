@interface _UITextInputSessionEfficacyAccumulator
+ (id)accumulatorWithName:(id)name;
+ (id)getOrInitializeArrayFromArray:(id)array forKey:(unint64_t)key initCapacity:(unint64_t)capacity;
+ (id)getOrInitializeArrayFromDictionary:(id)dictionary forKey:(id)key initCapacity:(unint64_t)capacity;
+ (id)getOrInitializeDictionaryFrom:(id)from forKey:(unint64_t)key initCapacity:(int64_t)capacity;
- (_UITextInputSessionEfficacyAccumulator)init;
- (id)cleanIdForPublishing:(id)publishing;
- (id)computeSessionActionsStringOnSession:(id)session;
- (id)generateSessionErrorStringFromSet:(id)set;
- (void)enumerateTextInputActionsAnalytics:(id)analytics;
- (void)increaseCountForAppBundleId:(id)id forSource:(int64_t)source forActionType:(int64_t)type forFlagOptions:(int64_t)options forInputModeKey:(id)key byAccumulatorEntry:(id)entry;
- (void)increaseWithAction:(id)action;
- (void)logErrorCodeIfNotNil:(id)nil;
- (void)reset;
@end

@implementation _UITextInputSessionEfficacyAccumulator

- (_UITextInputSessionEfficacyAccumulator)init
{
  v10.receiver = self;
  v10.super_class = _UITextInputSessionEfficacyAccumulator;
  v2 = [(_UITextInputSessionEfficacyAccumulator *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    entries = v2->_entries;
    v2->_entries = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sessionErrors = v2->_sessionErrors;
    v2->_sessionErrors = v5;

    v7 = UITextInputSessionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] Initialized accumulator", v9, 2u);
    }
  }

  return v2;
}

+ (id)accumulatorWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [nameCopy copy];

  v6 = v4[15];
  v4[15] = v5;

  [v4 reset];

  return v4;
}

- (void)logErrorCodeIfNotNil:(id)nil
{
  nilCopy = nil;
  if (nilCopy)
  {
    v7 = nilCopy;
    if ([nilCopy length] == 1)
    {
      v5 = v7;
    }

    else
    {
      v6 = [@"E" stringByAppendingString:v7];

      v5 = v6;
    }

    v8 = v5;
    [(NSMutableSet *)self->_sessionErrors addObject:?];
  }
}

+ (id)getOrInitializeArrayFromDictionary:(id)dictionary forKey:(id)key initCapacity:(unint64_t)capacity
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  v9 = [dictionaryCopy valueForKey:keyCopy];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    if (capacity)
    {
      capacityCopy = capacity;
      do
      {
        null = [MEMORY[0x1E695DFB0] null];
        [v9 addObject:null];

        --capacityCopy;
      }

      while (capacityCopy);
    }

    [dictionaryCopy setObject:v9 forKey:keyCopy];
    v12 = UITextInputSessionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      v15 = keyCopy;
      v16 = 2048;
      capacityCopy2 = capacity;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New key found - initializing new array for key %lu with capacity %lu", &v14, 0x16u);
    }
  }

  return v9;
}

+ (id)getOrInitializeArrayFromArray:(id)array forKey:(unint64_t)key initCapacity:(unint64_t)capacity
{
  v23 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if ([arrayCopy count] <= key)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionEfficacyAccumulator.m" lineNumber:243 description:{@"Attempt to access index %lu, which is out of bounds for array with capacity %lu", key, objc_msgSend(arrayCopy, "count")}];
  }

  v10 = [arrayCopy objectAtIndexedSubscript:key];
  null = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:null];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    if (capacity)
    {
      capacityCopy = capacity;
      do
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        [v13 addObject:null2];

        --capacityCopy;
      }

      while (capacityCopy);
    }

    [arrayCopy setObject:v13 atIndexedSubscript:key];
    v16 = UITextInputSessionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      keyCopy = key;
      v21 = 2048;
      capacityCopy2 = capacity;
      _os_log_debug_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New key found - initializing new array for key %lu with capacity %lu", buf, 0x16u);
    }
  }

  else
  {
    v13 = [arrayCopy objectAtIndexedSubscript:key];
  }

  return v13;
}

+ (id)getOrInitializeDictionaryFrom:(id)from forKey:(unint64_t)key initCapacity:(int64_t)capacity
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v8 = [fromCopy objectAtIndexedSubscript:key];
  null = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:null];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];

    [fromCopy setObject:v11 atIndexedSubscript:key];
    v12 = UITextInputSessionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      keyCopy = key;
      v16 = 2048;
      capacityCopy = capacity;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New key found - initializing new dictionary for key %lu with capacity %lu", &v14, 0x16u);
    }

    v8 = v11;
  }

  return v8;
}

- (void)increaseCountForAppBundleId:(id)id forSource:(int64_t)source forActionType:(int64_t)type forFlagOptions:(int64_t)options forInputModeKey:(id)key byAccumulatorEntry:(id)entry
{
  v47 = *MEMORY[0x1E69E9840];
  idCopy = id;
  keyCopy = key;
  entryCopy = entry;
  if (([entryCopy isAllZeroes] & 1) == 0)
  {
    if (keyCopy)
    {
      if (!idCopy)
      {
        idCopy = &stru_1EFB14550;
      }

      v17 = [_UITextInputSessionEfficacyAccumulator getOrInitializeArrayFromDictionary:self->_entries forKey:idCopy initCapacity:13];
      v28 = [_UITextInputSessionEfficacyAccumulator getOrInitializeArrayFromArray:v17 forKey:source initCapacity:17];
      v27 = [_UITextInputSessionEfficacyAccumulator getOrInitializeArrayFromArray:"getOrInitializeArrayFromArray:forKey:initCapacity:" forKey:? initCapacity:?];
      v18 = [_UITextInputSessionEfficacyAccumulator getOrInitializeDictionaryFrom:"getOrInitializeDictionaryFrom:forKey:initCapacity:" forKey:? initCapacity:?];
      v19 = [v18 objectForKeyedSubscript:keyCopy];
      if (!v19)
      {
        v19 = objc_alloc_init(_UITextInputSessionEfficacyAccumulatorEntry);
        [v18 setObject:v19 forKeyedSubscript:keyCopy];
        v20 = UITextInputSessionLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          sourceCopy2 = source;
          v31 = 2048;
          typeCopy2 = type;
          v33 = 2048;
          optionsCopy2 = options;
          v35 = 2112;
          v36 = keyCopy;
          _os_log_debug_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New input mode key found - initializing new entry for source:%lu actionType:%lu flagOptions%lu inputMode:%@", buf, 0x2Au);
        }
      }

      [(_UITextInputSessionEfficacyAccumulatorEntry *)v19 increaseWithEntry:entryCopy];
      v21 = UITextInputSessionLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        netCharacters = [entryCopy netCharacters];
        userRemovedCharacters = [entryCopy userRemovedCharacters];
        netEmojiCharacters = [entryCopy netEmojiCharacters];
        userRemovedEmojiCharacters = [entryCopy userRemovedEmojiCharacters];
        inputActions = [entryCopy inputActions];
        *buf = 134220034;
        sourceCopy2 = source;
        v31 = 2048;
        typeCopy2 = type;
        v33 = 2048;
        optionsCopy2 = options;
        v35 = 2112;
        v36 = keyCopy;
        v37 = 2048;
        v38 = netCharacters;
        v39 = 2048;
        v40 = userRemovedCharacters;
        v41 = 2048;
        v42 = netEmojiCharacters;
        v43 = 2048;
        v44 = userRemovedEmojiCharacters;
        v45 = 2048;
        v46 = inputActions;
        _os_log_debug_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] Updated entry for source:%lu actionType:%lu flagOptions%lu inputMode:%@ by netChars:%ld userRemovedChars:%ld netEmojiChars:%ld userRemovedEmojiChars:%ld actions:%ld", buf, 0x5Cu);
      }
    }

    else
    {
      v17 = UITextInputSessionLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "[UITextInputSessionEfficacyAccumulator] Received nil input mode unique key", buf, 2u);
      }
    }
  }
}

- (void)increaseWithAction:(id)action
{
  v60 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = [_UITextInputSessionEfficacyAccumulatorEntry generateAccumulatorEntryFromAction:actionCopy];
  inputModeUniqueString = [actionCopy inputModeUniqueString];
  v7 = UITextInputSessionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138414338;
    v43 = actionCopy;
    v44 = 2048;
    netCharacters = [v5 netCharacters];
    v46 = 2048;
    userRemovedCharacters = [v5 userRemovedCharacters];
    v48 = 2048;
    netEmojiCharacters = [v5 netEmojiCharacters];
    v50 = 2048;
    userRemovedEmojiCharacters = [v5 userRemovedEmojiCharacters];
    v52 = 2048;
    inputActions = [v5 inputActions];
    v54 = 2048;
    textInputActionsSource = [actionCopy textInputActionsSource];
    v56 = 2048;
    textInputActionsType = [actionCopy textInputActionsType];
    v58 = 2112;
    v59 = inputModeUniqueString;
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] increaseWithAction(): %@ netCharactersDelta:%ld userRemovedCharactersDelta:%ld netEmojiCharactersDelta:%ld sysRemovedObjectsDelta:%ld inputActionsDelta:%ld for source:%lu type:%lu inputMode:%@", buf, 0x5Cu);
  }

  [actionCopy source];
  appBundleId = [actionCopy appBundleId];
  -[_UITextInputSessionEfficacyAccumulator increaseCountForAppBundleId:forSource:forActionType:forFlagOptions:forInputModeKey:byAccumulatorEntry:](self, "increaseCountForAppBundleId:forSource:forActionType:forFlagOptions:forInputModeKey:byAccumulatorEntry:", appBundleId, [actionCopy textInputActionsSource], objc_msgSend(actionCopy, "textInputActionsType"), objc_msgSend(actionCopy, "flagOptions"), inputModeUniqueString, v5);

  language = [actionCopy language];
  if (language)
  {
  }

  else
  {
    region = [actionCopy region];

    if (!region)
    {
      goto LABEL_8;
    }
  }

  language2 = [actionCopy language];
  v12 = [language2 copy];
  language = self->_language;
  self->_language = v12;

  region2 = [actionCopy region];
  v15 = [region2 copy];
  region = self->_region;
  self->_region = v15;

  keyboardVariant = [actionCopy keyboardVariant];
  v18 = [keyboardVariant copy];
  keyboardVariant = self->_keyboardVariant;
  self->_keyboardVariant = v18;

  keyboardLayout = [actionCopy keyboardLayout];
  v21 = [keyboardLayout copy];
  keyboardLayout = self->_keyboardLayout;
  self->_keyboardLayout = v21;

  keyboardType = [actionCopy keyboardType];
  v24 = [keyboardType copy];
  keyboardType = self->_keyboardType;
  self->_keyboardType = v24;

  if ([actionCopy textInputActionsSource] == 4)
  {
    v26 = _UITextInputActionsValidateLanguage(self->_language);
    [(_UITextInputSessionEfficacyAccumulator *)self logErrorCodeIfNotNil:v26];

    v27 = _UITextInputActionsValidateRegion(self->_region);
    [(_UITextInputSessionEfficacyAccumulator *)self logErrorCodeIfNotNil:v27];
  }

LABEL_8:
  asDictationBegan = [actionCopy asDictationBegan];
  v29 = asDictationBegan;
  if (asDictationBegan && [asDictationBegan modelessUsedAtLeastOnceCount])
  {
    self->_sessionIsModeless = 1;
  }

  largestSingleInsertionLength = [actionCopy largestSingleInsertionLength];
  largestSingleDeletionLength = [actionCopy largestSingleDeletionLength];
  netCharacterCount = [actionCopy netCharacterCount];
  if ([actionCopy flagOptions])
  {
    largestSingleInsertionLength = [actionCopy insertedEmojiCount];
    largestSingleDeletionLength = [actionCopy removedEmojiCount];
    insertedEmojiCount = [actionCopy insertedEmojiCount];
    netCharacterCount = insertedEmojiCount - [actionCopy removedEmojiCount];
    v34 = UITextInputSessionLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v43 = largestSingleInsertionLength;
      v44 = 2048;
      netCharacters = largestSingleDeletionLength;
      v46 = 2048;
      userRemovedCharacters = netCharacterCount;
      _os_log_debug_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] emoji search - override insertion %lu, deletion %lu, net %ld", buf, 0x20u);
    }
  }

  if (largestSingleInsertionLength > self->_largestSessionInsertionLength)
  {
    v35 = UITextInputSessionLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      largestSessionInsertionLength = self->_largestSessionInsertionLength;
      largestSingleInsertionLength2 = [actionCopy largestSingleInsertionLength];
      *buf = 134218240;
      v43 = largestSessionInsertionLength;
      v44 = 2048;
      netCharacters = largestSingleInsertionLength2;
      _os_log_debug_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] largestSessionInsertionLength %lu -> %lu", buf, 0x16u);
    }

    self->_largestSessionInsertionLength = largestSingleInsertionLength;
  }

  if (largestSingleDeletionLength > self->_largestSessionDeletionLength)
  {
    v36 = UITextInputSessionLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      largestSessionDeletionLength = self->_largestSessionDeletionLength;
      largestSingleDeletionLength2 = [actionCopy largestSingleDeletionLength];
      *buf = 134218240;
      v43 = largestSessionDeletionLength;
      v44 = 2048;
      netCharacters = largestSingleDeletionLength2;
      _os_log_debug_impl(&dword_188A29000, v36, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] largestSessionDeletionLength %lu -> %lu", buf, 0x16u);
    }

    self->_largestSessionDeletionLength = largestSingleDeletionLength;
  }

  self->_sessionNetCharacters += netCharacterCount;
  if ([actionCopy isCapableOfTextInsertion] && ((objc_msgSend(actionCopy, "flagOptions") & 1) == 0 || (objc_msgSend(actionCopy, "flagOptions") & 1) != 0 && objc_msgSend(actionCopy, "insertedEmojiCount")))
  {
    self->_insertionObservedInSession = 1;
  }

  else if (!self->_insertionObservedInSession && ([actionCopy flagOptions] & 1) == 0)
  {
    removedTextLength = [actionCopy removedTextLength];
    self->_charsRemovedBeforeFirstInsertionCount += removedTextLength - [actionCopy removedEmojiCount];
    self->_emojisRemovedBeforeFirstInsertionCount += [actionCopy removedEmojiCount];
  }
}

- (void)reset
{
  [(NSMutableDictionary *)self->_entries removeAllObjects];
  [(NSMutableSet *)self->_sessionErrors removeAllObjects];
  self->_sessionIsModeless = 0;
  self->_largestSessionDeletionLength = 0;
  self->_sessionNetCharacters = 0;
  self->_largestSessionInsertionLength = 0;
  self->_insertionObservedInSession = 0;
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] Reset accumulator", v4, 2u);
  }
}

- (id)computeSessionActionsStringOnSession:(id)session
{
  sessionCopy = session;
  v6 = objc_alloc_init(_UITextInputSessionActionInformation);
  [(_UITextInputSessionActionInformation *)v6 setSessionHasOnlyPrimaryInput:1];
  [(_UITextInputSessionActionInformation *)v6 setSessionHasDictation:0];
  v7 = 12;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:12];
  do
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [v8 addObject:v9];

    --v7;
  }

  while (v7);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79___UITextInputSessionEfficacyAccumulator_computeSessionActionsStringOnSession___block_invoke;
  v23[3] = &unk_1E71276A0;
  v26 = a2;
  v23[4] = self;
  v10 = v8;
  v24 = v10;
  v11 = v6;
  v25 = v11;
  [sessionCopy enumerateObjectsUsingBlock:v23];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__220;
  v21 = __Block_byref_object_dispose__220;
  v22 = [&stru_1EFB14550 mutableCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79___UITextInputSessionEfficacyAccumulator_computeSessionActionsStringOnSession___block_invoke_78;
  v16[3] = &unk_1E71276C8;
  v16[4] = &v17;
  [v10 enumerateObjectsUsingBlock:v16];
  v12 = v18[5];
  v13 = _UITextInputActionsSessionActionsStringFromEnumValue(2);
  LODWORD(v12) = [v12 isEqualToString:v13];

  if (v12)
  {
    [(_UITextInputSessionActionInformation *)v11 setSessionHasOnlyPrimaryInput:0];
  }

  [(_UITextInputSessionActionInformation *)v11 setSessionActionString:v18[5]];
  v14 = v11;
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (id)generateSessionErrorStringFromSet:(id)set
{
  v9[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  if ([setCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [setCopy sortedArrayUsingDescriptors:v5];

    v7 = [v6 componentsJoinedByString:&stru_1EFB14550];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cleanIdForPublishing:(id)publishing
{
  publishingCopy = publishing;
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E69D9558] performSelector:sel_isReportableClientId_ withObject:publishingCopy] != 0;
  }

  else
  {
    v4 = [(__CFString *)publishingCopy hasPrefix:@"com.apple."];
  }

  if (v4)
  {
    v5 = publishingCopy;
  }

  else
  {
    v5 = @"other";
  }

  v6 = v5;

  return v5;
}

- (void)enumerateTextInputActionsAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v5 = UITextInputSessionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] Enumerating TextInputActions...", buf, 2u);
  }

  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__220;
  v20 = __Block_byref_object_dispose__220;
  v21 = _UIMainBundleIdentifier();
  v6 = [(_UITextInputSessionEfficacyAccumulator *)self cleanIdForPublishing:*(v17 + 5)];
  v7 = *(v17 + 5);
  *(v17 + 5) = v6;

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__220;
  v14[4] = __Block_byref_object_dispose__220;
  v15 = [(_UITextInputSessionEfficacyAccumulator *)self generateSessionErrorStringFromSet:self->_sessionErrors];
  entries = self->_entries;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke;
  v10[3] = &unk_1E7127790;
  v10[4] = self;
  v12 = buf;
  v13 = v14;
  v9 = analyticsCopy;
  v11 = v9;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(buf, 8);
}

@end