@interface TIKeyboardInputManagerTransliteration
+ (id)transliteratorInputCharacterSet;
- (BOOL)hasInputToTransliterate;
- (CandidateCollection)autocorrectionCandidateStrings;
- (TIKeyboardInputManagerTransliteration)initWithConfig:(id)a3 keyboardState:(id)a4;
- (TLTransliterator)autocorrectionTransliterator;
- (TLTransliterator)exactStringTransliterator;
- (TLTransliterator)transliterator;
- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)a3;
- (id)candidateContextFromDocumentStateOnly;
- (id)candidatesForInputString:(id)a3;
- (id)candidatesForInputString:(id)a3 transliterator:(id)a4;
- (id)candidatesWithTypedString:(id)a3 autocorrectedCandidates:(id)a4;
- (id)candidatesWithTypedString:(id)a3 autocorrectedString:(id)a4;
- (id)dictionaryInputMode;
- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)a3;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)keyEventMap;
- (id)keyboardConfiguration;
- (id)lexiconLocales;
- (id)mecabraCandidatePointerValueWithCandidate:(id)a3;
- (id)scoreAndResortCandidates:(id)a3 string:(id)a4 geometryScore:(float)a5;
- (id)sortedCandidatesFromTypedStringCandidates:(id)a3 autocorrectedStringCandidates:(id)a4 autocorrectedLatinString:(id)a5;
- (shared_ptr<KB::LanguageModel>)loadNewLanguageModel;
- (void)decrementLanguageModelCount:(id)a3 latinInputString:(id)a4 tokenID:(TITokenID)a5 contextTokens:(id)a6;
- (void)deleteFromInputWithContext:(id)a3;
- (void)initImplementation;
- (void)loadDictionaries;
- (void)loadFavoniusTypingModel;
- (void)processCandidates:(id)a3 withGeometryScore:(float)a4 originalLatinString:(id)a5 context:(void *)a6 intoCandidateCollection:(void *)a7 intoStringCandidateMap:(id)a8;
- (void)suspend;
@end

@implementation TIKeyboardInputManagerTransliteration

- (void)decrementLanguageModelCount:(id)a3 latinInputString:(id)a4 tokenID:(TITokenID)a5 contextTokens:(id)a6
{
  v10 = a6;
  v11 = a3;
  [(TIKeyboardInputManager *)self decrementLanguageModelCount:a4 tokenID:a5 contextTokens:v10];
  v12 = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  v13 = [v12 findTokenIDForWord:v11 contextTokens:0 tokenLookupMode:0];

  v14 = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  [v14 decrementLanguageModelCount:v11 tokenID:v13 contextTokens:v10];
}

- (void)processCandidates:(id)a3 withGeometryScore:(float)a4 originalLatinString:(id)a5 context:(void *)a6 intoCandidateCollection:(void *)a7 intoStringCandidateMap:(id)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a8;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v11;
  v13 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
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
        v18 = [v17 candidate];
        KB::String::String(v29, [v18 cStringUsingEncoding:4]);
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
        KB::LanguageModelContext::operator=(&v36, a6);
        std::vector<KB::Candidate>::push_back[abi:nn200100](a7, v31);
        [v12 setObject:v17 forKeyedSubscript:v18];
        KB::Candidate::~Candidate(v31);
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v14);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)scoreAndResortCandidates:(id)a3 string:(id)a4 geometryScore:(float)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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
  v12 = [(TIKeyboardInputManager *)self keyboardState];
  v13 = [v12 documentState];
  v14 = [v13 contextBeforeInput];
  KB::utf8_string(v14, &v46);
  [(TIKeyboardInputManager *)nativeModelManager tokenizeString:&v46 context:&v36 sentences:&v35];
  if (v47 && BYTE6(v46) == 1)
  {
    free(v47);
  }

  v33 = v9;
  v34 = v8;
  *&v15 = a5;
  [(TIKeyboardInputManagerTransliteration *)self processCandidates:v8 withGeometryScore:v9 originalLatinString:&v36 context:v43 intoCandidateCollection:v10 intoStringCandidateMap:v15];
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
  v3 = [(TIKeyboardInputManager *)&v10 keyboardConfiguration];
  v4 = [(TIKeyboardInputManager *)self config];
  v5 = [v4 inputMode];
  v6 = [v5 languageWithRegion];
  v11[0] = v6;
  v11[1] = @"en_IN";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [v3 setMultilingualLanguages:v7];

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)candidatesForInputString:(id)a3 transliterator:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 length])
  {
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_32;
  }

  v7 = v5;
  i = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:i options:8];
  v11 = v10;

  v44 = v5;
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

  v42 = [(TIKeyboardInputManagerTransliteration *)self candidateContextFromDocumentStateOnly];
  v43 = v6;
  v46 = v12;
  v14 = [v6 generateCandidatesForInputWord:v12 candidateContextStrings:? maxCandidatesCount:?];
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
        v17 = [v16 transliteratedWord];
        v18 = [obj firstObject];
        v19 = v18;
        if (v16 == v18)
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
          v21 = [v47 stringByAppendingString:v17];

          v17 = v21;
        }

        v22 = objc_alloc(MEMORY[0x277D6F448]);
        v23 = [(TIKeyboardInputManager *)self inputString];
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
        v25 = [v22 initWithCandidate:v17 forInput:v23 latinCandidate:v46 mecabraCandidatePointerValue:v24 withFlags:v20];

        [v16 lmScore];
        *&v26 = v26;
        [v25 setLmScore:v26];
        v27 = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
        [v27 setObject:v16 forKey:v28];

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

  v6 = v43;
  v5 = v44;
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
    v35 = [(TIKeyboardInputManager *)self inputString];
    v36 = [v34 candidateWithCandidate:v31 forInput:v35];

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

- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)a3
{
  nativeModelManager = self->_nativeModelManager;
  v6 = [(TIKeyboardInputManager *)self keyboardState];
  [(TIKeyboardInputManager *)nativeModelManager syncToKeyboardState:v6];

  v7 = self->_nativeModelManager;

  return [(TIKeyboardInputManager *)v7 autocorrectionListForEmptyInputWithDesiredCandidateCount:a3];
}

- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)a3
{
  v3 = self;
  v76 = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = TIKeyboardInputManagerTransliteration;
  v4 = [(TIKeyboardInputManager *)&v73 generateTypingAutocorrectionsWithCandidateRange:a3.location, a3.length];
  v5 = v4;
  v6 = *(v3->super.super.m_impl + 108);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = [v4 corrections];
    v8 = [v7 autocorrection];
    v9 = [v8 candidate];
    v10 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v9 = [(TIKeyboardInputManager *)v3 inputString];
  v11 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v12 = [v11 autocorrectionEnabled];

  if (v12)
  {
    v7 = [v5 corrections];
    v8 = [v7 autocorrection];
    v10 = [v8 candidate];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:
  v67 = v10;
  v68 = v9;
  if (v9 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = [(TIKeyboardInputManagerTransliteration *)v3 candidatesWithTypedString:v9 autocorrectedString:v13];
  v15 = [v14 mutableCopy];

  if (![v15 count])
  {
    v35 = [v5 candidates];
    v36 = [v35 count];

    if (v36)
    {
      v37 = v5;
      goto LABEL_59;
    }
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = v16;
  v64 = v5;
  v65 = v3;
  v63 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v62 = v16;
    v18 = [v5 corrections];
    v19 = [v18 autocorrection];

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
          [v22 setShouldInsertSpaceAfterSelection:{objc_msgSend(v19, "shouldInsertSpaceAfterSelection")}];
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
            [v21 setShouldAccept:{objc_msgSend(v19, "shouldAccept")}];
          }
        }

LABEL_20:
        if (i)
        {
          v23 = [v21 candidate];
          v24 = [v15 objectAtIndexedSubscript:0];
          v25 = [v24 candidate];
          v26 = [v21 candidateByReplacingWithCandidate:v23 input:v25];

          [v15 setObject:v26 atIndexedSubscript:i];
        }
      }
    }

    v17 = v62;
    if ([v15 count])
    {
      if (v19)
      {
        v27 = [v19 candidate];
        v28 = [v15 objectAtIndexedSubscript:0];
        v29 = [v28 candidate];
        v30 = [v19 candidateByReplacingWithCandidate:v27 input:v29];

        if (v30)
        {
          [v62 insertObject:v30 atIndex:0];
        }
      }
    }

    v3 = v65;
  }

  if (!(*(**(v3->super.super.m_impl + 28) + 232))(*(v3->super.super.m_impl + 28)))
  {
    v33 = 0;
    v34 = v17;
    v17 = v15;
    goto LABEL_34;
  }

  v31 = objc_alloc(MEMORY[0x277D6F348]);
  v32 = [v15 firstObject];
  v33 = [v31 initWithAutocorrection:v32 alternateCorrections:0];

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
    v47 = [(TIKeyboardInputManagerTransliteration *)v65 dictionaryLookup];
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
    v51 = [v47 translationsForStrings:v50];
    v52 = [v51 firstObject];

    if ([v52 length])
    {
      v53 = MEMORY[0x277D6F3D8];
      v54 = [v33 autocorrection];
      v55 = [v54 input];
      v56 = [v53 candidateWithCandidate:v52 forInput:v55];

      if (v63 < 0 || ![v15 count])
      {
        [v38 insertObject:v56 atIndex:0];
      }

      else
      {
        v66 = [v56 candidate];
        v57 = [v15 objectAtIndexedSubscript:0];
        v58 = [v57 candidate];
        v59 = [v56 candidateByReplacingWithCandidate:v66 input:v58];

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

- (id)candidatesForInputString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerTransliteration *)self transliterator];
  v6 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:v4 transliterator:v5];

  return v6;
}

- (id)sortedCandidatesFromTypedStringCandidates:(id)a3 autocorrectedStringCandidates:(id)a4 autocorrectedLatinString:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v48 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [v9 firstObject];
  objc_opt_class();
  v46 = v9;
  v47 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = [v9 firstObject];

  if (!v12)
  {
LABEL_10:
    [v10 addObjectsFromArray:v8];
    goto LABEL_27;
  }

  v13 = [v8 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v8 firstObject];

    if (v14)
    {
      [v14 lmScore];
      v16 = v15;
      [v12 lmScore];
      v44 = v14;
      v45 = v12;
      if (v16 >= v17)
      {
        [v10 addObjectsFromArray:v8];
        v19 = [v9 objectAtIndex:0];
        [v10 addObject:v19];

        v9 = v8;
      }

      else
      {
        v18 = [v9 objectAtIndex:0];
        [v10 addObject:v18];

        if (_os_feature_enabled_impl())
        {
          [v10 addObject:v48];
        }

        [v10 addObjectsFromArray:v8];
      }

      v20 = v9;
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
              v27 = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
              v28 = [v27 objectForKey:v26];

              if ([v28 type] != 3)
              {
                [v10 addObject:v25];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v22);
      }

      v12 = v45;
      goto LABEL_26;
    }
  }

  else
  {
  }

  [v10 addObjectsFromArray:v9];
LABEL_26:

LABEL_27:
  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEB58] set];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = v10;
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
        v38 = [v37 candidate];
        v39 = [v31 containsObject:v38];

        if ((v39 & 1) == 0)
        {
          v40 = [v37 candidate];
          [v31 addObject:v40];

          if ([v37 isExtensionCandidate])
          {
            v41 = v30;
          }

          else
          {
            v41 = v29;
          }

          [v41 addObject:v37];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v34);
  }

  [v29 addObjectsFromArray:v30];
  v42 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)candidatesWithTypedString:(id)a3 autocorrectedCandidates:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 firstObject];
  v22 = [v8 candidate];

  if ([v6 length])
  {
    v9 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:v6];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v7;
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

        v16 = [*(*(&v23 + 1) + 8 * i) candidate];
        v17 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:v16];
        [v10 addObjectsFromArray:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = [objc_alloc(MEMORY[0x277D6F3D8]) initWithCandidate:v22];
  v19 = [(TIKeyboardInputManagerTransliteration *)self sortedCandidatesFromTypedStringCandidates:v9 autocorrectedStringCandidates:v10 autocorrectedLatinString:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)candidatesWithTypedString:(id)a3 autocorrectedString:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x277D6F568];
    v8 = a3;
    v9 = [[v7 alloc] initWithCandidate:v6];
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [(TIKeyboardInputManagerTransliteration *)self candidatesWithTypedString:v8 autocorrectedCandidates:v10];
  }

  else
  {
    v12 = a3;
    v11 = [(TIKeyboardInputManagerTransliteration *)self candidatesWithTypedString:v12 autocorrectedCandidates:MEMORY[0x277CBEBF8]];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)mecabraCandidatePointerValueWithCandidate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mecabraCandidatePointerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TLTransliterator)transliterator
{
  transliterator = self->_transliterator;
  if (!transliterator)
  {
    v4 = MEMORY[0x277CBEAF8];
    v5 = [(TIKeyboardInputManager *)self config];
    v6 = [v5 inputMode];
    v7 = [v6 languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:v7];

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
    v5 = [(TIKeyboardInputManager *)self config];
    v6 = [v5 inputMode];
    v7 = [v6 languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:v7];

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
    v5 = [(TIKeyboardInputManager *)self config];
    v6 = [v5 inputMode];
    v7 = [v6 languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:v7];

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
  v5 = [(TIKeyboardInputManager *)self keyboardState];
  if (([v5 autocorrectionEnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [(TIKeyboardInputManager *)self keyboardState];
  v7 = [v6 textInputTraits];
  v8 = [v7 autocorrectionType];

  if (v8 == 1)
  {
    goto LABEL_7;
  }

  v10 = [(TIKeyboardInputManager *)self keyboardState];
  if (![v10 hardwareKeyboardMode])
  {

    goto LABEL_10;
  }

  v11 = [(TIKeyboardInputManager *)self isHardwareKeyboardAutocorrectionEnabled];

  if (!v11)
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
  v3 = [(TIKeyboardInputManager *)self config];
  v4 = [v3 inputMode];
  v5 = [v4 autocorrectionLocaleIdentifier];
  v6 = [v5 length];

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
  v4 = [(TIKeyboardInputManager *)self config];
  v31 = [v4 usesWordNgramModel];

  v5 = [(TIKeyboardInputManager *)self config];
  if ([v5 usesAdaptation])
  {
    v6 = [(TIKeyboardInputManager *)self dynamicResourcePath];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TIKeyboardInputManager *)self config];
  v32 = v6;
  if ([v7 usesCustomNgramModel])
  {
    v8 = [(TIKeyboardInputManager *)self config];
    v9 = [v8 ngramModelPath];
    v34[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TIKeyboardInputManager *)self languageModelAssets];
  v12 = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
  v13 = +[TITrialManagerProxy sharedManager];
  v14 = [v12 locale];
  v15 = [v13 encodedLMTrialParametersForLocale:v14];

  v16 = [v12 preferredModelLocaleIdentifier];
  v17 = [v12 preferredModelLocaleIsMultilingual];
  v18 = [(TIKeyboardInputManagerBase *)self inputMode];
  v19 = [v18 isSiriMode];
  LOBYTE(v30) = [v12 doesSupportInlineCompletion];
  BYTE2(v29) = v19;
  LOWORD(v29) = 0;
  v20 = [TILanguageModelLoaderManager sharedLanguageModelLoaderForModelLocaleIdentifier:"sharedLanguageModelLoaderForModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:isSiriMode:trialParameters:isInlineCompletionEnabled:" isMultilingualModel:v16 customResourcePaths:v17 dynamicResourcePath:v10 mobileAssets:v32 usesLinguisticContext:v11 isMultiLingualModeEnabled:v31 validEnglishTransformerMultilingualConfig:v29 isSiriMode:v15 trialParameters:v30 isInlineCompletionEnabled:?];

  v21 = [(TIKeyboardInputManager *)self keyboardState];
  v22 = [v21 clientIdentifier];

  v23 = [(TIKeyboardInputManager *)self keyboardState];
  v24 = [v23 recipientIdentifier];

  v25 = [(TIKeyboardInputManagerTransliteration *)self lexiconLocales];
  if (v20)
  {
    [v20 loadStubLanguageModelForLanguageLocales:v25 withModelLocale:0 withAdaptationContext:0];
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
    v3 = [(TIKeyboardInputManagerBase *)self inputMode];
    v4 = [v3 normalizedIdentifier];
    v5 = [v4 isEqualToString:@"hi-Translit"];

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
      v8 = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
      v9 = [v8 languageWithRegion];
      KB::utf8_string(v9, &buf);
      TIInputManager::set_locale_identifier(m_impl, &buf);
      if (*&buf_4[4])
      {
        if (buf_4[2] == 1)
        {
          free(*&buf_4[4]);
        }
      }

      v10 = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
      [(TIKeyboardInputManager *)self lexiconInfoForInputMode:v10];

      v11 = [(TIKeyboardInputManager *)self config];
      [v11 isTesting];

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
  v3 = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
  v4 = [v3 locale];

  v5 = [(TIKeyboardInputManagerBase *)self inputMode];
  v6 = [v5 normalizedIdentifier];
  v7 = [v6 isEqualToString:@"hi-Translit"];

  if (v7)
  {
    v8 = [TIInputMode inputModeWithIdentifier:@"en_IN"];
    v9 = [v8 locale];

    v14[0] = v4;
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  }

  else
  {
    v13 = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dictionaryInputMode
{
  v3 = [(TIKeyboardInputManager *)self config];
  v4 = [v3 inputMode];
  v5 = [v4 autocorrectionLocaleIdentifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(TIKeyboardInputManager *)self config];
    v8 = [v7 inputMode];
    v9 = [v8 autocorrectionLocaleIdentifier];
    v10 = [TIInputMode inputModeWithIdentifier:v9];
  }

  else
  {
    v10 = [TIInputMode inputModeWithIdentifier:&stru_283FDFAF8];
  }

  return v10;
}

- (id)candidateContextFromDocumentStateOnly
{
  v2 = [(TIKeyboardInputManager *)self keyboardState];
  v3 = [v2 documentState];
  v4 = [v3 contextBeforeInput];
  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

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

- (void)deleteFromInputWithContext:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
  [v5 removeAllObjects];

  v6 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
  [v6 removeAllObjects];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManager *)&v7 deleteFromInputWithContext:v4];
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(TIKeyboardInputManager *)self isWordLearningEnabled])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
    v9 = [v6 mecabraCandidatePointerValue];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      v11 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [v11 addObject:v10];
    }

    else
    {
LABEL_5:
      v10 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [v10 removeAllObjects];
    }

    v12 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
    v13 = [v12 count];

    if (v13 >= 0xB)
    {
      v14 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      v15 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [v14 removeObjectsInRange:{0, objc_msgSend(v15, "count") - 10}];
    }
  }

  v18.receiver = self;
  v18.super_class = TIKeyboardInputManagerTransliteration;
  v16 = [(TIKeyboardInputManager *)&v18 handleAcceptedCandidate:v6 keyboardState:v7];

  return v16;
}

- (BOOL)hasInputToTransliterate
{
  v3 = [(TIKeyboardInputManager *)self inputString];
  if ([v3 length])
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
  v3 = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
  [v3 removeAllObjects];

  v4 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
  [v4 removeAllObjects];

  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManager *)&v5 suspend];
}

- (id)keyEventMap
{
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  v4 = [v3 hardwareKeyboardMode];

  if (v4)
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

- (TIKeyboardInputManagerTransliteration)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = TIKeyboardInputManagerTransliteration;
  v7 = [(TIKeyboardInputManager *)&v24 initWithConfig:v6 keyboardState:a4];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    transliteratorCandidateByMecabraCandidatePointerValue = v7->_transliteratorCandidateByMecabraCandidatePointerValue;
    v7->_transliteratorCandidateByMecabraCandidatePointerValue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    committedCandidates = v7->_committedCandidates;
    v7->_committedCandidates = v10;

    v12 = [v6 inputMode];
    v13 = [v12 normalizedIdentifier];
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