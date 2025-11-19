@interface AppleSpell
+ (id)sharedInstance;
+ (void)resetSharedInstance;
- (AppleSpell)init;
- (BOOL)_acceptErrorWithRuleType:(unint64_t)a3 ruleNumber:(unint64_t)a4 grammarRange:(_NSRange)a5 sentenceRange:(_NSRange)a6 inString:(id)a7 corrections:(id)a8 issueType:(unint64_t *)a9;
- (BOOL)_acceptWithoutAccentForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 languageObject:(id)a6;
- (BOOL)_addLanguageModelCompletionsForPartialWordRange:(_NSRange)a3 languageObject:(id)a4 connection:(_PR_DB_IO *)a5 sender:(id)a6 tagger:(id)a7 appIdentifier:(id)a8 waitForLanguageModel:(BOOL)a9 allowTransformer:(BOOL)a10 candidates:(id)a11 scoreDictionary:(id)a12 tryTransliteration:(BOOL *)a13;
- (BOOL)_checkEnglishGrammarInString:(id)a3 range:(_NSRange)a4 indexIntoBuffer:(unint64_t)a5 bufferLength:(unint64_t)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 sender:(id)a9 bufIO:(_PR_BUF_IO *)a10 retval:(int *)a11 errorRange:(_NSRange *)a12 details:(id *)a13;
- (BOOL)_checkGrammarInString:(id)a3 range:(_NSRange)a4 language:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 bufIO:(_PR_BUF_IO *)a8 errorRange:(_NSRange *)a9 details:(id *)a10;
- (BOOL)_findMatchingRangesForRange:(_NSRange)a3 inString:(id)a4 keyEventArray:(id)a5 endingAtIndex:(unint64_t)a6 matchingStringRange:(_NSRange *)a7 correctableStringRange:(_NSRange *)a8 matchingKeyEventRange:(_NSRange *)a9 firstMisspelledKeyEventIndex:(unint64_t *)a10 lastMisspelledKeyEventIndex:(unint64_t *)a11 previousBackspaceCount:(unint64_t *)a12;
- (BOOL)_getUnigramProbabilityForString:(id)a3 languageModel:(id)a4 probability:(double *)a5;
- (BOOL)_permitCorrection:(id)a3 languageObject:(id)a4 flags:(unint64_t)a5 isCapitalized:(BOOL)a6 typologyCorrection:(id)a7;
- (BOOL)_prohibitCorrectionBasedOnCountsForString:(id)a3 lowercaseString:(id)a4 appIdentifier:(id)a5 languageObject:(id)a6 typologyCorrection:(id)a7;
- (BOOL)_prohibitCorrectionForLanguageObject:(id)a3 lastKeyboardLanguageObject:(id)a4;
- (BOOL)_spellServer:(id)a3 canChangeCaseOfFirstLetterInString:(id)a4 toUpperCase:(BOOL)a5 languageObject:(id)a6;
- (BOOL)_useAlternateLanguageForRange:(_NSRange)a3 ofString:(id)a4 languageObject:(id)a5 tagger:(id)a6 alternateLanguageObject:(id)a7 alternateTagger:(id)a8 appIdentifier:(id)a9;
- (BOOL)checkNameWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 globalOnly:(BOOL)a6;
- (BOOL)checkNoCapAbbreviationWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5;
- (BOOL)checkSpecialPrefixesForWordBuffer:(char *)a3 length:(unint64_t)a4;
- (BOOL)checkWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 index:(unint64_t)a6;
- (BOOL)findMatchingRangesForRange:(_NSRange)a3 inString:(id)a4 keyEventArray:(id)a5 selectedRangeValue:(id)a6 matchingStringRange:(_NSRange *)a7 correctableStringRange:(_NSRange *)a8 matchingKeyEventRange:(_NSRange *)a9 firstMisspelledKeyEventIndex:(unint64_t *)a10 lastMisspelledKeyEventIndex:(unint64_t *)a11 previousBackspaceCount:(unint64_t *)a12;
- (BOOL)getCharacterModelConditionalProbabilityForString:(id)a3 context:(id)a4 language:(id)a5 probability:(double *)a6;
- (BOOL)getConditionalProbabilityForWord:(id)a3 context:(id)a4 language:(id)a5 probability:(double *)a6;
- (BOOL)getMetaFlagsForWord:(id)a3 inLexiconForLanguage:(id)a4 metaFlags:(unsigned int *)a5 otherMetaFlags:(unsigned int *)a6;
- (BOOL)getMetaFlagsForWord:(id)a3 inLexiconForLanguageObject:(id)a4 metaFlags:(unsigned int *)a5 otherMetaFlags:(unsigned int *)a6;
- (BOOL)getTransformerModelConditionalProbabilityForString:(id)a3 context:(id)a4 language:(id)a5 probability:(double *)a6;
- (BOOL)inputStringIsFullOrAbbreviatedPinyin:(id)a3;
- (BOOL)inputStringIsPinyin:(id)a3 allowPartialLastSyllable:(BOOL)a4;
- (BOOL)noSuggestForCompletion:(id)a3 languageObject:(id)a4 appIdentifier:(id)a5 alreadyCapitalized:(BOOL)a6;
- (BOOL)shouldBlockWord:(id)a3 languageObject:(id)a4;
- (BOOL)spellServer:(id)a3 shouldBlockWord:(id)a4 language:(id)a5 offensiveOnly:(BOOL)a6;
- (BOOL)supportSentenceCorrectionForLanguageObject:(id)a3 appIdentifier:(id)a4;
- (BOOL)testTurkishSuffixationPattern:(id)a3;
- (BOOL)useCharacterLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5;
- (BOOL)useSentencePieceLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5;
- (BOOL)useTransformerLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5;
- (BOOL)useUnigramProbabilityForLanguageObject:(id)a3;
- (BOOL)useWordLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5;
- (BOOL)validateAbbreviationOrNumberWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7;
- (BOOL)validateDiacriticInsensitiveWord:(id)a3 inLexiconForLanguageObject:(id)a4;
- (BOOL)validateWord:(id)a3 inLexicons:(id)a4 forLanguage:(id)a5 requiredMetaFlags:(unsigned int)a6 alternativeRequiredMetaFlags:(unsigned int)a7 prohibitedMetaFlags:(unsigned int)a8 caseInsensitive:(BOOL)a9;
- (BOOL)validateWordBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5;
- (BOOL)validateWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 checkBase:(BOOL)a8 checkDict:(BOOL)a9 checkTemp:(BOOL)a10 checkUser:(BOOL)a11 checkNames:(BOOL)a12 checkHyphens:(BOOL)a13 checkIntercaps:(BOOL)a14 checkOptions:(BOOL)a15 forCorrection:(BOOL)a16 depth:(unint64_t)a17;
- (BOOL)validateWordPrefixBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5;
- (BOOL)wordIsAlreadyAccented:(id)a3;
- (_NSRange)_modifiedGrammarRangeForDoubledWordRange:(_NSRange)a3 sentenceRange:(_NSRange)a4 inString:(id)a5 corrections:(id)a6;
- (_NSRange)spellServer:(id)a3 checkGrammarInString:(id)a4 language:(id)a5 details:(id *)a6;
- (_NSRange)spellServer:(id)a3 checkGrammarInString:(id)a4 range:(_NSRange)a5 language:(id)a6 orthography:(id)a7 mutableResults:(id)a8 offset:(unint64_t)a9 details:(id *)a10;
- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 language:(id)a5 wordCount:(int64_t *)a6 countOnly:(BOOL)a7;
- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 language:(id)a5 wordCount:(int64_t *)a6 countOnly:(BOOL)a7 correction:(id *)a8;
- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 languages:(id)a5 wordCount:(int64_t *)a6 countOnly:(BOOL)a7 correction:(id *)a8;
- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 range:(_NSRange)a5 languages:(id)a6 topLanguages:(id)a7 orthography:(id)a8 checkOrthography:(BOOL)a9 mutableResults:(id)a10 offset:(unint64_t)a11 autocorrect:(BOOL)a12 onlyAtInsertionPoint:(BOOL)a13 initialCapitalize:(BOOL)a14 autocapitalize:(BOOL)a15 keyEventArray:(id)a16 appIdentifier:(id)a17 selectedRangeValue:(id)a18 parameterBundles:(id)a19 wordCount:(int64_t *)a20 countOnly:(BOOL)a21 appendCorrectionLanguage:(BOOL)a22 correction:(id *)a23;
- (char)_validatedGuessWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 checkUser:(BOOL)a8 additionalBuffer:(char *)a9;
- (const)englishPhraseRoot;
- (float)dynamicScoreForWord:(id)a3 languageModel:(id)a4 languageObject:(id)a5;
- (float)dynamicScoreForWord:(id)a3 languageObject:(id)a4 appIdentifier:(id)a5;
- (id)_NLPLanguageModelWithType:(int64_t)a3 forLanguageObject:(id)a4 waitForResult:(BOOL)a5;
- (id)_accentCorrectionResultForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 languageObject:(id)a7 onlyAtInsertionPoint:(BOOL)a8 capitalize:(BOOL)a9 keyEventArray:(id)a10 selectedRangeValue:(id)a11;
- (id)_capitalizationResultForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 languageObject:(id)a7 onlyAtInsertionPoint:(BOOL)a8 keyEventArray:(id)a9 selectedRangeValue:(id)a10;
- (id)_checkSentence:(id)a3 languageObject:(id)a4;
- (id)_connectionCorrectionForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 flags:(unint64_t)a8 isCapitalized:(BOOL)a9 accentCorrectionOnly:(BOOL)a10 isAbbreviation:(BOOL *)a11 trySpaceInsertion:(BOOL *)a12 hasAccentCorrections:(BOOL *)a13 candidateList:(id)a14 typologyCorrection:(id)a15;
- (id)_correctionResultForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 tagger:(id)a7 appIdentifier:(id)a8 dictionary:(id)a9 languages:(id)a10 connection:(_PR_DB_IO *)a11 flags:(unint64_t)a12 keyEventArray:(id)a13 selectedRangeValue:(id)a14 parameterBundles:(id)a15 previousLetter:(unsigned __int16)a16 nextLetter:(unsigned __int16)a17 extraMisspellingCount:(unint64_t)a18 extraCorrectionCount:(unint64_t *)a19;
- (id)_correctionResultForWord:(id)a3 replacementRange:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 languageObject:(id)a7 capitalize:(BOOL)a8 isCapitalized:(BOOL)a9 isSecondCapitalized:(BOOL)a10 hasCurlyApostrophe:(BOOL)a11 appendCorrectionLanguage:(BOOL)a12 capitalizationLocale:(id)a13 proposedCorrection:(id)a14;
- (id)_detailWithRange:(_NSRange)a3 description:(id)a4 corrections:(id)a5 issueType:(unint64_t)a6;
- (id)_initialCorrectionForString:(id)a3 lowercaseString:(id)a4 isFirstSecondCapitalized:(BOOL)a5 dictionary:(id)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8;
- (id)_languageModelStateScoresForCandidateList:(id)a3 languageModel:(id)a4 state:(id)a5 language:(id)a6 tagger:(id)a7;
- (id)_lexiconPathForLanguageObject:(id)a3 type:(id)a4;
- (id)_lexiconPathForLocalization:(id)a3 type:(id)a4;
- (id)_lexiconsForLanguage:(id)a3 loadType:(int64_t)a4;
- (id)_lexiconsForLanguageObject:(id)a3;
- (id)_loadNERTaggerOnQueue:(id)a3;
- (id)_loadNLPLanguageModelWithType:(int64_t)a3 forLanguageObject:(id)a4 onQueue:(id)a5;
- (id)_loadPhraseLexiconsForLanguage:(id)a3 localization:(id)a4 onQueue:(id)a5;
- (id)_loadWordLanguageModelForLanguage:(id)a3 localization:(id)a4 appIdentifier:(id)a5 onQueue:(id)a6;
- (id)_modifiedGrammarDescriptionForDescription:(id)a3;
- (id)_orthographyByModifyingOrthography:(id)a3 withLatinLanguage:(id)a4;
- (id)_phraseCapitalizationResultForString:(id)a3 range:(_NSRange)a4 currentWordRange:(_NSRange)a5 inString:(id)a6 offset:(unint64_t)a7 languageObject:(id)a8 onlyAtInsertionPoint:(BOOL)a9 keyEventArray:(id)a10 selectedRangeValue:(id)a11;
- (id)_phraseLexiconPathForLanguage:(id)a3;
- (id)_phraseLexiconsForLanguage:(id)a3 waitForResult:(BOOL)a4;
- (id)_pinyinStringByCombiningPinyinString:(id)a3 withPinyinString:(id)a4;
- (id)_primitiveRetainedAlternativesForPinyinInputString:(id)a3;
- (id)_rankedCandidatesForCandidateList:(id)a3 languageObject:(id)a4 tagger:(id)a5 appIdentifier:(id)a6 parameterBundles:(id)a7;
- (id)_rankedCandidatesForRange:(_NSRange)a3 candidates:(id)a4 languageObject:(id)a5 tagger:(id)a6 appIdentifier:(id)a7 allowTransformer:(BOOL)a8 scoreDictionary:(id)a9;
- (id)_recursiveRetainedAlternativesForPinyinInputString:(id)a3 depth:(unint64_t)a4;
- (id)_retainedAlternativesByCombiningAlternatives:(id)a3 withAlternatives:(id)a4 andAddingAlternatives:(id)a5;
- (id)_siriDeltaPathForLanguage:(id)a3;
- (id)_siriLexiconPathForLanguage:(id)a3;
- (id)_spaceInsertionCorrectionForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 flags:(unint64_t)a8 isCapitalized:(BOOL)a9 typologyCorrection:(id)a10;
- (id)_spellServer:(id)a3 suggestGuessesForWordRange:(_NSRange)a4 inString:(id)a5 languageObject:(id)a6 options:(id)a7;
- (id)_spellServer:(id)a3 suggestGuessesForWordRange:(_NSRange)a4 inString:(id)a5 languageObject:(id)a6 options:(id)a7 tagger:(id)a8 errorModel:(id)a9 guessesDictionaries:(id)a10;
- (id)_standardizedLanguageModelStringForString:(id)a3;
- (id)_stringForCompletion:(id)a3 languageModel:(id)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 prefix:(id)a8 capitalized:(BOOL)a9;
- (id)_stringForTokenIDs:(const unsigned int *)a3 tokenCount:(unint64_t)a4 entryString:(id)a5 languageModel:(id)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 sender:(id)a9 prefix:(id)a10 capitalized:(BOOL)a11;
- (id)_taggerForOrthoIndex:(unint64_t)a3;
- (id)_umlautCorrectionForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 typologyCorrection:(id)a8;
- (id)assetDataBundleURLsForLanguageObject:(id)a3;
- (id)backgroundLoadingQueue;
- (id)backgroundMaintenanceQueue;
- (id)capitalizationDictionaryArrayForLanguageObject:(id)a3;
- (id)contextAlternativeAnnotatedStringsForJyutpingInputString:(id)a3;
- (id)contextAlternativeAnnotatedStringsForPinyinInputString:(id)a3;
- (id)contextAlternativeAnnotatedStringsForZhuyinInputString:(id)a3;
- (id)dataBundlesForLanguageObject:(id)a3;
- (id)databasePathForLanguageObject:(id)a3;
- (id)dictionaryForLanguageObject:(id)a3 index:(unint64_t)a4;
- (id)englishStringFromWordBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5;
- (id)englishStringsFromWordBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5;
- (id)externalStringForKoreanInternalString:(id)a3;
- (id)generativeExperiencesRunner;
- (id)globalDictionaryArray;
- (id)internalStringForKoreanExternalString:(id)a3;
- (id)languageModelCompletionsForPartialWord:(id)a3 languageObject:(id)a4 sender:(id)a5 appIdentifier:(id)a6;
- (id)lexiconForLanguage:(id)a3;
- (id)lexiconForLanguageObject:(id)a3;
- (id)localDictionaryArrayForLanguageObject:(id)a3;
- (id)modelCreationQueue;
- (id)nerTaggerWaitForResult:(BOOL)a3;
- (id)normalizedStringInString:(id)a3 range:(_NSRange)a4;
- (id)parameterBundleForLanguageObject:(id)a3;
- (id)phraseMatching:(id)a3 inLexiconForLanguage:(id)a4;
- (id)phraseMatching:(id)a3 inLexiconForLanguageObject:(id)a4;
- (id)potentialSentenceCorrectionsForWord:(id)a3 languageObject:(id)a4;
- (id)sentenceTerminatorCharacterSet;
- (id)spellServer:(id)a3 _retainedAlternativesForPinyinInputString:(id)a4 extended:(BOOL)a5;
- (id)spellServer:(id)a3 _retainedCorrectionsForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 _retainedFinalModificationsForPinyinInputString:(id)a4 geometryModelData:(id)a5;
- (id)spellServer:(id)a3 _retainedModificationsForPinyinInputString:(id)a4 geometryModelData:(id)a5;
- (id)spellServer:(id)a3 _retainedPrefixesForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 alternativesForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 candidatesForSelectedRange:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 types:(unint64_t)a7 options:(id)a8 orthography:(id)a9;
- (id)spellServer:(id)a3 checkGrammarInString:(id)a4 range:(_NSRange)a5 language:(id)a6 offset:(unint64_t)a7 options:(id)a8;
- (id)spellServer:(id)a3 checkString:(id)a4 offset:(unint64_t)a5 types:(unint64_t)a6 options:(id)a7 orthography:(id)a8 wordCount:(int64_t *)a9;
- (id)spellServer:(id)a3 correctionsForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 extendedAlternativesForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 finalModificationsForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 modificationsForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 modificationsForPinyinInputString:(id)a4 geometryModelData:(id)a5;
- (id)spellServer:(id)a3 prefixesForPinyinInputString:(id)a4;
- (id)spellServer:(id)a3 regionalCorrectionForWord:(id)a4 language:(id)a5;
- (id)spellServer:(id)a3 stringForInputString:(id)a4 language:(id)a5;
- (id)spellServer:(id)a3 suggestCompletionDictionariesForPartialWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)lastLanguage options:(id)a7;
- (id)spellServer:(id)a3 suggestCompletionsForPartialWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)lastLanguage options:(id)a7;
- (id)spellServer:(id)a3 suggestContextualGuessDictionariesForWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7;
- (id)spellServer:(id)a3 suggestGuessDictionariesForWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7 errorModel:(id)a8;
- (id)spellServer:(id)a3 suggestGuessesForKoreanWordRange:(_NSRange)a4 inString:(id)a5 options:(id)a6;
- (id)spellServer:(id)a3 suggestGuessesForWord:(id)a4 inLanguage:(id)a5;
- (id)spellServer:(id)a3 suggestGuessesForWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7;
- (id)spellServer:(id)a3 suggestNextLetterDictionariesForPartialWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7;
- (id)spellServer:(id)a3 suggestWordWithMinimumLength:(unint64_t)a4 maximumLength:(unint64_t)a5 language:(id)lastLanguage;
- (id)stringByReducingArabicAlefVariantsInString:(id)a3;
- (id)stringByRemovingArabicDiacriticsFromString:(id)a3;
- (id)stringByRemovingHebrewDiacriticsFromString:(id)a3;
- (id)taggerForLanguageObject:(id)a3 string:(id)a4 range:(_NSRange)a5;
- (id)transformerParameterBundleForLanguageObject:(id)a3;
- (id)vietnameseModificationForWord:(id)a3;
- (id)wordLanguageModelForLanguage:(id)a3 appIdentifier:(id)a4 waitForResult:(BOOL)a5;
- (unint64_t)_contextLengthForRange:(_NSRange)a3 languageObject:(id)a4 tagger:(id)a5 languageModel:(id)a6 maxContextLength:(unint64_t)a7 context:(unsigned int *)a8 cleanOffset:(unint64_t *)a9 cleanContextRange:(_NSRange *)a10 lastTokenRange:(_NSRange *)a11 lastTokenID:(unsigned int *)a12;
- (unint64_t)_getSplitIndexes:(unint64_t *)a3 maxCount:(unint64_t)a4 forPinyinInputString:(id)a5;
- (unint64_t)_resetLanguageModels;
- (unint64_t)loadedLexiconsCountForLanguageObject:(id)a3;
- (unint64_t)numberOfTurkishSuffixPointsInBuffer:(char *)a3 length:(unint64_t)a4 maxSuffixPoints:(unint64_t)a5 suffixPoints:(id *)a6;
- (unsigned)_tokenIDForString:(id)a3 languageModel:(id)a4 languageObject:(id)a5 createIfAbsent:(BOOL)a6 terminatorTokenID:(unsigned int)a7;
- (void)_addAdditionalGuessesForWord:(id)a3 sender:(id)a4 buffer:(char *)a5 length:(unint64_t)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 accents:(const char *)a9 isCapitalized:(BOOL)a10 isAllCaps:(BOOL)a11 isAllAlpha:(BOOL)a12 hasLigature:(BOOL)a13 suggestPossessive:(BOOL)a14 checkUser:(BOOL)a15 checkHyphens:(BOOL)a16 candidateList:(id)a17;
- (void)_addConnectionGuessesForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 candidateList:(id)a8;
- (void)_addContextAlternativesForPinyinInputString:(id)a3 modifications:(id)a4 afterIndex:(unint64_t)a5 delta:(int64_t)a6 toArray:(id)a7;
- (void)_addContextAlternativesForZhuyinInputString:(id)a3 modifications:(id)a4 afterIndex:(unint64_t)a5 delta:(int64_t)a6 toArray:(id)a7;
- (void)_addGuessesForWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 minAutocorrectionLength:(unint64_t)a8 previousLetter:(unsigned __int16)a9 nextLetter:(unsigned __int16)a10 basicOnly:(BOOL)a11 toGuesses:(id)a12;
- (void)_addLanguageModelCompletionsForPrefix:(id)a3 languageModel:(id)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 capitalized:(BOOL)a8 candidates:(id)a9;
- (void)_addSpaceInsertionGuessesForWord:(id)a3 sender:(id)a4 buffer:(char *)a5 length:(unint64_t)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 isCapitalized:(BOOL)a9 checkUser:(BOOL)a10 oneLetterWords:(const char *)a11 twoLetterWords:(const char *)a12 candidateList:(id)a13;
- (void)_addTwoLetterWordGuessesForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 isCapitalized:(BOOL)a7 isAllCaps:(BOOL)a8 twoLetterWords:(const char *)a9 candidateList:(id)a10;
- (void)_checkEnglishArticlesInSentence:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 mutableCorrections:(id)a6;
- (void)_checkEnglishPhrasesInSentence:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 mutableCorrections:(id)a6;
- (void)_checkSentence:(id)a3 languageObject:(id)a4 mutableCorrections:(id)a5;
- (void)_readLanguageModelParametersFromDefaults;
- (void)_readLanguageModelParametersFromDictionary:(id)a3;
- (void)_releaseLanguageModels;
- (void)addLexiconGuessesForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 minCorrectionLength:(unint64_t)a7 minExtendedCorrectionLength:(unint64_t)a8 isCapitalized:(BOOL)a9 stopAfterFreeInsertions:(BOOL)a10 toGuesses:(id)a11;
- (void)addModifiedPartialPinyinToArray:(id)a3 connection:(_PR_DB_IO *)a4 fromIndex:(unint64_t)a5 prevIndex:(unint64_t)a6 prevPrevIndex:(unint64_t)a7 prePrevPrevIndex:(unint64_t)a8 startingModificationsAt:(unint64_t)a9 inBuffer:(char *)a10 length:(unint64_t)a11 initialSyllableCount:(unint64_t)a12 initialScore:(unint64_t)a13 prevScore:(unint64_t)a14 prevPrevScore:(unint64_t)a15 lastSyllableScore:(unint64_t)a16;
- (void)addModifiedPinyinToArray:(id)a3 connection:(_PR_DB_IO *)a4 fromIndex:(unint64_t)a5 prevIndex:(unint64_t)a6 prevPrevIndex:(unint64_t)a7 startingModificationsAt:(unint64_t)a8 inBuffer:(char *)a9 length:(unint64_t)a10 initialSyllableCount:(unint64_t)a11 initialScore:(unint64_t)a12 prevScore:(unint64_t)a13 prevPrevScore:(unint64_t)a14 lastSyllableScore:(unint64_t)a15 couldBeAbbreviatedPinyin:(BOOL)a16;
- (void)addSpecialModifiedPinyinToArray:(id)a3 inBuffer:(char *)a4 length:(unint64_t)a5 atEnd:(BOOL)a6;
- (void)clearCaches;
- (void)databaseConnectionForLanguageObject:(id)a3;
- (void)enumerateCorrectionEntriesForWord:(id)a3 maxCorrections:(unint64_t)a4 inLexiconForLanguage:(id)a5 withBlock:(id)a6;
- (void)enumerateCorrectionEntriesForWord:(id)a3 maxCorrections:(unint64_t)a4 inLexiconForLanguageObject:(id)a5 withBlock:(id)a6;
- (void)enumerateEntriesForWord:(id)a3 inLexiconForLanguage:(id)a4 withBlock:(id)a5;
- (void)enumerateEntriesForWord:(id)a3 inLexiconForLanguageObject:(id)a4 withBlock:(id)a5;
- (void)enumerateLexiconEntriesForWord:(id)a3 language:(id)a4 usingBlock:(id)a5;
- (void)getParameterValue:(double *)a3 forName:(id)a4 languageObject:(id)a5 tagger:(id)a6 appIdentifier:(id)a7 parameterBundles:(id)a8 defaultValue:(double)a9;
- (void)invalidateTagger:(id)a3;
- (void)loadLexiconsAndLanguageModelsForLanguage:(id)a3;
- (void)personalizeEmojiArray:(id)a3;
- (void)releaseDatabaseConnections;
- (void)requestCancellationForToken:(unint64_t)a3;
- (void)requestReviewOfAttributedString:(id)a3 range:(_NSRange)a4 options:(id)a5 completionHandler:(id)a6;
- (void)requestRewritingOfAttributedString:(id)a3 range:(_NSRange)a4 rewritingType:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)requestShortFormRepliesWithContextHistory:(id)a3 documentType:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)resetDataBundlesForAllLanguages;
- (void)resetDataBundlesForLanguageObject:(id)a3;
- (void)spellServer:(id)a3 checkSentenceCorrectionInString:(id)a4 range:(_NSRange)a5 languageObject:(id)a6 offset:(unint64_t)a7 keyEventArray:(id)a8 selectedRangeValue:(id)a9 autocorrect:(BOOL)a10 checkGrammar:(BOOL)a11 ignoreTermination:(BOOL)a12 mutableResults:(id)a13;
- (void)spellServer:(id)a3 checkSentenceCorrectionInString:(id)a4 rangeInParagraph:(_NSRange)a5 languageObject:(id)a6 locale:(id)a7 tagger:(id)a8 offset:(unint64_t)a9 keyEventArray:(id)a10 selectedRangeValue:(id)a11 autocorrect:(BOOL)a12 checkGrammar:(BOOL)a13 ignoreTermination:(BOOL)a14 mutableResults:(id)a15;
- (void)updateAllLexicons;
- (void)updateLexiconsForLanguage:(id)a3;
- (void)updateLexiconsForLanguageIfNecessary:(id)a3;
- (void)updateLexiconsForLanguageObject:(id)a3;
- (void)updateLexiconsForLanguageObjectIfNecessary:(id)a3;
@end

@implementation AppleSpell

+ (id)sharedInstance
{
  result = sharedInstance;
  if (!sharedInstance)
  {
    result = objc_alloc_init(AppleSpell);
    sharedInstance = result;
  }

  return result;
}

+ (void)resetSharedInstance
{
  if (sharedInstance)
  {

    sharedInstance = 0;
  }
}

- (AppleSpell)init
{
  v6.receiver = self;
  v6.super_class = AppleSpell;
  v2 = [(AppleSpell *)&v6 init];
  v2->_languageModelSerialQueue = dispatch_queue_create("com.apple.ProofReader.languageModelSerialQueue", 0);
  v2->_lexiconSerialQueue = dispatch_queue_create("com.apple.ProofReader.lexiconSerialQueue", 0);
  v2->_taggerSerialQueue = dispatch_queue_create("com.apple.ProofReader.taggerSerialQueue", 0);
  v2->_nerTaggerSerialQueue = dispatch_queue_create("com.apple.ProofReader.nerTaggerSerialQueue", 0);
  v3 = malloc_type_malloc(0x18uLL, 0x1000040FAD7398DuLL);
  v2->_proofReaderConnection = v3;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  if (PRapp(v2->_proofReaderConnection, 1, 0))
  {
    free(v2->_proofReaderConnection);
    v2->_proofReaderConnection = 0;
  }

  v4 = MEMORY[0x1E695E528];
  v2->_databaseConnections = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], 0);
  v2->_databaseConnectionsByPathAndCode = CFDictionaryCreateMutable(0, 0, v4, 0);
  v2->_languageModelDicts = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_characterLanguageModelDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_transformerLanguageModelDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_sentencePieceLanguageModelDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_siriLanguageModelDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_lexiconDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_phraseLexiconDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_nerTaggerDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_cachedTaggers = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_emojiPredictorDict = CFDictionaryCreateMutable(0, 0, v4, MEMORY[0x1E695E9E8]);
  v2->_localDictionaryArrays = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_userAdaptationDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_assetDataBundleSerialQueue = dispatch_queue_create("com.apple.ProofReader.assetDataBundleSerialQueue", 0);
  v2->_assetDataBundleURLDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_updatedDataBundleLanguages = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2->_guessRequestTimestamps = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_recipientNames = 0;
  v2->_previousSingleCompletion = 0;
  v2->_foundNamesProhibited = 0;
  v2->_hasUpdatedDataBundleLanguages = 0;
  v2->_lastLanguage = 0;
  v2->_lastCandidateLanguage = 0;
  [(AppleSpell *)v2 resetTimer];
  return v2;
}

- (id)dataBundlesForLanguageObject:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [a3 identifier];
  }

  else
  {
    v5 = 0;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  if (v5)
  {
    assetDataBundleSerialQueue = self->_assetDataBundleSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AppleSpell_dataBundlesForLanguageObject___block_invoke;
    block[3] = &unk_1E84050D8;
    block[5] = v5;
    block[6] = &v31;
    block[4] = self;
    dispatch_sync(assetDataBundleSerialQueue, block);
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithObject:{-[AppleSpell dataBundle](self, "dataBundle")}];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v26 = 0u;
  altBundleURLs = self->_altBundleURLs;
  v9 = [(NSMutableArray *)altBundleURLs countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(altBundleURLs);
        }

        v12 = [MEMORY[0x1E696AAE8] bundleWithURL:*(*(&v26 + 1) + 8 * i)];
        if (v12)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [(NSMutableArray *)altBundleURLs countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v9);
  }

  v13 = v32[5];
  if (v13)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v37 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [MEMORY[0x1E696AAE8] bundleWithURL:*(*(&v22 + 1) + 8 * j)];
          if (v17)
          {
            [v7 addObject:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v37 count:16];
      }

      while (v14);
    }
  }

  else if (v5)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __43__AppleSpell_dataBundlesForLanguageObject___block_invoke_2;
    v21[3] = &unk_1E8405100;
    v21[4] = self;
    v21[5] = a3;
    v21[6] = v5;
    global_queue = dispatch_get_global_queue(25, 0);
    dispatch_async(global_queue, v21);
  }

  _Block_object_dispose(&v31, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

id __43__AppleSpell_dataBundlesForLanguageObject___block_invoke(void *a1)
{
  result = [*(a1[4] + 400) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  if (!*(*(a1[6] + 8) + 40))
  {
    v3 = *(a1[4] + 400);
    v4 = [MEMORY[0x1E695DEC8] array];
    v5 = a1[5];

    return [v3 setObject:v4 forKey:v5];
  }

  return result;
}

void __43__AppleSpell_dataBundlesForLanguageObject___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) assetDataBundleURLsForLanguageObject:*(a1 + 40)];
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 392);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AppleSpell_dataBundlesForLanguageObject___block_invoke_3;
    block[3] = &unk_1E8405100;
    block[4] = v4;
    block[5] = v3;
    block[6] = *(a1 + 48);
    dispatch_sync(v5, block);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __43__AppleSpell_dataBundlesForLanguageObject___block_invoke_3(void *a1)
{
  [*(a1[4] + 400) setObject:a1[5] forKey:a1[6]];
  result = [*(a1[4] + 408) addObject:a1[6]];
  *(a1[4] + 578) = 1;
  return result;
}

- (void)resetDataBundlesForLanguageObject:(id)a3
{
  if (a3)
  {
    v4 = [a3 identifier];
    if (v4)
    {
      assetDataBundleSerialQueue = self->_assetDataBundleSerialQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__AppleSpell_resetDataBundlesForLanguageObject___block_invoke;
      v6[3] = &unk_1E8405128;
      v6[4] = self;
      v6[5] = v4;
      dispatch_sync(assetDataBundleSerialQueue, v6);
    }
  }
}

- (void)resetDataBundlesForAllLanguages
{
  assetDataBundleSerialQueue = self->_assetDataBundleSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AppleSpell_resetDataBundlesForAllLanguages__block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  dispatch_sync(assetDataBundleSerialQueue, block);
}

- (id)databasePathForLanguageObject:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(AppleSpell *)self dataBundlesForLanguageObject:0];
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      result = [v9 pathForResource:@"Dictionary.dat" ofType:0 inDirectory:0 forLocalization:{objc_msgSend(a3, "localization")}];
      if (result)
      {
        break;
      }

      result = [v9 pathForResource:@"Dictionary.dat" ofType:0 inDirectory:0 forLocalization:{objc_msgSend(a3, "fallbackLocalization")}];
      if (result)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        result = 0;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)databaseConnectionForLanguageObject:(id)a3
{
  if (a3)
  {
    v5 = [a3 identifier];
  }

  else
  {
    v5 = 0;
  }

  Value = CFDictionaryGetValue(self->_databaseConnections, v5);
  if (!Value)
  {
    if (!self->_proofReaderConnection)
    {
      return 0;
    }

    v7 = [(AppleSpell *)self databasePathForLanguageObject:a3];
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    Value = malloc_type_malloc(0x68uLL, 0x10300404E556F13uLL);
    *Value = 0u;
    *(Value + 1) = 0u;
    *(Value + 2) = 0u;
    *(Value + 3) = 0u;
    *(Value + 4) = 0u;
    *(Value + 5) = 0u;
    *(Value + 12) = 0;
    *Value = *self->_proofReaderConnection;
    v9 = 16;
    Value[24] = 16;
    *(Value + 26) = 8388736;
    *(Value + 17) = 0x8000;
    Value[7] = 2;
    *(Value + 4) = 80;
    if (([v5 isEqualToString:@"English"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"en") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"American English") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"AmericanEnglish") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"en_US") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en-US"))
    {
      goto LABEL_13;
    }

    if (([v5 isEqualToString:@"Indian English"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"IndianEnglish") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en_IN") || (objc_msgSend(v5, "isEqualToString:", @"Singapore English") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"SingaporeEnglish") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en_SG"))
    {
LABEL_35:
      v9 = 16;
LABEL_36:
      Value[24] = v9;
      v24 = 64;
LABEL_37:
      *(Value + 13) = v24;
      goto LABEL_14;
    }

    if (([v5 isEqualToString:@"Japanese English"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"JapaneseEnglish") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en_JP") || (objc_msgSend(v5, "isEqualToString:", @"Chinese English") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ChineseEnglish") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en_CN"))
    {
      goto LABEL_44;
    }

    if (([v5 isEqualToString:@"Australian English"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"AustralianEnglish") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"en_AU") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en-AU"))
    {
      goto LABEL_35;
    }

    if (([v5 isEqualToString:@"Canadian English"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"CanadianEnglish") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"en_CA") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en-CA"))
    {
      v9 = 16;
      Value[24] = 16;
      v24 = 32;
      goto LABEL_37;
    }

    if (([v5 isEqualToString:@"New Zealand English"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"NewZealandEnglish") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en_NZ") || (objc_msgSend(v5, "isEqualToString:", @"South African English") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"SouthAfricanEnglish") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en_ZA") || (objc_msgSend(v5, "isEqualToString:", @"British English") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"BritishEnglish") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"en"))
    {
      goto LABEL_35;
    }

    if ([v5 hasPrefix:@"en"])
    {
LABEL_44:
      v9 = 16;
LABEL_13:
      Value[24] = v9;
      goto LABEL_14;
    }

    if (([v5 isEqualToString:@"Swiss German"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"SwissGerman") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"de_CH"))
    {
      v9 = 6;
      goto LABEL_36;
    }

    if (([v5 isEqualToString:@"German"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"de"))
    {
      v9 = 6;
LABEL_71:
      Value[24] = v9;
      v24 = 128;
      goto LABEL_37;
    }

    if (([v5 isEqualToString:@"Brazilian Portuguese"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"BrazilianPortuguese") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"pt_BR") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"pt-BR"))
    {
      v9 = 12;
      goto LABEL_36;
    }

    if (([v5 isEqualToString:@"European Portuguese"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"EuropeanPortuguese") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"pt_PT") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"pt-PT") || (objc_msgSend(v5, "isEqualToString:", @"Portuguese") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"pt"))
    {
      v9 = 12;
      goto LABEL_71;
    }

    if (([v5 isEqualToString:@"Arabic"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"ar"))
    {
      v9 = 20;
      goto LABEL_13;
    }

    if (([v5 isEqualToString:@"Bulgarian"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"bg"))
    {
      v9 = 25;
      goto LABEL_13;
    }

    if (([v5 isEqualToString:@"Catalan"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"ca"))
    {
      v9 = 3;
LABEL_132:
      Value[24] = v9;
      v25 = 128;
      goto LABEL_136;
    }

    if (([v5 isEqualToString:@"Czech"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"cs"))
    {
      v9 = 1;
      goto LABEL_13;
    }

    if (([v5 isEqualToString:@"Danish"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"da"))
    {
      v9 = 10;
      goto LABEL_13;
    }

    if (([v5 isEqualToString:@"Dutch"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"nl"))
    {
      v9 = 11;
      goto LABEL_13;
    }

    if (([v5 isEqualToString:@"Finnish"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"fi"))
    {
      v9 = 14;
      goto LABEL_13;
    }

    if (([v5 isEqualToString:@"French"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"fr"))
    {
      v9 = 5;
      Value[24] = 5;
      v25 = 96;
    }

    else
    {
      if (([v5 isEqualToString:@"Greek"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"el"))
      {
        v9 = 15;
        goto LABEL_13;
      }

      if (([v5 isEqualToString:@"Hebrew"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"he"))
      {
        v9 = 22;
        goto LABEL_13;
      }

      if (([v5 isEqualToString:@"Hungarian"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"hu"))
      {
        v9 = 4;
        goto LABEL_13;
      }

      if (([v5 isEqualToString:@"Italian"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"it"))
      {
        v9 = 9;
        goto LABEL_13;
      }

      if (([v5 isEqualToString:@"Korean"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"ko"))
      {
        v9 = 29;
        goto LABEL_13;
      }

      if (([v5 isEqualToString:@"Norwegian"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"nb"))
      {
        v9 = 13;
        goto LABEL_13;
      }

      if (([v5 isEqualToString:@"Polish"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"pl"))
      {
        v9 = 18;
        goto LABEL_13;
      }

      if (([v5 isEqualToString:@"Russian"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"ru"))
      {
        v9 = 2;
        goto LABEL_132;
      }

      if (([v5 isEqualToString:@"Spanish"] & 1) == 0 && !objc_msgSend(v5, "hasPrefix:", @"es"))
      {
        if (([v5 isEqualToString:@"Swedish"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"sv"))
        {
          v9 = 7;
          goto LABEL_13;
        }

        if (([v5 isEqualToString:@"Thai"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"th"))
        {
          v9 = 35;
          goto LABEL_13;
        }

        if (([v5 isEqualToString:@"Turkish"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"tr"))
        {
          v9 = 28;
          goto LABEL_13;
        }

        if ([v5 isEqualToString:@"Vietnamese"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"vi"))
        {
          v9 = 36;
          goto LABEL_13;
        }

        v9 = Value[24];
LABEL_14:
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u:%u:%u:%@", v9, *(Value + 13), *(Value + 14), v8];
        v11 = CFDictionaryGetValue(self->_databaseConnectionsByPathAndCode, v10);
        if (v11)
        {
          v12 = v11;
          free(Value);
          CFDictionaryAddValue(self->_databaseConnections, v5, v12);
          return v12;
        }

        v13 = [objc_msgSend(v8 "lastPathComponent")];
        v14 = [objc_msgSend(v8 "stringByDeletingLastPathComponent")];
        v15 = strlen(v13);
        v16 = strlen(v14);
        v17 = malloc_type_malloc(v15 + 1, 0xEBC1D5D7uLL);
        strncpy(v17, v13, v15 + 1);
        if (Value[24] != 16)
        {
          Value[7] = 1;
        }

        v18 = malloc_type_malloc(0x208uLL, 0x1010040F1668D93uLL);
        *(Value + 5) = v18;
        *v18 = v17;
        strncpy((*(Value + 5) + 8), v14, v16 + 1);
        *(*(Value + 5) + 8 + strlen((*(Value + 5) + 8))) = 47;
        v19 = Value[24];
        if (v19 == 18)
        {
          if (v15 < 5)
          {
            goto LABEL_24;
          }
        }

        else if (v15 < 5 || v19 != 4)
        {
          goto LABEL_24;
        }

        v20 = malloc_type_malloc(v15 + 1, 0x5BAB1007uLL);
        v21 = &strncpy(v20, v13, v15 + 1)[v15];
        *(v21 - 3) = 25964;
        *(v21 - 1) = 120;
        v22 = malloc_type_malloc(0x208uLL, 0x1010040F1668D93uLL);
        *(Value + 9) = v22;
        *v22 = v20;
        __strncpy_chk();
        *(*(Value + 9) + 8 + strlen((*(Value + 9) + 8))) = 47;
LABEL_24:
        if (!PRdb(Value, 1, 0))
        {
          CFDictionaryAddValue(self->_databaseConnections, v5, Value);
          CFDictionaryAddValue(self->_databaseConnectionsByPathAndCode, v10, Value);
          return Value;
        }

        _freeDatabaseConnection(Value);
        return 0;
      }

      v9 = 8;
      Value[24] = 8;
      v25 = 64;
    }

LABEL_136:
    *(Value + 14) = v25;
    goto LABEL_14;
  }

  return Value;
}

- (void)releaseDatabaseConnections
{
  CFDictionaryApplyFunction(self->_databaseConnectionsByPathAndCode, _releaseDatabaseConnection, 0);
  CFDictionaryRemoveAllValues(self->_databaseConnections);
  databaseConnectionsByPathAndCode = self->_databaseConnectionsByPathAndCode;

  CFDictionaryRemoveAllValues(databaseConnectionsByPathAndCode);
}

- (void)loadLexiconsAndLanguageModelsForLanguage:(id)a3
{
  v4 = [PRLanguage languageObjectWithIdentifier:a3];
  [(AppleSpell *)self lexiconForLanguageObject:v4];

  [(AppleSpell *)self loadWordLanguageModelForLanguageObject:v4];
}

- (BOOL)spellServer:(id)a3 shouldBlockWord:(id)a4 language:(id)a5 offensiveOnly:(BOOL)a6
{
  v6 = a6;
  v9 = [PRLanguage languageObjectWithIdentifier:a5];
  v10 = [(AppleSpell *)self shouldBlockWord:a4 languageObject:v9];
  if (v10 && v6)
  {
    v13 = 0;
    LOBYTE(v10) = [(AppleSpell *)self getMetaFlagsForWord:a4 inLexiconForLanguageObject:v9 metaFlags:&v13 otherMetaFlags:0]&& (v13 & 0x1000000) != 0;
  }

  return v10;
}

- (id)spellServer:(id)a3 regionalCorrectionForWord:(id)a4 language:(id)a5
{
  v7 = [PRLanguage languageObjectWithIdentifier:a5];
  result = [(AppleSpell *)self regionalCorrectionsDictionaryForLanguageObject:v7];
  if (result)
  {
    v9 = result;
    result = [result objectForKey:a4];
    if (!result)
    {
      v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{objc_msgSend(v7, "localization")}];
      v11 = [a4 lowercaseString];
      if ([a4 isEqualToString:{initialCapitalizedString(v11, v10)}])
      {
        result = [v9 objectForKey:v11];
        if (result)
        {

          return initialCapitalizedString(result, v10);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)enumerateLexiconEntriesForWord:(id)a3 language:(id)a4 usingBlock:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(AppleSpell *)self lexiconsForLanguageObject:[PRLanguage languageObjectWithIdentifier:a4]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __65__AppleSpell_enumerateLexiconEntriesForWord_language_usingBlock___block_invoke;
        v14[3] = &unk_1E8405178;
        v14[4] = a5;
        [v12 enumerateEntriesForString:a3 usingBlock:v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkGrammarInString:(id)a3 range:(_NSRange)a4 language:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 bufIO:(_PR_BUF_IO *)a8 errorRange:(_NSRange *)a9 details:(id *)a10
{
  length = a4.length;
  location = a4.location;
  v42 = 200;
  v14 = [PRLanguage languageObjectWithIdentifier:a5];
  encoding = [v14 encoding];
  if (a6->var6 == 16 && length >= 5)
  {
    var0 = a8->var0;
    [a3 rangeOfCharacterFromSet:objc_msgSend(MEMORY[0x1E696AB08] options:"alphanumericCharacterSet") range:{0, location, length}];
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      Bytes = 0;
      v38 = location + length;
      a8->var5 = 0;
      while (1)
      {
        var5 = a8->var5;
        if (v42 == 200 || v18 <= var5)
        {
          usedBufLen = 0;
          if (var5)
          {
            v23 = v18 > var5;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            v19 = v18 - var5;
            memmove(var0, &var0[var5], v18 - var5);
            v24 = 1024 - v19;
          }

          else
          {
            v19 = 0;
            v24 = 1024;
          }

          location += Bytes;
          if (v38 <= location)
          {
            return 0;
          }

          if (v38 - location >= v24)
          {
            v25.length = v24;
          }

          else
          {
            v25.length = v38 - location;
          }

          v25.location = location;
          Bytes = CFStringGetBytes(a3, v25, encoding, 0x5Fu, 0, &var0[v19], v24, &usedBufLen);
          v26 = usedBufLen;
          if (Bytes + location >= v38 || usedBufLen < v24)
          {
            a8->var3 = 32;
          }

          v18 = v26 + v19;
          if (!(v26 + v19))
          {
            return 0;
          }

          if (v19 < v18)
          {
            v28 = &var0[v19 + 1];
            v29 = v19 + 2;
            while (1)
            {
              v30 = *(v28 - 1);
              if (v30 < 9 || v30 - 14 < 0x12)
              {
                break;
              }

              v32 = 32;
              if (*(v28 - 1) <= 0x92u)
              {
                if (*(v28 - 1) > 0x84u)
                {
                  if (v30 - 145 >= 2)
                  {
                    if (v30 == 133)
                    {
                      goto LABEL_53;
                    }

                    if (v30 != 139)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                else
                {
                  if (*(v28 - 1) <= 0x5Fu)
                  {
                    if (v30 != 92 && v30 != 95)
                    {
                      goto LABEL_54;
                    }

                    goto LABEL_53;
                  }

                  if (v30 != 96 && v30 != 130 && v30 != 132)
                  {
                    goto LABEL_54;
                  }
                }

LABEL_52:
                v32 = 39;
                goto LABEL_53;
              }

              v33 = v30 + 105;
              if (v30 - 151 <= 0x24)
              {
                if (((1 << v33) & 0x201) != 0)
                {
                  goto LABEL_53;
                }

                if (((1 << v33) & 0x20000010) != 0)
                {
                  goto LABEL_52;
                }

                if (((1 << v33) & 0x1000100000) != 0)
                {
                  goto LABEL_48;
                }
              }

              if (v30 - 147 < 2)
              {
LABEL_48:
                v32 = 34;
                goto LABEL_53;
              }

              if (v30 == 150)
              {
                v32 = 45;
                goto LABEL_53;
              }

LABEL_54:
              if (v29 < v18 && v30 == 46 && *v28 == 46 && v28[1] == 46)
              {
                v28[1] = 32;
                *(v28 - 1) = 8224;
              }

              ++v28;
              ++v29;
              if (!--v26)
              {
                goto LABEL_66;
              }
            }

            v32 = 32;
LABEL_53:
            *(v28 - 1) = v32;
            v30 = v32;
            goto LABEL_54;
          }

LABEL_66:
          LODWORD(var5) = 0;
          var0[v18] = 0;
          a8->var5 = 0;
          a8->var4 = v18;
        }

        if (var0[var5] <= 0x20u)
        {
          do
          {
            LODWORD(var5) = var5 + 1;
            a8->var5 = var5;
          }

          while (var0[var5] < 0x21u);
        }

        var6 = a6->var6;
        v35 = var6 == 16;
        if (var6 != 16 || [(AppleSpell *)self _checkEnglishGrammarInString:a3 range:location indexIntoBuffer:Bytes bufferLength:v19 languageObject:v18 connection:v14 sender:a6 bufIO:a7 retval:a8 errorRange:&v42 details:a9, a10])
        {
          return v35;
        }
      }
    }
  }

  return 0;
}

- (_NSRange)spellServer:(id)a3 checkGrammarInString:(id)a4 range:(_NSRange)a5 language:(id)a6 orthography:(id)a7 mutableResults:(id)a8 offset:(unint64_t)a9 details:(id *)a10
{
  v11 = a10;
  v47 = *MEMORY[0x1E69E9840];
  memset(v44, 0, sizeof(v44));
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v39 = 0;
  location = a5.location;
  v38 = 0;
  v36 = 0;
  v45 = xmmword_1D2BF76A0;
  if (!a6 || (length = a5.length, v14 = a5.location, ([a6 isEqualToString:@"und"] & 1) != 0) || (objc_msgSend(a6, "isEqualToString:", @"Multilingual") & 1) != 0 || (v17 = -[AppleSpell databaseConnectionForLanguageObject:](self, "databaseConnectionForLanguageObject:", +[PRLanguage languageObjectWithIdentifier:](PRLanguage, "languageObjectWithIdentifier:", a6))) == 0 || v17[24] != 16)
  {
    v29 = 1;
    if (!a10)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  LOBYTE(v18) = 0;
  v34 = v17;
  memset(&v44[1] + 8, 0, 56);
  *(v44 + 8) = 0u;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  *&v44[0] = &v46;
  WORD4(v44[0]) = *v17;
  HIWORD(v41) = 256;
  v19 = v14 + length;
  *(&v44[1] + 1) = &v41;
  *&v44[2] = &v39;
  BYTE13(v44[3]) = 0;
  while (location < v19)
  {
    [a4 getParagraphStart:&v38 end:&location contentsEnd:&v36 forRange:?];
    if (v38 < v19 && v36 > v38 && v36 > v14)
    {
      v33 = v11;
      v35 = 0;
      v22 = v36 - v38;
      if (v38 >= v14)
      {
        v23 = v38;
      }

      else
      {
        v22 = v36 - v14;
        v23 = v14;
      }

      if (v36 <= v19)
      {
        v24 = v22;
      }

      else
      {
        v24 = v19 - v23;
      }

      if (v24)
      {
        while (1)
        {
          v45 = xmmword_1D2BF76A0;
          v18 = [(AppleSpell *)self _checkGrammarInString:a4 range:v23 language:v24 connection:a6 sender:v34 bufIO:a3 errorRange:v44 details:&v45, &v35];
          if (!v18)
          {
            break;
          }

          if (v45 == 0x7FFFFFFFFFFFFFFFLL || *(&v45 + 1) == 0)
          {
            break;
          }

          if (!a8)
          {
            v11 = v33;
            if (v33)
            {
              *v33 = v35;
            }

            v29 = 0;
            goto LABEL_37;
          }

          v26 = objc_alloc(MEMORY[0x1E696AC50]);
          v27 = [v26 initWithRange:v45 + a9 details:{*(&v45 + 1), v35}];
          [a8 addObject:v27];

          v28 = v23 + v24;
          v23 = *(&v45 + 1) + v45;
          v24 = v28 - (*(&v45 + 1) + v45);
          if (v28 <= *(&v45 + 1) + v45)
          {
            LOBYTE(v18) = 1;
            break;
          }
        }
      }

      v11 = v33;
    }
  }

  v29 = !v18;
LABEL_37:
  PRbuf(v44, 0x11u, 0);
  if (v11)
  {
LABEL_33:
    if (v29)
    {
      *v11 = 0;
    }
  }

LABEL_35:
  [(AppleSpell *)self resetTimer:a3];
  v31 = *(&v45 + 1);
  v30 = v45;
  v32 = *MEMORY[0x1E69E9840];
  result.length = v31;
  result.location = v30;
  return result;
}

- (_NSRange)spellServer:(id)a3 checkGrammarInString:(id)a4 language:(id)a5 details:(id *)a6
{
  v6 = -[AppleSpell spellServer:checkGrammarInString:range:language:orthography:mutableResults:offset:details:](self, "spellServer:checkGrammarInString:range:language:orthography:mutableResults:offset:details:", a3, a4, 0, [a4 length], a5, 0, 0, 0, a6);
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)spellServer:(id)a3 checkGrammarInString:(id)a4 range:(_NSRange)a5 language:(id)a6 offset:(unint64_t)a7 options:(id)a8
{
  length = a5.length;
  location = a5.location;
  v15 = [PRLanguage languageObjectWithIdentifier:a6];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [a8 objectForKey:@"IgnoreTermination"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v17) = [v17 BOOLValue];
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  [(AppleSpell *)self spellServer:a3 checkGrammarInString:a4 range:location language:length orthography:a6 mutableResults:0 offset:v16 details:a7, 0];
  if ([(AppleSpell *)self supportSentenceCorrectionForLanguageObject:v15 appIdentifier:0])
  {
    BYTE2(v19) = v17;
    LOWORD(v19) = 257;
    [(AppleSpell *)self spellServer:a3 checkSentenceCorrectionInString:a4 range:location languageObject:length offset:v15 keyEventArray:a7 selectedRangeValue:0 autocorrect:0 checkGrammar:v19 ignoreTermination:v16 mutableResults:?];
  }

  return v16;
}

- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 language:(id)a5 wordCount:(int64_t *)a6 countOnly:(BOOL)a7
{
  if (a5 && ([a5 isEqualToString:@"und"] & 1) == 0 && !objc_msgSend(a5, "isEqualToString:", @"Multilingual"))
  {
    v14 = MEMORY[0x1E695DEC8];
    v16 = a5;
    goto LABEL_8;
  }

  v13 = [(NSArray *)self->_userPreferredLatinLanguages count];
  v14 = MEMORY[0x1E695DEC8];
  if (!v13)
  {
    v16 = @"en";
LABEL_8:
    v15 = [v14 arrayWithObject:v16];
    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_userPreferredLatinLanguages];
LABEL_9:
  LOWORD(v21) = a7;
  LODWORD(v20) = 0;
  LOBYTE(v19) = 0;
  v17 = -[AppleSpell spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:](self, "spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:", a3, a4, 0, [a4 length], v15, 0, 0, v19, 0, 0, v20, 0, 0, 0, 0, a6, v21, 0);
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 language:(id)a5 wordCount:(int64_t *)a6 countOnly:(BOOL)a7 correction:(id *)a8
{
  if (a5 && ([a5 isEqualToString:@"und"] & 1) == 0 && !objc_msgSend(a5, "isEqualToString:", @"Multilingual"))
  {
    v16 = MEMORY[0x1E695DEC8];
    v18 = a5;
    goto LABEL_8;
  }

  v15 = [(NSArray *)self->_userPreferredLatinLanguages count];
  v16 = MEMORY[0x1E695DEC8];
  if (!v15)
  {
    v18 = @"en";
LABEL_8:
    v17 = [v16 arrayWithObject:v18];
    goto LABEL_9;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_userPreferredLatinLanguages];
LABEL_9:
  LOWORD(v23) = a7;
  BYTE3(v22) = 0;
  BYTE2(v22) = 0;
  LOWORD(v22) = a8 != 0;
  LOBYTE(v21) = 0;
  v19 = -[AppleSpell spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:](self, "spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:", a3, a4, 0, [a4 length], v17, 0, 0, v21, 0, 0, v22, 0, 0, 0, 0, a6, v23, a8);
  result.length = v20;
  result.location = v19;
  return result;
}

- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 languages:(id)a5 wordCount:(int64_t *)a6 countOnly:(BOOL)a7 correction:(id *)a8
{
  v11 = a5;
  v15 = [a5 firstObject];
  if (!v15 || (v16 = v15, ([v15 isEqualToString:@"und"] & 1) != 0) || objc_msgSend(v16, "isEqualToString:", @"Multilingual"))
  {
    if ([(NSArray *)self->_userPreferredLatinLanguages count])
    {
      v17 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_userPreferredLatinLanguages];
    }

    else
    {
      v17 = [MEMORY[0x1E695DEC8] arrayWithObject:@"en"];
    }

    v11 = v17;
  }

  LOWORD(v22) = a7;
  BYTE3(v21) = 0;
  BYTE2(v21) = 0;
  LOWORD(v21) = a8 != 0;
  LOBYTE(v20) = 0;
  v18 = -[AppleSpell spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:](self, "spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:", a3, a4, 0, [a4 length], v11, 0, 0, v20, 0, 0, v21, 0, 0, 0, 0, a6, v22, a8);
  result.length = v19;
  result.location = v18;
  return result;
}

- (id)spellServer:(id)a3 checkString:(id)a4 offset:(unint64_t)a5 types:(unint64_t)a6 options:(id)a7 orthography:(id)a8 wordCount:(int64_t *)a9
{
  obj = a6;
  v197 = *MEMORY[0x1E69E9840];
  v135 = [MEMORY[0x1E695DF70] array];
  v139 = [a4 length];
  v186 = -1;
  v12 = [a7 objectForKey:@"KeyEventArray"];
  v131 = _appIdentifierFromOptions(a7);
  v136 = [a7 objectForKey:@"RecheckOrthography"];
  v13 = [a7 objectForKey:@"InsertionPoint"];
  v14 = [a7 objectForKey:@"SelectedRangeLocation"];
  v15 = [a7 objectForKey:@"SelectedRangeLength"];
  v16 = [a7 objectForKey:@"OnlyAtInsertionPoint"];
  v17 = [a7 objectForKey:@"AppendCorrectionLanguage"];
  v18 = [a7 objectForKey:@"SelectedRange"];
  v142 = a8;
  v19 = [a8 dominantScript];
  v138 = v12;
  v20 = [v12 lastObject];
  v130 = [a7 objectForKey:@"ParameterBundles"];
  v132 = v18;
  if (!v18)
  {
    if (v14 && v15)
    {
      v21 = MEMORY[0x1E696B098];
      v22 = [v14 unsignedIntegerValue];
      v23 = [v15 unsignedIntegerValue];
    }

    else
    {
      if (!v13)
      {
        v132 = 0;
        if (v16)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

      v21 = MEMORY[0x1E696B098];
      v22 = [v13 unsignedIntegerValue];
      v23 = 0;
    }

    v132 = [v21 valueWithRange:{v22, v23}];
  }

  if (v16)
  {
LABEL_9:
    v129 = [v16 BOOLValue];
    goto LABEL_12;
  }

LABEL_11:
  v129 = 0;
LABEL_12:
  v24 = v142;
  v25 = v138;
  if (v17)
  {
    v128 = [v17 BOOLValue];
  }

  else
  {
    v128 = 0;
  }

  v141 = self;
  if ([@"Cyrl" isEqualToString:v19])
  {
    v26 = [v142 dominantLanguage];
    v27 = !self->_userPrefersUncheckedCyrillicLanguage;
    v28 = *&v27 & (obj >> 2);
    v29 = *&v27 & (obj >> 1);
  }

  else
  {
    if ([@"Kore" isEqualToString:v19])
    {
      LOBYTE(v28) = obj >> 2;
      LOBYTE(v29) = obj >> 1;
    }

    else
    {
      LOBYTE(v28) = obj >> 2;
      LOBYTE(v29) = obj >> 1;
      v30 = [v142 dominantLanguageForScript:@"Latn"];
      if (v30)
      {
        v26 = v30;
        goto LABEL_23;
      }
    }

    v26 = [v142 dominantLanguage];
  }

  if (!v26)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (([(__CFString *)v26 isEqualToString:@"und"]& 1) != 0 || [(__CFString *)v26 isEqualToString:@"Multilingual"])
  {
LABEL_25:
    if ([@"Cyrl" isEqualToString:v19])
    {
      v31 = [MEMORY[0x1E695DFA0] orderedSetWithObject:@"ru"];
      [v31 addObjectsFromArray:self->_userPreferredLanguages];
      v32 = [v31 array];
      v127 = 0;
      userTopLanguages = 0;
      userPrefersUncheckedCyrillicLanguage = self->_userPrefersUncheckedCyrillicLanguage;
LABEL_27:
      v35 = !userPrefersUncheckedCyrillicLanguage;
      LOBYTE(v28) = v35 & v28;
      LOBYTE(v29) = v35 & v29;
LABEL_64:
      v46 = 1;
      v26 = @"Multilingual";
      goto LABEL_65;
    }

    if ([@"Kore" isEqualToString:v19])
    {
      v36 = MEMORY[0x1E695DFA0];
      v37 = @"ko";
    }

    else if ([@"Arab" isEqualToString:v19])
    {
      v36 = MEMORY[0x1E695DFA0];
      v37 = @"ar";
    }

    else if ([@"Grek" isEqualToString:v19])
    {
      v36 = MEMORY[0x1E695DFA0];
      v37 = @"el";
    }

    else if ([@"Deva" isEqualToString:v19])
    {
      v36 = MEMORY[0x1E695DFA0];
      v37 = @"hi";
    }

    else if ([@"Telu" isEqualToString:v19])
    {
      v36 = MEMORY[0x1E695DFA0];
      v37 = @"te";
    }

    else
    {
      if (![@"Guru" isEqualToString:v19])
      {
        if ([(NSArray *)self->_userPreferredLatinLanguages count])
        {
          v109 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_userPreferredLatinLanguages];
        }

        else
        {
          v109 = [MEMORY[0x1E695DEC8] arrayWithObject:@"en"];
        }

        v32 = v109;
        if (v20)
        {
          if ([v109 containsObject:@"tr"])
          {
            [objc_msgSend(v20 "keyboardLayoutIdentifier")];
            if (v111)
            {
              v32 = [MEMORY[0x1E695DF70] arrayWithArray:v32];
              [v32 removeObject:@"tr"];
              [v32 insertObject:@"tr" atIndex:0];
            }
          }

          if ([v32 containsObject:@"vi"] && (objc_msgSend(objc_msgSend(v20, "primaryLanguage"), "isEqualToString:", @"vi") & 1) == 0)
          {
            v32 = [MEMORY[0x1E695DF70] arrayWithArray:v32];
            [v32 removeObject:@"vi"];
            [v32 addObject:@"vi"];
          }
        }

        v127 = 0;
        userTopLanguages = 0;
        userPrefersUncheckedCyrillicLanguage = self->_userPrefersUncheckedLatinLanguage;
        goto LABEL_27;
      }

      v36 = MEMORY[0x1E695DFA0];
      v37 = @"pa";
    }

    v47 = [v36 orderedSetWithObject:v37];
    [v47 addObjectsFromArray:self->_userPreferredLanguages];
    v32 = [v47 array];
    v127 = 0;
    userTopLanguages = 0;
    goto LABEL_64;
  }

  if (([(__CFString *)v26 isEqualToString:@"en"]& 1) != 0 || [(__CFString *)v26 isEqualToString:@"pt"])
  {
    v38 = v29;
    v39 = v28;
    v32 = [MEMORY[0x1E695DF70] array];
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    userPreferredLanguages = self->_userPreferredLanguages;
    v41 = [(NSArray *)userPreferredLanguages countByEnumeratingWithState:&v182 objects:v196 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v183;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v183 != v43)
          {
            objc_enumerationMutation(userPreferredLanguages);
          }

          v45 = *(*(&v182 + 1) + 8 * i);
          if ([v45 hasPrefix:v26])
          {
            [v32 addObject:v45];
          }
        }

        v42 = [(NSArray *)userPreferredLanguages countByEnumeratingWithState:&v182 objects:v196 count:16];
      }

      while (v42);
    }

    LOBYTE(v28) = v39;
    if (![v32 count])
    {
      [v32 addObject:v26];
    }

    v24 = v142;
    v25 = v138;
    LOBYTE(v29) = v38;
  }

  else
  {
    if (([@"Kore" isEqualToString:v19] & 1) != 0 || (objc_msgSend(@"Grek", "isEqualToString:", v19) & 1) != 0 || (objc_msgSend(@"Telu", "isEqualToString:", v19) & 1) != 0 || objc_msgSend(@"Guru", "isEqualToString:", v19))
    {
      v32 = [MEMORY[0x1E695DEC8] arrayWithObject:v26];
LABEL_58:
      v127 = 0;
      v46 = 0;
      userTopLanguages = 0;
      goto LABEL_65;
    }

    v32 = [MEMORY[0x1E695DEC8] arrayWithObject:v26];
  }

  if (!v136 || ![v136 BOOLValue])
  {
    goto LABEL_58;
  }

  v46 = 0;
  userTopLanguages = v141->_userTopLanguages;
  v127 = 1;
LABEL_65:
  v137 = v28;
  if ([@"Arab" isEqualToString:v19])
  {
    if (([v32 containsObject:@"ur"] & 1) == 0)
    {
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v48 = [v25 countByEnumeratingWithState:&v178 objects:v195 count:16];
      if (v48)
      {
        v49 = v48;
        v123 = v46;
        v50 = userTopLanguages;
        v51 = v29;
        v52 = *v179;
        while (2)
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v179 != v52)
            {
              objc_enumerationMutation(v25);
            }

            if ([objc_msgSend(*(*(&v178 + 1) + 8 * j) "primaryLanguage")])
            {
              v32 = [v32 arrayByAddingObject:@"ur"];
              goto LABEL_77;
            }
          }

          v49 = [v25 countByEnumeratingWithState:&v178 objects:v195 count:16];
          if (v49)
          {
            continue;
          }

          break;
        }

LABEL_77:
        v24 = v142;
        LOBYTE(v28) = v137;
        LOBYTE(v29) = v51;
        userTopLanguages = v50;
        v46 = v123;
      }
    }
  }

  if ([@"Cyrl" isEqualToString:v19] && (objc_msgSend(v32, "containsObject:", @"bg") & 1) == 0)
  {
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v54 = [v25 countByEnumeratingWithState:&v174 objects:v194 count:16];
    if (v54)
    {
      v55 = v54;
      v124 = v46;
      v56 = userTopLanguages;
      v57 = v29;
      v58 = *v175;
      while (2)
      {
        for (k = 0; k != v55; ++k)
        {
          if (*v175 != v58)
          {
            objc_enumerationMutation(v25);
          }

          if ([objc_msgSend(*(*(&v174 + 1) + 8 * k) "primaryLanguage")])
          {
            v32 = [v32 arrayByAddingObject:@"bg"];
            goto LABEL_90;
          }
        }

        v55 = [v25 countByEnumeratingWithState:&v174 objects:v194 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }

LABEL_90:
      v24 = v142;
      LOBYTE(v28) = v137;
      LOBYTE(v29) = v57;
      userTopLanguages = v56;
      v46 = v124;
    }

    else
    {
      LOBYTE(v28) = v137;
    }
  }

  if ([@"Cyrl" isEqualToString:v19] && (objc_msgSend(v32, "containsObject:", @"uk") & 1) == 0)
  {
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v60 = [v25 countByEnumeratingWithState:&v170 objects:v193 count:16];
    if (v60)
    {
      v61 = v60;
      v125 = v46;
      v62 = userTopLanguages;
      v63 = v29;
      v64 = *v171;
      while (2)
      {
        for (m = 0; m != v61; ++m)
        {
          if (*v171 != v64)
          {
            objc_enumerationMutation(v25);
          }

          if ([objc_msgSend(*(*(&v170 + 1) + 8 * m) "primaryLanguage")])
          {
            v32 = [v32 arrayByAddingObject:@"uk"];
            goto LABEL_104;
          }
        }

        v61 = [v25 countByEnumeratingWithState:&v170 objects:v193 count:16];
        if (v61)
        {
          continue;
        }

        break;
      }

LABEL_104:
      v24 = v142;
      LOBYTE(v28) = v137;
      LOBYTE(v29) = v63;
      userTopLanguages = v62;
      v46 = v125;
    }

    else
    {
      LOBYTE(v28) = v137;
    }
  }

  if ([@"Deva" isEqualToString:v19] && (objc_msgSend(v32, "containsObject:", @"mr") & 1) == 0)
  {
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v66 = [v25 countByEnumeratingWithState:&v166 objects:v192 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v167;
      while (2)
      {
        for (n = 0; n != v67; ++n)
        {
          if (*v167 != v68)
          {
            objc_enumerationMutation(v25);
          }

          if ([objc_msgSend(*(*(&v166 + 1) + 8 * n) "primaryLanguage")])
          {
            v32 = [v32 arrayByAddingObject:@"mr"];
            goto LABEL_118;
          }
        }

        v67 = [v25 countByEnumeratingWithState:&v166 objects:v192 count:16];
        if (v67)
        {
          continue;
        }

        break;
      }

LABEL_118:
      v24 = v142;
      LOBYTE(v28) = v137;
    }

    else
    {
      v24 = v142;
    }
  }

  v70 = a9;
  if (([(__CFString *)v26 isEqualToString:@"Multilingual"]& 1) != 0)
  {
    v71 = 0;
    if ((v29 & 1) == 0)
    {
LABEL_122:
      if (a9)
      {
        LOWORD(v117) = 1;
        LODWORD(v114) = 0;
        LOBYTE(v112) = 0;
        v72 = a4;
        [AppleSpell spellServer:v141 findMisspelledWordInString:"spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:" range:a3 languages:a4 topLanguages:0 orthography:v139 checkOrthography:v32 mutableResults:0 offset:v24 autocorrect:v112 onlyAtInsertionPoint:0 initialCapitalize:0 autocapitalize:v114 keyEventArray:0 appIdentifier:0 selectedRangeValue:0 parameterBundles:0 wordCount:&v186 countOnly:v117 appendCorrectionLanguage:0 correction:?];
      }

      else
      {
        v72 = a4;
      }

      v73 = v135;
      goto LABEL_215;
    }
  }

  else
  {
    v71 = [PRLanguage languageObjectWithIdentifier:v26];
    if ((v29 & 1) == 0)
    {
      goto LABEL_122;
    }
  }

  v121 = obj & 0x80000202;
  v122 = obj & 0x40000202;
  v126 = obj & 0x202;
  BYTE1(v117) = v128;
  LOBYTE(v117) = 0;
  v116 = v25;
  BYTE1(v114) = v129;
  v72 = a4;
  v73 = v135;
  LOBYTE(v112) = v46;
  BYTE3(v114) = v121 == 2147484162;
  BYTE2(v114) = v122 == 1073742338;
  LOBYTE(v114) = v126 == 514;
  [AppleSpell spellServer:v141 findMisspelledWordInString:"spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:" range:a3 languages:a4 topLanguages:0 orthography:v139 checkOrthography:v32 mutableResults:userTopLanguages offset:v24 autocorrect:v112 onlyAtInsertionPoint:v135 initialCapitalize:a5 autocapitalize:v114 keyEventArray:v116 appIdentifier:v131 selectedRangeValue:v132 parameterBundles:v130 wordCount:&v186 countOnly:v117 appendCorrectionLanguage:0 correction:?];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v74 = [v135 countByEnumeratingWithState:&v162 objects:v191 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = 0;
    v77 = *v163;
    do
    {
      for (ii = 0; ii != v75; ++ii)
      {
        if (*v163 != v77)
        {
          objc_enumerationMutation(v135);
        }

        if ([*(*(&v162 + 1) + 8 * ii) resultType] == 2)
        {
          ++v76;
        }
      }

      v75 = [v135 countByEnumeratingWithState:&v162 objects:v191 count:16];
    }

    while (v75);
  }

  else
  {
    v76 = 0;
  }

  v79 = v127;
  if (v186 <= 0)
  {
    v79 = 0;
  }

  if (v79 != 1)
  {
    goto LABEL_215;
  }

  if (v186 >= 6)
  {
    v80 = v186 >= 2 * v76 || v71 == 0;
    if (!v80 && ([v71 isGreek] & 1) == 0 && (objc_msgSend(v71, "isKorean") & 1) == 0 && (objc_msgSend(v71, "isPunjabi") & 1) == 0 && (objc_msgSend(v71, "isTelugu") & 1) == 0)
    {
      if ([(NSArray *)v141->_userPreferredLatinLanguages count])
      {
        v110 = [MEMORY[0x1E695DEC8] arrayWithArray:v141->_userPreferredLatinLanguages];
      }

      else
      {
        v110 = [MEMORY[0x1E695DEC8] arrayWithObject:@"en"];
      }

      objb = v110;
      v24 = [MEMORY[0x1E696ADE0] orthographyWithDominantScript:@"Latn" languageMap:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", @"und", @"Latn"}];
      [v135 removeAllObjects];
      BYTE1(v118) = v128;
      LOBYTE(v118) = 0;
      BYTE3(v115) = v121 == 2147484162;
      BYTE2(v115) = v122 == 1073742338;
      BYTE1(v115) = v129;
      LOBYTE(v115) = v126 == 514;
      LOBYTE(v113) = 1;
      [AppleSpell spellServer:v141 findMisspelledWordInString:"spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:" range:a3 languages:a4 topLanguages:0 orthography:v139 checkOrthography:objb mutableResults:0 offset:v24 autocorrect:v113 onlyAtInsertionPoint:v135 initialCapitalize:a5 autocapitalize:v115 keyEventArray:v138 appIdentifier:v131 selectedRangeValue:v132 parameterBundles:v130 wordCount:&v186 countOnly:v118 appendCorrectionLanguage:0 correction:?];
      LOBYTE(v28) = v137;
      goto LABEL_215;
    }
  }

  v81 = v186;
  if (v186 <= 5 && v76 >= 1 && v71 != 0)
  {
    if ([v71 isItalian] & 1) != 0 || (objc_msgSend(v71, "isSpanish") & 1) != 0 || (objc_msgSend(v71, "isPortuguese"))
    {
      v119 = v71;
      v120 = a9;
      v83 = [MEMORY[0x1E695DF70] array];
      obja = [MEMORY[0x1E695DF70] array];
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      userPreferredLatinLanguages = v141->_userPreferredLatinLanguages;
      v85 = [(NSArray *)userPreferredLatinLanguages countByEnumeratingWithState:&v158 objects:v190 count:16];
      if (v85)
      {
        v86 = v85;
        v87 = *v159;
        do
        {
          for (jj = 0; jj != v86; ++jj)
          {
            if (*v159 != v87)
            {
              objc_enumerationMutation(userPreferredLatinLanguages);
            }

            v89 = *(*(&v158 + 1) + 8 * jj);
            if (([v89 hasPrefix:@"it"] & 1) != 0 || (objc_msgSend(v89, "hasPrefix:", @"es") & 1) != 0 || objc_msgSend(v89, "hasPrefix:", @"pt"))
            {
              [v83 addObject:v89];
            }
          }

          v86 = [(NSArray *)userPreferredLatinLanguages countByEnumeratingWithState:&v158 objects:v190 count:16];
        }

        while (v86);
      }

      v72 = a4;
      v73 = v135;
      v24 = v142;
      LOBYTE(v28) = v137;
      v71 = v119;
      v70 = a9;
      if ([v83 count])
      {
        v24 = [MEMORY[0x1E696ADE0] orthographyWithDominantScript:@"Latn" languageMap:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", @"und", @"Latn"}];
        BYTE1(v118) = v128;
        LOBYTE(v118) = 0;
        BYTE3(v115) = v121 == 2147484162;
        BYTE2(v115) = v122 == 1073742338;
        BYTE1(v115) = v129;
        LOBYTE(v115) = v126 == 514;
        LOBYTE(v113) = 1;
        [AppleSpell spellServer:v141 findMisspelledWordInString:"spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:" range:a3 languages:a4 topLanguages:0 orthography:v139 checkOrthography:v83 mutableResults:0 offset:v24 autocorrect:v113 onlyAtInsertionPoint:obja initialCapitalize:a5 autocapitalize:v115 keyEventArray:v138 appIdentifier:v131 selectedRangeValue:v132 parameterBundles:v130 wordCount:&v186 countOnly:v118 appendCorrectionLanguage:0 correction:?];
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v90 = [obja countByEnumeratingWithState:&v154 objects:v189 count:16];
        if (v90)
        {
          v91 = v90;
          v92 = 0;
          v93 = *v155;
          LOBYTE(v28) = v137;
          v71 = v119;
          do
          {
            for (kk = 0; kk != v91; ++kk)
            {
              if (*v155 != v93)
              {
                objc_enumerationMutation(obja);
              }

              if ([*(*(&v154 + 1) + 8 * kk) resultType] == 2)
              {
                ++v92;
              }
            }

            v91 = [obja countByEnumeratingWithState:&v154 objects:v189 count:16];
          }

          while (v91);
          goto LABEL_212;
        }

LABEL_211:
        v92 = 0;
        LOBYTE(v28) = v137;
        v71 = v119;
LABEL_212:
        if (v92 < v76)
        {
          v73 = obja;
        }

        v70 = v120;
        goto LABEL_215;
      }

      goto LABEL_215;
    }

    v81 = v186;
  }

  if (v81 <= 20)
  {
    v95 = v76 < 1 || v71 == 0;
    if (!v95 && (([v71 isDanish] & 1) != 0 || (objc_msgSend(v71, "isNorwegian") & 1) != 0 || objc_msgSend(v71, "isSwedish")))
    {
      v119 = v71;
      v120 = a9;
      v96 = [MEMORY[0x1E695DF70] array];
      obja = [MEMORY[0x1E695DF70] array];
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v97 = v141->_userPreferredLatinLanguages;
      v98 = [(NSArray *)v97 countByEnumeratingWithState:&v150 objects:v188 count:16];
      if (v98)
      {
        v99 = v98;
        v100 = *v151;
        do
        {
          for (mm = 0; mm != v99; ++mm)
          {
            if (*v151 != v100)
            {
              objc_enumerationMutation(v97);
            }

            v102 = *(*(&v150 + 1) + 8 * mm);
            if (([v102 hasPrefix:@"da"] & 1) != 0 || (objc_msgSend(v102, "hasPrefix:", @"nb") & 1) != 0 || objc_msgSend(v102, "hasPrefix:", @"sv"))
            {
              [v96 addObject:v102];
            }
          }

          v99 = [(NSArray *)v97 countByEnumeratingWithState:&v150 objects:v188 count:16];
        }

        while (v99);
      }

      v72 = a4;
      v73 = v135;
      v24 = v142;
      LOBYTE(v28) = v137;
      v71 = v119;
      v70 = a9;
      if ([v96 count])
      {
        v24 = [MEMORY[0x1E696ADE0] orthographyWithDominantScript:@"Latn" languageMap:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", @"und", @"Latn"}];
        BYTE1(v118) = v128;
        LOBYTE(v118) = 0;
        BYTE3(v115) = v121 == 2147484162;
        BYTE2(v115) = v122 == 1073742338;
        BYTE1(v115) = v129;
        LOBYTE(v115) = v126 == 514;
        LOBYTE(v113) = 1;
        [AppleSpell spellServer:v141 findMisspelledWordInString:"spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:" range:a3 languages:a4 topLanguages:0 orthography:v139 checkOrthography:v96 mutableResults:0 offset:v24 autocorrect:v113 onlyAtInsertionPoint:obja initialCapitalize:a5 autocapitalize:v115 keyEventArray:v138 appIdentifier:v131 selectedRangeValue:v132 parameterBundles:v130 wordCount:&v186 countOnly:v118 appendCorrectionLanguage:0 correction:?];
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v103 = [obja countByEnumeratingWithState:&v146 objects:v187 count:16];
        if (v103)
        {
          v104 = v103;
          v92 = 0;
          v105 = *v147;
          LOBYTE(v28) = v137;
          v71 = v119;
          do
          {
            for (nn = 0; nn != v104; ++nn)
            {
              if (*v147 != v105)
              {
                objc_enumerationMutation(obja);
              }

              if ([*(*(&v146 + 1) + 8 * nn) resultType] == 2)
              {
                ++v92;
              }
            }

            v104 = [obja countByEnumeratingWithState:&v146 objects:v187 count:16];
          }

          while (v104);
          goto LABEL_212;
        }

        goto LABEL_211;
      }
    }
  }

LABEL_215:
  if ((v28 & (v71 != 0)) == 1)
  {
    -[AppleSpell spellServer:checkGrammarInString:range:language:orthography:mutableResults:offset:details:](v141, "spellServer:checkGrammarInString:range:language:orthography:mutableResults:offset:details:", a3, v72, 0, v139, [v71 identifier], v24, v73, a5, 0);
  }

  if (v70)
  {
    *v70 = v186;
  }

  v107 = *MEMORY[0x1E69E9840];
  return v73;
}

- (id)spellServer:(id)a3 suggestGuessesForWord:(id)a4 inLanguage:(id)a5
{
  v9 = [a4 length];

  return [(AppleSpell *)self spellServer:a3 suggestGuessesForWordRange:0 inString:v9 inLanguage:a4 options:a5, 0];
}

- (id)spellServer:(id)a3 stringForInputString:(id)a4 language:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a5 || ([a5 isEqualToString:@"und"] & 1) != 0 || objc_msgSend(a5, "isEqualToString:", @"Multilingual"))
  {
    v9 = [(NSArray *)self->_userPreferredLatinLanguages count];
    v10 = MEMORY[0x1E695DEC8];
    if (v9)
    {
      v11 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_userPreferredLatinLanguages];
      goto LABEL_9;
    }

    v12 = @"en";
  }

  else
  {
    v10 = MEMORY[0x1E695DEC8];
    v12 = a5;
  }

  v11 = [v10 arrayWithObject:v12];
LABEL_9:
  v13 = v11;
  v14 = [+[PRLanguage languageObjectWithIdentifier:](PRLanguage languageObjectWithIdentifier:{a5), "encoding"}];
  v15 = [a4 length];
  theString = 0;
  LOWORD(v25) = 0;
  LODWORD(v24) = 1;
  LOBYTE(v23) = 0;
  [AppleSpell spellServer:"spellServer:findMisspelledWordInString:range:languages:topLanguages:orthography:checkOrthography:mutableResults:offset:autocorrect:onlyAtInsertionPoint:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:parameterBundles:wordCount:countOnly:appendCorrectionLanguage:correction:" findMisspelledWordInString:a3 range:a4 languages:0 topLanguages:v15 orthography:v13 checkOrthography:0 mutableResults:0 offset:v23 autocorrect:0 onlyAtInsertionPoint:0 initialCapitalize:v24 autocapitalize:0 keyEventArray:0 appIdentifier:0 selectedRangeValue:0 parameterBundles:0 wordCount:v25 countOnly:&theString appendCorrectionLanguage:? correction:?];
  if (v16)
  {
    v26 = 0;
    usedBufLen = 0;
    v17 = [(__CFString *)theString length];
    v18 = 0;
    if (v15 >= 5 && theString)
    {
      v19 = v17;
      v32.location = 0;
      v32.length = v15;
      if (v15 == CFStringGetBytes(a4, v32, v14, 0x5Fu, 0, buffer, 24, &usedBufLen) && (v33.location = 0, v33.length = v19, v19 == CFStringGetBytes(theString, v33, v14, 0x5Fu, 0, v29, 24, &v26)))
      {
        v20 = effectiveEditDistance(buffer, usedBufLen, v29, v26);
        v18 = theString;
        if (v20 != 1)
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    a4 = v18;
  }

  v21 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)sentenceTerminatorCharacterSet
{
  if (sentenceTerminatorCharacterSet_onceToken != -1)
  {
    [AppleSpell(LanguageModeling) sentenceTerminatorCharacterSet];
  }

  return sentenceTerminatorCharacterSet_terminatorCharacterSet;
}

id __62__AppleSpell_LanguageModeling__sentenceTerminatorCharacterSet__block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".!?։۔।።᙮‼‽⁇⁈⁉。！．？｡"];
  sentenceTerminatorCharacterSet_terminatorCharacterSet = result;
  return result;
}

- (id)_standardizedLanguageModelStringForString:(id)a3
{
  if ((_standardizedLanguageModelStringForString__initedStrings & 1) == 0)
  {
    v14 = 8216;
    v13 = 8217;
    v12 = 8220;
    v11 = 8221;
    v10 = 0;
    _standardizedLanguageModelStringForString__curlyOpenSingleQuote = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v14 length:1];
    _standardizedLanguageModelStringForString__curlyCloseSingleQuote = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v13 length:1];
    _standardizedLanguageModelStringForString__curlyOpenDoubleQuote = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v12 length:1];
    _standardizedLanguageModelStringForString__curlyCloseDoubleQuote = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v11 length:1];
    _standardizedLanguageModelStringForString__embeddedNull = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v10 length:1];
    _standardizedLanguageModelStringForString__initedStrings = 1;
  }

  [a3 rangeOfString:_standardizedLanguageModelStringForString__curlyOpenSingleQuote];
  if (v4)
  {
    a3 = [a3 stringByReplacingOccurrencesOfString:_standardizedLanguageModelStringForString__curlyOpenSingleQuote withString:@"'"];
  }

  [a3 rangeOfString:_standardizedLanguageModelStringForString__curlyCloseSingleQuote];
  if (v5)
  {
    a3 = [a3 stringByReplacingOccurrencesOfString:_standardizedLanguageModelStringForString__curlyCloseSingleQuote withString:@"'"];
  }

  [a3 rangeOfString:_standardizedLanguageModelStringForString__curlyOpenDoubleQuote];
  if (v6)
  {
    a3 = [a3 stringByReplacingOccurrencesOfString:_standardizedLanguageModelStringForString__curlyOpenDoubleQuote withString:@""];
  }

  [a3 rangeOfString:_standardizedLanguageModelStringForString__curlyCloseDoubleQuote];
  if (v7)
  {
    a3 = [a3 stringByReplacingOccurrencesOfString:_standardizedLanguageModelStringForString__curlyCloseDoubleQuote withString:@""];
  }

  [a3 rangeOfString:_standardizedLanguageModelStringForString__embeddedNull];
  if (v8)
  {
    return [a3 stringByReplacingOccurrencesOfString:_standardizedLanguageModelStringForString__embeddedNull withString:@"_"];
  }

  return a3;
}

- (unsigned)_tokenIDForString:(id)a3 languageModel:(id)a4 languageObject:(id)a5 createIfAbsent:(BOOL)a6 terminatorTokenID:(unsigned int)a7
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__AppleSpell_LanguageModeling___tokenIDForString_languageModel_languageObject_createIfAbsent_terminatorTokenID___block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  if (_tokenIDForString_languageModel_languageObject_createIfAbsent_terminatorTokenID__onceToken != -1)
  {
    dispatch_once(&_tokenIDForString_languageModel_languageObject_createIfAbsent_terminatorTokenID__onceToken, block);
    if (a4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

LABEL_3:
  if (![a3 length] || (objc_msgSend(a3, "rangeOfCharacterFromSet:", _tokenIDForString_languageModel_languageObject_createIfAbsent_terminatorTokenID__nonTerminatorSet), v12) || (objc_msgSend(a3, "isEqualToString:", @"..") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"..."))
  {
    v13 = [a5 isKorean];
    v14 = [(AppleSpell *)self _standardizedLanguageModelStringForString:a3];
    if (v13)
    {
      v15 = [(AppleSpell *)self internalStringForKoreanExternalString:v14];
      return [a4 tokenIDForString:v15];
    }

    a7 = [a4 tokenIDForString:v14];
    if (!a7)
    {
      v15 = [v14 lowercaseString];
      return [a4 tokenIDForString:v15];
    }
  }

  return a7;
}

id __112__AppleSpell_LanguageModeling___tokenIDForString_languageModel_languageObject_createIfAbsent_terminatorTokenID___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "sentenceTerminatorCharacterSet")];
  _tokenIDForString_languageModel_languageObject_createIfAbsent_terminatorTokenID__nonTerminatorSet = result;
  return result;
}

- (id)_stringForTokenIDs:(const unsigned int *)a3 tokenCount:(unint64_t)a4 entryString:(id)a5 languageModel:(id)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 sender:(id)a9 prefix:(id)a10 capitalized:(BOOL)a11
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF70] array];
  encoding = [a7 encoding];
  if (a6)
  {
    if (a4)
    {
      v17 = 0;
      v29 = 0;
      do
      {
        if (a3[v17] < 0x1F4)
        {
          v18 = 0;
        }

        else
        {
          v18 = [a6 stringForTokenID:?];
        }

        v19 = [a7 isArabic];
        if (!a5 || v17)
        {
          if (!v18)
          {
            goto LABEL_42;
          }
        }

        else if (v18)
        {
          if (v19 && ![(__CFString *)v18 isEqualToString:a5])
          {
            v18 = a5;
          }
        }

        else
        {
          v18 = a5;
          if (*a3)
          {
            goto LABEL_42;
          }
        }

        if (([(__CFString *)v18 isEqualToString:@"NUMBER"]& 1) != 0 || ([(__CFString *)v18 isEqualToString:@"LINK"]& 1) != 0)
        {
          goto LABEL_42;
        }

        if (!a10 || v17)
        {
          -[__CFString rangeOfCharacterFromSet:](v18, "rangeOfCharacterFromSet:", [MEMORY[0x1E696AB08] alphanumericCharacterSet]);
          if (!v20)
          {
            goto LABEL_42;
          }
        }

        else if ((acceptAsCompletion(v18, a10, a7) & 1) == 0)
        {
          goto LABEL_42;
        }

        v21 = [(__CFString *)v18 length];
        v33 = 0;
        if (v21)
        {
          v36.location = 0;
          v36.length = v21;
          if (v21 == CFStringGetBytes(v18, v36, encoding, 0x5Fu, 0, buffer, 254, &v33))
          {
            BYTE6(usedBufLen) = 1;
            WORD2(usedBufLen) = 257;
            LODWORD(usedBufLen) = 16842753;
            if (![AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:buffer languageObject:v33 connection:a7 sender:a8 checkBase:a9 checkDict:1 checkTemp:usedBufLen checkUser:0 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?]|| [(AppleSpell *)self checkWordBuffer:buffer length:v33 languageObject:a7 index:1]|| [(AppleSpell *)self acceptabilityOfWordBuffer:buffer length:v33 languageObject:a7 forPrediction:1 alreadyCapitalized:a11]< 2)
            {
LABEL_42:
              [v16 removeAllObjects];
              break;
            }
          }
        }

        v22 = [a7 isKorean];
        v23 = [a7 isTurkish];
        if (v22)
        {
          v24 = [(AppleSpell *)self externalStringForKoreanInternalString:v18];
        }

        else
        {
          if (v17)
          {
            goto LABEL_32;
          }

          if (!a11)
          {
            goto LABEL_32;
          }

          v25 = v23;
          if (![(__CFString *)v18 isEqualToString:[(__CFString *)v18 lowercaseString]])
          {
            goto LABEL_32;
          }

          if (v25)
          {
            v29 = _stringForTokenIDs_tokenCount_entryString_languageModel_languageObject_connection_sender_prefix_capitalized__turkishLocale;
            if (!_stringForTokenIDs_tokenCount_entryString_languageModel_languageObject_connection_sender_prefix_capitalized__turkishLocale)
            {
              v29 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
              _stringForTokenIDs_tokenCount_entryString_languageModel_languageObject_connection_sender_prefix_capitalized__turkishLocale = v29;
            }
          }

          v24 = initialCapitalizedString(v18, v29);
        }

        v18 = v24;
LABEL_32:
        [v16 addObject:v18];
        ++v17;
      }

      while (a4 != v17);
    }

    result = [v16 count];
    if (result)
    {
      result = [v16 componentsJoinedByString:@" "];
    }
  }

  else
  {
    result = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_stringForCompletion:(id)a3 languageModel:(id)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 prefix:(id)a8 capitalized:(BOOL)a9
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = [a5 encoding];
  if (a8)
  {
    if ((acceptAsCompletion(a3, a8, a5) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [a3 rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet")}];
    if (!v17)
    {
LABEL_12:
      a3 = 0;
      goto LABEL_20;
    }
  }

  v18 = [a3 length];
  v26 = 0;
  if (v18)
  {
    v29.location = 0;
    v29.length = v18;
    if (v18 == CFStringGetBytes(a3, v29, v16, 0x5Fu, 0, buffer, 254, &v26))
    {
      BYTE6(usedBufLen) = 1;
      WORD2(usedBufLen) = 257;
      LODWORD(usedBufLen) = 16842753;
      if (![AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:buffer languageObject:v26 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLen checkUser:0 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
      {
        goto LABEL_12;
      }

      if ([(AppleSpell *)self checkWordBuffer:buffer length:v26 languageObject:a5 index:1])
      {
        goto LABEL_12;
      }

      v19 = [(AppleSpell *)self acceptabilityOfWordBuffer:buffer length:v26 languageObject:a5 forPrediction:1 alreadyCapitalized:a9];
      if (!v19 || a4 && v19 == 1)
      {
        goto LABEL_12;
      }
    }
  }

  v20 = [a5 isTurkish];
  if (a9)
  {
    v21 = v20;
    if ([a3 isEqualToString:{objc_msgSend(a3, "lowercaseString")}])
    {
      if (v21)
      {
        v22 = _stringForCompletion_languageModel_languageObject_connection_sender_prefix_capitalized__turkishLocale;
        if (!_stringForCompletion_languageModel_languageObject_connection_sender_prefix_capitalized__turkishLocale)
        {
          v22 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
          _stringForCompletion_languageModel_languageObject_connection_sender_prefix_capitalized__turkishLocale = v22;
        }
      }

      else
      {
        v22 = 0;
      }

      a3 = initialCapitalizedString(a3, v22);
    }
  }

LABEL_20:
  v23 = *MEMORY[0x1E69E9840];
  return a3;
}

- (BOOL)shouldBlockWord:(id)a3 languageObject:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = [a4 encoding];
  v8 = [(AppleSpell *)self _standardizedLanguageModelStringForString:a3];
  if ([a4 isKorean])
  {
    v8 = [(AppleSpell *)self internalStringForKoreanExternalString:v8];
  }

  v9 = [(__CFString *)v8 length];
  if (v9)
  {
    usedBufLen = 0;
    v15.location = 0;
    v15.length = v9;
    LOBYTE(v9) = v9 == CFStringGetBytes(v8, v15, v7, 0, 0, buffer, 254, &usedBufLen) && [(AppleSpell *)self checkNegativeWordBuffer:buffer length:usedBufLen languageObject:a4];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)backgroundMaintenanceQueue
{
  if (backgroundMaintenanceQueue_onceToken != -1)
  {
    [AppleSpell(LanguageModeling) backgroundMaintenanceQueue];
  }

  return backgroundMaintenanceQueue__backgroundMaintenanceQueue;
}

dispatch_queue_t __58__AppleSpell_LanguageModeling__backgroundMaintenanceQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.ProofReader.backgroundMaintenanceQueue", v0);
  backgroundMaintenanceQueue__backgroundMaintenanceQueue = result;
  return result;
}

- (unint64_t)_contextLengthForRange:(_NSRange)a3 languageObject:(id)a4 tagger:(id)a5 languageModel:(id)a6 maxContextLength:(unint64_t)a7 context:(unsigned int *)a8 cleanOffset:(unint64_t *)a9 cleanContextRange:(_NSRange *)a10 lastTokenRange:(_NSRange *)a11 lastTokenID:(unsigned int *)a12
{
  length = a3.length;
  location = a3.location;
  v63 = *MEMORY[0x1E69E9840];
  v47 = [a5 string];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v19 = (MEMORY[0x1EEE9AC00])();
  v21 = &v40[-2 * v20];
  MEMORY[0x1EEE9AC00](v19);
  v44 = (v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = [objc_msgSend(a4 "identifier")];
  if (!a6)
  {
    v25 = 0;
    goto LABEL_47;
  }

  if (length)
  {
    v23 = [a5 sentenceRangeForRange:{location, length}];
  }

  else
  {
    if (!location)
    {
      v24 = 0;
      v26 = 0;
      goto LABEL_8;
    }

    v23 = [a5 sentenceRangeForRange:{location - 1, 1}];
  }

  v26 = v23;
LABEL_8:
  if (a7)
  {
    if ((v41 & 1) == 0)
    {
      v60[3] = 1;
      *v21 = xmmword_1D2BF76A0;
      *v44 = *MEMORY[0x1E6977970];
    }

    if (v24 && v26 + v24 >= location)
    {
      v27 = *MEMORY[0x1E69779F0];
      v48 = MEMORY[0x1E69E9820];
      v49 = 3221225472;
      v50 = __173__AppleSpell_LanguageModeling___contextLengthForRange_languageObject_tagger_languageModel_maxContextLength_context_cleanOffset_cleanContextRange_lastTokenRange_lastTokenID___block_invoke;
      v51 = &unk_1E84051C0;
      v54 = location;
      v55 = length;
      v52 = a5;
      v53 = &v59;
      v56 = v21;
      v57 = v44;
      v58 = a7;
      [a5 enumerateTagsInRange:? unit:? scheme:? options:? usingBlock:?];
    }
  }

  v40[1] = v40;
  if (v60[3])
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v42.length = 0;
    v46 = xmmword_1D2BF76A0;
    v43 = *MEMORY[0x1E69779B8];
    v42.location = 0x7FFFFFFFFFFFFFFFLL;
    v45 = 1;
    while (1)
    {
      if (v21->length)
      {
        v31 = [v47 substringWithRange:v21->location];
        v32 = [(AppleSpell *)self _tokenIDForString:v31 languageModel:a6 languageObject:a4 terminatorTokenID:1];
        if (v32 || v44[v28] != v43)
        {
          v33 = [(AppleSpell *)self shouldBlockWord:v31 languageObject:a4];
          a8[v30] = v32;
          if (v32 != 1)
          {
            v46 = *v21;
            v45 = v32;
          }

          v25 = v30 + 1;
          if (v33 || ([a6 tokenSequenceIsBlocklisted:a8 length:v30 + 1] & 1) != 0)
          {
            v29 = v30 + 1;
          }

          else if (v32 == 1)
          {
            v34 = v41;
            if (v30 == -1)
            {
              v34 = 1;
            }

            if (v34)
            {
              v29 = v30 + 1;
            }

            else
            {
              v29 = v30;
            }
          }

          else
          {
            v35.length = v42.length;
            if (v42.length)
            {
              v35.location = v42.location;
              v42 = NSUnionRange(v35, *v21);
            }

            else
            {
              v36 = v21->length;
              v42.location = v21->location;
              v42.length = v36;
            }
          }

          goto LABEL_36;
        }
      }

      else if (!v28)
      {
        v25 = v30 + 1;
        a8[v30] = 1;
        goto LABEL_36;
      }

      v25 = v30;
LABEL_36:
      ++v28;
      ++v21;
      v30 = v25;
      if (v28 >= v60[3])
      {
        goto LABEL_39;
      }
    }
  }

  v42 = 0x7FFFFFFFFFFFFFFFuLL;
  v25 = 0;
  v29 = 0;
  v46 = xmmword_1D2BF76A0;
  v45 = 1;
LABEL_39:
  if (a9)
  {
    *a9 = v29;
  }

  v37 = v42.length;
  if (a10)
  {
    a10->location = v42.location;
    a10->length = v37;
  }

  if (a11)
  {
    *a11 = v46;
  }

  if (a12)
  {
    *a12 = v45;
  }

LABEL_47:
  _Block_object_dispose(&v59, 8);
  v38 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t __173__AppleSpell_LanguageModeling___contextLengthForRange_languageObject_tagger_languageModel_maxContextLength_context_cleanOffset_cleanContextRange_lastTokenRange_lastTokenID___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a3 >= *(result + 48))
  {
    *a5 = 1;
  }

  else
  {
    v8 = result;
    result = [*(result + 32) orthoIndex];
    v9 = *(*(v8[5] + 8) + 24);
    if (result != 239 && v9 && ((v10 = v8[8], v11 = v10 + 16 * v9, v13 = *(v11 - 16), v12 = *(v11 - 8), v12 + v13 == a3) ? (v14 = *MEMORY[0x1E6977A18] == a2) : (v14 = 0), v14 && *(v8[9] + 8 * (v9 - 1)) == a2))
    {
      *(v10 + 16 * (v9 - 1) + 8) = v12 + a4;
    }

    else
    {
      v15 = v8[10];
      if (v9 >= v15)
      {
        if (v15 >= 2)
        {
          v18 = 0;
          v19 = 0;
          do
          {
            *(v8[8] + v18) = *(v8[8] + v18 + 16);
            *(v8[9] + 8 * v19) = *(v8[9] + 8 * v19 + 8);
            v15 = v8[10];
            v20 = v19 + 2;
            ++v19;
            v18 += 16;
          }

          while (v20 < v15);
        }

        v21 = v8[9];
        v22 = v8[8] + 16 * v15;
        *(v22 - 16) = a3;
        *(v22 - 8) = a4;
        *(v21 + 8 * v8[10] - 8) = a2;
      }

      else
      {
        v16 = v8[9];
        v17 = (v8[8] + 16 * v9);
        *v17 = a3;
        v17[1] = a4;
        *(v16 + 8 * (*(*(v8[5] + 8) + 24))++) = a2;
      }
    }
  }

  return result;
}

- (void)_readLanguageModelParametersFromDefaults
{
  if ((_readLanguageModelParametersFromDefaults_readDefaults & 1) == 0)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v2 objectForKey:@"NSSpellCheckerUseCharacterLanguageModels"])
    {
      _kUseCharacterLanguageModels = [v2 BOOLForKey:@"NSSpellCheckerUseCharacterLanguageModels"];
    }

    if ([v2 objectForKey:@"NSSpellCheckerSuppressLanguageModels"])
    {
      _kSuppressLanguageModels = [v2 BOOLForKey:@"NSSpellCheckerSuppressLanguageModels"];
    }

    if ([v2 objectForKey:@"NSSpellCheckerSuppressAdaptation"])
    {
      _kSuppressAdaptation = [v2 BOOLForKey:@"NSSpellCheckerSuppressAdaptation"];
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxContextLength"])
    {
      v3 = [v2 integerForKey:@"NSSpellCheckerMaxContextLength"];
      _kMaxContextLength = v3 & ~(v3 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxCorrectionRescoreCount"])
    {
      v4 = [v2 integerForKey:@"NSSpellCheckerMaxCorrectionRescoreCount"];
      _kMaxCorrectionRescoreCount = v4 & ~(v4 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxCompletionRescoreCount"])
    {
      v5 = [v2 integerForKey:@"NSSpellCheckerMaxCompletionRescoreCount"];
      _kMaxCompletionRescoreCount = v5 & ~(v5 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxPredictionSampleCount"])
    {
      v6 = [v2 integerForKey:@"NSSpellCheckerMaxPredictionSampleCount"];
      _kMaxPredictionSampleCount = v6 & ~(v6 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxTokensPerPrediction"])
    {
      v7 = [v2 integerForKey:@"NSSpellCheckerMaxTokensPerPrediction"];
      _kMaxTokensPerPrediction = v7 & ~(v7 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxPredictionsToExamine"])
    {
      v8 = [v2 integerForKey:@"NSSpellCheckerMaxPredictionsToExamine"];
      _kMaxPredictionsToExamine = v8 & ~(v8 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxPredictionsToAdd"])
    {
      v9 = [v2 integerForKey:@"NSSpellCheckerMaxPredictionsToAdd"];
      _kMaxPredictionsToAdd = v9 & ~(v9 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxCompletionsToExamine"])
    {
      v10 = [v2 integerForKey:@"NSSpellCheckerMaxCompletionsToExamine"];
      _kMaxCompletionsToExamine = v10 & ~(v10 >> 63);
    }

    if ([v2 objectForKey:@"NSSpellCheckerMaxCompletionsToAdd"])
    {
      v11 = [v2 integerForKey:@"NSSpellCheckerMaxCompletionsToAdd"];
      _kMaxCompletionsToAdd = v11 & ~(v11 >> 63);
    }

    _readLanguageModelParametersFromDefaults_readDefaults = 1;
  }
}

- (void)_readLanguageModelParametersFromDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"NSSpellCheckerUseCharacterLanguageModels"];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 BOOLValue];
      _kUseCharacterLanguageModels = v6;
      NSLog(@"NSSpellCheckerUseCharacterLanguageModels -> %d", v6);
    }
  }

  v7 = [a3 objectForKey:@"NSSpellCheckerSuppressLanguageModels"];
  if (v7)
  {
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 BOOLValue];
      _kSuppressLanguageModels = v9;
      NSLog(@"NSSpellCheckerSuppressLanguageModels -> %d", v9);
    }
  }

  v10 = [a3 objectForKey:@"NSSpellCheckerSuppressAdaptation"];
  if (v10)
  {
    v11 = v10;
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 BOOLValue];
      _kSuppressAdaptation = v12;
      NSLog(@"NSSpellCheckerSuppressAdaptation -> %d", v12);
    }
  }

  v13 = [a3 objectForKey:@"NSSpellCheckerMaxContextLength"];
  if (v13)
  {
    v14 = v13;
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 integerValue];
      _kMaxContextLength = v15 & ~(v15 >> 63);
      NSLog(@"NSSpellCheckerMaxContextLength -> %lu", v15 & ~(v15 >> 63));
    }
  }

  v16 = [a3 objectForKey:@"NSSpellCheckerMaxCorrectionRescoreCount"];
  if (v16)
  {
    v17 = v16;
    if (objc_opt_respondsToSelector())
    {
      v18 = [v17 integerValue];
      _kMaxCorrectionRescoreCount = v18 & ~(v18 >> 63);
      NSLog(@"NSSpellCheckerMaxCorrectionRescoreCount -> %lu", v18 & ~(v18 >> 63));
    }
  }

  v19 = [a3 objectForKey:@"NSSpellCheckerMaxCompletionRescoreCount"];
  if (v19)
  {
    v20 = v19;
    if (objc_opt_respondsToSelector())
    {
      v21 = [v20 integerValue];
      _kMaxCompletionRescoreCount = v21 & ~(v21 >> 63);
      NSLog(@"NSSpellCheckerMaxCompletionRescoreCount -> %lu", v21 & ~(v21 >> 63));
    }
  }

  v22 = [a3 objectForKey:@"NSSpellCheckerMaxPredictionSampleCount"];
  if (v22)
  {
    v23 = v22;
    if (objc_opt_respondsToSelector())
    {
      v24 = [v23 integerValue];
      _kMaxPredictionSampleCount = v24 & ~(v24 >> 63);
      NSLog(@"NSSpellCheckerMaxPredictionSampleCount -> %lu", v24 & ~(v24 >> 63));
    }
  }

  v25 = [a3 objectForKey:@"NSSpellCheckerMaxTokensPerPrediction"];
  if (v25)
  {
    v26 = v25;
    if (objc_opt_respondsToSelector())
    {
      v27 = [v26 integerValue];
      _kMaxTokensPerPrediction = v27 & ~(v27 >> 63);
      NSLog(@"NSSpellCheckerMaxTokensPerPrediction -> %lu", v27 & ~(v27 >> 63));
    }
  }

  v28 = [a3 objectForKey:@"NSSpellCheckerMaxPredictionsToExamine"];
  if (v28)
  {
    v29 = v28;
    if (objc_opt_respondsToSelector())
    {
      v30 = [v29 integerValue];
      _kMaxPredictionsToExamine = v30 & ~(v30 >> 63);
      NSLog(@"NSSpellCheckerMaxPredictionsToExamine -> %lu", v30 & ~(v30 >> 63));
    }
  }

  v31 = [a3 objectForKey:@"NSSpellCheckerMaxPredictionsToAdd"];
  if (v31)
  {
    v32 = v31;
    if (objc_opt_respondsToSelector())
    {
      v33 = [v32 integerValue];
      _kMaxPredictionsToAdd = v33 & ~(v33 >> 63);
      NSLog(@"NSSpellCheckerMaxPredictionsToAdd -> %lu", v33 & ~(v33 >> 63));
    }
  }

  v34 = [a3 objectForKey:@"NSSpellCheckerMaxCompletionsToExamine"];
  if (v34)
  {
    v35 = v34;
    if (objc_opt_respondsToSelector())
    {
      v36 = [v35 integerValue];
      _kMaxCompletionsToExamine = v36 & ~(v36 >> 63);
      NSLog(@"NSSpellCheckerMaxCompletionsToExamine -> %lu", v36 & ~(v36 >> 63));
    }
  }

  v37 = [a3 objectForKey:@"NSSpellCheckerMaxCompletionsToAdd"];
  if (v37)
  {
    v38 = v37;
    if (objc_opt_respondsToSelector())
    {
      v39 = [v38 integerValue];
      _kMaxCompletionsToAdd = v39 & ~(v39 >> 63);
      NSLog(@"NSSpellCheckerMaxCompletionsToAdd -> %lu", v39 & ~(v39 >> 63));
    }
  }
}

- (id)_loadWordLanguageModelForLanguage:(id)a3 localization:(id)a4 appIdentifier:(id)a5 onQueue:(id)a6
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v10 = [(AppleSpell *)self lexiconForLanguage:a3];
  languageModelSerialQueue = self->_languageModelSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__AppleSpell_LanguageModeling___loadWordLanguageModelForLanguage_localization_appIdentifier_onQueue___block_invoke;
  block[3] = &unk_1E84051E8;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  block[7] = &v19;
  dispatch_sync(languageModelSerialQueue, block);
  v12 = v20[5];
  if (!v12 || [v12 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__AppleSpell_LanguageModeling___loadWordLanguageModelForLanguage_localization_appIdentifier_onQueue___block_invoke_2;
    v17[3] = &unk_1E8405210;
    v17[4] = a4;
    v17[5] = a5;
    v17[6] = v10;
    v17[7] = &v19;
    dispatch_sync(a6, v17);
    v13 = self->_languageModelSerialQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __101__AppleSpell_LanguageModeling___loadWordLanguageModelForLanguage_localization_appIdentifier_onQueue___block_invoke_3;
    v16[3] = &unk_1E84051E8;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a5;
    v16[7] = &v19;
    dispatch_sync(v13, v16);
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v14;
}

id __101__AppleSpell_LanguageModeling___loadWordLanguageModelForLanguage_localization_appIdentifier_onQueue___block_invoke(void *a1)
{
  result = [*(a1[4] + 56) objectForKey:a1[5]];
  if (result)
  {
    if (a1[6])
    {
      v3 = a1[6];
    }

    else
    {
      v3 = &stru_1F4E0A7A0;
    }

    result = [result objectForKey:v3];
    *(*(a1[7] + 8) + 40) = result;
  }

  return result;
}

PRWordLanguageModel *__101__AppleSpell_LanguageModeling___loadWordLanguageModelForLanguage_localization_appIdentifier_onQueue___block_invoke_2(void *a1)
{
  result = [PRWordLanguageModel languageModelWithLocalization:a1[4] appIdentifier:a1[5] lexicon:a1[6]];
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

- (id)modelCreationQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AppleSpell_LanguageModeling__modelCreationQueue__block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  if (modelCreationQueue_onceToken != -1)
  {
    dispatch_once(&modelCreationQueue_onceToken, block);
  }

  return modelCreationQueue__modelCreationSerialQueue;
}

uint64_t __50__AppleSpell_LanguageModeling__modelCreationQueue__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  modelCreationQueue__modelCreationSerialQueue = dispatch_queue_create("com.apple.ProofReader.modelCreationSerialQueue", v2);
  v3 = *(a1 + 32);

  return [v3 _readLanguageModelParametersFromDefaults];
}

- (id)wordLanguageModelForLanguage:(id)a3 appIdentifier:(id)a4 waitForResult:(BOOL)a5
{
  v5 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v9 = [(AppleSpell *)self languageModelLocalizationForLanguage:?];
  v10 = [(AppleSpell *)self modelCreationQueue];
  if (!_allowModelUsage())
  {
    goto LABEL_6;
  }

  languageModelSerialQueue = self->_languageModelSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__AppleSpell_LanguageModeling__wordLanguageModelForLanguage_appIdentifier_waitForResult___block_invoke;
  block[3] = &unk_1E84051E8;
  block[4] = self;
  block[5] = v9;
  block[6] = a4;
  block[7] = &v17;
  dispatch_sync(languageModelSerialQueue, block);
  if ([v18[5] isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v12 = 0;
    v18[5] = 0;
    goto LABEL_7;
  }

  v12 = v18[5];
  if (v12)
  {
    goto LABEL_7;
  }

  if (_kSuppressLanguageModels)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  if (v5)
  {
    v12 = [(AppleSpell *)self _loadWordLanguageModelForLanguage:a3 localization:v9 appIdentifier:a4 onQueue:v10];
    v18[5] = v12;
  }

  else
  {
    v14 = [(AppleSpell *)self backgroundLoadingQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__AppleSpell_LanguageModeling__wordLanguageModelForLanguage_appIdentifier_waitForResult___block_invoke_2;
    v15[3] = &unk_1E8405238;
    v15[4] = self;
    v15[5] = a3;
    v15[6] = v9;
    v15[7] = a4;
    v15[8] = v10;
    dispatch_async(v14, v15);
    v12 = v18[5];
  }

LABEL_7:
  _Block_object_dispose(&v17, 8);
  return v12;
}

id __89__AppleSpell_LanguageModeling__wordLanguageModelForLanguage_appIdentifier_waitForResult___block_invoke(void *a1)
{
  result = [*(a1[4] + 56) objectForKey:a1[5]];
  if (result)
  {
    if (a1[6])
    {
      v3 = a1[6];
    }

    else
    {
      v3 = &stru_1F4E0A7A0;
    }

    result = [result objectForKey:v3];
    *(*(a1[7] + 8) + 40) = result;
  }

  if (!*(*(a1[7] + 8) + 40))
  {
    v4 = a1[5];
    v5 = *(a1[4] + 56);
    v6 = a1[6];

    return _setLanguageModel(v5, v4, v6, 0);
  }

  return result;
}

void __89__AppleSpell_LanguageModeling__wordLanguageModelForLanguage_appIdentifier_waitForResult___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _loadWordLanguageModelForLanguage:*(a1 + 40) localization:*(a1 + 48) appIdentifier:*(a1 + 56) onQueue:*(a1 + 64)];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)useWordLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5
{
  v9 = _allowModelUsage();
  LOBYTE(v10) = 0;
  if (a4)
  {
    if (v9)
    {
      v10 = [a4 orthoIndex];
      if (v10)
      {
        LOBYTE(v10) = [(AppleSpell *)self wordLanguageModelForLanguageObject:a3 appIdentifier:a5 waitForResult:0]!= 0;
      }
    }
  }

  return v10;
}

- (BOOL)useCharacterLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5
{
  v8 = _allowModelUsage();
  LOBYTE(v9) = 0;
  if (a4)
  {
    if (v8)
    {
      v9 = [a4 orthoIndex];
      if (v9)
      {
        LOBYTE(v9) = [(AppleSpell *)self characterLanguageModelForLanguageObject:a3 waitForResult:0]!= 0;
      }
    }
  }

  return v9;
}

- (BOOL)useTransformerLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5
{
  LODWORD(v8) = _allowModelUsage();
  if (v8)
  {
    v9 = [a3 isEnglish];
    LOBYTE(v8) = 0;
    if (a4)
    {
      if (v9)
      {
        v8 = [a4 orthoIndex];
        if (v8)
        {
          LOBYTE(v8) = [(AppleSpell *)self transformerLanguageModelForLanguageObject:a3 waitForResult:0]!= 0;
        }
      }
    }
  }

  return v8;
}

- (BOOL)useSentencePieceLanguageModelForLanguageObject:(id)a3 tagger:(id)a4 appIdentifier:(id)a5
{
  LODWORD(v8) = _allowModelUsage();
  if (v8)
  {
    v9 = [a3 usesSentencePieceModel];
    LOBYTE(v8) = 0;
    if (a4)
    {
      if (v9)
      {
        v8 = [a4 orthoIndex];
        if (v8)
        {
          LOBYTE(v8) = [(AppleSpell *)self sentencePieceLanguageModelForLanguageObject:a3 waitForResult:0]!= 0;
        }
      }
    }
  }

  return v8;
}

- (BOOL)useUnigramProbabilityForLanguageObject:(id)a3
{
  v4 = _allowModelUsage();
  if (v4)
  {

    LOBYTE(v4) = [a3 usesUnigramProbabilities];
  }

  return v4;
}

- (id)_loadNLPLanguageModelWithType:(int64_t)a3 forLanguageObject:(id)a4 onQueue:(id)a5
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if ((a3 - 1) > 3)
  {
    v8 = &OBJC_IVAR___AppleSpell__sentencePieceLanguageModelDictionary;
  }

  else
  {
    v8 = off_1E8405430[a3 - 1];
  }

  v9 = *(&self->super.isa + *v8);
  v10 = [a4 languageModelLocalization];
  languageModelSerialQueue = self->_languageModelSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__AppleSpell_LanguageModeling___loadNLPLanguageModelWithType_forLanguageObject_onQueue___block_invoke;
  block[3] = &unk_1E84050D8;
  block[5] = v10;
  block[6] = &v19;
  block[4] = v9;
  dispatch_sync(languageModelSerialQueue, block);
  v12 = v20[5];
  if (!v12 || [v12 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__AppleSpell_LanguageModeling___loadNLPLanguageModelWithType_forLanguageObject_onQueue___block_invoke_2;
    v17[3] = &unk_1E8405260;
    v17[4] = v10;
    v17[5] = &v19;
    v17[6] = a3;
    dispatch_sync(a5, v17);
    v13 = self->_languageModelSerialQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__AppleSpell_LanguageModeling___loadNLPLanguageModelWithType_forLanguageObject_onQueue___block_invoke_3;
    v16[3] = &unk_1E8405288;
    v16[5] = v10;
    v16[6] = &v19;
    v16[4] = v9;
    dispatch_sync(v13, v16);
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v14;
}

uint64_t __88__AppleSpell_LanguageModeling___loadNLPLanguageModelWithType_forLanguageObject_onQueue___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

PRNLPLanguageModel *__88__AppleSpell_LanguageModeling___loadNLPLanguageModelWithType_forLanguageObject_onQueue___block_invoke_2(void *a1)
{
  result = [PRNLPLanguageModel languageModelWithLocalization:a1[4] type:a1[6]];
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

uint64_t __88__AppleSpell_LanguageModeling___loadNLPLanguageModelWithType_forLanguageObject_onQueue___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = a1[5];

  return [v2 setObject:v3 forKey:v4];
}

- (id)_NLPLanguageModelWithType:(int64_t)a3 forLanguageObject:(id)a4 waitForResult:(BOOL)a5
{
  v5 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if ((a3 - 1) > 3)
  {
    v9 = &OBJC_IVAR___AppleSpell__sentencePieceLanguageModelDictionary;
  }

  else
  {
    v9 = off_1E8405430[a3 - 1];
  }

  v10 = *(&self->super.isa + *v9);
  v11 = [a4 languageModelLocalization];
  v12 = [(AppleSpell *)self modelCreationQueue];
  if (!_allowModelUsage())
  {
    goto LABEL_9;
  }

  languageModelSerialQueue = self->_languageModelSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__AppleSpell_LanguageModeling___NLPLanguageModelWithType_forLanguageObject_waitForResult___block_invoke;
  block[3] = &unk_1E84050D8;
  block[5] = v11;
  block[6] = &v19;
  block[4] = v10;
  dispatch_sync(languageModelSerialQueue, block);
  if ([v20[5] isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v14 = 0;
    v20[5] = 0;
    goto LABEL_10;
  }

  v14 = v20[5];
  if (v14)
  {
    goto LABEL_10;
  }

  if (_kSuppressLanguageModels)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (v5)
  {
    v14 = [(AppleSpell *)self _loadNLPLanguageModelWithType:a3 forLanguageObject:a4 onQueue:v12];
    v20[5] = v14;
  }

  else
  {
    v16 = [(AppleSpell *)self backgroundLoadingQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__AppleSpell_LanguageModeling___NLPLanguageModelWithType_forLanguageObject_waitForResult___block_invoke_2;
    v17[3] = &unk_1E84052B0;
    v17[4] = self;
    v17[5] = a4;
    v17[6] = v12;
    v17[7] = a3;
    dispatch_async(v16, v17);
    v14 = v20[5];
  }

LABEL_10:
  _Block_object_dispose(&v19, 8);
  return v14;
}

id __90__AppleSpell_LanguageModeling___NLPLanguageModelWithType_forLanguageObject_waitForResult___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = *(a1 + 40);

    return [v3 setObject:v4 forKey:v5];
  }

  return result;
}

void __90__AppleSpell_LanguageModeling___NLPLanguageModelWithType_forLanguageObject_waitForResult___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _loadNLPLanguageModelWithType:*(a1 + 56) forLanguageObject:*(a1 + 40) onQueue:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)_resetLanguageModels
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  languageModelSerialQueue = self->_languageModelSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AppleSpell_LanguageModeling___resetLanguageModels__block_invoke;
  v5[3] = &unk_1E84052D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(languageModelSerialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__AppleSpell_LanguageModeling___resetLanguageModels__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  *(*(a1 + 32) + 128) = v2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(*(a1 + 32) + 56);
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(a1 + 32) + 56) objectForKey:*(*(&v21 + 1) + 8 * i)];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [v7 objectForKey:*(*(&v17 + 1) + 8 * j)];
              if (([v12 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
              {
                [v12 reset];
                ++*(*(*(a1 + 40) + 8) + 24);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 128) = v14;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_releaseLanguageModels
{
  languageModelSerialQueue = self->_languageModelSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AppleSpell_LanguageModeling___releaseLanguageModels__block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  dispatch_sync(languageModelSerialQueue, block);
}

uint64_t __54__AppleSpell_LanguageModeling___releaseLanguageModels__block_invoke(uint64_t a1)
{
  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  *(*(a1 + 32) + 136) = v2;
  [*(*(a1 + 32) + 56) removeAllObjects];
  result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 136) = v4;
  return result;
}

- (void)_addLanguageModelCompletionsForPrefix:(id)a3 languageModel:(id)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 capitalized:(BOOL)a8 candidates:(id)a9
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v16 = [a3 lowercaseString];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __140__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPrefix_languageModel_languageObject_connection_sender_capitalized_candidates___block_invoke;
  v19[3] = &unk_1E8405300;
  v19[10] = &v25;
  v19[11] = &v21;
  v19[4] = self;
  v19[5] = a4;
  v19[12] = a6;
  v19[6] = a5;
  v19[7] = a7;
  v20 = a8;
  v19[8] = a3;
  v19[9] = a9;
  [a4 enumerateCompletionEntriesForPrefix:v16 maxCompletions:_kMaxCompletionsToExamine withBlock:v19];
  if (([a3 isEqualToString:{objc_msgSend(a3, "lowercaseString")}] & 1) == 0)
  {
    v22[3] = 0;
    v26[3] = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __140__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPrefix_languageModel_languageObject_connection_sender_capitalized_candidates___block_invoke_2;
    v17[3] = &unk_1E8405300;
    v17[10] = &v25;
    v17[11] = &v21;
    v17[4] = self;
    v17[5] = a4;
    v17[12] = a6;
    v17[6] = a5;
    v17[7] = a7;
    v18 = a8;
    v17[8] = a3;
    v17[9] = a9;
    [a4 enumerateCompletionEntriesForPrefix:a3 maxCompletions:_kMaxCompletionsToExamine withBlock:v17];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

uint64_t __140__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPrefix_languageModel_languageObject_connection_sender_capitalized_candidates___block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v5 = result;
  v9 = a3;
  if (*(*(*(result + 80) + 8) + 24) < _kMaxCompletionsToExamine && *(*(*(result + 88) + 8) + 24) < _kMaxCompletionsToAdd)
  {
    v6 = *(result + 56);
    LOBYTE(v8) = *(result + 104);
    result = [*(result + 32) _stringForTokenIDs:&v9 tokenCount:1 entryString:a2 languageModel:*(result + 40) languageObject:*(result + 48) connection:*(result + 96) sender:v6 prefix:*(result + 64) capitalized:v8];
    if (result)
    {
      v7 = result;
      result = [*(v5 + 72) containsObject:result];
      if ((result & 1) == 0)
      {
        result = [*(v5 + 72) addObject:v7];
        ++*(*(*(v5 + 88) + 8) + 24);
      }
    }
  }

  if (++*(*(*(v5 + 80) + 8) + 24) >= _kMaxCompletionsToExamine || *(*(*(v5 + 88) + 8) + 24) >= _kMaxCompletionsToAdd)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __140__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPrefix_languageModel_languageObject_connection_sender_capitalized_candidates___block_invoke_2(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v5 = result;
  v9 = a3;
  if (*(*(*(result + 80) + 8) + 24) < _kMaxCompletionsToExamine && *(*(*(result + 88) + 8) + 24) < _kMaxCompletionsToAdd)
  {
    v6 = *(result + 56);
    LOBYTE(v8) = *(result + 104);
    result = [*(result + 32) _stringForTokenIDs:&v9 tokenCount:1 entryString:a2 languageModel:*(result + 40) languageObject:*(result + 48) connection:*(result + 96) sender:v6 prefix:*(result + 64) capitalized:v8];
    if (result)
    {
      v7 = result;
      result = [*(v5 + 72) containsObject:result];
      if ((result & 1) == 0)
      {
        result = [*(v5 + 72) addObject:v7];
        ++*(*(*(v5 + 88) + 8) + 24);
      }
    }
  }

  if (++*(*(*(v5 + 80) + 8) + 24) >= _kMaxCompletionsToExamine || *(*(*(v5 + 88) + 8) + 24) >= _kMaxCompletionsToAdd)
  {
    *a4 = 1;
  }

  return result;
}

- (id)languageModelCompletionsForPartialWord:(id)a3 languageObject:(id)a4 sender:(id)a5 appIdentifier:(id)a6
{
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [(AppleSpell *)self _standardizedLanguageModelStringForString:a3];
  v13 = [(AppleSpell *)self databaseConnectionForLanguageObject:a4];
  v14 = [(AppleSpell *)self wordLanguageModelForLanguageObject:a4 appIdentifier:a6 waitForResult:1];
  if (v14 && v12)
  {
    v15 = v14;
    if ([a4 isKorean])
    {
      v12 = [(AppleSpell *)self internalStringForKoreanExternalString:v12];
      v16 = 0;
    }

    else
    {
      v16 = [v12 isEqualToString:{objc_msgSend(v12, "capitalizedString")}];
    }

    [(AppleSpell *)self _addLanguageModelCompletionsForPrefix:v12 languageModel:v15 languageObject:a4 connection:v13 sender:a5 capitalized:v16 candidates:v11];
  }

  return v11;
}

- (BOOL)_addLanguageModelCompletionsForPartialWordRange:(_NSRange)a3 languageObject:(id)a4 connection:(_PR_DB_IO *)a5 sender:(id)a6 tagger:(id)a7 appIdentifier:(id)a8 waitForLanguageModel:(BOOL)a9 allowTransformer:(BOOL)a10 candidates:(id)a11 scoreDictionary:(id)a12 tryTransliteration:(BOOL *)a13
{
  v54 = a5;
  v55 = a6;
  length = a3.length;
  location = a3.location;
  v74 = *MEMORY[0x1E69E9840];
  v18 = [a7 string];
  v51 = v18;
  if (length)
  {
    v56 = -[AppleSpell _standardizedLanguageModelStringForString:](self, "_standardizedLanguageModelStringForString:", [v18 substringWithRange:{location, length}]);
  }

  else
  {
    v56 = 0;
  }

  v57 = [(AppleSpell *)self wordLanguageModelForLanguageObject:a4 appIdentifier:a8 waitForResult:a9];
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v46 - ((v19 + 19) & 0xFFFFFFFFFFFFFFF0);
  v73 = 1;
  v72 = 0;
  v70 = xmmword_1D2BF76A0;
  v71 = xmmword_1D2BF76A0;
  v21 = [a4 isArabic];
  v53 = [(AppleSpell *)self useSentencePieceLanguageModelForLanguageObject:a4 tagger:a7 appIdentifier:a8];
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v69[3] = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  if (_addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration__onceToken != -1)
  {
    [AppleSpell(LanguageModeling) _addLanguageModelCompletionsForPartialWordRange:languageObject:connection:sender:tagger:appIdentifier:waitForLanguageModel:allowTransformer:candidates:scoreDictionary:tryTransliteration:];
  }

  if (a13)
  {
    *a13 = 0;
  }

  if (v57)
  {
    v48 = v21;
    v22 = location;
    v49 = [(AppleSpell *)self _contextLengthForRange:location languageObject:length tagger:a4 languageModel:a7 maxContextLength:v57 context:_kMaxContextLength cleanOffset:v20 cleanContextRange:&v72 lastTokenRange:&v70 lastTokenID:&v71, &v73];
    v24 = v54;
    v23 = v55;
    if (*(&v70 + 1))
    {
      v25 = [a7 string];
      v47 = [v25 substringWithRange:{v70, *(&v70 + 1)}];
    }

    else
    {
      v47 = &stru_1F4E0A7A0;
    }

    if (v56)
    {
      if ([a4 isKorean])
      {
        v56 = [(AppleSpell *)self internalStringForKoreanExternalString:v56];
        v52 = 0;
      }

      else
      {
        v26 = [v56 capitalizedString];
        v52 = [v56 isEqualToString:v26];
      }
    }

    else if (v49)
    {
      v56 = 0;
      v52 = *&v20[4 * v49 - 4] == 1;
    }

    else
    {
      v52 = 0;
      v56 = 0;
    }

    v50 = a12;
    if (_kMaxTokensPerPrediction)
    {
      if (a10)
      {
        if (_kMaxPredictionSampleCount)
        {
          if ([(AppleSpell *)self useTransformerLanguageModelForLanguageObject:a4 tagger:a7 appIdentifier:a8])
          {
            v27 = [(AppleSpell *)self transformerOrSiriLanguageModelForLanguageObject:a4 appIdentifier:a8 waitForResult:0];
            if (v27)
            {
              v28 = [v27 stateWithContext:v47];
              if (v28)
              {
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 3221225472;
                v63[2] = __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_2;
                v63[3] = &unk_1E8405328;
                v63[4] = self;
                v63[5] = v57;
                v63[12] = &v65;
                v63[13] = v24;
                v63[6] = a4;
                v63[7] = v23;
                v64 = v52;
                v63[8] = v56;
                v63[9] = a11;
                v63[11] = v69;
                v63[10] = v50;
                [v28 enumeratePredictions:_kMaxPredictionSampleCount maxTokensPerPrediction:1 withBlock:v63];
              }
            }
          }
        }
      }

      if (v53)
      {
        v29 = [(AppleSpell *)self sentencePieceLanguageModelForLanguageObject:a4 waitForResult:0];
        if (v29)
        {
          v30 = [v29 stateWithContext:v47];
          if (v30)
          {
            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_3;
            v61[3] = &unk_1E8405328;
            v61[4] = self;
            v61[5] = v57;
            v61[12] = &v65;
            v61[13] = v24;
            v61[6] = a4;
            v61[7] = v23;
            v62 = v52;
            v61[8] = v56;
            v61[9] = a11;
            v61[11] = v69;
            v61[10] = v50;
            [v30 enumeratePredictions:_kMaxPredictionsToExamine maxTokensPerPrediction:_kMaxTokensPerPrediction withBlock:v61];
          }
        }
      }

      v31 = v66[3];
      if (!v31 || v31 < _kMaxPredictionSampleCount)
      {
        v58[0] = MEMORY[0x1E69E9820];
        if (v49 <= v72)
        {
          v32 = 0;
        }

        else
        {
          v32 = &v20[4 * v72];
        }

        if (v49 >= v72)
        {
          v33 = v49 - v72;
        }

        else
        {
          v33 = 0;
        }

        v58[1] = 3221225472;
        v58[2] = __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_4;
        v58[3] = &unk_1E8405378;
        v58[4] = self;
        v58[5] = v57;
        v58[12] = &v65;
        v58[13] = v24;
        v58[6] = a4;
        v58[7] = v23;
        v59 = v52;
        v58[8] = v56;
        v58[9] = a11;
        v58[11] = v69;
        v58[10] = v50;
        v60 = v48;
        [v57 enumeratePredictionsForContext:v32 length:v33 maxPredictions:_kMaxPredictionsToExamine maxTokensPerPrediction:_kMaxTokensPerPrediction withBlock:v58];
      }
    }

    if (v56)
    {
      [(AppleSpell *)self _addLanguageModelCompletionsForPrefix:v56 languageModel:v57 languageObject:a4 connection:v24 sender:v23 capitalized:v52 candidates:a11];
    }

    if (*(&v71 + 1))
    {
      if (v71 + *(&v71 + 1) <= v22)
      {
        v34 = [v51 substringWithRange:{v71, v22 - v71}];
        v35 = [v34 length];
        v36 = [a11 count];
        if (v36)
        {
          for (i = 0; i != v36; ++i)
          {
            v38 = [a11 objectAtIndex:i];
            v39 = -[AppleSpell phraseMatching:inLexiconForLanguageObject:](self, "phraseMatching:inLexiconForLanguageObject:", [v34 stringByAppendingString:v38], a4);
            v40 = v39;
            if (v39)
            {
              if ([v39 hasPrefix:v34])
              {
                if ([v40 length] > v35)
                {
                  v41 = [v40 substringFromIndex:v35];
                  if (([v41 isEqualToString:v38] & 1) == 0 && objc_msgSend(objc_msgSend(v41, "lowercaseString"), "isEqualToString:", v38) && (objc_msgSend(a11, "containsObject:", v41) & 1) == 0)
                  {
                    v42 = [v50 objectForKey:v38];
                    if (v42)
                    {
                      [v50 setObject:v42 forKey:v41];
                      [v50 removeObjectForKey:v38];
                    }

                    [a11 replaceObjectAtIndex:i withObject:v41];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v43 = v57 != 0;
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(v69, 8);
  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

uint64_t __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F4E16760];
  _addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration__transliterationExceptionSet = result;
  return result;
}

uint64_t __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3, double a4)
{
  v5 = result;
  if (*(*(*(result + 88) + 8) + 24) < _kMaxPredictionsToExamine && *(*(*(result + 96) + 8) + 24) < _kMaxPredictionsToAdd)
  {
    LOBYTE(v8) = *(result + 112);
    result = [*(result + 32) _stringForCompletion:a2 languageModel:*(result + 40) languageObject:*(result + 48) connection:*(result + 104) sender:*(result + 56) prefix:*(result + 64) capitalized:v8];
    if (result)
    {
      v7 = result;
      result = [*(v5 + 72) containsObject:result];
      if ((result & 1) == 0)
      {
        [*(v5 + 72) addObject:v7];
        result = [*(v5 + 80) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", a4), v7}];
        ++*(*(*(v5 + 96) + 8) + 24);
      }
    }
  }

  if (++*(*(*(v5 + 88) + 8) + 24) >= _kMaxPredictionsToExamine || *(*(*(v5 + 96) + 8) + 24) >= _kMaxPredictionsToAdd)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_3(uint64_t result, uint64_t a2, _BYTE *a3, double a4)
{
  v5 = result;
  if (*(*(*(result + 88) + 8) + 24) < _kMaxPredictionsToExamine && *(*(*(result + 96) + 8) + 24) < _kMaxPredictionsToAdd)
  {
    LOBYTE(v8) = *(result + 112);
    result = [*(result + 32) _stringForCompletion:a2 languageModel:*(result + 40) languageObject:*(result + 48) connection:*(result + 104) sender:*(result + 56) prefix:*(result + 64) capitalized:v8];
    if (result)
    {
      v7 = result;
      result = [*(v5 + 72) containsObject:result];
      if ((result & 1) == 0)
      {
        [*(v5 + 72) addObject:v7];
        result = [*(v5 + 80) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", a4), v7}];
        ++*(*(*(v5 + 96) + 8) + 24);
      }
    }
  }

  if (++*(*(*(v5 + 88) + 8) + 24) >= _kMaxPredictionsToExamine || *(*(*(v5 + 96) + 8) + 24) >= _kMaxPredictionsToAdd)
  {
    *a3 = 1;
  }

  return result;
}

void __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, double a5)
{
  if (*(*(*(a1 + 88) + 8) + 24) >= _kMaxPredictionsToExamine || *(*(*(a1 + 96) + 8) + 24) >= _kMaxPredictionsToAdd)
  {
    v11 = 0;
  }

  else
  {
    v10 = *(a1 + 56);
    LOBYTE(v16) = *(a1 + 112);
    v11 = [*(a1 + 32) _stringForTokenIDs:a2 tokenCount:a3 entryString:0 languageModel:*(a1 + 40) languageObject:*(a1 + 48) connection:*(a1 + 104) sender:v10 prefix:*(a1 + 64) capitalized:v16];
    if (v11 && ([*(a1 + 72) containsObject:v11] & 1) == 0)
    {
      [*(a1 + 72) addObject:v11];
      [*(a1 + 80) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", a5), v11}];
      ++*(*(*(a1 + 96) + 8) + 24);
    }
  }

  if (++*(*(*(a1 + 88) + 8) + 24) >= _kMaxPredictionsToExamine || *(*(*(a1 + 96) + 8) + 24) >= _kMaxPredictionsToAdd)
  {
    *a4 = 1;
  }

  else if (a3 == 1 && v11 && (*(a1 + 113) & 1) != 0)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3052000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_5;
    v17[3] = &unk_1E8405350;
    v20 = &v25;
    v21 = a2;
    v12 = *(a1 + 32);
    v17[4] = v11;
    v17[5] = v12;
    v13 = *(a1 + 40);
    v14 = *(a1 + 104);
    v22 = 1;
    v23 = v14;
    v15 = *(a1 + 56);
    v18 = v13;
    v19 = v15;
    v24 = *(a1 + 112);
    [v13 enumerateEntriesForString:v11 withBlock:v17];
    if (v26[5])
    {
      if (([*(a1 + 72) containsObject:?] & 1) == 0)
      {
        [*(a1 + 72) addObject:v26[5]];
        ++*(*(*(a1 + 96) + 8) + 24);
        if (++*(*(*(a1 + 88) + 8) + 24) >= _kMaxPredictionsToExamine || *(*(*(a1 + 96) + 8) + 24) >= _kMaxPredictionsToAdd)
        {
          *a4 = 1;
        }
      }
    }

    _Block_object_dispose(&v25, 8);
  }
}

uint64_t __218__AppleSpell_LanguageModeling___addLanguageModelCompletionsForPartialWordRange_languageObject_connection_sender_tagger_appIdentifier_waitForLanguageModel_allowTransformer_candidates_scoreDictionary_tryTransliteration___block_invoke_5(uint64_t result, void *a2, int a3, _BYTE *a4)
{
  if (a2)
  {
    v4 = result;
    if (**(result + 88) == a3)
    {
      result = [a2 isEqualToString:*(result + 32)];
      if ((result & 1) == 0)
      {
        v7 = *(v4 + 64);
        LOBYTE(v8) = *(v4 + 112);
        result = [*(v4 + 40) _stringForTokenIDs:*(v4 + 88) tokenCount:*(v4 + 96) entryString:a2 languageModel:*(v4 + 48) languageObject:*(v4 + 56) connection:*(v4 + 104) sender:v7 prefix:*(v4 + 72) capitalized:v8];
        *(*(*(v4 + 80) + 8) + 40) = result;
        *a4 = 1;
      }
    }
  }

  return result;
}

- (BOOL)_getUnigramProbabilityForString:(id)a3 languageModel:(id)a4 probability:(double *)a5
{
  v10 = 0xC03E000000000000;
  v7 = [(AppleSpell *)self _standardizedLanguageModelStringForString:a3];
  if ([a4 getUnigramProbabilityForString:v7 probability:&v10])
  {
    v8 = 1;
    if (!a5)
    {
      return v8;
    }
  }

  else
  {
    v8 = [a4 getUnigramProbabilityForString:objc_msgSend(v7 probability:{"lowercaseString"), &v10}];
    if (!a5)
    {
      return v8;
    }
  }

  if (v8)
  {
    *a5 = v10;
  }

  return v8;
}

- (id)_rankedCandidatesForRange:(_NSRange)a3 candidates:(id)a4 languageObject:(id)a5 tagger:(id)a6 appIdentifier:(id)a7 allowTransformer:(BOOL)a8 scoreDictionary:(id)a9
{
  length = a3.length;
  location = a3.location;
  v80 = a8;
  v96 = *MEMORY[0x1E69E9840];
  v67 = a7;
  v15 = [(AppleSpell *)self wordLanguageModelForLanguageObject:a5 appIdentifier:a7 waitForResult:0];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - ((v16 + 23) & 0xFFFFFFFFFFFFFFF0);
  v93 = xmmword_1D2BF76A0;
  v76 = a4;
  v18 = [a4 count];
  v92 = 0;
  v74 = v17;
  v65 = v17;
  v19 = v15;
  v81 = self;
  v78 = a5;
  v73 = [(AppleSpell *)self _contextLengthForRange:location languageObject:length tagger:a5 languageModel:a6 maxContextLength:v15 context:_kMaxContextLength cleanOffset:v65 cleanContextRange:&v92 lastTokenRange:&v93 lastTokenID:0, 0];
  if (*(&v93 + 1))
  {
    v20 = [a6 string];
    v69 = [v20 substringWithRange:{v93, *(&v93 + 1)}];
  }

  else
  {
    v69 = &stru_1F4E0A7A0;
  }

  v21 = a9;
  v22 = v78;
  v75 = [(AppleSpell *)v81 useUnigramProbabilityForLanguageObject:v78];
  v72 = [v22 isArabic];
  v23 = v67;
  if (v80)
  {
    v24 = [v76 count];
    v25 = 0;
    if (v24 >= 2 && _kMaxCompletionRescoreCount)
    {
      v25 = [(AppleSpell *)v81 useTransformerLanguageModelForLanguageObject:v78 tagger:a6 appIdentifier:v23];
    }
  }

  else
  {
    v25 = 0;
  }

  HIDWORD(v66) = v25;
  if ([(AppleSpell *)v81 useSentencePieceLanguageModelForLanguageObject:v78 tagger:a6 appIdentifier:v23]&& (v26 = [(AppleSpell *)v81 sentencePieceLanguageModelForLanguageObject:v78 waitForResult:0]) != 0)
  {
    v68 = v26;
    v27 = [v26 stateWithContext:v69];
    v28 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:a9];
    if (v27)
    {
      v27 = [v27 conditionalProbabilityDictionaryForStrings:v76];
    }
  }

  else
  {
    v28 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:a9];
    v68 = 0;
    v27 = 0;
  }

  [a9 removeAllObjects];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v79 = [v76 countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (v79)
  {
    v29 = 0;
    v77 = *v89;
    v80 = v19 == 0 || v75;
    v30 = v18;
    v70 = v27;
    v71 = v28;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v89 != v77)
        {
          objc_enumerationMutation(v76);
        }

        v32 = *(*(&v88 + 1) + 8 * i);
        v33 = [(AppleSpell *)v81 _tokenIDForString:v32 languageModel:v19 languageObject:v78 terminatorTokenID:0];
        v34 = [v28 objectForKey:v32];
        if (v27)
        {
          v35 = [v27 objectForKey:v32];
          v87 = 0.0;
          if (!(v80 & 1 | (v35 == 0)))
          {
            [v35 doubleValue];
            v87 = v36;
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v69, v32];
            if ([v68 stringIsBlocklisted:v37])
            {
              goto LABEL_46;
            }

            goto LABEL_36;
          }
        }

        else
        {
          v87 = 0.0;
        }

        if (v80 & 1 | (v33 == 0))
        {
          if (v75)
          {
            [(AppleSpell *)v81 _getUnigramProbabilityForString:v32 languageModel:v19 probability:&v87];
          }

LABEL_36:
          if (v34)
          {
            [v34 doubleValue];
            v46 = v45;
            v47 = v87;
            if (v46 < 0.0 && v46 > v87)
            {
              v87 = v46;
              v47 = v46;
            }
          }

          else
          {
            v47 = v87;
          }

          if (v47 >= 0.0)
          {
            v87 = -30.0 - v29 / v30;
          }

          [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:"), v32}];
          goto LABEL_46;
        }

        v38 = v21;
        v39 = v19;
        v41 = v73;
        v40 = v74;
        if (v73 <= v92)
        {
          v42 = 0;
        }

        else
        {
          v42 = &v74[4 * v92];
        }

        if (v73 >= v92)
        {
          v43 = v73 - v92;
        }

        else
        {
          v43 = 0;
        }

        [v39 getConditionalProbabilityForTokenID:v33 context:v42 length:v43 probability:&v87];
        *&v40[4 * v41] = v33;
        v44 = [v39 tokenSequenceIsBlocklisted:v40 length:v41 + 1];
        if (v72)
        {
          v86 = 0.0;
          [(AppleSpell *)v81 _getUnigramProbabilityForString:v32 languageModel:v39 probability:&v86];
          v87 = v87 + v86 * 0.000001;
        }

        v19 = v39;
        v21 = v38;
        v27 = v70;
        v28 = v71;
        if ((v44 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_46:
        ++v29;
      }

      v79 = [v76 countByEnumeratingWithState:&v88 objects:v95 count:16];
    }

    while (v79);
  }

  v49 = [v21 keysSortedByValueUsingComparator:&__block_literal_global_373];
  v50 = v49;
  if (HIDWORD(v66))
  {
    if ([v49 count] >= 2)
    {
      v51 = [(AppleSpell *)v81 transformerOrSiriLanguageModelForLanguageObject:v78 appIdentifier:v67 waitForResult:0];
      if (v51)
      {
        v52 = [v51 stateWithContext:v69];
        if (v52)
        {
          v53 = v52;
          v54 = [v50 count];
          v55 = v50;
          if (v54 > _kMaxCompletionRescoreCount)
          {
            v55 = [v50 subarrayWithRange:0];
          }

          v56 = [v53 conditionalProbabilityDictionaryForStrings:v55];
          v57 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v56, "keysSortedByValueUsingComparator:", &__block_literal_global_373)}];
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v58 = [v50 countByEnumeratingWithState:&v82 objects:v94 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v83;
            do
            {
              for (j = 0; j != v59; ++j)
              {
                if (*v83 != v60)
                {
                  objc_enumerationMutation(v50);
                }

                v62 = *(*(&v82 + 1) + 8 * j);
                if (([v57 containsObject:v62] & 1) == 0)
                {
                  [v57 addObject:v62];
                }
              }

              v59 = [v50 countByEnumeratingWithState:&v82 objects:v94 count:16];
            }

            while (v59);
          }

          v50 = v57;
        }
      }
    }
  }

  v63 = *MEMORY[0x1E69E9840];
  return v50;
}

- (void)getParameterValue:(double *)a3 forName:(id)a4 languageObject:(id)a5 tagger:(id)a6 appIdentifier:(id)a7 parameterBundles:(id)a8 defaultValue:(double)a9
{
  if (!a8 || (v17 = [a8 objectForKey:{objc_msgSend(a5, "identifier")}]) == 0 && (v17 = objc_msgSend(a8, "objectForKey:", objc_msgSend(a5, "languageModelLocalization"))) == 0 && (v17 = objc_msgSend(a8, "objectForKey:", objc_msgSend(a5, "languageModelFallbackLocalization"))) == 0 || (v18 = objc_msgSend(objc_alloc(MEMORY[0x1E6977A70]), "initWithDictionaryRepresentation:error:", v17, 0)) == 0 || (objc_msgSend(v18, "getContinuousParameterValueForName:value:", a4, a3) & 1) == 0)
  {
    if (_kMaxCorrectionRescoreCount && [(AppleSpell *)self useTransformerLanguageModelForLanguageObject:a5 tagger:a6 appIdentifier:a7])
    {
      v19 = [(AppleSpell *)self transformerParameterBundleForLanguageObject:a5];
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v19 = [(AppleSpell *)self parameterBundleForLanguageObject:a5];
      if (!v19)
      {
LABEL_10:
        if (!a3)
        {
          return;
        }

LABEL_15:
        *a3 = a9;
        return;
      }
    }

    v20 = [v19 getContinuousParameterValueForName:a4 value:a3];
    if (a3 && (v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (id)_languageModelStateScoresForCandidateList:(id)a3 languageModel:(id)a4 state:(id)a5 language:(id)a6 tagger:(id)a7
{
  v37 = a6;
  v36 = a4;
  v35 = self;
  v47 = *MEMORY[0x1E69E9840];
  v10 = [a3 defaultReplacementRange];
  v38 = a5;
  if (a5)
  {
    v12 = v10;
    v13 = v11;
    v14 = [MEMORY[0x1E695DF70] array];
    v32 = [MEMORY[0x1E695DF90] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = [a3 candidates];
    v15 = [v39 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v33 = xmmword_1D2BF76A0;
      v34 = a7;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v39);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          v20 = [v19 replacementRange];
          v41 = 0.0;
          if (v12 == v20 && v13 == v21)
          {
            [v14 addObject:{objc_msgSend(v19, "string")}];
          }

          else
          {
            v40 = v33;
            MEMORY[0x1EEE9AC00](v20);
            [AppleSpell _contextLengthForRange:v35 languageObject:"_contextLengthForRange:languageObject:tagger:languageModel:maxContextLength:context:cleanOffset:cleanContextRange:lastTokenRange:lastTokenID:" tagger:&v31 - ((v23 + 19) & 0xFFFFFFFFFFFFFFF0) languageModel:0 maxContextLength:&v40 context:0 cleanOffset:0 cleanContextRange:? lastTokenRange:? lastTokenID:?];
            if (*(&v40 + 1))
            {
              v24 = [a7 string];
              v25 = [v24 substringWithRange:{v40, *(&v40 + 1)}];
            }

            else
            {
              v25 = &stru_1F4E0A7A0;
            }

            if ([objc_msgSend(v38 "languageModel")])
            {
              v26 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
              v27 = [v19 string];
              [v32 setObject:v26 forKey:v27];
            }

            a7 = v34;
          }
        }

        v16 = [v39 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v16);
    }

    if ([v14 count])
    {
      v28 = [v38 conditionalProbabilityDictionaryForStrings:v14];
      [v32 addEntriesFromDictionary:v28];
    }
  }

  else
  {
    v32 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)_rankedCandidatesForCandidateList:(id)a3 languageObject:(id)a4 tagger:(id)a5 appIdentifier:(id)a6 parameterBundles:(id)a7
{
  v188 = a7;
  v235 = *MEMORY[0x1E69E9840];
  v156 = [MEMORY[0x1E695DF70] array];
  v12 = [a3 defaultReplacementRange];
  v14 = v13;
  v160 = xmmword_1D2BF76A0;
  v227 = xmmword_1D2BF76A0;
  v157 = a6;
  v15 = [(AppleSpell *)self wordLanguageModelForLanguageObject:a4 appIdentifier:a6 waitForResult:0];
  v155 = v153;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v153[-((v16 + 19) & 0xFFFFFFFFFFFFFFF0)];
  v158 = a3;
  v187 = [a3 count];
  v226 = 0;
  v162 = v17;
  v189 = self;
  v18 = self;
  v171 = v14;
  v172 = v12;
  v19 = a4;
  v20 = v15;
  v161 = [(AppleSpell *)v18 _contextLengthForRange:v12 languageObject:v14 tagger:a4 languageModel:a5 maxContextLength:v15 context:_kMaxContextLength cleanOffset:v17 cleanContextRange:&v226 lastTokenRange:&v227 lastTokenID:0, 0];
  if (*(&v227 + 1))
  {
    v21 = [a5 string];
    v165 = [v21 substringWithRange:v227];
  }

  else
  {
    v165 = &stru_1F4E0A7A0;
  }

  v22 = [v158 count];
  v23 = v189;
  v166 = v22 < 2 || [(AppleSpell *)v189 useUnigramProbabilityForLanguageObject:v19];
  v24 = [v158 count];
  v25 = 0;
  if (v24 >= 2 && _kMaxCorrectionRescoreCount)
  {
    v25 = [(AppleSpell *)v23 useTransformerLanguageModelForLanguageObject:v19 tagger:a5 appIdentifier:v157];
  }

  v154 = v25;
  v26 = [v158 count] >= 2 && _kUseCharacterLanguageModels == 1 && -[AppleSpell useCharacterLanguageModelForLanguageObject:tagger:appIdentifier:](v23, "useCharacterLanguageModelForLanguageObject:tagger:appIdentifier:", v19, a5, v157);
  v167 = a5;
  v27 = [(AppleSpell *)v23 useSentencePieceLanguageModelForLanguageObject:v19 tagger:a5 appIdentifier:v157];
  v28 = v23;
  v29 = v27;
  v225 = 0.0;
  v224 = 0.0;
  v223 = 0.0;
  v222 = 0.0;
  v221 = 0.0;
  if (v27 && (v30 = [(AppleSpell *)v28 sentencePieceLanguageModelForLanguageObject:v19 waitForResult:0]) != 0)
  {
    v31 = v30;
    v32 = [v30 stateWithContext:v165];
    v164 = v31;
    if (v32)
    {
      v168 = [(AppleSpell *)v189 _languageModelStateScoresForCandidateList:v158 languageModel:v15 state:v32 language:v19 tagger:v167];
      goto LABEL_20;
    }
  }

  else
  {
    v164 = 0;
  }

  v168 = 0;
LABEL_20:
  v33 = v188;
  v34 = v189;
  v35 = v167;
  v36 = v157;
  [(AppleSpell *)v189 getParameterValue:&v225 forName:*MEMORY[0x1E6977920] languageObject:v19 tagger:v167 appIdentifier:v157 parameterBundles:v188 defaultValue:1.0];
  [(AppleSpell *)v34 getParameterValue:&v224 forName:*MEMORY[0x1E6977910] languageObject:v19 tagger:v35 appIdentifier:v36 parameterBundles:v33 defaultValue:0.0];
  [(AppleSpell *)v34 getParameterValue:&v223 forName:*MEMORY[0x1E6977918] languageObject:v19 tagger:v35 appIdentifier:v36 parameterBundles:v33 defaultValue:0.0];
  [(AppleSpell *)v34 getParameterValue:&v222 forName:@"StandaloneLexiconWeight" languageObject:v19 tagger:v35 appIdentifier:v36 parameterBundles:v33 defaultValue:1.0];
  [(AppleSpell *)v34 getParameterValue:&v221 forName:@"TransformerLanguageModelWeight" languageObject:v19 tagger:v35 appIdentifier:v36 parameterBundles:v33 defaultValue:1.0];
  if (v224 > 0.0 && v26)
  {
    v38 = [(AppleSpell *)v34 characterLanguageModelForLanguageObject:v19 waitForResult:0, v224];
    v39 = v19;
    if (v38 && (v40 = [v38 stateWithContext:v165]) != 0)
    {
      v176 = [(AppleSpell *)v189 _languageModelStateScoresForCandidateList:v158 languageModel:v20 state:v40 language:v19 tagger:v167];
    }

    else
    {
      v176 = 0;
    }
  }

  else
  {
    v176 = 0;
    v39 = v19;
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v169 = [v158 candidates];
  v177 = [v169 countByEnumeratingWithState:&v217 objects:v234 count:16];
  if (v177)
  {
    v41 = 0;
    v175 = *v218;
    v163 = (v20 == 0) | v166;
    v170 = v163 | !v29;
    v42 = v187;
    do
    {
      v43 = 0;
      v44 = v168;
      do
      {
        v182 = v41;
        if (*v218 != v175)
        {
          objc_enumerationMutation(v169);
        }

        v181 = v43;
        v45 = *(*(&v217 + 1) + 8 * v43);
        v46 = [v45 numberOfWords];
        v47 = [v45 replacementRange];
        v49 = v48;
        v50 = v176;
        v184 = v45;
        if (v176)
        {
          v50 = [v176 objectForKey:{objc_msgSend(v45, "string")}];
        }

        if (v44)
        {
          v180 = [v44 objectForKey:{objc_msgSend(v184, "string")}];
        }

        else
        {
          v180 = 0;
        }

        *&v194 = 0;
        v216 = 0.0;
        v52 = v46 == 1;
        v51 = v46 > 1;
        if (!v52)
        {
          v178 = v50;
          v183 = 0;
          v56 = 0;
          goto LABEL_46;
        }

        v52 = v172 == v47 && v171 == v49;
        if (!v52)
        {
          LOBYTE(v53) = 0;
          v183 = 0;
          v55 = v181;
          v54 = v182;
          goto LABEL_99;
        }

        v64 = [v184 string];
        v65 = [(AppleSpell *)v189 _tokenIDForString:v64 languageModel:v20 languageObject:v39 terminatorTokenID:0];
        v178 = v50;
        if (v170)
        {
          v66 = v65;
          if (v163 & 1 | (v65 == 0))
          {
            v67 = v184;
            [objc_msgSend(v184 "string")];
            v183 = 0;
            v179 = 0;
            v51 = v68 != 0;
          }

          else
          {
            v95 = v161;
            v96 = v162;
            if (v161 <= v226)
            {
              v97 = 0;
            }

            else
            {
              v97 = &v162[4 * v226];
            }

            if (v161 >= v226)
            {
              v98 = v161 - v226;
            }

            else
            {
              v98 = 0;
            }

            v179 = [v20 getConditionalProbabilityForTokenID:v65 context:v97 length:v98 probability:&v194];
            *&v96[4 * v95] = v66;
            v99 = v95 + 1;
            v44 = v168;
            v183 = [v20 tokenSequenceIsBlocklisted:v96 length:v99];
            v51 = 0;
            v67 = v184;
          }
        }

        else
        {
          v179 = v180 != 0;
          if (v180)
          {
            [v180 doubleValue];
            *&v194 = v88;
          }

          v89 = MEMORY[0x1E696AEC0];
          v67 = v184;
          v90 = [v184 string];
          v91 = [v89 stringWithFormat:@"%@ %@", v165, v90];
          v183 = [v164 stringIsBlocklisted:v91];
          v51 = 0;
        }

        v100 = [v67 string];
        if (![(AppleSpell *)v189 _getUnigramProbabilityForString:v100 languageModel:v20 probability:&v216])
        {
          v56 = v179;
LABEL_46:
          v57 = 0;
          if (!v51)
          {
            goto LABEL_118;
          }

          goto LABEL_47;
        }

        v57 = ((*&v216 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL || ((*&v216 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF) && v216 < 0.0;
        v56 = v179;
        if (!v51)
        {
LABEL_118:
          v55 = v181;
          if (!v56)
          {
            goto LABEL_83;
          }

          goto LABEL_119;
        }

LABEL_47:
        v179 = v56;
        v174 = v57;
        v58 = [v184 candidateWords];
        v212 = 0u;
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v187 = v58;
        v59 = [v58 countByEnumeratingWithState:&v212 objects:v233 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = 0;
          v62 = *v213;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v213 != v62)
              {
                objc_enumerationMutation(v187);
              }

              v61 += [objc_msgSend(*(*(&v212 + 1) + 8 * i) componentsSeparatedByString:{@"-", "count"}];
            }

            v60 = [v187 countByEnumeratingWithState:&v212 objects:v233 count:16];
          }

          while (v60);
          v39 = v19;
        }

        v173 = v153;
        MEMORY[0x1EEE9AC00](0);
        v70 = &v153[-v69];
        v211 = 0;
        v71 = [(AppleSpell *)v189 _contextLengthForRange:v47 languageObject:v49 tagger:v39 languageModel:v167 maxContextLength:v20 context:&v153[-v69] cleanOffset:&v211 cleanContextRange:0 lastTokenRange:0 lastTokenID:0];
        v207 = 0u;
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v186 = [v187 countByEnumeratingWithState:&v207 objects:v232 count:16];
        if (v186)
        {
          v185 = *v208;
          do
          {
            v72 = 0;
            do
            {
              if (*v208 != v185)
              {
                objc_enumerationMutation(v187);
              }

              v73 = *(*(&v207 + 1) + 8 * v72);
              v74 = [(AppleSpell *)v189 _tokenIDForString:v73 languageModel:v20 languageObject:v39 terminatorTokenID:0];
              v188 = v72;
              if (v74)
              {
                *&v70[4 * v71++] = v74;
              }

              else
              {
                v75 = [v73 componentsSeparatedByString:@"-"];
                v203 = 0u;
                v204 = 0u;
                v205 = 0u;
                v206 = 0u;
                v76 = [v75 countByEnumeratingWithState:&v203 objects:v231 count:16];
                if (v76)
                {
                  v77 = v76;
                  v78 = *v204;
                  do
                  {
                    for (j = 0; j != v77; ++j)
                    {
                      if (*v204 != v78)
                      {
                        objc_enumerationMutation(v75);
                      }

                      v80 = *(*(&v203 + 1) + 8 * j);
                      if ([v80 length])
                      {
                        *&v70[4 * v71++] = [(AppleSpell *)v189 _tokenIDForString:v80 languageModel:v20 languageObject:v19 terminatorTokenID:0];
                      }
                    }

                    v77 = [v75 countByEnumeratingWithState:&v203 objects:v231 count:16];
                  }

                  while (v77);
                }
              }

              v72 = v188 + 1;
              v39 = v19;
            }

            while (v188 + 1 != v186);
            v186 = [v187 countByEnumeratingWithState:&v207 objects:v232 count:16];
          }

          while (v186);
        }

        if ((v170 & 1) == 0)
        {
          if (v180)
          {
            [v180 doubleValue];
            *&v194 = v83;
            v179 = 1;
          }

          v84 = MEMORY[0x1E696AEC0];
          v85 = [v184 string];
          v86 = [v84 stringWithFormat:@"%@ %@", v165, v85];
          v183 = [v164 stringIsBlocklisted:v86];
LABEL_82:
          v44 = v168;
          v55 = v181;
          v57 = v174;
          if ((v179 & 1) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_119;
        }

        v81 = v71 - 1;
        v82 = *&v70[4 * v71 - 4];
        if (v163 & 1 | (v82 == 0))
        {
          v39 = v19;
          goto LABEL_82;
        }

        if (v81 <= v226)
        {
          v92 = 0;
        }

        else
        {
          v92 = &v70[4 * v226];
        }

        if (v81 >= v226)
        {
          v93 = v81 - v226;
        }

        else
        {
          v93 = 0;
        }

        v94 = [v20 getConditionalProbabilityForTokenID:*&v70[4 * v71 - 4] context:v92 length:v93 probability:&v194];
        *&v70[4 * v81] = v82;
        v183 = [v20 tokenSequenceIsBlocklisted:v70 length:v71];
        v39 = v19;
        v44 = v168;
        v55 = v181;
        v57 = v174;
        if ((v94 & 1) == 0)
        {
LABEL_83:
          v54 = v182;
          if (v166 & v57)
          {
            if (v222 * v216 < 0.0)
            {
              v87 = v184;
              [v184 setLinguisticScore:v222 * v216];
LABEL_128:
              [v87 setLexiconScore:v216];
              goto LABEL_129;
            }

            LOBYTE(v53) = 1;
LABEL_99:
            v87 = v184;
          }

          else
          {
            v87 = v184;
            LOBYTE(v53) = v57;
          }

LABEL_127:
          [v87 setLinguisticScore:-30.0 - v54 / v42];
          if (!v53)
          {
            goto LABEL_129;
          }

          goto LABEL_128;
        }

LABEL_119:
        v53 = v57;
        if (v57)
        {
          v103 = v225 * *&v194 + v223 * v216;
        }

        else
        {
          v103 = v225 * *&v194;
        }

        v54 = v182;
        if (v178)
        {
          [v178 doubleValue];
          v103 = v103 + v224 * v104;
        }

        v87 = v184;
        if (v103 >= 0.0)
        {
          goto LABEL_127;
        }

        [v184 setLinguisticScore:v103];
        if (v53)
        {
          goto LABEL_128;
        }

LABEL_129:
        [v87 setBlocklisted:v183];
        v41 = v54 + 1;
        v43 = v55 + 1;
      }

      while (v43 != v177);
      v105 = [v169 countByEnumeratingWithState:&v217 objects:v234 count:16];
      v177 = v105;
    }

    while (v105);
  }

  v106 = [objc_msgSend(v158 "candidates")];
  v107 = v106;
  v108 = v221 > 0.0 && v154;
  if (v108 && [v106 count] >= 2)
  {
    v109 = [(AppleSpell *)v189 transformerOrSiriLanguageModelForLanguageObject:v39 appIdentifier:v157 waitForResult:0];
    if (v109)
    {
      v110 = v109;
      v111 = [v109 stateWithContext:v165];
      if (v111)
      {
        v112 = v111;
        v113 = [v107 count];
        v184 = v110;
        if (v113 > _kMaxCorrectionRescoreCount)
        {
          v107 = [v107 subarrayWithRange:0];
        }

        v114 = [MEMORY[0x1E695DF70] array];
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v115 = [v107 countByEnumeratingWithState:&v199 objects:v230 count:16];
        if (v115)
        {
          v116 = v115;
          v117 = *v200;
          do
          {
            for (k = 0; k != v116; ++k)
            {
              if (*v200 != v117)
              {
                objc_enumerationMutation(v107);
              }

              v119 = *(*(&v199 + 1) + 8 * k);
              v120 = [v119 replacementRange];
              if (v172 == v120 && v171 == v121)
              {
                [v114 addObject:{objc_msgSend(v119, "string")}];
              }
            }

            v116 = [v107 countByEnumeratingWithState:&v199 objects:v230 count:16];
          }

          while (v116);
        }

        v123 = [v114 count];
        v159 = v19;
        if (v123)
        {
          v124 = [v112 conditionalProbabilityDictionaryForStrings:v114];
        }

        else
        {
          v124 = 0;
        }

        v125 = v176;
        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v188 = [v107 countByEnumeratingWithState:&v195 objects:v229 count:16];
        if (v188)
        {
          v186 = *v196;
          v187 = v124;
          do
          {
            for (m = 0; m != v188; m = m + 1)
            {
              if (*v196 != v186)
              {
                objc_enumerationMutation(v107);
              }

              v127 = *(*(&v195 + 1) + 8 * m);
              v216 = 0.0;
              if (v124)
              {
                v124 = [v124 objectForKey:{objc_msgSend(v127, "string")}];
              }

              v128 = v107;
              if (v125)
              {
                v129 = [v125 objectForKey:{objc_msgSend(v127, "string")}];
              }

              else
              {
                v129 = 0;
              }

              v130 = [v127 replacementRange];
              v132 = v131;
              v133 = [v127 lexiconScore];
              v135 = v134;
              if (v124)
              {
                [v124 doubleValue];
                v216 = v136;
              }

              else
              {
                if (v172 == v130 && v171 == v132)
                {
                  goto LABEL_185;
                }

                v185 = v153;
                v194 = v160;
                MEMORY[0x1EEE9AC00](v133);
                v142 = v167;
                [(AppleSpell *)v189 _contextLengthForRange:v130 languageObject:v132 tagger:v159 languageModel:v167 maxContextLength:v20 context:&v153[-((v141 + 19) & 0xFFFFFFFFFFFFFFF0)] cleanOffset:0 cleanContextRange:&v194 lastTokenRange:0 lastTokenID:0];
                if (*(&v194 + 1))
                {
                  v143 = [v142 string];
                  v144 = [v143 substringWithRange:{v194, *(&v194 + 1)}];
                }

                else
                {
                  v144 = &stru_1F4E0A7A0;
                }

                v145 = [v127 string];
                if (![v184 getConditionalProbabilityForString:v145 context:v144 probability:&v216])
                {
                  goto LABEL_185;
                }

                v136 = v216;
              }

              v137 = v221 * v136;
              if (v135 >= 0.0)
              {
                v138 = v137;
              }

              else
              {
                v138 = v137 + v223 * v135;
              }

              if (v129)
              {
                [v129 doubleValue];
                v138 = v138 + v224 * v139;
              }

              [v127 setLinguisticScore:v138];
LABEL_185:
              v124 = v187;
              v107 = v128;
            }

            v188 = [v128 countByEnumeratingWithState:&v195 objects:v229 count:16];
          }

          while (v188);
        }

        v107 = [v107 sortedArrayUsingComparator:&__block_literal_global_375];
      }
    }
  }

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v146 = [v107 countByEnumeratingWithState:&v190 objects:v228 count:16];
  v147 = v156;
  if (v146)
  {
    v148 = v146;
    v149 = *v191;
    do
    {
      for (n = 0; n != v148; ++n)
      {
        if (*v191 != v149)
        {
          objc_enumerationMutation(v107);
        }

        [v147 addObject:*(*(&v190 + 1) + 8 * n)];
      }

      v148 = [v107 countByEnumeratingWithState:&v190 objects:v228 count:16];
    }

    while (v148);
  }

  v151 = *MEMORY[0x1E69E9840];
  return v147;
}

- (BOOL)_useAlternateLanguageForRange:(_NSRange)a3 ofString:(id)a4 languageObject:(id)a5 tagger:(id)a6 alternateLanguageObject:(id)a7 alternateTagger:(id)a8 appIdentifier:(id)a9
{
  v40 = a6;
  length = a3.length;
  location = a3.location;
  v42[1] = *MEMORY[0x1E69E9840];
  v37 = [a4 length];
  v15 = [(AppleSpell *)self wordLanguageModelForLanguageObject:a5 appIdentifier:a9 waitForResult:0];
  v16 = [(AppleSpell *)self wordLanguageModelForLanguageObject:a7 appIdentifier:a9 waitForResult:0];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v39 = &v33 - ((v18 + 23) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v33 - v19;
  v41 = 0;
  v42[0] = 0;
  v34 = [v15 getFirstDynamicTokenID:v42 + 4 lastDynamicTokenID:v42];
  v35 = [v16 getFirstDynamicTokenID:&v41 + 4 lastDynamicTokenID:&v41];
  v20 = [(AppleSpell *)self useUnigramProbabilityForLanguageObject:a5];
  v21 = [(AppleSpell *)self useUnigramProbabilityForLanguageObject:a7];
  result = 0;
  v36 = a8;
  if (a8)
  {
    v23 = v40;
    if (v40)
    {
      if (a4)
      {
        if (v15)
        {
          if (v16)
          {
            if (!v20 && !v21 && v37 >= location + length)
            {
              v24 = location - [a4 paragraphRangeForRange:{location, length}];
              v25 = [(AppleSpell *)self _contextLengthForRange:v24 languageObject:length tagger:a5 languageModel:v23 maxContextLength:v15 context:_kMaxContextLength cleanOffset:v39 cleanContextRange:0 lastTokenRange:0 lastTokenID:0, 0];
              v26 = [(AppleSpell *)self _contextLengthForRange:v24 languageObject:length tagger:a7 languageModel:v36 maxContextLength:v16 context:_kMaxContextLength cleanOffset:v38 cleanContextRange:0 lastTokenRange:0 lastTokenID:0, 0];
              result = 0;
              if (v25)
              {
                if (v26)
                {
                  v27 = *&v39[4 * v25 - 4];
                  v28 = v27 != 0;
                  v29 = *&v38[4 * v26 - 4];
                  v30 = HIDWORD(v42[0]) > v27;
                  v31 = v27 > LODWORD(v42[0]);
                  if (((v29 != 0) & v35) == 1)
                  {
                    if (HIDWORD(v41) <= v29 && v29 <= v41)
                    {
                      goto LABEL_14;
                    }
                  }

                  else if (!v29)
                  {
LABEL_14:
                    result = 0;
                    goto LABEL_17;
                  }

                  result = (v30 | ~(v28 & v34) | v31) & v28 ^ 1;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (float)dynamicScoreForWord:(id)a3 languageModel:(id)a4 languageObject:(id)a5
{
  if (!a3)
  {
    return 0.0;
  }

  if (!a4)
  {
    return 0.0;
  }

  v6 = [AppleSpell _tokenIDForString:"_tokenIDForString:languageModel:languageObject:terminatorTokenID:" languageModel:? languageObject:? terminatorTokenID:?];
  if (!v6)
  {
    return 0.0;
  }

  [a4 usageCountForTokenID:v6];
  return result;
}

- (float)dynamicScoreForWord:(id)a3 languageObject:(id)a4 appIdentifier:(id)a5
{
  v8 = [(AppleSpell *)self wordLanguageModelForLanguageObject:a4 appIdentifier:a5 waitForResult:0];

  [(AppleSpell *)self dynamicScoreForWord:a3 languageModel:v8 languageObject:a4];
  return result;
}

- (id)assetDataBundleURLsForLanguageObject:(id)a3
{
  if (a3)
  {
    v5 = [a3 identifier];
    v6 = [MEMORY[0x1E695DF70] array];
    if (v5)
    {
      v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
      if (v7)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __69__AppleSpell_LanguageModeling__assetDataBundleURLsForLanguageObject___block_invoke;
        v10[3] = &unk_1E84053A0;
        v10[4] = v6;
        [(AppleSpell *)self enumerateAssetDataItemsForLocale:v7 withBlock:v10];
      }
    }

    return v6;
  }

  else
  {
    v9 = MEMORY[0x1E695DF70];

    return [v9 array];
  }
}

uint64_t __69__AppleSpell_LanguageModeling__assetDataBundleURLsForLanguageObject___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [@"Spelling" isEqualToString:a4];
  if (result)
  {
    v7 = *(a1 + 32);

    return [v7 addObject:a2];
  }

  return result;
}

- (BOOL)getConditionalProbabilityForWord:(id)a3 context:(id)a4 language:(id)a5 probability:(double *)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = [PRLanguage languageObjectWithIdentifier:a5];
  v11 = -[AppleSpell taggerForLanguageObject:string:range:](self, "taggerForLanguageObject:string:range:", v10, a4, 0, [a4 length]);
  v12 = [(AppleSpell *)self wordLanguageModelForLanguageObject:v10 appIdentifier:0 waitForResult:1];
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - ((v13 + 23) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a4 length];
  v16 = [(AppleSpell *)self _contextLengthForRange:v15 languageObject:0 tagger:v10 languageModel:v11 maxContextLength:v12 context:_kMaxContextLength cleanOffset:v14 cleanContextRange:0 lastTokenRange:0 lastTokenID:0, 0];
  v17 = [(AppleSpell *)self _tokenIDForString:a3 languageModel:v12 languageObject:v10 terminatorTokenID:0];
  v18 = [(AppleSpell *)self useUnigramProbabilityForLanguageObject:v10];
  v19 = 0;
  if (v12 && !v18 && v17)
  {
    v19 = [v12 getConditionalProbabilityForTokenID:v17 context:v14 length:v16 probability:a6];
  }

  [(AppleSpell *)self invalidateTagger:v11];
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)getCharacterModelConditionalProbabilityForString:(id)a3 context:(id)a4 language:(id)a5 probability:(double *)a6
{
  v9 = [(AppleSpell *)self characterLanguageModelForLanguageObject:[PRLanguage waitForResult:"languageObjectWithIdentifier:" languageObjectWithIdentifier:a5], 1];
  if (v9)
  {

    LOBYTE(v9) = [v9 getConditionalProbabilityForString:a3 context:a4 probability:a6];
  }

  return v9;
}

- (BOOL)getTransformerModelConditionalProbabilityForString:(id)a3 context:(id)a4 language:(id)a5 probability:(double *)a6
{
  v9 = [(AppleSpell *)self transformerLanguageModelForLanguageObject:[PRLanguage waitForResult:"languageObjectWithIdentifier:" languageObjectWithIdentifier:a5], 1];
  if (v9)
  {

    LOBYTE(v9) = [v9 getConditionalProbabilityForString:a3 context:a4 probability:a6];
  }

  return v9;
}

- (id)globalDictionaryArray
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_globalDictionaryArray)
  {
    self->_globalDictionaryArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [(AppleSpell *)self dataBundlesForLanguageObject:0, 0];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v13 + 1) + 8 * i) URLForResource:@"gbindict.dat" withExtension:0 subdirectory:0 localization:0];
          if (v8)
          {
            v9 = [[PRDictionary alloc] initWithURL:v8 fallbackURL:0];
            if (v9)
            {
              v10 = v9;
              [(NSMutableArray *)self->_globalDictionaryArray addObject:v9];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  result = self->_globalDictionaryArray;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)localDictionaryArrayForLanguageObject:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [a3 identifier];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    if (v5)
    {
      if (self->_hasUpdatedDataBundleLanguages)
      {
        assetDataBundleSerialQueue = self->_assetDataBundleSerialQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64__AppleSpell_Dictionary__localDictionaryArrayForLanguageObject___block_invoke;
        block[3] = &unk_1E8405458;
        block[4] = self;
        block[5] = v5;
        block[6] = &v29;
        dispatch_sync(assetDataBundleSerialQueue, block);
        if (*(v30 + 24) == 1)
        {
          [(NSMutableDictionary *)self->_localDictionaryArrays removeObjectForKey:v5];
          [(AppleSpell *)self updateLexiconsForLanguageIfNecessary:v5];
        }
      }
    }
  }

  else
  {
    v5 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
  }

  v7 = [(NSMutableDictionary *)self->_localDictionaryArrays objectForKey:v5];
  if (!v7)
  {
    v21 = v5;
    v22 = self;
    v23 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(AppleSpell *)self dataBundlesForLanguageObject:a3];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = *v25;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [a3 localization];
        v14 = [a3 fallbackLocalization];
        v15 = [v12 URLForResource:@"bindict.dat" withExtension:0 subdirectory:0 localization:v13];
        if (v14 && ([v14 isEqualToString:v13] & 1) == 0)
        {
          v16 = [v12 URLForResource:@"bindict.dat" withExtension:0 subdirectory:0 localization:v14];
          if (v15)
          {
LABEL_16:
            v17 = [PRDictionary alloc];
            goto LABEL_20;
          }
        }

        else
        {
          v16 = 0;
          if (v15)
          {
            goto LABEL_16;
          }
        }

        if (!v16)
        {
          continue;
        }

        v17 = [PRDictionary alloc];
        v15 = v16;
        v16 = 0;
LABEL_20:
        v18 = [(PRDictionary *)v17 initWithURL:v15 fallbackURL:v16];
        if (v18)
        {
          [v23 addObject:v18];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (!v9)
      {
LABEL_24:
        v7 = v23;
        [(NSMutableDictionary *)v22->_localDictionaryArrays setObject:v23 forKey:v21];
        break;
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __64__AppleSpell_Dictionary__localDictionaryArrayForLanguageObject___block_invoke(void *a1)
{
  result = [*(a1[4] + 408) containsObject:a1[5]];
  if (result)
  {
    [*(a1[4] + 408) removeObject:a1[5]];
    result = [*(a1[4] + 408) count];
    if (!result)
    {
      *(a1[4] + 578) = 0;
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)checkWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 index:(unint64_t)a6
{
  v11 = [(AppleSpell *)self localDictionaryArrayForLanguageObject:a5];
  v12 = [(AppleSpell *)self globalDictionaryArray];
  v13 = [v11 count];
  v14 = [v12 count] + v13;
  if (!v14)
  {
    return 0;
  }

  for (i = 0; i < v14; ++i)
  {
    if (i >= v13)
    {
      v17 = i - v13;
      v16 = v12;
    }

    else
    {
      v16 = v11;
      v17 = i;
    }

    result = [objc_msgSend(v16 objectAtIndex:{v17), "checkWordBuffer:length:encoding:index:caseInsensitive:", a3, a4, objc_msgSend(a5, "encoding"), a6, 1}];
    if (result)
    {
      break;
    }
  }

  return result;
}

- (BOOL)checkNameWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 globalOnly:(BOOL)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = [(AppleSpell *)self globalDictionaryArray];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v12)
  {
    v14 = 0;
LABEL_14:
    if (!a6)
    {
      v17 = [(AppleSpell *)self localDictionaryArrayForLanguageObject:a5];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v14 = 0;
        v20 = *v25;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if (v14)
            {
              v14 = 1;
            }

            else
            {
              v14 = [*(*(&v24 + 1) + 8 * i) checkWordBuffer:a3 length:a4 encoding:objc_msgSend(a5 index:"encoding") caseInsensitive:{7, 0}];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }

      else
      {
        v14 = 0;
      }
    }

    goto LABEL_27;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v29;
  do
  {
    for (j = 0; j != v13; ++j)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v11);
      }

      if (v14)
      {
        v14 = 1;
      }

      else
      {
        v14 = [*(*(&v28 + 1) + 8 * j) checkWordBuffer:a3 length:a4 encoding:objc_msgSend(a5 index:"encoding") caseInsensitive:{7, 0}];
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v13);
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_27:
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)dictionaryForLanguageObject:(id)a3 index:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(AppleSpell *)self localDictionaryArrayForLanguageObject:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (!v8)
        {
          v8 = [*(*(&v13 + 1) + 8 * i) dictionaryAtIndex:a4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  result = v8;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)capitalizationDictionaryArrayForLanguageObject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(AppleSpell *)self dictionaryForLanguageObject:a3 index:2];
  v5 = [(AppleSpell *)self globalDictionaryArray];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (!v8)
        {
          v8 = [*(*(&v14 + 1) + 8 * i) dictionaryAtIndex:2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, v8, 0}];
  }

  else
  {
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:{v8, 0, v13}];
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)parameterBundleForLanguageObject:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AppleSpell *)self localDictionaryArrayForLanguageObject:a3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v4 = [*(*(&v10 + 1) + 8 * v7) parameterBundle];
      if (v4)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v5 = v4;
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  result = v4;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)transformerParameterBundleForLanguageObject:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(AppleSpell *)self localDictionaryArrayForLanguageObject:?];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v13 + 1) + 8 * v9) transformerParameterBundle];
      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = [(AppleSpell *)self parameterBundleForLanguageObject:a3];
  }

  result = v10;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clearCaches
{
  [(AppleSpell *)self releaseDatabaseConnections];
  [(NSMutableDictionary *)self->_localDictionaryArrays removeAllObjects];

  self->_globalDictionaryArray = 0;
}

- (id)_taggerForOrthoIndex:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__1;
  taggerSerialQueue = self->_taggerSerialQueue;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AppleSpell_Tagger___taggerForOrthoIndex___block_invoke;
  block[3] = &unk_1E8405480;
  block[4] = self;
  block[5] = &v10;
  block[6] = a3;
  dispatch_sync(taggerSerialQueue, block);
  v5 = v11[5];
  if (!v5)
  {
    v6 = [PRTagger alloc];
    v5 = -[PRTagger initWithTagSchemes:orthoIndex:](v6, "initWithTagSchemes:orthoIndex:", [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69779F0], 0}], a3);
    v11[5] = v5;
  }

  v7 = v5;
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __43__AppleSpell_Tagger___taggerForOrthoIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 88) count];
  if (result)
  {
    *(*(a1[5] + 8) + 40) = [*(a1[4] + 88) lastObject];
    [*(*(a1[5] + 8) + 40) setOrthoIndex:a1[6]];
    v3 = *(a1[4] + 88);

    return [v3 removeLastObject];
  }

  return result;
}

- (void)invalidateTagger:(id)a3
{
  if (a3)
  {
    [a3 setString:&stru_1F4E0A7A0];
    [a3 setOrthoIndex:0];
    taggerSerialQueue = self->_taggerSerialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__AppleSpell_Tagger__invalidateTagger___block_invoke;
    v6[3] = &unk_1E8405128;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(taggerSerialQueue, v6);
  }
}

unint64_t __39__AppleSpell_Tagger__invalidateTagger___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) count];
  if (result <= 4)
  {
    result = [*(*(a1 + 32) + 88) containsObject:*(a1 + 40)];
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 88);

      return [v4 addObject:v3];
    }
  }

  return result;
}

- (id)taggerForLanguageObject:(id)a3 string:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10 = [a3 orthographyIndex];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [(AppleSpell *)self _taggerForOrthoIndex:v10];
  [v12 setString:a4];
  if (v11 > 191)
  {
    if (v11 > 230)
    {
      switch(v11)
      {
        case 231:
          v13 = MEMORY[0x1E696ADE0];
          v14 = @"pa";
          goto LABEL_24;
        case 235:
          v13 = MEMORY[0x1E696ADE0];
          v14 = @"te";
          goto LABEL_24;
        case 239:
          v13 = MEMORY[0x1E696ADE0];
          v14 = @"th";
          goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (v11 != 192)
    {
      if (v11 == 224)
      {
        v13 = MEMORY[0x1E696ADE0];
        v14 = @"el";
        goto LABEL_24;
      }

      if (v11 == 227)
      {
        v13 = MEMORY[0x1E696ADE0];
        v14 = @"he";
LABEL_24:
        v16 = [v13 defaultOrthographyForLanguage:v14];
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v15 = MEMORY[0x1E696AEA8];
LABEL_18:
    v16 = [v15 orthographyWithFlags:NSOrthographyFlagsForScriptAndOrthographyIndexes()];
LABEL_25:
    [v12 setOrthography:v16 range:{location, length}];
    return v12;
  }

  if ((v11 - 128) < 3)
  {
    v15 = MEMORY[0x1E696AEA8];
    goto LABEL_18;
  }

  if (v11 == 3)
  {
    v13 = MEMORY[0x1E696ADE0];
    v14 = @"ko";
    goto LABEL_24;
  }

  if (v11 == 160)
  {
    v15 = MEMORY[0x1E696AEA8];
    goto LABEL_18;
  }

LABEL_27:
  v18 = NSOrthographyFlagsForScriptAndOrthographyIndexes();
  if (v18)
  {
    v16 = [MEMORY[0x1E696AEA8] orthographyWithFlags:v18];
    if (v16)
    {
      goto LABEL_25;
    }
  }

  v16 = [MEMORY[0x1E696ADE0] defaultOrthographyForLanguage:{objc_msgSend(a3, "identifier")}];
  if (v16)
  {
    goto LABEL_25;
  }

  return v12;
}

- (id)generativeExperiencesRunner
{
  if (generativeExperiencesRunner_onceToken != -1)
  {
    [AppleSpell(GenerativeExperiences) generativeExperiencesRunner];
  }

  return generativeExperiencesRunner_generativeExperiencesRunner;
}

objc_class *__64__AppleSpell_GenerativeExperiences__generativeExperiencesRunner__block_invoke()
{
  result = NSClassFromString(@"PRGenerativeExperiencesRunner");
  if (result)
  {
    result = objc_alloc_init(result);
    generativeExperiencesRunner_generativeExperiencesRunner = result;
  }

  return result;
}

- (void)requestCancellationForToken:(unint64_t)a3
{
  v4 = [(AppleSpell *)self generativeExperiencesRunner];

  [v4 requestCancellationForToken:a3];
}

- (void)requestShortFormRepliesWithContextHistory:(id)a3 documentType:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v10 = [(AppleSpell *)self generativeExperiencesRunner];

  [v10 requestShortFormRepliesWithContextHistory:a3 documentType:a4 options:a5 completionHandler:a6];
}

- (void)requestReviewOfAttributedString:(id)a3 range:(_NSRange)a4 options:(id)a5 completionHandler:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = [(AppleSpell *)self generativeExperiencesRunner];

  [v11 requestReviewWithAttributedString:a3 range:location options:length completionHandler:{a5, a6}];
}

- (void)requestRewritingOfAttributedString:(id)a3 range:(_NSRange)a4 rewritingType:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  length = a4.length;
  location = a4.location;
  v13 = [(AppleSpell *)self generativeExperiencesRunner];

  [v13 requestRewritingWithAttributedString:a3 range:location rewritingType:length options:a5 completionHandler:{a6, a7}];
}

- (id)spellServer:(id)a3 suggestCompletionsForPartialWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)lastLanguage options:(id)a7
{
  length = a4.length;
  location = a4.location;
  v30 = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!lastLanguage || ([lastLanguage isEqualToString:@"und"] & 1) != 0 || objc_msgSend(lastLanguage, "isEqualToString:", @"Multilingual"))
  {
    lastLanguage = self->_lastLanguage;
    if (!lastLanguage)
    {
      if ([(NSArray *)self->_userPreferredLanguages count])
      {
        lastLanguage = [(NSArray *)self->_userPreferredLanguages objectAtIndex:0];
      }

      else
      {
        lastLanguage = @"en";
      }
    }
  }

  v16 = [(AppleSpell *)self spellServer:a3 suggestCompletionDictionariesForPartialWordRange:location inString:length inLanguage:a5 options:lastLanguage, a7];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
LABEL_10:
    v20 = 0;
    while (1)
    {
      if (*v26 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = [*(*(&v25 + 1) + 8 * v20) objectForKey:@"Completion"];
      if (v21)
      {
        v22 = v21;
        if (([v14 containsObject:v21] & 1) == 0)
        {
          [v14 addObject:v22];
        }
      }

      if ([v14 count] > 0x13)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v18)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  [(AppleSpell *)self resetTimer];

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)spellServer:(id)a3 suggestCompletionDictionariesForPartialWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)lastLanguage options:(id)a7
{
  length = a4.length;
  location = a4.location;
  v76 = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E695DF70] array];
  v50 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v53 = location;
  if (length)
  {
    v15 = [a5 substringWithRange:{location, length}];
  }

  else
  {
    v15 = 0;
  }

  v52 = _appIdentifierFromOptions(a7);
  v16 = [a7 objectForKey:@"AsynchronousLanguageModelCreation"];
  v56 = v13;
  if (v16)
  {
    v17 = [v16 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  v51 = v17;
  v71 = 0;
  v18 = [(__CFString *)v15 length];
  v70 = 0;
  if (!lastLanguage || ([lastLanguage isEqualToString:@"und"] & 1) != 0 || objc_msgSend(lastLanguage, "isEqualToString:", @"Multilingual"))
  {
    lastLanguage = self->_lastLanguage;
    if (!lastLanguage)
    {
      if ([(NSArray *)self->_userPreferredLanguages count])
      {
        lastLanguage = [(NSArray *)self->_userPreferredLanguages objectAtIndex:0];
      }

      else
      {
        lastLanguage = @"en";
      }
    }
  }

  v19 = [PRLanguage languageObjectWithIdentifier:lastLanguage];
  v20 = [(AppleSpell *)self databaseConnectionForLanguageObject:v19];
  v21 = [v19 encoding];
  v22 = -[AppleSpell taggerForLanguageObject:string:range:](self, "taggerForLanguageObject:string:range:", v19, a5, 0, [a5 length]);
  if (v22)
  {
    BYTE1(v49) = v51;
    LOBYTE(v49) = v51;
    [(AppleSpell *)self _addLanguageModelCompletionsForPartialWordRange:v53 languageObject:length connection:v19 sender:v20 tagger:a3 appIdentifier:v22 waitForLanguageModel:v52 allowTransformer:v49 candidates:v56 scoreDictionary:v14 tryTransliteration:&v71];
  }

  if (v15)
  {
    if (v20 && v18 != 0)
    {
      v77.location = 0;
      v77.length = v18;
      CFStringGetBytes(v15, v77, v21, 0x5Fu, 0, buffer, 253, &v70);
    }
  }

  v24 = [v56 count];
  v55 = v22;
  if (v22)
  {
    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    LOBYTE(usedBufLen) = v51;
    v26 = [(AppleSpell *)self _rankedCandidatesForRange:v53 candidates:length languageObject:v56 tagger:v19 appIdentifier:v22 allowTransformer:v52 scoreDictionary:usedBufLen, v14];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v67;
      v30 = 0.0;
      v31 = 0.0;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v67 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [objc_msgSend(v14 objectForKey:{*(*(&v66 + 1) + 8 * i)), "doubleValue"}];
          if (v33 < v31)
          {
            v31 = v33;
          }

          v30 = v30 + v33;
        }

        v28 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v28);
      if (v31 >= 0.0)
      {
        if (v30 > 0.0)
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v40 = [v26 countByEnumeratingWithState:&v58 objects:v72 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v59;
LABEL_48:
            v43 = 0;
            while (1)
            {
              if (*v59 != v42)
              {
                objc_enumerationMutation(v26);
              }

              v44 = *(*(&v58 + 1) + 8 * v43);
              [objc_msgSend(v14 objectForKey:{v44), "doubleValue"}];
              [v12 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v44, @"Completion", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v45 / v30), @"Score", 0)}];
              if ([v12 count] > 0x13)
              {
                break;
              }

              if (v41 == ++v43)
              {
                v41 = [v26 countByEnumeratingWithState:&v58 objects:v72 count:16];
                if (v41)
                {
                  goto LABEL_48;
                }

                break;
              }
            }
          }
        }
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v34 = [v26 countByEnumeratingWithState:&v62 objects:v73 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v63;
LABEL_38:
          v37 = 0;
          while (1)
          {
            if (*v63 != v36)
            {
              objc_enumerationMutation(v26);
            }

            v38 = *(*(&v62 + 1) + 8 * v37);
            [objc_msgSend(v14 objectForKey:{v38), "doubleValue"}];
            [v12 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v38, @"Completion", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v39 - v31), @"Score", 0)}];
            if ([v12 count] > 0x13)
            {
              break;
            }

            if (v35 == ++v37)
            {
              v35 = [v26 countByEnumeratingWithState:&v62 objects:v73 count:16];
              if (v35)
              {
                goto LABEL_38;
              }

              break;
            }
          }
        }
      }
    }
  }

  [(AppleSpell *)self resetTimer];
  [(AppleSpell *)self invalidateTagger:v55];

  v46 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)spellServer:(id)a3 suggestNextLetterDictionariesForPartialWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7
{
  length = a4.length;
  location = a4.location;
  v46 = *MEMORY[0x1E69E9840];
  v14 = [a5 substringWithRange:{a4.location, a4.length}];
  v37 = [MEMORY[0x1E695DF70] array];
  v36 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v15 = [v14 length];
  v16 = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v17 = spellServer_suggestNextLetterDictionariesForPartialWordRange_inString_inLanguage_options__total_frequency;
  do
  {
    *&v17 = *&spellServer_suggestNextLetterDictionariesForPartialWordRange_inString_inLanguage_options__letter_unigram_frequencies[v16++] + *&v17;
  }

  while (v16 != 26);
  v18 = 0;
  spellServer_suggestNextLetterDictionariesForPartialWordRange_inString_inLanguage_options__total_frequency = v17;
  v19 = *&v17;
  do
  {
    v20 = *&spellServer_suggestNextLetterDictionariesForPartialWordRange_inString_inLanguage_options__letter_unigram_frequencies[v18] * 0.1 / v19;
    *(v44 + v18 * 4) = v20;
    ++v18;
  }

  while (v18 != 26);
  v38 = self;
  v21 = [(AppleSpell *)self spellServer:a3 suggestCompletionDictionariesForPartialWordRange:location inString:length inLanguage:a5 options:a6, a7];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        v27 = [v26 objectForKey:@"Completion"];
        if ([v27 length] > v15)
        {
          if ([v27 hasPrefix:v14])
          {
            v28 = [v27 characterAtIndex:v15];
            [objc_msgSend(v26 objectForKey:{@"Score", "floatValue"}];
            if ((v28 - 97) <= 0x19)
            {
              v30 = v29 * 0.9;
              *(v44 + (v28 - 97)) = *(v44 + (v28 - 97)) + v30;
            }
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v23);
  }

  for (j = 0; j != 26; ++j)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", j + 97];
    LODWORD(v33) = *(v44 + j);
    [v37 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v32, @"Letter", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v33), @"Score", 0)}];
  }

  [v37 sortUsingComparator:&__block_literal_global_296];
  [(AppleSpell *)v38 resetTimer];

  v34 = *MEMORY[0x1E69E9840];
  return v37;
}

uint64_t __115__AppleSpell_Completion__spellServer_suggestNextLetterDictionariesForPartialWordRange_inString_inLanguage_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKey:@"Score"];
  v5 = [a3 objectForKey:@"Score"];
  [v4 floatValue];
  v7 = v6;
  [v5 floatValue];
  if (v7 > v8)
  {
    return -1;
  }

  [v4 floatValue];
  v11 = v10;
  [v5 floatValue];
  return v11 < v12;
}

- (id)spellServer:(id)a3 suggestWordWithMinimumLength:(unint64_t)a4 maximumLength:(unint64_t)a5 language:(id)lastLanguage
{
  v63 = *MEMORY[0x1E69E9840];
  v40 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!lastLanguage || ([lastLanguage isEqualToString:@"und"] & 1) != 0 || objc_msgSend(lastLanguage, "isEqualToString:", @"Multilingual"))
  {
    lastLanguage = self->_lastLanguage;
    if (!lastLanguage)
    {
      if ([(NSArray *)self->_userPreferredLanguages count])
      {
        lastLanguage = [(NSArray *)self->_userPreferredLanguages objectAtIndex:0];
      }

      else
      {
        lastLanguage = @"en";
      }
    }
  }

  memset(v62, 0, sizeof(v62));
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  v10 = [PRLanguage languageObjectWithIdentifier:lastLanguage];
  v42 = [v10 isGerman];
  v41 = self;
  v11 = [(AppleSpell *)self databaseConnectionForLanguageObject:v10];
  v12 = [v10 encoding];
  if (v11)
  {
    encoding = v12;
    v39 = v10;
    Current = CFAbsoluteTimeGetCurrent();
    memset(v62 + 8, 0, 136);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    HIDWORD(v60) = 0;
    v61 = 0;
    *&v62[0] = v43;
    *(&v62[6] + 1) = &v45;
    HIBYTE(v62[7]) = 1;
    *(&v62[8] + 1) = *v11;
    srandom(((Current - floor(Current)) * 100000.0));
    v14 = 0;
    do
    {
      if (v14 == 10)
      {
        v11 = 0;
        break;
      }

      v43[0] = aAaaaabbbccddee[random() % 0x39uLL];
      HIDWORD(v16) = v43[0] - 65;
      LODWORD(v16) = HIDWORD(v16);
      v15 = v16 >> 1;
      v29 = v15 > 0x1C;
      v17 = (1 << v15) & 0x14951495;
      v18 = v29 || v17 == 0;
      if (!v18 || (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, vaddq_s32(vdupq_n_s32(v43[0]), xmmword_1D2BF7970)))) & 1) != 0 || v43[0] - 248 < 6 || (v43[0] & 0xD8) == 0xC8)
      {
        v19 = &aAaaaabbbccddee[random() % 0x39uLL];
      }

      else
      {
        v19 = &aAeiou[random() % 5uLL];
      }

      v43[1] = *v19;
      v44 = 42;
      PRword(v62, 5, 0);
      v20 = *(&v62[0] + 1);
      if (*(&v62[0] + 1) && *(*(&v62[0] + 1) + 8) && **(&v62[0] + 1))
      {
        v21 = *(*(&v62[0] + 1) + 18);
        if (*(*(&v62[0] + 1) + 18))
        {
          v22 = 0;
          v23 = 0;
          v24 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            v25 = *v20;
            if (*v20)
            {
              v26 = *(v20[1] + 2 * v23);
              v27 = (v25 + v26);
              v28 = strlen((v25 + v26));
              v29 = v28 < a4 || v28 > a5;
              if (!v29)
              {
                v30 = *v27;
                if ((v30 & 0xFFFFFFDF) - 65 <= 0x19)
                {
                  v34 = __CFADD__(v30 - 91, 26);
                  v31 = v42;
                  if (!v34)
                  {
                    v31 = 1;
                  }

                  if (v31 == 1)
                  {
                    if (v28 < 2)
                    {
                      goto LABEL_38;
                    }

                    v32 = 1;
                    do
                    {
                      v33 = v27[v32++] - 97;
                      v34 = v33 > 0x19 || v32 >= v28;
                    }

                    while (!v34);
                    if (v33 <= 0x19)
                    {
LABEL_38:
                      if (!(random() % ++v22))
                      {
                        v24 = v26;
                      }
                    }
                  }
                }
              }
            }

            ++v23;
          }

          while (v23 != v21);
          if (v24 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = 0;
          }

          else
          {
            v35 = *v20;
            if (!*v20)
            {
              goto LABEL_55;
            }

            v11 = strlen((v35 + v24));
            if (v11)
            {
              if ([(AppleSpell *)v41 checkWordBuffer:v35 + v24 length:v11 languageObject:v39 index:1]|| [(AppleSpell *)v41 checkNegativeWordBuffer:v35 + v24 length:v11 languageObject:v39])
              {
LABEL_55:
                v11 = 0;
                goto LABEL_44;
              }

              v11 = CFStringCreateWithCString(0, (v35 + v24), encoding);
            }
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_44:
      ++v14;
      PRword(v62, 17, 0);
    }

    while (!v11);
  }

  [(AppleSpell *)v41 resetTimer];

  result = v11;
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)personalizeEmojiArray:(id)a3
{
  v4 = CFPreferencesCopyAppValue(@"SkinTones:com.apple.CharacterPicker.DefaultDataStorage", @"com.apple.CharacterPicker");
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [a3 count];
      if (v6)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v9 = [a3 objectAtIndex:i];
          v10 = [v5 objectForKey:v9];
          if (v10)
          {
            v11 = v10;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 isEqual:v11] & 1) == 0 && _loadEmojiKit())
            {
              if (_CEMStringIsSingleEmoji(v11))
              {
                if (![v9 hasPrefix:@"✊"] || !_loadEmojiKit() || !_CEMStringIsSingleEmoji(v9) || (v12 = _CEMEmojiTokenCreateWithString(v9, 0)) == 0 || (v13 = v12, SkinTone = _CEMEmojiTokenGetSkinTone(), CFRelease(v13), !SkinTone))
                {
                  [a3 replaceObjectAtIndex:i withObject:v11];
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v5);
  }
}

- (BOOL)noSuggestForCompletion:(id)a3 languageObject:(id)a4 appIdentifier:(id)a5 alreadyCapitalized:(BOOL)a6
{
  v6 = a6;
  v9 = 0;
  v7 = [(AppleSpell *)self getMetaFlagsForWord:a3 inLexiconForLanguageObject:a4 metaFlags:&v9 + 4 otherMetaFlags:&v9];
  if (v7)
  {
    if (v6)
    {
      if ((v9 & 0x8000000000) != 0)
      {
        return v9 >> 7;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      return (HIDWORD(v9) >> 7) & 1;
    }
  }

  return v7;
}

- (id)spellServer:(id)a3 candidatesForSelectedRange:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 types:(unint64_t)a7 options:(id)a8 orthography:(id)a9
{
  v164 = a7;
  location = a4.location;
  length = a4.length;
  v255 = *MEMORY[0x1E69E9840];
  v177 = [MEMORY[0x1E695DF70] array];
  v173 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  obj = [MEMORY[0x1E695DF70] array];
  v171 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a8];
  v11 = [a9 dominantScript];
  v12 = _appIdentifierFromOptions(a8);
  theString = a5;
  v165 = [a5 length];
  v166 = v12;
  v13 = [v12 isEqualToString:@"com.apple.DiskUtility"];
  [a8 objectForKey:@"AppIdentifier"];
  v14 = [a8 objectForKey:@"KeyEventArray"];
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 lastObject];
  }

  else
  {
    v16 = 0;
  }

  if (PRUseSingleCompletions_onceToken != -1)
  {
    [AppleSpell(Completion) spellServer:candidatesForSelectedRange:inString:offset:types:options:orthography:];
  }

  v161 = v13;
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 keyboardLayoutIdentifier];
      if (v17)
      {
        [v17 rangeOfString:@"inputmethod"];
      }
    }
  }

  v18 = [a8 objectForKey:@"InlinePredictionsOnly"];
  if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v162 = [v19 BOOLValue];
  }

  else
  {
    v162 = 0;
  }

  v244 = 0;
  v245 = &v244;
  v246 = 0x3010000000;
  v247 = "";
  v248 = location;
  v249 = 0;
  v238 = 0;
  v239 = &v238;
  v240 = 0x3010000000;
  v241 = "";
  v242 = location;
  v243 = 0;
  v232 = 0;
  v233 = &v232;
  v234 = 0x3010000000;
  v235 = "";
  v236 = location;
  v237 = 0;
  v226 = 0;
  v227 = &v226;
  v228 = 0x3010000000;
  v229 = "";
  v230 = location;
  v231 = 0;
  v220 = 0;
  v221 = &v220;
  v222 = 0x3010000000;
  v225 = 0;
  v223 = "";
  v224 = 0;
  v214 = 0;
  v215 = &v214;
  v216 = 0x3010000000;
  v217 = "";
  v218 = location;
  v219 = 0;
  v213[0] = 0;
  v213[1] = v213;
  v213[2] = 0x2020000000;
  v213[3] = 0;
  usedBufLen = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  if (spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__onceToken != -1)
  {
    dispatch_once(&spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__onceToken, block);
  }

  [v171 setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithRange:", location, length), @"SelectedRange"}];
  [v171 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"SuppressAdaptation"}];
  [v171 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"OnlyAtInsertionPoint"}];
  if ((([@"Latn" isEqualToString:v11] & 1) != 0 || (objc_msgSend(@"Cyrl", "isEqualToString:", v11) & 1) != 0 || (objc_msgSend(@"Kore", "isEqualToString:", v11) & 1) != 0 || (v20 = objc_msgSend(a9, "dominantLanguageForScript:", @"Latn")) == 0) && (v20 = objc_msgSend(a9, "dominantLanguage")) == 0 || (-[__CFString isEqualToString:](v20, "isEqualToString:", @"und") & 1) != 0 || -[__CFString isEqualToString:](v20, "isEqualToString:", @"Multilingual"))
  {
    if ([@"Cyrl" isEqualToString:v11])
    {
      v20 = @"ru";
    }

    else if ([@"Kore" isEqualToString:v11])
    {
      v20 = @"ko";
    }

    else if ([@"Thai" isEqualToString:v11])
    {
      v20 = @"th";
    }

    else
    {
      v20 = [(NSArray *)self->_userPreferredLanguages firstObject];
    }
  }

  else if (([(__CFString *)v20 isEqualToString:@"en"]& 1) != 0 || [(__CFString *)v20 isEqualToString:@"pt"])
  {
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    userPreferredLanguages = self->_userPreferredLanguages;
    v22 = [(NSArray *)userPreferredLanguages countByEnumeratingWithState:&v207 objects:v253 count:16];
    if (v22)
    {
      v23 = v10;
      v24 = *v208;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v208 != v24)
          {
            objc_enumerationMutation(userPreferredLanguages);
          }

          v26 = *(*(&v207 + 1) + 8 * i);
          if (([(__CFString *)v26 hasPrefix:v20]& 1) != 0)
          {
            v20 = v26;
            goto LABEL_43;
          }
        }

        v22 = [(NSArray *)userPreferredLanguages countByEnumeratingWithState:&v207 objects:v253 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_43:
      v10 = v23;
    }
  }

  if (v20)
  {
    v27 = v20;
  }

  else
  {
    v27 = @"en_US";
  }

  v28 = [PRLanguage languageObjectWithIdentifier:v27];
  v163 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:{objc_msgSend(v28, "identifier")}];
  v29 = [v28 encoding];
  v30 = [(AppleSpell *)self autocorrectionDictionaryForLanguageObject:v28];
  v31 = [v28 oneLetterWords];
  v32 = [v28 isThai];
  if (v30)
  {
    v33 = v32;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) != 0 || ![v28 isSupportedCompletionLanguage])
  {
    goto LABEL_247;
  }

  v159 = [(AppleSpell *)self taggerForLanguageObject:v28 string:theString range:0, [(__CFString *)theString length]];
  if (![(AppleSpell *)self useWordLanguageModelForLanguageObject:v28 tagger:v159 appIdentifier:v166])
  {
    goto LABEL_246;
  }

  v158 = 0;
  self->_lastCandidateLanguage = [objc_msgSend(v28 "identifier")];
  v154 = 0;
  if (!theString)
  {
    v155 = location;
    v34 = 0;
    v157 = 0;
    goto LABEL_196;
  }

  v155 = location;
  v34 = 0;
  v157 = 0;
  if (v165 < location)
  {
    goto LABEL_196;
  }

  v156 = [(__CFString *)theString paragraphRangeForRange:location, 0];
  if (location > v156)
  {
    v206[0] = MEMORY[0x1E69E9820];
    v206[1] = 3221225472;
    v206[2] = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_2;
    v206[3] = &unk_1E84054F8;
    v206[6] = location;
    v206[4] = theString;
    v206[5] = &v244;
    [(__CFString *)theString enumerateSubstringsInRange:v156 options:location - v156 usingBlock:771, v206];
    *(v239 + 2) = *(v245 + 2);
  }

  if (v165 > v239[5] + v239[4])
  {
    v205[10] = MEMORY[0x1E69E9820];
    v205[11] = 3221225472;
    v205[12] = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_3;
    v205[13] = &unk_1E8405520;
    v205[14] = theString;
    v205[15] = &v238;
    v205[16] = location;
    v205[17] = length;
    [__CFString enumerateSubstringsInRange:"enumerateSubstringsInRange:options:usingBlock:" options:? usingBlock:?];
  }

  v35 = v245;
  *(v233 + 2) = *(v245 + 2);
  v36 = v35[4] - v156;
  v37 = v221;
  v221[4] = v156;
  v37[5] = v36;
  v205[0] = MEMORY[0x1E69E9820];
  v205[1] = 3221225472;
  v205[2] = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_4;
  v205[3] = &unk_1E8405548;
  v205[4] = theString;
  v205[5] = &v232;
  v205[6] = &v226;
  v205[7] = &v220;
  v205[8] = &v244;
  v205[9] = v213;
  [(__CFString *)theString enumerateSubstringsInRange:v37[4] options:v37[5] usingBlock:771, v205];
  v40 = v233;
  v41 = v233[4];
  v42 = v41 - v156;
  if (v41 > v156)
  {
    v43 = v245;
    if (v41 == v245[4])
    {
      v44 = v233[5];
      if (v44 == v245[5])
      {
        v233[4] = v156;
        v40[5] = v42 + v44;
        v45 = v43[5];
        if (v42 + v44 > (v45 + 256))
        {
          v40[4] = v41 + v44 - v45 - 256;
          v40[5] = v45 + 256;
        }
      }
    }
  }

  if ((v164 & 0x40000000) == 0)
  {
    goto LABEL_65;
  }

  v46 = v227[5];
  if (v46)
  {
    if (v227[4] + v46 < v165 && [(__CFString *)theString characterAtIndex:?]== 46)
    {
      v256.location = v227[4];
      v47 = v227[5] + 1;
      v256.length = v47;
      if (v47 == CFStringGetBytes(theString, v256, v29, 0x5Fu, 0, buffer, 72, &usedBufLen) && [(AppleSpell *)self checkNoCapAbbreviationWordBuffer:buffer length:usedBufLen languageObject:v28])
      {
        goto LABEL_65;
      }
    }
  }

  v48 = v221[4];
  if (v48 == v156)
  {
    v158 = treatWordAsSentenceInitial(theString, v156, v245[4], v245[5], v28);
    goto LABEL_74;
  }

  v62 = [(__CFString *)theString rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__terminatorCharacterSet options:0 range:v48, v221[5]];
  v64 = v62;
  v158 = 0;
  if (v62 != 0x7FFFFFFFFFFFFFFFLL && v63)
  {
    v65 = v62 + v63;
    v66 = v221;
    if (v62 + v63 >= (v221[5] + v221[4]))
    {
      goto LABEL_65;
    }

    v67 = v245[4] - v65;
    v221[4] = v65;
    v66[5] = v67;
    v38 = [(__CFString *)theString rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__nonPunctuationCharacterSet options:0 range:?];
    v158 = 0;
    if (v38 != 0x7FFFFFFFFFFFFFFFLL && v68)
    {
      if ([spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__whitespaceCharacterSet characterIsMember:{-[__CFString characterAtIndex:](theString, "characterAtIndex:", v38)}])
      {
        v158 = treatWordAsSentenceInitial(theString, v64, v245[4], v245[5], v28);
        goto LABEL_74;
      }

LABEL_65:
      v158 = 0;
    }
  }

LABEL_74:
  if (v162)
  {
    v153 = 0;
  }

  else
  {
    v49 = -[AppleSpell spellServer:suggestCompletionsForPartialWordRange:inString:inLanguage:options:](self, "spellServer:suggestCompletionsForPartialWordRange:inString:inLanguage:options:", a3, v239[4], v239[5], theString, [v28 identifier], v171);
    v50 = [v49 count];
    if (v239[5] && (v51 = [(__CFString *)theString rangeOfComposedCharacterSequenceAtIndex:v239[4]], v52))
    {
      v53 = [(__CFString *)theString substringWithRange:v51, v52];
      v153 = [v53 isEqualToString:{objc_msgSend(v53, "capitalizedString")}];
    }

    else
    {
      v153 = 0;
    }

    if (v50)
    {
      v54 = 0;
      do
      {
        if ([v173 count] > 0x63)
        {
          break;
        }

        v55 = [v49 objectAtIndex:v54];
        if ([v55 length] == 1)
        {
          if (v31)
          {
            v56 = [v55 characterAtIndex:0];
            if (v56 > 0xFF || !strchr(v31, v56))
            {
              continue;
            }
          }
        }

        if (![(AppleSpell *)self noSuggestForCompletion:v55 languageObject:v28 appIdentifier:v166 alreadyCapitalized:(v153 | v158) & 1])
        {
          if (v158)
          {
            v55 = initialCapitalizedString(v55, v163);
          }

          if (([v173 containsObject:v55] & 1) == 0)
          {
            [v173 addObject:v55];
          }
        }

        ++v54;
      }

      while (v50 != v54);
    }
  }

  v34 = 0;
  if ((v164 & 0x100) == 0)
  {
    goto LABEL_115;
  }

  v39 = v239[5];
  if (!v39)
  {
    goto LABEL_115;
  }

  v57 = [(__CFString *)theString substringWithRange:v239[4]];
  v34 = -[NSMutableDictionary objectForKey:](self->_foundShortcutsDictionary, "objectForKey:", [v57 lowercaseStringWithLocale:v163]);
  if (!v34)
  {
    goto LABEL_115;
  }

  if (!spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__lowercaseLetterCharacterSet)
  {
    spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__lowercaseLetterCharacterSet = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
  }

  if (!spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__uppercaseLetterCharacterSet)
  {
    spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
  }

  [v34 rangeOfCharacterFromSet:?];
  if (!v58)
  {
    goto LABEL_115;
  }

  [v34 rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__uppercaseLetterCharacterSet];
  if (v59)
  {
    goto LABEL_115;
  }

  [v57 rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__lowercaseLetterCharacterSet];
  if (v60)
  {
    if ((v158 & 1) == 0 && ![v57 isEqualToString:{initialCapitalizedString(v57, v163)}])
    {
      goto LABEL_115;
    }

    v61 = initialCapitalizedString(v34, v163);
  }

  else
  {
    v61 = uppercasedString(v34, v163);
  }

  v34 = v61;
LABEL_115:
  if ((v164 & 2) == 0)
  {
    goto LABEL_126;
  }

  v69 = v239[5] + v239[4];
  v70 = v233[4];
  v39 = v69 - v70;
  if (v69 <= v70)
  {
    goto LABEL_126;
  }

  v71 = [(__CFString *)theString substringWithRange:v233[4], v39];
  [v171 setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithRange:", location - v70, length), @"SelectedRange"}];
  v72 = [(AppleSpell *)self spellServer:a3 checkString:v71 offset:v70 types:v164 & 0xC0000000 | 0x202 options:v171 orthography:a9 wordCount:0];
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v73 = [v72 countByEnumeratingWithState:&v201 objects:v252 count:16];
  if (!v73)
  {
    goto LABEL_126;
  }

  v74 = *v202;
  while (2)
  {
    for (j = 0; j != v73; ++j)
    {
      if (*v202 != v74)
      {
        objc_enumerationMutation(v72);
      }

      v76 = *(*(&v201 + 1) + 8 * j);
      if ([v76 resultType] == 512)
      {
        v77 = [v76 range];
        if (v77 + v78 == v239[5] + v239[4])
        {
          v79 = [v76 replacementString];
          v95 = [v76 range];
          v154 = v96;
          v155 = v95;
          if (v158)
          {
            v97 = [v76 range];
            if (v97 == v239[4] && v98 == v239[5] && ([v79 isEqualToString:{initialCapitalizedString(-[__CFString substringWithRange:](theString, "substringWithRange:"), v163)}] & 1) != 0)
            {
              goto LABEL_176;
            }

            v79 = initialCapitalizedString(v79, v163);
          }

          if (v79)
          {
            v99 = v162;
          }

          else
          {
            v99 = 1;
          }

          if (v99)
          {
            goto LABEL_127;
          }

          if (![v173 count] && v155 == v239[4] && v154 == v239[5])
          {
            v148 = [MEMORY[0x1E696AD60] stringWithString:theString];
            [v148 replaceCharactersInRange:v239[4] withString:{v239[5], v79}];
            v149 = -[AppleSpell spellServer:suggestCompletionsForPartialWordRange:inString:inLanguage:options:](self, "spellServer:suggestCompletionsForPartialWordRange:inString:inLanguage:options:", a3, v239[4], [v79 length], v148, objc_msgSend(v28, "identifier"), v171);
            v150 = [v149 count];
            if (v150)
            {
              for (k = 0; k != v150; ++k)
              {
                if ([v173 count] > 0x63)
                {
                  break;
                }

                v152 = [v149 objectAtIndex:k];
                if (![(AppleSpell *)self noSuggestForCompletion:v152 languageObject:v28 appIdentifier:v166 alreadyCapitalized:(v153 | v158) & 1])
                {
                  if (v158)
                  {
                    v152 = initialCapitalizedString(v152, v163);
                  }

                  if (([v173 containsObject:v152] & 1) == 0)
                  {
                    [v173 addObject:v152];
                  }
                }
              }
            }
          }

          if ((v164 & 0x200) != 0 && !v34)
          {
            goto LABEL_127;
          }

          if (([v173 containsObject:v79] & 1) == 0 && v155 == v239[4] && v154 == v239[5])
          {
            [v173 insertObject:v79 atIndex:0];
          }

LABEL_176:
          v79 = 0;
          goto LABEL_127;
        }
      }
    }

    v73 = [v72 countByEnumeratingWithState:&v201 objects:v252 count:16];
    if (v73)
    {
      continue;
    }

    break;
  }

LABEL_126:
  v79 = 0;
  v154 = 0;
  v155 = location;
LABEL_127:
  v80 = v162;
  if (v34)
  {
    v80 = 1;
  }

  v157 = v79;
  if (v79)
  {
    v81 = 1;
  }

  else
  {
    v81 = v80;
  }

  if (((v81 | v161) & 1) == 0)
  {
    *(v215 + 2) = *(v239 + 2);
    v82 = v28;
    if (v233[5])
    {
      userTransliterationLocalizations = self->_userTransliterationLocalizations;
      v82 = v28;
      if (userTransliterationLocalizations)
      {
        v82 = v28;
        if ([(NSArray *)userTransliterationLocalizations count:v38]== 1)
        {
          v84 = [(NSArray *)self->_userTransliterationLocalizations firstObject];
          v82 = v28;
          if (([objc_msgSend(v28 "identifier")] & 1) == 0)
          {
            v85 = v239;
            if (v239[5] || (v85 = v227, v39 = v227[5], v82 = v28, v39))
            {
              v86 = [(__CFString *)theString substringWithRange:v85[4]];
              v87 = v86;
              v82 = v28;
              if (v86)
              {
                v82 = v28;
                if ([v86 length] >= 3)
                {
                  v82 = v28;
                  if ([(AppleSpell *)self validateWord:v87 inLexiconForLanguage:v84])
                  {
                    v82 = [PRLanguage languageObjectWithIdentifier:v84];
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v239[5] && v233[5])
    {
      v88 = v233[4];
      v89 = v239[4];
      v191 = MEMORY[0x1E69E9820];
      v192 = 3221225472;
      v193 = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_5;
      v194 = &unk_1E8405570;
      v195 = theString;
      v196 = v82;
      v198 = &v238;
      v197 = v10;
      v199 = &v232;
      v200 = &v214;
      [__CFString enumerateSubstringsInRange:"enumerateSubstringsInRange:options:usingBlock:" options:? usingBlock:?];
    }

    if (![v10 count] && !v239[5] && v227[5] && v233[5])
    {
      v187 = 0;
      v188 = &v187;
      v189 = 0x2020000000;
      v190 = 0;
      if (![v10 count])
      {
        v101 = v227[5];
        v102 = v227[4] - v233[4];
        v186[14] = MEMORY[0x1E69E9820];
        v186[15] = 3221225472;
        v186[16] = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_6;
        v186[17] = &unk_1E8405598;
        v186[22] = &v232;
        v186[18] = theString;
        v186[19] = v82;
        v186[20] = v10;
        v186[21] = &v226;
        [__CFString enumerateSubstringsInRange:"enumerateSubstringsInRange:options:usingBlock:" options:? usingBlock:?];
        if (v239[4] > (v227[5] + v227[4]))
        {
          v186[7] = MEMORY[0x1E69E9820];
          v186[8] = 3221225472;
          v186[9] = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_7;
          v186[10] = &unk_1E84055C0;
          v186[11] = v82;
          v186[12] = v10;
          v186[13] = &v187;
          [__CFString enumerateSubstringsInRange:"enumerateSubstringsInRange:options:usingBlock:" options:? usingBlock:?];
        }
      }

      v103 = [v10 count];
      if (v103)
      {
        v104 = v103 - 1;
        do
        {
          v105 = [v10 objectAtIndex:v104];
          [(__CFString *)theString rangeOfString:v105 options:4 range:v227[4], location - v227[4]];
          if (v106)
          {
            [v10 removeObjectAtIndex:v104];
          }

          --v104;
        }

        while (v104 != -1);
      }

      goto LABEL_187;
    }

    if (![v10 count] && !v239[5])
    {
      v91 = v239[4];
      v90 = v91 - v156;
      if (v91 > v156)
      {
        v187 = 0;
        v188 = &v187;
        v189 = 0x2020000000;
        v190 = 0;
        v186[0] = MEMORY[0x1E69E9820];
        v186[1] = 3221225472;
        v186[2] = __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_8;
        v186[3] = &unk_1E84055C0;
        v186[4] = v82;
        v186[5] = v10;
        v186[6] = &v187;
        [(__CFString *)theString enumerateSubstringsInRange:v156 options:v90 usingBlock:258, v186];
        v92 = [v10 count];
        if (v92)
        {
          v93 = v92 - 1;
          do
          {
            -[__CFString rangeOfString:options:range:](theString, "rangeOfString:options:range:", [v10 objectAtIndex:v93], 4, v156, location - v156);
            if (v94)
            {
              [v10 removeObjectAtIndex:v93];
            }

            --v93;
          }

          while (v93 != -1);
        }

LABEL_187:
        _Block_object_dispose(&v187, 8);
      }
    }

    [(AppleSpell *)self personalizeEmojiArray:v10, v90];
    v107 = [v10 count];
    if (v107)
    {
      v108 = v107 - 1;
      do
      {
        if ([v10 indexOfObject:{objc_msgSend(v10, "objectAtIndex:", v108)}] < v108)
        {
          [v10 removeObjectAtIndex:v108];
        }

        --v108;
      }

      while (v108 != -1);
    }
  }

  if ((v81 & 1) == 0)
  {
    if (![v173 count])
    {
      v124 = [(AppleSpell *)self _spellServer:a3 suggestGuessesForWordRange:v239[4] - v233[4] inString:v239[5] languageObject:[(__CFString *)theString substringWithRange:?] options:v28, v171];
      v125 = [v124 count];
      if (v125)
      {
        for (m = 0; m != v125; ++m)
        {
          if ([v173 count] > 0x63)
          {
            break;
          }

          v127 = [v124 objectAtIndex:m];
          if (![(AppleSpell *)self noSuggestForCompletion:v127 languageObject:v28 appIdentifier:v166 alreadyCapitalized:(v153 | v158) & 1])
          {
            if (v158)
            {
              v127 = initialCapitalizedString(v127, v163);
            }

            if (([v173 containsObject:v127] & 1) == 0)
            {
              [v173 addObject:v127];
            }
          }
        }
      }
    }

    v34 = 0;
    v157 = 0;
  }

LABEL_196:
  if (v245[4] - 1 >= v165)
  {
    v109 = &stru_1F4E0A7A0;
  }

  else
  {
    v109 = &stru_1F4E0A7A0;
    if (!v245[5])
    {
      [(__CFString *)theString rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__followingSpaceCharacterSet options:12 range:0];
      if (v110)
      {
        v109 = @" ";
      }
    }
  }

  v112 = v239[4];
  v111 = v239[5];
  v169 = v10;
  if ([obj count])
  {
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v113 = [obj countByEnumeratingWithState:&v182 objects:v251 count:16];
    if (v113)
    {
      v114 = *v183;
      do
      {
        for (n = 0; n != v113; ++n)
        {
          if (*v183 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v116 = *(*(&v182 + 1) + 8 * n);
          v117 = objc_alloc(MEMORY[0x1E696AB20]);
          v118 = [v117 initWithRange:location + a6 replacementString:{0, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", v109, v116, @" "}];
          [v177 addObject:v118];
        }

        v113 = [obj countByEnumeratingWithState:&v182 objects:v251 count:16];
      }

      while (v113);
    }

    v111 = 0;
    v119 = 0;
    v112 = location;
  }

  else
  {
    if (v34)
    {
      v120 = objc_alloc(MEMORY[0x1E696AE80]);
      v121 = [v120 initWithRange:v239[4] + a6 replacementString:{v239[5], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", v109, v34, @" "}];
      [v177 addObject:v121];
    }

    else if (v157)
    {
      v122 = objc_alloc(MEMORY[0x1E696AB48]);
      v123 = [v122 initWithRange:v155 + a6 replacementString:{v154, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", v109, v157, @" "}];
      [v177 addObject:v123];

      v111 = v154;
      v112 = v155;
    }

    else if ([v10 count])
    {
      v112 = v215[4];
      v111 = v215[5];
    }

    if (v111)
    {
      v128 = [(__CFString *)theString substringWithRange:v112, v111];
      v119 = v128;
      if (v158)
      {
        v119 = initialCapitalizedString(v128, v163);
      }

      v129 = objc_alloc(MEMORY[0x1E696AB20]);
      v130 = [v129 initWithRange:v112 + a6 replacementString:{v111, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", v109, v119, @" "}];
      [v177 insertObject:v130 atIndex:0];
    }

    else
    {
      v119 = 0;
    }
  }

  v172 = v111;
  if (![obj count] && objc_msgSend(v173, "count"))
  {
    v134 = v245[4];
    if (v134 <= v112)
    {
      v136 = &stru_1F4E0A7A0;
LABEL_249:
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v141 = [v173 countByEnumeratingWithState:&v178 objects:v250 count:16];
      if (v141)
      {
        v142 = *v179;
        do
        {
          for (ii = 0; ii != v141; ++ii)
          {
            if (*v179 != v142)
            {
              objc_enumerationMutation(v173);
            }

            v144 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v136, *(*(&v178 + 1) + 8 * ii)];
            v145 = v144;
            if (!v119 || ([v144 isEqualToString:v119] & 1) == 0)
            {
              v146 = objc_alloc(MEMORY[0x1E696AB20]);
              v147 = [v146 initWithRange:v112 + a6 replacementString:{v172, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", v109, v145, @" "}];
              [v177 addObject:v147];
            }
          }

          v141 = [v173 countByEnumeratingWithState:&v178 objects:v250 count:16];
        }

        while (v141);
      }
    }

    else
    {
      v135 = [(__CFString *)theString substringWithRange:v112, v134 - v112];
      if (!v157)
      {
        v136 = v135;
        if (![v169 count])
        {
          goto LABEL_249;
        }
      }
    }
  }

  if (![obj count] && !v34 && !v157 && objc_msgSend(v169, "count"))
  {
    v131 = [MEMORY[0x1E695DF70] array];
    v132 = [v169 firstObject];
    for (jj = 1; jj < [v169 count]; ++jj)
    {
      [v131 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", v109, objc_msgSend(v169, "objectAtIndex:", jj), @" "}];
    }

    v137 = objc_alloc(MEMORY[0x1E696ABB8]);
    v138 = [v137 initWithRange:v215[4] + a6 replacementString:v215[5] alternativeStrings:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", v109, v132, @" ", v131}];
    [v177 addObject:v138];
  }

LABEL_246:
  [(AppleSpell *)self invalidateTagger:v159];
LABEL_247:
  _Block_object_dispose(v213, 8);
  _Block_object_dispose(&v214, 8);
  _Block_object_dispose(&v220, 8);
  _Block_object_dispose(&v226, 8);
  _Block_object_dispose(&v232, 8);
  _Block_object_dispose(&v238, 8);
  _Block_object_dispose(&v244, 8);
  v139 = *MEMORY[0x1E69E9840];
  return v177;
}

id __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "punctuationCharacterSet")}];
  [v2 invert];
  spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__nonPunctuationWhitespaceAndNewlineCharacterSet = [v2 copy];
  spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__terminatorCharacterSet = [*(a1 + 32) sentenceTerminatorCharacterSet];
  spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__nonPunctuationCharacterSet = [objc_msgSend(MEMORY[0x1E696AB08] "punctuationCharacterSet")];
  spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@".!?։۔।።᙮‼‽⁈⁉。！．？｡, ;:]}”’"}]);
  spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__followingSpaceCharacterSet = result;
  return result;
}

uint64_t __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [*(a1 + 32) rangeOfComposedCharacterSequencesForRange:?];
  v11 = v10;
  result = [*(a1 + 32) rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__nonPunctuationWhitespaceAndNewlineCharacterSet options:0 range:{v9, v10}];
  if (v13)
  {
    v14 = *(a1 + 48);
    if (v9 + v11 < v14)
    {
      if (v9 + v11 + 1 != v14)
      {
        goto LABEL_8;
      }

      result = [*(a1 + 32) characterAtIndex:v14 - 1];
      if (result != 8217 && result != 39)
      {
        goto LABEL_8;
      }

      ++v11;
    }

    v15 = *(*(a1 + 40) + 8);
    *(v15 + 32) = v9;
    *(v15 + 40) = v11;
LABEL_8:
    *a7 = 1;
  }

  return result;
}

uint64_t __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [*(a1 + 32) rangeOfComposedCharacterSequencesForRange:?];
  v11 = v10;
  result = [*(a1 + 32) rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__nonPunctuationWhitespaceAndNewlineCharacterSet options:0 range:{v9, v10}];
  if (v13)
  {
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 32);
    v16 = v9 + v11;
    if (v9 <= *(v14 + 40) + v15 && v16 >= v15)
    {
      *(v14 + 40) = v16 - v15;
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 32);
    }

    v18 = *(a1 + 56) + *(a1 + 48);
    if (v18 >= v15 && v18 <= *(v14 + 40) + v15)
    {
      *(v14 + 40) = v18 - v15;
    }

    *a7 = 1;
  }

  return result;
}

uint64_t __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [*(a1 + 32) rangeOfComposedCharacterSequencesForRange:?];
  v11 = v10;
  result = [*(a1 + 32) rangeOfCharacterFromSet:spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography__nonPunctuationWhitespaceAndNewlineCharacterSet options:0 range:{v9, v10}];
  if (v13)
  {
    v14 = *(*(a1 + 40) + 8);
    if (!*(v14 + 40))
    {
      *(v14 + 32) = v9 + v11;
    }

    v15 = *(*(a1 + 48) + 8);
    if (!*(v15 + 40))
    {
      *(v15 + 32) = v9;
      *(v15 + 40) = v11;
      v16 = *(*(*(a1 + 64) + 8) + 32) - (v9 + v11);
      v17 = *(*(a1 + 56) + 8);
      *(v17 + 32) = v9 + v11;
      *(v17 + 40) = v16;
    }

    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 32);
    v20 = v19 > v9;
    v21 = v19 - v9;
    if (v20)
    {
      v22 = v21 + *(v18 + 40);
      *(v18 + 32) = v9;
      *(v18 + 40) = v22;
    }

    v23 = *(*(a1 + 72) + 8);
    v24 = *(v23 + 24);
    *(v23 + 24) = v24 + 1;
    if (v24 >= 6)
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_5(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = *(*(a1 + 56) + 8);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = [*(a1 + 32) substringWithRange:?];
  v14 = a3 > *(*(*(a1 + 64) + 8) + 32) && [*(a1 + 32) characterAtIndex:a3 - 1] == 45;
  _addEmojiForStringToArray(v13, *(a1 + 40), *(a1 + 48), 0, v14);
  result = [*(a1 + 48) count];
  if (result)
  {
    v16 = *(*(*(a1 + 56) + 8) + 32) - a3 + *(*(*(a1 + 56) + 8) + 40);
    v17 = *(*(a1 + 72) + 8);
    *(v17 + 32) = a3;
    *(v17 + 40) = v16;
    *a7 = 1;
  }

  return result;
}

unint64_t __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_6(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = *(*(a1 + 56) + 8);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = [*(a1 + 32) substringWithRange:?];
  v14 = a3 > *(*(*(a1 + 64) + 8) + 32) && [*(a1 + 32) characterAtIndex:a3 - 1] == 45;
  _addEmojiForStringToArray(v13, *(a1 + 40), *(a1 + 48), 0, v14);
  result = [*(a1 + 48) count];
  if (result >= 5)
  {
    *a7 = 1;
  }

  return result;
}

unint64_t __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  _addEmojiForStringToArray(a2, *(a1 + 32), *(a1 + 40), 1, 0);
  result = [*(a1 + 40) count];
  if (result > 4 || (v10 = *(*(a1 + 48) + 8), v11 = *(v10 + 24), *(v10 + 24) = v11 + 1, v11 >= 0x11))
  {
    *a7 = 1;
  }

  return result;
}

unint64_t __107__AppleSpell_Completion__spellServer_candidatesForSelectedRange_inString_offset_types_options_orthography___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  _addEmojiForStringToArray(a2, *(a1 + 32), *(a1 + 40), 1, 0);
  result = [*(a1 + 40) count];
  if (result > 4 || (v10 = *(*(a1 + 48) + 8), v11 = *(v10 + 24), *(v10 + 24) = v11 + 1, v11 >= 0x11))
  {
    *a7 = 1;
  }

  return result;
}

- (id)vietnameseModificationForWord:(id)a3
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:{objc_msgSend(a3, "decomposedStringWithCanonicalMapping")}];
  if (vietnameseModificationForWord__onceToken != -1)
  {
    [AppleSpell(Correction) vietnameseModificationForWord:];
  }

  v4 = [v3 length];
  do
  {
    if (v4 >= 2)
    {
      v5 = [v3 characterAtIndex:--v4];
      if (([vietnameseModificationForWord__vietnameseVowelCharacterSet characterIsMember:v5] & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  while (![vietnameseModificationForWord__vietnameseToneLetterCharacterSet characterIsMember:v5]);
  v6 = 1;
  [v3 replaceCharactersInRange:v4 withString:{1, &stru_1F4E0A7A0}];
  if (v5 == [v3 characterAtIndex:v4 - 1])
  {
    v7 = 0;
    goto LABEL_18;
  }

  if (v5 <= 113)
  {
    if (v5 != 102)
    {
      if (v5 == 106)
      {
        v6 = 0;
        v7 = @"̣";
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v6 = 0;
    v7 = @"̀";
  }

  else
  {
    switch(v5)
    {
      case 'r':
        v6 = 0;
        v7 = @"̉";
        break;
      case 's':
        v6 = 0;
        v7 = @"́";
        break;
      case 'x':
        v6 = 0;
        v7 = @"̃";
        break;
      default:
LABEL_17:
        v7 = 0;
        v6 = 1;
        break;
    }
  }

LABEL_18:
  [v3 replaceOccurrencesOfString:@"dd" withString:@"đ" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"aa" withString:@"â" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"ee" withString:@"ê" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"oo" withString:@"ô" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"aw" withString:@"ă" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"ow" withString:@"ơ" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"uw" withString:@"ư" options:0 range:{0, objc_msgSend(v3, "length")}];
  if ((v6 & 1) == 0)
  {
    v8 = [v3 length];
    while (v8)
    {
      if ([vietnameseModificationForWord__vietnameseToneVowelCharacterSet characterIsMember:{objc_msgSend(v3, "characterAtIndex:", --v8)}])
      {
        if (v8 && (([vietnameseModificationForWord__vietnameseToneVowelCharacterSet characterIsMember:{objc_msgSend(v3, "characterAtIndex:", v8 - 1)}] & 1) != 0 || objc_msgSend(vietnameseModificationForWord__vietnameseAccentCharacterSet, "characterIsMember:", objc_msgSend(v3, "characterAtIndex:", v8 - 1))))
        {
          --v8;
        }

        v9 = v8 + 1;
        if (v8 + 1 < [v3 length])
        {
          if ([vietnameseModificationForWord__vietnameseAccentCharacterSet characterIsMember:{objc_msgSend(v3, "characterAtIndex:", v8 + 1)}])
          {
            v10 = v8 + 1;
          }

          else
          {
            v10 = v8;
          }

          v9 = v10 + 1;
        }

        [v3 replaceCharactersInRange:v9 withString:{0, v7}];
        break;
      }
    }
  }

  return [v3 precomposedStringWithCanonicalMapping];
}

id __56__AppleSpell_Correction__vietnameseModificationForWord___block_invoke()
{
  vietnameseModificationForWord__vietnameseVowelCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"aeiou"];
  vietnameseModificationForWord__vietnameseToneVowelCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"aeou"];
  vietnameseModificationForWord__vietnameseToneLetterCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"fjrsxz"];
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"̛̂̆"];
  vietnameseModificationForWord__vietnameseAccentCharacterSet = result;
  return result;
}

- (char)_validatedGuessWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 checkUser:(BOOL)a8 additionalBuffer:(char *)a9
{
  if (a9)
  {
    result = CFStringCreateWithBytes(0, a3, a4, 0x8000100u, 0);
    if (result)
    {
      result = [(AppleSpell *)self vietnameseModificationForWord:result];
      if (result)
      {
        v13 = result;
        v14 = [result length];
        v18 = 0;
        v19.location = 0;
        v19.length = v14;
        Bytes = CFStringGetBytes(v13, v19, 0x8000100u, 0x5Fu, 0, a9, 24, &v18);
        result = 0;
        if (v14 == Bytes)
        {
          a9[v18] = 0;
          HIBYTE(usedBufLen) = 1;
          *(&usedBufLen + 3) = 257;
          BYTE2(usedBufLen) = a8;
          LOWORD(usedBufLen) = 1;
          if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a9 languageObject:usedBufLen connection:0 sender:? checkBase:? checkDict:? checkTemp:? checkUser:? checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
          {
            return a9;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  else
  {
    HIBYTE(usedBufLena) = 1;
    *(&usedBufLena + 3) = 257;
    BYTE2(usedBufLena) = a8;
    LOWORD(usedBufLena) = 1;
    if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:a4 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLena checkUser:0 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_addGuessesForWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 minAutocorrectionLength:(unint64_t)a8 previousLetter:(unsigned __int16)a9 nextLetter:(unsigned __int16)a10 basicOnly:(BOOL)a11 toGuesses:(id)a12
{
  v228 = *MEMORY[0x1E69E9840];
  v16 = [a5 encoding];
  v222 = [a5 accents];
  v193 = [a5 isEnglish];
  if (v193)
  {
    v17 = 0;
  }

  else if ([a5 isVietnamese])
  {
    v17 = &v225;
  }

  else
  {
    v17 = 0;
  }

  v18 = *a3;
  v19 = v18 - 65;
  v20 = (v18 - 65) < 0x1A;
  v223 = v16;
  if (v16 > 1279)
  {
    if (v16 == 1284 || v16 == 1280)
    {
      v20 = 1;
      if (v19 >= 0x1A && (v18 - 192) >= 0x17)
      {
        if ((v18 - 216) < 7)
        {
          goto LABEL_29;
        }

        v20 = 0;
        if ((v18 - 138) <= 0x15 && ((1 << (v18 + 118)) & 0x200015) != 0)
        {
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    if (v16 != 514)
    {
      v21 = (v18 - 161) < 0xC || (v18 - 174) < 0x22;
      v22 = v19 < 0x1A || v21;
      if (v16 == 517)
      {
        v20 = v22;
      }

      goto LABEL_30;
    }

    v20 = 1;
    if (v19 >= 0x1A && (v18 - 192) >= 0x17)
    {
      v20 = 0;
      if ((v18 - 161) <= 0x3D && ((1 << (v18 + 95)) & 0x3F80000000006F35) != 0)
      {
LABEL_29:
        v23 = a4 > 1;
        v214 = 1;
        goto LABEL_35;
      }
    }
  }

LABEL_30:
  v23 = a4 > 1 && v20;
  if (!*a3)
  {
    v25 = 1;
    goto LABEL_72;
  }

  v214 = v20;
LABEL_35:
  v24 = a3 + 1;
  v25 = 1;
  do
  {
    v26 = v18;
    if (isAnyAlphaX(v18, v16))
    {
      v27 = v26 - 65;
      v28 = (v26 - 65) < 0x1A;
      if (v16 > 1279)
      {
        if (v16 == 1284 || v16 == 1280)
        {
          v28 = 1;
          if (v27 >= 0x1A && (v26 - 192) >= 0x17 && (v26 - 216) >= 7 && ((v26 - 138) > 0x15 || ((1 << (v26 + 118)) & 0x200015) == 0))
          {
            v28 = 0;
          }
        }
      }

      else
      {
        v29 = 0x3F80000000006F35uLL >> (v26 + 95);
        if ((v26 + 95) >= 0x3Eu)
        {
          LOBYTE(v29) = 0;
        }

        if ((v26 - 192) >= 0x17)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1;
        }

        if (v27 < 0x1A)
        {
          v30 = 1;
        }

        v31 = (v26 - 161) < 0xC || (v26 - 174) < 0x22;
        v32 = v27 < 0x1A || v31;
        if (v16 == 517)
        {
          v28 = v32;
        }

        if (v16 == 514)
        {
          v28 = v30;
        }
      }

      v23 &= v28;
    }

    else
    {
      if (v26 == 45)
      {
        v33 = v25;
      }

      else
      {
        v33 = 0;
      }

      if (v26 != 39)
      {
        v25 = v33;
      }
    }

    v34 = *v24++;
    LOBYTE(v18) = v34;
  }

  while (v34);
  v20 = v214;
LABEL_72:
  v197 = v23;
  v198 = (v23 ^ 1) & v20;
  v199 = (v17 == 0) & (v25 ^ 1);
  if (a4 >= a8 && v222 && (v23 & 1) == 0 && a4 <= 0x1B && ((v17 == 0) & (v25 ^ 1)) == 0 && ([a12 isFull] & 1) == 0)
  {
    v35 = *a3;
    if (*a3)
    {
      v36 = a3 + 1;
      v37 = &v226;
      do
      {
        *v37++ = v35;
        v38 = *v36++;
        v35 = v38;
      }

      while (v38);
    }

    else
    {
      v37 = &v226;
    }

    *v37 = 0;
    v209 = v226;
    if (v226)
    {
      if (v198)
      {
        v39 = 3;
      }

      else
      {
        v39 = 1;
      }

      v200 = &v226;
      do
      {
        v40 = *v222;
        if (*v222)
        {
          v204 = v200 + 1;
          v41 = v222;
          do
          {
            if (v40 == v209)
            {
              *v200 = v41[1];
              v42 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
              if (v42)
              {
                [a12 addCandidateWithBuffer:v42 encoding:v223 transform:v39 errorType:1];
              }

              v43 = *v204;
              if (*v204)
              {
                v44 = v200 + 1;
                do
                {
                  v45 = *v222;
                  if (*v222)
                  {
                    v46 = v222 + 2;
                    do
                    {
                      if (v45 == v43)
                      {
                        *v44 = *(v46 - 1);
                        v47 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
                        if (v47)
                        {
                          [a12 addCandidateWithBuffer:v47 encoding:v223 transform:v39 errorType:1];
                        }
                      }

                      v48 = *v46;
                      v46 += 2;
                      v45 = v48;
                    }

                    while (v48);
                  }

                  *v44 = v43;
                  v49 = *++v44;
                  v43 = v49;
                }

                while (v49);
              }
            }

            v50 = v41[2];
            v41 += 2;
            v40 = v50;
          }

          while (v50);
        }

        *v200 = v209;
        v51 = *++v200;
        v209 = v51;
      }

      while (v51);
    }
  }

  if (a4 > a8 && v223 == 1280 && ([a12 isFull] & 1) == 0)
  {
    v52 = *a3;
    if (*a3)
    {
      v53 = a3 + 1;
      v54 = &v226;
      do
      {
        *v54++ = v52;
        v55 = *v53++;
        v52 = v55;
      }

      while (v55);
    }

    else
    {
      v54 = &v226;
    }

    *v54 = 0;
    v56 = v226;
    if (v226)
    {
      v57 = &v226;
      while (v56 - 65 >= 0x1A && v56 - 192 >= 0x17)
      {
        if (v56 - 216 < 7 || v56 - 138 <= 0x15 && ((1 << (v56 + 118)) & 0x200015) != 0)
        {
          if (v56 - 216 >= 7)
          {
            v59 = v56;
            if (v56 - 138 > 0x15)
            {
              goto LABEL_131;
            }

            v59 = v56;
            if (((1 << (v56 + 118)) & 0x200015) == 0)
            {
              goto LABEL_131;
            }

LABEL_128:
            if (v56 == 159)
            {
              v59 = -1;
            }

            else
            {
              v59 = v56 + 16;
            }

            goto LABEL_131;
          }

          goto LABEL_125;
        }

        if (v56 - 97 < 0x1A || v56 > 0xF7u || v56 - 223 < 0x18)
        {
          if (v56 - 154 > 4 || ((1 << (v56 + 102)) & 0x15) == 0)
          {
            v59 = v56;
            if (v56 != 223)
            {
              if (v56 == 255)
              {
                v59 = -97;
              }

              else
              {
                v59 = v56 - 32;
              }
            }

            goto LABEL_131;
          }
        }

        else
        {
          v59 = v56;
          if (v56 - 154 > 4)
          {
            goto LABEL_131;
          }

          v59 = v56;
          if (((1 << (v56 + 102)) & 0x15) == 0)
          {
            goto LABEL_131;
          }
        }

        v59 = v56 - 16;
LABEL_131:
        *v57 = v59;
        if ([(AppleSpell *)self checkNameWordBuffer:&v226 length:a4 languageObject:a5 globalOnly:0])
        {
          [a12 addCandidateWithBuffer:&v226 encoding:1280 errorType:2];
        }

        *v57 = v56;
        v60 = *++v57;
        v56 = v60;
        if (!v60)
        {
          goto LABEL_148;
        }
      }

      if (v56 - 138 <= 0x15 && ((1 << (v56 + 118)) & 0x200015) != 0)
      {
        goto LABEL_128;
      }

LABEL_125:
      v59 = v56 + 32;
      goto LABEL_131;
    }
  }

LABEL_148:
  v61 = v193 & v198 ^ 1;
  if (a4 <= a8)
  {
    v61 = 1;
  }

  if ((v61 & 1) == 0)
  {
    v62 = a4 - 1;
    if (a3[a4 - 1] == 115 && a3[a4 - 2] != 39 && ([a12 isFull] & 1) == 0)
    {
      v63 = *a3;
      if (*a3)
      {
        v64 = a3 + 1;
        v65 = &v226;
        do
        {
          *v65++ = v63;
          v66 = *v64++;
          v63 = v66;
        }

        while (v66);
      }

      *(&v226 + v62) = 0;
      if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:&v226 languageObject:a4 - 1 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:0x100000101000001 checkUser:0 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
      {
        *(&v226 + v62) = 39;
        *(&v226 + a4) = 115;
        [a12 addCandidateWithBuffer:&v226 encoding:v223 errorType:3];
      }
    }
  }

  v68 = a4 < a8 || a4 > 0x1B;
  if (((v68 | v199) & 1) == 0 && ([a12 isFull] & 1) == 0)
  {
    v69 = *a3;
    if (*a3)
    {
      v70 = a3 + 1;
      v71 = &v226;
      do
      {
        *v71++ = v69;
        v72 = *v70++;
        v69 = v72;
      }

      while (v72);
    }

    else
    {
      v71 = &v226;
    }

    *v71 = 0;
    if (a4)
    {
      v73 = 26;
      if (v223 == 517)
      {
        v73 = 32;
      }

      v201 = v73;
      v74 = 97;
      if (v223 == 517)
      {
        v74 = -48;
      }

      v190 = v74;
      v75 = 3;
      if ((v198 & 1) == 0)
      {
        v75 = 1;
      }

      if (v197)
      {
        v75 = 2;
      }

      v210 = v75;
      v76 = a4;
      do
      {
        v77 = v76 - 1;
        if (v76 == 1 && !isAnyAlphaX(v227, v223))
        {
          break;
        }

        v78 = &v226 + v77;
        if (v76 != a4 || isAnyAlphaX(*(v78 - 1), v223))
        {
          v215 = v76 == 1;
          v205 = v76 - 1;
          v79 = *(&v226 + v77);
          v80 = toLowerX(v79, v223);
          v216 = v197 | v198 & v215;
          v81 = v190;
          v82 = v201;
          do
          {
            if (v80 != v81 && adjacentMatch(v80, v81, v223))
            {
              v83 = (v216 & 1) != 0 ? toUpperX(v81, v223) : v81;
              *v78 = v83;
              v84 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
              if (v84)
              {
                [a12 addReplacementCandidateWithBuffer:v84 encoding:v223 transform:v210 intendedCharacter:*v78 actualCharacter:v79];
              }
            }

            ++v81;
            --v82;
          }

          while (v82);
          *v78 = v79;
          v77 = v205;
        }

        v76 = v77;
      }

      while (v77);
    }
  }

  v85 = v223;
  if (!((a4 < a8) | (a11 | v199) & 1))
  {
    v87 = a3;
    if (([a12 isFull] & 1) == 0)
    {
      v92 = *a3;
      if (*a3)
      {
        v93 = a3 + 1;
        v94 = &v226;
        do
        {
          *v94++ = v92;
          v95 = *v93++;
          v92 = v95;
        }

        while (v95);
      }

      else
      {
        v94 = &v226;
      }

      *v94 = 0;
      v96 = v226;
      if (v226)
      {
        v97 = 3;
        if ((v198 & 1) == 0)
        {
          v97 = 1;
        }

        if (v197)
        {
          v97 = 2;
        }

        v217 = v97;
        v98 = &v227;
        do
        {
          v99 = *v98;
          if (!*v98)
          {
            break;
          }

          if (isAnyAlphaX(v96, v223) && isAnyAlphaX(v99, v223))
          {
            *(v98 - 1) = v99;
            *v98 = v96;
            v100 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
            if (v100)
            {
              [a12 addTranspositionCandidateWithBuffer:v100 encoding:v223 transform:v217 intendedFirstCharacter:*(v98 - 1) intendedSecondCharacter:*v98];
            }

            v99 = *(v98 - 1);
            *(v98 - 1) = *v98;
            *v98 = v99;
          }

          ++v98;
          v96 = v99;
        }

        while (v99);
      }
    }

    if (a4 > 0x1B)
    {
      v191 = 0;
      goto LABEL_230;
    }

    if (([a12 isFull] & 1) == 0)
    {
      v101 = *a3;
      if (*a3)
      {
        v102 = a3 + 1;
        v103 = &v226;
        do
        {
          *v103++ = v101;
          v104 = *v102++;
          v101 = v104;
        }

        while (v104);
      }

      else
      {
        v103 = &v226;
      }

      *v103 = 0;
      if (a4)
      {
        if (v223 == 517)
        {
          v175 = 32;
        }

        else
        {
          v175 = 26;
        }

        v176 = 97;
        if (v223 == 517)
        {
          v176 = -48;
        }

        v187 = v176;
        v189 = v175;
        v177 = 3;
        if ((v198 & 1) == 0)
        {
          v177 = 1;
        }

        if (v197)
        {
          v177 = 2;
        }

        v208 = v177;
        v178 = a4;
        do
        {
          v179 = v178 - 1;
          if (v178 == 1 && !isAnyAlphaX(v227, v223))
          {
            break;
          }

          if (v178 != a4 || isAnyAlphaX(*(&v226 + v179 - 1), v223))
          {
            v180 = &v226 + v179;
            v203 = v179;
            v213 = *(&v226 + v179);
            v181 = toLowerX(*(&v226 + v179), v223);
            v221 = v197 | v198 & (v179 == 0);
            v183 = v187;
            v182 = v189;
            do
            {
              if (v181 != v183 && !adjacentMatch(v181, v183, v223))
              {
                v184 = (v221 & 1) != 0 ? toUpperX(v183, v223) : v183;
                *v180 = v184;
                v185 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
                if (v185)
                {
                  [a12 addReplacementCandidateWithBuffer:v185 encoding:v223 transform:v208 intendedCharacter:*v180 actualCharacter:v213];
                }
              }

              ++v183;
              --v182;
            }

            while (v182);
            *v180 = v213;
            v179 = v203;
          }

          v178 = v179;
        }

        while (v179);
      }
    }
  }

  v86 = a11;
  if (!v222)
  {
    v86 = 1;
  }

  v191 = ((a4 < a8) | a11 | v199) ^ 1;
  if (a4 > 0x1B || a4 < a8)
  {
    v188 = 1;
LABEL_259:
    v87 = a3;
    goto LABEL_261;
  }

  v87 = a3;
  if (((v86 | v199) & 1) == 0)
  {
    if ([a12 isFull])
    {
      goto LABEL_260;
    }

    v88 = *a3;
    if (*a3)
    {
      v89 = a3 + 1;
      v90 = &v226;
      do
      {
        *v90++ = v88;
        v91 = *v89++;
        v88 = v91;
      }

      while (v91);
    }

    else
    {
      v90 = &v226;
    }

    *v90 = 0;
    if (!a4)
    {
LABEL_260:
      v188 = 0;
      goto LABEL_261;
    }

    v105 = 3;
    if ((v198 & 1) == 0)
    {
      v105 = 1;
    }

    if (v197)
    {
      v106 = 2;
    }

    else
    {
      v106 = v105;
    }

    v206 = v106;
    v107 = a4;
    do
    {
      v108 = v107 - 1;
      if (v107 == 1 && !isAnyAlphaX(v227, v85))
      {
        break;
      }

      v109 = &v226 + v108;
      if (v107 != a4 || isAnyAlphaX(*(v109 - 1), v85))
      {
        v218 = *v109;
        if (*v222)
        {
          v110 = toLowerX(*v109, v223);
          v111 = v222 + 2;
          do
          {
            v112 = *(v111 - 1);
            if (v110 != v112)
            {
              if (v197 & 1 | v198 & (v107 == 1))
              {
                LOBYTE(v112) = toUpperX(v112, v223);
              }

              *v109 = v112;
              v113 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
              if (v113)
              {
                [a12 addReplacementCandidateWithBuffer:v113 encoding:v223 transform:v206 intendedCharacter:*v109 actualCharacter:v218];
              }
            }

            v114 = *v111;
            v111 += 2;
          }

          while (v114);
        }

        *v109 = v218;
        v85 = v223;
        v108 = v107 - 1;
      }

      v107 = v108;
    }

    while (v108);
    v188 = 0;
    goto LABEL_259;
  }

LABEL_230:
  v188 = 1;
LABEL_261:
  if (a4 >= a8 && !a11 && ([a12 isFull] & 1) == 0 && *v87)
  {
    v115 = 0;
    v219 = &v87[a4 - 1];
    v116 = v87;
    while (1)
    {
      if (v116 == v87 && !isAnyAlphaX(v87[1], v85) || v116 == v219 && !isAnyAlphaX(v87[a4 - 2], v85))
      {
        goto LABEL_299;
      }

      v117 = *v87;
      if (*v87)
      {
        v118 = &v226;
        v119 = (v87 + 1);
        v120 = v115;
        do
        {
          if (v120)
          {
            *v118++ = v117;
          }

          v121 = *v119++;
          v117 = v121;
          --v120;
        }

        while (v121);
      }

      else
      {
        v118 = &v226;
      }

      *v118 = 0;
      v122 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 - 1 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
      if (!v122)
      {
        goto LABEL_299;
      }

      if (v116 != v87)
      {
        break;
      }

      v124 = *v87;
      v125 = v124 == a9;
      if (v116 == v219 && v124 != a9)
      {
        goto LABEL_284;
      }

LABEL_285:
      if (a4 != a8 || v125)
      {
        if ((v198 & (v116 == v87)) != 0)
        {
          v123 = 3;
        }

        else
        {
          v123 = 0;
        }

        if (!v125)
        {
          goto LABEL_292;
        }

        [a12 addCandidateWithBuffer:v122 encoding:v85 transform:v123 errorType:5];
      }

LABEL_299:
      v128 = *++v116;
      ++v115;
      if (!v128)
      {
        goto LABEL_300;
      }
    }

    if (v116 != v219)
    {
      if (a4 != a8)
      {
        v123 = 0;
LABEL_292:
        if (v116 <= v87)
        {
          v126 = 0;
        }

        else
        {
          v126 = *(v116 - 1);
        }

        if (v116 >= v219)
        {
          v127 = 0;
        }

        else
        {
          v127 = v116[1];
        }

        [a12 addInsertionCandidateWithBuffer:v122 encoding:v85 transform:v123 intendedPrecedingCharacter:v126 insertedCharacter:*v116 intendedFollowingCharacter:v127];
        goto LABEL_299;
      }

      goto LABEL_299;
    }

LABEL_284:
    v125 = *v116 == a10;
    goto LABEL_285;
  }

LABEL_300:
  if ((v191 & 1) != 0 && ([a12 isFull] & 1) == 0)
  {
    v129 = *a3;
    if (*a3)
    {
      v130 = a3 + 1;
      v131 = &v226;
      do
      {
        *v131++ = v129;
        v132 = *v130++;
        v129 = v132;
      }

      while (v132);
    }

    else
    {
      v131 = &v226;
    }

    *v131 = 0;
    v186 = &v226 + a4;
    if ((a4 & 0x8000000000000000) == 0)
    {
      v133 = &v226 + a4;
      do
      {
        v133[1] = *v133;
        --v133;
      }

      while (&v226 <= v133);
    }

    if (v226)
    {
      if (v85 == 517)
      {
        v134 = 32;
      }

      else
      {
        v134 = 26;
      }

      v135 = 97;
      if (v85 == 517)
      {
        v135 = -48;
      }

      v192 = v135;
      v194 = v134;
      v136 = 3;
      if ((v198 & 1) == 0)
      {
        v136 = 1;
      }

      if (v197)
      {
        v136 = 2;
      }

      v207 = v136;
      v137 = 0;
      while (1)
      {
        v138 = &v226 + v137;
        v220 = v137;
        if (!v137)
        {
          break;
        }

        if (v137 != 1)
        {
          goto LABEL_326;
        }

        v139 = isAnyAlphaX(v138[1], v85);
        v137 = v220;
        if (v139)
        {
          goto LABEL_326;
        }

LABEL_355:
        ++v137;
        if (!*(&v226 + v137))
        {
          goto LABEL_356;
        }
      }

      v140 = isAnyAlphaX(v138[2], v85);
      v137 = 0;
      if ((v140 & 1) == 0)
      {
        goto LABEL_355;
      }

LABEL_326:
      if (v138 == v186 - 1)
      {
        v141 = isAnyAlphaX(*(v186 - 2), v85);
        v137 = v220;
        if (!v141)
        {
          goto LABEL_355;
        }
      }

      if (v137 == a4)
      {
        v142 = isAnyAlphaX(*(v138 - 2), v85);
        v137 = v220;
        if (!v142)
        {
          goto LABEL_355;
        }
      }

      v143 = v138;
      v211 = v197 | v198 & (v137 == 0);
      v145 = v192;
      v144 = v194;
      while (1)
      {
        v146 = v145;
        if (v211)
        {
          v146 = toUpperX(v145, v85);
        }

        *v143 = v146;
        v147 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 + 1 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
        if (!v147)
        {
          break;
        }

        v148 = v147;
        v149 = *(&v226 + v220);
        if (v220)
        {
          if (v220 != a4 || v149 != a10)
          {
            v150 = *(v143 - 1);
            goto LABEL_348;
          }
        }

        else
        {
          v158 = a9;
          if (!a4 && v149 != a9)
          {
            v158 = a10;
          }

          if (v149 != v158)
          {
            v150 = 0;
LABEL_348:
            if (v220 >= a4)
            {
              v154 = 0;
            }

            else
            {
              v154 = v143[1];
            }

            v155 = a12;
            v156 = v85;
            v157 = v207;
LABEL_352:
            [v155 addOmissionCandidateWithBuffer:v148 encoding:v156 transform:v157 intendedPrecedingCharacter:v150 omittedCharacter:v149 intendedFollowingCharacter:v154];
            goto LABEL_353;
          }
        }

        [a12 addCandidateWithBuffer:v147 encoding:v85 transform:v207 errorType:5];
LABEL_353:
        ++v145;
        if (!--v144)
        {
          *v143 = v143[1];
          v137 = v220;
          goto LABEL_355;
        }
      }

      if (v220)
      {
        goto LABEL_353;
      }

      v151 = *v143;
      v152 = toUpperX(*v143, v85);
      if (v152 == v151)
      {
        goto LABEL_353;
      }

      *v143 = v152;
      v153 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 + 1 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
      if (!v153)
      {
        goto LABEL_353;
      }

      v148 = v153;
      v149 = *v143;
      v154 = v143[1];
      v155 = a12;
      v156 = v85;
      v157 = 0;
      v150 = 0;
      goto LABEL_352;
    }
  }

LABEL_356:
  if ((v188 & 1) == 0 && ([a12 isFull] & 1) == 0)
  {
    v159 = *a3;
    if (*a3)
    {
      v160 = a3 + 1;
      v161 = &v226;
      do
      {
        *v161++ = v159;
        v162 = *v160++;
        v159 = v162;
      }

      while (v162);
    }

    else
    {
      v161 = &v226;
    }

    *v161 = 0;
    v202 = &v226 + a4;
    v163 = &v226;
    do
    {
      v164 = &v163[a4];
      v164[1] = v163[a4];
      --v163;
    }

    while (&v226 <= v164 - 1);
    if (v226)
    {
      v165 = 0;
      v166 = 3;
      if ((v198 & 1) == 0)
      {
        v166 = 1;
      }

      if (v197)
      {
        v166 = 2;
      }

      v212 = v166;
      do
      {
        v167 = &v226 + v165;
        if (v165)
        {
          if (v165 != 1 || isAnyAlphaX(v167[1], v85))
          {
LABEL_376:
            if ((v167 != v202 - 1 || isAnyAlphaX(*(v202 - 2), v85)) && (v165 != a4 || isAnyAlphaX(*(v167 - 2), v85)))
            {
              if (*v222)
              {
                v168 = v222 + 2;
                do
                {
                  v169 = *(v168 - 1);
                  if (v197 & 1 | v198 & (v165 == 0))
                  {
                    LOBYTE(v169) = toUpperX(v169, v85);
                  }

                  *v167 = v169;
                  v170 = [(AppleSpell *)self _validatedGuessWordBuffer:&v226 length:a4 + 1 languageObject:a5 connection:a6 sender:a7 checkUser:0 additionalBuffer:v17];
                  if (v170)
                  {
                    if (v165)
                    {
                      v171 = *(v167 - 1);
                    }

                    else
                    {
                      v171 = 0;
                    }

                    if (v165 >= a4)
                    {
                      v172 = 0;
                    }

                    else
                    {
                      v172 = v167[1];
                    }

                    [a12 addOmissionCandidateWithBuffer:v170 encoding:v85 transform:v212 intendedPrecedingCharacter:v171 omittedCharacter:*(&v226 + v165) intendedFollowingCharacter:v172];
                  }

                  v173 = *v168;
                  v168 += 2;
                }

                while (v173);
              }

              *v167 = v167[1];
            }
          }
        }

        else if (isAnyAlphaX(v167[2], v85))
        {
          goto LABEL_376;
        }

        ++v165;
      }

      while (*(&v226 + v165));
    }
  }

  v174 = *MEMORY[0x1E69E9840];
}

- (BOOL)_findMatchingRangesForRange:(_NSRange)a3 inString:(id)a4 keyEventArray:(id)a5 endingAtIndex:(unint64_t)a6 matchingStringRange:(_NSRange *)a7 correctableStringRange:(_NSRange *)a8 matchingKeyEventRange:(_NSRange *)a9 firstMisspelledKeyEventIndex:(unint64_t *)a10 lastMisspelledKeyEventIndex:(unint64_t *)a11 previousBackspaceCount:(unint64_t *)a12
{
  length = a3.length;
  location = a3.location;
  v15 = [a4 length];
  v16 = [a5 count];
  if (_findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__onceToken == -1)
  {
    if (a6)
    {
LABEL_3:
      v17 = 0;
      v18 = 0;
      v54 = 0;
      v50 = location + length;
      v19 = a6;
      v48 = a6;
      v56 = v16;
      v57 = a6;
      v20 = v16;
      v58 = 0x7FFFFFFFFFFFFFFFLL;
      v55 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v21 = v20;
            if (v19 > v15 || !v20 || v20 > v16)
            {
LABEL_52:
              v20 = v21;
LABEL_53:
              a6 = v48;
              v43 = v55;
              v32 = v56;
              goto LABEL_57;
            }

            --v20;
            v22 = [a5 objectAtIndex:v21 - 1];
            v23 = v21 < 2 ? 0 : [a5 objectAtIndex:v21 - 2];
            if (([v22 flags] & 0x400) == 0)
            {
              break;
            }

            ++v17;
            v18 = 1;
          }

          if (!v17)
          {
            break;
          }

          --v17;
        }

        v52 = v18;
        v24 = [v22 characters];
        v25 = [a4 rangeOfString:v24 options:13 range:{0, v19}];
        v27 = v26;
        if (v23 && ![objc_msgSend(v23 "characters")])
        {
          goto LABEL_52;
        }

        if ([v24 length] == 1)
        {
          v28 = [v24 characterAtIndex:0];
          v29 = [_findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__wsSet characterIsMember:v28];
          v30 = [_findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__nlSet characterIsMember:v28];
          if (!v27)
          {
            v31 = &_findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__nlSet;
            if (v29)
            {
              v31 = &_findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__wsSet;
            }

            if ((v29 | v30))
            {
              v32 = v56;
            }

            else
            {
              v31 = &_findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__sqSet;
              v32 = v56;
              if (v28 != 39)
              {
                if (v28 != 34)
                {
                  goto LABEL_54;
                }

                v31 = &_findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__dqSet;
              }
            }

            v34 = [a4 rangeOfCharacterFromSet:*v31 options:12 range:{0, v19}];
            if (!v35)
            {
LABEL_54:
              v20 = v21;
              a6 = v48;
              v43 = v55;
              goto LABEL_57;
            }

            v25 = v34;
          }

          v33 = v54;
          if (v54 & v29)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_52;
          }

          v29 = 0;
          v33 = v54;
        }

        v17 = 0;
        v36 = v55;
        if (v52)
        {
          v37 = v56;
        }

        else
        {
          v37 = v21;
        }

        v38 = v57;
        v39 = v58;
        if ((v52 & 1) == 0)
        {
          v38 = v25;
        }

        v56 = v37;
        v57 = v38;
        if (v25 >= v50)
        {
          v40 = v58;
        }

        else
        {
          v40 = v21 - 1;
        }

        if (v25 >= v50)
        {
          v41 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v21 - 1;
        }

        if (v55 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = v55;
        }

        if (location <= v25)
        {
          v39 = v40;
        }

        v58 = v39;
        if (location <= v25)
        {
          v36 = v41;
        }

        v55 = v36;
        if (location > v25)
        {
          v42 = v29;
        }

        else
        {
          v42 = 0;
        }

        v54 = v42 | v33;
        v19 = v25;
        v18 = v52;
        if (!v19)
        {
          goto LABEL_53;
        }
      }
    }
  }

  else
  {
    [AppleSpell(Correction) _findMatchingRangesForRange:inString:keyEventArray:endingAtIndex:matchingStringRange:correctableStringRange:matchingKeyEventRange:firstMisspelledKeyEventIndex:lastMisspelledKeyEventIndex:previousBackspaceCount:];
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = 0;
  v58 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = v16;
  v32 = v16;
LABEL_57:
  if (v32)
  {
    v44 = v32 - 1;
    if (v32 == 1)
    {
      v20 = 0;
    }

    else
    {
      v45 = a6;
      v46 = 0;
      v20 = v44;
      while (([objc_msgSend(a5 objectAtIndex:{v20 - 1), "flags"}] & 0x400) != 0)
      {
        ++v46;
        if (!--v20)
        {
          goto LABEL_66;
        }
      }

      v44 = v46;
LABEL_66:
      a6 = v45;
    }
  }

  else
  {
    v44 = 0;
  }

  if (a7)
  {
    a7->location = v19;
    a7->length = a6 - v19;
  }

  if (a8)
  {
    a8->location = v57;
    a8->length = a6 - v57;
  }

  if (a9)
  {
    a9->location = v20;
    a9->length = v16 - v20;
  }

  if (a10)
  {
    *a10 = v58;
  }

  if (a11)
  {
    *a11 = v43;
  }

  if (a12)
  {
    *a12 = v44;
  }

  return a6 > v19;
}

id __236__AppleSpell_Correction___findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount___block_invoke()
{
  _findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__wsSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  _findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__nlSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  _findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__sqSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’‚"];
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"«»“”„"];
  _findMatchingRangesForRange_inString_keyEventArray_endingAtIndex_matchingStringRange_correctableStringRange_matchingKeyEventRange_firstMisspelledKeyEventIndex_lastMisspelledKeyEventIndex_previousBackspaceCount__dqSet = result;
  return result;
}

- (BOOL)findMatchingRangesForRange:(_NSRange)a3 inString:(id)a4 keyEventArray:(id)a5 selectedRangeValue:(id)a6 matchingStringRange:(_NSRange *)a7 correctableStringRange:(_NSRange *)a8 matchingKeyEventRange:(_NSRange *)a9 firstMisspelledKeyEventIndex:(unint64_t *)a10 lastMisspelledKeyEventIndex:(unint64_t *)a11 previousBackspaceCount:(unint64_t *)a12
{
  length = a3.length;
  location = a3.location;
  v19 = [a4 length];
  v20 = [a5 count];
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  v33 = 0;
  v30 = xmmword_1D2BF76A0;
  v31 = xmmword_1D2BF76A0;
  v29 = xmmword_1D2BF76A0;
  if (a5)
  {
    v21 = v20;
    v22 = [a5 count];
    if (v22)
    {
      v23 = a8;
      v34 = 0;
      v35 = 0;
      v32 = 0;
      v28 = 0;
      v27 = 0uLL;
      v26 = 0;
      if (a6)
      {
        LOBYTE(v22) = -[AppleSpell _findMatchingRangesForRange:inString:keyEventArray:endingAtIndex:matchingStringRange:correctableStringRange:matchingKeyEventRange:firstMisspelledKeyEventIndex:lastMisspelledKeyEventIndex:previousBackspaceCount:](self, "_findMatchingRangesForRange:inString:keyEventArray:endingAtIndex:matchingStringRange:correctableStringRange:matchingKeyEventRange:firstMisspelledKeyEventIndex:lastMisspelledKeyEventIndex:previousBackspaceCount:", location, length, a4, a5, [a6 rangeValue], &v31, &v30, &v29, &v37, &v36, &v33);
      }

      else
      {
        v24 = v21 + location + length;
        if (__CFADD__(v21, location + length))
        {
          LOBYTE(v22) = 0;
        }

        else
        {
          do
          {
            if (v24 <= v19 && [(AppleSpell *)self _findMatchingRangesForRange:location inString:length keyEventArray:a4 endingAtIndex:a5 matchingStringRange:v24 correctableStringRange:&v28 matchingKeyEventRange:&v27 firstMisspelledKeyEventIndex:&v26 lastMisspelledKeyEventIndex:&v35 previousBackspaceCount:&v34, &v32]&& v28.length >= v31.length)
            {
              v30 = v27;
              v31 = v28;
              v29 = v26;
              v36 = v34;
              v37 = v35;
              v33 = v32;
            }

            --v24;
          }

          while (v24 >= location + length);
          LOBYTE(v22) = v31.length != 0;
        }

        v23 = a8;
      }

      if (a7)
      {
        *a7 = v31;
      }

      if (v23)
      {
        *v23 = v30;
      }

      if (a9)
      {
        *a9 = v29;
      }

      if (a10)
      {
        *a10 = v37;
      }

      if (a11)
      {
        *a11 = v36;
      }

      if (a12)
      {
        *a12 = v33;
      }
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

- (id)_capitalizationResultForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 languageObject:(id)a7 onlyAtInsertionPoint:(BOOL)a8 keyEventArray:(id)a9 selectedRangeValue:(id)a10
{
  length = a4.length;
  location = a4.location;
  v14 = initialCapitalizedString(a3, 0);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  if ([a3 isEqualToString:v14])
  {
    return 0;
  }

  v17 = [objc_alloc(MEMORY[0x1E696AB48]) initWithRange:location + a6 replacementString:{length, v15}];

  return v17;
}

- (id)_phraseCapitalizationResultForString:(id)a3 range:(_NSRange)a4 currentWordRange:(_NSRange)a5 inString:(id)a6 offset:(unint64_t)a7 languageObject:(id)a8 onlyAtInsertionPoint:(BOOL)a9 keyEventArray:(id)a10 selectedRangeValue:(id)a11
{
  location = a5.location;
  length = a4.length;
  v14 = a4.location;
  v16 = [(AppleSpell *)self phraseMatching:a3 inLexiconForLanguageObject:a8, a4.length, a5.location, a5.length];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  if ([v16 isEqualToString:a3] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", objc_msgSend(v17, "lowercaseString")) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", objc_msgSend(v17, "uppercaseString")))
  {
    return 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20 = [a3 length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __171__AppleSpell_Correction___phraseCapitalizationResultForString_range_currentWordRange_inString_offset_languageObject_onlyAtInsertionPoint_keyEventArray_selectedRangeValue___block_invoke;
  v21[3] = &unk_1E84055E8;
  v21[4] = v17;
  v21[5] = &v22;
  [a3 enumerateSubstringsInRange:0 options:v20 usingBlock:{3, v21}];
  if (v23[3])
  {
    v18 = 0;
  }

  else
  {
    if (location > v14 && [v17 length] + v14 > location && objc_msgSend(objc_msgSend(a6, "substringWithRange:", v14, location - v14), "isEqualToString:", objc_msgSend(v17, "substringToIndex:", location - v14)))
    {
      v17 = [v17 substringFromIndex:location - v14];
      length = v14 + length - location;
      v14 = location;
    }

    v18 = [objc_alloc(MEMORY[0x1E696AB48]) initWithRange:v14 + a7 replacementString:{length, v17}];
  }

  _Block_object_dispose(&v22, 8);
  return v18;
}

uint64_t __171__AppleSpell_Correction___phraseCapitalizationResultForString_range_currentWordRange_inString_offset_languageObject_onlyAtInsertionPoint_keyEventArray_selectedRangeValue___block_invoke(uint64_t result, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a2)
  {
    if (a4 >= 2)
    {
      v11 = result;
      result = [a2 isEqualToString:{objc_msgSend(a2, "uppercaseString")}];
      if (result)
      {
        if (a3 + a4 <= [*(v11 + 32) length])
        {
          v12 = [*(v11 + 32) substringWithRange:{a3, a4}];
        }

        else
        {
          v12 = &stru_1F4E0A7A0;
        }

        result = [a2 isEqualToString:v12];
        if ((result & 1) == 0)
        {
          *(*(*(v11 + 40) + 8) + 24) = 1;
          *a7 = 1;
        }
      }
    }
  }

  return result;
}

- (BOOL)wordIsAlreadyAccented:(id)a3
{
  if (wordIsAlreadyAccented__onceToken != -1)
  {
    [AppleSpell(Correction) wordIsAlreadyAccented:];
  }

  [a3 rangeOfCharacterFromSet:wordIsAlreadyAccented__nonPlainSet];
  return v4 != 0;
}

id __48__AppleSpell_Correction__wordIsAlreadyAccented___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_'"];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithRange:", 913, 27)}];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithRange:", 945, 27)}];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithRange:", 2308, 54)}];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithRange:", 2366, 15)}];
  result = [v0 invertedSet];
  wordIsAlreadyAccented__nonPlainSet = result;
  return result;
}

- (id)_accentCorrectionResultForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 languageObject:(id)a7 onlyAtInsertionPoint:(BOOL)a8 capitalize:(BOOL)a9 keyEventArray:(id)a10 selectedRangeValue:(id)a11
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  [v12 rangeOfString:@"-"];
  v16 = v15 != 0;
  [v12 rangeOfString:@"’"];
  v41 = v17;
  v18 = [a7 isGreek];
  v42 = [a7 isIrishGaelic];
  v19 = [a7 isPolish];
  v20 = [a7 isRomanian];
  v40 = [a7 isVietnamese];
  if (_accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue__onceToken != -1)
  {
    [AppleSpell(Correction) _accentCorrectionResultForString:range:inString:offset:languageObject:onlyAtInsertionPoint:capitalize:keyEventArray:selectedRangeValue:];
  }

  if ([v12 length] == 1 && ((v18 | v42 | v19 | v20) & 1) != 0)
  {
    goto LABEL_25;
  }

  [v12 rangeOfCharacterFromSet:_accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue__nonPlainCapsSet];
  if (!v21)
  {
    goto LABEL_25;
  }

  if (v41)
  {
    v12 = [v12 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  }

  v22 = [(AppleSpell *)self wordIsAlreadyAccented:v12];
  if (a7)
  {
    if (v12)
    {
      v23 = [(AppleSpell *)self autocorrectionDictionaryForLanguageObject:a7];
      v24 = v23;
      if (v23)
      {
        if ([v23 objectForKey:v12])
        {
          goto LABEL_25;
        }

        v25 = [v12 lowercaseStringWithLocale:0];
        if (v25)
        {
          if ([v24 objectForKey:v25])
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __161__AppleSpell_Correction___accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue___block_invoke_2;
  v44[3] = &unk_1E8405610;
  v45 = v16;
  v46 = v22;
  v47 = v42;
  v44[4] = self;
  v44[5] = v12;
  v44[7] = v14;
  v44[8] = &v48;
  v44[6] = 0;
  [(AppleSpell *)self enumerateEntriesForWord:v12 inLexiconForLanguageObject:a7 withBlock:v44];
  if ((v49[3] & 1) != 0 || ![v14 count])
  {
    goto LABEL_25;
  }

  v26 = [v14 allKeys];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __161__AppleSpell_Correction___accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue___block_invoke_3;
  v43[3] = &unk_1E8405638;
  v43[4] = v14;
  v27 = [objc_msgSend(v26 sortedArrayUsingComparator:{v43), "firstObject"}];
  v28 = v27;
  if (((v18 | v42 | v19 | v20 | v40) & 1) == 0 || ![v27 isEqualToString:{objc_msgSend(v27, "lowercaseStringWithLocale:", 0)}])
  {
    goto LABEL_23;
  }

  if ([v12 isEqualToString:{objc_msgSend(v12, "capitalizedStringWithLocale:", 0)}])
  {
LABEL_38:
    v29 = initialCapitalizedString(v28, 0);
    goto LABEL_22;
  }

  if ([v12 isEqualToString:{uppercasedString(v12, 0)}])
  {
    v29 = uppercasedString(v28, 0);
  }

  else
  {
    if (!v42)
    {
      if (!a9)
      {
        goto LABEL_23;
      }

      goto LABEL_38;
    }

    v32 = [v12 rangeOfComposedCharacterSequenceAtIndex:0];
    v34 = v32 + v33;
    if (v34 >= [v12 length])
    {
      goto LABEL_23;
    }

    v35 = [v12 substringToIndex:v34];
    v36 = [v12 substringFromIndex:v34];
    if (![_accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue__irishInitialsArray containsObject:v35] || !objc_msgSend(v36, "isEqualToString:", objc_msgSend(v36, "capitalizedString")))
    {
      if (!a9)
      {
        goto LABEL_23;
      }

      goto LABEL_38;
    }

    v29 = secondCapitalizedString(v28, 0);
  }

LABEL_22:
  v28 = v29;
LABEL_23:
  if (!v28 || ([v12 isEqualToString:v28] & 1) != 0)
  {
LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  if (v41)
  {
    v28 = [v28 stringByReplacingOccurrencesOfString:@"'" withString:@"’"];
  }

  v30 = [objc_alloc(MEMORY[0x1E696AB48]) initWithRange:location + a6 replacementString:{length, v28}];
LABEL_26:
  _Block_object_dispose(&v48, 8);
  return v30;
}

void *__161__AppleSpell_Correction___accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ-_'"];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithRange:", 913, 27)}];
  _accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue__nonPlainCapsSet = [v0 invertedSet];
  result = &unk_1F4E167C0;
  _accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue__irishInitialsArray = result;
  return result;
}

uint64_t __161__AppleSpell_Correction___accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue___block_invoke_2(uint64_t a1, void *a2, double a3, uint64_t a4, _BYTE *a5)
{
  [a2 rangeOfString:@"-"];
  v10 = v9;
  v11 = [*(a1 + 32) wordIsAlreadyAccented:a2];
  v12 = *(a1 + 72);
  v13 = v12 ^ 1;
  if (((v12 ^ 1) & 1) != 0 || !v10)
  {
    if (v10)
    {
      v13 = 0;
    }

    v15 = *(a1 + 73) ^ 1 | v11;
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 74) ^ 1 | v12;
    }
  }

  else
  {
    v14 = 0;
    v15 = *(a1 + 73) ^ 1 | v11;
  }

  result = [*(a1 + 40) compare:a2 options:1 range:0 locale:{objc_msgSend(*(a1 + 40), "length"), *(a1 + 48)}];
  if (result)
  {
    if (!(v14 & 1 | ((v15 & 1) == 0)))
    {
      v17 = *(a1 + 56);
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:a3];

      return [v17 setObject:v18 forKey:a2];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t __161__AppleSpell_Correction___accentCorrectionResultForString_range_inString_offset_languageObject_onlyAtInsertionPoint_capitalize_keyEventArray_selectedRangeValue___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_msgSend(*(a1 + 32) objectForKey:{a2), "doubleValue"}];
  v6 = v5;
  [objc_msgSend(*(a1 + 32) objectForKey:{a3), "doubleValue"}];
  if (v6 > v7)
  {
    return -1;
  }

  else
  {
    return v6 < v7;
  }
}

- (BOOL)_acceptWithoutAccentForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 languageObject:(id)a6
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = [a6 isGreek];
  v10 = v9;
  if (_acceptWithoutAccentForString_range_inString_languageObject__onceToken == -1)
  {
    if (!v9)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_5;
    }
  }

  else
  {
    [AppleSpell(Correction) _acceptWithoutAccentForString:range:inString:languageObject:];
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  [a3 rangeOfCharacterFromSet:_acceptWithoutAccentForString_range_inString_languageObject__nonGreekPlainUppercaseLetterCharacterSet];
  if (v11)
  {
    goto LABEL_4;
  }

  if ([a3 length] == 1)
  {
    v12 = 1;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__AppleSpell_Correction___acceptWithoutAccentForString_range_inString_languageObject___block_invoke_2;
    v14[3] = &unk_1E8405660;
    v14[4] = a3;
    v14[5] = &v15;
    [(AppleSpell *)self enumerateEntriesForWord:a3 inLexiconForLanguageObject:a6 withBlock:v14];
    v12 = *(v16 + 24);
  }

LABEL_5:
  _Block_object_dispose(&v15, 8);
  return v12 & 1;
}

id __86__AppleSpell_Correction___acceptWithoutAccentForString_range_inString_languageObject___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AB08] characterSetWithRange:{913, 27), "invertedSet"}];
  _acceptWithoutAccentForString_range_inString_languageObject__nonGreekPlainUppercaseLetterCharacterSet = result;
  return result;
}

uint64_t __86__AppleSpell_Correction___acceptWithoutAccentForString_range_inString_languageObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqualToString:{uppercasedString(a2, 0)}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)_initialCorrectionForString:(id)a3 lowercaseString:(id)a4 isFirstSecondCapitalized:(BOOL)a5 dictionary:(id)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = [a7 encoding];
  result = [a6 objectForKey:a3];
  if (!result && !a5)
  {
    result = [a6 objectForKey:a4];
    if (a8)
    {
      if (!result)
      {
        v17 = [a3 rangeOfString:@"-"];
        result = 0;
        if (v18)
        {
          if (v17)
          {
            v19 = [a3 substringToIndex:v17];
            v20 = [a3 substringFromIndex:v17];
            result = [a6 objectForKey:v19];
            if (result || (result = [a6 objectForKey:{objc_msgSend(v19, "lowercaseString")}]) != 0)
            {
              v21 = [result stringByAppendingString:v20];
              v22 = [(__CFString *)v21 length];
              if (v21 && (v25 = 0, v28.location = 0, v28.length = v22, v22 == CFStringGetBytes(v21, v28, v15, 0, 0, buffer, 254, &v25)))
              {
                BYTE4(usedBufLen) = 0;
                LODWORD(usedBufLen) = 65793;
                if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:buffer languageObject:v25 connection:a7 sender:a8 checkBase:0 checkDict:1 checkNames:usedBufLen checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
                {
                  result = v21;
                }

                else
                {
                  result = 0;
                }
              }

              else
              {
                result = 0;
              }
            }
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_prohibitCorrectionBasedOnCountsForString:(id)a3 lowercaseString:(id)a4 appIdentifier:(id)a5 languageObject:(id)a6 typologyCorrection:(id)a7
{
  learnedResponses = self->_learnedResponses;
  if (!learnedResponses)
  {
    probationaryLearnedResponses = self->_probationaryLearnedResponses;
    if (!probationaryLearnedResponses)
    {
      return probationaryLearnedResponses;
    }
  }

  v13 = [(NSMutableDictionary *)learnedResponses objectForKey:a3, a4, a5, a6, a7];
  v14 = [(NSMutableDictionary *)self->_probationaryLearnedResponses objectForKey:a3];
  v15 = [(NSMutableDictionary *)self->_probationaryLearnedResponseTimes objectForKey:a3];
  [(AppleSpell *)self dynamicScoreForWord:a3 languageObject:a6 appIdentifier:a5];
  v17 = v16;
  Current = CFAbsoluteTimeGetCurrent();
  if (v13)
  {
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_8:
    v14 = [(NSMutableDictionary *)self->_probationaryLearnedResponses objectForKey:a4];
    v15 = [(NSMutableDictionary *)self->_probationaryLearnedResponseTimes objectForKey:a4];
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v13 = [(NSMutableDictionary *)self->_learnedResponses objectForKey:a4];
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v13)
  {
LABEL_6:
    v19 = [v13 integerValue];
    goto LABEL_10;
  }

LABEL_9:
  v19 = 0;
LABEL_10:
  if (v14)
  {
    v20 = v15 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v23 = 0;
    v25 = 0;
  }

  else
  {
    [v15 doubleValue];
    v22 = v21;
    v23 = [v14 integerValue];
    probationaryInterval = self->_probationaryInterval;
    v25 = v22 + probationaryInterval > Current;
    if (v22 + probationaryInterval / 10.0 > Current)
    {
      v26 = 1;
      goto LABEL_19;
    }
  }

  v26 = 0;
LABEL_19:
  if (v17 >= 2.0)
  {
    if (v19 > -3 || (LOBYTE(probationaryLearnedResponses) = 0, (v25 | v26) == 1) && v23 >= -2)
    {
      LOBYTE(probationaryLearnedResponses) = 1;
    }
  }

  else
  {
    v27 = v25 && v23 > 1;
    if (v19 > 2)
    {
      v27 = 1;
    }

    LOBYTE(probationaryLearnedResponses) = v27 | v26 & (v23 > 0);
  }

  return probationaryLearnedResponses;
}

- (id)_umlautCorrectionForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 typologyCorrection:(id)a8
{
  v10 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v12 = [a6 encoding];
  v13 = [a6 isGerman];
  v14 = [a6 isDanish];
  v15 = [a6 isNorwegian];
  v16 = [a6 isNynorsk];
  v17 = 0;
  if (!v13 || v12 != 1280)
  {
    goto LABEL_57;
  }

  v18 = *v10;
  if (!*v10)
  {
    v17 = 0;
    __s[0] = 0;
    goto LABEL_57;
  }

  v17 = 0;
  v19 = 0;
  v20 = __s;
  v21 = v10;
  v22 = v10;
  do
  {
    v23 = v20;
    *v20++ = v18;
    v26 = v22[1];
    v25 = v22 + 1;
    v24 = v26;
    if (v26 == 115)
    {
      if (*v21 == 115)
      {
        v17 = v23;
      }

LABEL_13:
      v25 = v21;
      goto LABEL_23;
    }

    if (v24 != 101)
    {
      goto LABEL_13;
    }

    v27 = *v21;
    switch(v27)
    {
      case 'u':
        if (v21 != v10)
        {
          v28 = *(v21 - 1) - 97;
          v29 = v28 > 0x10;
          v30 = (1 << v28) & 0x10011;
          if (!v29 && v30 != 0)
          {
            goto LABEL_13;
          }
        }

        *v23 = -4;
        break;
      case 'o':
        *v23 = -10;
        break;
      case 'a':
        *v23 = -28;
        break;
      default:
        goto LABEL_13;
    }

    v19 = 1;
LABEL_23:
    v32 = v25[1];
    v22 = v25 + 1;
    v18 = v32;
    v21 = v22;
  }

  while (v32);
  *v20 = 0;
  if ((v19 & 1) == 0)
  {
    goto LABEL_56;
  }

  BYTE4(v50) = 0;
  LODWORD(v50) = 257;
  if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:__s languageObject:strlen(__s) connection:a6 sender:a7 checkBase:0 checkDict:1 checkNames:v50 checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
  {
LABEL_55:
    v17 = CFStringCreateWithCString(0, __s, 0x500u);
    goto LABEL_57;
  }

  v33 = __s[0];
  v34 = __s[0] - 97;
  v35 = __s[0] - 223;
  if (__s[0] <= 0xF7u && v34 >= 0x1A && v35 >= 0x18 && (__s[0] - 154 > 4 || ((1 << (__s[0] + 102)) & 0x15) == 0))
  {
    if (!v17)
    {
      goto LABEL_57;
    }

    LOBYTE(v17->isa) = -33;
    if (BYTE1(v17->isa))
    {
      v38 = &v17->isa + 2;
      do
      {
        v39 = *v38;
        *(v38++ - 1) = v39;
      }

      while (v39);
    }

LABEL_54:
    BYTE4(v50) = 0;
    LODWORD(v50) = 257;
    if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:__s languageObject:strlen(__s) connection:a6 sender:a7 checkBase:0 checkDict:1 checkNames:v50 checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
    {
      goto LABEL_55;
    }

LABEL_56:
    v17 = 0;
    goto LABEL_57;
  }

  if (v34 >= 0x1A && __s[0] <= 0xF7u && v35 >= 0x18)
  {
    if (__s[0] - 154 > 4 || ((1 << (__s[0] + 102)) & 0x15) == 0)
    {
      goto LABEL_41;
    }

LABEL_40:
    v33 = __s[0] - 16;
    goto LABEL_41;
  }

  if (__s[0] - 154 <= 4 && ((1 << (__s[0] + 102)) & 0x15) != 0)
  {
    goto LABEL_40;
  }

  if (__s[0] != 223)
  {
    if (__s[0] == 255)
    {
      v33 = -97;
    }

    else
    {
      v33 = __s[0] - 32;
    }
  }

LABEL_41:
  __s[0] = v33;
  BYTE4(v50) = 0;
  LODWORD(v50) = 257;
  if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:__s languageObject:strlen(__s) connection:a6 sender:a7 checkBase:0 checkDict:1 checkNames:v50 checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
  {
    goto LABEL_55;
  }

  if (v17)
  {
    LOBYTE(v17->isa) = -33;
    if (BYTE1(v17->isa))
    {
      v36 = &v17->isa + 2;
      do
      {
        v37 = *v36;
        *(v36++ - 1) = v37;
      }

      while (v37);
    }

    goto LABEL_54;
  }

LABEL_57:
  if ((v14 | v15))
  {
    if (v12 != 1280)
    {
      goto LABEL_76;
    }

LABEL_64:
    v41 = *v10;
    if (!*v10)
    {
      goto LABEL_76;
    }

    v42 = 0;
    v43 = __s;
    while (2)
    {
      v44 = v43;
      *v43++ = v41;
      if (*v10 == 97)
      {
        v45 = v10[1];
        if (v45 == 101)
        {
          v46 = -26;
LABEL_71:
          *v44 = v46;
          v42 = 1;
          ++v10;
        }

        else if (v45 == 97)
        {
          v46 = -27;
          goto LABEL_71;
        }
      }

      v47 = *++v10;
      v41 = v47;
      if (!v47)
      {
        *v43 = 0;
        if (v42)
        {
          BYTE4(v50) = 0;
          LODWORD(v50) = 257;
          if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:__s languageObject:strlen(__s) connection:a6 sender:a7 checkBase:0 checkDict:1 checkNames:v50 checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
          {
            v17 = CFStringCreateWithCString(0, __s, 0x500u);
          }
        }

        goto LABEL_76;
      }

      continue;
    }
  }

  if (v12 == 1280)
  {
    v40 = v16;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    goto LABEL_64;
  }

LABEL_76:
  v48 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)_connectionCorrectionForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 flags:(unint64_t)a8 isCapitalized:(BOOL)a9 accentCorrectionOnly:(BOOL)a10 isAbbreviation:(BOOL *)a11 trySpaceInsertion:(BOOL *)a12 hasAccentCorrections:(BOOL *)a13 candidateList:(id)a14 typologyCorrection:(id)a15
{
  v191 = *MEMORY[0x1E69E9840];
  v20 = [a6 encoding];
  v21 = [a6 isGerman];
  v22 = 0;
  if (a5 - 2 > 0x3D || !a7)
  {
    goto LABEL_55;
  }

  v23 = v21;
  v190 = 0;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  memset(v178, 0, sizeof(v178));
  v179 = 0u;
  HIDWORD(v179) = 0;
  v180 = 0;
  v181 = a4;
  *&v188 = v178;
  BYTE7(v189) = 1;
  *(&v189 + 9) = *&a7->var0;
  PRword(&v181, 8, 0);
  v24 = v182;
  if (!v182 || !*(v182 + 8) || (v25 = *v182) == 0)
  {
    v22 = 0;
    goto LABEL_54;
  }

  v174 = *(v182 + 8);
  v26 = a11;
  v27 = *(v182 + 18);
  v175 = v182;
  v177 = v27;
  if (!*(v182 + 18))
  {
    v22 = 0;
    v48 = a10;
    if (a10)
    {
      goto LABEL_296;
    }

    goto LABEL_297;
  }

  v171 = a11;
  v172 = a8;
  v28 = *(v182 + 18);
  v29 = 0;
  v173 = v23;
  v30 = v23 | a9;
  v31 = *(v182 + 8);
  while (1)
  {
    v32 = *v31++;
    v33 = (v25 + v32);
    v34 = strlen((v25 + v32));
    if (v34)
    {
      break;
    }

LABEL_14:
    if (!--v28)
    {
      goto LABEL_59;
    }
  }

  if (v34 != a5 + 1 || v33[a5] != 46 || strncmp(a4, v33, a5))
  {
    if (v30)
    {
LABEL_13:
      ++v29;
      goto LABEL_14;
    }

    v35 = *v33;
    v36 = v35 - 65;
    if (v20 > 1279)
    {
      if (v20 == 1284 || v20 == 1280)
      {
        v38 = v36 >= 0x1A && (v35 - 192) >= 0x17;
        if (!v38 || (v35 - 216) < 7)
        {
          goto LABEL_14;
        }

        v39 = v35 - 138;
        v78 = v39 > 0x15;
        v40 = (1 << v39) & 0x200015;
        v41 = v78 || v40 == 0;
        if (!v41)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v20 == 514)
      {
        if (v36 < 0x1A || (v35 - 192) < 0x17)
        {
          goto LABEL_14;
        }

        v43 = v35 - 161;
        v78 = v43 > 0x3D;
        v44 = (1 << v43) & 0x3F80000000006F35;
        if (!v78 && v44 != 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 == 517)
      {
        v37 = v36 >= 0x1A && (v35 - 161) >= 0xC;
        if (!v37 || (v35 - 174) < 0x22)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v36 < 0x1A)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v29 = 0;
  *a11 = 1;
  *a12 = 0;
LABEL_59:
  if (a10)
  {
    v49 = 0;
    v50 = 0;
    v176 = 0x7FFFFFFFFFFFFFFFLL;
    v51 = v174;
    while (1)
    {
      v52 = (v25 + *(v51 + 2 * v49));
      v53 = v177;
      if ((v172 >> 1) & 1 | v173 & 1 | a9)
      {
LABEL_62:
        if (strlen(v52) == a5)
        {
          if (!a5)
          {
            goto LABEL_72;
          }

          v54 = 0;
          do
          {
            v55 = removeDiacriticsX(a4[v54], v20);
            v56 = removeDiacriticsX(v52[v54++], v20);
          }

          while (v55 == v56 && v54 < a5);
          v41 = v55 == v56;
          v53 = v177;
          v51 = v174;
          if (v41)
          {
LABEL_72:
            v41 = v50++ == 0;
            *a13 = 1;
            v58 = 0x7FFFFFFFFFFFFFFFLL;
            if (v41)
            {
              v58 = v49;
            }

            v176 = v58;
            *a12 = 0;
          }
        }

        goto LABEL_110;
      }

      v59 = *v52;
      v60 = v59 - 65;
      if (v20 > 1279)
      {
        if (v20 != 1284 && v20 != 1280)
        {
LABEL_99:
          if (v60 >= 0x1A)
          {
            goto LABEL_62;
          }

          goto LABEL_110;
        }

        v62 = v60 >= 0x1A && (v59 - 192) >= 0x17;
        if (v62 && (v59 - 216) >= 7)
        {
          v63 = v59 - 138;
          v78 = v63 > 0x15;
          v64 = (1 << v63) & 0x200015;
          if (v78 || v64 == 0)
          {
            goto LABEL_62;
          }
        }
      }

      else if (v20 == 514)
      {
        if (v60 >= 0x1A && (v59 - 192) >= 0x17)
        {
          v67 = v59 - 161;
          v78 = v67 > 0x3D;
          v68 = (1 << v67) & 0x3F80000000006F35;
          if (v78 || v68 == 0)
          {
            goto LABEL_62;
          }
        }
      }

      else
      {
        if (v20 != 517)
        {
          goto LABEL_99;
        }

        v61 = v60 >= 0x1A && (v59 - 161) >= 0xC;
        if (v61 && (v59 - 174) >= 0x22)
        {
          goto LABEL_62;
        }
      }

LABEL_110:
      if (++v49 >= v53 || v50 >= 2)
      {
        goto LABEL_271;
      }
    }
  }

  a8 = v172;
  if (!v29)
  {
    v22 = 0;
    v24 = v175;
    v48 = a10;
    v23 = v173;
    v27 = v177;
    v26 = a11;
    goto LABEL_297;
  }

  if (v29 == 1)
  {
    v70 = 0;
    v176 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v71 = *v175;
      v72 = *(v175[1] + 2 * v70);
      if (((v172 & 2) != 0) | v173 & 1 | a9)
      {
LABEL_117:
        v73 = strlen((v71 + v72));
        v74 = effectiveEditDistance(a4, a5, v71 + v72, v73);
        if (v74 >= 2)
        {
          v78 = v74 == 2 && a5 > 6;
          v79 = v176;
          if (v78)
          {
            v79 = v70;
          }

          v176 = v79;
        }

        else
        {
          *a12 = 0;
          v176 = v70;
        }

        goto LABEL_160;
      }

      v75 = *(v71 + v72);
      v76 = v75 - 65;
      if (v20 > 1279)
      {
        if (v20 != 1284 && v20 != 1280)
        {
LABEL_149:
          if (v76 >= 0x1A)
          {
            goto LABEL_117;
          }

          goto LABEL_160;
        }

        v80 = v76 >= 0x1A && (v75 - 192) >= 0x17;
        if (v80 && (v75 - 216) >= 7)
        {
          v81 = v75 - 138;
          v78 = v81 > 0x15;
          v82 = (1 << v81) & 0x200015;
          if (v78 || v82 == 0)
          {
            goto LABEL_117;
          }
        }
      }

      else if (v20 == 514)
      {
        if (v76 >= 0x1A && (v75 - 192) >= 0x17)
        {
          v85 = v75 - 161;
          v78 = v85 > 0x3D;
          v86 = (1 << v85) & 0x3F80000000006F35;
          if (v78 || v86 == 0)
          {
            goto LABEL_117;
          }
        }
      }

      else
      {
        if (v20 != 517)
        {
          goto LABEL_149;
        }

        v77 = v76 >= 0x1A && (v75 - 161) >= 0xC;
        if (v77 && (v75 - 174) >= 0x22)
        {
          goto LABEL_117;
        }
      }

LABEL_160:
      if (v177 == ++v70)
      {
        goto LABEL_271;
      }
    }
  }

  v88 = 0;
  v89 = 0;
  v90 = (v172 >> 1) & 1 | v173 | a9;
  v176 = 0x7FFFFFFFFFFFFFFFLL;
  v91 = v177;
  v92 = v174;
  do
  {
    v93 = (v25 + *(v92 + 2 * v88));
    if (!((v172 >> 1) & 1 | v173 & 1 | a9))
    {
      v101 = *v93;
      v102 = v101 - 65;
      if (v20 > 1279)
      {
        if (v20 == 1284 || v20 == 1280)
        {
          v104 = v102 >= 0x1A && (v101 - 192) >= 0x17;
          if (!v104 || (v101 - 216) < 7)
          {
            goto LABEL_213;
          }

          v105 = v101 - 138;
          v78 = v105 > 0x15;
          v106 = (1 << v105) & 0x200015;
          if (!v78 && v106 != 0)
          {
            goto LABEL_213;
          }

          goto LABEL_165;
        }
      }

      else
      {
        if (v20 == 514)
        {
          if (v102 < 0x1A || (v101 - 192) < 0x17)
          {
            goto LABEL_213;
          }

          v109 = v101 - 161;
          v78 = v109 > 0x3D;
          v110 = (1 << v109) & 0x3F80000000006F35;
          if (!v78 && v110 != 0)
          {
            goto LABEL_213;
          }

          goto LABEL_165;
        }

        if (v20 == 517)
        {
          v103 = v102 >= 0x1A && (v101 - 161) >= 0xC;
          if (!v103 || (v101 - 174) < 0x22)
          {
            goto LABEL_213;
          }

          goto LABEL_165;
        }
      }

      if (v102 < 0x1A)
      {
        goto LABEL_213;
      }
    }

LABEL_165:
    if (strlen(v93) == a5)
    {
      if (!a5)
      {
        goto LABEL_175;
      }

      v94 = 0;
      do
      {
        v95 = removeDiacriticsX(a4[v94], v20);
        v96 = toLowerX(v95, v20);
        v97 = removeDiacriticsX(v93[v94], v20);
        v98 = toLowerX(v97, v20);
        ++v94;
      }

      while (v96 == v98 && v94 < a5);
      v41 = v96 == v98;
      v91 = v177;
      v92 = v174;
      if (v41)
      {
LABEL_175:
        v41 = v89++ == 0;
        *a13 = 1;
        v100 = 0x7FFFFFFFFFFFFFFFLL;
        if (v41)
        {
          v100 = v88;
        }

        v176 = v100;
        *a12 = 0;
      }
    }

LABEL_213:
    ++v88;
  }

  while (v88 < v91 && v89 < 2);
  if (v176 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v112 = 0;
    v113 = 0;
    v176 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v114 = (*v175 + *(v175[1] + 2 * v112));
      if (v90)
      {
LABEL_218:
        if (strlen(v114) == a5)
        {
          if (!a5)
          {
            goto LABEL_230;
          }

          v115 = v90;
          v116 = 0;
          v117 = 0;
          do
          {
            v118 = a4[v117];
            v119 = v114[v117];
            v120 = v118 == v119;
            if (v118 != v119 && !v116)
            {
              v120 = adjacentMatch(a4[v117], v119, v20);
              v116 = v120;
            }

            ++v117;
          }

          while (v120 && v117 < a5);
          v90 = v115;
          if (v120)
          {
LABEL_230:
            v41 = v113++ == 0;
            if (v41)
            {
              v122 = v112;
            }

            else
            {
              v122 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v176 = v122;
            *a12 = 0;
          }
        }

        goto LABEL_269;
      }

      v123 = *v114;
      v124 = v123 - 65;
      if (v20 > 1279)
      {
        if (v20 != 1284 && v20 != 1280)
        {
LABEL_258:
          if (v124 >= 0x1A)
          {
            goto LABEL_218;
          }

          goto LABEL_269;
        }

        v126 = v124 >= 0x1A && (v123 - 192) >= 0x17;
        if (v126 && (v123 - 216) >= 7)
        {
          v127 = v123 - 138;
          v78 = v127 > 0x15;
          v128 = (1 << v127) & 0x200015;
          if (v78 || v128 == 0)
          {
            goto LABEL_218;
          }
        }
      }

      else if (v20 == 514)
      {
        if (v124 >= 0x1A && (v123 - 192) >= 0x17)
        {
          v131 = v123 - 161;
          v78 = v131 > 0x3D;
          v132 = (1 << v131) & 0x3F80000000006F35;
          if (v78 || v132 == 0)
          {
            goto LABEL_218;
          }
        }
      }

      else
      {
        if (v20 != 517)
        {
          goto LABEL_258;
        }

        v125 = v124 >= 0x1A && (v123 - 161) >= 0xC;
        if (v125 && (v123 - 174) >= 0x22)
        {
          goto LABEL_218;
        }
      }

LABEL_269:
      ++v112;
    }

    while (v112 < v177 && v113 < 2);
  }

LABEL_271:
  v27 = v177;
  if (v176 >= v177)
  {
    v22 = 0;
    v24 = v175;
    v48 = a10;
    v23 = v173;
    v26 = a11;
    a8 = v172;
    if (a10)
    {
      goto LABEL_296;
    }

    goto LABEL_297;
  }

  v24 = v175;
  v134 = (*v175 + *(v175[1] + 2 * v176));
  v135 = strlen(v134);
  v23 = v173;
  if (a5)
  {
    v136 = 1;
    v137 = a4;
    do
    {
      v139 = *v137++;
      v138 = v139;
      v140 = removeDiacriticsX(v139, v20);
    }

    while (v140 == v139 && v136++ < a5);
    v142 = v140 == v138;
  }

  else
  {
    v142 = 1;
  }

  if (v135)
  {
    v143 = 1;
    v144 = v134;
    do
    {
      v145 = *v144++;
      v146 = removeDiacriticsX(v145, v20);
      v147 = v146 != v145;
    }

    while (v146 == v145 && v143++ < v135);
    v23 = v173;
  }

  else
  {
    v147 = 0;
  }

  v48 = a10;
  v27 = v177;
  v26 = a11;
  if (v147 || v142)
  {
    v22 = CFStringCreateWithCString(0, v134, v20);
  }

  else
  {
    v22 = 0;
  }

  a8 = v172;
  if (!a10)
  {
LABEL_297:
    if (!a14)
    {
      goto LABEL_54;
    }

    if (*v26)
    {
      goto LABEL_54;
    }

    [a14 addCandidateWithString:v22 errorType:6];
    if (!v27)
    {
      goto LABEL_54;
    }

    v149 = 0;
    v150 = (a8 >> 1) & 1 | v23 | a9;
    while (1)
    {
      v151 = (*v24 + *(v24[1] + 2 * v149));
      if (v150)
      {
        goto LABEL_302;
      }

      v160 = *v151;
      v161 = v160 - 65;
      if (v20 > 1279)
      {
        if (v20 == 1284 || v20 == 1280)
        {
          v163 = v161 >= 0x1A && (v160 - 192) >= 0x17;
          if (!v163 || (v160 - 216) < 7)
          {
            goto LABEL_353;
          }

          v164 = v160 - 138;
          v78 = v164 > 0x15;
          v165 = (1 << v164) & 0x200015;
          if (!v78 && v165 != 0)
          {
            goto LABEL_353;
          }

          goto LABEL_302;
        }
      }

      else
      {
        if (v20 == 514)
        {
          if (v161 < 0x1A || (v160 - 192) < 0x17)
          {
            goto LABEL_353;
          }

          v168 = v160 - 161;
          v78 = v168 > 0x3D;
          v169 = (1 << v168) & 0x3F80000000006F35;
          if (!v78 && v169 != 0)
          {
            goto LABEL_353;
          }

          goto LABEL_302;
        }

        if (v20 == 517)
        {
          v162 = v161 >= 0x1A && (v160 - 161) >= 0xC;
          if (!v162 || (v160 - 174) < 0x22)
          {
            goto LABEL_353;
          }

          goto LABEL_302;
        }
      }

      if (v161 < 0x1A)
      {
        goto LABEL_353;
      }

LABEL_302:
      v152 = strlen(v151);
      if (v152)
      {
        v153 = effectiveEditDistance(a4, a5, v151, v152);
        if (v48)
        {
          if (strlen(v151) != a5)
          {
            goto LABEL_353;
          }

          if (a5)
          {
            v154 = v48;
            v155 = 0;
            do
            {
              v156 = removeDiacriticsX(a4[v155], v20);
              v157 = removeDiacriticsX(v151[v155++], v20);
            }

            while (v156 == v157 && v155 < a5);
            v41 = v156 == v157;
            v24 = v175;
            v48 = v154;
            v27 = v177;
            if (!v41)
            {
              goto LABEL_353;
            }
          }

          v159 = 1;
          goto LABEL_341;
        }

        if (v153 < 3)
        {
          v159 = 8;
LABEL_341:
          [a14 addCandidateWithBuffer:v151 encoding:v20 errorType:{v159, v171}];
        }
      }

LABEL_353:
      if (++v149 == v27)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_296:
  if (*a13)
  {
    goto LABEL_297;
  }

LABEL_54:
  PRword(&v181, 17, 0);
LABEL_55:
  v46 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)_spaceInsertionCorrectionForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 flags:(unint64_t)a8 isCapitalized:(BOOL)a9 typologyCorrection:(id)a10
{
  v10 = a8;
  v93 = *MEMORY[0x1E69E9840];
  v15 = [a6 encoding];
  v16 = [a6 oneLetterWords];
  v87 = a6;
  v17 = [a6 twoLetterWords];
  v89 = a5;
  if (a5 - 3 > 0x14)
  {
    goto LABEL_128;
  }

  v18 = v17;
  v19 = a9;
  v20 = *a4;
  v86 = self;
  encoding = v15;
  v83 = v16;
  v79 = a4;
  if (*a4)
  {
    v21 = a4 + 1;
    v22 = cStr;
    do
    {
      *v22++ = v20;
      v23 = *v21++;
      v20 = v23;
    }

    while (v23);
    *v22 = 0;
    v24 = &cStr[v89];
    v25 = &cStr[v89 - 1];
    if (v89 < 3)
    {
      v85 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_27;
    }

    v81 = &cStr[v89];
  }

  else
  {
    cStr[0] = 0;
    v81 = &cStr[v89];
    v25 = &cStr[v89 - 1];
  }

  v26 = 0;
  v27 = 0;
  v78 = v10;
  v84 = v10 | a9;
  v28 = &v25[~cStr];
  v85 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v29 = &cStr[v26];
    v30 = cStr[v26 + 1];
    if (v30 == 59 || v30 == 44)
    {
      v29[1] = 45;
      BYTE4(v77) = 0;
      LODWORD(v77) = 65793;
      if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:cStr languageObject:v89 connection:v87 sender:a7 checkBase:0 checkDict:1 checkNames:v77 checkHyphens:0 checkIntercaps:? checkOptions:? depth:?]&& ![(AppleSpell *)self checkNegativeWordBuffer:cStr length:v26 + 1 languageObject:v87 alreadyCapitalized:v84 & 1])
      {
        v31 = [(AppleSpell *)self checkNegativeWordBuffer:&v92[v26] length:v28 languageObject:v87];
        v32 = v26 + 2;
        if (v27)
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (!v31)
        {
          ++v27;
        }

        v33 = v85;
        if (!v31)
        {
          v33 = v32;
        }

        v85 = v33;
      }

      v29[1] = v30;
    }

    if (&v92[v26] >= v25)
    {
      break;
    }

    ++v26;
    --v28;
  }

  while (v27 < 2);
  if (!v27)
  {
    v24 = v81;
    v10 = v78;
    v19 = a9;
LABEL_27:
    v36 = v24;
    do
    {
      v36[1] = *v36;
      --v36;
    }

    while (cStr <= v36);
    v37 = &v91;
    if (&v91 > v25)
    {
      goto LABEL_128;
    }

    v38 = 0;
    v82 = v10 | v19;
    v39 = v89 - 1;
    v40 = 1;
    while (1)
    {
      *v37 = 45;
      if (v40 == 1 || v37 == v25)
      {
        break;
      }

LABEL_33:
      if (v40 == 2 || v37 == v24 - 2)
      {
        v51 = -2;
        if (v40 != 2)
        {
          v51 = 1;
        }

        v52 = 2;
        if (v40 == 2)
        {
          v52 = -1;
        }

        if (!v18)
        {
          goto LABEL_114;
        }

        v53 = v37[v51];
        v54 = v37[v52];
        v55 = strlen(v18);
        if (!v55)
        {
          goto LABEL_114;
        }

        for (i = 0; i < v55; i += 2)
        {
          if (v18[i] == v53)
          {
            v57 = v18[i + 1] == v54;
            if (v18[i + 1] == v54)
            {
              break;
            }
          }

          else
          {
            v57 = 0;
          }
        }

        if (!v57)
        {
          goto LABEL_114;
        }

        if (v40 == 2 && v18 == englishTwoLetterWords[0] && v53 == 97 && v54 == 110)
        {
          v58 = v37[1];
          HIDWORD(v60) = v58 - 65;
          LODWORD(v60) = v58 - 65;
          v59 = v60 >> 1;
          v48 = v59 > 0x1C;
          v61 = (1 << v59) & 0x14951495;
          v62 = v48 || v61 == 0;
          if (v62 && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, vaddq_s32(vdupq_n_s32(v58), xmmword_1D2BF7970)))) & 1) == 0 && v58 - 248 >= 6 && v58 != 255 && v58 != 104 && (v58 & 0xD8) != 0xC8)
          {
            goto LABEL_114;
          }
        }
      }

      BYTE4(v77) = 0;
      LODWORD(v77) = 1;
      if ([AppleSpell validateWordBuffer:v86 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:cStr connection:v89 + 1 sender:v87 checkBase:a7 checkDict:0 checkNames:1 checkHyphens:v77 checkIntercaps:0 checkOptions:? depth:?]&& ![(AppleSpell *)v86 checkNegativeWordBuffer:cStr length:v40 languageObject:v87 alreadyCapitalized:v82 & 1]&& ![(AppleSpell *)v86 checkNegativeWordBuffer:v37 + 1 length:v89 - v40 languageObject:v87]|| v40 == 1 && (BYTE4(v77) = 0, LODWORD(v77) = 1, [AppleSpell validateWordBuffer:v86 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:v92 connection:v39 sender:v87 checkBase:a7 checkDict:0 checkNames:1 checkHyphens:v77 checkIntercaps:0 checkOptions:? depth:?]) && ![(AppleSpell *)v86 checkNegativeWordBuffer:v92 length:v39 languageObject:v87 alreadyCapitalized:v82 & 1])
      {
LABEL_44:
        v44 = v38++ == 0;
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        if (v44)
        {
          v41 = v40;
        }

        v85 = v41;
        goto LABEL_114;
      }

      if (v37 == v25)
      {
        BYTE4(v77) = 0;
        LODWORD(v77) = 1;
        if ([AppleSpell validateWordBuffer:v86 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:cStr connection:v39 sender:v87 checkBase:a7 checkDict:0 checkNames:1 checkHyphens:v77 checkIntercaps:0 checkOptions:? depth:?])
        {
          v16 = v83;
          if (![(AppleSpell *)v86 checkNegativeWordBuffer:cStr length:v39 languageObject:v87])
          {
            goto LABEL_44;
          }
        }

        else
        {
          v16 = v83;
        }
      }

LABEL_114:
      *v37 = cStr[++v40];
      if (&cStr[v40] <= v25)
      {
        v37 = &cStr[v40];
        if (v38 < 2)
        {
          continue;
        }
      }

      v34 = v38 == 0;
      v35 = encoding;
      goto LABEL_124;
    }

    v42 = v37 - 1;
    if (v40 != 1)
    {
      v42 = v37 + 1;
    }

    v43 = *v42;
    if ((v43 - 48) >= 0xA && (!v16 || !strchr(v16, v43)))
    {
      goto LABEL_114;
    }

    if (v40 == 1)
    {
      v44 = v43 == 97 && v16 == englishOneLetterWords[0];
      if (v44)
      {
        v45 = v37[1];
        HIDWORD(v47) = v45 - 65;
        LODWORD(v47) = v45 - 65;
        v46 = v47 >> 1;
        v48 = v46 > 0x1C;
        v49 = (1 << v46) & 0x14951495;
        v50 = v48 || v49 == 0;
        if (!v50 || vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, vaddq_s32(vdupq_n_s32(v45), xmmword_1D2BF7970)))) & 1 | (v45 - 248 < 6) | ((v45 & 0xD8) == 200 || v45 == 255))
        {
          goto LABEL_114;
        }
      }
    }

    if (v16 == frenchOneLetterWords)
    {
      if (v40 != 1 || v43 != 108)
      {
        goto LABEL_101;
      }
    }

    else if (v40 != 1 || v43 != 108 || v16 != italianOneLetterWords)
    {
      goto LABEL_101;
    }

    v63 = v37[1];
    HIDWORD(v65) = v63 - 65;
    LODWORD(v65) = v63 - 65;
    v64 = v65 >> 1;
    if ((v64 > 0x1C || ((1 << v64) & 0x14951495) == 0) && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, vaddq_s32(vdupq_n_s32(v63), xmmword_1D2BF7970)))) & 1) == 0 && v63 - 248 >= 6 && v63 != 255 && v63 != 104 && (v63 & 0xD8) != 0xC8)
    {
      goto LABEL_114;
    }

LABEL_101:
    v67 = v16 == frenchOneLetterWords || v16 == italianOneLetterWords;
    if (v43 == 108 && v67 && v37 == v25)
    {
      goto LABEL_114;
    }

    goto LABEL_33;
  }

  v34 = 0;
  v35 = encoding;
  v24 = v81;
LABEL_124:
  result = 0;
  if (!v34 && v85 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v89 == 4 && v85 == 2)
    {
LABEL_128:
      result = 0;
      goto LABEL_129;
    }

    v71 = *v79;
    if (*v79)
    {
      v72 = (v79 + 1);
      v73 = cStr;
      do
      {
        *v73++ = v71;
        v74 = *v72++;
        v71 = v74;
      }

      while (v74);
    }

    else
    {
      v73 = cStr;
    }

    *v73 = 0;
    v75 = &cStr[v85];
    if (v85 <= v89)
    {
      do
      {
        v24[1] = *v24;
        --v24;
      }

      while (v75 <= v24);
    }

    cStr[v85] = 32;
    if (v85 == 1 && cStr[0] == 108 && (v16 == frenchOneLetterWords || v16 == italianOneLetterWords))
    {
      *v75 = 39;
    }

    result = CFStringCreateWithCString(0, cStr, v35);
  }

LABEL_129:
  v70 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_prohibitCorrectionForLanguageObject:(id)a3 lastKeyboardLanguageObject:(id)a4
{
  result = 0;
  if (a3 && a4)
  {
    result = ([objc_msgSend(a3 "identifier")] & 1) == 0 && (v7 = objc_msgSend(a3, "orthographyIndex"), v7 != objc_msgSend(a4, "orthographyIndex")) && (objc_msgSend(a3, "usesArabicScript") && (objc_msgSend(a4, "usesArabicScript") & 1) != 0 || objc_msgSend(a3, "usesCyrillicScript") && (objc_msgSend(a4, "usesCyrillicScript") & 1) != 0 || objc_msgSend(a3, "usesDevanagariScript") && (objc_msgSend(a4, "usesDevanagariScript") & 1) != 0 || objc_msgSend(a4, "isVietnamese") && !objc_msgSend(a3, "isVietnamese"));
  }

  return result;
}

- (BOOL)_permitCorrection:(id)a3 languageObject:(id)a4 flags:(unint64_t)a5 isCapitalized:(BOOL)a6 typologyCorrection:(id)a7
{
  v8 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v12 = [a3 length];
  v13 = [a4 encoding];
  v19 = [a4 isSwedish];
  v14 = [a4 isDanish];
  v15 = [a4 isNorwegian];
  v16 = [a4 isTurkish];
  result = 1;
  if (a3 && v12)
  {
    usedBufLen = 0;
    v23.location = 0;
    v23.length = v12;
    if (v12 == CFStringGetBytes(a3, v23, v13, 0, 0, buffer, 254, &usedBufLen))
    {
      if ([(AppleSpell *)self checkWordBuffer:buffer length:usedBufLen languageObject:a4 index:1]|| [(AppleSpell *)self checkNegativeWordBuffer:buffer length:usedBufLen languageObject:a4 alreadyCapitalized:(v8 | a6) & 1])
      {
        result = 0;
        goto LABEL_11;
      }

      if (((v19 | v14 | v15 | v16) & 1) != 0 && ![(AppleSpell *)self checkNameWordBuffer:buffer length:usedBufLen languageObject:a4 globalOnly:0]&& ![(AppleSpell *)self checkWordBuffer:buffer length:usedBufLen languageObject:a4 index:0])
      {
        result = [(AppleSpell *)self validateWord:a3 inLexiconForLanguageObject:a4];
        goto LABEL_11;
      }
    }

    result = 1;
  }

LABEL_11:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_correctionResultForWord:(id)a3 replacementRange:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 languageObject:(id)a7 capitalize:(BOOL)a8 isCapitalized:(BOOL)a9 isSecondCapitalized:(BOOL)a10 hasCurlyApostrophe:(BOOL)a11 appendCorrectionLanguage:(BOOL)a12 capitalizationLocale:(id)a13 proposedCorrection:(id)a14
{
  length = a4.length;
  location = a4.location;
  v20 = a14;
  v21 = [a14 length];
  v22 = [a3 length];
  v23 = [a7 encoding];
  v68 = 8217;
  v24 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v68 length:1];
  result = 0;
  if (!a14 || !v21)
  {
    return result;
  }

  v63 = v24;
  v64 = a7;
  v65 = a6;
  v66 = a5;
  v67 = length;
  v26 = a9;
  if (a9)
  {
    v26 = a9;
    if (v22 >= 2)
    {
      v27 = 2;
      do
      {
        v28 = [a3 characterAtIndex:v27 - 1];
        if (!isAnyAlphaX(v28, v23))
        {
          goto LABEL_30;
        }

        v29 = v28 - 65;
        v30 = v28 - 65 < 0x1A;
        if (v23 > 1279)
        {
          if (v23 == 1284 || v23 == 1280)
          {
            v30 = 1;
            if (v29 >= 0x1A && v28 - 192 >= 0x17 && v28 - 216 >= 7)
            {
              v26 = 0;
              if (v28 - 138 > 0x15 || ((1 << (v28 + 118)) & 0x200015) == 0)
              {
                break;
              }
            }
          }
        }

        else if (v23 == 514)
        {
          v30 = 1;
          if (v29 >= 0x1A && v28 - 192 >= 0x17)
          {
            if (v28 - 161 >= 0x3E || ((0x3F80000000006F35uLL >> (v28 + 95)) & 1) == 0)
            {
              v26 = 0;
              break;
            }

LABEL_30:
            v30 = 1;
          }
        }

        else
        {
          v31 = v28 - 161 < 0xC || v28 - 174 < 0x22;
          v32 = v29 < 0x1A || v31;
          if (v23 == 517)
          {
            v30 = v32;
          }
        }

        if (!v30)
        {
          v26 = 0;
          break;
        }

        v26 = v30;
        v33 = v27++ >= v22;
      }

      while (!v33);
    }
  }

  v34 = location;
  v35 = 1;
  while (1)
  {
    v36 = [a14 characterAtIndex:v35 - 1];
    if (!isAnyAlphaX(v36, v23))
    {
      goto LABEL_61;
    }

    v37 = v36 - 65;
    v38 = v36 - 65 < 0x1A;
    if (v23 > 1279)
    {
      break;
    }

    if (v23 != 514)
    {
      v39 = v36 - 161 < 0xC || v36 - 174 < 0x22;
      v40 = v37 < 0x1A || v39;
      if (v23 == 517)
      {
        v38 = v40;
      }

      goto LABEL_62;
    }

    v38 = 1;
    if (v37 >= 0x1A && v36 - 192 >= 0x17)
    {
      if (v36 - 161 >= 0x3E || ((0x3F80000000006F35uLL >> (v36 + 95)) & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_61:
      v38 = 1;
    }

LABEL_62:
    if (v38)
    {
      v33 = v35++ >= v21;
      if (!v33)
      {
        continue;
      }
    }

    if (!v26)
    {
      goto LABEL_71;
    }

    if (v38)
    {
      v41 = v34;
    }

    else
    {
LABEL_69:
      v41 = v34;
      if (v22 < 5)
      {
        v20 = 0;
      }

      else
      {
        v20 = uppercasedString(a14, a13);
      }
    }

    v42 = length;
    goto LABEL_86;
  }

  if (v23 != 1284 && v23 != 1280)
  {
    goto LABEL_62;
  }

  v38 = 1;
  if (v37 < 0x1A || v36 - 192 < 0x17 || v36 - 216 < 7 || v36 - 138 <= 0x15 && ((1 << (v36 + 118)) & 0x200015) != 0)
  {
    goto LABEL_62;
  }

LABEL_68:
  if (v26)
  {
    goto LABEL_69;
  }

LABEL_71:
  v41 = v34;
  v42 = length;
  if (!a9)
  {
    if (!a10 || (v45 = toLowerX([a14 characterAtIndex:0], v23), v45 != toLowerX(objc_msgSend(a3, "characterAtIndex:", 1), v23)))
    {
LABEL_86:
      v44 = a11;
      goto LABEL_87;
    }
  }

  if (v21 < 2)
  {
    v20 = [a14 capitalizedStringWithLocale:a13];
    goto LABEL_86;
  }

  v43 = [a14 characterAtIndex:1];
  if (v23 > 1279)
  {
    if (v23 == 1284 || v23 == 1280)
    {
      v44 = a11;
      if (isUpperCase(v43))
      {
        goto LABEL_87;
      }

      goto LABEL_121;
    }

LABEL_120:
    v44 = a11;
    if ((v43 - 65) < 0x1A)
    {
      goto LABEL_87;
    }

    goto LABEL_121;
  }

  if (v23 != 514)
  {
    if (v23 == 517)
    {
      v44 = a11;
      if ((v43 - 65) < 0x1A || (v43 - 161) < 0xC || (v43 - 174) < 0x22)
      {
        goto LABEL_87;
      }

LABEL_121:
      v20 = initialCapitalizedString(a14, a13);
      goto LABEL_87;
    }

    goto LABEL_120;
  }

  if ((v43 - 65) < 0x1A)
  {
    goto LABEL_86;
  }

  v44 = a11;
  if ((v43 - 192) >= 0x17 && ((v43 - 161) > 0x3D || ((1 << (v43 + 95)) & 0x3F80000000006F35) == 0))
  {
    goto LABEL_121;
  }

LABEL_87:
  if (v44)
  {
    [v20 rangeOfString:@"'"];
    if (v46)
    {
      v20 = [v20 stringByReplacingOccurrencesOfString:@"'" withString:v63];
    }
  }

  if (!v20)
  {
    return 0;
  }

  v47 = [v20 length];
  if (v47 == v42 + 1 && (v48 = v47, v49 = v41 + v42, v41 + v42 < [v66 length]))
  {
    if (v42 < 2)
    {
      goto LABEL_99;
    }

    v50 = v42 - 1;
    if ([v20 characterAtIndex:v42 - 1] == 39 && (objc_msgSend(v66, "rangeOfString:options:range:", objc_msgSend(v20, "substringToIndex:", v42 - 1), 9, v41, v42 - 1), v51) && (objc_msgSend(v66, "rangeOfString:options:range:", objc_msgSend(v20, "substringFromIndex:", v42), 9, v49 - 1, 1), v52))
    {
LABEL_117:
      v62 = [v66 characterAtIndex:v49];
      if (v62 == 8217)
      {
        v42 = v48;
        goto LABEL_99;
      }

      v54 = v65;
      v58 = a8;
      v59 = a12;
      if (v62 == 39)
      {
        v42 = v48;
      }
    }

    else
    {
      v53 = v42 - 2;
      if (!v53)
      {
        v42 = 2;
        goto LABEL_99;
      }

      if ([v20 characterAtIndex:v53] == 39 && (objc_msgSend(v66, "rangeOfString:options:range:", objc_msgSend(v20, "substringToIndex:", v53), 9, v41, v53), v60))
      {
        [v66 rangeOfString:objc_msgSend(v20 options:"substringFromIndex:" range:{v50), 9, v49 - 2, 2}];
        v42 = length;
        if (v61)
        {
          goto LABEL_117;
        }

LABEL_99:
        v54 = v65;
      }

      else
      {
        v54 = v65;
        v42 = v67;
      }

LABEL_128:
      v58 = a8;
      v59 = a12;
    }
  }

  else
  {
    v54 = v65;
    if ([v20 length] != v42 + 2)
    {
      goto LABEL_128;
    }

    v55 = [v66 length];
    if (!v42)
    {
      goto LABEL_128;
    }

    if (v41 + v42 >= v55)
    {
      goto LABEL_128;
    }

    if ([v20 characterAtIndex:v42] != 39)
    {
      goto LABEL_128;
    }

    [v66 rangeOfString:objc_msgSend(v20 options:"substringToIndex:" range:{v42), 9, v41, v42}];
    if (!v56)
    {
      goto LABEL_128;
    }

    v57 = [v66 characterAtIndex:v41 + v42];
    v58 = a8;
    v59 = a12;
    if (v57 == 8217 || v57 == 39)
    {
      ++v42;
    }
  }

  if (v58)
  {
    v20 = initialCapitalizedString(v20, 0);
  }

  if (v59 && !a9)
  {
    v20 = [v20 stringByAppendingFormat:@"/%@", objc_msgSend(v64, "identifier")];
  }

  return [objc_alloc(MEMORY[0x1E696AB48]) initWithRange:v41 + v54 replacementString:{v42, v20}];
}

- (id)_correctionResultForString:(id)a3 range:(_NSRange)a4 inString:(id)a5 offset:(unint64_t)a6 tagger:(id)a7 appIdentifier:(id)a8 dictionary:(id)a9 languages:(id)a10 connection:(_PR_DB_IO *)a11 flags:(unint64_t)a12 keyEventArray:(id)a13 selectedRangeValue:(id)a14 parameterBundles:(id)a15 previousLetter:(unsigned __int16)a16 nextLetter:(unsigned __int16)a17 extraMisspellingCount:(unint64_t)a18 extraCorrectionCount:(unint64_t *)a19
{
  v151 = *MEMORY[0x1E69E9840];
  v147 = 8217;
  v146 = 0;
  v128 = [a3 lowercaseString];
  v117 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v147 length:1];
  v115 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v146 length:1];
  v22 = [a3 length];
  v144 = 0;
  v145 = 0;
  v23 = +[PRLanguage languageObjectWithIdentifier:](PRLanguage, "languageObjectWithIdentifier:", [a10 firstObject]);
  v24 = [v23 encoding];
  obj = [(AppleSpell *)self capitalizationDictionaryArrayForLanguageObject:v23];
  v25 = [a3 characterAtIndex:0];
  v26 = v25 - 65;
  v27 = (v25 - 65) < 0x1A;
  range = v22;
  if (v24 > 1279)
  {
    if (v24 == 1284 || v24 == 1280)
    {
      if (v26 < 0x1A)
      {
        goto LABEL_19;
      }

      if ((v25 - 192) < 0x17)
      {
        goto LABEL_19;
      }

      if ((v25 - 216) < 7)
      {
        goto LABEL_19;
      }

      v27 = 0;
      if ((v25 - 138) <= 0x15 && ((1 << (v25 + 118)) & 0x200015) != 0)
      {
        goto LABEL_19;
      }
    }
  }

  else if (v24 == 514)
  {
    if (v26 < 0x1A)
    {
      goto LABEL_19;
    }

    if ((v25 - 192) < 0x17)
    {
      goto LABEL_19;
    }

    v27 = 0;
    if ((v25 - 161) <= 0x3D && ((1 << (v25 + 95)) & 0x3F80000000006F35) != 0)
    {
      goto LABEL_19;
    }
  }

  else if (v24 == 517)
  {
    if (v26 >= 0x1A && (v25 - 161) >= 0xC)
    {
      v27 = (v25 - 174) < 0x22;
      goto LABEL_28;
    }

LABEL_19:
    v28 = 0;
    v29 = v22 > 1;
    v27 = 1;
    goto LABEL_20;
  }

LABEL_28:
  v28 = 0;
  v29 = v22 > 1;
  if (!v27 && v22 >= 2)
  {
    v29 = 1;
    v34 = [a3 characterAtIndex:1];
    v35 = v34 - 65;
    v28 = (v34 - 65) < 0x1A;
    if (v24 <= 1279)
    {
      if (v24 != 514)
      {
        if (v24 != 517)
        {
          goto LABEL_20;
        }

        v29 = 1;
        if (v35 >= 0x1A && (v34 - 161) >= 0xC)
        {
          v28 = (v34 - 174) < 0x22;
LABEL_36:
          v29 = 1;
          goto LABEL_20;
        }

        goto LABEL_190;
      }

      v29 = 1;
      if (v35 < 0x1A || (v34 - 192) < 0x17)
      {
LABEL_190:
        v28 = 1;
        goto LABEL_20;
      }

      if ((v34 - 161) <= 0x3D && ((1 << (v34 + 95)) & 0x3F80000000006F35) != 0)
      {
        v29 = 1;
        goto LABEL_190;
      }

LABEL_196:
      v28 = 0;
      goto LABEL_36;
    }

    if (v24 == 1284 || v24 == 1280)
    {
      v29 = 1;
      if (v35 < 0x1A)
      {
        goto LABEL_190;
      }

      if ((v34 - 192) < 0x17)
      {
        goto LABEL_190;
      }

      v29 = 1;
      if ((v34 - 216) < 7 || (v34 - 138) <= 0x15 && ((1 << (v34 + 118)) & 0x200015) != 0)
      {
        goto LABEL_190;
      }

      goto LABEL_196;
    }
  }

LABEL_20:
  LOBYTE(v30) = 0;
  v132 = v27;
  if (!v27)
  {
    v31 = a6;
    goto LABEL_38;
  }

  v31 = a6;
  if (!v29)
  {
    goto LABEL_38;
  }

  v32 = [a3 characterAtIndex:1];
  v33 = v32 - 65;
  LOBYTE(v30) = (v32 - 65) < 0x1A;
  if (v24 > 1279)
  {
    if (v24 != 1284 && v24 != 1280)
    {
      goto LABEL_38;
    }

    LOBYTE(v30) = 1;
    if (v33 < 0x1A)
    {
      goto LABEL_38;
    }

    if ((v32 - 192) < 0x17)
    {
      goto LABEL_38;
    }

    LOBYTE(v30) = 1;
    if ((v32 - 216) < 7 || (v32 - 138) <= 0x15 && ((1 << (v32 + 118)) & 0x200015) != 0)
    {
      goto LABEL_38;
    }

LABEL_184:
    LOBYTE(v30) = 0;
    goto LABEL_38;
  }

  if (v24 == 514)
  {
    LOBYTE(v30) = 1;
    if (v33 < 0x1A || (v32 - 192) < 0x17)
    {
      goto LABEL_38;
    }

    if ((v32 - 161) < 0x3E)
    {
      v30 = 0x3F80000000006F35uLL >> (v32 + 95);
      goto LABEL_38;
    }

    goto LABEL_184;
  }

  if (v24 == 517)
  {
    LOBYTE(v30) = 1;
    if (v33 >= 0x1A && (v32 - 161) >= 0xC)
    {
      LOBYTE(v30) = (v32 - 174) < 0x22;
    }
  }

LABEL_38:
  v127 = v28;
  v143 = range > 3;
  v142 = 0;
  v141 = 0;
  v107 = [v23 isEnglish];
  [v23 isFrench];
  v112 = [v23 isGerman];
  [v23 isSpanish];
  [v23 isItalian];
  [v23 isPortuguese];
  v111 = [v23 isDanish];
  v110 = [v23 isNorwegian];
  v109 = [v23 isNynorsk];
  v36 = [v23 isTurkish];
  v114 = [v23 isKorean];
  v106 = [objc_msgSend(v23 "identifier")];
  v125 = [v23 isArabic];
  v123 = [v23 isHindi];
  v122 = [v23 isTelugu];
  v121 = [v23 isPunjabi];
  v108 = [[PRCandidateList alloc] initWithMaxCount:32 defaultReplacementRange:a4.location customErrorModel:a4.length capitalizationDictionaryArray:0, obj];
  v139 = 0;
  v140 = 0.0;
  [(AppleSpell *)self getParameterValue:&v140 forName:@"CapitalizedWordThreshold" languageObject:v23 tagger:a7 appIdentifier:a8 parameterBundles:a15 defaultValue:-7.0];
  v120 = self;
  [(AppleSpell *)self getParameterValue:&v139 forName:@"CapitalizedWordSingleThreshold" languageObject:v23 tagger:a7 appIdentifier:a8 parameterBundles:a15 defaultValue:v140 + -2.0];
  encoding = v24;
  v37 = v31;
  v38 = v132;
  if ((_correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__readMinAutocorrectionLengthDefault & 1) == 0)
  {
    if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__minAutocorrectionLength = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }

    _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__readMinAutocorrectionLengthDefault = 1;
  }

  if (v36)
  {
    v39 = _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__turkishLocale;
    v40 = a3;
    v41 = v115;
    if (!_correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__turkishLocale)
    {
      v39 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
      _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__turkishLocale = v39;
    }
  }

  else
  {
    v39 = 0;
    v40 = a3;
    v41 = v115;
  }

  if ((v125 | v123 | v122 | v121))
  {
    LOBYTE(v30) = 0;
    v127 = 0;
    v38 = 0;
  }

  [(__CFString *)v40 rangeOfString:v41];
  v118 = v37;
  if (v42)
  {
    v40 = [(__CFString *)v40 stringByReplacingOccurrencesOfString:v41 withString:@"_"];
  }

  [(__CFString *)v40 rangeOfString:v117];
  v44 = v43;
  if (v43)
  {
    v40 = [(__CFString *)v40 stringByReplacingOccurrencesOfString:v117 withString:@"'"];
  }

  v45 = [(AppleSpell *)self _initialCorrectionForString:v40 lowercaseString:v128 isFirstSecondCapitalized:v30 & 1 dictionary:a9 languageObject:v23 connection:a11];
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v30 & 1;
  }

  if (v46 != 1)
  {
    v47 = v45;
    goto LABEL_59;
  }

  if (range < _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__minAutocorrectionLength)
  {
LABEL_57:
    v47 = 0;
LABEL_59:
    v48 = 1;
    goto LABEL_60;
  }

  v50 = [(__CFString *)v40 characterAtIndex:2];
  v51 = v50 - 65;
  if (encoding > 1279)
  {
    if (encoding == 1284 || encoding == 1280)
    {
      v47 = 0;
      v48 = 1;
      if (v51 < 0x1A)
      {
        goto LABEL_60;
      }

      if ((v50 - 192) < 0x17)
      {
        goto LABEL_60;
      }

      v47 = 0;
      if ((v50 - 216) < 7 || (v50 - 138) <= 0x15 && ((1 << (v50 + 118)) & 0x200015) != 0)
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }
  }

  else
  {
    if (encoding == 514)
    {
      v47 = 0;
      v48 = 1;
      if (v51 < 0x1A || (v50 - 192) < 0x17)
      {
        goto LABEL_60;
      }

      if ((v50 - 161) <= 0x3D && ((1 << (v50 + 95)) & 0x3F80000000006F35) != 0)
      {
        v47 = 0;
        goto LABEL_60;
      }

      goto LABEL_110;
    }

    if (encoding == 517)
    {
      v47 = 0;
      v48 = 1;
      if (v51 < 0x1A || (v50 - 161) < 0xC || (v50 - 174) < 0x22)
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }
  }

  if (v51 < 0x1A)
  {
    goto LABEL_57;
  }

LABEL_110:
  v55 = initialCapitalizedString(v128, v39);
  v56 = [(__CFString *)v55 length];
  if (!a11)
  {
    goto LABEL_57;
  }

  v153.location = 0;
  v153.length = v56;
  if (v56 != CFStringGetBytes(v55, v153, encoding, 0, 0, buffer, 254, &v145))
  {
    goto LABEL_57;
  }

  BYTE4(usedBufLen) = 0;
  LODWORD(usedBufLen) = 65793;
  v57 = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:buffer languageObject:v145 connection:v23 sender:a11 checkBase:0 checkDict:1 checkNames:usedBufLen checkHyphens:0 checkIntercaps:? checkOptions:? depth:?];
  v48 = !v57;
  if (v57)
  {
    v47 = v55;
  }

  else
  {
    v47 = 0;
  }

LABEL_60:
  if (v114)
  {
    v49 = [(AppleSpell *)self _correctionResultForKoreanString:v40 range:a4.location inString:a4.length offset:a5 tagger:v118 appIdentifier:a7 dictionary:a8 keyEventArray:a9, a13];
    goto LABEL_183;
  }

  v116 = v39;
  if ((v47 != 0 || !v38) | v112 & 1)
  {
    v48 = (v47 == 0) & v48;
  }

  else
  {
    if (a7 && [a7 orthoIndex])
    {
      [a7 sentenceRangeForRange:{a4.location, a4.length}];
    }

    v143 = 0;
  }

  v133 = v38;
  if (!v48 || (v52 = range, range < _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__minAutocorrectionLength) || (v152.location = 0, v152.length = range, range != CFStringGetBytes(v40, v152, encoding, 0, 0, buffer, 254, &v145)) || (v53 = v145, buffer[v145] = 0, !v53) || (((v112 | v111 | v110 | v109) & 1) == 0 ? (v54 = 1) : (v47 = [AppleSpell _umlautCorrectionForWord:"_umlautCorrectionForWord:buffer:length:languageObject:connection:typologyCorrection:" buffer:v40 length:buffer languageObject:? connection:? typologyCorrection:?], v54 = v47 == 0), !a9 || !v54))
  {
    v58 = a12;
    goto LABEL_178;
  }

  v58 = a12;
  if ([v23 isSupportedAssetLexiconLanguage] && !-[AppleSpell loadedLexiconsCountForLanguageObject:](self, "loadedLexiconsCountForLanguageObject:", v23) || -[AppleSpell checkWordBuffer:length:languageObject:index:](self, "checkWordBuffer:length:languageObject:index:", buffer, v145, v23, 4))
  {
    goto LABEL_178;
  }

  if (v145)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    do
    {
      v63 = buffer[v59];
      v64 = v63 - 65;
      LOBYTE(v65) = (v63 - 65) < 0x1A;
      if (encoding > 1279)
      {
        if (encoding != 1284 && encoding != 1280)
        {
          goto LABEL_153;
        }

        if (v64 < 0x1A || (v63 - 192) < 0x17)
        {
          goto LABEL_152;
        }

        LOBYTE(v65) = 1;
        if ((v63 - 216) < 7 || (v63 - 138) <= 0x15 && ((1 << (v63 + 118)) & 0x200015) != 0)
        {
          goto LABEL_153;
        }
      }

      else
      {
        if (encoding != 514)
        {
          if (encoding != 517)
          {
            goto LABEL_153;
          }

          v66 = v64 >= 0x1A && (v63 - 161) >= 0xC;
          if (v66)
          {
            LOBYTE(v65) = (v63 - 174) < 0x22;
            goto LABEL_153;
          }

LABEL_152:
          LOBYTE(v65) = 1;
          goto LABEL_153;
        }

        if (v64 < 0x1A || (v63 - 192) < 0x17)
        {
          goto LABEL_152;
        }

        if ((v63 + 95) < 0x3Eu)
        {
          v65 = 0x3F80000000006F35uLL >> (v63 + 95);
          goto LABEL_153;
        }
      }

      LOBYTE(v65) = 0;
LABEL_153:
      v69 = (v63 < 0x30) & (0xA00100000000uLL >> v63);
      if (v69)
      {
        v70 = v62 + 1;
      }

      else
      {
        v70 = v62;
      }

      if (v59)
      {
        if (v63 == buffer[v59 - 1])
        {
          ++v60;
        }

        else
        {
          v60 = 0;
        }
      }

      else
      {
        v60 = 0;
      }

      if (v63 == 46)
      {
        goto LABEL_178;
      }

      if ((v63 - 48) < 0xAu)
      {
        goto LABEL_178;
      }

      if (v63 == 64)
      {
        goto LABEL_178;
      }

      if (v63 == 95)
      {
        goto LABEL_178;
      }

      v61 += ((v65 ^ 1 | (v125 | v123 | v122 | v121)) & 1) == 0;
      if (v69)
      {
        if ((v62 + 1) > 1 || v59 < _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__minAutocorrectionLength || _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__minAutocorrectionLength + v59 >= v145)
        {
          goto LABEL_178;
        }
      }

      if (v61 > 2 || v145 - 1 == v59 && v60 > 1)
      {
        goto LABEL_178;
      }

      ++v59;
      v62 = v70;
    }

    while (v59 < v145);
  }

  v126 = 0;
  if ((v107 & 1) == 0 && encoding == 1280 && range >= 4)
  {
    if ([(AppleSpell *)self checkWordBuffer:buffer length:v145 languageObject:[PRLanguage index:"languageObjectWithIdentifier:" languageObjectWithIdentifier:?], 0])
    {
      v143 = 0;
      v126 = 1;
    }

    else
    {
      v126 = 0;
    }
  }

  if (!v38 && !v127)
  {
    v76 = buffer[0];
    buffer[0] = toUpperX(buffer[0], encoding);
    BYTE4(usedBufLen) = 0;
    LODWORD(usedBufLen) = 65793;
    if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:buffer languageObject:v145 connection:v23 sender:a11 checkBase:0 checkDict:1 checkNames:usedBufLen checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
    {
      if ((v112 | (a12 >> 1)))
      {
        v124 = CFStringCreateWithCString(0, buffer, encoding);
      }

      else
      {
        v124 = 0;
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v77 = [obj countByEnumeratingWithState:&v135 objects:v148 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = 0;
        v80 = *v136;
        do
        {
          for (i = 0; i != v78; ++i)
          {
            if (*v136 != v80)
            {
              objc_enumerationMutation(obj);
            }

            v79 |= [*(*(&v135 + 1) + 8 * i) objectForKey:v40] != 0;
          }

          v78 = [obj countByEnumeratingWithState:&v135 objects:v148 count:16];
        }

        while (v78);
        v52 = range;
        v82 = v79 | (range > 3);
        self = v120;
        v58 = a12;
        if ((v82 & 1) == 0)
        {
          goto LABEL_214;
        }
      }

      else if (range < 4)
      {
        goto LABEL_214;
      }

      v143 = 0;
      v126 = 1;
    }

    else
    {
      v124 = 0;
    }

LABEL_214:
    buffer[0] = v76;
    v75 = v133;
    goto LABEL_215;
  }

  v124 = 0;
  v75 = v38;
LABEL_215:
  v83 = v75;
  v84 = 1;
  if (!v75 || !a13 || v127)
  {
    v85 = v126;
    goto LABEL_225;
  }

  v66 = v52 >= 4;
  v85 = v126;
  if (v66)
  {
    v86 = [(AppleSpell *)self nerTaggerWaitForResult:0];
    v87 = v86;
    if (_correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__onceToken == -1)
    {
      if (!v86)
      {
LABEL_223:
        v83 = v133;
        goto LABEL_225;
      }
    }

    else
    {
      [AppleSpell(Correction) _correctionResultForString:range:inString:offset:tagger:appIdentifier:dictionary:languages:connection:flags:keyEventArray:selectedRangeValue:parameterBundles:previousLetter:nextLetter:extraMisspellingCount:extraCorrectionCount:];
      if (!v87)
      {
        goto LABEL_223;
      }
    }

    [v87 setString:v40];
    [v87 setLanguage:objc_msgSend(v23 range:{"localization"), 0, -[__CFString length](v40, "length")}];
    v88 = [v87 tagAtIndex:0 unit:0 scheme:*MEMORY[0x1E69779D0] tokenRange:0];
    v84 = [_correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__nerTags containsObject:v88] ^ 1;
    [v87 setString:&stru_1F4E0A7A0];
    goto LABEL_223;
  }

LABEL_225:
  if (a11 && v84 && (v145 - 2) <= 0x3D)
  {
    v89 = v108;
    if ([(AppleSpell *)self useWordLanguageModelForLanguageObject:v23 tagger:a7 appIdentifier:a8])
    {
      v90 = v108;
    }

    else
    {
      v90 = 0;
    }

    BYTE1(usedBufLen) = v85;
    LOBYTE(usedBufLen) = v83;
    v47 = [(AppleSpell *)self _connectionCorrectionForWord:v40 buffer:buffer length:v145 languageObject:v23 connection:a11 flags:v58 isCapitalized:usedBufLen accentCorrectionOnly:&v142 isAbbreviation:&v143 trySpaceInsertion:&v141 hasAccentCorrections:v90 candidateList:0 typologyCorrection:?];
LABEL_233:
    if (v47)
    {
      v91 = 0;
    }

    else
    {
      v91 = (v124 != 0) & ~v141;
      if (v141)
      {
        v47 = 0;
      }

      else
      {
        v47 = v124;
      }
    }

    if (((v85 | v91) & 1) == 0 && (v142 & 1) == 0 && [(AppleSpell *)self useWordLanguageModelForLanguageObject:v23 tagger:a7 appIdentifier:a8])
    {
      [(PRCandidateList *)v108 addCandidateWithString:v47 errorType:6];
      BYTE4(usedBufLen) = 1;
      v89 = v108;
      LODWORD(usedBufLen) = __PAIR32__(a17, a16);
      [AppleSpell _addGuessesForWordBuffer:"_addGuessesForWordBuffer:length:languageObject:connection:sender:minAutocorrectionLength:previousLetter:nextLetter:basicOnly:toGuesses:" length:buffer languageObject:v145 connection:v23 sender:a11 minAutocorrectionLength:0 previousLetter:_correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__minAutocorrectionLength nextLetter:usedBufLen basicOnly:v108 toGuesses:?];
    }

    if (!v89)
    {
      goto LABEL_281;
    }

    if ([(PRCandidateList *)v89 count]&& [(AppleSpell *)self useWordLanguageModelForLanguageObject:v23 tagger:a7 appIdentifier:a8])
    {
      v92 = [(AppleSpell *)self _rankedCandidatesForCandidateList:v89 languageObject:v23 tagger:a7 appIdentifier:a8 parameterBundles:a15];
      v93 = [v92 count];
      v94 = v93;
      v95 = 0;
      if (v92 && v93)
      {
        v95 = [v92 objectAtIndex:0];
      }

      v96 = v94 < 2;
    }

    else
    {
      if (v47)
      {
        goto LABEL_281;
      }

      if ([(PRCandidateList *)v89 count]!= 1)
      {
        v47 = 0;
        goto LABEL_281;
      }

      v95 = [-[PRCandidateList candidates](v89 "candidates")];
      v96 = 1;
    }

    if (!v95)
    {
      goto LABEL_281;
    }

    v97 = [v95 string];
    a4.location = [v95 replacementRange];
    a4.length = v98;
    if ([v95 isBlocklisted])
    {
      v47 = 0;
    }

    else
    {
      v47 = v97;
    }

    v99 = !v133;
    if (!v47)
    {
      v99 = 1;
    }

    if (v99)
    {
LABEL_280:
      v143 = 0;
LABEL_281:
      if (v143)
      {
        LOBYTE(usedBufLen) = v133;
        v47 = [(AppleSpell *)self _spaceInsertionCorrectionForWord:v40 buffer:buffer length:v145 languageObject:v23 connection:a11 flags:v58 isCapitalized:usedBufLen typologyCorrection:0];
      }

      goto LABEL_178;
    }

    v100 = &v140;
    if (v96)
    {
      v100 = &v139;
    }

    v101 = *v100;
    if ((v112 | v106))
    {
      v102 = [(__CFString *)v47 length];
      if (v102)
      {
        v154.location = 0;
        v154.length = v102;
        if (v102 == CFStringGetBytes(v47, v154, encoding, 0, 0, v149, 254, &v144))
        {
          if (![(AppleSpell *)self checkNameWordBuffer:v149 length:v144 languageObject:v23 globalOnly:0])
          {
            goto LABEL_265;
          }

          goto LABEL_266;
        }
      }
    }

    else if (v107 && [(__CFString *)v47 length]>= 4)
    {
      if ([(__CFString *)v47 hasSuffix:@"'s"])
      {
        v103 = [(__CFString *)v47 length];
        if (v103 != 2)
        {
          v155.location = 0;
          v155.length = v103 - 2;
          if (v103 - 2 == CFStringGetBytes(v47, v155, encoding, 0, 0, v149, 254, &v144))
          {
            self = v120;
            v58 = a12;
            if (![(AppleSpell *)v120 checkNameWordBuffer:v149 length:v144 languageObject:v23 globalOnly:0])
            {
LABEL_265:
              if (![(AppleSpell *)self validateWord:v47 inLexiconForLanguageObject:v23])
              {
                goto LABEL_278;
              }
            }

LABEL_266:
            v101 = -99.0;
            goto LABEL_278;
          }
        }
      }

      self = v120;
      v58 = a12;
    }

LABEL_278:
    [v95 score];
    if (v104 < v101)
    {
      v47 = 0;
    }

    goto LABEL_280;
  }

  v89 = v108;
  if (v84)
  {
    goto LABEL_233;
  }

LABEL_178:
  if ([(AppleSpell *)self _permitCorrection:v47 languageObject:v23 flags:v58 isCapitalized:v133 typologyCorrection:0])
  {
    v71 = v47;
  }

  else
  {
    v71 = 0;
  }

  [(__CFString *)v71 length];
  BYTE4(usedBufLen) = (v58 & 0x10) != 0;
  BYTE3(usedBufLen) = v44 != 0;
  BYTE2(usedBufLen) = v127;
  BYTE1(usedBufLen) = v133;
  LOBYTE(usedBufLen) = v58 & 1;
  v72 = [AppleSpell _correctionResultForWord:"_correctionResultForWord:replacementRange:inString:offset:languageObject:capitalize:isCapitalized:isSecondCapitalized:hasCurlyApostrophe:appendCorrectionLanguage:capitalizationLocale:proposedCorrection:" replacementRange:v40 inString:a4.location offset:a4.length languageObject:a5 capitalize:v118 isCapitalized:v23 isSecondCapitalized:usedBufLen hasCurlyApostrophe:v116 appendCorrectionLanguage:v71 capitalizationLocale:? proposedCorrection:?];
  v49 = v72;
  if (v72)
  {
    [v72 replacementString];
  }

LABEL_183:
  v73 = *MEMORY[0x1E69E9840];
  return v49;
}

id __253__AppleSpell_Correction___correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6977998];
  v3[0] = *MEMORY[0x1E6977988];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E6977960];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  _correctionResultForString_range_inString_offset_tagger_appIdentifier_dictionary_languages_connection_flags_keyEventArray_selectedRangeValue_parameterBundles_previousLetter_nextLetter_extraMisspellingCount_extraCorrectionCount__nerTags = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_lexiconPathForLocalization:(id)a3 type:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@.dat", a4, a3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__AppleSpell_Lexicon___lexiconPathForLocalization_type___block_invoke;
    v11[3] = &unk_1E84056B0;
    v11[4] = a4;
    v11[5] = v8;
    v11[6] = &v12;
    [(AppleSpell *)self enumerateAssetDataItemsForLocale:v7 withBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __56__AppleSpell_Lexicon___lexiconPathForLocalization_type___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (([@"Lexicon" isEqualToString:a4] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "hasPrefix:", @"Siri-"), result) && ((objc_msgSend(@"SiriLexicon", "isEqualToString:", a4) & 1) != 0 || (result = objc_msgSend(@"SiriLexiconDelta", "isEqualToString:", a4), result)))
  {
    result = [objc_msgSend(a2 "lastPathComponent")];
    if (result)
    {
      result = [objc_msgSend(a2 "path")];
      *(*(*(a1 + 48) + 8) + 40) = result;
      *a5 = 1;
    }
  }

  return result;
}

- (id)_lexiconPathForLanguageObject:(id)a3 type:(id)a4
{
  result = -[AppleSpell _lexiconPathForLocalization:type:](self, "_lexiconPathForLocalization:type:", [a3 languageModelLocalization], a4);
  if (!result)
  {
    v8 = [a3 languageModelFallbackLocalization];

    return [(AppleSpell *)self _lexiconPathForLocalization:v8 type:a4];
  }

  return result;
}

- (id)_phraseLexiconPathForLanguage:(id)a3
{
  v4 = [PRLanguage languageObjectWithIdentifier:a3];

  return [(AppleSpell *)self _lexiconPathForLanguageObject:v4 type:@"Phrases"];
}

- (id)_siriLexiconPathForLanguage:(id)a3
{
  v4 = [PRLanguage languageObjectWithIdentifier:a3];

  return [(AppleSpell *)self _lexiconPathForLanguageObject:v4 type:@"Siri-Unigrams"];
}

- (id)_siriDeltaPathForLanguage:(id)a3
{
  v4 = [PRLanguage languageObjectWithIdentifier:a3];

  return [(AppleSpell *)self _lexiconPathForLanguageObject:v4 type:@"Siri-Delta"];
}

- (id)backgroundLoadingQueue
{
  if (backgroundLoadingQueue_onceToken != -1)
  {
    [AppleSpell(Lexicon) backgroundLoadingQueue];
  }

  return backgroundLoadingQueue__backgroundLoadingQueue;
}

dispatch_queue_t __45__AppleSpell_Lexicon__backgroundLoadingQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.ProofReader.backgroundLoadingQueue", v0);
  backgroundLoadingQueue__backgroundLoadingQueue = result;
  return result;
}

id __80__AppleSpell_Lexicon___loadLexiconsForLanguage_localization_cachedOnly_onQueue___block_invoke(void *a1)
{
  result = [*(a1[4] + 64) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

uint64_t __80__AppleSpell_Lexicon___loadLexiconsForLanguage_localization_cachedOnly_onQueue___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [PRLexicon lexiconWithLocalization:*(a1 + 32) unigramsPath:0 cachedOnly:*(a1 + 72)];
  v3 = [*(a1 + 40) transliterationLocalization];
  v17 = [*(a1 + 40) spellingFallbackLocalization];
  v15 = [MEMORY[0x1E695DF70] array];
  if (v2)
  {
    [*(a1 + 48) addObject:v2];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a1 + 56) dataBundlesForLanguageObject:{*(a1 + 40), v15}];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 pathForResource:@"Unigrams" ofType:@"dat" inDirectory:0 forLocalization:{objc_msgSend(*(a1 + 40), "localization")}];
        if (!v10)
        {
          v10 = [v9 pathForResource:@"Unigrams" ofType:@"dat" inDirectory:0 forLocalization:{objc_msgSend(*(a1 + 40), "localization")}];
          if (!v10)
          {
            continue;
          }
        }

        v11 = [PRLexicon lexiconWithLocalization:*(a1 + 32) unigramsPath:v10];
        if (v11)
        {
          [*(a1 + 48) addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if ((*(a1 + 72) & 1) == 0)
  {
    if (result)
    {
      result = [result isEqualToString:@"com.apple.siri"];
      if (result)
      {
        v13 = [*(a1 + 56) _siriLexiconPathForLanguage:*(a1 + 64)];
        result = [*(a1 + 56) _siriDeltaPathForLanguage:*(a1 + 64)];
        if (v13)
        {
          result = [PRLexicon lexiconWithLocalization:*(a1 + 32) unigramsPath:v13 deltaPath:result cachedOnly:0];
          if (result)
          {
            result = [*(a1 + 48) addObject:result];
          }
        }
      }
    }
  }

  if (v3)
  {
    result = [v16 containsObject:v3];
    if ((result & 1) == 0)
    {
      result = [PRLexicon lexiconWithLocalization:v3 unigramsPath:0 cachedOnly:*(a1 + 72)];
      if (result)
      {
        result = [*(a1 + 48) addObject:result];
      }
    }
  }

  if (v17)
  {
    result = [v16 containsObject:v17];
    if ((result & 1) == 0)
    {
      result = [PRLexicon lexiconWithLocalization:v17 unigramsPath:0 cachedOnly:*(a1 + 72)];
      if (result)
      {
        result = [*(a1 + 48) addObject:result];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_lexiconsForLanguage:(id)a3 loadType:(int64_t)a4
{
  v7 = [(AppleSpell *)self languageModelLocalizationForLanguage:?];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  if (_lexiconsForLanguage_loadType__onceToken != -1)
  {
    [AppleSpell(Lexicon) _lexiconsForLanguage:loadType:];
  }

  lexiconSerialQueue = self->_lexiconSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AppleSpell_Lexicon___lexiconsForLanguage_loadType___block_invoke_2;
  block[3] = &unk_1E84050D8;
  block[5] = v7;
  block[6] = &v18;
  block[4] = self;
  dispatch_sync(lexiconSerialQueue, block);
  if ([v19[5] isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v19[5] = 0;
    goto LABEL_14;
  }

  v9 = v19[5];
  if (v9)
  {
    if (a4 != 2 || ([v9 cachedOnly] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (a4 == 1)
  {
    v11 = [(AppleSpell *)self _loadLexiconsForLanguage:a3 localization:v7 cachedOnly:1 onQueue:_lexiconsForLanguage_loadType___waitingLexiconCreationSerialQueue];
    v19[5] = v11;
  }

  else if (a4 == 2)
  {
LABEL_11:
    v10 = [(AppleSpell *)self _loadLexiconsForLanguage:a3 localization:v7 cachedOnly:0 onQueue:_lexiconsForLanguage_loadType___waitingLexiconCreationSerialQueue];
    v19[5] = v10;
    goto LABEL_14;
  }

  v12 = [(AppleSpell *)self backgroundLoadingQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__AppleSpell_Lexicon___lexiconsForLanguage_loadType___block_invoke_3;
  v16[3] = &unk_1E8405100;
  v16[4] = self;
  v16[5] = a3;
  v16[6] = v7;
  dispatch_async(v12, v16);
LABEL_14:
  v13 = v19[5];
  if (v13)
  {
    v14 = [v13 lexicons];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v14;
}

dispatch_queue_t __53__AppleSpell_Lexicon___lexiconsForLanguage_loadType___block_invoke()
{
  _lexiconsForLanguage_loadType___waitingLexiconCreationSerialQueue = dispatch_queue_create("com.apple.ProofReader.waitingLexiconCreationSerialQueue", 0);
  result = dispatch_queue_create("com.apple.ProofReader.nonWaitingexiconCreationSerialQueue", 0);
  _lexiconsForLanguage_loadType___nonWaitingLexiconCreationSerialQueue = result;
  return result;
}

id __53__AppleSpell_Lexicon___lexiconsForLanguage_loadType___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 64) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  if (!*(*(a1[6] + 8) + 40))
  {
    v3 = *(a1[4] + 64);
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = a1[5];

    return [v3 setObject:v4 forKey:v5];
  }

  return result;
}

void __53__AppleSpell_Lexicon___lexiconsForLanguage_loadType___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _loadLexiconsForLanguage:*(a1 + 40) localization:*(a1 + 48) cachedOnly:0 onQueue:_lexiconsForLanguage_loadType___nonWaitingLexiconCreationSerialQueue];

  objc_autoreleasePoolPop(v2);
}

- (id)lexiconForLanguage:(id)a3
{
  v3 = [-[AppleSpell _lexiconsForLanguage:loadType:](self _lexiconsForLanguage:a3 loadType:{2), "firstObject"}];

  return v3;
}

- (id)_lexiconsForLanguageObject:(id)a3
{
  v4 = [a3 identifier];

  return [(AppleSpell *)self _lexiconsForLanguage:v4 loadType:1];
}

- (id)lexiconForLanguageObject:(id)a3
{
  v3 = [-[AppleSpell _lexiconsForLanguage:loadType:](self _lexiconsForLanguage:objc_msgSend(a3 loadType:{"identifier"), 2), "firstObject"}];

  return v3;
}

- (unint64_t)loadedLexiconsCountForLanguageObject:(id)a3
{
  v3 = -[AppleSpell _lexiconsForLanguage:loadType:](self, "_lexiconsForLanguage:loadType:", [a3 identifier], 0);

  return [v3 count];
}

- (id)_loadPhraseLexiconsForLanguage:(id)a3 localization:(id)a4 onQueue:(id)a5
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__3;
  lexiconSerialQueue = self->_lexiconSerialQueue;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AppleSpell_Lexicon___loadPhraseLexiconsForLanguage_localization_onQueue___block_invoke;
  block[3] = &unk_1E84050D8;
  block[5] = a4;
  block[6] = &v19;
  block[4] = self;
  dispatch_sync(lexiconSerialQueue, block);
  v10 = v20[5];
  if (!v10 || [v10 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__AppleSpell_Lexicon___loadPhraseLexiconsForLanguage_localization_onQueue___block_invoke_2;
    v17[3] = &unk_1E8405700;
    v17[4] = self;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = v11;
    dispatch_sync(a5, v17);
    v20[5] = v11;
    v13 = self->_lexiconSerialQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__AppleSpell_Lexicon___loadPhraseLexiconsForLanguage_localization_onQueue___block_invoke_3;
    v16[3] = &unk_1E8405288;
    v16[5] = a4;
    v16[6] = &v19;
    v16[4] = self;
    dispatch_sync(v13, v16);
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v14;
}

id __75__AppleSpell_Lexicon___loadPhraseLexiconsForLanguage_localization_onQueue___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

PRLexicon *__75__AppleSpell_Lexicon___loadPhraseLexiconsForLanguage_localization_onQueue___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _phraseLexiconPathForLanguage:*(a1 + 40)];
  if (result)
  {
    result = [PRLexicon lexiconWithLocalization:*(a1 + 48) unigramsPath:result];
    if (result)
    {
      v3 = result;
      v4 = *(a1 + 56);

      return [v4 addObject:v3];
    }
  }

  return result;
}

- (id)_phraseLexiconsForLanguage:(id)a3 waitForResult:(BOOL)a4
{
  v4 = a4;
  v7 = [(AppleSpell *)self languageModelLocalizationForLanguage:?];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  if (_phraseLexiconsForLanguage_waitForResult__onceToken != -1)
  {
    [AppleSpell(Lexicon) _phraseLexiconsForLanguage:waitForResult:];
  }

  lexiconSerialQueue = self->_lexiconSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AppleSpell_Lexicon___phraseLexiconsForLanguage_waitForResult___block_invoke_2;
  block[3] = &unk_1E84050D8;
  block[5] = v7;
  block[6] = &v14;
  block[4] = self;
  dispatch_sync(lexiconSerialQueue, block);
  if ([v15[5] isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v9 = 0;
    v15[5] = 0;
  }

  else
  {
    v9 = v15[5];
    if (!v9)
    {
      if (v4)
      {
        v9 = [(AppleSpell *)self _loadPhraseLexiconsForLanguage:a3 localization:v7 onQueue:_phraseLexiconsForLanguage_waitForResult___phraseLexiconCreationSerialQueue];
        v15[5] = v9;
      }

      else
      {
        v10 = [(AppleSpell *)self backgroundLoadingQueue];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __64__AppleSpell_Lexicon___phraseLexiconsForLanguage_waitForResult___block_invoke_3;
        v12[3] = &unk_1E8405100;
        v12[4] = self;
        v12[5] = a3;
        v12[6] = v7;
        dispatch_async(v10, v12);
        v9 = v15[5];
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  return v9;
}

dispatch_queue_t __64__AppleSpell_Lexicon___phraseLexiconsForLanguage_waitForResult___block_invoke()
{
  result = dispatch_queue_create("com.apple.ProofReader.phraseLexiconCreationSerialQueue", 0);
  _phraseLexiconsForLanguage_waitForResult___phraseLexiconCreationSerialQueue = result;
  return result;
}

id __64__AppleSpell_Lexicon___phraseLexiconsForLanguage_waitForResult___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 72) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  if (!*(*(a1[6] + 8) + 40))
  {
    v3 = *(a1[4] + 72);
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = a1[5];

    return [v3 setObject:v4 forKey:v5];
  }

  return result;
}

void __64__AppleSpell_Lexicon___phraseLexiconsForLanguage_waitForResult___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _loadPhraseLexiconsForLanguage:*(a1 + 40) localization:*(a1 + 48) onQueue:_phraseLexiconsForLanguage_waitForResult___phraseLexiconCreationSerialQueue];

  objc_autoreleasePoolPop(v2);
}

- (void)updateLexiconsForLanguage:(id)a3
{
  v4 = [(AppleSpell *)self languageModelLocalizationForLanguage:a3];
  lexiconSerialQueue = self->_lexiconSerialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AppleSpell_Lexicon__updateLexiconsForLanguage___block_invoke;
  v6[3] = &unk_1E8405128;
  v6[4] = self;
  v6[5] = v4;
  dispatch_sync(lexiconSerialQueue, v6);
}

uint64_t __49__AppleSpell_Lexicon__updateLexiconsForLanguage___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  }

  result = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 72);

    return [v4 removeObjectForKey:v3];
  }

  return result;
}

- (void)updateLexiconsForLanguageIfNecessary:(id)a3
{
  if (a3)
  {
    v5 = [(AppleSpell *)self languageModelLocalizationForLanguage:?];
    if (v5)
    {
      if ([+[PRLanguage supportedAssetLexiconLanguages](PRLanguage "supportedAssetLexiconLanguages")])
      {

        [(AppleSpell *)self updateLexiconsForLanguage:a3];
      }
    }
  }
}

- (void)updateLexiconsForLanguageObject:(id)a3
{
  v4 = [a3 identifier];

  [(AppleSpell *)self updateLexiconsForLanguage:v4];
}

- (void)updateLexiconsForLanguageObjectIfNecessary:(id)a3
{
  if ([a3 isSupportedAssetLexiconLanguage])
  {

    [(AppleSpell *)self updateLexiconsForLanguageObject:a3];
  }
}

- (void)updateAllLexicons
{
  lexiconSerialQueue = self->_lexiconSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AppleSpell_Lexicon__updateAllLexicons__block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  dispatch_sync(lexiconSerialQueue, block);
}

- (BOOL)validateWord:(id)a3 inLexicons:(id)a4 forLanguage:(id)a5 requiredMetaFlags:(unsigned int)a6 alternativeRequiredMetaFlags:(unsigned int)a7 prohibitedMetaFlags:(unsigned int)a8 caseInsensitive:(BOOL)a9
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v12 = [a3 length];
  if ([-[AppleSpell languageModelLocalizationForLanguage:](self languageModelLocalizationForLanguage:{a5), "isEqualToString:", @"tr"}])
  {
    v13 = validateWord_inLexicons_forLanguage_requiredMetaFlags_alternativeRequiredMetaFlags_prohibitedMetaFlags_caseInsensitive__turkishLocale;
    if (!validateWord_inLexicons_forLanguage_requiredMetaFlags_alternativeRequiredMetaFlags_prohibitedMetaFlags_caseInsensitive__turkishLocale)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
      validateWord_inLexicons_forLanguage_requiredMetaFlags_alternativeRequiredMetaFlags_prohibitedMetaFlags_caseInsensitive__turkishLocale = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  if (a4 && v12)
  {
    v14 = [a4 count];
    v15 = *(v34 + 24);
    if ((v15 & 1) == 0)
    {
      v16 = v14;
      if (v14)
      {
        v17 = 0;
        do
        {
          v18 = [a4 objectAtIndex:v17];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __142__AppleSpell_Lexicon__validateWord_inLexicons_forLanguage_requiredMetaFlags_alternativeRequiredMetaFlags_prohibitedMetaFlags_caseInsensitive___block_invoke;
          v24[3] = &unk_1E8405728;
          v28 = a9;
          v25 = a6;
          v26 = a7;
          v27 = a8;
          v24[5] = v13;
          v24[6] = v29;
          v24[7] = v31;
          v24[8] = &v33;
          v24[4] = a3;
          v24[9] = v12;
          [v18 enumerateEntriesForString:a3 usingBlock:v24];
          v15 = *(v34 + 24);
          if (v15)
          {
            break;
          }

          ++v17;
        }

        while (v17 < v16);
      }
    }
  }

  else
  {
    v15 = *(v34 + 24);
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);
  return v15 & 1;
}

uint64_t __142__AppleSpell_Lexicon__validateWord_inLexicons_forLanguage_requiredMetaFlags_alternativeRequiredMetaFlags_prohibitedMetaFlags_caseInsensitive___block_invoke(uint64_t result, void *a2, uint64_t a3, int a4, _BYTE *a5)
{
  v7 = result;
  if (((*(result + 80) & ~a4) == 0 || (*(result + 84) & ~a4) == 0) && (*(result + 88) & a4) == 0)
  {
    if (*(result + 92) & 1) != 0 || ([a2 isEqualToString:{objc_msgSend(a2, "lowercaseString")}])
    {
      v8 = 1;
    }

    else
    {
      if ((*(*(*(v7 + 48) + 8) + 24) & 1) == 0)
      {
        if (!validateWord_inLexicons_forLanguage_requiredMetaFlags_alternativeRequiredMetaFlags_prohibitedMetaFlags_caseInsensitive__lowercaseSet)
        {
          validateWord_inLexicons_forLanguage_requiredMetaFlags_alternativeRequiredMetaFlags_prohibitedMetaFlags_caseInsensitive__lowercaseSet = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
        }

        [*(v7 + 32) rangeOfCharacterFromSet:?];
        *(*(*(v7 + 56) + 8) + 24) = v9 != 0;
        *(*(*(v7 + 48) + 8) + 24) = 1;
      }

      v8 = *(*(*(v7 + 56) + 8) + 24) ^ 1;
    }

    result = [*(v7 + 32) compare:a2 options:v8 range:0 locale:{*(v7 + 72), *(v7 + 40)}];
    if (!result)
    {
      *(*(*(v7 + 64) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

- (BOOL)validateDiacriticInsensitiveWord:(id)a3 inLexiconForLanguageObject:(id)a4
{
  v6 = [a4 identifier];
  v15 = [(AppleSpell *)self _lexiconsForLanguage:v6];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v7 = [a3 length];
  if ([-[AppleSpell languageModelLocalizationForLanguage:](self languageModelLocalizationForLanguage:{v6), "isEqualToString:", @"tr"}])
  {
    v8 = validateDiacriticInsensitiveWord_inLexiconForLanguageObject__turkishLocale;
    if (!validateDiacriticInsensitiveWord_inLexiconForLanguageObject__turkishLocale)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
      validateDiacriticInsensitiveWord_inLexiconForLanguageObject__turkishLocale = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v15 && v7)
  {
    v9 = [v15 count];
    v10 = *(v23 + 24);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if (v9)
      {
        v12 = 0;
        do
        {
          v13 = [v15 objectAtIndex:v12];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __83__AppleSpell_Lexicon__validateDiacriticInsensitiveWord_inLexiconForLanguageObject___block_invoke;
          v16[3] = &unk_1E8405750;
          v17 = 66;
          v16[6] = v18;
          v16[7] = v20;
          v16[4] = a3;
          v16[5] = v8;
          v16[8] = &v22;
          v16[9] = v7;
          [v13 enumerateEntriesForString:a3 usingBlock:v16];
          v10 = *(v23 + 24);
          if (v10)
          {
            break;
          }

          ++v12;
        }

        while (v12 < v11);
      }
    }
  }

  else
  {
    v10 = *(v23 + 24);
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
  return v10 & 1;
}

uint64_t __83__AppleSpell_Lexicon__validateDiacriticInsensitiveWord_inLexiconForLanguageObject___block_invoke(uint64_t result, void *a2, uint64_t a3, int a4, _BYTE *a5)
{
  if ((*(result + 80) & a4) == 0)
  {
    v7 = result;
    if ([a2 isEqualToString:{objc_msgSend(a2, "lowercaseString")}])
    {
      v8 = 129;
    }

    else
    {
      if ((*(*(*(v7 + 48) + 8) + 24) & 1) == 0)
      {
        if (!validateDiacriticInsensitiveWord_inLexiconForLanguageObject__lowercaseSet)
        {
          validateDiacriticInsensitiveWord_inLexiconForLanguageObject__lowercaseSet = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
        }

        [*(v7 + 32) rangeOfCharacterFromSet:?];
        *(*(*(v7 + 56) + 8) + 24) = v9 != 0;
        *(*(*(v7 + 48) + 8) + 24) = 1;
      }

      if (*(*(*(v7 + 56) + 8) + 24))
      {
        v8 = 128;
      }

      else
      {
        v8 = 129;
      }
    }

    result = [*(v7 + 32) compare:a2 options:v8 range:0 locale:{*(v7 + 72), *(v7 + 40)}];
    if (!result)
    {
      *(*(*(v7 + 64) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

- (BOOL)getMetaFlagsForWord:(id)a3 inLexiconForLanguage:(id)a4 metaFlags:(unsigned int *)a5 otherMetaFlags:(unsigned int *)a6
{
  v41 = 0;
  v42[0] = &v41;
  v42[1] = 0x2020000000;
  v43 = 0;
  v38 = 0;
  v39[0] = &v38;
  v39[1] = 0x2020000000;
  v40 = 0;
  v35 = 0;
  v36[0] = &v35;
  v36[1] = 0x2020000000;
  v37 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21 = [a3 length];
  v9 = [(AppleSpell *)self _lexiconsForLanguage:a4];
  if (getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags__onceToken != -1)
  {
    [AppleSpell(Lexicon) getMetaFlagsForWord:inLexiconForLanguage:metaFlags:otherMetaFlags:];
  }

  if ([-[AppleSpell languageModelLocalizationForLanguage:](self languageModelLocalizationForLanguage:{a4), "isEqualToString:", @"tr"}])
  {
    v10 = getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags__turkishLocale;
    if (!getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags__turkishLocale)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
      getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags__turkishLocale = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v9 && v21)
  {
    v11 = [v9 count];
    for (i = 0; (*(v32 + 24) != 1 || *(v28 + 24) != 1 || (v24[3] & 1) == 0) && i < v11; ++i)
    {
      v13 = [v9 objectAtIndex:i];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __89__AppleSpell_Lexicon__getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags___block_invoke_2;
      v22[3] = &unk_1E8405778;
      v22[5] = v10;
      v22[6] = &v23;
      v22[7] = &v31;
      v22[8] = &v35;
      v22[9] = &v41;
      v22[10] = &v27;
      v22[11] = &v38;
      v22[12] = v21;
      v22[4] = a3;
      [v13 enumerateEntriesForString:a3 usingBlock:v22];
    }
  }

  [a3 rangeOfCharacterFromSet:getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags__lowercaseSet];
  if (v14)
  {
    *(v42[0] + 24) = 0;
    *(v32 + 24) = 0;
  }

  v15 = v39;
  if (a5)
  {
    v16 = v36;
    if ((v24[3] & 1) == 0)
    {
      if (*(v28 + 24))
      {
        v16 = v39;
      }

      else
      {
        v16 = v42;
      }
    }

    *a5 = *(*v16 + 24);
  }

  if (a6)
  {
    if ((v28[3] & 1) == 0)
    {
      if (*(v24 + 24))
      {
        v15 = v36;
      }

      else
      {
        v15 = v42;
      }
    }

    *a6 = *(*v15 + 24);
  }

  if (v32[3] & 1) != 0 || (v28[3])
  {
    v17 = 1;
  }

  else
  {
    v17 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v41, 8);
  return v17 & 1;
}

id __89__AppleSpell_Lexicon__getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags___block_invoke()
{
  result = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
  getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags__lowercaseSet = result;
  return result;
}

uint64_t __89__AppleSpell_Lexicon__getMetaFlagsForWord_inLexiconForLanguage_metaFlags_otherMetaFlags___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = [a2 isEqualToString:{objc_msgSend(a2, "lowercaseString")}];
  result = [*(a1 + 32) isEqualToString:a2];
  if (!result)
  {
    result = [*(a1 + 32) compare:a2 options:1 range:0 locale:{*(a1 + 96), *(a1 + 40)}];
    if (result)
    {
      return result;
    }

    if (!v7 || (*(*(*(a1 + 80) + 8) + 24) & 1) != 0)
    {
      v9 = *(*(a1 + 56) + 8);
      if (*(v9 + 24))
      {
        return result;
      }

      *(v9 + 24) = 1;
      v10 = 72;
      goto LABEL_12;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 80) + 8) + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) = a4;
LABEL_11:
    v10 = 88;
LABEL_12:
    *(*(*(a1 + v10) + 8) + 24) = a4;
    return result;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) = a4;
    *(*(*(a1 + 64) + 8) + 24) = a4;
    if (v7)
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      goto LABEL_11;
    }
  }

  return result;
}

- (id)phraseMatching:(id)a3 inLexiconForLanguage:(id)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v7 = [a3 length];
  v25.location = 0;
  v25.length = v7;
  Bytes = CFStringGetBytes(a3, v25, 0x8000100u, 0, 0, 0, 0, 0);
  v9 = [(AppleSpell *)self _phraseLexiconsForLanguage:a4];
  v10 = 0;
  if (v7 && v7 == Bytes)
  {
    v11 = v9;
    if (v9)
    {
      v12 = [v9 count];
      v10 = v20[5];
      if (!v10)
      {
        v13 = v12;
        if (v12)
        {
          v14 = 0;
          do
          {
            v15 = [v11 objectAtIndex:v14];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __59__AppleSpell_Lexicon__phraseMatching_inLexiconForLanguage___block_invoke;
            v18[3] = &unk_1E84057A0;
            v18[4] = a3;
            v18[5] = &v19;
            [v15 enumerateEntriesForString:a3 usingBlock:v18];
            ++v14;
            v10 = v20[5];
            if (v10)
            {
              v16 = 1;
            }

            else
            {
              v16 = v14 >= v13;
            }
          }

          while (!v16);
        }
      }
    }

    else
    {
      v10 = v20[5];
    }
  }

  _Block_object_dispose(&v19, 8);
  return v10;
}

void *__59__AppleSpell_Lexicon__phraseMatching_inLexiconForLanguage___block_invoke(void *result, void *a2, uint64_t a3, char a4, _BYTE *a5)
{
  if ((a4 & 0xCA) == 0)
  {
    v7 = result;
    result = [a2 compare:result[4] options:129];
    if (!result)
    {
      result = [a2 copy];
      *(*(v7[5] + 8) + 40) = result;
      *a5 = 1;
    }
  }

  return result;
}

- (void)enumerateEntriesForWord:(id)a3 inLexiconForLanguage:(id)a4 withBlock:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(AppleSpell *)self _lexiconsForLanguage:a4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __78__AppleSpell_Lexicon__enumerateEntriesForWord_inLexiconForLanguage_withBlock___block_invoke;
        v14[3] = &unk_1E8405178;
        v14[4] = a5;
        [v12 enumerateEntriesForString:a3 usingBlock:v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __78__AppleSpell_Lexicon__enumerateEntriesForWord_inLexiconForLanguage_withBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0xC2) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)enumerateCorrectionEntriesForWord:(id)a3 maxCorrections:(unint64_t)a4 inLexiconForLanguage:(id)a5 withBlock:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = [(AppleSpell *)self _lexiconsForLanguage:a5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __103__AppleSpell_Lexicon__enumerateCorrectionEntriesForWord_maxCorrections_inLexiconForLanguage_withBlock___block_invoke;
        v16[3] = &unk_1E84057C8;
        v16[4] = a6;
        [v14 enumerateCorrectionEntriesForWord:a3 maxCorrections:a4 withBlock:v16];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)getMetaFlagsForWord:(id)a3 inLexiconForLanguageObject:(id)a4 metaFlags:(unsigned int *)a5 otherMetaFlags:(unsigned int *)a6
{
  v10 = [a4 identifier];

  return [(AppleSpell *)self getMetaFlagsForWord:a3 inLexiconForLanguage:v10 metaFlags:a5 otherMetaFlags:a6];
}

- (id)phraseMatching:(id)a3 inLexiconForLanguageObject:(id)a4
{
  v6 = [a4 identifier];

  return [(AppleSpell *)self phraseMatching:a3 inLexiconForLanguage:v6];
}

- (void)enumerateEntriesForWord:(id)a3 inLexiconForLanguageObject:(id)a4 withBlock:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(AppleSpell *)self _lexiconsForLanguageObject:a4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __84__AppleSpell_Lexicon__enumerateEntriesForWord_inLexiconForLanguageObject_withBlock___block_invoke;
        v14[3] = &unk_1E8405178;
        v14[4] = a5;
        [v12 enumerateEntriesForString:a3 usingBlock:v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __84__AppleSpell_Lexicon__enumerateEntriesForWord_inLexiconForLanguageObject_withBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0xC2) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)enumerateCorrectionEntriesForWord:(id)a3 maxCorrections:(unint64_t)a4 inLexiconForLanguageObject:(id)a5 withBlock:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = [(AppleSpell *)self _lexiconsForLanguageObject:a5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __109__AppleSpell_Lexicon__enumerateCorrectionEntriesForWord_maxCorrections_inLexiconForLanguageObject_withBlock___block_invoke;
        v16[3] = &unk_1E84057C8;
        v16[4] = a6;
        [v14 enumerateCorrectionEntriesForWord:a3 maxCorrections:a4 withBlock:v16];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_loadNERTaggerOnQueue:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  nerTaggerSerialQueue = self->_nerTaggerSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AppleSpell_Lexicon___loadNERTaggerOnQueue___block_invoke;
  block[3] = &unk_1E84057F0;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(nerTaggerSerialQueue, block);
  v6 = v15[5];
  if (!v6 || [v6 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__AppleSpell_Lexicon___loadNERTaggerOnQueue___block_invoke_2;
    v12[3] = &unk_1E84054D0;
    v12[4] = &v14;
    dispatch_sync(a3, v12);
    v8 = self->_nerTaggerSerialQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__AppleSpell_Lexicon___loadNERTaggerOnQueue___block_invoke_3;
    v11[3] = &unk_1E84057F0;
    v11[4] = self;
    v11[5] = &v14;
    dispatch_sync(v8, v11);
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v9;
}

id __45__AppleSpell_Lexicon___loadNERTaggerOnQueue___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) objectForKey:@"NER"];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *__45__AppleSpell_Lexicon___loadNERTaggerOnQueue___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6977A80]);
  v3 = *MEMORY[0x1E69779D0];
  *(*(*(a1 + 32) + 8) + 40) = [v2 initWithTagSchemes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", *MEMORY[0x1E69779D0], 0)}];
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    [result setString:@"This is a test string."];
    v5 = *(*(*(a1 + 32) + 8) + 40);

    return [v5 tagAtIndex:0 unit:0 scheme:v3 tokenRange:0];
  }

  return result;
}

uint64_t __45__AppleSpell_Lexicon___loadNERTaggerOnQueue___block_invoke_3(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (v1)
  {
    return [*(*(result + 32) + 80) setObject:v1 forKey:@"NER"];
  }

  return result;
}

- (id)nerTaggerWaitForResult:(BOOL)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  if (nerTaggerWaitForResult__onceToken != -1)
  {
    [AppleSpell(Lexicon) nerTaggerWaitForResult:];
  }

  nerTaggerSerialQueue = self->_nerTaggerSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AppleSpell_Lexicon__nerTaggerWaitForResult___block_invoke_2;
  block[3] = &unk_1E84057F0;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(nerTaggerSerialQueue, block);
  if ([v12[5] isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v6 = 0;
    v12[5] = 0;
  }

  else
  {
    v6 = v12[5];
    if (!v6)
    {
      if (v3)
      {
        v6 = [(AppleSpell *)self _loadNERTaggerOnQueue:nerTaggerWaitForResult___taggerCreationSerialQueue];
        v12[5] = v6;
      }

      else
      {
        v7 = [(AppleSpell *)self backgroundLoadingQueue];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __46__AppleSpell_Lexicon__nerTaggerWaitForResult___block_invoke_3;
        v9[3] = &unk_1E8405150;
        v9[4] = self;
        dispatch_async(v7, v9);
        v6 = v12[5];
      }
    }
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

dispatch_queue_t __46__AppleSpell_Lexicon__nerTaggerWaitForResult___block_invoke()
{
  result = dispatch_queue_create("com.apple.ProofReader.nerTaggerCreationSerialQueue", 0);
  nerTaggerWaitForResult___taggerCreationSerialQueue = result;
  return result;
}

id __46__AppleSpell_Lexicon__nerTaggerWaitForResult___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) objectForKey:@"NER"];
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = *(*(a1 + 32) + 80);
    v4 = [MEMORY[0x1E695DFB0] null];

    return [v3 setObject:v4 forKey:@"NER"];
  }

  return result;
}

void __46__AppleSpell_Lexicon__nerTaggerWaitForResult___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _loadNERTaggerOnQueue:nerTaggerWaitForResult___taggerCreationSerialQueue];

  objc_autoreleasePoolPop(v2);
}

- (void)_checkEnglishArticlesInSentence:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 mutableCorrections:(id)a6
{
  v89[1] = *MEMORY[0x1E69E9840];
  v10 = [PRLanguage languageObjectWithIdentifier:@"en"];
  v11 = [(AppleSpell *)self databaseConnectionForLanguageObject:v10];
  v12 = [v10 encoding];
  if (v11)
  {
    if (v11[24] == 16)
    {
      v88 = 0u;
      v87 = 0u;
      v86 = 0u;
      v85 = 0u;
      v79 = 0;
      v78[0] = 0;
      v78[1] = 0;
      v76 = 0;
      v77 = 0;
      v80 = a4;
      v81 = *v11;
      HIWORD(v78[0]) = 256;
      *(&v85 + 1) = v78;
      *&v86 = &v76;
      BYTE13(v87) = 0;
      v82 = 32;
      v84 = 0;
      v83 = a5;
      if (a5)
      {
        v13 = v12;
        v67 = a6;
        PRbuf(&v80, 0xEu, 0);
        v14 = *(&v86 + 1);
        if (!*(&v86 + 1))
        {
          goto LABEL_138;
        }

        while (1)
        {
          if (*(v14 + 12) != 6)
          {
            goto LABEL_137;
          }

          v15 = v14[1];
          if ((v15 - 1) > 1)
          {
            goto LABEL_137;
          }

          v16 = *v14;
          if (v15 + v16 + 3 >= a5)
          {
            goto LABEL_137;
          }

          v17 = CFStringCreateWithBytes(0, &a4[v16], v15, v13, 0);
          v18 = [(__CFString *)v17 lowercaseString];
          v68 = v17;
          v74 = [(__CFString *)v17 isEqualToString:v18];
          v19 = *v14;
          v20 = v14[1];
          v21 = &a4[v19 + v20];
          if (!isLowerCaseX(*(v21 - 1), v13) || *v21 != 32)
          {
LABEL_38:
            LOBYTE(v24) = 1;
            goto LABEL_39;
          }

          v22 = v21[1];
          v23 = (v22 & 0xFFFFFFDF) - 65;
          if (v13 > 1279)
          {
            if (v13 != 1284 && v13 != 1280)
            {
              goto LABEL_27;
            }

            if (v23 >= 0x1A && v22 <= 0xF7 && v22 - 192 >= 0x17 && v22 - 216 >= 0x1F)
            {
              LOBYTE(v24) = 1;
              v25 = v22 - 138;
              if (v25 > 0x15)
              {
                goto LABEL_39;
              }

              v26 = 1 << v25;
              v27 = 3473429;
              goto LABEL_35;
            }
          }

          else
          {
            if (v13 != 514)
            {
              if (v13 == 517)
              {
                if (v22 - 161 >= 0xC && v22 - 174 >= 0x42 && v23 >= 0x1A && v22 - 241 >= 0xC && (v22 & 0xFE) != 0xFE)
                {
                  goto LABEL_38;
                }

                goto LABEL_36;
              }

LABEL_27:
              if (v23 > 0x19)
              {
                goto LABEL_38;
              }

              goto LABEL_36;
            }

            if (v23 >= 0x1A && v22 <= 0xF7 && v22 - 192 >= 0x17 && v22 - 216 >= 0x1F)
            {
              LOBYTE(v24) = 1;
              v28 = v22 - 161;
              if (v28 > 0x1E)
              {
                goto LABEL_39;
              }

              v26 = 1 << v28;
              v27 = 1865772853;
LABEL_35:
              if ((v26 & v27) == 0)
              {
                goto LABEL_39;
              }
            }
          }

LABEL_36:
          if (!isLowerCaseX(v21[2], v13))
          {
            goto LABEL_38;
          }

          v24 = isLowerCaseX(v21[3], v13) ^ 1;
LABEL_39:
          v71 = v24;
          v30 = v21[1];
          v29 = v21 + 1;
          v70 = toLowerX_0(v30, v13);
          v69 = v19 + v20 + 5 < a5 && strncasecmp_l(v29, "for-", 4uLL, 0) == 0;
          v31 = @"a";
          v73 = [v18 isEqualToString:@"a"];
          v72 = [v18 isEqualToString:@"an"];
          v32 = 0;
          if (v74)
          {
            v33 = @"an";
          }

          else
          {
            v33 = @"An";
          }

          if (!v74)
          {
            v31 = @"A";
          }

          do
          {
            v34 = strlen(off_1E8405950[v32]);
            v35 = *v14;
            v36 = v14[1];
            if (v34 + v35 + v36 + 1 >= a5)
            {
              v37 = 0;
            }

            else
            {
              v37 = strncasecmp_l(&a4[v35 + 1 + v36], off_1E8405950[v32], v34, 0) == 0;
              if (v37)
              {
                break;
              }
            }

            v51 = v32++ > 3;
          }

          while (!v51);
          if (v73)
          {
            v38 = v33;
          }

          else
          {
            v38 = 0;
          }

          if (v72)
          {
            v39 = v31;
          }

          else
          {
            v39 = v38;
          }

          v40 = *v14;
          v41 = v14[1];
          v42 = v41 + v40 + 1;
          if (v42 >= a5)
          {
            goto LABEL_137;
          }

          v75 = v39;
          while (1)
          {
            v43 = a4[v42];
            v44 = (v43 & 0xFFFFFFDF) - 65;
            if (v13 > 1279)
            {
              if (v13 == 1284)
              {
                if (v44 < 0x1A)
                {
                  goto LABEL_113;
                }

                v54 = v43 <= 0xF7 && (v43 - 192) >= 0x17;
                if (!v54 || (v43 - 216) < 0x1F)
                {
                  goto LABEL_113;
                }

                v51 = (v43 - 138) > 0x15;
                v52 = 1 << (v43 + 118);
                v53 = 3473429;
                goto LABEL_109;
              }

              if (v13 == 1280)
              {
                if (v44 >= 0x1A)
                {
                  v46 = v43 <= 0xF7 && (v43 - 192) >= 0x17;
                  if (v46 && (v43 - 216) >= 0x1F)
                  {
                    v48 = 0;
                    if ((v43 - 138) > 0x15 || ((1 << (v43 + 118)) & 0x350015) == 0)
                    {
                      goto LABEL_132;
                    }
                  }
                }

                goto LABEL_113;
              }

LABEL_87:
              if (v44 > 0x19)
              {
                goto LABEL_131;
              }

              goto LABEL_113;
            }

            if (v13 == 514)
            {
              break;
            }

            if (v13 != 517)
            {
              goto LABEL_87;
            }

            if ((v43 - 161) >= 0xC)
            {
              v45 = (v43 - 174) >= 0x42 && v44 >= 0x1A;
              if (v45 && (v43 - 241) >= 0xC && (v43 & 0xFE) != 0xFE)
              {
                goto LABEL_131;
              }
            }

LABEL_113:
            v58 = toLowerX_0(v43, v13);
            v62 = v58 == 105 || (v58 & 0x1FB) == 97 || v58 == 111 || v58 == 117 || v58 == 121;
            v48 = v62;
            if (!v62 && ++v42 < a5)
            {
              continue;
            }

            goto LABEL_132;
          }

          if (v44 < 0x1A)
          {
            goto LABEL_113;
          }

          v49 = v43 <= 0xF7 && (v43 - 192) >= 0x17;
          if (!v49 || (v43 - 216) < 0x1F)
          {
            goto LABEL_113;
          }

          v51 = (v43 - 161) > 0x1E;
          v52 = 1 << (v43 + 95);
          v53 = 1865772853;
LABEL_109:
          v56 = v52 & v53;
          if (!v51 && v56 != 0)
          {
            goto LABEL_113;
          }

LABEL_131:
          v48 = 0;
LABEL_132:
          if (!(v37 | (v75 == 0) | v71 & 1 | (v70 == 104 || v69) | ((v48 & 1) == 0)))
          {
            if (v40)
            {
              v63 = [(__CFString *)CFStringCreateWithBytes(0 length:a4];
            }

            else
            {
              v63 = 0;
            }

            v64 = [PRSentenceCorrection alloc];
            v89[0] = v75;
            v65 = -[PRSentenceCorrection initWithCategory:range:word:corrections:](v64, "initWithCategory:range:word:corrections:", 4, v63, v41, v68, [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:1]);
            [v67 addObject:v65];
          }

LABEL_137:
          v14 = *(v14 + 5);
          if (!v14)
          {
LABEL_138:
            PRbuf(&v80, 0x11u, 0);
            break;
          }
        }
      }
    }
  }

  v66 = *MEMORY[0x1E69E9840];
}

- (const)englishPhraseRoot
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AppleSpell_SentenceCorrection__englishPhraseRoot__block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  if (englishPhraseRoot_onceToken != -1)
  {
    dispatch_once(&englishPhraseRoot_onceToken, block);
  }

  return englishPhraseRoot_phrase_root;
}

unsigned __int8 **__51__AppleSpell_SentenceCorrection__englishPhraseRoot__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [PRLanguage languageObjectWithIdentifier:@"en"];
  v3 = [v2 encoding];
  v4 = [*(a1 + 32) phraseCorrectionsDictionaryForLanguageObject:v2];
  obj = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  v6 = off_1EC72B000;
  if (v5)
  {
    v7 = v5;
    v35 = 0;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        v12 = [(__CFString *)v10 length];
        v13 = [(__CFString *)v11 length];
        v40 = 0;
        usedBufLen = 0;
        v49.location = 0;
        v49.length = v12;
        Bytes = CFStringGetBytes(v10, v49, v3, 0x5Fu, 0, 0, 0, &usedBufLen);
        v50.location = 0;
        v50.length = v13;
        v15 = CFStringGetBytes(v11, v50, v3, 0x5Fu, 0, 0, 0, &v40);
        if (Bytes == v12 && v15 == v13)
        {
          v35 += usedBufLen + v40 + 2;
          [obj addObject:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
    v6 = off_1EC72B000;
    if (v35)
    {
      v17 = malloc_type_malloc(v35 + 2, 0xDC0D6921uLL);
      englishPhraseRoot_strings = v17;
      *&v17[v35] = 0;
      [obj sortUsingSelector:sel_compare_];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v33 = *v37;
        while (2)
        {
          v20 = 0;
          v21 = v35;
          do
          {
            if (*v37 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v36 + 1) + 8 * v20);
            v23 = [v4 objectForKey:v22];
            v24 = [(__CFString *)v22 length];
            v25 = [(__CFString *)v23 length];
            v40 = 0;
            usedBufLen = 0;
            v51.location = 0;
            v51.length = v24;
            CFStringGetBytes(v22, v51, v3, 0x5Fu, 0, v17, v21, &usedBufLen);
            v26 = &v17[usedBufLen];
            v17[usedBufLen] = 0;
            v27 = v21 > usedBufLen + 1;
            v28 = v21 - (usedBufLen + 1);
            if (!v27)
            {
              goto LABEL_27;
            }

            v29 = v26 + 1;
            v52.location = 0;
            v52.length = v25;
            CFStringGetBytes(v23, v52, v3, 0x5Fu, 0, v26 + 1, v28, &v40);
            v30 = &v29[v40];
            v29[v40] = 0;
            v27 = v28 > v40 + 1;
            v21 = v28 - (v40 + 1);
            if (!v27)
            {
LABEL_27:
              v6 = off_1EC72B000;
              goto LABEL_28;
            }

            v17 = v30 + 1;
            ++v20;
          }

          while (v19 != v20);
          v35 = v21;
          v19 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
          v6 = off_1EC72B000;
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_28:
  result = v6[421];
  if (result)
  {
    result = create_phrase_root_from_strings(result);
    englishPhraseRoot_phrase_root = result;
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_checkEnglishPhrasesInSentence:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 mutableCorrections:(id)a6
{
  v22 = [PRLanguage languageObjectWithIdentifier:@"en"];
  v9 = [v22 encoding];
  v32 = a4;
  v23 = self;
  v10 = [(AppleSpell *)self englishPhraseRoot];
  if (v10 && a4)
  {
    v11 = v10;
    v31 = 0;
    v12 = &a4[a5];
    v13 = a4;
    while (v13 < v12)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v14 = next_phrase(v13, v12 - v13, v11, &v32, &v31);
      v15 = v14;
      if (v14 < a4 || !v14 || !v31 || v32 < v14)
      {
        _Block_object_dispose(&v27, 8);
        return;
      }

      v16 = [(__CFString *)CFStringCreateWithBytes(0 lowercaseString:v14];
      v17 = CFStringCreateWithCString(0, v31, v9);
      v18 = &stru_1F4E0A7A0;
      v19 = v15 - a4;
      if (v15 > a4)
      {
        v18 = CFStringCreateWithBytes(0, a4, v19, v9, 0);
      }

      v20 = [(__CFString *)v18 length];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __98__AppleSpell_SentenceCorrection___checkEnglishPhrasesInSentence_buffer_length_mutableCorrections___block_invoke;
      v26[3] = &unk_1E84055E8;
      v26[4] = v18;
      v26[5] = &v27;
      [(__CFString *)v18 enumerateSubstringsInRange:0 options:v20 usingBlock:771, v26];
      if ((v28[3] & 1) == 0)
      {
        v21 = [v16 length];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __98__AppleSpell_SentenceCorrection___checkEnglishPhrasesInSentence_buffer_length_mutableCorrections___block_invoke_2;
        v25[3] = &unk_1E8405980;
        v25[4] = v23;
        v25[5] = v22;
        v25[6] = v17;
        v25[7] = v16;
        v25[8] = v18;
        v25[9] = a6;
        [v16 enumerateSubstringsInRange:0 options:v21 usingBlock:{3, v25}];
      }

      _Block_object_dispose(&v27, 8);
      v13 = v32;
      if (!v32)
      {
        return;
      }
    }
  }
}

unint64_t __98__AppleSpell_SentenceCorrection___checkEnglishPhrasesInSentence_buffer_length_mutableCorrections___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a3 + a4;
  result = [*(a1 + 32) length];
  if (v9 >= result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  *a7 = 1;
  return result;
}

void __98__AppleSpell_SentenceCorrection___checkEnglishPhrasesInSentence_buffer_length_mutableCorrections___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = [*(a1 + 32) potentialSentenceCorrectionsForWord:a2 languageObject:*(a1 + 40)];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([*(a1 + 48) isEqualToString:{objc_msgSend(*(a1 + 56), "stringByReplacingCharactersInRange:withString:", a3, a4, v16)}])
        {
          v17 = [*(a1 + 64) length];
          v18 = [PRSentenceCorrection alloc];
          v26 = v16;
          v19 = -[PRSentenceCorrection initWithCategory:range:word:corrections:](v18, "initWithCategory:range:word:corrections:", 5, v17 + a3, a4, a2, [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1]);
          [*(a1 + 72) addObject:v19];

          *a7 = 1;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];
}

- (id)_checkSentence:(id)a3 languageObject:(id)a4
{
  v21[128] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [a4 encoding];
  v9 = [a3 length];
  usedBufLen = 0;
  if ([a4 isEnglish])
  {
    v22.location = 0;
    v22.length = v9;
    if (v9 == CFStringGetBytes(a3, v22, v8, 0x5Fu, 0, buffer, 1024, &usedBufLen))
    {
      v10 = usedBufLen;
      if (usedBufLen)
      {
        v11 = v21;
        v12 = 2;
        v13 = usedBufLen;
        while (1)
        {
          v14 = *(v11 - 1);
          v15 = 32;
          if (v14 <= 0x92)
          {
            break;
          }

          v16 = v14 + 105;
          if (v14 - 151 <= 0x24)
          {
            if (((1 << v16) & 0x201) != 0)
            {
              goto LABEL_22;
            }

            if (((1 << v16) & 0x20000010) != 0)
            {
              goto LABEL_21;
            }

            if (((1 << v16) & 0x1000100000) != 0)
            {
              goto LABEL_17;
            }
          }

          if (v14 - 147 < 2)
          {
LABEL_17:
            v15 = 34;
LABEL_22:
            *(v11 - 1) = v15;
            v14 = v15;
            goto LABEL_23;
          }

          if (v14 == 150)
          {
            v15 = 45;
            goto LABEL_22;
          }

LABEL_23:
          if (v12 < v10 && v14 == 46 && *v11 == 46 && v11[1] == 46)
          {
            v11[1] = 32;
            *(v11 - 1) = 8224;
          }

          ++v11;
          ++v12;
          if (!--v13)
          {
            goto LABEL_35;
          }
        }

        if (*(v11 - 1) > 0x84u)
        {
          if (v14 - 145 >= 2)
          {
            if (v14 == 133)
            {
              goto LABEL_22;
            }

            if (v14 != 139)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          if (*(v11 - 1) <= 0x5Fu)
          {
            if (v14 != 92 && v14 != 95)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          if (v14 != 96 && v14 != 130 && v14 != 132)
          {
            goto LABEL_23;
          }
        }

LABEL_21:
        v15 = 39;
        goto LABEL_22;
      }

LABEL_35:
      buffer[v10] = 0;
      [AppleSpell _checkEnglishArticlesInSentence:"_checkEnglishArticlesInSentence:buffer:length:mutableCorrections:" buffer:a3 length:buffer mutableCorrections:?];
      [(AppleSpell *)self _checkEnglishPhrasesInSentence:a3 buffer:buffer length:usedBufLen mutableCorrections:v7];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_checkSentence:(id)a3 languageObject:(id)a4 mutableCorrections:(id)a5
{
  if (_checkSentence_languageObject_mutableCorrections__onceToken != -1)
  {
    [AppleSpell(SentenceCorrection) _checkSentence:languageObject:mutableCorrections:];
  }

  v9 = [_checkSentence_languageObject_mutableCorrections__sentenceCorrectionDictionary objectForKey:a3];
  if (v9)
  {
    v10 = v9;
    [_checkSentence_languageObject_mutableCorrections__sentenceCorrectionArray removeObject:a3];
  }

  else
  {
    v10 = [(AppleSpell *)self _checkSentence:a3 languageObject:a4];
    if ([_checkSentence_languageObject_mutableCorrections__sentenceCorrectionArray count] >= 0x80)
    {
      for (i = 0; i != 32; ++i)
      {
        [_checkSentence_languageObject_mutableCorrections__sentenceCorrectionDictionary removeObjectForKey:{objc_msgSend(_checkSentence_languageObject_mutableCorrections__sentenceCorrectionArray, "objectAtIndex:", i)}];
      }

      [_checkSentence_languageObject_mutableCorrections__sentenceCorrectionArray removeObjectsInRange:{0, 32}];
    }

    [_checkSentence_languageObject_mutableCorrections__sentenceCorrectionDictionary setObject:v10 forKey:a3];
  }

  [_checkSentence_languageObject_mutableCorrections__sentenceCorrectionArray addObject:a3];

  [a5 addObjectsFromArray:v10];
}

id __83__AppleSpell_SentenceCorrection___checkSentence_languageObject_mutableCorrections___block_invoke()
{
  _checkSentence_languageObject_mutableCorrections__sentenceCorrectionDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = objc_alloc_init(MEMORY[0x1E695DF70]);
  _checkSentence_languageObject_mutableCorrections__sentenceCorrectionArray = result;
  return result;
}

- (void)spellServer:(id)a3 checkSentenceCorrectionInString:(id)a4 rangeInParagraph:(_NSRange)a5 languageObject:(id)a6 locale:(id)a7 tagger:(id)a8 offset:(unint64_t)a9 keyEventArray:(id)a10 selectedRangeValue:(id)a11 autocorrect:(BOOL)a12 checkGrammar:(BOOL)a13 ignoreTermination:(BOOL)a14 mutableResults:(id)a15
{
  length = a5.length;
  location = a5.location;
  v143 = *MEMORY[0x1E69E9840];
  v125 = 8217;
  v124 = 0;
  v71 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v125 length:1];
  v72 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v124 length:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __222__AppleSpell_SentenceCorrection__spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults___block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  if (spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__onceToken != -1)
  {
    dispatch_once(&spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__onceToken, block);
  }

  v75 = location + length;
  if (location < location + length)
  {
    v20 = 0x1E695D000uLL;
    v21 = a8;
    v76 = *MEMORY[0x1E69779F0];
    v73 = a3;
    v74 = a6;
    do
    {
      v119 = 0;
      v120 = &v119;
      v121 = 0x2020000000;
      v122 = 0;
      v113 = 0;
      v114 = &v113;
      v115 = 0x3010000000;
      v116 = "";
      v117 = 0;
      v118 = 0;
      v109 = 0;
      v110 = &v109;
      v111 = 0x2020000000;
      v112 = 0;
      v22 = [v21 sentenceRangeForRange:{location, 0}];
      v23 = v114;
      v114[4] = v22;
      v23[5] = 0;
      v101 = MEMORY[0x1E69E9820];
      v102 = 3221225472;
      v103 = __222__AppleSpell_SentenceCorrection__spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults___block_invoke_2;
      v104 = &unk_1E84059A8;
      v105 = a4;
      v106 = &v119;
      v107 = &v113;
      v108 = &v109;
      v78 = v24;
      v79 = v22;
      [v21 enumerateTagsInRange:? unit:? scheme:? options:? usingBlock:?];
      if (((v120[3] & 1) != 0 || a14) && v110[3] <= 0x50 && (v114[5] - 1) <= 0xFF)
      {
        obj = [*(v20 + 3952) array];
        v80 = [*(v20 + 3952) array];
        v99 = xmmword_1D2BF76A0;
        v100 = xmmword_1D2BF76A0;
        v88 = [a4 substringWithRange:{v114[4], v114[5]}];
        [v88 rangeOfString:v72];
        if (v25)
        {
          v88 = [v88 stringByReplacingOccurrencesOfString:v72 withString:@"_"];
        }

        [v88 rangeOfString:v71];
        if (v26)
        {
          v88 = [v88 stringByReplacingOccurrencesOfString:v71 withString:@"'"];
        }

        [(AppleSpell *)self _checkSentence:v88 languageObject:a6 mutableCorrections:obj];
        [obj count];
        if (a12)
        {
          v139 = 0;
          v140 = &v139;
          v141 = 0x2020000000;
          v142 = 6;
          v98[0] = MEMORY[0x1E69E9820];
          v98[1] = 3221225472;
          v98[2] = __222__AppleSpell_SentenceCorrection__spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults___block_invoke_3;
          v98[3] = &unk_1E84059D0;
          v98[4] = &v113;
          v98[5] = &v139;
          [a8 enumerateTagsInRange:v79 unit:v78 scheme:0 options:v76 usingBlock:{6, v98}];
          v27 = v140[3];
          if (v27 >= 0xD)
          {
            v140[3] = 12;
            v27 = 12;
          }

          if (v114[5] + v114[4] > v27 && [AppleSpell findMatchingRangesForRange:"findMatchingRangesForRange:inString:keyEventArray:selectedRangeValue:matchingStringRange:correctableStringRange:matchingKeyEventRange:firstMisspelledKeyEventIndex:lastMisspelledKeyEventIndex:previousBackspaceCount:" inString:&v99 keyEventArray:0 selectedRangeValue:0 matchingStringRange:0 correctableStringRange:0 matchingKeyEventRange:? firstMisspelledKeyEventIndex:? lastMisspelledKeyEventIndex:? previousBackspaceCount:?])
          {
            *&v100 = v100 + a9;
            *&v99 = v99 + a9;
          }

          _Block_object_dispose(&v139, 8);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v90 = [obj countByEnumeratingWithState:&v94 objects:v134 count:16];
        if (v90)
        {
          v89 = *v95;
          do
          {
            for (i = 0; i != v90; ++i)
            {
              if (*v95 != v89)
              {
                objc_enumerationMutation(obj);
              }

              v92 = *(*(&v94 + 1) + 8 * i);
              v91 = [v92 range];
              v29 = v28;
              if (v28)
              {
                v85 = v114[4];
                if (v91 + v28 <= [v88 length])
                {
                  v82 = v29;
                  v30 = [v88 substringWithRange:{v91, v29}];
                  v31 = [v92 corrections];
                  v32 = [(AppleSpell *)self potentialSentenceCorrectionsForWord:v30 languageObject:a6];
                  v86 = v30;
                  if ([v92 presentAsSpellingError])
                  {
                    v33 = [MEMORY[0x1E695DFA8] set];
                    v132 = 0u;
                    v133 = 0u;
                    v130 = 0u;
                    v131 = 0u;
                    v34 = [v31 countByEnumeratingWithState:&v130 objects:&v139 count:16];
                    if (v34)
                    {
                      v35 = *v131;
                      do
                      {
                        for (j = 0; j != v34; ++j)
                        {
                          if (*v131 != v35)
                          {
                            objc_enumerationMutation(v31);
                          }

                          [v33 addObject:{objc_msgSend(*(*(&v130 + 1) + 8 * j), "lowercaseString")}];
                        }

                        v34 = [v31 countByEnumeratingWithState:&v130 objects:&v139 count:16];
                      }

                      while (v34);
                    }

                    v128 = 0u;
                    v129 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v30 = v86;
                    v37 = [v32 countByEnumeratingWithState:&v126 objects:&v135 count:16];
                    if (v37)
                    {
                      v38 = *v127;
                      while (2)
                      {
                        for (k = 0; k != v37; ++k)
                        {
                          if (*v127 != v38)
                          {
                            objc_enumerationMutation(v32);
                          }

                          if ([v33 containsObject:{objc_msgSend(*(*(&v126 + 1) + 8 * k), "lowercaseString")}])
                          {
                            v30 = v86;
                            v87 = [a3 isWordInUserDictionaries:v86 caseSensitive:0] == 0;
                            goto LABEL_45;
                          }
                        }

                        v37 = [v32 countByEnumeratingWithState:&v126 objects:&v135 count:16];
                        v30 = v86;
                        if (v37)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  v87 = 0;
LABEL_45:
                  if (a12)
                  {
                    v84 = [v92 presentAsAutocorrection];
                    if (!v30)
                    {
LABEL_69:
                      v57 = v91 + a9;
                      if (v87 && (spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__disableSpellingErrors & 1) == 0)
                      {
                        v58 = [objc_alloc(MEMORY[0x1E696AEB8]) initWithRange:{v57 + v85, v82}];
                        [a15 addObject:v58];
                      }

                      v20 = 0x1E695D000;
                      if (v84 && (spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__disableAutocorrections & 1) == 0)
                      {
                        v59 = [objc_alloc(MEMORY[0x1E696AB48]) initWithRange:v57 + v85 replacementString:{v82, objc_msgSend(v31, "firstObject")}];
                        [a15 addObject:v59];
                      }

                      if (v87 || a13 && [v92 presentAsGrammarError])
                      {
                        v60 = MEMORY[0x1E696B098];
                        v61 = [v92 range];
                        v63 = [v60 valueWithRange:{v61, v62}];
                        v64 = [v92 category];
                        if (v64 > 5)
                        {
                          v65 = 0;
                        }

                        else
                        {
                          v65 = qword_1D2BFAB30[v64];
                        }

                        if ([v92 category] == 3)
                        {
                          v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Consider adding an article before the word ‘%@’.", v86];
                          v31 = 0;
                        }

                        else
                        {
                          if ([v31 count] == 1)
                          {
                            v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Consider ‘%@’ instead", objc_msgSend(v31, "firstObject")];
                          }

                          else if ([v31 count] == 2)
                          {
                            v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Consider ‘%@’ or ‘%@’ instead", objc_msgSend(v31, "firstObject"), objc_msgSend(v31, "lastObject")];
                          }

                          else
                          {
                            v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The word ‘%@’ may not agree with the rest of the sentence.", v86];
                          }

                          v66 = v67;
                        }

                        [v80 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v63, @"NSGrammarRange", v66, @"NSGrammarUserDescription", v31, @"NSGrammarCorrections", &unk_1F4E16A80, @"NSGrammarConfidenceScore", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v65), @"NSGrammarIssueType", 0)}];
                      }

                      continue;
                    }
                  }

                  else
                  {
                    v84 = 0;
                    if (!v30)
                    {
                      goto LABEL_69;
                    }
                  }

                  if ([v30 length])
                  {
                    v40 = [v30 rangeOfComposedCharacterSequenceAtIndex:0];
                    v42 = v41;
                    if (v41)
                    {
                      v43 = v40;
                      [v30 rangeOfCharacterFromSet:objc_msgSend(MEMORY[0x1E696AB08] options:"letterCharacterSet") range:{0, v40, v41}];
                      if (v44)
                      {
                        v45 = [v30 substringWithRange:{v43, v42}];
                        if ([v45 isEqualToString:{objc_msgSend(v45, "capitalizedStringWithLocale:", a7)}])
                        {
                          v46 = [MEMORY[0x1E695DF70] array];
                          v138 = 0u;
                          v136 = 0u;
                          v137 = 0u;
                          v135 = 0u;
                          v47 = [v31 countByEnumeratingWithState:&v135 objects:&v139 count:16];
                          if (v47)
                          {
                            v48 = *v136;
                            do
                            {
                              for (m = 0; m != v47; ++m)
                              {
                                if (*v136 != v48)
                                {
                                  objc_enumerationMutation(v31);
                                }

                                v50 = *(*(&v135 + 1) + 8 * m);
                                if ([v50 length] && objc_msgSend(v50, "isEqualToString:", objc_msgSend(v50, "lowercaseStringWithLocale:", a7)))
                                {
                                  v51 = [v50 rangeOfComposedCharacterSequenceAtIndex:0];
                                  v53 = v52;
                                  if (v52 && (v54 = v51, v55 = v51 + v52, v51 + v52 < [v50 length]))
                                  {
                                    v56 = [objc_msgSend(objc_msgSend(v50 substringWithRange:{v54, v53), "capitalizedStringWithLocale:", a7), "stringByAppendingString:", objc_msgSend(v50, "substringFromIndex:", v55)}];
                                  }

                                  else
                                  {
                                    v56 = [v50 capitalizedStringWithLocale:a7];
                                  }

                                  v50 = v56;
                                }

                                [v46 addObject:v50];
                              }

                              v47 = [v31 countByEnumeratingWithState:&v135 objects:&v139 count:16];
                            }

                            while (v47);
                            v31 = v46;
                            a3 = v73;
                            a6 = v74;
                          }

                          else
                          {
                            v31 = v46;
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_69;
                }
              }
            }

            v90 = [obj countByEnumeratingWithState:&v94 objects:v134 count:16];
          }

          while (v90);
        }

        if ([v80 count])
        {
          v68 = objc_alloc(MEMORY[0x1E696AC50]);
          v69 = [v68 initWithRange:v114[4] + a9 details:{v114[5], v80}];
          [a15 addObject:v69];
        }
      }

      _Block_object_dispose(&v109, 8);
      _Block_object_dispose(&v113, 8);
      _Block_object_dispose(&v119, 8);
      location = v79 + v78;
      v21 = a8;
    }

    while (v79 + v78 < v75);
  }

  v70 = *MEMORY[0x1E69E9840];
}

id __222__AppleSpell_SentenceCorrection__spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults___block_invoke(uint64_t a1)
{
  if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__disableSpellingErrors = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }

  v2 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v2)
  {
    LOBYTE(v2) = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }

  spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__disableAutocorrections = v2;
  spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__sentenceTerminatorCharacterSet = [*(a1 + 32) sentenceTerminatorCharacterSet];
  result = [spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__sentenceTerminatorCharacterSet invertedSet];
  spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__nonSentenceTerminatorCharacterSet = result;
  return result;
}

uint64_t __222__AppleSpell_SentenceCorrection__spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (*MEMORY[0x1E69779B8] == a2 && a4 != 0)
  {
    result = [*(result + 32) rangeOfCharacterFromSet:spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__sentenceTerminatorCharacterSet options:0 range:{a3, a4}];
    if (v8)
    {
      result = [*(v6 + 32) rangeOfCharacterFromSet:spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults__nonSentenceTerminatorCharacterSet options:0 range:{a3, a4}];
      if (!v9)
      {
        v10 = [*(v6 + 32) substringWithRange:{a3, a4}];
        result = [v10 isEqualToString:@".."];
        if ((result & 1) == 0)
        {
          result = [v10 isEqualToString:@"..."];
          if ((result & 1) == 0)
          {
            *(*(*(v6 + 40) + 8) + 24) = 1;
          }
        }
      }
    }
  }

  v11 = *(*(v6 + 48) + 8);
  v12 = *(v11 + 32);
  if (a3 + a4 > (*(v11 + 40) + v12))
  {
    *(v11 + 40) = a3 + a4 - v12;
  }

  ++*(*(*(v6 + 56) + 8) + 24);
  return result;
}

uint64_t __222__AppleSpell_SentenceCorrection__spellServer_checkSentenceCorrectionInString_rangeInParagraph_languageObject_locale_tagger_offset_keyEventArray_selectedRangeValue_autocorrect_checkGrammar_ignoreTermination_mutableResults___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(result + 32) + 8) + 40) + *(*(*(result + 32) + 8) + 32);
  if (a3 + 6 < v3)
  {
    *(*(*(result + 40) + 8) + 24) = v3 - a3;
  }

  return result;
}

- (BOOL)supportSentenceCorrectionForLanguageObject:(id)a3 appIdentifier:(id)a4
{
  if (supportSentenceCorrectionForLanguageObject_appIdentifier__onceToken != -1)
  {
    [AppleSpell(SentenceCorrection) supportSentenceCorrectionForLanguageObject:appIdentifier:];
  }

  if (supportSentenceCorrectionForLanguageObject_appIdentifier__sentenceCorrectionDisabled)
  {
    return 0;
  }

  if ([a3 isEnglish])
  {
    return 1;
  }

  return [a3 isSpanish];
}

uint64_t __91__AppleSpell_SentenceCorrection__supportSentenceCorrectionForLanguageObject_appIdentifier___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    supportSentenceCorrectionForLanguageObject_appIdentifier__sentenceCorrectionDisabled = result;
  }

  return result;
}

- (void)spellServer:(id)a3 checkSentenceCorrectionInString:(id)a4 range:(_NSRange)a5 languageObject:(id)a6 offset:(unint64_t)a7 keyEventArray:(id)a8 selectedRangeValue:(id)a9 autocorrect:(BOOL)a10 checkGrammar:(BOOL)a11 ignoreTermination:(BOOL)a12 mutableResults:(id)a13
{
  v33 = 0;
  v35 = 0;
  location = a5.location;
  if (a6)
  {
    length = a5.length;
    v16 = a5.location;
    v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{objc_msgSend(a6, "identifier")}];
    v20 = [(AppleSpell *)self taggerForLanguageObject:a6 string:a4 range:v16, length];
    v21 = v20;
    if (v19)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = v16 + length;
    if (!v22 && v16 < v23)
    {
      v25 = v16;
      do
      {
        [a4 getParagraphStart:&v35 end:&location contentsEnd:&v33 forRange:{v25, 0}];
        if (v35 < v23 && v33 > v35 && v33 > v16)
        {
          v28 = v33 - v35;
          if (v35 >= v16)
          {
            v29 = v35;
          }

          else
          {
            v28 = v33 - v16;
            v29 = v16;
          }

          if (v33 <= v23)
          {
            v30 = v28;
          }

          else
          {
            v30 = v23 - v29;
          }

          if (v30)
          {
            BYTE2(v31) = a12;
            LOWORD(v31) = __PAIR16__(a11, a10);
            [(AppleSpell *)self spellServer:a3 checkSentenceCorrectionInString:a4 rangeInParagraph:v29 languageObject:v30 locale:a6 tagger:v19 offset:v21 keyEventArray:a7 selectedRangeValue:a8 autocorrect:a9 checkGrammar:v31 ignoreTermination:a13 mutableResults:?];
          }
        }

        v25 = location;
      }

      while (location < v23);
    }
  }

  else
  {
    v21 = 0;
  }

  [(AppleSpell *)self invalidateTagger:v21];
}

- (id)potentialSentenceCorrectionsForWord:(id)a3 languageObject:(id)a4
{
  if ([a4 isEnglish])
  {
    block = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __85__AppleSpell_SentenceCorrection__potentialSentenceCorrectionsForWord_languageObject___block_invoke;
    v17 = &unk_1E8405150;
    v18 = self;
    if (potentialSentenceCorrectionsForWord_languageObject__onceToken != -1)
    {
      dispatch_once(&potentialSentenceCorrectionsForWord_languageObject__onceToken, &block);
    }

    v7 = &potentialSentenceCorrectionsForWord_languageObject__potentialCorrectionsDictionary;
    return [objc_msgSend(*v7 objectForKey:{objc_msgSend(a3, "lowercaseString", v9, v10, v11, v12, v13, block, v15, v16, v17, v18)), "componentsSeparatedByString:", @"/"}];
  }

  if ([a4 isSpanish])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __85__AppleSpell_SentenceCorrection__potentialSentenceCorrectionsForWord_languageObject___block_invoke_2;
    v12 = &unk_1E8405150;
    v13 = self;
    if (potentialSentenceCorrectionsForWord_languageObject__onceToken_131 != -1)
    {
      dispatch_once(&potentialSentenceCorrectionsForWord_languageObject__onceToken_131, &v9);
    }

    v7 = &potentialSentenceCorrectionsForWord_languageObject__potentialCorrectionsDictionary_130;
    return [objc_msgSend(*v7 objectForKey:{objc_msgSend(a3, "lowercaseString", v9, v10, v11, v12, v13, block, v15, v16, v17, v18)), "componentsSeparatedByString:", @"/"}];
  }

  return 0;
}

id __85__AppleSpell_SentenceCorrection__potentialSentenceCorrectionsForWord_languageObject___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) sentenceCorrectionsDictionaryForLanguageObject:{+[PRLanguage languageObjectWithIdentifier:](PRLanguage, "languageObjectWithIdentifier:", @"en"}];
  potentialSentenceCorrectionsForWord_languageObject__potentialCorrectionsDictionary = result;
  return result;
}

id __85__AppleSpell_SentenceCorrection__potentialSentenceCorrectionsForWord_languageObject___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) sentenceCorrectionsDictionaryForLanguageObject:{+[PRLanguage languageObjectWithIdentifier:](PRLanguage, "languageObjectWithIdentifier:", @"es"}];
  potentialSentenceCorrectionsForWord_languageObject__potentialCorrectionsDictionary_130 = result;
  return result;
}

- (unint64_t)numberOfTurkishSuffixPointsInBuffer:(char *)a3 length:(unint64_t)a4 maxSuffixPoints:(unint64_t)a5 suffixPoints:(id *)a6
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__AppleSpell_Turkish__numberOfTurkishSuffixPointsInBuffer_length_maxSuffixPoints_suffixPoints___block_invoke;
  v10[3] = &unk_1E8405EA0;
  v10[4] = &v11;
  v10[5] = a5;
  v10[6] = a6;
  [PRTurkishSuffix enumerateSuffixMatchesForBuffer:a3 length:a4 options:2 usingBlock:v10];
  v7 = v12[3];
  if (v7)
  {
    qsort_b(a6, v7, 0x10uLL, &__block_literal_global_7);
    v8 = v12[3];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void *__95__AppleSpell_Turkish__numberOfTurkishSuffixPointsInBuffer_length_maxSuffixPoints_suffixPoints___block_invoke(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a2 >= 2 && a6 - 1 <= 0xB)
  {
    v6 = *(*(result[4] + 8) + 24);
    if (v6 < result[5])
    {
      v7 = a6 > 4;
      if (a6 == 12)
      {
        v7 = 2;
      }

      v8 = result[6];
      if (v6)
      {
        v9 = 0;
        v10 = *(*(result[4] + 8) + 24);
        while (*(v8 + v9) != a2 || *(v8 + v9 + 8) != v7)
        {
          v8 = result[6];
          v9 += 16;
          if (!--v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        *(v8 + 16 * v6) = a2;
        *(v8 + 16 * (*(*(result[4] + 8) + 24))++ + 8) = v7;
      }
    }
  }

  return result;
}

uint64_t __95__AppleSpell_Turkish__numberOfTurkishSuffixPointsInBuffer_length_maxSuffixPoints_suffixPoints___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  v4 = *(a2 + 8);
  v5 = *(a3 + 8);
  v6 = v4 >= v5;
  v7 = v4 > v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

- (BOOL)testTurkishSuffixationPattern:(id)a3
{
  __base[36] = *MEMORY[0x1E69E9840];
  v4 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F4E0A7A0];
  v5 = [MEMORY[0x1E696AD60] stringWithString:v4];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v6 = [a3 length];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [a3 rangeOfString:@"-" options:0 range:{v8, v6 - v8}];
      if (!v11)
      {
        break;
      }

      if (v9 > 0x23)
      {
        break;
      }

      v28[v9++] = v10 + v7;
      v8 = v10 + v11;
      --v7;
    }

    while (v10 + v11 < v6);
  }

  else
  {
    v9 = 0;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __53__AppleSpell_Turkish__testTurkishSuffixationPattern___block_invoke;
  v23[3] = &unk_1E8405EE8;
  v23[4] = &v24;
  v23[5] = __base;
  [PRTurkishSuffix enumerateSuffixMatchesForWord:v4 options:2 usingBlock:v23];
  v12 = v25[3];
  if (v12)
  {
    qsort_b(__base, v12, 8uLL, &__block_literal_global_1670);
    v13 = v25[3];
    if (v13)
    {
      v14 = 0;
      v15 = -1;
      do
      {
        [v5 replaceCharactersInRange:__base[v13 + v15] withString:{0, @"-"}];
        ++v14;
        v13 = v25[3];
        --v15;
      }

      while (v14 < v13);
    }

    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  v16 = 0;
  while (2)
  {
    v17 = __base;
    v18 = v13;
    do
    {
      if (!v18)
      {
        v20 = 0;
        goto LABEL_22;
      }

      v19 = *v17++;
      --v18;
    }

    while (v19 != v28[v16]);
    if (++v16 < v9)
    {
      continue;
    }

    break;
  }

LABEL_20:
  v20 = 1;
LABEL_22:
  _Block_object_dispose(&v24, 8);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t __53__AppleSpell_Turkish__testTurkishSuffixationPattern___block_invoke(uint64_t result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = *(*(result + 32) + 8);
    v3 = *(v2 + 24);
    if (v3 <= 0x23)
    {
      v4 = *(result + 40);
      v5 = v4;
      for (i = *(v2 + 24); i; --i)
      {
        v7 = *v5++;
        if (v7 == a2)
        {
          return result;
        }
      }

      *(v2 + 24) = v3 + 1;
      v4[v3] = a2;
    }
  }

  return result;
}

uint64_t __53__AppleSpell_Turkish__testTurkishSuffixationPattern___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

- (BOOL)checkNoCapAbbreviationWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5
{
  v9 = [a5 encoding];
  if (a4 < 3 || a3[a4 - 1] != 46)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = 0;
  v12 = a4 - 1;
  do
  {
    v13 = a3[v11++];
  }

  while (v13 != 46 && v11 < v12);
  if (v13 == 46 || [(AppleSpell *)self checkWordBuffer:a3 length:v12 languageObject:a5 index:10])
  {
LABEL_11:
    LOBYTE(v15) = 1;
    return v15;
  }

  v15 = CFStringCreateWithBytes(0, a3, v12, v10, 0);
  if (!v15)
  {
    return v15;
  }

  v16 = v15;
  if (![(AppleSpell *)self validateNoCapAbbreviation:v15 inLexiconForLanguageObject:a5])
  {
    if (([(__CFString *)v16 hasSuffix:@"."]& 1) == 0)
    {
      LODWORD(v15) = [(AppleSpell *)self validateNoCapAbbreviation:[(__CFString *)v16 stringByAppendingString:@"."] inLexiconForLanguageObject:a5];
      goto LABEL_19;
    }

LABEL_16:
    LOBYTE(v15) = 0;
    return v15;
  }

  LODWORD(v15) = 1;
LABEL_19:
  if (v12 == 2 && v15 && v10 == 1280)
  {
    if (*a3 == 78)
    {
      LOBYTE(v15) = a3[1] != 111;
      return v15;
    }

    goto LABEL_11;
  }

  return v15;
}

- (BOOL)validateWordBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5
{
  v5 = 0;
  v24 = *MEMORY[0x1E69E9840];
  if (a5 && a4 - 1 <= 0x3E)
  {
    v8 = a3[a4];
    a3[a4] = 0;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    HIDWORD(v12) = 0;
    v13 = 0;
    v14 = a3;
    *&v21 = v11;
    BYTE7(v22) = 1;
    *(&v22 + 9) = *&a5->var0;
    v5 = PRword(&v14, 3, 0) == 0;
    PRword(&v14, 17, 0);
    a3[a4] = v8;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)validateWordPrefixBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5
{
  v5 = 0;
  v24 = *MEMORY[0x1E69E9840];
  if (a5 && a4 - 1 <= 0x16)
  {
    v6 = &a3[a4];
    v7 = a3[a4];
    v8 = a3[a4 + 1];
    *&a3[a4] = 42;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    HIDWORD(v12) = 0;
    v13 = 0;
    v14 = a3;
    *&v21 = v11;
    BYTE7(v22) = 1;
    *(&v22 + 9) = *&a5->var0;
    v5 = !PRword(&v14, 5, 0) && v15 && *(v15 + 8) && *v15 && *(v15 + 18) != 0;
    PRword(&v14, 17, 0);
    *v6 = v7;
    v6[1] = v8;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)validateAbbreviationOrNumberWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7
{
  v10 = [a5 encoding];
  v11 = a4 < 7 || a6 == 0;
  v12 = v11;
  if (v11 && (v10 & 0xFFFFFFFB) == 0x500)
  {
    v13 = 1;
    if (!a4)
    {
      return v13 & 1;
    }

    v14 = 0;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    do
    {
      v18 = a3[v14];
      v19 = v18 - 216;
      if (v18 - 192 < 0x17 || (v18 <= 0xF7 ? (v20 = v19 >= 0x1F) : (v20 = 0), v20 ? (v21 = (v18 & 0xFFFFFFDF) - 65 >= 0x1A) : (v21 = 0), !v21 || (v18 - 138 <= 0x15 ? (v22 = ((1 << (v18 + 118)) & 0x350015) == 0) : (v22 = 1), !v22)))
      {
        v23 = v18 - 65 >= 0x1A && v18 - 192 >= 0x17;
        if (v23 && v19 >= 7)
        {
          v25 = a4 != 3 || v14 != 2;
          v26 = v25 & v17 & v16;
          v27 = v18 - 138 > 0x15 || ((1 << (v18 + 118)) & 0x200015) == 0;
          if (v27)
          {
            v17 = 0;
          }

          if (v27)
          {
            v16 = v26;
          }
        }
      }

      v28 = (v18 == 46) & v15;
      if (v14)
      {
        v15 = v28;
      }

      ++v14;
    }

    while (a4 != v14);
    if ((v16 | v15))
    {
      goto LABEL_121;
    }
  }

  v29 = v10 == 514 ? v12 : 0;
  if (v29 == 1)
  {
    v13 = 1;
    if (!a4)
    {
      return v13 & 1;
    }

    v30 = 0;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    do
    {
      v34 = a3[v30];
      if (v34 - 192 < 0x17 || (v34 <= 0xF7 ? (v35 = v34 - 216 >= 0x1F) : (v35 = 0), v35 ? (v36 = (v34 & 0xFFFFFFDF) - 65 >= 0x1A) : (v36 = 0), !v36 || (v34 - 161 <= 0x1E ? (v37 = ((1 << (v34 + 95)) & 0x6F356F35) == 0) : (v37 = 1), !v37)))
      {
        if (v34 - 65 >= 0x1A && v34 - 192 >= 0x17 && (v34 - 161 > 0x3D || ((1 << (v34 + 95)) & 0x3F80000000006F35) == 0))
        {
          v42 = a4 != 3 || v30 != 2;
          v32 &= v42 & v33;
          v33 = 0;
        }
      }

      v40 = (v34 == 46) & v31;
      if (v30)
      {
        v31 = v40;
      }

      ++v30;
    }

    while (a4 != v30);
    if ((v32 | v31))
    {
      goto LABEL_121;
    }
  }

  v43 = v10 == 517 ? v12 : 0;
  if (v43 != 1)
  {
    goto LABEL_127;
  }

  if (!a4)
  {
    goto LABEL_159;
  }

  v44 = 0;
  v45 = 1;
  v46 = 1;
  v47 = 1;
  do
  {
    v48 = a3[v44];
    v49 = v48 - 174;
    if ((v48 - 161) < 0xC || (v49 >= 0x42 ? (v50 = (v48 & 0xFFFFFFDF) - 65 >= 0x1A) : (v50 = 0), !v50 || (v48 - 241) < 0xC || (v48 & 0xFE) == 0xFE))
    {
      if ((v48 - 161) >= 0xC && (v48 - 65) >= 0x1A)
      {
        v52 = a4 == 3 && v44 == 2;
        v53 = !v52;
        v54 = v53 & v47 & v46;
        if (v49 >= 0x22)
        {
          v47 = 0;
          v46 = v54;
        }
      }
    }

    v55 = (v48 == 46) & v45;
    if (v44)
    {
      v45 = v55;
    }

    ++v44;
  }

  while (a4 != v44);
  if ((v46 | v45))
  {
LABEL_121:
    v13 = 1;
  }

  else
  {
LABEL_127:
    if (v10 != 134217984)
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      if (!a4)
      {
        goto LABEL_159;
      }

      v56 = 0;
      v57 = 1;
      v58 = 1;
      v59 = 1;
      do
      {
        v60 = a3[v56];
        v61 = v60 - 97;
        v62 = (v60 - 65) >= 0x1A && (v60 - 48) >= 0xA;
        if (v62)
        {
          v63 = 0;
        }

        else
        {
          v63 = v59;
        }

        if (v62)
        {
          v64 = 0;
        }

        else
        {
          v64 = v58;
        }

        if (v62)
        {
          v65 = 0;
        }

        else
        {
          v65 = v57;
        }

        v67 = a4 != 3 || v56 != 2;
        v58 &= v67 & v59;
        if (v61 <= 0x19)
        {
          v59 = 0;
        }

        else
        {
          v59 = v63;
        }

        if (v61 > 0x19)
        {
          v58 = v64;
          v57 = v65;
        }

        v68 = (v60 == 46) & v57;
        if (v56)
        {
          v57 = v68;
        }

        ++v56;
      }

      while (a4 != v56);
      v13 = v58 | v57;
    }

    else
    {
      v13 = 0;
    }

    if (a4 >= 3 && (v13 & 1) == 0)
    {
      if (a4 != 4 && a4 != 40 && (*a3 != 48 || a3[1] != 120))
      {
        v13 = 0;
        return v13 & 1;
      }

      if (*a3 == 48)
      {
        v70 = 2 * (a3[1] == 120);
      }

      else
      {
        v70 = 0;
      }

      v71 = 1;
      v72 = 1;
      do
      {
        v73 = a3[v70];
        if ((v73 - 48) >= 0xA)
        {
          v72 &= (v73 - 97) < 6;
          v71 &= (v73 - 65) < 6;
        }

        v13 = v72 | v71;
        if (((v72 | v71) & 1) == 0)
        {
          break;
        }

        ++v70;
      }

      while (v70 < a4);
    }
  }

  if (a4 == 3 && (v13 & 1) != 0)
  {
    if (*a3 == 79 && a3[1] == 83)
    {
      v13 = a3[2] != 88;
      return v13 & 1;
    }

LABEL_159:
    v13 = 1;
  }

  return v13 & 1;
}

- (BOOL)checkSpecialPrefixesForWordBuffer:(char *)a3 length:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4 - 1 > 0x47)
  {
LABEL_68:
    result = 0;
    goto LABEL_69;
  }

  v5 = 0;
  do
  {
    v6 = a3[v5];
    if ((v6 - 65) < 0x1A || (v6 - 192) < 0x17)
    {
      if ((v6 - 138) > 0x15 || ((1 << (v6 + 118)) & 0x200015) == 0)
      {
LABEL_14:
        LOBYTE(v6) = v6 + 32;
        goto LABEL_22;
      }

LABEL_19:
      if (v6 == 159)
      {
        LOBYTE(v6) = -1;
      }

      else
      {
        LOBYTE(v6) = v6 + 16;
      }

      goto LABEL_22;
    }

    if ((v6 - 216) < 7)
    {
      goto LABEL_14;
    }

    if ((v6 - 138) <= 0x15 && ((1 << (v6 + 118)) & 0x200015) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    *(&v19 + v5++) = v6;
  }

  while (a4 != v5);
  if ((a4 < 4 || v19 != 106 || v20 != 252 || v21 != 100) && (a4 < 5 || v19 != 106 || v20 != 117 || v21 != 100 || v22 != 101))
  {
    v4.i32[0] = v23;
    v10 = vmovl_u8(v4);
    v11.i8[0] = v19;
    v11.i8[1] = v21;
    v11.i16[1] = v22;
    v11.i8[4] = v10.i8[0];
    v11.i8[5] = v10.i8[2];
    v11.i8[6] = v10.i8[4];
    v11.i8[7] = v10.i8[6];
    v12 = vceq_s8(v11, 0x7265646EE46C7361);
    if ((a4 < 0xA || vaddv_s8(vand_s8(v12, 0x8040201008040201)) != -1 || v20 != 117) && (a4 < 0xA || v19 != 101 || v20 != 110 || v21 != 100 || (v12.i8[2] & 1) == 0 || HIBYTE(v22) != 246 || v10.u8[0] != 115 || v10.u8[2] != 117 || v10.u8[4] != 110 || v10.u8[6] != 103))
    {
      v13 = v19 == 104 && v20 == 105;
      v14 = v13 && a4 > 6;
      v15 = v14 && v21 == 116;
      v16 = v15;
      if (((v16 & v12.i8[2]) != 1 || HIBYTE(v22) != 101 || v10.u8[0] != 114) && (a4 < 7 || v19 != 103 || v20 != 246 || v21 != 114 || v22 != 105 || HIBYTE(v22) != 110 || v10.u8[0] != 103))
      {
        goto LABEL_68;
      }
    }
  }

  result = 1;
LABEL_69:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)stringByRemovingArabicDiacriticsFromString:(id)a3
{
  if (stringByRemovingArabicDiacriticsFromString__onceToken != -1)
  {
    [AppleSpell(Spelling) stringByRemovingArabicDiacriticsFromString:];
  }

  v4 = [a3 rangeOfCharacterFromSet:stringByRemovingArabicDiacriticsFromString__diacriticCharacterSet options:4 range:{0, objc_msgSend(a3, "length")}];
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = [MEMORY[0x1E696AD60] stringWithString:a3];
    do
    {
      [v8 replaceCharactersInRange:v6 withString:{v7, &stru_1F4E0A7A0}];
      if (!v6)
      {
        break;
      }

      v6 = [a3 rangeOfCharacterFromSet:stringByRemovingArabicDiacriticsFromString__diacriticCharacterSet options:4 range:{0, v6}];
      v7 = v9;
    }

    while (v9);
    return v8;
  }

  return a3;
}

id __67__AppleSpell_Spelling__stringByRemovingArabicDiacriticsFromString___block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithRange:{1611, 8}];
  stringByRemovingArabicDiacriticsFromString__diacriticCharacterSet = result;
  return result;
}

- (id)stringByReducingArabicAlefVariantsInString:(id)a3
{
  if (stringByReducingArabicAlefVariantsInString__onceToken != -1)
  {
    [AppleSpell(Spelling) stringByReducingArabicAlefVariantsInString:];
  }

  [a3 rangeOfCharacterFromSet:stringByReducingArabicAlefVariantsInString__alefVariantSet options:0 range:{0, objc_msgSend(a3, "length")}];
  if (v4)
  {
    a3 = [MEMORY[0x1E696AD60] stringWithString:a3];
    [a3 replaceOccurrencesOfString:@"آ" withString:@"ا" options:0 range:{0, objc_msgSend(a3, "length")}];
    [a3 replaceOccurrencesOfString:@"أ" withString:@"ا" options:0 range:{0, objc_msgSend(a3, "length")}];
    [a3 replaceOccurrencesOfString:@"إ" withString:@"ا" options:0 range:{0, objc_msgSend(a3, "length")}];
    [a3 replaceOccurrencesOfString:@"ا53" withString:@"ا" options:0 range:{0, objc_msgSend(a3, "length")}];
    [a3 replaceOccurrencesOfString:@"ا54" withString:@"ا" options:0 range:{0, objc_msgSend(a3, "length")}];
    [a3 replaceOccurrencesOfString:@"ا55" withString:@"ا" options:0 range:{0, objc_msgSend(a3, "length")}];
  }

  return a3;
}

id __67__AppleSpell_Spelling__stringByReducingArabicAlefVariantsInString___block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"آأإٕٓٔ"];
  stringByReducingArabicAlefVariantsInString__alefVariantSet = result;
  return result;
}

- (id)stringByRemovingHebrewDiacriticsFromString:(id)a3
{
  if (stringByRemovingHebrewDiacriticsFromString__onceToken != -1)
  {
    [AppleSpell(Spelling) stringByRemovingHebrewDiacriticsFromString:];
  }

  v4 = [a3 rangeOfCharacterFromSet:stringByRemovingHebrewDiacriticsFromString__diacriticCharacterSet options:4 range:{0, objc_msgSend(a3, "length")}];
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = [MEMORY[0x1E696AD60] stringWithString:a3];
    do
    {
      [v8 replaceCharactersInRange:v6 withString:{v7, &stru_1F4E0A7A0}];
      if (!v6)
      {
        break;
      }

      v6 = [a3 rangeOfCharacterFromSet:stringByRemovingHebrewDiacriticsFromString__diacriticCharacterSet options:4 range:{0, v6}];
      v7 = v9;
    }

    while (v9);
    return v8;
  }

  return a3;
}

id __67__AppleSpell_Spelling__stringByRemovingHebrewDiacriticsFromString___block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithRange:{1456, 14}];
  stringByRemovingHebrewDiacriticsFromString__diacriticCharacterSet = result;
  return result;
}

- (BOOL)validateWordBuffer:(char *)a3 length:(unint64_t)a4 languageObject:(id)a5 connection:(_PR_DB_IO *)a6 sender:(id)a7 checkBase:(BOOL)a8 checkDict:(BOOL)a9 checkTemp:(BOOL)a10 checkUser:(BOOL)a11 checkNames:(BOOL)a12 checkHyphens:(BOOL)a13 checkIntercaps:(BOOL)a14 checkOptions:(BOOL)a15 forCorrection:(BOOL)a16 depth:(unint64_t)a17
{
  v17 = a8;
  v294[10] = *MEMORY[0x1E69E9840];
  v278 = [a5 isEnglish];
  v282 = [a5 isFrench];
  v284 = [a5 isGerman];
  v280 = [a5 isSpanish];
  v279 = [a5 isItalian];
  v281 = [a5 isRussian];
  v21 = [a5 isTurkish];
  v276 = [a5 isSwedish];
  v275 = [a5 isDanish];
  v274 = [a5 isHungarian];
  v277 = [a5 isIrishGaelic];
  v22 = [a5 isKorean];
  v23 = [a5 isArabic];
  v272 = [a5 isHindi];
  v271 = [a5 isPunjabi];
  v270 = [a5 isTelugu];
  v24 = [objc_msgSend(a5 "identifier")];
  v286 = [objc_msgSend(a5 "identifier")];
  v25 = [a5 isHebrew];
  v26 = [a5 encoding];
  v273 = v21;
  if (validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__onceToken != -1)
  {
    [AppleSpell(Spelling) validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:];
  }

  v27 = a14;
  encoding = v26;
  if (!a4)
  {
LABEL_6:
    a4 = 0;
    v287 = 0;
    v28 = !v17;
    v29 = a7 != 0;
    LOBYTE(v30) = 1;
    goto LABEL_603;
  }

  while (a3[a4 - 1] == 32)
  {
    if (!--a4)
    {
      goto LABEL_6;
    }
  }

  if (!a15)
  {
    v287 = 0;
    LODWORD(v31) = 0;
    v34 = encoding == 134217984;
LABEL_15:
    v267 = v34;
    goto LABEL_16;
  }

  LODWORD(v31) = [(AppleSpell *)self validateAbbreviationOrNumberWordBuffer:a3 length:a4 languageObject:a5 connection:a6 sender:a7];
  v287 = 0;
  v267 = encoding == 134217984;
  if (!v31 && encoding == 134217984)
  {
    v32 = CFStringCreateWithBytes(0, a3, a4, 0x8000100u, 0);
    if (v32)
    {
      v287 = v32;
      [(__CFString *)v32 rangeOfCharacterFromSet:validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__nonDigitOrPunctuationCharacterSet];
      LODWORD(v31) = v33 == 0;
    }

    else
    {
      v287 = 0;
      LODWORD(v31) = 0;
    }

    v34 = 1;
    goto LABEL_15;
  }

LABEL_16:
  v35 = !a9;
  if (((v31 | v22 | v35) & 1) == 0)
  {
    v36 = [(AppleSpell *)self checkWordBuffer:a3 length:a4 languageObject:a5 index:0];
    LODWORD(v31) = v36;
    if (a4 >= 3 && v36 && (encoding & 0xFFFFFFFB) == 0x500)
    {
      v37 = *a3;
      v26 = encoding;
      if ((v37 - 65) >= 0x1A && (v37 - 192) >= 0x17 && (v37 - 216) >= 7)
      {
        v38 = v37 - 138;
        if (v38 > 0x15 || ((1 << v38) & 0x200015) == 0)
        {
          goto LABEL_46;
        }
      }

      v39 = a3[1];
      if ((v39 - 65) >= 0x1A && (v39 - 192) >= 0x17 && (v39 - 216) >= 7)
      {
        v40 = v39 - 138;
        if (v40 > 0x15 || ((1 << v40) & 0x200015) == 0)
        {
          goto LABEL_46;
        }
      }

      v41 = 2;
      do
      {
        v42 = a3[v41];
        v43 = v42 <= 0xF7 && v42 - 97 >= 0x1A;
        if (v43 && v42 - 223 >= 0x18)
        {
          v45 = v42 - 154;
          v204 = v45 > 4;
          v46 = (1 << v45) & 0x15;
          if (v204 || v46 == 0)
          {
            goto LABEL_46;
          }
        }

        ++v41;
      }

      while (v41 < a4);
      if (a4 <= 3 && a3[2] == 115)
      {
LABEL_46:
        v28 = !v17;
LABEL_109:
        v29 = a7 != 0;
        LOBYTE(v30) = 1;
        goto LABEL_602;
      }

      LODWORD(v31) = 0;
    }
  }

  if ((v31 & 1) == 0 && a12)
  {
    LODWORD(v31) = [(AppleSpell *)self checkNameWordBuffer:a3 length:a4 languageObject:a5 globalOnly:0];
  }

  v48 = !v17;
  v269 = !v17;
  if (!a6)
  {
    v48 = 1;
  }

  v268 = v48;
  if (v31)
  {
    v49 = self;
  }

  else
  {
    v49 = self;
    if ((v48 & 1) == 0)
    {
      LODWORD(v31) = [(AppleSpell *)self validateWordBuffer:a3 length:a4 connection:a6];
      if ((v31 & v284) == 1)
      {
        LODWORD(v31) = ![(AppleSpell *)self checkSpecialPrefixesForWordBuffer:a3 length:a4];
      }
    }
  }

  if ((v31 & 1) == 0 && a10)
  {
    LODWORD(v31) = [(AppleSpell *)v49 checkWordBuffer:a3 length:a4 languageObject:a5 index:4];
  }

  if ((v31 | v35))
  {
    goto LABEL_66;
  }

  v50 = a16;
  if (!a6)
  {
    v50 = 0;
  }

  if ((v50 | v286 | v22 | v23))
  {
    goto LABEL_65;
  }

  v31 = v287;
  if (!v287)
  {
    v31 = CFStringCreateWithBytes(0, a3, a4, encoding, 0);
    if (!v31)
    {
      if (([a5 isMarathi] & 1) == 0)
      {
        [a5 isUrdu];
      }

      v287 = 0;
      goto LABEL_65;
    }
  }

  v287 = v31;
  if (![(AppleSpell *)v49 validateWord:v31 inLexiconForLanguageObject:a5])
  {
    if (([a5 isMarathi] & 1) != 0 || objc_msgSend(a5, "isUrdu"))
    {
      LODWORD(v31) = [(AppleSpell *)v49 validateAdditionalWord:v31 inLexiconForLanguageObject:a5];
      goto LABEL_79;
    }

LABEL_65:
    LODWORD(v31) = 0;
    goto LABEL_66;
  }

  LODWORD(v31) = 1;
LABEL_79:
  if (a4 >= 3 && v31 && (encoding & 0xFFFFFFFB) == 0x500)
  {
    v56 = *a3;
    v26 = encoding;
    if ((v56 - 65) >= 0x1A && (v56 - 192) >= 0x17 && (v56 - 216) >= 7)
    {
      v57 = v56 - 138;
      if (v57 > 0x15 || ((1 << v57) & 0x200015) == 0)
      {
        goto LABEL_108;
      }
    }

    v58 = a3[1];
    if ((v58 - 65) >= 0x1A && (v58 - 192) >= 0x17 && (v58 - 216) >= 7)
    {
      v59 = v58 - 138;
      if (v59 > 0x15 || ((1 << v59) & 0x200015) == 0)
      {
        goto LABEL_108;
      }
    }

    v60 = 2;
    do
    {
      v61 = a3[v60];
      if (v61 <= 0xF7 && v61 - 97 >= 0x1A && v61 - 223 >= 0x18)
      {
        v64 = v61 - 154;
        v204 = v64 > 4;
        v65 = (1 << v64) & 0x15;
        if (v204 || v65 == 0)
        {
          goto LABEL_108;
        }
      }

      ++v60;
    }

    while (v60 < a4);
    if (a4 <= 3 && a3[2] == 115)
    {
LABEL_108:
      v28 = v269;
      goto LABEL_109;
    }

    goto LABEL_65;
  }

LABEL_66:
  if (((v31 | v35) & 1) == 0)
  {
    if ([a5 isUkrainian])
    {
      v51 = encoding;
      v52 = v287;
      if (!v287)
      {
        v52 = CFStringCreateWithBytes(0, a3, a4, encoding, 0);
      }

      [(__CFString *)v52 rangeOfString:@"ʼ", v51];
      v287 = v52;
      if (v53)
      {
        v54 = @"ʼ";
        v55 = @"'";
      }

      else
      {
        [(__CFString *)v52 rangeOfString:@"'"];
        if (!v67)
        {
          goto LABEL_114;
        }

        v54 = @"'";
        v55 = @"ʼ";
      }

      v68 = [(__CFString *)v52 stringByReplacingOccurrencesOfString:v54 withString:v55];
      if (v68)
      {
        LODWORD(v31) = [(AppleSpell *)v49 validateWord:v68 inLexiconForLanguageObject:a5];
        goto LABEL_115;
      }
    }

LABEL_114:
    LODWORD(v31) = 0;
  }

LABEL_115:
  if (((v31 | v35) & 1) == 0 && ((v23 ^ 1) & 1) == 0)
  {
    v69 = encoding;
    v70 = v287;
    if (!v287)
    {
      v70 = CFStringCreateWithBytes(0, a3, a4, encoding, 0);
      if (!v70)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_139;
        }

        goto LABEL_132;
      }
    }

    v71 = [(AppleSpell *)v49 stringByRemovingArabicDiacriticsFromString:v70];
    v287 = v70;
    if (!v71)
    {
      goto LABEL_127;
    }

    v72 = v71;
    if (a16)
    {
      v73 = [(AppleSpell *)self validateWord:v71 inLexiconForLanguageObject:a5];
    }

    else
    {
      v73 = [(AppleSpell *)self validateAdditionalWord:v71 inLexiconForLanguageObject:a5];
    }

    LODWORD(v31) = v73;
    if (v73)
    {
      goto LABEL_128;
    }

    if ((v24 ^ 1))
    {
      goto LABEL_128;
    }

    v74 = [(AppleSpell *)self stringByReducingArabicAlefVariantsInString:v72];
    v31 = v74;
    if (!v74)
    {
      goto LABEL_128;
    }

    if (([(__CFString *)v74 isEqualToString:v72]& 1) != 0)
    {
LABEL_127:
      LODWORD(v31) = 0;
LABEL_128:
      v49 = self;
      goto LABEL_129;
    }

    v49 = self;
    if (a16)
    {
      v102 = [(AppleSpell *)self validateWord:v31 inLexiconForLanguageObject:a5];
    }

    else
    {
      v102 = [(AppleSpell *)self validateAdditionalWord:v31 inLexiconForLanguageObject:a5];
    }

    LODWORD(v31) = v102;
  }

LABEL_129:
  if ((v31 | v35) & 1) != 0 || ((v25 ^ 1))
  {
    goto LABEL_141;
  }

  v69 = encoding;
  v75 = v287;
  if (!v287)
  {
LABEL_132:
    v75 = CFStringCreateWithBytes(0, a3, a4, v69, 0);
    if (v75)
    {
      goto LABEL_133;
    }

LABEL_139:
    v287 = 0;
    goto LABEL_140;
  }

LABEL_133:
  v76 = [(AppleSpell *)v49 stringByRemovingHebrewDiacriticsFromString:v75];
  v287 = v75;
  if (!v76)
  {
LABEL_140:
    LODWORD(v31) = 0;
    goto LABEL_141;
  }

  if (a16)
  {
    v77 = [(AppleSpell *)v49 validateWord:v76 inLexiconForLanguageObject:a5];
  }

  else
  {
    v77 = [(AppleSpell *)v49 validateAdditionalWord:v76 inLexiconForLanguageObject:a5];
  }

  LODWORD(v31) = v77;
LABEL_141:
  v29 = a7 != 0;
  if ((v31 & 1) != 0 || !a7 || !a11)
  {
LABEL_147:
    v79 = v22 ^ 1;
    if (((v31 | v35) & 1) == 0)
    {
      v80 = a6;
      if (v79)
      {
        goto LABEL_162;
      }

      v294[0] = 0;
      v31 = v287;
      if (v287)
      {
        goto LABEL_151;
      }

      goto LABEL_150;
    }

    goto LABEL_161;
  }

  v78 = v287;
  if (v287 || (v78 = CFStringCreateWithBytes(0, a3, a4, encoding, 0)) != 0)
  {
    v287 = v78;
    LODWORD(v31) = [a7 isWordInUserDictionaries:v78 caseSensitive:0];
    goto LABEL_147;
  }

  v79 = v22 ^ 1;
  if (((v35 | v22 ^ 1) & 1) == 0)
  {
    v294[0] = 0;
    v80 = a6;
LABEL_150:
    v31 = CFStringCreateWithBytes(0, a3, a4, encoding, 0);
    if (!v31)
    {
      v287 = 0;
LABEL_158:
      v79 = 0;
      goto LABEL_162;
    }

LABEL_151:
    [(__CFString *)v31 rangeOfCharacterFromSet:validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__nonPunctuationCharacterSet];
    v287 = v31;
    LODWORD(v31) = !v81 || (v31 = [(AppleSpell *)v49 internalStringForKoreanExternalString:v31], v82 = [(__CFString *)v31 length], v295.location = 0, v295.length = v82, v82 == CFStringGetBytes(v31, v295, encoding, 0x5Fu, 0, buffer, 72, v294)) && (!v294[0] || [(AppleSpell *)v49 checkWordBuffer:buffer length:v294[0] languageObject:a5 index:5]) || [(AppleSpell *)v49 validateWord:v31 inLexiconForLanguageObject:a5];
    goto LABEL_158;
  }

  v287 = 0;
  LODWORD(v31) = 0;
LABEL_161:
  v80 = a6;
LABEL_162:
  if (v80)
  {
    v83 = !a15;
  }

  else
  {
    v83 = 1;
  }

  if ((v31 & 1) == 0 && !v83 && ((v284 ^ 1) & 1) == 0)
  {
    v84 = 0;
    while (!v84 || (a3[v84] | 0x20) != 0x73 || (a3[v84 - 1] | 0x20) != 0x73)
    {
      if (++v84 >= a4)
      {
        LODWORD(v31) = 0;
        goto LABEL_180;
      }
    }

    v80->var7 = 64;
    if (PRdb(&v80->var0, 4, 128))
    {
      v80->var7 = 128;
      PRdb(&v80->var0, 4, 128);
      LODWORD(v31) = 0;
      v49 = self;
    }

    else
    {
      v85 = [(AppleSpell *)self validateWordBuffer:a3 length:a4 connection:v80];
      v80->var7 = 128;
      PRdb(&v80->var0, 4, 128);
      if (v85)
      {
        LODWORD(v31) = ![(AppleSpell *)self checkSpecialPrefixesForWordBuffer:a3 length:a4];
      }

      else
      {
        LODWORD(v31) = 0;
      }

      v49 = self;
    }
  }

LABEL_180:
  if (((v31 | v83) & 1) == 0 && ((v280 ^ 1) & 1) == 0)
  {
    v86 = 0;
    while (1)
    {
      v87 = a3[v86];
      if ((v87 & 0xF8) == 0xC8)
      {
        break;
      }

      if ((v87 - 210) <= 0xB && ((1 << (v87 + 46)) & 0xF9F) != 0)
      {
        break;
      }

      v89 = v87 - 138;
      v204 = v89 > 0x3B;
      v90 = (1 << v89) & 0xFC0000000200011;
      if (!v204 && v90 != 0)
      {
        break;
      }

      if (++v86 >= a4)
      {
        LODWORD(v31) = 0;
        goto LABEL_200;
      }
    }

    v80->var8 = 128;
    if (PRdb(&v80->var0, 4, 128))
    {
      LODWORD(v31) = 0;
    }

    else
    {
      LODWORD(v31) = [(AppleSpell *)v49 validateWordBuffer:a3 length:a4 connection:v80];
    }

    v80->var8 = 64;
    PRdb(&v80->var0, 4, 128);
  }

LABEL_200:
  if (((v31 | v83) & 1) == 0 && ((v281 ^ 1) & 1) == 0)
  {
    v92 = 0;
    while (1)
    {
      v93 = a3[v92];
      if (v93 == 161 || v93 == 241)
      {
        break;
      }

      if (++v92 >= a4)
      {
        LODWORD(v31) = 0;
        goto LABEL_211;
      }
    }

    v80->var8 = 64;
    if (PRdb(&v80->var0, 4, 128))
    {
      LODWORD(v31) = 0;
    }

    else
    {
      LODWORD(v31) = [(AppleSpell *)self validateWordBuffer:a3 length:a4 connection:v80];
    }

    v80->var8 = 128;
    PRdb(&v80->var0, 4, 128);
  }

LABEL_211:
  v94 = v282 ^ 1;
  if (((v31 | v83) & 1) == 0 && (v94 & 1) == 0)
  {
    v95 = 0;
    v96 = 1;
    while (1)
    {
      v97 = a3[v95];
      if ((v97 & 0xF8) == 0xC8)
      {
        break;
      }

      if ((v97 - 210) <= 0xB && ((1 << (v97 + 46)) & 0xF9F) != 0)
      {
        goto LABEL_230;
      }

      v99 = v97 - 138;
      v204 = v99 > 0x3B;
      v100 = (1 << v99) & 0xFC0000000200011;
      if (!v204 && v100 != 0)
      {
        goto LABEL_230;
      }

      if (++v95 >= a4)
      {
        v96 = 0;
        goto LABEL_230;
      }
    }

    v96 = 1;
LABEL_230:
    v103 = 0;
    while (1)
    {
      if (v103)
      {
        if ((a3[v103] | 0x20) == 0x65)
        {
          v104 = a3[v103 - 1] - 65;
          if (v104 < 0x2F && ((0x400100004001uLL >> v104) & 1) != 0)
          {
            break;
          }
        }
      }

      if (++v103 >= a4)
      {
        v105 = 0;
        if (!v96)
        {
          goto LABEL_240;
        }

        goto LABEL_237;
      }
    }

    v105 = 1;
    if (!v96)
    {
      goto LABEL_240;
    }

LABEL_237:
    v80->var8 = 160;
    if (!PRdb(&v80->var0, 4, 128))
    {
      LODWORD(v31) = [(AppleSpell *)self validateWordBuffer:a3 length:a4 connection:v80];
      goto LABEL_241;
    }

LABEL_240:
    LODWORD(v31) = 0;
LABEL_241:
    if ((v31 & 1) == 0 && ((v105 ^ 1) & 1) == 0)
    {
      v80->var8 = 80;
      if (!PRdb(&v80->var0, 4, 128))
      {
        LODWORD(v31) = [(AppleSpell *)self validateWordBuffer:a3 length:a4 connection:v80];
        if ((v31 & 1) == 0)
        {
LABEL_246:
          if ((v96 & v105) != 0)
          {
            v80->var8 = 144;
            if (PRdb(&v80->var0, 4, 128))
            {
              LODWORD(v31) = 0;
            }

            else
            {
              LODWORD(v31) = [(AppleSpell *)self validateWordBuffer:a3 length:a4 connection:v80];
            }
          }
        }

LABEL_252:
        if ((v96 | v105) == 1)
        {
          v80->var8 = 96;
          PRdb(&v80->var0, 4, 128);
        }

        goto LABEL_254;
      }

      LODWORD(v31) = 0;
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_252;
  }

LABEL_254:
  if (((v31 | v268) & 1) == 0 && ((v286 ^ 1) & 1) == 0)
  {
    v80->var7 = 64;
    if (PRdb(&v80->var0, 4, 128))
    {
      LODWORD(v31) = 0;
    }

    else
    {
      LODWORD(v31) = [(AppleSpell *)self validateWordBuffer:a3 length:a4 connection:v80];
    }

    v80->var7 = 128;
    PRdb(&v80->var0, 4, 128);
  }

  v106 = a17 < 4 && a13;
  if (!v106 || v31)
  {
LABEL_281:
    if (v31)
    {
      LOBYTE(v30) = 1;
      goto LABEL_601;
    }
  }

  else
  {
    v107 = 0;
    while (1)
    {
      v108 = a3[v107];
      if ((v108 - 32) <= 0x3F && ((1 << (v108 - 32)) & 0x800000000400E001) != 0)
      {
        break;
      }

      v110 = v107 <= 1 || a4 - 1 == v107;
      v111 = v110 || a4 - 2 == v107;
      if (v111 && v108 == 39)
      {
        break;
      }

      if (++v107 >= a4)
      {
        goto LABEL_281;
      }
    }

    if (!v107)
    {
      goto LABEL_745;
    }

    HIBYTE(usedBufLena) = a16;
    BYTE6(usedBufLena) = a15;
    BYTE5(usedBufLena) = a14;
    BYTE4(usedBufLena) = 1;
    BYTE3(usedBufLena) = a12;
    BYTE2(usedBufLena) = a11;
    BYTE1(usedBufLena) = a10;
    LOBYTE(usedBufLena) = a9;
    if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:v107 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLena checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
    {
LABEL_745:
      LOBYTE(v30) = 1;
      if (v107 + 1 >= a4)
      {
        goto LABEL_601;
      }

      HIBYTE(usedBufLenb) = a16;
      BYTE6(usedBufLenb) = a15;
      BYTE5(usedBufLenb) = a14;
      BYTE4(usedBufLenb) = 1;
      BYTE3(usedBufLenb) = a12;
      BYTE2(usedBufLenb) = a11;
      BYTE1(usedBufLenb) = a10;
      LOBYTE(usedBufLenb) = a9;
      if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:&a3[v107 + 1] languageObject:~v107 + a4 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLenb checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
      {
        goto LABEL_601;
      }
    }
  }

  LODWORD(v30) = 0;
  if (a4 < 3)
  {
    goto LABEL_304;
  }

  v27 = a14;
  if (!v106 || !v267)
  {
    goto LABEL_305;
  }

  v112 = 0;
  v113 = 0;
  do
  {
    if (a3[v113] == 226 && a3[v113 + 1] == 128)
    {
      v114 = (a3[v113 + 2] & 0xFE) == 144;
      if ((a3[v113 + 2] & 0xFE) == 0x90)
      {
        v112 = v113;
      }
    }

    else
    {
      v114 = 0;
    }

    if (v114)
    {
      break;
    }

    v115 = v113 + 3;
    ++v113;
  }

  while (v115 < a4);
  if (!v114)
  {
    goto LABEL_303;
  }

  if (v112)
  {
    HIBYTE(usedBufLenc) = a16;
    BYTE6(usedBufLenc) = a15;
    BYTE5(usedBufLenc) = a14;
    BYTE4(usedBufLenc) = 1;
    BYTE3(usedBufLenc) = a12;
    BYTE2(usedBufLenc) = a11;
    BYTE1(usedBufLenc) = a10;
    LOBYTE(usedBufLenc) = a9;
    if (![AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:v112 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLenc checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
    {
LABEL_303:
      LODWORD(v30) = 0;
LABEL_304:
      v27 = a14;
      goto LABEL_305;
    }
  }

  LOBYTE(v30) = 1;
  if (v112 + 3 >= a4)
  {
    goto LABEL_601;
  }

  v116 = &a3[v112];
  v117 = a4 - v112 - 3;
  HIBYTE(usedBufLend) = a16;
  BYTE6(usedBufLend) = a15;
  v27 = a14;
  BYTE5(usedBufLend) = a14;
  BYTE4(usedBufLend) = 1;
  BYTE3(usedBufLend) = a12;
  BYTE2(usedBufLend) = a11;
  BYTE1(usedBufLend) = a10;
  LOBYTE(usedBufLend) = a9;
  LODWORD(v30) = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:v116 + 3 languageObject:v117 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLend checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
LABEL_305:
  if (v30 & 1 | !v106 | v79 & 1)
  {
    goto LABEL_328;
  }

  v118 = 0;
  while (1)
  {
    v119 = a3[v118];
    if (v119 == 39 || v118 + 2 < a4 && v119 == 226 && a3[v118 + 1] == 128 && a3[v118 + 2] == 153)
    {
      break;
    }

    if (++v118 >= a4)
    {
      goto LABEL_327;
    }
  }

  v120 = 0;
  v121 = 0;
  do
  {
    v122 = a3[v121];
    if (v121 + 2 < a4 && v122 == 226)
    {
      if (a3[v121 + 1] == 128 && a3[v121 + 2] == 153)
      {
        v121 += 2;
        goto LABEL_324;
      }

      LOBYTE(v122) = -30;
LABEL_323:
      *(&buffer[0].location + v120++) = v122;
      goto LABEL_324;
    }

    if (v122 != 39)
    {
      goto LABEL_323;
    }

LABEL_324:
    ++v121;
  }

  while (v121 < a4);
  if (v120)
  {
    HIBYTE(usedBufLene) = a16;
    BYTE6(usedBufLene) = a15;
    BYTE5(usedBufLene) = v27;
    BYTE4(usedBufLene) = 1;
    BYTE3(usedBufLene) = a12;
    BYTE2(usedBufLene) = a11;
    BYTE1(usedBufLene) = a10;
    LOBYTE(usedBufLene) = a9;
    LODWORD(v30) = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:buffer languageObject:v120 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLene checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
    goto LABEL_328;
  }

LABEL_327:
  LODWORD(v30) = 0;
LABEL_328:
  v123 = v30 ^ 1;
  v124 = v106 & (v30 ^ 1);
  if ((v124 & v279) == 1)
  {
    v125 = a7;
    v28 = v269;
    if (a4 < 4)
    {
      goto LABEL_598;
    }

    v126 = 3;
    if (!strncasecmp_l(a3, "un'", 3uLL, 0))
    {
      goto LABEL_346;
    }

    if (a4 == 4)
    {
      goto LABEL_598;
    }

    v126 = 4;
    if (strncasecmp_l(a3, "all'", 4uLL, 0))
    {
      v126 = 4;
      if (strncasecmp_l(a3, "com'", 4uLL, 0))
      {
        v126 = 4;
        if (strncasecmp_l(a3, "dev'", 4uLL, 0))
        {
          if (a4 < 6)
          {
            a4 = 5;
          }

          else
          {
            v126 = 5;
            if (!strncasecmp_l(a3, "dall'", 5uLL, 0))
            {
              goto LABEL_346;
            }

            v126 = 5;
            if (!strncasecmp_l(a3, "dell'", 5uLL, 0))
            {
              goto LABEL_346;
            }

            v126 = 5;
            if (!strncasecmp_l(a3, "nell'", 5uLL, 0))
            {
              goto LABEL_346;
            }

            v126 = 5;
            if (!strncasecmp_l(a3, "sant'", 5uLL, 0))
            {
              goto LABEL_346;
            }

            v126 = 5;
            if (!strncasecmp_l(a3, "sull'", 5uLL, 0))
            {
              goto LABEL_346;
            }

            v126 = 5;
            if (!strncasecmp_l(a3, "tutt'", 5uLL, 0))
            {
              goto LABEL_346;
            }

            if (a4 != 6)
            {
              v126 = 6;
              v125 = a7;
              if (!strncasecmp_l(a3, "quand'", 6uLL, 0))
              {
                goto LABEL_346;
              }

              v126 = 6;
              if (!strncasecmp_l(a3, "quell'", 6uLL, 0))
              {
                goto LABEL_346;
              }

              v126 = 6;
              if (!strncasecmp_l(a3, "quest'", 6uLL, 0))
              {
                goto LABEL_346;
              }
            }
          }

          goto LABEL_598;
        }
      }
    }

LABEL_346:
    if (v126 >= a4)
    {
      goto LABEL_598;
    }

    v127 = a3[v126];
    HIDWORD(v129) = v127 - 65;
    LODWORD(v129) = v127 - 65;
    v128 = v129 >> 1;
    if (v128 > 0x1C || ((1 << v128) & 0x14951495) == 0)
    {
      v166 = vaddq_s32(vdupq_n_s32(v127), xmmword_1D2BF7970);
      if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, v166))) & 1) == 0 && v127 - 248 >= 6 && (v127 & 0xD8) != 0xC8 && v127 != 255)
      {
        if (v127 - 65 < 0x1A || v166.i32[0] < 0x17u)
        {
          if (v127 - 138 <= 0x15 && ((1 << (v127 + 118)) & 0x200015) != 0)
          {
            goto LABEL_598;
          }

LABEL_471:
          v127 += 32;
        }

        else
        {
          if (v127 - 216 < 7)
          {
            goto LABEL_471;
          }

          if (v127 - 138 <= 0x15 && ((1 << (v127 + 118)) & 0x200015) != 0)
          {
            goto LABEL_598;
          }
        }

        if (v127 != 104)
        {
          goto LABEL_598;
        }
      }
    }

    HIBYTE(usedBufLenf) = a16;
    BYTE6(usedBufLenf) = a15;
    BYTE5(usedBufLenf) = v27;
    BYTE4(usedBufLenf) = 1;
    BYTE3(usedBufLenf) = a12;
    BYTE2(usedBufLenf) = a11;
    BYTE1(usedBufLenf) = a10;
    LOBYTE(usedBufLenf) = a9;
    v130 = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:&a3[v126] languageObject:a4 - v126 connection:a5 sender:a6 checkBase:v125 checkDict:1 checkTemp:usedBufLenf checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
LABEL_372:
    LOBYTE(v30) = v130;
    goto LABEL_598;
  }

  v28 = v269;
  if (((v124 ^ 1 | v94) & 1) == 0)
  {
    if (a4 < 4)
    {
      goto LABEL_598;
    }

    v135 = 3;
    if (strncasecmp_l(a3, "qu'", 3uLL, 0))
    {
      if (a4 < 6)
      {
        goto LABEL_598;
      }

      v135 = 5;
      if (strncasecmp_l(a3, "entr'", 5uLL, 0))
      {
        if (a4 == 6)
        {
          goto LABEL_598;
        }

        v135 = 6;
        if (strncasecmp_l(a3, "jusqu'", 6uLL, 0))
        {
          if (a4 < 8)
          {
            a4 = 7;
            goto LABEL_598;
          }

          v135 = 7;
          if (strncasecmp_l(a3, "presqu'", 7uLL, 0))
          {
            v135 = 7;
            if (strncasecmp_l(a3, "quelqu'", 7uLL, 0))
            {
LABEL_598:
              v26 = encoding;
              goto LABEL_603;
            }
          }
        }
      }
    }

    if (v135 >= a4)
    {
      goto LABEL_598;
    }

    v136 = a3[v135];
    HIDWORD(v138) = v136 - 65;
    LODWORD(v138) = v136 - 65;
    v137 = v138 >> 1;
    v140 = a7;
    v139 = self;
    v141 = a10;
    if (v137 <= 0x1C && ((1 << v137) & 0x14951495) != 0 || (v186 = vaddq_s32(vdupq_n_s32(v136), xmmword_1D2BF7970), (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, v186))) & 1) != 0) || v136 - 248 < 6 || (v136 & 0xD8) == 0xC8 || v136 == 255)
    {
LABEL_371:
      HIBYTE(usedBufLeng) = a16;
      BYTE6(usedBufLeng) = a15;
      BYTE5(usedBufLeng) = v27;
      BYTE4(usedBufLeng) = 1;
      BYTE3(usedBufLeng) = a12;
      BYTE2(usedBufLeng) = a11;
      BYTE1(usedBufLeng) = v141;
      LOBYTE(usedBufLeng) = a9;
      v130 = [AppleSpell validateWordBuffer:v139 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" languageObject:&a3[v135] connection:a4 - v135 sender:a5 checkBase:a6 checkDict:v140 checkTemp:1 checkUser:usedBufLeng checkNames:a17 + 1 checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
      goto LABEL_372;
    }

    if (v136 - 65 < 0x1A || v186.i32[0] < 0x17u)
    {
      if (v136 - 138 <= 0x15 && ((1 << (v136 + 118)) & 0x200015) != 0)
      {
        goto LABEL_598;
      }
    }

    else if (v136 - 216 >= 7)
    {
      if (v136 - 138 > 0x15)
      {
        v28 = v269;
        v27 = a14;
      }

      else
      {
        v28 = v269;
        v27 = a14;
        if (((1 << (v136 + 118)) & 0x200015) != 0)
        {
          goto LABEL_598;
        }
      }

LABEL_543:
      v140 = a7;
      v139 = self;
      v141 = a10;
      if (v136 != 104)
      {
        goto LABEL_598;
      }

      goto LABEL_371;
    }

    v136 += 32;
    goto LABEL_543;
  }

  if ((v124 & v278) != 1)
  {
    if (a17 < 4)
    {
      v142 = v30 ^ 1;
    }

    else
    {
      v142 = 0;
    }

    if ((v142 & (a12 && a13) & v277) == 1)
    {
      if (a4 < 3)
      {
        goto LABEL_598;
      }

      v143 = *a3 - 98;
      v26 = encoding;
      if (v143 > 0xC)
      {
        goto LABEL_603;
      }

      if (((1 << v143) & 0x1865) == 0)
      {
        goto LABEL_603;
      }

      v144 = a3[1];
      if ((v144 - 65) >= 0x1A && (v144 - 192) >= 0x17 && (v144 - 216) >= 7)
      {
        v145 = v144 - 138;
        if (v145 > 0x15 || ((1 << v145) & 0x200015) == 0)
        {
          goto LABEL_603;
        }
      }

      v146 = [(AppleSpell *)self checkNameWordBuffer:a3 + 1 length:a4 - 1 languageObject:a5 globalOnly:0];
      goto LABEL_416;
    }

    if ((v124 & v276) == 1)
    {
      if (a4 < 3)
      {
        goto LABEL_598;
      }

      v26 = encoding;
      if (a3[a4 - 1] != 115 || toLower(a3[a4 - 2]) == 115)
      {
        goto LABEL_603;
      }

      HIBYTE(usedBufLenh) = a16;
      BYTE6(usedBufLenh) = 0;
      WORD2(usedBufLenh) = 0;
      LODWORD(usedBufLenh) = 0x1000000;
      v146 = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:a4 - 1 connection:a5 sender:a6 checkBase:a7 checkDict:0 checkTemp:usedBufLenh checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
LABEL_416:
      LOBYTE(v30) = v146;
      goto LABEL_603;
    }

    if (a17 >= 2)
    {
      v123 = 0;
    }

    if ((v123 & a13 & v275) == 1)
    {
      if (a4 < 4)
      {
        goto LABEL_598;
      }

      v147 = 3;
      if (strncasecmp_l(&a3[a4 - 3], "'en", 3uLL, 0))
      {
        v147 = 3;
        v148 = self;
        v149 = a10;
        if (!strncasecmp_l(&a3[a4 - 3], "'er", 3uLL, 0) || (v147 = 3, !strncasecmp_l(&a3[a4 - 3], "'et", 3uLL, 0)))
        {
          v26 = encoding;
LABEL_525:
          if (v147 < a4)
          {
            HIBYTE(usedBufLenn) = a16;
            BYTE6(usedBufLenn) = a15;
            BYTE5(usedBufLenn) = a14;
            BYTE4(usedBufLenn) = 1;
            BYTE3(usedBufLenn) = a12;
            BYTE2(usedBufLenn) = a11;
            BYTE1(usedBufLenn) = v149;
            LOBYTE(usedBufLenn) = a9;
            LOBYTE(v30) = [AppleSpell validateWordBuffer:v148 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" languageObject:a3 connection:a4 - v147 sender:a5 checkBase:a6 checkDict:a7 checkTemp:1 checkUser:usedBufLenn checkNames:a17 + 1 checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
          }

LABEL_527:
          if ((v30 & 1) != 0 || a4 < 8)
          {
            goto LABEL_602;
          }

          v182 = a4 - 4;
          v183 = a17 + 1;
          v184 = 4;
          do
          {
            BYTE6(usedBufLen) = a15;
            BYTE5(usedBufLen) = 0;
            *(&usedBufLen + 3) = 0;
            BYTE2(usedBufLen) = a11;
            LOWORD(usedBufLen) = __PAIR16__(a10, a9);
            LOBYTE(v30) = 0;
            if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:a3 languageObject:v184 connection:a5 sender:a6 checkBase:a7 checkDict:0 checkTemp:usedBufLen checkUser:v183 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
            {
              HIBYTE(usedBufLeno) = a16;
              BYTE6(usedBufLeno) = a15;
              BYTE5(usedBufLeno) = 0;
              *(&usedBufLeno + 3) = 256;
              BYTE2(usedBufLeno) = a11;
              BYTE1(usedBufLeno) = a10;
              LOBYTE(usedBufLeno) = a9;
              LOBYTE(v30) = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:&a3[v184] languageObject:v182 connection:a5 sender:a6 checkBase:a7 checkDict:0 checkTemp:usedBufLeno checkUser:v183 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
            }

            if (v30)
            {
              break;
            }

            v185 = v184 + 5;
            --v182;
            ++v184;
          }

          while (v185 <= a4);
LABEL_534:
          v26 = encoding;
          goto LABEL_602;
        }

        if (a4 == 4)
        {
          goto LABEL_534;
        }

        v147 = 4;
        if (strncasecmp_l(&a3[a4 - 4], "'ens", 4uLL, 0))
        {
          v147 = 4;
          if (strncasecmp_l(&a3[a4 - 4], "'ers", 4uLL, 0))
          {
            if (a4 < 6)
            {
              a4 = 5;
              goto LABEL_601;
            }

            if (strncasecmp_l(&a3[a4 - 4], "'erne", 5uLL, 0))
            {
              if (a4 == 6)
              {
                goto LABEL_601;
              }

              v150 = strncasecmp_l(&a3[a4 - 4], "'ernes", 5uLL, 0) == 0;
              v147 = 4 * v150;
            }

            else
            {
              v150 = 1;
              v147 = 4;
            }
          }

          else
          {
            v150 = 1;
          }

          v26 = encoding;
          v148 = self;
          v149 = a10;
          v28 = v269;
          if (!v150)
          {
            goto LABEL_527;
          }

          goto LABEL_525;
        }
      }

      v26 = encoding;
      v148 = self;
      v149 = a10;
      goto LABEL_525;
    }

    if ((v124 & v274) == 1)
    {
      if (a4 < 4 || strncasecmp_l(a3, "leg", 3uLL, 0))
      {
        goto LABEL_598;
      }

      HIBYTE(usedBufLenj) = a16;
      BYTE6(usedBufLenj) = a15;
      BYTE5(usedBufLenj) = v27;
      BYTE4(usedBufLenj) = 1;
      BYTE3(usedBufLenj) = a12;
      BYTE2(usedBufLenj) = a11;
      BYTE1(usedBufLenj) = a10;
      LOBYTE(usedBufLenj) = a9;
      v130 = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 + 3 languageObject:a4 - 3 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLenj checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
      goto LABEL_372;
    }

    if ((v124 & v273) == 1)
    {
      v152 = [(AppleSpell *)self numberOfTurkishSuffixPointsInBuffer:a3 length:a4 maxSuffixPoints:36 suffixPoints:buffer];
      if (v152)
      {
        v153 = v30;
      }

      else
      {
        v153 = 1;
      }

      if (v153)
      {
        goto LABEL_534;
      }

      v154 = v152;
      v155 = a17 + 1;
      p_length = &buffer[0].length;
      v157 = 1;
      while (1)
      {
        v30 = *(p_length - 1);
        if (v30 >= a4)
        {
          goto LABEL_450;
        }

        v158 = *p_length;
        if (*p_length == 2)
        {
          if (a12)
          {
            v162 = [(AppleSpell *)self checkNameWordBuffer:a3 length:*(p_length - 1) languageObject:a5 globalOnly:1];
            goto LABEL_439;
          }

          goto LABEL_450;
        }

        if (v158 == 1)
        {
          v162 = [(AppleSpell *)self checkWordBuffer:a3 length:*(p_length - 1) languageObject:a5 index:6];
LABEL_439:
          LOBYTE(v30) = v162;
          goto LABEL_451;
        }

        if (v158)
        {
          goto LABEL_450;
        }

        HIBYTE(usedBufLenk) = a16;
        BYTE6(usedBufLenk) = a15;
        WORD2(usedBufLenk) = 0;
        BYTE3(usedBufLenk) = a12;
        BYTE2(usedBufLenk) = a11;
        BYTE1(usedBufLenk) = a10;
        LOBYTE(usedBufLenk) = a9;
        if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:v30 connection:a5 sender:a6 checkBase:a7 checkDict:0 checkTemp:usedBufLenk checkUser:v155 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
        {
          if (v30 == 3)
          {
            if (!strncasecmp_l(a3, "her", 3uLL, 0))
            {
              goto LABEL_450;
            }
          }

          else
          {
            if (v30 == 2)
            {
              v159 = a3;
              v160 = "am";
              v161 = 2;
LABEL_449:
              if (strncasecmp_l(v159, v160, v161, 0))
              {
LABEL_735:
                LOBYTE(v30) = 1;
                goto LABEL_534;
              }

LABEL_450:
              LOBYTE(v30) = 0;
              goto LABEL_451;
            }

            if (v30 < 3)
            {
              goto LABEL_735;
            }
          }

          v159 = a3;
          v160 = "sik";
          v161 = 3;
          goto LABEL_449;
        }

        if (v30 < 2)
        {
          goto LABEL_450;
        }

        v283 = v155;
        v163 = &a3[v30];
        if (!isVowelTurkish(a3[v30]))
        {
          LOBYTE(v30) = 0;
LABEL_462:
          v155 = v283;
          goto LABEL_451;
        }

        v285 = v29;
        v164 = *(v163 - 1);
        if ((v164 & 0xFFFFFFDF) == 0x43)
        {
          v165 = v164 | 0x84;
        }

        else
        {
          if ((v164 & 0xFFFFFFDF) == 0x42)
          {
            v165 = v164 + 14;
            goto LABEL_463;
          }

          if ((v164 & 0xDF) == 0x44)
          {
            v165 = v164 | 0xA;
          }

          else
          {
            v165 = *(v163 - 1);
          }
        }

        if (v164 == v165)
        {
          LOBYTE(v30) = 0;
          v28 = v269;
          v29 = v285;
          goto LABEL_462;
        }

LABEL_463:
        *(v163 - 1) = v165;
        HIBYTE(usedBufLenl) = a16;
        BYTE6(usedBufLenl) = a15;
        WORD2(usedBufLenl) = 0;
        BYTE3(usedBufLenl) = a12;
        BYTE2(usedBufLenl) = a11;
        BYTE1(usedBufLenl) = a10;
        LOBYTE(usedBufLenl) = a9;
        LOBYTE(v30) = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:v30 connection:a5 sender:a6 checkBase:a7 checkDict:0 checkTemp:usedBufLenl checkUser:v283 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
        *(v163 - 1) = v164;
        v155 = v283;
        v28 = v269;
        v29 = v285;
LABEL_451:
        if ((v30 & 1) == 0)
        {
          p_length += 2;
          v43 = v157++ >= v154;
          if (!v43)
          {
            continue;
          }
        }

        goto LABEL_534;
      }
    }

    v26 = encoding;
    if (((v124 ^ 1 | v79) & 1) == 0)
    {
      v187 = &_acceptWithoutAccentForString_range_inString_languageObject__onceToken;
      if (!validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__koreanTokenizer)
      {
        v188 = CFLocaleCreate(0, @"ko");
        v297.location = 0;
        v297.length = 0;
        validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__koreanTokenizer = CFStringTokenizerCreate(0, &stru_1F4E0A7A0, v297, 0, v188);
        v189 = v188;
        v26 = encoding;
        CFRelease(v189);
      }

      v190 = v287;
      if (!v287)
      {
        v190 = CFStringCreateWithBytes(0, a3, a4, v26, 0);
      }

      v191 = validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__koreanTokenizer;
      v298.length = [(__CFString *)v190 length];
      v298.location = 0;
      CFStringTokenizerSetString(v191, v190, v298);
      v287 = v190;
      if (v190 && (v192 = CFStringTokenizerAdvanceToNextToken(validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__koreanTokenizer)) != 0)
      {
        v193 = v192;
        while (1)
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__koreanTokenizer);
          v292 = 0;
          if ((v193 & 6) == 0)
          {
            break;
          }

          if (CurrentTokenRange.length < 2)
          {
            break;
          }

          CurrentSubTokens = CFStringTokenizerGetCurrentSubTokens(validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__koreanTokenizer, buffer, 64, 0);
          if (!CurrentSubTokens)
          {
            break;
          }

          v196 = CurrentSubTokens;
          if (CurrentSubTokens >= 1)
          {
            goto LABEL_558;
          }

LABEL_583:
          Token = CFStringTokenizerAdvanceToNextToken(validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__koreanTokenizer);
          v193 = Token;
          if (!Token)
          {
            LOBYTE(v30) = 1;
            v26 = encoding;
            v28 = v269;
            v27 = a14;
            goto LABEL_737;
          }
        }

        buffer[0] = CurrentTokenRange;
        v196 = 1;
LABEL_558:
        v197 = &buffer[0].length;
        v198 = 1;
        do
        {
          v199 = *v197;
          if (*v197 < 1)
          {
            goto LABEL_578;
          }

          v200 = *(v197 - 1);
          v201 = v199 + v200;
          if (v199 + v200 > [(__CFString *)v287 length])
          {
            goto LABEL_578;
          }

          v202 = [(__CFString *)v287 rangeOfCharacterFromSet:validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__nonDigitCharacterSet options:0 range:v200, v199];
          if (v203)
          {
            v204 = v202 > v200;
          }

          else
          {
            v204 = 0;
          }

          if (v204 && v201 >= v202)
          {
            v200 = v202;
            v199 = v201 - v202;
          }

          if (!v200 && ![(__CFString *)v287 length])
          {
            LOBYTE(v30) = 0;
            v26 = encoding;
            v28 = v269;
            v27 = a14;
            v29 = a7 != 0;
            v187 = &_acceptWithoutAccentForString_range_inString_languageObject__onceToken;
            goto LABEL_738;
          }

          if (v199 >= 1 && v200 + v199 <= [(__CFString *)v287 length]&& (v296.location = v200, v296.length = v199, v199 == CFStringGetBytes(v287, v296, encoding, 0x5Fu, 0, v294, 72, &v292)))
          {
            HIBYTE(usedBufLenp) = a16;
            BYTE6(usedBufLenp) = a15;
            v27 = a14;
            BYTE5(usedBufLenp) = a14;
            *(&usedBufLenp + 3) = a12;
            BYTE2(usedBufLenp) = a11;
            BYTE1(usedBufLenp) = a10;
            LOBYTE(usedBufLenp) = a9;
            v207 = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:v294 languageObject:v292 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLenp checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
          }

          else
          {
LABEL_578:
            v207 = 1;
            v27 = a14;
          }

          if (!v207)
          {
            break;
          }

          v197 += 2;
          v43 = v198++ >= v196;
        }

        while (!v43);
        v187 = &_acceptWithoutAccentForString_range_inString_languageObject__onceToken;
        if (v207)
        {
          goto LABEL_583;
        }

        LOBYTE(v30) = 0;
        v26 = encoding;
        v28 = v269;
LABEL_737:
        v29 = a7 != 0;
      }

      else
      {
        LOBYTE(v30) = 1;
        v26 = encoding;
        v27 = a14;
      }

LABEL_738:
      v299.location = 0;
      v299.length = 0;
      CFStringTokenizerSetString(v187[45], &stru_1F4E0A7A0, v299);
      goto LABEL_603;
    }

    if ((v124 & (v272 | v271 | v270)) != 1)
    {
      goto LABEL_603;
    }

    v167 = 0;
    while (1)
    {
      v168 = &a3[v167];
      v169 = a3[v167];
      if (v167 + 2 < a4 && v169 == 224)
      {
        v170 = v168[1] - 165 > 0xC || ((1 << (v168[1] + 91)) & 0x1011) == 0;
        if (!v170 && a3[v167 + 2] - 166 < 0xA)
        {
          v171 = 0x7FFFFFFFFFFFFFFFLL;
          v167 += 2;
          goto LABEL_489;
        }

        v169 = 224;
      }

      if ((v169 - 48) >= 0xA)
      {
        v171 = v167;
      }

      else
      {
        v171 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_489:
      ++v167;
      if (v171 != 0x7FFFFFFFFFFFFFFFLL || v167 >= a4)
      {
        v173 = 0;
        v174 = &a3[a4];
        do
        {
          if (~v173 + a4 < 2 || (v175 = &v174[-v173], v174[-v173 - 3] != 224) || (*(v175 - 2) - 165 <= 0xC ? (v176 = ((1 << (*(v175 - 2) + 91)) & 0x1011) == 0) : (v176 = 1), v176 || *(v175 - 1) - 166 > 9))
          {
            if (v174[~v173] - 48 >= 0xA)
            {
              v177 = v173;
            }

            else
            {
              v177 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v173 += 2;
            v177 = 0x7FFFFFFFFFFFFFFFLL;
          }

          ++v173;
        }

        while (v177 == 0x7FFFFFFFFFFFFFFFLL && v173 < a4);
        if (v177 + v171 < a4 && v171 != 0x7FFFFFFFFFFFFFFFLL && v177 != 0x7FFFFFFFFFFFFFFFLL && (v177 | v171) != 0)
        {
          HIBYTE(usedBufLenm) = a16;
          BYTE6(usedBufLenm) = a15;
          v27 = a14;
          BYTE5(usedBufLenm) = a14;
          BYTE4(usedBufLenm) = 1;
          BYTE3(usedBufLenm) = a12;
          BYTE2(usedBufLenm) = a11;
          BYTE1(usedBufLenm) = a10;
          LOBYTE(usedBufLenm) = a9;
          LOBYTE(v30) = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:&a3[v171] languageObject:a4 - v171 - v177 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLenm checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
          v26 = encoding;
          v28 = v269;
          goto LABEL_603;
        }

LABEL_601:
        v26 = encoding;
        v28 = v269;
        goto LABEL_602;
      }
    }
  }

  if (a4 < 4)
  {
    goto LABEL_598;
  }

  v131 = 3;
  if (strncasecmp_l(&a3[a4 - 3], "'ed", 3uLL, 0))
  {
    v131 = 3;
    v132 = self;
    v133 = a10;
    if (strncasecmp_l(&a3[a4 - 3], "'er", 3uLL, 0) && (v131 = 3, strncasecmp_l(&a3[a4 - 3], "'ll", 3uLL, 0)) && (v131 = 3, strncasecmp_l(&a3[a4 - 3], "'ve", 3uLL, 0)))
    {
      v26 = encoding;
      if (a4 == 4)
      {
        goto LABEL_602;
      }

      v134 = strncasecmp_l(&a3[a4 - 4], "'ing", 4uLL, 0) == 0;
      v131 = 4 * v134;
    }

    else
    {
      v134 = 1;
      v26 = encoding;
    }
  }

  else
  {
    v134 = 1;
    v26 = encoding;
    v132 = self;
    v133 = a10;
  }

  if (v134 && v131 < a4)
  {
    v151 = a4 - v131;
    HIBYTE(usedBufLeni) = a16;
    BYTE6(usedBufLeni) = a15;
    v27 = a14;
    BYTE5(usedBufLeni) = a14;
    BYTE4(usedBufLeni) = 1;
    BYTE3(usedBufLeni) = a12;
    BYTE2(usedBufLeni) = a11;
    BYTE1(usedBufLeni) = v133;
    LOBYTE(usedBufLeni) = a9;
    v146 = [AppleSpell validateWordBuffer:v132 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" languageObject:a3 connection:v151 sender:a5 checkBase:a6 checkDict:a7 checkTemp:1 checkUser:usedBufLeni checkNames:a17 + 1 checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
    goto LABEL_416;
  }

LABEL_602:
  v27 = a14;
LABEL_603:
  v209 = a17 > 7 || !v27;
  if ((v30 & 1) != 0 || (v209 & 1) != 0 || (v26 & 0xFFFFFFFB) != 0x500 || !a4)
  {
    goto LABEL_681;
  }

  v210 = 0;
  v211 = 0;
  v212 = 0;
  while (2)
  {
    v213 = a3[v212];
    v214 = v213 - 216;
    if (v213 - 192 >= 0x17)
    {
      v215 = v213 <= 0xF7 && v214 >= 0x1F;
      if (v215 && (v213 & 0xFFFFFFDF) - 65 >= 0x1A && (v213 - 138 > 0x15 || ((1 << (v213 + 118)) & 0x350015) == 0))
      {
        if (v213 - 48 < 0xA || v213 - 178 <= 7 && ((1 << (v213 + 78)) & 0x83) != 0 || v213 - 188 <= 2)
        {
          v211 = 0;
          if (v210)
          {
            v222 = 0;
          }

          else
          {
            v222 = v212;
          }

          v210 = 1;
          goto LABEL_638;
        }

        goto LABEL_672;
      }
    }

    v218 = v213 - 65 >= 0x1A && v213 - 192 >= 0x17;
    if (!v218 || v214 < 7 || ((v219 = v213 - 138, v204 = v219 > 0x15, v220 = (1 << v219) & 0x200015, !v204) ? (v221 = v220 == 0) : (v221 = 1), !v221))
    {
      v210 = 0;
      if (v211)
      {
        v222 = 0;
      }

      else
      {
        v222 = v212;
      }

      v211 = 1;
      goto LABEL_638;
    }

    if (((v212 != 0) & v210) != 0)
    {
      v222 = v212;
      goto LABEL_676;
    }

    if (v212 < 3 || (v211 & 1) == 0)
    {
      if (v212 == 2 && (v211 & 1) != 0)
      {
        v223 = *a3;
        if ((v223 - 65) >= 0x1A && (v223 - 192) >= 0x17 && (v223 - 216) >= 7)
        {
          v211 = 0;
          v224 = v223 - 138;
          if (v224 > 0x15)
          {
LABEL_673:
            v222 = 1;
            v210 = 0;
            goto LABEL_638;
          }

          v225 = 1 << v224;
          v222 = 1;
          v210 = 0;
          if ((v225 & 0x200015) == 0)
          {
LABEL_638:
            if (v222)
            {
              goto LABEL_676;
            }

            if (++v212 >= a4)
            {
              goto LABEL_676;
            }

            continue;
          }
        }

        if (a4 >= 4)
        {
          v226 = 3;
          while (1)
          {
            v227 = a3[v226];
            v211 = 0;
            if ((v227 - 65) < 0x1A || (v227 - 192) < 0x17)
            {
              break;
            }

            if ((v227 - 216) < 7)
            {
              goto LABEL_673;
            }

            v229 = v227 - 138;
            v204 = v229 > 0x15;
            v230 = (1 << v229) & 0x200015;
            v231 = v204 || v230 == 0;
            v222 = 1;
            v210 = 0;
            if (v231)
            {
              v222 = 0;
              v211 = 0;
              v210 = 0;
              if (++v226 < a4)
              {
                continue;
              }
            }

            goto LABEL_638;
          }

          v210 = 0;
          v222 = 1;
          goto LABEL_638;
        }
      }

LABEL_672:
      v222 = 0;
      v211 = 0;
      v210 = 0;
      goto LABEL_638;
    }

    break;
  }

  v222 = v212 - 1;
LABEL_676:
  if (v222 && a4 > v222)
  {
    HIBYTE(usedBufLenq) = a16;
    BYTE6(usedBufLenq) = a15;
    WORD2(usedBufLenq) = a13;
    v232 = 1;
    WORD1(usedBufLenq) = a11;
    BYTE1(usedBufLenq) = a10;
    LOBYTE(usedBufLenq) = a9;
    if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:v222 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLenq checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
    {
      HIBYTE(usedBufLenr) = a16;
      BYTE6(usedBufLenr) = a15;
      BYTE5(usedBufLenr) = 1;
      BYTE4(usedBufLenr) = a13;
      WORD1(usedBufLenr) = a11;
      BYTE1(usedBufLenr) = a10;
      LOBYTE(usedBufLenr) = a9;
      if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:&a3[v222] languageObject:a4 - v222 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLenr checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
      {
        goto LABEL_683;
      }
    }

LABEL_699:
    v232 = 0;
    if (encoding == 1280)
    {
      v235 = v209;
    }

    else
    {
      v235 = 1;
    }

    if ((v235 & 1) == 0 && a4)
    {
      v236 = 0;
      v237 = 0;
      do
      {
        v238 = 0;
        if (v237 >= 3 && (v236 & 1) != 0)
        {
          if (a3[v237] != 105 || v237 + 6 > a4)
          {
            v238 = 0;
          }

          else if (!strncmp(&a3[v237], "iCloud", 6uLL))
          {
            v238 = v237;
          }

          else
          {
            v238 = 0;
          }
        }

        v240 = a3[v237];
        v241 = v240 ^ 1;
        if ((v240 + 102) > 4u)
        {
          v241 = 0;
        }

        if (v240 <= 0xF7 && v240 - 97 >= 0x1A && v240 - 223 >= 0x18)
        {
          v236 = v241;
        }

        else
        {
          v236 = 1;
        }

        if (v238)
        {
          break;
        }

        ++v237;
      }

      while (v237 < a4);
      v232 = 0;
      if (v238)
      {
        if (a4 > v238)
        {
          HIBYTE(usedBufLens) = a16;
          BYTE6(usedBufLens) = a15;
          WORD2(usedBufLens) = a13;
          WORD1(usedBufLens) = a11;
          BYTE1(usedBufLens) = a10;
          LOBYTE(usedBufLens) = a9;
          if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:a3 languageObject:v238 connection:usedBufLens sender:a17 + 1 checkBase:? checkDict:? checkTemp:? checkUser:? checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?])
          {
            HIBYTE(usedBufLent) = a16;
            BYTE6(usedBufLent) = a15;
            BYTE5(usedBufLent) = 1;
            BYTE4(usedBufLent) = a13;
            WORD1(usedBufLent) = a11;
            BYTE1(usedBufLent) = a10;
            LOBYTE(usedBufLent) = a9;
            v232 = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:forCorrection:depth:" length:&a3[v238] languageObject:a4 - v238 connection:a5 sender:a6 checkBase:a7 checkDict:1 checkTemp:usedBufLent checkUser:a17 + 1 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? forCorrection:? depth:?];
            goto LABEL_683;
          }

LABEL_733:
          v232 = 0;
        }
      }
    }

    goto LABEL_734;
  }

LABEL_681:
  if ((v30 & 1) == 0)
  {
    goto LABEL_699;
  }

  v232 = 1;
LABEL_683:
  if (!(v286 & 1 | ((v232 & 1) == 0)))
  {
    v233 = [(AppleSpell *)self checkWordBuffer:a3 length:a4 languageObject:a5 index:1];
    v232 = !v233;
    if (!v233 && encoding == 1280 && (!strncmp(a3, "imac", 4uLL) || !strncmp(a3, "ipod", 4uLL) || !strncmp(a3, "ipad", 4uLL) || !strncmp(a3, "ibook", 5uLL) || !strncmp(a3, "iphone", 6uLL) || !strncmp(a3, "itunes", 6uLL) || !strncmp(a3, "icloud", 6uLL)))
    {
      v232 = 0;
    }

    if (((v28 | !v29) & 1) == 0 && (v232 & 1) == 0)
    {
      v234 = v287;
      if (!v287)
      {
        v234 = CFStringCreateWithBytes(0, a3, a4, encoding, 0);
        if (!v234)
        {
          goto LABEL_733;
        }
      }

      v232 = [a7 isWordInUserDictionaries:v234 caseSensitive:0];
    }
  }

LABEL_734:
  v244 = *MEMORY[0x1E69E9840];
  return v232;
}

id __195__AppleSpell_Spelling__validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "punctuationCharacterSet")}];
  [v0 invert];
  validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__nonDigitOrPunctuationCharacterSet = [v0 copy];
  validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__nonDigitCharacterSet = [objc_msgSend(MEMORY[0x1E696AB08] "decimalDigitCharacterSet")];
  result = [objc_msgSend(MEMORY[0x1E696AB08] "punctuationCharacterSet")];
  validateWordBuffer_length_languageObject_connection_sender_checkBase_checkDict_checkTemp_checkUser_checkNames_checkHyphens_checkIntercaps_checkOptions_forCorrection_depth__nonPunctuationCharacterSet = result;
  return result;
}

- (id)_orthographyByModifyingOrthography:(id)a3 withLatinLanguage:(id)a4
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a3, "languageMap")}];
  [v6 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", a4), @"Latn"}];
  v7 = MEMORY[0x1E696ADE0];
  v8 = [a3 dominantScript];

  return [v7 orthographyWithDominantScript:v8 languageMap:v6];
}

- (id)normalizedStringInString:(id)a3 range:(_NSRange)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a3 substringWithRange:{a4.location, a4.length}];
  if (normalizedStringInString_range__onceToken != -1)
  {
    [AppleSpell(Spelling) normalizedStringInString:range:];
  }

  [v4 rangeOfCharacterFromSet:normalizedStringInString_range__allSet];
  if (v5)
  {
    v4 = [MEMORY[0x1E696AD60] stringWithString:v4];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = normalizedStringInString_range__sets;
    v7 = [normalizedStringInString_range__sets countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [normalizedStringInString_range__sets objectForKey:v11];
          if ([v4 length])
          {
            v13 = 0;
            do
            {
              v14 = [v4 rangeOfCharacterFromSet:v12 options:0 range:{v13, objc_msgSend(v4, "length") - v13}];
              if (!v15)
              {
                break;
              }

              v16 = v14;
              [v4 replaceCharactersInRange:v14 withString:{v15, v11}];
              v13 = [v11 length] + v16;
            }

            while (v13 < [v4 length]);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

id __55__AppleSpell_Spelling__normalizedStringInString_range___block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"            ";
  v5[1] = @"‘’‚‛′";
  v5[2] = @"“”„‟″";
  v5[3] = @"·․‧";
  v5[4] = @"‐‑‒–—";
  v0 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:{5), "componentsJoinedByString:", &stru_1F4E0A7A0}];
  v4[0] = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"            ", @" "}];
  v3[1] = @"'";
  v4[1] = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"‘’‚‛′"];
  v3[2] = @"";
  v4[2] = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"“”„‟″"];
  v3[3] = @".";
  v4[3] = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"·․‧"];
  v3[4] = @"-";
  v4[4] = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"‐‑‒–—"];
  normalizedStringInString_range__sets = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v0];
  normalizedStringInString_range__allSet = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (_NSRange)spellServer:(id)a3 findMisspelledWordInString:(id)a4 range:(_NSRange)a5 languages:(id)a6 topLanguages:(id)a7 orthography:(id)a8 checkOrthography:(BOOL)a9 mutableResults:(id)a10 offset:(unint64_t)a11 autocorrect:(BOOL)a12 onlyAtInsertionPoint:(BOOL)a13 initialCapitalize:(BOOL)a14 autocapitalize:(BOOL)a15 keyEventArray:(id)a16 appIdentifier:(id)a17 selectedRangeValue:(id)a18 parameterBundles:(id)a19 wordCount:(int64_t *)a20 countOnly:(BOOL)a21 appendCorrectionLanguage:(BOOL)a22 correction:(id *)a23
{
  length = a5.length;
  v313[0] = a5.location;
  v345[9] = *MEMORY[0x1E69E9840];
  v275 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v310 = [a4 length];
  v28 = [a6 count];
  v271 = [a7 count];
  v336 = 0;
  v309 = v28;
  if (v28)
  {
    v29 = [a6 objectAtIndex:0];
  }

  else
  {
    v29 = @"en";
  }

  v30 = [PRLanguage languageObjectWithIdentifier:v29];
  encoding = [v30 encoding];
  numBytes = 0;
  v334 = 0;
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  v328 = 0u;
  v329 = 0u;
  v326 = 0u;
  v327 = 0u;
  v324 = 0u;
  v325 = 0u;
  *v323 = 0u;
  memset(&v339[22], 0, 40);
  memset(&v339[16], 0, 40);
  range1 = length;
  v266 = v29;
  if ([a17 isEqualToString:@"com.apple.mail"] & 1) != 0 || (objc_msgSend(a17, "isEqualToString:", @"com.apple.Pages") & 1) != 0 || (objc_msgSend(a17, "isEqualToString:", @"com.apple.Numbers") & 1) != 0 || (objc_msgSend(a17, "isEqualToString:", @"com.apple.Keynote"))
  {
    LOBYTE(v265) = 0;
  }

  else
  {
    v265 = [a17 hasPrefix:@"com.apple.iWork"] ^ 1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __329__AppleSpell_Spelling__spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction___block_invoke;
  block[3] = &unk_1E8405150;
  block[4] = self;
  if (spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__onceToken != -1)
  {
    dispatch_once(&spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__onceToken, block);
  }

  v305 = 0;
  v350.val[0] = vdupq_n_s64(v313[0]);
  v350.val[1] = 0uLL;
  v31 = &v340;
  vst2q_f64(v31, v350);
  v31 += 4;
  vst2q_f64(v31, v350);
  v32 = 24;
  if (encoding == 134217984)
  {
    v32 = 48;
  }

  maxBufLen = v32;
  v308 = a10 != 0;
  if (v309 >= 2 && a9 && a10)
  {
    v305 = [objc_msgSend(MEMORY[0x1E695DF88] dataWithLength:{8 * v309 + 8), "mutableBytes"}];
  }

  v294 = v30;
  if (a21)
  {
    v295 = 0;
    v272 = 0;
    v270 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v295 = [(AppleSpell *)self databaseConnectionForLanguageObject:v30];
    v35 = [-[AppleSpell localDictionaryArrayForLanguageObject:](self localDictionaryArrayForLanguageObject:{v30), "count"}];
    v36 = v30;
    v33 = v35 != 0;
    v37 = [(AppleSpell *)self taggerForLanguageObject:v36 string:a4 range:v313[0], length];
    v34 = v37;
    if (a12 && v37)
    {
      v38 = v37;
      [(AppleSpell *)self useWordLanguageModelForLanguageObject:v294 tagger:v37 appIdentifier:a17];
      v34 = v38;
    }

    if (a10)
    {
      v280 = 0;
      if (v309 > 1)
      {
        v270 = 0;
        v272 = 0;
      }

      else
      {
        v270 = 0;
        v272 = 0;
        if (a12)
        {
          v281 = v34;
          if ([a7 count] && (v272 = objc_msgSend(a7, "firstObject"), v39 = +[PRLanguage languageObjectWithIdentifier:](PRLanguage, "languageObjectWithIdentifier:"), (objc_msgSend(v39, "isEqual:", v294) & 1) == 0) && (v40 = -[AppleSpell taggerForLanguageObject:string:range:](self, "taggerForLanguageObject:string:range:", v39, a4, v313[0], length)) != 0)
          {
            v270 = v39;
            v280 = v40;
            [AppleSpell useWordLanguageModelForLanguageObject:"useWordLanguageModelForLanguageObject:tagger:appIdentifier:" tagger:v39 appIdentifier:?];
          }

          else
          {
            v280 = 0;
            v270 = 0;
            v272 = 0;
          }

          v34 = v281;
        }
      }

      v279 = 0;
      v308 = 1;
      if (a18 && !a13)
      {
        BYTE2(usedBufLen) = a15;
        BYTE1(usedBufLen) = a14;
        LOBYTE(usedBufLen) = a12;
        v253 = v34;
        v254 = [PRTypologyRecord openTypologyRecordWithString:a4 range:v313[0] languageObject:length languages:v294 topLanguages:a6 autocorrect:a7 initialCapitalize:usedBufLen autocapitalize:a16 keyEventArray:a17 appIdentifier:a18 selectedRangeValue:?];
        v34 = v253;
        v279 = v254;
        v308 = 1;
      }

      goto LABEL_31;
    }

    v272 = 0;
    v270 = 0;
  }

  v279 = 0;
  v280 = 0;
LABEL_31:
  v292 = 0;
  v282 = v34;
  v41.location = 0x7FFFFFFFFFFFFFFFLL;
  v42 = -1;
  v297 = self;
  v283 = a6;
  if (!a4 || !v310 || !length)
  {
    range2 = 0;
    v300 = 0;
    v276 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_552;
  }

  *&v331 = a4;
  *(&v332 + 1) = v313[0];
  *&v333 = length;
  *(&v331 + 1) = CFStringGetCharactersPtr(a4);
  v264 = a7;
  if (*(&v331 + 1))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a4, 0x600u);
  }

  v300 = 0;
  v44 = 0;
  v292 = 0;
  range2 = 0;
  v42 = 0;
  v263 = 0;
  v273 = 0;
  v45 = 0;
  v299 = 0;
  v46 = encoding != -1 && v33;
  v274 = v46;
  v47 = 1;
  if (v309 + 1 > 1)
  {
    v47 = v309 + 1;
  }

  v267 = 8 * v47;
  v334 = 0;
  *&v332 = CStringPtr;
  *(&v333 + 1) = 0;
  v276 = 0x7FFFFFFFFFFFFFFFLL;
  v48 = v313[0];
  v49 = v313[0];
  v41.location = 0x7FFFFFFFFFFFFFFFLL;
  theString = a4;
  do
  {
    location = v41.location;
    v51 = simpleTokenRangeAfterIndex(v323, v313[0], range1, v48 + v45);
    if (v52 < 1)
    {
      v41.location = location;
      break;
    }

    v48 = v51;
    v53 = v52;
    v54 = v51 - 1;
    if (v51 < 1)
    {
      v57 = 0;
    }

    else
    {
      v55 = [a4 characterAtIndex:v54];
      v56 = (v55 - 39) > 0x38 || ((1 << (v55 - 39)) & 0x1000000020000C1) == 0;
      if (!v56 || (v57 = 0, (v55 - 8208) <= 9) && ((1 << (v55 - 16)) & 0x203) != 0)
      {
        ++v53;
        v57 = 1;
        v48 = v54;
      }
    }

    v306 = v42;
    do
    {
      v45 = v53;
      v58 = v53 + v48;
      if (v58 >= v310 || ((v59 = [(__CFString *)theString characterAtIndex:v58], v60 = v59, v61 = v59 - 39, (v59 - 39) > 0x39) || ((1 << v61) & 0x3000000021800E1) == 0) && ((v59 - 8208) > 9 || ((1 << (v59 - 16)) & 0x203) == 0) && v59 != 180)
      {
        v64 = 0;
        v41.location = location;
        goto LABEL_71;
      }

      v62 = simpleTokenRangeAfterIndex(v323, v313[0], range1, v58);
      if (v63 < 1)
      {
        break;
      }

      if (v62 != v58 + 1)
      {
        break;
      }

      v53 = v62 + v63 - v48;
    }

    while (v62 + v63 <= v48 + maxBufLen);
    v41.location = location;
    if (v61 <= 0x38 && ((1 << v61) & 0x1000000020000C1) != 0 || (v64 = 0, (v60 - 8208) <= 9) && ((1 << (v60 - 16)) & 0x203) != 0)
    {
      ++v45;
      v64 = 1;
    }

LABEL_71:
    if (a21)
    {
      v65 = v44;
      v66 = v49;
      a4 = theString;
      v67 = v306;
      goto LABEL_125;
    }

    v68 = v57 & (v45 > 1);
    v69 = v45 - v68;
    v290 = v57 & (v45 > 1);
    v70 = v48 + v68;
    if (v45 - v68 > 1)
    {
      v71 = v64;
    }

    else
    {
      v71 = 0;
    }

    if (v71 == 1)
    {
      v72 = v69 - (v70 + v69 == v45 + v48);
    }

    else
    {
      v72 = v69;
    }

    v304 = v72;
    v288 = v64;
    if (v308)
    {
      a4 = theString;
      if (v48 < v41.location || v48 - v41.location >= range2)
      {
        if (v305)
        {
          v346.location = v313[0];
          v346.length = range1;
          v41.length = range2;
          v73 = NSIntersectionRange(v346, v41);
          if (v73.length && v305[v309] && v309)
          {
            v284 = v69;
            for (i = 0; i < v309; ++i)
            {
              v75 = v305[i];
              if (v75 >= 2 && v305[v309] <= 2 * v75)
              {
                v76 = [v283 objectAtIndex:i];
                if (v76)
                {
                  break;
                }
              }

              else
              {
                v76 = 0;
              }
            }

            v69 = v284;
            if (v76)
            {
              v77 = [(AppleSpell *)v297 _orthographyByModifyingOrthography:a8 withLatinLanguage:?];
              v78 = [objc_alloc(MEMORY[0x1E696ADE8]) initWithRange:v73.location + a11 orthography:{v73.length, v77}];
              [a10 addObject:v78];

              v69 = v284;
            }
          }

          bzero(v305, v267);
          a4 = theString;
        }

        v79 = [a4 paragraphRangeForRange:{v48, v45}];
        v41.location = v79;
        range2 = v80;
        if (v49 < v79)
        {
          v44 = 0;
        }

        v81 = &v340;
        v82 = 4;
        do
        {
          if (*v81 < v79)
          {
            *v81 = v79;
            v81[1] = 0;
          }

          v81 += 2;
          --v82;
        }

        while (v82);
        if (v49 <= v79)
        {
          v49 = v79;
        }
      }
    }

    else
    {
      a4 = theString;
    }

    if (v305)
    {
      ++v305[v309];
    }

    v298 = v41.location;
    if (!v308 || !a14 || v299 || (v83 = v49 + v44, v70 < v49 + v44))
    {
LABEL_109:
      v84 = 0;
      goto LABEL_110;
    }

    v91 = v41.location;
    if (v83 == v41.location)
    {
LABEL_121:
      v84 = treatWordAsSentenceInitial(a4, v91, v70, v304, v294);
      v41.location = v298;
      goto LABEL_110;
    }

    if (v70 == v83)
    {
      goto LABEL_109;
    }

    v91 = [a4 rangeOfCharacterFromSet:spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__terminatorCharacterSet options:0 range:?];
    v84 = 0;
    if (v91 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_342;
    }

    v41.location = v298;
    if (!v112)
    {
      goto LABEL_110;
    }

    if (v70 <= v91 + v112)
    {
      goto LABEL_109;
    }

    v114 = [a4 rangeOfCharacterFromSet:spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__nonPunctuationCharacterSet options:0 range:{v91 + v112, v70 - (v91 + v112)}];
    v84 = 0;
    if (v114 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_342:
      v41.location = v298;
    }

    else
    {
      v41.location = v298;
      if (v113)
      {
        v286 = v69;
        v115 = spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__whitespaceCharacterSet;
        v116 = [a4 characterAtIndex:v114];
        v117 = v115;
        v69 = v286;
        v84 = [v117 characterIsMember:v116];
        v41.location = v298;
        if (v84)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_110:
    v302 = v70;
    v85 = v342;
    v86 = v341;
    v341 = v340;
    v342 = v86;
    v343 = v85;
    *&v340 = v49;
    *(&v340 + 1) = v44;
    if (v295)
    {
      v87 = encoding;
      if (encoding == -1)
      {
        v299 = 0;
LABEL_123:
        v67 = v306;
        goto LABEL_124;
      }
    }

    else
    {
      v87 = encoding;
      if (!v274)
      {
        v299 = 0;
        v295 = 0;
        goto LABEL_123;
      }
    }

    v287 = v84;
    v285 = v69;
    v88 = [(AppleSpell *)v297 normalizedStringInString:a4 range:v48, v45];
    v89 = [(__CFString *)v88 length];
    v348.length = [(__CFString *)v88 length];
    v348.location = 0;
    if (v89 != CFStringGetBytes(v88, v348, v87, 0x5Fu, 0, buffer, maxBufLen, &numBytes))
    {
      v299 = 0;
      v67 = v306;
      v41.location = v298;
LABEL_124:
      v66 = v302;
      v65 = v304;
      goto LABEL_125;
    }

    v65 = v304;
    if (v87 > 1279)
    {
      if (v87 != 1280 && v87 != 1284)
      {
        goto LABEL_219;
      }

LABEL_131:
      v93 = numBytes;
      if (!numBytes)
      {
        v95 = 0;
        goto LABEL_234;
      }

      v94 = 0;
      v95 = 0;
      v90 = -1;
      v96 = v345;
      while (1)
      {
        v97 = v94;
        v98 = buffer[v94];
        if ((v98 & 0xFC) == 0x28 || ((v99 = buffer[v94], v98 - 35 <= 0x3B) ? (v100 = ((1 << (v98 - 35)) & 0xF0000003E00000FLL) == 0) : (v100 = 1), !v100 || ((v99 - 123) <= 0x25 ? (v101 = ((1 << (v99 - 123)) & 0x201000041FLL) == 0) : (v101 = 1), v101 ? (v102 = v99 == 0) : (v102 = 1), v102)))
        {
          v98 = 32;
          buffer[v97] = 32;
        }

        if ((v87 | 4) == 0x504)
        {
          break;
        }

        if (v87 == 514)
        {
          if (v98 > 0xF7u || v98 - 216 < 0x1F || v98 - 192 < 0x17 || (v98 & 0xDFu) - 65 < 0x1A)
          {
            goto LABEL_169;
          }

          if (v98 - 161 <= 0x1E)
          {
            v104 = 1 << (v98 + 95);
            v105 = 1865772853;
            goto LABEL_168;
          }
        }

        else
        {
          if (v87 != 517)
          {
            goto LABEL_169;
          }

          if (v98 <= 0x2Fu && ((1 << v98) & 0xE00400000000) != 0)
          {
            v98 = 32;
            buffer[v97] = 32;
          }

          if (v98 - 174 < 0x42 || v98 - 161 < 0xC || (v98 & 0xDFu) - 65 < 0x1A)
          {
LABEL_169:
            v95 = 1;
            goto LABEL_170;
          }

          v111 = (~v98 & 0xFE) == 0 || v98 - 241 < 0xC;
          v95 |= v111;
        }

LABEL_170:
        if (v98 == 33 || v98 == 63)
        {
          v98 = 46;
          buffer[v97] = 46;
          v106 = v97 + 2;
          if (v97 + 2 < v93)
          {
            goto LABEL_176;
          }
        }

        else
        {
          v106 = v97 + 2;
          if (v97 + 2 < v93 && v98 == 46)
          {
LABEL_176:
            if (buffer[v97 + 1] == 46 && buffer[v106] == 46)
            {
              v98 = 32;
              buffer[v106] = 32;
              buffer[v97 + 1] = 32;
              buffer[v97] = 32;
            }

            else
            {
              v98 = 46;
            }
          }
        }

        v94 = v97 + 1;
        if (v97 + 1 < v93 && v98 <= 0x2Eu && ((1 << v98) & 0x700200000000) != 0 && (v107 = buffer[v94], v107 <= 0x3F) && ((1 << v107) & 0x8000700200000000) != 0)
        {
          buffer[v94] = 32;
          buffer[v97] = 32;
        }

        else if (v87 == 1280 && v98 == 173)
        {
          if (v94 < v93)
          {
            v108 = v93 + v90;
            v109 = v96;
            do
            {
              *(v109 - 1) = *v109;
              ++v109;
              --v108;
            }

            while (v108);
          }

          numBytes = --v93;
        }

        --v90;
        v96 = (v96 + 1);
        if (v94 >= v93)
        {
          goto LABEL_220;
        }
      }

      v103 = v98 - 130;
      if (v103 <= 0x39)
      {
        if (((1 << (v98 + 126)) & 0x2018205) != 0)
        {
          v98 = 39;
        }

        else if (((1 << (v98 + 126)) & 0x200020000060000) != 0)
        {
          v98 = 34;
        }

        else
        {
          if (v103 != 20)
          {
            goto LABEL_162;
          }

          v98 = 45;
        }

        buffer[v97] = v98;
      }

LABEL_162:
      if (v98 > 0xF7u || v98 - 216 < 0x1F || v98 - 192 < 0x17 || (v98 & 0xDFu) - 65 < 0x1A)
      {
        goto LABEL_169;
      }

      if (v98 - 138 <= 0x15)
      {
        v104 = 1 << (v98 + 118);
        v105 = 3473429;
LABEL_168:
        if ((v104 & v105) != 0)
        {
          goto LABEL_169;
        }

        goto LABEL_170;
      }

      goto LABEL_170;
    }

    if (v87 == 514 || v87 == 517)
    {
      goto LABEL_131;
    }

LABEL_219:
    v95 = 0;
    v93 = numBytes;
LABEL_220:
    if (v93)
    {
      v90 = 0;
      do
      {
        v118 = buffer[v90];
        v120 = (v118 & 0x80u) == 0 && v118 != 95;
        ++v90;
      }

      while (v120 && v90 < v93);
      goto LABEL_235;
    }

LABEL_234:
    v120 = 1;
LABEL_235:
    v268 = v95;
    buffer[v93] = 0;
    if (!v308)
    {
      v299 = 0;
      v126 = 0;
      v127 = !a12;
      v128 = v127 || !v308;
      goto LABEL_255;
    }

    v122 = *&v339[24];
    *&v339[23] = *&v339[22];
    *&v339[25] = v122;
    v123 = *&v339[18];
    *&v339[17] = *&v339[16];
    *&v339[19] = v123;
    v339[16] = 0;
    v339[22] = 0;
    v124 = v339[23];
    v125 = v294;
    v299 = v308 && a14 && [AppleSpell checkNoCapAbbreviationWordBuffer:v297 length:"checkNoCapAbbreviationWordBuffer:length:languageObject:" languageObject:buffer];
    v41.location = v298;
    v273 += v124;
    if (!a12)
    {
      v126 = 0;
      v127 = 1;
      v128 = !v308 | 1;
      goto LABEL_255;
    }

    if (a15)
    {
      v126 = 0;
      v129 = 0;
      v130 = v45 + v48;
      v131 = 4;
LABEL_243:
      v132 = &v339[2 * v131 + 25];
      v133 = 1 - v131;
      if (v129)
      {
        goto LABEL_123;
      }

      while (v133 != 1)
      {
        v134 = v340;
        if (!v133 || (v134 = *v132, *v132 != *(v132 - 2)))
        {
          if (v134 < v48)
          {
            if (v130 - v134 > 1)
            {
              v135 = v288;
            }

            else
            {
              v135 = 0;
            }

            LOBYTE(v259) = a13;
            v136 = -[AppleSpell _phraseCapitalizationResultForString:range:currentWordRange:inString:offset:languageObject:onlyAtInsertionPoint:keyEventArray:selectedRangeValue:](v297, "_phraseCapitalizationResultForString:range:currentWordRange:inString:offset:languageObject:onlyAtInsertionPoint:keyEventArray:selectedRangeValue:", [a4 substringWithRange:{v134, v130 - v134 - v135}], v134, v90 - v135, v302, v304, a4, a11, v294, v259, a16, a18);
            v41.location = v298;
            v126 = 0;
            v129 = v136 != 0;
            v131 = -v133;
            if (v136)
            {
              v137 = v136;
              [a10 addObject:v136];
              v41.location = v298;
              v126 = v137;
            }

            goto LABEL_243;
          }
        }

        v132 -= 2;
        ++v133;
      }

      v125 = v294;
      v65 = v304;
    }

    else
    {
      v126 = 0;
    }

    if (!a12 || !v308)
    {
      LODWORD(v146) = !v308;
      v127 = !a12;
      goto LABEL_284;
    }

    if (![v125 isEnglish])
    {
      v127 = 0;
      v128 = 0;
LABEL_255:
      if (((v128 | !a15) & 1) == 0)
      {
        v138 = [(AppleSpell *)v297 capitalizationDictionaryArrayForLanguageObject:v294];
        if (!v138)
        {
          LODWORD(v146) = !v308;
LABEL_275:
          v65 = v304;
          goto LABEL_284;
        }

        v139 = v138;
        v140 = [a4 substringWithRange:{v302, v304}];
        [v140 rangeOfString:@"’"];
        if (v141)
        {
          v140 = [v140 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
        }

        v320 = 0u;
        v321 = 0u;
        v318 = 0u;
        v319 = 0u;
        v142 = [v139 countByEnumeratingWithState:&v318 objects:v339 count:16];
        v143 = v292;
        if (v142)
        {
          v144 = *v319;
LABEL_261:
          v145 = 0;
          while (1)
          {
            if (*v319 != v144)
            {
              objc_enumerationMutation(v139);
            }

            v143 = [*(*(&v318 + 1) + 8 * v145) objectForKey:v140];
            if (v143)
            {
              break;
            }

            if (v142 == ++v145)
            {
              v142 = [v139 countByEnumeratingWithState:&v318 objects:v339 count:16];
              if (v142)
              {
                goto LABEL_261;
              }

              v292 = 0;
              LODWORD(v146) = !v308;
              a4 = theString;
              goto LABEL_275;
            }
          }
        }

        v65 = v304;
        if (v143)
        {
          v147 = v304 == 1;
        }

        else
        {
          v147 = 0;
        }

        v292 = v143;
        if (v147)
        {
          v148 = v302 + 1;
          a4 = theString;
          if (v302 + 1 < v310 && ([(__CFString *)theString characterAtIndex:v302 + 1]== 46 || [(__CFString *)theString characterAtIndex:v148]== 41) || v302 && v148 == v310 && [(__CFString *)theString characterAtIndex:v302 - 1]== 40)
          {
            goto LABEL_282;
          }

LABEL_273:
          v126 = [objc_alloc(MEMORY[0x1E696AB48]) initWithRange:v302 + a11 replacementString:{v304, v292}];
          [a10 addObject:v126];
        }

        else
        {
          a4 = theString;
          if (v143)
          {
            goto LABEL_273;
          }

LABEL_282:
          v292 = 0;
        }
      }

      LODWORD(v146) = !v308;
      goto LABEL_284;
    }

    for (j = 0; v65 != strlen(off_1E8407158[j]); ++j)
    {
      if (j > 0xA)
      {
        goto LABEL_376;
      }

LABEL_364:
      ;
    }

    v167 = strncasecmp_l(buffer, off_1E8407158[j], v65, 0);
    if (v167)
    {
      v168 = j > 0xA;
    }

    else
    {
      v168 = 1;
    }

    if (!v168)
    {
      goto LABEL_364;
    }

    if (v167)
    {
LABEL_376:
      v127 = 0;
      v128 = 0;
      goto LABEL_255;
    }

    v203 = [a4 substringWithRange:{v302, v65}];
    LODWORD(v261) = 0;
    a4 = theString;
    v258 = [(AppleSpell *)v297 autocorrectionDictionaryForLanguageObject:v294];
    v65 = v304;
    v204 = -[AppleSpell _correctionResultForString:range:inString:offset:tagger:appIdentifier:dictionary:languages:connection:flags:keyEventArray:selectedRangeValue:parameterBundles:previousLetter:nextLetter:extraMisspellingCount:extraCorrectionCount:](v297, "_correctionResultForString:range:inString:offset:tagger:appIdentifier:dictionary:languages:connection:flags:keyEventArray:selectedRangeValue:parameterBundles:previousLetter:nextLetter:extraMisspellingCount:extraCorrectionCount:", v203, v302, v304, theString, a11, v282, 0, v258, [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(v294, "identifier")}], 0, correctionFlags(v287, 0, a13, 0, a22), 0, 0, a19, v261, v263, &v336);
    v146 = v204;
    if (v204)
    {
      v292 = [v204 replacementString];
      [a10 addObject:v146];
      v289 = 0;
      goto LABEL_303;
    }

    v127 = 0;
    v126 = 0;
LABEL_284:
    if (v126)
    {
      v149 = 1;
    }

    else
    {
      v149 = !v308;
    }

    v289 = v146;
    if (!v127 && (v149 & 1) == 0)
    {
      if (([v294 isIrishGaelic] & 1) != 0 || (objc_msgSend(v294, "isNynorsk") & 1) != 0 || objc_msgSend(v294, "isRomanian"))
      {
        v150 = [a4 substringWithRange:{v302, v65}];
        v151 = [(AppleSpell *)v297 autocorrectionDictionaryForLanguageObject:v294];
        v152 = a4;
        if ([v294 isNynorsk])
        {
          v153 = &unk_1F4E16A58;
        }

        else
        {
          v153 = v151;
        }

        if ([v153 objectForKey:{objc_msgSend(v150, "lowercaseString")}])
        {
          LODWORD(v261) = 0;
          v154 = -[AppleSpell _correctionResultForString:range:inString:offset:tagger:appIdentifier:dictionary:languages:connection:flags:keyEventArray:selectedRangeValue:parameterBundles:previousLetter:nextLetter:extraMisspellingCount:extraCorrectionCount:](v297, "_correctionResultForString:range:inString:offset:tagger:appIdentifier:dictionary:languages:connection:flags:keyEventArray:selectedRangeValue:parameterBundles:previousLetter:nextLetter:extraMisspellingCount:extraCorrectionCount:", v150, v302, v304, v152, a11, v282, 0, v153, [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(v294, "identifier")}], 0, correctionFlags(v287, 0, a13, 0, a22), 0, 0, a19, v261, v263, &v336);
          a4 = v152;
          if (v154)
          {
            v155 = v154;
            v67 = v306;
            v66 = v302;
            v65 = v304;
            goto LABEL_349;
          }

          v127 = 0;
        }

        else
        {
          v127 = 0;
          a4 = v152;
        }

        v65 = v304;
      }

      else
      {
        v127 = 0;
      }
    }

    if ((v127 | v149))
    {
LABEL_303:
      v156 = v294;
      v67 = v306;
    }

    else
    {
      v156 = v294;
      v67 = v306;
      if (([v294 isGreek] & 1) != 0 || (objc_msgSend(v294, "isHindi") & 1) != 0 || (objc_msgSend(v294, "isIrishGaelic") & 1) != 0 || (objc_msgSend(v294, "isPunjabi") & 1) != 0 || (objc_msgSend(v294, "isPolish") & 1) != 0 || (objc_msgSend(v294, "isRomanian") & 1) != 0 || (objc_msgSend(v294, "isTelugu") & 1) != 0 || objc_msgSend(v294, "isVietnamese"))
      {
        BYTE1(usedBufLena) = v287;
        LOBYTE(usedBufLena) = a13;
        v65 = v304;
        v157 = -[AppleSpell _accentCorrectionResultForString:range:inString:offset:languageObject:onlyAtInsertionPoint:capitalize:keyEventArray:selectedRangeValue:](v297, "_accentCorrectionResultForString:range:inString:offset:languageObject:onlyAtInsertionPoint:capitalize:keyEventArray:selectedRangeValue:", [a4 substringWithRange:{v302, v304}], v302, v304, a4, a11, v294, usedBufLena, a16, a18);
        if (v157)
        {
          v155 = v157;
          v66 = v302;
          goto LABEL_349;
        }
      }
    }

    if ([v156 isGreek])
    {
      v65 = v304;
      if (-[AppleSpell _acceptWithoutAccentForString:range:inString:languageObject:](v297, "_acceptWithoutAccentForString:range:inString:languageObject:", [a4 substringWithRange:{v302, v304}], v302, v304, a4, v156))
      {
        v41.location = v298;
        v66 = v302;
        goto LABEL_125;
      }
    }

    WORD2(usedBufLena) = 257;
    LODWORD(usedBufLena) = 16843009;
    if ([AppleSpell validateWordBuffer:v297 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:buffer connection:numBytes sender:v156 checkBase:v295 checkDict:a3 checkTemp:1 checkNames:usedBufLena checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
    {
      if (v305 && (v268 & (numBytes > 1)) == 1 && ![AppleSpell validateAbbreviationOrNumberWordBuffer:v297 length:"validateAbbreviationOrNumberWordBuffer:length:languageObject:connection:sender:" languageObject:buffer connection:? sender:?]&& ![(AppleSpell *)v297 checkNameWordBuffer:buffer length:numBytes languageObject:v156 globalOnly:1])
      {
        v158 = [v283 indexOfObject:v266];
        ++v305[v158];
      }

      v159 = v285;
      if (v272)
      {
        if (encoding == [v270 encoding])
        {
          v160 = [(AppleSpell *)v297 databaseConnectionForLanguageObject:v270];
          WORD2(usedBufLenb) = 257;
          LODWORD(usedBufLenb) = 16777473;
          if ([AppleSpell validateWordBuffer:v297 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:buffer connection:numBytes sender:v270 checkBase:v160 checkDict:a3 checkTemp:1 checkNames:usedBufLenb checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
          {
            v339[16] = 1;
          }

          v41.location = v298;
          v66 = v302;
          v65 = v304;
          goto LABEL_340;
        }

        v41.location = v298;
        v66 = v302;
        v65 = v304;
      }

      else
      {
        v41.location = v298;
        v66 = v302;
      }

      goto LABEL_344;
    }

    v161 = [a4 substringWithRange:{v48, v45}];
    v162 = v161;
    if (v45 == v65)
    {
      v163 = v290;
    }

    else
    {
      v163 = 1;
    }

    if (v163 == 1)
    {
      v307 = [a4 substringWithRange:{v302, v65}];
      if (!v162)
      {
        goto LABEL_339;
      }
    }

    else
    {
      v307 = 0;
      if (!v161)
      {
LABEL_339:
        v41.location = v298;
        v66 = v302;
        goto LABEL_340;
      }
    }

    if ([a3 isWordInUserDictionaries:v162 caseSensitive:0] & 1) != 0 || v307 && ((objc_msgSend(v162, "hasPrefix:", @"@") & 1) != 0 || (objc_msgSend(a3, "isWordInUserDictionaries:caseSensitive:", v307, 0)))
    {
      goto LABEL_339;
    }

    v169 = numBytes;
    if (numBytes)
    {
      v170 = 0;
      v171 = 0;
      v172 = numBytes - 1;
      do
      {
        while (buffer[v170] == 39)
        {
          buffer[v170] = -110;
          v171 = 1;
          v56 = v172 == v170++;
          if (v56)
          {
            goto LABEL_378;
          }
        }

        ++v170;
      }

      while (v169 != v170);
      if ((v171 & 1) == 0)
      {
        goto LABEL_387;
      }

LABEL_378:
      v173 = CFStringCreateWithBytes(0, buffer, v169, encoding, 0);
      if (v173)
      {
        LOBYTE(v173) = [a3 isWordInUserDictionaries:v173 caseSensitive:0];
      }

      v174 = numBytes;
      if (numBytes)
      {
        v175 = buffer;
        do
        {
          if (*v175 == 146)
          {
            *v175 = 39;
          }

          ++v175;
          --v174;
        }

        while (v174);
      }

      if (v173)
      {
        v176 = v156;
        v66 = v302;
        goto LABEL_499;
      }
    }

LABEL_387:
    if (v309 < 2)
    {
      v177 = 0;
LABEL_389:
      if (!v177 && v271)
      {
        v178 = 0;
        while (1)
        {
          v179 = +[PRLanguage languageObjectWithIdentifier:](PRLanguage, "languageObjectWithIdentifier:", [v264 objectAtIndex:v178]);
          v180 = [v179 encoding];
          if (([v156 isEqual:v179] & 1) == 0)
          {
            v181 = [v283 containsObject:{objc_msgSend(v179, "identifier")}];
            v182 = encoding == v180 || v120;
            if (!v181 && v182 != 0)
            {
              v184 = [(AppleSpell *)v297 databaseConnectionForLanguageObject:v179];
              WORD2(usedBufLenb) = 257;
              LODWORD(usedBufLenb) = 16777473;
              if ([AppleSpell validateWordBuffer:v297 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:buffer connection:numBytes sender:v179 checkBase:v184 checkDict:a3 checkTemp:1 checkNames:usedBufLenb checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
              {
                break;
              }
            }
          }

          if (++v178 >= v271)
          {
            goto LABEL_441;
          }
        }

        a4 = theString;
        v66 = v302;
        if (!v178)
        {
          v339[16] = 1;
        }

        v176 = v156;
        goto LABEL_498;
      }

      if (v177)
      {
        v176 = v156;
        goto LABEL_497;
      }

LABEL_441:
      if ((spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__readDefault & 1) == 0)
      {
        if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
        {
          spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__autocorrectMultilingual = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
        }

        spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__readDefault = 1;
      }

      if ((v309 < 2) | spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__autocorrectMultilingual & 1)
      {
        v199 = v295;
      }

      else
      {
        v199 = 0;
      }

      if (a12)
      {
        v200 = [(AppleSpell *)v297 autocorrectionDictionaryForLanguageObject:v156];
        v201 = 0;
        v202 = 1;
        v277 = v302 != 0x7FFFFFFFFFFFFFFFLL;
        a4 = theString;
        v159 = v285;
        if (v302 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v41.location = v298;
        }

        else
        {
          v41.location = v298;
          if (v304 >= 3)
          {
            v202 = 0;
            v201 = (v200 | v199) != 0;
            v277 = 1;
          }
        }
      }

      else
      {
        v200 = 0;
        v201 = 0;
        v277 = v302 != 0x7FFFFFFFFFFFFFFFLL;
        v202 = 1;
        a4 = theString;
        v41.location = v298;
        v159 = v285;
      }

      if (a23)
      {
        *a23 = 0;
      }

      if (v308)
      {
        if (v200)
        {
          v202 = 1;
        }

        if ((v202 & 1) == 0 && !v199)
        {
          v339[22] = 1;
        }
      }

      v269 = v200;
      v291 = v162;
      if (v302)
      {
        v205 = v201;
      }

      else
      {
        v205 = 0;
      }

      if (v205)
      {
        if (!spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__precedingCharacterSet)
        {
          spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__precedingCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"~!@#$%^&*-_=+[]\\|<./?"];
        }

        [a4 rangeOfCharacterFromSet:? options:? range:?];
        v201 = v206 == 0;
        v41.location = v298;
      }

      v262 = v199;
      if (encoding == 1280 && v201 && v302 >= 4)
      {
        v207 = isUpperCase([a4 characterAtIndex:v302]);
        v41.location = v298;
        if (v207)
        {
          v208 = spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__titlesArray;
          if (!spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__titlesArray)
          {
            v208 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Mr", @"Mrs", @"Ms", @"Mme", @"Mlle", @"Sr", @"Sra", @"Srta", @"Dr", 0}];
            spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__titlesArray = v208;
          }

          v315 = 0u;
          v316 = 0u;
          *&v313[1] = 0u;
          v314 = 0u;
          v209 = v208;
          v210 = [v208 countByEnumeratingWithState:&v313[1] objects:v337 count:16];
          v41.location = v298;
          if (v210)
          {
            v211 = v210;
            v212 = *v314;
            v301 = v302 - 2;
            while (2)
            {
              for (k = 0; k != v211; ++k)
              {
                if (*v314 != v212)
                {
                  objc_enumerationMutation(v209);
                }

                v214 = *(v313[2] + 8 * k);
                v215 = [v214 length];
                if (v302 >= v215 + 2 && [(__CFString *)theString characterAtIndex:v301]== 46 && ![(__CFString *)theString compare:v214 options:0 range:v301 - v215, v215]|| v302 >= v215 + 1 && ![(__CFString *)theString compare:v214 options:0 range:v302 + ~v215, v215])
                {
                  v218 = 0;
                  v156 = v294;
                  a4 = theString;
                  v41.location = v298;
                  v159 = v285;
                  goto LABEL_508;
                }
              }

              v211 = [v209 countByEnumeratingWithState:&v313[1] objects:v337 count:16];
              v156 = v294;
              a4 = theString;
              v41.location = v298;
              v159 = v285;
              if (v211)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      if (v201)
      {
        v164 = v287;
        v216 = v291;
        if (v310 <= v304 + v302)
        {
          v218 = 1;
          v159 = v285;
        }

        else
        {
          if (!spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__followingCharacterSet)
          {
            spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__followingCharacterSet = objc_retain([MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"@#$%^&*-_=+([]\\|>/"];
          }

          [a4 rangeOfCharacterFromSet:? options:? range:?];
          v218 = v217 == 0;
          if (v217)
          {
            v41.location = v298;
            v159 = v285;
            v164 = v287;
          }

          else
          {
            v41.location = v298;
            v159 = v285;
            v164 = v287;
            if (v304 <= 3)
            {
              v219 = [a4 characterAtIndex:v304 + v302];
              v41.location = v298;
              v164 = v287;
              v218 = v219 != 46;
            }
          }
        }
      }

      else
      {
        v218 = 0;
LABEL_508:
        v164 = v287;
        v216 = v291;
      }

      if (v308 && (v339[23] ? (v221 = v218) : (v221 = 0), v221 && (4 * vaddvq_s64(vaddq_s64(*&v339[25], *&v339[23]))) > 0xB))
      {
        v339[22] = 1;
        v65 = v304;
        if (((v289 ^ 1) & v277) == 1 && v304)
        {
          v218 = 0;
LABEL_523:
          v223 = v302;
          v224 = v304;
          v225 = [objc_alloc(MEMORY[0x1E696AEB8]) initWithRange:{v302 + a11, v304}];
          [a10 addObject:v225];

          if (v218)
          {
            v226 = [MEMORY[0x1E695DF70] arrayWithObject:{objc_msgSend(v156, "identifier")}];
            if (v270)
            {
              if (*&v339[17] == 0 || ![(AppleSpell *)v297 _useAlternateLanguageForRange:v302 ofString:v304 languageObject:a4 tagger:v156 alternateLanguageObject:v282 alternateTagger:v270 appIdentifier:v280, a17])
              {
                [v226 addObject:{objc_msgSend(v270, "identifier")}];
              }

              else
              {
                [v226 insertObject:objc_msgSend(v270 atIndex:{"identifier"), 0}];
              }
            }

            if (v302 < 2)
            {
              v232 = 0;
            }

            else
            {
              v232 = [a4 characterAtIndex:v302 - 2];
            }

            v233 = a4;
            if (v304 + v302 + 2 <= v310)
            {
              v234 = [a4 characterAtIndex:v304 + v302 + 1];
            }

            else
            {
              v234 = 0;
            }

            if (v307)
            {
              v235 = v307;
            }

            else
            {
              v235 = v291;
            }

            v236 = correctionFlags(v287, a15, a13, 0, a22);
            WORD1(v261) = v234;
            LOWORD(v261) = v232;
            v237 = v235;
            v223 = v302;
            v224 = v304;
            v238 = [(AppleSpell *)v297 _correctionResultForString:v237 range:v302 inString:v304 offset:v233 tagger:a11 appIdentifier:v282 dictionary:a17 languages:v269 connection:v226 flags:v262 keyEventArray:v236 selectedRangeValue:a16 parameterBundles:a18 previousLetter:a19 nextLetter:v261 extraMisspellingCount:v263 extraCorrectionCount:&v336];
            a4 = v233;
            if (v238)
            {
              v239 = v238;
              v292 = [v238 replacementString];
              [a10 addObject:v239];
            }

            else
            {
              v339[22] = 1;
            }
          }

          v300 = v224;
          v276 = v223;
          v41.location = v298;
          v66 = v223;
          v65 = v224;
          goto LABEL_340;
        }

LABEL_533:
        v300 = v65;
        v66 = v302;
      }

      else
      {
        v65 = v304;
        if (v289 & 1 | !v218 | v265 & 1)
        {
          v222 = (v289 ^ 1) & v277;
        }

        else
        {
          v263 = vaddvq_s64(vaddq_s64(vshlq_n_s64(vaddq_s64(*&v339[23], *&v339[25]), 2uLL), v273));
          v222 = v277;
        }

        if (v222 && v304)
        {
          goto LABEL_523;
        }

        if (!v218)
        {
          goto LABEL_533;
        }

        if (v307)
        {
          v227 = v307;
        }

        else
        {
          v227 = v216;
        }

        v228 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(v156, "identifier", v41.location)}];
        v229 = correctionFlags(v287, a15, a13, 0, a22);
        LODWORD(v261) = 0;
        v260 = v228;
        v65 = v304;
        v230 = v227;
        v159 = v285;
        v66 = v302;
        v231 = [-[AppleSpell _correctionResultForString:range:inString:offset:tagger:appIdentifier:dictionary:languages:connection:flags:keyEventArray:selectedRangeValue:parameterBundles:previousLetter:nextLetter:extraMisspellingCount:extraCorrectionCount:](v297 _correctionResultForString:v230 range:v302 inString:v304 offset:a4 tagger:a11 appIdentifier:v282 dictionary:a17 languages:v269 connection:v260 flags:v262 keyEventArray:v229 selectedRangeValue:a16 parameterBundles:a18 previousLetter:a19 nextLetter:v261 extraMisspellingCount:v263 extraCorrectionCount:{&v336), "replacementString"}];
        v41.location = v298;
        v292 = v231;
        v164 = v287;
        v300 = v304;
      }

      v276 = v66;
      goto LABEL_345;
    }

    v185 = 0;
    while (2)
    {
      v186 = [v283 objectAtIndex:v185];
      v176 = [PRLanguage languageObjectWithIdentifier:v186];
      v187 = [v176 encoding];
      v188 = [v156 isEqual:v176];
      v189 = encoding == v187 || v120;
      if (v188)
      {
        v190 = 1;
      }

      else
      {
        v190 = v189 == 0;
      }

      if (v190)
      {
        if ((([v156 isEqual:v176] | v120) & 1) == 0 && (encoding == 1280 && v187 == 514 || (encoding == 1280 ? (v195 = v187 == 134217984) : (v195 = 0), !v195 ? (v196 = 0) : (v196 = 1), v187 == 1280 ? (v197 = encoding == 514) : (v197 = 0), v187 == 1280 ? (v198 = encoding == 134217984) : (v198 = 0), v197 || (v196 & 1) != 0 || v198)))
        {
          v317 = 0;
          [(AppleSpell *)v297 databaseConnectionForLanguageObject:v176];
          v349.location = v48;
          v349.length = v45;
          Bytes = CFStringGetBytes(theString, v349, v187, 0x5Fu, 0, v338, maxBufLen, &v317);
          v177 = 0;
          if (v45 == Bytes)
          {
            v338[v317] = 0;
            WORD2(usedBufLenb) = 257;
            LODWORD(usedBufLenb) = 16777473;
            v177 = [AppleSpell validateWordBuffer:v297 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:v338 connection:usedBufLenb sender:0 checkBase:? checkDict:? checkTemp:? checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?];
          }
        }

        else
        {
          v177 = 0;
        }

LABEL_416:
        if (v177)
        {
          goto LABEL_389;
        }

        if (++v185 >= v309)
        {
          goto LABEL_389;
        }

        continue;
      }

      break;
    }

    v191 = v186;
    v192 = [(AppleSpell *)v297 databaseConnectionForLanguageObject:v176];
    WORD2(usedBufLenb) = 257;
    LODWORD(usedBufLenb) = 16777473;
    if (![AppleSpell validateWordBuffer:v297 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:buffer connection:numBytes sender:v176 checkBase:v192 checkDict:a3 checkTemp:1 checkNames:usedBufLenb checkHyphens:0 checkIntercaps:? checkOptions:? depth:?])
    {
      v177 = 0;
      v156 = v294;
      goto LABEL_416;
    }

    v266 = v191;
    v295 = v192;
LABEL_497:
    a4 = theString;
    v66 = v302;
LABEL_498:
    v65 = v304;
LABEL_499:
    if (v305)
    {
      v220 = [v283 indexOfObject:{objc_msgSend(v176, "identifier")}];
      ++v305[v220];
    }

    v156 = v176;
    v41.location = v298;
LABEL_340:
    v159 = v285;
LABEL_344:
    v164 = v287;
LABEL_345:
    v294 = v156;
    if ((v308 & v164) == 1 && !v292)
    {
      LOBYTE(usedBufLenb) = a13;
      v165 = -[AppleSpell _capitalizationResultForString:range:inString:offset:languageObject:onlyAtInsertionPoint:keyEventArray:selectedRangeValue:](v297, "_capitalizationResultForString:range:inString:offset:languageObject:onlyAtInsertionPoint:keyEventArray:selectedRangeValue:", [a4 substringWithRange:{v66, v159}], v66, v159, a4, a11, v156, usedBufLenb, a16, a18);
      v292 = 0;
      if (v165)
      {
        v155 = v165;
LABEL_349:
        [a10 addObject:v155];
      }

      v41.location = v298;
    }

LABEL_125:
    v42 = v67 + 1;
    v92 = v308;
    if (!v300)
    {
      v92 = 1;
    }

    v49 = v66;
    v44 = v65;
  }

  while ((v92 & 1) != 0);
LABEL_552:
  if (a20)
  {
    *a20 = v42;
  }

  v240.length = range1;
  if (v309 >= 2)
  {
    v240.location = v313[0];
    v41.length = range2;
    v241 = NSIntersectionRange(v240, v41);
    v242 = v308;
    if (!v305)
    {
      v242 = 0;
    }

    if (v242 && v241.length && v305[v309])
    {
      for (m = 0; m < v309; ++m)
      {
        v244 = v305[m];
        if (v244 >= 2 && v305[v309] <= 2 * v244)
        {
          v245 = [v283 objectAtIndex:m];
          if (v245)
          {
            break;
          }
        }

        else
        {
          v245 = 0;
        }
      }

      if (v245)
      {
        v246 = [(AppleSpell *)v297 _orthographyByModifyingOrthography:a8 withLatinLanguage:?];
        v247 = [objc_alloc(MEMORY[0x1E696ADE8]) initWithRange:v241.location + a11 orthography:{v241.length, v246}];
        [a10 addObject:v247];
      }
    }

    v248 = v297->_lastLanguage;
    v297->_lastLanguage = [objc_msgSend(v294 "identifier")];
  }

  [v279 closeTypologyRecordWithResults:a10];
  [(AppleSpell *)v297 resetTimer];
  if (a23 && v292)
  {
    v249 = v292;
    [(AppleSpell *)v297 invalidateTagger:v282];
    [(AppleSpell *)v297 invalidateTagger:v280];

    *a23 = v292;
  }

  else
  {
    [(AppleSpell *)v297 invalidateTagger:v282];
    [(AppleSpell *)v297 invalidateTagger:v280];
  }

  v250 = *MEMORY[0x1E69E9840];
  v251 = v276;
  v252 = v300;
  result.length = v252;
  result.location = v251;
  return result;
}

id __329__AppleSpell_Spelling__spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction___block_invoke(uint64_t a1)
{
  spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__terminatorCharacterSet = [*(a1 + 32) sentenceTerminatorCharacterSet];
  spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__nonPunctuationCharacterSet = [objc_msgSend(MEMORY[0x1E696AB08] "punctuationCharacterSet")];
  result = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  spellServer_findMisspelledWordInString_range_languages_topLanguages_orthography_checkOrthography_mutableResults_offset_autocorrect_onlyAtInsertionPoint_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue_parameterBundles_wordCount_countOnly_appendCorrectionLanguage_correction__whitespaceCharacterSet = result;
  return result;
}

- (BOOL)_spellServer:(id)a3 canChangeCaseOfFirstLetterInString:(id)a4 toUpperCase:(BOOL)a5 languageObject:(id)a6
{
  v7 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v11 = [a4 length];
  v12 = [(AppleSpell *)self databaseConnectionForLanguageObject:a6];
  v13 = [a6 encoding];
  LOBYTE(v14) = 0;
  if (!a4 || !v11)
  {
    goto LABEL_32;
  }

  encoding = v13;
  v30 = a3;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  v40 = a4;
  v43 = 0;
  v44 = v11;
  CharactersPtr = CFStringGetCharactersPtr(a4);
  CStringPtr = 0;
  v41 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a4, 0x600u);
  }

  v47 = 0;
  v45 = 0;
  v46 = 0;
  v42 = CStringPtr;
  v18 = simpleTokenRangeAfterIndex(v32, 0, v11, 0);
  while (1)
  {
    v19 = v17;
    v20 = v17 + v18;
    if (v17 + v18 >= v11)
    {
      break;
    }

    v21 = [a4 characterAtIndex:v17 + v18];
    if (((v21 - 39) > 0x38 || ((1 << (v21 - 39)) & 0x1000000020000C1) == 0) && ((v21 - 8208) > 9 || ((1 << (v21 - 16)) & 0x203) == 0))
    {
      break;
    }

    v22 = simpleTokenRangeAfterIndex(v32, 0, v11, v20);
    if (v23 >= 1 && v22 == v20 + 1)
    {
      v24 = v22 + v23;
      v17 = v22 + v23 - v18;
      if (v24 <= v18 + 72)
      {
        continue;
      }
    }

    ++v19;
    break;
  }

  if (!v19)
  {
    goto LABEL_31;
  }

  v50.location = v18;
  v50.length = v19;
  if (v19 != CFStringGetBytes(a4, v50, encoding, 0x5Fu, 0, buffer, 72, &v47))
  {
    goto LABEL_31;
  }

  if (v7)
  {
    v25 = v30;
    if (buffer[0] <= 0xF7u && buffer[0] - 97 >= 0x1A && buffer[0] - 223 >= 0x18)
    {
      LOBYTE(v14) = 1;
      if (buffer[0] - 154 > 4 || ((1 << (buffer[0] + 102)) & 0x15) == 0)
      {
        goto LABEL_32;
      }
    }

    if (![(AppleSpell *)self checkNameWordBuffer:buffer length:v47 languageObject:a6 globalOnly:0])
    {
      v26 = toUpper(buffer[0]);
      goto LABEL_34;
    }

LABEL_31:
    LOBYTE(v14) = 0;
    goto LABEL_32;
  }

  v25 = v30;
  if (buffer[0] - 65 >= 0x1A && buffer[0] - 192 >= 0x17 && buffer[0] - 216 >= 7)
  {
    LOBYTE(v14) = 1;
    if (buffer[0] - 138 > 0x15 || ((1 << (buffer[0] + 118)) & 0x200015) == 0)
    {
      goto LABEL_32;
    }
  }

  if ([(AppleSpell *)self checkNameWordBuffer:buffer length:v47 languageObject:a6 globalOnly:0])
  {
    goto LABEL_31;
  }

  v26 = toLower(buffer[0]);
LABEL_34:
  buffer[0] = v26;
  WORD2(usedBufLen) = 257;
  LODWORD(usedBufLen) = 16843009;
  v14 = [AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:buffer languageObject:v47 connection:a6 sender:v12 checkBase:v25 checkDict:1 checkTemp:usedBufLen checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?];
  if (v14)
  {
    LOBYTE(v14) = ![(AppleSpell *)self validateAbbreviationOrNumberWordBuffer:buffer length:v47 languageObject:a6 connection:v12 sender:v25];
  }

LABEL_32:
  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_modifiedGrammarDescriptionForDescription:(id)a3
{
  v3 = a3;
  v4 = [a3 rangeOfString:@".  "];
  v6 = v5;
  [v3 rangeOfString:@"{"];
  v8 = v7;
  [v3 rangeOfString:@"'"];
  v10 = v9;
  v14 = 8216;
  v13 = 8217;
  if (v6)
  {
    v11 = v4 + v6;
    if (v11 < [v3 length])
    {
      v3 = [v3 substringFromIndex:v11];
    }
  }

  if (v8 | v10)
  {
    v3 = [MEMORY[0x1E696AD60] stringWithString:v3];
    [v3 replaceOccurrencesOfString:@"{" withString:objc_msgSend(MEMORY[0x1E696AEC0] options:"stringWithCharacters:length:" range:{&v14, 1), 0, 0, objc_msgSend(v3, "length")}];
    [v3 replaceOccurrencesOfString:@"}" withString:objc_msgSend(MEMORY[0x1E696AEC0] options:"stringWithCharacters:length:" range:{&v13, 1), 0, 0, objc_msgSend(v3, "length")}];
    [v3 replaceOccurrencesOfString:@" '" withString:objc_msgSend(MEMORY[0x1E696AEC0] options:"stringWithFormat:" range:{@" %C", v14), 0, 0, objc_msgSend(v3, "length")}];
    [v3 replaceOccurrencesOfString:@"'" withString:objc_msgSend(MEMORY[0x1E696AEC0] options:"stringWithCharacters:length:" range:{&v13, 1), 0, 0, objc_msgSend(v3, "length")}];
  }

  return v3;
}

- (id)_detailWithRange:(_NSRange)a3 description:(id)a4 corrections:(id)a5 issueType:(unint64_t)a6
{
  v10 = [MEMORY[0x1E696B098] valueWithRange:{a3.location, a3.length}];
  v11 = [(AppleSpell *)self _modifiedGrammarDescriptionForDescription:a4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"NSGrammarRange", v11, @"NSGrammarUserDescription", a5, @"NSGrammarCorrections", &unk_1F4E16A90, @"NSGrammarConfidenceScore", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", a6), @"NSGrammarIssueType", 0}];
}

- (_NSRange)_modifiedGrammarRangeForDoubledWordRange:(_NSRange)a3 sentenceRange:(_NSRange)a4 inString:(id)a5 corrections:(id)a6
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = "";
  v21 = a3;
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    if (a3.location > a3.length)
    {
      v8 = a4.length;
      if (a3.location + a3.length <= a4.length)
      {
        v11 = a4.location;
        if (a4.location + a4.length <= [a5 length])
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __106__AppleSpell_EnglishGrammar___modifiedGrammarRangeForDoubledWordRange_sentenceRange_inString_corrections___block_invoke;
          v16[3] = &unk_1E840F268;
          v16[8] = v8;
          v16[9] = location;
          v16[10] = length;
          v16[6] = &v17;
          v16[7] = v11;
          v16[4] = a5;
          v16[5] = a6;
          [a5 enumerateSubstringsInRange:v11 options:location usingBlock:{259, v16}];
        }
      }
    }
  }

  v12 = v18[4];
  v13 = v18[5];
  _Block_object_dispose(&v17, 8);
  v14 = v12;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

uint64_t __106__AppleSpell_EnglishGrammar___modifiedGrammarRangeForDoubledWordRange_sentenceRange_inString_corrections___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v8 = *(result + 56);
  if (a3 >= v8)
  {
    v11 = result;
    result = [*(result + 32) compare:a2 options:1 range:{*(v11 + 72) + v8, *(v11 + 80)}];
    if (!result)
    {
      v12 = a3 - *(v11 + 56);
      v13 = *(v11 + 72) - v12 + *(v11 + 80);
      v14 = *(*(v11 + 48) + 8);
      *(v14 + 32) = v12;
      *(v14 + 40) = v13;
      result = [*(v11 + 40) addObject:a2];
    }
  }

  *a7 = 1;
  return result;
}

- (BOOL)_acceptErrorWithRuleType:(unint64_t)a3 ruleNumber:(unint64_t)a4 grammarRange:(_NSRange)a5 sentenceRange:(_NSRange)a6 inString:(id)a7 corrections:(id)a8 issueType:(unint64_t *)a9
{
  if (!a5.length)
  {
    LOBYTE(v13) = 0;
    return v13;
  }

  length = a5.length;
  location = a5.location;
  if (a5.location + a5.length > a6.length)
  {
    goto LABEL_4;
  }

  v11 = a6.location;
  if (a6.location + a6.length > [a7 length])
  {
    goto LABEL_4;
  }

  v14 = [a7 substringWithRange:{v11 + location, length}];
  LOBYTE(v13) = 0;
  if (a3 > 51)
  {
    if (a3 <= 63)
    {
      if (a3 == 52)
      {
        v13 = [&unk_1F4E169D0 containsObject:v14];
        v15 = 8;
        goto LABEL_28;
      }

      if (a3 == 60)
      {
        return v13;
      }
    }

    else
    {
      switch(a3)
      {
        case '@':
          return v13;
        case 'A':
          v13 = [&unk_1F4E169E8 containsObject:v14];
          v15 = 10;
          goto LABEL_28;
        case 'N':
          return v13;
      }
    }

    goto LABEL_27;
  }

  if (a3 <= 6)
  {
    if (a3 == 3)
    {
      return v13;
    }

    if (a3 == 4)
    {
      v13 = [&unk_1F4E169B8 containsObject:v14] ^ 1;
      v15 = 12;
      goto LABEL_28;
    }

LABEL_27:
    v15 = 0;
    v13 = 1;
    goto LABEL_28;
  }

  if (a3 - 7 >= 2)
  {
    if (a3 == 51)
    {
      [v14 rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x1E696AB08], "decimalDigitCharacterSet")}];
      if (!v16)
      {
LABEL_4:
        LOBYTE(v13) = 0;
        return v13;
      }

      [v14 rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet")}];
      v15 = 0;
      v13 = v17 == 0;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = 1;
  v15 = 11;
LABEL_28:
  if (a9 && v13)
  {
    *a9 = v15;
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)_checkEnglishGrammarInString:(id)a3 range:(_NSRange)a4 indexIntoBuffer:(unint64_t)a5 bufferLength:(unint64_t)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 sender:(id)a9 bufIO:(_PR_BUF_IO *)a10 retval:(int *)a11 errorRange:(_NSRange *)a12 details:(id *)a13
{
  v13 = MEMORY[0x1EEE9AC00](self);
  v15 = v14;
  v238 = v16;
  v244 = v17;
  v252 = v18;
  v20 = v19;
  v21 = v13;
  v22 = a10;
  v23 = a11;
  v266 = *MEMORY[0x1E69E9840];
  var0 = a10->var0;
  v243 = [MEMORY[0x1E695DF70] array];
  v24 = CFLocaleCreate(0, @"en");
  v25 = [(__CFString *)v20 length];
  v26 = &_acceptWithoutAccentForString_range_inString_languageObject__onceToken;
  if (!_checkEnglishGrammarInString_range_indexIntoBuffer_bufferLength_languageObject_connection_sender_bufIO_retval_errorRange_details__bindictData)
  {
    v27 = [objc_msgSend(v21 "dataBundle")];
    if (v27 || (v27 = [objc_msgSend(v21 "dataBundle")]) != 0)
    {
      _checkEnglishGrammarInString_range_indexIntoBuffer_bufferLength_languageObject_connection_sender_bufIO_retval_errorRange_details__bindictData = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v27 options:8 error:0];
    }
  }

  v242 = v21;
  v28 = PRbuf(a10, 0xEu, 0);
  *a11 = v28;
  var9 = a10->var9;
  v256 = v20;
  if (var9)
  {
    v249 = v25;
    v265 = 0;
    v253 = v252 - v244;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v259 = 0u;
    v260 = 0u;
    while (1)
    {
      v30 = *(var9 + 12);
      if (v30 < 2 || !*(var9 + 1))
      {
        goto LABEL_100;
      }

      if (v30 != 52)
      {
        goto LABEL_47;
      }

      v31 = *(var9 + 13);
      if ((v31 - 101) > 7)
      {
        goto LABEL_35;
      }

      v32 = 1 << (v31 - 101);
      if ((v32 & 0x11) != 0)
      {
        v47 = [(__CFString *)v256 paragraphRangeForRange:v253 + a10->var5 + *var9];
        if (v47 >= v47 + v48)
        {
          goto LABEL_100;
        }

        v49 = v47;
        v50 = v48;
        v51 = 0;
        v52 = 0;
        do
        {
          v53 = [(__CFString *)v256 characterAtIndex:v49];
          if (v53 == 40)
          {
            v54 = v51 + 1;
          }

          else
          {
            v54 = v51;
          }

          if (v53 == 41)
          {
            ++v52;
          }

          else
          {
            v51 = v54;
          }

          ++v49;
          --v50;
        }

        while (v50);
        if (v51 == v52)
        {
          goto LABEL_100;
        }

        goto LABEL_47;
      }

      if ((v32 & 0x44) != 0)
      {
        v42 = [(__CFString *)v256 paragraphRangeForRange:v253 + a10->var5 + *var9];
        if (v42 < v42 + v43)
        {
          v44 = v42;
          v45 = v43;
          v39 = 0;
          do
          {
            v46 = [(__CFString *)v256 characterAtIndex:v44];
            if ((v46 - 8220) < 4 || v46 == 34)
            {
              ++v39;
            }

            ++v44;
            --v45;
          }

          while (v45);
          goto LABEL_33;
        }
      }

      else
      {
        if ((v32 & 0x88) == 0)
        {
LABEL_35:
          if (v31 == 74)
          {
            goto LABEL_100;
          }

          goto LABEL_47;
        }

        v33 = [(__CFString *)v256 paragraphRangeForRange:v253 + a10->var5 + *var9];
        v35 = v34;
        v36 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
        v37 = v33 + v35;
        if (v33 < v33 + v35)
        {
          v38 = v36;
          v39 = 0;
          v40 = v33;
          do
          {
            v41 = [(__CFString *)v256 characterAtIndex:v40];
            if (((v41 - 8216) < 4 || v41 == 96 || v41 == 39) && (v40 <= v33 || v40 + 1 >= v37 || ![v38 characterIsMember:{-[__CFString characterAtIndex:](v256, "characterAtIndex:", v40 - 1)}] || (objc_msgSend(v38, "characterIsMember:", -[__CFString characterAtIndex:](v256, "characterAtIndex:", v40 + 1)) & 1) == 0))
            {
              ++v39;
            }

            ++v40;
            --v35;
          }

          while (v35);
LABEL_33:
          if ((v39 & 1) == 0)
          {
            goto LABEL_100;
          }

LABEL_47:
          v259 = 0u;
          v260 = 0u;
          v265 = 0;
          v263 = 0u;
          v264 = 0u;
          v261 = 0u;
          v262 = 0u;
          LOWORD(v259) = *&a8->var0;
          *(&v259 + 1) = var9;
          LOBYTE(v260) = 16;
          LOBYTE(v264) = a8->var6;
          LOWORD(v265) = a8->var7;
          if (PRerr(&v259, 16, 1))
          {
            goto LABEL_99;
          }

          if (!*(&v260 + 1))
          {
            goto LABEL_99;
          }

          v55 = CFStringCreateWithCString(0, *(&v260 + 1), 0x500u);
          if (!v55)
          {
            goto LABEL_99;
          }

          v56 = *(var9 + 12);
          if ((v56 - 3) > 0x60)
          {
            goto LABEL_99;
          }

          v57 = v55;
          v58 = *var9;
          v59 = *(var9 + 1);
          if (*(var9 + 12) > 0x33u)
          {
            if (*(var9 + 12) > 0x41u)
            {
              if (v56 == 66 || v56 == 78 && *(var9 + 13) == 24)
              {
                goto LABEL_99;
              }
            }

            else if (v56 == 52)
            {
              v62 = *(var9 + 13);
              if ((v62 - 18) <= 0x3D && ((1 << (v62 - 18)) & 0x2780000040000001) != 0)
              {
                goto LABEL_99;
              }

              v63 = v62 - 81;
              if (v63 <= 0x22 && ((1 << v63) & 0x400000043) != 0)
              {
                goto LABEL_99;
              }
            }

            else if (v56 == 65)
            {
              v60 = *(var9 + 13);
              if (v60 == 2 || v60 == 19)
              {
                goto LABEL_99;
              }
            }
          }

          else
          {
            if (*(var9 + 12) <= 6u)
            {
              if (v56 == 3)
              {
                if (*(var9 + 13) != 1)
                {
                  goto LABEL_82;
                }
              }

              else if (v56 != 6)
              {
                goto LABEL_82;
              }

LABEL_99:
              PRerr(&v259, 17, 0);
              goto LABEL_100;
            }

            if (v56 == 7)
            {
              if (*(var9 + 13) != 3)
              {
                goto LABEL_82;
              }

              goto LABEL_99;
            }

            if (v56 == 51)
            {
              v61 = *(var9 + 13);
              if (v61 <= 0x3E && ((1 << v61) & 0x40183C0000001800) != 0)
              {
                goto LABEL_99;
              }

              if (v61 - 132 <= 0x3B && ((1 << (v61 + 124)) & 0x800000200344001) != 0 || v61 == 122)
              {
                goto LABEL_99;
              }
            }
          }

LABEL_82:
          v64 = *(var9 + 3);
          if (v64)
          {
            v65 = v256;
            if (*(v64 + 8) && *v64)
            {
              v66 = *(v64 + 18);
              v67 = [MEMORY[0x1E695DF70] array];
              if (v66)
              {
                v68 = 0;
                v69 = 2 * v66;
                do
                {
                  v70 = CFStringCreateWithCString(0, (*v64 + *(*(v64 + 8) + v68)), 0x500u);
                  if (v70)
                  {
                    [v67 addObject:v70];
                  }

                  v68 += 2;
                }

                while (v69 != v68);
              }

LABEL_93:
              v65 = v256;
            }

            else
            {
              v67 = 0;
            }

            var5 = a10->var5;
            var6 = a10->var6;
            v258[0] = 0;
            if ([v242 _acceptErrorWithRuleType:*(var9 + 12) ruleNumber:*(var9 + 13) grammarRange:v58 sentenceRange:v59 inString:v253 + var5 corrections:var6 issueType:{v65, v67, v258}])
            {
              if (*(var9 + 12) == 4)
              {
                v67 = [MEMORY[0x1E695DF70] array];
                v73 = v253 + var5;
                v74 = v242;
                v58 = [v242 _modifiedGrammarRangeForDoubledWordRange:v58 sentenceRange:v59 inString:v73 corrections:{var6, v65, v67}];
                v59 = v75;
              }

              else
              {
                v74 = v242;
              }

              [v243 addObject:{objc_msgSend(v74, "_detailWithRange:description:corrections:issueType:", v58, v59, v57, v67, v258[0])}];
            }

            goto LABEL_99;
          }

          v67 = 0;
          goto LABEL_93;
        }
      }

LABEL_100:
      var9 = *(var9 + 5);
      if (!var9)
      {
        v23 = a11;
        v76 = *a11;
        v22 = a10;
        v20 = v256;
        v25 = v249;
        v26 = &_acceptWithoutAccentForString_range_inString_languageObject__onceToken;
        goto LABEL_103;
      }
    }
  }

  v76 = v28;
LABEL_103:
  v77 = v26[64];
  v78 = v76 == 200 || v77 == 0;
  if (v78 || v252 + v22->var5 >= v25 + v244)
  {
    goto LABEL_313;
  }

  v240 = v23;
  v79 = [v77 bytes];
  v80 = [v26[64] length];
  v81.location = v252 - v244 + v22->var5;
  if (v81.location + v22->var6 <= v25)
  {
    v81.length = v22->var6;
  }

  else
  {
    v81.length = v25 - v81.location;
  }

  v82 = CFStringTokenizerCreate(0, v20, v81, 0, v24);
  v83 = v82;
  v84 = 0;
  v241 = v24;
  if (!v79)
  {
    goto LABEL_257;
  }

  if (v80 < 8)
  {
    goto LABEL_257;
  }

  v85 = v252;
  if (!v82)
  {
    goto LABEL_257;
  }

  v84 = 0;
  if (!CFStringTokenizerAdvanceToNextToken(v82))
  {
LABEL_258:
    CFRelease(v83);
    goto LABEL_259;
  }

  v86 = (v80 >> 3);
  v254 = &var0[v244];
  v87 = (v80 >> 3) - 1;
  do
  {
    v250 = v84;
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v83);
    if ((CurrentTokenRange.length - 1) > 0x47)
    {
      continue;
    }

    location = CurrentTokenRange.location;
    length = CurrentTokenRange.length;
    if (v250 && (v91 = &v259 + v250, v92 = *(v91 - 2), CurrentTokenRange.location == v92 + *(v91 - 1) + 1) && (v93 = CurrentTokenRange.location + CurrentTokenRange.length, CurrentTokenRange.location + CurrentTokenRange.length <= (v92 + 72)))
    {
      v151 = var0[v244 - 1 + CurrentTokenRange.location - v85];
      if (v151 == 39 || v151 == 46)
      {
        v94 = 0;
        length = v93 - v92;
        v247 = -1;
        location = v92;
      }

      else
      {
        v152 = v93 - v92;
        v94 = v151 == 45;
        v247 = 0;
        if (v151 == 45)
        {
          location = v92;
          length = v152;
        }
      }
    }

    else
    {
      v94 = 0;
      v247 = 0;
    }

    while (2)
    {
      if (!length)
      {
        goto LABEL_144;
      }

      for (i = 0; i != length; ++i)
      {
        v96 = v254[location - v85 + i];
        v97 = (v96 - 65) >= 0x1A && (v96 - 192) >= 0x17;
        if (!v97)
        {
          if ((v96 - 138) > 0x15 || ((1 << (v96 + 118)) & 0x200015) == 0)
          {
LABEL_134:
            LOBYTE(v96) = v96 + 32;
            goto LABEL_142;
          }

LABEL_139:
          if (v96 == 159)
          {
            LOBYTE(v96) = -1;
          }

          else
          {
            LOBYTE(v96) = v96 + 16;
          }

          goto LABEL_142;
        }

        if ((v96 - 216) < 7)
        {
          goto LABEL_134;
        }

        if ((v96 - 138) <= 0x15 && ((1 << (v96 + 118)) & 0x200015) != 0)
        {
          goto LABEL_139;
        }

LABEL_142:
        v257[i] = v96;
      }

      if (length <= 0x47)
      {
LABEL_144:
        memset(&v257[length], length, 72 - length);
      }

      v100 = v257;
      if (length < 0xC)
      {
        v104 = -1640531527;
        v103 = -1640531527;
        v102 = -1640531527;
        v101 = length;
      }

      else
      {
        v101 = length;
        v102 = -1640531527;
        v103 = -1640531527;
        v104 = -1640531527;
        do
        {
          v105 = *(v100 + 1) + v103;
          v106 = *(v100 + 2) + v102;
          v107 = (*v100 + v104 - (v105 + v106)) ^ (v106 >> 13);
          v108 = (v105 - v106 - v107) ^ (v107 << 8);
          v109 = (v106 - v107 - v108) ^ (v108 >> 13);
          v110 = (v107 - v108 - v109) ^ (v109 >> 12);
          v111 = (v108 - v109 - v110) ^ (v110 << 16);
          v112 = (v109 - v110 - v111) ^ (v111 >> 5);
          v104 = (v110 - v111 - v112) ^ (v112 >> 3);
          v103 = (v111 - v112 - v104) ^ (v104 << 10);
          v102 = (v112 - v104 - v103) ^ (v103 >> 15);
          v100 += 12;
          v101 -= 12;
        }

        while (v101 > 0xB);
      }

      v113 = v102 + length;
      if (v101 > 5)
      {
        if (v101 > 8)
        {
          if (v101 != 9)
          {
            if (v101 != 10)
            {
              v113 += v100[10] << 24;
            }

            v113 += v100[9] << 16;
          }

          v113 += v100[8] << 8;
LABEL_164:
          v103 += v100[7] << 24;
LABEL_165:
          v103 += v100[6] << 16;
        }

        else if (v101 != 6)
        {
          if (v101 != 7)
          {
            goto LABEL_164;
          }

          goto LABEL_165;
        }

        v103 += v100[5] << 8;
LABEL_167:
        v103 += v100[4];
LABEL_168:
        v104 += v100[3] << 24;
        goto LABEL_169;
      }

      if (v101 <= 2)
      {
        if (v101 == 1)
        {
          goto LABEL_171;
        }

        if (v101 == 2)
        {
          goto LABEL_170;
        }
      }

      else
      {
        if (v101 != 3)
        {
          if (v101 != 4)
          {
            goto LABEL_167;
          }

          goto LABEL_168;
        }

LABEL_169:
        v104 += v100[2] << 16;
LABEL_170:
        v104 += v100[1] << 8;
LABEL_171:
        v104 += *v100;
      }

      v114 = (v104 - v103 - v113) ^ (v113 >> 13);
      v115 = (v103 - v113 - v114) ^ (v114 << 8);
      v116 = (v113 - v114 - v115) ^ (v115 >> 13);
      v117 = (v114 - v115 - v116) ^ (v116 >> 12);
      v118 = (v115 - v116 - v117) ^ (v117 << 16);
      v119 = (v116 - v117 - v118) ^ (v118 >> 5);
      v120 = (v117 - v118 - v119) ^ (v119 >> 3);
      v121 = (v119 - v120 - ((v118 - v119 - v120) ^ (v120 << 10))) ^ (((v118 - v119 - v120) ^ (v120 << 10)) >> 15);
      v122 = ((v121 - 1) / 4294967300.0 * v86);
      v123 = 2 * v122;
      if (bswap32(*(v79 + 4 * (2 * v122))) <= v121)
      {
        do
        {
          v124 = bswap32(*(v79 + 4 * v123));
          v126 = v124 >= v121 || v122++ >= v87;
          v123 += 2;
        }

        while (!v126);
        v125 = v123 - 2;
      }

      else
      {
        do
        {
          v124 = bswap32(*(v79 + 4 * v123));
          v123 -= 2;
          v97 = v122-- != 0;
        }

        while (v97 && v124 > v121);
        v125 = v123 + 2;
      }

      if (v124 != v121)
      {
        if (v94)
        {
LABEL_188:
          v128 = CFStringTokenizerGetCurrentTokenRange(v83);
          location = v128.location;
          length = v128.length;
          v94 = 0;
          continue;
        }

        v129 = 0;
        goto LABEL_195;
      }

      break;
    }

    v127 = *(v79 + 4 * (v125 | 1));
    if (!v94)
    {
      v129 = bswap32(v127);
LABEL_195:
      v130 = v247;
      goto LABEL_196;
    }

    if (!v127)
    {
      goto LABEL_188;
    }

    v129 = bswap32(v127);
    v130 = -1;
LABEL_196:
    v131 = v250 + v130;
    v132 = (&v259 + v250 + v130);
    *v132 = location;
    v132[1] = length;
    *(v258 + v250 + v130) = v129;
    v133 = &v254[location - v85];
    v134 = *v133;
    v135 = 1;
    if ((v134 - 65) >= 0x1A && (v134 - 192) >= 0x17 && (v134 - 216) >= 7)
    {
      v137 = v134 - 138;
      if (v137 > 0x15 || ((1 << v137) & 0x200015) == 0)
      {
        v135 = 0;
      }
    }

    v138 = length >= 2 && v257[length - 1] == 115 && v257[length - 2] != 39;
    v139 = v129;
    if (v129 || (v139 = 0, length < 1))
    {
LABEL_225:
      if (!v135)
      {
        goto LABEL_238;
      }

LABEL_226:
      if (v131)
      {
        if (v138)
        {
          v146 = 10;
        }

        else
        {
          v146 = 2;
        }

        if ((v139 & 0xA) != 0)
        {
          v146 = 0;
        }

        v139 = v139 & 0xFFF87FFF | v146;
        *(v258 + v131) = v139;
      }

      if (v139)
      {
        goto LABEL_247;
      }

      if (v138)
      {
        v147 = 14;
      }

      else
      {
        v147 = 3;
      }

LABEL_246:
      *(v258 + v131) = v147;
      goto LABEL_247;
    }

    v140 = 0;
    while (2)
    {
      v141 = v133[v140];
      if (v141 - 33) < 0x20 || (v141 - 91) < 0x24 && ((0xF0000003FuLL >> (v141 - 91)))
      {
        v142 = 1;
        goto LABEL_222;
      }

      v143 = v141 - 161;
      v144 = v141 & 0xFFFFFFDF;
      v142 = v143 < 0x1F || v144 == 215;
      if (v142)
      {
LABEL_222:
        if (++v140 >= length)
        {
          break;
        }

        continue;
      }

      break;
    }

    if (v142)
    {
      v139 = 0x2000;
      *(v258 + v131) = 0x2000;
      goto LABEL_225;
    }

    v139 = 0;
    if (v135)
    {
      goto LABEL_226;
    }

LABEL_238:
    v148 = v139 & 0xFFFFFFF5;
    if (!v129 || v148)
    {
      *(v258 + v131) = v148;
      if (v148)
      {
        goto LABEL_247;
      }

LABEL_243:
      if (v138)
      {
        v147 = 4;
      }

      else
      {
        v147 = 1;
      }

      goto LABEL_246;
    }

    v149 = location;
    v150 = v138;
    [-[__CFString substringWithRange:](v256 substringWithRange:{v149, length), "capitalizedString"}];
    v138 = v150;
    if (!v139)
    {
      goto LABEL_243;
    }

LABEL_247:
    v84 = v131 + 1;
    v85 = v252;
  }

  while (CFStringTokenizerAdvanceToNextToken(v83) && v84 < 0x100);
LABEL_257:
  if (v83)
  {
    goto LABEL_258;
  }

LABEL_259:
  v251 = v84;
  if (!v84)
  {
    goto LABEL_312;
  }

  v153 = 0;
  LOBYTE(v154) = 0;
  v155 = &v259;
  while (2)
  {
    if ((v154 & 1) != 0 && v153)
    {
      if (*v155 > (*(v155 - 2) + *(v155 - 1) + 1))
      {
        goto LABEL_278;
      }
    }

    else if ((v154 & 1) == 0)
    {
      goto LABEL_278;
    }

    v156 = *(v258 + v153);
    if (v156)
    {
      v157 = (v156 & 0xFFF82BFF) == 0;
    }

    else
    {
      v157 = 0;
    }

    if (v157)
    {
      v160 = *(v155 + 1);
      v161 = *v155 + v244 - (v252 + a10->var5);
      v162 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The word '%@' may not agree with the rest of the sentence.", -[__CFString substringWithRange:](v256, "substringWithRange:")];
      v163 = v160;
      v84 = v251;
      [v243 addObject:{objc_msgSend(v242, "_detailWithRange:description:corrections:", v161, v163, v162, 0)}];
    }

    else
    {
      if ((v156 & 5) != 0)
      {
        v158 = *(v258 + v153);
      }

      else
      {
        v158 = v156 + 1;
      }

      if ((v156 & 0x182070) != 0)
      {
        v159 = v158 | 4;
      }

      else
      {
        v159 = v158;
      }

      *(v258 + v153) = v159 & 0x18207F;
    }

LABEL_278:
    v154 = (*(v258 + v153++) >> 10) & 1;
    ++v155;
    if (v84 != v153)
    {
      continue;
    }

    break;
  }

  v164 = v244 - v252 + *(&v259 + 2 * v84 - 2) + *(&v259 + 2 * v84 - 1);
  v165 = a10->var6 + a10->var5;
  if (v164 >= v165)
  {
    v173 = 1;
    v174 = 1;
    goto LABEL_296;
  }

  v166 = 0;
  v167 = 0;
  v168 = 0;
  do
  {
    v169 = var0[v164];
    if (v169 == 63)
    {
      v170 = 1;
    }

    else
    {
      v170 = v167;
    }

    if (v169 == 46)
    {
      v171 = 1;
    }

    else
    {
      v171 = v168;
    }

    if (v169 == 46)
    {
      v170 = v167;
    }

    if (v169 == 33)
    {
      v166 = 1;
    }

    else
    {
      v168 = v171;
      v167 = v170;
    }

    ++v164;
  }

  while (v164 < v165);
  v172 = v168 ^ 1 | v167;
  v173 = v172 | v166;
  if (!v84)
  {
    if (((v172 | v166) & 1) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_312;
  }

  v174 = v172 | ((v258[0] & 0x40000000) == 0);
LABEL_296:
  v175 = 0;
  v176 = v258;
  v177 = v84;
  do
  {
    if ((*(v176 + 1) & 0x7C0) != 0)
    {
      ++v175;
    }

    v176 = (v176 + 4);
    --v177;
  }

  while (v177);
  if (v175 == 1)
  {
    if (v174)
    {
      v178 = v258;
      v179 = v84;
      do
      {
        v180 = *v178;
        if ((*v178 & 0x7C000) != 0)
        {
          v180 = *v178 & 0x7C000;
        }

        *v178++ = v180;
        --v179;
      }

      while (v179);
    }

    else
    {
      [v243 addObject:{objc_msgSend(v242, "_detailWithRange:description:corrections:", 0, a10->var6, @"This may be a sentence fragment.", 0)}];
    }

LABEL_328:
    v185 = 0;
    v186 = 0;
    v237 = 0;
    v187 = 0;
    LOBYTE(v188) = 0;
    v189 = 0;
    v255 = 0;
    v239 = 0;
    v248 = 0;
    v246 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0;
    v193 = &var0[v244];
    v194 = &v259 + 1;
    v195 = 1;
    while (1)
    {
      if (v185)
      {
        v196 = v187;
        v197 = v189;
        v198 = [objc_msgSend(MEMORY[0x1E696AB08] "whitespaceAndNewlineCharacterSet")];
        v199 = *(v194 - 2) + *(v194 - 3);
        [(__CFString *)v256 rangeOfCharacterFromSet:v198 options:0 range:v199, *(v194 - 1) - v199];
        v201 = v200 == 0;
        if ((v188 & v201) != 0)
        {
          v193 = &var0[v244];
          v189 = v197;
          v187 = v196;
LABEL_341:
          v202 = *(v258 + v185);
          if ((v202 & 0x20000) != 0 && *v194 == 2 && (v205 = &v193[*(v194 - 1) - v252], *v205 == 105) && v205[1] == 115)
          {
            if ((v186 | v187 | v189) & 1) != 0 || (v190 & ~v192 & 1) != 0 && ((v239 ^ 1 | v195))
            {
              v206 = (v190 & 1) == 0;
              v207 = &unk_1F4E16A18;
LABEL_420:
              if (v206)
              {
                v211 = 0;
              }

              else
              {
                v211 = v207;
              }

              goto LABEL_394;
            }
          }

          else if ((v202 & 0x8000) != 0 && *v194 == 3 && (v208 = &v193[*(v194 - 1) - v252], *v208 == 97) && v208[1] == 114 && v208[2] == 101)
          {
            if (((v186 | v187 | v189) & 1) != 0 || !(v191 & 1 | (((v192 | v246) & 1) == 0)))
            {
              goto LABEL_393;
            }
          }

          else if ((v202 & 0x40000) != 0 && *v194 == 3 && (v209 = &v193[*(v194 - 1) - v252], *v209 == 119) && v209[1] == 97 && v209[2] == 115)
          {
            if (((v186 | v187 | v189) & 1) != 0 || ((v246 | v192) & 1) == 0 && ((v191 ^ 1) & 1) == 0)
            {
              goto LABEL_393;
            }
          }

          else
          {
            if ((v202 & 0x100000) != 0 && *v194 == 4)
            {
              v210 = &v193[*(v194 - 1) - v252];
              if (*v210 == 98 && v210[1] == 101 && v210[2] == 101 && v210[3] == 110)
              {
                if (v237)
                {
                  goto LABEL_395;
                }

LABEL_393:
                v211 = 0;
LABEL_394:
                [v243 addObject:{objc_msgSend(v242, "_detailWithRange:description:corrections:", *(v194 - 1) + v244 - (v252 + a10->var5), *v194, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"The word '%@' may not agree with the rest of the sentence.", -[__CFString substringWithRange:](v256, "substringWithRange:")), v211)}];
                v193 = &var0[v244];
                goto LABEL_395;
              }
            }

            switch(v202)
            {
              case 0x40000u:
                if (((v186 | v187 | v189) & 1) == 0)
                {
                  goto LABEL_395;
                }

                goto LABEL_393;
              case 0x20000u:
                if ((v186 | v187 | v189))
                {
                  v211 = 0;
                  v202 = 0x20000;
                  goto LABEL_394;
                }

                v202 = 0x20000;
                if (v190 & ~v192 & 1) != 0 && ((v239 ^ 1 | v195))
                {
                  goto LABEL_393;
                }

                break;
              case 0x8000u:
                if (v190 & 1 | ((v195 & v192 & 1) == 0) | (v248 | v239) & 1)
                {
                  goto LABEL_395;
                }

                goto LABEL_393;
              default:
                v213 = (v202 & 0xFEBFFFFF) == 0 && v202 != 0;
                if (!(v255 & 1 | ((v213 & v195 & 1) == 0)))
                {
                  goto LABEL_393;
                }

                break;
            }
          }

          goto LABEL_395;
        }

        v186 &= v201;
        v187 = v196 & v201;
        v189 = v197 & v201;
        v193 = &var0[v244];
      }

      else if (v188)
      {
        goto LABEL_341;
      }

      v202 = *(v258 + v185);
      if ((v202 & 0x8000) == 0)
      {
        goto LABEL_341;
      }

      if (*v194 != 2)
      {
        goto LABEL_341;
      }

      v203 = &v193[*(v194 - 1) - v252];
      if (*v203 != 97 || v203[1] != 109)
      {
        goto LABEL_341;
      }

      if ((v186 | v187 | v189))
      {
        v204 = v192 | v191;
LABEL_419:
        v206 = (v204 & 1) == 0;
        v207 = &unk_1F4E16A00;
        goto LABEL_420;
      }

      if ((v246 & 1) == 0)
      {
        v204 = v192 | v191;
        if ((v192 | v191))
        {
          goto LABEL_419;
        }
      }

LABEL_395:
      v189 = v202 == 0x10000;
      if ((v202 & 0x800) == 0 || *v194 != 2)
      {
        goto LABEL_425;
      }

      v214 = &v193[*(v194 - 1) - v252];
      v215 = *v214;
      if ((v215 - 65) < 0x1A || (v215 - 192) < 0x17)
      {
        if ((v215 - 138) <= 0x15 && ((1 << (v215 + 118)) & 0x200015) != 0)
        {
          goto LABEL_425;
        }

LABEL_400:
        v215 += 32;
        goto LABEL_401;
      }

      if ((v215 - 216) < 7)
      {
        goto LABEL_400;
      }

      if ((v215 - 138) <= 0x15 && ((1 << (v215 + 118)) & 0x200015) != 0)
      {
        goto LABEL_425;
      }

LABEL_401:
      if (v215 != 116)
      {
        goto LABEL_425;
      }

      v216 = v214[1];
      if ((v216 - 65) < 0x1A || (v216 - 192) < 0x17)
      {
        if ((v216 - 138) <= 0x15 && ((1 << (v216 + 118)) & 0x200015) != 0)
        {
          goto LABEL_425;
        }
      }

      else if ((v216 - 216) >= 7)
      {
        if ((v216 - 138) <= 0x15 && ((1 << (v216 + 118)) & 0x200015) != 0)
        {
          goto LABEL_425;
        }

        goto LABEL_406;
      }

      v216 += 32;
LABEL_406:
      if (v216 == 111)
      {
        v239 = 1;
        v187 = 1;
        goto LABEL_426;
      }

LABEL_425:
      v187 = 0;
LABEL_426:
      if ((v202 & 0x68000) == 0)
      {
        goto LABEL_462;
      }

      v217 = &v193[*(v194 - 1) - v252];
      v218 = *v217;
      if ((v218 - 65) < 0x1A || (v218 - 192) < 0x17)
      {
        if ((v218 - 138) <= 0x15 && ((1 << (v218 + 118)) & 0x200015) != 0)
        {
          goto LABEL_462;
        }

LABEL_430:
        v218 += 32;
        goto LABEL_431;
      }

      if ((v218 - 216) < 7)
      {
        goto LABEL_430;
      }

      if ((v218 - 138) <= 0x15 && ((1 << (v218 + 118)) & 0x200015) != 0)
      {
        goto LABEL_462;
      }

LABEL_431:
      if (v218 != 104)
      {
        goto LABEL_462;
      }

      v219 = v217[1];
      if ((v219 - 65) < 0x1A || (v219 - 192) < 0x17)
      {
        if ((v219 - 138) <= 0x15 && ((1 << (v219 + 118)) & 0x200015) != 0)
        {
          goto LABEL_462;
        }

LABEL_435:
        v219 += 32;
        goto LABEL_436;
      }

      if ((v219 - 216) < 7)
      {
        goto LABEL_435;
      }

      if ((v219 - 138) <= 0x15 && ((1 << (v219 + 118)) & 0x200015) != 0)
      {
        goto LABEL_462;
      }

LABEL_436:
      if (v219 != 97)
      {
        goto LABEL_462;
      }

      v220 = *v194;
      if (*v194 > 5)
      {
        if (v220 != 6)
        {
          if (v220 != 7)
          {
            goto LABEL_462;
          }

          v228 = v217[2];
          if ((v228 - 65) < 0x1A || (v228 - 192) < 0x17)
          {
            if ((v228 - 138) <= 0x15 && ((1 << (v228 + 118)) & 0x200015) != 0)
            {
              goto LABEL_462;
            }

LABEL_501:
            v228 += 32;
          }

          else
          {
            if ((v228 - 216) < 7)
            {
              goto LABEL_501;
            }

            if ((v228 - 138) <= 0x15 && ((1 << (v228 + 118)) & 0x200015) != 0)
            {
              goto LABEL_462;
            }
          }

          if (v228 != 118)
          {
            goto LABEL_462;
          }

          v229 = v217[3];
          if ((v229 - 65) < 0x1A || (v229 - 192) < 0x17)
          {
            if ((v229 - 138) <= 0x15 && ((1 << (v229 + 118)) & 0x200015) != 0)
            {
              goto LABEL_462;
            }

LABEL_506:
            v229 += 32;
          }

          else
          {
            if ((v229 - 216) < 7)
            {
              goto LABEL_506;
            }

            if ((v229 - 138) <= 0x15 && ((1 << (v229 + 118)) & 0x200015) != 0)
            {
              goto LABEL_462;
            }
          }

          if (v229 != 101)
          {
            goto LABEL_462;
          }

          v230 = v217[4];
          if ((v230 - 65) < 0x1A || (v230 - 192) < 0x17)
          {
            if ((v230 - 138) <= 0x15 && ((1 << (v230 + 118)) & 0x200015) != 0)
            {
              goto LABEL_462;
            }

LABEL_511:
            v230 += 32;
          }

          else
          {
            if ((v230 - 216) < 7)
            {
              goto LABEL_511;
            }

            if ((v230 - 138) <= 0x15 && ((1 << (v230 + 118)) & 0x200015) != 0)
            {
              goto LABEL_462;
            }
          }

          if (v230 == 110 && v217[5] == 39)
          {
            v236 = v187;
            v231 = toLower(v217[6]);
            v187 = v236;
            v189 = v202 == 0x10000;
            v193 = &var0[v244];
            if (v231 == 116)
            {
              goto LABEL_476;
            }
          }

          goto LABEL_462;
        }

        v233 = v217[2];
        if ((v233 - 65) < 0x1A || (v233 - 192) < 0x17)
        {
          if ((v233 - 138) <= 0x15 && ((1 << (v233 + 118)) & 0x200015) != 0)
          {
            goto LABEL_462;
          }

          if (v233 == 83)
          {
            goto LABEL_555;
          }
        }

        else if ((v233 - 216) >= 7)
        {
          if ((v233 - 115) > 0x2C)
          {
            goto LABEL_554;
          }

          if (((1 << (v233 - 115)) & 0x10000A800000) != 0)
          {
            goto LABEL_462;
          }

          if (v233 != 115)
          {
            goto LABEL_554;
          }

          goto LABEL_555;
        }

        v233 += 32;
LABEL_554:
        if (v233 != 100)
        {
          goto LABEL_462;
        }

LABEL_555:
        v234 = v217[3];
        if ((v234 - 65) < 0x1A || (v234 - 192) < 0x17)
        {
          if ((v234 - 138) <= 0x15 && ((1 << (v234 + 118)) & 0x200015) != 0)
          {
            goto LABEL_462;
          }

LABEL_558:
          v234 += 32;
        }

        else
        {
          if ((v234 - 216) < 7)
          {
            goto LABEL_558;
          }

          if ((v234 - 138) <= 0x15 && ((1 << (v234 + 118)) & 0x200015) != 0)
          {
            goto LABEL_462;
          }
        }

        if (v234 != 110 || v217[4] != 39)
        {
          goto LABEL_462;
        }

        v235 = v217[5];
        if ((v235 - 65) < 0x1A || (v235 - 192) < 0x17)
        {
          if ((v235 - 138) <= 0x15 && ((1 << (v235 + 118)) & 0x200015) != 0)
          {
            goto LABEL_462;
          }

LABEL_564:
          v235 += 32;
        }

        else
        {
          if ((v235 - 216) < 7)
          {
            goto LABEL_564;
          }

          if ((v235 - 138) <= 0x15 && ((1 << (v235 + 118)) & 0x200015) != 0)
          {
            goto LABEL_462;
          }
        }

        if (v235 == 116)
        {
          goto LABEL_476;
        }

        goto LABEL_462;
      }

      if (v220 == 3)
      {
        v232 = v217[2];
        if ((v232 - 65) < 0x1A || (v232 - 192) < 0x17)
        {
          if ((v232 - 138) <= 0x15 && ((1 << (v232 + 118)) & 0x200015) != 0)
          {
            goto LABEL_462;
          }

          if (v232 == 83)
          {
            goto LABEL_476;
          }
        }

        else if ((v232 - 216) >= 7)
        {
          if ((v232 - 115) <= 0x2C)
          {
            if (((1 << (v232 - 115)) & 0x10000A800000) != 0)
            {
              goto LABEL_462;
            }

            if (v232 == 115)
            {
              goto LABEL_476;
            }
          }

          goto LABEL_548;
        }

        v232 += 32;
LABEL_548:
        if (v232 == 100)
        {
          goto LABEL_476;
        }

        goto LABEL_462;
      }

      if (v220 != 4)
      {
        goto LABEL_462;
      }

      v221 = v217[2];
      if ((v221 - 65) < 0x1A || (v221 - 192) < 0x17)
      {
        if ((v221 - 138) <= 0x15 && ((1 << (v221 + 118)) & 0x200015) != 0)
        {
          goto LABEL_462;
        }

LABEL_443:
        v221 += 32;
        goto LABEL_444;
      }

      if ((v221 - 216) < 7)
      {
        goto LABEL_443;
      }

      if ((v221 - 138) <= 0x15 && ((1 << (v221 + 118)) & 0x200015) != 0)
      {
        goto LABEL_462;
      }

LABEL_444:
      if (v221 != 118)
      {
        goto LABEL_462;
      }

      v222 = v217[3];
      if ((v222 - 65) < 0x1A || (v222 - 192) < 0x17)
      {
        if ((v222 - 138) <= 0x15 && ((1 << (v222 + 118)) & 0x200015) != 0)
        {
          goto LABEL_462;
        }
      }

      else if ((v222 - 216) >= 7)
      {
        if ((v222 - 138) <= 0x15 && ((1 << (v222 + 118)) & 0x200015) != 0)
        {
          goto LABEL_462;
        }

        goto LABEL_449;
      }

      v222 += 32;
LABEL_449:
      if (v222 == 101)
      {
        goto LABEL_476;
      }

LABEL_462:
      v223 = *v194;
      if (*v194 < 3uLL)
      {
        goto LABEL_535;
      }

      v224 = &v193[v223 + *(v194 - 1) - v252];
      v225 = *(v224 - 2);
      if (v225 != 39)
      {
        goto LABEL_477;
      }

      v226 = *(v224 - 1);
      if ((v226 - 65) < 0x1A || (v226 - 192) < 0x17)
      {
        if ((v226 - 138) <= 0x15 && ((1 << (v226 + 118)) & 0x200015) != 0)
        {
          goto LABEL_477;
        }

        if (v226 == 83)
        {
          goto LABEL_476;
        }
      }

      else if ((v226 - 216) >= 7)
      {
        if ((v226 - 115) <= 0x2C)
        {
          if (((1 << (v226 - 115)) & 0x10000A800000) != 0)
          {
            goto LABEL_477;
          }

          if (v226 == 115)
          {
            goto LABEL_476;
          }
        }

        goto LABEL_475;
      }

      v226 += 32;
LABEL_475:
      if (v226 == 100)
      {
        goto LABEL_476;
      }

LABEL_477:
      if (v223 == 3 || *(v224 - 3) != 39)
      {
LABEL_535:
        v186 = 0;
        goto LABEL_536;
      }

      if ((v225 - 65) < 0x1A || (v225 - 192) < 0x17)
      {
        if ((v225 - 138) <= 0x15 && ((1 << (v225 + 118)) & 0x200015) != 0)
        {
          goto LABEL_535;
        }

LABEL_482:
        v225 += 32;
        goto LABEL_483;
      }

      if ((v225 - 216) < 7)
      {
        goto LABEL_482;
      }

      if ((v225 - 138) <= 0x15 && ((1 << (v225 + 118)) & 0x200015) != 0)
      {
        goto LABEL_535;
      }

LABEL_483:
      if (v225 != 118)
      {
        goto LABEL_535;
      }

      v227 = *(v224 - 1);
      if ((v227 - 65) < 0x1A || (v227 - 192) < 0x17)
      {
        if ((v227 - 138) <= 0x15 && ((1 << (v227 + 118)) & 0x200015) != 0)
        {
          goto LABEL_535;
        }
      }

      else if ((v227 - 216) >= 7)
      {
        if ((v227 - 138) <= 0x15 && ((1 << (v227 + 118)) & 0x200015) != 0)
        {
          goto LABEL_535;
        }

        goto LABEL_488;
      }

      v227 += 32;
LABEL_488:
      if (v227 != 101)
      {
        goto LABEL_535;
      }

LABEL_476:
      v237 = 1;
      v186 = 1;
LABEL_536:
      v192 |= (v202 & 0x44083003) != 0;
      v246 |= (v202 & 0x200000) >> 21;
      v191 |= (v202 & 0x7280300C) != 0;
      v190 |= (v202 & 0x72A0300C) != 0;
      v248 |= (v202 & 0x10000) >> 16;
      v188 = (v202 >> 13) & 1;
      v255 |= (v202 & 0x800) >> 11;
      v195 = ((v202 & 0x7C000) == 0) & v195;
      ++v185;
      v194 += 2;
      if (v251 == v185)
      {
        goto LABEL_312;
      }
    }
  }

  if (v175 || (v173 & 1) != 0)
  {
    goto LABEL_328;
  }

LABEL_311:
  [v243 addObject:{objc_msgSend(v242, "_detailWithRange:description:corrections:", 0, a10->var6, @"This may be a sentence fragment.", 0)}];
  if (v251)
  {
    goto LABEL_328;
  }

LABEL_312:
  v22 = a10;
  v23 = v240;
  v24 = v241;
LABEL_313:
  v181 = [v243 count];
  if (!v181)
  {
    if (*v23 != 200)
    {
      if (!v22->var6)
      {
        v22->var5 = v238;
        if (!v24)
        {
          goto LABEL_324;
        }

        goto LABEL_323;
      }

      v22->var5 += v22->var6;
    }

    goto LABEL_322;
  }

  if (a13)
  {
    *a13 = v243;
  }

  if (!a12)
  {
LABEL_322:
    if (v24)
    {
      goto LABEL_323;
    }

    goto LABEL_324;
  }

  v182 = v22->var6;
  a12->location = v252 - v244 + v22->var5;
  a12->length = v182;
  if (!v24)
  {
    goto LABEL_324;
  }

LABEL_323:
  CFRelease(v24);
LABEL_324:
  result = v181 != 0;
  v184 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_addContextAlternativesForZhuyinInputString:(id)a3 modifications:(id)a4 afterIndex:(unint64_t)a5 delta:(int64_t)a6 toArray:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = [a4 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
    v35 = *v50;
    v36 = a6;
    do
    {
      v12 = 0;
      v37 = v10;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(a4);
        }

        v13 = *(*(&v49 + 1) + 8 * v12);
        v14 = [v13 range];
        v42 = v15;
        v16 = [v13 syllableRange];
        v43 = v17;
        v41 = v14;
        if (v14 >= a5 && v16 >= a5)
        {
          v19 = v16;
          v40 = v12;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v20 = [a4 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (!v20)
          {
            v23 = 1;
LABEL_27:
            v30 = [a3 mutableCopy];
            v31 = [v13 replacementString];
            v32 = [v31 length];
            [v30 replaceCharactersInRange:v41 + a6 withString:{v42, v31}];
            if (v23)
            {
              if (([a7 containsObject:v30] & 1) == 0)
              {
                [a7 addObject:v30];
              }
            }

            else
            {
              [(AppleSpell *)self _addContextAlternativesForZhuyinInputString:v30 modifications:a4 afterIndex:v19 + v43 delta:a6 - v42 + v32 toArray:a7];
            }

            v12 = v40;
            goto LABEL_32;
          }

          v21 = v20;
          v22 = *v46;
          v23 = 1;
          v24 = 1;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v46 != v22)
              {
                objc_enumerationMutation(a4);
              }

              v26 = *(*(&v45 + 1) + 8 * i);
              v27 = [v26 syllableRange];
              if (v26 != v13 && v27 >= a5)
              {
                v24 &= v27 + v28 > v19;
                v23 &= v19 + v43 > v27;
              }
            }

            v21 = [a4 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v21);
          v11 = v35;
          a6 = v36;
          v10 = v37;
          v12 = v40;
          if (v24)
          {
            goto LABEL_27;
          }
        }

LABEL_32:
        ++v12;
      }

      while (v12 != v10);
      v10 = [a4 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v10);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)contextAlternativeAnnotatedStringsForZhuyinInputString:(id)a3
{
  v5 = objc_alloc_init(PRZhuyinContext);
  v6 = [a3 length];
  v7 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      -[PRZhuyinContext addInputCharacter:geometryModel:geometryData:](v5, "addInputCharacter:geometryModel:geometryData:", [a3 characterAtIndex:i], 0, 0);
    }
  }

  [(AppleSpell *)self _addContextAlternativesForZhuyinInputString:a3 modifications:[(PRZhuyinContext *)v5 currentModifications] afterIndex:0 delta:0 toArray:v7];

  return v7;
}

- (void)_addTwoLetterWordGuessesForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 isCapitalized:(BOOL)a7 isAllCaps:(BOOL)a8 twoLetterWords:(const char *)a9 candidateList:(id)a10
{
  v32 = *MEMORY[0x1E69E9840];
  if (a5 == 2)
  {
    if (a9)
    {
      v10 = a8;
      v11 = a7;
      v13 = [a6 encoding];
      v14 = toLowerX_1(*a4, v13);
      v15 = toLowerX_1(a4[1], v13);
      v16 = strlen(a9);
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = v15;
        while (a9[v18] != v15 || a9[v18 + 1] != v14)
        {
          v18 += 2;
          if (v18 >= v16)
          {
            goto LABEL_15;
          }
        }

        v29 = v15;
        v30 = v14;
        v31 = 0;
        v20 = 3;
        if (!v11)
        {
          v20 = 1;
        }

        if (v10)
        {
          v21 = 2;
        }

        else
        {
          v21 = v20;
        }

        [a10 addTranspositionCandidateWithBuffer:&v29 encoding:v13 transform:v21 intendedFirstCharacter:v15 intendedSecondCharacter:v14];
LABEL_15:
        v22 = 0;
        v23 = 3;
        if (!v11)
        {
          v23 = 1;
        }

        if (v10)
        {
          v24 = 2;
        }

        else
        {
          v24 = v23;
        }

        do
        {
          if (a9[v22] == v14)
          {
            v25 = a9[v22 + 1];
            if (adjacentMatch(v15, a9[v22 + 1], v13))
            {
              v29 = v14;
              v30 = v25;
              v31 = 0;
              [a10 addReplacementCandidateWithBuffer:&v29 encoding:v13 transform:v24 intendedCharacter:v25 actualCharacter:v15];
            }
          }

          v22 += 2;
        }

        while (v22 < v17);
        for (i = 0; i < v17; i += 2)
        {
          if (a9[i + 1] == v19)
          {
            v27 = a9[i];
            if (adjacentMatch(v14, a9[i], v13))
            {
              v29 = v27;
              v30 = v19;
              v31 = 0;
              [a10 addReplacementCandidateWithBuffer:&v29 encoding:v13 transform:v24 intendedCharacter:v27 actualCharacter:v14];
            }
          }
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_addConnectionGuessesForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 connection:(_PR_DB_IO *)a7 candidateList:(id)a8
{
  v47 = *MEMORY[0x1E69E9840];
  if (a5 - 2 <= 0x3D && a7 != 0)
  {
    v13 = [a6 encoding];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    memset(v34, 0, sizeof(v34));
    v35 = 0u;
    HIDWORD(v35) = 0;
    v36 = 0;
    v37 = a4;
    *&v44 = v34;
    BYTE7(v45) = 1;
    *(&v45 + 9) = *&a7->var0;
    PRword(&v37, 8, 0);
    v14 = v38;
    if (v38)
    {
      if (*(v38 + 8))
      {
        if (*v38)
        {
          v15 = *(v38 + 18);
          if (*(v38 + 18))
          {
            v16 = 0;
            do
            {
              v17 = (*v14 + *(v14[1] + 2 * v16));
              if (strlen(v17) == a5)
              {
                v18 = 0;
                do
                {
                  v19 = removeDiacriticsX_0(a4[v18], v13);
                  v20 = toLowerX_1(v19, v13);
                  v21 = removeDiacriticsX_0(v17[v18], v13);
                  v22 = toLowerX_1(v21, v13);
                  ++v18;
                }

                while (v20 == v22 && v18 < a5);
                if (v20 == v22)
                {
                  [a8 addCandidateWithBuffer:v17 encoding:v13 errorType:1];
                }
              }

              ++v16;
            }

            while (v16 != v15);
            if (v15)
            {
              for (i = 0; i != v15; ++i)
              {
                v25 = (*v14 + *(v14[1] + 2 * i));
                if (strlen(v25) == a5)
                {
                  if (!a5)
                  {
                    goto LABEL_34;
                  }

                  v26 = 0;
                  v27 = 0;
                  do
                  {
                    v28 = a4[v27];
                    v29 = v25[v27];
                    v30 = v28 == v29;
                    if (v28 != v29 && !v26)
                    {
                      v30 = adjacentMatch(a4[v27], v29, v13);
                      v26 = v30;
                    }

                    ++v27;
                  }

                  while (v30 && v27 < a5);
                  if (v30)
                  {
LABEL_34:
                    [a8 addCandidateWithBuffer:v25 encoding:v13 errorType:7];
                  }
                }
              }

              v32 = 0;
              do
              {
                [a8 addCandidateWithBuffer:*v14 + *(v14[1] + v32) encoding:v13 errorType:8];
                v32 += 2;
              }

              while (2 * v15 != v32);
            }
          }
        }
      }
    }

    PRword(&v37, 17, 0);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_addAdditionalGuessesForWord:(id)a3 sender:(id)a4 buffer:(char *)a5 length:(unint64_t)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 accents:(const char *)a9 isCapitalized:(BOOL)a10 isAllCaps:(BOOL)a11 isAllAlpha:(BOOL)a12 hasLigature:(BOOL)a13 suggestPossessive:(BOOL)a14 checkUser:(BOOL)a15 checkHyphens:(BOOL)a16 candidateList:(id)a17
{
  v378 = self;
  v384 = *MEMORY[0x1E69E9840];
  v373 = [a7 encoding];
  if ((a6 & 0x7FFFFFFFFFFFFF80) != 0 || a6 < 2 || !a13)
  {
    goto LABEL_21;
  }

  p_s = &__s;
  for (i = a5; ; ++i)
  {
    v22 = *i;
    if (v22 > 0xC5)
    {
      switch(v22)
      {
        case 0xC6u:
          *p_s = 25921;
          p_s += 2;
          continue;
        case 0xDFu:
          *p_s = 29555;
          p_s += 2;
          continue;
        case 0xE6u:
          *p_s = 25953;
          p_s += 2;
          continue;
      }

      goto LABEL_17;
    }

    if (v22 == 140)
    {
      *p_s = 25935;
      p_s += 2;
      continue;
    }

    if (v22 == 156)
    {
      *p_s = 25967;
      p_s += 2;
      continue;
    }

    if (!*i)
    {
      break;
    }

LABEL_17:
    *p_s++ = v22;
  }

  *p_s = 0;
  *(&v353 + 5) = 0;
  BYTE4(v353) = a16;
  BYTE3(v353) = 0;
  BYTE2(v353) = a15;
  LOWORD(v353) = 1;
  if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:strlen(&__s) sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
  {
    [a17 addCandidateWithBuffer:&__s encoding:v373 errorType:4];
  }

LABEL_21:
  v23 = danishAccents == a9 || norwegianAccents == a9;
  v25 = !v23 && nynorskAccents != a9;
  v26 = a6 < 3 || a11;
  if (a6 > 0x17 || v26 || v25 || ([a17 isFull] & 1) != 0)
  {
    goto LABEL_52;
  }

  v27 = &__s;
  v28 = a5;
  while (2)
  {
    v29 = *v28;
    if (v29 == 65)
    {
      v30 = v28 + 1;
      if (v28[1] != 101)
      {
        goto LABEL_49;
      }

      LOBYTE(v29) = -58;
      goto LABEL_48;
    }

    if (v29 == 97)
    {
      v30 = v28 + 1;
      v31 = v28[1];
      if (v31 == 97)
      {
        LOBYTE(v29) = -27;
      }

      else
      {
        if (v31 != 101)
        {
          goto LABEL_49;
        }

        LOBYTE(v29) = -26;
      }

LABEL_48:
      v28 = v30;
      goto LABEL_49;
    }

    if (*v28)
    {
LABEL_49:
      *v27++ = v29;
      ++v28;
      continue;
    }

    break;
  }

  *v27 = 0;
  *(&v353 + 5) = 0;
  BYTE4(v353) = a16;
  BYTE3(v353) = 0;
  BYTE2(v353) = a15;
  LOWORD(v353) = 1;
  if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:strlen(&__s) sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
  {
    [a17 addCandidateWithBuffer:&__s encoding:v373 errorType:4];
  }

LABEL_52:
  v358 = a5;
  if (a6 <= 0x17 && a9 && !v26 && ([a17 isFull] & 1) == 0)
  {
    v33 = *a5;
    if (*a5)
    {
      v34 = a5 + 1;
      v35 = &__s;
      do
      {
        *v35++ = v33;
        v36 = *v34++;
        v33 = v36;
      }

      while (v36);
    }

    else
    {
      v35 = &__s;
    }

    *v35 = 0;
    v369 = __s;
    if (__s)
    {
      if (a10)
      {
        v37 = 3;
      }

      else
      {
        v37 = 1;
      }

      v359 = &__s;
      do
      {
        v38 = *a9;
        if (*a9)
        {
          v363 = v359 + 1;
          v39 = a9;
          do
          {
            if (v38 == v369)
            {
              *v359 = v39[1];
              *(&v353 + 5) = 0;
              BYTE4(v353) = a16;
              BYTE3(v353) = 1;
              BYTE2(v353) = a15;
              LOWORD(v353) = 1;
              if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
              {
                [a17 addCandidateWithBuffer:&__s encoding:v373 transform:v37 errorType:1];
              }

              v40 = *v363;
              if (*v363)
              {
                v41 = v359 + 1;
                do
                {
                  v42 = *a9;
                  if (*a9)
                  {
                    v43 = a9 + 2;
                    do
                    {
                      if (v42 == v40)
                      {
                        *v41 = *(v43 - 1);
                        *(&v353 + 3) = 257;
                        BYTE2(v353) = a15;
                        LOWORD(v353) = 1;
                        if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                        {
                          [a17 addCandidateWithBuffer:&__s encoding:v373 transform:v37 errorType:1];
                        }
                      }

                      v44 = *v43;
                      v43 += 2;
                      v42 = v44;
                    }

                    while (v44);
                  }

                  *v41 = v40;
                  v45 = *++v41;
                  v40 = v45;
                }

                while (v45);
              }
            }

            v46 = *(v39 + 2);
            v39 += 2;
            v38 = v46;
          }

          while (v46);
        }

        *v359 = v369;
        v47 = *++v359;
        v369 = v47;
      }

      while (v47);
    }
  }

  v48 = v373;
  v50 = v373 == 1280 || v373 == 517;
  v51 = a16;
  v52 = a10;
  v53 = v358;
  if (a6 >= 4 && v50)
  {
    if ([a17 isFull])
    {
      goto LABEL_144;
    }

    v54 = *v358;
    if (*v358)
    {
      v55 = (v358 + 1);
      v56 = &__s;
      do
      {
        *v56++ = v54;
        v57 = *v55++;
        v54 = v57;
      }

      while (v57);
    }

    else
    {
      v56 = &__s;
    }

    *v56 = 0;
    v58 = __s;
    if (__s)
    {
      v59 = &__s;
      do
      {
        v60 = v58 - 65;
        if (v373 > 1279)
        {
          if (v373 != 1284 && v373 != 1280)
          {
LABEL_113:
            if (v60 <= 0x19)
            {
              goto LABEL_119;
            }

            goto LABEL_114;
          }

          if (v60 < 0x1A || (v58 - 192) < 0x17 || (v58 - 216) < 7 || (v58 - 138) <= 0x15 && ((1 << (v58 + 118)) & 0x200015) != 0)
          {
LABEL_119:
            v61 = toLowerX_1(v58, v373);
            goto LABEL_120;
          }
        }

        else if (v373 == 514)
        {
          if (v60 < 0x1A || (v58 - 192) < 0x17 || (v58 - 161) <= 0x3D && ((1 << (v58 + 95)) & 0x3F80000000006F35) != 0)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v373 != 517)
          {
            goto LABEL_113;
          }

          if (v60 < 0x1A || (v58 - 161) < 0xC || (v58 - 174) < 0x22)
          {
            goto LABEL_119;
          }
        }

LABEL_114:
        v61 = toUpperX_0(v58, v373);
LABEL_120:
        *v59 = v61;
        if ([(AppleSpell *)v378 checkNameWordBuffer:&__s length:a6 languageObject:a7 globalOnly:0])
        {
          [a17 addCandidateWithBuffer:&__s encoding:v373 errorType:2];
        }

        *v59 = v58;
        v62 = *++v59;
        v58 = v62;
      }

      while (v62);
    }
  }

  if (a6 == 3 && v373 == 1280)
  {
    if ([a17 isFull])
    {
      goto LABEL_155;
    }

    v63 = *v358;
    if (*v358)
    {
      v64 = (v358 + 1);
      v65 = &__s;
      do
      {
        if (v63 - 97 < 0x1A || v63 > 0xF7u || v63 - 223 < 0x18)
        {
          if (v63 - 154 > 4 || ((1 << (v63 + 102)) & 0x15) == 0)
          {
            v66 = v63 - 32;
            if (v63 == 255)
            {
              v66 = -97;
            }

            if (v63 != 223)
            {
              v63 = v66;
            }

            goto LABEL_141;
          }
        }

        else if (v63 - 154 > 4 || ((1 << (v63 + 102)) & 0x15) == 0)
        {
          goto LABEL_141;
        }

        v63 -= 16;
LABEL_141:
        *v65++ = v63;
        v67 = *v64++;
        v63 = v67;
      }

      while (v67);
    }

    v382 = v381;
    v381 = 38;
    v383 = 0;
    if ([(AppleSpell *)v378 checkNameWordBuffer:&__s length:4 languageObject:a7 globalOnly:0])
    {
      [a17 addCandidateWithBuffer:&__s encoding:1280 errorType:2];
    }
  }

LABEL_144:
  if (a6 < 4 || !a14)
  {
    goto LABEL_154;
  }

  v68 = a6 - 1;
  v48 = v373;
  if (v358[a6 - 1] == 115 && v358[a6 - 2] != 39 && ([a17 isFull] & 1) == 0)
  {
    v69 = *v358;
    if (*v358)
    {
      v70 = (v358 + 1);
      v71 = &__s;
      do
      {
        *v71++ = v69;
        v72 = *v70++;
        v69 = v72;
      }

      while (v72);
    }

    *(&__s + v68) = 0;
    *(&v353 + 5) = 0;
    BYTE4(v353) = a16;
    BYTE3(v353) = 1;
    BYTE2(v353) = a15;
    LOWORD(v353) = 1;
    if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 - 1 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
    {
      *(&__s + v68) = 39;
      *(&__s + a6) = 115;
      [a17 addCandidateWithBuffer:&__s encoding:v373 errorType:3];
    }

LABEL_154:
    v48 = v373;
    if (a6 < 3)
    {
      goto LABEL_1079;
    }
  }

LABEL_155:
  if (([a17 isFull] & 1) == 0)
  {
    v73 = *v358;
    if (*v358)
    {
      v74 = (v358 + 1);
      v75 = &__s;
      do
      {
        *v75++ = v73;
        v76 = *v74++;
        v73 = v76;
      }

      while (v76);
    }

    else
    {
      v75 = &__s;
    }

    *v75 = 0;
    v77 = __s;
    if (__s)
    {
      v78 = 3;
      if (!a10)
      {
        v78 = 1;
      }

      if (a11)
      {
        v79 = 2;
      }

      else
      {
        v79 = v78;
      }

      v80 = &v380;
      do
      {
        v81 = *v80;
        if (!*v80)
        {
          goto LABEL_225;
        }

        v82 = (v77 & 0xDF) - 65;
        if (v48 > 1279)
        {
          if (v48 == 1284)
          {
            if (v82 >= 0x1A && v77 <= 0xF7 && v77 - 192 >= 0x17 && v77 - 216 >= 0x1F && (v77 - 138 > 0x15 || ((1 << (v77 + 118)) & 0x350015) == 0))
            {
              goto LABEL_224;
            }

            if ((v81 & 0xFFFFFFDF) - 65 < 0x1A)
            {
              goto LABEL_221;
            }
          }

          else
          {
            if (v48 != 1280)
            {
LABEL_193:
              if (v82 < 0x1A && (v81 & 0xFFFFFFDF) - 65 <= 0x19)
              {
                goto LABEL_221;
              }

              goto LABEL_224;
            }

            if (v82 >= 0x1A && v77 <= 0xF7 && v77 - 192 >= 0x17 && v77 - 216 >= 0x1F && (v77 - 138 > 0x15 || ((1 << (v77 + 118)) & 0x350015) == 0))
            {
              goto LABEL_224;
            }

            if ((v81 & 0xFFFFFFDF) - 65 < 0x1A)
            {
              goto LABEL_221;
            }
          }

          if (v81 > 0xF7 || v81 - 192 < 0x17 || v81 - 216 < 0x1F)
          {
            goto LABEL_221;
          }

          if (v81 - 138 <= 0x15)
          {
            v83 = 1 << (v81 + 118);
            v84 = 3473429;
LABEL_220:
            if ((v83 & v84) != 0)
            {
              goto LABEL_221;
            }
          }
        }

        else if (v48 == 514)
        {
          if (v82 < 0x1A || v77 > 0xF7 || v77 - 192 < 0x17 || v77 - 216 < 0x1F || v77 - 161 <= 0x1E && ((1 << (v77 + 95)) & 0x6F356F35) != 0)
          {
            if ((v81 & 0xFFFFFFDF) - 65 < 0x1A || v81 > 0xF7 || v81 - 192 < 0x17 || v81 - 216 < 0x1F)
            {
              goto LABEL_221;
            }

            if (v81 - 161 <= 0x1E)
            {
              v83 = 1 << (v81 + 95);
              v84 = 1865772853;
              goto LABEL_220;
            }
          }
        }

        else
        {
          if (v48 != 517)
          {
            goto LABEL_193;
          }

          if ((v77 - 161 < 0xC || v77 - 174 < 0x42 || v82 <= 0x19 || v77 - 241 < 0xC || (v77 & 0xFE) == 0xFE) && ((v81 & 0xFFFFFFDF) - 65 < 0x1A || v81 - 161 < 0xC || v81 - 174 < 0x42 || v81 - 241 < 0xC || (v81 & 0xFE) == 0xFE))
          {
LABEL_221:
            *(v80 - 1) = v81;
            *v80 = v77;
            *(&v353 + 5) = 0;
            BYTE4(v353) = a16;
            BYTE3(v353) = 1;
            BYTE2(v353) = a15;
            LOWORD(v353) = 1;
            if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
            {
              [a17 addTranspositionCandidateWithBuffer:&__s encoding:v48 transform:v79 intendedFirstCharacter:*(v80 - 1) intendedSecondCharacter:*v80];
            }

            v81 = *(v80 - 1);
            *(v80 - 1) = *v80;
            *v80 = v81;
          }
        }

LABEL_224:
        ++v80;
        v77 = v81;
      }

      while (v81);
    }
  }

  if (a6 > 0x17)
  {
    goto LABEL_436;
  }

LABEL_225:
  if (([a17 isFull] & 1) == 0)
  {
    v85 = *v358;
    if (*v358)
    {
      v86 = (v358 + 1);
      v87 = &__s;
      do
      {
        *v87++ = v85;
        v88 = *v86++;
        v85 = v88;
      }

      while (v88);
    }

    else
    {
      v87 = &__s;
    }

    *v87 = 0;
    v89 = 26;
    if (v48 == 517)
    {
      v89 = 32;
    }

    v355 = v89;
    v90 = 97;
    if (v48 == 517)
    {
      v90 = -48;
    }

    v360 = v90;
    v91 = 3;
    if (!a10)
    {
      v91 = 1;
    }

    if (a11)
    {
      v91 = 2;
    }

    v370 = v91;
    v92 = a6;
    while (1)
    {
      v93 = v92--;
      if (v92)
      {
        goto LABEL_242;
      }

      v98 = *(&__s + v93);
      v99 = (v98 & 0xFFFFFFDF) - 65;
      if (v48 > 1279)
      {
        break;
      }

      if (v48 == 514)
      {
        if (v99 < 0x1A || v98 > 0xF7 || v98 - 192 < 0x17 || v98 - 216 < 0x1F)
        {
          goto LABEL_242;
        }

        v118 = v98 - 161;
        if (v118 > 0x1E)
        {
          goto LABEL_328;
        }

        v101 = 1 << v118;
        v102 = 1865772853;
LABEL_327:
        if ((v101 & v102) == 0)
        {
          goto LABEL_328;
        }

        goto LABEL_242;
      }

      if (v48 != 517)
      {
        goto LABEL_319;
      }

      if (v98 - 161 >= 0xC && v98 - 174 >= 0x42 && v99 >= 0x1A && v98 - 241 >= 0xC && (v98 & 0xFE) != 0xFE)
      {
        goto LABEL_328;
      }

LABEL_242:
      v94 = (&__s + v92);
      if (v93 != a6)
      {
        goto LABEL_304;
      }

      v95 = *(v94 - 1);
      v96 = (v95 & 0xFFFFFFDF) - 65;
      if (v48 > 1279)
      {
        if (v48 == 1284)
        {
          if (v96 < 0x1A || (v95 <= 0xF7 ? (v108 = v95 - 192 >= 0x17) : (v108 = 0), v108 ? (v109 = v95 - 216 >= 0x1F) : (v109 = 0), !v109))
          {
LABEL_304:
            v111 = *(&__s + v92);
            v112 = toLowerX_1(v111, v48);
            v364 = v92;
            if (v92)
            {
              v113 = 0;
            }

            else
            {
              v113 = v52;
            }

            v114 = v113 || a11;
            v115 = v360;
            v116 = v355;
            do
            {
              if (v112 != v115 && adjacentMatch(v112, v115, v48))
              {
                v117 = v114 ? toUpperX_0(v115, v48) : v115;
                *v94 = v117;
                *(&v353 + 5) = 0;
                BYTE4(v353) = a16;
                BYTE3(v353) = 1;
                BYTE2(v353) = a15;
                LOWORD(v353) = 1;
                if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                {
                  [a17 addReplacementCandidateWithBuffer:&__s encoding:v48 transform:v370 intendedCharacter:*v94 actualCharacter:v111];
                }
              }

              ++v115;
              --v116;
            }

            while (v116);
            *v94 = v111;
            v52 = a10;
            v53 = v358;
            v92 = v364;
            goto LABEL_317;
          }
        }

        else
        {
          if (v48 != 1280)
          {
LABEL_279:
            if (v96 <= 0x19)
            {
              goto LABEL_304;
            }

            goto LABEL_317;
          }

          if (v96 < 0x1A || v95 > 0xF7 || v95 - 192 < 0x17 || v95 - 216 < 0x1F)
          {
            goto LABEL_304;
          }
        }

        v110 = v95 - 138;
        if (v110 > 0x15)
        {
          goto LABEL_317;
        }

        v106 = 1 << v110;
        v107 = 3473429;
        goto LABEL_303;
      }

      if (v48 == 514)
      {
        if (v96 < 0x1A)
        {
          goto LABEL_304;
        }

        v103 = v95 <= 0xF7 && v95 - 192 >= 0x17;
        if (!v103 || v95 - 216 < 0x1F)
        {
          goto LABEL_304;
        }

        v105 = v95 - 161;
        if (v105 <= 0x1E)
        {
          v106 = 1 << v105;
          v107 = 1865772853;
LABEL_303:
          if ((v106 & v107) != 0)
          {
            goto LABEL_304;
          }
        }
      }

      else
      {
        if (v48 != 517)
        {
          goto LABEL_279;
        }

        if (v95 - 161 < 0xC)
        {
          goto LABEL_304;
        }

        v97 = v95 - 174 >= 0x42 && v96 >= 0x1A;
        if (!v97 || v95 - 241 < 0xC || (v95 & 0xFE) == 0xFE)
        {
          goto LABEL_304;
        }
      }

LABEL_317:
      if (!v92)
      {
        goto LABEL_328;
      }
    }

    if (v48 != 1284 && v48 != 1280)
    {
LABEL_319:
      if (v99 > 0x19)
      {
        goto LABEL_328;
      }

      goto LABEL_242;
    }

    if (v99 < 0x1A || v98 > 0xF7 || v98 - 192 < 0x17 || v98 - 216 < 0x1F)
    {
      goto LABEL_242;
    }

    v100 = v98 - 138;
    if (v100 > 0x15)
    {
      goto LABEL_328;
    }

    v101 = 1 << v100;
    v102 = 3473429;
    goto LABEL_327;
  }

LABEL_328:
  if (([a17 isFull] & 1) == 0)
  {
    v119 = *v53;
    if (*v53)
    {
      v120 = v53 + 1;
      v121 = &__s;
      do
      {
        *v121++ = v119;
        v122 = *v120++;
        v119 = v122;
      }

      while (v122);
    }

    else
    {
      v121 = &__s;
    }

    *v121 = 0;
    v123 = 26;
    if (v48 == 517)
    {
      v123 = 32;
    }

    v356 = v123;
    v124 = 97;
    if (v48 == 517)
    {
      v124 = -48;
    }

    v361 = v124;
    v125 = 3;
    if (!v52)
    {
      v125 = 1;
    }

    if (a11)
    {
      v125 = 2;
    }

    v371 = v125;
    v126 = a6;
    while (1)
    {
      v127 = v126--;
      if (v126)
      {
        goto LABEL_344;
      }

      v132 = *(&__s + v127);
      v133 = (v132 & 0xFFFFFFDF) - 65;
      if (v48 > 1279)
      {
        break;
      }

      if (v48 == 514)
      {
        if (v133 < 0x1A || v132 > 0xF7 || v132 - 192 < 0x17 || v132 - 216 < 0x1F)
        {
          goto LABEL_344;
        }

        v152 = v132 - 161;
        if (v152 > 0x1E)
        {
          goto LABEL_430;
        }

        v135 = 1 << v152;
        v136 = 1865772853;
LABEL_429:
        if ((v135 & v136) == 0)
        {
          goto LABEL_430;
        }

        goto LABEL_344;
      }

      if (v48 != 517)
      {
        goto LABEL_421;
      }

      if (v132 - 161 >= 0xC && v132 - 174 >= 0x42 && v133 >= 0x1A && v132 - 241 >= 0xC && (v132 & 0xFE) != 0xFE)
      {
        goto LABEL_430;
      }

LABEL_344:
      v128 = (&__s + v126);
      if (v127 != a6)
      {
        goto LABEL_406;
      }

      v129 = *(v128 - 1);
      v130 = (v129 & 0xFFFFFFDF) - 65;
      if (v48 > 1279)
      {
        if (v48 == 1284)
        {
          if (v130 < 0x1A || (v129 <= 0xF7 ? (v142 = v129 - 192 >= 0x17) : (v142 = 0), v142 ? (v143 = v129 - 216 >= 0x1F) : (v143 = 0), !v143))
          {
LABEL_406:
            v145 = *(&__s + v126);
            v146 = toLowerX_1(v145, v48);
            v365 = v126;
            if (v126)
            {
              v147 = 0;
            }

            else
            {
              v147 = v52;
            }

            v148 = v147 || a11;
            v149 = v361;
            v150 = v356;
            do
            {
              if (v146 != v149 && !adjacentMatch(v146, v149, v48))
              {
                v151 = v148 ? toUpperX_0(v149, v48) : v149;
                *v128 = v151;
                *(&v353 + 5) = 0;
                BYTE4(v353) = a16;
                BYTE3(v353) = 1;
                BYTE2(v353) = a15;
                LOWORD(v353) = 1;
                if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                {
                  [a17 addReplacementCandidateWithBuffer:&__s encoding:v48 transform:v371 intendedCharacter:*v128 actualCharacter:v145];
                }
              }

              ++v149;
              --v150;
            }

            while (v150);
            *v128 = v145;
            v52 = a10;
            v53 = v358;
            v126 = v365;
            goto LABEL_419;
          }
        }

        else
        {
          if (v48 != 1280)
          {
LABEL_381:
            if (v130 <= 0x19)
            {
              goto LABEL_406;
            }

            goto LABEL_419;
          }

          if (v130 < 0x1A || v129 > 0xF7 || v129 - 192 < 0x17 || v129 - 216 < 0x1F)
          {
            goto LABEL_406;
          }
        }

        v144 = v129 - 138;
        if (v144 > 0x15)
        {
          goto LABEL_419;
        }

        v140 = 1 << v144;
        v141 = 3473429;
        goto LABEL_405;
      }

      if (v48 == 514)
      {
        if (v130 < 0x1A)
        {
          goto LABEL_406;
        }

        v137 = v129 <= 0xF7 && v129 - 192 >= 0x17;
        if (!v137 || v129 - 216 < 0x1F)
        {
          goto LABEL_406;
        }

        v139 = v129 - 161;
        if (v139 <= 0x1E)
        {
          v140 = 1 << v139;
          v141 = 1865772853;
LABEL_405:
          if ((v140 & v141) != 0)
          {
            goto LABEL_406;
          }
        }
      }

      else
      {
        if (v48 != 517)
        {
          goto LABEL_381;
        }

        if (v129 - 161 < 0xC)
        {
          goto LABEL_406;
        }

        v131 = v129 - 174 >= 0x42 && v130 >= 0x1A;
        if (!v131 || v129 - 241 < 0xC || (v129 & 0xFE) == 0xFE)
        {
          goto LABEL_406;
        }
      }

LABEL_419:
      if (!v126)
      {
        goto LABEL_430;
      }
    }

    if (v48 != 1284 && v48 != 1280)
    {
LABEL_421:
      if (v133 > 0x19)
      {
        goto LABEL_430;
      }

      goto LABEL_344;
    }

    if (v133 < 0x1A || v132 > 0xF7 || v132 - 192 < 0x17 || v132 - 216 < 0x1F)
    {
      goto LABEL_344;
    }

    v134 = v132 - 138;
    if (v134 > 0x15)
    {
      goto LABEL_430;
    }

    v135 = 1 << v134;
    v136 = 3473429;
    goto LABEL_429;
  }

LABEL_430:
  if (a9)
  {
    if (([a17 isFull] & 1) == 0)
    {
      v153 = *v53;
      if (*v53)
      {
        v154 = v53 + 1;
        v155 = &__s;
        do
        {
          *v155++ = v153;
          v156 = *v154++;
          v153 = v156;
        }

        while (v156);
      }

      else
      {
        v155 = &__s;
      }

      *v155 = 0;
      v158 = 3;
      if (!v52)
      {
        v158 = 1;
      }

      if (a11)
      {
        v159 = 2;
      }

      else
      {
        v159 = v158;
      }

      v366 = v159;
      v160 = a6;
      while (1)
      {
        v161 = v160 - 1;
        if (v160 != 1)
        {
          goto LABEL_445;
        }

        v166 = (v380 & 0xDF) - 65;
        if (v48 > 1279)
        {
          break;
        }

        if (v48 == 514)
        {
          if (v166 < 0x1A || v380 > 0xF7u || v380 - 192 < 0x17 || v380 - 216 < 0x1F)
          {
            goto LABEL_445;
          }

          v157 = 1;
          if (v380 - 161 > 0x1E)
          {
            goto LABEL_532;
          }

          v167 = 1 << (v380 + 95);
          v168 = 1865772853;
LABEL_529:
          if ((v167 & v168) == 0)
          {
            goto LABEL_532;
          }

          goto LABEL_445;
        }

        if (v48 != 517)
        {
          goto LABEL_521;
        }

        if (v380 - 161 >= 0xC && v380 - 174 >= 0x42 && v166 >= 0x1A && v380 - 241 >= 0xC && (v380 & 0xFE) != 0xFE)
        {
          goto LABEL_531;
        }

LABEL_445:
        v162 = (&__s + v161);
        if (v160 != a6)
        {
          goto LABEL_507;
        }

        v163 = *(v162 - 1);
        v164 = (v163 & 0xFFFFFFDF) - 65;
        if (v48 > 1279)
        {
          if (v48 == 1284)
          {
            if (v164 < 0x1A || (v163 <= 0xF7 ? (v174 = v163 - 192 >= 0x17) : (v174 = 0), v174 ? (v175 = v163 - 216 >= 0x1F) : (v175 = 0), !v175))
            {
LABEL_507:
              v177 = v161;
              v372 = *v162;
              if (*a9)
              {
                v178 = toLowerX_1(*v162, v373);
                if (v177)
                {
                  v179 = 0;
                }

                else
                {
                  v179 = v52;
                }

                v180 = v179 || a11;
                v181 = a9 + 2;
                do
                {
                  v182 = *(v181 - 1);
                  if (v178 != v182)
                  {
                    if (v180)
                    {
                      LOBYTE(v182) = toUpperX_0(v182, v373);
                    }

                    *v162 = v182;
                    *(&v353 + 5) = 0;
                    BYTE4(v353) = a16;
                    BYTE3(v353) = 1;
                    BYTE2(v353) = a15;
                    LOWORD(v353) = 1;
                    if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                    {
                      [a17 addReplacementCandidateWithBuffer:&__s encoding:v373 transform:v366 intendedCharacter:*v162 actualCharacter:v372];
                    }
                  }

                  v183 = *v181;
                  v181 += 2;
                }

                while (v183);
              }

              *v162 = v372;
              v48 = v373;
              v161 = v177;
              v53 = v358;
              goto LABEL_519;
            }
          }

          else
          {
            if (v48 != 1280)
            {
LABEL_482:
              if (v164 <= 0x19)
              {
                goto LABEL_507;
              }

              goto LABEL_519;
            }

            if (v164 < 0x1A || v163 > 0xF7 || v163 - 192 < 0x17 || v163 - 216 < 0x1F)
            {
              goto LABEL_507;
            }
          }

          v176 = v163 - 138;
          if (v176 > 0x15)
          {
            goto LABEL_519;
          }

          v172 = 1 << v176;
          v173 = 3473429;
          goto LABEL_506;
        }

        if (v48 == 514)
        {
          if (v164 < 0x1A)
          {
            goto LABEL_507;
          }

          v169 = v163 <= 0xF7 && v163 - 192 >= 0x17;
          if (!v169 || v163 - 216 < 0x1F)
          {
            goto LABEL_507;
          }

          v171 = v163 - 161;
          if (v171 <= 0x1E)
          {
            v172 = 1 << v171;
            v173 = 1865772853;
LABEL_506:
            if ((v172 & v173) != 0)
            {
              goto LABEL_507;
            }
          }
        }

        else
        {
          if (v48 != 517)
          {
            goto LABEL_482;
          }

          if (v163 - 161 < 0xC)
          {
            goto LABEL_507;
          }

          v165 = v163 - 174 >= 0x42 && v164 >= 0x1A;
          if (!v165 || v163 - 241 < 0xC || (v163 & 0xFE) == 0xFE)
          {
            goto LABEL_507;
          }
        }

LABEL_519:
        v160 = v161;
        if (!v161)
        {
          goto LABEL_531;
        }
      }

      if (v48 != 1284 && v48 != 1280)
      {
LABEL_521:
        if (v166 > 0x19)
        {
          goto LABEL_531;
        }

        goto LABEL_445;
      }

      if (v166 < 0x1A || v380 > 0xF7u || v380 - 192 < 0x17 || v380 - 216 < 0x1F)
      {
        goto LABEL_445;
      }

      v157 = 1;
      if (v380 - 138 > 0x15)
      {
        goto LABEL_532;
      }

      v167 = 1 << (v380 + 118);
      v168 = 3473429;
      goto LABEL_529;
    }

LABEL_531:
    v157 = 1;
  }

  else
  {
LABEL_436:
    v157 = 0;
  }

LABEL_532:
  v354 = v157;
  if (([a17 isFull] & 1) == 0)
  {
    v184 = *v53;
    if (*v53)
    {
      v185 = v53 + 1;
      v186 = &__s;
      do
      {
        *v186++ = v184;
        v187 = *v185++;
        v184 = v187;
      }

      while (v187);
    }

    else
    {
      v186 = &__s;
    }

    *v186 = 0;
    v188 = __s;
    if (__s)
    {
      v189 = 3;
      if (!a10)
      {
        v189 = 1;
      }

      if (a11)
      {
        v190 = 2;
      }

      else
      {
        v190 = v189;
      }

      v191 = &__s;
      v192 = &__s;
      do
      {
        if (!*++v192)
        {
          break;
        }

        for (j = 0; j != 2; ++j)
        {
          v195 = &v191[j];
          v196 = v191[j + 2];
          if (!v191[j + 2])
          {
            break;
          }

          v197 = (v188 & 0xDF) - 65;
          if (v48 > 1279)
          {
            if (v48 == 1284)
            {
              if (v197 >= 0x1A && v188 <= 0xF7 && v188 - 192 >= 0x17 && v188 - 216 >= 0x1F && (v188 - 138 > 0x15 || ((1 << (v188 + 118)) & 0x350015) == 0))
              {
                continue;
              }

              v210 = *v192;
              if ((v210 & 0xFFFFFFDF) - 65 >= 0x1A && v210 <= 0xF7 && v210 - 192 >= 0x17 && v210 - 216 >= 0x1F)
              {
                v211 = v210 - 138;
                if (v211 > 0x15 || ((1 << v211) & 0x350015) == 0)
                {
                  continue;
                }
              }

              v212 = v191[j + 1];
              if ((v212 & 0xFFFFFFDF) - 65 >= 0x1A && v212 <= 0xF7 && v212 - 192 >= 0x17 && v212 - 216 >= 0x1F)
              {
                v213 = v212 - 138;
                if (v213 > 0x15 || ((1 << v213) & 0x350015) == 0)
                {
                  continue;
                }
              }

              if ((v196 & 0xFFFFFFDF) - 65 < 0x1A)
              {
                goto LABEL_648;
              }
            }

            else
            {
              if (v48 != 1280)
              {
LABEL_594:
                if (v197 < 0x1A && (*v192 & 0xDFu) - 65 < 0x1A && (v191[j + 1] & 0xDFu) - 65 < 0x1A && (v196 & 0xFFFFFFDF) - 65 <= 0x19)
                {
                  goto LABEL_648;
                }

                continue;
              }

              if (v197 >= 0x1A && v188 <= 0xF7 && v188 - 192 >= 0x17 && v188 - 216 >= 0x1F && (v188 - 138 > 0x15 || ((1 << (v188 + 118)) & 0x350015) == 0))
              {
                continue;
              }

              v200 = *v192;
              if ((v200 & 0xFFFFFFDF) - 65 >= 0x1A && v200 <= 0xF7 && v200 - 192 >= 0x17 && v200 - 216 >= 0x1F)
              {
                v201 = v200 - 138;
                if (v201 > 0x15 || ((1 << v201) & 0x350015) == 0)
                {
                  continue;
                }
              }

              v202 = v191[j + 1];
              if ((v202 & 0xFFFFFFDF) - 65 >= 0x1A && v202 <= 0xF7 && v202 - 192 >= 0x17 && v202 - 216 >= 0x1F)
              {
                v203 = v202 - 138;
                if (v203 > 0x15 || ((1 << v203) & 0x350015) == 0)
                {
                  continue;
                }
              }

              if ((v196 & 0xFFFFFFDF) - 65 < 0x1A)
              {
                goto LABEL_648;
              }
            }

            if (v196 > 0xF7 || v196 - 192 < 0x17 || v196 - 216 < 0x1F)
            {
              goto LABEL_648;
            }

            if (v196 - 138 <= 0x15)
            {
              v208 = 1 << (v196 + 118);
              v209 = 3473429;
LABEL_647:
              if ((v208 & v209) != 0)
              {
                goto LABEL_648;
              }
            }
          }

          else if (v48 == 514)
          {
            if (v197 < 0x1A || v188 > 0xF7 || v188 - 192 < 0x17 || v188 - 216 < 0x1F || v188 - 161 <= 0x1E && ((1 << (v188 + 95)) & 0x6F356F35) != 0)
            {
              v204 = *v192;
              if ((v204 & 0xFFFFFFDF) - 65 < 0x1A || v204 > 0xF7 || v204 - 192 < 0x17 || v204 - 216 < 0x1F || (v205 = v204 - 161, v205 <= 0x1E) && ((1 << v205) & 0x6F356F35) != 0)
              {
                v206 = v191[j + 1];
                if ((v206 & 0xFFFFFFDF) - 65 < 0x1A || v206 > 0xF7 || v206 - 192 < 0x17 || v206 - 216 < 0x1F || (v207 = v206 - 161, v207 <= 0x1E) && ((1 << v207) & 0x6F356F35) != 0)
                {
                  if ((v196 & 0xFFFFFFDF) - 65 < 0x1A || v196 > 0xF7 || v196 - 192 < 0x17 || v196 - 216 < 0x1F)
                  {
                    goto LABEL_648;
                  }

                  if (v196 - 161 <= 0x1E)
                  {
                    v208 = 1 << (v196 + 95);
                    v209 = 1865772853;
                    goto LABEL_647;
                  }
                }
              }
            }
          }

          else
          {
            if (v48 != 517)
            {
              goto LABEL_594;
            }

            if (v188 - 161 < 0xC || v188 - 174 < 0x42 || v197 < 0x1A || v188 - 241 < 0xC || (v188 & 0xFE) == 0xFE)
            {
              v198 = *v192;
              if ((v198 & 0xFFFFFFDF) - 65 < 0x1A || (v198 - 161) < 0xC || (v198 - 174) < 0x42 || (v198 - 241) < 0xC || (v198 & 0xFE) == 0xFE)
              {
                v199 = v191[j + 1];
                if (((v199 & 0xFFFFFFDF) - 65 < 0x1A || (v199 - 161) < 0xC || (v199 - 174) <= 0x41 || (v199 - 241) < 0xC || (v199 & 0xFE) == 0xFE) && ((v196 & 0xFFFFFFDF) - 65 < 0x1A || v196 - 161 < 0xC || v196 - 174 < 0x42 || v196 - 241 < 0xC || (v196 & 0xFE) == 0xFE))
                {
LABEL_648:
                  v214 = v191;
                  *v191 = v196;
                  v195[2] = v188;
                  *(&v353 + 5) = 0;
                  BYTE4(v353) = a16;
                  BYTE3(v353) = 1;
                  BYTE2(v353) = a15;
                  LOWORD(v353) = 1;
                  if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                  {
                    [a17 addCandidateWithBuffer:&__s encoding:v48 transform:v190 errorType:13];
                  }

                  v191 = v214;
                  v215 = *v214;
                  v188 = v195[2];
                  *v214 = v188;
                  v195[2] = v215;
                }
              }
            }
          }
        }

        v188 = *v192;
        v191 = v192;
      }

      while (*v192);
    }
  }

  v216 = a10;
  if (a6 < 4)
  {
    goto LABEL_742;
  }

  if (([a17 isFull] & 1) == 0 && *v53)
  {
    v217 = 0;
    v218 = &v53[a6 - 1];
    v219 = v53;
    do
    {
      if (v219 != v53)
      {
        goto LABEL_658;
      }

      v225 = v53[1];
      v226 = (v225 & 0xFFFFFFDF) - 65;
      if (v48 > 1279)
      {
        if (v48 == 1284 || v48 == 1280)
        {
          if (v226 < 0x1A || v225 > 0xF7 || v225 - 192 < 0x17 || v225 - 216 < 0x1F)
          {
            goto LABEL_658;
          }

          v233 = v225 - 138;
          if (v233 > 0x15)
          {
            goto LABEL_695;
          }

          v234 = 1 << v233;
          v235 = 3473429;
          goto LABEL_721;
        }
      }

      else
      {
        if (v48 == 514)
        {
          if (v226 < 0x1A || v225 > 0xF7 || v225 - 192 < 0x17 || v225 - 216 < 0x1F)
          {
            goto LABEL_658;
          }

          v239 = v225 - 161;
          if (v239 > 0x1E)
          {
            goto LABEL_695;
          }

          v234 = 1 << v239;
          v235 = 1865772853;
LABEL_721:
          if ((v234 & v235) == 0)
          {
            goto LABEL_695;
          }

          goto LABEL_658;
        }

        if (v48 == 517)
        {
          if (v225 - 161 >= 0xC && v225 - 174 >= 0x42 && v226 >= 0x1A && v225 - 241 >= 0xC && (v225 & 0xFE) != 0xFE)
          {
            goto LABEL_695;
          }

          goto LABEL_658;
        }
      }

      if (v226 > 0x19)
      {
        goto LABEL_695;
      }

LABEL_658:
      if (v219 != v218)
      {
        goto LABEL_659;
      }

      v227 = v53[a6 - 2];
      v228 = (v227 & 0xFFFFFFDF) - 65;
      if (v48 > 1279)
      {
        if (v48 != 1284 && v48 != 1280)
        {
LABEL_723:
          if (v228 <= 0x19)
          {
            goto LABEL_659;
          }

          goto LABEL_695;
        }

        if (v228 < 0x1A || v227 > 0xF7 || v227 - 192 < 0x17 || v227 - 216 < 0x1F)
        {
LABEL_659:
          v220 = *v53;
          if (*v53)
          {
            v221 = &__s;
            v222 = v53 + 1;
            v223 = v217;
            do
            {
              if (v223)
              {
                *v221++ = v220;
              }

              v224 = *v222++;
              v220 = v224;
              --v223;
            }

            while (v224);
          }

          else
          {
            v221 = &__s;
          }

          *v221 = 0;
          *(&v353 + 5) = 0;
          BYTE4(v353) = a16;
          BYTE3(v353) = 1;
          BYTE2(v353) = a15;
          LOWORD(v353) = 1;
          if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 - 1 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
          {
            if (v219 == v53 && a10)
            {
              v229 = 3;
            }

            else
            {
              v229 = 0;
            }

            if (v219 <= v53)
            {
              v230 = 0;
            }

            else
            {
              v230 = *(v219 - 1);
            }

            if (v219 >= v218)
            {
              v231 = 0;
            }

            else
            {
              v231 = v219[1];
            }

            [a17 addInsertionCandidateWithBuffer:&__s encoding:v48 transform:v229 intendedPrecedingCharacter:v230 insertedCharacter:*v219 intendedFollowingCharacter:v231];
          }

          goto LABEL_695;
        }

        v236 = v227 - 138;
        if (v236 <= 0x15)
        {
          v237 = 1 << v236;
          v238 = 3473429;
          goto LABEL_731;
        }
      }

      else if (v48 == 514)
      {
        if (v228 < 0x1A || v227 > 0xF7 || v227 - 192 < 0x17 || v227 - 216 < 0x1F)
        {
          goto LABEL_659;
        }

        v240 = v227 - 161;
        if (v240 <= 0x1E)
        {
          v237 = 1 << v240;
          v238 = 1865772853;
LABEL_731:
          if ((v237 & v238) != 0)
          {
            goto LABEL_659;
          }
        }
      }

      else
      {
        if (v48 != 517)
        {
          goto LABEL_723;
        }

        if (v227 - 161 < 0xC || v227 - 174 < 0x42 || v228 < 0x1A || v227 - 241 < 0xC || (v227 & 0xFE) == 0xFE)
        {
          goto LABEL_659;
        }
      }

LABEL_695:
      v232 = *++v219;
      ++v217;
    }

    while (v232);
  }

  if (a6 <= 0x17)
  {
LABEL_742:
    if (([a17 isFull] & 1) == 0)
    {
      v241 = *v53;
      if (*v53)
      {
        v242 = v53 + 1;
        v243 = &__s;
        do
        {
          *v243++ = v241;
          v244 = *v242++;
          v241 = v244;
        }

        while (v244);
      }

      else
      {
        v243 = &__s;
      }

      *v243 = 0;
      v357 = &__s + a6;
      v245 = &__s;
      do
      {
        v246 = &v245[a6];
        v246[1] = v245[a6];
        --v245;
      }

      while (&__s <= v246 - 1);
      if (__s)
      {
        v247 = 0;
        v248 = 26;
        if (v48 == 517)
        {
          v248 = 32;
        }

        v367 = v248;
        v249 = 97;
        if (v48 == 517)
        {
          v249 = -48;
        }

        v362 = v249;
        v250 = 3;
        if (!a10)
        {
          v250 = 1;
        }

        if (a11)
        {
          v250 = 2;
        }

        v374 = v250;
        do
        {
          v251 = &__s + v247;
          if (v247)
          {
            if (v247 != 1)
            {
              goto LABEL_832;
            }

            v252 = v251[1];
            v253 = (v252 & 0xFFFFFFDF) - 65;
            if (v48 > 1279)
            {
              if (v48 == 1284)
              {
LABEL_781:
                if (v253 < 0x1A)
                {
                  goto LABEL_832;
                }

                v255 = v252 <= 0xF7 && v252 - 192 >= 0x17;
                if (!v255 || v252 - 216 < 0x1F)
                {
                  goto LABEL_832;
                }

LABEL_790:
                v257 = v252 - 138;
                if (v257 > 0x15)
                {
                  goto LABEL_898;
                }

                v258 = 1 << v257;
                v259 = 3473429;
LABEL_831:
                if ((v258 & v259) == 0)
                {
                  goto LABEL_898;
                }

                goto LABEL_832;
              }

              if (v48 == 1280)
              {
                if (v253 < 0x1A || v252 > 0xF7 || v252 - 192 < 0x17 || v252 - 216 < 0x1F)
                {
                  goto LABEL_832;
                }

                goto LABEL_790;
              }
            }

            else
            {
              if (v48 == 514)
              {
                if (v253 < 0x1A)
                {
                  goto LABEL_832;
                }

                v271 = v252 <= 0xF7 && v252 - 192 >= 0x17;
                if (!v271 || v252 - 216 < 0x1F)
                {
                  goto LABEL_832;
                }

                v273 = v252 - 161;
                if (v273 > 0x1E)
                {
                  goto LABEL_898;
                }

                v258 = 1 << v273;
                v259 = 1865772853;
                goto LABEL_831;
              }

              if (v48 == 517)
              {
                goto LABEL_761;
              }
            }

            if (v253 > 0x19)
            {
              goto LABEL_898;
            }
          }

          else
          {
            v252 = v251[2];
            v253 = (v252 & 0xFFFFFFDF) - 65;
            if (v48 > 1279)
            {
              if (v48 == 1284)
              {
                if (v253 < 0x1A)
                {
                  goto LABEL_832;
                }

                v266 = v252 <= 0xF7 && v252 - 192 >= 0x17;
                if (!v266 || v252 - 216 < 0x1F)
                {
                  goto LABEL_832;
                }

                v268 = v252 - 138;
                v263 = v268 > 0x15;
                v264 = 1 << v268;
                v265 = 3473429;
                goto LABEL_812;
              }

              if (v48 == 1280)
              {
                goto LABEL_781;
              }
            }

            else
            {
              if (v48 == 514)
              {
                if (v253 < 0x1A)
                {
                  goto LABEL_832;
                }

                v260 = v252 <= 0xF7 && v252 - 192 >= 0x17;
                if (!v260 || v252 - 216 < 0x1F)
                {
                  goto LABEL_832;
                }

                v262 = v252 - 161;
                v263 = v262 > 0x1E;
                v264 = 1 << v262;
                v265 = 1865772853;
LABEL_812:
                v269 = v264 & v265;
                if (v263 || v269 == 0)
                {
                  goto LABEL_898;
                }

                goto LABEL_832;
              }

              if (v48 == 517)
              {
LABEL_761:
                if (v252 - 161 >= 0xC)
                {
                  v254 = v252 - 174 >= 0x42 && v253 >= 0x1A;
                  if (v254 && v252 - 241 >= 0xC && (v252 & 0xFE) != 0xFE)
                  {
                    goto LABEL_898;
                  }
                }

                goto LABEL_832;
              }
            }

            if (v253 >= 0x1A)
            {
              goto LABEL_898;
            }
          }

LABEL_832:
          if (v251 == v357 - 1)
          {
            v276 = *(v357 - 2);
            v277 = (v276 & 0xFFFFFFDF) - 65;
            if (v48 > 1279)
            {
              if (v48 != 1284 && v48 != 1280)
              {
LABEL_900:
                if (v277 > 0x19)
                {
                  goto LABEL_898;
                }

                goto LABEL_833;
              }

              if (v277 >= 0x1A && v276 <= 0xF7 && v276 - 192 >= 0x17 && v276 - 216 >= 0x1F)
              {
                v281 = v276 - 138;
                if (v281 > 0x15)
                {
                  goto LABEL_898;
                }

                v282 = 1 << v281;
                v283 = 3473429;
LABEL_908:
                if ((v282 & v283) == 0)
                {
                  goto LABEL_898;
                }
              }
            }

            else if (v48 == 514)
            {
              if (v277 >= 0x1A && v276 <= 0xF7 && v276 - 192 >= 0x17 && v276 - 216 >= 0x1F)
              {
                v302 = v276 - 161;
                if (v302 > 0x1E)
                {
                  goto LABEL_898;
                }

                v282 = 1 << v302;
                v283 = 1865772853;
                goto LABEL_908;
              }
            }

            else
            {
              if (v48 != 517)
              {
                goto LABEL_900;
              }

              if (v276 - 161 >= 0xC && v276 - 174 >= 0x42 && v277 >= 0x1A && v276 - 241 >= 0xC && (v276 & 0xFE) != 0xFE)
              {
                goto LABEL_898;
              }
            }
          }

LABEL_833:
          if (v247 != a6)
          {
            goto LABEL_877;
          }

          v274 = *(v251 - 2);
          v275 = (v274 & 0xFFFFFFDF) - 65;
          if (v48 > 1279)
          {
            if (v48 == 1284 || v48 == 1280)
            {
              if (v275 >= 0x1A && v274 <= 0xF7 && v274 - 192 >= 0x17 && v274 - 216 >= 0x1F)
              {
                v278 = v274 - 138;
                if (v278 > 0x15)
                {
                  goto LABEL_898;
                }

                v279 = 1 << v278;
                v280 = 3473429;
LABEL_876:
                if ((v279 & v280) == 0)
                {
                  goto LABEL_898;
                }
              }

LABEL_877:
              v285 = v51;
              v286 = &__s + v247;
              if (v247)
              {
                v287 = 0;
              }

              else
              {
                v287 = v216;
              }

              v288 = v287 || a11;
              v289 = v362;
              v290 = v367;
              v291 = v374;
              while (2)
              {
                v292 = v289;
                if (v288)
                {
                  v292 = toUpperX_0(v289, v48);
                }

                *v286 = v292;
                *(&v353 + 5) = 0;
                BYTE4(v353) = v285;
                BYTE3(v353) = 1;
                BYTE2(v353) = a15;
                LOWORD(v353) = 1;
                if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 + 1 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                {
                  if (v247)
                  {
                    v293 = v286;
                    v294 = *(v286 - 1);
                  }

                  else
                  {
                    v294 = 0;
                    v293 = v286;
                  }

                  if (v247 >= a6)
                  {
                    v298 = 0;
                  }

                  else
                  {
                    v298 = v293[1];
                  }

                  v297 = *(&__s + v247);
                  v299 = a17;
                  v300 = v48;
                  v301 = v291;
LABEL_895:
                  [v299 addOmissionCandidateWithBuffer:&__s encoding:v300 transform:v301 intendedPrecedingCharacter:v294 omittedCharacter:v297 intendedFollowingCharacter:v298];
                }

                else if (!v247)
                {
                  v295 = *v286;
                  v296 = toUpperX_0(*v286, v48);
                  v23 = v296 == v295;
                  v247 = 0;
                  v291 = v374;
                  if (!v23)
                  {
                    *v286 = v296;
                    *(&v353 + 5) = 0;
                    BYTE4(v353) = v285;
                    BYTE3(v353) = 1;
                    BYTE2(v353) = a15;
                    LOWORD(v353) = 1;
                    if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 + 1 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                    {
                      v297 = *v286;
                      v298 = v286[1];
                      v299 = a17;
                      v300 = v48;
                      v301 = 0;
                      v294 = 0;
                      goto LABEL_895;
                    }
                  }
                }

                ++v289;
                if (!--v290)
                {
                  *v286 = v286[1];
                  v53 = v358;
                  v216 = a10;
                  v51 = v285;
                  goto LABEL_898;
                }

                continue;
              }
            }

LABEL_868:
            if (v275 <= 0x19)
            {
              goto LABEL_877;
            }

            goto LABEL_898;
          }

          if (v48 == 514)
          {
            if (v275 >= 0x1A && v274 <= 0xF7 && v274 - 192 >= 0x17 && v274 - 216 >= 0x1F)
            {
              v284 = v274 - 161;
              if (v284 > 0x1E)
              {
                goto LABEL_898;
              }

              v279 = 1 << v284;
              v280 = 1865772853;
              goto LABEL_876;
            }

            goto LABEL_877;
          }

          if (v48 != 517)
          {
            goto LABEL_868;
          }

          if (v274 - 161 < 0xC || v274 - 174 < 0x42 || v275 < 0x1A || v274 - 241 < 0xC || (v274 & 0xFE) == 0xFE)
          {
            goto LABEL_877;
          }

LABEL_898:
          ++v247;
        }

        while (*(&__s + v247));
      }
    }
  }

  if (v354 && ([a17 isFull] & 1) == 0)
  {
    v303 = *v53;
    if (*v53)
    {
      v304 = v53 + 1;
      v305 = &__s;
      do
      {
        *v305++ = v303;
        v306 = *v304++;
        v303 = v306;
      }

      while (v306);
    }

    else
    {
      v305 = &__s;
    }

    *v305 = 0;
    v368 = &__s + a6;
    if ((a6 & 0x8000000000000000) == 0)
    {
      v307 = &__s + a6;
      do
      {
        v307[1] = *v307;
        --v307;
      }

      while (&__s <= v307);
    }

    if (__s)
    {
      v308 = 0;
      v309 = 3;
      if (!v216)
      {
        v309 = 1;
      }

      if (a11)
      {
        v309 = 2;
      }

      v375 = v309;
      do
      {
        v310 = &__s + v308;
        if (v308)
        {
          if (v308 != 1)
          {
            goto LABEL_1006;
          }

          v311 = v310[1];
          v312 = (v311 & 0xFFFFFFDF) - 65;
          if (v48 <= 1279)
          {
            if (v48 != 514)
            {
              if (v48 == 517)
              {
                goto LABEL_935;
              }

LABEL_992:
              if (v312 > 0x19)
              {
                goto LABEL_1067;
              }

              goto LABEL_1006;
            }

            if (v312 < 0x1A)
            {
              goto LABEL_1006;
            }

            v330 = v311 <= 0xF7 && v311 - 192 >= 0x17;
            if (!v330 || v311 - 216 < 0x1F)
            {
              goto LABEL_1006;
            }

            v332 = v311 - 161;
            if (v332 > 0x1E)
            {
              goto LABEL_1067;
            }

            v317 = 1 << v332;
            v318 = 1865772853;
            goto LABEL_1005;
          }

          if (v48 != 1284)
          {
            if (v48 != 1280)
            {
              goto LABEL_992;
            }

            if (v312 < 0x1A || v311 > 0xF7 || v311 - 192 < 0x17 || v311 - 216 < 0x1F)
            {
              goto LABEL_1006;
            }

            goto LABEL_964;
          }
        }

        else
        {
          v311 = v310[2];
          v312 = (v311 & 0xFFFFFFDF) - 65;
          if (v48 <= 1279)
          {
            if (v48 == 514)
            {
              if (v312 < 0x1A)
              {
                goto LABEL_1006;
              }

              v319 = v311 <= 0xF7 && v311 - 192 >= 0x17;
              if (!v319 || v311 - 216 < 0x1F)
              {
                goto LABEL_1006;
              }

              v321 = v311 - 161;
              v322 = v321 > 0x1E;
              v323 = 1 << v321;
              v324 = 1865772853;
LABEL_986:
              v328 = v323 & v324;
              if (v322 || v328 == 0)
              {
                goto LABEL_1067;
              }

              goto LABEL_1006;
            }

            if (v48 == 517)
            {
LABEL_935:
              if (v311 - 161 >= 0xC)
              {
                v313 = v311 - 174 >= 0x42 && v312 >= 0x1A;
                if (v313 && v311 - 241 >= 0xC && (v311 & 0xFE) != 0xFE)
                {
                  goto LABEL_1067;
                }
              }

              goto LABEL_1006;
            }

LABEL_946:
            if (v312 >= 0x1A)
            {
              goto LABEL_1067;
            }

            goto LABEL_1006;
          }

          if (v48 == 1284)
          {
            if (v312 < 0x1A)
            {
              goto LABEL_1006;
            }

            v325 = v311 <= 0xF7 && v311 - 192 >= 0x17;
            if (!v325 || v311 - 216 < 0x1F)
            {
              goto LABEL_1006;
            }

            v327 = v311 - 138;
            v322 = v327 > 0x15;
            v323 = 1 << v327;
            v324 = 3473429;
            goto LABEL_986;
          }

          if (v48 != 1280)
          {
            goto LABEL_946;
          }
        }

        if (v312 < 0x1A)
        {
          goto LABEL_1006;
        }

        v314 = v311 <= 0xF7 && v311 - 192 >= 0x17;
        if (!v314 || v311 - 216 < 0x1F)
        {
          goto LABEL_1006;
        }

LABEL_964:
        v316 = v311 - 138;
        if (v316 > 0x15)
        {
          goto LABEL_1067;
        }

        v317 = 1 << v316;
        v318 = 3473429;
LABEL_1005:
        if ((v317 & v318) == 0)
        {
          goto LABEL_1067;
        }

LABEL_1006:
        if (v310 != v368 - 1)
        {
          goto LABEL_1007;
        }

        v335 = *(v368 - 2);
        v336 = (v335 & 0xFFFFFFDF) - 65;
        if (v48 > 1279)
        {
          if (v48 == 1284 || v48 == 1280)
          {
            if (v336 < 0x1A || v335 > 0xF7 || v335 - 192 < 0x17 || v335 - 216 < 0x1F)
            {
              goto LABEL_1007;
            }

            v340 = v335 - 138;
            if (v340 > 0x15)
            {
              goto LABEL_1067;
            }

            v341 = 1 << v340;
            v342 = 3473429;
            goto LABEL_1077;
          }
        }

        else
        {
          if (v48 == 514)
          {
            if (v336 < 0x1A || v335 > 0xF7 || v335 - 192 < 0x17 || v335 - 216 < 0x1F)
            {
              goto LABEL_1007;
            }

            v351 = v335 - 161;
            if (v351 > 0x1E)
            {
              goto LABEL_1067;
            }

            v341 = 1 << v351;
            v342 = 1865772853;
LABEL_1077:
            if ((v341 & v342) == 0)
            {
              goto LABEL_1067;
            }

            goto LABEL_1007;
          }

          if (v48 == 517)
          {
            if (v335 - 161 >= 0xC && v335 - 174 >= 0x42 && v336 >= 0x1A && v335 - 241 >= 0xC && (v335 & 0xFE) != 0xFE)
            {
              goto LABEL_1067;
            }

            goto LABEL_1007;
          }
        }

        if (v336 > 0x19)
        {
          goto LABEL_1067;
        }

LABEL_1007:
        if (v308 != a6)
        {
          goto LABEL_1051;
        }

        v333 = *(v310 - 2);
        v334 = (v333 & 0xFFFFFFDF) - 65;
        if (v48 > 1279)
        {
          if (v48 != 1284 && v48 != 1280)
          {
LABEL_1042:
            if (v334 <= 0x19)
            {
              goto LABEL_1051;
            }

            goto LABEL_1067;
          }

          if (v334 < 0x1A || v333 > 0xF7 || v333 - 192 < 0x17 || v333 - 216 < 0x1F)
          {
LABEL_1051:
            if (*a9)
            {
              v344 = a10;
              if (v308)
              {
                v344 = 0;
              }

              v345 = v344 || a11;
              v346 = a9 + 2;
              do
              {
                v347 = *(v346 - 1);
                if (v345)
                {
                  LOBYTE(v347) = toUpperX_0(v347, v48);
                }

                *v310 = v347;
                *(&v353 + 5) = 0;
                BYTE4(v353) = v51;
                BYTE3(v353) = 1;
                BYTE2(v353) = a15;
                LOWORD(v353) = 1;
                if ([AppleSpell validateWordBuffer:v378 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:&__s connection:a6 + 1 sender:a7 checkBase:a8 checkDict:a4 checkTemp:1 checkUser:v353 checkNames:0 checkHyphens:? checkIntercaps:? checkOptions:? depth:?])
                {
                  if (v308)
                  {
                    v348 = *(v310 - 1);
                  }

                  else
                  {
                    v348 = 0;
                  }

                  if (v308 >= a6)
                  {
                    v349 = 0;
                  }

                  else
                  {
                    v349 = v310[1];
                  }

                  [a17 addOmissionCandidateWithBuffer:&__s encoding:v48 transform:v375 intendedPrecedingCharacter:v348 omittedCharacter:*(&__s + v308) intendedFollowingCharacter:v349];
                }

                v350 = *v346;
                v346 += 2;
              }

              while (v350);
            }

            *v310 = v310[1];
            goto LABEL_1067;
          }

          v337 = v333 - 138;
          if (v337 <= 0x15)
          {
            v338 = 1 << v337;
            v339 = 3473429;
            goto LABEL_1050;
          }
        }

        else if (v48 == 514)
        {
          if (v334 < 0x1A || v333 > 0xF7 || v333 - 192 < 0x17 || v333 - 216 < 0x1F)
          {
            goto LABEL_1051;
          }

          v343 = v333 - 161;
          if (v343 <= 0x1E)
          {
            v338 = 1 << v343;
            v339 = 1865772853;
LABEL_1050:
            if ((v338 & v339) != 0)
            {
              goto LABEL_1051;
            }
          }
        }

        else
        {
          if (v48 != 517)
          {
            goto LABEL_1042;
          }

          if (v333 - 161 < 0xC || v333 - 174 < 0x42 || v334 < 0x1A || v333 - 241 < 0xC || (v333 & 0xFE) == 0xFE)
          {
            goto LABEL_1051;
          }
        }

LABEL_1067:
        ++v308;
      }

      while (*(&__s + v308));
    }
  }

LABEL_1079:
  v352 = *MEMORY[0x1E69E9840];
}

- (void)_addSpaceInsertionGuessesForWord:(id)a3 sender:(id)a4 buffer:(char *)a5 length:(unint64_t)a6 languageObject:(id)a7 connection:(_PR_DB_IO *)a8 isCapitalized:(BOOL)a9 checkUser:(BOOL)a10 oneLetterWords:(const char *)a11 twoLetterWords:(const char *)a12 candidateList:(id)a13
{
  v61 = a8;
  *&v63[255] = *MEMORY[0x1E69E9840];
  v57 = [a7 encoding];
  if (a6 - 3 <= 0x14 && ([a13 isFull] & 1) == 0)
  {
    v17 = *a5;
    if (*a5)
    {
      v18 = a5 + 1;
      v19 = &v62;
      do
      {
        *v19++ = v17;
        v20 = *v18++;
        v17 = v20;
      }

      while (v20);
    }

    else
    {
      v19 = &v62;
    }

    *v19 = 0;
    v21 = &v63[a6 - 1];
    v22 = &v62;
    do
    {
      v23 = &v22[a6];
      v23[1] = v22[a6];
      --v22;
    }

    while (&v62 <= v23 - 1);
    if (a6 >= 2)
    {
      v25 = v21 - 1;
      v26 = v63;
      v58 = a6 - 1;
      v59 = v21 - 2;
      v27 = 1;
      do
      {
        *v26 = 45;
        if (v27 != 1 && v26 != v25)
        {
          goto LABEL_15;
        }

        v29 = v26 - 1;
        if (v27 != 1)
        {
          v29 = v26 + 1;
        }

        v30 = *v29;
        if ((v30 - 48) >= 0xA && (!a11 || !strchr(a11, v30)))
        {
          goto LABEL_100;
        }

        if (v27 == 1 && v30 == 97 && englishOneLetterWords[0] == a11)
        {
          v32 = v26[1];
          HIDWORD(v34) = v32 - 65;
          LODWORD(v34) = v32 - 65;
          v33 = v34 >> 1;
          v35 = v33 > 0x1C;
          v36 = (1 << v33) & 0x14951495;
          v37 = v35 || v36 == 0;
          if (!v37 || vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, vaddq_s32(vdupq_n_s32(v32), xmmword_1D2BF7970)))) & 1 | (v32 - 248 < 6) | ((v32 & 0xD8) == 200 || v32 == 255))
          {
            goto LABEL_100;
          }
        }

        if (frenchOneLetterWords == a11)
        {
          if (v27 != 1 || v30 != 108)
          {
            goto LABEL_85;
          }
        }

        else if (v27 != 1 || v30 != 108 || italianOneLetterWords != a11)
        {
          goto LABEL_85;
        }

        v50 = v26[1];
        HIDWORD(v52) = v50 - 65;
        LODWORD(v52) = v50 - 65;
        v51 = v52 >> 1;
        if ((v51 > 0x1C || ((1 << v51) & 0x14951495) == 0) && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, vaddq_s32(vdupq_n_s32(v50), xmmword_1D2BF7970)))) & 1) == 0 && v50 - 248 >= 6 && v50 != 255 && v50 != 104 && (v50 & 0xD8) != 0xC8)
        {
          goto LABEL_100;
        }

LABEL_85:
        v54 = frenchOneLetterWords == a11 || italianOneLetterWords == a11;
        if (v30 == 108 && v54 && v26 == v25)
        {
          goto LABEL_100;
        }

LABEL_15:
        if (v27 == 2 || v26 == v59)
        {
          v38 = -2;
          if (v27 != 2)
          {
            v38 = 1;
          }

          v39 = 2;
          if (v27 == 2)
          {
            v39 = -1;
          }

          if (!a12)
          {
            goto LABEL_100;
          }

          v40 = v26[v38];
          v41 = v26[v39];
          v42 = strlen(a12);
          if (!v42)
          {
            goto LABEL_100;
          }

          for (i = 0; i < v42; i += 2)
          {
            if (a12[i] == v40)
            {
              v44 = a12[i + 1] == v41;
              if (a12[i + 1] == v41)
              {
                break;
              }
            }

            else
            {
              v44 = 0;
            }
          }

          if (!v44)
          {
            goto LABEL_100;
          }

          if (v27 == 2 && englishTwoLetterWords[0] == a12 && v40 == 97 && v41 == 110)
          {
            v45 = v26[1];
            HIDWORD(v47) = v45 - 65;
            LODWORD(v47) = v45 - 65;
            v46 = v47 >> 1;
            v35 = v46 > 0x1C;
            v48 = (1 << v46) & 0x14951495;
            v49 = v35 || v48 == 0;
            if (v49 && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1D2BF7980, vaddq_s32(vdupq_n_s32(v45), xmmword_1D2BF7970)))) & 1) == 0 && v45 - 248 >= 6 && v45 != 255 && v45 != 104 && (v45 & 0xD8) != 0xC8)
            {
              goto LABEL_100;
            }
          }
        }

        *(&v56 + 3) = 0;
        BYTE2(v56) = a10;
        LOWORD(v56) = 1;
        if ([AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:&v62 languageObject:a6 + 1 connection:a7 sender:v61 checkBase:a4 checkDict:1 checkTemp:v56 checkUser:0 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?]&& ![(AppleSpell *)self checkNegativeWordBuffer:&v62 length:v27 languageObject:a7 alreadyCapitalized:a9]&& ![(AppleSpell *)self checkNegativeWordBuffer:v26 + 1 length:a6 - v27 languageObject:a7])
        {
          *v26 = 32;
          [a13 addCandidateWithBuffer:&v62 encoding:v57 errorType:10];
          v28 = 45;
LABEL_98:
          *v26 = v28;
          goto LABEL_99;
        }

        if (v27 != 1 || (*(&v56 + 3) = 0, BYTE2(v56) = a10, LOWORD(v56) = 1, ![AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:&v63[1] languageObject:v58 connection:a7 sender:v61 checkBase:a4 checkDict:1 checkTemp:v56 checkUser:0 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?]) || [(AppleSpell *)self checkNegativeWordBuffer:&v63[1] length:v58 languageObject:a7])
        {
          if (v26 != v25)
          {
            goto LABEL_100;
          }

          *(&v56 + 3) = 0;
          BYTE2(v56) = a10;
          LOWORD(v56) = 1;
          if (![AppleSpell validateWordBuffer:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkUser:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" length:&v62 languageObject:v58 connection:a7 sender:v61 checkBase:a4 checkDict:1 checkTemp:v56 checkUser:0 checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?]|| [(AppleSpell *)self checkNegativeWordBuffer:&v62 length:v58 languageObject:a7])
          {
            goto LABEL_100;
          }
        }

        *v26 = 32;
        if (v27 == 1 && v62 == 108)
        {
          v28 = 39;
          if (frenchOneLetterWords == a11 || italianOneLetterWords == a11)
          {
            goto LABEL_98;
          }
        }

LABEL_99:
        [a13 addCandidateWithBuffer:&v62 encoding:v57 errorType:10];
LABEL_100:
        *v26 = v63[v27++];
        v26 = &v63[v27 - 1];
      }

      while (&v63[v27 - 1] <= v25);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addLexiconGuessesForWord:(id)a3 buffer:(char *)a4 length:(unint64_t)a5 languageObject:(id)a6 minCorrectionLength:(unint64_t)a7 minExtendedCorrectionLength:(unint64_t)a8 isCapitalized:(BOOL)a9 stopAfterFreeInsertions:(BOOL)a10 toGuesses:(id)a11
{
  v37 = *MEMORY[0x1E69E9840];
  v18 = [a6 encoding];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v19 = [a3 length];
  if (a5 >= a7)
  {
    v20 = v19;
    if ([a6 isTurkish])
    {
      v21 = addLexiconGuessesForWord_buffer_length_languageObject_minCorrectionLength_minExtendedCorrectionLength_isCapitalized_stopAfterFreeInsertions_toGuesses__turkishLocale;
      if (addLexiconGuessesForWord_buffer_length_languageObject_minCorrectionLength_minExtendedCorrectionLength_isCapitalized_stopAfterFreeInsertions_toGuesses__turkishLocale)
      {
        v22 = 0;
      }

      else
      {
        v21 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
        v22 = 0;
        addLexiconGuessesForWord_buffer_length_languageObject_minCorrectionLength_minExtendedCorrectionLength_isCapitalized_stopAfterFreeInsertions_toGuesses__turkishLocale = v21;
      }
    }

    else
    {
      v23 = [a6 isVietnamese];
      if (v20 < 0x40)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v24 == 1)
      {
        v38.location = 0;
        v38.length = v20;
        Bytes = CFStringGetBytes(a3, v38, 0x100u, 0, 0, buffer, 126, 0);
        v21 = 0;
        v22 = v20 == Bytes;
        if (v22)
        {
          v26 = 40;
        }

        else
        {
          v26 = 20;
        }

        goto LABEL_15;
      }

      v22 = 0;
      v21 = 0;
    }

    v26 = 20;
LABEL_15:
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __174__AppleSpell_Guessing__addLexiconGuessesForWord_buffer_length_languageObject_minCorrectionLength_minExtendedCorrectionLength_isCapitalized_stopAfterFreeInsertions_toGuesses___block_invoke;
    v28[3] = &unk_1E840F290;
    v30 = a9;
    v28[4] = v21;
    v28[5] = a11;
    v31 = a10;
    v32 = v22;
    v28[8] = a7;
    v28[9] = &v35;
    v28[10] = buffer;
    v28[11] = v20;
    v29 = v18;
    v28[12] = a4;
    v28[13] = a5;
    v28[14] = a8;
    v28[6] = a6;
    v28[7] = v33;
    [(AppleSpell *)self enumerateCorrectionEntriesForWord:a3 maxCorrections:v26 inLexiconForLanguageObject:a6 withBlock:v28];
  }

  _Block_object_dispose(v33, 8);
  v27 = *MEMORY[0x1E69E9840];
}

unint64_t __174__AppleSpell_Guessing__addLexiconGuessesForWord_buffer_length_languageObject_minCorrectionLength_minExtendedCorrectionLength_isCapitalized_stopAfterFreeInsertions_toGuesses___block_invoke(uint64_t a1, __CFString *a2, uint64_t a3, char a4, unint64_t a5, _BYTE *a6)
{
  v8 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if (a4 & 0x20) == 0 && (*(a1 + 124))
  {
    v8 = initialCapitalizedString(a2, *(a1 + 32));
  }

  v10 = [(__CFString *)v8 length];
  result = [*(a1 + 40) isFull];
  if (result & 1) != 0 || *(a1 + 125) == 1 && a5 >= 5 && (*(*(*(a1 + 56) + 8) + 24))
  {
    *a6 = 1;
    goto LABEL_6;
  }

  if (*(a1 + 126) == 1)
  {
    if (v10 <= 0x3F && v10 >= *(a1 + 64))
    {
      v18.location = 0;
      v18.length = v10;
      result = CFStringGetBytes(v8, v18, 0x100u, 0, 0, *(a1 + 72), 126, 0);
      if (v10 == result)
      {
        result = effectiveUTF16EditDistance(*(a1 + 80), *(a1 + 88), *(a1 + 72), v10);
        if (result <= 2)
        {
LABEL_21:
          result = [*(a1 + 40) addCandidateWithString:v8 errorType:a5];
        }
      }
    }
  }

  else
  {
    usedBufLen = 0;
    v19.location = 0;
    v19.length = v10;
    result = CFStringGetBytes(v8, v19, *(a1 + 120), 0, 0, buffer, 254, &usedBufLen);
    if (v10 == result && usedBufLen >= *(a1 + 64))
    {
      v13 = effectiveEditDistance(*(a1 + 96), *(a1 + 104), buffer, usedBufLen);
      if (v13 < 2)
      {
        goto LABEL_21;
      }

      v14 = v13;
      if (v13 == 2 && *(a1 + 104) >= *(a1 + 112))
      {
        goto LABEL_21;
      }

      result = [*(a1 + 48) isIrishGaelic];
      if (a5 <= 4 && result)
      {
        if (v14 == 3 && *(a1 + 104) >= *(a1 + 112))
        {
          result = [*(a1 + 40) addCandidateWithString:v8 errorType:a5];
        }

        goto LABEL_7;
      }
    }
  }

LABEL_6:
  if (a5 <= 4)
  {
LABEL_7:
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_spellServer:(id)a3 suggestGuessesForWordRange:(_NSRange)a4 inString:(id)a5 languageObject:(id)a6 options:(id)a7 tagger:(id)a8 errorModel:(id)a9 guessesDictionaries:(id)a10
{
  length = a4.length;
  location = a4.location;
  v202 = *MEMORY[0x1E69E9840];
  v14 = [a5 substringWithRange:{a4.location, a4.length}];
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v17 = [a7 objectForKey:@"ContextualGuessDictionaries"];
  if (v17)
  {
    v18 = [v17 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v18) = 1;
  }

  v148 = v18;
  memset(v201, 0, sizeof(v201));
  v200 = 0;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v177 = 0;
  v176 = 8217;
  v175 = 0;
  v19 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v176 length:1];
  v20 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v175 length:1];
  v147 = _appIdentifierFromOptions(a7);
  v146 = [a7 objectForKey:@"ParameterBundles"];
  if ([a6 isKorean])
  {

    v15 = [(AppleSpell *)self spellServer:a3 suggestGuessesForKoreanWordRange:location inString:length options:a5, a7];
    goto LABEL_250;
  }

  v144 = v16;
  obj = [(AppleSpell *)self capitalizationDictionaryArrayForLanguageObject:a6];
  v158 = [[PRCandidateList alloc] initWithMaxCount:32 defaultReplacementRange:location customErrorModel:length capitalizationDictionaryArray:a9, obj];
  v21 = [a6 oneLetterWords];
  v139 = [a6 twoLetterWords];
  v138 = [a6 accents];
  v155 = [a6 isEnglish];
  if (v155)
  {
    goto LABEL_7;
  }

  if ([a6 isGerman])
  {
    v135 = 0;
    v136 = 0;
    v140 = 1;
    v22 = 6;
LABEL_14:
    v145 = v22;
    goto LABEL_15;
  }

  if ([a6 isDutch] & 1) != 0 || (objc_msgSend(a6, "isSwedish"))
  {
    v135 = 0;
    v136 = 0;
    v140 = 1;
    v22 = 4;
    goto LABEL_14;
  }

  if ([a6 isDanish] & 1) != 0 || (objc_msgSend(a6, "isNorwegian") & 1) != 0 || (objc_msgSend(a6, "isNynorsk") & 1) != 0 || (objc_msgSend(a6, "isIrishGaelic"))
  {
    v137 = 0;
    v140 = 1;
    v145 = 6;
    v135 = 2;
    v136 = 0;
    goto LABEL_16;
  }

  if ([a6 isTurkish])
  {
    if (_spellServer_suggestGuessesForWordRange_inString_languageObject_options_tagger_errorModel_guessesDictionaries__turkishLocale)
    {
      v136 = _spellServer_suggestGuessesForWordRange_inString_languageObject_options_tagger_errorModel_guessesDictionaries__turkishLocale;
    }

    else
    {
      v136 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
      _spellServer_suggestGuessesForWordRange_inString_languageObject_options_tagger_errorModel_guessesDictionaries__turkishLocale = v136;
    }

    goto LABEL_8;
  }

  if ([a6 isFinnish])
  {
    v135 = 0;
    v136 = 0;
    v140 = 0;
    v137 = 1;
    v145 = 2;
    goto LABEL_16;
  }

LABEL_7:
  v136 = 0;
LABEL_8:
  v140 = 1;
  v145 = 6;
  v135 = 2;
LABEL_15:
  v137 = 1;
LABEL_16:
  [v14 rangeOfString:v20];
  if (v23)
  {
    v14 = [v14 stringByReplacingOccurrencesOfString:v20 withString:@"_"];
  }

  v24 = [v14 stringByTrimmingCharactersInSet:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet"), "invertedSet")}];
  [(__CFString *)v24 rangeOfString:v19];
  v142 = v25;
  v26 = v21;
  if (v25)
  {
    v24 = [(__CFString *)v24 stringByReplacingOccurrencesOfString:v19 withString:@"'"];
  }

  v27 = [(__CFString *)v24 length];
  v141 = [(AppleSpell *)self databaseConnectionForLanguageObject:a6];
  encoding = [a6 encoding];
  v28 = [(AppleSpell *)self autocorrectionDictionaryForLanguageObject:a6];
  if (!_spellServer_suggestGuessesForWordRange_inString_languageObject_options_tagger_errorModel_guessesDictionaries__disallowedInternalPunctuationCharacterSet)
  {
    v29 = [objc_msgSend(MEMORY[0x1E696AB08] "punctuationCharacterSet")];
    [v29 removeCharactersInString:@"'-:/&_"];
    [v29 removeCharactersInRange:{8208, 2}];
    _spellServer_suggestGuessesForWordRange_inString_languageObject_options_tagger_errorModel_guessesDictionaries__disallowedInternalPunctuationCharacterSet = v29;
  }

  v30 = 0;
  v31 = 0;
  v152 = v24;
  v143 = v19;
  while (1)
  {
    v32 = v30 + v31;
    if (v27 <= v30 + v31)
    {
      break;
    }

    v30 = [(__CFString *)v24 rangeOfCharacterFromSet:_spellServer_suggestGuessesForWordRange_inString_languageObject_options_tagger_errorModel_guessesDictionaries__disallowedInternalPunctuationCharacterSet options:0 range:v32, v27 - (v30 + v31)];
    if (v31)
    {
      v33 = v30 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (!v33 && v30 + v31 < v27)
    {
      goto LABEL_33;
    }
  }

  if (!v27)
  {
    goto LABEL_40;
  }

LABEL_33:
  v203.location = 0;
  v203.length = v27;
  if (v27 != CFStringGetBytes(v24, v203, encoding, 0, 0, &buffer, 254, &v177))
  {
LABEL_40:
    v156 = 0;
    v157 = 0;
    goto LABEL_165;
  }

  v35 = v177;
  v183[v177 - 1] = 0;
  v36 = buffer;
  v37 = buffer - 65;
  v38 = v37 < 0x1A;
  v133 = v26;
  if (encoding > 1279)
  {
    v39 = v28;
    if (encoding != 1284 && encoding != 1280)
    {
      goto LABEL_54;
    }

    v38 = 1;
    if (v37 < 0x1A)
    {
      goto LABEL_54;
    }

    if (buffer - 192 < 0x17)
    {
      goto LABEL_54;
    }

    if (buffer - 216 >= 7)
    {
      v38 = 0;
      if (buffer - 138 > 0x15 || ((1 << (buffer + 118)) & 0x200015) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_53:
    v40 = v35 > 1;
    v38 = 1;
LABEL_58:
    v41 = 0;
    v42 = v183;
    v43 = 1;
    v44 = 1;
    while (1)
    {
      v45 = v41;
      v46 = v36;
      v41 = 1;
      v47 = v36 - 140;
      if ((v47 > 0x3A || ((1 << v47) & 0x400000000010001) == 0) && v46 != 223 && v46 != 230)
      {
        v41 = v45;
      }

      v48 = v46 - 48 < 0xA;
      v49 = (v46 & 0xFFFFFFDF) - 65;
      if (encoding > 1279)
      {
        if (encoding == 1284)
        {
          v53 = v46 - 192;
          v54 = v46 - 216;
          if (v49 >= 0x1A && v54 >= 0x1F && v46 <= 0xF7 && v53 >= 0x17 && (v46 - 138 > 0x15 || ((1 << (v46 + 118)) & 0x350015) == 0))
          {
LABEL_107:
            if (v46 != 39 && v46 != 45)
            {
              v43 = 0;
            }

            goto LABEL_122;
          }

          LODWORD(v51) = 1;
          if (v46 - 65 >= 0x1A && v53 >= 0x17)
          {
            LODWORD(v51) = 1;
            if (v54 >= 7)
            {
              goto LABEL_104;
            }
          }
        }

        else
        {
          if (encoding != 1280)
          {
LABEL_82:
            if (v49 > 0x19)
            {
              goto LABEL_107;
            }

            v57 = v46 - 65 >= 0x1A;
            goto LABEL_118;
          }

          v50 = v46 - 192;
          if (v49 >= 0x1A && v46 <= 0xF7 && v50 >= 0x17 && v46 - 216 >= 0x1F && (v46 - 138 > 0x15 || ((1 << (v46 + 118)) & 0x350015) == 0))
          {
            goto LABEL_107;
          }

          LODWORD(v51) = 1;
          if (v46 - 65 >= 0x1A && v50 >= 0x17)
          {
            LODWORD(v51) = 1;
            if (v46 - 216 >= 7)
            {
LABEL_104:
              v55 = v46 - 138;
              if (v55 <= 0x15 && ((1 << v55) & 0x200015) != 0)
              {
                goto LABEL_121;
              }

LABEL_117:
              LODWORD(v51) = 0;
            }
          }
        }
      }

      else if (encoding == 514)
      {
        v52 = v46 - 192;
        if (v49 >= 0x1A && v46 <= 0xF7 && v52 >= 0x17 && v46 - 216 >= 0x1F && (v46 - 161 > 0x1E || ((1 << (v46 + 95)) & 0x6F356F35) == 0))
        {
          goto LABEL_107;
        }

        LODWORD(v51) = 1;
        if (v46 - 65 >= 0x1A && v52 >= 0x17)
        {
          v56 = v46 + 95;
          if (v56 >= 0x3Eu)
          {
            goto LABEL_117;
          }

          v51 = 0x3F80000000006F35uLL >> v56;
        }
      }

      else
      {
        if (encoding != 517)
        {
          goto LABEL_82;
        }

        if (v46 - 161 >= 0xC && v46 - 174 >= 0x42 && v49 >= 0x1A && v46 - 241 >= 0xC && (v46 & 0xFE) != 0xFE)
        {
          goto LABEL_107;
        }

        LODWORD(v51) = 1;
        if (v46 - 65 >= 0x1A && v46 - 161 >= 0xC)
        {
          v57 = v46 - 174 >= 0x22;
LABEL_118:
          LODWORD(v51) = !v57;
        }
      }

LABEL_121:
      v40 &= v51;
LABEL_122:
      v44 &= v48;
      v58 = *v42++;
      v36 = v58;
      if (!v58)
      {
        v59 = self;
        v132 = v43;
        goto LABEL_125;
      }
    }
  }

  v39 = v28;
  if (encoding == 514)
  {
    v38 = 1;
    if (v37 < 0x1A)
    {
      goto LABEL_54;
    }

    if (buffer - 192 < 0x17)
    {
      goto LABEL_54;
    }

    v38 = 0;
    if (buffer - 161 > 0x3D || ((1 << (buffer + 95)) & 0x3F80000000006F35) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (encoding == 517)
  {
    v38 = 1;
    if (v37 >= 0x1A && buffer - 161 >= 0xC)
    {
      v38 = buffer - 174 < 0x22;
    }
  }

LABEL_54:
  v40 = v35 > 1 && v38;
  if (buffer)
  {
    goto LABEL_58;
  }

  v59 = self;
  LOBYTE(v41) = 0;
  v44 = 1;
  v132 = 1;
LABEL_125:
  v60 = v38;
  v61 = (v40 ^ 1) & v38;
  v62 = [v39 objectForKey:v152];
  if (!v62)
  {
    v62 = [v39 objectForKey:{-[__CFString lowercaseString](v152, "lowercaseString")}];
  }

  v157 = v62;
  v134 = v155 & v61;
  v63 = [v62 length];
  v64 = v157;
  if (v157)
  {
    v65 = v60;
    if (v63)
    {
      v66 = v59;
      if (v40)
      {
        if (v27 < 5)
        {
          v64 = 0;
          goto LABEL_143;
        }

        v67 = uppercasedString(v157, v136);
      }

      else
      {
        if (!v65)
        {
LABEL_143:
          v157 = v64;
          [(PRCandidateList *)v158 addCandidateWithString:v64 errorType:6];
          goto LABEL_144;
        }

        v67 = initialCapitalizedString(v157, v136);
      }

      v64 = v67;
      goto LABEL_143;
    }
  }

  else
  {
    v65 = v60;
  }

  v66 = v59;
LABEL_144:
  if ((v40 | v65))
  {
    v156 = 0;
    v68 = v61;
    v69 = v61 ^ 1 | v40;
    v71 = v152;
    v70 = a6;
  }

  else
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v72 = [obj countByEnumeratingWithState:&v171 objects:v181 count:16];
    v70 = a6;
    if (v72)
    {
      v73 = v72;
      v74 = *v172;
LABEL_148:
      v75 = 0;
      while (1)
      {
        if (*v172 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v76 = [*(*(&v171 + 1) + 8 * v75) objectForKey:{-[__CFString lowercaseString](v152, "lowercaseString")}];
        if (v76)
        {
          break;
        }

        ++v75;
        v70 = a6;
        if (v73 == v75)
        {
          v73 = [obj countByEnumeratingWithState:&v171 objects:v181 count:16];
          if (v73)
          {
            goto LABEL_148;
          }

          v156 = 0;
          goto LABEL_160;
        }
      }

      v77 = v76;
      v70 = a6;
      v156 = v76;
      if (![v76 length])
      {
LABEL_160:
        v69 = 0;
        v66 = self;
        goto LABEL_161;
      }

      v71 = v152;
      v66 = self;
      if (([v77 isEqualToString:v152] & 1) == 0)
      {
        [(PRCandidateList *)v158 addCandidateWithString:v77 errorType:2];
      }

      v69 = 0;
    }

    else
    {
      v156 = 0;
      v134 = 0;
      v69 = 0;
LABEL_161:
      v71 = v152;
    }

    v68 = v61;
  }

  if (!((v27 > v32) | v44 & 1))
  {
    v78 = v68 & 1;
    v79 = v69 & 1;
    [(AppleSpell *)v66 _addTwoLetterWordGuessesForWord:v71 buffer:&buffer length:v177 languageObject:v70 isCapitalized:v68 & 1 isAllCaps:v69 & 1 twoLetterWords:v139 candidateList:v158];
    [(AppleSpell *)v66 _addConnectionGuessesForWord:v71 buffer:&buffer length:v177 languageObject:v70 connection:v141 candidateList:v158];
    BYTE6(v131) = v137;
    WORD2(v131) = v134;
    BYTE3(v131) = v41 & 1;
    BYTE2(v131) = v132 & 1;
    BYTE1(v131) = v79;
    LOBYTE(v131) = v78;
    [AppleSpell _addAdditionalGuessesForWord:v66 sender:"_addAdditionalGuessesForWord:sender:buffer:length:languageObject:connection:accents:isCapitalized:isAllCaps:isAllAlpha:hasLigature:suggestPossessive:checkUser:checkHyphens:candidateList:" buffer:v71 length:a3 languageObject:&buffer connection:v177 accents:v70 isCapitalized:v141 isAllCaps:v138 isAllAlpha:v131 hasLigature:v158 suggestPossessive:? checkUser:? checkHyphens:? candidateList:?];
    LOWORD(usedBufLen) = v78;
    [(AppleSpell *)v66 _addSpaceInsertionGuessesForWord:v71 sender:a3 buffer:&buffer length:v177 languageObject:v70 connection:v141 isCapitalized:usedBufLen checkUser:v133 oneLetterWords:v139 twoLetterWords:v158 candidateList:?];
    LOWORD(usedBufLena) = v78;
    [(AppleSpell *)v66 addLexiconGuessesForWord:v71 buffer:&buffer length:v177 languageObject:v70 minCorrectionLength:3 minExtendedCorrectionLength:5 isCapitalized:usedBufLena stopAfterFreeInsertions:v158 toGuesses:?];
  }

LABEL_165:
  if (a8)
  {
    v80 = [(AppleSpell *)self _rankedCandidatesForCandidateList:v158 languageObject:a6 tagger:a8 appIdentifier:v147 parameterBundles:v146];
    if (v80)
    {
      v81 = v80;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v82 = [v80 countByEnumeratingWithState:&v167 objects:v180 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v168;
        do
        {
          for (i = 0; i != v83; ++i)
          {
            if (*v168 != v84)
            {
              objc_enumerationMutation(v81);
            }

            v86 = *(*(&v167 + 1) + 8 * i);
            if (([v86 isBlocklisted] & 1) == 0)
            {
              v87 = [v86 string];
              if (([v15 containsObject:v87] & 1) == 0)
              {
                [v15 addObject:v87];
                if (!((a10 == 0) | v148 & 1))
                {
                  v88 = MEMORY[0x1E695DF20];
                  v89 = MEMORY[0x1E696AD98];
                  [v86 score];
                  [a10 addObject:{objc_msgSend(v88, "dictionaryWithObjectsAndKeys:", v87, @"Guess", objc_msgSend(v89, "numberWithDouble:"), @"Score", 0)}];
                }
              }
            }
          }

          v83 = [v81 countByEnumeratingWithState:&v167 objects:v180 count:16];
        }

        while (v83);
      }
    }
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v90 = [(PRCandidateList *)v158 candidates];
  v91 = [v90 countByEnumeratingWithState:&v163 objects:v179 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v164;
    do
    {
      for (j = 0; j != v92; ++j)
      {
        if (*v164 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = *(*(&v163 + 1) + 8 * j);
        if (([v95 isBlocklisted] & 1) == 0)
        {
          v96 = [v95 string];
          if (([v15 containsObject:v96] & 1) == 0)
          {
            [v15 addObject:v96];
            if (!((a10 == 0) | v148 & 1))
            {
              v97 = MEMORY[0x1E695DF20];
              v98 = MEMORY[0x1E696AD98];
              [v95 score];
              [a10 addObject:{objc_msgSend(v97, "dictionaryWithObjectsAndKeys:", v96, @"Guess", objc_msgSend(v98, "numberWithDouble:"), @"Score", 0)}];
            }
          }
        }
      }

      v92 = [v90 countByEnumeratingWithState:&v163 objects:v179 count:16];
    }

    while (v92);
  }

  [v15 removeObject:v152];
  v99 = [v15 count];
  v100 = self;
  v101 = a6;
  if (v99)
  {
    v102 = v99;
    if (v141)
    {
      v103 = 0;
    }

    else
    {
      v103 = v140;
    }

    do
    {
      v104 = [v15 objectAtIndex:--v102];
      v105 = [(__CFString *)v104 length];
      if (v157 && ([(__CFString *)v104 isEqualToString:v157]& 1) != 0)
      {
        continue;
      }

      if (v156 && ([(__CFString *)v104 isEqualToString:v156]& 1) != 0)
      {
        continue;
      }

      v204.location = 0;
      v204.length = v105;
      if (v105 != CFStringGetBytes(v104, v204, encoding, 0, 0, &buffer, 254, &v177))
      {
        continue;
      }

      if (![(AppleSpell *)v100 checkWordBuffer:&buffer length:v177 languageObject:v101 index:1]&& ![(AppleSpell *)v100 checkNegativeWordBuffer:&buffer length:v177 languageObject:v101])
      {
        if (v103)
        {
          continue;
        }

        if (v105 < v145)
        {
          continue;
        }

        if (v177 < v145)
        {
          continue;
        }

        [(__CFString *)v104 rangeOfString:@" "];
        if (v106)
        {
          continue;
        }

        [(__CFString *)v104 rangeOfString:@"-"];
        if (v107)
        {
          continue;
        }

        [(__CFString *)v104 rangeOfString:@"'"];
        if (v108)
        {
          if ([(__CFString *)v104 rangeOfString:@"'"])
          {
            continue;
          }
        }

        if ([v15 count] <= v135 || (objc_msgSend(a3, "isWordInUserDictionaries:caseSensitive:", v104, 0) & 1) != 0)
        {
          continue;
        }

        if (v140)
        {
          if ([(AppleSpell *)v100 checkNameWordBuffer:&buffer length:v177 languageObject:v101 globalOnly:0])
          {
            continue;
          }

          v109 = [(AppleSpell *)v100 checkWordBuffer:&buffer length:v177 languageObject:v101 index:0];
          if (!v141 || v109)
          {
            continue;
          }

          *&v183[v177 - 2] = 42;
          memset(v201 + 8, 0, 136);
          v184 = 0u;
          v185 = 0u;
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v190 = 0u;
          v191 = 0u;
          v192 = 0u;
          v193 = 0u;
          v194 = 0u;
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          v200 = 0;
          HIDWORD(v199) = 0;
          *&v201[0] = &buffer;
          *(&v201[6] + 1) = &v184;
          HIBYTE(v201[7]) = 1;
          *(&v201[8] + 1) = *v141;
          PRword(v201, 5, 0);
          v110 = *(&v201[0] + 1);
          if (*(&v201[0] + 1) && *(*(&v201[0] + 1) + 8) && **(&v201[0] + 1) && (v111 = *(*(&v201[0] + 1) + 18), *(*(&v201[0] + 1) + 18)))
          {
            v112 = 0;
            do
            {
              v113 = CFStringCreateWithCString(0, (*v110 + *(v110[1] + 2 * v112)), encoding);
              if (v113)
              {
                v114 = [(__CFString *)v104 caseInsensitiveCompare:v113]== 0;
              }

              else
              {
                v114 = 0;
              }

              if (v114)
              {
                break;
              }

              ++v112;
            }

            while (v112 < v111);
            PRword(v201, 17, 0);
            v100 = self;
            v101 = a6;
            if (v114)
            {
              continue;
            }
          }

          else
          {
            PRword(v201, 17, 0);
            v101 = a6;
          }
        }

        else if (![(AppleSpell *)v100 checkWordBuffer:&buffer length:v177 languageObject:v101 index:0])
        {
          continue;
        }
      }

      [v15 removeObjectAtIndex:v102];
    }

    while (v102);
  }

  if (a10)
  {
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v115 = [v15 countByEnumeratingWithState:&v159 objects:v178 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v160;
      do
      {
        for (k = 0; k != v116; ++k)
        {
          if (*v160 != v117)
          {
            objc_enumerationMutation(v15);
          }

          v119 = *(*(&v159 + 1) + 8 * k);
          v120 = [(PRCandidateList *)v158 candidateWithString:v119];
          if (v120)
          {
            v121 = v120;
            if ([v120 hasCustomErrorScore])
            {
              [v121 errorScore];
              [a10 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v119, @"Guess", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:"), @"Score", 0)}];
            }
          }
        }

        v116 = [v15 countByEnumeratingWithState:&v159 objects:v178 count:16];
      }

      while (v116);
    }

    [a10 sortUsingComparator:&__block_literal_global_9];
    v100 = self;
  }

  v122 = [v15 count];
  if (v142)
  {
    v123 = v122;
    if (v122)
    {
      v124 = 0;
      do
      {
        v125 = [v15 objectAtIndex:v124];
        [v125 rangeOfString:@"'"];
        if (v126)
        {
          [v15 replaceObjectAtIndex:v124 withObject:{objc_msgSend(v125, "stringByReplacingOccurrencesOfString:withString:", @"'", v143)}];
        }

        ++v124;
      }

      while (v123 != v124);
    }
  }

  [(AppleSpell *)v100 resetTimer];

LABEL_250:
  v127 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __134__AppleSpell_Guessing___spellServer_suggestGuessesForWordRange_inString_languageObject_options_tagger_errorModel_guessesDictionaries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKey:@"Score"];
  v5 = [a3 objectForKey:@"Score"];
  [v4 floatValue];
  v7 = v6;
  [v5 floatValue];
  if (v7 > v8)
  {
    return -1;
  }

  [v4 floatValue];
  v11 = v10;
  [v5 floatValue];
  return v11 < v12;
}

- (id)_spellServer:(id)a3 suggestGuessesForWordRange:(_NSRange)a4 inString:(id)a5 languageObject:(id)a6 options:(id)a7
{
  length = a4.length;
  location = a4.location;
  v14 = -[AppleSpell taggerForLanguageObject:string:range:](self, "taggerForLanguageObject:string:range:", a6, a5, 0, [a5 length]);
  v15 = -[AppleSpell _spellServer:suggestGuessesForWordRange:inString:languageObject:options:tagger:errorModel:guessesDictionaries:](self, "_spellServer:suggestGuessesForWordRange:inString:languageObject:options:tagger:errorModel:guessesDictionaries:", a3, location, length, a5, a6, a7, v14, [a7 objectForKey:PRErrorModelKey], 0);
  [(AppleSpell *)self invalidateTagger:v14];
  return v15;
}

- (id)spellServer:(id)a3 suggestGuessesForWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7
{
  length = a4.length;
  location = a4.location;
  if (!a6 || (lastLanguage = a6, ([a6 isEqualToString:@"und"] & 1) != 0) || -[__CFString isEqualToString:](lastLanguage, "isEqualToString:", @"Multilingual"))
  {
    lastLanguage = self->_lastLanguage;
    if (!lastLanguage)
    {
      if ([(NSArray *)self->_userPreferredLanguages count])
      {
        lastLanguage = [(NSArray *)self->_userPreferredLanguages objectAtIndex:0];
      }

      else
      {
        lastLanguage = @"en";
      }
    }
  }

  v14 = [PRLanguage languageObjectWithIdentifier:lastLanguage];

  return [(AppleSpell *)self _spellServer:a3 suggestGuessesForWordRange:location inString:length languageObject:a5 options:v14, a7];
}

- (id)spellServer:(id)a3 suggestContextualGuessDictionariesForWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7
{
  length = a4.length;
  location = a4.location;
  if (!a6 || (lastLanguage = a6, ([a6 isEqualToString:@"und"] & 1) != 0) || -[__CFString isEqualToString:](lastLanguage, "isEqualToString:", @"Multilingual"))
  {
    lastLanguage = self->_lastLanguage;
    if (!lastLanguage)
    {
      if ([(NSArray *)self->_userPreferredLanguages count])
      {
        lastLanguage = [(NSArray *)self->_userPreferredLanguages objectAtIndex:0];
      }

      else
      {
        lastLanguage = @"en";
      }
    }
  }

  v14 = [PRLanguage languageObjectWithIdentifier:lastLanguage];
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = -[AppleSpell taggerForLanguageObject:string:range:](self, "taggerForLanguageObject:string:range:", v14, a5, 0, [a5 length]);
  v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a7];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"ContextualGuessDictionaries"}];
  [(AppleSpell *)self _spellServer:a3 suggestGuessesForWordRange:location inString:length languageObject:a5 options:v14 tagger:v17 errorModel:v16 guessesDictionaries:0, v15];
  [(AppleSpell *)self invalidateTagger:v16];
  return v15;
}

- (id)spellServer:(id)a3 suggestGuessDictionariesForWordRange:(_NSRange)a4 inString:(id)a5 inLanguage:(id)a6 options:(id)a7 errorModel:(id)a8
{
  length = a4.length;
  location = a4.location;
  if (!a6 || (lastLanguage = a6, ([a6 isEqualToString:@"und"] & 1) != 0) || -[__CFString isEqualToString:](lastLanguage, "isEqualToString:", @"Multilingual"))
  {
    lastLanguage = self->_lastLanguage;
    if (!lastLanguage)
    {
      if ([(NSArray *)self->_userPreferredLanguages count])
      {
        lastLanguage = [(NSArray *)self->_userPreferredLanguages objectAtIndex:0];
      }

      else
      {
        lastLanguage = @"en";
      }
    }
  }

  v15 = [PRLanguage languageObjectWithIdentifier:lastLanguage];
  v16 = [MEMORY[0x1E695DF70] array];
  [(AppleSpell *)self _spellServer:a3 suggestGuessesForWordRange:location inString:length languageObject:a5 options:v15 tagger:a7 errorModel:0 guessesDictionaries:a8, v16];
  return v16;
}

- (id)englishStringsFromWordBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:12];
  v9 = [PRLanguage languageObjectWithIdentifier:@"en_CN"];
  if (a4)
  {
    v10 = 0;
    v11 = *a3;
    do
    {
      v12 = a3[v10];
      v13 = v12 == v11;
      ++v10;
    }

    while (v12 == v11 && v10 < a4);
    v15 = 0;
    while (1)
    {
      v16 = a3[v15] - 99;
      v17 = v16 > 0x15;
      v18 = (1 << v16) & 0x280643;
      if (v17 || v18 == 0)
      {
        break;
      }

      if (++v15 >= a4)
      {
        v20 = 1;
        goto LABEL_15;
      }
    }

    v20 = 0;
LABEL_15:
    v21 = 0;
    while (1)
    {
      v22 = a3[v21];
      v23 = v22 <= 0xF7 && v22 - 216 >= 0x1F;
      v24 = v23 && v22 - 192 >= 0x17;
      if (v24 && (v22 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        v26 = v22 - 138;
        v17 = v26 > 0x15;
        v27 = (1 << v26) & 0x350015;
        if (v17 || v27 == 0)
        {
          break;
        }
      }

      if (++v21 >= a4)
      {
        v29 = 0;
        goto LABEL_33;
      }
    }

    v29 = 1;
LABEL_33:
    v30 = 0;
    while (1)
    {
      v31 = a3[v30];
      v32 = 0;
      v33 = (v31 - 65) >= 0x1A && (v31 - 192) >= 0x17;
      if (!v33 || (v31 - 216) < 7)
      {
        break;
      }

      v34 = v31 - 138;
      v17 = v34 > 0x15;
      v35 = (1 << v34) & 0x200015;
      if (!v17 && v35 != 0)
      {
        break;
      }

      if (++v30 >= a4)
      {
        v32 = 1;
        break;
      }
    }

    v37 = 0;
    v66 = v29;
    v67 = v20;
    while (1)
    {
      v38 = a3[v37];
      v39 = v38 <= 0xF7 && v38 - 97 >= 0x1A;
      if (!v39 || v38 - 223 < 0x18)
      {
        break;
      }

      v41 = v38 - 154;
      v17 = v41 > 4;
      v42 = (1 << v41) & 0x15;
      if (!v17 && v42 != 0)
      {
        break;
      }

      if (++v37 >= a4)
      {
        v44 = 0;
        goto LABEL_65;
      }
    }

    v44 = 1;
  }

  else
  {
    v44 = 0;
    v32 = 1;
    v66 = 0;
    v67 = 1;
    v13 = 1;
  }

LABEL_65:
  v45 = englishStringsFromWordBuffer_length_connection__autocorrectionDictionary;
  if (!englishStringsFromWordBuffer_length_connection__autocorrectionDictionary)
  {
    v45 = [(AppleSpell *)self autocorrectionDictionaryForLanguageObject:v9];
    englishStringsFromWordBuffer_length_connection__autocorrectionDictionary = v45;
  }

  v46 = self;
  v47 = [v45 objectForKey:v8];
  if (!v47)
  {
    v48 = [englishStringsFromWordBuffer_length_connection__autocorrectionDictionary objectForKey:{objc_msgSend(v8, "lowercaseString")}];
    v47 = v48;
    if (((v44 | v32) & 1) == 0)
    {
      v47 = [v48 uppercaseString];
    }
  }

  v72 = 0;
  if ([&stru_1F4E0A7A0 isEqualToString:v47])
  {
    goto LABEL_71;
  }

  if (v47)
  {
LABEL_75:

    goto LABEL_76;
  }

  v51 = *a3;
  v52 = v51 - 65;
  v53 = v51 - 192;
  if ((v51 - 65) >= 0x1A && v53 >= 0x17 && (v51 - 216) >= 7 && ((v51 - 138) > 0x15 || ((1 << (v51 + 118)) & 0x200015) == 0))
  {
    if (next_pinyin(a3, a4, 0, 1, &v72, 0) && v72 == &a3[a4])
    {
      goto LABEL_140;
    }

    v51 = *a3;
    v52 = v51 - 65;
    v53 = v51 - 192;
  }

  if (v52 >= 0x1A && v53 >= 0x17 && (v51 - 216) >= 7 && ((v51 - 138) > 0x15 || ((1 << (v51 + 118)) & 0x200015) == 0) && ((v13 | v67 | v66) & 1) != 0 || a4 <= 3 && (isUpperCase(v51) & 1) == 0)
  {
    goto LABEL_140;
  }

  WORD2(v64) = 0;
  LODWORD(v64) = 65793;
  if ([AppleSpell validateWordBuffer:v46 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:a3 connection:a4 sender:v9 checkBase:v64 checkDict:0 checkTemp:? checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?]&& ((isUpperCase(*a3) & 1) != 0 || ![(AppleSpell *)v46 checkWordBuffer:a3 length:a4 languageObject:v9 index:1]) && ![(AppleSpell *)v46 checkNegativeWordBuffer:a3 length:a4 languageObject:v9])
  {
    v56 = isUpperCase(*a3);
    if (a4 < 2 || !v56 || !next_pinyin(a3 + 1, a4 - 1, 0, 1, &v72, 0) || v72 != &a3[a4] || ![(AppleSpell *)v46 checkWordBuffer:a3 length:a4 languageObject:v9 index:1])
    {
      v57 = englishStringsFromWordBuffer_length_connection__capitalizationDictionaryArray;
      if (!englishStringsFromWordBuffer_length_connection__capitalizationDictionaryArray)
      {
        v57 = [(AppleSpell *)v46 capitalizationDictionaryArrayForLanguageObject:v9];
        englishStringsFromWordBuffer_length_connection__capitalizationDictionaryArray = v57;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v58 = [v57 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v69;
        while (2)
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v69 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = [*(*(&v68 + 1) + 8 * i) objectForKey:v8];
            if (v62)
            {
              v47 = v62;
              goto LABEL_75;
            }
          }

          v59 = [v57 countByEnumeratingWithState:&v68 objects:v73 count:16];
          if (v59)
          {
            continue;
          }

          break;
        }
      }

LABEL_71:
      v49 = v8;
      goto LABEL_72;
    }

LABEL_140:

LABEL_141:
    result = 0;
    goto LABEL_142;
  }

  if (a4 < 4)
  {
    goto LABEL_140;
  }

  v54 = *a3;
  if (v54 - 65 < 0x1A || v54 - 192 < 0x17 || v54 - 216 < 7 || v54 - 138 <= 0x15 && ((1 << (v54 + 118)) & 0x200015) != 0)
  {
    goto LABEL_140;
  }

  if (a4 + 1 > 1)
  {
    v55 = a4 + 1;
  }

  else
  {
    v55 = 1;
  }

  memcpy(__dst, a3, v55);
  if (v54 <= 0xF7 && v54 - 97 >= 0x1A && v54 - 223 >= 0x18)
  {
    if (v54 - 154 > 4 || ((1 << (v54 + 102)) & 0x15) == 0)
    {
      goto LABEL_137;
    }

LABEL_136:
    LOBYTE(v54) = v54 - 16;
    goto LABEL_137;
  }

  if (v54 - 154 <= 4 && ((1 << (v54 + 102)) & 0x15) != 0)
  {
    goto LABEL_136;
  }

  if (v54 != 223)
  {
    if (v54 == 255)
    {
      LOBYTE(v54) = -97;
    }

    else
    {
      LOBYTE(v54) = v54 - 32;
    }
  }

LABEL_137:
  __dst[0] = v54;
  WORD2(v65) = 0;
  LODWORD(v65) = 65793;
  if (![AppleSpell validateWordBuffer:v46 length:"validateWordBuffer:length:languageObject:connection:sender:checkBase:checkDict:checkTemp:checkNames:checkHyphens:checkIntercaps:checkOptions:depth:" languageObject:__dst connection:a4 sender:v9 checkBase:v65 checkDict:0 checkTemp:? checkNames:? checkHyphens:? checkIntercaps:? checkOptions:? depth:?]|| [(AppleSpell *)v46 checkWordBuffer:__dst length:a4 languageObject:v9 index:1]|| [(AppleSpell *)v46 checkNegativeWordBuffer:__dst length:a4 languageObject:v9])
  {
    goto LABEL_140;
  }

  v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__dst length:a4 encoding:12];
LABEL_72:
  v47 = v49;

  if (!v47)
  {
    goto LABEL_141;
  }

LABEL_76:
  if ([v47 isEqualToString:@"apple"])
  {
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Apple", @"apple", 0}];
  }

  else
  {
    result = [MEMORY[0x1E695DEC8] arrayWithObject:v47];
  }

LABEL_142:
  v63 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)englishStringFromWordBuffer:(char *)a3 length:(unint64_t)a4 connection:(_PR_DB_IO *)a5
{
  v5 = [(AppleSpell *)self englishStringsFromWordBuffer:a3 length:a4 connection:a5];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (![v5 count])
  {
    return 0;
  }

  return [v6 objectAtIndex:0];
}

- (void)addSpecialModifiedPinyinToArray:(id)a3 inBuffer:(char *)a4 length:(unint64_t)a5 atEnd:(BOOL)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  if (a5 < 4)
  {
    goto LABEL_68;
  }

  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (a4[v9] != 105)
    {
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }

    v11 = 0;
    v12 = a4[v9 + 1];
    if (v12 > 0x6C)
    {
      if (v12 == 109)
      {
LABEL_19:
        if (a4[v9 + 2] != 97 || a4[v9 + 3] != 99)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      if (v12 != 112)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v12 == 77)
      {
        goto LABEL_19;
      }

      if (v12 != 80)
      {
        goto LABEL_27;
      }
    }

    v13 = a4[v9 + 2];
    if (v13 != 111 && v13 != 97 || a4[v9 + 3] != 100)
    {
      v11 = 0;
      if (v9 + 5 >= a5 || v13 != 104)
      {
        goto LABEL_27;
      }

      if (a4[v9 + 3] != 111 || a4[v9 + 4] != 110 || a4[v9 + 5] != 101)
      {
        goto LABEL_26;
      }

      v11 = 6;
      goto LABEL_22;
    }

LABEL_21:
    v11 = 4;
LABEL_22:
    if (v11 + v9 < a5 && a4[v11 + v9] == 115)
    {
      ++v11;
    }

    v10 = v9;
LABEL_27:
    v14 = v10 + v11 < a5;
    if (a6 && v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v11;
    }

    if (a6 && v14)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v9 + 4 >= a5)
    {
      break;
    }

    ++v9;
  }

  while (!v15);
  if (v15 && (!v10 || findPinyin(a4, v10, 0, 1, 0, 0, 0, 0, &v31, 0, &v30, &v32 + 1, &v29, 0, 0, 0, 0, 0) && (v32 & 0x100) == 0 && v31 == v10))
  {
    v16 = v10 + v15;
    v17 = &a4[v10 + v15];
    v18 = a5 - (v10 + v15);
    if (a5 > v10 + v15 && *(v17 - 1) == 115)
    {
      if (findPinyin(v17 - 1, v18 + 1, 0, 1, 0, 0, 0, 0, &v28, 0, &v27, &v32, &v26, 0, 0, 0, 0, 0))
      {
        v18 = v16 + v28 - 1;
        if (v18 == a5)
        {
          v11 = v15 - 1;
          goto LABEL_45;
        }
      }
    }

    if (a5 == v16 || findPinyin(&a4[v10 + v15], a5 - v16, 0, 1, 0, 0, 0, 0, &v28, 0, &v27, &v32, &v26, 0, 0, 0, 0, 0) && (LOBYTE(v18) = v28 + v16, v28 + v16 == a5))
    {
LABEL_45:
      if (v11)
      {
        memcpy(&__dst, &a4[v10], v11);
        LOBYTE(v18) = v34;
      }

      if (v18 > 0xF7u || v18 - 97 < 0x1A || v18 - 223 < 0x18)
      {
        if (v18 - 154 > 4 || ((1 << (v18 + 102)) & 0x15) == 0)
        {
          if (v18 != 223)
          {
            if (v18 == 255)
            {
              LOBYTE(v18) = -97;
            }

            else
            {
              LOBYTE(v18) = v18 - 32;
            }
          }

          goto LABEL_59;
        }
      }

      else if (v18 - 154 > 4 || ((1 << (v18 + 102)) & 0x15) == 0)
      {
LABEL_59:
        v34 = v18;
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&__dst length:v11 encoding:12];
        if (v10)
        {
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a4 length:v10 encoding:12];
        }

        else
        {
          v20 = &stru_1F4E0A7A0;
        }

        if (a5 <= v11 + v10)
        {
          v21 = &stru_1F4E0A7A0;
        }

        else
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&a4[v11 + v10] length:a5 - (v11 + v10) encoding:12];
        }

        [v19 length];
        v22 = [PRPinyinString alloc];
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v20, v19, v21];
        v24 = [(PRPinyinString *)v22 initWithString:v23 syllableCount:v30 + v27 + 1 lastSyllableIsPartial:v32 score:v29 + v26 + 128 originalLength:a5 modificationType:5 originalModificationRange:v10 finalModificationRange:v11 originalSyllableRange:v10, v11, v10, v11];
        if (([a3 containsObject:v24] & 1) == 0)
        {
          [a3 addObject:v24];
        }

        goto LABEL_68;
      }

      LOBYTE(v18) = v18 - 16;
      goto LABEL_59;
    }
  }

LABEL_68:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)addModifiedPinyinToArray:(id)a3 connection:(_PR_DB_IO *)a4 fromIndex:(unint64_t)a5 prevIndex:(unint64_t)a6 prevPrevIndex:(unint64_t)a7 startingModificationsAt:(unint64_t)a8 inBuffer:(char *)a9 length:(unint64_t)a10 initialSyllableCount:(unint64_t)a11 initialScore:(unint64_t)a12 prevScore:(unint64_t)a13 prevPrevScore:(unint64_t)a14 lastSyllableScore:(unint64_t)a15 couldBeAbbreviatedPinyin:(BOOL)a16
{
  v20 = a9;
  v21 = a10;
  v334 = *MEMORY[0x1E69E9840];
  v331 = 0;
  v332 = 0;
  v329 = 0;
  v330 = 0;
  v328 = 0;
  v289 = [PRLanguage languageObjectWithIdentifier:@"en_CN"];
  v22 = 0;
  v327 = 0;
  v325 = a5;
  v326 = 0;
  v314 = self;
  v305 = a6;
  if (a7 < a5 && a7 < a6)
  {
    v22 = 0;
    v316 = &a9[a7];
    v309 = a10 - a7;
    v23 = a10 - a7 - 14;
    v24 = 14;
    v299 = a7;
    do
    {
      if (a7 + v24 <= v21)
      {
        v329 = 0;
        v330 = 0;
        v331 = 0;
        v25 = [(AppleSpell *)self englishStringFromWordBuffer:v316 length:v24 connection:a4];
        if (v25)
        {
          v26 = v25;
          if (v309 == v24 || findPinyin(&v316[v24], v23, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v309 - v331 == v24)
          {
            if (a7)
            {
              v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v20 length:a7 encoding:12];
              v28 = &stru_1F4E0A7A0;
            }

            else
            {
              v28 = &stru_1F4E0A7A0;
              v27 = &stru_1F4E0A7A0;
            }

            if (a7 + v24 < a10)
            {
              v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v316[v24] length:v23 encoding:12];
            }

            v29 = [v26 length];
            v30 = [(__CFString *)v27 length];
            v31 = [(__CFString *)v27 length];
            v32 = [PRPinyinString alloc];
            v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v27, v26, v28];
            v21 = a10;
            v34 = [(PRPinyinString *)v32 initWithString:v33 syllableCount:a11 - 1 + v330 lastSyllableIsPartial:v328 score:a14 + 128 + v329 originalLength:a10 modificationType:5 originalModificationRange:v30 finalModificationRange:v24 originalSyllableRange:v31, v29, v30, v24];
            if (([a3 containsObject:v34] & 1) == 0)
            {
              [a3 addObject:v34];
            }

            v22 = 1;
            a5 = v325;
            self = v314;
            v20 = a9;
            a7 = v299;
          }
        }
      }

      --v24;
      ++v23;
    }

    while (v24 > 2);
  }

  v35 = v305;
  if (a7 + 2 < v305 && next_pinyin(&a9[a7], v305 - 1 - a7, 0, 0, &v326, &v327) && &a9[v305 - 1] == v326)
  {
    v36 = v305 - 1;
    v310 = &a9[v305];
    v37 = v21 - v305 - 13;
    v317 = v305 - v21 + 13;
    for (i = 14; i > 2; --i)
    {
      v39 = v35 + i - 1;
      if (v39 <= v21)
      {
        v329 = 0;
        v330 = 0;
        v331 = 0;
        v40 = [(AppleSpell *)self englishStringFromWordBuffer:&a9[v36] length:i connection:a4];
        if (v40)
        {
          v41 = v40;
          if (v317 + i == 14 || findPinyin(&v310[i - 1], v37, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v317 + i + v331 == 14)
          {
            v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a9 length:v36 encoding:12];
            v43 = &stru_1F4E0A7A0;
            if (v39 < v21)
            {
              v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v310[i - 1] length:v37 encoding:12];
            }

            v44 = [v41 length];
            v45 = [v42 length];
            v46 = [v42 length];
            v47 = [PRPinyinString alloc];
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v42, v41, v43];
            v283 = v46;
            v21 = a10;
            v49 = [(PRPinyinString *)v47 initWithString:v48 syllableCount:v330 + a11 lastSyllableIsPartial:v328 score:a14 + 128 + v327 + v329 originalLength:a10 modificationType:5 originalModificationRange:v45 finalModificationRange:i originalSyllableRange:v283, v44, v45, i];
            if (([a3 containsObject:v49] & 1) == 0)
            {
              [a3 addObject:v49];
            }

            v22 = 1;
            a5 = v325;
            v35 = v305;
            self = v314;
            v36 = v305 - 1;
          }
        }
      }

      ++v37;
    }
  }

  if (v35 < a5)
  {
    v50 = &a9[v35];
    v51 = v21 - v35;
    v52 = v21 - v35 - 14;
    v53 = 14;
    v318 = &a9[v35];
    v300 = v21 - v35;
    do
    {
      if (v35 + v53 <= v21)
      {
        v329 = 0;
        v330 = 0;
        v331 = 0;
        v54 = [(AppleSpell *)v314 englishStringFromWordBuffer:v50 length:v53 connection:a4];
        if (v54)
        {
          v55 = v54;
          if (v51 == v53 || findPinyin(&v50[v53], v52, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v51 - v331 == v53)
          {
            if (v35)
            {
              v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a9 length:v35 encoding:12];
              v57 = &stru_1F4E0A7A0;
            }

            else
            {
              v57 = &stru_1F4E0A7A0;
              v56 = &stru_1F4E0A7A0;
            }

            if (v35 + v53 < a10)
            {
              v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v50[v53] length:v52 encoding:12];
            }

            v58 = [v55 length];
            v59 = [(__CFString *)v56 length];
            v60 = [(__CFString *)v56 length];
            v61 = [PRPinyinString alloc];
            v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v56, v55, v57];
            v21 = a10;
            v63 = [(PRPinyinString *)v61 initWithString:v62 syllableCount:v330 + a11 lastSyllableIsPartial:v328 score:a13 + 128 + v329 originalLength:a10 modificationType:5 originalModificationRange:v59 finalModificationRange:v53 originalSyllableRange:v60, v58, v59, v53];
            if (([a3 containsObject:v63] & 1) == 0)
            {
              [a3 addObject:v63];
            }

            v22 = 1;
            a5 = v325;
            v51 = v300;
            v35 = v305;
            v50 = v318;
          }
        }
      }

      --v53;
      ++v52;
    }

    while (v53 > 2);
  }

  v64 = v314;
  if (v35 + 2 >= a5)
  {
    v68 = a9;
  }

  else
  {
    v65 = a5 - 1;
    v66 = a5 - 1 - v35;
    v67 = v35;
    v68 = a9;
    if (next_pinyin(&a9[v67], v66, 0, 0, &v326, &v327) && &a9[v65] == v326)
    {
      v311 = &a9[a5];
      v69 = v21 - a5 - 13;
      v319 = a5 - v21 + 13;
      v70 = 14;
      v301 = a5 - 1;
      do
      {
        v71 = a5 + v70 - 1;
        if (v71 <= v21)
        {
          v329 = 0;
          v330 = 0;
          v331 = 0;
          v72 = [(AppleSpell *)v64 englishStringFromWordBuffer:&v68[v65] length:v70 connection:a4];
          if (v72)
          {
            v73 = v72;
            if (v319 + v70 == 14 || findPinyin(&v311[v70 - 1], v69, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v319 + v70 + v331 == 14)
            {
              v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v68 length:v65 encoding:12];
              v75 = &stru_1F4E0A7A0;
              if (v71 < v21)
              {
                v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v311[v70 - 1] length:v69 encoding:12];
              }

              v76 = [v73 length];
              v77 = [v74 length];
              v78 = [v74 length];
              v79 = [PRPinyinString alloc];
              v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v74, v73, v75];
              v284 = v78;
              v21 = a10;
              v81 = [(PRPinyinString *)v79 initWithString:v80 syllableCount:a11 + 1 + v330 lastSyllableIsPartial:v328 score:a13 + 128 + v327 + v329 originalLength:a10 modificationType:5 originalModificationRange:v77 finalModificationRange:v70 originalSyllableRange:v284, v76, v77, v70];
              if (([a3 containsObject:v81] & 1) == 0)
              {
                [a3 addObject:v81];
              }

              v22 = 1;
              a5 = v325;
              v64 = v314;
              v68 = a9;
              v65 = v301;
            }
          }
        }

        --v70;
        ++v69;
      }

      while (v70 > 2);
    }
  }

  v82 = &v68[a5];
  v295 = a11 + 1;
  v297 = a12 + 128;
  v320 = v21 - a5;
  v83 = v21 - a5 - 14;
  v84 = 14;
  v85 = a8;
  v302 = v82;
  do
  {
    if (a5 + v84 <= v21)
    {
      v329 = 0;
      v330 = 0;
      v331 = 0;
      v86 = [(AppleSpell *)v64 englishStringFromWordBuffer:v82 length:v84 connection:a4];
      if (v86)
      {
        v87 = v86;
        if (v320 == v84 || findPinyin(&v82[v84], v83, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v320 - v331 == v84)
        {
          if (a5)
          {
            v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a9 length:a5 encoding:12];
            v89 = &stru_1F4E0A7A0;
          }

          else
          {
            v89 = &stru_1F4E0A7A0;
            v88 = &stru_1F4E0A7A0;
          }

          if (a5 + v84 < a10)
          {
            v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v82[v84] length:v83 encoding:12];
          }

          v90 = [v87 length];
          v91 = [(__CFString *)v88 length];
          v92 = [(__CFString *)v88 length];
          v93 = [PRPinyinString alloc];
          v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v88, v87, v89];
          v21 = a10;
          v95 = [(PRPinyinString *)v93 initWithString:v94 syllableCount:v295 + v330 lastSyllableIsPartial:v328 score:v297 + v329 originalLength:a10 modificationType:5 originalModificationRange:v91 finalModificationRange:v84 originalSyllableRange:v92, v90, v91, v84];
          if (([a3 containsObject:v95] & 1) == 0)
          {
            [a3 addObject:v95];
          }

          v22 = 1;
          a5 = v325;
          v85 = a8;
          v64 = v314;
          v82 = v302;
        }
      }
    }

    --v84;
    ++v83;
  }

  while (v84 > 2);
  if (v85 == a5)
  {
    v96 = a9;
  }

  else
  {
    v96 = a9;
    v312 = &a9[v85];
    v293 = v21 - v85;
    v97 = v21 - v85 - 14;
    for (j = 14; j > 2; --j)
    {
      if (v85 + j <= v21)
      {
        v329 = 0;
        v330 = 0;
        v331 = 0;
        v99 = [(AppleSpell *)v64 englishStringFromWordBuffer:v312 length:j connection:a4];
        if (v99)
        {
          v100 = v99;
          if (v293 == j || findPinyin(&v312[j], v97, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v293 - v331 == j)
          {
            if (v85)
            {
              v101 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v96 length:v85 encoding:12];
              v102 = &stru_1F4E0A7A0;
            }

            else
            {
              v102 = &stru_1F4E0A7A0;
              v101 = &stru_1F4E0A7A0;
            }

            if (v85 + j < a10)
            {
              v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v312[j] length:v97 encoding:12];
            }

            v103 = [v100 length];
            v104 = [(__CFString *)v101 length];
            v105 = [(__CFString *)v101 length];
            v106 = [PRPinyinString alloc];
            v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v101, v100, v102];
            v21 = a10;
            v108 = [(PRPinyinString *)v106 initWithString:v107 syllableCount:a11 + 2 + v330 lastSyllableIsPartial:v328 score:v297 + a15 + v329 originalLength:a10 modificationType:5 originalModificationRange:v104 finalModificationRange:j originalSyllableRange:v105, v103, v104, j];
            if (([a3 containsObject:v108] & 1) == 0)
            {
              [a3 addObject:v108];
            }

            v22 = 1;
            a5 = v325;
            v64 = v314;
            v96 = a9;
            v85 = a8;
          }
        }
      }

      ++v97;
    }
  }

  if ((v22 & 1) == 0)
  {
    v109 = a5 + 2;
    if (a5 + 2 <= v21)
    {
      v329 = 0;
      v330 = 0;
      v331 = 0;
      v110 = [(AppleSpell *)v64 englishStringFromWordBuffer:v302 length:2 connection:a4];
      if (v110)
      {
        v111 = v110;
        if (v109 == v21 || findPinyin(v302 + 2, v320 - 2, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v331 + v109 == v21)
        {
          if (a5)
          {
            v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v96 length:a5 encoding:12];
          }

          else
          {
            v112 = &stru_1F4E0A7A0;
          }

          if (v109 >= v21)
          {
            v118 = &stru_1F4E0A7A0;
          }

          else
          {
            v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v302 + 2 length:v320 - 2 encoding:12];
          }

          v119 = [v111 length];
          v120 = [(__CFString *)v112 length];
          v121 = [(__CFString *)v112 length];
          v122 = [PRPinyinString alloc];
          v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v112, v111, v118];
          v124 = v328;
          v287 = v120;
          v288 = 2;
          v285 = v121;
          v286 = v119;
          v125 = v295 + v330;
          v126 = v297 + a15 + v329;
          v281 = v120;
          v282 = 2;
          v127 = v122;
LABEL_156:
          v21 = a10;
          v147 = [(PRPinyinString *)v127 initWithString:v123 syllableCount:v125 lastSyllableIsPartial:v124 score:v126 originalLength:a10 modificationType:5 originalModificationRange:v281 finalModificationRange:v282 originalSyllableRange:v285, v286, v287, v288];
          if ([a3 containsObject:v147])
          {
LABEL_158:

            v85 = a8;
            v64 = v314;
            goto LABEL_159;
          }

LABEL_157:
          [a3 addObject:v147];
          goto LABEL_158;
        }
      }
    }

    if (v85 != a5)
    {
      v113 = v85 + 2;
      if (v85 + 2 <= v21)
      {
        v329 = 0;
        v330 = 0;
        v114 = &v96[v85];
        v331 = 0;
        v115 = [(AppleSpell *)v64 englishStringFromWordBuffer:&v96[v85] length:2 connection:a4];
        if (v115)
        {
          v116 = v115;
          if (v113 == v21 || findPinyin(v114 + 2, v21 - v85 - 2, 0, 1, 0, 0, 0, 0, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, 0) && v331 + v113 == v21)
          {
            if (v85)
            {
              v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v96 length:v85 encoding:12];
            }

            else
            {
              v117 = &stru_1F4E0A7A0;
            }

            if (v113 >= v21)
            {
              v140 = &stru_1F4E0A7A0;
            }

            else
            {
              v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v114 + 2 length:v21 - a8 - 2 encoding:12];
            }

            v141 = v21;
            v142 = [v116 length];
            v143 = [(__CFString *)v117 length];
            v144 = [(__CFString *)v117 length];
            v145 = [PRPinyinString alloc];
            v146 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v117, v116, v140];
            v147 = [(PRPinyinString *)v145 initWithString:v146 syllableCount:v295 + v330 lastSyllableIsPartial:v328 score:v297 + a15 + v329 originalLength:v141 modificationType:5 originalModificationRange:v143 finalModificationRange:2 originalSyllableRange:v144, v142, v143, 2];
            v21 = v141;
            if ([a3 containsObject:v147])
            {
              goto LABEL_158;
            }

            goto LABEL_157;
          }
        }
      }
    }

    if (a5 + 4 < v21 && a5 + 14 >= v21 && [(AppleSpell *)v64 validateWordPrefixBuffer:v302 length:v320 connection:a4])
    {
      if ((v128 = *v302, (v128 - 65) < 0x1A) || (v128 - 192) < 0x17 || (v128 - 216) < 7 || (v129 = v128 - 138, v129 <= 0x15) && ((1 << v129) & 0x200015) != 0 || ![(AppleSpell *)v64 checkWordBuffer:v302 length:v320 languageObject:v289 index:1])
      {
        if (![(AppleSpell *)v64 checkNegativeWordBuffer:v302 length:v320 languageObject:v289])
        {
          if (a5)
          {
            v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v96 length:a5 encoding:12];
          }

          else
          {
            v134 = &stru_1F4E0A7A0;
          }

          v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v302 length:v320 encoding:12];
          v136 = [v135 length];
          v137 = [(__CFString *)v134 length];
          v138 = [(__CFString *)v134 length];
          v139 = [PRPinyinString alloc];
          v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v134, v135, &stru_1F4E0A7A0];
          v287 = v137;
          v288 = v320;
          v285 = v138;
          v286 = v136;
          v125 = a11 + 2;
          v126 = v297 + a15;
          v281 = v137;
          v282 = v320;
          v127 = v139;
          goto LABEL_155;
        }
      }
    }

    if (v85 + 4 < v21 && v85 + 14 >= v21)
    {
      v130 = v21 - v85;
      if ([(AppleSpell *)v64 validateWordPrefixBuffer:&v96[v85] length:v21 - v85 connection:a4])
      {
        if ((v131 = v96[v85], (v131 - 65) < 0x1A) || (v131 - 192) < 0x17 || (v131 - 216) < 7 || (v132 = v131 - 138, v132 <= 0x15) && ((1 << v132) & 0x200015) != 0 || ![(AppleSpell *)v64 checkWordBuffer:&v96[v85] length:v21 - v85 languageObject:v289 index:1])
        {
          if (![(AppleSpell *)v64 checkNegativeWordBuffer:&v96[v85] length:v21 - v85 languageObject:v289])
          {
            if (v85)
            {
              v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v96 length:v85 encoding:12];
            }

            else
            {
              v133 = &stru_1F4E0A7A0;
            }

            v148 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v96[v85] length:v21 - v85 encoding:12];
            v149 = [v148 length];
            v150 = [(__CFString *)v133 length];
            v151 = [(__CFString *)v133 length];
            v152 = [PRPinyinString alloc];
            v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v133, v148, &stru_1F4E0A7A0];
            v287 = v150;
            v288 = v130;
            v285 = v151;
            v286 = v149;
            v125 = a11 + 2;
            v126 = v297 + a15;
            v281 = v150;
            v282 = v130;
            v127 = v152;
LABEL_155:
            v124 = 1;
            goto LABEL_156;
          }
        }
      }
    }
  }

LABEL_159:
  [(AppleSpell *)v64 addSpecialModifiedPinyinToArray:a3 inBuffer:v96 length:v21 atEnd:0];
  v324 = v21 + 1;
  if (v21 + 1 > 1)
  {
    v153 = v21 + 1;
  }

  else
  {
    v153 = 1;
  }

  memcpy(__dst, v96, v153);
  v154 = malloc_type_malloc(8 * v21, 0x100004000313F17uLL);
  v155 = v154;
  if (v21 >= 3)
  {
    v156 = a10;
    if (v85 <= v325)
    {
      v157 = 0;
    }

    else
    {
      v157 = -1;
    }

    v158 = v85 + 5;
    v296 = v157;
    v298 = ((__PAIR128__(v85, v325) - v85) >> 64) + 1;
    v303 = (__PAIR128__(v85, v325) - v85) >> 64;
    v315 = v154;
    v291 = v85 + 5;
    if (v303 < v85 + 5 && v298 < a10)
    {
      v159 = (__PAIR128__(v85, v325) - v85) >> 64;
      v294 = v154 + 1;
      v160 = v159 + 1;
      while (1)
      {
        v161 = v160;
        v162 = v96[v159];
        v163 = v96[v160];
        v164 = (v162 - 65) >= 0x1A && (v163 - 65) >= 0x1A;
        if (!v164)
        {
          goto LABEL_220;
        }

        if ((v162 - 97) <= 0x19 && (v163 - 97) <= 0x19)
        {
          break;
        }

LABEL_218:
        if (v161 < v158)
        {
          v160 = v161 + 1;
          v159 = v161;
          if (v161 + 1 < v156)
          {
            continue;
          }
        }

        goto LABEL_220;
      }

      __dst[v159] = v163;
      __dst[v160] = v162;
      if (findPinyin(&__dst[v325], v320, 0, 0, 0, 0, 0, &v332, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, v155) && v331 + v325 == v156 && (v328 != 1 || v161 < v332 + v325))
      {
        if (v330)
        {
          v166 = 0;
          v167 = 0;
          v168 = 0x7FFFFFFFFFFFFFFFLL;
          v169 = 1;
          v170 = v294;
          v171 = v325;
          while (1)
          {
            v172 = *(v170 - 1);
            v173 = v172 + v171;
            if (v159 < v171)
            {
              break;
            }

            if (v161 >= v173)
            {
              if (v159 >= v173)
              {
                break;
              }

              v166 = *v170;
              v167 = *(v170 - 1);
              v168 = v171;
              v174 = v172 + v171;
            }

            else
            {
              v166 = *(v170 - 1);
              v174 = v171;
            }

LABEL_190:
            if (v174 == 0x7FFFFFFFFFFFFFFFLL)
            {
              ++v170;
              v171 += v172;
              v164 = v169++ >= v330;
              if (!v164)
              {
                continue;
              }
            }

            goto LABEL_211;
          }

          v174 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_190;
        }

        v167 = 0;
        v166 = 0;
        v168 = 0x7FFFFFFFFFFFFFFFLL;
        v174 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_211:
        v184 = v168;
        v156 = a10;
        v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__dst length:a10 encoding:12];
        v186 = [PRPinyinString alloc];
        v187 = [(PRPinyinString *)v186 initWithString:v185 syllableCount:v330 + a11 lastSyllableIsPartial:v328 score:v329 + a12 originalLength:a10 modificationType:2 originalModificationRange:v159 finalModificationRange:2 originalSyllableRange:v159 originalAdditionalSyllableRange:2, v174, v166, v184, v167];
        goto LABEL_214;
      }

      if (!findPinyin(&__dst[v305], a10 - v305, 0, 0, 0, 0, 0, &v332, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, v155) || v331 + v305 != v156 || v328 == 1 && v161 >= v332 + v305)
      {
LABEL_217:
        __dst[v159] = v162;
        __dst[v161] = v163;
        goto LABEL_218;
      }

      if (!v330)
      {
        v176 = 0;
        v175 = 0;
        v183 = 0x7FFFFFFFFFFFFFFFLL;
        v177 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_213:
        v292 = v177;
        v156 = a10;
        v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__dst length:a10 encoding:12];
        v188 = [PRPinyinString alloc];
        v187 = [(PRPinyinString *)v188 initWithString:v185 syllableCount:a11 - 1 + v330 lastSyllableIsPartial:v328 score:v329 + a13 originalLength:a10 modificationType:2 originalModificationRange:v159 finalModificationRange:2 originalSyllableRange:v159 originalAdditionalSyllableRange:2, v183, v176, v292, v175];
LABEL_214:
        v189 = v187;
        if (([a3 containsObject:v187] & 1) == 0)
        {
          [a3 addObject:v189];
        }

        v155 = v315;
        v96 = a9;
        v158 = v291;
        goto LABEL_217;
      }

      v175 = 0;
      v176 = 0;
      v177 = 0x7FFFFFFFFFFFFFFFLL;
      v178 = 1;
      v179 = v294;
      v180 = v305;
      while (1)
      {
        v181 = *(v179 - 1);
        v182 = v181 + v180;
        if (v159 < v180)
        {
          break;
        }

        if (v161 >= v182)
        {
          if (v159 >= v182)
          {
            break;
          }

          v176 = *v179;
          v183 = v181 + v180;
          v177 = v180;
          v175 = *(v179 - 1);
        }

        else
        {
          v183 = v180;
          v176 = *(v179 - 1);
        }

LABEL_206:
        if (v183 == 0x7FFFFFFFFFFFFFFFLL)
        {
          ++v179;
          v180 += v181;
          v164 = v178++ >= v330;
          if (!v164)
          {
            continue;
          }
        }

        goto LABEL_213;
      }

      v183 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_206;
    }

LABEL_220:
    if (v156 >= 4)
    {
      v190 = a10;
      if (v158 >= a10)
      {
        v191 = a10;
      }

      else
      {
        v191 = v158;
      }

      v192 = v303;
      if (v303 < v191)
      {
        v306 = v191;
        do
        {
          v193 = v96[v192];
          if ((v193 - 65) < 0x1A)
          {
            break;
          }

          if ((v193 - 97) <= 0x19)
          {
            v194 = 0;
            v195 = &adjacentMatchesChinese + 24 * (v193 - 97);
            do
            {
              v196 = *&v195[4 * v194];
              if (v196)
              {
                __dst[v192] = v196;
                if (findPinyin(&__dst[v325], v320, 0, 0, 0, 0, 0, &v332, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, v155))
                {
                  if (v331 + v325 == a10 && (v328 != 1 || v192 < v332 + v325))
                  {
                    if (v330)
                    {
                      v197 = 0;
                      v198 = 1;
                      v199 = v315;
                      v200 = v325;
                      do
                      {
                        v202 = *v199++;
                        v201 = v202;
                        v203 = v202 + v200;
                        v204 = v192 >= v202 + v200;
                        if (v192 >= v202 + v200)
                        {
                          v205 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v205 = v200;
                        }

                        if (v204)
                        {
                          v201 = v197;
                        }

                        if (v192 >= v200)
                        {
                          v206 = v205;
                        }

                        else
                        {
                          v206 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        if (v192 >= v200)
                        {
                          v197 = v201;
                        }

                        v207 = v206 != 0x7FFFFFFFFFFFFFFFLL || v198++ >= v330;
                        v200 = v203;
                      }

                      while (!v207);
                    }

                    else
                    {
                      v197 = 0;
                      v206 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__dst length:a10 encoding:12];
                    v209 = [PRPinyinString alloc];
                    v210 = [(PRPinyinString *)v209 initWithString:v208 syllableCount:v330 + a11 lastSyllableIsPartial:v328 score:a12 + 12 + v329 originalLength:a10 modificationType:1 originalModificationRange:v192 finalModificationRange:1 originalSyllableRange:v192, 1, v206, v197];
                    if (([a3 containsObject:v210] & 1) == 0)
                    {
                      [a3 addObject:v210];
                    }

                    v155 = v315;
                  }
                }
              }

              ++v194;
            }

            while (v194 != 6);
            v96 = a9;
            LOBYTE(v193) = a9[v192];
            v190 = a10;
            v191 = v306;
          }

          __dst[v192++] = v193;
        }

        while (v192 < v191);
        v211 = 0;
        v212 = v325;
        v213 = v303;
        v214 = v303 + 2;
        v290 = v303 + 2;
        do
        {
          if (v214 + v211 <= v324)
          {
            v215 = v324;
          }

          else
          {
            v215 = v214 + v211;
          }

          v216 = v96[v213];
          if ((v216 - 65) < 0x1A)
          {
            break;
          }

          if ((v216 - 97) >= 0x1A)
          {
            v220 = v213 + 1;
          }

          else
          {
            v313 = v215;
            v217 = &__dst[v324];
            for (k = v324; k > v213; --v217)
            {
              --k;
              *v217 = *(v217 - 1);
            }

            v219 = 0;
            v304 = v213;
            v220 = v213 + 1;
            v221 = &insertionFollowers + 24 * (v216 - 97);
            do
            {
              v222 = *&v221[4 * v219];
              if (v222)
              {
                __dst[v220] = v222;
                if (findPinyin(&__dst[v212], v324 - v325, 0, 0, 0, 0, 0, &v332, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, v155))
                {
                  if (v331 + v212 == v324 && (v328 != 1 || v220 < v332 + v212))
                  {
                    if (v330)
                    {
                      v223 = 0;
                      v224 = 1;
                      v225 = v315;
                      v226 = v212;
                      do
                      {
                        v227 = *v225++;
                        v228 = v227 + v226;
                        v229 = v227 - 1;
                        v230 = v220 >= v227 + v226;
                        if (v220 >= v227 + v226)
                        {
                          v231 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v231 = v226;
                        }

                        if (v230)
                        {
                          v229 = v223;
                        }

                        if (v220 >= v226)
                        {
                          v232 = v231;
                        }

                        else
                        {
                          v232 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        if (v220 >= v226)
                        {
                          v223 = v229;
                        }

                        v233 = v232 != 0x7FFFFFFFFFFFFFFFLL || v224++ >= v330;
                        v226 = v228;
                      }

                      while (!v233);
                    }

                    else
                    {
                      v223 = 0;
                      v232 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v234 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__dst length:v324 encoding:12];
                    v235 = [PRPinyinString alloc];
                    v236 = [(PRPinyinString *)v235 initWithString:v234 syllableCount:v330 + a11 lastSyllableIsPartial:v328 score:a12 + 32 + v329 originalLength:a10 modificationType:3 originalModificationRange:v220 finalModificationRange:0 originalSyllableRange:v220, 1, v232, v223];
                    if (([a3 containsObject:v236] & 1) == 0)
                    {
                      [a3 addObject:v236];
                    }

                    v212 = v325;
                    v155 = v315;
                  }
                }
              }

              ++v219;
            }

            while (v219 != 6);
            v96 = a9;
            if (v304 < a10)
            {
              memcpy(&__dst[v298 + v211], &a9[v298 + v211], v313 + ~a8 - (v211 + v296));
            }

            v191 = v306;
            v214 = v290;
          }

          ++v211;
          v213 = v220;
          v190 = a10;
        }

        while (v220 < v191);
      }

      v237 = a8;
      v238 = v291;
      if (v190 >= 5)
      {
        if (a8 <= 1)
        {
          v237 = 1;
        }

        v321 = v237;
        if (v237 < v291)
        {
          v239 = v237 + 1;
          if (v321 + 1 < a10)
          {
            v240 = 0;
            v308 = a10 - 1;
            v241 = &__dst[v239];
            v242 = v321;
            do
            {
              v243 = v239;
              v244 = &v96[v242];
              if (v239 <= v324)
              {
                v245 = v324;
              }

              else
              {
                v245 = v239;
              }

              v246 = *v244;
              if ((v246 - 65) < 0x1A)
              {
                break;
              }

              v247 = *(v244 - 1);
              if ((v247 - 65) < 0x1A)
              {
                break;
              }

              v248 = v96[v243];
              if ((v248 - 65) < 0x1A)
              {
                break;
              }

              if ((v246 - 97) <= 0x19)
              {
                if (v246 == v247)
                {
                  goto LABEL_346;
                }

                if (!a16)
                {
                  goto LABEL_346;
                }

                v249 = (&adjacentMatchesChinese + 24 * (v246 - 97));
                v250 = *v249;
                if (*v249 == v247)
                {
                  goto LABEL_346;
                }

                v251 = v249[1];
                if (v251 == v247)
                {
                  goto LABEL_346;
                }

                v252 = v249[2];
                if (v252 == v247)
                {
                  goto LABEL_346;
                }

                v253 = v249[3];
                if (v253 == v247)
                {
                  goto LABEL_346;
                }

                v254 = v249[4];
                if (v254 == v247)
                {
                  goto LABEL_346;
                }

                v255 = v249[5];
                v256 = v255 == v247 || v246 == v248;
                v257 = v256 || v250 == v248;
                v258 = v257 || v251 == v248;
                v259 = v258 || v252 == v248;
                v260 = v259 || v253 == v248;
                v261 = v260 || v254 == v248;
                if (v261 || v255 == v248)
                {
LABEL_346:
                  if (v242 < a10)
                  {
                    v263 = v241;
                    v264 = v242;
                    do
                    {
                      ++v264;
                      *(v263 - 1) = *v263;
                      ++v263;
                    }

                    while (v264 < a10);
                  }

                  if (findPinyin(&__dst[v325], a10 - 1 - v325, 0, 0, 0, 0, 0, &v332, &v331, 0, &v330, &v328, &v329, 0, 0, 0, 0, v155) && v331 + v325 == v308 && (v328 != 1 || v242 <= v332 + v325))
                  {
                    if (v330)
                    {
                      v265 = 0;
                      v266 = 1;
                      v267 = v315;
                      v268 = v325;
                      do
                      {
                        v270 = *v267++;
                        v269 = v270;
                        v271 = v270 + v268;
                        v272 = v242 >= v270 + v268;
                        if (v242 >= v270 + v268)
                        {
                          v273 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v273 = v268;
                        }

                        if (v272)
                        {
                          v274 = v265;
                        }

                        else
                        {
                          v274 = v269 + 1;
                        }

                        if (v242 >= v268)
                        {
                          v275 = v273;
                        }

                        else
                        {
                          v275 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        if (v242 >= v268)
                        {
                          v265 = v274;
                        }

                        v276 = v275 != 0x7FFFFFFFFFFFFFFFLL || v266++ >= v330;
                        v268 = v271;
                      }

                      while (!v276);
                    }

                    else
                    {
                      v265 = 0;
                      v275 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v277 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__dst length:v308 encoding:12];
                    v278 = [PRPinyinString alloc];
                    v279 = [(PRPinyinString *)v278 initWithString:v277 syllableCount:v330 + a11 lastSyllableIsPartial:v328 score:a12 + 42 + v329 originalLength:a10 modificationType:4 originalModificationRange:v242 finalModificationRange:1 originalSyllableRange:v242, 0, v275, v265];
                    if (([a3 containsObject:v279] & 1) == 0)
                    {
                      [a3 addObject:v279];
                    }

                    v155 = v315;
                    v96 = a9;
                    v238 = v291;
                  }

                  if (v242 <= a10)
                  {
                    memcpy(&__dst[v242], v244, v245 - (v321 + v240));
                  }
                }
              }

              if (v243 >= v238)
              {
                break;
              }

              v239 = v243 + 1;
              ++v240;
              ++v241;
              v242 = v243;
            }

            while (v243 + 1 < a10);
          }
        }
      }
    }
  }

  if (v155)
  {
    free(v155);
  }

  v280 = *MEMORY[0x1E69E9840];
}

- (void)addModifiedPartialPinyinToArray:(id)a3 connection:(_PR_DB_IO *)a4 fromIndex:(unint64_t)a5 prevIndex:(unint64_t)a6 prevPrevIndex:(unint64_t)a7 prePrevPrevIndex:(unint64_t)a8 startingModificationsAt:(unint64_t)a9 inBuffer:(char *)a10 length:(unint64_t)a11 initialSyllableCount:(unint64_t)a12 initialScore:(unint64_t)a13 prevScore:(unint64_t)a14 prevPrevScore:(unint64_t)a15 lastSyllableScore:(unint64_t)a16
{
  v19 = a4;
  v20 = a3;
  v21 = self;
  v22 = a11;
  if (a8 < a7)
  {
    v23 = a11 - a8;
    if (a11 > a8)
    {
      v24 = [(AppleSpell *)self englishStringFromWordBuffer:&a10[a8] length:a11 - a8 connection:a4];
      if (v24)
      {
        v25 = v24;
        v84 = a6;
        if (a8)
        {
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a10 length:a8 encoding:12];
        }

        else
        {
          v26 = &stru_1F4E0A7A0;
        }

        v27 = [v25 length];
        v28 = [(__CFString *)v26 length];
        v29 = [(__CFString *)v26 length];
        v30 = [PRPinyinString alloc];
        v79 = v29;
        v22 = a11;
        v31 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:](v30, "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v26, v25], a12 - 2, 0, a15 + 128, a11, 5, v28, v23, v79, v27, v28, v23);
        v20 = a3;
        if (([a3 containsObject:v31] & 1) == 0)
        {
          [a3 addObject:v31];
        }

        v21 = self;
        a6 = v84;
        v19 = a4;
      }
    }
  }

  v90[0] = 0;
  v89 = 0;
  if (a8 + 2 < a7)
  {
    v32 = a7 - 1;
    if (next_pinyin(&a10[a8], a7 - 1 - a8, 0, 0, v90, &v89) && &a10[a7 - 1] == v90[0])
    {
      v34 = v22 - v32;
      v35 = [(AppleSpell *)v21 englishStringFromWordBuffer:&a10[v32] length:v22 - v32 connection:v19];
      if (v35)
      {
        v36 = v35;
        v85 = a6;
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a10 length:a7 - 1 encoding:12];
        v38 = [v36 length];
        v39 = [v37 length];
        v40 = [v37 length];
        v41 = [PRPinyinString alloc];
        v75 = v37;
        v20 = a3;
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v75, v36];
        v82 = v39;
        v76 = v39;
        v22 = a11;
        v43 = [(PRPinyinString *)v41 initWithString:v42 syllableCount:a12 - 1 lastSyllableIsPartial:0 score:a15 + v89 + 128 originalLength:a11 modificationType:5 originalModificationRange:v76 finalModificationRange:v34 originalSyllableRange:v40, v38, v82, v34];
        if (([a3 containsObject:v43] & 1) == 0)
        {
          [a3 addObject:v43];
        }

        v21 = self;
        a6 = v85;
        v19 = a4;
      }
    }
  }

  if (a7 < a6)
  {
    v44 = v22 - a7;
    if (v22 > a7)
    {
      v45 = [(AppleSpell *)v21 englishStringFromWordBuffer:&a10[a7] length:v22 - a7 connection:v19];
      if (v45)
      {
        v46 = v45;
        v47 = a6;
        if (a7)
        {
          v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a10 length:a7 encoding:12];
        }

        else
        {
          v48 = &stru_1F4E0A7A0;
        }

        v49 = [v46 length];
        v50 = [(__CFString *)v48 length];
        v51 = [(__CFString *)v48 length];
        v52 = [PRPinyinString alloc];
        v80 = v51;
        v22 = a11;
        v53 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:](v52, "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v48, v46], a12 - 1, 0, a15 + 128, a11, 5, v50, v44, v80, v49, v50, v44);
        v20 = a3;
        if (([a3 containsObject:v53] & 1) == 0)
        {
          [a3 addObject:v53];
        }

        v21 = self;
        a6 = v47;
        v19 = a4;
      }
    }
  }

  if (a7 + 2 < a6)
  {
    v54 = a6 - 1;
    if (next_pinyin(&a10[a7], a6 - 1 - a7, 0, 0, v90, &v89))
    {
      if (&a10[v54] == v90[0])
      {
        v55 = v22 - v54;
        v56 = [(AppleSpell *)v21 englishStringFromWordBuffer:&a10[v54] length:v22 - v54 connection:v19];
        if (v56)
        {
          v57 = v56;
          v58 = a6;
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a10 length:a6 - 1 encoding:12];
          v60 = [v57 length];
          v61 = [v59 length];
          v62 = [v59 length];
          v63 = [PRPinyinString alloc];
          v77 = v59;
          v20 = a3;
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v77, v57];
          v83 = v61;
          v78 = v61;
          v22 = a11;
          v65 = [(PRPinyinString *)v63 initWithString:v64 syllableCount:a12 lastSyllableIsPartial:0 score:a15 + v89 + 128 originalLength:a11 modificationType:5 originalModificationRange:v78 finalModificationRange:v55 originalSyllableRange:v62, v60, v83, v55];
          if (([a3 containsObject:v65] & 1) == 0)
          {
            [a3 addObject:v65];
          }

          v21 = self;
          a6 = v58;
          v19 = a4;
        }
      }
    }
  }

  v66 = v22 - a6;
  if (v22 > a6)
  {
    v67 = [(AppleSpell *)v21 englishStringFromWordBuffer:&a10[a6] length:v22 - a6 connection:v19];
    if (v67)
    {
      v68 = v67;
      if (a6)
      {
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a10 length:a6 encoding:12];
      }

      else
      {
        v69 = &stru_1F4E0A7A0;
      }

      v70 = [v68 length];
      v71 = [(__CFString *)v69 length];
      v72 = [(__CFString *)v69 length];
      v73 = [PRPinyinString alloc];
      v81 = v72;
      v22 = a11;
      v74 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:](v73, "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v69, v68], a12, 0, a14 + 128, a11, 5, v71, v66, v81, v70, v71, v66);
      v20 = a3;
      if (([a3 containsObject:v74] & 1) == 0)
      {
        [a3 addObject:v74];
      }

      v21 = self;
    }
  }

  [(AppleSpell *)v21 addSpecialModifiedPinyinToArray:v20 inBuffer:a10 length:v22 atEnd:1];
}

- (id)_primitiveRetainedAlternativesForPinyinInputString:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v6 = [MEMORY[0x1E695DF70] array];
  v41 = 0;
  usedBufLen = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v7 = [a3 length];
  v8 = [(AppleSpell *)self databaseConnectionForLanguageObject:[PRLanguage languageObjectWithIdentifier:@"en_CN"]];
  if (v7 && (v9 = v8, v46.location = 0, v46.length = v7, v7 == CFStringGetBytes(a3, v46, 0x500u, 0, 0, buffer, 254, &usedBufLen)))
  {
    v10 = usedBufLen;
    buffer[usedBufLen] = 0;
    v11 = isFullOrAbbreviatedPinyin(buffer, v10, 0, &v34);
    if (findPinyin(buffer, usedBufLen, 0, 1, &v41, &v40, &v39, &v38, &v37, &v36, &v35, &v28, &v30, &v29, &v33, &v32, &v31, 0))
    {
      if (v37 && v37 < usedBufLen)
      {
        LOBYTE(v22) = v11;
        [(AppleSpell *)self addModifiedPinyinToArray:v6 connection:v9 fromIndex:v38 prevIndex:v39 prevPrevIndex:v40 startingModificationsAt:buffer inBuffer:usedBufLen length:v35 - 1 initialSyllableCount:v33 initialScore:v32 prevScore:v31 prevPrevScore:v30 - v33 lastSyllableScore:v22 couldBeAbbreviatedPinyin:?];
        if (v36 && v36 < usedBufLen)
        {
          LOBYTE(v23) = v11;
          [(AppleSpell *)self addModifiedPinyinToArray:v6 connection:v9 fromIndex:v38 prevIndex:v39 prevPrevIndex:v40 startingModificationsAt:buffer inBuffer:usedBufLen length:v35 - 1 initialSyllableCount:v33 initialScore:v32 prevScore:v31 prevPrevScore:v29 - v33 lastSyllableScore:v23 couldBeAbbreviatedPinyin:?];
        }
      }

      else if (v28 == 1)
      {
        [(AppleSpell *)self addModifiedPartialPinyinToArray:v6 connection:v9 fromIndex:v38 prevIndex:v39 prevPrevIndex:v40 prePrevPrevIndex:v41 startingModificationsAt:v37 inBuffer:buffer length:usedBufLen initialSyllableCount:v35 - 1 initialScore:v33 prevScore:v32 prevPrevScore:v31 lastSyllableScore:v30 - v33];
      }
    }

    else
    {
      LOBYTE(v22) = v11;
      [(AppleSpell *)self addModifiedPinyinToArray:v6 connection:v9 fromIndex:0 prevIndex:0 prevPrevIndex:0 startingModificationsAt:buffer inBuffer:usedBufLen length:0 initialSyllableCount:0 initialScore:0 prevScore:0 prevPrevScore:0 lastSyllableScore:v22 couldBeAbbreviatedPinyin:?];
    }
  }

  else
  {
    v11 = 0;
  }

  [v6 sortWithOptions:16 usingComparator:&__block_literal_global_10];
  if ([v6 count])
  {
    v35 = [objc_msgSend(v6 objectAtIndex:{0), "syllableCount"}];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v6 countByEnumeratingWithState:&v24 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 syllableCount];
          if (v18 <= v35 || [v17 numberOfNonPinyinRanges])
          {
            if (!v11 || (v19 = [v17 syllableCount], v19 < v34) || objc_msgSend(v17, "numberOfNonPinyinRanges"))
            {
              [v12 addObject:v17];
            }
          }
        }

        v14 = [v6 countByEnumeratingWithState:&v24 objects:v43 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __74__AppleSpell_Chinese___primitiveRetainedAlternativesForPinyinInputString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 syllableCount];
  v6 = [a3 syllableCount];
  v7 = [a2 score];
  v8 = [a3 score];
  v9 = -1;
  if (v5 < v6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v7 >= v8)
  {
    v9 = 1;
  }

  if (v7 == v8)
  {
    v9 = 0;
  }

  if (v5 == v6)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

- (unint64_t)_getSplitIndexes:(unint64_t *)a3 maxCount:(unint64_t)a4 forPinyinInputString:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = [a5 length];
  v26 = 0;
  if (v8)
  {
    usedBufLen = 0;
    v28 = 0;
    v31.location = 0;
    v31.length = v8;
    if (v8 == CFStringGetBytes(a5, v31, 0x500u, 0, 0, buffer, 254, &usedBufLen))
    {
      findPinyin(buffer, usedBufLen, 0, 1, 0, 0, 0, 0, &v26, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      v10 = v26;
      v9 = usedBufLen;
      if (v26 < usedBufLen)
      {
        v8 = 0;
        while (1)
        {
          v11 = &buffer[v10];
          v12 = next_pinyin(&buffer[v10], v9 - v10, 0, 0, &v28, 0);
          v9 = usedBufLen;
          if (v12)
          {
            if (v28 > v11 + 1 && v28 < &buffer[usedBufLen])
            {
              break;
            }
          }

          if (++v10 < usedBufLen)
          {
            v14 = *v11;
            v15 = v14 <= 0xF7 && v14 - 97 >= 0x1A;
            v16 = v15 && v14 - 223 >= 0x18;
            if (!v16 || ((v17 = v14 - 154, v18 = v17 > 4, v19 = (1 << v17) & 0x15, !v18) ? (v20 = v19 == 0) : (v20 = 1), !v20))
            {
              v21 = buffer[v10];
              if ((v21 - 65) < 0x1A || (v21 - 192) < 0x17)
              {
                goto LABEL_32;
              }

              if ((v21 - 216) < 7)
              {
                goto LABEL_32;
              }

              v23 = v21 - 138;
              if (v23 <= 0x15 && ((1 << v23) & 0x200015) != 0)
              {
                goto LABEL_32;
              }
            }
          }

LABEL_33:
          if (v10 >= v9)
          {
            goto LABEL_36;
          }
        }

        v10 = v28 - buffer;
LABEL_32:
        a3[v8++] = v10;
        if (v8 >= a4)
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      }
    }

    v8 = 0;
  }

LABEL_36:
  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_pinyinStringByCombiningPinyinString:(id)a3 withPinyinString:(id)a4
{
  if (([a3 lastSyllableIsPartial] & 1) != 0 || (v6 = objc_msgSend(a3, "originalLength"), v6 != objc_msgSend(a3, "originalCheckedLength")))
  {
    v14 = 0;
  }

  else
  {
    v61 = [a3 length];
    v64 = [a3 originalLength];
    v7 = [a3 numberOfModifications];
    v8 = [a4 numberOfModifications];
    v9 = v8 + v7;
    v10 = [a3 string];
    v11 = [a4 string];
    v63 = 0;
    if (v7 && v8)
    {
      v63 = [a3 typeOfModificationAtIndex:v7 - 1] == 5 && objc_msgSend(a4, "typeOfModificationAtIndex:", 0) == 5 && (v12 = objc_msgSend(a3, "finalRangeForModificationAtIndex:", v7 - 1), v12 + v13 == v61) && objc_msgSend(a4, "finalRangeForModificationAtIndex:", 0) == 0;
    }

    if (v9)
    {
      v62 = v8;
      v52 = v11;
      v53 = v10;
      v16 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
      v54 = v8 + v7;
      v56 = malloc_type_malloc(16 * v9, 0x1000040451B5BE8uLL);
      v57 = malloc_type_malloc(16 * v9, 0x1000040451B5BE8uLL);
      v59 = malloc_type_malloc(16 * v9, 0x1000040451B5BE8uLL);
      v17 = malloc_type_malloc(16 * v9, 0x1000040451B5BE8uLL);
      v18 = v17;
      if (v7)
      {
        v19 = 0;
        v20 = v17 + 1;
        v21 = v56 + 1;
        v22 = v59 + 8;
        v23 = v57 + 1;
        do
        {
          v16[v19] = [a3 typeOfModificationAtIndex:v19];
          *(v21 - 1) = [a3 originalRangeForModificationAtIndex:v19];
          *v21 = v24;
          *(v23 - 1) = [a3 finalRangeForModificationAtIndex:v19];
          *v23 = v25;
          *(v22 - 1) = [a3 originalSyllableRangeForModificationAtIndex:v19];
          *v22 = v26;
          v27 = [a3 originalAdditionalSyllableRangeForModificationAtIndex:v19++];
          *(v20 - 1) = v27;
          *v20 = v28;
          v20 += 2;
          v21 += 2;
          v22 += 2;
          v23 += 2;
        }

        while (v7 != v19);
      }

      if (v62)
      {
        v29 = 0;
        v30 = 2 * v7;
        v58 = v18;
        v31 = v16;
        v32 = v18 + 8;
        v33 = v59 + 8;
        v34 = v57;
        v35 = (v56 + 1);
        v55 = v31;
        v36 = &v31[v7];
        do
        {
          v36[v29] = [a4 typeOfModificationAtIndex:v29];
          v37 = &v35[v30 * 8];
          *(v37 - 1) = [a4 originalRangeForModificationAtIndex:v29] + v64;
          *v37 = v38;
          v39 = &v34[v30];
          v40 = [a4 finalRangeForModificationAtIndex:v29];
          v39[1] = v41;
          v42 = &v34[v30 + 1];
          v43 = v40 + v61;
          *v39 = v40 + v61;
          if (v63)
          {
            if (v29)
            {
              v42 = &v34[v30];
            }

            else
            {
              v43 = v41;
            }

            *v42 = v43 + 1;
          }

          v44 = &v33[v30 * 8];
          v45 = [a4 originalSyllableRangeForModificationAtIndex:v29];
          *(v44 - 1) = v45;
          *v44 = v46;
          if (v45 != 0x7FFFFFFFFFFFFFFFLL)
          {
            *(v44 - 1) = v45 + v64;
          }

          v47 = &v32[v30 * 8];
          v48 = [a4 originalAdditionalSyllableRangeForModificationAtIndex:v29];
          *(v47 - 1) = v48;
          *v47 = v49;
          if (v48 != 0x7FFFFFFFFFFFFFFFLL)
          {
            *(v47 - 1) = v48 + v64;
          }

          ++v29;
          v32 += 16;
          v33 += 16;
          v34 += 2;
          v35 += 16;
        }

        while (v62 != v29);
        v9 = v54;
        v16 = v55;
        v18 = v58;
        v50 = v59;
        v11 = v52;
        v10 = v53;
      }

      else
      {
        v10 = v53;
        v9 = v54;
        v11 = v52;
        v50 = v59;
      }
    }

    else
    {
      v18 = 0;
      v50 = 0;
      v56 = 0;
      v57 = 0;
      v16 = 0;
    }

    v60 = v50;
    if (v63)
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v10, v11];
    }

    else
    {
      v51 = [v10 stringByAppendingString:v11];
    }

    v14 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:originalCheckedLength:numberOfModifications:modificationTypes:originalModificationRanges:finalModificationRanges:originalSyllableRanges:originalAdditionalSyllableRanges:]([PRPinyinString alloc], "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:originalCheckedLength:numberOfModifications:modificationTypes:originalModificationRanges:finalModificationRanges:originalSyllableRanges:originalAdditionalSyllableRanges:", v51, [a4 syllableCount] + objc_msgSend(a3, "syllableCount"), objc_msgSend(a4, "lastSyllableIsPartial"), objc_msgSend(a4, "score") + objc_msgSend(a3, "score"), objc_msgSend(a4, "originalLength") + objc_msgSend(a3, "originalLength"), objc_msgSend(a4, "originalCheckedLength") + objc_msgSend(a3, "originalCheckedLength"), v9, v16, v56, v57, v60, v18);
    if (v16)
    {
      free(v16);
    }

    if (v56)
    {
      free(v56);
    }

    if (v57)
    {
      free(v57);
    }

    if (v60)
    {
      free(v60);
    }

    if (v18)
    {
      free(v18);
    }
  }

  return v14;
}

- (id)_retainedAlternativesByCombiningAlternatives:(id)a3 withAlternatives:(id)a4 andAddingAlternatives:(id)a5
{
  v31 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a3;
  v9 = [a3 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v14 = [a4 countByEnumeratingWithState:&v37 objects:v46 count:{16, v31}];
        if (v14)
        {
          v15 = v14;
          v16 = *v38;
          do
          {
            v17 = 0;
            do
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(a4);
              }

              v18 = [(AppleSpell *)self _pinyinStringByCombiningPinyinString:v13 withPinyinString:*(*(&v37 + 1) + 8 * v17)];
              if (v18)
              {
                [v8 addObject:v18];
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [a4 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v15);
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v31;
  v20 = [v31 countByEnumeratingWithState:&v33 objects:v45 count:{16, v31}];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [v8 addObject:*(*(&v33 + 1) + 8 * v23++)];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v21);
  }

  [v8 sortWithOptions:16 usingComparator:&__block_literal_global_164];
  v24 = [v8 count];
  if (v24)
  {
    v25 = v24;
    v26 = [objc_msgSend(v8 objectAtIndex:{0), "syllableCount"}];
    v27 = v25 - 1;
    do
    {
      v28 = [v8 objectAtIndex:v27];
      if ([v28 syllableCount] > v26)
      {
        goto LABEL_29;
      }

      if (!v27)
      {
        break;
      }

      if ([v28 isEqual:{objc_msgSend(v8, "objectAtIndex:", v27 - 1)}])
      {
LABEL_29:
        [v8 removeObjectAtIndex:v27];
      }

      --v27;
    }

    while (v27 != -1);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __107__AppleSpell_Chinese___retainedAlternativesByCombiningAlternatives_withAlternatives_andAddingAlternatives___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 syllableCount];
  v6 = [a3 syllableCount];
  v7 = [a2 score];
  v8 = [a3 score];
  v9 = -1;
  if (v5 < v6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v7 >= v8)
  {
    v9 = 1;
  }

  if (v7 == v8)
  {
    v9 = 0;
  }

  if (v5 == v6)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

- (id)_recursiveRetainedAlternativesForPinyinInputString:(id)a3 depth:(unint64_t)a4
{
  v6 = self;
  v42 = *MEMORY[0x1E69E9840];
  v7 = [(AppleSpell *)self _primitiveRetainedAlternativesForPinyinInputString:?];
  v8 = [a3 length];
  if ([v7 count] || a4 + 1 > 2)
  {
LABEL_44:
    v28 = v7;
    goto LABEL_45;
  }

  v32 = a4 + 1;
  v9 = [(AppleSpell *)v6 _getSplitIndexes:v41 maxCount:3 forPinyinInputString:a3];
  v10 = 0;
  v33 = 0;
LABEL_4:
  v35 = v10;
  if (a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 >= 2;
  }

  v12 = !v11;
  v13 = v9;
  while (1)
  {
    if (![v7 count])
    {
      if (!v13)
      {
        break;
      }

      goto LABEL_18;
    }

    v14 = v13 ? v12 : 0;
    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_18:
    v9 = v13 - 1;
    v15 = *&v40[8 * v13 + 120];
    if (v15)
    {
      v16 = v8 > v15;
    }

    else
    {
      v16 = 0;
    }

    --v13;
    if (v16)
    {
      v34 = v6;
      v17 = -[AppleSpell _primitiveRetainedAlternativesForPinyinInputString:](v6, "_primitiveRetainedAlternativesForPinyinInputString:", [a3 substringToIndex:v15]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v18)
      {
        v19 = v18;
        v31 = a4;
        v20 = *v37;
LABEL_25:
        v21 = 0;
        while (1)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if (![*(*(&v36 + 1) + 8 * v21) lastSyllableIsPartial])
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
            if (v19)
            {
              goto LABEL_25;
            }

            goto LABEL_38;
          }
        }

        if (![v17 count])
        {
LABEL_38:
          a4 = v31;
          goto LABEL_39;
        }

        v22 = -[AppleSpell _recursiveRetainedAlternativesForPinyinInputString:depth:](v34, "_recursiveRetainedAlternativesForPinyinInputString:depth:", [a3 substringFromIndex:v15], v32);
        a4 = v31;
        if ([v22 count])
        {
          v23 = [(AppleSpell *)v34 _retainedAlternativesByCombiningAlternatives:v17 withAlternatives:v22 andAddingAlternatives:v7];

          v7 = v23;
        }

        v24 = v35;
        if (![v7 count] && !objc_msgSend(v33, "count"))
        {
          v25 = -[PRPinyinString initWithUncheckedString:score:originalLength:]([PRPinyinString alloc], "initWithUncheckedString:score:originalLength:", [a3 substringFromIndex:v15], 255, v8 - v15);
          v26 = [MEMORY[0x1E695DEC8] arrayWithObject:v25];

          v27 = v26;
          a4 = v31;
          v33 = [(AppleSpell *)v34 _retainedAlternativesByCombiningAlternatives:v17 withAlternatives:v27 andAddingAlternatives:0];
        }
      }

      else
      {
LABEL_39:
        v24 = v35;
      }

      v10 = v24 + 1;
      v6 = v34;
      goto LABEL_4;
    }
  }

  v28 = v33;
  if (!v33)
  {
    goto LABEL_44;
  }

  if ([v7 count])
  {

    goto LABEL_44;
  }

LABEL_45:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)spellServer:(id)a3 _retainedAlternativesForPinyinInputString:(id)a4 extended:(BOOL)a5
{
  v5 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v34 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v8 = [(AppleSpell *)self _recursiveRetainedAlternativesForPinyinInputString:a4 depth:0];
  v9 = v8;
  if (v5 && [v8 count])
  {
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v9;
    v38 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v38)
    {
      v36 = *v44;
      do
      {
        v10 = 0;
        do
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v10;
          v11 = *(*(&v43 + 1) + 8 * v10);
          v12 = [v11 numberOfNonPinyinRanges];
          if (v12)
          {
            v13 = v12;
            v40 = MEMORY[0x1E695DF70];
            v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfReplacements")}];
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfTranspositions")}];
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfInsertions")}];
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfDeletions")}];
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "syllableCount")}];
            v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "lastSyllableIsPartial")}];
            v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "score")}];
            v20 = [v40 arrayWithObjects:{v11, v39, v14, v15, v16, v17, v18, v19, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v11, "indexOfFirstModification")), 0}];
            for (i = 0; i != v13; ++i)
            {
              v22 = [v11 nonPinyinRangeAtIndex:i];
              v24 = v23;
              [v20 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v22)}];
              [v20 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v24)}];
            }
          }

          else
          {
            v41 = MEMORY[0x1E695DEC8];
            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfReplacements")}];
            v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfTranspositions")}];
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfInsertions")}];
            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "numberOfDeletions")}];
            v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "syllableCount")}];
            v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "lastSyllableIsPartial")}];
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "score")}];
            v20 = [v41 arrayWithObjects:{v11, v25, v26, v27, v28, v29, v30, v31, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v11, "indexOfFirstModification")), 0}];
          }

          [v37 addObject:v20];
          v10 = v42 + 1;
        }

        while (v42 + 1 != v38);
        v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v38);
    }
  }

  else
  {
    v37 = v9;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)spellServer:(id)a3 alternativesForPinyinInputString:(id)a4
{
  v4 = [(AppleSpell *)self spellServer:a3 _retainedAlternativesForPinyinInputString:a4 extended:0];

  return v4;
}

- (id)spellServer:(id)a3 extendedAlternativesForPinyinInputString:(id)a4
{
  v4 = [(AppleSpell *)self spellServer:a3 _retainedAlternativesForPinyinInputString:a4 extended:1];

  return v4;
}

- (id)spellServer:(id)a3 _retainedPrefixesForPinyinInputString:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (spellServer__retainedPrefixesForPinyinInputString___cachedStringWithoutPrefixes && [a4 hasPrefix:?])
  {
    v7 = [spellServer__retainedPrefixesForPinyinInputString___cachedStringWithoutPrefixes length] + 1;
  }

  else
  {
    v7 = 1;
  }

  v28 = 0;
  usedBufLen = 0;
  v8 = [a4 length];
  v9 = [(AppleSpell *)self databaseConnectionForLanguageObject:[PRLanguage languageObjectWithIdentifier:@"en_CN"]];
  if (v8)
  {
    v10 = v9;
    v35.location = 0;
    v35.length = v8;
    if (v8 == CFStringGetBytes(a4, v35, 0x500u, 0, 0, &buffer, 254, &usedBufLen))
    {
      v11 = usedBufLen;
      *(&buffer + usedBufLen) = 0;
      v12 = 14;
      while (1)
      {
        while (v12 > v11)
        {
          if (--v12 <= 2)
          {
            goto LABEL_23;
          }
        }

        v13 = [(AppleSpell *)self englishStringFromWordBuffer:&buffer length:v12 connection:v10];
        if (v13)
        {
          v14 = v13;
          if (![v6 count] || usedBufLen == v12 || findPinyin(&buffer + v12, usedBufLen - v12, 0, 1, 0, 0, 0, 0, &v28, 0, 0, 0, 0, 0, 0, 0, 0, 0) && usedBufLen - v28 == v12)
          {
            v15 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:]([PRPinyinString alloc], "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", v14, 0, 0, 128, v12, 5, 0, v12, 0, [v14 length], 0, v12);
            if (([v6 containsObject:v15] & 1) == 0)
            {
              [v6 addObject:v15];
            }
          }
        }

        if (v12 <= v7)
        {
          break;
        }

        if (--v12 < 3)
        {
          break;
        }

        v11 = usedBufLen;
      }

LABEL_23:
      if (![v6 count])
      {

        spellServer__retainedPrefixesForPinyinInputString___cachedStringWithoutPrefixes = [a4 copy];
      }

      if (usedBufLen >= 2)
      {
        v16 = 0;
        do
        {
          if (additionalTwoLetterWords[v16] == buffer && additionalTwoLetterWords[v16 + 1] == v31 && (usedBufLen == 2 || findPinyin(&v32, usedBufLen - 2, 0, 1, 0, 0, 0, 0, &v28, 0, 0, 0, 0, 0, 0, 0, 0, 0) && v28 + 2 == usedBufLen))
          {
            v17 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:]([PRPinyinString alloc], "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&buffer length:2 encoding:12], 0, 0, 128, 2, 5, 0, 2, 0, 2, 0, 2);
            if (([v6 containsObject:v17] & 1) == 0)
            {
              [v6 addObject:v17];
            }
          }

          v18 = v16 >= 0x2E;
          v16 += 2;
        }

        while (!v18);
        if (usedBufLen >= 2)
        {
          v19 = 0;
          do
          {
            if (additionalTwoLetterAcronyms[v19] == buffer && additionalTwoLetterAcronyms[v19 + 1] == v31 && (usedBufLen == 2 || findPinyin(&v32, usedBufLen - 2, 0, 1, 0, 0, 0, 0, &v28, 0, 0, 0, 0, 0, 0, 0, 0, 0) && v28 + 2 == usedBufLen))
            {
              v20 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:]([PRPinyinString alloc], "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", [objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&buffer length:2 encoding:{12), "uppercaseString"}], 0, 0, 128, 2, 5, 0, 2, 0, 2, 0, 2);
              if (([v6 containsObject:v20] & 1) == 0)
              {
                [v6 addObject:v20];
              }
            }

            v18 = v19 >= 8;
            v19 += 2;
          }

          while (!v18);
          if (usedBufLen >= 3)
          {
            v21 = 0;
            do
            {
              if (additionalThreeLetterWords[v21] == buffer && additionalThreeLetterWords[v21 + 1] == v31 && additionalThreeLetterWords[v21 + 2] == v32 && (usedBufLen == 3 || findPinyin(v33, usedBufLen - 3, 0, 1, 0, 0, 0, 0, &v28, 0, 0, 0, 0, 0, 0, 0, 0, 0) && v28 + 3 == usedBufLen))
              {
                v22 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:]([PRPinyinString alloc], "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&buffer length:3 encoding:12], 0, 0, 128, 3, 5, 0, 3, 0, 3, 0, 3);
                if (([v6 containsObject:v22] & 1) == 0)
                {
                  [v6 addObject:v22];
                }
              }

              v18 = v21 >= 0x12F;
              v21 += 3;
            }

            while (!v18);
            if (usedBufLen >= 3)
            {
              v23 = 0;
              do
              {
                if (additionalThreeLetterAcronyms[v23] == buffer && additionalThreeLetterAcronyms[v23 + 1] == v31 && additionalThreeLetterAcronyms[v23 + 2] == v32 && (usedBufLen == 3 || findPinyin(v33, usedBufLen - 3, 0, 1, 0, 0, 0, 0, &v28, 0, 0, 0, 0, 0, 0, 0, 0, 0) && v28 + 3 == usedBufLen))
                {
                  v24 = -[PRPinyinString initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:]([PRPinyinString alloc], "initWithString:syllableCount:lastSyllableIsPartial:score:originalLength:modificationType:originalModificationRange:finalModificationRange:originalSyllableRange:", [objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&buffer length:3 encoding:{12), "uppercaseString"}], 0, 0, 128, 3, 5, 0, 3, 0, 3, 0, 3);
                  if (([v6 containsObject:v24] & 1) == 0)
                  {
                    [v6 addObject:v24];
                  }
                }

                v18 = v23 >= 0xC;
                v23 += 3;
              }

              while (!v18);
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)spellServer:(id)a3 prefixesForPinyinInputString:(id)a4
{
  v4 = [(AppleSpell *)self spellServer:a3 _retainedPrefixesForPinyinInputString:a4];

  return v4;
}

- (id)spellServer:(id)a3 _retainedCorrectionsForPinyinInputString:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0;
  usedBufLen = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  v5 = [a4 length];
  if (v5)
  {
    v30.location = 0;
    v30.length = v5;
    if (v5 == CFStringGetBytes(a4, v30, 0x500u, 0, 0, buffer, 254, &usedBufLen))
    {
      v6 = usedBufLen;
      buffer[usedBufLen] = 0;
      v7 = v6 + 1 > 1 ? v6 + 1 : 1;
      memcpy(__dst, buffer, v7);
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          v9 = buffer[i];
          if ((v9 - 65) < 0x1A)
          {
            break;
          }

          if ((v9 - 97) <= 0x19)
          {
            v10 = 0;
            v11 = &adjacentMatchesChinese + 24 * (v9 - 97);
            do
            {
              v12 = *&v11[v10];
              if (v12)
              {
                __dst[i] = v12;
                if (findPinyin(__dst, usedBufLen, 0, 0, 0, 0, 0, &v24, &v25, 0, &v23, &v21, &v22, 0, 0, 0, 0, 0))
                {
                  if (v25 == usedBufLen && (v21 != 1 || i < v24))
                  {
                    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v14 = [v13 initWithBytes:__dst length:usedBufLen encoding:12];
                    v15 = [PRPinyinString alloc];
                    v16 = [(PRPinyinString *)v15 initWithString:v14 syllableCount:v23 lastSyllableIsPartial:v21 score:v22 originalLength:usedBufLen modificationType:1 originalModificationRange:i finalModificationRange:1, i, 1];
                    if (([v20 containsObject:v16] & 1) == 0)
                    {
                      [v20 addObject:v16];
                    }
                  }
                }
              }

              v10 += 4;
            }

            while (v10 != 24);
            LOBYTE(v9) = buffer[i];
            v6 = usedBufLen;
          }

          __dst[i] = v9;
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)spellServer:(id)a3 correctionsForPinyinInputString:(id)a4
{
  v4 = [(AppleSpell *)self spellServer:a3 _retainedCorrectionsForPinyinInputString:a4];

  return v4;
}

- (id)spellServer:(id)a3 _retainedModificationsForPinyinInputString:(id)a4 geometryModelData:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(AppleSpell *)self _recursiveRetainedAlternativesForPinyinInputString:a4 depth:0];
  v26 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v28 = [v8 numberOfModifications];
        if (v28)
        {
          for (i = 0; i != v28; ++i)
          {
            v31 = [v8 typeOfModificationAtIndex:i];
            v30 = [v8 originalRangeForModificationAtIndex:i];
            v11 = v10;
            v12 = [v8 finalRangeForModificationAtIndex:i];
            v14 = v13;
            v15 = [v8 originalSyllableRangeForModificationAtIndex:i];
            v17 = v16;
            v18 = [v8 originalAdditionalSyllableRangeForModificationAtIndex:i];
            v20 = -[PRPinyinModification initWithRange:replacementString:modificationType:syllableRange:additionalSyllableRange:modificationScore:]([PRPinyinModification alloc], "initWithRange:replacementString:modificationType:syllableRange:additionalSyllableRange:modificationScore:", v30, v11, [v8 substringWithRange:{v12, v14}], v31, v15, v17, 0.0, v18, v19);
            if (([v29 containsObject:v20] & 1) == 0)
            {
              [v29 addObject:v20];
            }
          }
        }

        v7 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v26);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)spellServer:(id)a3 _retainedFinalModificationsForPinyinInputString:(id)a4 geometryModelData:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = [a4 length];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [(AppleSpell *)self spellServer:a3 _retainedModificationsForPinyinInputString:a4 geometryModelData:a5];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 syllableRange];
        if (v17 + v18 == v9)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)spellServer:(id)a3 modificationsForPinyinInputString:(id)a4
{
  v4 = [(AppleSpell *)self spellServer:a3 _retainedModificationsForPinyinInputString:a4 geometryModelData:0];

  return v4;
}

- (id)spellServer:(id)a3 modificationsForPinyinInputString:(id)a4 geometryModelData:(id)a5
{
  v5 = [(AppleSpell *)self spellServer:a3 _retainedModificationsForPinyinInputString:a4 geometryModelData:a5];

  return v5;
}

- (id)spellServer:(id)a3 finalModificationsForPinyinInputString:(id)a4
{
  v4 = [(AppleSpell *)self spellServer:a3 _retainedFinalModificationsForPinyinInputString:a4 geometryModelData:0];

  return v4;
}

- (BOOL)inputStringIsPinyin:(id)a3 allowPartialLastSyllable:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v6 = [a3 length];
  if (v6)
  {
    usedBufLen = 0;
    v15.location = 0;
    v15.length = v6;
    if (v6 != CFStringGetBytes(a3, v15, 0x500u, 0, 0, buffer, 254, &usedBufLen))
    {
LABEL_7:
      LOBYTE(v6) = 0;
      goto LABEL_8;
    }

    v7 = usedBufLen;
    buffer[usedBufLen] = 0;
    LODWORD(v6) = findPinyin(buffer, v7, 0, 1, 0, 0, 0, 0, &v11, 0, 0, &v10, 0, 0, 0, 0, 0, 0);
    if (v6)
    {
      if (v11 == usedBufLen && (a4 || (v10 & 1) == 0))
      {
        LOBYTE(v6) = 1;
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)inputStringIsFullOrAbbreviatedPinyin:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 length];
  if (v4)
  {
    usedBufLen = 0;
    v11.location = 0;
    v11.length = v4;
    if (v4 == CFStringGetBytes(a3, v11, 0x500u, 0, 0, buffer, 254, &usedBufLen))
    {
      v5 = usedBufLen;
      buffer[usedBufLen] = 0;
      LOBYTE(v4) = isFullOrAbbreviatedPinyin(buffer, v5, 0, 0);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_addContextAlternativesForPinyinInputString:(id)a3 modifications:(id)a4 afterIndex:(unint64_t)a5 delta:(int64_t)a6 toArray:(id)a7
{
  v58 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = [a4 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v44)
  {
    v43 = *v53;
    v38 = a6;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(a4);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v11 = [v10 range];
        v13 = v12;
        v14 = [v10 syllableRange];
        v46 = v15;
        if (v11 >= a5 && v14 >= a5)
        {
          v17 = v14;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v18 = [a4 countByEnumeratingWithState:&v48 objects:v56 count:16];
          v45 = i;
          if (!v18)
          {
            v21 = 1;
LABEL_27:
            v28 = v11;
            v29 = a6;
            v30 = [a3 mutableCopy];
            v31 = v13;
            if ([v10 modificationType] == 5)
            {
              v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", objc_msgSend(v10, "replacementString")];
            }

            else
            {
              v32 = [v10 replacementString];
            }

            v33 = v32;
            v34 = [v32 length];
            [v30 replaceCharactersInRange:v28 + v29 withString:{v31, v33}];
            if (v21)
            {
              i = v45;
              a6 = v29;
              if (([a7 containsObject:v30] & 1) == 0)
              {
                [a7 addObject:v30];
              }
            }

            else
            {
              [(AppleSpell *)self _addContextAlternativesForPinyinInputString:v30 modifications:a4 afterIndex:v17 + v46 delta:v29 - v31 + v34 toArray:a7];
              i = v45;
              a6 = v29;
            }

            [v10 modificationScore];
            if (v35 < 1.0)
            {
              if (v21)
              {
                if (([a7 containsObject:a3] & 1) == 0)
                {
                  [a7 addObject:a3];
                }
              }

              else
              {
                [(AppleSpell *)self _addContextAlternativesForPinyinInputString:a3 modifications:a4 afterIndex:v17 + v46 delta:a6 toArray:a7];
              }
            }

            continue;
          }

          v19 = v18;
          v40 = v11;
          v41 = v13;
          v20 = *v49;
          v21 = 1;
          v22 = 1;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v49 != v20)
              {
                objc_enumerationMutation(a4);
              }

              v24 = *(*(&v48 + 1) + 8 * j);
              v25 = [v24 syllableRange];
              if (v24 != v10 && v25 >= a5)
              {
                v22 &= v25 + v26 > v17;
                v21 &= v17 + v46 > v25;
              }
            }

            v19 = [a4 countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v19);
          a6 = v38;
          i = v45;
          v11 = v40;
          v13 = v41;
          if (v22)
          {
            goto LABEL_27;
          }
        }
      }

      v44 = [a4 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v44);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (id)contextAlternativeAnnotatedStringsForPinyinInputString:(id)a3
{
  v5 = objc_alloc_init(PRPinyinContext);
  v6 = [a3 length];
  v7 = [MEMORY[0x1E695DF70] array];
  Current = CFAbsoluteTimeGetCurrent();
  if (v6)
  {
    v9 = 1;
    v10 = v6;
    do
    {
      -[AppleSpell spellServer:alternativesForPinyinInputString:](self, "spellServer:alternativesForPinyinInputString:", 0, [a3 substringToIndex:v9++]);
      --v10;
    }

    while (v10);
  }

  *&contextAlternativeAnnotatedStringsForPinyinInputString__oldTimeTotal = *&contextAlternativeAnnotatedStringsForPinyinInputString__oldTimeTotal + CFAbsoluteTimeGetCurrent() - Current;
  v11 = CFAbsoluteTimeGetCurrent();
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      -[PRPinyinContext addInputCharacter:geometryModel:geometryData:](v5, "addInputCharacter:geometryModel:geometryData:", [a3 characterAtIndex:i], 0, 0);
    }
  }

  *&contextAlternativeAnnotatedStringsForPinyinInputString__newTimeTotal = *&contextAlternativeAnnotatedStringsForPinyinInputString__newTimeTotal + CFAbsoluteTimeGetCurrent() - v11;
  [(AppleSpell *)self _addContextAlternativesForPinyinInputString:a3 modifications:[(PRPinyinContext *)v5 currentModifications] afterIndex:0 delta:0 toArray:v7];

  return v7;
}

- (id)contextAlternativeAnnotatedStringsForJyutpingInputString:(id)a3
{
  v5 = objc_alloc_init(PRJyutpingContext);
  v6 = [a3 length];
  v7 = [MEMORY[0x1E695DF70] array];
  Current = CFAbsoluteTimeGetCurrent();
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      -[PRPinyinContext addInputCharacter:geometryModel:geometryData:](v5, "addInputCharacter:geometryModel:geometryData:", [a3 characterAtIndex:i], 0, 0);
    }
  }

  *&contextAlternativeAnnotatedStringsForJyutpingInputString__timeTotal = *&contextAlternativeAnnotatedStringsForJyutpingInputString__timeTotal + CFAbsoluteTimeGetCurrent() - Current;
  [(AppleSpell *)self _addContextAlternativesForPinyinInputString:a3 modifications:[(PRPinyinContext *)v5 currentModifications] afterIndex:0 delta:0 toArray:v7];

  return v7;
}

- (id)internalStringForKoreanExternalString:(id)a3
{
  if (!_nonPunctuationCharacterSet)
  {
    _nonPunctuationCharacterSet = [objc_msgSend(MEMORY[0x1E696AB08] "punctuationCharacterSet")];
  }

  [a3 rangeOfCharacterFromSet:?];
  if (!v4)
  {
    return a3;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a3);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  v6 = ConvertStringToHangulCompatibilityJamo(MutableCopy);
  CFRelease(MutableCopy);
  return v6;
}

- (id)externalStringForKoreanInternalString:(id)a3
{
  if (!_nonPunctuationCharacterSet)
  {
    _nonPunctuationCharacterSet = [objc_msgSend(MEMORY[0x1E696AB08] "punctuationCharacterSet")];
  }

  [a3 rangeOfCharacterFromSet:?];
  result = a3;
  if (v5)
  {
    v6 = ConvertStringFromHangulCompatibilityJamo(a3);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v6);
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);

    return MutableCopy;
  }

  return result;
}

- (id)spellServer:(id)a3 suggestGuessesForKoreanWordRange:(_NSRange)a4 inString:(id)a5 options:(id)a6
{
  length = a4.length;
  location = a4.location;
  v57 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E695DF70] array];
  v43 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v12 = [a5 substringWithRange:{location, length}];
  v13 = _appIdentifierFromOptions(a6);
  v14 = [PRLanguage languageObjectWithIdentifier:@"ko"];
  v15 = -[AppleSpell taggerForLanguageObject:string:range:](self, "taggerForLanguageObject:string:range:", v14, a5, 0, [a5 length]);
  v16 = -[PRCandidateList initWithMaxCount:defaultReplacementRange:customErrorModel:capitalizationDictionaryArray:]([PRCandidateList alloc], "initWithMaxCount:defaultReplacementRange:customErrorModel:capitalizationDictionaryArray:", 32, location, length, [a6 objectForKey:PRErrorModelKey], 0);
  v17 = [-[AppleSpell autocorrectionDictionaryForLanguageObject:](self autocorrectionDictionaryForLanguageObject:{v14), "objectForKey:", v12}];
  usedBufLen = 0;
  v18 = [a6 objectForKey:@"ParameterBundles"];
  v42 = v12;
  [(AppleSpell *)self addGuessesForKoreanWord:v12 includeAdditionalGuesses:1 toGuesses:v16];
  v44 = v15;
  if (v15)
  {
    v19 = [(AppleSpell *)self _rankedCandidatesForCandidateList:v16 languageObject:v14 tagger:v15 appIdentifier:v13 parameterBundles:v18];
    if (v19)
    {
      v20 = v19;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v21 = [v19 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v50;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v50 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v49 + 1) + 8 * i);
            if (([v25 isBlocklisted] & 1) == 0)
            {
              v26 = [v25 string];
              if (([v11 containsObject:v26] & 1) == 0)
              {
                [v11 addObject:v26];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v22);
      }
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = [(PRCandidateList *)v16 candidates];
  v28 = [v27 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v46;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v45 + 1) + 8 * j);
        if (([v32 isBlocklisted] & 1) == 0)
        {
          v33 = [v32 string];
          if (([v11 containsObject:v33] & 1) == 0)
          {
            [v11 addObject:v33];
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v29);
  }

  [v11 removeObject:v42];
  v34 = [v11 count];
  if (v34)
  {
    v35 = v34 - 1;
    do
    {
      v36 = [v11 objectAtIndex:v35];
      v37 = v36;
      if (!v17 || ([v36 isEqualToString:v17] & 1) == 0)
      {
        v38 = [(AppleSpell *)self internalStringForKoreanExternalString:v37];
        v39 = [(__CFString *)v38 length];
        v58.location = 0;
        v58.length = v39;
        if (v39 == CFStringGetBytes(v38, v58, 0x8000100u, 0, 0, buffer, 254, &usedBufLen) && ![(AppleSpell *)self checkWordBuffer:buffer length:usedBufLen languageObject:v14 index:1]&& [(AppleSpell *)self acceptabilityOfWordBuffer:buffer length:usedBufLen languageObject:v14 forPrediction:0 alreadyCapitalized:0]!= 2)
        {
          [v11 removeObjectAtIndex:v35];
        }
      }

      --v35;
    }

    while (v35 != -1);
  }

  [(AppleSpell *)self resetTimer];
  [(AppleSpell *)self invalidateTagger:v44];

  v40 = *MEMORY[0x1E69E9840];
  return v11;
}

@end