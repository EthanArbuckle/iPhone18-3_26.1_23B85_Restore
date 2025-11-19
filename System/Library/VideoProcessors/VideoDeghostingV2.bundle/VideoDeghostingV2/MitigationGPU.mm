@interface MitigationGPU
- (MitigationGPU)initWithMetalToolBox:(id)a3 metalContext:(id)a4 imageDimensions:(id)a5;
- (int)_compileShaders;
- (void)_encodeFuseYUVToCommandBuffer:(id)a3 inputTexture:(id)a4 temporalMitTexture:(id)a5 spatialMitTexture:(id)a6 outputTexture:(id)a7 metaBuf:(id)a8;
- (void)_encodeSpatialTemporalRepairYUVToCommandBuffer:(__n128)a3 input:(__n128)a4 strongRepairSpatial:(__n128)a5 frRef0:(__n128)a6 frRef1:(__n128)a7 trRef0:(uint64_t)a8 trRef1:(void *)a9 hmgrphy0:(void *)a10 hmgrphy1:(void *)a11 spatialOutput:(void *)a12 temporalOutput:(void *)a13 strongTempOutput:(void *)a14 inputCopy:(id)a15 metaBuf:(id)a16 ref0MetaBuf:(id)a17 ref1MetaBuf:(id)a18;
- (void)dealloc;
- (void)spatialTemporalRepairThenFuseInplaceYUVInput:(double)a3 frRef0:(double)a4 frRef1:(double)a5 trRef0:(double)a6 trRef1:(double)a7 hmgrphy0:(uint64_t)a8 hmgrphy1:(void *)a9 metaBuf:(void *)a10 ref0MetaBuf:(void *)a11 ref1MetaBuf:(void *)a12 trInput:(void *)a13 waitForComplete:(void *)a14;
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

- (void)_encodeSpatialTemporalRepairYUVToCommandBuffer:(__n128)a3 input:(__n128)a4 strongRepairSpatial:(__n128)a5 frRef0:(__n128)a6 frRef1:(__n128)a7 trRef0:(uint64_t)a8 trRef1:(void *)a9 hmgrphy0:(void *)a10 hmgrphy1:(void *)a11 spatialOutput:(void *)a12 temporalOutput:(void *)a13 strongTempOutput:(void *)a14 inputCopy:(id)a15 metaBuf:(id)a16 ref0MetaBuf:(id)a17 ref1MetaBuf:(id)a18
{
  v49[0] = a2;
  v49[1] = a3;
  v49[2] = a4;
  v48[0] = a5;
  v48[1] = a6;
  v48[2] = a7;
  v43 = a22;
  v25 = a21;
  v26 = a20;
  v41 = a19;
  v42 = a18;
  v40 = a17;
  v27 = a16;
  v28 = a15;
  v29 = a14;
  v30 = a13;
  v31 = a12;
  v32 = a11;
  v33 = a10;
  v34 = [a9 computeCommandEncoder];
  [v34 setComputePipelineState:*(a1 + 40)];
  [v34 setTexture:v33 atIndex:0];

  [v34 setTexture:v32 atIndex:6];
  [v34 setTexture:v31 atIndex:1];

  [v34 setTexture:v30 atIndex:2];
  [v34 setTexture:v29 atIndex:17];

  [v34 setTexture:v28 atIndex:18];
  [v34 setTexture:v27 atIndex:3];

  [v34 setTexture:v40 atIndex:4];
  [v34 setTexture:v41 atIndex:5];

  [v34 setTexture:v42 atIndex:16];
  [v34 setBuffer:v26 offset:0 atIndex:0];
  [v34 setBuffer:v25 offset:0 atIndex:4];

  [v34 setBuffer:v43 offset:0 atIndex:5];
  [v34 setBytes:v49 length:48 atIndex:1];
  [v34 setBytes:v48 length:48 atIndex:2];
  [v34 setImageblockWidth:32 height:32];
  v35 = [v26 contents];

  v46 = vshrq_n_u64(vaddw_s32(vdupq_n_s64(0x1FuLL), vadd_s32(*(v35 + 20), 0x8400000084)), 5uLL);
  v47 = 1;
  v44 = vdupq_n_s64(0x20uLL);
  v45 = 1;
  [v34 dispatchThreadgroups:&v46 threadsPerThreadgroup:&v44];
  [v34 endEncoding];
}

- (void)_encodeFuseYUVToCommandBuffer:(id)a3 inputTexture:(id)a4 temporalMitTexture:(id)a5 spatialMitTexture:(id)a6 outputTexture:(id)a7 metaBuf:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [a3 computeCommandEncoder];
  [v19 setComputePipelineState:self->_fuseYUV];
  [v19 setBuffer:v14 offset:0 atIndex:0];
  [v19 setTexture:v18 atIndex:0];

  [v19 setTexture:v17 atIndex:2];
  [v19 setTexture:v16 atIndex:3];

  [v19 setTexture:v15 atIndex:4];
  [v19 setImageblockWidth:32 height:32];
  v20 = [v14 contents];

  v23 = vshrq_n_u64(vaddw_u32(vdupq_n_s64(0x1FuLL), vadd_s32(*(v20 + 20), 0x8400000084)), 5uLL);
  v24 = 1;
  v21 = vdupq_n_s64(0x20uLL);
  v22 = 1;
  [v19 dispatchThreadgroups:&v23 threadsPerThreadgroup:&v21];
  [v19 endEncoding];
}

- (void)spatialTemporalRepairThenFuseInplaceYUVInput:(double)a3 frRef0:(double)a4 frRef1:(double)a5 trRef0:(double)a6 trRef1:(double)a7 hmgrphy0:(uint64_t)a8 hmgrphy1:(void *)a9 metaBuf:(void *)a10 ref0MetaBuf:(void *)a11 ref1MetaBuf:(void *)a12 trInput:(void *)a13 waitForComplete:(void *)a14
{
  v57 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v45 = v28;
  v32 = [*(a1 + 8) generateMetaContainerArrayBufFromMetaContainerBuf:v28 imageRect:{0.0, 0.0, objc_msgSend(v57, "width"), objc_msgSend(v57, "height")}];
  *(a1 + 106) = v32[240];
  v33 = [*(a1 + 32) commandBuffer];
  if (v33)
  {
    v55 = v25;
    v56 = v24;
    v53 = v30;
    v54 = v29;
    v34 = v31;
    if (v32[240] >= 1)
    {
      v35 = 0;
      v46 = v26;
      do
      {
        v36 = v27;
        v38 = *(a1 + 56);
        v37 = *(a1 + 64);
        v39 = *(a1 + 72);
        v40 = *&v32[4 * v35];
        v43 = v37;
        v44 = v38;
        v27 = v36;
        v26 = v46;
        [a1 _encodeSpatialTemporalRepairYUVToCommandBuffer:v33 input:v57 strongRepairSpatial:0 frRef0:v56 frRef1:v55 trRef0:v46 trRef1:a2 hmgrphy0:a3 hmgrphy1:a4 spatialOutput:a5 temporalOutput:a6 strongTempOutput:a7 inputCopy:v36 metaBuf:v43 ref0MetaBuf:v44 ref1MetaBuf:{v34, v39, v40, v54, v53}];
        [a1 _encodeFuseYUVToCommandBuffer:v33 inputTexture:*(a1 + 72) temporalMitTexture:*(a1 + 56) spatialMitTexture:*(a1 + 64) outputTexture:v57 metaBuf:v40];

        ++v35;
      }

      while (v35 < v32[240]);
    }

    v31 = v34;
    v30 = v53;
    v29 = v54;
    v25 = v55;
    v24 = v56;
    if (a18)
    {
      v41 = 1;
    }

    else
    {
      v41 = *(a1 + 105);
    }

    v42 = v45;
    [a1 _commitCmdBuffer:v33 waitForComplete:v41 & 1];
  }

  else
  {
    sub_22F90();
    v42 = v45;
  }
}

- (MitigationGPU)initWithMetalToolBox:(id)a3 metalContext:(id)a4 imageDimensions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    fig_log_get_emitter();
    sub_B550();
LABEL_16:
    FigDebugAssert3();
LABEL_17:
    v40 = 0;
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

  objc_storeStrong(&v11->_metalToolbox, a3);
  objc_storeStrong(&self->_metalContext, a4);
  v12 = [v10 device];
  device = self->_device;
  self->_device = v12;

  v14 = [v10 commandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v14;

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
  v40 = self;
LABEL_12:

  return v40;
}

@end