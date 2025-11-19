@interface HBFGPU
- (HBFGPU)initWithMetalContext:(id)a3;
- (int)_doBuildErrorMapWithCommandBuffer:(id)a3 in_res_tex:(id)a4 out_tex:(id)a5;
- (int)_doComputeResidualErrorOffsetWithCommandBuffer:(id)a3 in_res_tex:(id)a4;
- (int)_doComputeResidualErrorWithCommandBuffer:(id)a3 in_I0_u32_tex:(id)a4 in_I1_tex:(id)a5 in_uv_tex:(id)a6 out_tex:(id)a7 disparity_axis:;
- (int)doFilterWithCommandBuffer:(id)a3 in_I_tex:(id)a4 in_J_u32_tex:(id)a5 in_W_tex:(id)a6 out_tex:(id)a7 disparity_scaling_factor:(float)a8;
- (void)_setupPipelines;
- (void)dealloc;
- (void)releaseResouces;
- (void)waitUntilCompleted;
@end

@implementation HBFGPU

- (HBFGPU)initWithMetalContext:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = HBFGPU;
  v6 = [(HBFGPU *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlContext, a3);
    v10 = objc_msgSend_commandQueue(v5, v8, v9);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v10;

    v14 = objc_msgSend_device(v7->_mtlContext, v12, v13);
    v16 = objc_msgSend_newBufferWithLength_options_(v14, v15, 4, 0);
    res_off_buf = v7->_res_off_buf;
    v7->_res_off_buf = v16;

    objc_msgSend__setupPipelines(v7, v18, v19);
  }

  return v7;
}

- (void)releaseResouces
{
  res_off_buf = self->_res_off_buf;
  self->_res_off_buf = 0;
  MEMORY[0x2A1C71028]();
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResouces(self, v4, v5);
  v6.receiver = self;
  v6.super_class = HBFGPU;
  [(HBFGPU *)&v6 dealloc];
}

- (void)waitUntilCompleted
{
  v8 = objc_msgSend_commandBuffer(self->_commandQueue, a2, v2);
  objc_msgSend_setLabel_(v8, v3, @"HBF:waitUntilCompleted");
  objc_msgSend_commit(v8, v4, v5);
  objc_msgSend_waitUntilCompleted(v8, v6, v7);
}

- (int)doFilterWithCommandBuffer:(id)a3 in_I_tex:(id)a4 in_J_u32_tex:(id)a5 in_W_tex:(id)a6 out_tex:(id)a7 disparity_scaling_factor:(float)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  params = self->_params;
  v19 = a3;
  objc_msgSend_sigma_0(params, v20, v21);
  v77 = v22;
  objc_msgSend_sigma_0(self->_params, v23, v24);
  v79 = v25;
  objc_msgSend_sigma_1(self->_params, v26, v27);
  v29 = vadd_f32(__PAIR64__(v28, v77), __PAIR64__(v28, v77));
  objc_msgSend_sigma_1(self->_params, v30, v31);
  v80 = vmul_f32(v29, __PAIR64__(v32, v79));
  objc_msgSend_sigma_2(self->_params, v33, v34);
  v29.f32[0] = v35 + v35;
  objc_msgSend_sigma_2(self->_params, v36, v37);
  v78 = v29.f32[0] * *&v40;
  if (v16)
  {
    objc_msgSend_sigma_w(self->_params, v38, v39);
    v43 = v42 + v42;
    objc_msgSend_sigma_w(self->_params, v44, v45);
    *&v40 = v43 * *&v40;
  }

  else
  {
    LODWORD(v40) = 1.0;
  }

  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  *(&v83 + 2) = a8;
  LODWORD(v84) = 0;
  DWORD2(v84) = objc_msgSend_radius(self->_params, v38, v39, v40, v41);
  HIDWORD(v84) = objc_msgSend_scales(self->_params, v46, v47);
  LODWORD(v85) = objc_msgSend_padding(self->_params, v48, v49);
  *v50.f32 = v80;
  v50.i64[1] = __PAIR64__(v76, LODWORD(v78));
  v86 = vdivq_f32(xmmword_2957A3600, v50);
  v53 = objc_msgSend_computeCommandEncoder(v19, v51, v52);

  v55 = self->_computePipelines[4];
  if (v53)
  {
    objc_msgSend_setComputePipelineState_(v53, v54, v55);
    objc_msgSend_setTexture_atIndex_(v53, v56, v14, 0);
    objc_msgSend_setTexture_atIndex_(v53, v57, v15, 1);
    objc_msgSend_setTexture_atIndex_(v53, v58, v16, 2);
    objc_msgSend_setTexture_atIndex_(v53, v59, v17, 3);
    objc_msgSend_setBytes_length_atIndex_(v53, v60, &v83, 64, 0);
    v63 = objc_msgSend_threadExecutionWidth(v55, v61, v62);
    v66 = objc_msgSend_maxTotalThreadsPerThreadgroup(v55, v64, v65) / v63;
    v82[0] = (v63 + objc_msgSend_width(v17, v67, v68) / 2 - 1) / v63;
    v82[1] = (v66 + objc_msgSend_height(v17, v69, v70) / 2 - 1) / v66;
    v82[2] = 1;
    v81[0] = v63;
    v81[1] = v66;
    v81[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v53, v71, v82, v81);
    objc_msgSend_endEncoding(v53, v72, v73);
    v74 = 0;
  }

  else
  {
    sub_2957A14C4(v82);
    v74 = v82[0];
  }

  return v74;
}

- (void)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  do
  {
    v5 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v7 = objc_msgSend_initWithUTF8String_(v5, v6, off_29EDD8F80[v3]);
    v9 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v8, v7, 0);
    v10 = computePipelines[v3];
    computePipelines[v3] = v9;

    v15 = objc_msgSend_threadExecutionWidth(computePipelines[v3], v11, v12);
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (v15 > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = objc_msgSend_threadExecutionWidth(computePipelines[v3], v13, v14);
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++v3;
  }

  while (v3 != 5);
}

- (int)_doComputeResidualErrorWithCommandBuffer:(id)a3 in_I0_u32_tex:(id)a4 in_I1_tex:(id)a5 in_uv_tex:(id)a6 out_tex:(id)a7 disparity_axis:
{
  v8 = v7;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  memset(&v46[1], 0, 48);
  v46[0] = v8;
  v18 = self->_computePipelines[0];
  v21 = objc_msgSend_computeCommandEncoder(a3, v19, v20);
  v23 = v21;
  if (v21)
  {
    objc_msgSend_setComputePipelineState_(v21, v22, v18);
    objc_msgSend_setTexture_atIndex_(v23, v24, v14, 0);
    objc_msgSend_setTexture_atIndex_(v23, v25, v15, 1);
    objc_msgSend_setTexture_atIndex_(v23, v26, v16, 2);
    objc_msgSend_setTexture_atIndex_(v23, v27, v17, 3);
    objc_msgSend_setBytes_length_atIndex_(v23, v28, v46, 64, 0);
    v31 = objc_msgSend_threadExecutionWidth(v18, v29, v30);
    v34 = objc_msgSend_maxTotalThreadsPerThreadgroup(v18, v32, v33) / v31;
    v45[0] = (v31 + objc_msgSend_width(v17, v35, v36) / 2 - 1) / v31;
    v45[1] = (v34 + objc_msgSend_height(v17, v37, v38) / 2 - 1) / v34;
    v45[2] = 1;
    v44[0] = v31;
    v44[1] = v34;
    v44[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v39, v45, v44);
    objc_msgSend_endEncoding(v23, v40, v41);
    v42 = 0;
  }

  else
  {
    sub_2957A154C(v45);
    v42 = v45[0];
  }

  return v42;
}

- (int)_doComputeResidualErrorOffsetWithCommandBuffer:(id)a3 in_res_tex:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_width(v7, v8, v9);
  v13 = objc_msgSend_height(v7, v11, v12);
  if (v10 > 32 || v13 >= 33)
  {
    sub_2957A1674();
    v25 = -12780;
  }

  else
  {
    v14 = self->_computePipelines[1];
    v17 = objc_msgSend_computeCommandEncoder(v6, v15, v16);
    if (v17)
    {
      v19 = v17;
      objc_msgSend_setComputePipelineState_(v17, v18, v14);
      objc_msgSend_setTexture_atIndex_(v19, v20, v7, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v19, v21, self->_res_off_buf, 0, 0);
      v29 = vdupq_n_s64(1uLL);
      v30 = 1;
      v27 = xmmword_2957A3610;
      v28 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v22, &v29, &v27);
      objc_msgSend_endEncoding(v19, v23, v24);

      v25 = 0;
    }

    else
    {
      sub_2957A15D4(v14, &v29);
      v25 = v29.i32[0];
    }
  }

  return v25;
}

- (int)_doBuildErrorMapWithCommandBuffer:(id)a3 in_res_tex:(id)a4 out_tex:(id)a5
{
  v8 = a4;
  v9 = a5;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  params = self->_params;
  v11 = a3;
  objc_msgSend_conf_min(params, v12, v13);
  HIDWORD(v48) = v14;
  objc_msgSend_conf_max(self->_params, v15, v16);
  v18 = v17;
  objc_msgSend_conf_min(self->_params, v19, v20);
  *&v49 = 1.0 / (v18 - v21);
  v22 = self->_computePipelines[2];
  v25 = objc_msgSend_computeCommandEncoder(v11, v23, v24);

  if (v25)
  {
    objc_msgSend_setComputePipelineState_(v25, v26, v22);
    objc_msgSend_setTexture_atIndex_(v25, v27, v8, 0);
    objc_msgSend_setTexture_atIndex_(v25, v28, v9, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v25, v29, self->_res_off_buf, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v25, v30, &v48, 64, 1);
    v33 = objc_msgSend_threadExecutionWidth(v22, v31, v32);
    v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(v22, v34, v35) / v33;
    v47[0] = (v33 + objc_msgSend_width(v9, v37, v38) / 2 - 1) / v33;
    v47[1] = (v36 + objc_msgSend_height(v9, v39, v40) / 2 - 1) / v36;
    v47[2] = 1;
    v46[0] = v33;
    v46[1] = v36;
    v46[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v25, v41, v47, v46);
    objc_msgSend_endEncoding(v25, v42, v43);
    v44 = 0;
  }

  else
  {
    sub_2957A16D4(v47);
    v44 = v47[0];
  }

  return v44;
}

@end