@interface PTCVMNetwork
+ (int64_t)depthPrioritizationFromEffectQuality:(int64_t)quality;
- (PTCVMNetwork)initWithMetalContext:(id)context colorSize:(id *)size depthPrioritization:(int64_t)prioritization sharedResources:(id)resources;
- (id)inRGBA;
- (id)networkVersionString;
- (id)outDisparity;
- (unint64_t)getLayoutFromSize:(id *)size;
- (unsigned)executeNetwork:(int64_t)network;
- (void)bindColorInputPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)reset;
@end

@implementation PTCVMNetwork

- (unint64_t)getLayoutFromSize:(id *)size
{
  v3 = 0;
  v4 = 3.4028e38;
  result = 255;
  do
  {
    v6 = vabds_f32(flt_2244A5840[v3], size->var0 / size->var1);
    if (v6 < v4)
    {
      result = qword_2244A5850[v3];
      v4 = v6;
    }

    ++v3;
  }

  while (v3 != 4);
  return result;
}

- (PTCVMNetwork)initWithMetalContext:(id)context colorSize:(id *)size depthPrioritization:(int64_t)prioritization sharedResources:(id)resources
{
  v113[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  resourcesCopy = resources;
  v96.receiver = self;
  v96.super_class = PTCVMNetwork;
  v13 = [(PTCVMNetwork *)&v96 init];
  if (v13)
  {
    v14 = v13;
    *buf = *&size->var0;
    *&buf[16] = size->var2;
    v15 = [(PTCVMNetwork *)v13 getLayoutFromSize:buf];
    kdebug_trace();
    v95.receiver = v14;
    v95.super_class = PTCVMNetwork;
    v16 = [(PTCVMNetwork *)&v95 init];
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v24 = _PTLogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
      }

      v25 = 0;
      goto LABEL_65;
    }

    PTKTraceInit();
    objc_storeStrong(&v16->_metalContext, context);
    v16->_depthPrioritization = prioritization;
    effectUtil = [resourcesCopy effectUtil];
    effectUtil = v16->_effectUtil;
    v16->_effectUtil = effectUtil;

    util = [resourcesCopy util];
    util = v16->_util;
    v16->_util = util;

    v16->_frameId = 0;
    *&v16->_outDispIndex = 1;
    Bool = PTDefaultsPublicGetBool(@"harvesting.enabled", 0);
    if (Bool)
    {
      effectNetworkConfig2 = 0;
      inferenceDescriptor = 0;
      v24 = 0;
    }

    else
    {
      effectNetworkConfig2 = objc_opt_new();
      v26 = [objc_alloc(MEMORY[0x277CED000]) initWithInputPrioritization:prioritization andParameters:effectNetworkConfig2];
      if (!v26)
      {
        inferenceDescriptor = _PTLogSystem();
        if (os_log_type_enabled(inferenceDescriptor, OS_LOG_TYPE_ERROR))
        {
          [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
        }

        v42 = 0;
        v24 = 0;
        v25 = 0;
        goto LABEL_64;
      }

      v24 = v26;
      inferenceDescriptor = [v26 inferenceDescriptor];
    }

    var1 = size->var1;
    var0 = size->var0;
    v27 = [inferenceDescriptor configurationNameForLayout:v15];
    networkURL = [inferenceDescriptor networkURL];
    absoluteString = [networkURL absoluteString];

    if (!absoluteString)
    {
      name2 = _PTLogSystem();
      if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
      {
        [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
      }

      v25 = 0;
      goto LABEL_63;
    }

    v93 = effectNetworkConfig2;
    colorInput = [inferenceDescriptor colorInput];
    name = [colorInput name];
    inRGBAName = v16->_inRGBAName;
    v16->_inRGBAName = name;

    prevDisparityInput = [inferenceDescriptor prevDisparityInput];
    name2 = [prevDisparityInput name];

    disparityOutput = [inferenceDescriptor disparityOutput];
    name3 = [disparityOutput name];

    effectNetworkConfig = [resourcesCopy effectNetworkConfig];
    if (v27 == effectNetworkConfig)
    {
      v84 = Bool;
      v36 = inferenceDescriptor;
      v37 = v24;
      v38 = contextCopy;
      v39 = v27;
    }

    else
    {
      effectNetworkConfig2 = [resourcesCopy effectNetworkConfig];
      if (![v27 isEqualToString:effectNetworkConfig2])
      {
        v87 = 0;
        goto LABEL_26;
      }

      v84 = Bool;
      v36 = inferenceDescriptor;
      v37 = v24;
      v38 = contextCopy;
      v39 = v27;
    }

    effectNetworkPath = [resourcesCopy effectNetworkPath];
    v87 = [absoluteString isEqualToString:effectNetworkPath];

    v27 = v39;
    v41 = v39 == effectNetworkConfig;
    contextCopy = v38;
    v24 = v37;
    inferenceDescriptor = v36;
    Bool = v84;
    if (v41)
    {
LABEL_27:

      effectNetworkConfig2 = v93;
      if ((Bool & 1) == 0)
      {
        if (v87)
        {
          effectNetwork = [resourcesCopy effectNetwork];
          executor = v16->_executor;
          v16->_executor = effectNetwork;
        }

        else
        {
          v45 = [PTEspressoGenericExecutor alloc];
          metalContext = v16->_metalContext;
          v82 = v45;
          v79 = [MEMORY[0x277CBEBC0] fileURLWithPath:absoluteString];
          v113[0] = v16->_inRGBAName;
          v113[1] = name2;
          v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
          v112 = name3;
          [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
          v85 = contextCopy;
          v46 = absoluteString;
          v48 = v47 = v27;
          v111[0] = name2;
          v111[1] = name3;
          v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
          v50 = [(PTEspressoGenericExecutor *)v82 initWithMetalContext:metalContext url:v79 inputNames:v78 outputNames:v48 tensorSwapNames:v49 reshapeNetworkSize:0 configuration:v47];
          v51 = v16->_executor;
          v16->_executor = v50;

          effectNetworkConfig2 = v93;
          v27 = v47;
          absoluteString = v46;
          contextCopy = v85;

          [resourcesCopy setEffectNetwork:v16->_executor];
          [resourcesCopy setEffectNetworkConfig:v27];
          [resourcesCopy setEffectNetworkPath:absoluteString];
        }
      }

      v52 = v16->_executor;
      if (!v52)
      {
        networkVersion = _PTLogSystem();
        if (os_log_type_enabled(networkVersion, OS_LOG_TYPE_ERROR))
        {
          [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
        }

        goto LABEL_52;
      }

      networkVersion = [(PTEspressoGenericExecutor *)v52 networkVersion];
      if ([networkVersion isEqualToString:@"bkkidb647v_iteration_105001"])
      {
        v54 = 4;
      }

      else
      {
        if (![networkVersion isEqualToString:@"a9mp7cfxah_iteration_45000"])
        {
          v16->_networkVersionID = 0;
          goto LABEL_40;
        }

        v54 = 7;
      }

      v16->_networkVersionID = v54;
LABEL_40:
      v55 = [(PTEspressoGenericExecutor *)v16->_executor getInputResourceWithName:v16->_inRGBAName];
      inRGBA = v16->_inRGBA;
      v16->_inRGBA = v55;

      if (v16->_inRGBA)
      {
        v57 = [(PTEspressoGenericExecutor *)v16->_executor getInputResourceWithName:name2];
        disparityInOut = v16->_disparityInOut;
        inDispIndex = v16->_inDispIndex;
        v60 = v16->_disparityInOut[inDispIndex];
        v16->_disparityInOut[inDispIndex] = v57;

        if (v16->_disparityInOut[v16->_inDispIndex])
        {
          v61 = [(PTEspressoGenericExecutor *)v16->_executor getOutputResourceWithName:name3];
          outDispIndex = v16->_outDispIndex;
          v63 = disparityInOut[outDispIndex];
          disparityInOut[outDispIndex] = v61;

          if (disparityInOut[v16->_outDispIndex])
          {
            v77 = v27;
            if (var0 >= var1)
            {
              goto LABEL_46;
            }

            textureUtil = [(PTMetalContext *)v16->_metalContext textureUtil];
            v65 = [textureUtil createWithWidth:-[MTLTexture height](v16->_inRGBA height:"height") pixelFormat:-[MTLTexture width](v16->_inRGBA, "width"), -[MTLTexture pixelFormat](v16->_inRGBA, "pixelFormat")];
            inRGBARotated = v16->_inRGBARotated;
            v16->_inRGBARotated = v65;

            if (!v16->_inRGBARotated)
            {
              v73 = _PTLogSystem();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
              }

              v25 = 0;
              goto LABEL_61;
            }

            textureUtil2 = [(PTMetalContext *)v16->_metalContext textureUtil];
            v68 = [textureUtil2 createWithWidth:-[MTLTexture height](v16->_disparityInOut[1] height:"height") pixelFormat:-[MTLTexture width](v16->_disparityInOut[1], "width"), -[MTLTexture pixelFormat](v16->_disparityInOut[1], "pixelFormat")];
            outDisparityRotated = v16->_outDisparityRotated;
            v16->_outDisparityRotated = v68;

            v27 = v77;
            if (v16->_outDisparityRotated)
            {
LABEL_46:
              v70 = _PTLogSystem();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                v91 = v16->_inRGBAName;
                width = [(MTLTexture *)v16->_inRGBA width];
                height = [(MTLTexture *)v16->_inRGBA height];
                width2 = [(MTLTexture *)v16->_disparityInOut[1] width];
                height2 = [(MTLTexture *)v16->_disparityInOut[1] height];
                width3 = [(MTLTexture *)v16->_disparityInOut[0] width];
                height3 = [(MTLTexture *)v16->_disparityInOut[0] height];
                *buf = 138414338;
                *&buf[4] = v91;
                *&buf[12] = 2048;
                *&buf[14] = width;
                *&buf[22] = 2048;
                v98 = height;
                v99 = 2112;
                v100 = name3;
                v101 = 2048;
                v102 = width2;
                v103 = 2048;
                v104 = height2;
                v105 = 2112;
                v106 = name2;
                v107 = 2048;
                v108 = width3;
                v109 = 2048;
                v110 = height3;
                _os_log_debug_impl(&dword_2243FB000, v70, OS_LOG_TYPE_DEBUG, "Init disparity network: %@ (%lux%lu) %@ (%lux%lu) %@ (%lux%lu)", buf, 0x5Cu);
              }

              [(PTCVMNetwork *)v16 reset];
              [(MTLTexture *)disparityInOut[v16->_outDispIndex] width];
              [(MTLTexture *)disparityInOut[v16->_outDispIndex] height];
              [(MTLTexture *)disparityInOut[v16->_outDispIndex] pixelFormat];
              kdebug_trace();
              v25 = v16;
LABEL_61:
              effectNetworkConfig2 = v93;
              v27 = v77;
              goto LABEL_62;
            }

            v72 = _PTLogSystem();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
            }
          }

          else
          {
            v72 = _PTLogSystem();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
            }
          }
        }

        else
        {
          v72 = _PTLogSystem();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
          }
        }

        v25 = 0;
        effectNetworkConfig2 = v93;
LABEL_62:

LABEL_63:
        v42 = inferenceDescriptor;
LABEL_64:

LABEL_65:
        goto LABEL_66;
      }

      v71 = _PTLogSystem();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
      }

LABEL_52:
      v25 = 0;
      goto LABEL_62;
    }

LABEL_26:

    goto LABEL_27;
  }

  v25 = 0;
LABEL_66:

  return v25;
}

- (void)bindColorInputPixelBuffer:(__CVBuffer *)buffer
{
  self->_inputPixelBuffer = buffer;
  if (buffer)
  {
    device = [(PTMetalContext *)self->_metalContext device];
    v5 = [PTPixelBufferUtil createTextureFromPixelBuffer:buffer device:device];
    inRGBA = self->_inRGBA;
    self->_inRGBA = v5;
  }
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_inRGBAAppleDepthRunner);
  CVPixelBufferRelease(self->_outDisparityAppleDepthRunner);
  CVPixelBufferRelease(self->_inTemporalDisparityAppleDepthRunner);
  v3.receiver = self;
  v3.super_class = PTCVMNetwork;
  [(PTCVMNetwork *)&v3 dealloc];
}

- (id)inRGBA
{
  inRGBARotated = self->_inRGBARotated;
  if (!inRGBARotated)
  {
    inRGBARotated = self->_inRGBA;
  }

  v3 = inRGBARotated;

  return v3;
}

- (id)outDisparity
{
  outDisparityRotated = self->_outDisparityRotated;
  if (!outDisparityRotated)
  {
    outDisparityRotated = self->_disparityInOut[self->_outDispIndex];
  }

  v3 = outDisparityRotated;

  return v3;
}

- (unsigned)executeNetwork:(int64_t)network
{
  self->_frameIndex = network;
  if (self->_inputPixelBuffer && [(PTEspressoGenericExecutor *)self->_executor bindInputResourceWithName:self->_inRGBAName to:?])
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PTCVMNetwork executeNetwork:];
    }
  }

  [(PTEspressoGenericExecutor *)self->_executor tensorSwap:self->_frameId];
  frameId = self->_frameId;
  v6 = frameId & 1;
  if (frameId < 0)
  {
    v6 = -v6;
  }

  v7 = __OFADD__(frameId, 1);
  v8 = frameId + 1;
  v9 = v8 & 1;
  if (v8 < 0 != v7)
  {
    v9 = -v9;
  }

  self->_outDispIndex = v9;
  self->_inDispIndex = v6;
  self->_frameId = v8;
  v10 = PTDefaultsGetDictionary();
  [(PTCVMNetwork *)self dumpNetworkInputWithDefaults:v10];
  [(MTLTexture *)self->_disparityInOut[self->_outDispIndex] width];
  [(MTLTexture *)self->_disparityInOut[self->_outDispIndex] height];
  kdebug_trace();
  executor = self->_executor;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __31__PTCVMNetwork_executeNetwork___block_invoke;
  v19[3] = &unk_278522E90;
  v19[4] = self;
  v12 = [(PTEspressoGenericExecutor *)executor executeAsync:v19];
  [(PTCVMNetwork *)self dumpNetworkOutputWithDefaults:v10];
  if (self->_outDisparityRotated)
  {
    commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!commandBuffer)
    {
      v14 = _PTLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer2 setLabel:@"PTCVMNetwork network outDisparityRotated"];

    util = self->_util;
    commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [(PTUtil *)util rotateTexture:commandBuffer3 inTex:self->_disparityInOut[self->_outDispIndex] outTex:self->_outDisparityRotated rotationDegrees:4294967206];

    [(PTMetalContext *)self->_metalContext commit];
  }

  return v12;
}

- (void)reset
{
  commandQueue = [(PTMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTCVMNetwork network reset"];
  [(PTEffectUtil *)self->_effectUtil clearTexture:commandBuffer outTex:self->_disparityInOut[self->_inDispIndex]];
  [(PTEffectUtil *)self->_effectUtil clearTexture:commandBuffer outTex:self->_disparityInOut[self->_outDispIndex]];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (id)networkVersionString
{
  v2 = MEMORY[0x277CCACA8];
  networkVersionID = self->_networkVersionID;
  networkVersion = [(PTEspressoGenericExecutor *)self->_executor networkVersion];
  v5 = [v2 stringWithFormat:@"CVM %i (%@)", networkVersionID, networkVersion];

  return v5;
}

+ (int64_t)depthPrioritizationFromEffectQuality:(int64_t)quality
{
  v3 = 2;
  if (quality >= 0x65)
  {
    v3 = 3;
  }

  if (quality < 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)initWithMetalContext:colorSize:depthPrioritization:sharedResources:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:depthPrioritization:sharedResources:.cold.8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:depthPrioritization:sharedResources:.cold.9()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end