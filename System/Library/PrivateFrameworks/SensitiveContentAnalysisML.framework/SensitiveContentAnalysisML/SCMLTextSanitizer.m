@interface SCMLTextSanitizer
+ (unsigned)violationCategoryForAdapterLabel:(id)a3;
- (SCMLTextSanitizer)initWithConfiguration:(id)a3 error:(id *)a4;
- (id).cxx_construct;
- (id)_sanitizeRequestAsynchronously:completionHandler:;
- (uint64_t)_sanitizeRequestAsynchronously:completionHandler:;
- (uint64_t)initWithConfiguration:error:;
- (void)_sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4;
- (void)_sanitizeRequestAsynchronously:completionHandler:;
- (void)doLLMBackend:(id)a3 withText:(id)a4 isChildPresent:(BOOL)a5 withResponder:(void *)a6;
- (void)initWithConfiguration:error:;
- (void)sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4;
- (void)sanitizeTextAsynchronously:(id)a3 completionHandler:(id)a4;
@end

@implementation SCMLTextSanitizer

- (SCMLTextSanitizer)initWithConfiguration:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v25 = a3;
  scml::SignpostInterval::SignpostInterval(&v44);
  v4 = v44;
  v5 = v4;
  v6 = v45;
  if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SCMLTextSanitizer.init", "", buf, 2u);
  }

  v43[0] = &unk_1F37461B0;
  v43[1] = &v44;
  v43[3] = v43;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](&v46, v43);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v43);
  v7 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v25 locale];
    v9 = [v8 localeIdentifier];
    v10 = [v25 mode];
    v11 = [v25 region];
    v12 = [v25 backends];
    v13 = [v25 modelManagerServicesUseCaseID];
    v14 = [v25 onBehalfOfProcessID];
    buf[0] = 134219523;
    *&buf[1] = self;
    v31 = 2114;
    v32 = v9;
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = v11;
    v37 = 1024;
    v38 = v12;
    v39 = 2113;
    v40 = v13;
    v41 = 1024;
    v42 = v14;
    _os_log_impl(&dword_1B8A3C000, v7, OS_LOG_TYPE_DEFAULT, "Begin SCMLTextSanitizer init inst=%p loc=%{public}@ mode=%d region=%d backends=0x%x useCase=%{private}@ pid=%d", buf, 0x38u);
  }

  v29.receiver = self;
  v29.super_class = SCMLTextSanitizer;
  v27 = [(SCMLTextSanitizer *)&v29 init];
  if (v27)
  {
    v15 = [v25 locale];
    v16 = *(v27 + 9);
    *(v27 + 9) = v15;

    *(v27 + 20) = [v25 mode];
    *(v27 + 21) = [v25 granularity];
    v17 = [v25 mode];
    v18 = [v25 backends];
    [v25 region];
    if (v17 == 2)
    {
      v19 = +[SCMLLog textAnalyzer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SCMLTextSanitizer initWithConfiguration:v19 error:?];
      }

      v18 = 37;
    }

    *(v27 + 11) = v18;
    v20 = [MEMORY[0x1E695E0F0] mutableCopy];
    v21 = *(v27 + 16);
    *(v27 + 16) = v20;

    *(v27 + 96) = [v25 throwInAdapterAsyncHandler];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  v22 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B8A3C000, v22, OS_LOG_TYPE_DEFAULT, "End SCMLTextSanitizer init", buf, 2u);
  }

  v28 = 0;
  scml::SignpostInterval::~SignpostInterval(&v44);

  v23 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)sanitizeTextAsynchronously:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SCMLTextSanitizerRequest);
  [(SCMLTextSanitizerRequest *)v7 setText:v8];
  [(SCMLTextSanitizer *)self sanitizeRequestAsynchronously:v7 completionHandler:v6];
}

- (void)doLLMBackend:(id)a3 withText:(id)a4 isChildPresent:(BOOL)a5 withResponder:(void *)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 bundleID];
  scml::strFromNSString(v9, __p);
  scml::strCat<char const(&)[47],std::string const&>("model manager query for model ", __p, v13);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v10 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v13;
    if (v14 < 0)
    {
      v11 = v13[0];
    }

    *__p = 136446210;
    *&__p[4] = v11;
    _os_log_impl(&dword_1B8A3C000, v10, OS_LOG_TYPE_DEFAULT, "Begin %{public}s", __p, 0xCu);
  }

  scml::SignpostInterval::createAsync(v12);
}

void __72__SCMLTextSanitizer_doLLMBackend_withText_isChildPresent_withResponder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v35[0] = &unk_1F37465B0;
  v35[1] = v7;
  v35[3] = v35;
  scml::Deferred::Deferred(v36, v35);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v35);
  v8 = **(a1 + 48);
  v9 = v8;
  v10 = *(*(a1 + 48) + 8);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(__p) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SCMLTextSanitizer.sanitizeText.llm_backend", "", &__p, 2u);
  }

  v11 = *(a1 + 48);
  v34[0] = &unk_1F3746630;
  v34[3] = v34;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v11 + 16, v34);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v34);
  v12 = *(a1 + 48);
  if (v12)
  {
    scml::SignpostInterval::~SignpostInterval(v12);
    MEMORY[0x1B8CC7230]();
  }

  v13 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v14 = *v14;
    }

    LODWORD(__p) = 136446210;
    *(&__p + 4) = v14;
    _os_log_impl(&dword_1B8A3C000, v13, OS_LOG_TYPE_DEFAULT, "End %{public}s", &__p, 0xCu);
  }

  if (*(*(a1 + 32) + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Forced failure");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v5)
  {
    v15 = [v5 safe];
    v16 = [v5 labels];
    v17 = [v16 count] == 0;

    if (v17)
    {
      if (v15)
      {
LABEL_28:
        v22 = 0;
        v21 = 0;
        v15 = 1;
        goto LABEL_29;
      }

      v21 = &stru_1F374C020;
    }

    else
    {
      v18 = +[SCMLImageLabelCoder instance];
      v19 = [v5 labels];
      v20 = [v19 objectAtIndexedSubscript:0];
      v21 = [v18 encodeToP1:v20];

      if (!v21)
      {
        v22 = 0;
LABEL_29:
        v29 = [*(*(a1 + 40) + 16) updateSignal:kSCMLTextSanitizationSignalSafetyAdapter[0] withSafe:v15 withLabel:v21];
        [*(*(a1 + 40) + 16) setAdapterViolationCategory:v22];

        goto LABEL_30;
      }
    }

    v28 = [SCMLTextSanitizer violationCategoryForAdapterLabel:v21];
    v22 = v28;
    if ((*(a1 + 80) & 1) != 0 || v28 != 19)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  scml::strCat<char const(&)[47],std::string const&>("Failed ", a1 + 56, &__p);
  v23 = *(a1 + 40);
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v25 = v33;
  }

  else
  {
    v25 = *(&__p + 1);
  }

  v26 = scml::error(0xFu, p_p, v25, v6);
  v27 = *(v23 + 24);
  *(v23 + 24) = v26;

  if (v33 < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  scml::Deferred::~Deferred(v36);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  scml::SignpostInterval::createAsync(a4);
}

void __69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 unsafeReason];
      v9 = [*(a1 + 32) text];
      v11 = scml::strEscape(v9, v10);
      *buf = 138478339;
      v20 = v5;
      v21 = 2117;
      v22 = v8;
      v23 = 2117;
      v24 = v11;
      _os_log_impl(&dword_1B8A3C000, v7, OS_LOG_TYPE_DEFAULT, "End sanitizeText %{private}@ (%{sensitive}@): %{sensitive}@", buf, 0x20u);
    }
  }

  else
  {
    v7 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke_cold_1(v6, v7);
    }
  }

  v12 = **(a1 + 48);
  v13 = v12;
  v14 = *(*(a1 + 48) + 8);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v13, OS_SIGNPOST_INTERVAL_END, v14, "SCMLTextSanitizer.sanitizeText", "", buf, 2u);
  }

  v15 = *(a1 + 48);
  v18[0] = &unk_1F37466B0;
  v18[3] = v18;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v15 + 16, v18);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v18);
  v16 = *(a1 + 48);
  if (v16)
  {
    scml::SignpostInterval::~SignpostInterval(v16);
    MEMORY[0x1B8CC7230]();
  }

  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4
{
  v124 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v82 = a4;
  v92 = self;
  v86 = v6;
  std::mutex::lock((self + 8));
  v7 = [v6 text];
  v8 = (*(self + 11) >> 4) & 1;
  v9 = v7;
  *buf = 0;
  v10 = [_TtC26SensitiveContentAnalysisML14SCMLNormalizer normalizeText:v9 lite:v8 error:buf];
  v11 = *buf;
  v12 = v11;
  v91 = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    scml::makeException("failed to normalize text", 0x18uLL, v12, exception);
  }

  v90 = [v86 keepGoing];
  v81 = [[SCMLTextSanitization alloc] initWithGranularOutput:*(self + 21) != 0];
  scml::SignpostInterval::SignpostInterval(&v118);
  v13 = v118;
  v14 = v13;
  v15 = v119;
  if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SCMLTextSanitizer.sanitizeText.rules", "", buf, 2u);
  }

  v117[0] = &unk_1F3746730;
  v117[1] = &v118;
  v117[3] = v117;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v120, v117);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v117);
  v16 = *(self + 15);
  v85 = [v86 isPersonalized];
  v84 = [v86 isChildPresent];
  v79 = v81;
  v18 = scml::strTokenizeWordsForNLP(v91, v17);
  v88 = v79;
  v80 = v18;
  v19 = [v18 componentsJoinedByString:{@" ", v79}];
  if ([v19 length] > 0x3E8 || (scml::MultiwordGazetteer::fullMatchString(v16[9], v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
  {

    if (((v90 & 1) != 0 || [(SCMLTextSanitization *)v88 safe]) && ((v16[12] & 0x20) != 0 || *v16))
    {
      v25 = v16[10];
      v26 = [v18 componentsJoinedByString:@" "];
      v28 = scml::MultiwordGazetteer::fullMatchString(v25, v26, v27);
      v29 = v28 == 0;

      v30 = [(SCMLTextSanitization *)v88 updateSignal:kSCMLTextSanitizationSignalFullDisallow[0] withSafe:v29];
      if ((v90 & 1) != 0 || [(SCMLTextSanitization *)v88 safe])
      {
        if (!v85)
        {
          goto LABEL_17;
        }

        v31 = v16[11];
        v32 = [v18 componentsJoinedByString:@" "];
        v34 = scml::MultiwordGazetteer::fullMatchString(v31, v32, v33);
        v35 = v34 == 0;

        v36 = [(SCMLTextSanitization *)v88 updateSignal:kSCMLTextSanitizationSignalFullPersonalization[0] withSafe:v35];
        if ((v90 & 1) != 0 || [(SCMLTextSanitization *)v88 safe])
        {
LABEL_17:
          language_modeling::v1::LinguisticContext::LinguisticContext(v97);
          std::string::basic_string[abi:ne200100]<0>(buf, "");
          LODWORD(v123) = 1;
          MEMORY[0x1B8CC6C90](v97, buf);
          if (v122 < 0)
          {
            operator delete(*buf);
          }

          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          obj = v18;
          v38 = [obj countByEnumeratingWithState:&v93 objects:buf count:16];
          if (v38)
          {
            hasGazeteerMatch = 0;
            v40 = 0;
            v87 = 0;
            LOBYTE(v41) = 0;
            v89 = *v94;
LABEL_21:
            v42 = 0;
            while (1)
            {
              if (*v94 != v89)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v93 + 1) + 8 * v42);
              if (*v16)
              {
                v44 = scml::MultiwordGazetteer::fullMatchString(v16[8], *(*(&v93 + 1) + 8 * v42), v37);
                v45 = v44 == 0;

                if (v45)
                {
                  v46 = v43;
                  v47 = v88;
                  v112 = 0;
                  v113 = &v112;
                  v114 = 0x2020000000;
                  v115 = 1;
                  v108 = 0;
                  v109 = &v108;
                  v110 = 0x2020000000;
                  v111 = 1;
                  v106[0] = 0;
                  v106[1] = v106;
                  v106[2] = 0x2020000000;
                  v107 = 1;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  v99 = ___ZN4scml12_GLOBAL__N_122RuleBasedTextSanitizer20updateWithOvsMatchesEP8NSStringjbP20SCMLTextSanitization_block_invoke;
                  v100 = &unk_1E7EB3D38;
                  v101 = &v112;
                  v102 = &v108;
                  v103 = v106;
                  v104 = v46;
                  v105 = v90;
                  v48 = _Block_copy(aBlock);
                  v49 = *v16;
                  LXLexiconEnumerateEntriesForString();
                  v50 = [(SCMLTextSanitization *)v47 updateSignal:kSCMLTextSanitizationSignalOVSOffensive[0] withSafe:*(v113 + 24)];
                  v51 = [(SCMLTextSanitization *)v47 updateSignal:kSCMLTextSanitizationSignalOVSVulgar[0] withSafe:*(v109 + 24)];

                  _Block_object_dispose(v106, 8);
                  _Block_object_dispose(&v108, 8);
                  _Block_object_dispose(&v112, 8);

                  if ((v90 & 1) == 0 && ![(SCMLTextSanitization *)v47 safe])
                  {
LABEL_59:

                    goto LABEL_65;
                  }
                }
              }

              if ((v16[12] & 0x20) == 0)
              {
                goto LABEL_53;
              }

              v52 = v38;
              v53 = v43;
              v54 = v88;
              v55 = v16[1];
              v56 = language_modeling::v1::LinguisticContext::tokenSpan(v97);
              v58 = [(SCMLTextSanitization *)v54 updateSignal:kSCMLTextSanitizationSignalCustomWords[0] withSafe:scml::MultiwordGazetteer::hasGazetteerMatch(v55, v53, v56, v57) ^ 1];
              if (v85)
              {
                v59 = v16[7];
                v60 = language_modeling::v1::LinguisticContext::tokenSpan(v97);
                v62 = [(SCMLTextSanitization *)v54 updateSignal:kSCMLTextSanitizationSignalPersonalizationBlocklist[0] withSafe:scml::MultiwordGazetteer::hasGazetteerMatch(v59, v53, v60, v61) ^ 1];
              }

              if (v84)
              {
                v63 = v16[2];
                v64 = language_modeling::v1::LinguisticContext::tokenSpan(v97);
                v66 = [(SCMLTextSanitization *)v54 updateSignal:kSCMLTextSanitizationSignalMinorBlocklist[0] withSafe:scml::MultiwordGazetteer::hasGazetteerMatch(v63, v53, v64, v65) ^ 1];
              }

              v38 = v52;
              if ((v90 & 1) == 0 && ![(SCMLTextSanitization *)v54 safe])
              {
                goto LABEL_59;
              }

              if (hasGazeteerMatch)
              {
                hasGazeteerMatch = 1;
                if (v40)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                if (v40)
                {
LABEL_37:
                  v40 = 1;
                  goto LABEL_40;
                }
              }

LABEL_40:
              if (v87)
              {
                v67 = 1;
                if (v41)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                if (v41)
                {
LABEL_42:
                  v41 = 1;
                  goto LABEL_45;
                }
              }

LABEL_45:
              if ((hasGazeteerMatch & v40) == 1)
              {
                v68 = [(SCMLTextSanitization *)v54 updateSignal:kSCMLTextSanitizationSignalDesecration[0] withSafe:0];
                if (!v90)
                {
                  goto LABEL_59;
                }
              }

              if (v67)
              {
                if (v41)
                {
                  v69 = [(SCMLTextSanitization *)v54 updateSignal:kSCMLTextSanitizationSignalNationalityFlags[0] withSafe:0];
                  if (!v90)
                  {
                    goto LABEL_59;
                  }

                  v87 = 1;
                  LOBYTE(v41) = 1;
                }

                else
                {
                  v87 = 1;
                }
              }

              else
              {
                v87 = 0;
              }

LABEL_53:
              scml::strFromNSString(v43, aBlock);
              LODWORD(v100) = 0;
              MEMORY[0x1B8CC6C90](v97, aBlock);
              if (SHIBYTE(v99) < 0)
              {
                operator delete(aBlock[0]);
              }

              if (v38 == ++v42)
              {
                v38 = [obj countByEnumeratingWithState:&v93 objects:buf count:16];
                if (v38)
                {
                  goto LABEL_21;
                }

                v70 = v87;
                if (hasGazeteerMatch & v40)
                {
                  goto LABEL_62;
                }

                goto LABEL_61;
              }
            }
          }

          LOBYTE(v41) = 0;
          v70 = 0;
LABEL_61:
          v71 = [(SCMLTextSanitization *)v88 updateSignal:kSCMLTextSanitizationSignalDesecration[0] withSafe:1];
LABEL_62:
          if ((v70 & 1) == 0 || (v41 & 1) == 0)
          {
            v72 = [(SCMLTextSanitization *)v88 updateSignal:kSCMLTextSanitizationSignalNationalityFlags[0] withSafe:1];
          }

LABEL_65:
          language_modeling::v1::LinguisticContext::~LinguisticContext(v97);
        }
      }
    }

    v24 = 0;
    goto LABEL_67;
  }

  v23 = [(SCMLTextSanitization *)v88 updateSignal:kSCMLTextSanitizationSignalFullAllow[0] withSafe:1];

  v24 = 1;
LABEL_67:

  v73 = v118;
  v74 = v73;
  v75 = v119;
  if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v74, OS_SIGNPOST_INTERVAL_END, v75, "SCMLTextSanitizer.sanitizeText.rules", "", buf, 2u);
  }

  v116[0] = &unk_1F37467B0;
  v116[3] = v116;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v120, v116);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v116);
  if ((v24 & 1) == 0 && ((v90 & 1) != 0 || [(SCMLTextSanitization *)v88 safe]))
  {
    v88;
    v76 = v82;
    operator new();
  }

  (*(v82 + 2))(v82, v88, 0);
  scml::SignpostInterval::~SignpostInterval(&v118);

  std::mutex::unlock((v92 + 8));
  v77 = *MEMORY[0x1E69E9840];
}

+ (unsigned)violationCategoryForAdapterLabel:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  scml::strFromNSString(v3, &__p);
  {
    operator new();
  }

  v4 = +[SCMLTextSanitizer violationCategoryForAdapterLabel:]::violationMap;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = __p;
  }

  v5 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v4, &v11.__r_.__value_.__l.__data_);
  v6 = v5;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (v5)
  {
LABEL_7:
    v7 = *(v6 + 10);
    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  return self;
}

- (uint64_t)initWithConfiguration:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithConfiguration:error:
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLTextSanitizer.init.llm_backend", "", v5, 2u);
  }
}

- (uint64_t)_sanitizeRequestAsynchronously:completionHandler:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)_sanitizeRequestAsynchronously:completionHandler:
{

  operator delete(a1);
}

- (id)_sanitizeRequestAsynchronously:completionHandler:
{
  *a2 = &unk_1F3746830;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = 0;
  *(a2 + 33) = 0;
  return result;
}

- (void)initWithConfiguration:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 16))(a1);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End SCMLTextSanitizer init with error: %s", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void __69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End sanitizeText with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end