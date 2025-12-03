@interface TIKeyboardInputManagerTransliteration
+ (id)transliteratorInputCharacterSet;
- (BOOL)hasInputToTransliterate;
- (CandidateCollection)autocorrectionCandidateStrings;
- (TIKeyboardInputManagerTransliteration)initWithConfig:(id)config keyboardState:(id)state;
- (TLTransliterator)autocorrectionTransliterator;
- (TLTransliterator)exactStringTransliterator;
- (TLTransliterator)transliterator;
- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)count;
- (id)candidateContextFromDocumentStateOnly;
- (id)candidatesForInputString:(id)string;
- (id)candidatesForInputString:(id)string transliterator:(id)transliterator;
- (id)candidatesWithTypedString:(id)string autocorrectedCandidates:(id)candidates;
- (id)candidatesWithTypedString:(id)string autocorrectedString:(id)autocorrectedString;
- (id)dictionaryInputMode;
- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)range;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)keyEventMap;
- (id)keyboardConfiguration;
- (id)lexiconLocales;
- (id)mecabraCandidatePointerValueWithCandidate:(id)candidate;
- (id)scoreAndResortCandidates:(id)candidates string:(id)string geometryScore:(float)score;
- (id)sortedCandidatesFromTypedStringCandidates:(id)candidates autocorrectedStringCandidates:(id)stringCandidates autocorrectedLatinString:(id)string;
- (shared_ptr<KB::LanguageModel>)loadNewLanguageModel;
- (void)decrementLanguageModelCount:(id)count latinInputString:(id)string tokenID:(TITokenID)d contextTokens:(id)tokens;
- (void)deleteFromInputWithContext:(id)context;
- (void)initImplementation;
- (void)loadDictionaries;
- (void)loadFavoniusTypingModel;
- (void)processCandidates:(id)candidates withGeometryScore:(float)score originalLatinString:(id)string context:(void *)context intoCandidateCollection:(void *)collection intoStringCandidateMap:(id)map;
- (void)suspend;
@end

@implementation TIKeyboardInputManagerTransliteration

- (void)decrementLanguageModelCount:(id)count latinInputString:(id)string tokenID:(TITokenID)d contextTokens:(id)tokens
{
  tokensCopy = tokens;
  countCopy = count;
  [(TIKeyboardInputManager *)self decrementLanguageModelCount:string tokenID:d contextTokens:tokensCopy];
  nativeModelManager = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  v13 = [nativeModelManager findTokenIDForWord:countCopy contextTokens:0 tokenLookupMode:0];

  nativeModelManager2 = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  [nativeModelManager2 decrementLanguageModelCount:countCopy tokenID:v13 contextTokens:tokensCopy];
}

- (void)processCandidates:(id)candidates withGeometryScore:(float)score originalLatinString:(id)string context:(void *)context intoCandidateCollection:(void *)collection intoStringCandidateMap:(id)map
{
  v38 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  mapCopy = map;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = candidatesCopy;
  v13 = [candidatesCopy countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        candidate = [v17 candidate];
        KB::String::String(v29, [candidate cStringUsingEncoding:4]);
        KB::Candidate::Candidate(v31, v29, 0);
        if (v30 && v29[6] == 1)
        {
          free(v30);
        }

        objc_opt_class();
        v19 = 0;
        v20 = 0;
        if (objc_opt_isKindOfClass())
        {
          [v17 seq2seqScore];
          v20 = v21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 lmScore];
          v19 = v22;
        }

        v32 = 0;
        v33 = v19;
        v34 = 0x3E80000000000000;
        v35 = v20;
        KB::LanguageModelContext::operator=(&v36, context);
        std::vector<KB::Candidate>::push_back[abi:nn200100](collection, v31);
        [mapCopy setObject:v17 forKeyedSubscript:candidate];
        KB::Candidate::~Candidate(v31);
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v14);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)scoreAndResortCandidates:(id)candidates string:(id)string geometryScore:(float)score
{
  v48 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  stringCopy = string;
  v45 = 0;
  memset(v43, 0, sizeof(v43));
  memset(v44, 0, sizeof(v44));
  v10 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  *__p = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v40);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v41);
  memset(v42, 0, 24);
  v35 = 0;
  nativeModelManager = self->_nativeModelManager;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  KB::utf8_string(contextBeforeInput, &v46);
  [(TIKeyboardInputManager *)nativeModelManager tokenizeString:&v46 context:&v36 sentences:&v35];
  if (v47 && BYTE6(v46) == 1)
  {
    free(v47);
  }

  v33 = stringCopy;
  v34 = candidatesCopy;
  *&v15 = score;
  [(TIKeyboardInputManagerTransliteration *)self processCandidates:candidatesCopy withGeometryScore:stringCopy originalLatinString:&v36 context:v43 intoCandidateCollection:v10 intoStringCandidateMap:v15];
  [(TIKeyboardInputManager *)self->_nativeModelManager scoreCandidates:v43];
  v16 = 0x1CAC083126E978D5 * ((v43[1] - v43[0]) >> 3);
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v16];
  v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v16];
  v19 = v43[1];
  for (i = v43[0]; i != v19; i += 1000)
  {
    v21 = MEMORY[0x277CCACA8];
    if (*(i + 888))
    {
      if (*(i + 896))
      {
        v22 = *(i + 896);
      }

      else
      {
        v22 = (i + 904);
      }
    }

    else
    {
      KB::Candidate::compute_string(i);
      v23 = *(i + 896);
      if (!v23)
      {
        v23 = (i + 904);
      }

      if (*(i + 888))
      {
        v22 = v23;
      }

      else
      {
        v22 = "";
      }
    }

    v24 = [v21 stringWithUTF8String:v22];
    v25 = [v10 objectForKeyedSubscript:v24];
    if (([v18 containsObject:v24] & 1) == 0)
    {
      if (*i)
      {
        v27 = 240 * *i;
        v28 = (*(i + 8) + 56);
        LODWORD(v26) = 1.0;
        do
        {
          v29 = *v28;
          v28 += 60;
          *&v26 = *&v26 * v29;
          v27 -= 240;
        }

        while (v27);
      }

      else
      {
        LODWORD(v26) = 1.0;
      }

      v30 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
      [v25 setStaticLinguisticLikelihood:v30];

      [v17 addObject:v25];
      [v18 addObject:v24];
    }
  }

  v46 = v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v46);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v41);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v40);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*(&v36 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v36 + 1));
  }

  *&v36 = &v44[1] + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);
  *&v36 = v44;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);
  *&v36 = &v43[3];
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);
  *&v36 = v43;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);

  v31 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)keyboardConfiguration
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerTransliteration;
  keyboardConfiguration = [(TIKeyboardInputManager *)&v10 keyboardConfiguration];
  config = [(TIKeyboardInputManager *)self config];
  inputMode = [config inputMode];
  languageWithRegion = [inputMode languageWithRegion];
  v11[0] = languageWithRegion;
  v11[1] = @"en_IN";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [keyboardConfiguration setMultilingualLanguages:v7];

  v8 = *MEMORY[0x277D85DE8];

  return keyboardConfiguration;
}

- (id)candidatesForInputString:(id)string transliterator:(id)transliterator
{
  v58 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  transliteratorCopy = transliterator;
  if (![stringCopy length])
  {
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_32;
  }

  v7 = stringCopy;
  i = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:i options:8];
  v11 = v10;

  v44 = stringCopy;
  v41 = v7;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = 0;
    v12 = v7;
  }

  else
  {
    v47 = [v7 substringWithRange:{v9, v11}];
    v12 = [v7 substringFromIndex:v9 + v11];
  }

  candidateContextFromDocumentStateOnly = [(TIKeyboardInputManagerTransliteration *)self candidateContextFromDocumentStateOnly];
  v43 = transliteratorCopy;
  v46 = v12;
  v14 = [transliteratorCopy generateCandidatesForInputWord:v12 candidateContextStrings:? maxCandidatesCount:?];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v14;
  v49 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v49)
  {
    v45 = *v54;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        v15 = v13;
        if (*v54 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        transliteratedWord = [v16 transliteratedWord];
        firstObject = [obj firstObject];
        v19 = firstObject;
        if (v16 == firstObject)
        {

          LODWORD(v20) = 0;
        }

        else
        {
          LODWORD(v20) = [v16 isExtensionCandidate];
        }

        if ([v16 type] == 3)
        {
          v20 = v20 | 2;
        }

        else
        {
          v20 = v20;
        }

        if ([v47 length])
        {
          v21 = [v47 stringByAppendingString:transliteratedWord];

          transliteratedWord = v21;
        }

        v22 = objc_alloc(MEMORY[0x277D6F448]);
        inputString = [(TIKeyboardInputManager *)self inputString];
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
        v25 = [v22 initWithCandidate:transliteratedWord forInput:inputString latinCandidate:v46 mecabraCandidatePointerValue:v24 withFlags:v20];

        [v16 lmScore];
        *&v26 = v26;
        [v25 setLmScore:v26];
        transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
        [transliteratorCandidateByMecabraCandidatePointerValue setObject:v16 forKey:v28];

        [v16 seq2seqScore];
        *&v29 = v29;
        [v25 setSeq2seqScore:v29];
        v13 = v15;
        [v15 addObject:v25];
      }

      v49 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v49);
  }

  transliteratorCopy = v43;
  stringCopy = v44;
  if (-[TIKeyboardInputManagerTransliteration prioritizeLatinCandidates](self, "prioritizeLatinCandidates") || ![v13 count])
  {
    v30 = [v13 count];
    if (v30)
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __81__TIKeyboardInputManagerTransliteration_candidatesForInputString_transliterator___block_invoke;
      v51[3] = &unk_278731D60;
      i = &v52;
      v31 = v41;
      v52 = v41;
      v32 = [v13 indexOfObjectPassingTest:v51];
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = v32;
        v38 = [v13 objectAtIndexedSubscript:v32];
        [v13 removeObjectAtIndex:v37];
        [v13 insertObject:v38 atIndex:0];

LABEL_30:
        goto LABEL_31;
      }

      v33 = v13;
    }

    else
    {
      v33 = v13;
      v31 = v41;
    }

    v34 = MEMORY[0x277D6F3D8];
    inputString2 = [(TIKeyboardInputManager *)self inputString];
    v36 = [v34 candidateWithCandidate:v31 forInput:inputString2];

    v13 = v33;
    [v33 insertObject:v36 atIndex:0];

    if (!v30)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_31:

LABEL_32:
  v39 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __81__TIKeyboardInputManagerTransliteration_candidatesForInputString_transliterator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)count
{
  nativeModelManager = self->_nativeModelManager;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  [(TIKeyboardInputManager *)nativeModelManager syncToKeyboardState:keyboardState];

  v7 = self->_nativeModelManager;

  return [(TIKeyboardInputManager *)v7 autocorrectionListForEmptyInputWithDesiredCandidateCount:count];
}

- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)range
{
  selfCopy = self;
  v76 = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = TIKeyboardInputManagerTransliteration;
  v4 = [(TIKeyboardInputManager *)&v73 generateTypingAutocorrectionsWithCandidateRange:range.location, range.length];
  v5 = v4;
  v6 = *(selfCopy->super.super.m_impl + 108);
  if ((v6 & 0x80000000) == 0)
  {
    corrections = [v4 corrections];
    autocorrection = [corrections autocorrection];
    candidate = [autocorrection candidate];
    candidate2 = 0;
LABEL_5:

    goto LABEL_6;
  }

  candidate = [(TIKeyboardInputManager *)selfCopy inputString];
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  autocorrectionEnabled = [mEMORY[0x277D6F470] autocorrectionEnabled];

  if (autocorrectionEnabled)
  {
    corrections = [v5 corrections];
    autocorrection = [corrections autocorrection];
    candidate2 = [autocorrection candidate];
    goto LABEL_5;
  }

  candidate2 = 0;
LABEL_6:
  v67 = candidate2;
  v68 = candidate;
  if (candidate == candidate2)
  {
    v13 = 0;
  }

  else
  {
    v13 = candidate2;
  }

  v14 = [(TIKeyboardInputManagerTransliteration *)selfCopy candidatesWithTypedString:candidate autocorrectedString:v13];
  v15 = [v14 mutableCopy];

  if (![v15 count])
  {
    candidates = [v5 candidates];
    v36 = [candidates count];

    if (v36)
    {
      v37 = v5;
      goto LABEL_59;
    }
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = v16;
  v64 = v5;
  v65 = selfCopy;
  v63 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v62 = v16;
    corrections2 = [v5 corrections];
    autocorrection2 = [corrections2 autocorrection];

    if ([v15 count])
    {
      for (i = 0; i < [v15 count]; ++i)
      {
        v21 = [v15 objectAtIndexedSubscript:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
          [v22 setContinuousPathConversion:1];
          [v22 setShouldInsertSpaceAfterSelection:{objc_msgSend(autocorrection2, "shouldInsertSpaceAfterSelection")}];
          if (!i)
          {
            goto LABEL_15;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          [v21 setContinuousPathConversion:1];
          if (!i)
          {
LABEL_15:
            [v21 setShouldAccept:{objc_msgSend(autocorrection2, "shouldAccept")}];
          }
        }

LABEL_20:
        if (i)
        {
          candidate3 = [v21 candidate];
          v24 = [v15 objectAtIndexedSubscript:0];
          candidate4 = [v24 candidate];
          v26 = [v21 candidateByReplacingWithCandidate:candidate3 input:candidate4];

          [v15 setObject:v26 atIndexedSubscript:i];
        }
      }
    }

    v17 = v62;
    if ([v15 count])
    {
      if (autocorrection2)
      {
        candidate5 = [autocorrection2 candidate];
        v28 = [v15 objectAtIndexedSubscript:0];
        candidate6 = [v28 candidate];
        v30 = [autocorrection2 candidateByReplacingWithCandidate:candidate5 input:candidate6];

        if (v30)
        {
          [v62 insertObject:v30 atIndex:0];
        }
      }
    }

    selfCopy = v65;
  }

  if (!(*(**(selfCopy->super.super.m_impl + 28) + 232))(*(selfCopy->super.super.m_impl + 28)))
  {
    v33 = 0;
    v34 = v17;
    v17 = v15;
    goto LABEL_34;
  }

  v31 = objc_alloc(MEMORY[0x277D6F348]);
  firstObject = [v15 firstObject];
  v33 = [v31 initWithAutocorrection:firstObject alternateCorrections:0];

  if ([v15 count] >= 2)
  {
    v34 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];
    [v17 addObjectsFromArray:v34];
LABEL_34:
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v40 = v17;
  v41 = [v40 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v70;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v70 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v69 + 1) + 8 * j);
        if ([v45 isEmojiCandidate])
        {
          v46 = v39;
        }

        else
        {
          v46 = v38;
        }

        [v46 addObject:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v42);
  }

  if (_os_feature_enabled_impl())
  {
    dictionaryLookup = [(TIKeyboardInputManagerTransliteration *)v65 dictionaryLookup];
    v48 = &stru_283FDFAF8;
    v49 = v67;
    if (!v67)
    {
      v49 = &stru_283FDFAF8;
    }

    if (v68)
    {
      v48 = v68;
    }

    v74[0] = v49;
    v74[1] = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v51 = [dictionaryLookup translationsForStrings:v50];
    firstObject2 = [v51 firstObject];

    if ([firstObject2 length])
    {
      v53 = MEMORY[0x277D6F3D8];
      autocorrection3 = [v33 autocorrection];
      input = [autocorrection3 input];
      v56 = [v53 candidateWithCandidate:firstObject2 forInput:input];

      if (v63 < 0 || ![v15 count])
      {
        [v38 insertObject:v56 atIndex:0];
      }

      else
      {
        candidate7 = [v56 candidate];
        v57 = [v15 objectAtIndexedSubscript:0];
        candidate8 = [v57 candidate];
        v59 = [v56 candidateByReplacingWithCandidate:candidate7 input:candidate8];

        [v38 insertObject:v59 atIndex:1];
      }
    }
  }

  v37 = [MEMORY[0x277D6F328] listWithCorrections:v33 predictions:v38 emojiList:v39];

  v5 = v64;
LABEL_59:

  v60 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)candidatesForInputString:(id)string
{
  stringCopy = string;
  transliterator = [(TIKeyboardInputManagerTransliteration *)self transliterator];
  v6 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:stringCopy transliterator:transliterator];

  return v6;
}

- (id)sortedCandidatesFromTypedStringCandidates:(id)candidates autocorrectedStringCandidates:(id)stringCandidates autocorrectedLatinString:(id)string
{
  v59 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  stringCandidatesCopy = stringCandidates;
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  firstObject = [stringCandidatesCopy firstObject];
  objc_opt_class();
  v46 = stringCandidatesCopy;
  v47 = candidatesCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  firstObject2 = [stringCandidatesCopy firstObject];

  if (!firstObject2)
  {
LABEL_10:
    [array addObjectsFromArray:candidatesCopy];
    goto LABEL_27;
  }

  firstObject3 = [candidatesCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject4 = [candidatesCopy firstObject];

    if (firstObject4)
    {
      [firstObject4 lmScore];
      v16 = v15;
      [firstObject2 lmScore];
      v44 = firstObject4;
      v45 = firstObject2;
      if (v16 >= v17)
      {
        [array addObjectsFromArray:candidatesCopy];
        v19 = [stringCandidatesCopy objectAtIndex:0];
        [array addObject:v19];

        stringCandidatesCopy = candidatesCopy;
      }

      else
      {
        v18 = [stringCandidatesCopy objectAtIndex:0];
        [array addObject:v18];

        if (_os_feature_enabled_impl())
        {
          [array addObject:stringCopy];
        }

        [array addObjectsFromArray:candidatesCopy];
      }

      v20 = stringCandidatesCopy;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v54;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v54 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v53 + 1) + 8 * i);
            v26 = [(TIKeyboardInputManagerTransliteration *)self mecabraCandidatePointerValueWithCandidate:v25];
            if (v26)
            {
              transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
              v28 = [transliteratorCandidateByMecabraCandidatePointerValue objectForKey:v26];

              if ([v28 type] != 3)
              {
                [array addObject:v25];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v22);
      }

      firstObject2 = v45;
      goto LABEL_26;
    }
  }

  else
  {
  }

  [array addObjectsFromArray:stringCandidatesCopy];
LABEL_26:

LABEL_27:
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEB58] set];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = array;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v50;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v49 + 1) + 8 * j);
        candidate = [v37 candidate];
        v39 = [v31 containsObject:candidate];

        if ((v39 & 1) == 0)
        {
          candidate2 = [v37 candidate];
          [v31 addObject:candidate2];

          if ([v37 isExtensionCandidate])
          {
            v41 = array3;
          }

          else
          {
            v41 = array2;
          }

          [v41 addObject:v37];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v34);
  }

  [array2 addObjectsFromArray:array3];
  v42 = *MEMORY[0x277D85DE8];

  return array2;
}

- (id)candidatesWithTypedString:(id)string autocorrectedCandidates:(id)candidates
{
  v28 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  candidatesCopy = candidates;
  firstObject = [candidatesCopy firstObject];
  candidate = [firstObject candidate];

  if ([stringCopy length])
  {
    v9 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:stringCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = candidatesCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        candidate2 = [*(*(&v23 + 1) + 8 * i) candidate];
        v17 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:candidate2];
        [array addObjectsFromArray:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = [objc_alloc(MEMORY[0x277D6F3D8]) initWithCandidate:candidate];
  v19 = [(TIKeyboardInputManagerTransliteration *)self sortedCandidatesFromTypedStringCandidates:v9 autocorrectedStringCandidates:array autocorrectedLatinString:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)candidatesWithTypedString:(id)string autocorrectedString:(id)autocorrectedString
{
  v15[1] = *MEMORY[0x277D85DE8];
  autocorrectedStringCopy = autocorrectedString;
  if (autocorrectedStringCopy)
  {
    v7 = MEMORY[0x277D6F568];
    stringCopy = string;
    v9 = [[v7 alloc] initWithCandidate:autocorrectedStringCopy];
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [(TIKeyboardInputManagerTransliteration *)self candidatesWithTypedString:stringCopy autocorrectedCandidates:v10];
  }

  else
  {
    stringCopy2 = string;
    v11 = [(TIKeyboardInputManagerTransliteration *)self candidatesWithTypedString:stringCopy2 autocorrectedCandidates:MEMORY[0x277CBEBF8]];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)mecabraCandidatePointerValueWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
  }

  else
  {
    mecabraCandidatePointerValue = 0;
  }

  return mecabraCandidatePointerValue;
}

- (TLTransliterator)transliterator
{
  transliterator = self->_transliterator;
  if (!transliterator)
  {
    v4 = MEMORY[0x277CBEAF8];
    config = [(TIKeyboardInputManager *)self config];
    inputMode = [config inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:languageWithRegion];

    v9 = [objc_alloc(MEMORY[0x277D73530]) initWithLocale:v8];
    v10 = [objc_alloc(MEMORY[0x277D73528]) initWithParameters:v9];
    v11 = self->_transliterator;
    self->_transliterator = v10;

    transliterator = self->_transliterator;
  }

  return transliterator;
}

- (TLTransliterator)autocorrectionTransliterator
{
  autocorrectionTransliterator = self->_autocorrectionTransliterator;
  if (!autocorrectionTransliterator)
  {
    v4 = MEMORY[0x277CBEAF8];
    config = [(TIKeyboardInputManager *)self config];
    inputMode = [config inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:languageWithRegion];

    v9 = [objc_alloc(MEMORY[0x277D73530]) initWithLocale:v8];
    [v9 setUseLanguageModel:0];
    [v9 setUseSeq2SeqModel:0];
    v10 = [objc_alloc(MEMORY[0x277D73528]) initWithParameters:v9];
    v11 = self->_autocorrectionTransliterator;
    self->_autocorrectionTransliterator = v10;

    autocorrectionTransliterator = self->_autocorrectionTransliterator;
  }

  return autocorrectionTransliterator;
}

- (TLTransliterator)exactStringTransliterator
{
  exactStringTransliterator = self->_exactStringTransliterator;
  if (!exactStringTransliterator)
  {
    v4 = MEMORY[0x277CBEAF8];
    config = [(TIKeyboardInputManager *)self config];
    inputMode = [config inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:languageWithRegion];

    v9 = [objc_alloc(MEMORY[0x277D73530]) initWithLocale:v8];
    [v9 setUseLanguageModel:0];
    v10 = [objc_alloc(MEMORY[0x277D73528]) initWithParameters:v9];
    v11 = self->_exactStringTransliterator;
    self->_exactStringTransliterator = v10;

    exactStringTransliterator = self->_exactStringTransliterator;
  }

  return exactStringTransliterator;
}

- (CandidateCollection)autocorrectionCandidateStrings
{
  v19 = *MEMORY[0x277D85DE8];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if (([keyboardState autocorrectionEnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState2 textInputTraits];
  autocorrectionType = [textInputTraits autocorrectionType];

  if (autocorrectionType == 1)
  {
    goto LABEL_7;
  }

  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  if (![keyboardState3 hardwareKeyboardMode])
  {

    goto LABEL_10;
  }

  isHardwareKeyboardAutocorrectionEnabled = [(TIKeyboardInputManager *)self isHardwareKeyboardAutocorrectionEnabled];

  if (!isHardwareKeyboardAutocorrectionEnabled)
  {
LABEL_7:
    retstr->var5 = 0;
    *&retstr->var0.var0 = 0u;
    *&retstr->var0.var2 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var2.var0 = 0u;
    *&retstr->var2.var2 = 0u;
    *&retstr->var3.var1 = 0u;
    goto LABEL_8;
  }

LABEL_10:
  (*(*self->super.super.m_impl + 16))(v14, self->super.super.m_impl, [(TIKeyboardInputManager *)self shiftContext]);
  KB::CandidateCollection::CandidateCollection(retstr, v14);
  if (v18 && v17[38] == 1)
  {
    free(v18);
  }

  v13 = v17;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = &v16;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = &v15;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = v14;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v13);
LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)loadFavoniusTypingModel
{
  config = [(TIKeyboardInputManager *)self config];
  inputMode = [config inputMode];
  autocorrectionLocaleIdentifier = [inputMode autocorrectionLocaleIdentifier];
  v6 = [autocorrectionLocaleIdentifier length];

  if (v6)
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerTransliteration;
    [(TIKeyboardInputManager *)&v7 loadFavoniusTypingModel];
  }
}

- (shared_ptr<KB::LanguageModel>)loadNewLanguageModel
{
  v33 = v2;
  v34[1] = *MEMORY[0x277D85DE8];
  config = [(TIKeyboardInputManager *)self config];
  usesWordNgramModel = [config usesWordNgramModel];

  config2 = [(TIKeyboardInputManager *)self config];
  if ([config2 usesAdaptation])
  {
    dynamicResourcePath = [(TIKeyboardInputManager *)self dynamicResourcePath];
  }

  else
  {
    dynamicResourcePath = 0;
  }

  config3 = [(TIKeyboardInputManager *)self config];
  v32 = dynamicResourcePath;
  if ([config3 usesCustomNgramModel])
  {
    config4 = [(TIKeyboardInputManager *)self config];
    ngramModelPath = [config4 ngramModelPath];
    v34[0] = ngramModelPath;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  }

  else
  {
    v10 = 0;
  }

  languageModelAssets = [(TIKeyboardInputManager *)self languageModelAssets];
  dictionaryInputMode = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
  v13 = +[TITrialManagerProxy sharedManager];
  locale = [dictionaryInputMode locale];
  v15 = [v13 encodedLMTrialParametersForLocale:locale];

  preferredModelLocaleIdentifier = [dictionaryInputMode preferredModelLocaleIdentifier];
  preferredModelLocaleIsMultilingual = [dictionaryInputMode preferredModelLocaleIsMultilingual];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  isSiriMode = [inputMode isSiriMode];
  LOBYTE(v30) = [dictionaryInputMode doesSupportInlineCompletion];
  BYTE2(v29) = isSiriMode;
  LOWORD(v29) = 0;
  v20 = [TILanguageModelLoaderManager sharedLanguageModelLoaderForModelLocaleIdentifier:"sharedLanguageModelLoaderForModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:isSiriMode:trialParameters:isInlineCompletionEnabled:" isMultilingualModel:preferredModelLocaleIdentifier customResourcePaths:preferredModelLocaleIsMultilingual dynamicResourcePath:v10 mobileAssets:v32 usesLinguisticContext:languageModelAssets isMultiLingualModeEnabled:usesWordNgramModel validEnglishTransformerMultilingualConfig:v29 isSiriMode:v15 trialParameters:v30 isInlineCompletionEnabled:?];

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  recipientIdentifier = [keyboardState2 recipientIdentifier];

  lexiconLocales = [(TIKeyboardInputManagerTransliteration *)self lexiconLocales];
  if (v20)
  {
    [v20 loadStubLanguageModelForLanguageLocales:lexiconLocales withModelLocale:0 withAdaptationContext:0];
  }

  else
  {
    *v33 = 0;
    v33[1] = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  result.__cntrl_ = v27;
  result.__ptr_ = v26;
  return result;
}

- (void)loadDictionaries
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->super.super.m_impl)
  {
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    v5 = [normalizedIdentifier isEqualToString:@"hi-Translit"];

    if (v5)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel)
      {
        v6 = TIOSLogFacility();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading/reloading dictionaries.", "-[TIKeyboardInputManagerTransliteration loadDictionaries]"];
          buf = 138412290;
          *buf_4 = v14;
          _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }

      m_impl = self->super.super.m_impl;
      dictionaryInputMode = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
      languageWithRegion = [dictionaryInputMode languageWithRegion];
      KB::utf8_string(languageWithRegion, &buf);
      TIInputManager::set_locale_identifier(m_impl, &buf);
      if (*&buf_4[4])
      {
        if (buf_4[2] == 1)
        {
          free(*&buf_4[4]);
        }
      }

      dictionaryInputMode2 = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
      [(TIKeyboardInputManager *)self lexiconInfoForInputMode:dictionaryInputMode2];

      config = [(TIKeyboardInputManager *)self config];
      [config isTesting];

      v12 = [TIInputMode inputModeWithIdentifier:@"en_IN"];
      [(TIKeyboardInputManager *)self lexiconInfoForInputMode:v12];

      v42 = 1061997773;
      v35 = 1045220557;
      KB::String::String(&buf, v36);
      KB::String::String(&v18, v37);
      KB::String::String(&v19, &v38);
      KB::String::String(&v20, &v39);
      KB::String::String(v21, &v40);
      v21[4] = v41;
      v22 = v42;
      KB::String::String(&v23, v29);
      KB::String::String(&v24, v30);
      KB::String::String(&v25, &v31);
      KB::String::String(&v26, &v32);
      KB::String::String(v27, &v33);
      v27[4] = v34;
      v28 = v35;
      operator new();
    }

    v15.receiver = self;
    v15.super_class = TIKeyboardInputManagerTransliteration;
    [(TIKeyboardInputManager *)&v15 loadDictionaries];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)lexiconLocales
{
  v14[2] = *MEMORY[0x277D85DE8];
  dictionaryInputMode = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
  locale = [dictionaryInputMode locale];

  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  normalizedIdentifier = [inputMode normalizedIdentifier];
  v7 = [normalizedIdentifier isEqualToString:@"hi-Translit"];

  if (v7)
  {
    v8 = [TIInputMode inputModeWithIdentifier:@"en_IN"];
    locale2 = [v8 locale];

    v14[0] = locale;
    v14[1] = locale2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  }

  else
  {
    v13 = locale;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dictionaryInputMode
{
  config = [(TIKeyboardInputManager *)self config];
  inputMode = [config inputMode];
  autocorrectionLocaleIdentifier = [inputMode autocorrectionLocaleIdentifier];
  v6 = [autocorrectionLocaleIdentifier length];

  if (v6)
  {
    config2 = [(TIKeyboardInputManager *)self config];
    inputMode2 = [config2 inputMode];
    autocorrectionLocaleIdentifier2 = [inputMode2 autocorrectionLocaleIdentifier];
    v10 = [TIInputMode inputModeWithIdentifier:autocorrectionLocaleIdentifier2];
  }

  else
  {
    v10 = [TIInputMode inputModeWithIdentifier:&stru_283FDFAF8];
  }

  return v10;
}

- (id)candidateContextFromDocumentStateOnly
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [contextBeforeInput componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v6 count] > 0x20)
  {
    v7 = [v6 subarrayWithRange:{objc_msgSend(v6, "count") - 33, 32}];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (void)deleteFromInputWithContext:(id)context
{
  contextCopy = context;
  transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
  [transliteratorCandidateByMecabraCandidatePointerValue removeAllObjects];

  committedCandidates = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
  [committedCandidates removeAllObjects];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManager *)&v7 deleteFromInputWithContext:contextCopy];
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  candidateCopy = candidate;
  stateCopy = state;
  if ([(TIKeyboardInputManager *)self isWordLearningEnabled])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
    committedCandidates2 = [transliteratorCandidateByMecabraCandidatePointerValue objectForKey:mecabraCandidatePointerValue];

    if (committedCandidates2)
    {
      committedCandidates = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [committedCandidates addObject:committedCandidates2];
    }

    else
    {
LABEL_5:
      committedCandidates2 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [committedCandidates2 removeAllObjects];
    }

    committedCandidates3 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
    v13 = [committedCandidates3 count];

    if (v13 >= 0xB)
    {
      committedCandidates4 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      committedCandidates5 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [committedCandidates4 removeObjectsInRange:{0, objc_msgSend(committedCandidates5, "count") - 10}];
    }
  }

  v18.receiver = self;
  v18.super_class = TIKeyboardInputManagerTransliteration;
  v16 = [(TIKeyboardInputManager *)&v18 handleAcceptedCandidate:candidateCopy keyboardState:stateCopy];

  return v16;
}

- (BOOL)hasInputToTransliterate
{
  inputString = [(TIKeyboardInputManager *)self inputString];
  if ([inputString length])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(self->super.super.m_impl + 108) >= 0;
  }

  return v4;
}

- (void)suspend
{
  transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
  [transliteratorCandidateByMecabraCandidatePointerValue removeAllObjects];

  committedCandidates = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
  [committedCandidates removeAllObjects];

  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManager *)&v5 suspend];
}

- (id)keyEventMap
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode)
  {
    v5 = objc_alloc_init([(TIKeyboardInputManagerTransliteration *)self keyEventMapClass]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initImplementation
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManagerTransliterationBase *)&v4 initImplementation];
  [(TIKeyboardInputManagerBase *)self inputMode];
  [objc_claimAutoreleasedReturnValue() locale];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

- (TIKeyboardInputManagerTransliteration)initWithConfig:(id)config keyboardState:(id)state
{
  configCopy = config;
  v24.receiver = self;
  v24.super_class = TIKeyboardInputManagerTransliteration;
  v7 = [(TIKeyboardInputManager *)&v24 initWithConfig:configCopy keyboardState:state];
  if (v7)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    transliteratorCandidateByMecabraCandidatePointerValue = v7->_transliteratorCandidateByMecabraCandidatePointerValue;
    v7->_transliteratorCandidateByMecabraCandidatePointerValue = strongToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    committedCandidates = v7->_committedCandidates;
    v7->_committedCandidates = v10;

    inputMode = [configCopy inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    v14 = TIInputModeGetLanguage();

    v15 = [TIInputMode inputModeWithIdentifier:v14];
    v16 = [[TIKeyboardInputManager alloc] initWithInputMode:v15 keyboardState:0];
    nativeModelManager = v7->_nativeModelManager;
    v7->_nativeModelManager = v16;

    v18 = [TIDictionaryLookup alloc];
    v19 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en"];
    v20 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v14];
    v21 = [(TIDictionaryLookup *)v18 initWithSourceLocale:v19 targetLocale:v20];
    dictionaryLookup = v7->_dictionaryLookup;
    v7->_dictionaryLookup = v21;
  }

  return v7;
}

+ (id)transliteratorInputCharacterSet
{
  if (+[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__onceToken, &__block_literal_global_13560);
  }

  v3 = +[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__transliteratorInputCharacterSet;

  return v3;
}

uint64_t __72__TIKeyboardInputManagerTransliteration_transliteratorInputCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v1 = +[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__transliteratorInputCharacterSet;
  +[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__transliteratorInputCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end