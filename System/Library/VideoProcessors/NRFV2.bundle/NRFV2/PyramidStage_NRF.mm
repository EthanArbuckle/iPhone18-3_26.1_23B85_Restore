@interface PyramidStage_NRF
+ (int)prewarmShaders:(id)shaders;
- (PyramidStage_NRF)initWithOptions:(id)options context:(id)context;
- (int)runM2MWithFilters:(PyramidFilterParams *)filters;
- (int)runWithFilters:(PyramidFilterParams *)filters;
- (int)setResourcesWithPyramid:(id)pyramid;
- (void)setColorSpace:(int)space withParams:(const ColorSpaceConversionParameters *)params;
@end

@implementation PyramidStage_NRF

- (PyramidStage_NRF)initWithOptions:(id)options context:(id)context
{
  contextCopy = context;
  v7 = loadDefaultsWritesWithPrefix();
  v91.receiver = self;
  v91.super_class = PyramidStage_NRF;
  v10 = [(PyramidStage_NRF *)&v91 init];
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"PyrGen.UseHW", v9);
  isEqual = objc_msgSend_isEqual_(v11, v12, &unk_2A1CC4060, v13);

  if (isEqual)
  {
    v17 = 0;
    v10->_conf.use_m2m = 0;
  }

  else
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v7, v15, @"PyrGen.UseHW", v16);
    v10->_conf.use_m2m = objc_msgSend_intValue(v18, v19, v20, v21) == 1;

    v17 = 1;
  }

  v10->_forceHW = v17;
  v24 = objc_msgSend_objectForKeyedSubscript_(v7, v15, @"PyrGen.DoSync", v16);
  if (v24)
  {
    v25 = objc_msgSend_objectForKeyedSubscript_(v7, v22, @"PyrGen.DoSync", v23);
    v10->_conf.do_sync_at_end = objc_msgSend_BOOLValue(v25, v26, v27, v28);
  }

  else
  {
    v10->_conf.do_sync_at_end = 1;
  }

  v33 = objc_msgSend_objectForKeyedSubscript_(v7, v29, @"PyrGen.CompensateGpuShift", v30);
  if (v33)
  {
    v34 = objc_msgSend_objectForKeyedSubscript_(v7, v31, @"PyrGen.CompensateGpuShift", v32);
    v10->_conf.compensate_gpu_shift = objc_msgSend_BOOLValue(v34, v35, v36, v37);
  }

  else
  {
    v10->_conf.compensate_gpu_shift = 0;
  }

  v42 = objc_msgSend_objectForKeyedSubscript_(v7, v38, @"PyrGen.SupportFP16", v39);
  if (v42)
  {
    v43 = objc_msgSend_objectForKeyedSubscript_(v7, v40, @"PyrGen.SupportFP16", v41);
    v10->_conf.supportFP16 = objc_msgSend_BOOLValue(v43, v44, v45, v46);
  }

  else
  {
    v10->_conf.supportFP16 = 1;
  }

  objc_storeStrong(&v10->_metal, context);
  v47 = objc_alloc_init(MEMORY[0x29EDC0A18]);
  m2mController = v10->_m2mController;
  v10->_m2mController = v47;

  if (v10->_m2mController)
  {
    objc_msgSend_prewarmShaders_(PyramidStage_NRF, v49, v10->_metal, v50);
    v51 = 0;
    *&v10[1]._uniforms_Y[5] = xmmword_2958D59C0;
    *&v10[1]._uniforms_Y[7] = xmmword_2958D59D0;
    v10[1]._uniforms_Y[9] = 0x3F80000000000000;
    v92[0] = xmmword_2958D59E0;
    v92[1] = xmmword_2958D59F0;
    v92[2] = xmmword_2958D5A00;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v10->_band0ColorSpace = 0;
    do
    {
      *(&v93 + v51 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(v92[v51])), xmmword_2958D5A20, *&v92[v51], 1), xmmword_2958D5A30, v92[v51], 2);
      ++v51;
    }

    while (v51 != 3);
    v96.columns[0] = v93;
    v96.columns[1] = v94;
    v96.columns[2] = v95;
    *&v10->_colorSpaceConversionParameters.outputToLinearYCbCr = v93;
    *&v10[1]._conf.use_m2m = v96.columns[1];
    *&v10[1]._m2mController = v96.columns[2];
    v96.columns[3] = xmmword_2958D5A40;
    v97 = __invert_f4(v96);
    *&v10->_colorSpaceConversionParameters.transferFunctionFwd.linearScale = v97.columns[0];
    *&v10->_colorSpaceConversionParameters.transferFunctionFwd.nonLinearPower = v97.columns[1];
    *&v10->_colorSpaceConversionParameters.transferFunctionInv.nonLinearBias = v97.columns[2];
    *&v10[1]._uniforms_Y[10] = 1.0 / *(&v10[1]._uniforms_Y[10] + 1);
    v52 = MEMORY[0x29EDCA928];
    v97.columns[1] = *(MEMORY[0x29EDCA928] + 16);
    *&v10[1]._uniformsHeap = *MEMORY[0x29EDCA928];
    *&v10[1]._uniforms_Y[1] = v97.columns[1];
    *&v10[1]._uniforms_Y[3] = *(v52 + 32);
    HIDWORD(v10[1]._uniforms_Y[10]) = 1065353216;
    LODWORD(v10[1]._uniforms_Y[11]) = 65793;
    v53 = objc_opt_new();
    v56 = v53;
    if (v53)
    {
      objc_msgSend_setStorageMode_(v53, v54, 0, v55);
      objc_msgSend_setHazardTrackingMode_(v56, v57, 2, v58);
      objc_msgSend_setSize_(v56, v59, 655360, v60);
      v64 = objc_msgSend_device(v10->_metal, v61, v62, v63);
      v67 = objc_msgSend_newHeapWithDescriptor_(v64, v65, v56, v66);
      uniformsHeap = v10->_uniformsHeap;
      v10->_uniformsHeap = v67;

      if (v10->_uniformsHeap)
      {
        uniforms_UV = v10->_uniforms_UV;
        v73 = 20;
        while (1)
        {
          v74 = v10->_uniformsHeap;
          v75 = objc_msgSend_resourceOptions(v74, v69, v70, v71);
          v77 = objc_msgSend_newBufferWithLength_options_(v74, v76, 16, v75);
          v78 = *(uniforms_UV - 20);
          *(uniforms_UV - 20) = v77;

          if (!*(uniforms_UV - 20))
          {
            sub_295898D44(&v93);
            goto LABEL_28;
          }

          v82 = v10->_uniformsHeap;
          v83 = objc_msgSend_resourceOptions(v82, v79, v80, v81);
          v85 = objc_msgSend_newBufferWithLength_options_(v82, v84, 16, v83);
          v86 = *uniforms_UV;
          *uniforms_UV = v85;

          if (!*uniforms_UV)
          {
            break;
          }

          ++uniforms_UV;
          if (!--v73)
          {
            v87 = 0;
            goto LABEL_24;
          }
        }

        sub_295898C98(&v93);
      }

      else
      {
        sub_295898DF0(&v93);
      }
    }

    else
    {
      sub_295898E9C(&v93);
    }

LABEL_28:
    v87 = v93.i32[0];
LABEL_24:

    if (v87)
    {
      goto LABEL_25;
    }

LABEL_30:
    v88 = v10;
    goto LABEL_31;
  }

  sub_295898F48(&v93);
  if (!v93.i32[0])
  {
    goto LABEL_30;
  }

LABEL_25:
  v88 = 0;
LABEL_31:
  v89 = v88;

  return v89;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  while (2)
  {
    v8 = 0;
    v9 = v7;
    v10 = 1;
    do
    {
      v11 = v6;
      v12 = v10;
      v6 = objc_msgSend_compileShader_lumaWrite_chromaWrite_(PyramidStageShared_NRF, v3, shadersCopy, v5 & 1, v8 & 1);

      if (!v6)
      {
        goto LABEL_11;
      }

      v10 = 0;
      v8 = 1;
    }

    while ((v12 & 1) != 0);
    v7 = 0;
    v5 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

  if (objc_msgSend_isRec709DownsampleSupported(PyramidStageShared_NRF, v3, v13, v14))
  {
    v16 = 0;
    while (1)
    {
      v17 = objc_msgSend_compileShader_kernelType_(PyramidStageShared_NRF, v15, shadersCopy, v16);

      if (!v17)
      {
        break;
      }

      v16 = (v16 + 1);
      v6 = v17;
      if (v16 == 12)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    sub_295898FF4();
    v17 = 0;
    goto LABEL_13;
  }

  v17 = v6;
LABEL_13:

  return 0;
}

- (int)setResourcesWithPyramid:(id)pyramid
{
  pyramidCopy = pyramid;
  objc_storeStrong(&self->_pyr, pyramid);
  pyr = self->_pyr;
  levels = pyr->levels;
  if (levels >= 20)
  {
    sub_2958990A8(&v16);
    v8 = v16;
  }

  else if (self->_forceHW)
  {
    v8 = 0;
  }

  else
  {
    if (levels < 1)
    {
      v11 = 1;
    }

    else
    {
      v9 = 0;
      v10 = pyramidCopy + 664;
      v11 = 1;
      do
      {
        if (v11 && (v10[v9] & 1) == 0 && (v12 = *&v10[8 * v9 - 648]) != 0 && (PixelFormatType = CVPixelBufferGetPixelFormatType(v12), pyr = self->_pyr, PixelFormatType == 875704422) && (WidthOfPlane = CVPixelBufferGetWidthOfPlane(pyr->pixelBuffer[v9], 0), pyr = self->_pyr, (WidthOfPlane & 1) == 0))
        {
          v11 = (CVPixelBufferGetHeightOfPlane(pyr->pixelBuffer[v9], 0) & 1) == 0;
          pyr = self->_pyr;
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v9 < pyr->levels);
    }

    v8 = 0;
    self->_conf.use_m2m = v11;
  }

  return v8;
}

- (int)runM2MWithFilters:(PyramidFilterParams *)filters
{
  v4 = 0;
  for (i = &filters->luma_param; ; i += 3)
  {
    pyr = self->_pyr;
    if (v4 >= pyr->levels - 1)
    {
      return 0;
    }

    v7 = &pyr->super.isa + v4;
    if (!v7[2])
    {
      sub_295899404(&v19);
      return v19;
    }

    v8 = v7[3];
    if (!v8)
    {
      sub_295899358(&v19);
      return v19;
    }

    if (CVPixelBufferGetPixelFormatType(v8) != 875704422)
    {
      sub_295899154(&v19);
      return v19;
    }

    v12 = *(i - 1);
    v13 = v12 == 2 ? 2 : v12 == 1;
    *&v10 = *i;
    *&v11 = i[1];
    if (objc_msgSend_setCustomFilter_alignment_src_dst_luma_param_chroma_param_(self->_m2mController, v9, v13, self->_conf.compensate_gpu_shift, self->_pyr->pixelBuffer[v4], self->_pyr->pixelBuffer[v4 + 1], v10, v11))
    {
      break;
    }

    v15 = self->_pyr;
    v16 = v4 == v15->levels - 2 && self->_conf.do_sync_at_end;
    v17 = objc_msgSend_downsample_dst_sync_m2m_(self->_m2mController, v14, v15->pixelBuffer[v4], v15->pixelBuffer[v4 + 1], v16);
    ++v4;
    if (v17)
    {
      sub_2958992AC(&v19);
      return v19;
    }
  }

  sub_295899200(&v19);
  return v19;
}

- (int)runWithFilters:(PyramidFilterParams *)filters
{
  pyr = self->_pyr;
  if (pyr)
  {
    if (pyr->levels >= 2)
    {
      v7 = 0;
      do
      {
        v8 = &pyr->super.isa + v7++;
        CVBufferPropagateAttachments(v8[2], v8[3]);
        pyr = self->_pyr;
      }

      while (v7 < pyr->levels - 1);
    }

    if (self->_conf.use_m2m)
    {
      result = objc_msgSend_runM2MWithFilters_(self, a2, filters, v3);
      if (result)
      {
        sub_295899B68(&v11);
        return v11;
      }
    }

    else
    {
      result = objc_msgSend_runGPUWithFilters_doShift_(self, a2, filters, self->_conf.compensate_gpu_shift);
      if (result)
      {
        sub_295899ABC(&v10);
        return v10;
      }
    }
  }

  else
  {
    sub_295899C14(&v12);
    return v12;
  }

  return result;
}

- (void)setColorSpace:(int)space withParams:(const ColorSpaceConversionParameters *)params
{
  self->_band0ColorSpace = space;
  if (params)
  {
    *&self->_colorSpaceConversionParameters.transferFunctionFwd.linearScale = *&params->transferFunctionFwd.linearScale;
    v4 = *&params->transferFunctionFwd.nonLinearPower;
    v5 = *&params->transferFunctionInv.nonLinearBias;
    v6 = *&params[1].transferFunctionFwd.nonLinearBias;
    *&self->_colorSpaceConversionParameters.outputToLinearYCbCr = *&params->outputToLinearYCbCr;
    *&self[1]._conf.use_m2m = v6;
    *&self->_colorSpaceConversionParameters.transferFunctionFwd.nonLinearPower = v4;
    *&self->_colorSpaceConversionParameters.transferFunctionInv.nonLinearBias = v5;
    v7 = *&params[1].transferFunctionInv.nonLinearScale;
    v8 = *&params[1].finalScale;
    v9 = *&params[2].transferFunctionInv.linearThreshold;
    *&self[1]._uniforms_Y[1] = *&params[2].transferFunctionFwd.nonLinearScale;
    *&self[1]._uniforms_Y[3] = v9;
    *&self[1]._m2mController = v7;
    *&self[1]._uniformsHeap = v8;
    v10 = *&params[2].finalScaleFwd;
    v11 = *&params[3].transferFunctionFwd.linearThreshold;
    v12 = *&params[3].transferFunctionInv.nonLinearPower;
    *&self[1]._uniforms_Y[9] = *&params[3].transferFunctionInv.linearScale;
    *&self[1]._uniforms_Y[11] = v12;
    *&self[1]._uniforms_Y[5] = v10;
    *&self[1]._uniforms_Y[7] = v11;
  }
}

@end