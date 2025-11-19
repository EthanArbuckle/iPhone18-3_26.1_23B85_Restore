@interface _UITextInputSessionEfficacyAccumulator
+ (id)accumulatorWithName:(id)a3;
+ (id)getOrInitializeArrayFromArray:(id)a3 forKey:(unint64_t)a4 initCapacity:(unint64_t)a5;
+ (id)getOrInitializeArrayFromDictionary:(id)a3 forKey:(id)a4 initCapacity:(unint64_t)a5;
+ (id)getOrInitializeDictionaryFrom:(id)a3 forKey:(unint64_t)a4 initCapacity:(int64_t)a5;
- (_UITextInputSessionEfficacyAccumulator)init;
- (id)cleanIdForPublishing:(id)a3;
- (id)computeSessionActionsStringOnSession:(id)a3;
- (id)generateSessionErrorStringFromSet:(id)a3;
- (void)enumerateTextInputActionsAnalytics:(id)a3;
- (void)increaseCountForAppBundleId:(id)a3 forSource:(int64_t)a4 forActionType:(int64_t)a5 forFlagOptions:(int64_t)a6 forInputModeKey:(id)a7 byAccumulatorEntry:(id)a8;
- (void)increaseWithAction:(id)a3;
- (void)logErrorCodeIfNotNil:(id)a3;
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

+ (id)accumulatorWithName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v3 copy];

  v6 = v4[15];
  v4[15] = v5;

  [v4 reset];

  return v4;
}

- (void)logErrorCodeIfNotNil:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if ([v4 length] == 1)
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

+ (id)getOrInitializeArrayFromDictionary:(id)a3 forKey:(id)a4 initCapacity:(unint64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 valueForKey:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a5];
    if (a5)
    {
      v10 = a5;
      do
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        [v9 addObject:v11];

        --v10;
      }

      while (v10);
    }

    [v7 setObject:v9 forKey:v8];
    v12 = UITextInputSessionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      v15 = v8;
      v16 = 2048;
      v17 = a5;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New key found - initializing new array for key %lu with capacity %lu", &v14, 0x16u);
    }
  }

  return v9;
}

+ (id)getOrInitializeArrayFromArray:(id)a3 forKey:(unint64_t)a4 initCapacity:(unint64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ([v9 count] <= a4)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"UITextInputSessionEfficacyAccumulator.m" lineNumber:243 description:{@"Attempt to access index %lu, which is out of bounds for array with capacity %lu", a4, objc_msgSend(v9, "count")}];
  }

  v10 = [v9 objectAtIndexedSubscript:a4];
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a5];
    if (a5)
    {
      v14 = a5;
      do
      {
        v15 = [MEMORY[0x1E695DFB0] null];
        [v13 addObject:v15];

        --v14;
      }

      while (v14);
    }

    [v9 setObject:v13 atIndexedSubscript:a4];
    v16 = UITextInputSessionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v20 = a4;
      v21 = 2048;
      v22 = a5;
      _os_log_debug_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New key found - initializing new array for key %lu with capacity %lu", buf, 0x16u);
    }
  }

  else
  {
    v13 = [v9 objectAtIndexedSubscript:a4];
  }

  return v13;
}

+ (id)getOrInitializeDictionaryFrom:(id)a3 forKey:(unint64_t)a4 initCapacity:(int64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 objectAtIndexedSubscript:a4];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a5];

    [v7 setObject:v11 atIndexedSubscript:a4];
    v12 = UITextInputSessionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      v15 = a4;
      v16 = 2048;
      v17 = a5;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New key found - initializing new dictionary for key %lu with capacity %lu", &v14, 0x16u);
    }

    v8 = v11;
  }

  return v8;
}

- (void)increaseCountForAppBundleId:(id)a3 forSource:(int64_t)a4 forActionType:(int64_t)a5 forFlagOptions:(int64_t)a6 forInputModeKey:(id)a7 byAccumulatorEntry:(id)a8
{
  v47 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  if (([v16 isAllZeroes] & 1) == 0)
  {
    if (v15)
    {
      if (!v14)
      {
        v14 = &stru_1EFB14550;
      }

      v17 = [_UITextInputSessionEfficacyAccumulator getOrInitializeArrayFromDictionary:self->_entries forKey:v14 initCapacity:13];
      v28 = [_UITextInputSessionEfficacyAccumulator getOrInitializeArrayFromArray:v17 forKey:a4 initCapacity:17];
      v27 = [_UITextInputSessionEfficacyAccumulator getOrInitializeArrayFromArray:"getOrInitializeArrayFromArray:forKey:initCapacity:" forKey:? initCapacity:?];
      v18 = [_UITextInputSessionEfficacyAccumulator getOrInitializeDictionaryFrom:"getOrInitializeDictionaryFrom:forKey:initCapacity:" forKey:? initCapacity:?];
      v19 = [v18 objectForKeyedSubscript:v15];
      if (!v19)
      {
        v19 = objc_alloc_init(_UITextInputSessionEfficacyAccumulatorEntry);
        [v18 setObject:v19 forKeyedSubscript:v15];
        v20 = UITextInputSessionLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          v30 = a4;
          v31 = 2048;
          v32 = a5;
          v33 = 2048;
          v34 = a6;
          v35 = 2112;
          v36 = v15;
          _os_log_debug_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] New input mode key found - initializing new entry for source:%lu actionType:%lu flagOptions%lu inputMode:%@", buf, 0x2Au);
        }
      }

      [(_UITextInputSessionEfficacyAccumulatorEntry *)v19 increaseWithEntry:v16];
      v21 = UITextInputSessionLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v16 netCharacters];
        v25 = [v16 userRemovedCharacters];
        v24 = [v16 netEmojiCharacters];
        v23 = [v16 userRemovedEmojiCharacters];
        v22 = [v16 inputActions];
        *buf = 134220034;
        v30 = a4;
        v31 = 2048;
        v32 = a5;
        v33 = 2048;
        v34 = a6;
        v35 = 2112;
        v36 = v15;
        v37 = 2048;
        v38 = v26;
        v39 = 2048;
        v40 = v25;
        v41 = 2048;
        v42 = v24;
        v43 = 2048;
        v44 = v23;
        v45 = 2048;
        v46 = v22;
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

- (void)increaseWithAction:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [_UITextInputSessionEfficacyAccumulatorEntry generateAccumulatorEntryFromAction:v4];
  v6 = [v4 inputModeUniqueString];
  v7 = UITextInputSessionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138414338;
    v43 = v4;
    v44 = 2048;
    v45 = [v5 netCharacters];
    v46 = 2048;
    v47 = [v5 userRemovedCharacters];
    v48 = 2048;
    v49 = [v5 netEmojiCharacters];
    v50 = 2048;
    v51 = [v5 userRemovedEmojiCharacters];
    v52 = 2048;
    v53 = [v5 inputActions];
    v54 = 2048;
    v55 = [v4 textInputActionsSource];
    v56 = 2048;
    v57 = [v4 textInputActionsType];
    v58 = 2112;
    v59 = v6;
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] increaseWithAction(): %@ netCharactersDelta:%ld userRemovedCharactersDelta:%ld netEmojiCharactersDelta:%ld sysRemovedObjectsDelta:%ld inputActionsDelta:%ld for source:%lu type:%lu inputMode:%@", buf, 0x5Cu);
  }

  [v4 source];
  v8 = [v4 appBundleId];
  -[_UITextInputSessionEfficacyAccumulator increaseCountForAppBundleId:forSource:forActionType:forFlagOptions:forInputModeKey:byAccumulatorEntry:](self, "increaseCountForAppBundleId:forSource:forActionType:forFlagOptions:forInputModeKey:byAccumulatorEntry:", v8, [v4 textInputActionsSource], objc_msgSend(v4, "textInputActionsType"), objc_msgSend(v4, "flagOptions"), v6, v5);

  v9 = [v4 language];
  if (v9)
  {
  }

  else
  {
    v10 = [v4 region];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [v4 language];
  v12 = [v11 copy];
  language = self->_language;
  self->_language = v12;

  v14 = [v4 region];
  v15 = [v14 copy];
  region = self->_region;
  self->_region = v15;

  v17 = [v4 keyboardVariant];
  v18 = [v17 copy];
  keyboardVariant = self->_keyboardVariant;
  self->_keyboardVariant = v18;

  v20 = [v4 keyboardLayout];
  v21 = [v20 copy];
  keyboardLayout = self->_keyboardLayout;
  self->_keyboardLayout = v21;

  v23 = [v4 keyboardType];
  v24 = [v23 copy];
  keyboardType = self->_keyboardType;
  self->_keyboardType = v24;

  if ([v4 textInputActionsSource] == 4)
  {
    v26 = _UITextInputActionsValidateLanguage(self->_language);
    [(_UITextInputSessionEfficacyAccumulator *)self logErrorCodeIfNotNil:v26];

    v27 = _UITextInputActionsValidateRegion(self->_region);
    [(_UITextInputSessionEfficacyAccumulator *)self logErrorCodeIfNotNil:v27];
  }

LABEL_8:
  v28 = [v4 asDictationBegan];
  v29 = v28;
  if (v28 && [v28 modelessUsedAtLeastOnceCount])
  {
    self->_sessionIsModeless = 1;
  }

  v30 = [v4 largestSingleInsertionLength];
  v31 = [v4 largestSingleDeletionLength];
  v32 = [v4 netCharacterCount];
  if ([v4 flagOptions])
  {
    v30 = [v4 insertedEmojiCount];
    v31 = [v4 removedEmojiCount];
    v33 = [v4 insertedEmojiCount];
    v32 = v33 - [v4 removedEmojiCount];
    v34 = UITextInputSessionLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v43 = v30;
      v44 = 2048;
      v45 = v31;
      v46 = 2048;
      v47 = v32;
      _os_log_debug_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] emoji search - override insertion %lu, deletion %lu, net %ld", buf, 0x20u);
    }
  }

  if (v30 > self->_largestSessionInsertionLength)
  {
    v35 = UITextInputSessionLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      largestSessionInsertionLength = self->_largestSessionInsertionLength;
      v39 = [v4 largestSingleInsertionLength];
      *buf = 134218240;
      v43 = largestSessionInsertionLength;
      v44 = 2048;
      v45 = v39;
      _os_log_debug_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] largestSessionInsertionLength %lu -> %lu", buf, 0x16u);
    }

    self->_largestSessionInsertionLength = v30;
  }

  if (v31 > self->_largestSessionDeletionLength)
  {
    v36 = UITextInputSessionLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      largestSessionDeletionLength = self->_largestSessionDeletionLength;
      v41 = [v4 largestSingleDeletionLength];
      *buf = 134218240;
      v43 = largestSessionDeletionLength;
      v44 = 2048;
      v45 = v41;
      _os_log_debug_impl(&dword_188A29000, v36, OS_LOG_TYPE_DEBUG, "[UITextInputSessionEfficacyAccumulator] largestSessionDeletionLength %lu -> %lu", buf, 0x16u);
    }

    self->_largestSessionDeletionLength = v31;
  }

  self->_sessionNetCharacters += v32;
  if ([v4 isCapableOfTextInsertion] && ((objc_msgSend(v4, "flagOptions") & 1) == 0 || (objc_msgSend(v4, "flagOptions") & 1) != 0 && objc_msgSend(v4, "insertedEmojiCount")))
  {
    self->_insertionObservedInSession = 1;
  }

  else if (!self->_insertionObservedInSession && ([v4 flagOptions] & 1) == 0)
  {
    v37 = [v4 removedTextLength];
    self->_charsRemovedBeforeFirstInsertionCount += v37 - [v4 removedEmojiCount];
    self->_emojisRemovedBeforeFirstInsertionCount += [v4 removedEmojiCount];
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

- (id)computeSessionActionsStringOnSession:(id)a3
{
  v5 = a3;
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
  [v5 enumerateObjectsUsingBlock:v23];
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

- (id)generateSessionErrorStringFromSet:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [v3 sortedArrayUsingDescriptors:v5];

    v7 = [v6 componentsJoinedByString:&stru_1EFB14550];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cleanIdForPublishing:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E69D9558] performSelector:sel_isReportableClientId_ withObject:v3] != 0;
  }

  else
  {
    v4 = [(__CFString *)v3 hasPrefix:@"com.apple."];
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"other";
  }

  v6 = v5;

  return v5;
}

- (void)enumerateTextInputActionsAnalytics:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v11 = v9;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(buf, 8);
}

@end