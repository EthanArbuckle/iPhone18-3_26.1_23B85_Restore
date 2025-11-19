@interface PyrGPU
- (PyrGPU)initWithMetalContext:(id)a3;
- (id)textureRGBAU8AtScale:(int)a3;
- (id)textureU32AliasAtScale:(int)a3;
- (int)_doRPDDownscale1WithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:;
- (int)_downscale2XBelowWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:;
- (int)_downscale2XEqualWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:;
- (int)_downscaleAntialiasingWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 in_ref_res:(CGSize)a6 out_ref_res:(CGSize)a7;
- (int)allocateResourcesWithMaxInputResolution:(CGSize)a3;
- (int)doImagePyramidWithCommandBuffer:(id)a3 in_tex:(id)a4;
- (int)populatePyramidSchemeFromReference:(id)a3 inputResolution:(CGSize)a4;
- (void)_setupPipelines;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation PyrGPU

- (PyrGPU)initWithMetalContext:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PyrGPU;
  v6 = [(PyrGPU *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlContext, a3);
    v13 = objc_msgSend_commandQueue(v5, v8, v9, v10, v11, v12);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v13;

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
    objc_msgSend__setupPipelines(v7, v15, v16, v17, v18, v19);
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2, v3, v4, v5);
  objc_msgSend_releaseResources(self, v7, v8, v9, v10, v11);
  v12.receiver = self;
  v12.super_class = PyrGPU;
  [(PyrGPU *)&v12 dealloc];
}

- (int)allocateResourcesWithMaxInputResolution:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend_releaseResources(self, a2, v3, v4, v5, v6);
  if (self->_countScales >= 1)
  {
    v10 = 0;
    v11 = self->_input_res.width;
    v12 = self->_input_res.height;
    pyr_pxbuf = self->_pyr_pxbuf;
    p_height = &self->_pyrInfoArray[0].real_res.height;
    do
    {
      v15 = *(p_height - 1);
      v16 = *p_height;
      *pyr_pxbuf++ = CreatePixelBuffer();
      ++v10;
      p_height += 6;
    }

    while (v10 < self->_countScales);
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
  if (objc_msgSend_pixelFormat(v7, v8, v9, v10, v11, v12) != 70 && objc_msgSend_pixelFormat(v7, v13, v14, v15, v16, v17) != 80)
  {
    sub_2957030A8();
    goto LABEL_29;
  }

  if (!self->_isValid)
  {
    sub_295703100();
LABEL_29:
    v47 = -12780;
    goto LABEL_25;
  }

  v18 = objc_msgSend_width(v7, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_height(v7, v19, v20, v21, v22, v23);
  TextureViewsFromResolution = objc_msgSend__createTextureViewsFromResolution_(self, v25, v26, v27, v28, v29, v18, v24);
  if (TextureViewsFromResolution)
  {
    v47 = TextureViewsFromResolution;
    sub_295703158();
  }

  else
  {
    if (self->_countScales >= 1)
    {
      v33 = 0;
      pyr_tex = self->_pyr_tex;
      v35 = &self->_pyrInfoArray[1].kernel_filter + 1;
      do
      {
        if (v33 || (*v35 & 1) == 0)
        {
          if (v33)
          {
            v37 = *(v35 - 1);
            if (v37 == -1)
            {
              sub_2957031B0();
              goto LABEL_29;
            }

            v38 = pyr_tex[v37];

            v7 = v38;
          }

          v41 = pyr_tex[v33];
          v42 = *(v35 - 7);
          if (v42)
          {
            if (v42 == 2)
            {
              v44 = objc_msgSend__downscale2XBelowWithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v39, v6, v7, v41, v40, *(v35 - 3));
              if (v44)
              {
                v47 = v44;
                sub_295703208();
                goto LABEL_27;
              }
            }

            else
            {
              if (v42 != 1)
              {
                FigDebugAssert3();
                v47 = -12780;
                goto LABEL_27;
              }

              v43 = objc_msgSend__downscale2XEqualWithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v39, v6, v7, v41, v40, *(v35 - 3));
              if (v43)
              {
                v47 = v43;
                sub_2957032B8();
LABEL_27:

                goto LABEL_25;
              }
            }
          }

          else
          {
            v45 = objc_msgSend__doRPDDownscale1WithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v39, v6, v7, v41, v40, *(v35 - 3));
            if (v45)
            {
              v47 = v45;
              sub_295703260();
              goto LABEL_27;
            }
          }
        }

        else
        {
          v36 = objc_msgSend__downscaleAntialiasingWithCommandBuffer_in_tex_out_tex_in_ref_res_out_ref_res_(self, v31, v6, v7, self->_pyr_tex[0], v32, self->_input_res.width, self->_input_res.height, self->_pyr_int_dims[0].width, self->_pyr_int_dims[0].height);
          if (v36)
          {
            v47 = v36;
            sub_295703310();
            goto LABEL_25;
          }
        }

        ++v33;
        v35 += 12;
      }

      while (v33 < self->_countScales);
    }

    v47 = 0;
  }

LABEL_25:

  return v47;
}

- (id)textureRGBAU8AtScale:(int)a3
{
  if (a3 < 0 || self->_countScales <= a3)
  {
    sub_295703368();
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
    sub_2957033C8();
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
  v5 = objc_opt_new();
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      objc_msgSend_setConstantValue_type_atIndex_(v5, v3, &j, 33, 0, v4);
      objc_msgSend_setConstantValue_type_atIndex_(v5, v6, &i, 33, 1, v7);
      v11 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v8, @"rpdDownscaleImage1", v5, v9, v10);
      v12 = self->_KernelDownscaleImage1[j];
      v13 = v12[i];
      v12[i] = v11;
    }
  }

  v14 = 0;
  computePipelines = self->_computePipelines;
  v16 = 1;
  do
  {
    v17 = v16;
    v18 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v23 = objc_msgSend_initWithUTF8String_(v18, v19, off_29EDD6B80[v14], v20, v21, v22);
    v27 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v24, v23, 0, v25, v26);
    v28 = computePipelines[v14];
    computePipelines[v14] = v27;

    v16 = 0;
    v14 = 1;
  }

  while ((v17 & 1) != 0);
}

- (int)_doRPDDownscale1WithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:
{
  v6 = v5;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v18 = objc_msgSend_width(v11, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_height(v11, v19, v20, v21, v22, v23);
  __asm { FMOV            V0.2S, #1.0 }

  v30 = vdiv_f32(_D0, v6);
  v77 = v30;
  v31 = 2;
  if (v30.f32[0] <= 3.0)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  if (v30.f32[1] <= 3.0)
  {
    v31 = 1;
  }

  if (v30.f32[0] <= 1.0)
  {
    v32 = 0;
  }

  v33 = self + 24 * v32;
  if (v30.f32[1] <= 1.0)
  {
    v31 = 0;
  }

  v34 = *&v33[8 * v31 + 40];
  v40 = objc_msgSend_computeCommandEncoder(v12, v35, v36, v37, v38, v39);

  if (v40)
  {
    objc_msgSend_setComputePipelineState_(v40, v41, v34, v42, v43, v44);
    objc_msgSend_setTexture_atIndex_(v40, v45, v10, 0, v46, v47);
    objc_msgSend_setTexture_atIndex_(v40, v48, v11, 1, v49, v50);
    objc_msgSend_setBytes_length_atIndex_(v40, v51, &v77, 8, 0, v52);
    v58 = objc_msgSend_threadExecutionWidth(v34, v53, v54, v55, v56, v57);
    v64 = objc_msgSend_maxTotalThreadsPerThreadgroup(v34, v59, v60, v61, v62, v63);
    v76[0] = (v58 + v18 - 1) / v58;
    v76[1] = (v64 / v58 + v24 - 1) / (v64 / v58);
    v76[2] = 1;
    v75[0] = v58;
    v75[1] = v64 / v58;
    v75[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v40, v65, v76, v75, v66, v67);
    objc_msgSend_endEncoding(v40, v68, v69, v70, v71, v72);
    v73 = 0;
  }

  else
  {
    sub_295703480(v76);
    v73 = v76[0];
  }

  return v73;
}

- (int)_downscale2XBelowWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:
{
  v6 = v5;
  v10 = a4;
  v11 = a5;
  __asm { FMOV            V0.2S, #1.0 }

  v71 = vdiv_f32(_D0, v6);
  v17 = self->_computePipelines[0];
  v23 = objc_msgSend_computeCommandEncoder(a3, v18, v19, v20, v21, v22);
  v28 = v23;
  if (v23)
  {
    objc_msgSend_setComputePipelineState_(v23, v24, v17, v25, v26, v27);
    objc_msgSend_setTexture_atIndex_(v28, v29, v10, 0, v30, v31);
    objc_msgSend_setTexture_atIndex_(v28, v32, v11, 1, v33, v34);
    objc_msgSend_setBytes_length_atIndex_(v28, v35, &v71, 8, 0, v36);
    v42 = objc_msgSend_threadExecutionWidth(v17, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_maxTotalThreadsPerThreadgroup(v17, v43, v44, v45, v46, v47) / v42;
    v70[0] = (v42 + objc_msgSend_width(v11, v49, v50, v51, v52, v53) - 1) / v42;
    v70[1] = (v48 + objc_msgSend_height(v11, v54, v55, v56, v57, v58) - 1) / v48;
    v70[2] = 1;
    v69[0] = v42;
    v69[1] = v48;
    v69[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v59, v70, v69, v60, v61);
    objc_msgSend_endEncoding(v28, v62, v63, v64, v65, v66);
    v67 = 0;
  }

  else
  {
    sub_295703508(v70);
    v67 = v70[0];
  }

  return v67;
}

- (int)_downscale2XEqualWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 scaling_factor:
{
  v6 = v5;
  v10 = a4;
  v11 = a5;
  __asm { FMOV            V0.2S, #1.0 }

  v71 = vdiv_f32(_D0, v6);
  v17 = self->_computePipelines[1];
  v23 = objc_msgSend_computeCommandEncoder(a3, v18, v19, v20, v21, v22);
  v28 = v23;
  if (v23)
  {
    objc_msgSend_setComputePipelineState_(v23, v24, v17, v25, v26, v27);
    objc_msgSend_setTexture_atIndex_(v28, v29, v10, 0, v30, v31);
    objc_msgSend_setTexture_atIndex_(v28, v32, v11, 1, v33, v34);
    objc_msgSend_setBytes_length_atIndex_(v28, v35, &v71, 8, 0, v36);
    v42 = objc_msgSend_threadExecutionWidth(v17, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_maxTotalThreadsPerThreadgroup(v17, v43, v44, v45, v46, v47) / v42;
    v70[0] = (v42 + objc_msgSend_width(v11, v49, v50, v51, v52, v53) - 1) / v42;
    v70[1] = (v48 + objc_msgSend_height(v11, v54, v55, v56, v57, v58) - 1) / v48;
    v70[2] = 1;
    v69[0] = v42;
    v69[1] = v48;
    v69[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v59, v70, v69, v60, v61);
    objc_msgSend_endEncoding(v28, v62, v63, v64, v65, v66);
    v67 = 0;
  }

  else
  {
    sub_295703590(v70);
    v67 = v70[0];
  }

  return v67;
}

- (int)_downscaleAntialiasingWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5 in_ref_res:(CGSize)a6 out_ref_res:(CGSize)a7
{
  width = a7.width;
  height = a7.height;
  v62 = a6.width;
  v63 = a6.height;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_msgSend_pixelFormat(v11, v13, v14, v15, v16, v17) != 70 && objc_msgSend_pixelFormat(v11, v18, v19, v20, v21, v22) != 80)
  {
    sub_295703618();
    goto LABEL_22;
  }

  if (!self->_isValid)
  {
    sub_295703670();
LABEL_22:
    v57 = -12780;
    goto LABEL_18;
  }

  v59 = v12;
  v23 = objc_msgSend_pixelFormat(v11, v18, v19, v20, v21, v22);
  v29.f64[0] = width;
  v29.f64[1] = height;
  v30 = vmovn_s64(vcvtq_s64_f64(v29));
  v31 = vadd_s32(v30, v30);
  v29.f64[0] = v62;
  v29.f64[1] = v63;
  v32 = vmovn_s64(vcvtq_s64_f64(v29));
  v33 = vcgt_s32(v32, v31);
  if (v33.i32[0] & v33.i32[1])
  {
    v34 = v23;
    antialiasing_pxbuf = self->_antialiasing_pxbuf;
    v36 = 0xFFFFFFFFLL;
    while (1)
    {
      v37 = objc_msgSend_width(v11, v24, v25, v26, v27, v28);
      v44 = objc_msgSend_height(v11, v38, v39, v40, v41, v42);
      mtlContext = self->_mtlContext;
      if (v36 == 0xFFFFFFFFLL)
      {
        v46 = self->_antialiasing_pxbuf;
        v47 = v11;
      }

      else
      {
        v47 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(mtlContext, v43, antialiasing_pxbuf[v36], v34, 17, 0, v37, v44);

        mtlContext = self->_mtlContext;
        v46 = &antialiasing_pxbuf[v36 ^ 1];
      }

      v48 = vcvt_s32_f32(vrndp_f32(vmul_f32(vcvt_f32_s32(v32), 0x3F0000003F000000)));
      v49 = vcvtps_s32_f32(vcvts_n_f32_s32(v37, 1uLL));
      v50 = vadd_s32(vand_s8(v48, 0x100000001), v48);
      v51 = vcvtps_s32_f32(vcvts_n_f32_s32(v44, 1uLL));
      v11 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(mtlContext, v43, *v46, v34, 23, 0, ((v49 & 1) + v49), ((v51 & 1) + v51));
      v52 = vcvt_f32_s32(vadd_s32(v50, -1));
      v55 = objc_msgSend__downscale2XEqualWithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v53, v10, v47, v11, v54, COERCE_DOUBLE(vdiv_f32(v52, vcvt_f32_s32(vadd_s32(v32, -1)))));
      if (v55)
      {
        break;
      }

      if (v36 == 0xFFFFFFFFLL)
      {
        v36 = 0;
      }

      else
      {
        v36 ^= 1uLL;
      }

      v56 = vcgt_s32(v50, v31);
      v32 = v50;
      if ((v56.i32[0] & v56.i32[1] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v57 = v55;
    sub_2957036C8(v55, v11);
    v11 = v47;
    v12 = v59;
  }

  else
  {
    v52 = vcvt_f32_s32(vadd_s32(v32, -1));
LABEL_16:
    v12 = v59;
    v57 = objc_msgSend__downscale2XBelowWithCommandBuffer_in_tex_out_tex_scaling_factor_(self, v24, v10, v11, v59, v28, COERCE_DOUBLE(vdiv_f32(vcvt_f32_s32(vadd_s32(v30, -1)), v52)));
    if (v57)
    {
      sub_295703738();
    }
  }

LABEL_18:

  return v57;
}

@end