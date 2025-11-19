@interface SCMLImageSanitizer
- (SCMLImageSanitizer)initWithConfiguration:(id)a3 error:(id *)a4;
- (id).cxx_construct;
- (id)_sanitizeRequest:(id)a3 error:(id *)a4;
- (id)tempDumpURL:(id)a3 withSuffix:(id)a4;
- (uint64_t)_sanitizeRequest:error:;
- (uint64_t)initWithConfiguration:error:;
- (void)_sanitizeRequest:error:;
- (void)_sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4;
- (void)dumpPixelBuffer:(__CVBuffer *)a3 label:(id)a4;
- (void)initWithConfiguration:error:;
- (void)sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4;
- (void)updateSanitization:(id)a3 withAnalysisResult:(id)a4 forStyle:(unsigned int)a5 isChildPresent:(BOOL)a6;
- (void)updateSanitization:(id)a3 withObservations:(id)a4;
@end

@implementation SCMLImageSanitizer

- (SCMLImageSanitizer)initWithConfiguration:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v38 = a3;
  scml::SignpostInterval::SignpostInterval(&v47);
  v4 = v47;
  v5 = v4;
  v6 = v48;
  if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SCMLImageSanitizer.init", "", buf, 2u);
  }

  v46[0] = &unk_1F3745968;
  v46[1] = &v47;
  v46[3] = v46;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](&v49, v46);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v46);
  v7 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SCMLImageSanitizerConfiguration *)v38 mode];
    v9 = [(SCMLImageSanitizerConfiguration *)v38 region];
    v10 = [(SCMLImageSanitizerConfiguration *)v38 backends];
    v11 = [(SCMLImageSanitizerConfiguration *)v38 modelManagerServicesUseCaseID];
    v12 = [(SCMLImageSanitizerConfiguration *)v38 onBehalfOfProcessID];
    *buf = 134219267;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    v51[0] = 1024;
    *&v51[1] = v10;
    v51[3] = 2113;
    v52 = v11;
    v53 = 1024;
    v54 = v12;
    _os_log_impl(&dword_1B8A3C000, v7, OS_LOG_TYPE_DEFAULT, "Begin SCMLImageSanitizer init inst=%p mode=%d region=%d backends=0x%x useCase=%{private}@ pid=%d", buf, 0x2Eu);
  }

  v43.receiver = self;
  v43.super_class = SCMLImageSanitizer;
  v41 = [(SCMLImageSanitizer *)&v43 init];

  if (v41)
  {
    v13 = v38;
    if (!v38)
    {
      v13 = objc_alloc_init(SCMLImageSanitizerConfiguration);
    }

    v14 = v13;
    v39 = objc_alloc_init(SCMLImageSanitizerConfiguration);
    [(SCMLImageSanitizerConfiguration *)v39 setTrackPerformance:[(SCMLImageSanitizerConfiguration *)v14 trackPerformance]];
    [(SCMLImageSanitizerConfiguration *)v39 setGranularity:[(SCMLImageSanitizerConfiguration *)v14 granularity]];
    v15 = [(SCMLImageSanitizerConfiguration *)v14 clipClassifierConfig];
    [(SCMLImageSanitizerConfiguration *)v39 setClipClassifierConfig:v15];

    [(SCMLImageSanitizerConfiguration *)v39 setMode:[(SCMLImageSanitizerConfiguration *)v14 mode]];
    LODWORD(v15) = [(SCMLImageSanitizerConfiguration *)v14 mode];
    v16 = [(SCMLImageSanitizerConfiguration *)v14 backends];
    [(SCMLImageSanitizerConfiguration *)v14 region];
    [(SCMLImageSanitizerConfiguration *)v39 setRegion:[(SCMLImageSanitizerConfiguration *)v14 region]];
    v17 = [(SCMLImageSanitizerConfiguration *)v14 modelManagerServicesUseCaseID];
    [(SCMLImageSanitizerConfiguration *)v39 setModelManagerServicesUseCaseID:v17];

    [(SCMLImageSanitizerConfiguration *)v39 setOnBehalfOfProcessID:[(SCMLImageSanitizerConfiguration *)v14 onBehalfOfProcessID]];
    v18 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(SCMLImageSanitizerConfiguration *)v39 backends];
      *buf = 134218240;
      *&buf[4] = v41;
      *&buf[12] = 1024;
      *&buf[14] = v19;
      _os_log_impl(&dword_1B8A3C000, v18, OS_LOG_TYPE_DEFAULT, "Resolved config inst=%p backends=0x%x", buf, 0x12u);
    }

    v41->_granularity = [(SCMLImageSanitizerConfiguration *)v39 granularity];
    v41->_mode = [(SCMLImageSanitizerConfiguration *)v39 mode];
    v41->_backends = [(SCMLImageSanitizerConfiguration *)v39 backends];
    v41->_region = [(SCMLImageSanitizerConfiguration *)v39 region];
    mode = v41->_mode;
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 resourceURL];
    v23 = [v22 path];

    v24 = [v23 stringByAppendingPathComponent:@"Models"];
    v25 = [v24 stringByAppendingPathComponent:@"ImageSanitizer_v1.0.0"];
    v26 = @"_default";
    if (mode == 6)
    {
      v26 = @"_askllm";
    }

    if (mode == 4)
    {
      v27 = @"_genedit";
    }

    else
    {
      v27 = v26;
    }

    v28 = [@"ImageSanitizer_v1.0.0" stringByAppendingString:v27];
    v29 = [v25 stringByAppendingPathComponent:v28];
    v30 = v29;
    std::string::basic_string[abi:ne200100]<0>(&v44, [v29 UTF8String]);

    v31 = std::string::append(&v44, ".config.json", 0xCuLL);
    v32 = *&v31->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v31->__r_.__value_.__l + 2);
    *buf = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (buf[23] >= 0)
    {
      v33 = buf;
    }

    else
    {
      v33 = *buf;
    }

    if (buf[23] >= 0)
    {
      v34 = buf[23];
    }

    else
    {
      v34 = *&buf[8];
    }

    scml::Config::loadJson(v33, v34, v45);
  }

  v35 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8A3C000, v35, OS_LOG_TYPE_DEFAULT, "End SCMLImageSanitizer init", buf, 2u);
  }

  v42 = 0;
  scml::SignpostInterval::~SignpostInterval(&v47);

  v36 = *MEMORY[0x1E69E9840];
  return v42;
}

- (void)updateSanitization:(id)a3 withObservations:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a4;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = *v36;
    v33 = *MEMORY[0x1E6984750];
    v32 = *MEMORY[0x1E69849F8];
    v31 = *MEMORY[0x1E69847E8];
    v30 = *MEMORY[0x1E6984780];
    v29 = *MEMORY[0x1E6984848];
    v28 = *MEMORY[0x1E6984A18];
    v27 = *MEMORY[0x1E6984730];
    v26 = *MEMORY[0x1E6984A38];
    v25 = *MEMORY[0x1E6984748];
    v24 = *MEMORY[0x1E69847F8];
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = [v10 identifier];
        {
          v40[0] = v33;
          v40[1] = v32;
          v41[0] = kSCMLImageSanitizationSignalSignificantEventBlood[0];
          v41[1] = kSCMLImageSanitizationSignalSignificantEventDemonstration[0];
          v40[2] = v31;
          v40[3] = v30;
          v42 = kSCMLImageSanitizationSignalSignificantEventDestruction[0];
          v43 = kSCMLImageSanitizationSignalSignificantEventFireDevastation[0];
          v40[4] = v29;
          v40[5] = v28;
          v44 = kSCMLImageSanitizationSignalSignificantEventFloodDevastation[0];
          v45 = kSCMLImageSanitizationSignalSignificantEventFuneral[0];
          v40[6] = v27;
          v40[7] = v26;
          v46 = kSCMLImageSanitizationSignalSignificantEventHospital[0];
          v47 = kSCMLImageSanitizationSignalSignificantEventReligiousSetting[0];
          v40[8] = v25;
          v40[9] = v24;
          v48 = kSCMLImageSanitizationSignalSignificantEventVehicleCrash[0];
          v49 = kSCMLImageSanitizationSignalSignificantEventWar[0];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:10];
        }

        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        v15 = v14;

        v16 = v11;
        std::string::basic_string[abi:ne200100]<0>(v41, [v11 UTF8String]);
        v17 = std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::find<std::string>(&self->_tabooThresholds.__table_.__bucket_list_.__ptr_, v41);
        v18 = v17;
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41[0]);
          if (v18)
          {
LABEL_12:
            [v10 confidence];
            v20 = v19 < *(v18 + 10);
            goto LABEL_15;
          }
        }

        else if (v17)
        {
          goto LABEL_12;
        }

        v20 = 1;
LABEL_15:
        [v10 confidence];
        v21 = [v6 updateSignal:v15 withSafe:v20 withScore:?];

        ++v9;
      }

      while (v7 != v9);
      v22 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v7 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)updateSanitization:(id)a3 withAnalysisResult:(id)a4 forStyle:(unsigned int)a5 isChildPresent:(BOOL)a6
{
  v47 = a6;
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v49 = a4;
  v9 = [v49 scoresForLabels];
  v10 = [v9 allKeys];

  v11 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v11)
  {
    LOBYTE(v12) = 1;
    goto LABEL_58;
  }

  v48 = *v56;
  v12 = 1;
  v45 = v8;
  v46 = v10;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v56 != v48)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v55 + 1) + 8 * i);
      v15 = [v49 scoresForLabels];
      v51 = [v15 objectForKeyedSubscript:v14];

      [v51 doubleValue];
      v17 = v16;
      v18 = v14;
      std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);
      v50 = v12;
      v19 = v11;
      v20 = std::__string_hash<char>::operator()[abi:ne200100](&self->_ivsThresholds, __p);
      size = self->_ivsThresholds.__table_.__bucket_list_.__deleter_.__size_;
      if (!size)
      {
        v26 = 0;
        goto LABEL_28;
      }

      v22 = v20;
      v23 = vcnt_s8(size);
      v23.i16[0] = vaddlv_u8(v23);
      v24 = v23.u32[0];
      if (v23.u32[0] > 1uLL)
      {
        v25 = v20;
        if (v20 >= size)
        {
          v25 = v20 % size;
        }
      }

      else
      {
        v25 = (size - 1) & v20;
      }

      v27 = self->_ivsThresholds.__table_.__bucket_list_.__ptr_[v25];
      if (!v27)
      {
        v26 = 0;
        goto LABEL_27;
      }

      v26 = *v27;
      if (!*v27)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v28 = v26[1];
        if (v28 == v22)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](&self->_ivsThresholds, v26 + 2, __p))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        if (v24 > 1)
        {
          if (v28 >= size)
          {
            v28 %= size;
          }
        }

        else
        {
          v28 &= size - 1;
        }

        if (v28 != v25)
        {
          break;
        }

LABEL_22:
        v26 = *v26;
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      v26 = 0;
LABEL_26:
      v8 = v45;
LABEL_27:
      v10 = v46;
LABEL_28:
      v11 = v19;
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26)
      {
        v29 = v14;
        v30 = v26[7];
        v31 = v26[8];
        if (v30 == v31)
        {
LABEL_43:
          v34 = (v26 + 5);
          v35 = (v26 + 6);
        }

        else
        {
          v32 = v26[7];
          do
          {
            v33 = *(v32 + 5) == 1 && *v32 == a5;
            if (v33 && *(v32 + 4) == v47)
            {
              v34 = (v32 + 8);
              v35 = (v32 + 16);
              goto LABEL_47;
            }

            v32 += 24;
          }

          while (v32 != v31);
          while ((*(v30 + 5) & 1) != 0 || *v30 != a5)
          {
            v30 += 24;
            if (v30 == v31)
            {
              goto LABEL_43;
            }
          }

          v34 = (v30 + 8);
          v35 = (v30 + 16);
        }

LABEL_47:
        v37 = *v35;
        v38 = *v34;
        v39 = v29;
        if (v37)
        {
          if (v37 != 1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v36 = v17 < v38;
        }

        else
        {
          v36 = [SCMLHandler isImageSensitiveForLabel:v39 confidenceScore:*&v38 classificationMode:v17]^ 1;
        }
      }

      else
      {
        v36 = 1;
      }

      if (self->_granularity != 1)
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"jwt", v14];
        *&v41 = v17;
        v42 = [v8 updateSignal:v40 withSafe:v36 withScore:v41];
      }

      v12 = v50 & v36;
    }

    v11 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
  }

  while (v11);
LABEL_58:

  if (self->_granularity == 1)
  {
    v43 = [v8 updateSignal:kSCMLImageSanitizationSignalNSFWExplicit[0] withSafe:v12 & 1];
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)_sanitizeRequest:(id)a3 error:(id *)a4
{
  v106 = *MEMORY[0x1E69E9840];
  v83 = a3;
  v77 = [v83 pixelBuffer];
  v79 = [v83 keepGoing];
  v4 = [[SCMLImageSanitization alloc] initWithGranularOutput:self->_granularity != 0];
  v81 = v4;
  if (v5)
  {
    v6 = v5;
    scml::SignpostInterval::SignpostInterval(v98);
    v7 = *v98;
    v8 = v7;
    v9 = v99;
    if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SCMLImageSanitizer.sanitizePixelBuffer.ivs", "", buf, 2u);
    }

    v97[0] = &unk_1F3745C68;
    v97[1] = v98;
    v97[3] = v97;
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v100, v97);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v97);
    handler = self->_handler;
    v86 = 0;
    v11 = [(SCMLHandler *)handler analyzePixelBuffer:v77 error:&v86];
    v12 = v86;
    if (v12)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      scml::makeException("Failed to compute IVS", 0x15uLL, v12, exception);
    }

    -[SCMLImageSanitizer updateSanitization:withAnalysisResult:forStyle:isChildPresent:](self, "updateSanitization:withAnalysisResult:forStyle:isChildPresent:", v4, v11, [v83 style], objc_msgSend(v83, "isChildPresent"));
    if ((v79 & 1) == 0 && ![(SCMLImageSanitization *)v4 safe])
    {
      v69 = v4;

      goto LABEL_73;
    }

    scml::SignpostInterval::~SignpostInterval(v98);
    v5 = v6;
  }

  v82 = v5;
  if ((v5 & 0xC) == 0)
  {
LABEL_62:
    if ((v82 & 2) == 0)
    {
LABEL_70:
      v68 = v4;
      goto LABEL_76;
    }

    scml::SignpostInterval::SignpostInterval(v98);
    v57 = *v98;
    v58 = v57;
    v59 = v99;
    if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v59, "SCMLImageSanitizer.sanitizePixelBuffer.taboo", "", buf, 2u);
    }

    v91[0] = &unk_1F3745E68;
    v91[1] = v98;
    v91[3] = v91;
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v100, v91);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v91);
    v60 = self->_vnSession;
    v61 = objc_alloc(MEMORY[0x1E69845B8]);
    v63 = v62 = [v61 initWithCVPixelBuffer:v77 options:MEMORY[0x1E695E0F8] session:v60];
    *buf = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v94 = 0;
    v65 = [(_anonymous_namespace_ *)v62 performRequests:v64 error:&v94];
    v66 = v94;

    if ((v65 & 1) == 0)
    {
      v76 = __cxa_allocate_exception(0x18uLL);
      scml::makeException("Failed vision request", 0x15uLL, v66, v76);
    }

    v67 = [v63 results];

    [(SCMLImageSanitizer *)self updateSanitization:v81 withObservations:v67];
    if ((v79 & 1) != 0 || [(SCMLImageSanitization *)v81 safe])
    {

      scml::SignpostInterval::~SignpostInterval(v98);
      v4 = v81;
      goto LABEL_70;
    }

    v70 = v81;

LABEL_73:
    v71 = v98;
    goto LABEL_75;
  }

  scml::SignpostInterval::SignpostInterval(&v94);
  v13 = v94;
  v14 = v13;
  v15 = v95;
  if (v95 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v98 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SCMLImageSanitizer.sanitizePixelBuffer.clip", "", v98, 2u);
  }

  v93[0] = &unk_1F3745CE8;
  v93[1] = &v94;
  v93[3] = v93;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](&v96, v93);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v93);
  v16 = [v83 embeddings];
  memset(v84, 0, sizeof(v84));
  v85 = 1065353216;
  *buf = 0u;
  memset(v105, 0, sizeof(v105));
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:buf objects:v98 count:16];
  if (v18)
  {
    v19 = **&v105[0];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (**&v105[0] != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*&buf[8] + 8 * i);
        scml::ClipImageEncoder::toEmbeddingVec(v21, __p);
        v87 = [v21 version];
        v88 = &v87;
        v22 = std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::__emplace_unique_key_args<MADUnifiedEmbeddingVersion,std::piecewise_construct_t const&,std::tuple<MADUnifiedEmbeddingVersion const&>,std::tuple<>>(v84, &v87);
        v23 = v22[3];
        if (v23)
        {
          v22[4] = v23;
          operator delete(v23);
          v22[3] = 0;
          v22[4] = 0;
          v22[5] = 0;
        }

        *(v22 + 3) = *__p;
        v22[5] = v90;
      }

      v18 = [v17 countByEnumeratingWithState:buf objects:v98 count:16];
    }

    while (v18);
  }

  begin = self->_clipEmbeddingClassifiers.__begin_;
  end = self->_clipEmbeddingClassifiers.__end_;
  if (begin == end)
  {
LABEL_61:
    std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::~__hash_table(v84);
    scml::SignpostInterval::~SignpostInterval(&v94);
    v4 = v81;
    goto LABEL_62;
  }

  v78 = self->_clipEmbeddingClassifiers.__end_;
  while (1)
  {
    if (*begin)
    {
      v26 = (*begin & v82) == 0;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      goto LABEL_58;
    }

    v88 = scml::ClipEmbeddingClassifier::embeddingVersion(begin[1]);
    v27 = std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>>>::find<MADUnifiedEmbeddingVersion>(v84, &v88);
    if (!v27)
    {
      scml::SignpostInterval::SignpostInterval(v98);
      v28 = *v98;
      v29 = v28;
      v30 = v99;
      if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v30, "SCMLImageSanitizer.sanitizePixelBuffer.clip.embed", "", buf, 2u);
      }

      *buf = &off_1F3745D68;
      *&buf[8] = v98;
      *(&v105[0] + 1) = buf;
      std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v100, buf);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
      v31 = std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>>>::find<MADUnifiedEmbeddingVersion>(&self->_clipImageEncoders.__table_.__bucket_list_.__ptr_, &v88);
      if (!v31)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      scml::ClipImageEncoder::getEmbedding(v31[3], v77, __p);
      scml::SignpostInterval::~SignpostInterval(v98);
      v27 = std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::__emplace_unique_key_args<MADUnifiedEmbeddingVersion,MADUnifiedEmbeddingVersion const&,std::vector<float>>(v84, &v88);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    scml::SignpostInterval::SignpostInterval(buf);
    v32 = *buf;
    v33 = v32;
    v34 = *&buf[8];
    if ((*&buf[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *v98 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v34, "SCMLImageSanitizer.sanitizePixelBuffer.clip.classify", "", v98, 2u);
    }

    v92[0] = &off_1F3745DE8;
    v92[1] = buf;
    v92[3] = v92;
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v105, v92);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v92);
    v35 = [v83 style];
    v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = v36;
    if (v35 > 9 || ((1 << v35) & 0x31E) == 0)
    {
      [v36 addObject:@"btn.ufsspsjtu_ibuf_hspvqt"];
    }

    v38 = begin[1];
    v39 = v81;
    v40 = v37;
    v41 = v38;
    v42 = v40;
    scml::ClipEmbeddingClassifier::predict(v41, v27 + 3, v98);
    v43 = scml::ClipEmbeddingClassifier::name(v41);
    v44 = *(v43 + 8);
    if (*(v43 + 23) >= 0)
    {
      v45 = *(v43 + 23);
    }

    else
    {
      v43 = *v43;
      v45 = v44;
    }

    v46 = scml::strToNSString(v43, v45);
    v47 = +[SCMLImageLabelCoder instance];
    v48 = [v47 encodeToP1:v46];

    v49 = v99;
    if (v100[0] != v99)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = (v49 + v50);
        if (*(v52 + 23) < 0)
        {
          v52 = *v52;
        }

        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%s", v48, v52];
        if ([v42 containsObject:v53])
        {
          v55 = 1;
        }

        else
        {
          v55 = (*(v101 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v51) & 1;
        }

        LODWORD(v54) = *(v102 + v51);
        v56 = [(SCMLImageSanitization *)v39 updateSignal:v53 withSafe:v55 withScore:v54];

        ++v51;
        v49 = v99;
        v50 += 24;
      }

      while (v51 < 0xAAAAAAAAAAAAAAABLL * ((v100[0] - v99) >> 3));
    }

    if (v102)
    {
      v103 = v102;
      operator delete(v102);
    }

    if (v101)
    {
      operator delete(v101);
    }

    __p[0] = &v99;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);

    if ((v79 & 1) == 0 && ![(SCMLImageSanitization *)v39 safe])
    {
      break;
    }

    scml::SignpostInterval::~SignpostInterval(buf);
    end = v78;
LABEL_58:
    begin += 2;
    if (begin == end)
    {
      goto LABEL_61;
    }
  }

  v72 = v39;

  scml::SignpostInterval::~SignpostInterval(buf);
  std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::~__hash_table(v84);
  v71 = &v94;
LABEL_75:
  scml::SignpostInterval::~SignpostInterval(v71);
  v4 = v81;
LABEL_76:

  v73 = *MEMORY[0x1E69E9840];

  return v81;
}

- (id)tempDumpURL:(id)a3 withSuffix:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 temporaryDirectory];
  v9 = [v8 path];

  v10 = [MEMORY[0x1E695DF00] now];
  [v10 timeIntervalSince1970];
  v12 = v11;

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%.3f%@", v5, v12, v6];
  v14 = [v9 stringByAppendingPathComponent:v13];
  v15 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&dword_1B8A3C000, v15, OS_LOG_TYPE_DEFAULT, "Saving to: %@", buf, 0xCu);
  }

  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)dumpPixelBuffer:(__CVBuffer *)a3 label:(id)a4
{
  v5 = [(SCMLImageSanitizer *)self tempDumpURL:a4 withSuffix:@".png"];
  saveCVPixelBufferToPng(a3, v5);
}

- (void)sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  scml::SignpostInterval::createAsync(a4);
}

void __70__SCMLImageSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v9 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __70__SCMLImageSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke_cold_1(v6, v9);
    }

    goto LABEL_9;
  }

  v7 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 unsafeReason];
    *buf = 138478083;
    v18 = v5;
    v19 = 2117;
    v20 = v8;
    _os_log_impl(&dword_1B8A3C000, v7, OS_LOG_TYPE_DEFAULT, "End sanitizePixelBuffer %{private}@ %{sensitive}@", buf, 0x16u);
  }

  if (([v5 safe] & 1) == 0)
  {
    v9 = [_TtC26SensitiveContentAnalysisML16SCMLUserDefaults globalBoolWithName:@"dumpUnsafeImages" defaultValue:0 error:0];
    if ([v9 BOOLValue])
    {
      [*(a1 + 32) dumpPixelBuffer:objc_msgSend(*(a1 + 40) label:{"pixelBuffer"), @"scml_unsafe"}];
    }

LABEL_9:
  }

  v10 = **(a1 + 56);
  v11 = v10;
  v12 = *(*(a1 + 56) + 8);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SCMLImageSanitizer.sanitizePixelBuffer", "", buf, 2u);
  }

  v13 = *(a1 + 56);
  v16[0] = &unk_1F3745EE8;
  v16[3] = v16;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v13 + 16, v16);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16);
  v14 = *(a1 + 56);
  if (v14)
  {
    scml::SignpostInterval::~SignpostInterval(v14);
    MEMORY[0x1B8CC7230]();
  }

  (*(*(a1 + 48) + 16))();

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_sanitizeRequestAsynchronously:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 style] == 5)
  {
    v8 = [[SCMLImageSanitization alloc] initWithGranularOutput:self->_granularity != 0];
    v7[2](v7, v8, 0);
  }

  else
  {
    v17 = 0;
    v9 = [(SCMLImageSanitizer *)self _sanitizeRequest:v6 error:&v17];
    v10 = v17;
    v11 = [v6 keepGoing];
    if (([(SCMLImageSanitization *)v9 safe]| v11))
    {
      combinedBackend = self->_combinedBackend;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__SCMLImageSanitizer__sanitizeRequestAsynchronously_completionHandler___block_invoke;
      v14[3] = &unk_1E7EB3BA8;
      v16 = v7;
      v15 = v9;
      [(SCMLCombinedImageSanitizerBackend *)combinedBackend sanitizeWithRequest:v6 output:v15 backends:v12 completionHandler:v14];
    }

    else
    {
      (v7)[2](v7, v9, v10);
    }
  }
}

void __71__SCMLImageSanitizer__sanitizeRequestAsynchronously_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:SCMLErrorDomain];

    v6 = *(a1 + 40);
    if (v5)
    {
      (*(v6 + 16))(v6, 0, v9);
    }

    else
    {
      v8 = scml::error(0x11u, v9);
      (*(v6 + 16))(v6, 0, v8);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 28) = 1065353216;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 48) = 1065353216;
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
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLImageSanitizer.init.ivs", "", v5, 2u);
  }
}

- (uint64_t)_sanitizeRequest:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)_sanitizeRequest:error:
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLImageSanitizer.sanitizePixelBuffer.taboo", "", v5, 2u);
  }
}

- (void)initWithConfiguration:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 16))(a1);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End SCMLImageSanitizer init with error: %s", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void __70__SCMLImageSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End sanitizePixelBuffer with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end