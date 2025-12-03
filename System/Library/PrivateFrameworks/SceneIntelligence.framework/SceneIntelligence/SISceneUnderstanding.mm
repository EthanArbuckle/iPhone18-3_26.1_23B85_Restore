@interface SISceneUnderstanding
+ (CGSize)inputResolution;
- (BOOL)initMLNetworkWithComputeEngine:(int64_t)engine;
- (SISceneUnderstanding)initWithComputeEngine:(int64_t)engine;
- (_SITensorDim)labelTensorDimensions;
- (_SITensorDim)normalTensorDimensions;
- (_SITensorDim)probabilitiesTensorDimensions;
- (int64_t)evaluateImage:(__CVBuffer *)image results:(id)results;
- (void)dealloc;
@end

@implementation SISceneUnderstanding

- (SISceneUnderstanding)initWithComputeEngine:(int64_t)engine
{
  v8.receiver = self;
  v8.super_class = SISceneUnderstanding;
  v4 = [(SISceneUnderstanding *)&v8 init];
  v5 = v4;
  if (v4 && [(SISceneUnderstanding *)v4 initMLNetworkWithComputeEngine:engine])
  {
    v5->_parameters.input.resolution = kSISceneUnderstandingNetworkResolution;
    v5->_parameters.output = kSISceneUnderstandingNetworkResolution;
    *&v5->_parameters.input.preprocessor.bias_r = xmmword_21DECC1B0;
    v5->_parameters.input.preprocessor.network_wants_bgr = 0;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (CGSize)inputResolution
{
  v2 = 256.0;
  v3 = 192.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_SITensorDim)labelTensorDimensions
{
  v3 = *&self[4].value[2];
  *retstr->value = *self[4].value;
  *&retstr->value[2] = v3;
  return self;
}

- (_SITensorDim)normalTensorDimensions
{
  v3 = *&self[5].value[2];
  *retstr->value = *self[5].value;
  *&retstr->value[2] = v3;
  return self;
}

- (_SITensorDim)probabilitiesTensorDimensions
{
  v3 = *&self[6].value[2];
  *retstr->value = *self[6].value;
  *&retstr->value[2] = v3;
  return self;
}

- (BOOL)initMLNetworkWithComputeEngine:(int64_t)engine
{
  v60 = *MEMORY[0x277D85DE8];
  context = espresso_create_context();
  self->_context = context;
  if (!context)
  {
    v15 = 0;
    goto LABEL_50;
  }

  Espresso::get_internal_context(&v51, context, v5);
  *(v51 + 68) = 1;
  v6 = self->_context;
  self->_plan = espresso_create_plan();
  v7 = +[SIMSceneUnderstanding compiledModelPath];
  v8 = v7;
  if (!v7)
  {
    v9 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [0 UTF8String];
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      *&buf[12] = 1025;
      *&buf[14] = 349;
      *&buf[18] = 2081;
      *&buf[20] = uTF8String;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not load network %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_47;
  }

  v9 = [v7 stringByAppendingPathComponent:@"model.espresso.net"];
  plan = self->_plan;
  v11 = v9;
  [v9 UTF8String];
  if (espresso_plan_add_network())
  {
    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v8;
      uTF8String2 = [v8 UTF8String];
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      *&buf[12] = 1025;
      *&buf[14] = 358;
      *&buf[18] = 2081;
      *&buf[20] = uTF8String2;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not add espresso network %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_46;
  }

  v17 = self->_plan;
  if (espresso_plan_build())
  {
    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      uTF8String3 = [v8 UTF8String];
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      *&buf[12] = 1025;
      *&buf[14] = 364;
      *&buf[18] = 2081;
      *&buf[20] = uTF8String3;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not build espresso plan %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_46;
  }

  memset(buf, 0, 32);
  v20 = self->_network.plan;
  v21 = *&self->_network.network_index;
  [kSIMSceneUnderstandingInputTensorName UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = v8;
      uTF8String4 = [v8 UTF8String];
      *v53 = 136381187;
      v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      v55 = 1025;
      v56 = 371;
      v57 = 2081;
      v58 = uTF8String4;
      v24 = " %{private}s:%{private}d *** Failure to bind input tensor for scene understanding %{private}s ***";
LABEL_45:
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, v24, v53, 0x1Cu);
    }
  }

  else
  {
    v25 = self->_network.plan;
    v26 = *&self->_network.network_index;
    [kSIMSceneUnderstandingOutputLabelsTensorName UTF8String];
    if (espresso_network_query_blob_dimensions())
    {
      v12 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v27 = v8;
        uTF8String5 = [v8 UTF8String];
        *v53 = 136381187;
        v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v55 = 1025;
        v56 = 377;
        v57 = 2081;
        v58 = uTF8String5;
        v24 = " %{private}s:%{private}d *** Failure to determine output tensor shape for scene understanding %{private}s ***";
        goto LABEL_45;
      }
    }

    else
    {
      v29 = self->_network.plan;
      v30 = *&self->_network.network_index;
      [kSIMSceneUnderstandingOutputNormalsTensorName UTF8String];
      if (espresso_network_query_blob_dimensions())
      {
        v12 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v31 = v8;
          uTF8String6 = [v8 UTF8String];
          *v53 = 136381187;
          v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
          v55 = 1025;
          v56 = 383;
          v57 = 2081;
          v58 = uTF8String6;
          v24 = " %{private}s:%{private}d *** Failure to determine output tensor shape for scene understanding %{private}s ***";
          goto LABEL_45;
        }
      }

      else
      {
        v33 = self->_network.plan;
        v34 = *&self->_network.network_index;
        [kSIMSceneUnderstandingOutputProbabilitiesTensorName UTF8String];
        if (espresso_network_query_blob_dimensions())
        {
          v12 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v35 = v8;
            uTF8String7 = [v8 UTF8String];
            *v53 = 136381187;
            v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
            v55 = 1025;
            v56 = 389;
            v57 = 2081;
            v58 = uTF8String7;
            v24 = " %{private}s:%{private}d *** Failure to determine output tensor shape for scene understanding %{private}s ***";
            goto LABEL_45;
          }
        }

        else if (*buf == self->_variables.output.labels.value[0])
        {
          if (*&buf[8] == self->_variables.output.labels.value[1])
          {
            if (*&buf[16] == 3)
            {
              if (self->_variables.output.labels.value[2] == 1)
              {
                if (*&buf[24] == self->_variables.output.labels.value[3])
                {
                  if (*&buf[8] == 192)
                  {
                    v15 = 1;
                    goto LABEL_48;
                  }

                  v12 = __SceneIntelligenceLogSharedInstance();
                  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_46;
                  }

                  v47 = v8;
                  uTF8String8 = [v8 UTF8String];
                  *v53 = 136381187;
                  v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                  v55 = 1025;
                  v56 = 424;
                  v57 = 2081;
                  v58 = uTF8String8;
                  v24 = " %{private}s:%{private}d *** Input-Output channel [1] not expected size %{private}s ***";
                  goto LABEL_45;
                }

                v12 = __SceneIntelligenceLogSharedInstance();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  v45 = v8;
                  uTF8String9 = [v8 UTF8String];
                  *v53 = 136381187;
                  v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                  v55 = 1025;
                  v56 = 414;
                  v57 = 2081;
                  v58 = uTF8String9;
                  v24 = " %{private}s:%{private}d *** Input-Output channel [3] size mismatch %{private}s ***";
                  goto LABEL_45;
                }
              }

              else
              {
                v12 = __SceneIntelligenceLogSharedInstance();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  v43 = v8;
                  uTF8String10 = [v8 UTF8String];
                  *v53 = 136381187;
                  v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                  v55 = 1025;
                  v56 = 409;
                  v57 = 2081;
                  v58 = uTF8String10;
                  v24 = " %{private}s:%{private}d *** Output channel [2] size mismatch %{private}s ***";
                  goto LABEL_45;
                }
              }
            }

            else
            {
              v12 = __SceneIntelligenceLogSharedInstance();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                v41 = v8;
                uTF8String11 = [v8 UTF8String];
                *v53 = 136381187;
                v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                v55 = 1025;
                v56 = 404;
                v57 = 2081;
                v58 = uTF8String11;
                v24 = " %{private}s:%{private}d *** Input channel [2] size mismatch %{private}s ***";
                goto LABEL_45;
              }
            }
          }

          else
          {
            v12 = __SceneIntelligenceLogSharedInstance();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v39 = v8;
              uTF8String12 = [v8 UTF8String];
              *v53 = 136381187;
              v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
              v55 = 1025;
              v56 = 399;
              v57 = 2081;
              v58 = uTF8String12;
              v24 = " %{private}s:%{private}d *** Input-Output channel [1] size mismatch %{private}s ***";
              goto LABEL_45;
            }
          }
        }

        else
        {
          v12 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v37 = v8;
            uTF8String13 = [v8 UTF8String];
            *v53 = 136381187;
            v54 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
            v55 = 1025;
            v56 = 394;
            v57 = 2081;
            v58 = uTF8String13;
            v24 = " %{private}s:%{private}d *** Input-Output channel [0] size mismatch %{private}s ***";
            goto LABEL_45;
          }
        }
      }
    }
  }

LABEL_46:

LABEL_47:
  v15 = 0;
LABEL_48:

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

LABEL_50:
  v49 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int64_t)evaluateImage:(__CVBuffer *)image results:(id)results
{
  v31 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  kdebug_trace();
  if (Width != 256 || Height != 192)
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v27 = 136380931;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      v29 = 1025;
      v30 = 440;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unexpected input resolution ***", &v27, 0x12u);
    }

    goto LABEL_10;
  }

  if (CVPixelBufferGetPixelFormatType(image) == 1111970369)
  {
    plan = self->_network.plan;
    v10 = *&self->_network.network_index;
    [kSIMSceneUnderstandingInputTensorName UTF8String];
    if (espresso_network_bind_cvpixelbuffer())
    {
      v11 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v27 = 136380931;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v29 = 1025;
        v30 = 455;
        _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to bind network image to espresso input ***", &v27, 0x12u);
      }

LABEL_10:

      kdebug_trace();
      v12 = 1;
      goto LABEL_25;
    }

    v14 = self->_network.plan;
    v15 = *&self->_network.network_index;
    [kSIMSceneUnderstandingOutputLabelsTensorName UTF8String];
    [resultsCopy labelsTensor];
    if (espresso_network_bind_buffer())
    {
      v16 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = 136380931;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v29 = 1025;
        v30 = 462;
        v17 = " %{private}s:%{private}d *** Failure to bind output labels tensor for scene understanding ***";
LABEL_23:
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, v17, &v27, 0x12u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v18 = self->_network.plan;
    v19 = *&self->_network.network_index;
    [kSIMSceneUnderstandingOutputProbabilitiesTensorName UTF8String];
    [resultsCopy probabilitiesTensor];
    if (espresso_network_bind_buffer())
    {
      v16 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = 136380931;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v29 = 1025;
        v30 = 469;
        v17 = " %{private}s:%{private}d *** Failure to bind output probabilities tensor for scene understanding ***";
        goto LABEL_23;
      }

LABEL_24:

      kdebug_trace();
      v12 = 3;
      goto LABEL_25;
    }

    v20 = self->_network.plan;
    v21 = *&self->_network.network_index;
    [kSIMSceneUnderstandingOutputNormalsTensorName UTF8String];
    [resultsCopy normalsTensor];
    if (espresso_network_bind_buffer())
    {
      v16 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = 136380931;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v29 = 1025;
        v30 = 476;
        v17 = " %{private}s:%{private}d *** Failure to bind output normals tensor for scene understanding ***";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    kdebug_trace();
    v24 = self->_plan;
    v25 = espresso_plan_execute_sync();
    kdebug_trace();
    if (v25)
    {
      v26 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = 136380931;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v29 = 1025;
        v30 = 485;
        _os_log_impl(&dword_21DE0D000, v26, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to run network ***", &v27, 0x12u);
      }

      kdebug_trace();
      v12 = 4;
    }

    else
    {
      kdebug_trace();
      v12 = 0;
    }
  }

  else
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v27 = 136380931;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      v29 = 1025;
      v30 = 447;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unexpected input pixel format ***", &v27, 0x12u);
    }

    kdebug_trace();
    v12 = 2;
  }

LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  plan = self->_plan;
  espresso_plan_destroy();
  context = self->_context;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = SISceneUnderstanding;
  [(SISceneUnderstanding *)&v5 dealloc];
}

@end