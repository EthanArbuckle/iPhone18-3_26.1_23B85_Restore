@interface SIBaseNetworkE5RT
- (BOOL)IsPrewiringEnabled;
- (BOOL)IsSurfacePrewiredForCurrentFunctionForBlob:(id)a3 surfaceID:(unint64_t)a4;
- (BOOL)outputExists:(id)a3;
- (SIBaseNetworkE5RT)initWithNetName:(id)a3;
- (SIBaseNetworkE5RT)initWithNetPath:(id)a3;
- (SIBaseNetworkE5RT)initWithNetworkConfiguration:(id)a3;
- (__n128)getOutputShape:(void *)a3;
- (id).cxx_construct;
- (id)getOutputSurface:(id)a3;
- (int)_loadPrecompiledModel:(id)a3 operation:(e5rt_execution_stream_operation *)a4;
- (int64_t)_loadModel:(id)a3 operation:(e5rt_execution_stream_operation *)a4;
- (int64_t)_setupMetaDataFromLibrary;
- (int64_t)addPrewiringBuffersToStreamForFunctionName:(id)a3 inputPools:(id)a4 outputPools:(id)a5 clearWiredBuffer:(BOOL)a6;
- (int64_t)reset;
- (int64_t)runNetwork;
- (int64_t)runNetwork:(void *)a3;
- (int64_t)selectComputeOperationByFunctionName:(id)a3;
- (int64_t)setInput:(id)a3 fromCVPixelBuffer:(__CVBuffer *)a4;
- (int64_t)setInput:(id)a3 fromRawPointer:(const void *)a4;
- (int64_t)setInput:(id)a3 fromSurface:(id)a4;
- (int64_t)setOutputBlob:(id)a3 forOutputSurface:(id)a4;
- (int64_t)unwirePrewiringBuffers;
- (int64_t)unwirePrewiringBuffersForFunctionName:(id)a3;
- (unint64_t)getInputBatchNum:(id)a3;
- (unint64_t)getInputChannels:(id)a3;
- (unint64_t)getInputHeight:(id)a3;
- (unint64_t)getInputLength:(id)a3;
- (unint64_t)getInputSizeInBytes:(id)a3;
- (unint64_t)getInputWidth:(id)a3;
- (unint64_t)getOutputBatchNum:(id)a3;
- (unint64_t)getOutputBytePerRow:(id)a3;
- (unint64_t)getOutputChannels:(id)a3;
- (unint64_t)getOutputComponentSize:(id)a3;
- (unint64_t)getOutputHeight:(id)a3;
- (unint64_t)getOutputLength:(id)a3;
- (unint64_t)getOutputRowElements:(id)a3;
- (unint64_t)getOutputSizeInBytes:(id)a3;
- (unint64_t)getOutputWidth:(id)a3;
- (void)dealloc;
- (void)getInputPtr:(id)a3;
- (void)getRawOutput:(id)a3;
@end

@implementation SIBaseNetworkE5RT

- (int64_t)_setupMetaDataFromLibrary
{
  v35 = *MEMORY[0x277D85DE8];
  [(NSString *)self->_e5Path UTF8String];
  if (e5rt_program_library_create())
  {
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 92);
      *buf = 136381187;
      v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v31 = 1025;
      v32 = 92;
      v33 = 2113;
      v34 = v4;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v5 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    e5Path = self->_e5Path;
    *buf = 136381187;
    v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v31 = 1025;
    v32 = 92;
    v33 = 2113;
    v34 = e5Path;
    v7 = " %{private}s:%{private}d *** Failed to create e5rt program library with e5Path=%{private}@ ***";
LABEL_24:
    _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x1Cu);
LABEL_25:

    v21 = 7;
    goto LABEL_26;
  }

  v8 = [(SINetworkConfiguration *)self->_configuration networkFunction];
  v9 = v8;
  [v8 UTF8String];
  v10 = e5rt_program_library_get_function_metadata() == 0;

  if (!v10)
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 95);
      *buf = 136381187;
      v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v31 = 1025;
      v32 = 95;
      v33 = 2113;
      v34 = v12;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v5 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v13 = self->_e5Path;
    *buf = 136381187;
    v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v31 = 1025;
    v32 = 95;
    v33 = 2113;
    v34 = v13;
    v7 = " %{private}s:%{private}d *** Failed to get e5rt main function metadata with e5Path=%{private}@ ***";
    goto LABEL_24;
  }

  v14 = CFDictionaryGetValue(0, @"UserVersion");
  networkVersion = self->_networkVersion;
  self->_networkVersion = v14;

  CFRelease(@"UserVersion");
  Value = CFDictionaryGetValue(0, @"Ops");
  v17 = CFRetain(Value);
  opsForLibrary = self->_opsForLibrary;
  self->_opsForLibrary = v17;

  v19 = [(NSArray *)self->_opsForLibrary objectAtIndexedSubscript:0];
  v20 = [v19 objectForKeyedSubscript:@"ComputeBackend"];

  if ([v20 isEqualToString:@"ANE"])
  {
    v21 = 0;
    v22 = 1;
LABEL_15:
    self->_bundleBackend = v22;
    goto LABEL_19;
  }

  if ([v20 isEqualToString:@"CPU"])
  {
    v21 = 0;
    v22 = 2;
    goto LABEL_15;
  }

  v23 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136381187;
    v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v31 = 1025;
    v32 = 112;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_21DE0D000, v23, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported Backend: %@ ***", buf, 0x1Cu);
  }

  v21 = 4;
LABEL_19:

  if (e5rt_program_library_release())
  {
    v24 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 124);
      *buf = 136381187;
      v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v31 = 1025;
      v32 = 124;
      v33 = 2113;
      v34 = v25;
      _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v5 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v26 = self->_e5Path;
    *buf = 136381187;
    v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v31 = 1025;
    v32 = 124;
    v33 = 2113;
    v34 = v26;
    v7 = " %{private}s:%{private}d *** Failed to get e5rt main function metadata with e5Path=%{private}@ ***";
    goto LABEL_24;
  }

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (SIBaseNetworkE5RT)initWithNetName:(id)a3
{
  v4 = objc_alloc_init(SINetworkConfiguration);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [(SINetworkConfiguration *)v4 networkName];
  v7 = SIMLE5RTBundlePath(v5, v6);
  [(SINetworkConfiguration *)v4 setNetworkPath:v7];

  v8 = [(SIBaseNetworkE5RT *)self initWithNetworkConfiguration:v4];
  return v8;
}

- (SIBaseNetworkE5RT)initWithNetPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SINetworkConfiguration);
  [(SINetworkConfiguration *)v5 setNetworkPath:v4];
  v6 = [(SIBaseNetworkE5RT *)self initWithNetworkConfiguration:v5];

  return v6;
}

- (SIBaseNetworkE5RT)initWithNetworkConfiguration:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35.receiver = self;
  v35.super_class = SIBaseNetworkE5RT;
  v6 = [(SIBaseNetworkE5RT *)&v35 init];
  if (v6)
  {
    v7 = [v5 networkPath];
    v8 = v7 == 0;

    if (v8)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v5 networkName];
      v13 = [v5 networkNameExtraPostfix];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = [v5 networkNameExtraPostfix];
        v17 = [v15 stringWithFormat:@"%@_%@", v12, v16];

        v12 = v17;
      }

      v9 = SIMLE5RTBundlePath(v11, v12);
    }

    else
    {
      v9 = [v5 networkPath];
    }

    objc_storeStrong(&v6->_configuration, a3);
    v18 = [(SINetworkConfiguration *)v6->_configuration networkName];
    networkName = v6->_networkName;
    v6->_networkName = v18;

    objc_storeStrong(&v6->_e5Path, v9);
    v6->_isModelCompiledInRuntime = 0;
    if (e5rt_execution_stream_create())
    {
      v20 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 174);
        *buf = 136381187;
        v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v38 = 1025;
        v39 = 174;
        v40 = 2113;
        v41 = v21;
        _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v22 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        configuration = v6->_configuration;
        *buf = 136381187;
        v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v38 = 1025;
        v39 = 174;
        v40 = 2113;
        v41 = configuration;
        _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to init the model with networkConfiguration: %{private}@ ***", buf, 0x1Cu);
      }
    }

    else
    {
      if (!e5rt_execution_stream_create())
      {
        v27 = objc_alloc_init(SIIOSurfaceAllocator);
        surfaceAllocator = v6->_surfaceAllocator;
        v6->_surfaceAllocator = v27;

        v6->_aneService = 0;
        if ([(SIBaseNetworkE5RT *)v6 _setupMetaDataFromLibrary])
        {
          v29 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = v6->_networkName;
            *buf = 136381187;
            v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
            v38 = 1025;
            v39 = 198;
            v40 = 2112;
            v41 = v30;
            _os_log_impl(&dword_21DE0D000, v29, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] Failed to get metadata for E5 Bundle (%@) ***", buf, 0x1Cu);
          }
        }

        v31 = [v5 networkMode];
        v32 = [(SIBaseNetworkE5RT *)v6 selectComputeOperationByFunctionName:v31]== 0;

        if (v32)
        {
          v10 = v6;
          goto LABEL_26;
        }

LABEL_25:
        v10 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v24 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 176);
        *buf = 136381187;
        v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v38 = 1025;
        v39 = 176;
        v40 = 2113;
        v41 = v25;
        _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v22 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = v6->_configuration;
        *buf = 136381187;
        v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v38 = 1025;
        v39 = 176;
        v40 = 2113;
        v41 = v26;
        _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to init the model with networkConfiguration: %{private}@ ***", buf, 0x1Cu);
      }
    }

    goto LABEL_25;
  }

  v10 = 0;
LABEL_27:

  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int)_loadPrecompiledModel:(id)a3 operation:(e5rt_execution_stream_operation *)a4
{
  v5 = a3;
  v6 = v5;
  if (self->_aneService)
  {
    __assert_rtn("[SIBaseNetworkE5RT _loadPrecompiledModel:operation:]", "SIBaseNetworkE5RT.mm", 245, "!_aneService");
  }

  [v5 UTF8String];
  [(NSString *)self->_e5Path UTF8String];
  [v6 UTF8String];
  precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

  return precompiled_compute_operation;
}

- (int64_t)_loadModel:(id)a3 operation:(e5rt_execution_stream_operation *)a4
{
  if ([(SIBaseNetworkE5RT *)self _loadPrecompiledModel:a3 operation:a4])
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

- (int64_t)selectComputeOperationByFunctionName:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(__CFString *)v4 isEqualToString:&stru_282F2BE40])
  {
    v5 = @"main";
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = v6;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v6, "UTF8String"));
  v8 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_e5rt_loaded_operations.__table_.__bucket_list_.__ptr_, __p);
  v9 = v8;
  if (SBYTE3(v53) < 0)
  {
    operator delete(*__p);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  v48 = 0;
  if ([(SIBaseNetworkE5RT *)self _loadModel:v7 operation:&v48])
  {
    v16 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      e5Path = self->_e5Path;
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v50 = 1025;
      v51 = 288;
      v52 = 2113;
      v53 = v7;
      v54 = 2113;
      v55 = e5Path;
      _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create compute operation for function name: %{private}@, e5Path: %{private}@ ***", __p, 0x26u);
    }

    goto LABEL_34;
  }

  v46 = 0;
  v47 = 0;
  if (e5rt_execution_stream_operation_get_num_inputs())
  {
    v18 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 294);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v50 = 1025;
      v51 = 294;
      v52 = 2113;
      v53 = v19;
      _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v16 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v20 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v50 = 1025;
    v51 = 294;
    v52 = 2113;
    v53 = v7;
    v54 = 2113;
    v55 = v20;
    v21 = " %{private}s:%{private}d *** Failed to get #inputs for function name: %{private}@, e5Path: %{private}@ ***";
    goto LABEL_33;
  }

  if (e5rt_execution_stream_operation_get_num_outputs())
  {
    v22 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 297);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v50 = 1025;
      v51 = 297;
      v52 = 2113;
      v53 = v23;
      _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v16 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v24 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v50 = 1025;
    v51 = 297;
    v52 = 2113;
    v53 = v7;
    v54 = 2113;
    v55 = v24;
    v21 = " %{private}s:%{private}d *** Failed to get #outputs for function name: %{private}@, e5Path: %{private}@ ***";
LABEL_33:
    _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, v21, __p, 0x26u);
LABEL_34:

LABEL_35:
    v15 = 7;
    goto LABEL_36;
  }

  v44 = 0;
  v45 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (e5rt_execution_stream_operation_get_input_names())
  {
    v27 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 308);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v50 = 1025;
      v51 = 308;
      v52 = 2113;
      v53 = v28;
      _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v29 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v30 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v50 = 1025;
    v51 = 308;
    v52 = 2113;
    v53 = v7;
    v54 = 2113;
    v55 = v30;
    v31 = " %{private}s:%{private}d *** Failed to get input blob names for function name: %{private}@, e5Path: %{private}@ ***";
LABEL_47:
    _os_log_impl(&dword_21DE0D000, v29, OS_LOG_TYPE_ERROR, v31, __p, 0x26u);
LABEL_48:

    goto LABEL_35;
  }

  if (e5rt_execution_stream_operation_get_output_names())
  {
    v32 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 311);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v50 = 1025;
      v51 = 311;
      v52 = 2113;
      v53 = v33;
      _os_log_impl(&dword_21DE0D000, v32, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v29 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v34 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v50 = 1025;
    v51 = 311;
    v52 = 2113;
    v53 = v7;
    v54 = 2113;
    v55 = v34;
    v31 = " %{private}s:%{private}d *** Failed to get output blob names for function name: %{private}@, e5Path: %{private}@ ***";
    goto LABEL_47;
  }

  objc_storeStrong(&self->_networkInputNames, obj);
  objc_storeStrong(&self->_networkOutputNames, v37);
  v35 = v48;
  v36 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v39 = __p;
  std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_e5rt_loaded_operations.__table_.__bucket_list_.__ptr_, __p)[5] = v35;
  if (SBYTE3(v53) < 0)
  {
    operator delete(*__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

LABEL_8:
  v10 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v43 = __p;
  self->_enabled_e5rt_operation = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_e5rt_loaded_operations.__table_.__bucket_list_.__ptr_, __p)[5];
  if (SBYTE3(v53) < 0)
  {
    operator delete(*__p);
  }

  objc_storeStrong(&self->_enabled_e5rt_function_name, v5);
  v11 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v43 = __p;
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputsForOperations.__table_.__bucket_list_.__ptr_, __p);
  if (&self->_inputs != (v12 + 5))
  {
    self->_inputs.__table_.__max_load_factor_ = *(v12 + 18);
    std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *> *>>(&self->_inputs.__table_.__bucket_list_.__ptr_, v12[7], 0);
  }

  if (SBYTE3(v53) < 0)
  {
    operator delete(*__p);
  }

  v13 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v43 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputsForOperations.__table_.__bucket_list_.__ptr_, __p);
  if (&self->_outputs != (v14 + 5))
  {
    self->_outputs.__table_.__max_load_factor_ = *(v14 + 18);
    std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *> *>>(&self->_outputs.__table_.__bucket_list_.__ptr_, v14[7], 0);
  }

  if (SBYTE3(v53) < 0)
  {
    operator delete(*__p);
  }

  v15 = 0;
LABEL_36:

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  [(SIBaseNetworkE5RT *)self reset];
  opsForLibrary = self->_opsForLibrary;
  if (opsForLibrary)
  {
    CFRelease(opsForLibrary);
  }

  v4.receiver = self;
  v4.super_class = SIBaseNetworkE5RT;
  [(SIBaseNetworkE5RT *)&v4 dealloc];
}

- (int64_t)reset
{
  v23 = *MEMORY[0x277D85DE8];
  [(SIBaseNetworkE5RT *)self unwirePrewiringBuffers];
  p_first_node = &self->_e5rt_loaded_operations.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    if (e5rt_execution_stream_operation_release())
    {
      v4 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 361);
        v17 = 136381187;
        v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v19 = 1025;
        v20 = 361;
        v21 = 2113;
        v22 = v5;
        _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
      }

      v6 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = p_first_node + 2;
        if (SHIBYTE(p_first_node[4].__next_) < 0)
        {
          v7 = v7->__next_;
        }

        v17 = 136381187;
        v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v19 = 1025;
        v20 = 361;
        v21 = 2081;
        v22 = v7;
        v8 = " %{private}s:%{private}d *** Failed to release loaded operation: %{private}s ***";
        v9 = v6;
        v10 = 28;
LABEL_23:
        _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, v8, &v17, v10);
      }

LABEL_24:

      result = 7;
      goto LABEL_25;
    }
  }

  if (self->_stream && e5rt_execution_stream_release())
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 366);
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 366;
      v21 = 2113;
      v22 = v12;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
    }

    v6 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 366;
    v8 = " %{private}s:%{private}d *** Failed to release E5RT inference stream ***";
LABEL_22:
    v9 = v6;
    v10 = 18;
    goto LABEL_23;
  }

  if (self->_initPrewiringStream && e5rt_execution_stream_release())
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 372);
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 372;
      v21 = 2113;
      v22 = v14;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
    }

    v6 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 372;
    v8 = " %{private}s:%{private}d *** Failed to release E5RT ANEP stream ***";
    goto LABEL_22;
  }

  result = 0;
LABEL_25:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)setInput:(id)a3 fromCVPixelBuffer:(__CVBuffer *)a4
{
  v6 = a3;
  v7 = [[SIIOSurface alloc] initFromPixelBuffer:a4];
  v8 = [(SIBaseNetworkE5RT *)self setInput:v6 fromSurface:v7];

  return v8;
}

- (int64_t)setInput:(id)a3 fromSurface:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (-[SIBaseNetworkE5RT IsPrewiringEnabled](self, "IsPrewiringEnabled") && !-[SIBaseNetworkE5RT IsSurfacePrewiredForCurrentFunctionForBlob:surfaceID:](self, "IsSurfacePrewiredForCurrentFunctionForBlob:surfaceID:", v6, [v7 identifier]))
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v14 = 1025;
      v15 = 385;
      v16 = 2048;
      v17 = [v7 identifier];
      v18 = 2113;
      v19 = v6;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Trying to bind the buffer (id= %lld) for blob (%{private}@) that was not ANEP ready ***", __p, 0x26u);
    }

    v9 = 3;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [v6 UTF8String]);
    v8 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
    if (!v8)
    {
      abort();
    }

    if (SBYTE3(v17) < 0)
    {
      operator delete(*__p);
    }

    v9 = [v8[5] bindSurface:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)setInput:(id)a3 fromRawPointer:(const void *)a4
{
  v6 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v6 UTF8String]);
  v12 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = [v7[5] bindRawPointer:a4];

  return v8;
}

- (void)getInputPtr:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getDataPtr];

  return v6;
}

- (unint64_t)getInputWidth:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getWidth];

  return v6;
}

- (unint64_t)getInputHeight:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getHeight];

  return v6;
}

- (unint64_t)getInputChannels:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getChannels];

  return v6;
}

- (unint64_t)getInputBatchNum:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getBatchnum];

  return v6;
}

- (unint64_t)getInputLength:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getNumberOfElements];

  return v6;
}

- (unint64_t)getInputSizeInBytes:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getSizeInBytes];

  return v6;
}

- (int64_t)setOutputBlob:(id)a3 forOutputSurface:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  if ([(SIBaseNetworkE5RT *)self IsPrewiringEnabled]&& ![(SIBaseNetworkE5RT *)self IsSurfacePrewiredForCurrentFunctionForBlob:v6 surfaceID:v8])
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v15 = 1025;
      v16 = 444;
      v17 = 2048;
      v18 = v8;
      v19 = 2113;
      v20 = v6;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Trying to bind the buffer (id= %lld) for blob (%{private}@) that was not ANEP ready ***", __p, 0x26u);
    }

    v10 = 3;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [v6 UTF8String]);
    v9 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
    if (!v9)
    {
      abort();
    }

    if (SBYTE3(v18) < 0)
    {
      operator delete(*__p);
    }

    v10 = [v9[5] bindSurface:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)getRawOutput:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getDataPtr];

  return v6;
}

- (id)getOutputSurface:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getSurface];

  return v6;
}

- (__n128)getOutputShape:(void *)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v13 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 256), __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getShape];
  v7 = vuzp1q_s32(*v6, v6[1]);
  v8 = vrev64q_s32(v7);
  v8.i64[0] = v7.i64[0];
  v10 = v8;

  return v10;
}

- (unint64_t)getOutputWidth:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getWidth];

  return v6;
}

- (unint64_t)getOutputHeight:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getHeight];

  return v6;
}

- (unint64_t)getOutputChannels:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getChannels];

  return v6;
}

- (unint64_t)getOutputBatchNum:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getBatchnum];

  return v6;
}

- (unint64_t)getOutputLength:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getNumberOfElements];

  return v6;
}

- (unint64_t)getOutputSizeInBytes:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getSizeInBytes];

  return v6;
}

- (unint64_t)getOutputRowElements:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getRowElements];

  return v6;
}

- (unint64_t)getOutputBytePerRow:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getBytePerRow];

  return v6;
}

- (unint64_t)getOutputComponentSize:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = [v5[5] getComponentSize];

  return v6;
}

- (BOOL)outputExists:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::find<std::string>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5 != 0;
}

- (int64_t)runNetwork
{
  v23 = *MEMORY[0x277D85DE8];
  stream = self->_stream;
  enabled_e5rt_operation = self->_enabled_e5rt_operation;
  if (e5rt_execution_stream_encode_operation())
  {
    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 548);
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 548;
      v21 = 2113;
      v22 = v6;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
    }

    v7 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 548;
    v8 = " %{private}s:%{private}d *** Failed to encode E5RT operation into execution stream. ***";
    goto LABEL_16;
  }

  v9 = self->_stream;
  if (e5rt_execution_stream_execute_sync())
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 551);
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 551;
      v21 = 2113;
      v22 = v11;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
    }

    v7 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 551;
    v8 = " %{private}s:%{private}d *** Failed to run execution stream. ***";
    goto LABEL_16;
  }

  v12 = self->_stream;
  if (!e5rt_execution_stream_reset())
  {
    result = 0;
    goto LABEL_18;
  }

  v13 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 554);
    v17 = 136381187;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 554;
    v21 = 2113;
    v22 = v14;
    _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
  }

  v7 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 554;
    v8 = " %{private}s:%{private}d *** Failed to reset execution stream. ***";
LABEL_16:
    _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, v8, &v17, 0x12u);
  }

LABEL_17:

  result = 7;
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)runNetwork:(void *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  stream = self->_stream;
  enabled_e5rt_operation = self->_enabled_e5rt_operation;
  if (e5rt_execution_stream_encode_operation())
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 563);
      v22 = 136381187;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v24 = 1025;
      v25 = 563;
      v26 = 2113;
      v27 = v8;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v22, 0x1Cu);
    }

    v9 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v22 = 136380931;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v24 = 1025;
    v25 = 563;
    v10 = " %{private}s:%{private}d *** Failed to encode E5RT operation into execution stream. ***";
    goto LABEL_6;
  }

  v13 = self->_stream;
  if (a3)
  {
    if (ps_e5rt_execution_stream_execute_sync())
    {
      v14 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 571);
        v22 = 136381187;
        v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v24 = 1025;
        v25 = 571;
        v26 = 2113;
        v27 = v15;
        _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v22, 0x1Cu);
      }

      v9 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v22 = 136380931;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v24 = 1025;
      v25 = 571;
      v10 = " %{private}s:%{private}d *** Failed to run execution stream with polaris handle. ***";
      goto LABEL_6;
    }
  }

  else
  {
    v16 = self->_stream;
    if (e5rt_execution_stream_execute_sync())
    {
      v17 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 567);
        v22 = 136381187;
        v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v24 = 1025;
        v25 = 567;
        v26 = 2113;
        v27 = v18;
        _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v22, 0x1Cu);
      }

      v9 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v22 = 136380931;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v24 = 1025;
      v25 = 567;
      v10 = " %{private}s:%{private}d *** Failed to run execution stream. ***";
      goto LABEL_6;
    }
  }

  v19 = self->_stream;
  if (!e5rt_execution_stream_reset())
  {
    result = 0;
    goto LABEL_8;
  }

  v20 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 575);
    v22 = 136381187;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v24 = 1025;
    v25 = 575;
    v26 = 2113;
    v27 = v21;
    _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v22, 0x1Cu);
  }

  v9 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v22 = 136380931;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v24 = 1025;
    v25 = 575;
    v10 = " %{private}s:%{private}d *** Failed to reset execution stream. ***";
LABEL_6:
    _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, v10, &v22, 0x12u);
  }

LABEL_7:

  result = 7;
LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)addPrewiringBuffersToStreamForFunctionName:(id)a3 inputPools:(id)a4 outputPools:(id)a5 clearWiredBuffer:(BOOL)a6
{
  v6 = a6;
  v139 = *MEMORY[0x277D85DE8];
  v97 = a3;
  v10 = a4;
  v94 = a5;
  if (v6)
  {
    [(SIBaseNetworkE5RT *)self unwirePrewiringBuffersForFunctionName:v97];
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v10;
  v11 = 0;
  v12 = [obj countByEnumeratingWithState:&v116 objects:v138 count:16];
  if (v12)
  {
    v13 = *v117;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v117 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v116 + 1) + 8 * i);
        v16 = [obj objectForKeyedSubscript:v15];
        v17 = [v16 count];
        if (v11 <= v17)
        {
          v11 = v17;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v116 objects:v138 count:16];
    }

    while (v12);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v101 = v94;
  v18 = [v101 countByEnumeratingWithState:&v112 objects:v137 count:16];
  if (v18)
  {
    v19 = *v113;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v113 != v19)
        {
          objc_enumerationMutation(v101);
        }

        v21 = *(*(&v112 + 1) + 8 * j);
        v22 = [v101 objectForKeyedSubscript:v21];
        v23 = [v22 count];
        if (v11 <= v23)
        {
          v11 = v23;
        }
      }

      v18 = [v101 countByEnumeratingWithState:&v112 objects:v137 count:16];
    }

    while (v18);
  }

  v24 = v97;
  std::string::basic_string[abi:nn200100]<0>(__p, [v97 UTF8String]);
  *buf = __p;
  v25 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p);
  if (SBYTE3(v131) < 0)
  {
    operator delete(*__p);
    if (!v11)
    {
      goto LABEL_78;
    }

    goto LABEL_25;
  }

  if (v11)
  {
LABEL_25:
    v26 = 0;
    v95 = 7;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v111 = 0;
      [(NSString *)self->_e5Path UTF8String];
      [(NSString *)self->_e5Path UTF8String];
      v27 = v97;
      [v97 UTF8String];
      if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
      {
        break;
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v98 = self->_networkInputNames;
      v35 = [(NSArray *)v98 countByEnumeratingWithState:&v107 objects:v136 count:16];
      if (v35)
      {
        v36 = *v108;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v108 != v36)
            {
              objc_enumerationMutation(v98);
            }

            v38 = *(*(&v107 + 1) + 8 * k);
            v39 = [obj objectForKeyedSubscript:v38];
            v40 = [v39 count];

            v41 = [obj objectForKeyedSubscript:v38];
            v42 = [v41 objectAtIndexedSubscript:v26 % v40];

            v43 = [SIE5RTPort alloc];
            v106 = [(SIE5RTPort *)v43 initPortWithE5RTStreamOperation:v111 blobName:v38 portType:0 operationBackend:self->_bundleBackend surfaceAllocator:self->_surfaceAllocator];
            [v106 bindSurface:v42];
            std::vector<SIE5RTPort * {__strong}>::push_back[abi:nn200100](v25 + 13, &v106);
            v44 = v38;
            std::string::basic_string[abi:nn200100]<0>(__p, [v38 UTF8String]);
            *buf = __p;
            v45 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v25 + 8, __p);
            *buf = [v42 identifier];
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v45 + 5, buf);
            if (SBYTE3(v131) < 0)
            {
              operator delete(*__p);
            }
          }

          v35 = [(NSArray *)v98 countByEnumeratingWithState:&v107 objects:v136 count:16];
        }

        while (v35);
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v99 = self->_networkOutputNames;
      v46 = [(NSArray *)v99 countByEnumeratingWithState:&v102 objects:v135 count:16];
      if (v46)
      {
        v47 = *v103;
        do
        {
          for (m = 0; m != v46; ++m)
          {
            if (*v103 != v47)
            {
              objc_enumerationMutation(v99);
            }

            v49 = *(*(&v102 + 1) + 8 * m);
            v50 = [v101 objectForKey:v49];
            v51 = v50 == 0;

            if (v51)
            {
              v56 = v49;
              std::string::basic_string[abi:nn200100]<0>(__p, [v49 UTF8String]);
              *buf = __p;
              v55 = [std::__hash_table<std::__hash_value_type<std::string SIE5RTPort * {:std::__unordered_map_hasher<std::string :{std::__hash_value_type<std::string, SIE5RTPort * {__strong}>, std::hash<std::string>, std::equal_to<std::string>, true>, std::__unordered_map_equal<std::string, std::__hash_value_type<std::string, SIE5RTPort * {__strong}>, std::equal_to<std::string>, std::hash<std::string>, true>, std::allocator<std::__hash_value_type<std::string, SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string&&>, std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p)[5], "getSurface"}strong}>];
              if (SBYTE3(v131) < 0)
              {
                operator delete(*__p);
              }
            }

            else
            {
              v52 = [v101 objectForKeyedSubscript:v49];
              v53 = [v52 count];

              v54 = [v101 objectForKeyedSubscript:v49];
              v55 = [v54 objectAtIndexedSubscript:v26 % v53];
            }

            v57 = [SIE5RTPort alloc];
            v106 = [(SIE5RTPort *)v57 initPortWithE5RTStreamOperation:v111 blobName:v49 portType:1 operationBackend:self->_bundleBackend surfaceAllocator:self->_surfaceAllocator];
            [v106 bindSurface:v55];
            std::vector<SIE5RTPort * {__strong}>::push_back[abi:nn200100](v25 + 13, &v106);
            v58 = v49;
            std::string::basic_string[abi:nn200100]<0>(__p, [v49 UTF8String]);
            *buf = __p;
            v59 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v25 + 8, __p);
            *buf = [v55 identifier];
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v59 + 5, buf);
            if (SBYTE3(v131) < 0)
            {
              operator delete(*__p);
            }
          }

          v46 = [(NSArray *)v99 countByEnumeratingWithState:&v102 objects:v135 count:16];
        }

        while (v46);
      }

      v61 = v25[6];
      v60 = v25[7];
      if (v61 >= v60)
      {
        v63 = v25[5];
        v64 = (v61 - v63) >> 3;
        if ((v64 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v65 = v60 - v63;
        v66 = v65 >> 2;
        if (v65 >> 2 <= (v64 + 1))
        {
          v66 = v64 + 1;
        }

        if (v65 >= 0x7FFFFFFFFFFFFFF8)
        {
          v67 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v67 = v66;
        }

        if (v67)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<e5rt_execution_stream_operation *>>((v25 + 5), v67);
        }

        *(8 * v64) = v111;
        v62 = 8 * v64 + 8;
        v68 = v25[5];
        v69 = v25[6] - v68;
        v70 = (8 * v64 - v69);
        memcpy(v70, v68, v69);
        v71 = v25[5];
        v25[5] = v70;
        v25[6] = v62;
        v25[7] = 0;
        if (v71)
        {
          operator delete(v71);
        }
      }

      else
      {
        *v61 = v111;
        v62 = (v61 + 8);
      }

      v25[6] = v62;
      initPrewiringStream = self->_initPrewiringStream;
      if (!e5rt_execution_stream_encode_operation())
      {
        v76 = 1;
        goto LABEL_74;
      }

      v73 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 683);
        *__p = 136381187;
        *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v128 = 1025;
        v129 = 683;
        v130 = 2113;
        v131 = v74;
        _os_log_impl(&dword_21DE0D000, v73, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
      }

      v30 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v75 = "YES";
        if (!self->_initPrewiringStream)
        {
          v75 = "NO";
        }

        *__p = 136381187;
        *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v128 = 1025;
        v129 = 683;
        v130 = 2081;
        v131 = v75;
        v32 = v30;
        v33 = " %{private}s:%{private}d *** Failed to encode operation into execution stream for ANEP. Has ANEP Stream init: %{private}s ***";
        v34 = 28;
LABEL_72:
        _os_log_impl(&dword_21DE0D000, v32, OS_LOG_TYPE_ERROR, v33, __p, v34);
      }

LABEL_73:

      v76 = 0;
LABEL_74:
      objc_autoreleasePoolPop(context);
      if ((v76 & 1) == 0)
      {
        goto LABEL_100;
      }

      if (++v26 == v11)
      {
        goto LABEL_78;
      }
    }

    v28 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 647);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v128 = 1025;
      v129 = 647;
      v130 = 2113;
      v131 = v29;
      _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v30 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    e5Path = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v128 = 1025;
    v129 = 647;
    v130 = 2113;
    v131 = v97;
    v132 = 2113;
    v133 = e5Path;
    v32 = v30;
    v33 = " %{private}s:%{private}d *** Failed to create compute operation for function name: %{private}@, e5Path: %{private}@ ***";
    v34 = 38;
    goto LABEL_72;
  }

LABEL_78:
  v77 = self->_initPrewiringStream;
  if (e5rt_execution_stream_prewire_in_use_allocations())
  {
    v78 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 688);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v128 = 1025;
      v129 = 688;
      v130 = 2113;
      v131 = v79;
      _os_log_impl(&dword_21DE0D000, v78, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v80 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v81 = "YES";
      v82 = self->_initPrewiringStream;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      *__p = 136381187;
      if (!v82)
      {
        v81 = "NO";
      }

      v128 = 1025;
      v129 = 688;
      v130 = 2081;
      v131 = v81;
      _os_log_impl(&dword_21DE0D000, v80, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to prewire collected buffers. Has ANEP Stream init: %{private}s ***", __p, 0x1Cu);
    }

    v95 = 7;
  }

  else
  {
    v83 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      networkName = self->_networkName;
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v128 = 1025;
      v129 = 691;
      v130 = 2113;
      v131 = networkName;
      v132 = 2113;
      v133 = v97;
      _os_log_impl(&dword_21DE0D000, v83, OS_LOG_TYPE_DEBUG, " %{private}s:%{private}d *** ANEP info for %{private}@, function:%{private}@ ***", __p, 0x26u);
    }

    for (n = v25[10]; n; n = *n)
    {
      std::pair<std::string const,std::unordered_set<unsigned long long>>::pair[abi:nn200100](__p, n + 1);
      v86 = objc_alloc(MEMORY[0x277CCACA8]);
      if (SBYTE3(v131) >= 0)
      {
        v87 = __p;
      }

      else
      {
        v87 = *__p;
      }

      v88 = [v86 initWithUTF8String:v87];
      for (ii = v134; ii; ii = *ii)
      {
        v90 = ii[2];
        v91 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136381443;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
          v121 = 1025;
          v122 = 695;
          v123 = 2113;
          v124 = v88;
          v125 = 2048;
          v126 = v90;
          _os_log_impl(&dword_21DE0D000, v91, OS_LOG_TYPE_DEBUG, " %{private}s:%{private}d *** %{private}@ - %lld ***", buf, 0x26u);
        }
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v131 + 4);
      if (SBYTE3(v131) < 0)
      {
        operator delete(*__p);
      }
    }

    v95 = 0;
  }

LABEL_100:

  v92 = *MEMORY[0x277D85DE8];
  return v95;
}

- (int64_t)unwirePrewiringBuffersForFunctionName:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p);
  if (SBYTE3(v22) < 0)
  {
    operator delete(*__p);
  }

  v6 = v5[5];
  v7 = v5[6];
  if (v6 == v7)
  {
LABEL_7:
    v5[6] = v6;
    v8 = v5[13];
    for (i = v5[14]; i != v8; i -= 8)
    {
      v10 = *(i - 1);
    }

    v5[14] = v8;
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::clear((v5 + 8));
    v11 = 0;
  }

  else
  {
    while (1)
    {
      v17 = *v6;
      if (e5rt_execution_stream_operation_release())
      {
        break;
      }

      if (++v6 == v7)
      {
        v6 = v5[5];
        goto LABEL_7;
      }
    }

    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 707);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 707;
      v21 = 2113;
      v22 = v13;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 707;
      v21 = 2113;
      v22 = v4;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to release ANEP for function: %{private}@ ***", __p, 0x1Cu);
    }

    v11 = 7;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)IsPrewiringEnabled
{
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](self->_enabled_e5rt_function_name, "UTF8String"));
  v7 = __p;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3[11] != 0;
}

- (BOOL)IsSurfacePrewiredForCurrentFunctionForBlob:(id)a3 surfaceID:(unint64_t)a4
{
  v6 = a3;
  v18[0] = a4;
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](self->_enabled_e5rt_function_name, "UTF8String"));
  v14[0] = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, [v6 UTF8String]);
  if (std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(v7 + 8, __p))
  {
    std::string::basic_string[abi:nn200100]<0>(v14, [v6 UTF8String]);
    v12[0] = v14;
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7 + 8, v14);
    v9 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v8 + 5, v18);
    std::string::basic_string[abi:nn200100]<0>(v12, [v6 UTF8String]);
    v18[2] = v12;
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7 + 8, v12);
    v10 = v9 != 0;
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

- (int64_t)unwirePrewiringBuffers
{
  v21 = *MEMORY[0x277D85DE8];
  for (i = self->_prewiredFunctionTable.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i + 16;
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    if (i[39] < 0)
    {
      v4 = *v4;
    }

    v6 = [v5 initWithUTF8String:v4];
    [(SIBaseNetworkE5RT *)self unwirePrewiringBuffersForFunctionName:v6];
  }

  std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::clear(&self->_prewiredFunctionTable);
  if (e5rt_execution_stream_release())
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 739);
      v15 = 136381187;
      v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v17 = 1025;
      v18 = 739;
      v19 = 2113;
      v20 = v8;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v15, 0x1Cu);
    }

    v9 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v15 = 136380931;
    v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v17 = 1025;
    v18 = 739;
    v10 = " %{private}s:%{private}d *** Failed to release E5RT ANEP stream ***";
    goto LABEL_15;
  }

  if (!e5rt_execution_stream_create())
  {
    result = 0;
    goto LABEL_17;
  }

  v11 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 742);
    v15 = 136381187;
    v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v17 = 1025;
    v18 = 742;
    v19 = 2113;
    v20 = v12;
    _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v15, 0x1Cu);
  }

  v9 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = 136380931;
    v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v17 = 1025;
    v18 = 742;
    v10 = " %{private}s:%{private}d *** Failed to create E5RT ANEP stream ***";
LABEL_15:
    _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, v10, &v15, 0x12u);
  }

LABEL_16:

  result = 7;
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 48) = 1065353216;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 72) = 1065353216;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 82) = 1065353216;
  return self;
}

@end