@interface RepairWeightsGenerator
- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration;
- (RepairWeightsGenerator)initWithConfiguration:(id *)configuration withToolBox:(id)box homographyHandle:(id)handle imageDimensions:(id)dimensions;
- (int64_t)process:(__CVBuffer *)process info:(id)info metaContainerBuffer:(id)buffer computeBlendingWeights:(BOOL)weights futureFrames:(id *)frames;
- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)frame info:(id)info meta:(id)meta index:(signed __int16)index;
- (int64_t)updateQueuesWithTwoFutureFrames:(id *)frames atBaseIndex:(signed __int16)index;
- (void)_computeBlendingWeightsYUVInput:(id)input frRefTPlusOrMinus1:(id)minus1 frRefTPlusOrMinus2:(id)minus2 trRefTPlusOrMinus1:(id)orMinus1 trRefTPlusOrMinus2:(id)orMinus2 meta:(id)meta metaTPlusOrMinus1:(id)plusOrMinus1 metaTPlusOrMinus2:(id)self0 info:(id)self1 infoTPlusOrMinus1:(id)self2 infoTPlusOrMinus2:(id)self3 config:(id *)self4 trInput:(id)self5 usePastAsRef:(BOOL)self6;
- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index;
- (void)computeBlendingWeights;
- (void)computeBlendingWeightsWithFuture;
- (void)dealloc;
- (void)reset;
- (void)setConfiguration:(id *)configuration;
@end

@implementation RepairWeightsGenerator

- (RepairWeightsGenerator)initWithConfiguration:(id *)configuration withToolBox:(id)box homographyHandle:(id)handle imageDimensions:(id)dimensions
{
  boxCopy = box;
  handleCopy = handle;
  v35.receiver = self;
  v35.super_class = RepairWeightsGenerator;
  v11 = [(RepairWeightsGenerator *)&v35 init];
  v12 = v11;
  if (v11)
  {
    v13 = *&configuration->var0.var0;
    v14 = *&configuration->var0.var7;
    v15 = *&configuration->var1.var4;
    *(v11 + 296) = *&configuration->var1.var0;
    *(v11 + 312) = v15;
    *(v11 + 264) = v13;
    *(v11 + 280) = v14;
    if (boxCopy)
    {
      v16 = boxCopy;
    }

    else
    {
      v16 = objc_alloc_init(GGMMetalToolBox);
    }

    v17 = *(v12 + 1);
    *(v12 + 1) = v16;

    if (handleCopy)
    {
      v18 = handleCopy;
    }

    else
    {
      v18 = [[CalcHomography alloc] initWithMetalToolBox:*(v12 + 1)];
    }

    v19 = *(v12 + 2);
    *(v12 + 2) = v18;

    [v12 reset];
    for (i = 0; i != 32; i += 8)
    {
      PixelBuffer = CreatePixelBuffer();
      v22 = &v12[i];
      *&v12[i + 152] = PixelBuffer;
      if (!PixelBuffer)
      {
        sub_26264();
        goto LABEL_19;
      }

      v23 = PixelBuffer;
      metalContext = [*(v12 + 1) metalContext];
      v25 = sub_C6CC(v23, metalContext, 0, 0);
      v26 = *(v22 + 23);
      *(v22 + 23) = v25;

      if (!*(v22 + 23))
      {
        sub_261EC();
        goto LABEL_19;
      }
    }

    getDevice = [*(v12 + 1) getDevice];
    v28 = [getDevice newBufferWithLength:9544 options:0];
    v29 = *(v12 + 29);
    *(v12 + 29) = v28;

    if (*(v12 + 29))
    {
      v30 = CreatePixelBuffer();
      *(v12 + 30) = v30;
      if (!v30)
      {
        sub_260FC();
        goto LABEL_16;
      }

      metalContext2 = [*(v12 + 1) metalContext];
      v32 = sub_C6CC(v30, metalContext2, 0, 0);
      v33 = *(v12 + 31);
      *(v12 + 31) = v32;

      if (*(v12 + 31))
      {
        v12[256] = 0;
        v30 = v12;
        goto LABEL_16;
      }

      sub_26084();
    }

    else
    {
      sub_26174();
    }
  }

  else
  {
    sub_262DC();
  }

LABEL_19:
  v30 = 0;
LABEL_16:

  return v30;
}

- (void)reset
{
  self->_roiClusterCnt = 0;
  self->_frameIndexInVideo = 0;
  self->_consecutiveTemporalRepairFrameCnt = 0;
}

- (void)dealloc
{
  for (i = 0; i != 4; ++i)
  {
    CVPixelBufferRelease(self->_trRefQueue[i]);
    v4 = self->_inputFrameQueue[i];
    if (v4)
    {
      CFRelease(v4);
      self->_inputFrameQueue[i] = 0;
    }
  }

  CVPixelBufferRelease(self->_temporalMitigated);
  v5.receiver = self;
  v5.super_class = RepairWeightsGenerator;
  [(RepairWeightsGenerator *)&v5 dealloc];
}

- (void)_computeBlendingWeightsYUVInput:(id)input frRefTPlusOrMinus1:(id)minus1 frRefTPlusOrMinus2:(id)minus2 trRefTPlusOrMinus1:(id)orMinus1 trRefTPlusOrMinus2:(id)orMinus2 meta:(id)meta metaTPlusOrMinus1:(id)plusOrMinus1 metaTPlusOrMinus2:(id)self0 info:(id)self1 infoTPlusOrMinus1:(id)self2 infoTPlusOrMinus2:(id)self3 config:(id *)self4 trInput:(id)self5 usePastAsRef:(BOOL)self6
{
  inputCopy = input;
  minus1Copy = minus1;
  minus2Copy = minus2;
  orMinus1Copy = orMinus1;
  orMinus2Copy = orMinus2;
  metaCopy = meta;
  plusOrMinus1Copy = plusOrMinus1;
  plusOrMinus2Copy = plusOrMinus2;
  infoCopy = info;
  tPlusOrMinus1Copy = tPlusOrMinus1;
  tPlusOrMinus2Copy = tPlusOrMinus2;
  trInputCopy = trInput;
  v60 = tPlusOrMinus1Copy;
  v61 = infoCopy;
  v59 = tPlusOrMinus2Copy;
  if (config->var1.var1)
  {
    v70 = matrix_identity_float3x3.columns[1];
    v71 = matrix_identity_float3x3.columns[0];
    v72 = *v70.i64;
    v73 = matrix_identity_float3x3.columns[0];
    v69 = matrix_identity_float3x3.columns[2];
    v74 = *v69.i64;
    v29 = minus2Copy;
    goto LABEL_20;
  }

  calcTransform = self->_calcTransform;
  if (ref)
  {
    v29 = minus2Copy;
    if (calcTransform)
    {
      [(CalcHomography *)calcTransform ispHomographyFromMetaInfo:infoCopy];
      v31 = self->_calcTransform;
      v32 = v87;
      v33 = v88;
      v34 = v89;
      if (v31)
      {
        [(CalcHomography *)v31 ispHomographyFromMetaInfo:tPlusOrMinus1Copy];
        v33 = v88;
        v32 = v87;
        v34 = v89;
        v36 = v83;
        v35 = v84;
        v37 = v85;
        goto LABEL_12;
      }
    }

    else
    {
      v34 = 0uLL;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v33 = 0uLL;
      v32 = 0uLL;
    }

    v37 = 0uLL;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v35 = 0uLL;
    v36 = 0uLL;
LABEL_12:
    v43 = 0;
    v72 = *&v33;
    v73.i64[0] = v32;
    v91 = v32;
    v92 = v33;
    v74 = *&v34;
    v93 = v34;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    do
    {
      *(&v94 + v43) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v91 + v43))), v35, *(&v91 + v43), 1), v37, *(&v91 + v43), 2);
      v43 += 16;
    }

    while (v43 != 48);
    v70.i64[0] = v95.i64[0];
    v71.i64[0] = v94.i64[0];
    v69.i64[0] = v96.i64[0];
    goto LABEL_20;
  }

  v29 = minus2Copy;
  if (calcTransform)
  {
    [(CalcHomography *)calcTransform ispHomographyFromMetaInfo:tPlusOrMinus1Copy];
    v38 = self->_calcTransform;
    v39 = v81;
    if (v38)
    {
      [(CalcHomography *)v38 ispHomographyFromMetaInfo:tPlusOrMinus2Copy];
      v39 = v81;
      v40 = v77;
      v41 = v78;
      v42 = v79;
      goto LABEL_17;
    }
  }

  else
  {
    v39.columns[2] = 0uLL;
    v82 = 0u;
    memset(&v81, 0, sizeof(v81));
    v39.columns[1] = 0uLL;
    v39.columns[0] = 0uLL;
  }

  v42 = 0uLL;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v41 = 0uLL;
  v40 = 0uLL;
LABEL_17:
  v44 = 0;
  v91 = v40;
  v92 = v41;
  v93 = v42;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  do
  {
    *(&v94 + v44) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39.columns[0], COERCE_FLOAT(*(&v91 + v44))), v39.columns[1], *(&v91 + v44), 1), v39.columns[2], *(&v91 + v44), 2);
    v44 += 16;
  }

  while (v44 != 48);
  v45 = v94;
  v46 = v95;
  v47 = v96;
  v45.i32[3] = 0;
  v46.i32[3] = 0;
  v70 = v46;
  v71 = v45;
  v47.i32[3] = 0;
  v69 = v47;
  v97 = __invert_f3(v39);
  v72 = *v97.columns[1].i64;
  v73.i64[0] = v97.columns[0].i64[0];
  v74 = *v97.columns[2].i64;
  v97.columns[1] = v70;
  v97.columns[0] = v71;
  v97.columns[2] = v69;
  v98 = __invert_f3(v97);
  v70.i64[0] = v98.columns[1].i64[0];
  v71.i64[0] = v98.columns[0].i64[0];
  v69.i64[0] = v98.columns[2].i64[0];
LABEL_20:
  v48 = metaCopy;
  v49 = -[GGMMetalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:](self->_metalToolbox, "generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:", metaCopy, 0.0, 0.0, [inputCopy width], objc_msgSend(inputCopy, "height"));
  self->_roiClusterCnt = v49->var1;
  metalContext = [(GGMMetalToolBox *)self->_metalToolbox metalContext];
  commandQueue = [metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (commandBuffer)
  {
    v64 = v48;
    if (v49->var1 >= 1)
    {
      v53 = 0;
      v63 = commandBuffer;
      do
      {
        computeCommandEncoder = [commandBuffer computeCommandEncoder];
        v55 = minus1Copy;
        metalToolbox = self->_metalToolbox;
        v57 = v49->var0[v53];
        [(GGMMetalToolBox *)metalToolbox getGhostMaxLumaYUVInput:inputCopy metaBuf:v57 commandEncoder:computeCommandEncoder];
        [(GGMMetalToolBox *)self->_metalToolbox getRefTypeYUVInput:inputCopy ref0:v55 ref1:minus2Copy metaBuf:v57 meta0Buf:plusOrMinus1Copy meta1Buf:plusOrMinus2Copy hmgrphy0:*v73.i64 hmgrphy1:v72 commandEncoder:v74, *v71.i64, *v70.i64, *v69.i64, computeCommandEncoder];
        v29 = minus2Copy;
        minus1Copy = v55;
        [(GGMMetalToolBox *)self->_metalToolbox strongTemporalRepairYUVInput:inputCopy frRef0:v55 frRef1:minus2Copy trRef0:orMinus1Copy trRef1:orMinus2Copy hmgrphy0:v57 hmgrphy1:*v73.i64 metaBuf:v72 ref0MetaBuf:v74 ref1MetaBuf:*v71.i64 strongTemporalOutput:*v70.i64 temporalOutput:*v69.i64 commandEncoder:plusOrMinus1Copy, plusOrMinus2Copy, trInputCopy, self->_temporalMitigatedTexture, computeCommandEncoder, v59, v60, v61];
        [(GGMMetalToolBox *)self->_metalToolbox computeBlendingWeightsYUVInput:inputCopy temporalRepaired:self->_temporalMitigatedTexture metadataBuf:v57 commandEncoder:computeCommandEncoder];
        [(GGMMetalToolBox *)self->_metalToolbox encodeCollectClusterStats:computeCommandEncoder clusterMetaBuf:v57 metaBuf:v64];

        [computeCommandEncoder endEncoding];
        commandBuffer = v63;
        ++v53;
      }

      while (v53 < v49->var1);
    }

    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_19DA0;
    v75[3] = &unk_406F0;
    v48 = v64;
    v76 = v64;
    v58 = objc_retainBlock(v75);
    [commandBuffer addCompletedHandler:v58];

    [(GGMMetalToolBox *)self->_metalToolbox commitCmdBuffer:commandBuffer waitForComplete:self->_forceWaitForComputeWeights];
  }

  else
  {
    sub_26354();
  }
}

- (int64_t)updateQueuesWithTwoFutureFrames:(id *)frames atBaseIndex:(signed __int16)index
{
  indexCopy = index;
  v7 = 0;
  for (i = 1; ; i = 0)
  {
    v9 = i;
    v10 = v7 + indexCopy + 1 < 4 ? v7 + indexCopy + 1 : v7 + indexCopy - 3;
    v11 = (frames->var0 + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = [(RepairWeightsGenerator *)self updateQueuesWithInputFrame:v12 info:v13 meta:self->_dummyMetaBuf index:v10];
    v15 = v14;
    if (v14)
    {
      break;
    }

    v7 = 1;
    if ((v9 & 1) == 0)
    {
      return v15;
    }
  }

  sub_26418(v14, v13);
  return v15;
}

- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index
{
  indexCopy = index;
  inputTextureQueue = self->_inputTextureQueue;
  inputInfoQueue = self->_inputInfoQueue;
  inputMetaQueue = self->_inputMetaQueue;
  inputFrameQueue = self->_inputFrameQueue;
  v8 = 1;
  v9 = 1;
  do
  {
    v10 = v8;
    v11 = v9 + indexCopy;
    v12 = v9 + indexCopy - 4;
    if (v11 >= 4)
    {
      LOWORD(v11) = v12;
    }

    v13 = v11;
    v14 = inputTextureQueue[v11];
    inputTextureQueue[v13] = 0;

    v15 = inputInfoQueue[v13];
    inputInfoQueue[v13] = 0;

    v16 = inputMetaQueue[v13];
    inputMetaQueue[v13] = 0;

    v17 = inputFrameQueue[v13];
    if (v17)
    {
      CFRelease(v17);
      inputFrameQueue[v13] = 0;
    }

    v8 = 0;
    v9 = 2;
  }

  while ((v10 & 1) != 0);
}

- (void)computeBlendingWeights
{
  getFrameIndexInQueue = [(RepairWeightsGenerator *)self getFrameIndexInQueue];
  if (getFrameIndexInQueue > 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 3;
  }

  v5 = v4 + getFrameIndexInQueue;
  if (getFrameIndexInQueue < 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = -2;
  }

  v7 = self->_inputTextureQueue[getFrameIndexInQueue];
  v8 = self->_inputTextureQueue[v5];
  consecutiveTemporalRepairFrameCnt = self->_consecutiveTemporalRepairFrameCnt;
  v10 = (v6 + getFrameIndexInQueue);
  v11 = self->_inputTextureQueue[v10];
  v12 = v8;
  if (consecutiveTemporalRepairFrameCnt >= 2)
  {
    v12 = self->_trRefTexQueue[v5];
  }

  v13 = self->_inputMetaQueue[getFrameIndexInQueue];
  v14 = self->_inputMetaQueue[v5];
  v15 = self->_inputMetaQueue[v10];
  if (consecutiveTemporalRepairFrameCnt <= 1)
  {
    v16 = &self->_inputTextureQueue[v10];
  }

  else
  {
    v16 = &self->_trRefTexQueue[v10];
  }

  v17 = self->_inputInfoQueue[getFrameIndexInQueue];
  v18 = self->_inputInfoQueue[v5];
  v19 = self->_inputInfoQueue[v10];
  v20 = *v16;
  v21 = self->_trRefTexQueue[getFrameIndexInQueue];
  v22 = *&self->_configuration.internalCfg.enableColorMask;
  v25[0] = *&self->_configuration.internalCfg.clipThreshold;
  v25[1] = v22;
  v23 = *&self->_configuration.externalCfg.frameDelay;
  v25[2] = *&self->_configuration.externalCfg.lightMode;
  v25[3] = v23;
  LOBYTE(v24) = 1;
  [(RepairWeightsGenerator *)self _computeBlendingWeightsYUVInput:v7 frRefTPlusOrMinus1:v8 frRefTPlusOrMinus2:v11 trRefTPlusOrMinus1:v12 trRefTPlusOrMinus2:v20 meta:v13 metaTPlusOrMinus1:v14 metaTPlusOrMinus2:v15 info:v17 infoTPlusOrMinus1:v18 infoTPlusOrMinus2:v19 config:v25 trInput:v21 usePastAsRef:v24];
}

- (void)computeBlendingWeightsWithFuture
{
  getFrameIndexInQueue = [(RepairWeightsGenerator *)self getFrameIndexInQueue];
  v4 = getFrameIndexInQueue - 3;
  if (getFrameIndexInQueue < 3)
  {
    v4 = getFrameIndexInQueue + 1;
  }

  v5 = self->_inputTextureQueue[getFrameIndexInQueue];
  v6 = self->_inputTextureQueue[v4];
  if (getFrameIndexInQueue < 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = -2;
  }

  v8 = (v7 + getFrameIndexInQueue);
  v9 = self->_inputTextureQueue[v8];
  v10 = self->_inputMetaQueue[getFrameIndexInQueue];
  v11 = self->_inputMetaQueue[v4];
  v12 = self->_inputMetaQueue[v8];
  v13 = self->_inputInfoQueue[getFrameIndexInQueue];
  v14 = self->_inputInfoQueue[v4];
  v15 = self->_inputInfoQueue[v8];
  v16 = self->_trRefTexQueue[getFrameIndexInQueue];
  v17 = *&self->_configuration.internalCfg.enableColorMask;
  v20[0] = *&self->_configuration.internalCfg.clipThreshold;
  v20[1] = v17;
  v18 = *&self->_configuration.externalCfg.frameDelay;
  v20[2] = *&self->_configuration.externalCfg.lightMode;
  v20[3] = v18;
  LOBYTE(v19) = 0;
  [(RepairWeightsGenerator *)self _computeBlendingWeightsYUVInput:v5 frRefTPlusOrMinus1:v6 frRefTPlusOrMinus2:v9 trRefTPlusOrMinus1:v6 trRefTPlusOrMinus2:v9 meta:v10 metaTPlusOrMinus1:v11 metaTPlusOrMinus2:v12 info:v13 infoTPlusOrMinus1:v14 infoTPlusOrMinus2:v15 config:v20 trInput:v16 usePastAsRef:v19];
}

- (int64_t)process:(__CVBuffer *)process info:(id)info metaContainerBuffer:(id)buffer computeBlendingWeights:(BOOL)weights futureFrames:(id *)frames
{
  infoCopy = info;
  bufferCopy = buffer;
  frameIndexInVideo = self->_frameIndexInVideo;
  var2 = frames->var2;
  v17 = frameIndexInVideo < 2 && var2 > 1;
  getFrameIndexInQueue = [(RepairWeightsGenerator *)self getFrameIndexInQueue];
  if (v17)
  {
    v19 = [(RepairWeightsGenerator *)self updateQueuesWithTwoFutureFrames:frames atBaseIndex:getFrameIndexInQueue];
    if (v19)
    {
      v21 = v19;
      sub_264AC(v19, self);
      goto LABEL_22;
    }
  }

  v20 = [(RepairWeightsGenerator *)self updateQueuesWithInputFrame:process info:infoCopy meta:bufferCopy index:getFrameIndexInQueue];
  if (v20)
  {
    v21 = v20;
    sub_26538(v20, self);
    goto LABEL_22;
  }

  if (weights)
  {
    if (var2 > 1 || frameIndexInVideo >= 2)
    {
      if (frameIndexInVideo < 2)
      {
        [(RepairWeightsGenerator *)self computeBlendingWeightsWithFuture];
      }

      else
      {
        [(RepairWeightsGenerator *)self computeBlendingWeights];
      }

      ++self->_consecutiveTemporalRepairFrameCnt;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      [(GGMMetalToolBox *)self->_metalToolbox computeBlendingWeightsSpatialOnlyYUVInput:self->_inputTextureQueue[getFrameIndexInQueue] metadataBuf:bufferCopy];
      self->_consecutiveTemporalRepairFrameCnt = 0;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    [(RepairWeightsGenerator *)self cleanTwoFutureFramesInQueuesAtBaseIndex:getFrameIndexInQueue];
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  self->_consecutiveTemporalRepairFrameCnt = 0;
  v21 = 0;
  *([bufferCopy contents] + 9536) = 1;
LABEL_22:
  ++self->_frameIndexInVideo;

  return v21;
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

- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)frame info:(id)info meta:(id)meta index:(signed __int16)index
{
  indexCopy = index;
  infoCopy = info;
  metaCopy = meta;
  v13 = metaCopy;
  v14 = 5;
  if (frame && infoCopy && metaCopy)
  {
    v15 = &self->super.isa + indexCopy;
    v16 = v15[3];
    v15[3] = frame;
    CFRetain(frame);
    if (v16)
    {
      CFRelease(v16);
    }

    cvMetalTextureCacheRef = [(GGMMetalToolBox *)self->_metalToolbox cvMetalTextureCacheRef];
    metalContext = [(GGMMetalToolBox *)self->_metalToolbox metalContext];
    v19 = sub_22594(frame, cvMetalTextureCacheRef, metalContext, 0, 0);

    if (v19)
    {
      v20 = &self->super.isa + indexCopy;
      v21 = v20[7];
      v20[7] = v19;
      v22 = v19;

      objc_storeStrong(v20 + 15, info);
      objc_storeStrong(v20 + 11, meta);

      v14 = 0;
    }

    else
    {
      v14 = 5;
    }
  }

  return v14;
}

@end