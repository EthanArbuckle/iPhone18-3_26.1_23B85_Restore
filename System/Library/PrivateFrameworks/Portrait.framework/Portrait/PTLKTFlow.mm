@interface PTLKTFlow
+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (PTLKTFlow)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales;
- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data metalContext:(id)context;
- (int)_computeFeatures:(id)features in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeFeaturesDerivatives:(id)derivatives in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeOpticalFlow:(id)flow computeFeatureI0:(BOOL)i0 computeFeatureI1:(BOOL)i1;
- (int)_computeOpticalFlowBidirectional:(id)bidirectional;
- (int)_createImagePyramid:(id)pyramid in_tex:(id)in_tex I_idx:(int)i_idx;
- (int)_doNLRegularization:(id)regularization in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex;
- (int)_doSolver:(id)solver scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1;
- (int)_downscale2X:(id)x in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_enqueueFlowConsistency:(id)consistency in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex;
- (int)_enqueueKeypointsFromFlow:(id)flow in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints;
- (int)_initMemory:(int)memory height:(int)height nscales:(int)nscales;
- (int)_setupBuffer:(id)buffer;
- (int)_setupPipelines:(id)pipelines;
- (int)_zeroFlow:(id)flow uv_tex:(id)uv_tex;
- (int)computeKeypointsFromTexForwardFlow:(id)flow backwardFlow:(id)backwardFlow bidirectionalError:(float)error blockSize:(int)size outNumKeypoints:(unsigned __int16 *)keypoints commandBuffer:(id)buffer;
- (int)estimateFlowFromTexReference:(id)reference target:(id)target commandBuffer:(id)buffer;
- (int)estimateFlowStreamTex:(id)tex commandBuffer:(id)buffer;
- (int)estimateFlowStreamTex:(id)tex index:(int)index doOpticalFlow:(BOOL)flow commandBuffer:(id)buffer;
- (int)setOutputTexUVForward:(id)forward backward:(id)backward;
- (void)_setDefaultParameters;
- (void)setPreset:(int64_t)preset;
@end

@implementation PTLKTFlow

- (PTLKTFlow)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales
{
  v6 = *&nscales;
  v7 = *&height;
  v8 = *&width;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = PTLKTFlow;
  v11 = [(PTLKTFlow *)&v20 init];
  v12 = v11;
  if (!v11)
  {
LABEL_7:
    v12 = v12;
    v17 = v12;
    goto LABEL_11;
  }

  if (((v7 | v8) & 1) == 0)
  {
    [(PTLKTFlow *)v11 _setDefaultParameters];
    v13 = [(PTLKTFlow *)v12 _initMemory:v8 height:v7 nscales:v6];
    v14 = [(PTLKTFlow *)v12 _setupPipelines:contextCopy]| v13;
    v15 = v14 | [(PTLKTFlow *)v12 _setupBuffer:contextCopy];
    [(PTLKTFlow *)v12 reset];
    if (v15)
    {
      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTLKTFlow initWithMetalContext:width:height:nscales:];
      }

      v12 = 0;
    }

    goto LABEL_7;
  }

  v18 = _PTLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow initWithMetalContext:width:height:nscales:];
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data metalContext:(id)context
{
  contextCopy = context;
  v10 = format - 62;
  if (format - 62 <= 0x3F)
  {
    if (((1 << v10) & 0xF00C1F0FLL) != 0)
    {
LABEL_13:
      v11 = 4;
      goto LABEL_14;
    }

    if (((1 << v10) & 0x3D0E0000000000) != 0)
    {
      v11 = 8;
      goto LABEL_14;
    }

    if (((1 << v10) & 0xE000000000000000) != 0)
    {
      v11 = 16;
      goto LABEL_14;
    }
  }

  if (format <= 0x3C)
  {
    if (((1 << format) & 0x80743D00000) != 0)
    {
      v11 = 2;
      goto LABEL_14;
    }

    if (((1 << format) & 0x7402) != 0)
    {
      v11 = 1;
      goto LABEL_14;
    }

    if (((1 << format) & 0x10E0000000000000) != 0)
    {
      goto LABEL_13;
    }
  }

  v18 = _PTLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow newBufferWithPixelFormat:width:data:metalContext:];
  }

  v11 = 0;
LABEL_14:
  v12 = v11 * width;
  device = [contextCopy device];
  v14 = device;
  if (data)
  {
    v15 = [device newBufferWithBytes:data length:v12 options:0];
  }

  else
  {
    v15 = [device newBufferWithLength:v12 options:0];
  }

  v16 = v15;

  return v16;
}

- (void)setPreset:(int64_t)preset
{
  if (preset > 1)
  {
    switch(preset)
    {
      case 2:
        v4 = 3;
        break;
      case 3:
        v4 = 5;
        break;
      case 4:
        self->_nwarpings = 6;
        self->_useNonLocalRegularization = 1;
        *&self->_nlreg_radius = 0x200000004;
        *&self->_nlreg_sigma_l = 0x4040000040C00000;
        self->_nlreg_sigma_w = 0.25;
        return;
      default:
        goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (preset)
  {
    if (preset != 1)
    {
LABEL_15:
      v5 = _PTLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [PTLKTFlow setPreset:];
      }

      return;
    }

    v4 = 1;
LABEL_11:
    self->_nwarpings = v4;
    self->_useNonLocalRegularization = 0;
    return;
  }

  [(PTLKTFlow *)self _setDefaultParameters];
}

- (int)setOutputTexUVForward:(id)forward backward:(id)backward
{
  forwardCopy = forward;
  backwardCopy = backward;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = forwardCopy;
  v9 = forwardCopy;

  uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
  self->_uv_bwd_tex_user_ref = backwardCopy;

  self->_isValid = v9 != 0;
  return 0;
}

- (int)estimateFlowFromTexReference:(id)reference target:(id)target commandBuffer:(id)buffer
{
  referenceCopy = reference;
  targetCopy = target;
  bufferCopy = buffer;
  v11 = bufferCopy;
  if (self->_isValid && !self->_streamFrameCount)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
    }

    [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:referenceCopy I_idx:0];
    [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:targetCopy I_idx:1];
    *&self->_current_frame_index = 0;
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:computeCommandEncoder];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:computeCommandEncoder computeFeatureI0:1 computeFeatureI1:1];
    }

    [computeCommandEncoder endEncoding];

    v12 = 0;
  }

  else
  {
    v12 = -12782;
  }

  return v12;
}

- (int)estimateFlowStreamTex:(id)tex index:(int)index doOpticalFlow:(BOOL)flow commandBuffer:(id)buffer
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v21 = v10;
  v22 = v9;
  v23 = v8;
  v24 = v7;
  v25 = v6;
  flowCopy = flow;
  texCopy = tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:texCopy I_idx:self->_isInverse ^ index];

  *&self->_current_frame_index = index ^ 1u;
  if (flowCopy)
  {
    [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:computeCommandEncoder];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:computeCommandEncoder computeFeatureI0:1 computeFeatureI1:1];
    }
  }

  else
  {
    self->_indexUpdated[index] = 0;
  }

  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)estimateFlowStreamTex:(id)tex commandBuffer:(id)buffer
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v18 = v6;
  v19 = v5;
  v20 = v4;
  texCopy = tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (self->_streamFrameCount >= 0)
  {
    v14 = self->_streamFrameCount & 1;
  }

  else
  {
    v14 = -(self->_streamFrameCount & 1);
  }

  [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:texCopy I_idx:v14 ^ self->_isInverse, v7, v18, v19, v20, v8, v9];

  streamFrameCount = self->_streamFrameCount;
  self->_streamFrameCount = streamFrameCount + 1;
  v16 = (streamFrameCount + 1) & 1;
  if (streamFrameCount < -1)
  {
    v16 = -v16;
  }

  self->_current_frame_index = v16;
  if (streamFrameCount >= 1)
  {
    [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:computeCommandEncoder];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:computeCommandEncoder computeFeatureI0:1 computeFeatureI1:1];
    }
  }

  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)computeKeypointsFromTexForwardFlow:(id)flow backwardFlow:(id)backwardFlow bidirectionalError:(float)error blockSize:(int)size outNumKeypoints:(unsigned __int16 *)keypoints commandBuffer:(id)buffer
{
  v10 = *&size;
  backwardFlowCopy = backwardFlow;
  flowCopy = flow;
  computeCommandEncoder = [buffer computeCommandEncoder];
  *&v17 = error;
  [(PTLKTFlow *)self _enqueueKeypointsFromFlow:computeCommandEncoder in_uv_fwd_tex:flowCopy in_uv_bwd_tex:backwardFlowCopy out_kpt_buf:self->_kpt_buf block_size:v10 bidirectional_error:keypoints out_num_keypoints:v17];

  [computeCommandEncoder endEncoding];
  return 0;
}

- (void)_setDefaultParameters
{
  self->_nwarpings = 3;
  self->_useNonLocalRegularization = 0;
  *&self->_nlreg_radius = 0x200000004;
  *&self->_nlreg_sigma_l = 0x4040000040C00000;
  self->_nlreg_sigma_w = 0.25;
}

- (int)_initMemory:(int)memory height:(int)height nscales:(int)nscales
{
  v6 = 0;
  self->_isValid = 0;
  if (memory >= 8 && height >= 8)
  {
    v6 = 0;
    heightCopy = height;
    memoryCopy = memory;
    do
    {
      v9 = (memoryCopy & 1) + memoryCopy;
      if (v9 / 2 >= 0)
      {
        v10 = (v9 / 2) & 1;
      }

      else
      {
        v10 = -((v9 / 2) & 1);
      }

      v11 = (heightCopy & 1) + heightCopy;
      if (v11 / 2 >= 0)
      {
        v12 = (v11 / 2) & 1;
      }

      else
      {
        v12 = -((v11 / 2) & 1);
      }

      v13 = v9 + 2 * v10 + 1;
      memoryCopy = v13 >> 1;
      v14 = v11 + 2 * v12 + 1;
      heightCopy = v14 >> 1;
      ++v6;
    }

    while (v13 >= 16 && v14 > 15);
  }

  self->_ref_size.width = memory;
  self->_ref_size.height = height;
  self->_aux_size.width = memory;
  self->_aux_size.height = height;
  if (nscales >= 0)
  {
    nscalesCopy = nscales;
  }

  else
  {
    nscalesCopy = v6;
  }

  self->_nscales = nscalesCopy;
  self->_maxThreadExecutionWidth = 0;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = 0;

  *&self->_current_frame_index = 0;
  nscales = self->_nscales;
  if (nscales <= v6 && nscales < 10)
  {
    return 0;
  }

  v20 = _PTLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow _initMemory:height:nscales:];
  }

  return -1;
}

- (int)_setupPipelines:(id)pipelines
{
  pipelinesCopy = pipelines;
  v5 = 0;
  computePipelines = self->_computePipelines;
  while (1)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:kKernelNames[v5]];
    v8 = [pipelinesCopy computePipelineStateFor:v7 withConstants:0];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    objc_storeStrong(computePipelines, v8);
    threadExecutionWidth = [v9 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (threadExecutionWidth > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = [v9 threadExecutionWidth];
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++computePipelines;
    if (++v5 == 12)
    {
      v12 = 0;
      goto LABEL_10;
    }
  }

  v13 = _PTLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(PTLKTFlow *)v13 _setupPipelines:v14, v15, v16, v17, v18, v19, v20];
  }

  v12 = -1;
LABEL_10:

  return v12;
}

- (int)_setupBuffer:(id)buffer
{
  v125 = *MEMORY[0x277D85DE8];
  p_ref_size = &self->_ref_size;
  bufferCopy = buffer;
  v6 = 0;
  v7 = (self->_ref_size.width + LODWORD(self->_maxThreadExecutionWidth) - 1) / SLODWORD(self->_maxThreadExecutionWidth) * LODWORD(self->_maxThreadExecutionWidth) * self->_ref_size.height;
  Adiagb_buf = self->_Adiagb_buf;
  selfCopy = self;
  Ixy_buf = self->_Ixy_buf;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    device = [bufferCopy device];
    v13 = [device newBufferWithLength:8 * v7 options:0];
    v14 = Adiagb_buf[v6];
    Adiagb_buf[v6] = v13;

    if (!Adiagb_buf[v6])
    {
      break;
    }

    device2 = [bufferCopy device];
    v16 = [device2 newBufferWithLength:2 * v7 options:0];
    v17 = Ixy_buf[v6];
    Ixy_buf[v6] = v16;

    if (!Ixy_buf[v6])
    {
      kpt_buf = _PTLogSystem();
      if (os_log_type_enabled(kpt_buf, OS_LOG_TYPE_ERROR))
      {
        [PTLKTFlow _setupBuffer:];
      }

      v23 = -2;
      goto LABEL_80;
    }

    v10 = 0;
    v6 = 1;
    if ((v11 & 1) == 0)
    {
      device3 = [bufferCopy device];
      v19 = [device3 newBufferWithLength:4 * v7 options:0];
      v20 = selfCopy;
      idt_buf = selfCopy->_idt_buf;
      selfCopy->_idt_buf = v19;

      if (selfCopy->_idt_buf)
      {
        if (selfCopy->_nscales < 1)
        {
          v23 = 0;
        }

        else
        {
          v22 = 0;
          v23 = 0;
          G1_tex = selfCopy->_G1_tex;
          G0_tex = selfCopy->_G0_tex;
          C1_tex = selfCopy->_C1_tex;
          C0_tex = selfCopy->_C0_tex;
          v24 = vmovn_s64(vcvtq_s64_f64(p_ref_size[1]));
          w_tex = selfCopy->_w_tex;
          v25 = vcvtq_s64_f64(*p_ref_size);
          v26 = vmovn_s64(v25);
          I_u32_alias_tex = selfCopy->_I_u32_alias_tex;
          I_tex = selfCopy->_I_tex;
          v104 = selfCopy->_I_u32_alias_tex[1];
          v105 = selfCopy->_I_tex[1];
          v27 = 0x277CD7000uLL;
          v25.i64[0] = 67109120;
          v103 = v25;
          do
          {
            v118 = v24;
            v28.i64[0] = v26.i32[0];
            v28.i64[1] = v26.i32[1];
            selfCopy->_ref_pyr_size[v22] = vcvtq_f64_s64(v28);
            v28.i64[0] = v24.i32[0];
            v28.i64[1] = v24.i32[1];
            selfCopy->_aux_pyr_size[v22] = vcvtq_f64_s64(v28);
            v29 = v26.u32[1];
            v116 = v26.u32[0];
            v30 = [*(v27 + 88) texture2DDescriptorWithPixelFormat:65 width:*&v103 height:? mipmapped:?];
            if ([bufferCopy supportsFamily:1007])
            {
              v31 = 0;
            }

            else
            {
              v31 = 32;
            }

            [v30 setResourceOptions:v31];
            [v30 setUsage:3];
            device4 = [bufferCopy device];
            v33 = [device4 newTextureWithDescriptor:v30];
            v34 = G0_tex[v22];
            G0_tex[v22] = v33;

            if (!G0_tex[v22])
            {
              v35 = _PTLogSystem();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = v103.i32[0];
                v122 = v22;
                _os_log_error_impl(&dword_2243FB000, v35, OS_LOG_TYPE_ERROR, "_G0_tex[%i] is nil", buf, 8u);
              }

              v23 = -1;
            }

            v36 = v118.u32[0];
            [v30 setWidth:v118.u32[0]];
            v119 = v118.u32[1];
            [v30 setHeight:?];
            device5 = [bufferCopy device];
            v38 = [device5 newTextureWithDescriptor:v30];
            v39 = G1_tex[v22];
            G1_tex[v22] = v38;

            if (!G1_tex[v22])
            {
              v40 = _PTLogSystem();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = v103.i32[0];
                v122 = v22;
                _os_log_error_impl(&dword_2243FB000, v40, OS_LOG_TYPE_ERROR, "_G1_tex[%i] is nil", buf, 8u);
              }

              v23 = -1;
            }

            [v30 setPixelFormat:115];
            [v30 setWidth:v116];
            [v30 setHeight:v29];
            device6 = [bufferCopy device];
            v42 = [device6 newTextureWithDescriptor:v30];
            v43 = C0_tex[v22];
            C0_tex[v22] = v42;

            if (!C0_tex[v22])
            {
              v44 = _PTLogSystem();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = v103.i32[0];
                v122 = v22;
                _os_log_error_impl(&dword_2243FB000, v44, OS_LOG_TYPE_ERROR, "_C0_tex[%i] is nil", buf, 8u);
              }

              v23 = -1;
            }

            [v30 setWidth:v36];
            [v30 setHeight:v119];
            device7 = [bufferCopy device];
            v46 = [device7 newTextureWithDescriptor:v30];
            v47 = C1_tex[v22];
            C1_tex[v22] = v46;

            if (!C1_tex[v22])
            {
              v48 = _PTLogSystem();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = v103.i32[0];
                v122 = v22;
                _os_log_error_impl(&dword_2243FB000, v48, OS_LOG_TYPE_ERROR, "_C1_tex[%i] is nil", buf, 8u);
              }

              v23 = -1;
            }

            [v30 setWidth:v116];
            [v30 setHeight:v29];
            [v30 setPixelFormat:25];
            device8 = [bufferCopy device];
            v50 = [device8 newTextureWithDescriptor:v30];
            v51 = w_tex[v22];
            w_tex[v22] = v50;

            if (!w_tex[v22])
            {
              v52 = _PTLogSystem();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = v103.i32[0];
                v122 = v22;
                _os_log_error_impl(&dword_2243FB000, v52, OS_LOG_TYPE_ERROR, "_w_tex[%i] is nil", buf, 8u);
              }

              v23 = -1;
            }

            v114 = v36;
            [v30 setPixelFormat:65];
            [v30 setWidth:v116];
            v115 = v29;
            [v30 setHeight:v29];
            [v30 setUsage:19];
            v53 = 0;
            v54 = 1;
            do
            {
              v55 = v54;
              device9 = [bufferCopy device];
              v57 = [device9 newTextureWithDescriptor:v30];
              v58 = selfCopy->_uv_fwd_tex[v53];
              v59 = *(v58 + 8 * v22);
              *(v58 + 8 * v22) = v57;

              if (!*(v58 + 8 * v22))
              {
                v60 = _PTLogSystem();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109376;
                  v122 = v53;
                  v123 = 1024;
                  v124 = v22;
                  _os_log_error_impl(&dword_2243FB000, v60, OS_LOG_TYPE_ERROR, "_uv_fwd_tex[%i][%i] is nil", buf, 0xEu);
                }

                v23 = -1;
              }

              device10 = [bufferCopy device];
              v62 = [device10 newTextureWithDescriptor:v30];
              v63 = selfCopy->_uv_bwd_tex[v53];
              v64 = *(v63 + 8 * v22);
              *(v63 + 8 * v22) = v62;

              if (!*(v63 + 8 * v22))
              {
                v65 = _PTLogSystem();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109376;
                  v122 = v53;
                  v123 = 1024;
                  v124 = v22;
                  _os_log_error_impl(&dword_2243FB000, v65, OS_LOG_TYPE_ERROR, "_uv_bwd_tex[%i][%i] is nil", buf, 0xEu);
                }

                v23 = -1;
              }

              v66 = [*(v58 + 8 * v22) newTextureViewWithPixelFormat:53];
              v67 = selfCopy->_uv_fwd_u32_alias_tex[v53];
              v68 = *(v67 + 8 * v22);
              *(v67 + 8 * v22) = v66;

              v69 = [*(v63 + 8 * v22) newTextureViewWithPixelFormat:53];
              v70 = selfCopy->_uv_bwd_u32_alias_tex[v53];
              v71 = *(v70 + 8 * v22);
              *(v70 + 8 * v22) = v69;

              v54 = 0;
              v53 = 1;
            }

            while ((v55 & 1) != 0);
            v72 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v116 height:v115 mipmapped:0];
            [v72 setUsage:19];
            if ([bufferCopy supportsFamily:1007])
            {
              v73 = 0;
            }

            else
            {
              v73 = 32;
            }

            [v72 setResourceOptions:v73];
            device11 = [bufferCopy device];
            v75 = [device11 newTextureWithDescriptor:v72];
            v76 = (*I_tex)[v22];
            (*I_tex)[v22] = v75;

            v77 = [(MTLTexture *)(*I_tex)[v22] newTextureViewWithPixelFormat:53];
            v78 = (*I_u32_alias_tex)[v22];
            (*I_u32_alias_tex)[v22] = v77;

            v79 = v116 & 1;
            if (v116 < 0)
            {
              v79 = -v79;
            }

            v80 = v115 & 1;
            if (v115 < 0)
            {
              v80 = -v80;
            }

            v81 = v79 + v116;
            if (v81 / 2 >= 0)
            {
              v82 = (v81 / 2) & 1;
            }

            else
            {
              v82 = -((v81 / 2) & 1);
            }

            v83 = v80 + v115;
            if (v83 / 2 >= 0)
            {
              v84 = (v83 / 2) & 1;
            }

            else
            {
              v84 = -((v83 / 2) & 1);
            }

            v85.i32[0] = (v81 + 2 * v82 + 1) / 2;
            v85.i32[1] = (v83 + 2 * v84 + 1) / 2;
            v117 = v85;

            v86 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v114 height:v119 mipmapped:0];
            [v86 setUsage:19];
            if ([bufferCopy supportsFamily:1007])
            {
              v87 = 0;
            }

            else
            {
              v87 = 32;
            }

            [v86 setResourceOptions:v87];
            device12 = [bufferCopy device];
            v89 = [device12 newTextureWithDescriptor:v86];
            v90 = v105[v22];
            v105[v22] = v89;

            v91 = [(MTLTexture *)v105[v22] newTextureViewWithPixelFormat:53];
            v92 = v104[v22];
            v104[v22] = v91;

            v93 = v114 & 1;
            if (v114 < 0)
            {
              v93 = -v93;
            }

            v94 = v119 & 1;
            if (v119 < 0)
            {
              v94 = -v94;
            }

            v95 = v93 + v114;
            if (v95 / 2 >= 0)
            {
              v96 = (v95 / 2) & 1;
            }

            else
            {
              v96 = -((v95 / 2) & 1);
            }

            v97 = v94 + v119;
            if (v97 / 2 >= 0)
            {
              v98 = (v97 / 2) & 1;
            }

            else
            {
              v98 = -((v97 / 2) & 1);
            }

            v99.i32[0] = (v95 + 2 * v96 + 1) / 2;
            v99.i32[1] = (v97 + 2 * v98 + 1) / 2;
            v120 = v99;

            v26 = v117;
            v24 = v120;
            v27 = 0x277CD7000;
            ++v22;
            v20 = selfCopy;
          }

          while (v22 < selfCopy->_nscales);
        }

        v101 = [(PTLKTFlow *)v20 newBufferWithPixelFormat:115 width:0x8000 data:0 metalContext:bufferCopy];
        kpt_buf = v20->_kpt_buf;
        v20->_kpt_buf = v101;
      }

      else
      {
        kpt_buf = _PTLogSystem();
        if (os_log_type_enabled(kpt_buf, OS_LOG_TYPE_ERROR))
        {
          [PTLKTFlow _setupBuffer:];
        }

        v23 = -3;
      }

      goto LABEL_80;
    }
  }

  kpt_buf = _PTLogSystem();
  if (os_log_type_enabled(kpt_buf, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow _setupBuffer:];
  }

  v23 = -1;
LABEL_80:

  return v23;
}

- (int)_computeOpticalFlow:(id)flow computeFeatureI0:(BOOL)i0 computeFeatureI1:(BOOL)i1
{
  i0Copy = i0;
  i1Copy = i1;
  flowCopy = flow;
  nscales = self->_nscales;
  v7 = (nscales - 1);
  if (nscales >= 1)
  {
    v8 = 0;
    I_tex = self->_I_tex;
    G0_tex = self->_G0_tex;
    G1_tex = self->_G1_tex;
    C0_tex = self->_C0_tex;
    C1_tex = self->_C1_tex;
    uv_fwd_tex = self->_uv_fwd_tex;
    v10 = nscales - 1;
    do
    {
      v11 = I_tex[self->_current_frame_index][v7];
      v12 = I_tex[self->_current_frame_index ^ 1][v7];
      if (i0Copy)
      {
        [(PTLKTFlow *)self _computeFeatures:flowCopy in_tex:v11 out_tex:G0_tex[v7]];
        [(PTLKTFlow *)self _computeFeaturesDerivatives:flowCopy in_tex:G0_tex[v7] out_tex:C0_tex[v7]];
      }

      if (i1Copy)
      {
        [(PTLKTFlow *)self _computeFeatures:flowCopy in_tex:v12 out_tex:G1_tex[v7]];
        [(PTLKTFlow *)self _computeFeaturesDerivatives:flowCopy in_tex:G1_tex[v7] out_tex:C1_tex[v7]];
      }

      nwarpings = self->_nwarpings;
      if (nwarpings < 1)
      {
        v15 = 0;
      }

      else
      {
        v26 = v12;
        v27 = v11;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = v14 + 1;
          if (v7 || v16 != nwarpings || (p_uv_fwd_tex_user_ref = &self->_uv_fwd_tex_user_ref, self->_useNonLocalRegularization))
          {
            p_uv_fwd_tex_user_ref = &uv_fwd_tex[v8 ^ 1][v7];
          }

          v18 = *p_uv_fwd_tex_user_ref;
          if (self->_useNonLocalRegularization && v16 == self->_nwarpings)
          {
            v19 = self->_w_tex[v7];

            v15 = v19;
          }

          [(PTLKTFlow *)self _doSolver:flowCopy scale:v7 in_uv_tex:uv_fwd_tex[v8][v10] in_G0_tex:G0_tex[v7] in_G1_tex:G1_tex[v7] in_C0_tex:C0_tex[v7] in_C1_tex:C1_tex[v7] out_uv_tex:v18 out_w_tex:v15];
          v8 ^= 1uLL;

          nwarpings = self->_nwarpings;
          ++v14;
          v10 = v7;
        }

        while (v14 < nwarpings);
        v10 = v7;
        v12 = v26;
        v11 = v27;
      }

      if (self->_useNonLocalRegularization)
      {
        v20 = &uv_fwd_tex[v8 ^ 1][v7];
        if (!v7)
        {
          v20 = &self->_uv_fwd_tex_user_ref;
        }

        [(PTLKTFlow *)self _doNLRegularization:flowCopy in_uv_tex:self->_uv_fwd_u32_alias_tex[v8][v7] join_tex:self->_I_u32_alias_tex[self->_current_frame_index][v7] w_tex:v15 out_uv_tex:*v20];
        v8 ^= 1uLL;
      }
    }

    while (v7-- > 0);
  }

  return 0;
}

- (int)_computeOpticalFlowBidirectional:(id)bidirectional
{
  bidirectionalCopy = bidirectional;
  v4 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v5 = self->_uv_fwd_tex[0][v4];
  uv_bwd_tex = self->_uv_bwd_tex;
  v6 = self->_uv_bwd_tex[0][v4];
  selfCopy = self;
  if (!self->_uv_bwd_tex_user_ref)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PTLKTFlow *)v8 _computeOpticalFlowBidirectional:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  nscales = selfCopy->_nscales;
  if (nscales >= 1)
  {
    v17 = 0;
    I_tex = selfCopy->_I_tex;
    G1_tex = selfCopy->_G1_tex;
    G0_tex = selfCopy->_G0_tex;
    C1_tex = selfCopy->_C1_tex;
    C0_tex = selfCopy->_C0_tex;
    v43 = v4;
    v42 = v4;
    do
    {
      v39 = nscales--;
      v18 = I_tex[selfCopy->_current_frame_index][nscales];
      v19 = I_tex[selfCopy->_current_frame_index ^ 1][nscales];
      v38 = v18;
      [(PTLKTFlow *)selfCopy _computeFeatures:bidirectionalCopy in_tex:v18 out_tex:G0_tex[nscales]];
      v37 = v19;
      [(PTLKTFlow *)selfCopy _computeFeatures:bidirectionalCopy in_tex:v19 out_tex:G1_tex[nscales]];
      [(PTLKTFlow *)selfCopy _computeFeaturesDerivatives:bidirectionalCopy in_tex:G0_tex[nscales] out_tex:C0_tex[nscales]];
      [(PTLKTFlow *)selfCopy _computeFeaturesDerivatives:bidirectionalCopy in_tex:G1_tex[nscales] out_tex:C1_tex[nscales]];
      if (selfCopy->_nwarpings >= 1)
      {
        v20 = 0;
        do
        {
          if ((v20 + 1))
          {
            v54 = G0_tex[nscales];
            v53 = G1_tex[nscales];
            v51 = C0_tex[nscales];
            v49 = C1_tex[nscales];
            v30 = uv_fwd_tex[v17];
            v21 = v30[v43];
            v55 = v17 ^ 1;
            v22 = uv_fwd_tex[v17 ^ 1][nscales];
            if (nscales)
            {
              v31 = 1;
            }

            else
            {
              v31 = v20 + 3 <= selfCopy->_nwarpings;
            }

            p_uv_fwd_tex_user_ref = &v30[nscales];
            if (!v31)
            {
              p_uv_fwd_tex_user_ref = &selfCopy->_uv_fwd_tex_user_ref;
            }

            v33 = *p_uv_fwd_tex_user_ref;
            v34 = v6;
            v28 = nscales;
            v29 = v34;
            v27 = v33;

            v50 = v27;
            v43 = nscales;
            v52 = v29;
          }

          else
          {
            v54 = G1_tex[nscales];
            v53 = G0_tex[nscales];
            v51 = C1_tex[nscales];
            v49 = C0_tex[nscales];
            v21 = (*uv_bwd_tex)[v42];
            v22 = selfCopy->_uv_bwd_tex[1][nscales];
            if (nscales)
            {
              v23 = 1;
            }

            else
            {
              v23 = v20 + 3 <= selfCopy->_nwarpings;
            }

            p_uv_bwd_tex_user_ref = &selfCopy->_uv_bwd_tex_user_ref;
            if (v23)
            {
              p_uv_bwd_tex_user_ref = &(*uv_bwd_tex)[nscales];
            }

            v25 = *p_uv_bwd_tex_user_ref;
            v26 = v5;
            v27 = v25;

            v28 = nscales;
            v55 = v17 ^ 1;
            v52 = v27;
            v42 = nscales;
            v50 = v26;
            v29 = v26;
          }

          [(PTLKTFlow *)selfCopy _enqueueFlowConsistency:bidirectionalCopy in_uv0_tex:v29 in_uv1_tex:v21 out_uv_tex:v22];
          [(PTLKTFlow *)selfCopy _doSolver:bidirectionalCopy scale:v28 in_uv_tex:v22 in_G0_tex:v54 in_G1_tex:v53 in_C0_tex:v51 in_C1_tex:v49 out_uv_tex:v27 out_w_tex:0];

          ++v20;
          v5 = v50;
          v6 = v52;
          v17 = v55;
        }

        while (v20 < selfCopy->_nwarpings);
      }
    }

    while (v39 > 1);
  }

  return 0;
}

- (int)_createImagePyramid:(id)pyramid in_tex:(id)in_tex I_idx:(int)i_idx
{
  pyramidCopy = pyramid;
  in_texCopy = in_tex;
  v10 = self + 80 * i_idx;
  if (self->_needConversionBGRA2YUVA)
  {
    [pyramidCopy setComputePipelineState:self->_computePipelines[0]];
    [pyramidCopy setTexture:in_texCopy atIndex:0];
    [pyramidCopy setTexture:*(v10 + 54) atIndex:1];
    width = [in_texCopy width];
    height = [in_texCopy height];
  }

  else
  {
    [pyramidCopy setComputePipelineState:self->_computePipelines[11]];
    [pyramidCopy setTexture:in_texCopy atIndex:0];
    [pyramidCopy setTexture:*(v10 + 54) atIndex:1];
    width2 = [*(v10 + 54) width];
    height2 = [*(v10 + 54) height];
    width = width2;
    height = height2;
  }

  v22 = 1;
  v18 = xmmword_2244A5230;
  v19 = 1;
  [pyramidCopy dispatchThreads:&width threadsPerThreadgroup:&v18];
  if (self->_nscales >= 2)
  {
    v13 = &self->_I_tex[i_idx][1];
    v14 = 1;
    do
    {
      v15 = *v13;
      v16 = *(v13 - 1);
      [(PTLKTFlow *)self _downscale2X:pyramidCopy in_tex:v16 out_tex:v15, v18, v19, width, height, v22];

      ++v14;
      ++v13;
    }

    while (v14 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlow:(id)flow uv_tex:(id)uv_tex
{
  v5 = self->_computePipelines[1];
  uv_texCopy = uv_tex;
  flowCopy = flow;
  [flowCopy setComputePipelineState:v5];
  [flowCopy setTexture:uv_texCopy atIndex:0];
  width = [uv_texCopy width];
  LODWORD(v5) = [uv_texCopy height];

  v12[0] = width;
  v12[1] = v5;
  v12[2] = 1;
  v10 = xmmword_2244A5230;
  v11 = 1;
  [flowCopy dispatchThreads:v12 threadsPerThreadgroup:&v10];

  return 0;
}

- (int)_downscale2X:(id)x in_tex:(id)in_tex out_tex:(id)out_tex
{
  v7 = self->_computePipelines[2];
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  xCopy = x;
  [xCopy setComputePipelineState:v7];
  [xCopy setTexture:in_texCopy atIndex:0];

  [xCopy setTexture:out_texCopy atIndex:1];
  width = [out_texCopy width];
  LODWORD(x) = [out_texCopy height];

  v15[0] = width;
  v15[1] = x;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [xCopy dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_computeFeatures:(id)features in_tex:(id)in_tex out_tex:(id)out_tex
{
  v7 = self->_computePipelines[3];
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  featuresCopy = features;
  [featuresCopy setComputePipelineState:v7];
  [featuresCopy setTexture:in_texCopy atIndex:0];
  [featuresCopy setTexture:out_texCopy atIndex:1];

  width = [in_texCopy width];
  LODWORD(features) = [in_texCopy height];

  v15[0] = width;
  v15[1] = features;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [featuresCopy dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_computeFeaturesDerivatives:(id)derivatives in_tex:(id)in_tex out_tex:(id)out_tex
{
  v7 = self->_computePipelines[4];
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  derivativesCopy = derivatives;
  [derivativesCopy setComputePipelineState:v7];
  [derivativesCopy setTexture:in_texCopy atIndex:0];
  [derivativesCopy setTexture:out_texCopy atIndex:1];

  width = [in_texCopy width];
  LODWORD(derivatives) = [in_texCopy height];

  v15[0] = width;
  v15[1] = derivatives;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [derivativesCopy dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_doSolver:(id)solver scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1
{
  out_w_texCopy = out_w_tex;
  out_uv_texCopy = out_uv_tex;
  c1_texCopy = c1_tex;
  c0_texCopy = c0_tex;
  g1_texCopy = g1_tex;
  g0_texCopy = g0_tex;
  in_uv_texCopy = in_uv_tex;
  solverCopy = solver;
  LODWORD(in_uv_tex) = [out_uv_texCopy width];
  LODWORD(solver) = [out_uv_texCopy height];
  LODWORD(g0_tex) = (in_uv_tex + self->_maxThreadExecutionWidth - 1) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v45[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v44 = _D0;
  [PTLKTFlow _computeScalingFactor:in_uv_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v44 coeff:v45];
  v38[0] = in_uv_tex;
  v38[1] = solver;
  g0_texCopy2 = g0_tex;
  v40 = v44;
  v41 = 0;
  v27 = v45;
  v28 = vld1_dup_f32(v27);
  v42 = v28;
  v43 = 0;
  [solverCopy setComputePipelineState:self->_computePipelines[5]];
  [solverCopy setTexture:in_uv_texCopy atIndex:0];
  [solverCopy setTexture:g0_texCopy atIndex:1];

  [solverCopy setTexture:g1_texCopy atIndex:2];
  [solverCopy setTexture:c0_texCopy atIndex:3];

  [solverCopy setTexture:c1_texCopy atIndex:4];
  [solverCopy setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [solverCopy setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [solverCopy setBuffer:self->_idt_buf offset:0 atIndex:2];
  [solverCopy setBytes:v38 length:48 atIndex:3];
  in_uv_texCopy4 = in_uv_tex;
  solverCopy4 = solver;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [solverCopy dispatchThreads:&in_uv_texCopy4 threadsPerThreadgroup:&v33];
  [solverCopy setComputePipelineState:self->_computePipelines[6]];
  [solverCopy setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [solverCopy setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [solverCopy setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
  [solverCopy setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
  [solverCopy setBytes:v38 length:48 atIndex:4];
  in_uv_texCopy4 = in_uv_tex;
  solverCopy4 = solver;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [solverCopy dispatchThreads:&in_uv_texCopy4 threadsPerThreadgroup:&v33];
  [solverCopy setComputePipelineState:self->_computePipelines[7]];
  [solverCopy setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:0];
  [solverCopy setBuffer:self->_Ixy_buf[1] offset:0 atIndex:1];
  [solverCopy setBuffer:self->_idt_buf offset:0 atIndex:2];
  [solverCopy setTexture:in_uv_texCopy atIndex:0];

  [solverCopy setTexture:out_uv_texCopy atIndex:1];
  [solverCopy setTexture:out_w_texCopy atIndex:2];

  [solverCopy setBytes:v38 length:48 atIndex:3];
  in_uv_texCopy4 = in_uv_tex;
  solverCopy4 = solver;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [solverCopy dispatchThreads:&in_uv_texCopy4 threadsPerThreadgroup:&v33];

  return 0;
}

- (int)_enqueueFlowConsistency:(id)consistency in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex
{
  out_uv_texCopy = out_uv_tex;
  in_uv1_texCopy = in_uv1_tex;
  in_uv0_texCopy = in_uv0_tex;
  consistencyCopy = consistency;
  LODWORD(consistency) = [out_uv_texCopy width];
  height = [out_uv_texCopy height];
  __asm { FMOV            V0.2S, #1.0 }

  v36 = _D0;
  v37 = _D0;
  v35 = 1065353216;
  v34 = 1065353216;
  [PTLKTFlow _computeScalingFactor:in_uv0_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v37 coeff:&v35];
  [PTLKTFlow _computeScalingFactor:in_uv1_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v36 coeff:&v34];
  v29 = 0;
  v28[0] = consistency;
  v28[1] = height;
  v20 = &v35;
  v21 = vld1_dup_f32(v20);
  v30 = v37;
  v31 = v36;
  v22 = vld1_dup_f32(&v34);
  v32 = v21;
  v33 = v22;
  [consistencyCopy setComputePipelineState:self->_computePipelines[8]];
  [consistencyCopy setTexture:in_uv0_texCopy atIndex:0];

  [consistencyCopy setTexture:in_uv1_texCopy atIndex:1];
  [consistencyCopy setTexture:out_uv_texCopy atIndex:2];
  [consistencyCopy setBytes:v28 length:48 atIndex:0];
  width = [out_uv_texCopy width];
  LODWORD(in_uv1_texCopy) = [out_uv_texCopy height];

  v27[0] = width;
  v27[1] = in_uv1_texCopy;
  v27[2] = 1;
  v25 = xmmword_2244A5230;
  v26 = 1;
  [consistencyCopy dispatchThreads:v27 threadsPerThreadgroup:&v25];

  return 0;
}

- (int)_enqueueKeypointsFromFlow:(id)flow in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints
{
  in_uv_fwd_texCopy = in_uv_fwd_tex;
  out_kpt_bufCopy = out_kpt_buf;
  in_uv_bwd_texCopy = in_uv_bwd_tex;
  flowCopy = flow;
  v20 = [in_uv_fwd_texCopy width] / block_size;
  v21 = [in_uv_fwd_texCopy height] / block_size;
  block_sizeCopy = block_size;
  v36 = v21;
  v35 = v20;
  v37 = LODWORD(bidirectional_error);
  if (v21 * v20 > 0x8000)
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(PTLKTFlow *)v22 _enqueueKeypointsFromFlow:v23 in_uv_fwd_tex:v24 in_uv_bwd_tex:v25 out_kpt_buf:v26 block_size:v27 bidirectional_error:v28 out_num_keypoints:v29];
    }
  }

  [flowCopy setComputePipelineState:self->_computePipelines[9]];
  [flowCopy setTexture:in_uv_fwd_texCopy atIndex:0];
  [flowCopy setTexture:in_uv_bwd_texCopy atIndex:1];

  [flowCopy setBuffer:out_kpt_bufCopy offset:0 atIndex:0];
  [flowCopy setBytes:&block_sizeCopy length:16 atIndex:1];
  v33[0] = v20;
  v33[1] = v21;
  v33[2] = 1;
  v31 = xmmword_2244A5230;
  v32 = 1;
  [flowCopy dispatchThreads:v33 threadsPerThreadgroup:&v31];

  *out_num_keypoints = v21 * v20;
  return 0;
}

- (int)_doNLRegularization:(id)regularization in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex
{
  v30[1] = 0;
  v30[0] = *&self->_nlreg_radius;
  v7.i64[0] = *&self->_nlreg_sigma_l;
  v7.i32[3] = LODWORD(self->_nlreg_sigma_w);
  __asm { FMOV            V1.4S, #1.0 }

  v17 = vdivq_f32(_Q1, vaddq_f32(v7, v7));
  v17.i32[2] = v17.i32[1];
  v31 = v17;
  v18 = self->_computePipelines[10];
  out_uv_texCopy = out_uv_tex;
  w_texCopy = w_tex;
  join_texCopy = join_tex;
  in_uv_texCopy = in_uv_tex;
  regularizationCopy = regularization;
  [regularizationCopy setComputePipelineState:v18];
  [regularizationCopy setTexture:in_uv_texCopy atIndex:0];
  [regularizationCopy setTexture:join_texCopy atIndex:1];

  [regularizationCopy setTexture:w_texCopy atIndex:2];
  [regularizationCopy setTexture:out_uv_texCopy atIndex:3];

  [regularizationCopy setBytes:v30 length:32 atIndex:0];
  width = [in_uv_texCopy width];
  v25 = (width + (width >> 31)) >> 1;
  LODWORD(out_uv_texCopy) = [in_uv_texCopy height];

  v29[0] = v25;
  v29[1] = (out_uv_texCopy + (out_uv_texCopy >> 31)) >> 1;
  v29[2] = 1;
  v27 = xmmword_2244A5230;
  v28 = 1;
  [regularizationCopy dispatchThreads:v29 threadsPerThreadgroup:&v27];

  return 0;
}

+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff
{
  v6 = v5;
  v7 = v4;
  scale_xy_invCopy = scale_xy_inv;
  coeffCopy = coeff;
  width = [coeffCopy width];
  v11 = width / [scale_xy_invCopy width];
  height = [coeffCopy height];
  height2 = [scale_xy_invCopy height];
  LODWORD(v14) = 1.5;
  *&v15 = height / height2;
  if (v11 <= 1.5 || *&v15 <= 1.5)
  {
    width2 = [coeffCopy width];
    if (width2 != [scale_xy_invCopy width] || (v18 = objc_msgSend(coeffCopy, "height"), v18 != objc_msgSend(scale_xy_invCopy, "height")))
    {
      +[PTLKTFlow _computeScalingFactor:dst_tex:scale_xy_inv:coeff:];
    }

    __asm { FMOV            V0.2S, #1.0 }

    v24 = 1.0;
  }

  else
  {
    _D0 = 0x3F0000003F000000;
    v24 = 2.0;
  }

  *v6 = v24;
  *v7 = _D0;
}

- (CGSize)ref_size
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)aux_size
{
  width = self->_aux_size.width;
  height = self->_aux_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end