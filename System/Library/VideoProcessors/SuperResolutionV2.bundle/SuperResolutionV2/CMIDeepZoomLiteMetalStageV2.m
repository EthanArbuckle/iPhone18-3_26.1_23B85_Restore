@interface CMIDeepZoomLiteMetalStageV2
- (CMIDeepZoomLiteMetalStageV2)initWithMetalContext:(id)a3 options:(id)a4;
- (__n128)tileOverlap;
- (__n128)tileSize;
- (int)clearBuffer:(__CVBuffer *)a3;
- (int)cutTilesFrom:(id)a3 to:(id)a4 params:(id *)a5 outCommandBuffer:(id *)a6;
- (int)pasteTilesFrom:(id)a3 with:(id)a4 inputFullPixelBuffers:(id)a5 to:(__CVBuffer *)a6 params:(id *)a7 outCommandBuffer:(id *)a8;
- (void)dealloc;
- (void)finishProcessing;
@end

@implementation CMIDeepZoomLiteMetalStageV2

- (CMIDeepZoomLiteMetalStageV2)initWithMetalContext:(id)a3 options:(id)a4
{
  v6 = a3;
  v58[0] = kCVPixelBufferMetalCompatibilityKey;
  v58[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v59[0] = &__kCFBooleanTrue;
  v59[1] = &__kCFBooleanTrue;
  v58[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v59[2] = &__NSDictionary0__struct;
  v7 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];
  v57.receiver = self;
  v57.super_class = CMIDeepZoomLiteMetalStageV2;
  v8 = [(CMIDeepZoomLiteMetalStageV2 *)&v57 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_2;
  }

  modelNetworkBaseName = v8->_modelNetworkBaseName;
  v8->_modelNetworkBaseName = @"deep_zoom-lite-v2";

  v13 = [NSArray arrayWithObjects:@"in_img", 0];
  v14 = *(v9 + 192);
  *(v9 + 192) = v13;

  v15 = [NSArray arrayWithObjects:&off_190B0, 0];
  v16 = *(v9 + 200);
  *(v9 + 200) = v15;

  v17 = [NSArray arrayWithObjects:&off_18F38, 0];
  v18 = *(v9 + 208);
  *(v9 + 208) = v17;

  v19 = [NSArray arrayWithObjects:@"out_img", 0];
  v20 = *(v9 + 224);
  *(v9 + 224) = v19;

  v21 = [NSArray arrayWithObjects:&off_190C8, 0];
  v22 = *(v9 + 232);
  *(v9 + 232) = v21;

  v23 = [NSArray arrayWithObjects:&off_18F38, 0];
  v24 = *(v9 + 240);
  *(v9 + 240) = v23;

  *(v9 + 16) = 0x10001001C00250;
  *(v9 + 176) = 0x10001001C00250;
  objc_storeStrong((v9 + 8), a3);
  if (!*(v9 + 8))
  {
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [[FigMetalContext alloc] initWithbundle:v25 andOptionalCommandQueue:0];
    v27 = *(v9 + 8);
    *(v9 + 8) = v26;

    if (!*(v9 + 8))
    {
      goto LABEL_25;
    }
  }

  v28 = [[NSMutableArray alloc] initWithCapacity:2];
  v29 = *(v9 + 152);
  *(v9 + 152) = v28;

  if (!*(v9 + 152))
  {
    goto LABEL_25;
  }

  v30 = [*(v9 + 8) device];
  v31 = [v30 newCommandQueue];
  [*(v9 + 152) setObject:v31 atIndexedSubscript:0];

  v32 = [*(v9 + 8) device];
  v33 = [v32 newCommandQueue];
  [*(v9 + 152) setObject:v33 atIndexedSubscript:1];

  if (sub_4114(v9))
  {
LABEL_25:
    sub_4E9C(v9);
    v10 = 0;
    goto LABEL_3;
  }

  v55 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v56 = &off_18F68;
  v34 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v35 = [*(v9 + 8) device];
  v36 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v34, v35, 0, (v9 + 24));

  if (v36)
  {
    goto LABEL_24;
  }

  if (CVPixelBufferCreate(kCFAllocatorDefault, 3 * *(v9 + 16), 3 * *(v9 + 18), 0x4C303068u, v7, (v9 + 104)))
  {
    goto LABEL_24;
  }

  v37 = sub_46F0(v9, *(v9 + 104), 1);
  v38 = [v37 objectAtIndexedSubscript:0];
  v39 = *(v9 + 112);
  *(v9 + 112) = v38;

  if (!*(v9 + 112) || sub_4940(v9, *(v9 + 104), (v9 + 16), v40))
  {
LABEL_24:

    goto LABEL_25;
  }

  v41 = objc_alloc_init(MTLTextureDescriptor);
  v42 = v41;
  if (!v41)
  {
    sub_65A0();
LABEL_23:

    goto LABEL_24;
  }

  [v41 setWidth:*(v9 + 16)];
  [v42 setHeight:*(v9 + 18)];
  [v42 setPixelFormat:25];
  [v42 setUsage:3];
  v43 = [*(v9 + 8) device];
  v44 = [v43 newTextureWithDescriptor:v42];
  v45 = *(v9 + 120);
  *(v9 + 120) = v44;

  if (!*(v9 + 120))
  {
    sub_64FC();
    goto LABEL_23;
  }

  [v42 setWidth:*(v9 + 16)];
  [v42 setHeight:*(v9 + 18)];
  [v42 setPixelFormat:25];
  v46 = [*(v9 + 8) device];
  v47 = [v46 newTextureWithDescriptor:v42];
  v48 = *(v9 + 136);
  *(v9 + 136) = v47;

  if (!*(v9 + 136))
  {
    sub_6458();
    goto LABEL_23;
  }

  [v42 setWidth:*(v9 + 16)];
  [v42 setHeight:*(v9 + 18)];
  [v42 setPixelFormat:25];
  v49 = [*(v9 + 8) device];
  v50 = [v49 newTextureWithDescriptor:v42];
  v51 = *(v9 + 144);
  *(v9 + 144) = v50;

  if (!*(v9 + 144))
  {
    sub_63B4();
    goto LABEL_23;
  }

  [v42 setWidth:*(v9 + 18)];
  [v42 setHeight:*(v9 + 16)];
  [v42 setPixelFormat:25];
  v52 = [*(v9 + 8) device];
  v53 = [v52 newTextureWithDescriptor:v42];
  v54 = *(v9 + 128);
  *(v9 + 128) = v53;

  if (!*(v9 + 128))
  {
    sub_6310();
    goto LABEL_23;
  }

LABEL_2:
  v10 = v9;
LABEL_3:

  return v10;
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
}

- (__n128)tileSize
{
  LOWORD(v1) = *(a1 + 176);
  WORD2(v1) = *(a1 + 178);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)tileOverlap
{
  LOWORD(v1) = *(a1 + 180);
  WORD2(v1) = *(a1 + 182);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (void)dealloc
{
  sub_4E9C(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomLiteMetalStageV2;
  [(CMIDeepZoomLiteMetalStageV2 *)&v3 dealloc];
}

- (int)clearBuffer:(__CVBuffer *)a3
{
  if (!a3)
  {
    sub_1F64();
    v28 = -12780;
    goto LABEL_11;
  }

  v5 = v6;
  p_tileOutputPixelBuffer = &self->_tileOutputPixelBuffer;
  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  self->_currentCommandQueueIndex = 0;
  if (tileOutputPixelBuffer)
  {
    currentCommandQueueIndex = 0;
LABEL_4:
    v11 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:currentCommandQueueIndex];
    p_tileOutputPixelBuffer = [v11 commandBuffer];

    if (!p_tileOutputPixelBuffer)
    {
      p_tileOutputPixelBuffer = "com.apple.cameracapture";
      v4 = "";
      sub_1FB4();
      sub_2038();
      FigDebugAssert3();
      sub_1FB4();
      sub_1EAC();
      v28 = FigSignalErrorAtGM();
      sub_1F64();
      goto LABEL_11;
    }

    v12 = [p_tileOutputPixelBuffer computeCommandEncoder];
    if (!v12)
    {
      fig_log_get_emitter();
      sub_2038();
      FigDebugAssert3();
      fig_log_get_emitter();
      sub_1EAC();
      v28 = FigSignalErrorAtGM();
      v5 = 0;
      v4 = 0;
      goto LABEL_11;
    }

    v4 = v12;
    v5 = sub_46F0(self, a3, 2);
    if ([v5 count] != &dword_0 + 2)
    {
      v28 = -12786;
      goto LABEL_11;
    }

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2074() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    v13 = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v14 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ v13;
    v15 = [sub_2074() objectAtIndexedSubscript:?];
    [v15 width];
    v16 = [sub_2074() objectAtIndexedSubscript:?];
    v17 = [v16 height];
    sub_2080(v17, v18);

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [v5 objectAtIndexedSubscript:1];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    v19 = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v20 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ v19;
    v21 = [v5 objectAtIndexedSubscript:1];
    [v21 width];
    v22 = [v5 objectAtIndexedSubscript:1];
    v30 = [v22 height];
    sub_2080(v30, v23);

    [(__CFAllocator *)v4 endEncoding];
    [p_tileOutputPixelBuffer commit];
    goto LABEL_10;
  }

  v4 = kCFAllocatorDefault;
  v24 = *self->_anon_10;
  v25 = *&self->_anon_10[2];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  Attributes = CVPixelBufferGetAttributes();
  if (!CVPixelBufferCreate(kCFAllocatorDefault, v24, v25, PixelFormatType, Attributes, p_tileOutputPixelBuffer))
  {
    currentCommandQueueIndex = self->_currentCommandQueueIndex;
    goto LABEL_4;
  }

  sub_1F64();
LABEL_10:
  v28 = 0;
LABEL_11:

  return v28;
}

- (int)cutTilesFrom:(id)a3 to:(id)a4 params:(id *)a5 outCommandBuffer:(id *)a6
{
  v13 = a3;
  v14 = a4;
  if (![v13 count])
  {
    sub_1F74();
    v17 = 0;
    v16 = -12780;
    goto LABEL_9;
  }

  v15 = [v14 count];
  v6 = 0;
  v16 = -12780;
  if (!a5)
  {
    v7 = 0;
    v8 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v29 = a6;
  v7 = 0;
  v8 = 0;
  v17 = 0;
  if (v15)
  {
    v18 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
    v17 = [v18 commandBuffer];

    if (!v17)
    {
      v6 = "";
      sub_20B8();
      sub_1F84();
      FigDebugAssert3();
      sub_20B8();
      sub_1EAC();
      v16 = FigSignalErrorAtGM();
      sub_1F74();
      v17 = 0;
      goto LABEL_9;
    }

    v19 = [v17 computeCommandEncoder];
    if (!v19)
    {
      v6 = "com.apple.cameracapture";
      v7 = "";
      fig_log_get_emitter();
      sub_1F84();
      FigDebugAssert3();
      fig_log_get_emitter();
      sub_1EAC();
      v16 = FigSignalErrorAtGM();
      sub_1F74();
      goto LABEL_9;
    }

    v6 = v19;
    v20 = [v13 objectAtIndexedSubscript:0];
    v7 = sub_46F0(self, v20, 1);

    if ([v7 count] == &dword_0 + 2)
    {
      [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      v21 = [sub_1F54() objectForKeyedSubscript:?];
      v8 = sub_46F0(self, v21, 2);

      if ([v8 count] == &dword_0 + 1)
      {
        [v6 setComputePipelineState:self->_tileCutPipelineState];
        v22 = [v7 objectAtIndexedSubscript:0];
        [v6 setTexture:v22 atIndex:0];

        v23 = [v8 objectAtIndexedSubscript:0];
        [v6 setTexture:v23 atIndex:1];

        [v6 setBytes:a5 length:32 atIndex:0];
        v24 = [(MTLComputePipelineState *)self->_tileCutPipelineState threadExecutionWidth];
        v25 = [(MTLComputePipelineState *)self->_tileCutPipelineState maxTotalThreadsPerThreadgroup];
        v26 = *(a5 + 1) >> 1;
        v31[0] = *a5 >> 1;
        v31[1] = v26;
        v31[2] = 1;
        v30[0] = v24;
        v30[1] = v25 / v24;
        v30[2] = 1;
        [v6 dispatchThreads:v31 threadsPerThreadgroup:v30];
        [v6 endEncoding];
        v27 = v17;
        v16 = 0;
        *v29 = v17;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

    v16 = -12786;
  }

LABEL_9:

  return v16;
}

- (int)pasteTilesFrom:(id)a3 with:(id)a4 inputFullPixelBuffers:(id)a5 to:(__CVBuffer *)a6 params:(id *)a7 outCommandBuffer:(id *)a8
{
  v10 = v9;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v82 = v17;
  v80 = v19;
  v81 = v18;
  if (![v17 count] || !objc_msgSend(v18, "count"))
  {
    sub_1F10();
    v17 = 0;
    v10 = 0;
    v8 = 0;
    v19 = 0;
    v20 = -12780;
    goto LABEL_28;
  }

  [v19 count];
  v20 = -12780;
  if (!a7 || !a6)
  {
    sub_1F38();
    goto LABEL_28;
  }

  v76 = a8;
  sub_1F38();
  if (v22)
  {
    v23 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
    v8 = [v23 commandBuffer];

    if (!v8)
    {
      sub_1FB4();
      sub_1E90();
      FigDebugAssert3();
      sub_1FB4();
      sub_1EAC();
      v20 = FigSignalErrorAtGM();
      sub_1F10();
      v17 = 0;
      v10 = 0;
      v19 = 0;
      goto LABEL_28;
    }

    v19 = [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
    [v17 objectForKeyedSubscript:v19];
    objc_claimAutoreleasedReturnValue();
    v24 = sub_2060();
    v10 = sub_46F0(v24, v25, v26);

    if ([v10 count] != &dword_0 + 1)
    {
      sub_1F10();
      v17 = 0;
      sub_1F00();
      goto LABEL_28;
    }

    v79 = sub_46F0(self, self->_tileOutputPixelBuffer, 3);
    if ([v79 count] == &dword_0 + 2)
    {
      v19 = [(NSArray *)self->_modelOutputBindingNames objectAtIndexedSubscript:0];
      [v18 objectForKeyedSubscript:v19];
      objc_claimAutoreleasedReturnValue();
      v27 = sub_2060();
      v30 = sub_46F0(v27, v28, v29);

      v18 = v30;
      if ([v30 count] == &dword_0 + 1)
      {
        v78 = v10;
        v31 = sub_46F0(self, a6, 3);
        if ([v31 count] != &dword_0 + 2)
        {
          sub_1F00();
          a8 = v31;
          v17 = v79;
          goto LABEL_28;
        }

        v19 = [v80 objectAtIndexedSubscript:0];
        v32 = sub_46F0(self, v19, 1);

        v77 = v32;
        if ([v32 count] != &dword_0 + 2)
        {
          sub_1F00();
          a8 = v31;
          v17 = v79;
          goto LABEL_27;
        }

        v33 = [v10 objectAtIndexedSubscript:0];
        v75 = v18;
        v34 = [sub_2074() objectAtIndexedSubscript:?];
        v35 = *a7 >> 1;
        v36 = *(a7 + 1) >> 1;
        v88 = v8;
        sub_5E78(self, v33, v34, v35, v36, &v88);

        v37 = [v8 computeCommandEncoder];
        if (v37)
        {
          v38 = v37;
          v39 = [v37 setComputePipelineState:self->_tileMergePipelineState];
          v41 = sub_20A0(v39, v40, self->_tileEnhancedLumaTexture);
          sub_200C(v41, v42, self->_tileInputWeightsTexture);
          [v31 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [sub_1FA4() setTexture:? atIndex:?];

          [v79 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [sub_1FA4() setTexture:? atIndex:?];

          sub_1FF0(v38, v43);
          v44 = [(MTLComputePipelineState *)self->_tileMergePipelineState threadExecutionWidth];
          [(MTLComputePipelineState *)self->_tileMergePipelineState maxTotalThreadsPerThreadgroup];
          sub_1FD8();
          v87 = 1;
          v83 = v44;
          v84 = v45 / v44;
          v85 = 1;
          [v38 dispatchThreads:v86 threadsPerThreadgroup:&v83];
          [v38 endEncoding];
          v74 = v8;
          v8 = [v8 computeCommandEncoder];

          if (!v8)
          {
            sub_1FB4();
            sub_1E90();
            FigDebugAssert3();
            sub_1FB4();
            sub_1EAC();
            v20 = FigSignalErrorAtGM();
            v19 = v74;
            a8 = v31;
            v17 = v79;
            goto LABEL_26;
          }

          [v8 setComputePipelineState:self->_tilePastePipelineState];
          [v79 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [sub_1F94() setTexture:? atIndex:?];

          v46 = [v31 objectAtIndexedSubscript:0];
          [v8 setTexture:v46 atIndex:1];

          sub_1FF0(v8, v47);
          v48 = [(MTLComputePipelineState *)self->_tilePastePipelineState threadExecutionWidth];
          [(MTLComputePipelineState *)self->_tilePastePipelineState maxTotalThreadsPerThreadgroup];
          sub_1FD8();
          v87 = 1;
          v83 = v48;
          v84 = v49 / v48;
          v85 = 1;
          [v8 dispatchThreads:v86 threadsPerThreadgroup:&v83];
          if (!(*(a7 + 4) | *(a7 + 5)))
          {
            [v8 setComputePipelineState:self->_tilePaste2xFullChromaPipelineState];
            [v32 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_1F94() setTexture:? atIndex:?];

            [sub_1FCC() objectAtIndexedSubscript:?];
            objc_claimAutoreleasedReturnValue();
            [sub_1F94() setTexture:? atIndex:?];

            sub_1FF0(v8, v50);
            v51 = *(a7 + 10);
            v52 = *a7;
            sub_2024();
            v55 = (v53 * v54);
            v56 = *(a7 + 11);
            v57 = *(a7 + 1);
            sub_2024();
            v60 = (v58 * v59);
            v61 = [(MTLComputePipelineState *)self->_tilePaste2xFullChromaPipelineState threadExecutionWidth];
            v62 = [(MTLComputePipelineState *)self->_tilePaste2xFullChromaPipelineState maxTotalThreadsPerThreadgroup];
            v73 = [sub_1FCC() objectAtIndexedSubscript:?];
            v63 = v55;
            v72 = [v73 width];
            if (v72 < v55)
            {
              v71 = [sub_1FCC() objectAtIndexedSubscript:?];
              v63 = [v71 width];
            }

            v64 = v62 / v61;
            v65 = [sub_1FCC() objectAtIndexedSubscript:?];
            v66 = [v65 height];
            v67 = v60;
            if (v66 < v60)
            {
              v70 = [sub_1FCC() objectAtIndexedSubscript:?];
              v67 = [v70 height];
            }

            v86[0] = v63;
            v86[1] = v67;
            v87 = 1;
            v83 = v61;
            v84 = v64;
            v85 = 1;
            [v8 dispatchThreads:v86 threadsPerThreadgroup:&v83];
            if (v66 < v60)
            {
            }

            if (v72 < v55)
            {
            }
          }

          [v8 endEncoding];
          v19 = v74;
          v68 = v74;
          v20 = 0;
          *v76 = v74;
          self->_currentCommandQueueIndex = (self->_currentCommandQueueIndex & 1) == 0;
        }

        else
        {
          sub_1FB4();
          sub_1E90();
          FigDebugAssert3();
          sub_1FB4();
          sub_1EAC();
          v20 = FigSignalErrorAtGM();
          v19 = v8;
          v8 = 0;
        }

        a8 = v31;
        v10 = v78;
        v17 = v79;
LABEL_26:
        v18 = v75;
LABEL_27:
        v21 = v77;
        goto LABEL_28;
      }

      a8 = 0;
    }

    else
    {
      sub_1F10();
    }

    sub_1F00();
    v17 = v79;
  }

LABEL_28:

  return v20;
}

@end