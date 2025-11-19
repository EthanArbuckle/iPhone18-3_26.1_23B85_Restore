@interface UITextChecker
+ (BOOL)_forgetWord:(id)a3 inDictionary:(id)a4;
+ (BOOL)_isWord:(id)a3 inDictionary:(id)a4;
+ (BOOL)_learnWord:(id)a3 inDictionary:(id)a4;
+ (BOOL)grammarCheckingEnabled;
+ (BOOL)grammarCheckingEnabledForLanguage:(id)a3;
+ (NSArray)availableLanguages;
+ (__CFSet)createDictHashTable:(BOOL)a3;
+ (id)_dictionaryEntryForName:(id)a3;
+ (id)_wordsInDictionary:(id)a3;
+ (id)bestLanguageForString:(id)a3 fromAlternatives:(id)a4 currentLanguage:(id)a5 insertionPointIndex:(unint64_t)a6 scriptForBestLanguage:(id *)a7;
+ (id)dictionaryInfo:(id)a3;
+ (id)grammarAutocorrectionForWord:(id)a3;
+ (id)keyboardLanguages;
+ (id)openUserDictionary:(id)a3;
+ (id)postEditor;
+ (void)_setDictionaryEntry:(id)a3 forName:(id)a4;
+ (void)_setWords:(id)a3 inDictionary:(id)a4;
+ (void)handleGrammarCorrectionEntries:(id)a3;
+ (void)noteTextReplacement:(id)a3;
+ (void)noteWordTerminator:(id)a3 replacement:(id)a4;
+ (void)performFinalGrammarChecking;
+ (void)setString:(id)a3 isExemptFromChecker:(BOOL)a4;
- (BOOL)canChangeCaseOfFirstLetterInString:(id)a3 toUpperCase:(BOOL)a4 language:(id)a5;
- (BOOL)isWordInUserDictionaries:(id)a3 caseSensitive:(BOOL)a4;
- (NSArray)completionsForPartialWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language;
- (NSArray)guessesForWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language;
- (NSArray)ignoredWords;
- (NSRange)rangeOfMisspelledWordInString:(NSString *)stringToCheck range:(NSRange)range startingAt:(NSInteger)startingOffset wrap:(BOOL)wrapFlag language:(NSString *)language;
- (_NSRange)_chunkAndCheckGrammarInString:(id)a3 language:(id)a4 usingChecker:(id)a5 details:(id *)a6;
- (_NSRange)_chunkAndFindMisspelledWordInString:(id)a3 languages:(id)a4 learnedDictionaries:(id)a5 wordCount:(int64_t *)a6 correction:(id *)a7 usingChecker:(id)a8;
- (_NSRange)checkGrammarOfString:(id)a3 startingAt:(int64_t)a4 language:(id)a5 wrap:(BOOL)a6 details:(id *)a7;
- (_NSRange)checkSpellingOfString:(id)a3 startingAt:(int64_t)a4 language:(id)a5 wrap:(BOOL)a6 correction:(id *)a7;
- (_NSRange)checkSpellingOfString:(id)a3 startingAt:(int64_t)a4 languages:(id)a5 wrap:(BOOL)a6 correction:(id *)a7;
- (_NSRange)rangeOfMisspelledWordInString:(id)a3 range:(_NSRange)a4 startingAt:(int64_t)a5 wrap:(BOOL)a6 languages:(id)a7;
- (id)_checker;
- (id)_initWithAsynchronousLoading:(BOOL)a3;
- (id)alternativesForPinyinInputString:(id)a3;
- (id)checkString:(id)a3 range:(_NSRange)a4 types:(unint64_t)a5 languages:(id)a6 options:(id)a7;
- (id)correctionForWordRange:(_NSRange)a3 inString:(id)a4 language:(id)a5;
- (id)finalResultsFromCheckingString:(id)a3 range:(_NSRange)a4 language:(id)a5 options:(id)a6;
- (id)grammarAlternativesForString:(id)a3;
- (id)grammarGuessesForRange:(_NSRange)a3 inString:(id)a4 language:(id)a5;
- (id)stringForInputString:(id)a3 language:(id)a4;
- (id)suggestWordInLanguage:(id)a3;
- (int64_t)adjustOffsetToNextWordBoundaryInString:(id)a3 startingAt:(int64_t)a4;
- (int64_t)requestGrammarCheckingOfString:(id)a3 range:(_NSRange)a4 language:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)ignoreWord:(NSString *)wordToIgnore;
- (void)initGlobalsWithAsynchronousLoading:(BOOL)a3;
- (void)initPostEditingWithAsynchronousLoading:(BOOL)a3;
- (void)initUserDictionaries;
- (void)recordResponse:(unint64_t)a3 toGrammarDetailInAnnotatedString:(id)a4 range:(_NSRange)a5;
- (void)releaseAllLexicons;
- (void)requestProofreadingReviewOfString:(id)a3 range:(_NSRange)a4 language:(id)a5 options:(id)a6 completionHandler:(id)a7;
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

  v2 = [getAppleSpellClass() availableLanguages];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = v2;
  if (![v2 count])
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = [MEMORY[0x1E695DFA8] setWithArray:v4];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = UIKeyboardGetCurrentInputMode();
  if (v7)
  {
    v8 = TIInputModeGetNormalizedIdentifier();
    if (v8)
    {
      v9 = [v5 member:v8];

      if (v9)
      {
        [v6 addObject:v8];
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
            [v6 addObject:v16];
            [v5 removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  v17 = [v5 allObjects];
  [v6 addObjectsFromArray:v17];

  return v6;
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
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = qword_1ED49AD78;
    qword_1ED49AD78 = v7;
  }

  if (!qword_1ED49AD80)
  {
    v9 = dispatch_queue_create("com.apple.UITextChecker.dictionaries", 0);
    v10 = qword_1ED49AD80;
    qword_1ED49AD80 = v9;
  }
}

- (void)initGlobalsWithAsynchronousLoading:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
  {
    dispatch_sync(MEMORY[0x1E69E96A0], &__block_literal_global_631);
  }

  else
  {
    _MergedGlobals_7_11 = 1;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)initPostEditingWithAsynchronousLoading:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
  {
    dispatch_sync(MEMORY[0x1E69E96A0], &__block_literal_global_77_3);
  }

  else
  {
    byte_1ED49AD61 = 1;
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_initWithAsynchronousLoading:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = UITextChecker;
  v4 = [(UITextChecker *)&v13 init];
  v4->_usdt = +[UITextChecker uniqueSpellDocumentTag];
  v5 = [objc_opt_class() availableLanguages];
  v6 = [v5 firstObject];
  checkerWarmingLanguage = v4->_checkerWarmingLanguage;
  v4->_checkerWarmingLanguage = v6;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__UITextChecker__initWithAsynchronousLoading___block_invoke;
  v10[3] = &unk_1E70F35E0;
  v12 = a3;
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
  v2 = [(UITextChecker *)self _checker];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
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
  v2 = [(UITextChecker *)self _checker];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
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
  v3 = [v2 currentInputMode];

  v4 = [v3 multilingualLanguages];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 multilingualLanguages];
  }

  else
  {
    v7 = [v3 primaryLanguage];

    if (v7)
    {
      v8 = [v3 languageWithRegion];
      v16[0] = v8;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  v9 = +[UIDictationController sharedInstance];
  v10 = [v9 detectedLanguage];

  v11 = +[UIDictationController sharedInstance];
  v12 = [v11 language];

  if (v10)
  {
    v13 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if ([v6 containsObject:v13])
    {
      goto LABEL_14;
    }

    v14 = [v6 arrayByAddingObject:v13];
  }

  else
  {
    if (!v12 || ([v6 containsObject:v12] & 1) != 0)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v14 = [v6 arrayByAddingObject:v12];
    v13 = 0;
  }

  v6 = v14;
LABEL_14:

  return v6;
}

- (int64_t)adjustOffsetToNextWordBoundaryInString:(id)a3 startingAt:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (a4 >= 1)
  {
    v7 = v6;
    v8 = v6 - a4;
    if (v6 > a4)
    {
      if (qword_1ED49ADA8 != -1)
      {
        dispatch_once(&qword_1ED49ADA8, &__block_literal_global_207_2);
      }

      if (([qword_1ED49ADA0 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", a4)}] & 1) == 0)
      {
        v9 = [v5 rangeOfCharacterFromSet:qword_1ED49ADA0 options:0 range:{a4, v8}];
        if (v10)
        {
          a4 = v9;
        }

        else
        {
          a4 = v7;
        }
      }
    }
  }

  return a4;
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

- (_NSRange)_chunkAndCheckGrammarInString:(id)a3 language:(id)a4 usingChecker:(id)a5 details:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = NSPageSize();
  v14 = [v10 length];
  v39 = v10;
  if (v13 <= v14)
  {
    v24 = v14;
    v37 = a6;
    v38 = v12;
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
        v31 = [v38 spellServer:self checkGrammarInString:v20 language:v11 details:&v40];
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

      if (v37)
      {
        v34 = v33;
        *v37 = v19;
      }

      v15 = v31 + v25;
      v12 = v38;
    }

    else
    {
      v20 = 0;
      v19 = 0;
LABEL_28:
      v12 = v38;
      v22 = 0;
      if (v37)
      {
        *v37 = 0;
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v41 = 0;
    v15 = [v12 spellServer:self checkGrammarInString:v10 language:v11 details:&v41];
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

    if (a6 && v22)
    {
      v23 = v18;
      v20 = 0;
      *a6 = v19;
      v22 = v21;
    }
  }

  v35 = v15;
  v36 = v22;
  result.length = v36;
  result.location = v35;
  return result;
}

- (_NSRange)_chunkAndFindMisspelledWordInString:(id)a3 languages:(id)a4 learnedDictionaries:(id)a5 wordCount:(int64_t *)a6 correction:(id *)a7 usingChecker:(id)a8
{
  v11 = a3;
  v36 = a4;
  v35 = a8;
  v12 = NSPageSize();
  v13 = [v11 length];
  v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if (a6)
  {
    *a6 = -1;
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
            if ([v14 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", v24, v32)}])
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
        v27 = [v11 substringWithRange:{v20, v22, v32}];

        v28 = [v35 spellServer:self findMisspelledWordInString:v27 languages:v36 wordCount:&v37 countOnly:0 correction:a7];
        v19 = v29;
        if (a6)
        {
          *a6 = (*a6 & ~((*a6 | v37) >> 63)) + v37;
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
    v15 = [v35 spellServer:self findMisspelledWordInString:v11 languages:v36 wordCount:&v37 countOnly:0 correction:a7];
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
    if (a6)
    {
      *a6 = v37;
    }
  }

LABEL_42:

  v30 = v32;
  v31 = v19;
  result.length = v31;
  result.location = v30;
  return result;
}

- (_NSRange)rangeOfMisspelledWordInString:(id)a3 range:(_NSRange)a4 startingAt:(int64_t)a5 wrap:(BOOL)a6 languages:(id)a7
{
  v8 = a6;
  length = a4.length;
  location = a4.location;
  v13 = a3;
  v14 = a7;
  v15 = [v13 length];
  if (location || v15 != length)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [v13 substringWithRange:{location, length}];
    if (location + length < a5 && v8)
    {
      v21 = 0;
    }

    else
    {
      v21 = a5 - location;
    }

    if (a5 >= location)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(UITextChecker *)self checkSpellingOfString:v20 startingAt:v22 languages:v14 wrap:v8 correction:0];
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
    v16 = [(UITextChecker *)self checkSpellingOfString:v13 startingAt:a5 languages:v14 wrap:v8 correction:0];
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

  v14 = [(UITextChecker *)self rangeOfMisspelledWordInString:v13 range:location startingAt:length wrap:startingOffset languages:v8, language];
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)checkSpellingOfString:(id)a3 startingAt:(int64_t)a4 language:(id)a5 wrap:(BOOL)a6 correction:(id *)a7
{
  v8 = a6;
  v12 = a3;
  if (a5)
  {
    a5 = [MEMORY[0x1E695DEC8] arrayWithObject:a5];
  }

  v13 = [(UITextChecker *)self checkSpellingOfString:v12 startingAt:a4 languages:a5 wrap:v8 correction:a7];
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)checkSpellingOfString:(id)a3 startingAt:(int64_t)a4 languages:(id)a5 wrap:(BOOL)a6 correction:(id *)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a5;
  v45 = -1;
  v42 = v11;
  v13 = [v11 length];
  v41 = v12;
  v14 = [v12 firstObject];
  v15 = v14;
  if (a7)
  {
    *a7 = 0;
  }

  v16 = 0;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v13 && v14)
  {
    if ([v14 isEqualToString:&stru_1EFB14550])
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_38;
    }

    v22 = objc_autoreleasePoolPush();
    v20 = [(UITextChecker *)self _checker];
    if (!v20)
    {
      v26 = v22;
      v16 = 0;
      v39 = 0;
      v19 = 0;
      v21 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_35:
      objc_autoreleasePoolPop(v26);
      if (a7)
      {
        v31 = v16;
        *a7 = v16;
      }

      v18 = v39;
      goto LABEL_38;
    }

    v23 = [(UITextChecker *)self adjustOffsetToNextWordBoundaryInString:v42 startingAt:a4];
    v24 = v23;
    if (v8)
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

        if (a7)
        {
          v29 = &v44;
        }

        else
        {
          v29 = 0;
        }

        if (a7)
        {
          v44 = 0;
        }

        v17 = [(UITextChecker *)self _chunkAndFindMisspelledWordInString:v19 languages:v41 learnedDictionaries:qword_1ED49AD70 wordCount:&v45 correction:v29 usingChecker:v20];
        v21 = v30;
        v26 = v22;
        if (a7)
        {
          v16 = v44;
          if (!v21)
          {
LABEL_39:
            if (v39)
            {
              v45 = -1;
              if (a7)
              {
                v43 = v16;
              }

              v17 = [UITextChecker _chunkAndFindMisspelledWordInString:"_chunkAndFindMisspelledWordInString:languages:learnedDictionaries:wordCount:correction:usingChecker:" languages:? learnedDictionaries:? wordCount:? correction:? usingChecker:?];
              v21 = v35;
              if (a7)
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

- (_NSRange)checkGrammarOfString:(id)a3 startingAt:(int64_t)a4 language:(id)a5 wrap:(BOOL)a6 details:(id *)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a5;
  v13 = [v11 length];
  v14 = v13;
  if (a7)
  {
    *a7 = 0;
  }

  v15 = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_41;
  }

  v41 = a7;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v13)
  {
    if ([v12 isEqualToString:&stru_1EFB14550])
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_41;
    }

    v21 = objc_autoreleasePoolPush();
    v19 = [(UITextChecker *)self _checker];
    if (!v19)
    {
      v38 = 0;
      contexta = v21;
      v15 = 0;
      v18 = 0;
      v20 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      objc_autoreleasePoolPop(contexta);
LABEL_38:
      if (v41)
      {
        v34 = v15;
        *v41 = v15;
      }

      v17 = v38;
      goto LABEL_41;
    }

    if (v8)
    {
      if (v14 <= a4)
      {
        v22 = 0;
      }

      else
      {
        v22 = a4;
      }

      if (a4 <= 0)
      {
        v23 = a4;
      }

      else
      {
        v23 = v22;
      }

      context = v21;
      if (v23 > 0)
      {
        v24 = [v11 paragraphRangeForRange:{v23, 0}];
        v26 = v25;
        v27 = v23 - v24;
        v18 = [v11 substringFromIndex:v24];
        v38 = [v11 substringToIndex:v24 + v26];
        goto LABEL_26;
      }
    }

    else
    {
      if (a4 >= 1 && v14 <= a4)
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
      if (a4 > 0)
      {
        v24 = [v11 paragraphRangeForRange:{a4, 0}];
        v27 = a4 - v24;
        v18 = [v11 substringFromIndex:v24];
LABEL_25:
        v38 = 0;
LABEL_26:
        [qword_1ED49AD68 lock];
        [(UITextChecker *)self _setLanguageDictionaryName:v12];
        v28 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
        [(UITextChecker *)self _setDocumentDictionaryName:v28];

        v15 = 0;
        while (1)
        {
          v43 = v15;
          v16 = [(UITextChecker *)self _chunkAndCheckGrammarInString:v18 language:v12 usingChecker:v19 details:&v43];
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
          v33 = [v11 substringWithRange:{v24, v32 - v31}];

          v18 = v33;
        }

        [qword_1ED49AD68 unlock];
        objc_autoreleasePoolPop(context);
        goto LABEL_38;
      }
    }

    v18 = v11;
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

+ (BOOL)grammarCheckingEnabledForLanguage:(id)a3
{
  v3 = a3;
  if (qword_1ED49AE10 != -1)
  {
    dispatch_once(&qword_1ED49AE10, &__block_literal_global_509);
  }

  v4 = 0;
  if (v3 && (byte_1ED49AD62 & 1) != 0)
  {
    v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v3];
    v6 = [v5 languageCode];
    v4 = [v6 isEqualToString:@"en"];
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

- (int64_t)requestGrammarCheckingOfString:(id)a3 range:(_NSRange)a4 language:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  length = a4.length;
  location = a4.location;
  v13 = a7;
  v14 = atomic_fetch_add(&qword_1ED49AE18, 1uLL) + 1;
  if (length >= 0x400)
  {
    v15 = 1024;
  }

  else
  {
    v15 = length;
  }

  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [(UITextChecker *)self postEditor];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__UITextChecker_requestGrammarCheckingOfString_range_language_options_completionHandler___block_invoke;
  v22[3] = &unk_1E71273A0;
  v23 = v13;
  v24 = v14;
  v20 = v13;
  [v19 requestCheckingOfString:v18 range:location language:v15 options:v17 completionHandler:{v16, v22}];

  return v14;
}

- (void)requestProofreadingReviewOfString:(id)a3 range:(_NSRange)a4 language:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  length = a4.length;
  location = a4.location;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(UITextChecker *)self postEditor];
  if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (length >= 0x400)
    {
      length = 1024;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__UITextChecker_requestProofreadingReviewOfString_range_language_options_completionHandler___block_invoke;
    v18[3] = &unk_1E70FDA40;
    v19 = v16;
    [v17 requestProofreadingReviewOfString:v13 range:location language:length offset:v14 options:0 completionHandler:{v15, v18}];
  }
}

- (id)finalResultsFromCheckingString:(id)a3 range:(_NSRange)a4 language:(id)a5 options:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(UITextChecker *)self postEditor];
  v15 = v14;
  if (v14)
  {
    if (length >= 0x400)
    {
      v16 = 1024;
    }

    else
    {
      v16 = length;
    }

    v17 = [v14 finalResultsFromCheckingString:v11 range:location language:v16 options:{v12, v13}];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (id)grammarAlternativesForString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (qword_1ED49AE20 != -1)
  {
    dispatch_once(&qword_1ED49AE20, &__block_literal_global_535_1);
  }

  if (byte_1ED49AD63 == 1)
  {
    v33 = self;
    v37 = v5;
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    v7 = [v6 currentInputMode];
    v39 = [v7 languageWithRegion];

    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 keyboardState];
    v10 = [v9 documentState];

    v11 = [v10 contextBeforeInput];
    v12 = [v10 selectedText];
    v35 = v10;
    v13 = [v10 contextAfterInput];
    v14 = &stru_1EFB14550;
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = &stru_1EFB14550;
    }

    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = &stru_1EFB14550;
    }

    v34 = v13;
    if (v13)
    {
      v14 = v13;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v15, v16, v14];
    v18 = [v17 length];
    v19 = [v4 length];
    v20 = [(__CFString *)v11 length];
    v21 = [(__CFString *)v12 length];
    v36 = v8;
    v38 = [v8 smartPunctuationController];
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
      v25 = [v17 rangeOfString:v4 options:0 range:{v23 + v22, v18 - (v23 + v22)}];
      if (!v26)
      {
        break;
      }

      v23 = v25;
      v22 = v26;
      if (v25 <= v20 && v24 <= v25 + v26)
      {
        v27 = [(UITextChecker *)v33 postEditor];
        v28 = [v27 grammarDetailForString:v17 range:v23 language:{v22, v39}];

        if (v28)
        {
          v29 = _detailByApplyingSmartQuotes(v28, v38);
          v30 = [v29 objectForKey:@"NSGrammarCorrections"];

          if (v30)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v30 count])
              {
                v31 = [[off_1E70ECBA0 alloc] initWithPrimaryString:v4 alternativeStrings:v30];
                [v37 addObject:v31];
              }
            }
          }
        }

        break;
      }
    }

    v5 = v37;
  }

  return v5;
}

- (id)grammarGuessesForRange:(_NSRange)a3 inString:(id)a4 language:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [(UITextChecker *)self postEditor];
  v13 = [v9 length];
  if (v12)
  {
    if (length)
    {
      v14 = v13;
      v15 = location + length;
      if (location + length <= v13)
      {
        if ([UITextChecker grammarCheckingEnabledForLanguage:v10])
        {
          v16 = +[UIKeyboardImpl activeInstance];
          v52 = [v16 smartPunctuationController];
          v49 = [v16 autocorrectionPreferenceForTraits];
          v17 = v9;
          if (!location && length == v14)
          {
            v47 = v11;
            v48 = v10;
            v50 = v16;
            v18 = [v16 keyboardState];
            v19 = [v18 documentState];

            v20 = [v19 contextBeforeInput];
            v21 = [v19 selectedText];
            v46 = v19;
            v22 = [v19 contextAfterInput];
            v23 = &stru_1EFB14550;
            if (v20)
            {
              v24 = v20;
            }

            else
            {
              v24 = &stru_1EFB14550;
            }

            if (v21)
            {
              v25 = v21;
            }

            else
            {
              v25 = &stru_1EFB14550;
            }

            if (v22)
            {
              v23 = v22;
            }

            v43 = v22;
            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v24, v25, v23];
            v27 = [v26 length];
            v45 = v20;
            v28 = [(__CFString *)v20 length];
            v44 = v21;
            v29 = [(__CFString *)v21 length];
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
            v11 = v47;
            v10 = v48;
            v16 = v50;
          }

          if (v15 <= [v17 length])
          {
            v35 = [v12 grammarDetailForString:v17 range:location language:{length, v10}];
            v36 = v35;
            if (v35)
            {
              v51 = v16;
              v37 = _detailByApplyingSmartQuotes(v35, v52);
              v38 = [v37 objectForKey:@"NSGrammarCorrections"];

              if (v38)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v38 count])
                  {
                    [v11 addObjectsFromArray:v38];
                  }
                }
              }

              v16 = v51;
            }

            if (v49 && ![v11 count])
            {
              v39 = [v12 reversionForString:v17 range:location language:{length, v10}];
              if (v39)
              {
                v40 = v39;
                v41 = _stringByApplyingSmartQuotes(v39, v52);

                if (v41 && ([v11 containsObject:v41] & 1) == 0)
                {
                  [v11 addObject:v41];
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

  return v11;
}

- (void)recordResponse:(unint64_t)a3 toGrammarDetailInAnnotatedString:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v20 = a4;
  v9 = [(UITextChecker *)self postEditor];
  if (!v9 || !length || location + length > [v20 length])
  {
    goto LABEL_27;
  }

  v10 = [v20 attribute:@"NSGrammarCorrections" atIndex:location effectiveRange:0];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v10 = 0;
    }
  }

  v11 = [v20 attribute:@"NSGrammarIssueType" atIndex:location effectiveRange:0];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
    }
  }

  v12 = [v20 attribute:@"NSGrammarTargetPair" atIndex:location effectiveRange:0];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v12 = 0;
    }
  }

  v13 = [v20 attribute:@"NSGrammarConfidenceScore" atIndex:location effectiveRange:0];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }
  }

  v14 = [v20 attribute:@"NSGrammarLanguage" atIndex:location effectiveRange:0];
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_20;
    }
  }

  v16 = +[UIKeyboardInputModeController sharedInputModeController];
  v17 = [v16 currentInputMode];
  v15 = [v17 languageWithRegion];

LABEL_20:
  if (v10)
  {
    v18 = [v10 count];
    if (v11)
    {
      if (v13 && v18 && v15)
      {
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"NSGrammarCorrections", v13, @"NSGrammarConfidenceScore", v11, @"NSGrammarIssueType", v12, @"NSGrammarTargetPair", 0}];
        [v9 recordResponse:a3 toGrammarDetail:v19 language:v15];
      }
    }
  }

LABEL_27:
}

+ (id)grammarAutocorrectionForWord:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _textChoicesAssistant];

  v6 = 0;
  if (v3 && v5)
  {
    if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
    {
      v7 = [v5 candidateForFinalString:v3];
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

+ (void)handleGrammarCorrectionEntries:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _textChoicesAssistant];

  if (v5 && +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v3;
    v6 = v3;
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
          [v5 addList:v16 forCandidate:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v3 = v17;
  }
}

+ (void)noteWordTerminator:(id)a3 replacement:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = [v6 string];
  }

  v9 = v8;
  v10 = +[UITextChecker keyboardLanguages];
  v11 = [v10 firstObject];

  v12 = +[UIKeyboardImpl activeInstance];
  v13 = +[UITextChecker postEditor];
  if (qword_1ED49ADB8 != -1)
  {
    dispatch_once(&qword_1ED49ADB8, &__block_literal_global_246);
  }

  v14 = [v12 inputDelegateManager];
  v15 = [v14 hasAsyncCapableInputDelegate];

  if (v13)
  {
    if (v9)
    {
      [v9 rangeOfCharacterFromSet:qword_1ED49ADB0];
      if (v16)
      {
        if (([a1 grammarCheckingEnabledForLanguage:v11] & v15) == 1)
        {
          v17 = [v12 keyboardState];
          v18 = [v17 documentState];

          v19 = [v18 contextBeforeInput];
          v20 = [v19 length];
          v21 = v20;
          if (v19)
          {
            if (v20)
            {
              [v19 rangeOfCharacterFromSet:qword_1ED49ADB0 options:12 range:{0, v20}];
              if (!v22)
              {
                v23 = [v19 stringByAppendingString:v9];

                v21 = [v23 length];
                v19 = v23;
              }
            }
          }

          if (v19 && v21 >= 0xA)
          {
            v28[0] = @"InsertionPoint";
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
            v28[1] = @"ControlRepeatedAutocorrections";
            v29[0] = v27;
            v29[1] = MEMORY[0x1E695E110];
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
            v25 = v24 = v18;
            v26 = [v13 resultsFromCheckingString:v19 range:0 language:v21 options:{v11, v25}];

            v18 = v24;
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

+ (void)noteTextReplacement:(id)a3
{
  v56 = a3;
  v4 = [v56 replacementText];
  v5 = [v56 originalText];
  v6 = +[UITextChecker keyboardLanguages];
  v7 = [v6 firstObject];

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = +[UITextChecker postEditor];
  if (v9)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || v4 == 0;
  if (!v11 && [a1 grammarCheckingEnabledForLanguage:v7])
  {
    v49 = v4;
    v12 = [v8 keyboardState];
    v13 = [v12 documentState];

    v47 = v8;
    v55 = [v8 smartPunctuationController];
    v14 = [v13 contextBeforeInput];
    v15 = [v13 selectedText];
    v46 = v13;
    v16 = [v13 contextAfterInput];
    v17 = &stru_1EFB14550;
    if (v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = &stru_1EFB14550;
    }

    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = &stru_1EFB14550;
    }

    v52 = v16;
    if (v16)
    {
      v17 = v16;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v18, v19, v17];
    v21 = v7;
    v22 = [v20 length];
    v23 = [v5 length];
    v54 = v14;
    v24 = [(__CFString *)v14 length];
    v53 = v15;
    v25 = [(__CFString *)v15 length];
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

    v7 = v21;
    do
    {
      if (v29 <= v27 + v26 || (v30 = [v20 rangeOfString:v5 options:0 range:{v27 + v26, v29 - (v27 + v26)}], !v31))
      {
        v35 = 0;
        v8 = v47;
        v4 = v49;
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
      v4 = v49;
      v36 = v46;
    }

    else
    {
      v44 = v32;
      v35 = [v9 reversionForString:v20 range:v27 language:{v26, v7}];
      if (v35)
      {
        v37 = [v20 stringByReplacingCharactersInRange:v27 withString:{v26, v35}];
        v38 = [v9 grammarDetailForString:v37 range:v27 language:{objc_msgSend(v35, "length"), v7}];

        v32 = v38;
        v8 = v47;
        v4 = v49;
      }

      else
      {
        v8 = v47;
        v4 = v49;
        v32 = v44;
      }

      v36 = v46;
      if (!v32)
      {
        goto LABEL_47;
      }
    }

    v45 = v32;
    v39 = _detailByApplyingSmartQuotes(v32, v55);
    v40 = [v39 objectForKey:@"NSGrammarCorrections"];

    if (v40 && [v40 count])
    {
      if (v35)
      {
        v48 = [v4 isEqualToString:v35];
        v41 = [v8 inputDelegateManager];
        v50 = [v41 hasAsyncCapableInputDelegate];

        if (v50)
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
        v43 = [v40 firstObject];
        v51 = [v4 isEqual:v43];

        if (v51)
        {
          v42 = 1;
LABEL_45:
          [v9 recordResponse:v42 toGrammarDetail:v45 language:v7];
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
    v3 = [v2 inputDelegateManager];
    v6 = [v3 textInputDelegate];

    v4 = v6;
    if (v6)
    {
      v5 = objc_opt_respondsToSelector();
      v4 = v6;
      if (v5)
      {
        [v6 performFinalGrammarChecking];
        v4 = v6;
      }
    }
  }
}

- (id)checkString:(id)a3 range:(_NSRange)a4 types:(unint64_t)a5 languages:(id)a6 options:(id)a7
{
  v9 = a5;
  length = a4.length;
  location = a4.location;
  v93 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v13 = a6;
  v57 = a7;
  v63 = [MEMORY[0x1E695DF70] array];
  v58 = v13;
  v61 = [v13 firstObject];
  if (location < location + length)
  {
    v14 = location;
    do
    {
      v15 = [(UITextChecker *)self rangeOfMisspelledWordInString:v59 range:location startingAt:length wrap:v14 languages:0, v58];
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
      [v63 addObject:v19];
      v14 = v18 + v17;
    }

    while (v14 < location + length);
  }

  if ([UITextChecker grammarCheckingEnabledForLanguage:v61])
  {
    v60 = [(UITextChecker *)self postEditor];
    v20 = +[UIKeyboardImpl activeInstance];
    v56 = v20;
    if ((v9 & 0x200) != 0)
    {
      v22 = [v20 autocorrectionPreferenceForTraits] == 0;
      v20 = v56;
      v21 = !v22;
    }

    else
    {
      v21 = 0;
    }

    v64 = [v20 smartPunctuationController];
    if (length >= 0x400)
    {
      v23 = 1024;
    }

    else
    {
      v23 = length;
    }

    [v60 resultsFromCheckingString:v59 range:location language:v23 options:{v61, v57}];
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
          v26 = [v25 resultType];
          if (v26 == 512)
          {
            if (v21)
            {
              v28 = _resultByApplyingSmartQuotesToResult(v25, v64);
              v29 = obj;
              v30 = v28;
              v31 = [v30 range];
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
                    v38 = [v37 range];
                    v40 = v39;
                    if ([v37 resultType] == 4)
                    {
                      v41 = [v37 grammarDetails];
                      v82 = 0u;
                      v83 = 0u;
                      v84 = 0u;
                      v85 = 0u;
                      v77 = v41;
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
                                v48 = [v47 rangeValue];
                                v50 = v49;
                              }

                              else
                              {
                                v50 = 0;
                                v48 = 0x7FFFFFFFFFFFFFFFLL;
                              }
                            }

                            else
                            {
                              v50 = 0;
                              v48 = 0x7FFFFFFFFFFFFFFFLL;
                            }

                            if (v31 == v48 + v38 && v76 == v50)
                            {
                              v51 = [UIExtendedCorrectionCheckingResult alloc];
                              v52 = [v69 replacementString];
                              v53 = [(UIExtendedCorrectionCheckingResult *)v51 initWithRange:v31 replacementString:v76 sentenceRange:v52 detail:v38, v74, v46];

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
                  v54 = [v73 detail];
                  [v60 recordResponse:4 toGrammarDetail:v54 language:v61];
                }

LABEL_59:
                [v63 addObject:v27];
              }
            }
          }

          else if (v26 == 4)
          {
            if (qword_1ED49AE20 != -1)
            {
              dispatch_once(&qword_1ED49AE20, &__block_literal_global_535_1);
            }

            if (byte_1ED49AD63)
            {
              v27 = _resultByApplyingSmartQuotesToResult(v25, v64);
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

  return v63;
}

- (id)correctionForWordRange:(_NSRange)a3 inString:(id)a4 language:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  v11 = [v9 length];
  if (location || length != v11)
  {
    v12 = [v9 substringWithRange:{location, length}];
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  v23 = 0;
  v14 = [(UITextChecker *)self checkSpellingOfString:v12 startingAt:0 language:v10 wrap:0 correction:&v23];
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
            v14 = [(UITextChecker *)self _checker];
            if (v14)
            {
              [qword_1ED49AD68 lock];
              [(UITextChecker *)self _setLanguageDictionaryName:v10];
              v15 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
              [(UITextChecker *)self _setDocumentDictionaryName:v15];

              v16 = [v14 spellServer:self suggestGuessesForWordRange:location inString:length language:{v9, v10}];
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
            v14 = [(UITextChecker *)self _checker];
            if (v14)
            {
              [qword_1ED49AD68 lock];
              [(UITextChecker *)self _setLanguageDictionaryName:v10];
              v15 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
              [(UITextChecker *)self _setDocumentDictionaryName:v15];

              v16 = [v14 spellServer:self suggestCompletionsForPartialWordRange:location inString:length language:{v9, v10}];
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

- (id)suggestWordInLanguage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:&stru_1EFB14550] & 1) == 0)
  {
    v7 = [(UITextChecker *)self _checker];
    if (v7)
    {
      [qword_1ED49AD68 lock];
      [(UITextChecker *)self _setLanguageDictionaryName:v5];
      v8 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
      [(UITextChecker *)self _setDocumentDictionaryName:v8];

      v9 = [v7 spellServer:self suggestWordWithLengthInRange:4 language:{3, v5}];
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

- (BOOL)canChangeCaseOfFirstLetterInString:(id)a3 toUpperCase:(BOOL)a4 language:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9 && ([v9 isEqualToString:&stru_1EFB14550] & 1) == 0 && (-[UITextChecker _checker](self, "_checker"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    [qword_1ED49AD68 lock];
    [(UITextChecker *)self _setLanguageDictionaryName:v10];
    v13 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
    [(UITextChecker *)self _setDocumentDictionaryName:v13];

    v14 = [v12 spellServer:self canChangeCaseOfFirstLetterInString:v8 toUpperCase:v6 language:v10];
    [qword_1ED49AD68 unlock];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)stringForInputString:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ([v7 isEqualToString:&stru_1EFB14550] & 1) == 0)
  {
    v10 = [(UITextChecker *)self _checker];
    if (v10)
    {
      [qword_1ED49AD68 lock];
      [(UITextChecker *)self _setLanguageDictionaryName:v8];
      v11 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
      [(UITextChecker *)self _setDocumentDictionaryName:v11];

      v12 = [v10 spellServer:self stringForInputString:v6 language:v8];
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

- (id)alternativesForPinyinInputString:(id)a3
{
  v4 = a3;
  v5 = [(UITextChecker *)self _checker];
  if (v5)
  {
    [qword_1ED49AD68 lock];
    [(UITextChecker *)self _setLanguageDictionaryName:@"en"];
    v6 = [(UITextChecker *)self _nameOfDictionaryForDocumentTag:self->_usdt];
    [(UITextChecker *)self _setDocumentDictionaryName:v6];

    v7 = [v5 spellServer:self alternativesForPinyinInputString:v4 language:@"en"];
    [qword_1ED49AD68 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)bestLanguageForString:(id)a3 fromAlternatives:(id)a4 currentLanguage:(id)a5 insertionPointIndex:(unint64_t)a6 scriptForBestLanguage:(id *)a7
{
  v112 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v75 = a4;
  v77 = a5;
  v81 = v10;
  v11 = [v10 length];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = [MEMORY[0x1E695DF90] dictionary];
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

  [v18 setString:v10];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __114__UITextChecker_bestLanguageForString_fromAlternatives_currentLanguage_insertionPointIndex_scriptForBestLanguage___block_invoke;
  v92[3] = &unk_1E71273C8;
  v93 = v18;
  v97 = &v106;
  v80 = v12;
  v94 = v80;
  v98 = &v100;
  v99 = a6;
  v79 = v13;
  v95 = v79;
  v76 = v14;
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
            v28 = [v27 unsignedIntegerValue];

            if (v28 <= v23)
            {
              v30 = v28;
              v29 = v26;
              if (v28 <= v22)
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
              v23 = v28;
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
          v42 = [v41 unsignedIntegerValue];

          if (v42 > v37)
          {
            v43 = v40;

            v37 = v42;
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

  v46 = v77;
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

    v63 = [v75 containsObject:v101[5]];
    v64 = v101[5];
    if (v63)
    {
      v45 = v64;
      goto LABEL_73;
    }

    v66 = alternativesMatchingLanguage(v75, v64);
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

    if ([v75 containsObject:{v47, v33 + v33}])
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

    v68 = alternativesMatchingLanguage(v75, v47);
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
  if (a7)
  {
    v70 = v44;
    *a7 = v44;
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

+ (__CFSet)createDictHashTable:(BOOL)a3
{
  memset(&v5, 0, 32);
  v5.hash = strHashNoCase;
  v5.equal = strIsEqualNoCase;
  if (a3)
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

+ (id)openUserDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:*MEMORY[0x1E696A400]])
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
  v15 = [v13 bytes];
  v16 = [v13 length];
  if (v15)
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
  v19 = [a1 createDictHashTable:0];
  v20 = MEMORY[0x18CFE77E0](0);
  if (v18 >= 1)
  {
    v21 = &v15[v18];
    v22 = -1;
    v23 = 1;
    do
    {
      if (!(v22 + 100 * (v23 / 0x64)))
      {
        MEMORY[0x18CFE77C0](v20);
        v20 = MEMORY[0x18CFE77E0](0);
      }

      v24 = strchr(v15, 10);
      if (!v24)
      {
        v24 = &v15[strlen(v15)];
      }

      if (*v15 != 35)
      {
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v15 length:v24 - v15 encoding:4 freeWhenDone:0];
        if (v25)
        {
          v26 = v25;
          if (CFSetGetValue(v19, v15))
          {
            CFSetRemoveValue(v19, v15);
          }

          else
          {
            CFSetSetValue(v19, v15);
          }
        }
      }

      v15 = v24 + 1;
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

+ (id)_dictionaryEntryForName:(id)a3
{
  v3 = a3;
  v4 = v3;
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
    v11 = v3;
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

+ (void)_setDictionaryEntry:(id)a3 forName:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    v10 = v5;
    v11 = v6;
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

+ (id)dictionaryInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = *MEMORY[0x1E696A400];
  }

  v5 = [a1 _dictionaryEntryForName:v4];
  if (!v5)
  {
    v5 = [a1 openUserDictionary:v4];
    if (v5 || (v5 = [objc_allocWithZone(UITextCheckerDictionaryEntry) init]) != 0 && (v7 = objc_msgSend(a1, "createDictHashTable:", 1), (v5[1] = v7) != 0))
    {
      [a1 _setDictionaryEntry:v5 forName:v4];
    }
  }

  return v5;
}

+ (BOOL)_learnWord:(id)a3 inDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 UTF8String];
  if (!v7)
  {
    v7 = *MEMORY[0x1E696A400];
  }

  v9 = [a1 dictionaryInfo:v7];
  v10 = v9;
  if (v9 && (v11 = *(v9 + 8)) != 0 && !CFSetGetValue(v11, v8))
  {
    v14 = strdup(v8);
    CFSetSetValue(v10[1], v14);
    appendWordToDictionary(v6, v7);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_forgetWord:(id)a3 inDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 UTF8String];
  if (!v7)
  {
    v7 = *MEMORY[0x1E696A400];
  }

  v9 = [a1 dictionaryInfo:v7];
  v10 = v9;
  if (v9 && (v11 = *(v9 + 8)) != 0 && CFSetGetValue(v11, v8))
  {
    CFSetRemoveValue(v10[1], v8);
    appendWordToDictionary(v6, v7);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_isWord:(id)a3 inDictionary:(id)a4
{
  v6 = a4;
  v7 = [a3 UTF8String];
  if (!v6)
  {
    v6 = *MEMORY[0x1E696A400];
  }

  v8 = [a1 dictionaryInfo:v6];
  v9 = v8;
  v11 = v8 && (v10 = *(v8 + 8)) != 0 && CFSetGetValue(v10, v7) != 0;

  return v11;
}

+ (id)_wordsInDictionary:(id)a3
{
  v3 = [a1 dictionaryInfo:a3];
  v4 = v3;
  if (v3 && (v5 = *(v3 + 8)) != 0 && (Count = CFSetGetCount(v5), Count >= 1))
  {
    v7 = Count;
    v8 = [MEMORY[0x1E695DF70] array];
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
          [v8 addObject:v16];
        }
      }

      NSZoneFree(0, v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = [v8 copy];

  return v17;
}

+ (void)_setWords:(id)a3 inDictionary:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [a1 dictionaryInfo:v6];
  if (v7)
  {
    v8 = v7;
    [a1 _setDictionaryEntry:0 forName:v6];
  }

  if (v17)
  {
    v9 = [v17 count];
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = v9 - 1;
      v13 = v17;
      do
      {
        if (v11 || ([a1 dictionaryInfo:v6], v11 = objc_claimAutoreleasedReturnValue(), v13 = v17, v11))
        {
          if (v11[1])
          {
            v14 = [v13 objectAtIndex:v12];

            if (v14)
            {
              v10 = v14;
              v15 = [v14 UTF8String];
              if (CFSetGetValue(v11[1], v15))
              {
                CFSetRemoveValue(v11[1], v15);
              }

              else
              {
                v16 = strdup(v15);
                CFSetSetValue(v11[1], v16);
              }
            }

            else
            {
              v10 = 0;
            }

            v13 = v17;
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

- (BOOL)isWordInUserDictionaries:(id)a3 caseSensitive:(BOOL)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        if ([objc_opt_class() _isWord:v4 inDictionary:{*(*(&v18 + 1) + 8 * v8), v18}])
        {
          v11 = 1;
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

  v9 = [v4 lowercaseString];

  v4 = v9;
  v10 = qword_1ED49AD98;
  objc_sync_enter(v10);
  v5 = [qword_1ED49AD98 objectForKey:v4];
  objc_sync_exit(v10);

  if (v5)
  {
    v11 = [v5 BOOLValue];
  }

  else
  {
    v4 = v4;
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
        [v16 string:v4 isExemptFromTextCheckerWithCompletionHandler:v22];
        dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    v11 = *(v28 + 24);

    _Block_object_dispose(&v27, 8);
    setCachedExemptionForString(v4, v11 & 1);
    v5 = 0;
  }

LABEL_12:

  return v11 & 1;
}

+ (void)setString:(id)a3 isExemptFromChecker:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([v7 length])
  {
    v5 = [v7 lowercaseString];

    setCachedExemptionForString(v5, v4);
    v6 = v5;
  }

  else
  {
    v6 = v7;
  }
}

@end