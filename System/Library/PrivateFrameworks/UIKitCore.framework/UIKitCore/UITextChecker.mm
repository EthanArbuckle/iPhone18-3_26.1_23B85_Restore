@interface UITextChecker
+ (BOOL)_forgetWord:(id)word inDictionary:(id)dictionary;
+ (BOOL)_isWord:(id)word inDictionary:(id)dictionary;
+ (BOOL)_learnWord:(id)word inDictionary:(id)dictionary;
+ (BOOL)grammarCheckingEnabled;
+ (BOOL)grammarCheckingEnabledForLanguage:(id)language;
+ (NSArray)availableLanguages;
+ (__CFSet)createDictHashTable:(BOOL)table;
+ (id)_dictionaryEntryForName:(id)name;
+ (id)_wordsInDictionary:(id)dictionary;
+ (id)bestLanguageForString:(id)string fromAlternatives:(id)alternatives currentLanguage:(id)language insertionPointIndex:(unint64_t)index scriptForBestLanguage:(id *)bestLanguage;
+ (id)dictionaryInfo:(id)info;
+ (id)grammarAutocorrectionForWord:(id)word;
+ (id)keyboardLanguages;
+ (id)openUserDictionary:(id)dictionary;
+ (id)postEditor;
+ (void)_setDictionaryEntry:(id)entry forName:(id)name;
+ (void)_setWords:(id)words inDictionary:(id)dictionary;
+ (void)handleGrammarCorrectionEntries:(id)entries;
+ (void)noteTextReplacement:(id)replacement;
+ (void)noteWordTerminator:(id)terminator replacement:(id)replacement;
+ (void)performFinalGrammarChecking;
+ (void)setString:(id)string isExemptFromChecker:(BOOL)checker;
- (BOOL)canChangeCaseOfFirstLetterInString:(id)string toUpperCase:(BOOL)case language:(id)language;
- (BOOL)isWordInUserDictionaries:(id)dictionaries caseSensitive:(BOOL)sensitive;
- (NSArray)completionsForPartialWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language;
- (NSArray)guessesForWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language;
- (NSArray)ignoredWords;
- (NSRange)rangeOfMisspelledWordInString:(NSString *)stringToCheck range:(NSRange)range startingAt:(NSInteger)startingOffset wrap:(BOOL)wrapFlag language:(NSString *)language;
- (_NSRange)_chunkAndCheckGrammarInString:(id)string language:(id)language usingChecker:(id)checker details:(id *)details;
- (_NSRange)_chunkAndFindMisspelledWordInString:(id)string languages:(id)languages learnedDictionaries:(id)dictionaries wordCount:(int64_t *)count correction:(id *)correction usingChecker:(id)checker;
- (_NSRange)checkGrammarOfString:(id)string startingAt:(int64_t)at language:(id)language wrap:(BOOL)wrap details:(id *)details;
- (_NSRange)checkSpellingOfString:(id)string startingAt:(int64_t)at language:(id)language wrap:(BOOL)wrap correction:(id *)correction;
- (_NSRange)checkSpellingOfString:(id)string startingAt:(int64_t)at languages:(id)languages wrap:(BOOL)wrap correction:(id *)correction;
- (_NSRange)rangeOfMisspelledWordInString:(id)string range:(_NSRange)range startingAt:(int64_t)at wrap:(BOOL)wrap languages:(id)languages;
- (id)_checker;
- (id)_initWithAsynchronousLoading:(BOOL)loading;
- (id)alternativesForPinyinInputString:(id)string;
- (id)checkString:(id)string range:(_NSRange)range types:(unint64_t)types languages:(id)languages options:(id)options;
- (id)correctionForWordRange:(_NSRange)range inString:(id)string language:(id)language;
- (id)finalResultsFromCheckingString:(id)string range:(_NSRange)range language:(id)language options:(id)options;
- (id)grammarAlternativesForString:(id)string;
- (id)grammarGuessesForRange:(_NSRange)range inString:(id)string language:(id)language;
- (id)stringForInputString:(id)string language:(id)language;
- (id)suggestWordInLanguage:(id)language;
- (int64_t)adjustOffsetToNextWordBoundaryInString:(id)string startingAt:(int64_t)at;
- (int64_t)requestGrammarCheckingOfString:(id)string range:(_NSRange)range language:(id)language options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)ignoreWord:(NSString *)wordToIgnore;
- (void)initGlobalsWithAsynchronousLoading:(BOOL)loading;
- (void)initPostEditingWithAsynchronousLoading:(BOOL)loading;
- (void)initUserDictionaries;
- (void)recordResponse:(unint64_t)response toGrammarDetailInAnnotatedString:(id)string range:(_NSRange)range;
- (void)releaseAllLexicons;
- (void)requestProofreadingReviewOfString:(id)string range:(_NSRange)range language:(id)language options:(id)options completionHandler:(id)handler;
- (void)resetAllLanguageModels;
- (void)setIgnoredWords:(NSArray *)ignoredWords;
@end

@implementation UITextChecker

+ (BOOL)grammarCheckingEnabled
{
  if (qword_1ED49AE10 != -1)
  {
    dispatch_once(&qword_1ED49AE10, &__block_literal_global_509);
  }

  return byte_1ED49AD62;
}

+ (NSArray)availableLanguages
{
  v24 = *MEMORY[0x1E69E9840];
  getAppleSpellClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = 0;
LABEL_6:
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"ar", @"ars", @"bg_BG", @"cs_CZ", @"da_DK", @"de_DE", @"el_GR", @"en_AU", @"en_CA", @"en_GB", @"en_IN", @"en_NZ", @"en_SG", @"en_US", @"en_ZA", @"es_ES", @"es_MX", @"fi_FI", @"fr_FR", @"ga_IE", @"hi", @"hu_HU", @"it_IT", @"nb_NO", @"nl_NL", @"nn", @"pa", @"pl_PL", @"pt_BR", @"pt_PT", @"ro_RO", @"ru_RU", @"sv_SE", @"te", @"tr_TR", @"uk_UA", @"vi_VN", 0}];

    goto LABEL_7;
  }

  availableLanguages = [getAppleSpellClass() availableLanguages];
  v3 = availableLanguages;
  if (!availableLanguages)
  {
    goto LABEL_6;
  }

  v4 = availableLanguages;
  if (![availableLanguages count])
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = [MEMORY[0x1E695DFA8] setWithArray:v4];
  array = [MEMORY[0x1E695DF70] array];
  v7 = UIKeyboardGetCurrentInputMode();
  if (v7)
  {
    v8 = TIInputModeGetNormalizedIdentifier();
    if (v8)
    {
      v9 = [v5 member:v8];

      if (v9)
      {
        [array addObject:v8];
        [v5 removeObject:v8];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = UIKeyboardActiveInputModes;
  v11 = v10;
  if (v10)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = TIInputModeGetNormalizedIdentifier();
          if ([v5 containsObject:v16])
          {
            [array addObject:v16];
            [v5 removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  allObjects = [v5 allObjects];
  [array addObjectsFromArray:allObjects];

  return array;
}

- (void)initUserDictionaries
{
  if (!qword_1ED49AD70)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v4 = qword_1ED49AD70;
    qword_1ED49AD70 = v3;

    [qword_1ED49AD70 addObject:*MEMORY[0x1E696A400]];
    [qword_1ED49AD70 addObject:@"en_US"];
    v5 = qword_1ED49AD70;
    v6 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:0];
    [v5 addObject:v6];
  }

  if (!qword_1ED49AD78)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = qword_1ED49AD78;
    qword_1ED49AD78 = dictionary;
  }

  if (!qword_1ED49AD80)
  {
    v9 = dispatch_queue_create("com.apple.UITextChecker.dictionaries", 0);
    v10 = qword_1ED49AD80;
    qword_1ED49AD80 = v9;
  }
}

- (void)initGlobalsWithAsynchronousLoading:(BOOL)loading
{
  loadingCopy = loading;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v7 = qword_1ED49AD68;
  qword_1ED49AD68 = v6;

  v8 = [objc_alloc(MEMORY[0x1E698B690]) initWithMaximumCapacity:512];
  v9 = qword_1ED49AD98;
  qword_1ED49AD98 = v8;

  [(UITextChecker *)self initUserDictionaries];
  v10 = objc_alloc_init(getAppleSpellClass());
  v11 = qword_1ED49AD88;
  qword_1ED49AD88 = v10;

  [qword_1ED49AD88 spellServer:0 findMisspelledWordInString:@"abcxyz" language:self->_checkerWarmingLanguage wordCount:0 countOnly:0 correction:0];
  if (loadingCopy)
  {
    dispatch_sync(MEMORY[0x1E69E96A0], &__block_literal_global_631);
  }

  else
  {
    _MergedGlobals_7_11 = 1;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)initPostEditingWithAsynchronousLoading:(BOOL)loading
{
  loadingCopy = loading;
  v4 = objc_autoreleasePoolPush();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = qword_1ED49AE00;
  v15 = qword_1ED49AE00;
  if (!qword_1ED49AE00)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getTCPostEditorClass_block_invoke;
    v11[3] = &unk_1E70F2F20;
    v11[4] = &v12;
    __getTCPostEditorClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [v5 alloc];
  v8 = [v7 initWithChecker:qword_1ED49AD88];
  v9 = qword_1ED49AD90;
  qword_1ED49AD90 = v8;

  v10 = [qword_1ED49AD90 grammarDetailForString:@"This is a test. This is another." range:16 language:{4, @"en"}];
  if (loadingCopy)
  {
    dispatch_sync(MEMORY[0x1E69E96A0], &__block_literal_global_77_3);
  }

  else
  {
    byte_1ED49AD61 = 1;
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_initWithAsynchronousLoading:(BOOL)loading
{
  v13.receiver = self;
  v13.super_class = UITextChecker;
  v4 = [(UITextChecker *)&v13 init];
  v4->_usdt = +[UITextChecker uniqueSpellDocumentTag];
  availableLanguages = [objc_opt_class() availableLanguages];
  firstObject = [availableLanguages firstObject];
  checkerWarmingLanguage = v4->_checkerWarmingLanguage;
  v4->_checkerWarmingLanguage = firstObject;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__UITextChecker__initWithAsynchronousLoading___block_invoke;
  v10[3] = &unk_1E70F35E0;
  loadingCopy = loading;
  v8 = v4;
  v11 = v8;
  if (_initWithAsynchronousLoading__onceToken != -1)
  {
    dispatch_once(&_initWithAsynchronousLoading__onceToken, v10);
  }

  return v8;
}

void __46__UITextChecker__initWithAsynchronousLoading___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = dispatch_get_global_queue(17, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__UITextChecker__initWithAsynchronousLoading___block_invoke_2;
    v7[3] = &unk_1E70F3590;
    v3 = &v8;
    v8 = *(a1 + 32);
    v4 = v7;
  }

  else
  {
    [*(a1 + 32) initGlobalsWithAsynchronousLoading:0];
    if (!+[UITextChecker grammarCheckingEnabled])
    {
      return;
    }

    v2 = dispatch_get_global_queue(17, 0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__UITextChecker__initWithAsynchronousLoading___block_invoke_3;
    v5[3] = &unk_1E70F3590;
    v3 = &v6;
    v6 = *(a1 + 32);
    v4 = v5;
  }

  dispatch_async(v2, v4);
}

uint64_t __46__UITextChecker__initWithAsynchronousLoading___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) initGlobalsWithAsynchronousLoading:1];
  result = +[UITextChecker grammarCheckingEnabled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 initPostEditingWithAsynchronousLoading:1];
  }

  return result;
}

- (void)dealloc
{
  [(UITextChecker *)self setIgnoredWords:0];
  v3.receiver = self;
  v3.super_class = UITextChecker;
  [(UITextChecker *)&v3 dealloc];
}

- (id)_checker
{
  if (_MergedGlobals_7_11)
  {
    return qword_1ED49AD88;
  }

  else
  {
    return 0;
  }
}

- (void)resetAllLanguageModels
{
  _checker = [(UITextChecker *)self _checker];
  v3 = _checker;
  if (_checker)
  {
    v5 = _checker;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [qword_1ED49AD68 lock];
      [v5 resetAllLanguageModels];
      [qword_1ED49AD68 unlock];
      v3 = v5;
    }
  }
}

- (void)releaseAllLexicons
{
  _checker = [(UITextChecker *)self _checker];
  v3 = _checker;
  if (_checker)
  {
    v5 = _checker;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [qword_1ED49AD68 lock];
      [v5 releaseAllLexicons];
      [qword_1ED49AD68 unlock];
      v3 = v5;
    }
  }
}

+ (id)keyboardLanguages
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];

  multilingualLanguages = [currentInputMode multilingualLanguages];
  v5 = [multilingualLanguages count];

  if (v5)
  {
    multilingualLanguages2 = [currentInputMode multilingualLanguages];
  }

  else
  {
    primaryLanguage = [currentInputMode primaryLanguage];

    if (primaryLanguage)
    {
      languageWithRegion = [currentInputMode languageWithRegion];
      v16[0] = languageWithRegion;
      multilingualLanguages2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      multilingualLanguages2 = MEMORY[0x1E695E0F0];
    }
  }

  v9 = +[UIDictationController sharedInstance];
  detectedLanguage = [v9 detectedLanguage];

  v11 = +[UIDictationController sharedInstance];
  language = [v11 language];

  if (detectedLanguage)
  {
    v13 = [detectedLanguage stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if ([multilingualLanguages2 containsObject:v13])
    {
      goto LABEL_14;
    }

    v14 = [multilingualLanguages2 arrayByAddingObject:v13];
  }

  else
  {
    if (!language || ([multilingualLanguages2 containsObject:language] & 1) != 0)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v14 = [multilingualLanguages2 arrayByAddingObject:language];
    v13 = 0;
  }

  multilingualLanguages2 = v14;
LABEL_14:

  return multilingualLanguages2;
}

- (int64_t)adjustOffsetToNextWordBoundaryInString:(id)string startingAt:(int64_t)at
{
  stringCopy = string;
  v6 = [stringCopy length];
  if (at >= 1)
  {
    v7 = v6;
    v8 = v6 - at;
    if (v6 > at)
    {
      if (qword_1ED49ADA8 != -1)
      {
        dispatch_once(&qword_1ED49ADA8, &__block_literal_global_207_2);
      }

      if (([qword_1ED49ADA0 characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", at)}] & 1) == 0)
      {
        v9 = [stringCopy rangeOfCharacterFromSet:qword_1ED49ADA0 options:0 range:{at, v8}];
        if (v10)
        {
          at = v9;
        }

        else
        {
          at = v7;
        }
      }
    }
  }

  return at;
}

void __67__UITextChecker_adjustOffsetToNextWordBoundaryInString_startingAt___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v1 = qword_1ED49ADA0;
  qword_1ED49ADA0 = v0;

  v2 = qword_1ED49ADA0;
  v3 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v2 formUnionWithCharacterSet:v3];
}

- (_NSRange)_chunkAndCheckGrammarInString:(id)string language:(id)language usingChecker:(id)checker details:(id *)details
{
  stringCopy = string;
  languageCopy = language;
  checkerCopy = checker;
  v13 = NSPageSize();
  v14 = [stringCopy length];
  v39 = stringCopy;
  if (v13 <= v14)
  {
    v24 = v14;
    detailsCopy = details;
    v38 = checkerCopy;
    if (v14)
    {
      v25 = 0;
      v19 = 0;
      v26 = 0;
      v27 = v13;
      while (1)
      {
        if (v27 + v25 >= v24)
        {
          v28 = v39;
        }

        else
        {
          v28 = v39;
          v29 = [v39 paragraphRangeForRange:{v25, v27}];
          if (v29 + v30 > v27 + v25)
          {
            v27 = v29 + v30 - v25;
          }
        }

        v20 = [v28 substringWithRange:{v25, v27}];

        v40 = 0;
        v31 = [v38 spellServer:self checkGrammarInString:v20 language:languageCopy details:&v40];
        v22 = v32;
        v33 = v40;
        v19 = v33;
        if (v22)
        {
          if (v31 != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }
        }

        v25 += v27;
        if (v25 + v13 <= v24)
        {
          v27 = v13;
        }

        else
        {
          v27 = v24 - v25;
        }

        v26 = v20;
        if (v24 <= v25)
        {
          goto LABEL_28;
        }
      }

      if (detailsCopy)
      {
        v34 = v33;
        *detailsCopy = v19;
      }

      v15 = v31 + v25;
      checkerCopy = v38;
    }

    else
    {
      v20 = 0;
      v19 = 0;
LABEL_28:
      checkerCopy = v38;
      v22 = 0;
      if (detailsCopy)
      {
        *detailsCopy = 0;
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v41 = 0;
    v15 = [checkerCopy spellServer:self checkGrammarInString:stringCopy language:languageCopy details:&v41];
    v17 = v16;
    v18 = v41;
    v19 = v18;
    v20 = 0;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    if (v17)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (!v17)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (details && v22)
    {
      v23 = v18;
      v20 = 0;
      *details = v19;
      v22 = v21;
    }
  }

  v35 = v15;
  v36 = v22;
  result.length = v36;
  result.location = v35;
  return result;
}

- (_NSRange)_chunkAndFindMisspelledWordInString:(id)string languages:(id)languages learnedDictionaries:(id)dictionaries wordCount:(int64_t *)count correction:(id *)correction usingChecker:(id)checker
{
  stringCopy = string;
  languagesCopy = languages;
  checkerCopy = checker;
  v12 = NSPageSize();
  v13 = [stringCopy length];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if (count)
  {
    *count = -1;
  }

  v37 = 0;
  if (v12 <= v13)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    if (v13)
    {
      v20 = 0;
      v21 = 0;
      v22 = v12;
      while (1)
      {
        if (v22 && v20 + v22 < v13)
        {
          v23 = -v22;
          v24 = v22 + v20 - 1;
          do
          {
            if ([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", v24, v32)}])
            {
              v22 = -v23;
              goto LABEL_31;
            }

            --v24;
          }

          while (!__CFADD__(v23++, 1));
          v22 = v20 + v12 <= v13 ? v12 : v13 - v20;
        }

        else
        {
          if (v20 + v12 <= v13)
          {
            v26 = v12;
          }

          else
          {
            v26 = v13 - v20;
          }

          if (!v22)
          {
            v22 = v26;
          }
        }

LABEL_31:
        v27 = [stringCopy substringWithRange:{v20, v22, v32}];

        v28 = [checkerCopy spellServer:self findMisspelledWordInString:v27 languages:languagesCopy wordCount:&v37 countOnly:0 correction:correction];
        v19 = v29;
        if (count)
        {
          *count = (*count & ~((*count | v37) >> 63)) + v37;
        }

        if (v29 && v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v20 += v22;
        if (v20 + v12 <= v13)
        {
          v22 = v12;
        }

        else
        {
          v22 = v13 - v20;
        }

        v21 = v27;
        if (v13 <= v20)
        {

          v19 = 0;
          v32 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_42;
        }
      }

      v32 = v28 + v20;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v15 = [checkerCopy spellServer:self findMisspelledWordInString:stringCopy languages:languagesCopy wordCount:&v37 countOnly:0 correction:correction];
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    if (v16)
    {
      v17 = v15;
    }

    v32 = v17;
    if (count)
    {
      *count = v37;
    }
  }

LABEL_42:

  v30 = v32;
  v31 = v19;
  result.length = v31;
  result.location = v30;
  return result;
}

- (_NSRange)rangeOfMisspelledWordInString:(id)string range:(_NSRange)range startingAt:(int64_t)at wrap:(BOOL)wrap languages:(id)languages
{
  wrapCopy = wrap;
  length = range.length;
  location = range.location;
  stringCopy = string;
  languagesCopy = languages;
  v15 = [stringCopy length];
  if (location || v15 != length)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [stringCopy substringWithRange:{location, length}];
    if (location + length < at && wrapCopy)
    {
      v21 = 0;
    }

    else
    {
      v21 = at - location;
    }

    if (at >= location)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(UITextChecker *)self checkSpellingOfString:v20 startingAt:v22 languages:languagesCopy wrap:wrapCopy correction:0];
    v18 = v24;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v23 + location;
    }

    objc_autoreleasePoolPop(v19);
  }

  else
  {
    v16 = [(UITextChecker *)self checkSpellingOfString:stringCopy startingAt:at languages:languagesCopy wrap:wrapCopy correction:0];
    v18 = v17;
  }

  v25 = v16;
  v26 = v18;
  result.length = v26;
  result.location = v25;
  return result;
}

- (NSRange)rangeOfMisspelledWordInString:(NSString *)stringToCheck range:(NSRange)range startingAt:(NSInteger)startingOffset wrap:(BOOL)wrapFlag language:(NSString *)language
{
  v8 = wrapFlag;
  length = range.length;
  location = range.location;
  v13 = stringToCheck;
  if (language)
  {
    language = [MEMORY[0x1E695DEC8] arrayWithObject:language];
  }

  language = [(UITextChecker *)self rangeOfMisspelledWordInString:v13 range:location startingAt:length wrap:startingOffset languages:v8, language];
  v16 = v15;

  v17 = language;
  v18 = v16;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)checkSpellingOfString:(id)string startingAt:(int64_t)at language:(id)language wrap:(BOOL)wrap correction:(id *)correction
{
  wrapCopy = wrap;
  stringCopy = string;
  if (language)
  {
    language = [MEMORY[0x1E695DEC8] arrayWithObject:language];
  }

  v13 = [(UITextChecker *)self checkSpellingOfString:stringCopy startingAt:at languages:language wrap:wrapCopy correction:correction];
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)checkSpellingOfString:(id)string startingAt:(int64_t)at languages:(id)languages wrap:(BOOL)wrap correction:(id *)correction
{
  wrapCopy = wrap;
  stringCopy = string;
  languagesCopy = languages;
  v45 = -1;
  v42 = stringCopy;
  v13 = [stringCopy length];
  v41 = languagesCopy;
  firstObject = [languagesCopy firstObject];
  v15 = firstObject;
  if (correction)
  {
    *correction = 0;
  }

  v16 = 0;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = 0;
  _checker = 0;
  v21 = 0;
  if (v13 && firstObject)
  {
    if ([firstObject isEqualToString:&stru_1EFB14550])
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
      _checker = 0;
      v21 = 0;
      goto LABEL_38;
    }

    v22 = objc_autoreleasePoolPush();
    _checker = [(UITextChecker *)self _checker];
    if (!_checker)
    {
      v26 = v22;
      v16 = 0;
      v39 = 0;
      v19 = 0;
      v21 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_35:
      objc_autoreleasePoolPop(v26);
      if (correction)
      {
        v31 = v16;
        *correction = v16;
      }

      v18 = v39;
      goto LABEL_38;
    }

    v23 = [(UITextChecker *)self adjustOffsetToNextWordBoundaryInString:v42 startingAt:at];
    v24 = v23;
    if (wrapCopy)
    {
      if (v23 >= v13)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      if (v23 > 0)
      {
        v24 = v25;
      }

      v37 = v24;
      if (v24 > 0)
      {
        v19 = [v42 substringFromIndex:v24];
        v39 = [v42 substringToIndex:v24];
        goto LABEL_24;
      }
    }

    else
    {
      if (v23 >= 1 && v23 >= v13)
      {
        objc_autoreleasePoolPop(v22);
        v16 = 0;
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_38;
      }

      v37 = v23;
      if (v23 > 0)
      {
        v27 = [v42 substringFromIndex:v23];
LABEL_23:
        v19 = v27;
        v39 = 0;
LABEL_24:
        [qword_1ED49AD68 lock];
        [(UITextChecker *)self _setLanguageDictionaryName:v15];
        v28 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
        [(UITextChecker *)self _setDocumentDictionaryName:v28];

        if (correction)
        {
          v29 = &v44;
        }

        else
        {
          v29 = 0;
        }

        if (correction)
        {
          v44 = 0;
        }

        v17 = [(UITextChecker *)self _chunkAndFindMisspelledWordInString:v19 languages:v41 learnedDictionaries:qword_1ED49AD70 wordCount:&v45 correction:v29 usingChecker:_checker];
        v21 = v30;
        v26 = v22;
        if (correction)
        {
          v16 = v44;
          if (!v21)
          {
LABEL_39:
            if (v39)
            {
              v45 = -1;
              if (correction)
              {
                v43 = v16;
              }

              v17 = [UITextChecker _chunkAndFindMisspelledWordInString:"_chunkAndFindMisspelledWordInString:languages:learnedDictionaries:wordCount:correction:usingChecker:" languages:? learnedDictionaries:? wordCount:? correction:? usingChecker:?];
              v21 = v35;
              if (correction)
              {
                v36 = v43;

                v16 = v36;
              }
            }

            goto LABEL_34;
          }
        }

        else
        {
          v16 = 0;
          if (!v30)
          {
            goto LABEL_39;
          }
        }

        v17 += v38;
LABEL_34:
        [qword_1ED49AD68 unlock];
        goto LABEL_35;
      }
    }

    v27 = v42;
    goto LABEL_23;
  }

LABEL_38:
  v32 = v18;

  v33 = v17;
  v34 = v21;
  result.length = v34;
  result.location = v33;
  return result;
}

- (_NSRange)checkGrammarOfString:(id)string startingAt:(int64_t)at language:(id)language wrap:(BOOL)wrap details:(id *)details
{
  wrapCopy = wrap;
  stringCopy = string;
  languageCopy = language;
  v13 = [stringCopy length];
  v14 = v13;
  if (details)
  {
    *details = 0;
  }

  v15 = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (!languageCopy)
  {
    v17 = 0;
    v18 = 0;
    _checker = 0;
    v20 = 0;
    goto LABEL_41;
  }

  detailsCopy = details;
  v17 = 0;
  v18 = 0;
  _checker = 0;
  v20 = 0;
  if (v13)
  {
    if ([languageCopy isEqualToString:&stru_1EFB14550])
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      _checker = 0;
      v20 = 0;
      goto LABEL_41;
    }

    v21 = objc_autoreleasePoolPush();
    _checker = [(UITextChecker *)self _checker];
    if (!_checker)
    {
      v38 = 0;
      contexta = v21;
      v15 = 0;
      v18 = 0;
      v20 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      objc_autoreleasePoolPop(contexta);
LABEL_38:
      if (detailsCopy)
      {
        v34 = v15;
        *detailsCopy = v15;
      }

      v17 = v38;
      goto LABEL_41;
    }

    if (wrapCopy)
    {
      if (v14 <= at)
      {
        atCopy = 0;
      }

      else
      {
        atCopy = at;
      }

      if (at <= 0)
      {
        atCopy2 = at;
      }

      else
      {
        atCopy2 = atCopy;
      }

      context = v21;
      if (atCopy2 > 0)
      {
        v24 = [stringCopy paragraphRangeForRange:{atCopy2, 0}];
        v26 = v25;
        v27 = atCopy2 - v24;
        v18 = [stringCopy substringFromIndex:v24];
        v38 = [stringCopy substringToIndex:v24 + v26];
        goto LABEL_26;
      }
    }

    else
    {
      if (at >= 1 && v14 <= at)
      {
        objc_autoreleasePoolPop(v21);
        v15 = 0;
        v17 = 0;
        v18 = 0;
        v20 = 0;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_41;
      }

      context = v21;
      if (at > 0)
      {
        v24 = [stringCopy paragraphRangeForRange:{at, 0}];
        v27 = at - v24;
        v18 = [stringCopy substringFromIndex:v24];
LABEL_25:
        v38 = 0;
LABEL_26:
        [qword_1ED49AD68 lock];
        [(UITextChecker *)self _setLanguageDictionaryName:languageCopy];
        v28 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
        [(UITextChecker *)self _setDocumentDictionaryName:v28];

        v15 = 0;
        while (1)
        {
          v43 = v15;
          v16 = [(UITextChecker *)self _chunkAndCheckGrammarInString:v18 language:languageCopy usingChecker:_checker details:&v43];
          v20 = v29;
          v30 = v43;

          v15 = v30;
          if (!v20)
          {
            break;
          }

          v31 = v16 + v20;
          if ([v15 count] && v31 > v27)
          {
            v16 += v24;
            break;
          }

          v32 = [v18 length];
          if (v32 <= v31)
          {

            v15 = 0;
            v20 = 0;
            v16 = 0x7FFFFFFFFFFFFFFFLL;
            break;
          }

          if (v27 >= v31)
          {
            v27 -= v31;
          }

          else
          {
            v27 = 0;
          }

          v24 += v31;
          v33 = [stringCopy substringWithRange:{v24, v32 - v31}];

          v18 = v33;
        }

        [qword_1ED49AD68 unlock];
        objc_autoreleasePoolPop(context);
        goto LABEL_38;
      }
    }

    v18 = stringCopy;
    v24 = 0;
    v27 = 0;
    goto LABEL_25;
  }

LABEL_41:
  v35 = v17;

  v36 = v16;
  v37 = v20;
  result.length = v37;
  result.location = v36;
  return result;
}

+ (BOOL)grammarCheckingEnabledForLanguage:(id)language
{
  languageCopy = language;
  if (qword_1ED49AE10 != -1)
  {
    dispatch_once(&qword_1ED49AE10, &__block_literal_global_509);
  }

  v4 = 0;
  if (languageCopy && (byte_1ED49AD62 & 1) != 0)
  {
    v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:languageCopy];
    languageCode = [v5 languageCode];
    v4 = [languageCode isEqualToString:@"en"];
  }

  return v4;
}

+ (id)postEditor
{
  if (byte_1ED49AD61)
  {
    return qword_1ED49AD90;
  }

  else
  {
    return 0;
  }
}

- (int64_t)requestGrammarCheckingOfString:(id)string range:(_NSRange)range language:(id)language options:(id)options completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  handlerCopy = handler;
  v14 = atomic_fetch_add(&qword_1ED49AE18, 1uLL) + 1;
  if (length >= 0x400)
  {
    v15 = 1024;
  }

  else
  {
    v15 = length;
  }

  optionsCopy = options;
  languageCopy = language;
  stringCopy = string;
  postEditor = [(UITextChecker *)self postEditor];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__UITextChecker_requestGrammarCheckingOfString_range_language_options_completionHandler___block_invoke;
  v22[3] = &unk_1E71273A0;
  v23 = handlerCopy;
  v24 = v14;
  v20 = handlerCopy;
  [postEditor requestCheckingOfString:stringCopy range:location language:v15 options:languageCopy completionHandler:{optionsCopy, v22}];

  return v14;
}

- (void)requestProofreadingReviewOfString:(id)string range:(_NSRange)range language:(id)language options:(id)options completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  languageCopy = language;
  optionsCopy = options;
  handlerCopy = handler;
  postEditor = [(UITextChecker *)self postEditor];
  if (postEditor && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (length >= 0x400)
    {
      length = 1024;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__UITextChecker_requestProofreadingReviewOfString_range_language_options_completionHandler___block_invoke;
    v18[3] = &unk_1E70FDA40;
    v19 = handlerCopy;
    [postEditor requestProofreadingReviewOfString:stringCopy range:location language:length offset:languageCopy options:0 completionHandler:{optionsCopy, v18}];
  }
}

- (id)finalResultsFromCheckingString:(id)string range:(_NSRange)range language:(id)language options:(id)options
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  languageCopy = language;
  optionsCopy = options;
  postEditor = [(UITextChecker *)self postEditor];
  v15 = postEditor;
  if (postEditor)
  {
    if (length >= 0x400)
    {
      v16 = 1024;
    }

    else
    {
      v16 = length;
    }

    v17 = [postEditor finalResultsFromCheckingString:stringCopy range:location language:v16 options:{languageCopy, optionsCopy}];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (id)grammarAlternativesForString:(id)string
{
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  if (qword_1ED49AE20 != -1)
  {
    dispatch_once(&qword_1ED49AE20, &__block_literal_global_535_1);
  }

  if (byte_1ED49AD63 == 1)
  {
    selfCopy = self;
    v37 = array;
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v6 currentInputMode];
    languageWithRegion = [currentInputMode languageWithRegion];

    v8 = +[UIKeyboardImpl activeInstance];
    keyboardState = [v8 keyboardState];
    documentState = [keyboardState documentState];

    contextBeforeInput = [documentState contextBeforeInput];
    selectedText = [documentState selectedText];
    v35 = documentState;
    contextAfterInput = [documentState contextAfterInput];
    v14 = &stru_1EFB14550;
    if (contextBeforeInput)
    {
      v15 = contextBeforeInput;
    }

    else
    {
      v15 = &stru_1EFB14550;
    }

    if (selectedText)
    {
      v16 = selectedText;
    }

    else
    {
      v16 = &stru_1EFB14550;
    }

    v34 = contextAfterInput;
    if (contextAfterInput)
    {
      v14 = contextAfterInput;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v15, v16, v14];
    v18 = [v17 length];
    v19 = [stringCopy length];
    v20 = [(__CFString *)contextBeforeInput length];
    v21 = [(__CFString *)selectedText length];
    v36 = v8;
    smartPunctuationController = [v8 smartPunctuationController];
    v22 = 0;
    if (v20 >= v19)
    {
      v23 = v20 - v19;
    }

    else
    {
      v23 = 0;
    }

    v24 = v21 + v20;
    if (v24 + v19 < v18)
    {
      v18 = v24 + v19;
    }

    while (v18 > v23 + v22)
    {
      v25 = [v17 rangeOfString:stringCopy options:0 range:{v23 + v22, v18 - (v23 + v22)}];
      if (!v26)
      {
        break;
      }

      v23 = v25;
      v22 = v26;
      if (v25 <= v20 && v24 <= v25 + v26)
      {
        postEditor = [(UITextChecker *)selfCopy postEditor];
        v28 = [postEditor grammarDetailForString:v17 range:v23 language:{v22, languageWithRegion}];

        if (v28)
        {
          v29 = _detailByApplyingSmartQuotes(v28, smartPunctuationController);
          v30 = [v29 objectForKey:@"NSGrammarCorrections"];

          if (v30)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v30 count])
              {
                v31 = [[off_1E70ECBA0 alloc] initWithPrimaryString:stringCopy alternativeStrings:v30];
                [v37 addObject:v31];
              }
            }
          }
        }

        break;
      }
    }

    array = v37;
  }

  return array;
}

- (id)grammarGuessesForRange:(_NSRange)range inString:(id)string language:(id)language
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  languageCopy = language;
  array = [MEMORY[0x1E695DF70] array];
  postEditor = [(UITextChecker *)self postEditor];
  v13 = [stringCopy length];
  if (postEditor)
  {
    if (length)
    {
      v14 = v13;
      v15 = location + length;
      if (location + length <= v13)
      {
        if ([UITextChecker grammarCheckingEnabledForLanguage:languageCopy])
        {
          v16 = +[UIKeyboardImpl activeInstance];
          smartPunctuationController = [v16 smartPunctuationController];
          autocorrectionPreferenceForTraits = [v16 autocorrectionPreferenceForTraits];
          v17 = stringCopy;
          if (!location && length == v14)
          {
            v47 = array;
            v48 = languageCopy;
            v50 = v16;
            keyboardState = [v16 keyboardState];
            documentState = [keyboardState documentState];

            contextBeforeInput = [documentState contextBeforeInput];
            selectedText = [documentState selectedText];
            v46 = documentState;
            contextAfterInput = [documentState contextAfterInput];
            v23 = &stru_1EFB14550;
            if (contextBeforeInput)
            {
              v24 = contextBeforeInput;
            }

            else
            {
              v24 = &stru_1EFB14550;
            }

            if (selectedText)
            {
              v25 = selectedText;
            }

            else
            {
              v25 = &stru_1EFB14550;
            }

            if (contextAfterInput)
            {
              v23 = contextAfterInput;
            }

            v43 = contextAfterInput;
            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v24, v25, v23];
            v27 = [v26 length];
            v45 = contextBeforeInput;
            v28 = [(__CFString *)contextBeforeInput length];
            v44 = selectedText;
            v29 = [(__CFString *)selectedText length];
            v30 = 0;
            if (v28 >= length)
            {
              location = v28 - length;
            }

            else
            {
              location = 0;
            }

            v31 = v29 + v28;
            if (v29 + v28 + length < v27)
            {
              v27 = v29 + v28 + length;
            }

            while (v27 > location + v30)
            {
              v32 = [v26 rangeOfString:v17 options:0 range:{location + v30, v27 - (location + v30)}];
              if (!v33)
              {
                break;
              }

              location = v32;
              v30 = v33;
              if (v32 <= v28 && v31 <= v32 + v33)
              {
                v34 = v26;

                length = v30;
                v17 = v34;
                goto LABEL_26;
              }
            }

            location = 0;
LABEL_26:

            v15 = location + length;
            array = v47;
            languageCopy = v48;
            v16 = v50;
          }

          if (v15 <= [v17 length])
          {
            v35 = [postEditor grammarDetailForString:v17 range:location language:{length, languageCopy}];
            v36 = v35;
            if (v35)
            {
              v51 = v16;
              v37 = _detailByApplyingSmartQuotes(v35, smartPunctuationController);
              v38 = [v37 objectForKey:@"NSGrammarCorrections"];

              if (v38)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v38 count])
                  {
                    [array addObjectsFromArray:v38];
                  }
                }
              }

              v16 = v51;
            }

            if (autocorrectionPreferenceForTraits && ![array count])
            {
              v39 = [postEditor reversionForString:v17 range:location language:{length, languageCopy}];
              if (v39)
              {
                v40 = v39;
                v41 = _stringByApplyingSmartQuotes(v39, smartPunctuationController);

                if (v41 && ([array containsObject:v41] & 1) == 0)
                {
                  [array addObject:v41];
                }
              }

              else
              {
                v41 = 0;
              }
            }
          }
        }
      }
    }
  }

  return array;
}

- (void)recordResponse:(unint64_t)response toGrammarDetailInAnnotatedString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  postEditor = [(UITextChecker *)self postEditor];
  if (!postEditor || !length || location + length > [stringCopy length])
  {
    goto LABEL_27;
  }

  v10 = [stringCopy attribute:@"NSGrammarCorrections" atIndex:location effectiveRange:0];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v10 = 0;
    }
  }

  v11 = [stringCopy attribute:@"NSGrammarIssueType" atIndex:location effectiveRange:0];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
    }
  }

  v12 = [stringCopy attribute:@"NSGrammarTargetPair" atIndex:location effectiveRange:0];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v12 = 0;
    }
  }

  v13 = [stringCopy attribute:@"NSGrammarConfidenceScore" atIndex:location effectiveRange:0];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }
  }

  v14 = [stringCopy attribute:@"NSGrammarLanguage" atIndex:location effectiveRange:0];
  if (v14)
  {
    languageWithRegion = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_20;
    }
  }

  v16 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v16 currentInputMode];
  languageWithRegion = [currentInputMode languageWithRegion];

LABEL_20:
  if (v10)
  {
    v18 = [v10 count];
    if (v11)
    {
      if (v13 && v18 && languageWithRegion)
      {
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"NSGrammarCorrections", v13, @"NSGrammarConfidenceScore", v11, @"NSGrammarIssueType", v12, @"NSGrammarTargetPair", 0}];
        [postEditor recordResponse:response toGrammarDetail:v19 language:languageWithRegion];
      }
    }
  }

LABEL_27:
}

+ (id)grammarAutocorrectionForWord:(id)word
{
  wordCopy = word;
  v4 = +[UIKeyboardImpl activeInstance];
  _textChoicesAssistant = [v4 _textChoicesAssistant];

  v6 = 0;
  if (wordCopy && _textChoicesAssistant)
  {
    if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
    {
      v7 = [_textChoicesAssistant candidateForFinalString:wordCopy];
      if (v7 && [_recentGrammarCandidates containsObject:v7])
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (void)handleGrammarCorrectionEntries:(id)entries
{
  v23 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  v4 = +[UIKeyboardImpl activeInstance];
  _textChoicesAssistant = [v4 _textChoicesAssistant];

  if (_textChoicesAssistant && +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = entriesCopy;
    v6 = entriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v6 objectForKey:v11];
          v13 = [objc_alloc(MEMORY[0x1E69D95F0]) initWithCandidate:v12 forInput:v11];
          if (objc_opt_respondsToSelector())
          {
            [v13 setConfidence:2];
          }

          v14 = objc_alloc(MEMORY[0x1E69D9588]);
          v15 = [v14 initWithAutocorrection:v13 alternateCorrections:MEMORY[0x1E695E0F0]];
          v16 = [MEMORY[0x1E69D9570] listWithCorrections:v15];
          [_textChoicesAssistant addList:v16 forCandidate:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    entriesCopy = v17;
  }
}

+ (void)noteWordTerminator:(id)terminator replacement:(id)replacement
{
  v29[2] = *MEMORY[0x1E69E9840];
  terminatorCopy = terminator;
  replacementCopy = replacement;
  if ([replacementCopy length])
  {
    string = replacementCopy;
  }

  else
  {
    string = [terminatorCopy string];
  }

  v9 = string;
  v10 = +[UITextChecker keyboardLanguages];
  firstObject = [v10 firstObject];

  v12 = +[UIKeyboardImpl activeInstance];
  v13 = +[UITextChecker postEditor];
  if (qword_1ED49ADB8 != -1)
  {
    dispatch_once(&qword_1ED49ADB8, &__block_literal_global_246);
  }

  inputDelegateManager = [v12 inputDelegateManager];
  hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

  if (v13)
  {
    if (v9)
    {
      [v9 rangeOfCharacterFromSet:qword_1ED49ADB0];
      if (v16)
      {
        if (([self grammarCheckingEnabledForLanguage:firstObject] & hasAsyncCapableInputDelegate) == 1)
        {
          keyboardState = [v12 keyboardState];
          documentState = [keyboardState documentState];

          contextBeforeInput = [documentState contextBeforeInput];
          v20 = [contextBeforeInput length];
          v21 = v20;
          if (contextBeforeInput)
          {
            if (v20)
            {
              [contextBeforeInput rangeOfCharacterFromSet:qword_1ED49ADB0 options:12 range:{0, v20}];
              if (!v22)
              {
                v23 = [contextBeforeInput stringByAppendingString:v9];

                v21 = [v23 length];
                contextBeforeInput = v23;
              }
            }
          }

          if (contextBeforeInput && v21 >= 0xA)
          {
            v28[0] = @"InsertionPoint";
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
            v28[1] = @"ControlRepeatedAutocorrections";
            v29[0] = v27;
            v29[1] = MEMORY[0x1E695E110];
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
            v25 = v24 = documentState;
            v26 = [v13 resultsFromCheckingString:contextBeforeInput range:0 language:v21 options:{firstObject, v25}];

            documentState = v24;
          }
        }
      }
    }
  }
}

void __48__UITextChecker_noteWordTerminator_replacement___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".!?։۔।።᙮‼‽⁇⁈⁉。！．？｡"];
  v1 = qword_1ED49ADB0;
  qword_1ED49ADB0 = v0;
}

+ (void)noteTextReplacement:(id)replacement
{
  replacementCopy = replacement;
  replacementText = [replacementCopy replacementText];
  originalText = [replacementCopy originalText];
  v6 = +[UITextChecker keyboardLanguages];
  firstObject = [v6 firstObject];

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = +[UITextChecker postEditor];
  if (v9)
  {
    v10 = originalText == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || replacementText == 0;
  if (!v11 && [self grammarCheckingEnabledForLanguage:firstObject])
  {
    v49 = replacementText;
    keyboardState = [v8 keyboardState];
    documentState = [keyboardState documentState];

    v47 = v8;
    smartPunctuationController = [v8 smartPunctuationController];
    contextBeforeInput = [documentState contextBeforeInput];
    selectedText = [documentState selectedText];
    v46 = documentState;
    contextAfterInput = [documentState contextAfterInput];
    v17 = &stru_1EFB14550;
    if (contextBeforeInput)
    {
      v18 = contextBeforeInput;
    }

    else
    {
      v18 = &stru_1EFB14550;
    }

    if (selectedText)
    {
      v19 = selectedText;
    }

    else
    {
      v19 = &stru_1EFB14550;
    }

    v52 = contextAfterInput;
    if (contextAfterInput)
    {
      v17 = contextAfterInput;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v18, v19, v17];
    v21 = firstObject;
    v22 = [v20 length];
    v23 = [originalText length];
    v54 = contextBeforeInput;
    v24 = [(__CFString *)contextBeforeInput length];
    v53 = selectedText;
    v25 = [(__CFString *)selectedText length];
    v26 = 0;
    if (v24 >= v23)
    {
      v27 = v24 - v23;
    }

    else
    {
      v27 = 0;
    }

    v28 = v25 + v24;
    if (v25 + v24 + v23 >= v22)
    {
      v29 = v22;
    }

    else
    {
      v29 = v25 + v24 + v23;
    }

    firstObject = v21;
    do
    {
      if (v29 <= v27 + v26 || (v30 = [v20 rangeOfString:originalText options:0 range:{v27 + v26, v29 - (v27 + v26)}], !v31))
      {
        v35 = 0;
        v8 = v47;
        replacementText = v49;
        v36 = v46;
        goto LABEL_47;
      }

      v27 = v30;
      v26 = v31;
    }

    while (v30 > v24 || v28 > v30 + v31);
    v32 = [v9 grammarDetailForString:v20 range:v30 language:{v31, v21}];
    if (v32 && (v33 = v32, [v32 objectForKey:@"NSGrammarCorrections"], v34 = objc_claimAutoreleasedReturnValue(), v34, v32 = v33, v34))
    {
      v35 = 0;
      v8 = v47;
      replacementText = v49;
      v36 = v46;
    }

    else
    {
      v44 = v32;
      v35 = [v9 reversionForString:v20 range:v27 language:{v26, firstObject}];
      if (v35)
      {
        v37 = [v20 stringByReplacingCharactersInRange:v27 withString:{v26, v35}];
        v38 = [v9 grammarDetailForString:v37 range:v27 language:{objc_msgSend(v35, "length"), firstObject}];

        v32 = v38;
        v8 = v47;
        replacementText = v49;
      }

      else
      {
        v8 = v47;
        replacementText = v49;
        v32 = v44;
      }

      v36 = v46;
      if (!v32)
      {
        goto LABEL_47;
      }
    }

    v45 = v32;
    v39 = _detailByApplyingSmartQuotes(v32, smartPunctuationController);
    v40 = [v39 objectForKey:@"NSGrammarCorrections"];

    if (v40 && [v40 count])
    {
      if (v35)
      {
        v48 = [replacementText isEqualToString:v35];
        inputDelegateManager = [v8 inputDelegateManager];
        hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

        if (hasAsyncCapableInputDelegate)
        {
          if (v48)
          {
            v42 = 5;
          }

          else
          {
            v42 = 3;
          }

          goto LABEL_45;
        }
      }

      else
      {
        firstObject2 = [v40 firstObject];
        v51 = [replacementText isEqual:firstObject2];

        if (v51)
        {
          v42 = 1;
LABEL_45:
          [v9 recordResponse:v42 toGrammarDetail:v45 language:firstObject];
        }
      }
    }

LABEL_47:
  }
}

+ (void)performFinalGrammarChecking
{
  if (qword_1ED49AE28 != -1)
  {
    dispatch_once(&qword_1ED49AE28, &__block_literal_global_541_0);
  }

  if (byte_1ED49AD64 == 1)
  {
    v2 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v2 inputDelegateManager];
    textInputDelegate = [inputDelegateManager textInputDelegate];

    v4 = textInputDelegate;
    if (textInputDelegate)
    {
      v5 = objc_opt_respondsToSelector();
      v4 = textInputDelegate;
      if (v5)
      {
        [textInputDelegate performFinalGrammarChecking];
        v4 = textInputDelegate;
      }
    }
  }
}

- (id)checkString:(id)string range:(_NSRange)range types:(unint64_t)types languages:(id)languages options:(id)options
{
  typesCopy = types;
  length = range.length;
  location = range.location;
  v93 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  languagesCopy = languages;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v58 = languagesCopy;
  firstObject = [languagesCopy firstObject];
  if (location < location + length)
  {
    v14 = location;
    do
    {
      v15 = [(UITextChecker *)self rangeOfMisspelledWordInString:stringCopy range:location startingAt:length wrap:v14 languages:0, v58];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v17 = v16;
      if (!v16)
      {
        break;
      }

      v18 = v15;
      v19 = [objc_alloc(MEMORY[0x1E696AEB8]) initWithRange:{v15, v16}];
      [array addObject:v19];
      v14 = v18 + v17;
    }

    while (v14 < location + length);
  }

  if ([UITextChecker grammarCheckingEnabledForLanguage:firstObject])
  {
    postEditor = [(UITextChecker *)self postEditor];
    v20 = +[UIKeyboardImpl activeInstance];
    v56 = v20;
    if ((typesCopy & 0x200) != 0)
    {
      v22 = [v20 autocorrectionPreferenceForTraits] == 0;
      v20 = v56;
      v21 = !v22;
    }

    else
    {
      v21 = 0;
    }

    smartPunctuationController = [v20 smartPunctuationController];
    if (length >= 0x400)
    {
      v23 = 1024;
    }

    else
    {
      v23 = length;
    }

    [postEditor resultsFromCheckingString:stringCopy range:location language:v23 options:{firstObject, optionsCopy}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v81 = 0u;
    v67 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v67)
    {
      v66 = *v79;
      v62 = v21;
      do
      {
        v24 = 0;
        do
        {
          if (*v79 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v68 = v24;
          v25 = *(*(&v78 + 1) + 8 * v24);
          resultType = [v25 resultType];
          if (resultType == 512)
          {
            if (v21)
            {
              v28 = _resultByApplyingSmartQuotesToResult(v25, smartPunctuationController);
              v29 = obj;
              v30 = v28;
              range = [v30 range];
              v76 = v32;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v72 = v29;
              v33 = [v72 countByEnumeratingWithState:&v86 objects:v92 count:16];
              v69 = v30;
              v73 = v30;
              if (v33)
              {
                v34 = v33;
                v35 = *v87;
                v73 = v30;
                v70 = *v87;
                do
                {
                  v36 = 0;
                  v71 = v34;
                  do
                  {
                    if (*v87 != v35)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v37 = *(*(&v86 + 1) + 8 * v36);
                    range2 = [v37 range];
                    v40 = v39;
                    if ([v37 resultType] == 4)
                    {
                      grammarDetails = [v37 grammarDetails];
                      v82 = 0u;
                      v83 = 0u;
                      v84 = 0u;
                      v85 = 0u;
                      v77 = grammarDetails;
                      v42 = [v77 countByEnumeratingWithState:&v82 objects:v91 count:16];
                      if (v42)
                      {
                        v43 = v42;
                        v74 = v40;
                        v75 = v36;
                        v44 = *v83;
                        while (2)
                        {
                          for (i = 0; i != v43; ++i)
                          {
                            if (*v83 != v44)
                            {
                              objc_enumerationMutation(v77);
                            }

                            v46 = *(*(&v82 + 1) + 8 * i);
                            if (objc_opt_respondsToSelector())
                            {
                              v47 = [v46 objectForKey:@"NSGrammarRange"];
                              if (v47 && (objc_opt_respondsToSelector() & 1) != 0)
                              {
                                rangeValue = [v47 rangeValue];
                                v50 = v49;
                              }

                              else
                              {
                                v50 = 0;
                                rangeValue = 0x7FFFFFFFFFFFFFFFLL;
                              }
                            }

                            else
                            {
                              v50 = 0;
                              rangeValue = 0x7FFFFFFFFFFFFFFFLL;
                            }

                            if (range == rangeValue + range2 && v76 == v50)
                            {
                              v51 = [UIExtendedCorrectionCheckingResult alloc];
                              replacementString = [v69 replacementString];
                              v53 = [(UIExtendedCorrectionCheckingResult *)v51 initWithRange:range replacementString:v76 sentenceRange:replacementString detail:range2, v74, v46];

                              v73 = v53;
                              goto LABEL_52;
                            }
                          }

                          v43 = [v77 countByEnumeratingWithState:&v82 objects:v91 count:16];
                          if (v43)
                          {
                            continue;
                          }

                          break;
                        }

LABEL_52:
                        v35 = v70;
                        v34 = v71;
                        v36 = v75;
                      }
                    }

                    ++v36;
                  }

                  while (v36 != v34);
                  v34 = [v72 countByEnumeratingWithState:&v86 objects:v92 count:16];
                }

                while (v34);
              }

              v21 = v62;
              v27 = v73;
              if (v73)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  detail = [v73 detail];
                  [postEditor recordResponse:4 toGrammarDetail:detail language:firstObject];
                }

LABEL_59:
                [array addObject:v27];
              }
            }
          }

          else if (resultType == 4)
          {
            if (qword_1ED49AE20 != -1)
            {
              dispatch_once(&qword_1ED49AE20, &__block_literal_global_535_1);
            }

            if (byte_1ED49AD63)
            {
              v27 = _resultByApplyingSmartQuotesToResult(v25, smartPunctuationController);
              if (v27)
              {
                goto LABEL_59;
              }
            }
          }

          v24 = v68 + 1;
        }

        while (v68 + 1 != v67);
        v67 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v67);
    }
  }

  return array;
}

- (id)correctionForWordRange:(_NSRange)range inString:(id)string language:(id)language
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  languageCopy = language;
  v11 = [stringCopy length];
  if (location || length != v11)
  {
    v12 = [stringCopy substringWithRange:{location, length}];
  }

  else
  {
    v12 = stringCopy;
  }

  v13 = v12;
  v23 = 0;
  v14 = [(UITextChecker *)self checkSpellingOfString:v12 startingAt:0 language:languageCopy wrap:0 correction:&v23];
  v16 = v15;
  v17 = v23;
  v18 = v17;
  if (v16 == length && v14 == 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

- (NSArray)guessesForWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language
{
  length = range.length;
  location = range.location;
  v9 = string;
  v10 = language;
  if (!v9)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (![(NSString *)v9 isEqualToString:&stru_1EFB14550])
  {
    if (length)
    {
      v12 = [(NSString *)v9 length];
      v11 = 0;
      if (v10)
      {
        if (location + length <= v12)
        {
          if (![(NSString *)v10 isEqualToString:&stru_1EFB14550])
          {
            _checker = [(UITextChecker *)self _checker];
            if (_checker)
            {
              [qword_1ED49AD68 lock];
              [(UITextChecker *)self _setLanguageDictionaryName:v10];
              v15 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
              [(UITextChecker *)self _setDocumentDictionaryName:v15];

              v16 = [_checker spellServer:self suggestGuessesForWordRange:location inString:length language:{v9, v10}];
              [qword_1ED49AD68 unlock];
            }

            else
            {
              v16 = 0;
            }

            v11 = v16;

            goto LABEL_8;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_8:

  return v11;
}

- (NSArray)completionsForPartialWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language
{
  length = range.length;
  location = range.location;
  v9 = string;
  v10 = language;
  if (!v9)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (![(NSString *)v9 isEqualToString:&stru_1EFB14550])
  {
    if (length)
    {
      v12 = [(NSString *)v9 length];
      v11 = 0;
      if (v10)
      {
        if (location + length <= v12)
        {
          if (![(NSString *)v10 isEqualToString:&stru_1EFB14550])
          {
            _checker = [(UITextChecker *)self _checker];
            if (_checker)
            {
              [qword_1ED49AD68 lock];
              [(UITextChecker *)self _setLanguageDictionaryName:v10];
              v15 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
              [(UITextChecker *)self _setDocumentDictionaryName:v15];

              v16 = [_checker spellServer:self suggestCompletionsForPartialWordRange:location inString:length language:{v9, v10}];
              [qword_1ED49AD68 unlock];
            }

            else
            {
              v16 = 0;
            }

            v11 = v16;

            goto LABEL_8;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_8:

  return v11;
}

- (id)suggestWordInLanguage:(id)language
{
  languageCopy = language;
  v5 = languageCopy;
  if (languageCopy && ([languageCopy isEqualToString:&stru_1EFB14550] & 1) == 0)
  {
    _checker = [(UITextChecker *)self _checker];
    if (_checker)
    {
      [qword_1ED49AD68 lock];
      [(UITextChecker *)self _setLanguageDictionaryName:v5];
      v8 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
      [(UITextChecker *)self _setDocumentDictionaryName:v8];

      v9 = [_checker spellServer:self suggestWordWithLengthInRange:4 language:{3, v5}];
      [qword_1ED49AD68 unlock];
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canChangeCaseOfFirstLetterInString:(id)string toUpperCase:(BOOL)case language:(id)language
{
  caseCopy = case;
  stringCopy = string;
  languageCopy = language;
  v10 = languageCopy;
  if (languageCopy && ([languageCopy isEqualToString:&stru_1EFB14550] & 1) == 0 && (-[UITextChecker _checker](self, "_checker"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    [qword_1ED49AD68 lock];
    [(UITextChecker *)self _setLanguageDictionaryName:v10];
    v13 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
    [(UITextChecker *)self _setDocumentDictionaryName:v13];

    v14 = [v12 spellServer:self canChangeCaseOfFirstLetterInString:stringCopy toUpperCase:caseCopy language:v10];
    [qword_1ED49AD68 unlock];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)stringForInputString:(id)string language:(id)language
{
  stringCopy = string;
  languageCopy = language;
  v8 = languageCopy;
  if (languageCopy && ([languageCopy isEqualToString:&stru_1EFB14550] & 1) == 0)
  {
    _checker = [(UITextChecker *)self _checker];
    if (_checker)
    {
      [qword_1ED49AD68 lock];
      [(UITextChecker *)self _setLanguageDictionaryName:v8];
      v11 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
      [(UITextChecker *)self _setDocumentDictionaryName:v11];

      v12 = [_checker spellServer:self stringForInputString:stringCopy language:v8];
      [qword_1ED49AD68 unlock];
    }

    else
    {
      v12 = 0;
    }

    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)alternativesForPinyinInputString:(id)string
{
  stringCopy = string;
  _checker = [(UITextChecker *)self _checker];
  if (_checker)
  {
    [qword_1ED49AD68 lock];
    [(UITextChecker *)self _setLanguageDictionaryName:@"en"];
    v6 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
    [(UITextChecker *)self _setDocumentDictionaryName:v6];

    v7 = [_checker spellServer:self alternativesForPinyinInputString:stringCopy language:@"en"];
    [qword_1ED49AD68 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)bestLanguageForString:(id)string fromAlternatives:(id)alternatives currentLanguage:(id)language insertionPointIndex:(unint64_t)index scriptForBestLanguage:(id *)bestLanguage
{
  v112 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  alternativesCopy = alternatives;
  languageCopy = language;
  v81 = stringCopy;
  v11 = [stringCopy length];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__219;
  v104 = __Block_byref_object_dispose__219;
  v105 = 0;
  v15 = objc_alloc(MEMORY[0x1E696AD00]);
  v16 = *MEMORY[0x1E696A528];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E696A528], *MEMORY[0x1E696A548], 0}];
  v18 = [v15 initWithTagSchemes:v17 options:0];

  [v18 setString:stringCopy];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __114__UITextChecker_bestLanguageForString_fromAlternatives_currentLanguage_insertionPointIndex_scriptForBestLanguage___block_invoke;
  v92[3] = &unk_1E71273C8;
  v93 = v18;
  v97 = &v106;
  v80 = dictionary;
  v94 = v80;
  v98 = &v100;
  indexCopy = index;
  v79 = dictionary2;
  v95 = v79;
  v76 = dictionary3;
  v96 = v76;
  v74 = v93;
  [v93 enumerateTagsInRange:0 scheme:v11 options:v16 usingBlock:{14, v92}];
  v19 = v101[5];
  v101[5] = 0;

  if (v107[3])
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v20 = v80;
    v21 = [v20 countByEnumeratingWithState:&v88 objects:v111 count:16];
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v82 = 0;
      v83 = 0;
      v24 = *v89;
      while (1)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v89 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v88 + 1) + 8 * i);
          if (([v26 isEqualToString:@"und"] & 1) == 0)
          {
            v27 = [v20 objectForKey:v26];
            unsignedIntegerValue = [v27 unsignedIntegerValue];

            if (unsignedIntegerValue <= v23)
            {
              v30 = unsignedIntegerValue;
              v29 = v26;
              if (unsignedIntegerValue <= v22)
              {
                continue;
              }
            }

            else
            {
              v29 = v82;

              v82 = v26;
              v83 = v29;
              v30 = v23;
              v23 = unsignedIntegerValue;
            }

            v31 = v26;

            v22 = v30;
            v83 = v29;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v88 objects:v111 count:16];
        if (!v21)
        {
          v32 = v22;
          v33 = v23;
          goto LABEL_17;
        }
      }
    }

    v82 = 0;
    v83 = 0;
    v32 = 0.0;
    v33 = 0.0;
LABEL_17:

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v35 = v79;
    v36 = [v35 countByEnumeratingWithState:&v84 objects:v110 count:16];
    if (v36)
    {
      v37 = 0;
      v34 = 0;
      v38 = *v85;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v85 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v84 + 1) + 8 * j);
          v41 = [v35 objectForKey:v40];
          unsignedIntegerValue2 = [v41 unsignedIntegerValue];

          if (unsignedIntegerValue2 > v37)
          {
            v43 = v40;

            v37 = unsignedIntegerValue2;
            v34 = v43;
          }
        }

        v36 = [v35 countByEnumeratingWithState:&v84 objects:v110 count:16];
      }

      while (v36);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v82 = 0;
    v83 = 0;
    v32 = 0.0;
    v33 = 0.0;
  }

  if ([v34 isEqualToString:@"Cyrl"])
  {
    goto LABEL_30;
  }

  v46 = languageCopy;
  v47 = v82;
  v48 = [v47 length];
  if (!v46 || !v47 || (v49 = v48, ![v46 hasPrefix:v47]))
  {

    goto LABEL_39;
  }

  if ([v46 length] <= v49)
  {

LABEL_60:
    v45 = v46;
    v65 = [v76 objectForKey:v47];
LABEL_86:
    v44 = v65;
    goto LABEL_87;
  }

  v50 = [v46 characterAtIndex:v49];

  if (v50 == 95 || v50 == 45)
  {
    goto LABEL_60;
  }

LABEL_39:
  v51 = v101[5];
  v52 = v46;
  v53 = v51;
  v54 = [v53 length];
  if (!v46 || !v53 || (v55 = v54, ![v52 hasPrefix:v53]))
  {

    goto LABEL_47;
  }

  if ([v52 length] <= v55)
  {

LABEL_62:
    v45 = v52;
    v65 = [v76 objectForKey:v101[5]];
    goto LABEL_86;
  }

  v56 = [v52 characterAtIndex:v55];

  if (v56 == 95 || v56 == 45)
  {
    goto LABEL_62;
  }

LABEL_47:
  v57 = v52;
  v58 = v83;
  v59 = [v58 length];
  if (!v46 || !v58 || (v60 = v59, ![v57 hasPrefix:v58]))
  {

    goto LABEL_55;
  }

  if ([v57 length] <= v60)
  {
  }

  else
  {
    v61 = [v57 characterAtIndex:v60];

    if (v61 != 95 && v61 != 45)
    {
      goto LABEL_55;
    }
  }

  v44 = 0;
  if (v32 * 4.0 > v107[3])
  {
    v45 = 0;
    goto LABEL_87;
  }

  v45 = 0;
  if (v33 >= v32 + v32)
  {
LABEL_55:
    v62 = v101[5];
    if (!v62 || ([v62 isEqualToString:v47] & 1) != 0)
    {
      goto LABEL_75;
    }

    v63 = [alternativesCopy containsObject:v101[5]];
    v64 = v101[5];
    if (v63)
    {
      v45 = v64;
      goto LABEL_73;
    }

    v66 = alternativesMatchingLanguage(alternativesCopy, v64);
    if ([v66 containsObject:v101[5]])
    {
      v67 = v101[5];
    }

    else
    {
      if (![v66 count])
      {
        v45 = 0;
        goto LABEL_72;
      }

      v67 = [v66 objectAtIndex:0];
    }

    v45 = v67;
LABEL_72:

LABEL_73:
    if (v45)
    {
      v65 = [v76 objectForKey:v101[5]];
      goto LABEL_86;
    }

LABEL_75:
    if (v33 + v33 <= v107[3])
    {
LABEL_30:
      v44 = 0;
      v45 = 0;
      goto LABEL_87;
    }

    if ([alternativesCopy containsObject:{v47, v33 + v33}])
    {
      v45 = v47;
LABEL_84:
      if (v45)
      {
        v65 = [v76 objectForKey:v47];
        goto LABEL_86;
      }

      v44 = 0;
      goto LABEL_87;
    }

    v68 = alternativesMatchingLanguage(alternativesCopy, v47);
    if ([v68 containsObject:v57])
    {
      v69 = v57;
    }

    else
    {
      if (![v68 count])
      {
        v45 = 0;
        goto LABEL_83;
      }

      v69 = [v68 objectAtIndex:0];
    }

    v45 = v69;
LABEL_83:

    goto LABEL_84;
  }

LABEL_87:
  if (bestLanguage)
  {
    v70 = v44;
    *bestLanguage = v44;
  }

  v71 = v96;
  v72 = v45;

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v106, 8);

  return v72;
}

void __114__UITextChecker_bestLanguageForString_fromAlternatives_currentLanguage_insertionPointIndex_scriptForBestLanguage___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v17 = a2;
  v8 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x1E696A548] tokenRange:0 sentenceRange:0];
  *(*(*(a1 + 64) + 8) + 24) += a4;
  if (v17)
  {
    v9 = [*(a1 + 40) objectForKey:v17];
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue") + a4}];
    [v10 setObject:v11 forKey:v17];

    v12 = *(a1 + 80);
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = *(*(a1 + 72) + 8);
      if (a3 < v12 || !*(v13 + 40))
      {
        objc_storeStrong((v13 + 40), a2);
      }
    }
  }

  if (v8)
  {
    v14 = [*(a1 + 48) objectForKey:v8];
    v15 = *(a1 + 48);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue") + a4}];
    [v15 setObject:v16 forKey:v8];

    if (v17)
    {
      [*(a1 + 56) setObject:v8 forKey:?];
    }
  }
}

+ (__CFSet)createDictHashTable:(BOOL)table
{
  memset(&v5, 0, 32);
  v5.hash = strHashNoCase;
  v5.equal = strIsEqualNoCase;
  if (table)
  {
    v3 = ReallyFree;
  }

  else
  {
    v3 = 0;
  }

  v5.release = v3;
  return CFSetCreateMutable(0, 0, &v5);
}

+ (id)openUserDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && ![dictionaryCopy isEqualToString:*MEMORY[0x1E696A400]])
  {
    v14 = 0;
    goto LABEL_34;
  }

  v6 = objc_autoreleasePoolPush();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__219;
  v40 = __Block_byref_object_dispose__219;
  v41 = 0;
  v7 = dispatch_semaphore_create(0);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = connectionToRemoteDataServer();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __dataWithContentsOfUserDictionary_block_invoke;
  v34[3] = &unk_1E70FD7F8;
  v9 = v7;
  v35 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v34];

  if (!v10)
  {
LABEL_9:

LABEL_10:
    v13 = v37[5];
    goto LABEL_11;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __dataWithContentsOfUserDictionary_block_invoke_2;
  v31[3] = &unk_1E7127470;
  v33 = &v36;
  v11 = v9;
  v32 = v11;
  [v10 requestTextCheckerLocalDictionaryWithCompletionHandler:v31];
  v12 = dispatch_time(0, 3000000000);
  if (!dispatch_semaphore_wait(v11, v12))
  {

    goto LABEL_9;
  }

  NSLog(&cfstr_SRequestedData_0.isa, "dataWithContentsOfUserDictionary", 3);

  v13 = 0;
LABEL_11:

  _Block_object_dispose(&v36, 8);
  bytes = [v13 bytes];
  v16 = [v13 length];
  if (bytes)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_32;
  }

  v18 = v16;
  v29 = v6;
  v30 = v5;
  v19 = [self createDictHashTable:0];
  v20 = MEMORY[0x18CFE77E0](0);
  if (v18 >= 1)
  {
    v21 = &bytes[v18];
    v22 = -1;
    v23 = 1;
    do
    {
      if (!(v22 + 100 * (v23 / 0x64)))
      {
        MEMORY[0x18CFE77C0](v20);
        v20 = MEMORY[0x18CFE77E0](0);
      }

      v24 = strchr(bytes, 10);
      if (!v24)
      {
        v24 = &bytes[strlen(bytes)];
      }

      if (*bytes != 35)
      {
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:bytes length:v24 - bytes encoding:4 freeWhenDone:0];
        if (v25)
        {
          v26 = v25;
          if (CFSetGetValue(v19, bytes))
          {
            CFSetRemoveValue(v19, bytes);
          }

          else
          {
            CFSetSetValue(v19, bytes);
          }
        }
      }

      bytes = v24 + 1;
      --v22;
      ++v23;
    }

    while ((v24 + 1) < v21);
  }

  MEMORY[0x18CFE77C0](v20);
  v6 = v29;
  v5 = v30;
  if (!v19)
  {
    goto LABEL_32;
  }

  v27 = [objc_allocWithZone(UITextCheckerDictionaryEntry) init];
  if (!v27)
  {
    CFRelease(v19);
LABEL_32:

    v13 = 0;
    v14 = 0;
    goto LABEL_33;
  }

  v14 = v27;
  *(v27 + 8) = v19;
  objc_storeStrong((v27 + 16), v13);
  v14[3] = v18;
LABEL_33:
  objc_autoreleasePoolPop(v6);

LABEL_34:

  return v14;
}

+ (id)_dictionaryEntryForName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  v5 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__219;
  v6 = qword_1ED49AD80;
  v17 = __Block_byref_object_dispose__219;
  v18 = 0;
  if (qword_1ED49AD78)
  {
    v7 = qword_1ED49AD80 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__UITextChecker__dictionaryEntryForName___block_invoke;
    v10[3] = &unk_1E70FCDA0;
    v12 = &v13;
    v11 = nameCopy;
    dispatch_sync(v6, v10);

    v5 = v14[5];
  }

  v8 = v5;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __41__UITextChecker__dictionaryEntryForName___block_invoke(uint64_t a1)
{
  v2 = [qword_1ED49AD78 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)_setDictionaryEntry:(id)entry forName:(id)name
{
  entryCopy = entry;
  nameCopy = name;
  v7 = qword_1ED49AD80;
  if (qword_1ED49AD78)
  {
    v8 = qword_1ED49AD80 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__UITextChecker__setDictionaryEntry_forName___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v10 = entryCopy;
    v11 = nameCopy;
    dispatch_sync(v7, v9);
  }
}

uint64_t __45__UITextChecker__setDictionaryEntry_forName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [qword_1ED49AD78 setObject:v1 forKey:*(a1 + 40)];
  }

  else
  {
    return [qword_1ED49AD78 removeObjectForKey:*(a1 + 40)];
  }
}

+ (id)dictionaryInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    infoCopy = *MEMORY[0x1E696A400];
  }

  v5 = [self _dictionaryEntryForName:infoCopy];
  if (!v5)
  {
    v5 = [self openUserDictionary:infoCopy];
    if (v5 || (v5 = [objc_allocWithZone(UITextCheckerDictionaryEntry) init]) != 0 && (v7 = objc_msgSend(self, "createDictHashTable:", 1), (v5[1] = v7) != 0))
    {
      [self _setDictionaryEntry:v5 forName:infoCopy];
    }
  }

  return v5;
}

+ (BOOL)_learnWord:(id)word inDictionary:(id)dictionary
{
  wordCopy = word;
  dictionaryCopy = dictionary;
  uTF8String = [wordCopy UTF8String];
  if (!dictionaryCopy)
  {
    dictionaryCopy = *MEMORY[0x1E696A400];
  }

  v9 = [self dictionaryInfo:dictionaryCopy];
  v10 = v9;
  if (v9 && (v11 = *(v9 + 8)) != 0 && !CFSetGetValue(v11, uTF8String))
  {
    v14 = strdup(uTF8String);
    CFSetSetValue(v10[1], v14);
    appendWordToDictionary(wordCopy, dictionaryCopy);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_forgetWord:(id)word inDictionary:(id)dictionary
{
  wordCopy = word;
  dictionaryCopy = dictionary;
  uTF8String = [wordCopy UTF8String];
  if (!dictionaryCopy)
  {
    dictionaryCopy = *MEMORY[0x1E696A400];
  }

  v9 = [self dictionaryInfo:dictionaryCopy];
  v10 = v9;
  if (v9 && (v11 = *(v9 + 8)) != 0 && CFSetGetValue(v11, uTF8String))
  {
    CFSetRemoveValue(v10[1], uTF8String);
    appendWordToDictionary(wordCopy, dictionaryCopy);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_isWord:(id)word inDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [word UTF8String];
  if (!dictionaryCopy)
  {
    dictionaryCopy = *MEMORY[0x1E696A400];
  }

  v8 = [self dictionaryInfo:dictionaryCopy];
  v9 = v8;
  v11 = v8 && (v10 = *(v8 + 8)) != 0 && CFSetGetValue(v10, uTF8String) != 0;

  return v11;
}

+ (id)_wordsInDictionary:(id)dictionary
{
  v3 = [self dictionaryInfo:dictionary];
  v4 = v3;
  if (v3 && (v5 = *(v3 + 8)) != 0 && (Count = CFSetGetCount(v5), Count >= 1))
  {
    v7 = Count;
    array = [MEMORY[0x1E695DF70] array];
    v9 = NSZoneMalloc(0, 8 * v7);
    if (v9)
    {
      v10 = v9;
      CFSetGetValues(v4[1], v9);
      for (i = 0; i != v7; ++i)
      {
        v12 = v10[i];
        if (v12)
        {
          v13 = strchr(v10[i], 10);
          v14 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (v13)
          {
            v15 = v13 - v12;
          }

          else
          {
            v15 = strlen(v12);
          }

          v16 = [v14 initWithBytesNoCopy:v12 length:v15 encoding:4 freeWhenDone:0];
          [array addObject:v16];
        }
      }

      NSZoneFree(0, v10);
    }
  }

  else
  {
    array = 0;
  }

  v17 = [array copy];

  return v17;
}

+ (void)_setWords:(id)words inDictionary:(id)dictionary
{
  wordsCopy = words;
  dictionaryCopy = dictionary;
  v7 = [self dictionaryInfo:dictionaryCopy];
  if (v7)
  {
    v8 = v7;
    [self _setDictionaryEntry:0 forName:dictionaryCopy];
  }

  if (wordsCopy)
  {
    v9 = [wordsCopy count];
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = v9 - 1;
      v13 = wordsCopy;
      do
      {
        if (v11 || ([self dictionaryInfo:dictionaryCopy], v11 = objc_claimAutoreleasedReturnValue(), v13 = wordsCopy, v11))
        {
          if (v11[1])
          {
            v14 = [v13 objectAtIndex:v12];

            if (v14)
            {
              v10 = v14;
              uTF8String = [v14 UTF8String];
              if (CFSetGetValue(v11[1], uTF8String))
              {
                CFSetRemoveValue(v11[1], uTF8String);
              }

              else
              {
                v16 = strdup(uTF8String);
                CFSetSetValue(v11[1], v16);
              }
            }

            else
            {
              v10 = 0;
            }

            v13 = wordsCopy;
          }
        }

        --v12;
      }

      while (v12 != -1);
    }
  }
}

- (void)ignoreWord:(NSString *)wordToIgnore
{
  v4 = wordToIgnore;
  v5 = objc_opt_class();
  v6 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
  [v5 _learnWord:v4 inDictionary:v6];
}

- (NSArray)ignoredWords
{
  v3 = objc_opt_class();
  v4 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
  v5 = [v3 _wordsInDictionary:v4];

  return v5;
}

- (void)setIgnoredWords:(NSArray *)ignoredWords
{
  v4 = ignoredWords;
  v5 = objc_opt_class();
  v6 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
  [v5 _setWords:v4 inDictionary:v6];
}

- (BOOL)isWordInUserDictionaries:(id)dictionaries caseSensitive:(BOOL)sensitive
{
  v32 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = qword_1ED49AD70;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v31 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([objc_opt_class() _isWord:dictionariesCopy inDictionary:{*(*(&v18 + 1) + 8 * v8), v18}])
        {
          bOOLValue = 1;
          goto LABEL_12;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  lowercaseString = [dictionariesCopy lowercaseString];

  dictionariesCopy = lowercaseString;
  v10 = qword_1ED49AD98;
  objc_sync_enter(v10);
  v5 = [qword_1ED49AD98 objectForKey:dictionariesCopy];
  objc_sync_exit(v10);

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    dictionariesCopy = dictionariesCopy;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v13 = dispatch_semaphore_create(0);
    if (v13)
    {
      v14 = connectionToRemoteDataServer();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __stringIsExemptFromChecker_block_invoke;
      v25[3] = &unk_1E70FD7F8;
      v15 = v13;
      v26 = v15;
      v16 = [v14 remoteObjectProxyWithErrorHandler:v25];

      if (v16)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __stringIsExemptFromChecker_block_invoke_2;
        v22[3] = &unk_1E70FF890;
        v24 = &v27;
        v17 = v15;
        v23 = v17;
        [v16 string:dictionariesCopy isExemptFromTextCheckerWithCompletionHandler:v22];
        dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    bOOLValue = *(v28 + 24);

    _Block_object_dispose(&v27, 8);
    setCachedExemptionForString(dictionariesCopy, bOOLValue & 1);
    v5 = 0;
  }

LABEL_12:

  return bOOLValue & 1;
}

+ (void)setString:(id)string isExemptFromChecker:(BOOL)checker
{
  checkerCopy = checker;
  stringCopy = string;
  if ([stringCopy length])
  {
    lowercaseString = [stringCopy lowercaseString];

    setCachedExemptionForString(lowercaseString, checkerCopy);
    v6 = lowercaseString;
  }

  else
  {
    v6 = stringCopy;
  }
}

@end