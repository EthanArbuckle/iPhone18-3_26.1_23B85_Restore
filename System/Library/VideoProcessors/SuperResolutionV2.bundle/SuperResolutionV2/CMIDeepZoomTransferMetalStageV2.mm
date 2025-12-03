@interface CMIDeepZoomTransferMetalStageV2
- (CMIDeepZoomTransferMetalStageV2)initWithMetalContext:(id)context options:(id)options;
- (__n128)tileOverlap;
- (__n128)tileSize;
- (int)clearBuffer:(__CVBuffer *)buffer;
- (int)cutTilesFrom:(id)from to:(id)to params:(id *)params outCommandBuffer:(id *)buffer;
- (int)pasteTilesFrom:(id)from with:(id)with inputFullPixelBuffers:(id)buffers to:(__CVBuffer *)to params:(id *)params outCommandBuffer:(id *)buffer;
- (int)updateMetadata:(id)metadata forInputFullPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)finishProcessing;
@end

@implementation CMIDeepZoomTransferMetalStageV2

- (CMIDeepZoomTransferMetalStageV2)initWithMetalContext:(id)context options:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  v62[0] = kCVPixelBufferMetalCompatibilityKey;
  v62[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v63[0] = &__kCFBooleanTrue;
  v63[1] = &__kCFBooleanTrue;
  v62[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v63[2] = &__NSDictionary0__struct;
  v9 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:3];
  v61.receiver = self;
  v61.super_class = CMIDeepZoomTransferMetalStageV2;
  v10 = [(CMIDeepZoomTransferMetalStageV2 *)&v61 init];
  if (!v10)
  {
    goto LABEL_2;
  }

  v13 = [optionsCopy objectForKeyedSubscript:@"DeepTransferNetwork"];
  intValue = [v13 intValue];

  if (intValue == 2)
  {
    v16 = *(v10 + 23);
    v17 = @"deep_transfer_stereo_photo-v2";
  }

  else if (intValue == 1)
  {
    v16 = *(v10 + 23);
    v17 = @"deep_transfer_zoom-v2";
  }

  else
  {
    if (intValue)
    {
LABEL_27:
      sub_B4F8(v10);
      v11 = 0;
      goto LABEL_3;
    }

    v15 = FigCapturePlatformIdentifier();
    v16 = *(v10 + 23);
    if (v15 < 12)
    {
      v17 = @"deep_transfer-v2";
    }

    else
    {
      v17 = @"deep_transfer-v3";
    }
  }

  *(v10 + 23) = v17;

  v18 = objc_opt_new();
  v19 = *(v10 + 11);
  *(v10 + 11) = v18;

  v20 = *(v10 + 11);
  v21 = [optionsCopy objectForKeyedSubscript:@"TuningParameters"];
  LODWORD(v20) = [v20 readPlist:v21];

  if (v20)
  {
    sub_CF28();
    goto LABEL_27;
  }

  v22 = [NSArray arrayWithObjects:@"in_img_1", @"in_img_2", 0];
  v23 = *(v10 + 24);
  *(v10 + 24) = v22;

  v24 = [NSArray arrayWithObjects:&off_19110, &off_19128, 0];
  v25 = *(v10 + 25);
  *(v10 + 25) = v24;

  v26 = [NSNumber numberWithUnsignedInt:1278226536];
  v27 = [NSNumber numberWithUnsignedInt:1278226536];
  v28 = [NSArray arrayWithObjects:v26, v27, 0];
  v29 = *(v10 + 26);
  *(v10 + 26) = v28;

  v30 = [NSArray arrayWithObjects:@"out_img", 0];
  v31 = *(v10 + 28);
  *(v10 + 28) = v30;

  v32 = [NSArray arrayWithObjects:&off_19140, 0];
  v33 = *(v10 + 29);
  *(v10 + 29) = v32;

  v34 = [NSNumber numberWithUnsignedInt:1278226536];
  v35 = [NSArray arrayWithObjects:v34, 0];
  v36 = *(v10 + 30);
  *(v10 + 30) = v35;

  *(v10 + 2) = 0x10001001C001F0;
  *(v10 + 172) = 0x10001001C001F0;
  objc_storeStrong(v10 + 1, context);
  if (!*(v10 + 1))
  {
    v37 = [NSBundle bundleForClass:objc_opt_class()];
    v38 = [[FigMetalContext alloc] initWithbundle:v37 andOptionalCommandQueue:0];
    v39 = *(v10 + 1);
    *(v10 + 1) = v38;

    if (!*(v10 + 1))
    {
      goto LABEL_27;
    }
  }

  v40 = objc_alloc_init(NSMutableDictionary);
  v41 = *(v10 + 16);
  *(v10 + 16) = v40;

  if (!*(v10 + 16))
  {
    goto LABEL_27;
  }

  v42 = [[NSMutableArray alloc] initWithCapacity:2];
  v43 = *(v10 + 20);
  *(v10 + 20) = v42;

  if (!*(v10 + 20))
  {
    goto LABEL_27;
  }

  device = [*(v10 + 1) device];
  newCommandQueue = [device newCommandQueue];
  [*(v10 + 20) setObject:newCommandQueue atIndexedSubscript:0];

  device2 = [*(v10 + 1) device];
  newCommandQueue2 = [device2 newCommandQueue];
  [*(v10 + 20) setObject:newCommandQueue2 atIndexedSubscript:1];

  if (sub_ABD4(v10))
  {
    goto LABEL_27;
  }

  v48 = [[CMIDeepZoomTransferPreProcMetalStageV2 alloc] initWithMetalContext:contextCopy withTileConfiguration:v10 + 16];
  v49 = *(v10 + 18);
  *(v10 + 18) = v48;

  if (!*(v10 + 18))
  {
    goto LABEL_27;
  }

  v50 = [[CMIDeepZoomTransferPostProcMetalStageV2 alloc] initWithMetalContext:contextCopy withTileConfiguration:v10 + 16];
  v51 = *(v10 + 19);
  *(v10 + 19) = v50;

  if (!*(v10 + 19))
  {
    goto LABEL_27;
  }

  v59 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v60 = &off_19010;
  v52 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  device3 = [*(v10 + 1) device];
  v54 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v52, device3, 0, v10 + 3);

  if (v54)
  {
    goto LABEL_25;
  }

  if (CVPixelBufferCreate(kCFAllocatorDefault, 3 * *(v10 + 8), 3 * *(v10 + 9), 0x4C303068u, v9, v10 + 12))
  {
    goto LABEL_25;
  }

  v55 = sub_B168(v10, *(v10 + 12), 1);
  v56 = [v55 objectAtIndexedSubscript:0];
  v57 = *(v10 + 13);
  *(v10 + 13) = v56;

  if (!*(v10 + 13) || sub_4940(v10, *(v10 + 12), v10 + 8, v58))
  {
LABEL_25:

    goto LABEL_27;
  }

LABEL_2:
  v11 = v10;
LABEL_3:

  return v11;
}

- (int)updateMetadata:(id)metadata forInputFullPixelBuffer:(__CVBuffer *)buffer
{
  metadataForPixelBuffers = self->_metadataForPixelBuffers;
  metadataCopy = metadata;
  v7 = [NSNumber numberWithLong:buffer];
  [(NSMutableDictionary *)metadataForPixelBuffers setObject:metadataCopy forKeyedSubscript:v7];

  return 0;
}

- (void)finishProcessing
{
  [(FigMetalContext *)self->_metalContext waitForIdle];
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
  }

  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  if (tileOutputPixelBuffer)
  {
    CFRelease(tileOutputPixelBuffer);
    self->_tileOutputPixelBuffer = 0;
  }

  tileOutputEnhancedPixelBuffer = self->_tileOutputEnhancedPixelBuffer;
  if (tileOutputEnhancedPixelBuffer)
  {
    CFRelease(tileOutputEnhancedPixelBuffer);
    self->_tileOutputEnhancedPixelBuffer = 0;
  }
}

- (__n128)tileSize
{
  LOWORD(v1) = *(self + 172);
  WORD2(v1) = *(self + 174);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)tileOverlap
{
  LOWORD(v1) = *(self + 176);
  WORD2(v1) = *(self + 178);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (void)dealloc
{
  sub_B4F8(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomTransferMetalStageV2;
  [(CMIDeepZoomTransferMetalStageV2 *)&v3 dealloc];
}

- (int)clearBuffer:(__CVBuffer *)buffer
{
  if (!buffer)
  {
    sub_275C();
    v39 = -12780;
    goto LABEL_12;
  }

  v5 = v6;
  p_tileOutputPixelBuffer = &self->_tileOutputPixelBuffer;
  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  self->_currentCommandQueueIndex = 0;
  if (tileOutputPixelBuffer)
  {
    currentCommandQueueIndex = 0;
LABEL_7:
    v26 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:currentCommandQueueIndex];
    p_tileOutputPixelBuffer = [v26 commandBuffer];

    if (!p_tileOutputPixelBuffer)
    {
      p_tileOutputPixelBuffer = "com.apple.cameracapture";
      v4 = "";
      sub_1FB4();
      sub_34CC();
      FigDebugAssert3();
      sub_1FB4();
      sub_1EAC();
      v39 = FigSignalErrorAtGM();
      sub_275C();
      goto LABEL_12;
    }

    computeCommandEncoder = [p_tileOutputPixelBuffer computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      sub_1F20();
      FigDebugAssert3();
      sub_1F20();
      sub_1EAC();
      v39 = FigSignalErrorAtGM();
      v5 = 0;
      v4 = 0;
      goto LABEL_12;
    }

    v4 = computeCommandEncoder;
    v5 = sub_B168(self, buffer, 2);
    if ([v5 count] != &dword_0 + 2)
    {
      v39 = -12786;
      goto LABEL_12;
    }

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2740() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    threadExecutionWidth = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v29 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v30 = [sub_2740() objectAtIndexedSubscript:?];
    [v30 width];
    v31 = [sub_2740() objectAtIndexedSubscript:?];
    height = [v31 height];
    sub_2080(height, v33);

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2734() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v35 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
    v36 = [sub_2734() objectAtIndexedSubscript:?];
    [v36 width];
    v37 = [sub_2734() objectAtIndexedSubscript:?];
    height2 = [v37 height];
    sub_2080(height2, v38);

    [(__CFAllocator *)v4 endEncoding];
    [p_tileOutputPixelBuffer commit];
    goto LABEL_11;
  }

  v4 = kCFAllocatorDefault;
  v11 = *self->_anon_10;
  v12 = *&self->_anon_10[2];
  CVPixelBufferGetPixelFormatType(buffer);
  CVPixelBufferGetAttributes();
  v13 = sub_2784();
  if (!CVPixelBufferCreate(v13, v14, v15, v16, v17, v18))
  {
    v19 = *self->_anon_10;
    v20 = *&self->_anon_10[2];
    CVPixelBufferGetPixelFormatType(buffer);
    CVPixelBufferGetAttributes();
    v21 = sub_2784();
    if (!CVPixelBufferCreate(v21, v22, v23, v24, v25, p_tileOutputPixelBuffer))
    {
      currentCommandQueueIndex = self->_currentCommandQueueIndex;
      goto LABEL_7;
    }
  }

  sub_275C();
LABEL_11:
  v39 = 0;
LABEL_12:

  return v39;
}

- (int)cutTilesFrom:(id)from to:(id)to params:(id *)params outCommandBuffer:(id *)buffer
{
  fromCopy = from;
  toCopy = to;
  v114 = fromCopy;
  if ([fromCopy count] != &dword_0 + 2)
  {
    v13 = -12780;
    goto LABEL_34;
  }

  v12 = [toCopy count];
  v13 = -12780;
  if (params && v12)
  {
    v14 = sub_C2B8(self, fromCopy, params);
    if (!v14)
    {
      v15 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
      commandBuffer = [v15 commandBuffer];

      if (commandBuffer)
      {
        computeCommandEncoder = [commandBuffer computeCommandEncoder];
        if (!computeCommandEncoder)
        {
          sub_358C();
          sub_34CC();
          FigDebugAssert3();
          sub_358C();
          sub_1EAC();
          v13 = FigSignalErrorAtGM();

          goto LABEL_34;
        }

        v18 = computeCommandEncoder;
        v19 = *(params + 1);
        v132 = *params;
        v133 = v19;
        v20 = [sub_3520() objectAtIndexedSubscript:?];
        Width = CVPixelBufferGetWidth(v20);

        v21 = [sub_3520() objectAtIndexedSubscript:?];
        Height = CVPixelBufferGetHeight(v21);

        v23.i16[2] = HIWORD(v133);
        v23.i16[0] = WORD6(v133);
        v116 = v23;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        obj = [toCopy allKeys];
        v113 = [obj countByEnumeratingWithState:&v128 objects:v127 count:16];
        if (!v113)
        {
LABEL_29:

          [v18 endEncoding];
          v95 = commandBuffer;
          *buffer = commandBuffer;

          v13 = 0;
          goto LABEL_34;
        }

        paramsCopy = params;
        bufferCopy = buffer;
        v101 = commandBuffer;
        v25 = 0;
        v26 = 0;
        *&v24 = vdiv_f32(vcvt_f32_u32(vand_s8(v116, 0xFFFF0000FFFFLL)), vcvt_f32_u32(__PAIR64__(Height, Width)));
        v103 = v24;
        v112 = *v129;
        v102 = kFigCaptureSampleBufferMetadata_FinalCropRect;
        v109 = matrix_identity_float3x3.columns[1];
        v110 = matrix_identity_float3x3.columns[0];
        v108 = matrix_identity_float3x3.columns[2];
        __asm { FMOV            V9.2S, #1.0 }

        v107 = toCopy;
LABEL_9:
        v32 = 0;
        v33 = v25;
        v34 = v26;
        while (1)
        {
          if (*v129 != v112)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v128 + 1) + 8 * v32);
          v124 = v110;
          v125 = v109;
          v126 = v108;
          v36 = [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
          v37 = [v35 isEqual:v36];

          LODWORD(Width) = v37;
          if (v37)
          {
            v122 = 0u;
            v123 = 0u;
            metadataForPixelBuffers = self->_metadataForPixelBuffers;
            v79 = [sub_34DC() objectAtIndexedSubscript:?];
            v80 = [NSNumber numberWithLong:v79];
            v38 = [(NSMutableDictionary *)metadataForPixelBuffers objectForKeyedSubscript:v80];

            FigCFDictionaryGetCGRectIfPresent();
            v81 = [sub_3514() objectAtIndexedSubscript:?];
            v82 = CVPixelBufferGetWidth(v81);
            v83 = [sub_34DC() objectAtIndexedSubscript:?];
            *v84.i32 = v82 / CVPixelBufferGetWidth(v83);
            *&v133 = vdup_lane_s32(v84, 0);

            *(&v85 + 1) = *(&v103 + 1);
            v86 = *&v103 / v123.f64[0];
            *&v133 = vmul_n_f32(*&v133, v86);
            *&v85 = vcvt_f32_f64(v123);
            v103 = v85;
            v87 = vcvt_f32_f64(v122);
            v88 = [sub_34DC() objectAtIndexedSubscript:?];
            LODWORD(v83) = CVPixelBufferGetWidth(v88);

            v89 = [sub_34DC() objectAtIndexedSubscript:?];
            *&v90 = __PAIR64__(CVPixelBufferGetHeight(v89), v83);
            v117 = v90;

            v53 = 0;
            v91 = vcvt_f32_u32(*&v117);
            v92 = vcvt_n_u32_f32(vrnda_f32(vmul_f32(vmul_f32(v87, v91), 0x3F0000003F000000)), 1uLL);
            WORD5(v133) = v92.i16[2];
            WORD4(v133) = v92.i16[0];
            v93 = vcvt_n_u32_f32(vrnda_f32(vmul_f32(vmul_f32(*&v103, v91), 0x3F0000003F000000)), 1uLL);
            HIWORD(v133) = v93.i16[2];
            WORD6(v133) = v93.i16[0];
          }

          else
          {
            *&v133 = _D9;
            v38 = [(NSMutableArray *)self->_localHomographiesTable objectAtIndexedSubscript:0];
            if ([v38 count] != &dword_8 + 1)
            {

LABEL_33:
              v13 = -12786;
              goto LABEL_34;
            }

            v39 = [v38 objectAtIndexedSubscript:0];
            [v39 floatValue];
            v40 = [v38 objectAtIndexedSubscript:1];
            [v40 floatValue];
            v41 = [v38 objectAtIndexedSubscript:2];
            [v41 floatValue];
            sub_3504();
            v124 = v42;

            v43 = [v38 objectAtIndexedSubscript:3];
            [v43 floatValue];
            v44 = [v38 objectAtIndexedSubscript:4];
            [v44 floatValue];
            v45 = [v38 objectAtIndexedSubscript:5];
            [v45 floatValue];
            sub_3504();
            v125 = v46;

            v47 = [v38 objectAtIndexedSubscript:6];
            [v47 floatValue];
            v117 = v48;
            v49 = [v38 objectAtIndexedSubscript:7];
            [v49 floatValue];
            v115 = v50;
            v51 = [v38 objectAtIndexedSubscript:8];
            [v51 floatValue];
            sub_3504();
            v126 = v52;

            v53 = 1;
          }

          v54 = [v114 objectAtIndexedSubscript:v53];
          v26 = sub_B168(self, v54, 1);

          if ([v26 count] != &dword_0 + 2)
          {
            v34 = v26;
            toCopy = v107;
            goto LABEL_33;
          }

          toCopy = v107;
          v55 = [v107 objectForKeyedSubscript:v35];
          v25 = sub_B168(self, v55, 2);

          if (![v25 count])
          {
            v33 = v25;
            v34 = v26;
            goto LABEL_33;
          }

          if ([v25 count] == &dword_0 + 3)
          {
            [v18 setComputePipelineState:self->_tileCutInSlicesPipelineState];
            [v26 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v26 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:2];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            v56 = sub_354C();
            sub_356C(v56, v57, v58, v59, v60, v61, v62, v63, v97, v98, v99, bufferCopy, v101, v102, v103, *(&v103 + 1), v104, obj, paramsCopy, v107, v108.i64[0], v108.i64[1], v109.i64[0], v109.i64[1], v110.i64[0], v110.i64[1], v111, v112, v113, v114, v115, *(&v115 + 1), v117, *(&v117 + 1), Width, v119, v120, v121, *&v122.f64[0], *&v122.f64[1], *&v123.f64[0], *&v123.f64[1], v124.i8[0]);
            v64 = 80;
            if (Width)
            {
              v64 = 72;
            }

            [v18 setSamplerState:*(&self->super.isa + v64) atIndex:0];
            threadExecutionWidth = [(MTLComputePipelineState *)self->_tileCutInSlicesPipelineState threadExecutionWidth];
            tileCutInSlicesPipelineState = self->_tileCutInSlicesPipelineState;
          }

          else
          {
            [v18 setComputePipelineState:self->_tileCutPipelineState];
            [v26 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v26 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            v67 = sub_354C();
            sub_356C(v67, v68, v69, v70, v71, v72, v73, v74, v97, v98, v99, bufferCopy, v101, v102, v103, *(&v103 + 1), v104, obj, paramsCopy, v107, v108.i64[0], v108.i64[1], v109.i64[0], v109.i64[1], v110.i64[0], v110.i64[1], v111, v112, v113, v114, v115, *(&v115 + 1), v117, *(&v117 + 1), Width, v119, v120, v121, *&v122.f64[0], *&v122.f64[1], *&v123.f64[0], *&v123.f64[1], v124.i8[0]);
            v75 = 80;
            if (Width)
            {
              v75 = 72;
            }

            [v18 setSamplerState:*(&self->super.isa + v75) atIndex:0];
            threadExecutionWidth = [(MTLComputePipelineState *)self->_tileCutPipelineState threadExecutionWidth];
            tileCutInSlicesPipelineState = self->_tileCutPipelineState;
          }

          maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)tileCutInSlicesPipelineState maxTotalThreadsPerThreadgroup];
          *&v77 = *(paramsCopy + 1);
          *&v122.f64[0] = *paramsCopy;
          v122.f64[1] = v77;
          *&v123.f64[0] = 1;
          v119 = threadExecutionWidth;
          v120 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
          v121 = 1;
          [v18 dispatchThreads:&v122 threadsPerThreadgroup:&v119];
          v32 = v32 + 1;
          v33 = v25;
          v34 = v26;
          if (v113 == v32)
          {
            v94 = [obj countByEnumeratingWithState:&v128 objects:v127 count:16];
            v113 = v94;
            if (!v94)
            {

              buffer = bufferCopy;
              commandBuffer = v101;
              goto LABEL_29;
            }

            goto LABEL_9;
          }
        }
      }

      sub_358C();
      sub_34CC();
      FigDebugAssert3();
      sub_358C();
      sub_1EAC();
      v14 = FigSignalErrorAtGM();
    }

    v13 = v14;
  }

LABEL_34:

  return v13;
}

- (int)pasteTilesFrom:(id)from with:(id)with inputFullPixelBuffers:(id)buffers to:(__CVBuffer *)to params:(id *)params outCommandBuffer:(id *)buffer
{
  commandBuffer = v9;
  fromCopy = from;
  withCopy = with;
  buffersCopy = buffers;
  v47 = fromCopy;
  v45 = buffersCopy;
  v46 = withCopy;
  if (![fromCopy count] || !objc_msgSend(withCopy, "count"))
  {
    v20 = 0;
    v48 = 0;
    commandBuffer = 0;
    sub_2798();
    v21 = -12780;
    goto LABEL_17;
  }

  [buffersCopy count];
  v20 = 0;
  v21 = -12780;
  if (!params || !to)
  {
    sub_2718();
    goto LABEL_17;
  }

  bufferCopy = buffer;
  sub_2718();
  if (v22)
  {
    v23 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
    commandBuffer = [v23 commandBuffer];

    if (!commandBuffer)
    {
      buffersCopy = "com.apple.cameracapture";
      sub_1FB4();
      sub_34CC();
      FigDebugAssert3();
      sub_1FB4();
      sub_1EAC();
      v21 = FigSignalErrorAtGM();
      v20 = 0;
      v48 = 0;
      sub_2798();
      goto LABEL_17;
    }

    v24 = [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
    [fromCopy objectForKeyedSubscript:v24];
    objc_claimAutoreleasedReturnValue();
    v25 = sub_3538();
    v8 = sub_B168(v25, v26, v27);

    if ([v8 count])
    {
      v28 = [(NSArray *)self->_modelOutputBindingNames objectAtIndexedSubscript:0];
      [v46 objectForKeyedSubscript:v28];
      objc_claimAutoreleasedReturnValue();
      v29 = sub_3538();
      v20 = sub_B168(v29, v30, v31);

      if ([v20 count])
      {
        v32 = sub_B168(self, self->_tileOutputEnhancedPixelBuffer, 3);
        if ([v32 count] == &dword_0 + 2)
        {
          v44 = sub_B168(self, self->_tileOutputPixelBuffer, 3);
          if ([v44 count] == &dword_0 + 2)
          {
            v48 = sub_B168(self, to, 3);
            if ([v48 count] == &dword_0 + 2)
            {
              v33 = [(CMIDeepZoomTransferPostProcMetalStageV2 *)self->_deepZoomPostProcStage processTileFrom:v8 with:v20 to:v32 commandBuffer:commandBuffer];
              if (v33)
              {
                v21 = v33;
                buffersCopy = commandBuffer;
              }

              else
              {
                computeCommandEncoder = [commandBuffer computeCommandEncoder];
                buffersCopy = commandBuffer;
                if (computeCommandEncoder)
                {
                  v35 = computeCommandEncoder;
                  [computeCommandEncoder setComputePipelineState:self->_tileMergePipelineState];
                  [v32 objectAtIndexedSubscript:0];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  v42 = v32;
                  [v32 objectAtIndexedSubscript:1];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [v35 setTexture:self->_tileInputWeightsTexture atIndex:2];
                  [sub_2740() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [sub_2734() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  fromCopy = v44;
                  [sub_2740() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [sub_2734() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [v35 setBytes:params length:24 atIndex:0];
                  threadExecutionWidth = [(MTLComputePipelineState *)self->_tileMergePipelineState threadExecutionWidth];
                  [(MTLComputePipelineState *)self->_tileMergePipelineState maxTotalThreadsPerThreadgroup];
                  sub_276C();
                  v53 = 1;
                  v49 = threadExecutionWidth;
                  v50 = v37 / threadExecutionWidth;
                  v51 = 1;
                  [v35 dispatchThreads:v52 threadsPerThreadgroup:&v49];
                  [v35 endEncoding];
                  buffer = [commandBuffer computeCommandEncoder];

                  if (buffer)
                  {
                    [buffer setComputePipelineState:self->_tilePastePipelineState];
                    [sub_2740() objectAtIndexedSubscript:?];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [sub_2734() objectAtIndexedSubscript:?];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [v48 objectAtIndexedSubscript:0];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [v48 objectAtIndexedSubscript:1];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [buffer setBytes:params length:24 atIndex:0];
                    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_tilePastePipelineState threadExecutionWidth];
                    [(MTLComputePipelineState *)self->_tilePastePipelineState maxTotalThreadsPerThreadgroup];
                    sub_276C();
                    v53 = 1;
                    v49 = threadExecutionWidth2;
                    v50 = v39 / threadExecutionWidth2;
                    v51 = 1;
                    [buffer dispatchThreads:v52 threadsPerThreadgroup:&v49];
                    [buffer endEncoding];
                    v40 = commandBuffer;
                    v21 = 0;
                    *bufferCopy = commandBuffer;
                    self->_currentCommandQueueIndex = (self->_currentCommandQueueIndex & 1) == 0;
                  }

                  else
                  {
                    sub_1F20();
                    sub_34E8();
                    FigDebugAssert3();
                    sub_1F20();
                    sub_1EAC();
                    v21 = FigSignalErrorAtGM();
                  }

                  commandBuffer = v42;
                  goto LABEL_17;
                }

                sub_1F20();
                sub_34E8();
                FigDebugAssert3();
                sub_1F20();
                sub_1EAC();
                v21 = FigSignalErrorAtGM();
              }

              commandBuffer = v32;
              buffer = 0;
LABEL_30:
              fromCopy = v44;
              goto LABEL_17;
            }
          }

          else
          {
            v48 = 0;
          }

          buffersCopy = commandBuffer;
          commandBuffer = v32;
          buffer = 0;
          v21 = -12786;
          goto LABEL_30;
        }

        v48 = 0;
        fromCopy = 0;
        buffersCopy = commandBuffer;
        commandBuffer = v32;
LABEL_24:
        buffer = 0;
        v21 = -12786;
        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    v48 = 0;
    buffersCopy = commandBuffer;
    commandBuffer = 0;
    fromCopy = 0;
    goto LABEL_24;
  }

LABEL_17:

  return v21;
}

@end