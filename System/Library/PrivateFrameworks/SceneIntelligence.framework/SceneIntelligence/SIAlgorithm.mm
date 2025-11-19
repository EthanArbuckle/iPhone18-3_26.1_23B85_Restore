@interface SIAlgorithm
+ (Class)inputDataClass;
+ (Class)outputDataClass;
+ (id)initWithNetworkConfiguration:(id)a3;
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SIAlgorithm)initWithNetworkConfiguration:(id)a3;
- (id)createEmptyInputDataWithExpectedFormat;
- (int64_t)_runWithInput:(id)a3 output:(id)a4;
- (int64_t)runWithInput:(id)a3 output:(id)a4 resolutionConfiguration:(int64_t)a5;
- (int64_t)switchConfiguration:(unint64_t)a3;
@end

@implementation SIAlgorithm

+ (Class)inputDataClass
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
    v7 = 1025;
    v8 = 36;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Expected input class must be overriden ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (Class)outputDataClass
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
    v7 = 1025;
    v8 = 43;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Expected output class must be overriden ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)initWithNetworkConfiguration:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 algorithmClassName];
  v5 = v4;
  if (v4)
  {
    v6 = [objc_alloc(NSClassFromString(v4)) initWithNetworkConfiguration:v3];
  }

  else
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136380931;
      v11 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v12 = 1025;
      v13 = 50;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** algorithm name is not specified in the subclass ***", &v10, 0x12u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (SIAlgorithm)initWithNetworkConfiguration:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SIAlgorithm;
  v6 = [(SIAlgorithm *)&v17 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_networkConfiguration, a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 20}];

    v11 = [objc_alloc(NSClassFromString(v10)) initWithNetworkConfiguration:v5];
    v12 = p_isa[2];
    p_isa[2] = v11;

    [p_isa[2] setMappingId:{objc_msgSend(v5, "signpostMappingID")}];
    if (p_isa[2] || ([v5 allowDryRunWithoutModel] & 1) != 0)
    {
      v13 = p_isa;
    }

    else
    {
      v16 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
        v20 = 1025;
        v21 = 77;
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to initialize ML model ***", buf, 0x12u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (CGSize)getOutputResolution
{
  [(SIModel *)self->_model getOutputResolution];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)getInputResolution
{
  [(SIModel *)self->_model getInputResolution];
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)_runWithInput:(id)a3 output:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SIModel *)self->_model setFrameTimestamp:CFAbsoluteTimeGetCurrent()];
  [objc_opt_class() inputDataClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [objc_opt_class() inputDataClass];
      v13 = NSStringFromClass(v12);
      v19 = 136381443;
      v20 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v21 = 1025;
      v22 = 107;
      v23 = 2113;
      v24 = v11;
      v25 = 2113;
      v26 = v13;
      v14 = " %{private}s:%{private}d *** Unexpected input data: %{private}@. (Expected %{private}@) ***";
LABEL_10:
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, v14, &v19, 0x26u);
    }

LABEL_11:

    v8 = 6;
    goto LABEL_12;
  }

  [objc_opt_class() outputDataClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      v16 = [objc_opt_class() outputDataClass];
      v13 = NSStringFromClass(v16);
      v19 = 136381443;
      v20 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v21 = 1025;
      v22 = 113;
      v23 = 2113;
      v24 = v11;
      v25 = 2113;
      v26 = v13;
      v14 = " %{private}s:%{private}d *** Unexpected output data: %{private}@. (Expected %{private}@) ***";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [(SIModel *)self->_model algorithmNameHash];
  [(SIModel *)self->_model mappingId];
  kdebug_trace();
  v8 = [(SIAlgorithm *)self _preprocessingInputData:v6];
  [(SIModel *)self->_model algorithmNameHash];
  [(SIModel *)self->_model mappingId];
  kdebug_trace();
  if (!v8)
  {
    [(SIModel *)self->_model algorithmNameHash];
    [(SIModel *)self->_model mappingId];
    kdebug_trace();
    v8 = [(SIAlgorithm *)self _inferenceWithInput:v6 output:v7];
    [(SIModel *)self->_model algorithmNameHash];
    [(SIModel *)self->_model mappingId];
    kdebug_trace();
    if (!v8)
    {
      [(SIModel *)self->_model algorithmNameHash];
      [(SIModel *)self->_model mappingId];
      kdebug_trace();
      v8 = [(SIAlgorithm *)self _postprocessingOutput:v7];
      [(SIModel *)self->_model algorithmNameHash];
      [(SIModel *)self->_model mappingId];
      kdebug_trace();
    }
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)runWithInput:(id)a3 output:(id)a4 resolutionConfiguration:(int64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(SIModel *)self->_model algorithmNameHash];
  [(SIModel *)self->_model mappingId];
  kdebug_trace();
  if (a5 < 0 || ([(SIModel *)self->_model algorithmNameHash], [(SIModel *)self->_model mappingId], kdebug_trace(), v10 = [(SIAlgorithm *)self switchConfiguration:a5], [(SIModel *)self->_model algorithmNameHash], [(SIModel *)self->_model mappingId], kdebug_trace(), !v10))
  {
    v10 = [(SIAlgorithm *)self _runWithInput:v8 output:v9];
    [(SIModel *)self->_model algorithmNameHash];
    [(SIModel *)self->_model mappingId];
    kdebug_trace();
  }

  else
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136380931;
      v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v16 = 1025;
      v17 = 164;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to switch configuration! ***", &v14, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int64_t)switchConfiguration:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  result = [(SIModel *)self->_model switchNetworkConfiguration:a3];
  if (result)
  {
    v4 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136380931;
      v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v8 = 1025;
      v9 = 184;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** fail to switch the configuration! The output is not updated ***", &v6, 0x12u);
    }

    result = 5;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)createEmptyInputDataWithExpectedFormat
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
    v7 = 1025;
    v8 = 217;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Must be implemented by the subclass ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

@end