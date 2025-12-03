@interface TISmartSelector
- (TISmartSelector)initWithOptions:(unint64_t)options language:(id)language dataChangedHandler:(id)handler;
- (_NSRange)longestRangeEncapsulatingSubstringInDocument:(id)document containingRange:(_NSRange)range tokenizedRanges:(id)ranges meetingCondition:(id)condition;
- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language options:(unint64_t)options;
- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options;
- (void)dealloc;
- (void)loadStaticPhraseDictionary;
- (void)setLanguage:(id)language;
@end

@implementation TISmartSelector

- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  documentCopy = document;
  languageCopy = language;
  array = [MEMORY[0x277CBEB18] array];
  v14 = [(__CFString *)documentCopy length];
  v15 = *MEMORY[0x277CBECE8];
  v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
  v27.location = 0;
  v27.length = v14;
  v17 = CFStringTokenizerCreate(v15, documentCopy, v27, 0, v16);
  if (v17)
  {
    v18 = v17;
    while (CFStringTokenizerAdvanceToNextToken(v18))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v18);
      v20 = [MEMORY[0x277CCAE60] valueWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];
      [array addObject:v20];
    }

    CFRelease(v18);
    options = [(TISmartSelector *)self selectionRangeForTextInDocument:documentCopy inRange:location language:length tokenizedRanges:languageCopy options:array, options];
    v23 = v22;
  }

  else
  {
    v23 = 0;
    options = 0x7FFFFFFFFFFFFFFFLL;
  }

  v24 = options;
  v25 = v23;
  result.length = v25;
  result.location = v24;
  return result;
}

- (void)loadStaticPhraseDictionary
{
  v28 = *MEMORY[0x277D85DE8];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  KB::utf8_string(localeIdentifier, v8);
  localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
  v5 = [TIInputMode inputModeWithIdentifier:localeIdentifier2];
  v6 = UIKeyboardPhraseLexiconPathForInputMode(v5);
  KB::utf8_string(v6, &v9);
  v10 = 0x100000;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0x100000;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0x100000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 1065353216;

  KB::StaticDictionary::create(v7);
}

- (_NSRange)longestRangeEncapsulatingSubstringInDocument:(id)document containingRange:(_NSRange)range tokenizedRanges:(id)ranges meetingCondition:(id)condition
{
  length = range.length;
  location = range.location;
  documentCopy = document;
  rangesCopy = ranges;
  conditionCopy = condition;
  v28 = conditionCopy;
  v12 = 0;
  if ([rangesCopy count])
  {
    v13 = 0;
    v27 = conditionCopy + 16;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v14 = [rangesCopy objectAtIndexedSubscript:{v13, v27}];
      rangeValue = [v14 rangeValue];

      if (v13 < [rangesCopy count])
      {
        v16 = v13;
        do
        {
          v17 = [rangesCopy objectAtIndexedSubscript:v16];
          rangeValue2 = [v17 rangeValue];
          v20 = v19;

          v21 = v20 - rangeValue + rangeValue2;
          v31.location = rangeValue;
          v31.length = v21;
          v33.location = location;
          v33.length = length;
          if (v21 >= NSUnionRange(v31, v33).length)
          {
            v22 = [documentCopy substringWithRange:{rangeValue, v20 - rangeValue + rangeValue2}];
            if (v12 < v21)
            {
              v23 = (v28)[2](v28, v22);
              if (v23)
              {
                v12 = v21;
              }

              v24 = v29;
              if (v23)
              {
                v24 = rangeValue;
              }

              v29 = v24;
            }
          }

          ++v16;
        }

        while (v16 < [rangesCopy count]);
      }

      ++v13;
    }

    while (v13 < [rangesCopy count]);
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v25 = v29;
  v26 = v12;
  result.length = v26;
  result.location = v25;
  return result;
}

- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  v106[5] = *MEMORY[0x277D85DE8];
  documentCopy = document;
  languageCopy = language;
  rangesCopy = ranges;
  v16 = [documentCopy length];
  v107.location = 0;
  v107.length = v16;
  v109.location = location;
  v109.length = length;
  if (v16 >= NSUnionRange(v107, v109).length)
  {
    v62 = languageCopy;
    v97 = 0;
    v98 = &v97;
    v99 = 0x4012000000;
    v100 = __Block_byref_object_copy__3300;
    v101 = __Block_byref_object_dispose__3301;
    v102 = "";
    v103 = xmmword_22CC889D0;
    v17 = dispatch_semaphore_create(0);
    v61 = rangesCopy;
    dsema = v17;
    if ((options & self->_options & 0x1FLL) != 0)
    {
      v18 = v17;
      v19 = [objc_alloc(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
      [v19 setResultsOptions:1601];
      v20 = MEMORY[0x277D04220];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke;
      v91[3] = &unk_27872FB50;
      v94 = location;
      v95 = length;
      optionsCopy = options;
      v91[4] = self;
      v93 = &v97;
      v92 = v18;
      [v20 scanString:documentCopy range:0 configuration:v16 completionBlock:{v19, v91}];

      rangesCopy = v61;
    }

    else
    {
      dispatch_semaphore_signal(v17);
    }

    options = self->_options;
    if ((options & options & 0x20) != 0)
    {
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_2;
      v90[3] = &unk_278731200;
      v90[4] = self;
      v56 = [(TISmartSelector *)self longestRangeEncapsulatingSubstringInDocument:documentCopy containingRange:location tokenizedRanges:length meetingCondition:rangesCopy, v90];
      v57 = v22;
      options = self->_options;
    }

    else
    {
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      v57 = 0;
    }

    if ((options & options & 0x40) != 0)
    {
      localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
      v24 = [languageCopy isEqualToString:localeIdentifier];

      if ((v24 & 1) == 0)
      {
        [(TISmartSelector *)self setLanguage:languageCopy];
      }

      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_3;
      v89[3] = &unk_278731200;
      v89[4] = self;
      rangesCopy = v61;
      v58 = [(TISmartSelector *)self longestRangeEncapsulatingSubstringInDocument:documentCopy containingRange:location tokenizedRanges:length meetingCondition:v61, v89];
      v59 = v25;
      options = self->_options;
    }

    else
    {
      v58 = 0x7FFFFFFFFFFFFFFFLL;
      v59 = 0;
    }

    if ((options & options & 0x80) != 0)
    {
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_4;
      v88[3] = &unk_278731200;
      v88[4] = self;
      v26 = [(TISmartSelector *)self longestRangeEncapsulatingSubstringInDocument:documentCopy containingRange:location tokenizedRanges:length meetingCondition:rangesCopy, v88];
      v55 = v27;
    }

    else
    {
      v55 = 0;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v81 = 0;
    v82 = &v81;
    v83 = 0x4012000000;
    v84 = __Block_byref_object_copy__3300;
    v85 = __Block_byref_object_dispose__3301;
    v86 = "";
    v87 = xmmword_22CC889D0;
    v28 = dispatch_semaphore_create(0);
    v29 = v28;
    if ((options & self->_options & 0x100) != 0)
    {
      localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
      v31 = [languageCopy isEqualToString:localeIdentifier2];

      if ((v31 & 1) == 0)
      {
        [(TISmartSelector *)self setLanguage:v62];
      }

      v32 = objc_alloc(MEMORY[0x277CBEB98]);
      v33 = [v32 initWithObjects:{*MEMORY[0x277CD8920], *MEMORY[0x277CD8928], *MEMORY[0x277CD8908], 0}];
      dispatchQueue = self->_dispatchQueue;
      v68 = MEMORY[0x277D85DD0];
      v69 = 3221225472;
      v70 = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_5;
      v71 = &unk_27872FBA0;
      selfCopy = self;
      v78 = v16;
      v79 = location;
      v80 = length;
      v73 = documentCopy;
      v74 = v33;
      v76 = &v81;
      v77 = 0;
      v75 = v29;
      v35 = v33;
      TIDispatchAsync();
    }

    else
    {
      dispatch_semaphore_signal(v28);
    }

    v36 = dispatch_time(0, 3000000000);
    v37 = dispatch_semaphore_wait(dsema, v36);
    v38 = dispatch_semaphore_wait(v29, v36);
    if (v37)
    {
      *(v98 + 3) = xmmword_22CC889D0;
    }

    if (v38)
    {
      *(v82 + 3) = xmmword_22CC889D0;
    }

    *&v104 = location;
    *(&v104 + 1) = length;
    v39 = [MEMORY[0x277CCAE60] valueWithRange:{v98[6], v98[7]}];
    v106[0] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithRange:{v56, v57}];
    v106[1] = v40;
    v41 = [MEMORY[0x277CCAE60] valueWithRange:{v58, v59}];
    v106[2] = v41;
    v42 = [MEMORY[0x277CCAE60] valueWithRange:{v26, v55}];
    v106[3] = v42;
    v43 = [MEMORY[0x277CCAE60] valueWithRange:{v82[6], v82[7]}];
    v106[4] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:5];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v64 objects:v105 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v65;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v65 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v63[0] = [*(*(&v64 + 1) + 8 * i) rangeValue];
          v63[1] = v50;
          if (*(&v104 + 1) >= v50)
          {
            v51 = &v104;
          }

          else
          {
            v51 = v63;
          }

          v104 = *v51;
        }

        v47 = [v45 countByEnumeratingWithState:&v64 objects:v105 count:16];
      }

      while (v47);
      length = *(&v104 + 1);
      location = v104;
    }

    _Block_object_dispose(&v81, 8);
    _Block_object_dispose(&v97, 8);
    rangesCopy = v61;
    languageCopy = v62;
  }

  v52 = *MEMORY[0x277D85DE8];
  v53 = location;
  v54 = length;
  result.length = v54;
  result.location = v53;
  return result;
}

void __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v14 + 1) + 8 * i) coreResult];
        v20.location = DDResultGetRangeForURLification();
        location = v20.location;
        length = v20.length;
        if (v20.length >= NSUnionRange(v20, *(a1 + 56)).length)
        {
          if ((Category = DDResultGetCategory(), v11 = *(a1 + 72) & *(*(a1 + 32) + 32), (v11 & 8) != 0) && (Category & 1) != 0 || (v11 & 4) != 0 && (Category & 2) != 0 || (v11 & 2) != 0 && (Category & 3) != 0 || (v11 & 1) != 0 && (Category & 4) != 0 || (v11 & 0x10) != 0 && (Category & 6) != 0)
          {
            v12 = *(*(a1 + 48) + 8);
            *(v12 + 48) = location;
            *(v12 + 56) = length;
            goto LABEL_21;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  dispatch_semaphore_signal(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

BOOL __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = a2;
  [v2 namedEntityPhraseLexicon];
  LODWORD(v2) = LXLexiconGetFirstTokenIDForString();

  return v2 != 0;
}

BOOL __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_3(uint64_t a1, KB *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  KB::utf8_string(this, v7);
  v3 = KB::StaticDictionary::contains(v2, v7, 0, 0.0);
  if (v8)
  {
    v4 = v7[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

void __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setString:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = [*(v2 + 40) languageCode];
  [v3 setLanguage:v4 range:{*(a1 + 72), *(a1 + 80)}];

  v5 = *(*(a1 + 32) + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *MEMORY[0x277CD8968];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_6;
  v11[3] = &unk_27872FB78;
  v14 = *(a1 + 88);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v12 = v9;
  v13 = v10;
  [v5 enumerateTagsInRange:v6 unit:v7 scheme:0 options:v8 usingBlock:{30, v11}];
  dispatch_semaphore_signal(*(a1 + 56));
}

void __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_6(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v10 = a2;
  v12.location = a3;
  v12.length = a4;
  if (a4 == NSUnionRange(v12, *(a1 + 48)).length && [*(a1 + 32) containsObject:v10])
  {
    v9 = *(*(a1 + 40) + 8);
    *(v9 + 48) = a3;
    *(v9 + 56) = a4;
    *a5 = 1;
  }
}

- (void)setLanguage:(id)language
{
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:language];
  locale = self->_locale;
  self->_locale = v4;

  [(TISmartSelector *)self loadStaticPhraseDictionary];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelector:dealloc - removing observer", "-[TISmartSelector dealloc]"];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  [(TITransientLexiconManager *)self->_transientLexiconManager removeContactObserver:self->_contactObserver];
  contactDictionary = self->_contactDictionary;
  if (contactDictionary)
  {
    CFRelease(contactDictionary);
  }

  v7.receiver = self;
  v7.super_class = TISmartSelector;
  [(TISmartSelector *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (TISmartSelector)initWithOptions:(unint64_t)options language:(id)language dataChangedHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  handlerCopy = handler;
  v36.receiver = self;
  v36.super_class = TISmartSelector;
  v10 = [(TISmartSelector *)&v36 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
    locale = v11->_locale;
    v11->_locale = v12;

    v14 = _Block_copy(handlerCopy);
    dataChangedHandler = v11->_dataChangedHandler;
    v11->_dataChangedHandler = v14;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("com.apple.TextInput.smart_selection", v16);
    dispatchQueue = v11->_dispatchQueue;
    v11->_dispatchQueue = v17;

    options = v11->_options;
    if ((options & 0x40) != 0)
    {
      [(TISmartSelector *)v11 loadStaticPhraseDictionary];
      options = v11->_options;
    }

    if ((options & 0xA0) != 0)
    {
      v20 = +[TITransientLexiconManager sharedInstance];
      transientLexiconManager = v11->_transientLexiconManager;
      v11->_transientLexiconManager = v20;

      options = v11->_options;
    }

    if ((options & 0x80) != 0)
    {
      objc_initWeak(&location, v11);
      v22 = TIPersonalizationContactOSLogFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelector:initWithOptions - adding observer", "-[TISmartSelector initWithOptions:language:dataChangedHandler:]"];
        *buf = 138412290;
        v39 = v23;
        _os_log_impl(&dword_22CA55000, v22, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      v24 = v11->_transientLexiconManager;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __63__TISmartSelector_initWithOptions_language_dataChangedHandler___block_invoke;
      v33[3] = &unk_278732270;
      objc_copyWeak(&v34, &location);
      v25 = [(TITransientLexiconManager *)v24 addContactObserver:v33];
      contactObserver = v11->_contactObserver;
      v11->_contactObserver = v25;

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      options = v11->_options;
    }

    if ((options & 0x100) != 0)
    {
      v27 = objc_alloc(MEMORY[0x277CD89D8]);
      v37 = *MEMORY[0x277CD8968];
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v29 = [v27 initWithTagSchemes:v28];
      namedEntityTagger = v11->_namedEntityTagger;
      v11->_namedEntityTagger = v29;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v11;
}

void __63__TISmartSelector_initWithOptions_language_dataChangedHandler___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelector:initWithOptions - processing %lu contacts", "-[TISmartSelector initWithOptions:language:dataChangedHandler:]_block_invoke", objc_msgSend(v3, "count")];
    *buf = 138412290;
    v77 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v6 = v3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], @"TextInput-SmartSelectionContacts");
  err = 0;
  Transient = LXLexiconCreateTransient();
  v10 = [v6 allValues];
  v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_8];
  v53 = v6;
  v54 = a1;
  v52 = Mutable;
  if ([v6 count] > 0x1F3)
  {
    v12 = 500;
  }

  else
  {
    v12 = [v6 count];
  }

  v13 = [v11 subarrayWithRange:{0, v12}];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v13;
  v57 = [obj countByEnumeratingWithState:&v68 objects:buf count:16];
  if (v57)
  {
    v56 = *v69;
    do
    {
      v14 = 0;
      do
      {
        if (*v69 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v14;
        v15 = *(*(&v68 + 1) + 8 * v14);
        v16 = [v15 firstName];
        v17 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v16);

        v18 = [v15 lastName];
        v62 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v18);

        v19 = [v15 nickname];
        v20 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v19);

        v21 = [v15 middleName];
        v22 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v21);

        if ([v22 length])
        {
          v23 = [v22 rangeOfComposedCharacterSequenceAtIndex:0];
          v60 = [v22 substringWithRange:{v23, v24}];
        }

        else
        {
          v60 = 0;
        }

        v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v26 = v25;
        v27 = v62;
        if (v17)
        {
          [v25 addObject:v17];
        }

        if (v20)
        {
          [v26 addObject:v20];
        }

        if (v22)
        {
          [v26 addObject:v22];
        }

        v61 = v20;
        if (v62)
        {
          [v26 addObject:v62];
          if (v17)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v17, v62];
            [v26 addObject:v28];

            v27 = v62;
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v62, v17];
            [v26 addObject:v29];

            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v62, v17];
            [v26 addObject:v30];
          }

          if (v20)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v20, v27];
            [v26 addObject:v31];

            v27 = v62;
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v62, v20];
            [v26 addObject:v32];

            v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v62, v20];
            [v26 addObject:v33];
          }

          if (v17 && v22)
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v17, v22, v27];
            [v26 addObject:v34];

            v27 = v62;
            v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v62, v17, v22];
            [v26 addObject:v35];

            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@ %@", v62, v17, v22];
            [v26 addObject:v36];
          }

          if (v20 && v22)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v20, v22, v27];
            [v26 addObject:v37];

            v27 = v62;
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v62, v20, v22];
            [v26 addObject:v38];

            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@ %@", v62, v20, v22];
            [v26 addObject:v39];
          }

          if (v17 && v60)
          {
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v17, v60, v27];
            [v26 addObject:v40];

            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@. %@", v17, v60, v27];
            [v26 addObject:v41];
          }

          if (v20 && v60)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v20, v60, v27];
            [v26 addObject:v42];

            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@. %@", v20, v60, v27];
            [v26 addObject:v43];
          }
        }

        v58 = v17;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v44 = v26;
        v45 = [v44 countByEnumeratingWithState:&v64 objects:v75 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v65;
          do
          {
            v48 = 0;
            do
            {
              if (*v65 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v49 = *(*(&v64 + 1) + 8 * v48);
              if (!LXLexiconAdd())
              {
                if (TICanLogMessageAtLevel_onceToken != -1)
                {
                  dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
                }

                if (TICanLogMessageAtLevel_logLevel >= 2)
                {
                  v50 = TIOSLogFacility();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                  {
                    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelection: Failed to add %@ to the contact name variations lexicon.", "nameVariationsForContactCollection", v49];
                    *v73 = 138412290;
                    v74 = v51;
                    _os_log_debug_impl(&dword_22CA55000, v50, OS_LOG_TYPE_DEBUG, "%@", v73, 0xCu);
                  }
                }
              }

              ++v48;
            }

            while (v46 != v48);
            v46 = [v44 countByEnumeratingWithState:&v64 objects:v75 count:16];
          }

          while (v46);
        }

        v14 = v59 + 1;
      }

      while (v59 + 1 != v57);
      v57 = [obj countByEnumeratingWithState:&v68 objects:buf count:16];
    }

    while (v57);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  objc_copyWeak(v63, (v54 + 32));
  v63[1] = Transient;
  TIDispatchAsync();
  objc_destroyWeak(v63);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __63__TISmartSelector_initWithOptions_language_dataChangedHandler___block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _Block_copy(WeakRetained[9]);
    v4 = v9;
    v5 = v3;
    v6 = v9[2];
    if (v6)
    {
      CFRelease(v6);
      v4 = v9;
    }

    v4[2] = *(a1 + 40);
    if (v5)
    {
      v5[2](v5);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end