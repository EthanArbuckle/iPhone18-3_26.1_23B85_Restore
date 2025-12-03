@interface WBSPasswordPatternMatcher
- (id)_characterRepetitionPatternForPasscode:(id)passcode;
- (id)_commonPasscodeCharacterRepetitionPatterns;
- (id)_commonlySubstitutedCharacterSet;
- (id)_commonlySubstitutedCharactersMap;
- (id)_dateMatchesForPasscode:(id)passcode;
- (id)_keyboardLayoutPatternMatchesForPassword:(id)password;
- (id)_keyboardMatchWithPassword:(id)password range:(_NSRange)range shiftedCharacterCount:(unint64_t)count keyboardIdentifier:(id)identifier keyboard:(id)keyboard;
- (id)_keyboardsByIdentifier;
- (id)_obviousSequenceStartCharacterSet;
- (id)_passwordVariationsWithoutCommonCharacterSubstitutions:(id)substitutions;
- (id)_passwordWithoutShiftedCharacters:(id)characters shiftMap:(id)map outShiftedCharacterIndexSet:(id *)set;
- (id)_patternWithFewestGuessesRequiredWithRange:(_NSRange)range patternMatches:(id)matches;
- (id)_repetitionMatchesForPasscode:(id)passcode;
- (id)_repetitionMatchesForPassword:(id)password withMatches:(id)matches;
- (id)_sequenceMatchesForPasscode:(id)passcode;
- (id)_sequencePatternMatchWithPassword:(id)password startIndex:(unint64_t)index endIndex:(unint64_t)endIndex delta:(int64_t)delta;
- (id)_sequencePatternMatchesForPassword:(id)password;
- (id)_wordListMatchesForPasscode:(id)passcode withWordListCollection:(id)collection;
- (id)_wordListMatchesForPassword:(id)password withWordListCollection:(id)collection;
- (id)patternMatchesForPasscode:(id)passcode withWordListCollection:(id)collection;
- (id)patternMatchesForPassword:(id)password withWordListCollection:(id)collection;
- (unint64_t)_directionFromHexCoordinate:(id)coordinate to:(id)to;
- (void)_enumerateGraphemeClusterSubrangesOfString:(id)string withMinimumLength:(unint64_t)length usingBlock:(id)block;
@end

@implementation WBSPasswordPatternMatcher

- (id)patternMatchesForPassword:(id)password withWordListCollection:(id)collection
{
  v6 = MEMORY[0x1E695DFA8];
  collectionCopy = collection;
  passwordCopy = password;
  v9 = objc_alloc_init(v6);
  v10 = [(WBSPasswordPatternMatcher *)self _wordListMatchesForPassword:passwordCopy withWordListCollection:collectionCopy];

  [v9 unionSet:v10];
  v11 = [(WBSPasswordPatternMatcher *)self _sequencePatternMatchesForPassword:passwordCopy];
  [v9 unionSet:v11];

  v12 = [(WBSPasswordPatternMatcher *)self _keyboardLayoutPatternMatchesForPassword:passwordCopy];
  [v9 unionSet:v12];

  v13 = [(WBSPasswordPatternMatcher *)self _repetitionMatchesForPassword:passwordCopy withMatches:v9];

  [v9 unionSet:v13];

  return v9;
}

- (id)patternMatchesForPasscode:(id)passcode withWordListCollection:(id)collection
{
  v6 = MEMORY[0x1E695DFA8];
  collectionCopy = collection;
  passcodeCopy = passcode;
  v9 = objc_alloc_init(v6);
  v10 = [(WBSPasswordPatternMatcher *)self _wordListMatchesForPasscode:passcodeCopy withWordListCollection:collectionCopy];

  [v9 unionSet:v10];
  v11 = [(WBSPasswordPatternMatcher *)self _sequenceMatchesForPasscode:passcodeCopy];
  [v9 unionSet:v11];

  v12 = [(WBSPasswordPatternMatcher *)self _dateMatchesForPasscode:passcodeCopy];
  [v9 unionSet:v12];

  v13 = [(WBSPasswordPatternMatcher *)self _repetitionMatchesForPasscode:passcodeCopy];

  [v9 unionSet:v13];

  return v9;
}

- (id)_keyboardsByIdentifier
{
  if (_keyboardsByIdentifier_onceToken != -1)
  {
    [WBSPasswordPatternMatcher _keyboardsByIdentifier];
  }

  v3 = _keyboardsByIdentifier_keyboardsByIdentifier;

  return v3;
}

void __51__WBSPasswordPatternMatcher__keyboardsByIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
  v1 = [v0 URLForResource:@"WBSPasswordKeyboardLayouts" withExtension:@"plist"];

  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v1];
  v3 = _keyboardsByIdentifier_keyboardsByIdentifier;
  _keyboardsByIdentifier_keyboardsByIdentifier = v2;

  if (!_keyboardsByIdentifier_keyboardsByIdentifier)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __51__WBSPasswordPatternMatcher__keyboardsByIdentifier__block_invoke_cold_1(v4);
    }
  }
}

- (unint64_t)_directionFromHexCoordinate:(id)coordinate to:(id)to
{
  v23[2] = *MEMORY[0x1E69E9840];
  toCopy = to;
  coordinateCopy = coordinate;
  v7 = [toCopy objectAtIndexedSubscript:0];
  integerValue = [v7 integerValue];
  v9 = [coordinateCopy objectAtIndexedSubscript:0];
  integerValue2 = [v9 integerValue];

  v11 = [toCopy objectAtIndexedSubscript:1];

  integerValue3 = [v11 integerValue];
  v13 = [coordinateCopy objectAtIndexedSubscript:1];

  integerValue4 = [v13 integerValue];
  if (_directionFromHexCoordinate_to__onceToken != -1)
  {
    [WBSPasswordPatternMatcher _directionFromHexCoordinate:to:];
  }

  v15 = integerValue - integerValue2;
  v16 = _directionFromHexCoordinate_to__directions;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
  v23[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue3 - integerValue4];
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v20 = [v16 indexOfObject:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void __60__WBSPasswordPatternMatcher__directionFromHexCoordinate_to___block_invoke()
{
  v0 = _directionFromHexCoordinate_to__directions;
  _directionFromHexCoordinate_to__directions = &unk_1F308E808;
}

- (id)_passwordWithoutShiftedCharacters:(id)characters shiftMap:(id)map outShiftedCharacterIndexSet:(id *)set
{
  charactersCopy = characters;
  mapCopy = map;
  v9 = [charactersCopy length];
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v13 = [charactersCopy substringWithRange:{i, 1}];
      v14 = [mapCopy objectForKeyedSubscript:v13];
      if (v14)
      {
        [v11 appendString:v14];
        [v10 addIndex:i];
      }

      else
      {
        [v11 appendString:v13];
      }
    }
  }

  if (set)
  {
    v15 = v10;
    *set = v10;
  }

  return v11;
}

- (id)_keyboardLayoutPatternMatchesForPassword:(id)password
{
  passwordCopy = password;
  v5 = [passwordCopy length];
  if (v5 > 2)
  {
    v7 = v5;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    _keyboardsByIdentifier = [(WBSPasswordPatternMatcher *)self _keyboardsByIdentifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__WBSPasswordPatternMatcher__keyboardLayoutPatternMatchesForPassword___block_invoke;
    v13[3] = &unk_1E7CF36E0;
    v13[4] = self;
    v14 = passwordCopy;
    v16 = v7;
    v10 = v8;
    v15 = v10;
    [_keyboardsByIdentifier enumerateKeysAndObjectsUsingBlock:v13];

    v11 = v15;
    v6 = v10;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

void __70__WBSPasswordPatternMatcher__keyboardLayoutPatternMatchesForPassword___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"Layout"];
  v26 = v5;
  v7 = [v5 objectForKeyedSubscript:@"ShiftMap"];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v28 = 0;
  v10 = [v8 _passwordWithoutShiftedCharacters:v9 shiftMap:v7 outShiftedCharacterIndexSet:&v28];
  v25 = v28;
  if (*(a1 + 56) != 2)
  {
    v24 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v12;
      v15 = [v10 substringWithRange:{v13, 1}];
      v12 = [v6 objectForKeyedSubscript:v15];

      v16 = *(a1 + 56);
      v17 = v13 + 1;
      if (v12 && v17 < v16)
      {
        v18 = 1;
        do
        {
          v19 = v11;
          v11 = v12;

          v20 = [v10 substringWithRange:{v13 + v18, 1}];
          v12 = [v6 objectForKeyedSubscript:v20];

          if (!v12 || [*(a1 + 32) _directionFromHexCoordinate:v11 to:v12] == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (++v18 >= 3)
          {
            v21 = [v25 countOfIndexesInRange:{v13, v18}];
            v22 = *(a1 + 48);
            v23 = [*(a1 + 32) _keyboardMatchWithPassword:*(a1 + 40) range:v13 shiftedCharacterCount:v18 keyboardIdentifier:v21 keyboard:{v27, v26}];
            [v22 addObject:v23];
          }
        }

        while ((v13 + v18) < *(a1 + 56));
        v16 = *(a1 + 56);
      }

      ++v13;
    }

    while (v17 < v16 - 2);

    v7 = v24;
  }
}

- (id)_keyboardMatchWithPassword:(id)password range:(_NSRange)range shiftedCharacterCount:(unint64_t)count keyboardIdentifier:(id)identifier keyboard:(id)keyboard
{
  length = range.length;
  location = range.location;
  v26[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyboardCopy = keyboard;
  v14 = [password substringWithRange:{location, length}];
  v15 = [keyboardCopy objectForKeyedSubscript:@"Layout"];

  v16 = [v15 count];
  v17 = pow(6.0, ([v14 length] - 1)) * v16;
  v25 = @"KeyboardLayout";
  v26[0] = identifierCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v19 = [v18 mutableCopy];

  if (count)
  {
    v20 = nChooseK(length, count);
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v19 setObject:v21 forKeyedSubscript:@"CaseVariations"];

    v17 = v17 * v20;
  }

  v22 = [[WBSPasswordPatternMatch alloc] initWithType:1 matchedSubstring:v14 range:location guessesRequired:length userInfo:v19, v17];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_sequencePatternMatchesForPassword:(id)password
{
  passwordCopy = password;
  v5 = [passwordCopy length];
  if (v5 > 2)
  {
    v7 = v5;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = 0;
    do
    {
      v9 = [passwordCopy characterAtIndex:v8 + 1];
      v10 = [passwordCopy characterAtIndex:v8];
      if (v9 != v10)
      {
        v11 = v9 - v10;
        v12 = v8 + 2;
        do
        {
          v13 = [passwordCopy characterAtIndex:v12];
          v14 = v12 - 1;
          if (v13 - [passwordCopy characterAtIndex:v14] != v11)
          {
            break;
          }

          v15 = [(WBSPasswordPatternMatcher *)self _sequencePatternMatchWithPassword:passwordCopy startIndex:v8 endIndex:v14 + 1 delta:v11];
          [v6 addObject:v15];

          v12 = v14 + 2;
        }

        while (v12 != v7);
      }
    }

    while (v8++ != v7 - 3);
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (id)_sequencePatternMatchWithPassword:(id)password startIndex:(unint64_t)index endIndex:(unint64_t)endIndex delta:(int64_t)delta
{
  v9 = endIndex - index + 1;
  v10 = [password substringWithRange:{index, v9}];
  v11 = [v10 characterAtIndex:0];
  _obviousSequenceStartCharacterSet = [(WBSPasswordPatternMatcher *)self _obviousSequenceStartCharacterSet];
  v13 = [_obviousSequenceStartCharacterSet characterIsMember:v11];

  v14 = 4.0;
  if ((v13 & 1) == 0)
  {
    safari_asciiDigitCharacterSet = [MEMORY[0x1E696AB08] safari_asciiDigitCharacterSet];
    v16 = [safari_asciiDigitCharacterSet characterIsMember:v11];

    v14 = 26.0;
    if (v16)
    {
      v14 = 10.0;
    }
  }

  if (delta >= 0)
  {
    deltaCopy = delta;
  }

  else
  {
    deltaCopy = -delta;
  }

  v18 = [[WBSPasswordPatternMatch alloc] initWithType:2 matchedSubstring:v10 range:index guessesRequired:v9 userInfo:0, v14 * deltaCopy * v9];

  return v18;
}

- (id)_obviousSequenceStartCharacterSet
{
  if (_obviousSequenceStartCharacterSet_onceToken != -1)
  {
    [WBSPasswordPatternMatcher _obviousSequenceStartCharacterSet];
  }

  v3 = _obviousSequenceStartCharacterSet_obviousSequenceStartCharacterSet;

  return v3;
}

void __62__WBSPasswordPatternMatcher__obviousSequenceStartCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"aAzZ019"];
  v1 = _obviousSequenceStartCharacterSet_obviousSequenceStartCharacterSet;
  _obviousSequenceStartCharacterSet_obviousSequenceStartCharacterSet = v0;
}

- (id)_wordListMatchesForPassword:(id)password withWordListCollection:(id)collection
{
  v51 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  collectionCopy = collection;
  v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _commonlySubstitutedCharacterSet = [(WBSPasswordPatternMatcher *)self _commonlySubstitutedCharacterSet];
  v8 = [passwordCopy length];
  lowercaseString = [passwordCopy lowercaseString];
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if ([passwordCopy length])
  {
    v11 = 0;
    do
    {
      if ([_commonlySubstitutedCharacterSet characterIsMember:{objc_msgSend(lowercaseString, "characterAtIndex:", v11)}])
      {
        [v10 addIndex:v11];
      }

      ++v11;
    }

    while (v11 < [passwordCopy length]);
  }

  v32 = v10;
  v34 = passwordCopy;
  selfCopy = self;
  v37 = _commonlySubstitutedCharacterSet;
  v12 = [(WBSPasswordPatternMatcher *)self _passwordVariationsWithoutCommonCharacterSubstitutions:lowercaseString];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v47;
    do
    {
      v17 = 0;
      do
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v46 + 1) + 8 * v17);
        v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            v21 = [v18 characterAtIndex:i];
            if (v21 != [lowercaseString characterAtIndex:i])
            {
              [v19 addIndex:i];
            }
          }
        }

        [v13 setObject:v19 forKeyedSubscript:v18];

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v15);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __80__WBSPasswordPatternMatcher__wordListMatchesForPassword_withWordListCollection___block_invoke;
  v39[3] = &unk_1E7CF3730;
  v40 = obj;
  v41 = collectionCopy;
  v42 = v13;
  v43 = v34;
  v44 = v32;
  v22 = v33;
  v45 = v22;
  v23 = v32;
  v24 = v34;
  v25 = v13;
  v26 = collectionCopy;
  v27 = obj;
  [(WBSPasswordPatternMatcher *)selfCopy _enumerateGraphemeClusterSubrangesOfString:v24 withMinimumLength:3 usingBlock:v39];
  v28 = v45;
  v29 = v22;

  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

void __80__WBSPasswordPatternMatcher__wordListMatchesForPassword_withWordListCollection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 substringWithRange:{a2, a3}];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __80__WBSPasswordPatternMatcher__wordListMatchesForPassword_withWordListCollection___block_invoke_2;
        v16[3] = &unk_1E7CF3708;
        v12 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = v10;
        v23 = a2;
        v24 = a3;
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        v21 = v11;
        v22 = *(a1 + 72);
        v13 = v11;
        [v12 enumerateEntriesForString:v13 withBlock:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __80__WBSPasswordPatternMatcher__wordListMatchesForPassword_withWordListCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 guessesRequired];
  v19[0] = @"WordListGuessesRequired";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v20[0] = v5;
  v19[1] = @"WordListIdentifier";
  v6 = [v3 wordListIdentifier];
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v8 = [v7 mutableCopy];

  LODWORD(v5) = [v3 isSensitive];
  if (v5)
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsSensitive"];
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v10 = [v9 countOfIndexesInRange:{*(a1 + 80), *(a1 + 88)}];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 indexGreaterThanOrEqualToIndex:*(a1 + 80)];
    v13 = [*(a1 + 40) substringWithRange:{v12, 1}];
    [v8 setObject:v13 forKeyedSubscript:@"FirstSubstitutedCharacter"];

    v14 = [*(a1 + 48) substringWithRange:{v12, 1}];
    [v8 setObject:v14 forKeyedSubscript:@"FirstSubstitutionCharacter"];

    v15 = nChooseK([*(a1 + 56) countOfIndexesInRange:{*(a1 + 80), *(a1 + 88)}], v11);
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v8 setObject:v16 forKeyedSubscript:@"SubstitutionVariations"];

    v4 = v15 * v4;
  }

  v17 = [[WBSPasswordPatternMatch alloc] initWithType:3 matchedSubstring:*(a1 + 64) range:*(a1 + 80) guessesRequired:*(a1 + 88) userInfo:v8, v4];
  [*(a1 + 72) addObject:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_commonlySubstitutedCharactersMap
{
  if (_commonlySubstitutedCharactersMap_onceToken != -1)
  {
    [WBSPasswordPatternMatcher _commonlySubstitutedCharactersMap];
  }

  v3 = _commonlySubstitutedCharactersMap_substitutionMap;

  return v3;
}

void __62__WBSPasswordPatternMatcher__commonlySubstitutedCharactersMap__block_invoke()
{
  v0 = _commonlySubstitutedCharactersMap_substitutionMap;
  _commonlySubstitutedCharactersMap_substitutionMap = &unk_1F308E638;
}

- (id)_commonlySubstitutedCharacterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WBSPasswordPatternMatcher__commonlySubstitutedCharacterSet__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  if (_commonlySubstitutedCharacterSet_onceToken != -1)
  {
    dispatch_once(&_commonlySubstitutedCharacterSet_onceToken, block);
  }

  return _commonlySubstitutedCharacterSet_commonlySubstitutedCharacterSet;
}

void __61__WBSPasswordPatternMatcher__commonlySubstitutedCharacterSet__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _commonlySubstitutedCharactersMap];
  v1 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v2 = _commonlySubstitutedCharacterSet_commonlySubstitutedCharacterSet;
  _commonlySubstitutedCharacterSet_commonlySubstitutedCharacterSet = v1;

  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_221_0];
}

void __61__WBSPasswordPatternMatcher__commonlySubstitutedCharacterSet__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [_commonlySubstitutedCharacterSet_commonlySubstitutedCharacterSet addCharactersInString:a2];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [_commonlySubstitutedCharacterSet_commonlySubstitutedCharacterSet addCharactersInString:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_passwordVariationsWithoutCommonCharacterSubstitutions:(id)substitutions
{
  v42 = *MEMORY[0x1E69E9840];
  substitutionsCopy = substitutions;
  _commonlySubstitutedCharactersMap = [(WBSPasswordPatternMatcher *)self _commonlySubstitutedCharactersMap];
  v5 = [substitutionsCopy length];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&stru_1F3064D08, 0}];
  v26 = v5;
  if (v5)
  {
    v7 = 0;
    v25 = substitutionsCopy;
    while (1)
    {
      v8 = v6;
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28 = v7;
      v29 = [substitutionsCopy substringWithRange:{v7, 1}];
      v31 = [_commonlySubstitutedCharactersMap objectForKeyedSubscript:?];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        obj = v9;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v36 + 1) + 8 * i);
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v15 = v31;
            v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v33;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v33 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = [v14 stringByAppendingString:*(*(&v32 + 1) + 8 * j)];
                  [v6 addObject:v20];
                }

                v17 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v17);
            }

            if (![v15 count])
            {
              v21 = [v14 stringByAppendingString:v29];
              [v6 addObject:v21];
            }
          }

          v9 = obj;
          v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v11);
      }

      if ([v6 count] > 0xFF)
      {
        break;
      }

      v7 = v28 + 1;
      substitutionsCopy = v25;
      if (v28 + 1 == v26)
      {
        goto LABEL_21;
      }
    }

    substitutionsCopy = v25;
    v22 = [MEMORY[0x1E695DFD8] setWithObject:v25];
  }

  else
  {
LABEL_21:
    [v6 addObject:substitutionsCopy];
    v22 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v9 = v6;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)_enumerateGraphemeClusterSubrangesOfString:(id)string withMinimumLength:(unint64_t)length usingBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v8 = [stringCopy length];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:v10];
      if (v11 == v10)
      {
        if (v9 - v10 >= length)
        {
          lengthCopy = length;
          do
          {
            v14 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:lengthCopy + v10 - 1];
            if (v14 + v15 == lengthCopy + v10)
            {
              blockCopy[2](blockCopy, v10, lengthCopy);
            }

            else
            {
              lengthCopy = lengthCopy + v15 - 2;
            }

            ++lengthCopy;
          }

          while (lengthCopy <= v9 - v10);
        }

        ++v10;
      }

      else
      {
        v10 = v11 + v12;
      }
    }

    while (v10 < v9);
  }
}

- (id)_repetitionMatchesForPassword:(id)password withMatches:(id)matches
{
  v38[2] = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  matchesCopy = matches;
  v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [passwordCopy length];
  v30 = v6 - 1;
  if (v6 != 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = v6;
    v32 = v6;
    do
    {
      v31 = v9;
      v10 = v9 >> 1;
      if (v9 >> 1 <= 1)
      {
        v10 = 1;
      }

      v36 = v10;
      if ((v7 - v8) >= 2)
      {
        v11 = 1;
        do
        {
          v12 = [passwordCopy substringWithRange:{v8, v11, v30}];
          v13 = v8 + v11;
          if (v8 + v11 <= (v7 - v11))
          {
            v14 = 1;
            do
            {
              v15 = [passwordCopy substringWithRange:{v13, v11}];
              v16 = [v15 isEqualToString:v12];

              if ((v16 & 1) == 0)
              {
                break;
              }

              ++v14;
              v13 += v11;
            }

            while (v13 <= v7 - v11);
            if (v14 >= 2)
            {
              matchesCopy = [(WBSPasswordPatternMatcher *)self _patternWithFewestGuessesRequiredWithRange:v8 patternMatches:v11, matchesCopy];
              if (!matchesCopy)
              {
                matchesCopy = [[WBSPasswordPatternMatch alloc] initExhaustiveSearchPatternWithMatchedSubstring:v12 range:v8, v11];
              }

              [matchesCopy guessesRequired];
              v19 = v18;
              v20 = v18 * v14;
              v21 = v14 * v11;
              v22 = [passwordCopy substringWithRange:{v8, v14 * v11}];
              v37[0] = @"BaseGuesses";
              v23 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
              v37[1] = @"RepetitionCount";
              v38[0] = v23;
              v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
              v38[1] = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

              v26 = [[WBSPasswordPatternMatch alloc] initWithType:4 matchedSubstring:v22 range:v8 guessesRequired:v21 userInfo:v25, v20];
              [v35 addObject:v26];

              v7 = v32;
            }
          }
        }

        while (v11++ != v36);
      }

      ++v8;
      v9 = v31 - 1;
    }

    while (v8 != v30);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_patternWithFewestGuessesRequiredWithRange:(_NSRange)range patternMatches:(id)matches
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [matchesCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(matchesCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (location == [v12 range] && length == v13)
        {
          if (!v9 || ([v9 guessesRequired], v16 = v15, objc_msgSend(v12, "guessesRequired"), v16 > v17))
          {
            v18 = v12;

            v9 = v18;
          }
        }
      }

      v8 = [matchesCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_characterRepetitionPatternForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [passcodeCopy length];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [passcodeCopy substringWithRange:{i, 1}];
      v10 = [v4 objectForKeyedSubscript:v9];
      if (!v10)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
        [v4 setObject:v10 forKeyedSubscript:v9];
      }

      [v5 addObject:v10];
    }
  }

  return v5;
}

- (id)_commonPasscodeCharacterRepetitionPatterns
{
  if (_commonPasscodeCharacterRepetitionPatterns_onceToken != -1)
  {
    [WBSPasswordPatternMatcher _commonPasscodeCharacterRepetitionPatterns];
  }

  v3 = _commonPasscodeCharacterRepetitionPatterns_patterns;

  return v3;
}

void __71__WBSPasswordPatternMatcher__commonPasscodeCharacterRepetitionPatterns__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F308EA00, &unk_1F308EA18, &unk_1F308EA30, &unk_1F308EA48, &unk_1F308EA60, &unk_1F308EA78, &unk_1F308EA90, &unk_1F308EAA8, &unk_1F308EAC0, &unk_1F308EAD8, 0}];
  v1 = _commonPasscodeCharacterRepetitionPatterns_patterns;
  _commonPasscodeCharacterRepetitionPatterns_patterns = v0;
}

- (id)_repetitionMatchesForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(WBSPasswordPatternMatcher *)self _characterRepetitionPatternForPasscode:passcodeCopy];
  _commonPasscodeCharacterRepetitionPatterns = [(WBSPasswordPatternMatcher *)self _commonPasscodeCharacterRepetitionPatterns];
  v8 = [_commonPasscodeCharacterRepetitionPatterns containsObject:v6];

  if (v8)
  {
    v9 = -[WBSPasswordPatternMatch initWithType:matchedSubstring:range:guessesRequired:userInfo:]([WBSPasswordPatternMatch alloc], "initWithType:matchedSubstring:range:guessesRequired:userInfo:", 4, passcodeCopy, 0, [passcodeCopy length], 0, 360.0);
    [v5 addObject:v9];
  }

  return v5;
}

- (id)_sequenceMatchesForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [passcodeCopy length];
  v6 = [passcodeCopy characterAtIndex:0];
  v7 = [passcodeCopy characterAtIndex:1];
  v8 = v7 - v6;
  if (v8 == -1 || v8 == 1)
  {
    if (v5 < 3)
    {
LABEL_10:
      v12 = -[WBSPasswordPatternMatch initWithType:matchedSubstring:range:guessesRequired:userInfo:]([WBSPasswordPatternMatch alloc], "initWithType:matchedSubstring:range:guessesRequired:userInfo:", 2, passcodeCopy, 0, [passcodeCopy length], 0, 20.0);
      [v4 addObject:v12];
      v13 = v4;

      goto LABEL_12;
    }

    v10 = 2;
    while (1)
    {
      v11 = v7;
      v7 = [passcodeCopy characterAtIndex:v10];
      if (v7 - v11 != v8)
      {
        break;
      }

      if (v5 == ++v10)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = v4;
LABEL_12:

  return v4;
}

- (id)_dateMatchesForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([passcodeCopy length] == 4 && (objc_msgSend(passcodeCopy, "integerValue") - 2026) > 0xFFFFFFFFFFFFFFB4)
  {
    v6 = [[WBSPasswordPatternMatch alloc] initWithType:5 matchedSubstring:passcodeCopy range:0 guessesRequired:4 userInfo:0, 75.0];
    [v4 addObject:v6];
    v7 = v4;
  }

  else
  {
    v5 = v4;
  }

  return v4;
}

- (id)_wordListMatchesForPasscode:(id)passcode withWordListCollection:(id)collection
{
  passcodeCopy = passcode;
  v6 = MEMORY[0x1E695DFA8];
  collectionCopy = collection;
  v8 = objc_alloc_init(v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__WBSPasswordPatternMatcher__wordListMatchesForPasscode_withWordListCollection___block_invoke;
  v14[3] = &unk_1E7CF3778;
  v15 = passcodeCopy;
  v9 = v8;
  v16 = v9;
  v10 = passcodeCopy;
  [collectionCopy enumerateEntriesForString:v10 withBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __80__WBSPasswordPatternMatcher__wordListMatchesForPasscode_withWordListCollection___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"WordListIdentifier";
  v3 = a2;
  v4 = [v3 wordListIdentifier];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v6 = [WBSPasswordPatternMatch alloc];
  v7 = *(a1 + 32);
  v8 = [v7 length];
  v9 = [v3 guessesRequired];

  v10 = [(WBSPasswordPatternMatch *)v6 initWithType:3 matchedSubstring:v7 range:0 guessesRequired:v8 userInfo:v5, v9];
  [*(a1 + 40) addObject:v10];

  v11 = *MEMORY[0x1E69E9840];
}

@end