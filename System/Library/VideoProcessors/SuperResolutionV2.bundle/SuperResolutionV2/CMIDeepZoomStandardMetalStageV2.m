@interface CMIDeepZoomStandardMetalStageV2
- (CMIDeepZoomStandardMetalStageV2)initWithMetalContext:(id)a3 options:(id)a4;
- (__n128)tileOverlap;
- (__n128)tileSize;
- (int)clearBuffer:(__CVBuffer *)a3;
- (int)cutTilesFrom:(id)a3 to:(id)a4 params:(id *)a5 outCommandBuffer:(id *)a6;
- (int)pasteTilesFrom:(id)a3 with:(id)a4 inputFullPixelBuffers:(id)a5 to:(__CVBuffer *)a6 params:(id *)a7 outCommandBuffer:(id *)a8;
- (void)dealloc;
- (void)finishProcessing;
@end

@implementation CMIDeepZoomStandardMetalStageV2

- (CMIDeepZoomStandardMetalStageV2)initWithMetalContext:(id)a3 options:(id)a4
{
  v6 = a3;
  v47[0] = kCVPixelBufferMetalCompatibilityKey;
  v47[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v48[0] = &__kCFBooleanTrue;
  v48[1] = &__kCFBooleanTrue;
  v47[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v48[2] = &__NSDictionary0__struct;
  v7 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
  v46.receiver = self;
  v46.super_class = CMIDeepZoomStandardMetalStageV2;
  v8 = [(CMIDeepZoomStandardMetalStageV2 *)&v46 init];
  if (!v8)
  {
    goto LABEL_2;
  }

  v11 = CFPreferencesCopyAppValue(@"deepzoom_network_name", @"com.apple.coremedia");
  v12 = *(v8 + 16);
  *(v8 + 16) = v11;

  v13 = *(v8 + 16);
  *(v8 + 16) = @"deep_zoom-v2";

  v14 = [NSArray arrayWithObjects:@"in_img", 0];
  v15 = *(v8 + 17);
  *(v8 + 17) = v14;

  v16 = [NSArray arrayWithObjects:&off_190E0, 0];
  v17 = *(v8 + 18);
  *(v8 + 18) = v16;

  v18 = [NSArray arrayWithObjects:&off_18FB0, 0];
  v19 = *(v8 + 19);
  *(v8 + 19) = v18;

  v20 = [NSArray arrayWithObjects:@"out_img", 0];
  v21 = *(v8 + 21);
  *(v8 + 21) = v20;

  v22 = [NSArray arrayWithObjects:&off_190F8, 0];
  v23 = *(v8 + 22);
  *(v8 + 22) = v22;

  v24 = [NSArray arrayWithObjects:&off_18FB0, 0];
  v25 = *(v8 + 23);
  *(v8 + 23) = v24;

  *(v8 + 2) = 0x10001001C00250;
  *(v8 + 116) = 0x10001001C00250;
  objc_storeStrong(v8 + 1, a3);
  if (!*(v8 + 1))
  {
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [[FigMetalContext alloc] initWithbundle:v26 andOptionalCommandQueue:0];
    v28 = *(v8 + 1);
    *(v8 + 1) = v27;

    if (!*(v8 + 1))
    {
      goto LABEL_15;
    }
  }

  v29 = [[NSMutableArray alloc] initWithCapacity:2];
  v30 = *(v8 + 13);
  *(v8 + 13) = v29;

  if (!*(v8 + 13))
  {
    goto LABEL_15;
  }

  v31 = [*(v8 + 1) device];
  v32 = [v31 newCommandQueue];
  [*(v8 + 13) setObject:v32 atIndexedSubscript:0];

  v33 = [*(v8 + 1) device];
  v34 = [v33 newCommandQueue];
  [*(v8 + 13) setObject:v34 atIndexedSubscript:1];

  if (sub_6644(v8) || (v35 = [[CMIDeepZoomStandardPostProcMetalStageV2 alloc] initWithMetalContext:v6 withTileConfiguration:v8 + 16], v36 = *(v8 + 12), *(v8 + 12) = v35, v36, !*(v8 + 12)))
  {
LABEL_15:
    sub_6B68(v8);
    v9 = 0;
    goto LABEL_3;
  }

  v44 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v45 = &off_18FC8;
  v37 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v38 = [*(v8 + 1) device];
  v39 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v37, v38, 0, v8 + 3);

  if (v39)
  {
    goto LABEL_14;
  }

  if (CVPixelBufferCreate(kCFAllocatorDefault, 3 * *(v8 + 8), 3 * *(v8 + 9), 0x4C303068u, v7, v8 + 8))
  {
    goto LABEL_14;
  }

  v40 = sub_6914(v8, *(v8 + 8), 1);
  v41 = [v40 objectAtIndexedSubscript:0];
  v42 = *(v8 + 9);
  *(v8 + 9) = v41;

  if (!*(v8 + 9) || sub_4940(v8, *(v8 + 8), v8 + 8, v43))
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_2:
  v9 = v8;
LABEL_3:

  return v9;
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
  LOWORD(v1) = *(a1 + 116);
  WORD2(v1) = *(a1 + 118);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)tileOverlap
{
  LOWORD(v1) = *(a1 + 120);
  WORD2(v1) = *(a1 + 122);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (void)dealloc
{
  sub_6B68(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomStandardMetalStageV2;
  [(CMIDeepZoomStandardMetalStageV2 *)&v3 dealloc];
}

- (int)clearBuffer:(__CVBuffer *)a3
{
  if (!a3)
  {
    sub_275C();
    v38 = -12780;
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
    v4 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:currentCommandQueueIndex];
    p_tileOutputPixelBuffer = [v4 commandBuffer];

    if (!p_tileOutputPixelBuffer)
    {
      p_tileOutputPixelBuffer = "com.apple.cameracapture";
      v4 = "";
      sub_1FB4();
      FigDebugAssert3();
      sub_1FB4();
      sub_1EAC();
      v38 = FigSignalErrorAtGM();
      sub_275C();
      goto LABEL_12;
    }

    [p_tileOutputPixelBuffer computeCommandEncoder];
    if (!objc_claimAutoreleasedReturnValue())
    {
      sub_1F20();
      FigDebugAssert3();
      sub_1F20();
      sub_1EAC();
      v38 = FigSignalErrorAtGM();
      v5 = 0;
      v4 = 0;
      goto LABEL_12;
    }

    v26 = sub_27AC();
    v5 = sub_6914(v26, a3, 2);
    if ([v5 count] != &dword_0 + 2)
    {
      v38 = -12786;
      goto LABEL_12;
    }

    [v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2740() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    v27 = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v28 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ v27;
    v29 = [sub_2740() objectAtIndexedSubscript:?];
    [v29 width];
    v30 = [sub_2740() objectAtIndexedSubscript:?];
    v31 = [v30 height];
    sub_2080(v31, v32);

    [v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2734() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    v33 = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v34 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ v33;
    v35 = [sub_2734() objectAtIndexedSubscript:?];
    [v35 width];
    v36 = [sub_2734() objectAtIndexedSubscript:?];
    v40 = [v36 height];
    sub_2080(v40, v37);

    [v4 endEncoding];
    [p_tileOutputPixelBuffer commit];
    goto LABEL_11;
  }

  v4 = kCFAllocatorDefault;
  v11 = *self->_anon_10;
  v12 = *&self->_anon_10[2];
  CVPixelBufferGetPixelFormatType(a3);
  CVPixelBufferGetAttributes();
  v13 = sub_2784();
  if (!CVPixelBufferCreate(v13, v14, v15, v16, v17, v18))
  {
    v19 = *self->_anon_10;
    v20 = *&self->_anon_10[2];
    CVPixelBufferGetPixelFormatType(a3);
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
  v38 = 0;
LABEL_12:

  return v38;
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

  v27 = a6;
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
      fig_log_get_emitter();
      sub_1F84();
      FigDebugAssert3();
      fig_log_get_emitter();
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
    v7 = sub_6914(self, v20, 1);

    if ([v7 count] == &dword_0 + 2)
    {
      [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      v21 = [sub_1F54() objectForKeyedSubscript:?];
      v8 = sub_6914(self, v21, 2);

      if ([v8 count] == &dword_0 + 1)
      {
        [v6 setComputePipelineState:self->_tileCutPipelineState];
        [v7 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        [sub_274C() setTexture:? atIndex:?];

        [v7 objectAtIndexedSubscript:1];
        objc_claimAutoreleasedReturnValue();
        [sub_274C() setTexture:? atIndex:?];

        [v8 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        [sub_274C() setTexture:? atIndex:?];

        [v6 setBytes:a5 length:32 atIndex:0];
        v22 = [(MTLComputePipelineState *)self->_tileCutPipelineState threadExecutionWidth];
        v23 = [(MTLComputePipelineState *)self->_tileCutPipelineState maxTotalThreadsPerThreadgroup];
        v24 = *(a5 + 1);
        v29[0] = *a5;
        v29[1] = v24;
        v29[2] = 1;
        v28[0] = v22;
        v28[1] = v23 / v22;
        v28[2] = 1;
        [v6 dispatchThreads:v29 threadsPerThreadgroup:v28];
        [v6 endEncoding];
        v25 = v17;
        v16 = 0;
        *v27 = v17;
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
  v43 = v17;
  v41 = v19;
  v42 = v18;
  if (![v17 count] || !objc_msgSend(v18, "count"))
  {
    v20 = 0;
    v44 = 0;
    v10 = 0;
    sub_2798();
    v21 = -12780;
    goto LABEL_17;
  }

  [v19 count];
  v20 = 0;
  v21 = -12780;
  if (!a7 || !a6)
  {
    sub_2718();
    goto LABEL_17;
  }

  v39 = a8;
  sub_2718();
  if (v22)
  {
    v23 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
    v10 = [v23 commandBuffer];

    if (!v10)
    {
      v19 = "com.apple.cameracapture";
      sub_1FB4();
      FigDebugAssert3();
      sub_1FB4();
      sub_1EAC();
      v21 = FigSignalErrorAtGM();
      v20 = 0;
      v44 = 0;
      sub_2798();
      goto LABEL_17;
    }

    v24 = [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
    [v17 objectForKeyedSubscript:v24];
    objc_claimAutoreleasedReturnValue();
    v25 = sub_27AC();
    v8 = sub_6914(v25, 0xFFFFCE14, 1);

    if ([v8 count] == &dword_0 + 1)
    {
      v26 = [(NSArray *)self->_modelOutputBindingNames objectAtIndexedSubscript:0];
      [v42 objectForKeyedSubscript:v26];
      objc_claimAutoreleasedReturnValue();
      v27 = sub_27AC();
      v20 = sub_6914(v27, 0xFFFFCE14, 1);

      if ([v20 count] == &dword_0 + 1)
      {
        v28 = sub_6914(self, self->_tileOutputEnhancedPixelBuffer, 3);
        if ([v28 count] == &dword_0 + 2)
        {
          v40 = sub_6914(self, self->_tileOutputPixelBuffer, 3);
          if ([v40 count] == &dword_0 + 2)
          {
            v44 = sub_6914(self, a6, 3);
            if ([v44 count] == &dword_0 + 2)
            {
              v29 = [(CMIDeepZoomStandardPostProcMetalStageV2 *)self->_deepZoomPostProcStage processTileFrom:v8 with:v20 to:v28 commandBuffer:v10];
              if (v29)
              {
                v21 = v29;
                v19 = v10;
              }

              else
              {
                v30 = [v10 computeCommandEncoder];
                v19 = v10;
                if (v30)
                {
                  v31 = v30;
                  [v30 setComputePipelineState:self->_tileMergePipelineState];
                  [v28 objectAtIndexedSubscript:0];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  v38 = v28;
                  [v28 objectAtIndexedSubscript:1];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [v31 setTexture:self->_tileInputWeightsTexture atIndex:2];
                  [sub_2740() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [sub_2734() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  v17 = v40;
                  [sub_2740() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [sub_2734() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [v31 setBytes:a7 length:24 atIndex:0];
                  v32 = [(MTLComputePipelineState *)self->_tileMergePipelineState threadExecutionWidth];
                  [(MTLComputePipelineState *)self->_tileMergePipelineState maxTotalThreadsPerThreadgroup];
                  sub_276C();
                  v49 = 1;
                  v45 = v32;
                  v46 = v33 / v32;
                  v47 = 1;
                  [v31 dispatchThreads:v48 threadsPerThreadgroup:&v45];
                  [v31 endEncoding];
                  a8 = [v10 computeCommandEncoder];

                  if (a8)
                  {
                    [a8 setComputePipelineState:self->_tilePastePipelineState];
                    [sub_2740() objectAtIndexedSubscript:?];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [sub_2734() objectAtIndexedSubscript:?];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [v44 objectAtIndexedSubscript:0];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [v44 objectAtIndexedSubscript:1];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [a8 setBytes:a7 length:24 atIndex:0];
                    v34 = [(MTLComputePipelineState *)self->_tilePastePipelineState threadExecutionWidth];
                    [(MTLComputePipelineState *)self->_tilePastePipelineState maxTotalThreadsPerThreadgroup];
                    sub_276C();
                    v49 = 1;
                    v45 = v34;
                    v46 = v35 / v34;
                    v47 = 1;
                    [a8 dispatchThreads:v48 threadsPerThreadgroup:&v45];
                    [a8 endEncoding];
                    v36 = v10;
                    v21 = 0;
                    *v39 = v10;
                    self->_currentCommandQueueIndex = (self->_currentCommandQueueIndex & 1) == 0;
                  }

                  else
                  {
                    sub_1F20();
                    sub_1F84();
                    FigDebugAssert3();
                    sub_1F20();
                    sub_1EAC();
                    v21 = FigSignalErrorAtGM();
                  }

                  v10 = v38;
                  goto LABEL_17;
                }

                sub_1F20();
                sub_1F84();
                FigDebugAssert3();
                sub_1F20();
                sub_1EAC();
                v21 = FigSignalErrorAtGM();
              }

              v10 = v28;
              a8 = 0;
LABEL_30:
              v17 = v40;
              goto LABEL_17;
            }
          }

          else
          {
            v44 = 0;
          }

          v19 = v10;
          v10 = v28;
          a8 = 0;
          v21 = -12786;
          goto LABEL_30;
        }

        v44 = 0;
        v17 = 0;
        v19 = v10;
        v10 = v28;
LABEL_24:
        a8 = 0;
        v21 = -12786;
        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    v44 = 0;
    v19 = v10;
    v10 = 0;
    v17 = 0;
    goto LABEL_24;
  }

LABEL_17:

  return v21;
}

@end