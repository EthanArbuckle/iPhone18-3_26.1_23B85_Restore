@interface TVL1_v3
- (CGSize)outputDisparityResolution;
- (TVL1_v3)initWithMetalContext:(id)context;
- (id)texturePAtLevel:(int)level idx_swap_p:(int)idx_swap_p;
- (id)textureRaAtLevel:(int)level;
- (id)textureRbAtLevel:(int)level;
- (id)textureRdAtLevel:(int)level;
- (id)textureUVAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv;
- (id)textureUVRelaxAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv;
- (int)_doUpscaleDualWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_doUpscaleSingleWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex coeff:(float)coeff;
- (int)_setupBuffer;
- (int)_setupPipelines;
- (int)_setupTexture;
- (int)allocateResources;
- (int)doInitPrimalDualWithCommandBuffer:(id)buffer disparity_value:(float)disparity_value idx_swap_uv:(int)idx_swap_uv idx_swap_p:(int)idx_swap_p level:(int)level;
- (int)doLocalRegularizationWithCommandBuffer:(id)buffer in_tex:(id)in_tex level:(int)level parameters:(id)parameters;
- (int)doUpscalePrimalDualWithCommandBuffer:(id)buffer idx_swap_uv_in_out:(int *)idx_swap_uv_in_out idx_swap_p_in_out:(int *)idx_swap_p_in_out level:(int)level coeff:(float)coeff;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation TVL1_v3

- (TVL1_v3)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = TVL1_v3;
  v6 = [(TVL1_v3 *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_mtlContext, context);
  v10 = objc_msgSend_commandQueue(contextCopy, v8, v9);
  commandQueue = v7->_commandQueue;
  v7->_commandQueue = v10;

  v7->_isValid = 0;
  v14 = objc_msgSend__setupPipelines(v7, v12, v13);
  v15 = v7;
  if (v14)
  {
    sub_2957A05C8();
LABEL_4:
    v15 = 0;
  }

  v16 = v15;

  return v16;
}

- (int)allocateResources
{
  pyramidReference = self->_pyramidReference;
  if (pyramidReference)
  {
    self->_countScales = objc_msgSend_countScales(pyramidReference, a2, v2);
    self->_outputDisparityResolution = *objc_msgSend_pyramidDimensions(self->_pyramidReference, v5, v6);
    if (objc_msgSend__setupBuffer(self, v7, v8))
    {
      sub_2957A0620(&v15);
      v11 = v15;
    }

    else
    {
      if (!objc_msgSend__setupTexture(self, v9, v10))
      {
        v11 = 0;
        self->_isValid = 1;
        return v11;
      }

      sub_2957A06AC(&v16);
      v11 = v16;
    }
  }

  else
  {
    sub_2957A0738(&v17);
    v11 = v17;
  }

  if (v11)
  {
    objc_msgSend_releaseResources(self, v13, v14);
  }

  return v11;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = TVL1_v3;
  [(TVL1_v3 *)&v6 dealloc];
}

- (void)releaseResources
{
  self->_isValid = 0;
  R_a_pxbuf = self->_R_a_pxbuf;
  if (R_a_pxbuf)
  {
    CFRelease(R_a_pxbuf);
    self->_R_a_pxbuf = 0;
  }

  R_b_pxbuf = self->_R_b_pxbuf;
  if (R_b_pxbuf)
  {
    CFRelease(R_b_pxbuf);
    self->_R_b_pxbuf = 0;
  }

  R_d_pxbuf = self->_R_d_pxbuf;
  if (R_d_pxbuf)
  {
    CFRelease(R_d_pxbuf);
    self->_R_d_pxbuf = 0;
  }

  v6 = 0;
  p_pxbuf = self->_p_pxbuf;
  uv_relax_pxbuf = self->_uv_relax_pxbuf;
  uv_pxbuf = self->_uv_pxbuf;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = p_pxbuf[v6];
    if (v12)
    {
      CFRelease(v12);
      p_pxbuf[v6] = 0;
    }

    v13 = uv_relax_pxbuf[v6];
    if (v13)
    {
      CFRelease(v13);
      uv_relax_pxbuf[v6] = 0;
    }

    v14 = uv_pxbuf[v6];
    if (v14)
    {
      CFRelease(v14);
      uv_pxbuf[v6] = 0;
    }

    v10 = 0;
    v6 = 1;
  }

  while ((v11 & 1) != 0);
}

- (id)textureUVAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv
{
  if (self->_isValid)
  {
    if (level < 0 || self->_countScales <= level)
    {
      sub_2957A0824();
    }

    else
    {
      if (idx_swap_uv < 2)
      {
        v4 = self->_uv_tex[level][idx_swap_uv];
        goto LABEL_6;
      }

      sub_2957A0884();
    }
  }

  else
  {
    sub_2957A07C4();
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)textureUVRelaxAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv
{
  if (self->_isValid)
  {
    if (level < 0 || self->_countScales <= level)
    {
      sub_2957A0944();
    }

    else
    {
      if (idx_swap_uv < 2)
      {
        v4 = self->_uv_relax_tex[level][idx_swap_uv];
        goto LABEL_6;
      }

      sub_2957A09A4();
    }
  }

  else
  {
    sub_2957A08E4();
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)texturePAtLevel:(int)level idx_swap_p:(int)idx_swap_p
{
  if (self->_isValid)
  {
    if (level < 0 || self->_countScales <= level)
    {
      sub_2957A0A64();
    }

    else
    {
      if (idx_swap_p < 2)
      {
        v4 = self->_p_tex[level][idx_swap_p];
        goto LABEL_6;
      }

      sub_2957A0AC4();
    }
  }

  else
  {
    sub_2957A0A04();
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)textureRaAtLevel:(int)level
{
  if (self->_isValid)
  {
    if ((level & 0x80000000) == 0 && self->_countScales > level)
    {
      v3 = self->_R_a_tex[level];
      goto LABEL_5;
    }

    sub_2957A0B84();
  }

  else
  {
    sub_2957A0B24();
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)textureRbAtLevel:(int)level
{
  if (self->_isValid)
  {
    if ((level & 0x80000000) == 0 && self->_countScales > level)
    {
      v3 = self->_R_b_tex[level];
      goto LABEL_5;
    }

    sub_2957A0C44();
  }

  else
  {
    sub_2957A0BE4();
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)textureRdAtLevel:(int)level
{
  if (self->_isValid)
  {
    if ((level & 0x80000000) == 0 && self->_countScales > level)
    {
      v3 = self->_R_d_tex[level];
      goto LABEL_5;
    }

    sub_2957A0D04();
  }

  else
  {
    sub_2957A0CA4();
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (int)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  while (1)
  {
    v5 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v7 = objc_msgSend_initWithUTF8String_(v5, v6, off_29EDD8F58[v3]);
    v9 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v8, v7, 0);
    v10 = computePipelines[v3];
    computePipelines[v3] = v9;

    if (!computePipelines[v3])
    {
      break;
    }

    if (++v3 == 5)
    {
      return 0;
    }
  }

  sub_2957A0D64(v7);
  return -12786;
}

- (int)doInitPrimalDualWithCommandBuffer:(id)buffer disparity_value:(float)disparity_value idx_swap_uv:(int)idx_swap_uv idx_swap_p:(int)idx_swap_p level:(int)level
{
  disparity_valueCopy = disparity_value;
  v10 = self + 16 * level;
  v11 = *&v10[8 * idx_swap_uv + 1928];
  v12 = *&v10[8 * idx_swap_p + 872];
  v13 = self->_computePipelines[0];
  v16 = objc_msgSend_computeCommandEncoder(buffer, v14, v15);
  v18 = v16;
  if (v16)
  {
    objc_msgSend_setComputePipelineState_(v16, v17, v13);
    objc_msgSend_setTexture_atIndex_(v18, v19, v11, 0);
    objc_msgSend_setTexture_atIndex_(v18, v20, v12, 1);
    objc_msgSend_setBytes_length_atIndex_(v18, v21, &disparity_valueCopy, 4, 0);
    v24 = objc_msgSend_threadExecutionWidth(v13, v22, v23);
    v27 = objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v25, v26) / v24;
    v38[0] = (v24 + objc_msgSend_width(v11, v28, v29) - 1) / v24;
    v38[1] = (v27 + objc_msgSend_height(v11, v30, v31) - 1) / v27;
    v38[2] = 1;
    v37[0] = v24;
    v37[1] = v27;
    v37[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v18, v32, v38, v37);
    objc_msgSend_endEncoding(v18, v33, v34);
    v35 = 0;
  }

  else
  {
    sub_2957A0FBC(v38);
    v35 = v38[0];
  }

  return v35;
}

- (int)doUpscalePrimalDualWithCommandBuffer:(id)buffer idx_swap_uv_in_out:(int *)idx_swap_uv_in_out idx_swap_p_in_out:(int *)idx_swap_p_in_out level:(int)level coeff:(float)coeff
{
  bufferCopy = buffer;
  if (level < 0 || self->_countScales - 1 <= level)
  {
    sub_2957A1044();
    v21 = -12780;
  }

  else
  {
    v15 = *idx_swap_uv_in_out;
    v16 = *idx_swap_p_in_out;
    v17 = (level + 1);
    v18 = v15 ^ 1;
    *&v14 = coeff;
    v19 = objc_msgSend__doUpscaleSingleWithCommandBuffer_in_tex_out_tex_coeff_(self, v12, bufferCopy, self->_uv_tex[v17][v15], self->_uv_tex[level][v15 ^ 1], v14);
    if (v19)
    {
      v21 = v19;
      sub_2957A109C();
    }

    else
    {
      v21 = objc_msgSend__doUpscaleDualWithCommandBuffer_in_tex_out_tex_(self, v20, bufferCopy, self->_p_tex[v17][v16], self->_p_tex[level][v16 ^ 1]);
      if (v21)
      {
        sub_2957A10F4();
      }

      else
      {
        *idx_swap_uv_in_out = v18;
        *idx_swap_p_in_out = v16 ^ 1;
      }
    }
  }

  return v21;
}

- (int)doLocalRegularizationWithCommandBuffer:(id)buffer in_tex:(id)in_tex level:(int)level parameters:(id)parameters
{
  in_texCopy = in_tex;
  v59 = 0;
  parametersCopy = parameters;
  bufferCopy = buffer;
  objc_msgSend_alpha(parametersCopy, v13, v14);
  v57[0] = v15;
  objc_msgSend_beta(parametersCopy, v16, v17);
  v57[1] = v18;
  objc_msgSend_gain(parametersCopy, v19, v20);
  v57[2] = v21;
  objc_msgSend_offset(parametersCopy, v22, v23);
  v57[3] = v24;
  objc_msgSend_diffusion_eps(parametersCopy, v25, v26);
  v28 = v27;

  v58 = v28;
  v29 = self->_computePipelines[2];
  v32 = objc_msgSend_computeCommandEncoder(bufferCopy, v30, v31);

  if (v32)
  {
    objc_msgSend_setComputePipelineState_(v32, v33, v29);
    objc_msgSend_setTexture_atIndex_(v32, v34, in_texCopy, 0);
    v35 = (&self->super.isa + level);
    objc_msgSend_setTexture_atIndex_(v32, v36, v35[9], 1);
    objc_msgSend_setTexture_atIndex_(v32, v37, v35[75], 2);
    objc_msgSend_setTexture_atIndex_(v32, v38, v35[42], 3);
    objc_msgSend_setBytes_length_atIndex_(v32, v39, v57, 32, 0);
    v42 = objc_msgSend_threadExecutionWidth(v29, v40, v41);
    v45 = objc_msgSend_maxTotalThreadsPerThreadgroup(v29, v43, v44) / v42;
    v56[0] = (v42 + objc_msgSend_width(in_texCopy, v46, v47) - 1) / v42;
    v56[1] = (v45 + objc_msgSend_height(in_texCopy, v48, v49) - 1) / v45;
    v56[2] = 1;
    v55[0] = v42;
    v55[1] = v45;
    v55[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v50, v56, v55);
    objc_msgSend_endEncoding(v32, v51, v52);
    v53 = 0;
  }

  else
  {
    sub_2957A114C(v56);
    v53 = v56[0];
  }

  return v53;
}

- (int)_doUpscaleSingleWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex coeff:(float)coeff
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  bufferCopy = buffer;
  v15 = (objc_msgSend_width(out_texCopy, v13, v14) - 1);
  v53 = v15 / (objc_msgSend_width(in_texCopy, v16, v17) - 1);
  v20 = (objc_msgSend_height(out_texCopy, v18, v19) - 1);
  v23 = objc_msgSend_height(in_texCopy, v21, v22);
  v24.f32[0] = v53;
  v24.f32[1] = v20 / (v23 - 1);
  __asm { FMOV            V0.2S, #1.0 }

  v56[0] = vdiv_f32(_D0, v24);
  v56[1] = LODWORD(coeff);
  v30 = self->_computePipelines[3];
  v33 = objc_msgSend_computeCommandEncoder(bufferCopy, v31, v32);

  if (v33)
  {
    objc_msgSend_setComputePipelineState_(v33, v34, v30);
    objc_msgSend_setTexture_atIndex_(v33, v35, in_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v33, v36, out_texCopy, 1);
    objc_msgSend_setBytes_length_atIndex_(v33, v37, v56, 16, 0);
    v40 = objc_msgSend_threadExecutionWidth(v30, v38, v39);
    v43 = objc_msgSend_maxTotalThreadsPerThreadgroup(v30, v41, v42) / v40;
    v55[0] = (v40 + objc_msgSend_width(out_texCopy, v44, v45) - 1) / v40;
    v55[1] = (v43 + objc_msgSend_height(out_texCopy, v46, v47) - 1) / v43;
    v55[2] = 1;
    v54[0] = v40;
    v54[1] = v43;
    v54[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v33, v48, v55, v54);
    objc_msgSend_endEncoding(v33, v49, v50);
    v51 = 0;
  }

  else
  {
    sub_2957A11D4(v55);
    v51 = v55[0];
  }

  return v51;
}

- (int)_doUpscaleDualWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  bufferCopy = buffer;
  v13 = (objc_msgSend_width(out_texCopy, v11, v12) - 1);
  v51 = v13 / (objc_msgSend_width(in_texCopy, v14, v15) - 1);
  v18 = (objc_msgSend_height(out_texCopy, v16, v17) - 1);
  v21 = objc_msgSend_height(in_texCopy, v19, v20);
  v22.f32[0] = v51;
  v22.f32[1] = v18 / (v21 - 1);
  v54[1] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v54[0] = vdiv_f32(_D0, v22);
  v28 = self->_computePipelines[4];
  v31 = objc_msgSend_computeCommandEncoder(bufferCopy, v29, v30);

  if (v31)
  {
    objc_msgSend_setComputePipelineState_(v31, v32, v28);
    objc_msgSend_setTexture_atIndex_(v31, v33, in_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v31, v34, out_texCopy, 1);
    objc_msgSend_setBytes_length_atIndex_(v31, v35, v54, 16, 0);
    v38 = objc_msgSend_threadExecutionWidth(v28, v36, v37);
    v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(v28, v39, v40) / v38;
    v53[0] = (v38 + objc_msgSend_width(out_texCopy, v42, v43) - 1) / v38;
    v53[1] = (v41 + objc_msgSend_height(out_texCopy, v44, v45) - 1) / v41;
    v53[2] = 1;
    v52[0] = v38;
    v52[1] = v41;
    v52[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v46, v53, v52);
    objc_msgSend_endEncoding(v31, v47, v48);
    v49 = 0;
  }

  else
  {
    sub_2957A125C(v53);
    v49 = v53[0];
  }

  return v49;
}

- (CGSize)outputDisparityResolution
{
  width = self->_outputDisparityResolution.width;
  height = self->_outputDisparityResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int)_setupBuffer
{
  width = self->_outputDisparityResolution.width;
  height = self->_outputDisparityResolution.height;
  sub_295793344();
  PixelBuffer = CreatePixelBuffer();
  self->_R_a_pxbuf = PixelBuffer;
  if (PixelBuffer)
  {
    sub_295793344();
    v6 = CreatePixelBuffer();
    self->_R_b_pxbuf = v6;
    if (v6)
    {
      sub_295793344();
      v7 = CreatePixelBuffer();
      self->_R_d_pxbuf = v7;
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        p_pxbuf = self->_p_pxbuf;
        uv_relax_pxbuf = self->_uv_relax_pxbuf;
        uv_pxbuf = self->_uv_pxbuf;
        while (1)
        {
          sub_295793344();
          v13 = CreatePixelBuffer();
          p_pxbuf[v9] = v13;
          if (!v13)
          {
            break;
          }

          sub_295793344();
          v14 = CreatePixelBuffer();
          uv_relax_pxbuf[v9] = v14;
          if (!v14)
          {
            break;
          }

          sub_295793344();
          v15 = CreatePixelBuffer();
          uv_pxbuf[v9] = v15;
          v16 = v8 ^ 1;
          v8 = 1;
          v9 = 1;
          if (((v15 != 0) & v16) == 0)
          {
            if (v15)
            {
              return 0;
            }

            else
            {
              return -12786;
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_setupTexture
{
  pyramidReference = self->_pyramidReference;
  if (pyramidReference)
  {
    v65 = objc_msgSend_pyramidDimensions(pyramidReference, a2, v2);
    if (objc_msgSend_countScales(self->_pyramidReference, v5, v6) < 1)
    {
      return 0;
    }

    else
    {
      v7 = 0;
      R_d_tex = self->_R_d_tex;
      R_a_tex = self->_R_a_tex;
      R_b_tex = self->_R_b_tex;
LABEL_4:
      v8 = (v65 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      mtlContext = self->_mtlContext;
      R_a_pxbuf = self->_R_a_pxbuf;
      v13 = sub_29578C944();
      v17 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v14, v15, v16, v13);
      v18 = R_a_tex[v7];
      R_a_tex[v7] = v17;

      if (R_a_tex[v7])
      {
        v19 = self->_mtlContext;
        R_d_pxbuf = self->_R_d_pxbuf;
        v21 = sub_29578C944();
        v25 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v22, v23, v24, v21);
        v26 = R_d_tex[v7];
        R_d_tex[v7] = v25;

        if (R_d_tex[v7])
        {
          v27 = self->_mtlContext;
          R_b_pxbuf = self->_R_b_pxbuf;
          v29 = sub_29578C944();
          v33 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v30, v31, v32, v29);
          v34 = R_b_tex[v7];
          R_b_tex[v7] = v33;

          if (R_b_tex[v7])
          {
            v36 = 0;
            v37 = self->_p_tex[v7];
            v38 = 1;
            v39 = self->_uv_relax_tex[v7];
            v40 = self->_uv_tex[v7];
            while (1)
            {
              v41 = v38;
              v42 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_mtlContext, v35, self->_p_pxbuf[v36], 65, 23, 0, v9, v10);
              v43 = v37[v36];
              v37[v36] = v42;

              if (!v37[v36])
              {
                break;
              }

              v44 = self->_mtlContext;
              v45 = self->_uv_relax_pxbuf[v36];
              v46 = sub_29578C944();
              v50 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v47, v48, v49, v46);
              v51 = v39[v36];
              v39[v36] = v50;

              if (!v39[v36])
              {
                break;
              }

              v52 = self->_mtlContext;
              v53 = self->_uv_pxbuf[v36];
              v54 = sub_29578C944();
              v58 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v55, v56, v57, v54);
              v59 = v40[v36];
              v40[v36] = v58;

              if (!v40[v36])
              {
                break;
              }

              v38 = 0;
              v36 = 1;
              if ((v41 & 1) == 0)
              {
                if (++v7 < objc_msgSend_countScales(self->_pyramidReference, v35, v60))
                {
                  goto LABEL_4;
                }

                return 0;
              }
            }
          }
        }
      }

      return -12786;
    }
  }

  else
  {
    sub_295787448();
    sub_295787468();
    FigDebugAssert3();
    return -12780;
  }
}

@end