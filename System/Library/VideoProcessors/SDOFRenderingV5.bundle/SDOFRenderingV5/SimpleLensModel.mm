@interface SimpleLensModel
- (SimpleLensModel)initWithMetalContext:(id)a3;
- (int)allocateResourcesForShiftMapWidth:(unint64_t)a3 shiftMapHeight:(unint64_t)a4;
- (int)enqueueCalcWithSimpleLensParams:(const simple_lens_model_params *)a3 inputShiftMap:(id)a4 outputSlmParams:(id)a5;
- (int)enqueueMinMaxWithInputShiftMapTex:(id)a3;
- (int)enqueueSlmCalcWithInputShiftMap:(id)a3 slmParams:(id)a4 simpleLensParams:(const simple_lens_model_params *)a5;
- (void)dealloc;
- (void)deallocateResources;
@end

@implementation SimpleLensModel

- (SimpleLensModel)initWithMetalContext:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = SimpleLensModel;
  v6 = [(SimpleLensModel *)&v24 init];
  v7 = MEMORY[0x29EDB9270];
  if (v6)
  {
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    objc_storeStrong(&v6->_mtlCtx, a3);
    v9 = objc_msgSend_computePipelineStateFor_constants_(v6->_mtlCtx, v8, @"xhlrb_slm_shiftmap_calcminmax0", 0);
    minMax0_kernel = v6->_minMax0_kernel;
    v6->_minMax0_kernel = v9;

    if (v6->_minMax0_kernel)
    {
      v12 = objc_msgSend_computePipelineStateFor_constants_(v6->_mtlCtx, v11, @"xhlrb_slm_shiftmap_calcminmax1", 0);
      minMax1_kernel = v6->_minMax1_kernel;
      v6->_minMax1_kernel = v12;

      if (v6->_minMax1_kernel)
      {
        v15 = objc_msgSend_computePipelineStateFor_constants_(v6->_mtlCtx, v14, @"xhlrb_slm_shiftmap_calcminmax2", 0);
        minMax2_kernel = v6->_minMax2_kernel;
        v6->_minMax2_kernel = v15;

        if (v6->_minMax2_kernel)
        {
          v18 = objc_msgSend_computePipelineStateFor_constants_(v6->_mtlCtx, v17, @"xhlrb_slm_calc", 0);
          calc_kernel = v6->_calc_kernel;
          v6->_calc_kernel = v18;

          if (v6->_calc_kernel)
          {
            v20 = 0;
            goto LABEL_9;
          }

          sub_295EB873C(&v25);
        }

        else
        {
          sub_295EB87E8(&v25);
        }
      }

      else
      {
        sub_295EB8894(&v25);
      }
    }

    else
    {
      sub_295EB8940(&v25);
    }
  }

  else
  {
    sub_295EB89EC(&v25);
  }

  v20 = v25;
LABEL_9:
  if (*v7 == 1)
  {
    kdebug_trace();
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v6;
  }

  v22 = v21;

  return v22;
}

- (int)allocateResourcesForShiftMapWidth:(unint64_t)a3 shiftMapHeight:(unint64_t)a4
{
  v5 = objc_msgSend_device(self->_mtlCtx, a2, a3, a4);
  v7 = objc_msgSend_newBufferWithLength_options_(v5, v6, 8, 32);
  minMaxAtomic_buf = self->_minMaxAtomic_buf;
  self->_minMaxAtomic_buf = v7;

  if (self->_minMaxAtomic_buf)
  {
    v10 = objc_msgSend_newBufferWithLength_options_(v5, v9, 16, 32);
    minMaxResult_buf = self->_minMaxResult_buf;
    self->_minMaxResult_buf = v10;

    if (self->_minMaxResult_buf)
    {
      v12 = 0;
    }

    else
    {
      sub_295EB8A98(&v14);
      v12 = v14;
    }
  }

  else
  {
    sub_295EB8B44(&v15);
    v12 = v15;
  }

  return v12;
}

- (void)deallocateResources
{
  minMaxAtomic_buf = self->_minMaxAtomic_buf;
  self->_minMaxAtomic_buf = 0;

  minMaxResult_buf = self->_minMaxResult_buf;
  self->_minMaxResult_buf = 0;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlCtx, a2, v2, v3);
  objc_msgSend_deallocateResources(self, v5, v6, v7);
  v8.receiver = self;
  v8.super_class = SimpleLensModel;
  [(SimpleLensModel *)&v8 dealloc];
}

- (int)enqueueMinMaxWithInputShiftMapTex:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_width(v4, v5, v6, v7);
  v12 = objc_msgSend_height(v4, v9, v10, v11);
  v16 = objc_msgSend_commandQueue(self->_mtlCtx, v13, v14, v15);
  v20 = objc_msgSend_commandBuffer(v16, v17, v18, v19);

  if (!v20)
  {
    sub_295EB8C9C(&v74);
LABEL_9:
    v69 = v74.i32[0];
    goto LABEL_6;
  }

  v24 = objc_msgSend_computeCommandEncoder(v20, v21, v22, v23);
  if (!v24)
  {
    sub_295EB8BF0(&v74);
    goto LABEL_9;
  }

  v27 = v24;
  v28 = v8 >> 2;
  objc_msgSend_setComputePipelineState_(v24, v25, self->_minMax0_kernel, v26);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v29, self->_minMaxAtomic_buf, 0, 0);
  v71 = vdupq_n_s64(1uLL);
  v72 = v71;
  v74 = v71;
  v75 = 1;
  v73 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v30, &v74, &v72);
  objc_msgSend_setComputePipelineState_(v27, v31, self->_minMax1_kernel, v32);
  objc_msgSend_setTexture_atIndex_(v27, v33, v4, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v34, self->_minMaxAtomic_buf, 0, 0);
  v38 = objc_msgSend_threadExecutionWidth(self->_minMax1_kernel, v35, v36, v37);
  v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_minMax1_kernel, v39, v40, v41);
  v74.i64[0] = v28;
  v74.i64[1] = v12 >> 2;
  v75 = 1;
  v72.i64[0] = v38;
  v72.i64[1] = v42 / v38;
  v73 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v27, v43, &v74, &v72);
  objc_msgSend_setComputePipelineState_(v27, v44, self->_minMax2_kernel, v45);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v46, self->_minMaxAtomic_buf, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v47, self->_minMaxResult_buf, 0, 1);
  v74 = v71;
  v75 = 1;
  v72 = v71;
  v73 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v48, &v74, &v72);
  objc_msgSend_endEncoding(v27, v49, v50, v51);
  if (*MEMORY[0x29EDB9270])
  {
    v55 = objc_msgSend_commandQueue(v20, v52, v53, v54);
    v59 = objc_msgSend_commandBuffer(v55, v56, v57, v58);

    objc_msgSend_setLabel_(v59, v60, @"KTRACE_MTLCMDBUF", v61);
    objc_msgSend_addCompletedHandler_(v59, v62, &unk_2A1D12468, v63);
    objc_msgSend_commit(v59, v64, v65, v66);
    objc_msgSend_addCompletedHandler_(v20, v67, &unk_2A1D12488, v68);
  }

  objc_msgSend_commit(v20, v52, v53, v54);

  v69 = 0;
LABEL_6:

  return v69;
}

- (int)enqueueSlmCalcWithInputShiftMap:(id)a3 slmParams:(id)a4 simpleLensParams:(const simple_lens_model_params *)a5
{
  v8 = a3;
  v9 = a4;
  v13 = objc_msgSend_commandQueue(self->_mtlCtx, v10, v11, v12);
  v17 = objc_msgSend_commandBuffer(v13, v14, v15, v16);

  if (!v17)
  {
    sub_295EB8DF4(&v55);
LABEL_9:
    v51 = v55.i32[0];
    goto LABEL_6;
  }

  v21 = objc_msgSend_computeCommandEncoder(v17, v18, v19, v20);
  if (!v21)
  {
    sub_295EB8D48(&v55);
    goto LABEL_9;
  }

  v24 = v21;
  objc_msgSend_setComputePipelineState_(v21, v22, self->_calc_kernel, v23);
  objc_msgSend_setBytes_length_atIndex_(v24, v25, a5, 56, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v24, v26, self->_minMaxResult_buf, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v24, v27, v9, 0, 2);
  objc_msgSend_setTexture_atIndex_(v24, v28, v8, 0);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v24, v29, 1024, 0);
  v55 = vdupq_n_s64(1uLL);
  v56 = 1;
  v53 = xmmword_295EBA270;
  v54 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v24, v30, &v55, &v53);
  objc_msgSend_endEncoding(v24, v31, v32, v33);
  if (*MEMORY[0x29EDB9270])
  {
    v37 = objc_msgSend_commandQueue(v17, v34, v35, v36);
    v41 = objc_msgSend_commandBuffer(v37, v38, v39, v40);

    objc_msgSend_setLabel_(v41, v42, @"KTRACE_MTLCMDBUF", v43);
    objc_msgSend_addCompletedHandler_(v41, v44, &unk_2A1D124A8, v45);
    objc_msgSend_commit(v41, v46, v47, v48);
    objc_msgSend_addCompletedHandler_(v17, v49, &unk_2A1D124C8, v50);
  }

  objc_msgSend_commit(v17, v34, v35, v36);

  v51 = 0;
LABEL_6:

  return v51;
}

- (int)enqueueCalcWithSimpleLensParams:(const simple_lens_model_params *)a3 inputShiftMap:(id)a4 outputSlmParams:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13 = v9;
  if (!self->_minMaxAtomic_buf)
  {
    sub_295EB9398(&v23);
LABEL_21:
    v21 = v23;
    goto LABEL_12;
  }

  if (!self->_minMaxResult_buf)
  {
    sub_295EB92EC(&v23);
    goto LABEL_21;
  }

  if (!v8)
  {
    sub_295EB9240(&v23);
    goto LABEL_21;
  }

  if (!v9)
  {
    sub_295EB9194(&v23);
    goto LABEL_21;
  }

  if (!a3)
  {
    sub_295EB90E8(&v23);
    goto LABEL_21;
  }

  if (objc_msgSend_pixelFormat(v8, v10, v11, v12) != 25 && objc_msgSend_pixelFormat(v8, v14, v15, v16) != 55)
  {
    sub_295EB8EA0(&v23);
    goto LABEL_21;
  }

  if (objc_msgSend_length(v13, v14, v15, v16) <= 0xF)
  {
    sub_295EB903C(&v23);
    goto LABEL_21;
  }

  v19 = objc_msgSend_enqueueMinMaxWithInputShiftMapTex_(self, v17, v8, v18);
  if (v19)
  {
    v21 = v19;
    sub_295EB8F4C();
  }

  else
  {
    v21 = objc_msgSend_enqueueSlmCalcWithInputShiftMap_slmParams_simpleLensParams_(self, v20, v8, v13, a3);
    if (v21)
    {
      sub_295EB8FC4();
    }
  }

LABEL_12:

  return v21;
}

@end