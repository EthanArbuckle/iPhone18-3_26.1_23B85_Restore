@interface PyrGPU
- (PyrGPU)initWithMetalContext:(id)a3;
- (id)textureRGBAU8AtScale:(int)a3;
- (id)textureU32AliasAtScale:(int)a3;
- (int)_doRPDDownscale1WithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:;
- (int)_downscale2XBelowWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:;
- (int)_downscaleAntialiasingWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 in_ref_res:(CGSize)a6 out_ref_res:(CGSize)a7;
- (int)allocateResourcesWithMaxInputResolution:(CGSize)a3;
- (int)doImagePyramidWithCommandBuffer:(id)a3 in_tex:(id)a4;
- (int)downscale2XEqualWithCommandBuffer:(id)a3 in_u32_alias_tex:(id)a4 out_u32_alias_tex:(id)a5;
- (int)populatePyramidSchemeFromReference:(id)a3 inputResolution:(CGSize)a4;
- (void)_setupPipelines;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation PyrGPU

- (PyrGPU)initWithMetalContext:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PyrGPU;
  v6 = [(PyrGPU *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlContext, a3);
    v10 = objc_msgSend_commandQueue(v5, v8, v9);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v10;

    *&v7->_isValid = 0;
    v7->_countScales = 0;
    bzero(v7->_pyrInfoArray, 0x600uLL);
    *&v7->_pyr_pxbuf[30] = 0u;
    *&v7->_pyr_pxbuf[28] = 0u;
    *&v7->_pyr_pxbuf[26] = 0u;
    *&v7->_pyr_pxbuf[24] = 0u;
    *&v7->_pyr_pxbuf[22] = 0u;
    *&v7->_pyr_pxbuf[20] = 0u;
    *&v7->_pyr_pxbuf[18] = 0u;
    *&v7->_pyr_pxbuf[16] = 0u;
    *&v7->_pyr_pxbuf[14] = 0u;
    *&v7->_pyr_pxbuf[12] = 0u;
    *&v7->_pyr_pxbuf[10] = 0u;
    *&v7->_pyr_pxbuf[8] = 0u;
    *&v7->_pyr_pxbuf[6] = 0u;
    *&v7->_pyr_pxbuf[4] = 0u;
    *&v7->_pyr_pxbuf[2] = 0u;
    *v7->_pyr_pxbuf = 0u;
    *v7->_antialiasing_pxbuf = 0u;
    objc_msgSend__setupPipelines(v7, v12, v13);
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = PyrGPU;
  [(PyrGPU *)&v6 dealloc];
}

- (int)allocateResourcesWithMaxInputResolution:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend_releaseResources(self, a2, v3);
  if (self->_countScales >= 1)
  {
    v7 = 0;
    v8 = self->_input_res.width;
    v9 = self->_input_res.height;
    pyr_pxbuf = self->_pyr_pxbuf;
    p_height = &self->_pyrInfoArray[0].real_res.height;
    do
    {
      v12 = *(p_height - 1);
      v13 = *p_height;
      *pyr_pxbuf++ = CreatePixelBuffer();
      ++v7;
      p_height += 6;
    }

    while (v7 < self->_countScales);
  }

  if (*(&self->_pyrInfoArray[1].kernel_filter + 1))
  {
    self->_antialiasing_pxbuf[0] = CreatePixelBuffer();
    self->_antialiasing_pxbuf[1] = CreatePixelBuffer();
  }

  self->_isValid = 1;
  self->_max_input_res.width = width;
  self->_max_input_res.height = height;
  return 0;
}

- (void)releaseResources
{
  pyr_pxbuf = self->_pyr_pxbuf;
  v4 = 32;
  do
  {
    if (*pyr_pxbuf)
    {
      CFRelease(*pyr_pxbuf);
      *pyr_pxbuf = 0;
    }

    v5 = pyr_pxbuf[32];
    pyr_pxbuf[32] = 0;

    v6 = pyr_pxbuf[64];
    pyr_pxbuf[64] = 0;

    ++pyr_pxbuf;
    --v4;
  }

  while (v4);
  antialiasing_pxbuf = self->_antialiasing_pxbuf;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = antialiasing_pxbuf[v4];
    if (v10)
    {
      CFRelease(v10);
      antialiasing_pxbuf[v4] = 0;
    }

    v8 = 0;
    v4 = 1;
  }

  while ((v9 & 1) != 0);
  self->_isValid = 0;
}

- (int)populatePyramidSchemeFromReference:(id)a3 inputResolution:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v8 = a3;
  memcpy(self->_pyrInfoArray, v6 + 144, 0x600uLL);
  memcpy(self->_pyr_real_dims, v8 + 548, sizeof(self->_pyr_real_dims));
  memcpy(self->_pyr_int_dims, v8 + 420, sizeof(self->_pyr_int_dims));
  self->_countScales = v8[873];
  LOBYTE(v6) = *(v8 + 3489);

  self->_useAntialiasingForDownsamplingToFinestResolution = v6;
  self->_max_input_res.width = width;
  self->_max_input_res.height = height;
  self->_input_res.width = width;
  self->_input_res.height = height;
  self->_isValid = 1;
  return 0;
}

- (int)doImagePyramidWithCommandBuffer:(id)a3 in_tex:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_pixelFormat(v7, v8, v9) != 70 && objc_msgSend_pixelFormat(v7, v10, v11) != 80)
  {
    sub_295798FA8();
LABEL_33:
    v21 = 0;
LABEL_34:
    v37 = -12780;
    goto LABEL_25;
  }

  if (!self->_isValid)
  {
    sub_295799000();
    goto LABEL_33;
  }

  v12 = objc_msgSend_width(v7, v10, v11);
  v15 = objc_msgSend_height(v7, v13, v14);
  TextureViewsFromResolution = objc_msgSend__createTextureViewsFromResolution_(self, v16, v17, v12, v15);
  if (TextureViewsFromResolution)
  {
    v37 = TextureViewsFromResolution;
    sub_295799058();
    v21 = 0;
  }

  else
  {
    v21 = objc_msgSend_newTextureViewWithPixelFormat_(v7, v19, 53);
    if (self->_countScales >= 1)
    {
      v22 = 0;
      pyr_u32_alias_tex = self->_pyr_u32_alias_tex;
      v24 = &self->_pyrInfoArray[1].kernel_filter + 1;
      do
      {
        if (v22 || (*v24 & 1) == 0)
        {
          if (v22)
          {
            v26 = *(v24 - 1);
            if (v26 == -1)
            {
              sub_2957990B0();
              goto LABEL_34;
            }

            v27 = self->_pyr_tex[v26];

            v28 = self->_pyr_u32_alias_tex[*(v24 - 1)];
            v21 = v28;
            v7 = v27;
          }

          v29 = *(pyr_u32_alias_tex - 32);
          v31 = *pyr_u32_alias_tex;
          v32 = *(v24 - 7);
          if (v32)
          {
            if (v32 == 2)
            {
              v34 = objc_msgSend__downscale2XBelowWithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v30, v6, v7, v29, *(v24 - 3));
              if (v34)
              {
                v37 = v34;
                sub_295799108();
                goto LABEL_27;
              }
            }

            else
            {
              if (v32 != 1)
              {
                FigDebugAssert3();
                v37 = -12780;
                goto LABEL_27;
              }

              v33 = objc_msgSend_downscale2XEqualWithCommandBuffer_in_u32_alias_tex_out_u32_alias_tex_(self, v30, v6, v21, v31);
              if (v33)
              {
                v37 = v33;
                sub_2957991B8();
LABEL_27:

                goto LABEL_25;
              }
            }
          }

          else
          {
            v35 = objc_msgSend__doRPDDownscale1WithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v30, v6, v7, v29, *(v24 - 3));
            if (v35)
            {
              v37 = v35;
              sub_295799160();
              goto LABEL_27;
            }
          }
        }

        else
        {
          v25 = objc_msgSend__downscaleAntialiasingWithCommandBuffer_in_tex_out_tex_in_ref_res_out_ref_res_(self, v20, v6, v7, self->_pyr_tex[0], self->_input_res.width, self->_input_res.height, self->_pyr_int_dims[0].width, self->_pyr_int_dims[0].height);
          if (v25)
          {
            v37 = v25;
            sub_295799210();
            goto LABEL_25;
          }
        }

        ++v22;
        ++pyr_u32_alias_tex;
        v24 += 12;
      }

      while (v22 < self->_countScales);
    }

    v37 = 0;
  }

LABEL_25:

  return v37;
}

- (id)textureRGBAU8AtScale:(int)a3
{
  if (a3 < 0 || self->_countScales <= a3)
  {
    sub_295799268();
    v3 = 0;
  }

  else
  {
    v3 = self->_pyr_tex[a3];
  }

  return v3;
}

- (id)textureU32AliasAtScale:(int)a3
{
  if (a3 < 0 || self->_countScales <= a3)
  {
    sub_2957992C8();
    v3 = 0;
  }

  else
  {
    v3 = self->_pyr_u32_alias_tex[a3];
  }

  return v3;
}

- (void)_setupPipelines
{
  v4 = objc_opt_new();
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      objc_msgSend_setConstantValue_type_atIndex_(v4, v3, &j, 33, 0);
      objc_msgSend_setConstantValue_type_atIndex_(v4, v5, &i, 33, 1);
      v7 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v6, @"rpdDownscaleImage1", v4);
      v8 = self->_KernelDownscaleImage1[j];
      v9 = v8[i];
      v8[i] = v7;
    }
  }

  v10 = 0;
  computePipelines = self->_computePipelines;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v16 = objc_msgSend_initWithUTF8String_(v14, v15, off_29EDD8EC8[v10]);
    v18 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v17, v16, 0);
    v19 = computePipelines[v10];
    computePipelines[v10] = v18;

    v12 = 0;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
}

- (int)_doRPDDownscale1WithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:
{
  v6 = v5;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v15 = objc_msgSend_width(v11, v13, v14);
  v18 = objc_msgSend_height(v11, v16, v17);
  __asm { FMOV            V0.2S, #1.0 }

  v24 = vdiv_f32(_D0, v6);
  v49 = v24;
  v25 = 2;
  if (v24.f32[0] <= 3.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (v24.f32[1] <= 3.0)
  {
    v25 = 1;
  }

  if (v24.f32[0] <= 1.0)
  {
    v26 = 0;
  }

  v27 = self + 24 * v26;
  if (v24.f32[1] <= 1.0)
  {
    v25 = 0;
  }

  v28 = *&v27[8 * v25 + 40];
  v31 = objc_msgSend_computeCommandEncoder(v12, v29, v30);

  if (v31)
  {
    objc_msgSend_setComputePipelineState_(v31, v32, v28);
    objc_msgSend_setTexture_atIndex_(v31, v33, v10, 0);
    objc_msgSend_setTexture_atIndex_(v31, v34, v11, 1);
    objc_msgSend_setBytes_length_atIndex_(v31, v35, &v49, 8, 0);
    v38 = objc_msgSend_threadExecutionWidth(v28, v36, v37);
    v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(v28, v39, v40);
    v48[0] = (v38 + v15 - 1) / v38;
    v48[1] = (v41 / v38 + v18 - 1) / (v41 / v38);
    v48[2] = 1;
    v47[0] = v38;
    v47[1] = v41 / v38;
    v47[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v42, v48, v47);
    objc_msgSend_endEncoding(v31, v43, v44);
    v45 = 0;
  }

  else
  {
    sub_295799380(v48);
    v45 = v48[0];
  }

  return v45;
}

- (int)_downscale2XBelowWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:
{
  v6 = v5;
  v10 = a4;
  v11 = a5;
  __asm { FMOV            V0.2S, #1.0 }

  v43 = vdiv_f32(_D0, v6);
  v17 = self->_computePipelines[0];
  v20 = objc_msgSend_computeCommandEncoder(a3, v18, v19);
  v22 = v20;
  if (v20)
  {
    objc_msgSend_setComputePipelineState_(v20, v21, v17);
    objc_msgSend_setTexture_atIndex_(v22, v23, v10, 0);
    objc_msgSend_setTexture_atIndex_(v22, v24, v11, 1);
    objc_msgSend_setBytes_length_atIndex_(v22, v25, &v43, 8, 0);
    v28 = objc_msgSend_threadExecutionWidth(v17, v26, v27);
    v31 = objc_msgSend_maxTotalThreadsPerThreadgroup(v17, v29, v30) / v28;
    v42[0] = (v28 + objc_msgSend_width(v11, v32, v33) - 1) / v28;
    v42[1] = (v31 + objc_msgSend_height(v11, v34, v35) - 1) / v31;
    v42[2] = 1;
    v41[0] = v28;
    v41[1] = v31;
    v41[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v22, v36, v42, v41);
    objc_msgSend_endEncoding(v22, v37, v38);
    v39 = 0;
  }

  else
  {
    sub_295799408(v42);
    v39 = v42[0];
  }

  return v39;
}

- (int)downscale2XEqualWithCommandBuffer:(id)a3 in_u32_alias_tex:(id)a4 out_u32_alias_tex:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = self->_computePipelines[1];
  v13 = objc_msgSend_computeCommandEncoder(a3, v11, v12);
  v15 = v13;
  if (v13)
  {
    objc_msgSend_setComputePipelineState_(v13, v14, v10);
    objc_msgSend_setTexture_atIndex_(v15, v16, v8, 0);
    objc_msgSend_setTexture_atIndex_(v15, v17, v9, 1);
    v20 = objc_msgSend_threadExecutionWidth(v10, v18, v19);
    v23 = objc_msgSend_maxTotalThreadsPerThreadgroup(v10, v21, v22) / v20;
    v34[0] = (v20 + objc_msgSend_width(v9, v24, v25) - 1) / v20;
    v34[1] = (v23 + objc_msgSend_height(v9, v26, v27) - 1) / v23;
    v34[2] = 1;
    v33[0] = v20;
    v33[1] = v23;
    v33[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v15, v28, v34, v33);
    objc_msgSend_endEncoding(v15, v29, v30);
    v31 = 0;
  }

  else
  {
    sub_295799490(v34);
    v31 = v34[0];
  }

  return v31;
}

- (int)_downscaleAntialiasingWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 in_ref_res:(CGSize)a6 out_ref_res:(CGSize)a7
{
  width = a7.width;
  height = a7.height;
  v50 = a6.width;
  v51 = a6.height;
  v52 = a3;
  v10 = a4;
  v11 = a5;
  if (objc_msgSend_pixelFormat(v10, v12, v13) != 70 && objc_msgSend_pixelFormat(v10, v14, v15) != 80)
  {
    sub_295799518();
    goto LABEL_20;
  }

  if (!self->_isValid)
  {
    sub_295799570();
LABEL_20:
    v45 = -12780;
    goto LABEL_16;
  }

  v47 = v11;
  v16 = objc_msgSend_pixelFormat(v10, v14, v15);
  v19.f64[0] = width;
  v19.f64[1] = height;
  v20 = vmovn_s64(vcvtq_s64_f64(v19));
  v21 = vadd_s32(v20, v20);
  v19.f64[0] = v50;
  v19.f64[1] = v51;
  v22 = vmovn_s64(vcvtq_s64_f64(v19));
  v23 = vcgt_s32(v22, v21);
  if (v23.i32[0] & v23.i32[1])
  {
    v24 = v16;
    antialiasing_pxbuf = self->_antialiasing_pxbuf;
    v26 = 0xFFFFFFFFLL;
    while (1)
    {
      v27 = objc_msgSend_width(v10, v17, v18);
      v31 = objc_msgSend_height(v10, v28, v29);
      mtlContext = self->_mtlContext;
      if (v26 == 0xFFFFFFFFLL)
      {
        v33 = self->_antialiasing_pxbuf;
        v34 = v10;
      }

      else
      {
        v34 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(mtlContext, v30, antialiasing_pxbuf[v26], v24, 17, 0, v27, v31);

        mtlContext = self->_mtlContext;
        v33 = &antialiasing_pxbuf[v26 ^ 1];
      }

      v35 = vcvtps_s32_f32(vcvts_n_f32_s32(v27, 1uLL));
      v36 = vcvtps_s32_f32(vcvts_n_f32_s32(v31, 1uLL));
      v10 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(mtlContext, v30, *v33, v24, 23, 0, ((v35 & 1) + v35), ((v36 & 1) + v36));
      v38 = objc_msgSend_newTextureViewWithPixelFormat_(v34, v37, 53);
      v40 = objc_msgSend_newTextureViewWithPixelFormat_(v10, v39, 53);
      v42 = objc_msgSend_downscale2XEqualWithCommandBuffer_in_u32_alias_tex_out_u32_alias_tex_(self, v41, v52, v38, v40);
      if (v42)
      {
        break;
      }

      v43 = vcvt_s32_f32(vrndp_f32(vmul_f32(vcvt_f32_s32(v22), 0x3F0000003F000000)));
      v22 = vadd_s32(vand_s8(v43, 0x100000001), v43);

      if (v26 == 0xFFFFFFFFLL)
      {
        v26 = 0;
      }

      else
      {
        v26 ^= 1uLL;
      }

      v44 = vcgt_s32(v22, v21);
      if ((v44.i32[0] & v44.i32[1] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v45 = v42;
    sub_2957995C8(v42, v40, v38, v10);
    v10 = v34;
    v11 = v47;
  }

  else
  {
LABEL_14:
    v11 = v47;
    v45 = objc_msgSend__downscale2XBelowWithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v17, v52, v10, v47, COERCE_DOUBLE(vdiv_f32(vcvt_f32_s32(vadd_s32(v20, -1)), vcvt_f32_s32(vadd_s32(v22, -1)))));
    if (v45)
    {
      sub_295799650();
    }
  }

LABEL_16:

  return v45;
}

@end