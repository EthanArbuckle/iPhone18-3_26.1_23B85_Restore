@interface LKTKeypointDetector
+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeOpticalFlowBidirectional;
- (int)_createImagePyramidWithCommandBuffer:(id)buffer in_tex:(id)in_tex I_idx:(int)i_idx;
- (int)_doSolverWithCommandBuffer:(id)buffer scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1;
- (int)_downscale2XWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)buffer in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex;
- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)buffer in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex in_conf_fwd_tex:(id)in_conf_fwd_tex in_conf_bwd_tex:(id)in_conf_bwd_tex out_kpt_buf:(id)out_kpt_buf out_kpt_conf:(id)out_kpt_conf block_size:(int)self0 bidirectional_error:(float)self1 confidence_radial_weight:(float)self2 confidence_minimum:(float)self3 out_num_keypoints:(unsigned __int16 *)self4;
- (int)_setupBuffer;
- (int)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex;
- (int)computeKeypointsFromForwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConfidence:(id)confidence backwardConfidence:(id)backwardConfidence bidirectionalError:(float)error confidenceRadialWeight:(float)weight confidenceMinimum:(float)minimum blockSize:(int)self0 outNumKeypoints:(unsigned __int16 *)self1;
- (int)estimateFlowFromReference:(id)reference target:(id)target;
- (void)_initMemory:(int)memory height:(int)height nscales:(int)nscales lastScale:(int)scale;
- (void)_setupPipelines;
- (void)dealloc;
- (void)waitUntilCompleted;
@end

@implementation LKTKeypointDetector

- (void)dealloc
{
  CVPixelBufferRelease(self->_G0_pxbuf);
  CVPixelBufferRelease(self->_G1_pxbuf);
  CVPixelBufferRelease(self->_C0_pxbuf);
  CVPixelBufferRelease(self->_C1_pxbuf);
  CVPixelBufferRelease(self->_conf_fwd_pxbuf);
  CVPixelBufferRelease(self->_conf_bwd_pxbuf);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[0]);
  CVPixelBufferRelease(self->_uv_bwd_pxbuf[0]);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[1]);
  CVPixelBufferRelease(self->_uv_bwd_pxbuf[1]);
  v3.receiver = self;
  v3.super_class = LKTKeypointDetector;
  [(LKTKeypointDetector *)&v3 dealloc];
}

- (void)waitUntilCompleted
{
  v32 = objc_msgSend_commandBuffer(self->_commandQueue, a2, v2, v3, v4, v5, v6, v7, v8);
  objc_msgSend_setLabel_(v32, v9, @"LKT:waitUntilCompleted", v10, v11, v12, v13, v14, v15);
  objc_msgSend_commit(v32, v16, v17, v18, v19, v20, v21, v22, v23);
  objc_msgSend_waitUntilCompleted(v32, v24, v25, v26, v27, v28, v29, v30, v31);
}

- (int)estimateFlowFromReference:(id)reference target:(id)target
{
  commandQueue = self->_commandQueue;
  targetCopy = target;
  referenceCopy = reference;
  v17 = objc_msgSend_commandBuffer(commandQueue, v9, v10, v11, v12, v13, v14, v15, v16);
  objc_msgSend_setLabel_(v17, v18, @"LKT::Pyramid", v19, v20, v21, v22, v23, v24);
  objc_msgSend__zeroFlowWithCommandBuffer_uv_tex_(self, v25, v17, self->_uv_bwd_pxbuf[self->_nscales + 1], v26, v27, v28, v29, v30);
  objc_msgSend__zeroFlowWithCommandBuffer_uv_tex_(self, v31, v17, self->_uv_fwd_tex[1][self->_nscales + 9], v32, v33, v34, v35, v36);
  objc_msgSend__createImagePyramidWithCommandBuffer_in_tex_I_idx_(self, v37, v17, referenceCopy, 0, v38, v39, v40, v41);

  objc_msgSend__createImagePyramidWithCommandBuffer_in_tex_I_idx_(self, v42, v17, targetCopy, 1, v43, v44, v45, v46);
  objc_msgSend_commit(v17, v47, v48, v49, v50, v51, v52, v53, v54);

  objc_msgSend__computeOpticalFlowBidirectional(self, v55, v56, v57, v58, v59, v60, v61, v62);
  return 0;
}

- (int)computeKeypointsFromForwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConfidence:(id)confidence backwardConfidence:(id)backwardConfidence bidirectionalError:(float)error confidenceRadialWeight:(float)weight confidenceMinimum:(float)minimum blockSize:(int)self0 outNumKeypoints:(unsigned __int16 *)self1
{
  commandQueue = self->_commandQueue;
  backwardConfidenceCopy = backwardConfidence;
  confidenceCopy = confidence;
  backwardFlowCopy = backwardFlow;
  flowCopy = flow;
  v33 = objc_msgSend_commandBuffer(commandQueue, v25, v26, v27, v28, v29, v30, v31, v32);
  objc_msgSend_setLabel_(v33, v34, @"LKT::KeypointsFromFlow", v35, v36, v37, v38, v39, v40);
  sizeCopy = size;
  *&v41 = weight;
  *&v42 = minimum;
  objc_msgSend__enqueueKeypointsFromFlowWithCommandBuffer_in_uv_fwd_tex_in_uv_bwd_tex_in_conf_fwd_tex_in_conf_bwd_tex_out_kpt_buf_out_kpt_conf_block_size_bidirectional_error_confidence_radial_weight_confidence_minimum_out_num_keypoints_(self, v43, v33, flowCopy, backwardFlowCopy, confidenceCopy, backwardConfidenceCopy, self->_kpt_buf, error, v41, v42, self->_kpt_confidence, sizeCopy, keypoints);

  objc_msgSend_commit(v33, v44, v45, v46, v47, v48, v49, v50, v51);
  return 0;
}

- (void)_initMemory:(int)memory height:(int)height nscales:(int)nscales lastScale:(int)scale
{
  v7 = 0;
  if (memory >= 8 && height >= 8)
  {
    v7 = 0;
    heightCopy = height;
    memoryCopy = memory;
    do
    {
      v10 = (memoryCopy & 1) + memoryCopy;
      if (v10 / 2 >= 0)
      {
        v11 = (v10 / 2) & 1;
      }

      else
      {
        v11 = -((v10 / 2) & 1);
      }

      v12 = (heightCopy & 1) + heightCopy;
      if (v12 / 2 >= 0)
      {
        v13 = (v12 / 2) & 1;
      }

      else
      {
        v13 = -((v12 / 2) & 1);
      }

      v14 = v10 + 2 * v11 + 1;
      memoryCopy = v14 >> 1;
      v15 = v12 + 2 * v13 + 1;
      heightCopy = v15 >> 1;
      ++v7;
    }

    while (v14 >= 16 && v15 > 15);
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
    nscalesCopy = v7;
  }

  self->_nscales = nscalesCopy;
  self->_lastScale = scale;
  self->_maxThreadExecutionWidth = 0;
  *&self->_G0_pxbuf = 0u;
  *&self->_C0_pxbuf = 0u;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = 0;

  uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
  self->_uv_bwd_tex_user_ref = 0;

  conf_fwd_tex_user_ref = self->_conf_fwd_tex_user_ref;
  self->_conf_fwd_tex_user_ref = 0;

  conf_bwd_tex_user_ref = self->_conf_bwd_tex_user_ref;
  self->_conf_bwd_tex_user_ref = 0;

  *self->_uv_fwd_pxbuf = 0u;
  *self->_uv_bwd_pxbuf = 0u;
  *&self->_conf_fwd_pxbuf = 0u;
  nscales = self->_nscales;
  if (nscales > v7 || nscales >= 10)
  {
    v27 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v22, @"Invalid parameter", @"The number of scales specified is too large", 0, v23, v24, v25, 0.0);
    objc_exception_throw(v27);
  }
}

- (void)_setupPipelines
{
  selfCopy = self;
  v3 = 0;
  v4 = 0;
  computePipelines = self->_computePipelines;
  v6 = 0x29EDBA000uLL;
  v7 = off_29EDD7F58;
  v8 = 0x2A18B9000uLL;
  v9 = 0x2A18B9000uLL;
  do
  {
    v10 = v4;
    v11 = objc_alloc(*(v6 + 248));
    v19 = objc_msgSend_initWithUTF8String_(v11, v12, v7[v3], v13, v14, v15, v16, v17, v18);
    v28 = objc_msgSend_library(selfCopy->_mtlContext, v20, v21, v22, v23, v24, v25, v26, v27);
    v96 = v19;
    v4 = objc_msgSend_newFunctionWithName_(v28, v29, v19, v30, v31, v32, v33, v34, v35);

    v44 = objc_msgSend_device(selfCopy->_mtlContext, v36, v37, v38, v39, v40, v41, v42, v43);
    v51 = objc_msgSend_newComputePipelineStateWithFunction_error_(v44, v45, v4, 0, v46, v47, v48, v49, v50);

    objc_storeStrong(computePipelines, v51);
    v67 = objc_msgSend_threadExecutionWidth(v51, v52, v53, v54, v55, v56, v57, v58, v59);
    maxThreadExecutionWidth = selfCopy->_maxThreadExecutionWidth;
    if (v67 > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = objc_msgSend_threadExecutionWidth(v51, v60, v61, v62, v63, v64, v65, v66, v68);
    }

    selfCopy->_maxThreadExecutionWidth = maxThreadExecutionWidth;
    if (*(v8 + 1880) != -1)
    {
      sub_29576EB00();
    }

    v70 = *(v9 + 1896);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      log = v70;
      v79 = v4;
      v80 = selfCopy;
      v81 = v9;
      v82 = v8;
      v83 = v7;
      v84 = v6;
      v85 = objc_msgSend_threadExecutionWidth(v51, v71, v72, v73, v74, v75, v76, v77, v78);
      v94 = objc_msgSend_maxTotalThreadsPerThreadgroup(v51, v86, v87, v88, v89, v90, v91, v92, v93);
      *buf = 138412802;
      v98 = v96;
      v99 = 1024;
      v100 = v85;
      v6 = v84;
      v7 = v83;
      v8 = v82;
      v9 = v81;
      selfCopy = v80;
      v4 = v79;
      v101 = 1024;
      v102 = v94;
      _os_log_impl(&dword_295749000, log, OS_LOG_TYPE_DEFAULT, "%@::threadExecutionWidth = %d, maxTotalThreadsPerThreadgroup = %d", buf, 0x18u);
    }

    ++computePipelines;
    ++v3;
  }

  while (v3 != 9);
}

- (int)_createImagePyramidWithCommandBuffer:(id)buffer in_tex:(id)in_tex I_idx:(int)i_idx
{
  bufferCopy = buffer;
  in_texCopy = in_tex;
  objc_storeStrong(self->_I_tex[i_idx], in_tex);
  if (self->_nscales >= 2)
  {
    v10 = &self->_I_tex[i_idx][1];
    v11 = 1;
    do
    {
      v12 = *v10;
      v13 = *(v10 - 1);
      objc_msgSend__downscale2XWithCommandBuffer_in_tex_out_tex_(self, v14, bufferCopy, v13, v12, v15, v16, v17, v18);

      ++v11;
      ++v10;
    }

    while (v11 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex
{
  uv_texCopy = uv_tex;
  v15 = objc_msgSend_computeCommandEncoder(buffer, v7, v8, v9, v10, v11, v12, v13, v14);
  v23 = v15;
  if (v15)
  {
    objc_msgSend_setComputePipelineState_(v15, v16, self->_computePipelines[0], v17, v18, v19, v20, v21, v22);
    objc_msgSend_setTexture_atIndex_(v23, v24, uv_texCopy, 0, v25, v26, v27, v28, v29);
    v38 = objc_msgSend_threadExecutionWidth(self->_computePipelines[0], v30, v31, v32, v33, v34, v35, v36, v37);
    v47 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[0], v39, v40, v41, v42, v43, v44, v45, v46) / v38;
    v81[0] = objc_msgSend_width(uv_texCopy, v48, v49, v50, v51, v52, v53, v54, v55);
    v81[1] = objc_msgSend_height(uv_texCopy, v56, v57, v58, v59, v60, v61, v62, v63);
    v81[2] = 1;
    v80[0] = v38;
    v80[1] = v47;
    v80[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v23, v64, v81, v80, v65, v66, v67, v68, v69);
    objc_msgSend_endEncoding(v23, v70, v71, v72, v73, v74, v75, v76, v77);
    v78 = 0;
  }

  else
  {
    sub_29576EB28(v81);
    v78 = v81[0];
  }

  return v78;
}

- (int)_downscale2XWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  v18 = objc_msgSend_computeCommandEncoder(buffer, v10, v11, v12, v13, v14, v15, v16, v17);
  v26 = v18;
  if (v18)
  {
    objc_msgSend_setComputePipelineState_(v18, v19, self->_computePipelines[1], v20, v21, v22, v23, v24, v25);
    objc_msgSend_setTexture_atIndex_(v26, v27, in_texCopy, 0, v28, v29, v30, v31, v32);
    objc_msgSend_setTexture_atIndex_(v26, v33, out_texCopy, 1, v34, v35, v36, v37, v38);
    v47 = objc_msgSend_threadExecutionWidth(self->_computePipelines[1], v39, v40, v41, v42, v43, v44, v45, v46);
    v56 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[1], v48, v49, v50, v51, v52, v53, v54, v55) / v47;
    v90[0] = objc_msgSend_width(out_texCopy, v57, v58, v59, v60, v61, v62, v63, v64);
    v90[1] = objc_msgSend_height(out_texCopy, v65, v66, v67, v68, v69, v70, v71, v72);
    v90[2] = 1;
    v89[0] = v47;
    v89[1] = v56;
    v89[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, v73, v90, v89, v74, v75, v76, v77, v78);
    objc_msgSend_endEncoding(v26, v79, v80, v81, v82, v83, v84, v85, v86);
    v87 = 0;
  }

  else
  {
    sub_29576EBB0(v90);
    v87 = v90[0];
  }

  return v87;
}

- (int)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  v18 = objc_msgSend_computeCommandEncoder(buffer, v10, v11, v12, v13, v14, v15, v16, v17);
  v26 = v18;
  if (v18)
  {
    objc_msgSend_setComputePipelineState_(v18, v19, self->_computePipelines[2], v20, v21, v22, v23, v24, v25);
    objc_msgSend_setTexture_atIndex_(v26, v27, in_texCopy, 0, v28, v29, v30, v31, v32);
    objc_msgSend_setTexture_atIndex_(v26, v33, out_texCopy, 1, v34, v35, v36, v37, v38);
    v47 = objc_msgSend_threadExecutionWidth(self->_computePipelines[2], v39, v40, v41, v42, v43, v44, v45, v46);
    v56 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[2], v48, v49, v50, v51, v52, v53, v54, v55) / v47;
    v90[0] = objc_msgSend_width(in_texCopy, v57, v58, v59, v60, v61, v62, v63, v64);
    v90[1] = objc_msgSend_height(in_texCopy, v65, v66, v67, v68, v69, v70, v71, v72);
    v90[2] = 1;
    v89[0] = v47;
    v89[1] = v56;
    v89[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, v73, v90, v89, v74, v75, v76, v77, v78);
    objc_msgSend_endEncoding(v26, v79, v80, v81, v82, v83, v84, v85, v86);
    v87 = 0;
  }

  else
  {
    sub_29576EC38(v90);
    v87 = v90[0];
  }

  return v87;
}

- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  v18 = objc_msgSend_computeCommandEncoder(buffer, v10, v11, v12, v13, v14, v15, v16, v17);
  v26 = v18;
  if (v18)
  {
    objc_msgSend_setComputePipelineState_(v18, v19, self->_computePipelines[3], v20, v21, v22, v23, v24, v25);
    objc_msgSend_setTexture_atIndex_(v26, v27, in_texCopy, 0, v28, v29, v30, v31, v32);
    objc_msgSend_setTexture_atIndex_(v26, v33, out_texCopy, 1, v34, v35, v36, v37, v38);
    v47 = objc_msgSend_threadExecutionWidth(self->_computePipelines[3], v39, v40, v41, v42, v43, v44, v45, v46);
    v56 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[3], v48, v49, v50, v51, v52, v53, v54, v55) / v47;
    v90[0] = objc_msgSend_width(in_texCopy, v57, v58, v59, v60, v61, v62, v63, v64);
    v90[1] = objc_msgSend_height(in_texCopy, v65, v66, v67, v68, v69, v70, v71, v72);
    v90[2] = 1;
    v89[0] = v47;
    v89[1] = v56;
    v89[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, v73, v90, v89, v74, v75, v76, v77, v78);
    objc_msgSend_endEncoding(v26, v79, v80, v81, v82, v83, v84, v85, v86);
    v87 = 0;
  }

  else
  {
    sub_29576ECC0(v90);
    v87 = v90[0];
  }

  return v87;
}

- (int)_doSolverWithCommandBuffer:(id)buffer scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1
{
  bufferCopy = buffer;
  in_uv_texCopy = in_uv_tex;
  g0_texCopy = g0_tex;
  g1_texCopy = g1_tex;
  c0_texCopy = c0_tex;
  v19 = bufferCopy;
  c1_texCopy = c1_tex;
  out_uv_texCopy = out_uv_tex;
  out_w_texCopy = out_w_tex;
  v30 = objc_msgSend_width(out_uv_texCopy, v22, v23, v24, v25, v26, v27, v28, v29);
  v39 = objc_msgSend_height(out_uv_texCopy, v31, v32, v33, v34, v35, v36, v37, v38);
  LODWORD(g1_tex) = (v30 + self->_maxThreadExecutionWidth - 1) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v329[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v328 = _D0;
  objc_msgSend__computeScalingFactor_dst_tex_scale_xy_inv_coeff_(LKTKeypointDetector, v46, in_uv_texCopy, out_uv_texCopy, &v328, v329, v47, v48, *&_D0);
  v322[0] = v30;
  v322[1] = v39;
  g1_texCopy2 = g1_tex;
  v324 = v328;
  v325 = 0;
  v45 = v329;
  v49 = vld1_dup_f32(v45);
  v326 = v49;
  v327 = 0;
  v57 = objc_msgSend_computeCommandEncoder(v19, v50, v51, v52, v53, v54, v55, v56, v49.f32[0]);
  if (!v57)
  {
    sub_29576EE58(&v319);
    v310 = v319;
    goto LABEL_5;
  }

  v65 = v57;
  v312 = out_w_texCopy;
  objc_msgSend_setComputePipelineState_(v57, v58, self->_computePipelines[4], v59, v60, v61, v62, v63, v64);
  objc_msgSend_setTexture_atIndex_(v65, v66, in_uv_texCopy, 0, v67, v68, v69, v70, v71);
  objc_msgSend_setTexture_atIndex_(v65, v72, g0_texCopy, 1, v73, v74, v75, v76, v77);
  objc_msgSend_setTexture_atIndex_(v65, v78, g1_texCopy, 2, v79, v80, v81, v82, v83);
  objc_msgSend_setTexture_atIndex_(v65, v84, c0_texCopy, 3, v85, v86, v87, v88, v89);
  objc_msgSend_setTexture_atIndex_(v65, v90, c1_texCopy, 4, v91, v92, v93, v94, v95);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v96, self->_Adiagb_buf[0], 0, 0, v97, v98, v99, v100);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v101, self->_Ixy_buf[0], 0, 1, v102, v103, v104, v105);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v106, self->_idt_buf, 0, 2, v107, v108, v109, v110);
  objc_msgSend_setBytes_length_atIndex_(v65, v111, v322, 48, 3, v112, v113, v114, v115);
  v124 = objc_msgSend_threadExecutionWidth(self->_computePipelines[4], v116, v117, v118, v119, v120, v121, v122, v123);
  v133 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[4], v125, v126, v127, v128, v129, v130, v131, v132);
  v134 = v39;
  v319 = v30;
  v320 = v39;
  v321 = 1;
  v316 = v124;
  v317 = v133 / v124;
  v318 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v65, v135, &v319, &v316, v136, v137, v138, v139, v140);
  objc_msgSend_endEncoding(v65, v141, v142, v143, v144, v145, v146, v147, v148);

  v157 = objc_msgSend_computeCommandEncoder(v19, v149, v150, v151, v152, v153, v154, v155, v156);
  if (!v157)
  {
    sub_29576EDD0(&v319);
LABEL_9:
    v310 = v319;
    out_w_texCopy = v312;
    goto LABEL_5;
  }

  v165 = v157;
  objc_msgSend_setComputePipelineState_(v157, v158, self->_computePipelines[5], v159, v160, v161, v162, v163, v164);
  objc_msgSend_setBuffer_offset_atIndex_(v165, v166, self->_Adiagb_buf[0], 0, 0, v167, v168, v169, v170);
  objc_msgSend_setBuffer_offset_atIndex_(v165, v171, self->_Ixy_buf[0], 0, 1, v172, v173, v174, v175);
  objc_msgSend_setBuffer_offset_atIndex_(v165, v176, self->_Adiagb_buf[1], 0, 2, v177, v178, v179, v180);
  objc_msgSend_setBuffer_offset_atIndex_(v165, v181, self->_Ixy_buf[1], 0, 3, v182, v183, v184, v185);
  objc_msgSend_setBytes_length_atIndex_(v165, v186, v322, 48, 4, v187, v188, v189, v190);
  v199 = objc_msgSend_threadExecutionWidth(self->_computePipelines[5], v191, v192, v193, v194, v195, v196, v197, v198);
  v208 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[5], v200, v201, v202, v203, v204, v205, v206, v207);
  v319 = v30;
  v320 = v134;
  v321 = 1;
  v316 = v199;
  v317 = v208 / v199;
  v318 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v165, v209, &v319, &v316, v210, v211, v212, v213, v214);
  objc_msgSend_endEncoding(v165, v215, v216, v217, v218, v219, v220, v221, v222);

  v231 = objc_msgSend_computeCommandEncoder(v19, v223, v224, v225, v226, v227, v228, v229, v230);
  if (!v231)
  {
    sub_29576ED48(&v319);
    goto LABEL_9;
  }

  v239 = v231;
  objc_msgSend_setComputePipelineState_(v231, v232, self->_computePipelines[6], v233, v234, v235, v236, v237, v238);
  objc_msgSend_setBuffer_offset_atIndex_(v239, v240, self->_Adiagb_buf[1], 0, 0, v241, v242, v243, v244);
  objc_msgSend_setBuffer_offset_atIndex_(v239, v245, self->_Ixy_buf[1], 0, 1, v246, v247, v248, v249);
  objc_msgSend_setBuffer_offset_atIndex_(v239, v250, self->_idt_buf, 0, 2, v251, v252, v253, v254);
  objc_msgSend_setTexture_atIndex_(v239, v255, in_uv_texCopy, 0, v256, v257, v258, v259, v260);
  objc_msgSend_setTexture_atIndex_(v239, v261, out_uv_texCopy, 1, v262, v263, v264, v265, v266);
  objc_msgSend_setTexture_atIndex_(v239, v267, v312, 2, v268, v269, v270, v271, v272);
  objc_msgSend_setBytes_length_atIndex_(v239, v273, v322, 48, 3, v274, v275, v276, v277);
  v286 = objc_msgSend_threadExecutionWidth(self->_computePipelines[6], v278, v279, v280, v281, v282, v283, v284, v285);
  v295 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[6], v287, v288, v289, v290, v291, v292, v293, v294);
  v319 = v30;
  v320 = v134;
  out_w_texCopy = v312;
  v321 = 1;
  v316 = v286;
  v317 = v295 / v286;
  v318 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v239, v296, &v319, &v316, v297, v298, v299, v300, v301);
  objc_msgSend_endEncoding(v239, v302, v303, v304, v305, v306, v307, v308, v309);

  v310 = 0;
LABEL_5:

  return v310;
}

- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)buffer in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex
{
  in_uv0_texCopy = in_uv0_tex;
  in_uv1_texCopy = in_uv1_tex;
  out_uv_texCopy = out_uv_tex;
  bufferCopy = buffer;
  LODWORD(buffer) = objc_msgSend_width(out_uv_texCopy, v14, v15, v16, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_height(out_uv_texCopy, v22, v23, v24, v25, v26, v27, v28, v29);
  __asm { FMOV            V0.2S, #1.0 }

  v144 = _D0;
  v145 = _D0;
  v143 = 1065353216;
  v142 = 1065353216;
  objc_msgSend__computeScalingFactor_dst_tex_scale_xy_inv_coeff_(LKTKeypointDetector, v37, in_uv0_texCopy, out_uv_texCopy, &v145, &v143, v38, v39, *&_D0);
  objc_msgSend__computeScalingFactor_dst_tex_scale_xy_inv_coeff_(LKTKeypointDetector, v40, in_uv1_texCopy, out_uv_texCopy, &v144, &v142, v41, v42, v43);
  v137 = 0;
  v136[0] = buffer;
  v136[1] = v30;
  v138 = v145;
  v139 = v144;
  v36 = &v143;
  v44 = vld1_dup_f32(v36);
  v45 = vld1_dup_f32(&v142);
  v140 = v44;
  v141 = v45;
  v53 = objc_msgSend_computeCommandEncoder(bufferCopy, v46, v47, v48, v49, v50, v51, v52, v44.f32[0]);

  if (v53)
  {
    objc_msgSend_setComputePipelineState_(v53, v54, self->_computePipelines[7], v55, v56, v57, v58, v59, v60);
    objc_msgSend_setTexture_atIndex_(v53, v61, in_uv0_texCopy, 0, v62, v63, v64, v65, v66);
    objc_msgSend_setTexture_atIndex_(v53, v67, in_uv1_texCopy, 1, v68, v69, v70, v71, v72);
    objc_msgSend_setTexture_atIndex_(v53, v73, out_uv_texCopy, 2, v74, v75, v76, v77, v78);
    objc_msgSend_setBytes_length_atIndex_(v53, v79, v136, 48, 0, v80, v81, v82, v83);
    v92 = objc_msgSend_threadExecutionWidth(self->_computePipelines[7], v84, v85, v86, v87, v88, v89, v90, v91);
    v101 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[7], v93, v94, v95, v96, v97, v98, v99, v100) / v92;
    v135[0] = objc_msgSend_width(out_uv_texCopy, v102, v103, v104, v105, v106, v107, v108, v109);
    v135[1] = objc_msgSend_height(out_uv_texCopy, v110, v111, v112, v113, v114, v115, v116, v117);
    v135[2] = 1;
    v134[0] = v92;
    v134[1] = v101;
    v134[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v53, v118, v135, v134, v119, v120, v121, v122, v123);
    objc_msgSend_endEncoding(v53, v124, v125, v126, v127, v128, v129, v130, v131);
    v132 = 0;
  }

  else
  {
    sub_29576EEE0(v135);
    v132 = v135[0];
  }

  return v132;
}

+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff
{
  v6 = v5;
  v7 = v4;
  scale_xy_invCopy = scale_xy_inv;
  coeffCopy = coeff;
  v18 = objc_msgSend_width(coeffCopy, v10, v11, v12, v13, v14, v15, v16, v17);
  v27 = objc_msgSend_width(scale_xy_invCopy, v19, v20, v21, v22, v23, v24, v25, v26);
  v28 = v18 / v27;
  v36 = objc_msgSend_height(coeffCopy, v29, v30, v31, v32, v33, v34, v35, v27);
  *&v52 = v36 / objc_msgSend_height(scale_xy_invCopy, v37, v38, v39, v40, v41, v42, v43, v44);
  if (v28 <= 1.5 || *&v52 <= 1.5)
  {
    v54 = objc_msgSend_width(coeffCopy, v45, v46, v47, v48, v49, v50, v51, 1.5, v52);
    if (v54 != objc_msgSend_width(scale_xy_invCopy, v55, v56, v57, v58, v59, v60, v61, v62) || (v71 = objc_msgSend_height(coeffCopy, v63, v64, v65, v66, v67, v68, v69, v70), v71 != objc_msgSend_height(scale_xy_invCopy, v72, v73, v74, v75, v76, v77, v78, v79)))
    {
      sub_29576EF68();
    }

    __asm { FMOV            V0.2S, #1.0 }

    v85 = 1.0;
  }

  else
  {
    _D0 = 0x3F0000003F000000;
    v85 = 2.0;
  }

  *v6 = v85;
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

- (int)_setupBuffer
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  v5 = self->_aux_size.width;
  v6 = self->_aux_size.height;
  maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
  v8 = sub_29575F6E8();
  v17 = sub_29575E738(v8, v10, v9 | 0x32430000u, v16, v11, v12, v13, v14, v15);
  self->_G0_pxbuf = v17;
  if (v17)
  {
    v24 = sub_29575E738(v5, v6, 0x32433068u, v23, v18, v19, v20, v21, v22);
    self->_G1_pxbuf = v24;
    if (v24)
    {
      v31 = sub_29575E738(width, height, 0x52476841u, v30, v25, v26, v27, v28, v29);
      self->_C0_pxbuf = v31;
      if (v31)
      {
        v38 = sub_29575E738(v5, v6, 0x52476841u, v37, v32, v33, v34, v35, v36);
        self->_C1_pxbuf = v38;
        if (v38)
        {
          v39 = sub_29575F6E8();
          v48 = sub_29575E738(v39, v41, v40 | 0x4C300000u, v47, v42, v43, v44, v45, v46);
          self->_conf_fwd_pxbuf = v48;
          if (v48)
          {
            v49 = sub_29575F6E8();
            v58 = sub_29575E738(v49, v51, v50 | 0x4C300000u, v57, v52, v53, v54, v55, v56);
            self->_conf_bwd_pxbuf = v58;
            if (v58)
            {
              v67 = 0;
              v68 = (width + maxThreadExecutionWidth - 1) / maxThreadExecutionWidth * maxThreadExecutionWidth * height;
              v477 = 8 * v68;
              Adiagb_buf = self->_Adiagb_buf;
              v472 = v68;
              v474 = 2 * v68;
              Ixy_buf = self->_Ixy_buf;
              v71 = 1;
              while (1)
              {
                v72 = v71;
                v73 = objc_msgSend_device(self->_mtlContext, v59, v60, v61, v62, v63, v64, v65, v66);
                v80 = objc_msgSend_newBufferWithLength_options_(v73, v74, v477, 0, v75, v76, v77, v78, v79);
                v81 = Adiagb_buf[v67];
                Adiagb_buf[v67] = v80;

                if (!Adiagb_buf[v67])
                {
                  break;
                }

                v90 = objc_msgSend_device(self->_mtlContext, v82, v83, v84, v85, v86, v87, v88, v89);
                v97 = objc_msgSend_newBufferWithLength_options_(v90, v91, v474, 0, v92, v93, v94, v95, v96);
                v98 = Ixy_buf[v67];
                Ixy_buf[v67] = v97;

                if (!Ixy_buf[v67])
                {
                  break;
                }

                v99 = sub_29575F6E8();
                v108 = sub_29575E738(v99, v101, v100 | 0x32430000u, v107, v102, v103, v104, v105, v106);
                self->_uv_fwd_pxbuf[v67] = v108;
                if (!v108)
                {
                  break;
                }

                v109 = sub_29575F6E8();
                v118 = sub_29575E738(v109, v111, v110 | 0x32430000u, v117, v112, v113, v114, v115, v116);
                self->_uv_bwd_pxbuf[v67] = v118;
                if (!v118)
                {
                  break;
                }

                v71 = 0;
                v67 = 1;
                if ((v72 & 1) == 0)
                {
                  v119 = objc_msgSend_device(self->_mtlContext, v59, v60, v61, v62, v63, v64, v65, v66);
                  v126 = objc_msgSend_newBufferWithLength_options_(v119, v120, 4 * v472, 0, v121, v122, v123, v124, v125);
                  idt_buf = self->_idt_buf;
                  self->_idt_buf = v126;

                  if (!self->_idt_buf)
                  {
                    return -12786;
                  }

                  if (self->_nscales < 1)
                  {
LABEL_27:
                    v307 = objc_msgSend_device(self->_mtlContext, v128, v129, v130, v131, v132, v133, v134, *v135.i32, v469);
                    v314 = objc_msgSend_newBufferWithLength_options_(v307, v308, 0x40000, 0, v309, v310, v311, v312, v313);
                    kpt_buf = self->_kpt_buf;
                    self->_kpt_buf = v314;

                    v324 = objc_msgSend_device(self->_mtlContext, v316, v317, v318, v319, v320, v321, v322, v323);
                    v331 = objc_msgSend_newBufferWithLength_options_(v324, v325, 0x40000, 0, v326, v327, v328, v329, v330);
                    kpt_confidence = self->_kpt_confidence;
                    self->_kpt_confidence = v331;

                    v333 = MEMORY[0x29EDBB670];
                    v334 = self->_I_tex[0][self->_lastScale];
                    v343 = objc_msgSend_width(v334, v335, v336, v337, v338, v339, v340, v341, v342);
                    v352 = objc_msgSend_height(v334, v344, v345, v346, v347, v348, v349, v350, v351);
                    v357 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v333, v353, 65, v343, v352, 0, v354, v355, v356);
                    objc_msgSend_setUsage_(v357, v358, 19, v359, v360, v361, v362, v363, v364);
                    v373 = objc_msgSend_device(self->_mtlContext, v365, v366, v367, v368, v369, v370, v371, v372);
                    v381 = objc_msgSend_newTextureWithDescriptor_(v373, v374, v357, v375, v376, v377, v378, v379, v380);
                    uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
                    self->_uv_fwd_tex_user_ref = v381;

                    v391 = objc_msgSend_device(self->_mtlContext, v383, v384, v385, v386, v387, v388, v389, v390);
                    v399 = objc_msgSend_newTextureWithDescriptor_(v391, v392, v357, v393, v394, v395, v396, v397, v398);
                    uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
                    self->_uv_bwd_tex_user_ref = v399;

                    v401 = MEMORY[0x29EDBB670];
                    v410 = objc_msgSend_width(v334, v402, v403, v404, v405, v406, v407, v408, v409);
                    v419 = objc_msgSend_height(v334, v411, v412, v413, v414, v415, v416, v417, v418);
                    v424 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v401, v420, 25, v410, v419, 0, v421, v422, v423);
                    objc_msgSend_setUsage_(v424, v425, 19, v426, v427, v428, v429, v430, v431);
                    v440 = objc_msgSend_device(self->_mtlContext, v432, v433, v434, v435, v436, v437, v438, v439);
                    v448 = objc_msgSend_newTextureWithDescriptor_(v440, v441, v424, v442, v443, v444, v445, v446, v447);
                    conf_fwd_tex_user_ref = self->_conf_fwd_tex_user_ref;
                    self->_conf_fwd_tex_user_ref = v448;

                    v458 = objc_msgSend_device(self->_mtlContext, v450, v451, v452, v453, v454, v455, v456, v457);
                    v466 = objc_msgSend_newTextureWithDescriptor_(v458, v459, v424, v460, v461, v462, v463, v464, v465);
                    conf_bwd_tex_user_ref = self->_conf_bwd_tex_user_ref;
                    self->_conf_bwd_tex_user_ref = v466;

                    return 0;
                  }

                  v136 = 0;
                  v137 = vmovn_s64(vcvtq_s64_f64(self->_aux_size));
                  G0_tex = self->_G0_tex;
                  C0_tex = self->_C0_tex;
                  v135 = vmovn_s64(vcvtq_s64_f64(self->_ref_size));
                  v469 = self->_I_tex[1];
                  I_tex = self->_I_tex;
LABEL_16:
                  v478 = v135.i32[0];
                  v139 = v135.i32[1];
                  v140 = v137.i32[0];
                  v141 = v137.i32[1];
                  v142 = &self->_ref_pyr_size[v136];
                  v142->width = v135.i32[0];
                  v142->height = v135.i32[1];
                  v143 = &self->_aux_pyr_size[v136];
                  v143->width = v137.i32[0];
                  v143->height = v137.i32[1];
                  mtlContext = self->_mtlContext;
                  G0_pxbuf = self->_G0_pxbuf;
                  v146 = sub_29575F6B4();
                  v155 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v147, v148, v149, v150, v151, v152, v153, v154, *&v146);
                  v156 = G0_tex[v136];
                  G0_tex[v136] = v155;

                  if (G0_tex[v136])
                  {
                    v475 = v140;
                    v157 = self->_mtlContext;
                    G1_pxbuf = self->_G1_pxbuf;
                    v159 = sub_29575F740();
                    v168 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v160, v161, v162, v163, v164, v165, v166, v167, *&v159);
                    sub_29575F728(v168);
                    if (self->_G1_tex[v136])
                    {
                      v169 = self->_mtlContext;
                      C0_pxbuf = self->_C0_pxbuf;
                      v171 = sub_29575F6B4();
                      v180 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v172, v173, v174, v175, v176, v177, v178, v179, *&v171);
                      v181 = C0_tex[v136];
                      C0_tex[v136] = v180;

                      if (G0_tex[v136])
                      {
                        v182 = self->_mtlContext;
                        C1_pxbuf = self->_C1_pxbuf;
                        v184 = sub_29575F740();
                        v193 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v185, v186, v187, v188, v189, v190, v191, v192, *&v184);
                        sub_29575F728(v193);
                        if (self->_C1_tex[v136])
                        {
                          v194 = self->_mtlContext;
                          conf_fwd_pxbuf = self->_conf_fwd_pxbuf;
                          v196 = sub_29575F6B4();
                          v205 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v197, v198, v199, v200, v201, v202, v203, v204, *&v196);
                          sub_29575F728(v205);
                          if (self->_conf_fwd_tex[v136])
                          {
                            v206 = self->_mtlContext;
                            conf_bwd_pxbuf = self->_conf_bwd_pxbuf;
                            v208 = sub_29575F6B4();
                            v217 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v209, v210, v211, v212, v213, v214, v215, v216, *&v208);
                            sub_29575F728(v217);
                            if (self->_conf_bwd_tex[v136])
                            {
                              v473 = v141;
                              v218 = 0;
                              v219 = 1;
                              while (1)
                              {
                                v220 = v219;
                                v221 = self->_mtlContext;
                                v222 = self->_uv_fwd_pxbuf[v218];
                                v223 = sub_29575F6B4();
                                v232 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v224, v225, v226, v227, v228, v229, v230, v231, *&v223);
                                v233 = self->_uv_fwd_tex[v218];
                                v234 = v233[v136];
                                v233[v136] = v232;

                                if (!v233[v136])
                                {
                                  break;
                                }

                                v235 = self->_mtlContext;
                                v236 = self->_uv_bwd_pxbuf[v218];
                                v237 = sub_29575F6B4();
                                v246 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v238, v239, v240, v241, v242, v243, v244, v245, *&v237);
                                sub_29575F728(v246);
                                if (!self->_uv_bwd_tex[v218][v136])
                                {
                                  break;
                                }

                                v219 = 0;
                                v218 = 1;
                                if ((v220 & 1) == 0)
                                {
                                  v251 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v247, 10, v478, v139, 0, v248, v249, v250);
                                  objc_msgSend_setUsage_(v251, v252, 19, v253, v254, v255, v256, v257, v258);
                                  v267 = objc_msgSend_device(self->_mtlContext, v259, v260, v261, v262, v263, v264, v265, v266);
                                  v275 = objc_msgSend_newTextureWithDescriptor_(v267, v268, v251, v269, v270, v271, v272, v273, v274);
                                  v276 = (*I_tex)[v136];
                                  (*I_tex)[v136] = v275;

                                  v479 = sub_29575F6F8(v478 % 2 + v478).n64_u64[0];
                                  v281 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v277, 10, v475, v473, 0, v278, v279, v280);
                                  objc_msgSend_setUsage_(v281, v282, 19, v283, v284, v285, v286, v287, v288);
                                  v297 = objc_msgSend_device(self->_mtlContext, v289, v290, v291, v292, v293, v294, v295, v296);
                                  v305 = objc_msgSend_newTextureWithDescriptor_(v297, v298, v281, v299, v300, v301, v302, v303, v304);
                                  v306 = v469[v136];
                                  v469[v136] = v305;

                                  v476 = sub_29575F6F8(v475 % 2 + v475).n64_u64[0];
                                  v137 = v476;
                                  v135 = v479;
                                  ++v136;
                                  G0_tex = self->_G0_tex;
                                  if (v136 < self->_nscales)
                                  {
                                    goto LABEL_16;
                                  }

                                  goto LABEL_27;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  return -12786;
                }
              }
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_computeOpticalFlowBidirectional
{
  selfCopy = self;
  v3 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v4 = self->_uv_fwd_tex[0][v3];
  uv_bwd_tex = selfCopy->_uv_bwd_tex;
  v5 = selfCopy->_uv_bwd_tex[0][v3];
  if (selfCopy->_uv_bwd_tex_user_ref)
  {
    nscales = selfCopy->_nscales;
    if (nscales <= selfCopy->_lastScale)
    {
      v7 = 0;
      v90 = 0;
    }

    else
    {
      v122 = v5;
      v123 = v4;
      v7 = 0;
      v8 = 0;
      p_uv_bwd_tex_user_ref = &selfCopy->_uv_bwd_tex_user_ref;
      v94 = selfCopy->_I_tex[1];
      I_tex = selfCopy->_I_tex;
      G1_tex = selfCopy->_G1_tex;
      G0_tex = selfCopy->_G0_tex;
      C1_tex = selfCopy->_C1_tex;
      C0_tex = selfCopy->_C0_tex;
      p_conf_fwd_tex_user_ref = &selfCopy->_conf_fwd_tex_user_ref;
      p_uv_fwd_tex_user_ref = &selfCopy->_uv_fwd_tex_user_ref;
      p_conf_bwd_tex_user_ref = &selfCopy->_conf_bwd_tex_user_ref;
      v99 = selfCopy->_uv_bwd_tex[1];
      conf_bwd_tex = selfCopy->_conf_bwd_tex;
      conf_fwd_tex = selfCopy->_conf_fwd_tex;
      v109 = v3;
      v110 = selfCopy;
      v108 = v3;
      do
      {
        v9 = v7;
        v10 = nscales - 1;
        v11 = (*I_tex)[v10];
        v12 = v94[v10];
        v21 = objc_msgSend_commandBuffer(selfCopy->_commandQueue, v13, v14, v15, v16, v17, v18, v19, v20);

        v29 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v22, @"LKT:ComputeFlow level %d", v23, v24, v25, v26, v27, v28, v10);
        objc_msgSend_setLabel_(v21, v30, v29, v31, v32, v33, v34, v35, v36);

        v97 = v11;
        objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(selfCopy, v37, v21, v11, G0_tex[v10], v38, v39, v40, v41);
        v96 = v12;
        objc_msgSend__computeFeaturesWithCommandBuffer_in_tex_out_tex_(selfCopy, v42, v21, v12, G1_tex[v10], v43, v44, v45, v46);
        objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(selfCopy, v47, v21, G0_tex[v10], C0_tex[v10], v48, v49, v50, v51);
        v116 = v21;
        objc_msgSend__computeFeaturesDerivativesWithCommandBuffer_in_tex_out_tex_(selfCopy, v52, v21, G1_tex[v10], C1_tex[v10], v53, v54, v55, v56);
        nwarpings = selfCopy->_nwarpings;
        v115 = v10;
        if (nwarpings >= 1)
        {
          v66 = 0;
          v105 = &(*uv_bwd_tex)[v10];
          v106 = &conf_fwd_tex[v10];
          v104 = &conf_bwd_tex[v10];
          do
          {
            if (v66 + 3 <= nwarpings)
            {
              v68 = 0;
              v67 = v115;
            }

            else
            {
              v67 = v115;
              v68 = selfCopy->_lastScale == v115;
            }

            v117 = v66;
            if ((v66 + 1))
            {
              v120 = G0_tex[v67];
              v119 = G1_tex[v67];
              v118 = C0_tex[v67];
              v69 = C1_tex[v67];
              v83 = uv_fwd_tex[v8];
              v70 = v83[v109];
              v121 = v8 ^ 1;
              v71 = uv_fwd_tex[v8 ^ 1][v67];
              v84 = &v83[v67];
              if (v68)
              {
                v84 = p_uv_fwd_tex_user_ref;
              }

              v85 = *v84;
              if (v68)
              {
                v86 = p_conf_fwd_tex_user_ref;
              }

              else
              {
                v86 = v106;
              }

              v87 = v85;
              v76 = *v86;
              v77 = v122;
              v78 = v87;

              v123 = v78;
              v109 = v67;
              v122 = v77;
            }

            else
            {
              v120 = G1_tex[v67];
              v119 = G0_tex[v67];
              v118 = C1_tex[v67];
              v69 = C0_tex[v67];
              v70 = (*uv_bwd_tex)[v108];
              v71 = v99[v67];
              v72 = p_uv_bwd_tex_user_ref;
              if (!v68)
              {
                v72 = v105;
              }

              v73 = *v72;
              if (v68)
              {
                v74 = p_conf_bwd_tex_user_ref;
              }

              else
              {
                v74 = v104;
              }

              v75 = v73;
              v76 = *v74;
              v77 = v123;
              v78 = v75;

              v121 = v8 ^ 1;
              v122 = v78;
              v108 = v67;
              v123 = v77;
            }

            selfCopy = v110;
            objc_msgSend__enqueueFlowConsistencyWithCommandBuffer_in_uv0_tex_in_uv1_tex_out_uv_tex_(v110, v79, v116, v77, v70, v71, v80, v81, v82);
            objc_msgSend__doSolverWithCommandBuffer_scale_in_uv_tex_in_G0_tex_in_G1_tex_in_C0_tex_in_C1_tex_out_uv_tex_out_w_tex_(v110, v88, v116, v67, v71, v120, v119, v118, v89, v69, v78, v76);

            nwarpings = v110->_nwarpings;
            v66 = v117 + 1;
            v8 = v121;
          }

          while (v117 + 1 < nwarpings);
        }

        v7 = v116;
        objc_msgSend_commit(v116, v57, v58, v59, v60, v61, v62, v63, v64);

        nscales = v115;
      }

      while (v115 > selfCopy->_lastScale);
      v90 = 0;
      v5 = v122;
      v4 = v123;
    }
  }

  else
  {
    v7 = 0;
    v90 = -12780;
  }

  return v90;
}

- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)buffer in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex in_conf_fwd_tex:(id)in_conf_fwd_tex in_conf_bwd_tex:(id)in_conf_bwd_tex out_kpt_buf:(id)out_kpt_buf out_kpt_conf:(id)out_kpt_conf block_size:(int)self0 bidirectional_error:(float)self1 confidence_radial_weight:(float)self2 confidence_minimum:(float)self3 out_num_keypoints:(unsigned __int16 *)self4
{
  in_uv_fwd_texCopy = in_uv_fwd_tex;
  in_uv_bwd_texCopy = in_uv_bwd_tex;
  in_conf_fwd_texCopy = in_conf_fwd_tex;
  in_conf_bwd_texCopy = in_conf_bwd_tex;
  out_kpt_bufCopy = out_kpt_buf;
  out_kpt_confCopy = out_kpt_conf;
  bufferCopy = buffer;
  v33 = objc_msgSend_width(in_uv_fwd_texCopy, v25, v26, v27, v28, v29, v30, v31, v32) / block_size;
  v150 = 0;
  block_sizeCopy = block_size;
  v145 = v33;
  v42 = objc_msgSend_height(in_uv_fwd_texCopy, v34, v35, v36, v37, v38, v39, v40, v41) / block_size;
  v146 = v42;
  bidirectional_errorCopy = bidirectional_error;
  confidence_radial_weightCopy = confidence_radial_weight;
  v149 = LODWORD(confidence_minimum);
  v51 = objc_msgSend_computeCommandEncoder(bufferCopy, v43, v44, v45, v46, v47, v48, v49, v50);

  if (!v51)
  {
    sub_29574C6A0();
    FigDebugAssert3();
    sub_29575F6C8();
    v135 = FigSignalErrorAtGM();
LABEL_7:
    v78 = in_conf_bwd_texCopy;
    v65 = in_uv_bwd_texCopy;
    v85 = in_uv_fwd_texCopy;
    v92 = out_kpt_confCopy;
    v86 = out_kpt_bufCopy;
    goto LABEL_4;
  }

  if (v42 * v33 > 0x8000)
  {
    v135 = -12780;
    goto LABEL_7;
  }

  objc_msgSend_setComputePipelineState_(v51, v52, self->_computePipelines[8], v53, v54, v55, v56, v57, v58);
  objc_msgSend_setTexture_atIndex_(v51, v59, in_uv_fwd_texCopy, 0, v60, v61, v62, v63, v64);
  v65 = in_uv_bwd_texCopy;
  objc_msgSend_setTexture_atIndex_(v51, v66, in_uv_bwd_texCopy, 1, v67, v68, v69, v70, v71);
  objc_msgSend_setTexture_atIndex_(v51, v72, in_conf_fwd_texCopy, 2, v73, v74, v75, v76, v77);
  v78 = in_conf_bwd_texCopy;
  objc_msgSend_setTexture_atIndex_(v51, v79, in_conf_bwd_texCopy, 3, v80, v81, v82, v83, v84);
  v85 = in_uv_fwd_texCopy;
  v86 = out_kpt_bufCopy;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v87, out_kpt_bufCopy, 0, 0, v88, v89, v90, v91);
  v92 = out_kpt_confCopy;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v93, out_kpt_confCopy, 0, 1, v94, v95, v96, v97);
  objc_msgSend_setBytes_length_atIndex_(v51, v98, &block_sizeCopy, 32, 2, v99, v100, v101, v102);
  v111 = objc_msgSend_threadExecutionWidth(self->_computePipelines[8], v103, v104, v105, v106, v107, v108, v109, v110);
  v120 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[8], v112, v113, v114, v115, v116, v117, v118, v119);
  v143[0] = v33;
  v143[1] = v42;
  v143[2] = 1;
  v142[0] = v111;
  v142[1] = v120 / v111;
  v142[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v51, v121, v143, v142, v122, v123, v124, v125, v126);
  objc_msgSend_endEncoding(v51, v127, v128, v129, v130, v131, v132, v133, v134);
  v135 = 0;
  *out_num_keypoints = v42 * v33;
LABEL_4:

  return v135;
}

@end