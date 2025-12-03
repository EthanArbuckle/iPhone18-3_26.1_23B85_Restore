@interface CMIDeepZoomLiteMetalStageV2
- (CMIDeepZoomLiteMetalStageV2)initWithMetalContext:(id)context options:(id)options;
- (__n128)tileOverlap;
- (__n128)tileSize;
- (int)clearBuffer:(__CVBuffer *)buffer;
- (int)cutTilesFrom:(id)from to:(id)to params:(id *)params outCommandBuffer:(id *)buffer;
- (int)pasteTilesFrom:(id)from with:(id)with inputFullPixelBuffers:(id)buffers to:(__CVBuffer *)to params:(id *)params outCommandBuffer:(id *)buffer;
- (void)dealloc;
- (void)finishProcessing;
@end

@implementation CMIDeepZoomLiteMetalStageV2

- (CMIDeepZoomLiteMetalStageV2)initWithMetalContext:(id)context options:(id)options
{
  contextCopy = context;
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
  objc_storeStrong((v9 + 8), context);
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

  device = [*(v9 + 8) device];
  newCommandQueue = [device newCommandQueue];
  [*(v9 + 152) setObject:newCommandQueue atIndexedSubscript:0];

  device2 = [*(v9 + 8) device];
  newCommandQueue2 = [device2 newCommandQueue];
  [*(v9 + 152) setObject:newCommandQueue2 atIndexedSubscript:1];

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
  device3 = [*(v9 + 8) device];
  v36 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v34, device3, 0, (v9 + 24));

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
  device4 = [*(v9 + 8) device];
  v44 = [device4 newTextureWithDescriptor:v42];
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
  device5 = [*(v9 + 8) device];
  v47 = [device5 newTextureWithDescriptor:v42];
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
  device6 = [*(v9 + 8) device];
  v50 = [device6 newTextureWithDescriptor:v42];
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
  device7 = [*(v9 + 8) device];
  v53 = [device7 newTextureWithDescriptor:v42];
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
  LOWORD(v1) = *(self + 176);
  WORD2(v1) = *(self + 178);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)tileOverlap
{
  LOWORD(v1) = *(self + 180);
  WORD2(v1) = *(self + 182);
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

- (int)clearBuffer:(__CVBuffer *)buffer
{
  if (!buffer)
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

    computeCommandEncoder = [p_tileOutputPixelBuffer computeCommandEncoder];
    if (!computeCommandEncoder)
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

    v4 = computeCommandEncoder;
    v5 = sub_46F0(self, buffer, 2);
    if ([v5 count] != &dword_0 + 2)
    {
      v28 = -12786;
      goto LABEL_11;
    }

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2074() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    threadExecutionWidth = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v14 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v15 = [sub_2074() objectAtIndexedSubscript:?];
    [v15 width];
    v16 = [sub_2074() objectAtIndexedSubscript:?];
    height = [v16 height];
    sub_2080(height, v18);

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [v5 objectAtIndexedSubscript:1];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    v20 = [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
    v21 = [v5 objectAtIndexedSubscript:1];
    [v21 width];
    v22 = [v5 objectAtIndexedSubscript:1];
    height2 = [v22 height];
    sub_2080(height2, v23);

    [(__CFAllocator *)v4 endEncoding];
    [p_tileOutputPixelBuffer commit];
    goto LABEL_10;
  }

  v4 = kCFAllocatorDefault;
  v24 = *self->_anon_10;
  v25 = *&self->_anon_10[2];
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
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

- (int)cutTilesFrom:(id)from to:(id)to params:(id *)params outCommandBuffer:(id *)buffer
{
  fromCopy = from;
  toCopy = to;
  if (![fromCopy count])
  {
    sub_1F74();
    commandBuffer = 0;
    v16 = -12780;
    goto LABEL_9;
  }

  v15 = [toCopy count];
  v6 = 0;
  v16 = -12780;
  if (!params)
  {
    v7 = 0;
    v8 = 0;
    commandBuffer = 0;
    goto LABEL_9;
  }

  bufferCopy = buffer;
  v7 = 0;
  v8 = 0;
  commandBuffer = 0;
  if (v15)
  {
    v18 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
    commandBuffer = [v18 commandBuffer];

    if (!commandBuffer)
    {
      v6 = "";
      sub_20B8();
      sub_1F84();
      FigDebugAssert3();
      sub_20B8();
      sub_1EAC();
      v16 = FigSignalErrorAtGM();
      sub_1F74();
      commandBuffer = 0;
      goto LABEL_9;
    }

    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if (!computeCommandEncoder)
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

    v6 = computeCommandEncoder;
    v20 = [fromCopy objectAtIndexedSubscript:0];
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

        [v6 setBytes:params length:32 atIndex:0];
        threadExecutionWidth = [(MTLComputePipelineState *)self->_tileCutPipelineState threadExecutionWidth];
        maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_tileCutPipelineState maxTotalThreadsPerThreadgroup];
        v26 = *(params + 1) >> 1;
        v31[0] = *params >> 1;
        v31[1] = v26;
        v31[2] = 1;
        v30[0] = threadExecutionWidth;
        v30[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
        v30[2] = 1;
        [v6 dispatchThreads:v31 threadsPerThreadgroup:v30];
        [v6 endEncoding];
        v27 = commandBuffer;
        v16 = 0;
        *bufferCopy = commandBuffer;
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

- (int)pasteTilesFrom:(id)from with:(id)with inputFullPixelBuffers:(id)buffers to:(__CVBuffer *)to params:(id *)params outCommandBuffer:(id *)buffer
{
  v10 = v9;
  fromCopy = from;
  withCopy = with;
  buffersCopy = buffers;
  v82 = fromCopy;
  v80 = buffersCopy;
  v81 = withCopy;
  if (![fromCopy count] || !objc_msgSend(withCopy, "count"))
  {
    sub_1F10();
    fromCopy = 0;
    v10 = 0;
    commandBuffer = 0;
    buffersCopy = 0;
    v20 = -12780;
    goto LABEL_28;
  }

  [buffersCopy count];
  v20 = -12780;
  if (!params || !to)
  {
    sub_1F38();
    goto LABEL_28;
  }

  bufferCopy = buffer;
  sub_1F38();
  if (v22)
  {
    v23 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
    commandBuffer = [v23 commandBuffer];

    if (!commandBuffer)
    {
      sub_1FB4();
      sub_1E90();
      FigDebugAssert3();
      sub_1FB4();
      sub_1EAC();
      v20 = FigSignalErrorAtGM();
      sub_1F10();
      fromCopy = 0;
      v10 = 0;
      buffersCopy = 0;
      goto LABEL_28;
    }

    buffersCopy = [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
    [fromCopy objectForKeyedSubscript:buffersCopy];
    objc_claimAutoreleasedReturnValue();
    v24 = sub_2060();
    v10 = sub_46F0(v24, v25, v26);

    if ([v10 count] != &dword_0 + 1)
    {
      sub_1F10();
      fromCopy = 0;
      sub_1F00();
      goto LABEL_28;
    }

    v79 = sub_46F0(self, self->_tileOutputPixelBuffer, 3);
    if ([v79 count] == &dword_0 + 2)
    {
      buffersCopy = [(NSArray *)self->_modelOutputBindingNames objectAtIndexedSubscript:0];
      [withCopy objectForKeyedSubscript:buffersCopy];
      objc_claimAutoreleasedReturnValue();
      v27 = sub_2060();
      v30 = sub_46F0(v27, v28, v29);

      withCopy = v30;
      if ([v30 count] == &dword_0 + 1)
      {
        v78 = v10;
        v31 = sub_46F0(self, to, 3);
        if ([v31 count] != &dword_0 + 2)
        {
          sub_1F00();
          buffer = v31;
          fromCopy = v79;
          goto LABEL_28;
        }

        buffersCopy = [v80 objectAtIndexedSubscript:0];
        v32 = sub_46F0(self, buffersCopy, 1);

        v77 = v32;
        if ([v32 count] != &dword_0 + 2)
        {
          sub_1F00();
          buffer = v31;
          fromCopy = v79;
          goto LABEL_27;
        }

        v33 = [v10 objectAtIndexedSubscript:0];
        v75 = withCopy;
        v34 = [sub_2074() objectAtIndexedSubscript:?];
        v35 = *params >> 1;
        v36 = *(params + 1) >> 1;
        v88 = commandBuffer;
        sub_5E78(self, v33, v34, v35, v36, &v88);

        computeCommandEncoder = [commandBuffer computeCommandEncoder];
        if (computeCommandEncoder)
        {
          v38 = computeCommandEncoder;
          v39 = [computeCommandEncoder setComputePipelineState:self->_tileMergePipelineState];
          v41 = sub_20A0(v39, v40, self->_tileEnhancedLumaTexture);
          sub_200C(v41, v42, self->_tileInputWeightsTexture);
          [v31 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [sub_1FA4() setTexture:? atIndex:?];

          [v79 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [sub_1FA4() setTexture:? atIndex:?];

          sub_1FF0(v38, v43);
          threadExecutionWidth = [(MTLComputePipelineState *)self->_tileMergePipelineState threadExecutionWidth];
          [(MTLComputePipelineState *)self->_tileMergePipelineState maxTotalThreadsPerThreadgroup];
          sub_1FD8();
          v87 = 1;
          v83 = threadExecutionWidth;
          v84 = v45 / threadExecutionWidth;
          v85 = 1;
          [v38 dispatchThreads:v86 threadsPerThreadgroup:&v83];
          [v38 endEncoding];
          v74 = commandBuffer;
          commandBuffer = [commandBuffer computeCommandEncoder];

          if (!commandBuffer)
          {
            sub_1FB4();
            sub_1E90();
            FigDebugAssert3();
            sub_1FB4();
            sub_1EAC();
            v20 = FigSignalErrorAtGM();
            buffersCopy = v74;
            buffer = v31;
            fromCopy = v79;
            goto LABEL_26;
          }

          [commandBuffer setComputePipelineState:self->_tilePastePipelineState];
          [v79 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [sub_1F94() setTexture:? atIndex:?];

          v46 = [v31 objectAtIndexedSubscript:0];
          [commandBuffer setTexture:v46 atIndex:1];

          sub_1FF0(commandBuffer, v47);
          threadExecutionWidth2 = [(MTLComputePipelineState *)self->_tilePastePipelineState threadExecutionWidth];
          [(MTLComputePipelineState *)self->_tilePastePipelineState maxTotalThreadsPerThreadgroup];
          sub_1FD8();
          v87 = 1;
          v83 = threadExecutionWidth2;
          v84 = v49 / threadExecutionWidth2;
          v85 = 1;
          [commandBuffer dispatchThreads:v86 threadsPerThreadgroup:&v83];
          if (!(*(params + 4) | *(params + 5)))
          {
            [commandBuffer setComputePipelineState:self->_tilePaste2xFullChromaPipelineState];
            [v32 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_1F94() setTexture:? atIndex:?];

            [sub_1FCC() objectAtIndexedSubscript:?];
            objc_claimAutoreleasedReturnValue();
            [sub_1F94() setTexture:? atIndex:?];

            sub_1FF0(commandBuffer, v50);
            v51 = *(params + 10);
            v52 = *params;
            sub_2024();
            v55 = (v53 * v54);
            v56 = *(params + 11);
            v57 = *(params + 1);
            sub_2024();
            v60 = (v58 * v59);
            threadExecutionWidth3 = [(MTLComputePipelineState *)self->_tilePaste2xFullChromaPipelineState threadExecutionWidth];
            maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_tilePaste2xFullChromaPipelineState maxTotalThreadsPerThreadgroup];
            v73 = [sub_1FCC() objectAtIndexedSubscript:?];
            width2 = v55;
            width = [v73 width];
            if (width < v55)
            {
              v71 = [sub_1FCC() objectAtIndexedSubscript:?];
              width2 = [v71 width];
            }

            v64 = maxTotalThreadsPerThreadgroup / threadExecutionWidth3;
            v65 = [sub_1FCC() objectAtIndexedSubscript:?];
            height = [v65 height];
            height2 = v60;
            if (height < v60)
            {
              v70 = [sub_1FCC() objectAtIndexedSubscript:?];
              height2 = [v70 height];
            }

            v86[0] = width2;
            v86[1] = height2;
            v87 = 1;
            v83 = threadExecutionWidth3;
            v84 = v64;
            v85 = 1;
            [commandBuffer dispatchThreads:v86 threadsPerThreadgroup:&v83];
            if (height < v60)
            {
            }

            if (width < v55)
            {
            }
          }

          [commandBuffer endEncoding];
          buffersCopy = v74;
          v68 = v74;
          v20 = 0;
          *bufferCopy = v74;
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
          buffersCopy = commandBuffer;
          commandBuffer = 0;
        }

        buffer = v31;
        v10 = v78;
        fromCopy = v79;
LABEL_26:
        withCopy = v75;
LABEL_27:
        v21 = v77;
        goto LABEL_28;
      }

      buffer = 0;
    }

    else
    {
      sub_1F10();
    }

    sub_1F00();
    fromCopy = v79;
  }

LABEL_28:

  return v20;
}

@end