@interface PTEffectRenderer
+ (BOOL)useStudioLightFromSegmentation:(id)segmentation;
- (BOOL)isRenderRequiredForRequest:(id)request;
- (PTEffectRenderer)initWithDescriptor:(id)descriptor metalContext:(id)context depthPrioritization:(int64_t)prioritization humanDetections:(id)detections prevTemporalState:(id)state sharedResources:(id)resources;
- (id)activeReactions;
- (id)copyTemporalState:(id)state;
- (int)render:(id)render waitUntilCompleted:(BOOL)completed gpuCompleted:(id)gpuCompleted;
- (int)renderReaction:(id)reaction effectRenderRequest:(id)request;
- (int)runGestureDetection:(id)detection asyncWork:(id)work;
- (void)copyInColor:(id)color toOutColor:(id)outColor;
- (void)createVfxTextures:(id *)textures;
- (void)dealloc;
- (void)reset:(id)reset;
@end

@implementation PTEffectRenderer

- (PTEffectRenderer)initWithDescriptor:(id)descriptor metalContext:(id)context depthPrioritization:(int64_t)prioritization humanDetections:(id)detections prevTemporalState:(id)state sharedResources:(id)resources
{
  v254[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  contextCopy = context;
  detectionsCopy = detections;
  stateCopy = state;
  resourcesCopy = resources;
  v240.receiver = self;
  v240.super_class = PTEffectRenderer;
  v13 = [(PTEffectRenderer *)&v240 init];
  if (v13)
  {
    PTKTraceInit();
    kdebug_trace();
    objc_storeStrong(v13 + 1, context);
    v14 = [descriptorCopy copy];
    v15 = *(v13 + 40);
    *(v13 + 40) = v14;

    *(v13 + 47) = 0;
    *(v13 + 41) = [descriptorCopy availableEffectTypes];
    objc_storeStrong(v13 + 55, resources);
    objc_storeStrong(v13 + 54, detections);
    v253 = *MEMORY[0x277CC4D40];
    v254[0] = &unk_2837F39F0;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:&v253 count:1];
    device = [*(v13 + 1) device];
    LODWORD(v16) = CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v16, device, 0, v13 + 2);

    if (v16 || !*(v13 + 2))
    {
      v18 = _PTLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
      }

      *(v13 + 2) = 0;
    }

    *(v13 + 57) = [descriptorCopy effectQuality];
    v20 = *(v13 + 41);
    v216 = v20;
    v217 = v20 & 0x48;
    v21 = (v20 & 3) != 0 || ((v20 & 4) == 0 || (v20 & 0x48) == 0) && (v20 & 0x50) == 16;
    v218 = v21;
    v13[448] = [PTEffectRenderer useStudioLightFromSegmentation:descriptorCopy];
    *(v13 + 63) = 0;
    *(v13 + 130) = 0;
    *(v13 + 33) = 0x7FF8000000000000;
    [descriptorCopy colorSize];
    v25 = v24;
    [descriptorCopy colorSize];
    v26 = 0;
    v27 = v25;
    v29 = v28;
    v30 = *MEMORY[0x277CC4DE8];
    v31 = 1;
    v32 = MEMORY[0x277CBEC10];
    while (1)
    {
      v33 = v31;
      v251 = v30;
      v252 = v32;
      if (CVPixelBufferCreate(0, v25, v29, 0x34323076u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v252 forKeys:&v251 count:1], &v13[8 * v26 + 96]))
      {
        break;
      }

      v31 = 0;
      v26 = 1;
      if ((v33 & 1) == 0)
      {
        *(v13 + 70) = 0x40000000;
        *(v13 + 308) = 0x3F0000003E800000;
        v34 = PTDefaultsGetDictionary();
        *(v13 + 284) = 1064262697;
        *(v13 + 292) = vbsl_s8(vcgtd_u64(2uLL, prioritization - 1), 0x3DCCCCCD3F800000, 0x3E3333333F800000);
        *(v13 + 300) = 0x3E4CCCCD3F800000;
        v35 = [v34 objectForKeyedSubscript:@"PTEffectFocusDisparityMax"];
        v36 = v35;
        if (v35)
        {
          [v35 floatValue];
          *(v13 + 70) = v37;
          v38 = _PTLogSystem();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [PTEffectRenderer initWithDescriptor:v36 metalContext:? depthPrioritization:? humanDetections:? prevTemporalState:? sharedResources:?];
          }
        }

        v39 = [v34 objectForKeyedSubscript:@"PTEffectFocusDisparityExponentialMovingAverage"];

        if (v39)
        {
          [v39 floatValue];
          *(v13 + 77) = v40;
          v41 = _PTLogSystem();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [PTEffectRenderer initWithDescriptor:v39 metalContext:? depthPrioritization:? humanDetections:? prevTemporalState:? sharedResources:?];
          }
        }

        v221 = [v34 objectForKeyedSubscript:@"PTEffectFocusDisparityExponentialMovingAverageStudioLight"];

        if (v221)
        {
          [v221 floatValue];
          *(v13 + 78) = v42;
          v43 = _PTLogSystem();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [PTEffectRenderer initWithDescriptor:v221 metalContext:? depthPrioritization:? humanDetections:? prevTemporalState:? sharedResources:?];
          }
        }

        device2 = [*(v13 + 1) device];
        v45 = [device2 newBufferWithLength:16 options:0];
        v46 = *(v13 + 16);
        *(v13 + 16) = v45;

        if (*(v13 + 16))
        {
          device3 = [*(v13 + 1) device];
          v48 = [device3 newBufferWithLength:4 options:0];
          v49 = *(v13 + 18);
          *(v13 + 18) = v48;

          if (*(v13 + 18))
          {
            v239 = 1;
            device4 = [*(v13 + 1) device];
            v51 = [device4 newBufferWithBytes:&v239 length:1 options:0];
            v52 = *(v13 + 22);
            *(v13 + 22) = v51;

            if (!*(v13 + 22))
            {
              v58 = _PTLogSystem();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
              }

              goto LABEL_120;
            }

            v53 = *(v13 + 26);
            *(v13 + 26) = 0;

            v54 = *(v13 + 19);
            *(v13 + 19) = 0;

            if ([descriptorCopy prewarmOnly])
            {
              v55 = [[PTEspressoGenericExecutor alloc] initWithMetalContext:*(v13 + 1)];
              if (v55)
              {

                width = 320;
                height = 176;
                goto LABEL_61;
              }

              v58 = _PTLogSystem();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
              }

LABEL_120:

LABEL_158:
              v19 = 0;
LABEL_159:

              goto LABEL_160;
            }

            if (v218)
            {
              v59 = [PTCVMNetwork alloc];
              v60 = *(v13 + 1);
              v245 = v25;
              *&v246 = v29;
              *(&v246 + 1) = 1;
              v61 = [(PTCVMNetwork *)v59 initWithMetalContext:v60 colorSize:&v245 depthPrioritization:prioritization sharedResources:resourcesCopy];
              v62 = *(v13 + 26);
              *(v13 + 26) = v61;

              v63 = *(v13 + 26);
              if (!v63)
              {
                v58 = _PTLogSystem();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                }

                goto LABEL_120;
              }

              outDisparity = [v63 outDisparity];
              width = [outDisparity width];
              outDisparity2 = [*(v13 + 26) outDisparity];
              height = [outDisparity2 height];

              if (!width || !height)
              {
                v66 = _PTLogSystem();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                }

                width = 320;
                height = 176;
              }

              v67 = [PTMSRResize alloc];
              v68 = *(v13 + 1);
              rotated = [*(v13 + 26) rotated];
              v245 = v25;
              *&v246 = v29;
              *(&v246 + 1) = 1;
              *&v237 = width;
              *(&v237 + 1) = height;
              v238 = 1;
              v70 = [(PTMSRResize *)v67 initWithMetalContext:v68 inputSize:&v245 targetSize:&v237 rotateTargetPixelBuffer:rotated compressedIntermediates:v217 == 0 sRGB:0 sharedResources:resourcesCopy];
              v71 = *(v13 + 19);
              *(v13 + 19) = v70;

              v72 = *(v13 + 19);
              if (v72)
              {
                [*(v13 + 26) bindColorInputPixelBuffer:{objc_msgSend(v72, "targetRGBAPixelBuffer")}];
LABEL_61:
                v73 = 1;
LABEL_62:
                if (!*(v13 + 19) && ([descriptorCopy prewarmOnly] & 1) == 0)
                {
                  v74 = [PTMSRResize alloc];
                  v75 = *(v13 + 1);
                  v245 = v25;
                  *&v246 = v29;
                  *(&v246 + 1) = 1;
                  v237 = xmmword_2244C60A0;
                  v238 = 1;
                  v76 = [(PTMSRResize *)v74 initWithMetalContext:v75 inputSize:&v245 targetSize:&v237 rotateTargetPixelBuffer:0 compressedIntermediates:0 sRGB:0 sharedResources:resourcesCopy];
                  v77 = *(v13 + 19);
                  *(v13 + 19) = v76;

                  width = 320;
                  height = 176;
                  v73 = 1;
                }

LABEL_68:
                if (v27 >= v29)
                {
                  v86 = v29;
                }

                else
                {
                  v86 = v27;
                }

                v87 = 2.0;
                if (v86 > 0x2CF)
                {
                  v87 = 3.0;
                }

                if (v86 <= 0x437)
                {
                  v88 = v87;
                }

                else
                {
                  v88 = 4.0;
                }

                v89 = [[PTColorConversion alloc] initWithMetalContext:contextCopy];
                v90 = *(v13 + 28);
                *(v13 + 28) = v89;

                if (*(v13 + 28))
                {
                  if ((v216 & 2) == 0)
                  {
                    goto LABEL_80;
                  }

                  v91 = [[PTNormalAndDiffuseEstimation alloc] initWithMetalContext:*(v13 + 1)];
                  v92 = *(v13 + 42);
                  *(v13 + 42) = v91;

                  if (*(v13 + 42))
                  {
                    textureUtil = [*(v13 + 1) textureUtil];
                    v94 = [textureUtil createWithWidth:width height:height pixelFormat:20];
                    v95 = *(v13 + 11);
                    *(v13 + 11) = v94;

                    if (*(v13 + 11))
                    {
LABEL_80:
                      if (!v218)
                      {
                        goto LABEL_94;
                      }

                      v96 = [PTEffectTemporalFilter alloc];
                      v97 = *(v13 + 1);
                      v245 = width;
                      *&v246 = height;
                      *(&v246 + 1) = v73;
                      v98 = [(PTEffectTemporalFilter *)v96 initWithMetalContext:v97 disparitySize:&v245];
                      v99 = *(v13 + 43);
                      *(v13 + 43) = v98;

                      if (*(v13 + 43))
                      {
                        textureUtil2 = [*(v13 + 1) textureUtil];
                        v219 = (width * 1.5);
                        v213 = (height * 1.5);
                        v101 = [textureUtil2 createWithWidth:? height:? pixelFormat:?];
                        v102 = *(v13 + 6);
                        *(v13 + 6) = v101;

                        if (*(v13 + 6))
                        {
                          textureUtil3 = [*(v13 + 1) textureUtil];
                          v104 = [textureUtil3 createWithWidth:v219 height:v213 pixelFormat:25];
                          v105 = *(v13 + 7);
                          *(v13 + 7) = v104;

                          if (*(v13 + 7))
                          {
                            if ((v216 & 0x4C) != 0 && ([*(v13 + 1) textureUtil], v106 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v106, "createWithWidth:height:pixelFormat:", v219, v213, 25), v107 = objc_claimAutoreleasedReturnValue(), v108 = *(v13 + 8), *(v13 + 8) = v107, v108, v106, !*(v13 + 8)))
                            {
                              v168 = _PTLogSystem();
                              if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                              {
                                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                              }
                            }

                            else
                            {
                              if (stateCopy && *(v13 + 26))
                              {
                                commandQueue = [*(v13 + 1) commandQueue];
                                commandBuffer = [commandQueue commandBuffer];

                                if (!commandBuffer)
                                {
                                  v111 = _PTLogSystem();
                                  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                                  {
                                    [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
                                  }
                                }

                                [commandBuffer setLabel:@"PTEffectRenderer Restore temporal state"];
                                [stateCopy restoreState:commandBuffer cvmNetwork:*(v13 + 26) temporalFilter:*(v13 + 43)];
                                [commandBuffer commit];
                                [commandBuffer waitUntilScheduled];
                              }

                              pyramidRGBA = [*(v13 + 19) pyramidRGBA];
                              v245 = (width * 1.5);
                              *&v246 = (height * 1.5);
                              *(&v246 + 1) = 1;
                              v113 = [PTUtil findMipmapLevel:pyramidRGBA largerThan:&v245];
                              v114 = *(v13 + 24);
                              *(v13 + 24) = v113;

                              pyramidRGBA2 = [*(v13 + 19) pyramidRGBA];
                              v245 = width;
                              *&v246 = height;
                              *(&v246 + 1) = v73;
                              v116 = [PTUtil findMipmapLevel:pyramidRGBA2 largerThan:&v245];
                              v117 = *(v13 + 25);
                              *(v13 + 25) = v116;

                              v118 = [PTGuidedFilter alloc];
                              v119 = *(v13 + 1);
                              v245 = width;
                              *&v246 = height;
                              *(&v246 + 1) = v73;
                              LODWORD(v120) = 1028443341;
                              v121 = [(PTGuidedFilter *)v118 initWithMetalContext:v119 inputSize:&v245 epsilon:v120];
                              v122 = *(v13 + 23);
                              *(v13 + 23) = v121;

                              if (*(v13 + 23))
                              {
LABEL_94:
                                if (v217)
                                {
                                  textureUtil4 = [*(v13 + 1) textureUtil];
                                  v124 = [textureUtil4 createWithWidth:v27 height:v29 pixelFormat:10];
                                  v125 = *(v13 + 9);
                                  *(v13 + 9) = v124;
                                }

                                v250 = 0;
                                v249 = 0;
                                device5 = [*(v13 + 1) device];
                                v127 = [device5 newBufferWithBytes:&v249 length:12 options:0];
                                v128 = *(v13 + 17);
                                *(v13 + 17) = v127;

                                if (*(v13 + 17))
                                {
                                  LODWORD(v246) = 0;
                                  v245 = 0xFF7FFFFFBFC00000;
                                  HIDWORD(v246) = 0;
                                  *(&v246 + 4) = 0xFF7FFFFFBFC00000;
                                  v248 = 0;
                                  v247 = 0xFF7FFFFFBFC00000;
                                  device6 = [*(v13 + 1) device];
                                  v130 = [device6 newBufferWithBytes:&v245 length:36 options:0];
                                  v131 = *(v13 + 20);
                                  *(v13 + 20) = v130;

                                  if (*(v13 + 20))
                                  {
                                    v236 = 1065353216;
                                    device7 = [*(v13 + 1) device];
                                    v133 = [device7 newBufferWithBytes:&v236 length:4 options:0];
                                    v134 = *(v13 + 21);
                                    *(v13 + 21) = v133;

                                    if (*(v13 + 21))
                                    {
                                      if ((v216 & 2) == 0 || (v136 = [PTEffectRelighting alloc], v137 = *(v13 + 1), v138 = *(v13 + 41), v139 = [descriptorCopy prewarmOnly], v140 = *(v13 + 19), v141 = v13[448], *&v237 = v27, *(&v237 + 1) = v29, v238 = 1, v142 = -[PTEffectRelighting initWithMetalContext:availableEffectTypes:prewarmOnly:colorSize:msrColorPyramid:studiolightFromSegmentation:sharedResources:](v136, "initWithMetalContext:availableEffectTypes:prewarmOnly:colorSize:msrColorPyramid:studiolightFromSegmentation:sharedResources:", v137, v138, v139, &v237, v140, v141, resourcesCopy), v143 = *(v13 + 27), *(v13 + 27) = v142, v143, *(v13 + 27)))
                                      {
                                        v243 = &unk_2837F3700;
                                        *&v135 = fminf(v88, 4.0);
                                        v144 = [MEMORY[0x277CCABB0] numberWithFloat:v135];
                                        v244 = v144;
                                        v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v244 forKeys:&v243 count:1];
                                        v220 = [PTQualitySettings createWithQuality:25 options:v145];

                                        if (!v220)
                                        {
                                          v171 = _PTLogSystem();
                                          p_super = v171;
                                          if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                                          {
                                            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                            v19 = 0;
                                            p_super = v171;
                                          }

                                          else
                                          {
                                            v19 = 0;
                                          }

                                          goto LABEL_217;
                                        }

                                        [v220 setDoCenterDisparity:0];
                                        LODWORD(v146) = 1.0;
                                        [v220 setDisparityUpsampleFactor:v146];
                                        [v220 setIntermediatePixelFormat:71];
                                        v147 = [PTRenderPipelineDescriptor alloc];
                                        device8 = [*(v13 + 1) device];
                                        v215 = [(PTRenderPipelineDescriptor *)v147 initWithDevice:device8 version:3001 colorSize:v27 disparitySize:v29, (width * 1.5), (height * 1.5)];

                                        if (v215)
                                        {
                                          v149 = [PTPyramid alloc];
                                          [descriptorCopy colorSize];
                                          v150 = [(PTPyramid *)v149 initWithMetalContext:contextCopy colorSize:71 pixelFormat:1 skipFullSizeLayer:0 doFirstLevelGaussianDownsample:4 mipmapLevelCount:?];
                                          v151 = *(v13 + 5);
                                          *(v13 + 5) = v150;

                                          v152 = *(v13 + 5);
                                          if (v152)
                                          {
                                            v241[0] = &unk_2837F3718;
                                            v241[1] = &unk_2837F3730;
                                            v242[0] = v220;
                                            v242[1] = MEMORY[0x277CBEC28];
                                            v241[2] = &unk_2837F3748;
                                            v153 = *(v13 + 1);
                                            v241[3] = &unk_2837F3760;
                                            v242[2] = v153;
                                            v242[3] = v152;
                                            v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v242 forKeys:v241 count:4];
                                            [(PTRenderPipelineDescriptor *)v215 setOptions:v154];

                                            v155 = [[PTRenderPipeline alloc] initWithDescriptor:v215];
                                            v156 = *(v13 + 3);
                                            *(v13 + 3) = v155;

                                            v157 = *(v13 + 3);
                                            if (v157)
                                            {
                                              v158 = [v157 createRenderStateWithQuality:{-[NSObject quality](v220, "quality")}];
                                              v159 = *(v13 + 4);
                                              *(v13 + 4) = v158;

                                              v160 = *(v13 + 4);
                                              if (v160)
                                              {
                                                [v160 setSourceColorBitDepth:8];
                                                [*(v13 + 4) prepareForRendering:1];
                                                v161 = objc_opt_new();
                                                v163 = (v13 + 232);
                                                v162 = *(v13 + 29);
                                                *(v13 + 29) = v161;

                                                [*(v13 + 29) setFrameId:0];
                                                [*(v13 + 29) setRenderState:*(v13 + 4)];
                                                LODWORD(v164) = dword_2244C6078[prioritization == 2];
                                                if (prioritization == 1)
                                                {
                                                  *&v164 = 39.0;
                                                }

                                                [*v163 setFocalLenIn35mmFilm:v164];
                                                LODWORD(v165) = 1.0;
                                                [*v163 setFocusDisparity:v165];
                                                v13[368] = 0;
                                                if (v217)
                                                {
                                                  objc_initWeak(&location, v13);
                                                  v231[0] = MEMORY[0x277D85DD0];
                                                  v231[1] = 3221225472;
                                                  v231[2] = __122__PTEffectRenderer_initWithDescriptor_metalContext_depthPrioritization_humanDetections_prevTemporalState_sharedResources___block_invoke;
                                                  v231[3] = &unk_278523738;
                                                  objc_copyWeak(&v234, &location);
                                                  v166 = descriptorCopy;
                                                  v232 = v166;
                                                  v233 = resourcesCopy;
                                                  v167 = MEMORY[0x22AA50020](v231);
                                                  if (([*(v13 + 40) activeEffectType] & 0x48) != 0)
                                                  {
                                                    v167[2](v167);
                                                  }

                                                  else
                                                  {
                                                    asyncInitQueue = [v166 asyncInitQueue];
                                                    dispatch_async(asyncInitQueue, v167);
                                                  }

                                                  [v166 colorSize];
                                                  [PTEffectPersonSegmentation segmentationSizeForColorSize:?];
                                                  v176 = *(v13 + 19);
                                                  *&v237 = v177;
                                                  *(&v237 + 1) = v178;
                                                  v238 = 1;
                                                  v179 = [v176 addAdditionalOutput:&v237 allowCompressed:0 pixelFormat:1111970369 highQuality:1];
                                                  v180 = *(v13 + 49);
                                                  *(v13 + 49) = v179;

                                                  objc_destroyWeak(&v234);
                                                  objc_destroyWeak(&location);
                                                }

                                                if ((v216 & 0x40) != 0)
                                                {
                                                  v181 = [[PTBackgroundReplacement alloc] initWithMetalContext:*(v13 + 1) effectDescriptor:*(v13 + 40) sharedSDOFRenderRequest:*(v13 + 29) renderPipeline:*(v13 + 3)];
                                                  v182 = *(v13 + 10);
                                                  *(v13 + 10) = v181;
                                                }

                                                if ((v13[328] & 0x10) == 0)
                                                {
LABEL_184:
                                                  v183 = [PTEffectDebugLayer alloc];
                                                  v184 = *(v13 + 1);
                                                  v185 = *(v13 + 27);
                                                  v186 = *(v13 + 40);
                                                  v187 = *(v13 + 4);
                                                  util = [*(v13 + 55) util];
                                                  v189 = [(PTEffectDebugLayer *)v183 initWithMetalContext:v184 effectRelighting:v185 effectDescritor:v186 renderState:v187 util:util colorConversion:*(v13 + 28) msrColorPyramid:*(v13 + 19) vfxRenderEffect:*(v13 + 50) depthConverter:*(v13 + 53) disparityFixedFocus:*(v13 + 6) faceDisparityArray:*(v13 + 16) focusDisparityRaw:*(v13 + 18) focusDisparityModifiers:*(v13 + 20)];
                                                  v190 = *(v13 + 30);
                                                  *(v13 + 30) = v189;

                                                  v191 = *(v13 + 30);
                                                  if (v191)
                                                  {
                                                    [v191 setReactionProvider:*(v13 + 44)];
                                                    kdebug_trace();
                                                    v19 = v13;
                                                    goto LABEL_216;
                                                  }

                                                  v196 = _PTLogSystem();
                                                  if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                  }

LABEL_214:

LABEL_215:
                                                  v19 = 0;
LABEL_216:
                                                  p_super = &v215->super;
LABEL_217:

                                                  v170 = v220;
LABEL_218:

                                                  goto LABEL_159;
                                                }

                                                renderEffect = [resourcesCopy renderEffect];
                                                if (renderEffect)
                                                {
                                                  renderEffect2 = [resourcesCopy renderEffect];
                                                  v194 = renderEffect2;
                                                  if (renderEffect2)
                                                  {
                                                    [renderEffect2 colorSize];
                                                    v195 = v230;
                                                  }

                                                  else
                                                  {
                                                    v195 = 0;
                                                  }

                                                  if (v195 == v27)
                                                  {
                                                    renderEffect3 = [resourcesCopy renderEffect];
                                                    v198 = renderEffect3;
                                                    if (renderEffect3)
                                                    {
                                                      [renderEffect3 colorSize];
                                                      v199 = v229;
                                                    }

                                                    else
                                                    {
                                                      v199 = 0;
                                                    }

                                                    v200 = v199 == v29;

                                                    if (v200)
                                                    {
                                                      renderEffect4 = [resourcesCopy renderEffect];
                                                      v202 = *(v13 + 50);
                                                      *(v13 + 50) = renderEffect4;

LABEL_202:
                                                      *&v237 = v27;
                                                      *(&v237 + 1) = v29;
                                                      v238 = 1;
                                                      [v13 createVfxTextures:&v237];
                                                      v211 = [[PTDepthConverter alloc] initWithMetalContext:*(v13 + 1)];
                                                      v212 = *(v13 + 53);
                                                      *(v13 + 53) = v211;

                                                      if (*(v13 + 53))
                                                      {
                                                        if (*(v13 + 50) && *(v13 + 52) && *(v13 + 51))
                                                        {
                                                          goto LABEL_184;
                                                        }

                                                        v196 = _PTLogSystem();
                                                        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                                                        {
                                                          [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v196 = _PTLogSystem();
                                                        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                                                        {
                                                          [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                        }
                                                      }

                                                      goto LABEL_214;
                                                    }
                                                  }

                                                  else
                                                  {
                                                  }
                                                }

                                                v203 = [PTVFXRenderEffect alloc];
                                                v204 = *(v13 + 1);
                                                v205 = *(v13 + 28);
                                                prewarmOnly = [descriptorCopy prewarmOnly];
                                                v207 = *(v13 + 54);
                                                v206 = *(v13 + 55);
                                                asyncInitQueue2 = [descriptorCopy asyncInitQueue];
                                                *&v237 = v27;
                                                *(&v237 + 1) = v29;
                                                v238 = 1;
                                                v209 = [(PTVFXRenderEffect *)v203 initWithMetalContext:v204 colorSize:&v237 colorConversion:v205 prewarmOnly:prewarmOnly humanDetections:v207 sharedResources:v206 asyncInitQueue:asyncInitQueue2];
                                                v210 = *(v13 + 50);
                                                *(v13 + 50) = v209;

                                                if (!*(v13 + 50))
                                                {
                                                  v196 = _PTLogSystem();
                                                  if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                  }

                                                  goto LABEL_214;
                                                }

                                                [resourcesCopy setRenderEffect:?];
                                                goto LABEL_202;
                                              }

                                              v174 = _PTLogSystem();
                                              if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
                                              {
                                                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                              }
                                            }

                                            else
                                            {
                                              v174 = _PTLogSystem();
                                              if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
                                              {
                                                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v174 = _PTLogSystem();
                                            if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
                                            {
                                              [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v174 = _PTLogSystem();
                                          if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
                                          {
                                            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                          }
                                        }

                                        goto LABEL_215;
                                      }

                                      v169 = _PTLogSystem();
                                      v170 = v169;
                                      if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
                                      {
                                        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                        goto LABEL_167;
                                      }
                                    }

                                    else
                                    {
                                      v169 = _PTLogSystem();
                                      v170 = v169;
                                      if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
                                      {
                                        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
LABEL_167:
                                        v19 = 0;
                                        v170 = v169;
                                        goto LABEL_218;
                                      }
                                    }

                                    v19 = 0;
                                    goto LABEL_218;
                                  }

                                  v168 = _PTLogSystem();
                                  if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                                  {
                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                  }
                                }

                                else
                                {
                                  v168 = _PTLogSystem();
                                  if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                                  {
                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                  }
                                }
                              }

                              else
                              {
                                v168 = _PTLogSystem();
                                if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                                {
                                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                }
                              }
                            }
                          }

                          else
                          {
                            v168 = _PTLogSystem();
                            if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                            {
                              [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                            }
                          }
                        }

                        else
                        {
                          v168 = _PTLogSystem();
                          if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                          {
                            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                          }
                        }
                      }

                      else
                      {
                        v168 = _PTLogSystem();
                        if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                        {
                          [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                        }
                      }
                    }

                    else
                    {
                      v168 = _PTLogSystem();
                      if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                      {
                        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                      }
                    }
                  }

                  else
                  {
                    v168 = _PTLogSystem();
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                    {
                      [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                    }
                  }
                }

                else
                {
                  v168 = _PTLogSystem();
                  if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                  {
                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                  }
                }
              }

              else
              {
                v168 = _PTLogSystem();
                if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                {
                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                }
              }
            }

            else
            {
              if (!v217)
              {
                v73 = 0;
                height = 0;
                width = 0;
                goto LABEL_62;
              }

              [descriptorCopy colorSize];
              [PTEffectPersonSegmentation segmentationSizeForColorSize:?];
              v79 = v78;
              v81 = v80;
              v82 = [PTMSRResize alloc];
              v83 = *(v13 + 1);
              v245 = v79;
              *&v246 = v81;
              *(&v246 + 1) = 1;
              *&v237 = v27;
              *(&v237 + 1) = v29;
              v238 = 1;
              v84 = [(PTMSRResize *)v82 initWithMetalContext:v83 inputSize:&v237 targetSize:&v245 rotateTargetPixelBuffer:0 compressedIntermediates:0 sRGB:0 sharedResources:resourcesCopy];
              v85 = *(v13 + 19);
              *(v13 + 19) = v84;

              if (*(v13 + 19))
              {
                v73 = 0;
                height = 0;
                width = 0;
                goto LABEL_68;
              }

              v168 = _PTLogSystem();
              if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
              {
                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
              }
            }

            goto LABEL_158;
          }

          v57 = _PTLogSystem();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
          }
        }

        else
        {
          v57 = _PTLogSystem();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
          }
        }

        goto LABEL_158;
      }
    }

    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
    }

    v19 = 0;
LABEL_160:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __122__PTEffectRenderer_initWithDescriptor_metalContext_depthPrioritization_humanDetections_prevTemporalState_sharedResources___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = [PTEffectPersonSegmentation alloc];
    v4 = v14[1];
    [*(a1 + 32) colorSize];
    v6 = v5;
    v8 = v7;
    v9 = v14[19];
    v10 = [*(a1 + 32) prewarmOnly];
    v11 = [*(a1 + 32) asyncInitQueue];
    v12 = [(PTEffectPersonSegmentation *)v3 initWithMetalContext:v4 colorSize:v9 msrColorPyramid:v10 prewarmOnly:v11 asyncInitQueue:*(a1 + 40) sharedResources:v6, v8];
    v13 = v14[48];
    v14[48] = v12;

    WeakRetained = v14;
  }
}

- (void)createVfxTextures:(id *)textures
{
  v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:-[PTVFXRenderEffect rgbaOutputPixelFormat](self->_vfxEffect width:"rgbaOutputPixelFormat") height:textures->var0 mipmapped:textures->var1, 0];
  [v12 setUsage:7];
  [v12 setStorageMode:0];
  device = [(PTMetalContext *)self->_metalContext device];
  v6 = [device newTextureWithDescriptor:v12];
  vfxRenderTarget = self->_vfxRenderTarget;
  self->_vfxRenderTarget = v6;

  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:-[PTVFXRenderEffect depthOutputPixelFormat](self->_vfxEffect width:"depthOutputPixelFormat") height:textures->var0 mipmapped:textures->var1, 0];
  [v8 setUsage:7];
  [v8 setStorageMode:0];
  device2 = [(PTMetalContext *)self->_metalContext device];
  v10 = [device2 newTextureWithDescriptor:v8];
  vfxDepthBuffer = self->_vfxDepthBuffer;
  self->_vfxDepthBuffer = v10;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  CVPixelBufferRelease(self->_intermediateColorPixelbuffers[0]);
  CVPixelBufferRelease(self->_intermediateColorPixelbuffers[1]);
  v4.receiver = self;
  v4.super_class = PTEffectRenderer;
  [(PTEffectRenderer *)&v4 dealloc];
}

- (id)copyTemporalState:(id)state
{
  stateCopy = state;
  v5 = [[PTEffectTemporalState alloc] initWithMetalContext:self->_metalContext];
  [(PTEffectTemporalState *)v5 saveState:stateCopy cvmNetwork:self->_cvmNetwork msrColorPyramid:self->_msrColorPyramid];

  return v5;
}

- (void)reset:(id)reset
{
  self->_frameIndex = 0;
  self->_networkFrameIndex = 0;
  [(PTEffectTemporalFilter *)self->_temporalFilter reset];
  [(PTCVMNetwork *)self->_cvmNetwork reset];
  [(PTEffectRelighting *)self->_effectRelighting reset];
  personSegmentation = self->_personSegmentation;

  [(PTEffectPersonSegmentation *)personSegmentation reset];
}

- (int)render:(id)render waitUntilCompleted:(BOOL)completed gpuCompleted:(id)gpuCompleted
{
  completedCopy = completed;
  *(&v219[1] + 4) = *MEMORY[0x277D85DE8];
  renderCopy = render;
  gpuCompletedCopy = gpuCompleted;
  v202 = objc_opt_new();
  if ([(PTMetalContext *)self->_metalContext isCommandBufferCommitted])
  {
    v8 = 0;
  }

  else
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTEffect render:];
    }

    v8 = -9;
  }

  v207 = v8;
  [renderCopy frameTimeSeconds];
  intermediateColor = self->_intermediateColor;
  if (!self->_intermediateColor[0])
  {
    v24 = 0;
    intermediateColorPixelbuffers = self->_intermediateColorPixelbuffers;
    v26 = 1;
    do
    {
      v27 = v26;
      CVBufferPropagateAttachments([renderCopy inColorBuffer], intermediateColorPixelbuffers[v24]);
      v28 = intermediateColorPixelbuffers[v24];
      device = [(PTMetalContext *)self->_metalContext device];
      v30 = [PTTexture createFromPixelbuffer:v28 device:device textureCache:self->_textureCache metalYCBCRConversion:1 read:1 write:1];
      v31 = intermediateColor[v24];
      intermediateColor[v24] = v30;

      if (!intermediateColor[v24])
      {
        v32 = _PTLogSystem();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [PTEffectRenderer render:v218 waitUntilCompleted:v219 gpuCompleted:v32];
        }
      }

      v26 = 0;
      v24 = 1;
    }

    while ((v27 & 1) != 0);
  }

  v11 = self->_availableEffectTypes & [renderCopy effectType];
  v12 = (v11 & 0x40) == 0;
  if (self->_personSegmentation || (v11 & 0x40) == 0)
  {
    v13 = [(PTBackgroundReplacement *)self->_backgroundReplacement updateAndGetBackgroundState:renderCopy frameIndex:self->_frameIndex];
  }

  else
  {
    v13 = 0;
    v11 &= ~0x40uLL;
    v12 = 1;
  }

  inColorBuffer = [renderCopy inColorBuffer];
  outColorBuffer = [renderCopy outColorBuffer];
  v15 = !v12 && [renderCopy inBackgroundReplacementBuffer] || v13 != 0;
  v208 = v15;
  v16 = 0;
  v188 = v13;
  v18 = v13 != 4 && v13 != 1;
  v19 = v11 & v18;
  if ((v11 & 2) == 0 && (v19 & 1) == 0 && !v208)
  {
    v16 = [renderCopy outColorBuffer] != 0;
  }

  v192 = v16;
  [renderCopy remappedAperture];
  v21 = v20;
  context = objc_autoreleasePoolPush();
  reactions = [renderCopy reactions];
  reactionsToRender = self->_reactionsToRender;

  if (reactions == reactionsToRender)
  {
    [renderCopy setReactions:0];
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
LABEL_27:
    [renderCopy setGestureCount:0];
    goto LABEL_37;
  }

  [(PTEffectRenderer *)self runGestureDetection:renderCopy asyncWork:v202];
LABEL_37:
  v33 = (v11 >> 3) & 1 | v208;
  v34 = v11 & 2;
  v201 = (v11 & 0x10) != 0 && [(PTVFXRenderEffect *)self->_vfxEffect updateWithRenderRequest:renderCopy lastFrameTime:self->_lastFrameTime];
  v191 = (v11 >> 2) & 1;
  if ((v11 & 2) != 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = v19;
  }

  v190 = v191 & v33 | v208;
  if (v35)
  {
    v36 = 1;
  }

  else
  {
    v36 = ((v191 & v33 | v208) ^ 1) & v201;
  }

  v205 = v19;
  if (!v208)
  {
LABEL_52:
    if ((v36 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  if ((v11 & 2) == 0)
  {
    LOBYTE(v36) = v36 & ((v188 & 0xFFFFFFFFFFFFFFFELL) == 2);
    goto LABEL_52;
  }

  studiolightFromSegmentation = self->_studiolightFromSegmentation;
  if (studiolightFromSegmentation & v36)
  {
    if ((v188 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
LABEL_50:
      v209 = 0;
      v189 = 0;
      v38 = (v11 & 8) != 0 || v208;
      goto LABEL_54;
    }
  }

  else if (studiolightFromSegmentation)
  {
    goto LABEL_50;
  }

LABEL_53:
  v189 = [(PTHumanDetections *)self->_humanDetections detectionsRawCount]> 0;
  v38 = 1;
  v209 = 1;
LABEL_54:
  frameTimeSeconds = [renderCopy frameTimeSeconds];
  v41 = v40 - self->_lastFrameTime;
  if (v41 > 1.0)
  {
    self->_frameIndex = 0;
  }

  v204 = v11 & 2;
  if ((v11 >> 3) & 1 | v208 && (v41 > 1.0 || !self->_renderSegmentationPreviousFrame))
  {
    v42 = _PTLogSystem();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2243FB000, v42, OS_LOG_TYPE_INFO, "Reset segmentation network", buf, 2u);
    }

    frameTimeSeconds = [(PTEffectPersonSegmentation *)self->_personSegmentation reset];
    v34 = v11 & 2;
  }

  self->_renderSegmentationPreviousFrame = (v11 & 8) != 0 || v208;
  if (v209 && (v41 > 1.0 || !self->_runCVMNetworkPreviousFrame))
  {
    v43 = _PTLogSystem();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2243FB000, v43, OS_LOG_TYPE_INFO, "Reset network", buf, 2u);
    }

    [(PTCVMNetwork *)self->_cvmNetwork reset];
    frameTimeSeconds = [(PTEffectTemporalFilter *)self->_temporalFilter reset];
    v34 = v11 & 2;
  }

  self->_runCVMNetworkPreviousFrame = v209;
  if (v34 && (v41 > 1.0 || !self->_renderStudioLightPreviousFrame))
  {
    v44 = _PTLogSystem();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2243FB000, v44, OS_LOG_TYPE_INFO, "Reset studio light", buf, 2u);
    }

    frameTimeSeconds = [(PTEffectRelighting *)self->_effectRelighting reset];
    v34 = v11 & 2;
  }

  self->_renderStudioLightPreviousFrame = v34 >> 1;
  PTDefaultsFlush(frameTimeSeconds);
  v195 = PTDefaultsPublicGetDictionary();
  v194 = [v195 objectForKeyedSubscript:@"PTEffectDebug"];
  v203 = v11;
  v45 = [v194 intValue] > 0 || self->_debugType != 0;
  device2 = [(PTMetalContext *)self->_metalContext device];
  v206 = [PTTexture createFromPixelbuffer:inColorBuffer device:device2 textureCache:self->_textureCache metalYCBCRConversion:1 read:1 write:0];

  if (outColorBuffer)
  {
    device3 = [(PTMetalContext *)self->_metalContext device];
    v48 = [PTTexture createFromPixelbuffer:outColorBuffer device:device3 textureCache:self->_textureCache metalYCBCRConversion:1 read:v45 write:1];
  }

  else
  {
    v48 = 0;
  }

  v49 = objc_opt_new();
  [v49 addObject:v206];
  if (v204)
  {
    [v49 addObject:{intermediateColor[objc_msgSend(v49, "count") & 1]}];
  }

  if (v205)
  {
    [v49 addObject:{intermediateColor[objc_msgSend(v49, "count") & 1]}];
  }

  if (v208)
  {
    [v49 addObject:{intermediateColor[objc_msgSend(v49, "count") & 1]}];
  }

  if (v48)
  {
    [v49 replaceObjectAtIndex:objc_msgSend(v49 withObject:{"count") - 1, v48}];
  }

  v197 = v48;
  asRGBAFromYUV = [v206 asRGBAFromYUV];

  v51 = v204;
  if ([v49 count] && !asRGBAFromYUV)
  {
    do
    {
      v52 = [v49 objectAtIndexedSubscript:asRGBAFromYUV];
      asRGBAFromYUV2 = [v52 asRGBAFromYUV];

      if (asRGBAFromYUV2)
      {
        v54 = [v49 objectAtIndexedSubscript:asRGBAFromYUV];
        asYUV = [v54 asYUV];
        [v49 replaceObjectAtIndex:asRGBAFromYUV withObject:asYUV];
      }

      ++asRGBAFromYUV;
    }

    while ([v49 count] > asRGBAFromYUV);
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_102;
  }

  if (v204)
  {
    v56 = 1;
  }

  else
  {
    v56 = v209;
  }

  [(PTMSRResize *)self->_msrColorPyramid setEnablePyramidDownsampling:v56];
  [(PTMSRResizeAdditionalOutput *)self->_personSegmentationInput setEnabled:v33 & 1];
  v207 |= [(PTMSRResize *)self->_msrColorPyramid downsample:inColorBuffer];
  if (!v207)
  {
    v207 = 0;
LABEL_102:
    v58 = v205;
    goto LABEL_103;
  }

  v57 = _PTLogSystem();
  v58 = v205;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    [PTCVMNetwork executeNetwork:];
  }

LABEL_103:
  if (v209)
  {
    commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!commandBuffer)
    {
      v60 = _PTLogSystem();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer2 setLabel:@"PTEffectRenderer prepare disparity filter"];

    temporalFilter = self->_temporalFilter;
    commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
    targetRGBA = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
    [(PTEffectTemporalFilter *)temporalFilter prepareFilter:commandBuffer3 opticalFlowRGB:targetRGBA frameIndex:self->_networkFrameIndex];

    [(PTMetalContext *)self->_metalContext commit];
    if ([renderCopy inExternalDisparityBuffer])
    {
      inExternalDisparityBuffer = [renderCopy inExternalDisparityBuffer];
      device4 = [(PTMetalContext *)self->_metalContext device];
      outDisparity = [PTPixelBufferUtil createTextureFromPixelBuffer:inExternalDisparityBuffer device:device4 textureCache:self->_textureCache sRGB:0];
    }

    else
    {
      [(PTCVMNetwork *)self->_cvmNetwork executeNetwork:self->_networkFrameIndex];
      outDisparity = [(PTCVMNetwork *)self->_cvmNetwork outDisparity];
    }

    commandBuffer4 = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!commandBuffer4)
    {
      v69 = _PTLogSystem();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer5 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer5 setLabel:@"PTEffectRenderer filter disparity and normal."];

    [(PTHumanDetections *)self->_humanDetections detectionsRawCount];
    if (v204)
    {
      [(PTNormalAndDiffuseEstimation *)self->_diffuseEstimation estimateDiffuseFromDisparity:outDisparity outDiffuse:self->_diffuse];
    }

    v72 = 1.0;
    if ([(PTCVMNetwork *)self->_cvmNetwork networkVersionID]== 7)
    {
      depthPrioritization = [(PTCVMNetwork *)self->_cvmNetwork depthPrioritization];
      LODWORD(v71) = 1070138536;
      if (depthPrioritization != 2)
      {
        *&v71 = 1.0;
      }

      if (depthPrioritization == 1)
      {
        v72 = 1.941;
      }

      else
      {
        v72 = *&v71;
      }
    }

    v74 = self->_temporalFilter;
    commandBuffer6 = [(PTMetalContext *)self->_metalContext commandBuffer];
    if (v204)
    {
      diffuse = self->_diffuse;
    }

    else
    {
      diffuse = 0;
    }

    LODWORD(v187) = self->_networkFrameIndex;
    *&v76 = v72;
    [(PTEffectTemporalFilter *)v74 filter:commandBuffer6 inDisparity:outDisparity inNormal:0 inDiffuse:diffuse filterNormalSpatial:1 filterDiffuseSpatial:1 frameIndex:v76 disparityScale:v187];

    v58 = v205;
  }

  if ((v33 & 1) == 0)
  {
    v200 = 0;
    v80 = v203;
    goto LABEL_141;
  }

  [(PTMetalContext *)self->_metalContext commit];
  if ([renderCopy outPersonSegmentationMatteBuffer])
  {
    outPersonSegmentationMatteBuffer = [renderCopy outPersonSegmentationMatteBuffer];
    device5 = [(PTMetalContext *)self->_metalContext device];
    v200 = [PTPixelBufferUtil createTextureFromPixelBuffer:outPersonSegmentationMatteBuffer device:device5];

LABEL_133:
    personSegmentation = self->_personSegmentation;
    commandBuffer7 = [(PTMetalContext *)self->_metalContext commandBuffer];
    if (renderCopy)
    {
      [renderCopy transform];
    }

    else
    {
      v216 = 0u;
      v217 = 0u;
      *buf = 0u;
    }

    pixelbuffer = [(PTMSRResizeAdditionalOutput *)self->_personSegmentationInput pixelbuffer];
    texture = [(PTMSRResizeAdditionalOutput *)self->_personSegmentationInput texture];
    v207 |= [(PTEffectPersonSegmentation *)personSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:commandBuffer7 inColor:v206 transform:buf inSegmentationRGBA:pixelbuffer inSegmentationRGBATexture:texture outUpscaledSegmentation:v200];

    [(PTMetalContext *)self->_metalContext commit];
    commandBuffer8 = [(PTMetalContext *)self->_metalContext commandBuffer];

    v80 = v203;
    v58 = v205;
    if (!commandBuffer8)
    {
      v87 = _PTLogSystem();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer9 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer9 setLabel:@"PTEffectRenderer renderPostSegmentationMask"];

LABEL_141:
    if (v189 || [(PTVFXRenderEffect *)self->_vfxEffect emitNewReaction])
    {
      if ([(PTVFXRenderEffect *)self->_vfxEffect emitNewReaction])
      {
        v89 = [(PTHumanDetections *)self->_humanDetections detectionsRawCount]== 0;
      }

      else
      {
        v89 = 0;
      }

      v90 = [(PTHumanDetections *)self->_humanDetections faceDetectionsFilteredState:v89];
      effectUtil = [(PTEffectResources *)self->_sharedResources effectUtil];
      commandBuffer10 = [(PTMetalContext *)self->_metalContext commandBuffer];
      faceDetectionsRaw = [(PTHumanDetections *)self->_humanDetections faceDetectionsRaw];
      focusDisparityMax = self->_focusDisparityMax;
      disparityFiltered = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
      *&v96 = focusDisparityMax;
      [effectUtil sampleFaceRects:commandBuffer10 maxFaceRects:4 faceRects:faceDetectionsRaw faceRectsState:v90 focusDisparityMax:disparityFiltered inDisparity:self->_faceDisparityArray outFaceDistanceArray:v96];

      effectUtil2 = [(PTEffectResources *)self->_sharedResources effectUtil];
      commandBuffer11 = [(PTMetalContext *)self->_metalContext commandBuffer];
      detectionsRawCount = [(PTHumanDetections *)self->_humanDetections detectionsRawCount];
      focusDisparityUpdateCoefficientSDOF = self->_focusDisparityUpdateCoefficientSDOF;
      focusDisparityUpdateCoefficientStudioLight = self->_focusDisparityUpdateCoefficientStudioLight;
      v102 = self->_networkFrameIndex == 0;
      emitNewReaction = [(PTVFXRenderEffect *)self->_vfxEffect emitNewReaction];
      focusOnAll = [renderCopy focusOnAll];
      *&v105 = self->_disparityFocusOffsetSDOF.disparityOffsetFactor;
      *&v106 = self->_disparityFocusOffsetSDOF.offsetInMeters;
      *&v107 = self->_disparityFocusOffsetReactions.disparityOffsetFactor;
      *&v108 = self->_disparityFocusOffsetReactions.offsetInMeters;
      *&v109 = self->_disparityFocusOffsetStudioLight.disparityOffsetFactor;
      *&v110 = self->_disparityFocusOffsetStudioLight.offsetInMeters;
      *&v111 = focusDisparityUpdateCoefficientSDOF;
      *&v112 = focusDisparityUpdateCoefficientStudioLight;
      [effectUtil2 updateFocusObject:commandBuffer11 faceRectCount:detectionsRawCount disparityFocusOffsetSDOF:v90 disparityFocusOffsetReactions:v102 disparityFocusOffsetStudioLight:emitNewReaction exponentialMovingAverageSDOF:focusOnAll exponentialMovingAverageStudioLight:v105 faceRectsState:v106 isFirstFrame:v107 emitNewReaction:v108 focusOnAll:v109 lastFocus:v110 inFaceDisparityArray:v111 outDisparityModifiers:v112 outDisparityFocus:self->_lastFocus outStudioLightEffectModifier:self->_faceDisparityArray outUseDisparityBufferForReactions:{self->_focusDisparityModifiers, self->_focusDisparityRaw, self->_studioLightEffectModifier, self->_useDisparityBufferForReactions}];

      v80 = v203;
      v51 = v204;
      v58 = v205;
    }

    v113 = v58 | v201 & ~v190;
    diffuseFiltered = [(PTEffectTemporalFilter *)self->_temporalFilter diffuseFiltered];
    if (v51)
    {
      if (self->_studiolightFromSegmentation && v208)
      {
        v115 = [(PTEffectRelighting *)self->_effectRelighting approximateDiffuseFromSegmentation:v200];
        backgroundReplacement = self->_backgroundReplacement;
        if (backgroundReplacement && (v188 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [(PTBackgroundReplacement *)backgroundReplacement transitionTimeNormalized:renderCopy];
          if (v188 == 3)
          {
            v118 = 1.0 - v117;
          }

          else
          {
            v118 = v117;
          }

          textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
          commandBuffer12 = [(PTMetalContext *)self->_metalContext commandBuffer];
          *&v121 = v118;
          [textureUtil mix:commandBuffer12 inTexX:diffuseFiltered inTexY:v115 outTex:v115 alpha:v121];
        }

        v122 = v115;

        diffuseFiltered = v122;
      }

      [(PTMetalContext *)self->_metalContext commit];
      [(PTEffectRelighting *)self->_effectRelighting estimateLightIntensity:v206 inFaceRects:[(PTHumanDetections *)self->_humanDetections faceDetectionsRaw] numberOfFaceRects:[(PTHumanDetections *)self->_humanDetections detectionsRawCount] humanDetections:self->_humanDetections effectRenderRequest:renderCopy asyncWork:v202];
      commandBuffer13 = [(PTMetalContext *)self->_metalContext commandBuffer];

      if (!commandBuffer13)
      {
        v124 = _PTLogSystem();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
        }
      }

      commandBuffer14 = [(PTMetalContext *)self->_metalContext commandBuffer];
      [commandBuffer14 setLabel:@"PTEffectRenderer renderPostLightEstimation"];

      [(PTHumanDetections *)self->_humanDetections detectionsRawCount];
      effectRelighting = self->_effectRelighting;
      v127 = [v49 objectAtIndexedSubscript:0];
      if (v209)
      {
        disparityFiltered2 = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
      }

      else
      {
        disparityFiltered2 = 0;
      }

      focusDisparityModifiers = self->_focusDisparityModifiers;
      v130 = [v49 objectAtIndexedSubscript:1];
      [renderCopy relightStrengthStudioLight];
      [PTEffectRelighting studioLightInColor:"studioLightInColor:inDiffuse:inDisparity:inFocusDisparityModifier:outColor:relightStrength:studioLightFromSegmentationBlend:studioLightEffectModifier:" inDiffuse:v127 inDisparity:diffuseFiltered inFocusDisparityModifier:disparityFiltered2 outColor:focusDisparityModifiers relightStrength:v130 studioLightFromSegmentationBlend:self->_studioLightEffectModifier studioLightEffectModifier:?];

      if (v209)
      {
      }

      [v49 removeObjectAtIndex:0];
      v80 = v203;
      v58 = v205;
    }

    v131 = v113 & v209;
    if (v58)
    {
      colorPyramid = self->_colorPyramid;
      commandBuffer15 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v134 = [v49 objectAtIndexedSubscript:0];
      [(PTPyramid *)colorPyramid updatePyramid:commandBuffer15 inPTTexture:v134];

      if (!v131)
      {
LABEL_168:
        if (!v58)
        {
          goto LABEL_187;
        }

        goto LABEL_179;
      }
    }

    else if (!v131)
    {
      goto LABEL_168;
    }

    if (v201)
    {
      disparityCenteredUpscaledReactions = self->_disparityCenteredUpscaledReactions;
    }

    else
    {
      disparityCenteredUpscaledReactions = 0;
    }

    v136 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_disparityCenteredUpscaledSDOF, disparityCenteredUpscaledReactions, 0}];
    guidedFilter = self->_guidedFilter;
    commandBuffer16 = [(PTMetalContext *)self->_metalContext commandBuffer];
    disparityFiltered3 = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
    v140 = [(PTGuidedFilter *)guidedFilter guidedFilter:commandBuffer16 image:disparityFiltered3 guideRGBACoefficients:self->_guideRGBACoefficients guideRGBAUpscale:self->_guideRGBAUpscale upscaledImageArray:v136 sourceColorBitDepth:8 postModifierBuffer:self->_focusDisparityModifiers]| v207;

    v207 = v140;
    v80 = v203;
    if (v140)
    {
      v141 = _PTLogSystem();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer render:waitUntilCompleted:gpuCompleted:];
      }
    }

    if (!v58)
    {
LABEL_187:
      if (v208)
      {
        v168 = self->_backgroundReplacement;
        commandBuffer17 = [(PTMetalContext *)self->_metalContext commandBuffer];
        v170 = [v49 objectAtIndexedSubscript:0];
        v171 = self->_colorPyramid;
        v172 = [v49 objectAtIndexedSubscript:1];
        LODWORD(v187) = self->_frameIndex;
        v173 = v171;
        v80 = v203;
        [(PTBackgroundReplacement *)v168 replaceBackground:commandBuffer17 inColor:v170 inColorPyramid:v173 inSegmentation:v200 effectRenderRequest:renderCopy outColor:v172 frameIndex:v187];

        [v49 removeObjectAtIndex:0];
      }

      [renderCopy setOutColorBufferWriteSkipped:0];
      if (!v192)
      {
        goto LABEL_197;
      }

      if ([(PTEffectDescriptor *)self->_effectDescriptor allowSkipOutColorBufferWrite])
      {
        activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
        if ([activeReactions count])
        {
        }

        else
        {
          debugType = self->_debugType;

          if (!debugType)
          {
            [renderCopy setOutColorBufferWriteSkipped:1];
            goto LABEL_197;
          }
        }
      }

      [(PTEffectRenderer *)self copyInColor:v206 toOutColor:v197];
LABEL_197:
      if (((v191 | !v201) & 1) == 0)
      {
        commandBuffer18 = [(PTMetalContext *)self->_metalContext commandBuffer];
        v207 |= [(PTEffectRenderer *)self renderReaction:commandBuffer18 effectRenderRequest:renderCopy];
      }

      asyncProcessingQueue = [(PTEffectDescriptor *)self->_effectDescriptor asyncProcessingQueue];
      commandBuffer19 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = __59__PTEffectRenderer_render_waitUntilCompleted_gpuCompleted___block_invoke;
      v212[3] = &unk_278523760;
      v213 = v202;
      v179 = asyncProcessingQueue;
      v214 = v179;
      [commandBuffer19 addScheduledHandler:v212];

      commandBuffer20 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v210[0] = MEMORY[0x277D85DD0];
      v210[1] = 3221225472;
      v210[2] = __59__PTEffectRenderer_render_waitUntilCompleted_gpuCompleted___block_invoke_2;
      v210[3] = &unk_278523788;
      v211 = gpuCompletedCopy;
      [commandBuffer20 addCompletedHandler:v210];

      metalContext = self->_metalContext;
      if (completedCopy)
      {
        [(PTMetalContext *)metalContext commitAndWaitUntilCompleted];
      }

      else
      {
        [(PTMetalContext *)metalContext commitAndWaitUntilScheduled];
      }

      if (v209)
      {
        ++self->_networkFrameIndex;
      }

      [renderCopy frameTimeSeconds];
      self->_lastFrameTime = v182;

      v183 = 1;
      goto LABEL_205;
    }

LABEL_179:
    v142 = [v49 objectAtIndexedSubscript:0];
    [(PTRenderRequest *)self->_sdofRenderRequest setSourceColor:v142];

    v143 = [v49 objectAtIndexedSubscript:1];
    [(PTRenderRequest *)self->_sdofRenderRequest setDestinationColor:v143];

    LODWORD(v144) = v21;
    [(PTRenderRequest *)self->_sdofRenderRequest setFNumber:v144];
    if ((v80 & 4) != 0)
    {
      effectUtil3 = [(PTEffectResources *)self->_sharedResources effectUtil];
      commandBuffer21 = [(PTMetalContext *)self->_metalContext commandBuffer];
      [renderCopy inScreenCaptureRect];
      v148 = v147;
      v150 = v149;
      v152 = v151;
      v154 = v153;
      p_disparityCenteredUpscaledWithScreenCaptureRect = &self->_disparityCenteredUpscaledWithScreenCaptureRect;
      disparityCenteredUpscaledWithScreenCaptureRect = self->_disparityCenteredUpscaledWithScreenCaptureRect;
      disparityCenteredUpscaledSDOF = self->_disparityCenteredUpscaledSDOF;
      [(PTRenderRequest *)self->_sdofRenderRequest focalLenIn35mmFilm];
      v159 = v158;
      [(PTRenderRequest *)self->_sdofRenderRequest fNumber];
      LODWORD(v161) = v160;
      v162 = disparityCenteredUpscaledSDOF;
      v80 = v203;
      LODWORD(v163) = v159;
      [effectUtil3 updateDisparity:commandBuffer21 inScreenCaptureRect:v162 inDisparity:disparityCenteredUpscaledWithScreenCaptureRect outDisparity:v148 focalLenIn35mmFilm:v150 fNumber:{v152, v154, v163, v161}];
    }

    else
    {
      p_disparityCenteredUpscaledWithScreenCaptureRect = &self->_disparityCenteredUpscaledSDOF;
    }

    [(PTRenderRequest *)self->_sdofRenderRequest setSourceDisparity:*p_disparityCenteredUpscaledWithScreenCaptureRect];
    renderPipeline = self->_renderPipeline;
    commandBuffer22 = [(PTMetalContext *)self->_metalContext commandBuffer];
    v166 = [(PTRenderPipeline *)renderPipeline encodeRenderTo:commandBuffer22 withRenderRequest:self->_sdofRenderRequest]| v207;

    v207 = v166;
    if (v166)
    {
      v167 = _PTLogSystem();
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer render:waitUntilCompleted:gpuCompleted:];
      }
    }

    [v49 removeObjectAtIndex:0];
    goto LABEL_187;
  }

  upscaledPersonSegmentation = self->_upscaledPersonSegmentation;
  if (upscaledPersonSegmentation)
  {
    v200 = upscaledPersonSegmentation;
    goto LABEL_133;
  }

  v200 = _PTLogSystem();
  if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
  {
    [PTEffectRenderer render:waitUntilCompleted:gpuCompleted:];
  }

  v183 = 0;
  v80 = v203;
LABEL_205:

  objc_autoreleasePoolPop(context);
  if (v183)
  {
    if ([(PTMetalContext *)self->_metalContext isCommandBufferCommitted])
    {
      v184 = v207;
    }

    else
    {
      v185 = _PTLogSystem();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }

      v184 = v207 | 0xFFFFFFF7;
    }

    ++self->_frameIndex;
    self->_lastEffectType = v80;
  }

  else
  {
    v184 = -10;
  }

  return v184;
}

void __59__PTEffectRenderer_render_waitUntilCompleted_gpuCompleted___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        dispatch_async(*(a1 + 40), *(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)copyInColor:(id)color toOutColor:(id)outColor
{
  outColorCopy = outColor;
  asYUV = [color asYUV];
  asYUV2 = [outColorCopy asYUV];

  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

  if (!commandBuffer)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
  [commandBuffer2 setLabel:@"PTEffectRenderer renderByPass"];

  textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
  commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
  texLuma = [asYUV texLuma];
  texLuma2 = [asYUV2 texLuma];
  [textureUtil copy:commandBuffer3 inTex:texLuma outTex:texLuma2];

  textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
  commandBuffer4 = [(PTMetalContext *)self->_metalContext commandBuffer];
  texChroma = [asYUV texChroma];
  texChroma2 = [asYUV2 texChroma];
  [textureUtil2 copy:commandBuffer4 inTex:texChroma outTex:texChroma2];
}

- (BOOL)isRenderRequiredForRequest:(id)request
{
  requestCopy = request;
  effectType = [requestCopy effectType];
  if (self->_frameIndex)
  {
    v6 = (effectType & 0x4F) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = effectType;
  if ([(PTBackgroundReplacement *)self->_backgroundReplacement updateAndGetBackgroundState:requestCopy frameIndex:?])
  {
    goto LABEL_7;
  }

  if ((v7 & 0x10) != 0)
  {
    activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
    if ([activeReactions count])
    {

      goto LABEL_7;
    }

    reactions = [requestCopy reactions];
    v17 = [reactions count];

    if (v17)
    {
      goto LABEL_7;
    }
  }

  [requestCopy frameTimeSeconds];
  if ((v7 & 0x20) == 0)
  {
LABEL_11:
    [requestCopy frameTimeSeconds];
    v8 = 0;
    self->_lastFrameTime = v11;
    *&self->_runCVMNetworkPreviousFrame = 0;
    self->_networkFrameIndex = 0;
    goto LABEL_8;
  }

  reactionProvider = self->_reactionProvider;
  if (reactionProvider)
  {
    v14 = v10;
    latestReactions = [(PTEffectReactionProvider *)reactionProvider latestReactions];
    if ([latestReactions count])
    {
    }

    else
    {
      v18 = self->_reactionProvider;
      v20[0] = (v14 * 100000.0);
      v20[1] = 0x1000186A0;
      v20[2] = 0;
      v19 = [(PTEffectReactionProvider *)v18 runGestureDetectionForTimeStamp:v20];

      if (!v19)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_7:
  v8 = 1;
LABEL_8:

  return v8;
}

- (int)runGestureDetection:(id)detection asyncWork:(id)work
{
  v59 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  workCopy = work;
  detectedObjects = [detectionCopy detectedObjects];
  v9 = [detectedObjects objectForKeyedSubscript:@"DetectedObjectsInfo"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;

    detectedObjects = v11;
  }

  v12 = [detectedObjects objectForKeyedSubscript:@"HumanHands"];
  v13 = [v12 objectForKeyedSubscript:@"ObjectsArray"];

  v14 = [detectedObjects objectForKeyedSubscript:@"HumanFaces"];
  v15 = [v14 objectForKeyedSubscript:@"ObjectsArray"];

  if (!detectedObjects || self->_reactionProvider)
  {
    if (self->_externalHandDetectionsAvailable && !v13)
    {
      v22 = _PTLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer runGestureDetection:asyncWork:];
      }
    }
  }

  else
  {
    self->_externalHandDetectionsAvailable = v13 != 0;
    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (self->_externalHandDetectionsAvailable)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *buf = 138412290;
      *&buf[4] = v17;
      _os_log_impl(&dword_2243FB000, v16, OS_LOG_TYPE_INFO, "External hand detections available: %@", buf, 0xCu);
    }

    v18 = [[PTEffectReactionProvider alloc] initWithEffectDescriptor:self->_effectDescriptor sharedResources:self->_sharedResources externalHandDetectionsEnabled:self->_externalHandDetectionsAvailable];
    reactionProvider = self->_reactionProvider;
    self->_reactionProvider = v18;

    v20 = self->_reactionProvider;
    if (!v20)
    {
      v21 = _PTLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer runGestureDetection:asyncWork:];
      }

      v20 = self->_reactionProvider;
    }

    [(PTEffectDebugLayer *)self->_debugLayer setReactionProvider:v20];
  }

  if (self->_reactionProvider)
  {
    v23 = objc_alloc(MEMORY[0x277CBEB18]);
    reactions = [detectionCopy reactions];
    v51 = [v23 initWithArray:reactions];

    [detectionCopy frameTimeSeconds];
    v26 = (v25 * 100000.0);
    if (detectionCopy)
    {
      [detectionCopy transform];
    }

    else
    {
      v58 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v27 = [PTUtil getRotationDegreesFromAffineTransform:buf];
    v28 = self->_reactionProvider;
    inColorBuffer = [detectionCopy inColorBuffer];
    *buf = v26;
    *&buf[8] = 0x1000186A0;
    *&buf[16] = 0;
    [(PTEffectReactionProvider *)v28 updateWithFrame:inColorBuffer withTimeStamp:buf withRotationDegrees:v27 withDetectedHands:v13 withDetectedFaces:v15 asyncWork:workCopy];
    latestReactions = [(PTEffectReactionProvider *)self->_reactionProvider latestReactions];
    v31 = latestReactions;
    if (latestReactions && [latestReactions count])
    {
      v46 = v15;
      v47 = v13;
      v48 = v10;
      v49 = detectedObjects;
      v50 = workCopy;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v45 = v31;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v53;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v53 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v52 + 1) + 8 * i);
            [v37 startTimeSeconds];
            if (v38 < 0.0)
            {
              [detectionCopy frameTimeSeconds];
              [v37 setStartTimeSeconds:?];
              v39 = _PTLogSystem();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                triggerID = [v37 triggerID];
                emoji = [v37 emoji];
                *buf = 134218242;
                *&buf[4] = triggerID;
                *&buf[12] = 2112;
                *&buf[14] = emoji;
                _os_log_debug_impl(&dword_2243FB000, v39, OS_LOG_TYPE_DEBUG, "PTEffect: Detected reaction with ID %li, type %@", buf, 0x16u);
              }
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v34);
      }

      [v51 addObjectsFromArray:v32];
      detectedObjects = v49;
      workCopy = v50;
      v13 = v47;
      v10 = v48;
      v31 = v45;
      v15 = v46;
    }

    v42 = [v51 copy];
    reactionsToRender = self->_reactionsToRender;
    self->_reactionsToRender = v42;

    if (([detectionCopy suppressGestureTriggeredReactions] & 1) == 0)
    {
      [detectionCopy setReactions:self->_reactionsToRender];
    }

    [detectionCopy setGestureCount:{-[NSArray count](self->_reactionsToRender, "count")}];
  }

  return 0;
}

- (int)renderReaction:(id)reaction effectRenderRequest:(id)request
{
  reactionCopy = reaction;
  requestCopy = request;
  v8 = ([requestCopy effectType] & 0x40) != 0 && objc_msgSend(requestCopy, "inBackgroundReplacementBuffer") != 0;
  activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
  vfxRenderTarget = [activeReactions count];

  if (vfxRenderTarget)
  {
    [(PTVFXRenderEffect *)self->_vfxEffect depthNearFar];
    v12 = v11;
    reverseZ = [(PTVFXRenderEffect *)self->_vfxEffect reverseZ];
    [requestCopy outColorROI];
    if (v14 <= 0.0 || ([requestCopy outColorROI], v15 <= 0.0))
    {
      v18 = _PTLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer renderReaction:effectRenderRequest:];
      }

      LODWORD(vfxRenderTarget) = -10;
    }

    else
    {
      if ([requestCopy outPersonSegmentationMatteBuffer])
      {
        outPersonSegmentationMatteBuffer = [requestCopy outPersonSegmentationMatteBuffer];
        device = [(PTMetalContext *)self->_metalContext device];
        v18 = [PTPixelBufferUtil createTextureFromPixelBuffer:outPersonSegmentationMatteBuffer device:device textureCache:self->_textureCache sRGB:0];
      }

      else if (v8)
      {
        v18 = self->_upscaledPersonSegmentation;
      }

      else
      {
        v18 = 0;
      }

      [requestCopy outColorROI];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      LOWORD(v47) = CVPixelBufferGetWidth([requestCopy outColorBuffer]);
      HIWORD(v47) = CVPixelBufferGetHeight([requestCopy outColorBuffer]);
      [PTEffectUtil computeRectInPixelCoordinates:v47 pixelBufferSize:131074 alignment:v20, v22, v24, v26];
      v46 = v27;
      v29 = v28;
      if ([(MTLTexture *)self->_vfxRenderTarget width]!= v28 || [(MTLTexture *)self->_vfxRenderTarget height]!= v46)
      {
        valuePtr[0] = v29;
        valuePtr[1] = v46;
        valuePtr[2] = 1;
        [(PTEffectRenderer *)self createVfxTextures:valuePtr];
      }

      depthConverter = self->_depthConverter;
      if (v18)
      {
        inBilbyAlphaMaskTexture = [requestCopy inBilbyAlphaMaskTexture];
        vfxDepthBuffer = self->_vfxDepthBuffer;
        [requestCopy reactionsCombinedCropRect];
        LODWORD(v33) = 0.75;
        [(PTDepthConverter *)depthConverter segmentationToDepth:reactionCopy inSegmentation:v18 inAlphaMask:inBilbyAlphaMaskTexture outDepth:vfxDepthBuffer depthNearFar:reverseZ segmentationDepthNearFar:v12 reverseZ:5.27765665e13 threshold:v33 cropRect:v34];
      }

      else
      {
        disparityCenteredUpscaledReactions = self->_disparityCenteredUpscaledReactions;
        v36 = self->_vfxDepthBuffer;
        useDisparityBufferForReactions = self->_useDisparityBufferForReactions;
        [requestCopy reactionsCombinedCropRect];
        [(PTDepthConverter *)depthConverter thresholdedDisparityToDepth:reactionCopy inBaseDisparity:disparityCenteredUpscaledReactions outDepth:v36 depthNearFar:reverseZ segmentationDepthNearFar:useDisparityBufferForReactions disparityThresholdNearFar:v12 reverseZ:5.27765665e13 useDisparityBuffer:-5.2386921e-11 cropRect:v38];
      }

      v39 = self->_vfxDepthBuffer;
      vfxRenderTarget = self->_vfxRenderTarget;
      v40 = self->_disparityCenteredUpscaledReactions;
      vfxEffect = self->_vfxEffect;
      disparityFiltered = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
      LODWORD(vfxRenderTarget) = [(PTVFXRenderEffect *)vfxEffect renderWithBackgroundDimming:reactionCopy effectRGBA:vfxRenderTarget inCenteredDisparity:v40 inSegmentation:v18 effectDepth:v39 disparityFiltered:disparityFiltered focusDisparityModifiers:self->_focusDisparityModifiers renderRequest:requestCopy debugType:self->_debugType];

      LODWORD(valuePtr[0]) = [(PTVFXRenderEffect *)self->_vfxEffect maxReactionEffectComplexity];
      outColorBuffer = [requestCopy outColorBuffer];
      v44 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
      CMSetAttachment(outColorBuffer, @"ReactionEffectComplexity", v44, 1u);
    }
  }

  return vfxRenderTarget;
}

- (id)activeReactions
{
  activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
  v3 = [activeReactions copy];

  return v3;
}

+ (BOOL)useStudioLightFromSegmentation:(id)segmentation
{
  v3 = FTGetChipIdentifier();
  if ([v3 isEqualToString:@"H13"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"H14"];
  }

  v5 = ([&stru_2837D16E8 length] != 0) | v4;

  return v5 & 1;
}

- (void)initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDescriptor:(void *)a1 metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.3(void *a1)
{
  [a1 floatValue];
  OUTLINED_FUNCTION_3_7(v1);
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v2, v3, "defaults write com.apple.coremedia PTEffectFocusDisparityMax %f", v4, v5, v6, v7, v8);
}

- (void)initWithDescriptor:(void *)a1 metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.4(void *a1)
{
  [a1 floatValue];
  OUTLINED_FUNCTION_3_7(v1);
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v2, v3, "defaults write com.apple.coremedia PTEffectFocusDisparityExponentialMovingAverage %f", v4, v5, v6, v7, v8);
}

- (void)initWithDescriptor:(void *)a1 metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.5(void *a1)
{
  [a1 floatValue];
  OUTLINED_FUNCTION_3_7(v1);
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v2, v3, "defaults write com.apple.coremedia PTEffectFocusDisparityExponentialMovingAverageStudioLight %f", v4, v5, v6, v7, v8);
}

- (void)initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.15()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)render:(uint8_t *)buf waitUntilCompleted:(void *)a2 gpuCompleted:(os_log_t)log .cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "_intermediateColor[i]";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", buf, 0xCu);
}

- (void)render:waitUntilCompleted:gpuCompleted:.cold.10()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runGestureDetection:asyncWork:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)renderReaction:effectRenderRequest:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end