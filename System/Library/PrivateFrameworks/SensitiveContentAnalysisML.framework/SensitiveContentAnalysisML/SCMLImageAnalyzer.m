@interface SCMLImageAnalyzer
+ (id)_decodeName:(id)a3;
+ (id)_encodeName:(id)a3;
+ (id)_readOperatingThresholdsDataUsingModelURL:(id)a3 error:(id *)a4;
+ (id)getOperatingPointDataForClassName:(id)a3 modelURL:(id)a4 error:(id *)a5;
- (BOOL)isSensitive:(id)a3 sensitivityScore:(id *)a4 classificationMode:(unint64_t)a5;
- (BOOL)loadNetworkForURL:(id)a3 espressoEngine:(int)a4 storageType:(int)a5 deviceId:(int)a6;
- (BOOL)shouldProcessDetections;
- (NetworkOutputs)_computeOutputForPixelBuffer:(SEL)a3 error:(__CVBuffer *)a4;
- (SCMLImageAnalyzer)initWithModelURL:(id)a3 options:(id)a4 error:(id *)a5;
- (id)_processNetworkOutput:(NetworkOutputs *)a3;
- (id)analyzeImage:(CGImage *)a3 error:(id *)a4;
- (id)analyzePixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (id)classifyImage:(CGImage *)a3 error:(id *)a4;
- (id)classifyPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (id)generateClassificationScoresForImage:(CGImage *)a3 error:(id *)a4;
- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (id)scaleMethod;
- (vector<SCML::BoxInfo,)_processDetectionOutput:(SCMLImageAnalyzer *)self;
- (void)_extractThresholdForOTGXMain:(id)a3;
- (void)dealloc;
@end

@implementation SCMLImageAnalyzer

- (SCMLImageAnalyzer)initWithModelURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v66.receiver = self;
  v66.super_class = SCMLImageAnalyzer;
  v11 = [(SCMLModelBase *)&v66 initWithOptions:v10];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_80;
  }

  objc_storeStrong(&v11->_modelUrl, a3);
  v13 = [v10 objectForKeyedSubscript:SCMLEnableAllClasses[0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v15 = [v10 objectForKeyedSubscript:SCMLEnableAllClasses[0]];
  }

  else
  {
    v15 = 0;
  }

  v12->_otgxRetrieveAllClasses = [v15 BOOLValue];
  if (isKindOfClass)
  {
  }

  v16 = [v10 objectForKeyedSubscript:SCMLUseMTLDevice[0]];
  v17 = +[SCMLHandler supportsANE];
  v60 = v16;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"self ENDSWITH '%@_quantized.espresso.net'", @"1.8.0"];
  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"self ENDSWITH '%@_quantized_sqdev.espresso.net'", @"1.8.0"];
  v19 = v60;
  v57 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [v9 path];
  v61 = [v57 contentsOfDirectoryAtPath:v20 error:0];

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:v58];
  v62 = v21;
  if (v18)
  {
    v62 = [MEMORY[0x1E696AE18] predicateWithFormat:v59];
  }

  v63 = [v61 filteredArrayUsingPredicate:v21];
  v64 = [v61 filteredArrayUsingPredicate:v62];
  if ([v63 count])
  {
    v22 = [v63 firstObject];
    v23 = [v9 URLByAppendingPathComponent:v22];
  }

  else
  {
    v24 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SCMLImageAnalyzer initWithModelURL:v24 options:? error:?];
    }

    if (![v64 count])
    {
      if (a5)
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:1 userInfo:0];
      }

      goto LABEL_81;
    }

    v23 = 0;
  }

  if ([v64 count])
  {
    v25 = [v64 firstObject];
    v56 = [v9 URLByAppendingPathComponent:v25];
  }

  else
  {
    v56 = v23;
    v25 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8A3C000, v25, OS_LOG_TYPE_DEFAULT, "ANE-specific ivs model files not found. Falling back to the default model.", buf, 2u);
    }
  }

  v26 = [SCMLImageAnalyzer _readOperatingThresholdsDataUsingModelURL:v9 error:a5];
  v55 = v26;
  if (a5 && *a5)
  {
    goto LABEL_24;
  }

  [(SCMLImageAnalyzer *)v12 _extractThresholdForOTGXMain:v26];
  v28 = [v10 objectForKeyedSubscript:SCMLUseAnyAvailableDevice[0]];
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();
  if (v29)
  {
    v30 = [v10 objectForKeyedSubscript:SCMLUseAnyAvailableDevice[0]];
  }

  else
  {
    v30 = 0;
  }

  v31 = [v30 BOOLValue];
  if (v29)
  {
  }

  if (v31 && +[SCMLHandler supportsANE])
  {
    v19 = v60;
    if (!v60)
    {
      v32 = 1;
      v33 = 1;
      goto LABEL_61;
    }

LABEL_41:
    v37 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v23 espressoEngine:5 storageType:65552 deviceId:espresso_device_id_for_metal_device()];
    v27 = v37;
    if (a5)
    {
      v38 = v37;
    }

    else
    {
      v38 = 1;
    }

    if ((v38 & 1) == 0)
    {
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:5 userInfo:0];
LABEL_78:
      v27 = 0;
      *a5 = v39;
      goto LABEL_79;
    }

    goto LABEL_79;
  }

  v34 = [v10 objectForKeyedSubscript:SCMLUseANE[0]];
  objc_opt_class();
  v35 = objc_opt_isKindOfClass();
  if (v35)
  {
    v36 = [v10 objectForKeyedSubscript:SCMLUseANE[0]];
  }

  else
  {
    v36 = 0;
  }

  v54 = [v36 BOOLValue];
  if (v35)
  {
  }

  if (v31)
  {
    v32 = 1;
    v33 = 1;
    v19 = v60;
    if (v60)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v40 = [v10 objectForKeyedSubscript:SCMLUseGPU[0]];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();
    if (v41)
    {
      v42 = [v10 objectForKeyedSubscript:SCMLUseGPU[0]];
    }

    else
    {
      v42 = 0;
    }

    v43 = [v42 BOOLValue];
    if (v41)
    {
    }

    v53 = v43;

    v44 = [v10 objectForKeyedSubscript:SCMLUseCPU[0]];
    objc_opt_class();
    v45 = objc_opt_isKindOfClass();
    if (v45)
    {
      v46 = [v10 objectForKeyedSubscript:SCMLUseCPU[0]];
    }

    else
    {
      v46 = 0;
    }

    v33 = [v46 BOOLValue];
    if (v45)
    {
    }

    v19 = v60;
    v32 = v53;
    if (v60)
    {
      goto LABEL_41;
    }
  }

  if (v54)
  {
LABEL_61:
    v47 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v56 espressoEngine:10007 storageType:65552 deviceId:0xFFFFFFFFLL];
    if (((v47 | v32 | v33) & 1) == 0)
    {
      if (a5)
      {
        v48 = 2;
LABEL_77:
        v39 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:v48 userInfo:0];
        goto LABEL_78;
      }

LABEL_24:
      v27 = 0;
      goto LABEL_79;
    }

    goto LABEL_65;
  }

  LOBYTE(v47) = 0;
LABEL_65:
  if (!v47)
  {
    if (v32)
    {
      v47 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v23 espressoEngine:5 storageType:65552 deviceId:0xFFFFFFFFLL];
      if (((v47 | v33) & 1) == 0)
      {
        if (a5)
        {
          v48 = 3;
          goto LABEL_77;
        }

        goto LABEL_24;
      }
    }
  }

  v27 = 1;
  if (!v47 && ((v33 ^ 1) & 1) == 0)
  {
    v49 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v23 espressoEngine:0 storageType:65568 deviceId:0xFFFFFFFFLL];
    v27 = v49;
    v50 = a5 ? v49 : 1;
    if ((v50 & 1) == 0)
    {
      v48 = 4;
      goto LABEL_77;
    }
  }

LABEL_79:

  if ((v27 & 1) == 0)
  {
LABEL_81:
    v51 = 0;
    goto LABEL_82;
  }

LABEL_80:
  v51 = v12;
LABEL_82:

  return v51;
}

- (void)dealloc
{
  encoderPlan = self->encoderPlan;
  espresso_plan_destroy();
  encoderCtx = self->encoderCtx;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = SCMLImageAnalyzer;
  [(SCMLImageAnalyzer *)&v5 dealloc];
}

- (BOOL)loadNetworkForURL:(id)a3 espressoEngine:(int)a4 storageType:(int)a5 deviceId:(int)a6
{
  v10 = a3;
  context = espresso_create_context();
  self->encoderCtx = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v57, a4);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not create espresso context for engine: ", &v57, &v58);
    v29 = std::string::append(&v58, " and device id: ", 0x10uLL);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, a6);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v56;
    }

    else
    {
      v31 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v59, v31, size);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v60);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  self->encoderPlan = espresso_create_plan();
  v12 = [v10 path];
  [v12 UTF8String];
  p_encoderNet = &self->encoderNet;
  v14 = espresso_plan_add_network();

  if (v14)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    encoderPlan = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v35, v37);
    __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = self->encoderPlan;
  if (espresso_plan_build())
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    v39 = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v38, v40);
    __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  memset(&v60, 0, sizeof(v60));
  memset(&v59, 0, sizeof(v59));
  plan = p_encoderNet->plan;
  v17 = *&self->encoderNet.network_index;
  if (c_network_get_input_names())
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    v42 = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v41, v43);
    __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v18 = p_encoderNet->plan;
  v19 = *&self->encoderNet.network_index;
  if (*(v60.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    v20 = *v60.__r_.__value_.__l.__data_;
  }

  if (espresso_network_query_blob_dimensions())
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    v45 = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v44, v46);
    __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v21 = p_encoderNet->plan;
  v22 = *&self->encoderNet.network_index;
  if (espresso_network_bind_buffer())
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    v48 = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v47, v49);
    __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
    v23 = p_encoderNet->plan;
    v24 = *&self->encoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v50 = __cxa_allocate_exception(0x10uLL);
      v51 = self->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v50, v52);
      __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v25 = p_encoderNet->plan;
    v26 = *&self->encoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v53 = __cxa_allocate_exception(0x10uLL);
      v54 = self->encoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v53, v55);
      __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  self->__espressoEngine = a4;
  self->__espressoDeviceId = a6;
  self->__espressoStorageType = a5;
  v58.__r_.__value_.__r.__words[0] = &v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
  v59.__r_.__value_.__r.__words[0] = &v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);

  return 1;
}

+ (id)_readOperatingThresholdsDataUsingModelURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  v8 = [v6 contentsOfDirectoryAtPath:v7 error:a4];

  if (a4 && *a4)
  {
    a4 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self ENDSWITH 'operating_thresholds.json'"];
    v10 = [v8 filteredArrayUsingPredicate:v9];
    v11 = [v10 firstObject];
    v12 = [v5 URLByAppendingPathComponent:v11];

    v13 = MEMORY[0x1E695DEF0];
    v14 = [v12 path];
    v15 = [v13 dataWithContentsOfFile:v14];

    if (v15)
    {
      v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:a4];
      v17 = v16;
      if (a4 && *a4)
      {
        a4 = 0;
      }

      else
      {
        a4 = v16;
      }
    }

    else if (a4)
    {
      v18 = [v12 path];
      scml::strFromNSString(v18, __p);
      scml::strCat<char const(&)[38],std::string>("unable to read operating thresholds: ", __p, v24);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v25 & 0x80u) == 0)
      {
        v19 = v24;
      }

      else
      {
        v19 = v24[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v20 = v25;
      }

      else
      {
        v20 = v24[1];
      }

      *a4 = scml::error(9u, v19, v20);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      a4 = 0;
    }
  }

  return a4;
}

+ (id)_encodeName:(id)a3
{
  v3 = a3;
  v4 = +[SCMLImageLabelCoder instance];
  v5 = [v4 encodeToHex:v3];
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, [v3 UTF8String]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Name could not be encoded: ", &v8, &v9);
    std::runtime_error::runtime_error(exception, &v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v5;
}

+ (id)_decodeName:(id)a3
{
  v3 = a3;
  v4 = +[SCMLImageLabelCoder instance];
  v5 = [v4 decodeFromHex:v3];
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, [v3 UTF8String]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Name could not be encoded: ", &v8, &v9);
    std::runtime_error::runtime_error(exception, &v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v5;
}

- (void)_extractThresholdForOTGXMain:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v51 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v48 objectForKeyedSubscript:@"class_thresholds"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v48 objectForKeyedSubscript:@"class_thresholds"];
  }

  else
  {
    v6 = 0;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v7)
  {
    v55 = *v65;
    do
    {
      v57 = v7;
      for (i = 0; i != v57; ++i)
      {
        if (*v65 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v64 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"class"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 objectForKeyedSubscript:@"class"];
        }

        else
        {
          v11 = 0;
        }

        v12 = [v9 objectForKeyedSubscript:@"index"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v9 objectForKeyedSubscript:@"index"];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v9 objectForKeyedSubscript:@"default"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v15 = [v9 objectForKeyedSubscript:@"default"];
          v3 = v15;
        }

        else
        {
          v15 = 0;
        }

        v16 = [v15 BOOLValue];
        if (isKindOfClass)
        {
        }

        if ([v11 isEqualToString:@"60dc96fd80c33771139d6cf90639a776"])
        {
          v17 = [v9 objectForKeyedSubscript:@"thresholds"];
          v18 = [v17 objectForKeyedSubscript:@"balanced"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v53 = [v9 objectForKeyedSubscript:@"thresholds"];
            v6 = [v53 objectForKeyedSubscript:@"balanced"];
            v19 = v6;
          }

          else
          {
            v19 = 0;
          }

          objc_storeStrong(&self->_otgxMainThreshold, v19);
          if (isKindOfClass)
          {
          }
        }

        if (v13 && ((self->_otgxRetrieveAllClasses | v16) & 1) != 0)
        {
          v20 = [SCMLImageAnalyzer _decodeName:v11];
          [v51 setObject:v20 forKeyedSubscript:v13];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v7);
  }

  v21 = [v51 copy];
  acceptedOutputIndices = self->_acceptedOutputIndices;
  self->_acceptedOutputIndices = v21;

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
    v23 = [v48 objectForKeyedSubscript:@"detection_thresholds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v48 objectForKeyedSubscript:@"detection_thresholds"];
    }

    else
    {
      v47 = 0;
    }

    v49 = [MEMORY[0x1E695DF90] dictionary];
    v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v54 = v47;
    v26 = [(NSDictionary *)v54 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v26)
    {
      v56 = *v61;
      do
      {
        v58 = v26;
        for (j = 0; j != v58; ++j)
        {
          if (*v61 != v56)
          {
            objc_enumerationMutation(v54);
          }

          v28 = *(*(&v60 + 1) + 8 * j);
          v29 = [v28 objectForKeyedSubscript:{@"class", v47}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [v28 objectForKeyedSubscript:@"class"];
          }

          else
          {
            v30 = 0;
          }

          v31 = [v28 objectForKeyedSubscript:@"index"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [v28 objectForKeyedSubscript:@"index"];
          }

          else
          {
            v32 = 0;
          }

          v33 = [v28 objectForKeyedSubscript:@"default"];
          objc_opt_class();
          v34 = objc_opt_isKindOfClass();
          if (v34)
          {
            v35 = [v28 objectForKeyedSubscript:@"default"];
            isKindOfClass = v35;
          }

          else
          {
            v35 = 0;
          }

          v36 = [v35 BOOLValue];
          if (v34)
          {
          }

          v37 = [v28 objectForKeyedSubscript:@"thresholds"];
          v38 = [v37 objectForKeyedSubscript:@"balanced"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v40 = 0;
            if (!v32)
            {
              goto LABEL_61;
            }

LABEL_59:
            if ((self->_otgxRetrieveAllClasses | v36))
            {
              v41 = [SCMLImageAnalyzer _decodeName:v30];
              [v49 setObject:v41 forKeyedSubscript:v32];
            }

            goto LABEL_61;
          }

          v39 = [v28 objectForKeyedSubscript:@"thresholds"];
          v40 = [v39 objectForKeyedSubscript:@"balanced"];

          if (v40)
          {
            [v50 setObject:v40 forKeyedSubscript:v32];
          }

          if (v32)
          {
            goto LABEL_59;
          }

LABEL_61:
        }

        v26 = [(NSDictionary *)v54 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v26);
    }

    v42 = [v49 copy];
    acceptedDetectionOutputIndices = self->_acceptedDetectionOutputIndices;
    self->_acceptedDetectionOutputIndices = v42;

    v44 = [v50 copy];
    detectionThresholdByOutputIndex = self->_detectionThresholdByOutputIndex;
    self->_detectionThresholdByOutputIndex = v44;

    v25 = v54;
  }

  else
  {
    v24 = self->_acceptedDetectionOutputIndices;
    self->_acceptedDetectionOutputIndices = 0;

    v25 = self->_detectionThresholdByOutputIndex;
    self->_detectionThresholdByOutputIndex = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSensitive:(id)a3 sensitivityScore:(id *)a4 classificationMode:(unint64_t)a5
{
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
  v9 = [SCMLImageAnalyzer _decodeName:@"60dc96fd80c33771139d6cf90639a776"];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = +[SCMLImageModelThresholds instance];
  v12 = +[SCMLHandler currentModelVersion];
  v19 = 0;
  [v11 thresholdForLabel:@"otgx_fyqmjdju" classificationMode:a5 modelVersion:v12 error:&v19];
  v14 = v13;
  v15 = v19;

  [v10 floatValue];
  LOBYTE(a5) = v14 <= v16;
  v17 = v10;
  *a4 = v10;

  return a5;
}

- (id)analyzeImage:(CGImage *)a3 error:(id *)a4
{
  v5 = [(SCMLImageAnalyzer *)self generateClassificationScoresForImage:a3 error:a4];
  if (v5)
  {
    v15 = &unk_1F37518E8;
    v6 = [(SCMLImageAnalyzer *)self isSensitive:v5 sensitivityScore:&v15];
    v7 = v15;
    v8 = [SCMLImageAnalysisResult alloc];
    v9 = [v5 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
    v10 = [(SCMLAnalysisResult *)v8 initWithSensitive:v6 sensitivityScore:v7 scoresForLabels:v9];

    if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
    {
      v11 = [SCMLImageDetectionResult alloc];
      v12 = [v5 objectForKeyedSubscript:SCMLHandlerImageDetections[0]];
      v13 = [(SCMLImageDetectionResult *)v11 initWithDetections:v12];
      [(SCMLImageAnalysisResult *)v10 setDetectionResult:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)classifyImage:(CGImage *)a3 error:(id *)a4
{
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(SCMLImageAnalyzer *)self generateClassificationScoresForImage:a3 error:a4];
  if (v8)
  {
    v14 = &unk_1F37518E8;
    v9 = [(SCMLImageAnalyzer *)self isSensitive:v8 sensitivityScore:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = &unk_1F3751900;
      [v7 setObject:&unk_1F3751900 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    else
    {
      v11 = &unk_1F3751918;
      [v7 setObject:&unk_1F3751918 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    [v7 setObject:v11 forKeyedSubscript:SCMLImageSensitivity[0]];
    [v7 setObject:v10 forKeyedSubscript:SCMLImageExplicitSensitivityScore[0]];
    [v7 setObject:v10 forKeyedSubscript:SCMLImageSensitivityScore[0]];
    v12 = [v7 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)scaleMethod
{
  v2 = [(SCMLModelBase *)self options];
  v3 = [v2 objectForKeyedSubscript:SCMLImageScaleMethod[0]];

  v4 = v3 == SCMLImageScaleMethodvImage[0] || v3 == 0;
  v5 = SCMLImageScaleMethodCGInterpolationMedium[0];
  if (!v4)
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)generateClassificationScoresForImage:(CGImage *)a3 error:(id *)a4
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = [(SCMLImageAnalyzer *)self scaleMethod];
  v8 = [(SCMLModelBase *)self perfResults];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke;
  v27[3] = &unk_1E7EB3A00;
  v9 = v7;
  v30 = &v32;
  v31 = a3;
  v28 = v9;
  v29 = self;
  [v8 run:@"Scale" block:v27];

  if (v33[3])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = MEMORY[0x1E695E0F8];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    v10 = [(SCMLModelBase *)self perfResults];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke_78;
    v14[3] = &unk_1E7EB3A28;
    v14[4] = self;
    v14[5] = &v32;
    v14[6] = &v15;
    v14[7] = &v21;
    [v10 run:@"Inference" block:v14];

    CFRelease(v33[3]);
    v11 = v16[5];
    if (v11)
    {
      v12 = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }

    else
    {
      v12 = v22[5];
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else if (a4)
  {
    scml::error(7u, "Failed to convert to pixel buffer", 33);
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v32, 8);

  return v12;
}

CVPixelBufferRef __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke(uint64_t a1)
{
  v3 = kCGInterpolationNone;
  interpolationForScaleMethod(*(a1 + 32), &v3);
  result = scaledPixelBuffer32BGRAFromCGImage(*(a1 + 56), *(*(a1 + 40) + 24), *(*(a1 + 40) + 32), v3);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

double __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke_78(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 24);
  v4 = *(a1[6] + 8);
  v7 = *(v4 + 40);
  v6 = (v4 + 40);
  v5 = v7;
  obj = v7;
  if (v2)
  {
    [v2 _computeOutputForPixelBuffer:v3 error:&obj];
    objc_storeStrong(v6, obj);
    if (*(*(a1[6] + 8) + 40))
    {
      return result;
    }

    goto LABEL_3;
  }

  result = 0.0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (!v5)
  {
LABEL_3:
    v9 = a1[4];
    v13[0] = v15;
    v13[1] = v16;
    v13[2] = v17;
    v13[3] = v18;
    v10 = [v9 _processNetworkOutput:v13];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return result;
}

- (id)analyzePixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v5 = [(SCMLImageAnalyzer *)self generateClassificationScoresForPixelBuffer:a3 error:a4];
  if (v5)
  {
    v15 = &unk_1F37518E8;
    v6 = [(SCMLImageAnalyzer *)self isSensitive:v5 sensitivityScore:&v15];
    v7 = v15;
    v8 = [SCMLImageAnalysisResult alloc];
    v9 = [v5 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
    v10 = [(SCMLAnalysisResult *)v8 initWithSensitive:v6 sensitivityScore:v7 scoresForLabels:v9];

    if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
    {
      v11 = [SCMLImageDetectionResult alloc];
      v12 = [v5 objectForKeyedSubscript:SCMLHandlerImageDetections[0]];
      v13 = [(SCMLImageDetectionResult *)v11 initWithDetections:v12];
      [(SCMLImageAnalysisResult *)v10 setDetectionResult:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)classifyPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(SCMLImageAnalyzer *)self generateClassificationScoresForPixelBuffer:a3 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
    v11 = [SCMLImageAnalyzer _decodeName:@"60dc96fd80c33771139d6cf90639a776"];
    v12 = [v10 objectForKeyedSubscript:v11];

    [v12 floatValue];
    v14 = v13;
    v15 = [(SCMLImageAnalyzer *)self otgxMainThreshold];
    [v15 floatValue];
    v17 = v16;

    if (v14 >= v17)
    {
      v18 = &unk_1F3751900;
      [v7 setObject:&unk_1F3751900 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    else
    {
      v18 = &unk_1F3751918;
      [v7 setObject:&unk_1F3751918 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    [v7 setObject:v18 forKeyedSubscript:SCMLImageSensitivity[0]];
    [v7 setObject:v12 forKeyedSubscript:SCMLImageExplicitSensitivityScore[0]];
    [v7 setObject:v12 forKeyedSubscript:SCMLImageSensitivityScore[0]];
    v19 = [v7 copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v7 = [(SCMLModelBase *)self perfResults];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke;
  v36[3] = &unk_1E7EB3A50;
  v36[5] = &v37;
  v36[6] = a3;
  v36[4] = self;
  [v7 run:@"Scale" block:v36];

  if (v38[3])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x7012000000;
    v25 = __Block_byref_object_copy__79;
    v26 = __Block_byref_object_dispose__80;
    v27 = "";
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v8 = [(SCMLModelBase *)self perfResults];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke_81;
    v15[3] = &unk_1E7EB3A78;
    v15[4] = self;
    v15[5] = &v22;
    v15[6] = &v37;
    v15[7] = &v16;
    [v8 run:@"Inference" block:v15];

    CVPixelBufferRelease(v38[3]);
    v9 = v17[5];
    if (v9)
    {
      v10 = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }

    else
    {
      v11 = *(v23 + 4);
      v14[0] = *(v23 + 3);
      v14[1] = v11;
      v12 = *(v23 + 6);
      v14[2] = *(v23 + 5);
      v14[3] = v12;
      v10 = [(SCMLImageAnalyzer *)self _processNetworkOutput:v14];
    }

    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:7 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v37, 8);

  return v10;
}

__CVBuffer *__70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke(uint64_t a1)
{
  result = scaleCVPixelBuffer(*(a1 + 48), (*(a1 + 32) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

double __70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke_81(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 24);
  v4 = *(a1[7] + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  obj = v6;
  if (v2)
  {
    [v2 _computeOutputForPixelBuffer:v3 error:&obj];
    objc_storeStrong(v5, obj);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  v7 = *(a1[5] + 8);
  result = *&v13;
  v9 = v14;
  v11 = v15;
  v10 = v16;
  v7[3] = v13;
  v7[4] = v9;
  v7[5] = v11;
  v7[6] = v10;
  return result;
}

- (NetworkOutputs)_computeOutputForPixelBuffer:(SEL)a3 error:(__CVBuffer *)a4
{
  p_encoderNet = &self->encoderNet;
  plan = self->encoderNet.plan;
  v9 = *&p_encoderNet->network_index;
  if (espresso_network_bind_cvpixelbuffer())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    encoderPlan = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v17);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = self->encoderPlan;
  if (espresso_plan_execute_sync())
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    v19 = self->encoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v18, v20);
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
  }

  result = [(SCMLImageAnalyzer *)self shouldProcessDetections];
  if (result)
  {
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
  }

  if (self->leafProbabilities.sequence_length != 1)
  {
    v13 = "buf->sequence_length == 1";
    v14 = 491;
    goto LABEL_18;
  }

  if (self->leafProbabilities.batch_number != 1)
  {
    v13 = "buf->batch_number == 1";
    v14 = 492;
    goto LABEL_18;
  }

  if (self->leafProbabilities.height != 1)
  {
    v13 = "buf->height == 1";
    v14 = 493;
    goto LABEL_18;
  }

  if (self->leafProbabilities.width != 1)
  {
    v13 = "buf->width == 1";
    v14 = 494;
LABEL_18:
    __assert_rtn("tensorViewC", "SCMLImageAnalyzer.mm", v14, v13);
  }

  channels = self->leafProbabilities.channels;
  retstr->var0.var0 = self->leafProbabilities.data;
  retstr->var0.var1.var0[0] = channels;
  *&retstr->var1.var0 = v23;
  retstr->var1.var1.var0[2] = v24;
  *&retstr->var2.var0 = v21;
  retstr->var2.var1.var0[2] = v22;
  return result;
}

- (vector<SCML::BoxInfo,)_processDetectionOutput:(SCMLImageAnalyzer *)self
{
  v6 = *a4->var1.var1.var0;
  v7 = a4->var1.var1.var0[2];
  var0 = a4->var1.var0;
  v14 = v6;
  v15 = v7;
  SCML::extractLocalPeaks(&var0, 3, __p);
  var0 = __p[0];
  v14 = v6;
  v15 = v7;
  v8 = *a4->var2.var1.var0;
  v9 = a4->var2.var1.var0[2];
  v11[0] = a4->var2.var0;
  v11[1] = v8;
  v12 = v9;
  SCML::topDetections(&var0, v11, 100, retstr);
  result = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

- (BOOL)shouldProcessDetections
{
  v2 = self;
  v3 = [(SCMLModelBase *)self options];
  v4 = [v3 objectForKeyedSubscript:SCMLEnableImageDetection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v2 = [v2 options];
    v6 = [v2 objectForKeyedSubscript:SCMLEnableImageDetection];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 BOOLValue];
  if (isKindOfClass)
  {
  }

  return v7;
}

- (id)_processNetworkOutput:(NetworkOutputs *)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v39 = [MEMORY[0x1E695DF90] dictionary];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [(SCMLImageAnalyzer *)self acceptedOutputIndices];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v7)
  {
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AD98];
        *&v12 = a3->var0.var0[[v10 intValue]];
        v13 = [v11 numberWithFloat:v12];
        v14 = [(SCMLImageAnalyzer *)self acceptedOutputIndices];
        v15 = [v14 objectForKeyedSubscript:v10];
        [v39 setObject:v13 forKeyedSubscript:v15];
      }

      v7 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v7);
  }

  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [v39 copy];
  [v38 setObject:v16 forKeyedSubscript:SCMLHandlerImageClassificationScores[0]];

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
    v17 = *&a3->var1.var0;
    v40[0] = a3->var0;
    v40[1] = v17;
    v18 = *a3->var2.var1.var0;
    v40[2] = *&a3->var1.var1.var0[2];
    v40[3] = v18;
    [(SCMLImageAnalyzer *)self _processDetectionOutput:v40];
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = __p;
    v21 = v42;
    if (__p != v42)
    {
      do
      {
        v22 = [(SCMLImageAnalyzer *)self acceptedDetectionOutputIndices];
        v23 = [MEMORY[0x1E696AD98] numberWithInt:*(v20 + 1)];
        v24 = [v22 objectForKeyedSubscript:v23];

        if (v24)
        {
          v25 = *v20;
          v26 = [(SCMLImageAnalyzer *)self detectionThresholdByOutputIndex];
          v27 = [MEMORY[0x1E696AD98] numberWithInt:*(v20 + 1)];
          v28 = [v26 objectForKeyedSubscript:v27];
          [v28 floatValue];
          v30 = v25 < v29;

          if (!v30)
          {
            v31 = +[SCMLImageLabelCoder instance];
            v32 = [v31 encodeToP1:v24];

            v33 = [SCMLDetectionBox alloc];
            *&v34 = *v20;
            v35 = [(SCMLDetectionBox *)v33 initWithScore:v32 label:v34 rect:*(v20 + 1), *(v20 + 2), *(v20 + 3), *(v20 + 4)];
            [v19 addObject:v35];
          }
        }

        v20 += 10;
      }

      while (v20 != v21);
    }

    [v38 setObject:v19 forKeyedSubscript:SCMLHandlerImageDetections[0]];

    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }
  }

  v36 = *MEMORY[0x1E69E9840];

  return v38;
}

+ (id)getOperatingPointDataForClassName:(id)a3 modelURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _readOperatingThresholdsDataUsingModelURL:v9 error:a5];
  v11 = v10;
  if (a5 && *a5)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v10 objectForKeyedSubscript:@"precision_recall_data"];
    v14 = [a1 _encodeName:v8];
    v12 = [v13 objectForKey:v14];
  }

  return v12;
}

- (void)loadNetworkForURL:(const std::runtime_error *)a1 espressoEngine:storageType:deviceId:.cold.1(const std::runtime_error *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::runtime_error::what(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_computeOutputForPixelBuffer:(const std::runtime_error *)a1 error:.cold.1(const std::runtime_error *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::runtime_error::what(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)getOperatingPointDataForClassName:(const std::runtime_error *)a1 modelURL:error:.cold.1(const std::runtime_error *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::runtime_error::what(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end