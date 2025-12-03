@interface VideoMitigation
- ($43C834F0531B50B92CAF4577069D180C)configuration;
- (VideoMitigation)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (int64_t)mitigate:(__CVBuffer *)mitigate info:(id)info futureFrames:(id *)frames inputTexture:(id)texture;
- (int64_t)updateFrameQueuesWithInputFrame:(__CVBuffer *)frame inputTexture:(id)texture index:(signed __int16)index;
- (int64_t)updateMetaQueuesWithInfo:(id)info index:(signed __int16)index;
- (int64_t)updateQueuesWithFutureFrame:(id *)frame futureFrameIndex:(signed __int16)index atBaseIndex:(signed __int16)baseIndex;
- (void)_resetIntermediateVariables;
- (void)_spatialMitigate;
- (void)_temporalMitigateWithFuture;
- (void)_temporalMitigateWithPast;
- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index;
- (void)dealloc;
- (void)setConfiguration:(id *)configuration;
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

- (int64_t)updateFrameQueuesWithInputFrame:(__CVBuffer *)frame inputTexture:(id)texture index:(signed __int16)index
{
  indexCopy = index;
  textureCopy = texture;
  v9 = &self->super.isa + indexCopy;
  v10 = v9[5];
  v9[5] = frame;
  if (frame)
  {
    CFRetain(frame);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return 0;
}

- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index
{
  indexCopy = index;
  inputFrameQueue = self->_inputFrameQueue;
  inputInfoQueue = self->_inputInfoQueue;
  v6 = 1;
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = v7 + indexCopy;
    v10 = v7 + indexCopy - 5;
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

- (int64_t)mitigate:(__CVBuffer *)mitigate info:(id)info futureFrames:(id *)frames inputTexture:(id)texture
{
  infoCopy = info;
  textureCopy = texture;
  kdebug_trace();
  kdebug_trace();
  frameIndexInVideo = self->_frameIndexInVideo;
  var2 = frames->var2;
  getFrameIndexInQueue = [(VideoMitigation *)self getFrameIndexInQueue];
  if (self->_frameIndexInVideo)
  {
    if (var2 >= 2)
    {
      v15 = [(VideoMitigation *)self updateQueuesWithFutureFrame:frames futureFrameIndex:1 atBaseIndex:getFrameIndexInQueue];
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
    v22 = [(VideoMitigation *)self updateMetaQueuesWithInfo:infoCopy index:getFrameIndexInQueue];
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
        v20 = [(VideoMitigation *)self updateQueuesWithFutureFrame:frames futureFrameIndex:v17 atBaseIndex:getFrameIndexInQueue];
        if (v20)
        {
          v16 = v20;
          goto LABEL_21;
        }

        v18 = 0;
        v17 = 1;
      }

      while ((v19 & 1) != 0);
      v21 = [(VideoMitigation *)self updateQueuesWithInputFrame:mitigate inputTexture:textureCopy info:infoCopy index:getFrameIndexInQueue];
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
  getFrameIndexInQueue = [(VideoMitigation *)self getFrameIndexInQueue];
  if (getFrameIndexInQueue > 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4;
  }

  v5 = v4 + getFrameIndexInQueue;
  if (getFrameIndexInQueue <= 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = -2;
  }

  v7 = (v6 + getFrameIndexInQueue);
  LOBYTE(v8) = 1;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:self->_inputFrameQueue[getFrameIndexInQueue] frmIdx:self->_frameIndexInVideo frRef0Buf:self->_inputFrameQueue[v5] frRef1Buf:self->_inputFrameQueue[v7] metaBuf:self->_inputMetaQueue[getFrameIndexInQueue] ref0MetaBuf:self->_inputMetaQueue[v5] ref1MetaBuf:self->_inputMetaQueue[v7] metaBufHW:self->_inputMetaQueue_HW[getFrameIndexInQueue] info:self->_inputInfoQueue[getFrameIndexInQueue] infoTPlusOrMinus1:self->_inputInfoQueue[v5] infoTPlusOrMinus2:self->_inputInfoQueue[v7] usePastAsRef:v8];

  kdebug_trace();
}

- (void)_temporalMitigateWithFuture
{
  kdebug_trace();
  getFrameIndexInQueue = [(VideoMitigation *)self getFrameIndexInQueue];
  v4 = getFrameIndexInQueue - 4;
  if (getFrameIndexInQueue < 4)
  {
    v4 = getFrameIndexInQueue + 1;
  }

  if (getFrameIndexInQueue > 2)
  {
    v5 = -3;
  }

  else
  {
    v5 = 2;
  }

  v6 = (v5 + getFrameIndexInQueue);
  LOBYTE(v7) = 0;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:self->_inputFrameQueue[getFrameIndexInQueue] frmIdx:self->_frameIndexInVideo frRef0Buf:self->_inputFrameQueue[v4] frRef1Buf:self->_inputFrameQueue[v6] metaBuf:self->_inputMetaQueue[getFrameIndexInQueue] ref0MetaBuf:self->_inputMetaQueue[v4] ref1MetaBuf:self->_inputMetaQueue[v6] metaBufHW:self->_inputMetaQueue_HW[getFrameIndexInQueue] info:self->_inputInfoQueue[getFrameIndexInQueue] infoTPlusOrMinus1:self->_inputInfoQueue[v4] infoTPlusOrMinus2:self->_inputInfoQueue[v6] usePastAsRef:v7];

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

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.lightMode = *&configuration->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.internalCfg.clipThreshold = v3;
  *&self->_configuration.internalCfg.enableColorMask = v4;
}

- (VideoMitigation)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  if (contextCopy)
  {
    v29.receiver = self;
    v29.super_class = VideoMitigation;
    v13 = [(VideoMitigation *)&v29 init];
    self = v13;
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = *&config->var0.var0;
    v15 = *&config->var0.var7;
    v16 = *&config->var1.var4;
    *&v13->_configuration.externalCfg.lightMode = *&config->var1.var0;
    *&v13->_configuration.externalCfg.frameDelay = v16;
    *&v13->_configuration.internalCfg.clipThreshold = v14;
    *&v13->_configuration.internalCfg.enableColorMask = v15;
    objc_storeStrong(&v13->_metalContext, context);
    self->_hwMode = config->var1.var11 != 0;
    v17 = [[MitigationHW alloc] initWithimageDimensions:dimensions tuningParameters:parametersCopy];
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
      device = [(FigMetalContext *)self->_metalContext device];
      v23 = [device newBufferWithLength:10192 options:0];
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
        selfCopy = self;
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
  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (int64_t)updateMetaQueuesWithInfo:(id)info index:(signed __int16)index
{
  indexCopy = index;
  infoCopy = info;
  objc_storeStrong(&self->_inputInfoQueue[indexCopy], info);
  v8 = [infoCopy objectForKeyedSubscript:@"RepairMetaContainer"];
  v9 = v8;
  if (!v8 || ![v8 mutableBytes])
  {
    contents = 0;
LABEL_9:
    v12 = 5;
    goto LABEL_7;
  }

  v10 = (&self->super.isa + indexCopy);
  contents = [v10[15] contents];
  if (!contents)
  {
    goto LABEL_9;
  }

  memcpy(contents, [v9 mutableBytes], 0x27D0uLL);
  contents = [infoCopy objectForKeyedSubscript:@"RepairMetaContainer_HW"];
  v10[20] = [contents mutableBytes];
  if (!contents || ![contents mutableBytes])
  {
    goto LABEL_9;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (int64_t)updateQueuesWithFutureFrame:(id *)frame futureFrameIndex:(signed __int16)index atBaseIndex:(signed __int16)baseIndex
{
  if (index + baseIndex + 1 < 5)
  {
    v6 = index + baseIndex + 1;
  }

  else
  {
    v6 = index + baseIndex - 4;
  }

  v7 = (frame->var0 + 48 * index);
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