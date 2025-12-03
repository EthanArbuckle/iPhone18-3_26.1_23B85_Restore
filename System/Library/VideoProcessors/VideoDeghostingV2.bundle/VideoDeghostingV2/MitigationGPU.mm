@interface MitigationGPU
- (MitigationGPU)initWithMetalToolBox:(id)box metalContext:(id)context imageDimensions:(id)dimensions;
- (int)_compileShaders;
- (void)_encodeFuseYUVToCommandBuffer:(id)buffer inputTexture:(id)texture temporalMitTexture:(id)mitTexture spatialMitTexture:(id)spatialMitTexture outputTexture:(id)outputTexture metaBuf:(id)buf;
- (void)_encodeSpatialTemporalRepairYUVToCommandBuffer:(__n128)buffer input:(__n128)input strongRepairSpatial:(__n128)spatial frRef0:(__n128)ref0 frRef1:(__n128)ref1 trRef0:(uint64_t)trRef0 trRef1:(void *)trRef1 hmgrphy0:(void *)self0 hmgrphy1:(void *)self1 spatialOutput:(void *)self2 temporalOutput:(void *)self3 strongTempOutput:(void *)self4 inputCopy:(id)self5 metaBuf:(id)self6 ref0MetaBuf:(id)self7 ref1MetaBuf:(id)self8;
- (void)dealloc;
- (void)spatialTemporalRepairThenFuseInplaceYUVInput:(double)input frRef0:(double)ref0 frRef1:(double)ref1 trRef0:(double)trRef0 trRef1:(double)trRef1 hmgrphy0:(uint64_t)hmgrphy0 hmgrphy1:(void *)hmgrphy1 metaBuf:(void *)self0 ref0MetaBuf:(void *)self1 ref1MetaBuf:(void *)self2 trInput:(void *)self3 waitForComplete:(void *)self4;
@end

@implementation MitigationGPU

- (void)dealloc
{
  temporalMitigated = self->_temporalMitigated;
  if (temporalMitigated)
  {
    CFRelease(temporalMitigated);
  }

  spatialMitigated = self->_spatialMitigated;
  if (spatialMitigated)
  {
    CFRelease(spatialMitigated);
  }

  inputCopy = self->_inputCopy;
  if (inputCopy)
  {
    CFRelease(inputCopy);
  }

  v6.receiver = self;
  v6.super_class = MitigationGPU;
  [(MitigationGPU *)&v6 dealloc];
}

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2MitigationGPU::spatialTemporalRepairYUV" constants:0];
  spatialTemporalRepairYUV = self->_spatialTemporalRepairYUV;
  self->_spatialTemporalRepairYUV = v3;

  if (self->_spatialTemporalRepairYUV)
  {
    v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2MitigationGPU::fuseYUV" constants:0];
    fuseYUV = self->_fuseYUV;
    self->_fuseYUV = v5;

    if (self->_fuseYUV)
    {
      return 0;
    }

    else
    {
      sub_22E30(&v8);
      return v8;
    }
  }

  else
  {
    sub_22EE0(&v9);
    return v9;
  }
}

- (void)_encodeSpatialTemporalRepairYUVToCommandBuffer:(__n128)buffer input:(__n128)input strongRepairSpatial:(__n128)spatial frRef0:(__n128)ref0 frRef1:(__n128)ref1 trRef0:(uint64_t)trRef0 trRef1:(void *)trRef1 hmgrphy0:(void *)self0 hmgrphy1:(void *)self1 spatialOutput:(void *)self2 temporalOutput:(void *)self3 strongTempOutput:(void *)self4 inputCopy:(id)self5 metaBuf:(id)self6 ref0MetaBuf:(id)self7 ref1MetaBuf:(id)self8
{
  v49[0] = a2;
  v49[1] = buffer;
  v49[2] = input;
  v48[0] = spatial;
  v48[1] = ref0;
  v48[2] = ref1;
  v43 = a22;
  v25 = a21;
  v26 = a20;
  v41 = a19;
  ref1MetaBufCopy = ref1MetaBuf;
  metaBufCopy = metaBuf;
  bufCopy = buf;
  copyCopy = copy;
  tempOutputCopy = tempOutput;
  temporalOutputCopy = temporalOutput;
  outputCopy = output;
  hmgrphy1Copy = hmgrphy1;
  hmgrphy0Copy = hmgrphy0;
  computeCommandEncoder = [trRef1 computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(self + 40)];
  [computeCommandEncoder setTexture:hmgrphy0Copy atIndex:0];

  [computeCommandEncoder setTexture:hmgrphy1Copy atIndex:6];
  [computeCommandEncoder setTexture:outputCopy atIndex:1];

  [computeCommandEncoder setTexture:temporalOutputCopy atIndex:2];
  [computeCommandEncoder setTexture:tempOutputCopy atIndex:17];

  [computeCommandEncoder setTexture:copyCopy atIndex:18];
  [computeCommandEncoder setTexture:bufCopy atIndex:3];

  [computeCommandEncoder setTexture:metaBufCopy atIndex:4];
  [computeCommandEncoder setTexture:v41 atIndex:5];

  [computeCommandEncoder setTexture:ref1MetaBufCopy atIndex:16];
  [computeCommandEncoder setBuffer:v26 offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:v25 offset:0 atIndex:4];

  [computeCommandEncoder setBuffer:v43 offset:0 atIndex:5];
  [computeCommandEncoder setBytes:v49 length:48 atIndex:1];
  [computeCommandEncoder setBytes:v48 length:48 atIndex:2];
  [computeCommandEncoder setImageblockWidth:32 height:32];
  contents = [v26 contents];

  v46 = vshrq_n_u64(vaddw_s32(vdupq_n_s64(0x1FuLL), vadd_s32(*(contents + 20), 0x8400000084)), 5uLL);
  v47 = 1;
  v44 = vdupq_n_s64(0x20uLL);
  v45 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v46 threadsPerThreadgroup:&v44];
  [computeCommandEncoder endEncoding];
}

- (void)_encodeFuseYUVToCommandBuffer:(id)buffer inputTexture:(id)texture temporalMitTexture:(id)mitTexture spatialMitTexture:(id)spatialMitTexture outputTexture:(id)outputTexture metaBuf:(id)buf
{
  bufCopy = buf;
  outputTextureCopy = outputTexture;
  spatialMitTextureCopy = spatialMitTexture;
  mitTextureCopy = mitTexture;
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_fuseYUV];
  [computeCommandEncoder setBuffer:bufCopy offset:0 atIndex:0];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:mitTextureCopy atIndex:2];
  [computeCommandEncoder setTexture:spatialMitTextureCopy atIndex:3];

  [computeCommandEncoder setTexture:outputTextureCopy atIndex:4];
  [computeCommandEncoder setImageblockWidth:32 height:32];
  contents = [bufCopy contents];

  v23 = vshrq_n_u64(vaddw_u32(vdupq_n_s64(0x1FuLL), vadd_s32(*(contents + 20), 0x8400000084)), 5uLL);
  v24 = 1;
  v21 = vdupq_n_s64(0x20uLL);
  v22 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
}

- (void)spatialTemporalRepairThenFuseInplaceYUVInput:(double)input frRef0:(double)ref0 frRef1:(double)ref1 trRef0:(double)trRef0 trRef1:(double)trRef1 hmgrphy0:(uint64_t)hmgrphy0 hmgrphy1:(void *)hmgrphy1 metaBuf:(void *)self0 ref0MetaBuf:(void *)self1 ref1MetaBuf:(void *)self2 trInput:(void *)self3 waitForComplete:(void *)self4
{
  hmgrphy1Copy = hmgrphy1;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  ref1MetaBufCopy = ref1MetaBuf;
  trInputCopy = trInput;
  completeCopy = complete;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v45 = completeCopy;
  v32 = [*(self + 8) generateMetaContainerArrayBufFromMetaContainerBuf:completeCopy imageRect:{0.0, 0.0, objc_msgSend(hmgrphy1Copy, "width"), objc_msgSend(hmgrphy1Copy, "height")}];
  *(self + 106) = v32[240];
  commandBuffer = [*(self + 32) commandBuffer];
  if (commandBuffer)
  {
    v55 = metaBufCopy;
    v56 = bufCopy;
    v53 = v30;
    v54 = v29;
    v34 = v31;
    if (v32[240] >= 1)
    {
      v35 = 0;
      v46 = ref1MetaBufCopy;
      do
      {
        v36 = trInputCopy;
        v38 = *(self + 56);
        v37 = *(self + 64);
        v39 = *(self + 72);
        v40 = *&v32[4 * v35];
        v43 = v37;
        v44 = v38;
        trInputCopy = v36;
        ref1MetaBufCopy = v46;
        [self _encodeSpatialTemporalRepairYUVToCommandBuffer:commandBuffer input:hmgrphy1Copy strongRepairSpatial:0 frRef0:v56 frRef1:v55 trRef0:v46 trRef1:a2 hmgrphy0:input hmgrphy1:ref0 spatialOutput:ref1 temporalOutput:trRef0 strongTempOutput:trRef1 inputCopy:v36 metaBuf:v43 ref0MetaBuf:v44 ref1MetaBuf:{v34, v39, v40, v54, v53}];
        [self _encodeFuseYUVToCommandBuffer:commandBuffer inputTexture:*(self + 72) temporalMitTexture:*(self + 56) spatialMitTexture:*(self + 64) outputTexture:hmgrphy1Copy metaBuf:v40];

        ++v35;
      }

      while (v35 < v32[240]);
    }

    v31 = v34;
    v30 = v53;
    v29 = v54;
    metaBufCopy = v55;
    bufCopy = v56;
    if (a18)
    {
      v41 = 1;
    }

    else
    {
      v41 = *(self + 105);
    }

    v42 = v45;
    [self _commitCmdBuffer:commandBuffer waitForComplete:v41 & 1];
  }

  else
  {
    sub_22F90();
    v42 = v45;
  }
}

- (MitigationGPU)initWithMetalToolBox:(id)box metalContext:(id)context imageDimensions:(id)dimensions
{
  boxCopy = box;
  contextCopy = context;
  v10 = contextCopy;
  if (!boxCopy || !contextCopy)
  {
    fig_log_get_emitter();
    sub_B550();
LABEL_16:
    FigDebugAssert3();
LABEL_17:
    selfCopy = 0;
    goto LABEL_12;
  }

  v42.receiver = self;
  v42.super_class = MitigationGPU;
  v11 = [(MitigationGPU *)&v42 init];
  self = v11;
  if (!v11)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v11->_metalToolbox, box);
  objc_storeStrong(&self->_metalContext, context);
  device = [v10 device];
  device = self->_device;
  self->_device = device;

  commandQueue = [v10 commandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = commandQueue;

  if ([(MitigationGPU *)self _compileShaders])
  {
    goto LABEL_17;
  }

  *&self->_forceWaitForComplete = 0;
  v16 = sub_D1B0();
  self->_temporalMitigated = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = sub_D1B0();
  self->_spatialMitigated = v17;
  if (!v17)
  {
    goto LABEL_15;
  }

  PixelBuffer = CreatePixelBuffer();
  self->_inputCopy = PixelBuffer;
  if (!PixelBuffer)
  {
    goto LABEL_15;
  }

  temporalMitigated = self->_temporalMitigated;
  sub_D1A0();
  v24 = sub_C6CC(v20, v21, v22, v23);
  temporalMitigatedTexture = self->_temporalMitigatedTexture;
  self->_temporalMitigatedTexture = v24;

  if (!self->_temporalMitigatedTexture)
  {
    goto LABEL_15;
  }

  spatialMitigated = self->_spatialMitigated;
  sub_D1A0();
  v31 = sub_C6CC(v27, v28, v29, v30);
  spatialMitigatedTexture = self->_spatialMitigatedTexture;
  self->_spatialMitigatedTexture = v31;

  if (!self->_spatialMitigatedTexture || (inputCopy = self->_inputCopy, sub_D1A0(), sub_C6CC(v34, v35, v36, v37), v38 = objc_claimAutoreleasedReturnValue(), inputCopyTexture = self->_inputCopyTexture, self->_inputCopyTexture = v38, inputCopyTexture, !self->_inputCopyTexture))
  {
LABEL_15:
    fig_log_get_emitter();
    sub_B550();
    goto LABEL_16;
  }

  self->_roiClusterCnt = 0;
  self = self;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

@end