@interface PTLKTFlow
+ (void)_computeScalingFactor:(id)a1 dst_tex:(SEL)a2 scale_xy_inv:(id)a3 coeff:(id)a4;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (PTLKTFlow)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 nscales:(int)a6;
- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5 metalContext:(id)a6;
- (int)_computeFeatures:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_computeFeaturesDerivatives:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_computeOpticalFlow:(id)a3 computeFeatureI0:(BOOL)a4 computeFeatureI1:(BOOL)a5;
- (int)_computeOpticalFlowBidirectional:(id)a3;
- (int)_createImagePyramid:(id)a3 in_tex:(id)a4 I_idx:(int)a5;
- (int)_doNLRegularization:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7;
- (int)_doSolver:(id)a3 scale:(int)a4 in_uv_tex:(id)a5 in_G0_tex:(id)a6 in_G1_tex:(id)a7 in_C0_tex:(id)a8 in_C1_tex:(id)a9 out_uv_tex:(id)a10 out_w_tex:(id)a11;
- (int)_downscale2X:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_enqueueFlowConsistency:(id)a3 in_uv0_tex:(id)a4 in_uv1_tex:(id)a5 out_uv_tex:(id)a6;
- (int)_enqueueKeypointsFromFlow:(id)a3 in_uv_fwd_tex:(id)a4 in_uv_bwd_tex:(id)a5 out_kpt_buf:(id)a6 block_size:(int)a7 bidirectional_error:(float)a8 out_num_keypoints:(unsigned __int16 *)a9;
- (int)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5;
- (int)_setupBuffer:(id)a3;
- (int)_setupPipelines:(id)a3;
- (int)_zeroFlow:(id)a3 uv_tex:(id)a4;
- (int)computeKeypointsFromTexForwardFlow:(id)a3 backwardFlow:(id)a4 bidirectionalError:(float)a5 blockSize:(int)a6 outNumKeypoints:(unsigned __int16 *)a7 commandBuffer:(id)a8;
- (int)estimateFlowFromTexReference:(id)a3 target:(id)a4 commandBuffer:(id)a5;
- (int)estimateFlowStreamTex:(id)a3 commandBuffer:(id)a4;
- (int)estimateFlowStreamTex:(id)a3 index:(int)a4 doOpticalFlow:(BOOL)a5 commandBuffer:(id)a6;
- (int)setOutputTexUVForward:(id)a3 backward:(id)a4;
- (void)_setDefaultParameters;
- (void)setPreset:(int64_t)a3;
@end

@implementation PTLKTFlow

- (PTLKTFlow)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 nscales:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v10 = a3;
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
    v14 = [(PTLKTFlow *)v12 _setupPipelines:v10]| v13;
    v15 = v14 | [(PTLKTFlow *)v12 _setupBuffer:v10];
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

- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5 metalContext:(id)a6
{
  v9 = a6;
  v10 = a3 - 62;
  if (a3 - 62 <= 0x3F)
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

  if (a3 <= 0x3C)
  {
    if (((1 << a3) & 0x80743D00000) != 0)
    {
      v11 = 2;
      goto LABEL_14;
    }

    if (((1 << a3) & 0x7402) != 0)
    {
      v11 = 1;
      goto LABEL_14;
    }

    if (((1 << a3) & 0x10E0000000000000) != 0)
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
  v12 = v11 * a4;
  v13 = [v9 device];
  v14 = v13;
  if (a5)
  {
    v15 = [v13 newBufferWithBytes:a5 length:v12 options:0];
  }

  else
  {
    v15 = [v13 newBufferWithLength:v12 options:0];
  }

  v16 = v15;

  return v16;
}

- (void)setPreset:(int64_t)a3
{
  if (a3 > 1)
  {
    switch(a3)
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

  if (a3)
  {
    if (a3 != 1)
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

- (int)setOutputTexUVForward:(id)a3 backward:(id)a4
{
  v6 = a3;
  v7 = a4;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = v6;
  v9 = v6;

  uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
  self->_uv_bwd_tex_user_ref = v7;

  self->_isValid = v9 != 0;
  return 0;
}

- (int)estimateFlowFromTexReference:(id)a3 target:(id)a4 commandBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_isValid && !self->_streamFrameCount)
  {
    v14 = [v10 computeCommandEncoder];
    [(PTLKTFlow *)self _zeroFlow:v14 uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:v14 uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
    }

    [(PTLKTFlow *)self _createImagePyramid:v14 in_tex:v8 I_idx:0];
    [(PTLKTFlow *)self _createImagePyramid:v14 in_tex:v9 I_idx:1];
    *&self->_current_frame_index = 0;
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:v14];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:v14 computeFeatureI0:1 computeFeatureI1:1];
    }

    [v14 endEncoding];

    v12 = 0;
  }

  else
  {
    v12 = -12782;
  }

  return v12;
}

- (int)estimateFlowStreamTex:(id)a3 index:(int)a4 doOpticalFlow:(BOOL)a5 commandBuffer:(id)a6
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
  v15 = a5;
  v18 = a3;
  v19 = [a6 computeCommandEncoder];
  [(PTLKTFlow *)self _createImagePyramid:v19 in_tex:v18 I_idx:self->_isInverse ^ a4];

  *&self->_current_frame_index = a4 ^ 1u;
  if (v15)
  {
    [(PTLKTFlow *)self _zeroFlow:v19 uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:v19 uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:v19];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:v19 computeFeatureI0:1 computeFeatureI1:1];
    }
  }

  else
  {
    self->_indexUpdated[a4] = 0;
  }

  [v19 endEncoding];

  return 0;
}

- (int)estimateFlowStreamTex:(id)a3 commandBuffer:(id)a4
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v18 = v6;
  v19 = v5;
  v20 = v4;
  v12 = a3;
  v13 = [a4 computeCommandEncoder];
  if (self->_streamFrameCount >= 0)
  {
    v14 = self->_streamFrameCount & 1;
  }

  else
  {
    v14 = -(self->_streamFrameCount & 1);
  }

  [(PTLKTFlow *)self _createImagePyramid:v13 in_tex:v12 I_idx:v14 ^ self->_isInverse, v7, v18, v19, v20, v8, v9];

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
    [(PTLKTFlow *)self _zeroFlow:v13 uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:v13 uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:v13];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:v13 computeFeatureI0:1 computeFeatureI1:1];
    }
  }

  [v13 endEncoding];

  return 0;
}

- (int)computeKeypointsFromTexForwardFlow:(id)a3 backwardFlow:(id)a4 bidirectionalError:(float)a5 blockSize:(int)a6 outNumKeypoints:(unsigned __int16 *)a7 commandBuffer:(id)a8
{
  v10 = *&a6;
  v14 = a4;
  v15 = a3;
  v16 = [a8 computeCommandEncoder];
  *&v17 = a5;
  [(PTLKTFlow *)self _enqueueKeypointsFromFlow:v16 in_uv_fwd_tex:v15 in_uv_bwd_tex:v14 out_kpt_buf:self->_kpt_buf block_size:v10 bidirectional_error:a7 out_num_keypoints:v17];

  [v16 endEncoding];
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

- (int)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5
{
  v6 = 0;
  self->_isValid = 0;
  if (a3 >= 8 && a4 >= 8)
  {
    v6 = 0;
    v7 = a4;
    v8 = a3;
    do
    {
      v9 = (v8 & 1) + v8;
      if (v9 / 2 >= 0)
      {
        v10 = (v9 / 2) & 1;
      }

      else
      {
        v10 = -((v9 / 2) & 1);
      }

      v11 = (v7 & 1) + v7;
      if (v11 / 2 >= 0)
      {
        v12 = (v11 / 2) & 1;
      }

      else
      {
        v12 = -((v11 / 2) & 1);
      }

      v13 = v9 + 2 * v10 + 1;
      v8 = v13 >> 1;
      v14 = v11 + 2 * v12 + 1;
      v7 = v14 >> 1;
      ++v6;
    }

    while (v13 >= 16 && v14 > 15);
  }

  self->_ref_size.width = a3;
  self->_ref_size.height = a4;
  self->_aux_size.width = a3;
  self->_aux_size.height = a4;
  if (a5 >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v6;
  }

  self->_nscales = v16;
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

- (int)_setupPipelines:(id)a3
{
  v4 = a3;
  v5 = 0;
  computePipelines = self->_computePipelines;
  while (1)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:kKernelNames[v5]];
    v8 = [v4 computePipelineStateFor:v7 withConstants:0];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    objc_storeStrong(computePipelines, v8);
    v10 = [v9 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (v10 > maxThreadExecutionWidth)
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

- (int)_setupBuffer:(id)a3
{
  v125 = *MEMORY[0x277D85DE8];
  p_ref_size = &self->_ref_size;
  v5 = a3;
  v6 = 0;
  v7 = (self->_ref_size.width + LODWORD(self->_maxThreadExecutionWidth) - 1) / SLODWORD(self->_maxThreadExecutionWidth) * LODWORD(self->_maxThreadExecutionWidth) * self->_ref_size.height;
  Adiagb_buf = self->_Adiagb_buf;
  v113 = self;
  Ixy_buf = self->_Ixy_buf;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = [v5 device];
    v13 = [v12 newBufferWithLength:8 * v7 options:0];
    v14 = Adiagb_buf[v6];
    Adiagb_buf[v6] = v13;

    if (!Adiagb_buf[v6])
    {
      break;
    }

    v15 = [v5 device];
    v16 = [v15 newBufferWithLength:2 * v7 options:0];
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
      v18 = [v5 device];
      v19 = [v18 newBufferWithLength:4 * v7 options:0];
      v20 = v113;
      idt_buf = v113->_idt_buf;
      v113->_idt_buf = v19;

      if (v113->_idt_buf)
      {
        if (v113->_nscales < 1)
        {
          v23 = 0;
        }

        else
        {
          v22 = 0;
          v23 = 0;
          G1_tex = v113->_G1_tex;
          G0_tex = v113->_G0_tex;
          C1_tex = v113->_C1_tex;
          C0_tex = v113->_C0_tex;
          v24 = vmovn_s64(vcvtq_s64_f64(p_ref_size[1]));
          w_tex = v113->_w_tex;
          v25 = vcvtq_s64_f64(*p_ref_size);
          v26 = vmovn_s64(v25);
          I_u32_alias_tex = v113->_I_u32_alias_tex;
          I_tex = v113->_I_tex;
          v104 = v113->_I_u32_alias_tex[1];
          v105 = v113->_I_tex[1];
          v27 = 0x277CD7000uLL;
          v25.i64[0] = 67109120;
          v103 = v25;
          do
          {
            v118 = v24;
            v28.i64[0] = v26.i32[0];
            v28.i64[1] = v26.i32[1];
            v113->_ref_pyr_size[v22] = vcvtq_f64_s64(v28);
            v28.i64[0] = v24.i32[0];
            v28.i64[1] = v24.i32[1];
            v113->_aux_pyr_size[v22] = vcvtq_f64_s64(v28);
            v29 = v26.u32[1];
            v116 = v26.u32[0];
            v30 = [*(v27 + 88) texture2DDescriptorWithPixelFormat:65 width:*&v103 height:? mipmapped:?];
            if ([v5 supportsFamily:1007])
            {
              v31 = 0;
            }

            else
            {
              v31 = 32;
            }

            [v30 setResourceOptions:v31];
            [v30 setUsage:3];
            v32 = [v5 device];
            v33 = [v32 newTextureWithDescriptor:v30];
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
            v37 = [v5 device];
            v38 = [v37 newTextureWithDescriptor:v30];
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
            v41 = [v5 device];
            v42 = [v41 newTextureWithDescriptor:v30];
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
            v45 = [v5 device];
            v46 = [v45 newTextureWithDescriptor:v30];
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
            v49 = [v5 device];
            v50 = [v49 newTextureWithDescriptor:v30];
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
              v56 = [v5 device];
              v57 = [v56 newTextureWithDescriptor:v30];
              v58 = v113->_uv_fwd_tex[v53];
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

              v61 = [v5 device];
              v62 = [v61 newTextureWithDescriptor:v30];
              v63 = v113->_uv_bwd_tex[v53];
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
              v67 = v113->_uv_fwd_u32_alias_tex[v53];
              v68 = *(v67 + 8 * v22);
              *(v67 + 8 * v22) = v66;

              v69 = [*(v63 + 8 * v22) newTextureViewWithPixelFormat:53];
              v70 = v113->_uv_bwd_u32_alias_tex[v53];
              v71 = *(v70 + 8 * v22);
              *(v70 + 8 * v22) = v69;

              v54 = 0;
              v53 = 1;
            }

            while ((v55 & 1) != 0);
            v72 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v116 height:v115 mipmapped:0];
            [v72 setUsage:19];
            if ([v5 supportsFamily:1007])
            {
              v73 = 0;
            }

            else
            {
              v73 = 32;
            }

            [v72 setResourceOptions:v73];
            v74 = [v5 device];
            v75 = [v74 newTextureWithDescriptor:v72];
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
            if ([v5 supportsFamily:1007])
            {
              v87 = 0;
            }

            else
            {
              v87 = 32;
            }

            [v86 setResourceOptions:v87];
            v88 = [v5 device];
            v89 = [v88 newTextureWithDescriptor:v86];
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
            v20 = v113;
          }

          while (v22 < v113->_nscales);
        }

        v101 = [(PTLKTFlow *)v20 newBufferWithPixelFormat:115 width:0x8000 data:0 metalContext:v5];
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

- (int)_computeOpticalFlow:(id)a3 computeFeatureI0:(BOOL)a4 computeFeatureI1:(BOOL)a5
{
  v24 = a4;
  v25 = a5;
  v32 = a3;
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
      if (v24)
      {
        [(PTLKTFlow *)self _computeFeatures:v32 in_tex:v11 out_tex:G0_tex[v7]];
        [(PTLKTFlow *)self _computeFeaturesDerivatives:v32 in_tex:G0_tex[v7] out_tex:C0_tex[v7]];
      }

      if (v25)
      {
        [(PTLKTFlow *)self _computeFeatures:v32 in_tex:v12 out_tex:G1_tex[v7]];
        [(PTLKTFlow *)self _computeFeaturesDerivatives:v32 in_tex:G1_tex[v7] out_tex:C1_tex[v7]];
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

          [(PTLKTFlow *)self _doSolver:v32 scale:v7 in_uv_tex:uv_fwd_tex[v8][v10] in_G0_tex:G0_tex[v7] in_G1_tex:G1_tex[v7] in_C0_tex:C0_tex[v7] in_C1_tex:C1_tex[v7] out_uv_tex:v18 out_w_tex:v15];
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

        [(PTLKTFlow *)self _doNLRegularization:v32 in_uv_tex:self->_uv_fwd_u32_alias_tex[v8][v7] join_tex:self->_I_u32_alias_tex[self->_current_frame_index][v7] w_tex:v15 out_uv_tex:*v20];
        v8 ^= 1uLL;
      }
    }

    while (v7-- > 0);
  }

  return 0;
}

- (int)_computeOpticalFlowBidirectional:(id)a3
{
  v48 = a3;
  v4 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v5 = self->_uv_fwd_tex[0][v4];
  uv_bwd_tex = self->_uv_bwd_tex;
  v6 = self->_uv_bwd_tex[0][v4];
  v7 = self;
  if (!self->_uv_bwd_tex_user_ref)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PTLKTFlow *)v8 _computeOpticalFlowBidirectional:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  nscales = v7->_nscales;
  if (nscales >= 1)
  {
    v17 = 0;
    I_tex = v7->_I_tex;
    G1_tex = v7->_G1_tex;
    G0_tex = v7->_G0_tex;
    C1_tex = v7->_C1_tex;
    C0_tex = v7->_C0_tex;
    v43 = v4;
    v42 = v4;
    do
    {
      v39 = nscales--;
      v18 = I_tex[v7->_current_frame_index][nscales];
      v19 = I_tex[v7->_current_frame_index ^ 1][nscales];
      v38 = v18;
      [(PTLKTFlow *)v7 _computeFeatures:v48 in_tex:v18 out_tex:G0_tex[nscales]];
      v37 = v19;
      [(PTLKTFlow *)v7 _computeFeatures:v48 in_tex:v19 out_tex:G1_tex[nscales]];
      [(PTLKTFlow *)v7 _computeFeaturesDerivatives:v48 in_tex:G0_tex[nscales] out_tex:C0_tex[nscales]];
      [(PTLKTFlow *)v7 _computeFeaturesDerivatives:v48 in_tex:G1_tex[nscales] out_tex:C1_tex[nscales]];
      if (v7->_nwarpings >= 1)
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
              v31 = v20 + 3 <= v7->_nwarpings;
            }

            p_uv_fwd_tex_user_ref = &v30[nscales];
            if (!v31)
            {
              p_uv_fwd_tex_user_ref = &v7->_uv_fwd_tex_user_ref;
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
            v22 = v7->_uv_bwd_tex[1][nscales];
            if (nscales)
            {
              v23 = 1;
            }

            else
            {
              v23 = v20 + 3 <= v7->_nwarpings;
            }

            p_uv_bwd_tex_user_ref = &v7->_uv_bwd_tex_user_ref;
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

          [(PTLKTFlow *)v7 _enqueueFlowConsistency:v48 in_uv0_tex:v29 in_uv1_tex:v21 out_uv_tex:v22];
          [(PTLKTFlow *)v7 _doSolver:v48 scale:v28 in_uv_tex:v22 in_G0_tex:v54 in_G1_tex:v53 in_C0_tex:v51 in_C1_tex:v49 out_uv_tex:v27 out_w_tex:0];

          ++v20;
          v5 = v50;
          v6 = v52;
          v17 = v55;
        }

        while (v20 < v7->_nwarpings);
      }
    }

    while (v39 > 1);
  }

  return 0;
}

- (int)_createImagePyramid:(id)a3 in_tex:(id)a4 I_idx:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self + 80 * a5;
  if (self->_needConversionBGRA2YUVA)
  {
    [v8 setComputePipelineState:self->_computePipelines[0]];
    [v8 setTexture:v9 atIndex:0];
    [v8 setTexture:*(v10 + 54) atIndex:1];
    v20 = [v9 width];
    v21 = [v9 height];
  }

  else
  {
    [v8 setComputePipelineState:self->_computePipelines[11]];
    [v8 setTexture:v9 atIndex:0];
    [v8 setTexture:*(v10 + 54) atIndex:1];
    v11 = [*(v10 + 54) width];
    v12 = [*(v10 + 54) height];
    v20 = v11;
    v21 = v12;
  }

  v22 = 1;
  v18 = xmmword_2244A5230;
  v19 = 1;
  [v8 dispatchThreads:&v20 threadsPerThreadgroup:&v18];
  if (self->_nscales >= 2)
  {
    v13 = &self->_I_tex[a5][1];
    v14 = 1;
    do
    {
      v15 = *v13;
      v16 = *(v13 - 1);
      [(PTLKTFlow *)self _downscale2X:v8 in_tex:v16 out_tex:v15, v18, v19, v20, v21, v22];

      ++v14;
      ++v13;
    }

    while (v14 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlow:(id)a3 uv_tex:(id)a4
{
  v5 = self->_computePipelines[1];
  v6 = a4;
  v7 = a3;
  [v7 setComputePipelineState:v5];
  [v7 setTexture:v6 atIndex:0];
  v8 = [v6 width];
  LODWORD(v5) = [v6 height];

  v12[0] = v8;
  v12[1] = v5;
  v12[2] = 1;
  v10 = xmmword_2244A5230;
  v11 = 1;
  [v7 dispatchThreads:v12 threadsPerThreadgroup:&v10];

  return 0;
}

- (int)_downscale2X:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v7 = self->_computePipelines[2];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setComputePipelineState:v7];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v11 = [v8 width];
  LODWORD(a3) = [v8 height];

  v15[0] = v11;
  v15[1] = a3;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [v10 dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_computeFeatures:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v7 = self->_computePipelines[3];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setComputePipelineState:v7];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  v11 = [v9 width];
  LODWORD(a3) = [v9 height];

  v15[0] = v11;
  v15[1] = a3;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [v10 dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_computeFeaturesDerivatives:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v7 = self->_computePipelines[4];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setComputePipelineState:v7];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  v11 = [v9 width];
  LODWORD(a3) = [v9 height];

  v15[0] = v11;
  v15[1] = a3;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [v10 dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_doSolver:(id)a3 scale:(int)a4 in_uv_tex:(id)a5 in_G0_tex:(id)a6 in_G1_tex:(id)a7 in_C0_tex:(id)a8 in_C1_tex:(id)a9 out_uv_tex:(id)a10 out_w_tex:(id)a11
{
  v31 = a11;
  v17 = a10;
  v32 = a9;
  v30 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  LODWORD(a5) = [v17 width];
  LODWORD(a3) = [v17 height];
  LODWORD(a6) = (a5 + self->_maxThreadExecutionWidth - 1) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v45[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v44 = _D0;
  [PTLKTFlow _computeScalingFactor:v20 dst_tex:v17 scale_xy_inv:&v44 coeff:v45];
  v38[0] = a5;
  v38[1] = a3;
  v39 = a6;
  v40 = v44;
  v41 = 0;
  v27 = v45;
  v28 = vld1_dup_f32(v27);
  v42 = v28;
  v43 = 0;
  [v21 setComputePipelineState:self->_computePipelines[5]];
  [v21 setTexture:v20 atIndex:0];
  [v21 setTexture:v19 atIndex:1];

  [v21 setTexture:v18 atIndex:2];
  [v21 setTexture:v30 atIndex:3];

  [v21 setTexture:v32 atIndex:4];
  [v21 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [v21 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [v21 setBuffer:self->_idt_buf offset:0 atIndex:2];
  [v21 setBytes:v38 length:48 atIndex:3];
  v35 = a5;
  v36 = a3;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [v21 dispatchThreads:&v35 threadsPerThreadgroup:&v33];
  [v21 setComputePipelineState:self->_computePipelines[6]];
  [v21 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [v21 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [v21 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
  [v21 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
  [v21 setBytes:v38 length:48 atIndex:4];
  v35 = a5;
  v36 = a3;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [v21 dispatchThreads:&v35 threadsPerThreadgroup:&v33];
  [v21 setComputePipelineState:self->_computePipelines[7]];
  [v21 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:0];
  [v21 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:1];
  [v21 setBuffer:self->_idt_buf offset:0 atIndex:2];
  [v21 setTexture:v20 atIndex:0];

  [v21 setTexture:v17 atIndex:1];
  [v21 setTexture:v31 atIndex:2];

  [v21 setBytes:v38 length:48 atIndex:3];
  v35 = a5;
  v36 = a3;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [v21 dispatchThreads:&v35 threadsPerThreadgroup:&v33];

  return 0;
}

- (int)_enqueueFlowConsistency:(id)a3 in_uv0_tex:(id)a4 in_uv1_tex:(id)a5 out_uv_tex:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  LODWORD(a3) = [v10 width];
  v14 = [v10 height];
  __asm { FMOV            V0.2S, #1.0 }

  v36 = _D0;
  v37 = _D0;
  v35 = 1065353216;
  v34 = 1065353216;
  [PTLKTFlow _computeScalingFactor:v12 dst_tex:v10 scale_xy_inv:&v37 coeff:&v35];
  [PTLKTFlow _computeScalingFactor:v11 dst_tex:v10 scale_xy_inv:&v36 coeff:&v34];
  v29 = 0;
  v28[0] = a3;
  v28[1] = v14;
  v20 = &v35;
  v21 = vld1_dup_f32(v20);
  v30 = v37;
  v31 = v36;
  v22 = vld1_dup_f32(&v34);
  v32 = v21;
  v33 = v22;
  [v13 setComputePipelineState:self->_computePipelines[8]];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v10 atIndex:2];
  [v13 setBytes:v28 length:48 atIndex:0];
  v23 = [v10 width];
  LODWORD(v11) = [v10 height];

  v27[0] = v23;
  v27[1] = v11;
  v27[2] = 1;
  v25 = xmmword_2244A5230;
  v26 = 1;
  [v13 dispatchThreads:v27 threadsPerThreadgroup:&v25];

  return 0;
}

- (int)_enqueueKeypointsFromFlow:(id)a3 in_uv_fwd_tex:(id)a4 in_uv_bwd_tex:(id)a5 out_kpt_buf:(id)a6 block_size:(int)a7 bidirectional_error:(float)a8 out_num_keypoints:(unsigned __int16 *)a9
{
  v16 = a4;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [v16 width] / a7;
  v21 = [v16 height] / a7;
  v34 = a7;
  v36 = v21;
  v35 = v20;
  v37 = LODWORD(a8);
  if (v21 * v20 > 0x8000)
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(PTLKTFlow *)v22 _enqueueKeypointsFromFlow:v23 in_uv_fwd_tex:v24 in_uv_bwd_tex:v25 out_kpt_buf:v26 block_size:v27 bidirectional_error:v28 out_num_keypoints:v29];
    }
  }

  [v19 setComputePipelineState:self->_computePipelines[9]];
  [v19 setTexture:v16 atIndex:0];
  [v19 setTexture:v18 atIndex:1];

  [v19 setBuffer:v17 offset:0 atIndex:0];
  [v19 setBytes:&v34 length:16 atIndex:1];
  v33[0] = v20;
  v33[1] = v21;
  v33[2] = 1;
  v31 = xmmword_2244A5230;
  v32 = 1;
  [v19 dispatchThreads:v33 threadsPerThreadgroup:&v31];

  *a9 = v21 * v20;
  return 0;
}

- (int)_doNLRegularization:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7
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
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  [v23 setComputePipelineState:v18];
  [v23 setTexture:v22 atIndex:0];
  [v23 setTexture:v21 atIndex:1];

  [v23 setTexture:v20 atIndex:2];
  [v23 setTexture:v19 atIndex:3];

  [v23 setBytes:v30 length:32 atIndex:0];
  v24 = [v22 width];
  v25 = (v24 + (v24 >> 31)) >> 1;
  LODWORD(v19) = [v22 height];

  v29[0] = v25;
  v29[1] = (v19 + (v19 >> 31)) >> 1;
  v29[2] = 1;
  v27 = xmmword_2244A5230;
  v28 = 1;
  [v23 dispatchThreads:v29 threadsPerThreadgroup:&v27];

  return 0;
}

+ (void)_computeScalingFactor:(id)a1 dst_tex:(SEL)a2 scale_xy_inv:(id)a3 coeff:(id)a4
{
  v6 = v5;
  v7 = v4;
  v25 = a3;
  v9 = a4;
  v10 = [v9 width];
  v11 = v10 / [v25 width];
  v12 = [v9 height];
  v13 = [v25 height];
  LODWORD(v14) = 1.5;
  *&v15 = v12 / v13;
  if (v11 <= 1.5 || *&v15 <= 1.5)
  {
    v17 = [v9 width];
    if (v17 != [v25 width] || (v18 = objc_msgSend(v9, "height"), v18 != objc_msgSend(v25, "height")))
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