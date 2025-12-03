@interface SCMLPeopleDetector
- (SCMLPeopleDetector)initWithConfiguration:(id)configuration error:(id *)error;
- (id)detectPeople:(id)people error:(id *)error;
- (uint64_t)initWithConfiguration:error:;
- (void)_detectPeopleAsynchronously:(id)asynchronously completionHandler:(id)handler;
- (void)detectPeopleAsynchronously:(id)asynchronously completionHandler:(id)handler;
- (void)initWithConfiguration:error:;
@end

@implementation SCMLPeopleDetector

- (SCMLPeopleDetector)initWithConfiguration:(id)configuration error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  scml::SignpostInterval::SignpostInterval(&v27);
  v6 = v27;
  v7 = v6;
  v8 = v28;
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SCMLPeopleDetector.init", "", buf, 2u);
  }

  v26[0] = &unk_1F3745F68;
  v26[1] = &v27;
  v26[3] = v26;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](&v29, v26);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v26);
  v9 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    locale = [configurationCopy locale];
    localeIdentifier = [locale localeIdentifier];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = localeIdentifier;
    _os_log_impl(&dword_1B8A3C000, v9, OS_LOG_TYPE_DEFAULT, "Begin SCMLPeopleDetector init inst=%p loc=%{public}@", buf, 0x16u);
  }

  v25.receiver = self;
  v25.super_class = SCMLPeopleDetector;
  v12 = [(SCMLPeopleDetector *)&v25 init];
  if (v12)
  {
    locale2 = [configurationCopy locale];
    locale = v12->_locale;
    v12->_locale = locale2;

    v15 = MEMORY[0x1E696AEC0];
    v16 = scml::strToNSString("person_overrides", 16);
    v17 = [v15 stringWithFormat:@"%@.gaze", v16];

    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = MEMORY[0x1E696AEC0];
    resourcePath = [v18 resourcePath];
    *buf = resourcePath;
    *&buf[8] = @"gaze";
    *&buf[16] = v17;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];
    [v19 pathWithComponents:v21];
    objc_claimAutoreleasedReturnValue();

    operator new();
  }

  v22 = 0;
  scml::SignpostInterval::~SignpostInterval(&v27);

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)detectPeopleAsynchronously:(id)asynchronously completionHandler:(id)handler
{
  v6 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  scml::SignpostInterval::createAsync(handler);
}

void __67__SCMLPeopleDetector_detectPeopleAsynchronously_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 spans];
      v9 = [v8 count];
      v10 = [*(a1 + 32) string];
      v12 = scml::strEscape(v10, v11);
      *buf = 134218243;
      v21 = v9;
      v22 = 2117;
      v23 = v12;
      _os_log_impl(&dword_1B8A3C000, v7, OS_LOG_TYPE_DEFAULT, "End detectPeople spans=%lu %{sensitive}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__SCMLPeopleDetector_detectPeopleAsynchronously_completionHandler___block_invoke_cold_1(v6, v7);
    }
  }

  v13 = **(a1 + 48);
  v14 = v13;
  v15 = *(*(a1 + 48) + 8);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, OS_SIGNPOST_INTERVAL_END, v15, "SCMLPeopleDetector.detectPeople", "", buf, 2u);
  }

  v16 = *(a1 + 48);
  v19[0] = &unk_1F3745FE8;
  v19[3] = v19;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v16 + 16, v19);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v19);
  v17 = *(a1 + 48);
  if (v17)
  {
    scml::SignpostInterval::~SignpostInterval(v17);
    MEMORY[0x1B8CC7230]();
  }

  (*(*(a1 + 40) + 16))();

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_detectPeopleAsynchronously:(id)asynchronously completionHandler:(id)handler
{
  asynchronouslyCopy = asynchronously;
  handlerCopy = handler;
  handler = self->_handler;
  ptr = self->_personOverrides.__ptr_;
  string = [asynchronouslyCopy string];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SCMLPeopleDetector__detectPeopleAsynchronously_completionHandler___block_invoke;
  v13[3] = &unk_1E7EB3C50;
  v16 = ptr;
  v11 = asynchronouslyCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [(SCMLPeopleDetectorImpl *)handler predictWithText:string completionHandler:v13];
}

void __68__SCMLPeopleDetector__detectPeopleAsynchronously_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v41 = v6;
  v42 = v5;
  v40 = a1;
  if (!v5)
  {
    v37 = *(a1 + 40);
    v38 = scml::error(0x13u, "Failed to query PeopleDetector", 0x1EuLL, v6);
    (*(v37 + 16))(v37, 0, v38);

    goto LABEL_44;
  }

  v49 = *(a1 + 48);
  v46 = [*(a1 + 32) string];
  v45 = v5;
  v52 = objc_alloc_init(SCMLPeopleDetection);
  v44 = [MEMORY[0x1E695E0F0] mutableCopy];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [v45 people];
  v50 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v50)
  {
    goto LABEL_42;
  }

  v7 = 0;
  v48 = *v58;
  do
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v58 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v57 + 1) + 8 * i);
      if ((scml::MultiwordGazetteer::hasGazetteerMatch(v49, v8) & 1) == 0)
      {
        v9 = v46;
        v10 = v8;
        if ([(NSString *)v10 length])
        {
          if (v66 != v67)
          {
            v11 = v66[1];
            v56 = *v66;
            goto LABEL_13;
          }

          v11 = 0;
          v55 = 0;
          v56 = 0x7FFFFFFFFFFFFFFFLL;
          if (v66)
          {
LABEL_13:
            v67 = v66;
            operator delete(v66);
            v55 = v11;
          }
        }

        else
        {
          v55 = 0;
          v56 = 0;
        }

        if (v56 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [v45 people];
          v54 = [v12 objectForKeyedSubscript:v10];

          if (v7)
          {
            v13 = 1;
          }

          else
          {
            v13 = [v54 isGroup];
          }

          [(SCMLPeopleDetection *)v52 setHasMultiplePeople:v13];
          if ([(SCMLPeopleDetection *)v52 hasGenericPeople])
          {
            v14 = 1;
          }

          else
          {
            v14 = [v54 specific] ^ 1;
          }

          [(SCMLPeopleDetection *)v52 setHasGenericPeople:v14];
          if ([(SCMLPeopleDetection *)v52 hasGender])
          {
            v15 = 1;
          }

          else
          {
            v15 = [v54 hasGender];
          }

          [(SCMLPeopleDetection *)v52 setHasGender:v15];
          if ([(SCMLPeopleDetection *)v52 hasEthnicity])
          {
            v16 = 1;
          }

          else
          {
            v16 = [v54 hasEthnicity];
          }

          [(SCMLPeopleDetection *)v52 setHasEthnicity:v16];
          if ([(SCMLPeopleDetection *)v52 hasAge])
          {
            v17 = 1;
          }

          else
          {
            v17 = [v54 hasAge];
          }

          [(SCMLPeopleDetection *)v52 setHasAge:v17];
          v18 = objc_alloc_init(SCMLPeopleDetectionSpan);
          [(SCMLPeopleDetectionSpan *)v18 setRange:v56, v55];
          -[SCMLPeopleDetectionSpan setIsGeneric:](v18, "setIsGeneric:", [v54 specific] ^ 1);
          -[SCMLPeopleDetectionSpan setIsGroup:](v18, "setIsGroup:", [v54 isGroup]);
          -[SCMLPeopleDetectionSpan setHasAge:](v18, "setHasAge:", [v54 hasAge]);
          -[SCMLPeopleDetectionSpan setHasGender:](v18, "setHasGender:", [v54 hasGender]);
          -[SCMLPeopleDetectionSpan setHasEthnicity:](v18, "setHasEthnicity:", [v54 hasEthnicity]);
          v19 = [v54 age];
          v20 = v51 = v18;
          [(SCMLPeopleDetectionSpan *)v18 setAgeSpans:v20];

          v21 = [v54 gender];
          v22 = v9;
          v43 = v21;
          v23 = [MEMORY[0x1E695E0F0] mutableCopy];
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v24 = v43;
          v25 = [v24 countByEnumeratingWithState:&v61 objects:&v66 count:16];
          if (v25)
          {
            v26 = *v62;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v62 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v61 + 1) + 8 * j);
                v29 = [v28 term];
                v69.location = v55;
                v32 = v31;

                if (AttributeSpan != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v33 = objc_opt_new();
                  [v33 setRange:{AttributeSpan, v32}];
                  [v33 setGender:{objc_msgSend(v28, "gender")}];
                  [v23 addObject:v33];
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v61 objects:&v66 count:16];
            }

            while (v25);
          }

          [(SCMLPeopleDetectionSpan *)v51 setGenderSpans:v23];
          v34 = [v54 ethnicity];
          v35 = objc_claimAutoreleasedReturnValue();
          [(SCMLPeopleDetectionSpan *)v51 setEthnicitySpans:v35];

          -[SCMLPeopleDetectionSpan setHasImplicitCategoryRequiringPersonalization:](v51, "setHasImplicitCategoryRequiringPersonalization:", [v54 hasImplicitCategoryRequiringPersonalization]);
          [v44 addObject:v51];

          v7 = 1;
        }

        continue;
      }
    }

    v50 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  }

  while (v50);
LABEL_42:

  v36 = [v44 sortedArrayUsingComparator:&__block_literal_global];
  [(SCMLPeopleDetection *)v52 setSpans:v36];

  (*(*(v40 + 40) + 16))();
LABEL_44:

  v39 = *MEMORY[0x1E69E9840];
}

- (uint64_t)initWithConfiguration:error:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithConfiguration:error:
{
  v2 = **(self + 8);
  v3 = v2;
  v4 = *(*(self + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLPeopleDetector.init", "", v5, 2u);
  }
}

- (id)detectPeople:(id)people error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  peopleCopy = people;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SCMLPeopleDetector_Test__detectPeople_error___block_invoke;
  v11[3] = &unk_1E7EB3C98;
  v13 = &v21;
  v14 = &v15;
  v12 = v7;
  v8 = v7;
  [(SCMLPeopleDetector *)self detectPeopleAsynchronously:peopleCopy completionHandler:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __47__SCMLPeopleDetector_Test__detectPeople_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)initWithConfiguration:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 16))(a1);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End SCMLPeopleDetector init with error: %s", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void __67__SCMLPeopleDetector_detectPeopleAsynchronously_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End detectPeople with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end