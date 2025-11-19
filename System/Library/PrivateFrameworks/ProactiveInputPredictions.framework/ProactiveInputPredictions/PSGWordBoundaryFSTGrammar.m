@interface PSGWordBoundaryFSTGrammar
+ (id)sharedInstance;
- (PSGWordBoundaryFSTGrammar)init;
- (id)_getLMWrapper:(id)a3;
- (id)_getPrimingToken:(void *)a3 transientTokenID:(unsigned int)a4;
- (id)getOTAPathForProactiveBundle:(id)a3;
- (id)triggerAttributesForContext:(id)a3 localeIdentifier:(id)a4;
- (void)_createLanguageModel:(id)a3;
- (void)_createLexicon:(id)a3;
- (void)clearLMCache;
- (void)warmUpForLocaleIdentifier:(id)a3 waitForCompletion:(BOOL)a4;
@end

@implementation PSGWordBoundaryFSTGrammar

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PSGWordBoundaryFSTGrammar_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[PSGWordBoundaryFSTGrammar sharedInstance]::_pasOnceToken5 != -1)
  {
    dispatch_once(&+[PSGWordBoundaryFSTGrammar sharedInstance]::_pasOnceToken5, block);
  }

  v2 = +[PSGWordBoundaryFSTGrammar sharedInstance]::_pasExprOnceResult;

  return v2;
}

- (void)clearLMCache
{
  v3 = psg_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_260D18000, v3, OS_LOG_TYPE_DEBUG, "[PSGWordBoundaryFSTGrammar] Clearing LM cache", v4, 2u);
  }

  [(NSCache *)self->_lmWrapperCache removeAllObjects];
}

- (void)warmUpForLocaleIdentifier:(id)a3 waitForCompletion:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = psg_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_debug_impl(&dword_260D18000, v7, OS_LOG_TYPE_DEBUG, "[PSGWordBoundaryFSTGrammar] warming up for %@", &v12, 0xCu);
  }

  v8 = [(PSGWordBoundaryFSTGrammar *)self _getLMWrapper:v6];
  if (v4)
  {
    dispatch_sync(self->_lmWrapperQueue, &__block_literal_global);
    v9 = [(NSCache *)self->_lmWrapperCache objectForKey:v6];

    v8 = v9;
  }

  v10 = psg_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_debug_impl(&dword_260D18000, v10, OS_LOG_TYPE_DEBUG, "[PSGWordBoundaryFSTGrammar] wrapper instance %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)triggerAttributesForContext:(id)a3 localeIdentifier:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v53 = a4;
  v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  if (![v7 length])
  {
    v26 = 0;
    goto LABEL_66;
  }

  v8 = psg_default_log_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = psg_default_log_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260D18000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PSGWordBoundaryFSTGrammar_initialization", &unk_260D2DE82, buf, 2u);
  }

  v52 = [(PSGWordBoundaryFSTGrammar *)self _getLMWrapper:v53];
  v12 = psg_default_log_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260D18000, v13, OS_SIGNPOST_INTERVAL_END, v9, "PSGWordBoundaryFSTGrammar_initialization", &unk_260D2DE82, buf, 2u);
  }

  v14 = [v52 langModel];
  if (v14)
  {
    v48 = [v52 lexicon];
    v15 = psg_default_log_handle();
    spid = os_signpost_id_generate(v15);

    v16 = psg_default_log_handle();
    v17 = v16;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D18000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PSGWordBoundaryFSTGrammar_tokenization", &unk_260D2DE82, buf, 2u);
    }

    v54 = 0;
    v55 = 0;
    v56 = 0;
    v18 = v7;
    v50 = v53;

    v61 = 0;
    v62 = &v61;
    v63 = 0x4812000000;
    v64 = __Block_byref_object_copy__66;
    v65 = __Block_byref_object_dispose__67;
    v66 = "";
    v68 = 0;
    v69 = 0;
    __p = 0;
    if (LMStreamTokenizerCreate())
    {
      v19 = v18;
      v20 = [v18 cStringUsingEncoding:4];
      v21 = [v18 lengthOfBytesUsingEncoding:4];
      if (v20 && v21)
      {
        SharedVocabulary = LMVocabularyGetSharedVocabulary();
        v59[0] = 0;
        v59[1] = v59;
        v59[2] = 0x3032000000;
        v59[3] = __Block_byref_object_copy_;
        v59[4] = __Block_byref_object_dispose_;
        v60 = 0;
        v57[0] = 0;
        v57[1] = v57;
        v57[2] = 0x3032000000;
        v57[3] = __Block_byref_object_copy_;
        v57[4] = __Block_byref_object_dispose_;
        v58 = 0;
        v23 = [v50 hasPrefix:@"zh"];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL12tokenizeTextPvS_P8NSStringS1__block_invoke;
        v71 = &unk_279ABCD28;
        v76 = SharedVocabulary;
        v77 = v48;
        v78 = v23;
        v72 = &v61;
        v73 = v59;
        v74 = v57;
        v75 = v14;
        LMStreamTokenizerPushBytes();
        LMStreamTokenizerRelease();
        v24 = v62[6];
        v25 = v62[7];
        if (v24 != v25 && *(v25 - 4) == 2)
        {
          v25 -= 4;
          v62[7] = v25;
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v54, v24, v25, (v25 - v24) >> 2);
        _Block_object_dispose(v57, 8);

        _Block_object_dispose(v59, 8);
        goto LABEL_29;
      }

      v28 = psg_default_log_handle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D18000, v28, OS_LOG_TYPE_ERROR, "Cannot convert input string with UTF8 encoding.", buf, 2u);
      }
    }

    else
    {
      v28 = psg_default_log_handle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v50;
        _os_log_error_impl(&dword_260D18000, v28, OS_LOG_TYPE_ERROR, "Cannot create tokenizer for %@ locale.", buf, 0xCu);
      }
    }

    v55 = 0;
    v56 = 0;
    v54 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v54, v62[6], v62[7], (v62[7] - v62[6]) >> 2);
LABEL_29:
    _Block_object_dispose(&v61, 8);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    v29 = psg_default_log_handle();
    v30 = v29;
    if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D18000, v30, OS_SIGNPOST_INTERVAL_END, spid, "PSGWordBoundaryFSTGrammar_tokenization", &unk_260D2DE82, buf, 2u);
    }

    v31 = v54;
    v32 = v55;
    v33 = psg_default_log_handle();
    v34 = v33;
    if (v31 == v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D18000, v34, OS_LOG_TYPE_ERROR, "Tokenizer returns no token.", buf, 2u);
      }

      v26 = 0;
    }

    else
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v18 length];
        *buf = 134218498;
        *&buf[4] = v35;
        *&buf[12] = 2048;
        *&buf[14] = (v32 - v31) >> 2;
        *&buf[22] = 2112;
        v71 = v50;
        _os_log_impl(&dword_260D18000, v34, OS_LOG_TYPE_DEFAULT, "Context length: %tu, #tokens: %lu, locale: %@", buf, 0x20u);
      }

      v36 = psg_default_log_handle();
      v37 = os_signpost_id_generate(v36);

      v38 = psg_default_log_handle();
      v39 = v38;
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260D18000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "PSGWordBoundaryFSTGrammar_prediction", &unk_260D2DE82, buf, 2u);
      }

      v40 = v32 - v31;
      if (!LMLanguageModelCreatePredictionEnumerator())
      {
        goto LABEL_57;
      }

      for (i = 0; ; ++i)
      {
        v42 = LMPredictionEnumeratorAdvance();
        if (i < 0x64)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        if (v43 != 1)
        {
          v26 = 0;
          goto LABEL_54;
        }

        *buf = 0;
        LMPredictionEnumeratorGetPrediction();
        if (*buf)
        {
          if (LMLanguageModelTokenHasAttributes())
          {
            break;
          }
        }
      }

      v26 = LMLanguageModelCopyTokenAttributes();
LABEL_54:
      v44 = psg_default_log_handle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = i;
        _os_log_debug_impl(&dword_260D18000, v44, OS_LOG_TYPE_DEBUG, "Prediction enumerator advance #: %d", buf, 8u);
      }

      LMPredictionEnumeratorRelease();
      if (!v26)
      {
LABEL_57:
        if ((*&v31[v40 - 4] & 0x80000000) != 0)
        {
          v26 = [(PSGWordBoundaryFSTGrammar *)self _getPrimingToken:v14 transientTokenID:?];
        }

        else
        {
          v26 = 0;
        }
      }

      v45 = psg_default_log_handle();
      v34 = v45;
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260D18000, v34, OS_SIGNPOST_INTERVAL_END, v37, "PSGWordBoundaryFSTGrammar_prediction", &unk_260D2DE82, buf, 2u);
      }
    }

    if (v31)
    {
      operator delete(v31);
    }

    goto LABEL_65;
  }

  v27 = psg_default_log_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v53;
    _os_log_error_impl(&dword_260D18000, v27, OS_LOG_TYPE_ERROR, "Failed to create language model for locale: %@", buf, 0xCu);
  }

  v26 = 0;
LABEL_65:

LABEL_66:
  v46 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_getPrimingToken:(void *)a3 transientTokenID:(unsigned int)a4
{
  v19[4] = *MEMORY[0x277D85DE8];
  LMVocabularyGetSharedVocabulary();
  ClassForTokenID = LMVocabularyGetClassForTokenID();
  switch(ClassForTokenID)
  {
    case 'D':
      v5 = MEMORY[0x277D22F80];
      break;
    case 'Y':
      v5 = MEMORY[0x277D22F70];
      break;
    case 'E':
      v5 = MEMORY[0x277D23038];
      break;
    default:
      v6 = 0;
      goto LABEL_10;
  }

  v6 = *v5;
  StringForTokenID = LMLanguageModelCreateStringForTokenID();
  if (StringForTokenID)
  {
    v8 = *MEMORY[0x277D22FE0];
    v9 = *MEMORY[0x277D23028];
    v18[0] = *MEMORY[0x277D23050];
    v18[1] = v9;
    v10 = *MEMORY[0x277D23040];
    v19[0] = v8;
    v19[1] = v10;
    v18[2] = *MEMORY[0x277D22F30];
    v11 = [MEMORY[0x277CBEB68] null];
    v19[2] = v11;
    v18[3] = *MEMORY[0x277D22FF8];
    v16 = v6;
    v17 = StringForTokenID;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[3] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

    CFRelease(StringForTokenID);
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_getLMWrapper:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_lmWrapperCache objectForKey:v4];
  if (!v5)
  {
    lmWrapperQueue = self->_lmWrapperQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__PSGWordBoundaryFSTGrammar__getLMWrapper___block_invoke;
    v8[3] = &unk_279ABCD78;
    v8[4] = self;
    v9 = v4;
    dispatch_async(lmWrapperQueue, v8);
  }

  return v5;
}

void __43__PSGWordBoundaryFSTGrammar__getLMWrapper___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v3 = [*(a1 + 32) _createLanguageModel:*(a1 + 40)];
    if (v3 && [*(a1 + 40) hasPrefix:@"zh"])
    {
      v4 = [*(a1 + 32) _createLexicon:*(a1 + 40)];
    }

    else
    {
      v4 = 0;
    }

    v2 = [[PSGLMWrapper alloc] initWithLangModel:v3 lexicon:v4];
    [*(*(a1 + 32) + 8) setObject:v2 forKey:*(a1 + 40)];
    v5 = psg_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(PSGLMWrapper *)v2 langModel];
      v8 = [(PSGLMWrapper *)v2 lexicon];
      v9 = *(a1 + 40);
      v10 = 138413058;
      v11 = v2;
      v12 = 1024;
      v13 = v7 != 0;
      v14 = 1024;
      v15 = v8 != 0;
      v16 = 2112;
      v17 = v9;
      _os_log_debug_impl(&dword_260D18000, v5, OS_LOG_TYPE_DEBUG, "[PSGWordBoundaryFSTGrammar] created wrapper instance %@ (model? %d; lexicon? %d) for %@", &v10, 0x22u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createLexicon:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = CFLocaleCreate(0, v3);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D230E0], v5);
  v6 = LMLexiconCreate();
  if (!v6)
  {
    v7 = psg_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_260D18000, v7, OS_LOG_TYPE_ERROR, "Cannot create lexicon for %@ locale.", &v10, 0xCu);
    }
  }

  CFRelease(v5);
  CFRelease(Mutable);

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_createLanguageModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = CFLocaleCreate(0, v4);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D230E0], v6);
  v7 = *MEMORY[0x277CBED10];
  CFDictionarySetValue(Mutable, *MEMORY[0x277D23078], *MEMORY[0x277CBED10]);
  v8 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, *MEMORY[0x277D230D0], *MEMORY[0x277CBED28]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D23118], v7);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D230E8], v8);
  if ([(__CFString *)v4 hasPrefix:@"hi"])
  {
    v9 = [(PSGWordBoundaryFSTGrammar *)self getOTAPathForProactiveBundle:v4];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v9];
      CFDictionarySetValue(Mutable, *MEMORY[0x277D230A0], [v10 path]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23090], @"hi");
    }
  }

  v11 = LMLanguageModelCreate();
  if (v11)
  {
    LMVocabularyGetSharedVocabulary();
    LMLanguageModelAddTransientVocabulary();
  }

  else
  {
    v12 = psg_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_error_impl(&dword_260D18000, v12, OS_LOG_TYPE_ERROR, "Cannot create language model for %@ locale.", &v15, 0xCu);
    }
  }

  CFRelease(v6);
  CFRelease(Mutable);

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)getOTAPathForProactiveBundle:(id)a3
{
  v3 = a3;
  v4 = CFLocaleCreate(0, v3);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  LDEnumerateAssetDataItems();
  if (!v10[5])
  {
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
    v6 = [v5 objectForKey:*MEMORY[0x277CBE6C8]];

    CFLocaleCreate(0, v6);
    LDEnumerateAssetDataItems();

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    CFRelease(v4);
  }

LABEL_6:
  v7 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v7;
}

void __58__PSGWordBoundaryFSTGrammar_getOTAPathForProactiveBundle___block_invoke(uint64_t a1, const __CFURL *a2, int a3, int a4, CFTypeRef cf1, _BYTE *a6)
{
  if (CFEqual(cf1, @"ProactiveStatementGrammarFST"))
  {
    v9 = CFURLCopyPath(a2);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a6 = 1;
  }
}

void __58__PSGWordBoundaryFSTGrammar_getOTAPathForProactiveBundle___block_invoke_2(uint64_t a1, const __CFURL *a2, int a3, int a4, CFTypeRef cf1, _BYTE *a6)
{
  if (CFEqual(cf1, @"ProactiveStatementGrammarFST"))
  {
    v9 = CFURLCopyPath(a2);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a6 = 1;
  }
}

- (PSGWordBoundaryFSTGrammar)init
{
  v8.receiver = self;
  v8.super_class = PSGWordBoundaryFSTGrammar;
  v2 = [(PSGWordBoundaryFSTGrammar *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lmWrapperCache = v2->_lmWrapperCache;
    v2->_lmWrapperCache = v3;

    [(NSCache *)v2->_lmWrapperCache setCountLimit:3];
    v5 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGWordBoundaryFSTGrammar.LMWrapper" qosClass:9];
    lmWrapperQueue = v2->_lmWrapperQueue;
    v2->_lmWrapperQueue = v5;
  }

  return v2;
}

void __43__PSGWordBoundaryFSTGrammar_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = +[PSGWordBoundaryFSTGrammar sharedInstance]::_pasExprOnceResult;
  +[PSGWordBoundaryFSTGrammar sharedInstance]::_pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

@end