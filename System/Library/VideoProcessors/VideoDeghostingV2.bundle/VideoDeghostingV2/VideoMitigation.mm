@interface VideoMitigation
- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration;
- (VideoMitigation)initWithConfig:(id *)a3 metalToolBox:(id)a4 MetalContext:(id)a5 imageDimensions:(id)a6;
- (int64_t)mitigate:(__CVBuffer *)a3 info:(id)a4 futureFrames:(id *)a5;
- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)a3 info:(id)a4 index:(signed __int16)a5;
- (int64_t)updateQueuesWithTwoFutureFrames:(id *)a3 atBaseIndex:(signed __int16)a4;
- (void)_resetIntermediateVariables;
- (void)_spatialMitigate;
- (void)_temporalMitigate;
- (void)_temporalMitigateWithFuture;
- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)a3;
- (void)dealloc;
- (void)setConfiguration:(id *)a3;
@end

@implementation VideoMitigation

- (void)_resetIntermediateVariables
{
  inputInfoQueue = self->_inputInfoQueue;
  v4 = 4;
  do
  {
    v5 = *(inputInfoQueue - 8);
    if (v5)
    {
      CFRelease(v5);
      *(inputInfoQueue - 8) = 0;
    }

    v6 = *(inputInfoQueue - 4);
    *(inputInfoQueue - 4) = 0;

    v7 = *inputInfoQueue;
    *inputInfoQueue++ = 0;

    --v4;
  }

  while (v4);
  self->_frameIndexInVideo = 0;
  self->_consecutiveTemporalRepairFrameCnt = 0;
}

- (void)dealloc
{
  for (i = 176; i != 208; i += 8)
  {
    v4 = *(&self->super.isa + i);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = VideoMitigation;
  [(VideoMitigation *)&v5 dealloc];
}

- (int64_t)updateQueuesWithTwoFutureFrames:(id *)a3 atBaseIndex:(signed __int16)a4
{
  v4 = a4;
  v7 = 0;
  for (i = 1; ; i = 0)
  {
    v9 = i;
    v10 = (a3->var0 + 16 * v7);
    v11 = *v10;
    v12 = v10[1];
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {

      return 5;
    }

    v15 = v7 + v4 + 1 < 4 ? v7 + v4 + 1 : v7 + v4 - 3;
    v16 = +[NSMutableDictionary dictionary];
    [v16 setObject:v13 forKey:@"MetaData"];
    [v16 setObject:self->_dummyMetaContainer forKey:@"RepairMetaContainer"];
    v17 = [(VideoMitigation *)self updateQueuesWithInputFrame:v11 info:v16 index:v15];
    if (v17)
    {
      break;
    }

    v7 = 1;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = v17;
  sub_23C18(v17, v16, v13);
  return v18;
}

- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)a3
{
  v3 = a3;
  inputFrameQueue = self->_inputFrameQueue;
  inputFrameTextureQueue = self->_inputFrameTextureQueue;
  inputInfoQueue = self->_inputInfoQueue;
  v7 = 1;
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = v8 + v3;
    v11 = v8 + v3 - 4;
    if (v10 >= 4)
    {
      LOWORD(v10) = v11;
    }

    v12 = v10;
    v13 = inputFrameQueue[v10];
    if (v13)
    {
      CFRelease(v13);
      inputFrameQueue[v12] = 0;
    }

    v14 = inputFrameTextureQueue[v12];
    inputFrameTextureQueue[v12] = 0;

    v15 = inputInfoQueue[v12];
    inputInfoQueue[v12] = 0;

    v7 = 0;
    v8 = 2;
  }

  while ((v9 & 1) != 0);
}

- (int64_t)mitigate:(__CVBuffer *)a3 info:(id)a4 futureFrames:(id *)a5
{
  v8 = a4;
  kdebug_trace();
  frameIndexInVideo = self->_frameIndexInVideo;
  var2 = a5->var2;
  v12 = frameIndexInVideo < 2 && var2 > 1;
  v13 = [(VideoMitigation *)self getFrameIndexInQueue];
  if (v12)
  {
    v14 = [(VideoMitigation *)self updateQueuesWithTwoFutureFrames:a5 atBaseIndex:v13];
    if (v14)
    {
      v17 = v14;
      goto LABEL_26;
    }
  }

  v15 = [(VideoMitigation *)self updateQueuesWithInputFrame:a3 info:v8 index:v13];
  if (v15)
  {
    v17 = v15;
LABEL_26:
    sub_23CB8();
    goto LABEL_27;
  }

  v16 = [(MTLBuffer *)self->_inputMetaQueue[v13] contents];
  v17 = v16;
  if (!v16)
  {
LABEL_27:
    ++self->_frameIndexInVideo;
    self->_consecutiveTemporalRepairFrameCnt = 0;
    kdebug_trace();
    goto LABEL_22;
  }

  if (*v16 < 1)
  {
    self->_consecutiveTemporalRepairFrameCnt = 0;
  }

  else
  {
    if (var2 > 1 || frameIndexInVideo >= 2)
    {
      if (frameIndexInVideo < 2)
      {
        [(VideoMitigation *)self _temporalMitigateWithFuture];
      }

      else
      {
        [(VideoMitigation *)self _temporalMitigate];
      }

      ++self->_consecutiveTemporalRepairFrameCnt;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      [(VideoMitigation *)self _spatialMitigate];
      self->_consecutiveTemporalRepairFrameCnt = 0;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    [(VideoMitigation *)self cleanTwoFutureFramesInQueuesAtBaseIndex:v13];
  }

LABEL_21:
  ++self->_frameIndexInVideo;
  v18 = *v17;
  v19 = *(v17 + 1182);
  [(MitigationGPU *)self->_mitigationGpu roiClusterCnt];
  kdebug_trace();
  v17 = 0;
LABEL_22:

  return v17;
}

- (void)_temporalMitigate
{
  kdebug_trace();
  v3 = [(VideoMitigation *)self getFrameIndexInQueue];
  v4 = v3;
  if (v3 > 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = 3;
  }

  v6 = v5 + v3;
  if (v3 < 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = -2;
  }

  v8 = v7 + v3;
  consecutiveTemporalRepairFrameCnt = self->_consecutiveTemporalRepairFrameCnt;
  v10 = self->_inputFrameTextureQueue[v3];
  v11 = self->_inputFrameTextureQueue[v6];
  mitigationCpu = self->_mitigationCpu;
  v13 = v8;
  v14 = &self->_inputFrameTextureQueue[v8];
  v15 = *v14;
  v16 = v11;
  if (consecutiveTemporalRepairFrameCnt >= 2)
  {
    v16 = self->_trRefTexQueue[v6];
  }

  v17 = self->_inputMetaQueue[v4];
  v18 = self->_inputMetaQueue[v6];
  v19 = self->_inputMetaQueue[v13];
  if (consecutiveTemporalRepairFrameCnt <= 1)
  {
    v20 = v14;
  }

  else
  {
    v20 = &self->_trRefTexQueue[v13];
  }

  v21 = self->_inputInfoQueue[v4];
  v22 = self->_inputInfoQueue[v6];
  v23 = self->_inputInfoQueue[v13];
  v24 = *v20;
  v25 = self->_trRefTexQueue[v4];
  v26 = *&self->_configuration.internalCfg.enableColorMask;
  v29[0] = *&self->_configuration.internalCfg.clipThreshold;
  v29[1] = v26;
  v27 = *&self->_configuration.externalCfg.frameDelay;
  v29[2] = *&self->_configuration.externalCfg.lightMode;
  v29[3] = v27;
  LOBYTE(v28) = 1;
  [(MitigationCPU *)mitigationCpu hybridMitigationYUVInplaceInput:v10 frRefTPlusOrMinus1:v11 frRefTPlusOrMinus2:v15 trRefTPlusOrMinus1:v16 trRefTPlusOrMinus2:v24 meta:v17 metaTPlusOrMinus1:v18 metaTPlusOrMinus2:v19 info:v21 infoTPlusOrMinus1:v22 infoTPlusOrMinus2:v23 config:v29 trInput:v25 usePastAsRef:v28];
  kdebug_trace();
}

- (void)_temporalMitigateWithFuture
{
  kdebug_trace();
  v3 = [(VideoMitigation *)self getFrameIndexInQueue];
  inputFrameTextureQueue = self->_inputFrameTextureQueue;
  v5 = self->_inputFrameTextureQueue[v3];
  v6 = v3 - 3;
  if (v3 < 3)
  {
    v6 = v3 + 1;
  }

  v7 = inputFrameTextureQueue[v6];
  if (v3 < 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = -2;
  }

  v9 = (v8 + v3);
  v10 = inputFrameTextureQueue[v9];
  v11 = self->_inputMetaQueue[v3];
  v12 = self->_inputMetaQueue[v6];
  v13 = self->_inputMetaQueue[v9];
  v14 = self->_inputInfoQueue[v3];
  v15 = self->_inputInfoQueue[v6];
  v16 = self->_inputInfoQueue[v9];
  mitigationCpu = self->_mitigationCpu;
  v18 = self->_trRefTexQueue[v3];
  v19 = *&self->_configuration.internalCfg.enableColorMask;
  v22[0] = *&self->_configuration.internalCfg.clipThreshold;
  v22[1] = v19;
  v20 = *&self->_configuration.externalCfg.frameDelay;
  v22[2] = *&self->_configuration.externalCfg.lightMode;
  v22[3] = v20;
  LOBYTE(v21) = 0;
  [(MitigationCPU *)mitigationCpu hybridMitigationYUVInplaceInput:v5 frRefTPlusOrMinus1:v7 frRefTPlusOrMinus2:v10 trRefTPlusOrMinus1:v7 trRefTPlusOrMinus2:v10 meta:v11 metaTPlusOrMinus1:v12 metaTPlusOrMinus2:v13 info:v14 infoTPlusOrMinus1:v15 infoTPlusOrMinus2:v16 config:v22 trInput:v18 usePastAsRef:v21];
  kdebug_trace();
}

- (void)_spatialMitigate
{
  v3 = [(VideoMitigation *)self getFrameIndexInQueue];
  mitigationCpu = self->_mitigationCpu;
  v5 = &self->super.isa + v3;
  v6 = v5[10];
  v7 = v5[26];
  v8 = v5[18];
  v9 = v5[14];
  v10 = *&self->_configuration.internalCfg.enableColorMask;
  v13[0] = *&self->_configuration.internalCfg.clipThreshold;
  v13[1] = v10;
  v11 = *&self->_configuration.externalCfg.frameDelay;
  v13[2] = *&self->_configuration.externalCfg.lightMode;
  v13[3] = v11;
  LOBYTE(v12) = 0;
  [(MitigationCPU *)mitigationCpu hybridMitigationYUVInplaceInput:v6 frRefTPlusOrMinus1:v6 frRefTPlusOrMinus2:v6 trRefTPlusOrMinus1:v7 trRefTPlusOrMinus2:v7 meta:v8 metaTPlusOrMinus1:v8 metaTPlusOrMinus2:v9 info:v9 infoTPlusOrMinus1:v9 infoTPlusOrMinus2:v13 config:0 trInput:v12 usePastAsRef:?];
}

- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration
{
  v3 = *&self[4].var0.var10;
  *&retstr->var0.var0 = *&self[4].var0.var2;
  *&retstr->var0.var7 = v3;
  v4 = *&self[4].var1.var9;
  *&retstr->var1.var0 = *&self[4].var1.var2;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var7;
  v5 = *&a3->var1.var4;
  *&self->_configuration.externalCfg.lightMode = *&a3->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.internalCfg.clipThreshold = v3;
  *&self->_configuration.internalCfg.enableColorMask = v4;
}

- (VideoMitigation)initWithConfig:(id *)a3 metalToolBox:(id)a4 MetalContext:(id)a5 imageDimensions:(id)a6
{
  v11 = a4;
  v12 = a5;
  if (v12 && v11)
  {
    v34.receiver = self;
    v34.super_class = VideoMitigation;
    v13 = [(VideoMitigation *)&v34 init];
    self = v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = *&a3->var0.var0;
    v15 = *&a3->var0.var7;
    v16 = *&a3->var1.var4;
    *(v13 + 296) = *&a3->var1.var0;
    *(v13 + 312) = v16;
    *(v13 + 264) = v14;
    *(v13 + 280) = v15;
    objc_storeStrong(v13 + 1, a5);
    objc_storeStrong(&self->_metalToolbox, a4);
    v17 = [[MitigationGPU alloc] initWithMetalToolBox:self->_metalToolbox metalContext:v12 imageDimensions:a6];
    mitigationGpu = self->_mitigationGpu;
    self->_mitigationGpu = v17;

    if (!self->_mitigationGpu)
    {
      goto LABEL_16;
    }

    v19 = [[MitigationCPU alloc] initWithMetalToolBox:self->_metalToolbox mitigationGPU:self->_mitigationGpu];
    mitigationCpu = self->_mitigationCpu;
    self->_mitigationCpu = v19;

    if (!self->_mitigationCpu)
    {
      goto LABEL_16;
    }

    v21 = [[CalcHomography alloc] initWithMetalToolBox:self->_metalToolbox];
    calcTransform = self->_calcTransform;
    self->_calcTransform = v21;

    if (!self->_calcTransform)
    {
      goto LABEL_16;
    }

    [(VideoMitigation *)self _resetIntermediateVariables];
    v23 = 0;
    while (1)
    {
      v24 = [(FigMetalContext *)self->_metalContext device];
      v25 = [v24 newBufferWithLength:9544 options:0];
      v26 = self->_inputMetaQueue[v23];
      self->_inputMetaQueue[v23] = v25;

      if (!self->_inputMetaQueue[v23])
      {
        break;
      }

      PixelBuffer = CreatePixelBuffer();
      self->_trRefQueue[v23] = PixelBuffer;
      if (!PixelBuffer)
      {
        break;
      }

      v28 = sub_C6CC(PixelBuffer, self->_metalContext, 0, 0);
      v29 = self->_trRefTexQueue[v23];
      self->_trRefTexQueue[v23] = v28;

      if (!self->_trRefTexQueue[v23])
      {
        break;
      }

      if (++v23 == 4)
      {
        v30 = [NSMutableData dataWithLength:9544];
        dummyMetaContainer = self->_dummyMetaContainer;
        self->_dummyMetaContainer = v30;

        self = self;
        v32 = self;
        goto LABEL_13;
      }
    }

    fig_log_get_emitter();
    sub_B550();
  }

  else
  {
    fig_log_get_emitter();
    sub_B550();
  }

  FigDebugAssert3();
LABEL_16:
  v32 = 0;
LABEL_13:

  return v32;
}

- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)a3 info:(id)a4 index:(signed __int16)a5
{
  v5 = a5;
  v9 = a4;
  v10 = &self->super.isa + v5;
  v11 = v10[6];
  v10[6] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = sub_22594(a3, [(GGMMetalToolBox *)self->_metalToolbox cvMetalTextureCacheRef], self->_metalContext, 0, 0);
  if (!v12)
  {
    v15 = 0;
LABEL_12:
    v17 = 5;
    goto LABEL_10;
  }

  v13 = (&self->super.isa + v5);
  objc_storeStrong(v13 + 10, v12);
  objc_storeStrong(v13 + 14, a4);
  v14 = [v9 objectForKeyedSubscript:@"RepairMetaContainer"];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_12;
  }

  if (![v14 mutableBytes])
  {
    goto LABEL_12;
  }

  v16 = [v13[18] contents];
  if (!v16)
  {
    goto LABEL_12;
  }

  memcpy(v16, [v15 mutableBytes], 0x2548uLL);
  v17 = 0;
LABEL_10:

  return v17;
}

@end