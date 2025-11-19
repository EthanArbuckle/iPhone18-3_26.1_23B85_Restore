@interface VideoMitigation
- ($43C834F0531B50B92CAF4577069D180C)configuration;
- (VideoMitigation)initWithConfig:(id *)a3 metalContext:(id)a4 imageDimensions:(id)a5 tuningParameters:(id)a6;
- (int64_t)mitigate:(__CVBuffer *)a3 info:(id)a4 futureFrames:(id *)a5 inputTexture:(id)a6;
- (int64_t)updateFrameQueuesWithInputFrame:(__CVBuffer *)a3 inputTexture:(id)a4 index:(signed __int16)a5;
- (int64_t)updateMetaQueuesWithInfo:(id)a3 index:(signed __int16)a4;
- (int64_t)updateQueuesWithFutureFrame:(id *)a3 futureFrameIndex:(signed __int16)a4 atBaseIndex:(signed __int16)a5;
- (void)_resetIntermediateVariables;
- (void)_spatialMitigate;
- (void)_temporalMitigateWithFuture;
- (void)_temporalMitigateWithPast;
- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)a3;
- (void)dealloc;
- (void)setConfiguration:(id *)a3;
@end

@implementation VideoMitigation

- (void)_resetIntermediateVariables
{
  inputInfoQueue = self->_inputInfoQueue;
  v4 = 5;
  do
  {
    v5 = *(inputInfoQueue - 5);
    if (v5)
    {
      CFRelease(v5);
      *(inputInfoQueue - 5) = 0;
    }

    v6 = *inputInfoQueue;
    *inputInfoQueue++ = 0;

    --v4;
  }

  while (v4);
  self->_frameIndexInVideo = 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VideoMitigation;
  [(VideoMitigation *)&v2 dealloc];
}

- (int64_t)updateFrameQueuesWithInputFrame:(__CVBuffer *)a3 inputTexture:(id)a4 index:(signed __int16)a5
{
  v5 = a5;
  v8 = a4;
  v9 = &self->super.isa + v5;
  v10 = v9[5];
  v9[5] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return 0;
}

- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)a3
{
  v3 = a3;
  inputFrameQueue = self->_inputFrameQueue;
  inputInfoQueue = self->_inputInfoQueue;
  v6 = 1;
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = v7 + v3;
    v10 = v7 + v3 - 5;
    if (v9 >= 5)
    {
      LOWORD(v9) = v10;
    }

    v11 = v9;
    v12 = inputFrameQueue[v9];
    if (v12)
    {
      CFRelease(v12);
      inputFrameQueue[v11] = 0;
    }

    v13 = inputInfoQueue[v11];
    inputInfoQueue[v11] = 0;

    v6 = 0;
    v7 = 2;
  }

  while ((v8 & 1) != 0);
}

- (int64_t)mitigate:(__CVBuffer *)a3 info:(id)a4 futureFrames:(id *)a5 inputTexture:(id)a6
{
  v10 = a4;
  v11 = a6;
  kdebug_trace();
  kdebug_trace();
  frameIndexInVideo = self->_frameIndexInVideo;
  var2 = a5->var2;
  v14 = [(VideoMitigation *)self getFrameIndexInQueue];
  if (self->_frameIndexInVideo)
  {
    if (var2 >= 2)
    {
      v15 = [(VideoMitigation *)self updateQueuesWithFutureFrame:a5 futureFrameIndex:1 atBaseIndex:v14];
      if (v15)
      {
        v16 = v15;
LABEL_21:
        fig_log_get_emitter();
        FigDebugAssert3();
        ++self->_frameIndexInVideo;
        goto LABEL_18;
      }
    }

LABEL_10:
    v22 = [(VideoMitigation *)self updateMetaQueuesWithInfo:v10 index:v14];
    if (v22)
    {
      v16 = v22;
      goto LABEL_21;
    }

    kdebug_trace();
    if (var2 > 1 || frameIndexInVideo >= 2)
    {
      if (frameIndexInVideo < 2)
      {
        [(VideoMitigation *)self _temporalMitigateWithFuture];
      }

      else
      {
        [(VideoMitigation *)self _temporalMitigateWithPast];
      }
    }

    else
    {
      [(VideoMitigation *)self _spatialMitigate];
    }
  }

  else
  {
    if (var2 >= 2)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = v18;
        v20 = [(VideoMitigation *)self updateQueuesWithFutureFrame:a5 futureFrameIndex:v17 atBaseIndex:v14];
        if (v20)
        {
          v16 = v20;
          goto LABEL_21;
        }

        v18 = 0;
        v17 = 1;
      }

      while ((v19 & 1) != 0);
      v21 = [(VideoMitigation *)self updateQueuesWithInputFrame:a3 inputTexture:v11 info:v10 index:v14];
      if (!v21)
      {
        goto LABEL_10;
      }

      v16 = v21;
      goto LABEL_21;
    }

    [VideoMitigation mitigate:info:futureFrames:inputTexture:];
  }

  v16 = 0;
  v23 = 0;
  ++self->_frameIndexInVideo;
  if (self->_useStockGpuSim)
  {
LABEL_18:
    kdebug_trace();
    v23 = v16;
  }

  return v23;
}

- (void)_temporalMitigateWithPast
{
  kdebug_trace();
  v3 = [(VideoMitigation *)self getFrameIndexInQueue];
  if (v3 > 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4;
  }

  v5 = v4 + v3;
  if (v3 <= 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = -2;
  }

  v7 = (v6 + v3);
  LOBYTE(v8) = 1;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:self->_inputFrameQueue[v3] frmIdx:self->_frameIndexInVideo frRef0Buf:self->_inputFrameQueue[v5] frRef1Buf:self->_inputFrameQueue[v7] metaBuf:self->_inputMetaQueue[v3] ref0MetaBuf:self->_inputMetaQueue[v5] ref1MetaBuf:self->_inputMetaQueue[v7] metaBufHW:self->_inputMetaQueue_HW[v3] info:self->_inputInfoQueue[v3] infoTPlusOrMinus1:self->_inputInfoQueue[v5] infoTPlusOrMinus2:self->_inputInfoQueue[v7] usePastAsRef:v8];

  kdebug_trace();
}

- (void)_temporalMitigateWithFuture
{
  kdebug_trace();
  v3 = [(VideoMitigation *)self getFrameIndexInQueue];
  v4 = v3 - 4;
  if (v3 < 4)
  {
    v4 = v3 + 1;
  }

  if (v3 > 2)
  {
    v5 = -3;
  }

  else
  {
    v5 = 2;
  }

  v6 = (v5 + v3);
  LOBYTE(v7) = 0;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:self->_inputFrameQueue[v3] frmIdx:self->_frameIndexInVideo frRef0Buf:self->_inputFrameQueue[v4] frRef1Buf:self->_inputFrameQueue[v6] metaBuf:self->_inputMetaQueue[v3] ref0MetaBuf:self->_inputMetaQueue[v4] ref1MetaBuf:self->_inputMetaQueue[v6] metaBufHW:self->_inputMetaQueue_HW[v3] info:self->_inputInfoQueue[v3] infoTPlusOrMinus1:self->_inputInfoQueue[v4] infoTPlusOrMinus2:self->_inputInfoQueue[v6] usePastAsRef:v7];

  kdebug_trace();
}

- (void)_spatialMitigate
{
  v3 = &self->super.isa + [(VideoMitigation *)self getFrameIndexInQueue];
  LOBYTE(v4) = 0;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:v3[5] frmIdx:self->_frameIndexInVideo frRef0Buf:v3[5] frRef1Buf:v3[5] metaBuf:v3[15] ref0MetaBuf:v3[15] ref1MetaBuf:v3[15] metaBufHW:v3[20] info:v3[10] infoTPlusOrMinus1:v3[10] infoTPlusOrMinus2:v3[10] usePastAsRef:v4];
}

- ($43C834F0531B50B92CAF4577069D180C)configuration
{
  v3 = *&self[3].var1.var4;
  *&retstr->var0.var0 = *&self[3].var1.var0;
  *&retstr->var0.var7 = v3;
  v4 = *&self[4].var0.var7;
  *&retstr->var1.var0 = *&self[4].var0.var0;
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

- (VideoMitigation)initWithConfig:(id *)a3 metalContext:(id)a4 imageDimensions:(id)a5 tuningParameters:(id)a6
{
  v11 = a4;
  v12 = a6;
  if (v11)
  {
    v29.receiver = self;
    v29.super_class = VideoMitigation;
    v13 = [(VideoMitigation *)&v29 init];
    self = v13;
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = *&a3->var0.var0;
    v15 = *&a3->var0.var7;
    v16 = *&a3->var1.var4;
    *&v13->_configuration.externalCfg.lightMode = *&a3->var1.var0;
    *&v13->_configuration.externalCfg.frameDelay = v16;
    *&v13->_configuration.internalCfg.clipThreshold = v14;
    *&v13->_configuration.internalCfg.enableColorMask = v15;
    objc_storeStrong(&v13->_metalContext, a4);
    self->_hwMode = a3->var1.var11 != 0;
    v17 = [[MitigationHW alloc] initWithimageDimensions:a5 tuningParameters:v12];
    mitigationHW = self->_mitigationHW;
    self->_mitigationHW = v17;

    if (!self->_mitigationHW)
    {
      goto LABEL_12;
    }

    v19 = objc_alloc_init(CalcHomography);
    calcTransform = self->_calcTransform;
    self->_calcTransform = v19;

    if (!self->_calcTransform)
    {
      goto LABEL_12;
    }

    [(VideoMitigation *)self _resetIntermediateVariables];
    v21 = 120;
    while (1)
    {
      v22 = [(FigMetalContext *)self->_metalContext device];
      v23 = [v22 newBufferWithLength:10192 options:0];
      v24 = *(&self->super.isa + v21);
      *(&self->super.isa + v21) = v23;

      if (!*(&self->super.isa + v21))
      {
        break;
      }

      v21 += 8;
      if (v21 == 160)
      {
        v25 = [NSMutableData dataWithLength:10192];
        dummyMetaContainer = self->_dummyMetaContainer;
        self->_dummyMetaContainer = v25;

        self->_useStockGpuSim = !self->_hwMode;
        self = self;
        v27 = self;
        goto LABEL_9;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_0();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_0();
  }

  FigDebugAssert3();
LABEL_12:
  v27 = 0;
LABEL_9:

  return v27;
}

- (int64_t)updateMetaQueuesWithInfo:(id)a3 index:(signed __int16)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_inputInfoQueue[v4], a3);
  v8 = [v7 objectForKeyedSubscript:@"RepairMetaContainer"];
  v9 = v8;
  if (!v8 || ![v8 mutableBytes])
  {
    v11 = 0;
LABEL_9:
    v12 = 5;
    goto LABEL_7;
  }

  v10 = (&self->super.isa + v4);
  v11 = [v10[15] contents];
  if (!v11)
  {
    goto LABEL_9;
  }

  memcpy(v11, [v9 mutableBytes], 0x27D0uLL);
  v11 = [v7 objectForKeyedSubscript:@"RepairMetaContainer_HW"];
  v10[20] = [v11 mutableBytes];
  if (!v11 || ![v11 mutableBytes])
  {
    goto LABEL_9;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (int64_t)updateQueuesWithFutureFrame:(id *)a3 futureFrameIndex:(signed __int16)a4 atBaseIndex:(signed __int16)a5
{
  if (a4 + a5 + 1 < 5)
  {
    v6 = a4 + a5 + 1;
  }

  else
  {
    v6 = a4 + a5 - 4;
  }

  v7 = (a3->var0 + 48 * a4);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  if (v8)
  {
    v13 = +[NSMutableDictionary dictionary];
    v14 = v13;
    if (v9)
    {
      [v13 setObject:v9 forKey:@"MetaData"];
    }

    [v14 setObject:v10 forKey:@"RepairMetaContainer"];
    [v14 setObject:v11 forKey:@"RepairMetaContainer_HW"];
    v15 = [(VideoMitigation *)self updateQueuesWithInputFrame:v8 inputTexture:v12 info:v14 index:v6];
    if (v15)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }
  }

  else
  {
    v14 = 0;
    v15 = 5;
  }

  return v15;
}

- (uint64_t)mitigate:info:futureFrames:inputTexture:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

@end