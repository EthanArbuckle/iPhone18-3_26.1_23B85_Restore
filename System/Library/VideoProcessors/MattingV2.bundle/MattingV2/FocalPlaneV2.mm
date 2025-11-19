@interface FocalPlaneV2
- (FocalPlaneV2)initWithMetalContext:(id)a3;
- (int)allocateResources;
- (int)compileShaders;
- (int)encodeDisparityRefinementPreprocessingOn:(id)a3 alphaTexture:(id)a4 inputDisparityTexture:(id)a5 outputDisparityTexture:(id)a6 configuration:(id *)a7;
- (int)encodeFocalPlaneCalcOn:(id)a3 disparityTexture:(id)a4;
- (int)encodeMinMaxOn:(id)a3 inputTexture:(id)a4;
- (void)dealloc;
- (void)releaseResources;
- (void)setConfig:(id *)a3;
@end

@implementation FocalPlaneV2

- (FocalPlaneV2)initWithMetalContext:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FocalPlaneV2;
  v6 = [(FocalPlaneV2 *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    v10 = objc_msgSend_device(v5, v8, v9);
    device = v7->_device;
    v7->_device = v10;

    v12 = v7;
  }

  return v7;
}

- (int)allocateResources
{
  if (objc_msgSend_compileShaders(self, a2, v2))
  {
    sub_2957E0F8C();
  }

  else
  {
    v5 = objc_msgSend_newBufferWithLength_options_(self->_device, v4, 8, 32);
    minMaxAtomic_buf = self->_minMaxAtomic_buf;
    self->_minMaxAtomic_buf = v5;

    if (self->_minMaxAtomic_buf)
    {
      v8 = objc_msgSend_newBufferWithLength_options_(self->_device, v7, 16, 32);
      minMaxResult_buf = self->_minMaxResult_buf;
      self->_minMaxResult_buf = v8;

      if (self->_minMaxResult_buf)
      {
        v11 = objc_msgSend_newBufferWithLength_options_(self->_device, v10, 4, 0);
        zeroShiftResult_buf = self->_zeroShiftResult_buf;
        self->_zeroShiftResult_buf = v11;

        if (self->_zeroShiftResult_buf)
        {
          return 0;
        }

        sub_2957E0FEC();
      }

      else
      {
        sub_2957E104C();
      }
    }

    else
    {
      sub_2957E10AC();
    }
  }

  objc_msgSend_releaseResources(self, v14, v15);
  return -12786;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2);
  v4.receiver = self;
  v4.super_class = FocalPlaneV2;
  [(FocalPlaneV2 *)&v4 dealloc];
}

- (int)compileShaders
{
  v3 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, a2, @"disparityRefinementPreprocessing", 0);
  disparityRefinementPreprocessingKernel = self->_disparityRefinementPreprocessingKernel;
  self->_disparityRefinementPreprocessingKernel = v3;

  if (self->_disparityRefinementPreprocessingKernel)
  {
    v6 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v5, @"fpr_slm_shiftmap_calcminmax0", 0);
    minMax0_kernel = self->_minMax0_kernel;
    self->_minMax0_kernel = v6;

    if (self->_minMax0_kernel)
    {
      v9 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v8, @"fpr_slm_shiftmap_calcminmax1", 0);
      minMax1_kernel = self->_minMax1_kernel;
      self->_minMax1_kernel = v9;

      if (self->_minMax1_kernel)
      {
        v12 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v11, @"fpr_slm_shiftmap_calcminmax2", 0);
        minMax2_kernel = self->_minMax2_kernel;
        self->_minMax2_kernel = v12;

        if (self->_minMax2_kernel)
        {
          v15 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v14, @"fpr_slm_calc", 0);
          calc_kernel = self->_calc_kernel;
          self->_calc_kernel = v15;

          if (self->_calc_kernel)
          {
            return 0;
          }

          sub_2957E110C();
        }

        else
        {
          sub_2957E116C();
        }
      }

      else
      {
        sub_2957E11CC();
      }
    }

    else
    {
      sub_2957E122C();
    }
  }

  else
  {
    sub_2957E128C();
  }

  return -12786;
}

- (void)releaseResources
{
  disparityRefinementPreprocessingKernel = self->_disparityRefinementPreprocessingKernel;
  self->_disparityRefinementPreprocessingKernel = 0;

  minMax0_kernel = self->_minMax0_kernel;
  self->_minMax0_kernel = 0;

  minMax1_kernel = self->_minMax1_kernel;
  self->_minMax1_kernel = 0;

  minMax2_kernel = self->_minMax2_kernel;
  self->_minMax2_kernel = 0;

  calc_kernel = self->_calc_kernel;
  self->_calc_kernel = 0;

  minMaxAtomic_buf = self->_minMaxAtomic_buf;
  self->_minMaxAtomic_buf = 0;

  minMaxResult_buf = self->_minMaxResult_buf;
  self->_minMaxResult_buf = 0;

  zeroShiftResult_buf = self->_zeroShiftResult_buf;
  self->_zeroShiftResult_buf = 0;
}

- (int)encodeDisparityRefinementPreprocessingOn:(id)a3 alphaTexture:(id)a4 inputDisparityTexture:(id)a5 outputDisparityTexture:(id)a6 configuration:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (objc_msgSend_pixelFormat(v14, v16, v17) != 25)
  {
    sub_2957E12EC(v57);
LABEL_13:
    v54 = v57[0];
    goto LABEL_7;
  }

  v20 = objc_msgSend_width(v14, v18, v19);
  if (v20 != objc_msgSend_width(v15, v21, v22))
  {
    sub_2957E1378(v57);
    goto LABEL_13;
  }

  v25 = objc_msgSend_height(v14, v23, v24);
  if (v25 != objc_msgSend_height(v15, v26, v27))
  {
    sub_2957E1404(v57);
    goto LABEL_13;
  }

  self->_config.zeroShiftPercentile = a7->var0;
  v29 = objc_msgSend_encodeFocalPlaneCalcOn_disparityTexture_(self, v28, v12, v14);
  if (v29)
  {
    v54 = v29;
    sub_2957E1490();
    goto LABEL_7;
  }

  v32 = objc_msgSend_computeCommandEncoder(v12, v30, v31);
  if (!v32)
  {
    sub_2957E14F0(v57);
    goto LABEL_13;
  }

  v34 = v32;
  objc_msgSend_setComputePipelineState_(v32, v33, self->_disparityRefinementPreprocessingKernel);
  objc_msgSend_setTexture_atIndex_(v34, v35, v13, 0);
  objc_msgSend_setTexture_atIndex_(v34, v36, v14, 1);
  objc_msgSend_setTexture_atIndex_(v34, v37, v15, 2);
  objc_msgSend_setBytes_length_atIndex_(v34, v38, a7, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v34, v39, &self->_config, 20, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v40, self->_zeroShiftResult_buf, 0, 2);
  v43 = objc_msgSend_threadExecutionWidth(self->_disparityRefinementPreprocessingKernel, v41, v42);
  v46 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_disparityRefinementPreprocessingKernel, v44, v45) / v43;
  v57[0] = objc_msgSend_width(v15, v47, v48);
  v57[1] = objc_msgSend_height(v15, v49, v50);
  v57[2] = 1;
  v56[0] = v43;
  v56[1] = v46;
  v56[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v34, v51, v57, v56);
  objc_msgSend_endEncoding(v34, v52, v53);

  v54 = 0;
LABEL_7:

  return v54;
}

- (int)encodeMinMaxOn:(id)a3 inputTexture:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_computeCommandEncoder(a3, v7, v8);
  v11 = v9;
  if (v9)
  {
    objc_msgSend_setComputePipelineState_(v9, v10, self->_minMax0_kernel);
    objc_msgSend_setBuffer_offset_atIndex_(v11, v12, self->_minMaxAtomic_buf, 0, 0);
    v38 = vdupq_n_s64(1uLL);
    v39 = v38;
    v41 = v38;
    v42 = 1;
    v40 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v11, v13, &v41, &v39);
    objc_msgSend_setComputePipelineState_(v11, v14, self->_minMax1_kernel);
    objc_msgSend_setTexture_atIndex_(v11, v15, v6, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v11, v16, self->_minMaxAtomic_buf, 0, 0);
    v19 = objc_msgSend_threadExecutionWidth(self->_minMax1_kernel, v17, v18);
    v22 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_minMax1_kernel, v20, v21) / v19;
    v25 = objc_msgSend_width(v6, v23, v24);
    v28 = objc_msgSend_height(v6, v26, v27);
    v41.i64[0] = v25;
    v41.i64[1] = v28;
    v42 = 1;
    v39.i64[0] = v19;
    v39.i64[1] = v22;
    v40 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v11, v29, &v41, &v39);
    objc_msgSend_setComputePipelineState_(v11, v30, self->_minMax2_kernel);
    objc_msgSend_setBuffer_offset_atIndex_(v11, v31, self->_minMaxAtomic_buf, 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v11, v32, self->_minMaxResult_buf, 0, 1);
    v41 = v38;
    v42 = 1;
    v39 = v38;
    v40 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v11, v33, &v41, &v39);
    objc_msgSend_endEncoding(v11, v34, v35);
    v36 = 0;
  }

  else
  {
    sub_2957E1578(&v41);
    v36 = v41.i32[0];
  }

  return v36;
}

- (int)encodeFocalPlaneCalcOn:(id)a3 disparityTexture:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_encodeMinMaxOn_inputTexture_(self, v8, v6, v7);
  if (v9)
  {
    v23 = v9;
    sub_2957E1600();
  }

  else
  {
    v12 = objc_msgSend_computeCommandEncoder(v6, v10, v11);
    if (v12)
    {
      v14 = v12;
      objc_msgSend_setComputePipelineState_(v12, v13, self->_calc_kernel);
      objc_msgSend_setBytes_length_atIndex_(v14, v15, &self->_config, 20, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v14, v16, self->_minMaxResult_buf, 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v14, v17, self->_zeroShiftResult_buf, 0, 2);
      objc_msgSend_setTexture_atIndex_(v14, v18, v7, 0);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v14, v19, 1024, 0);
      v27 = vdupq_n_s64(1uLL);
      v28 = 1;
      v25 = xmmword_2957E7640;
      v26 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v14, v20, &v27, &v25);
      objc_msgSend_endEncoding(v14, v21, v22);

      v23 = 0;
    }

    else
    {
      sub_2957E1658(&v27);
      v23 = v27.i32[0];
    }
  }

  return v23;
}

- (void)setConfig:(id *)a3
{
  v3 = *&a3->var0;
  self->_config.zeroShiftPercentile = a3->var4;
  *&self->_config.left = v3;
}

@end