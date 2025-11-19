@interface DistanceTransformGpu
- (DistanceTransformGpu)init;
- (DistanceTransformGpu)initWithParameters:(id *)a3 metalContext:(id)a4;
- (int)allocateResources;
- (int)computeDistanceWithTexture:(id)a3 distance:(id)a4 waitForScheduled:(BOOL)a5;
- (int)createDTKernels;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation DistanceTransformGpu

- (DistanceTransformGpu)init
{
  v13.receiver = self;
  v13.super_class = DistanceTransformGpu;
  v2 = [(DistanceTransformGpu *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC0A40]);
    metalCtx = v2->_metalCtx;
    v2->_metalCtx = v3;

    if (objc_msgSend_createDTKernels(v2, v5, v6, v7, v8, v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = v2;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

- (DistanceTransformGpu)initWithParameters:(id *)a3 metalContext:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = DistanceTransformGpu;
  v8 = [(DistanceTransformGpu *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalCtx, a4);
    v9->_width = a3->var0;
    v9->_height = a3->var1;
    if (objc_msgSend_createDTKernels(v9, v10, v11, v12, v13, v14))
    {
      v15 = 0;
    }

    else
    {
      v15 = v9;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v16;
}

- (int)allocateResources
{
  if (!self->_metalCtx)
  {
    fig_log_get_emitter();
    v54 = FigSignalErrorAtGM();
    v3 = 0;
    goto LABEL_8;
  }

  v3 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], a2, 55, self->_width, self->_height, 0);
  objc_msgSend_setUsage_(v3, v4, 3, v5, v6, v7);
  v13 = objc_msgSend_device(self->_metalCtx, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_newTextureWithDescriptor_(v13, v14, v3, v15, v16, v17);
  tempTexture = self->_tempTexture;
  self->_tempTexture = v18;

  if (self->_tempTexture)
  {
    v25 = objc_msgSend_device(self->_metalCtx, v20, v21, v22, v23, v24);
    v30 = objc_msgSend_newTextureWithDescriptor_(v25, v26, v3, v27, v28, v29);
    maskTexture = self->_maskTexture;
    self->_maskTexture = v30;

    if (self->_maskTexture)
    {
      v37 = objc_msgSend_device(self->_metalCtx, v32, v33, v34, v35, v36);
      v41 = objc_msgSend_newBufferWithLength_options_(v37, v38, 616642, 0, v39, v40);
      v42 = self->_dtScratchBuffers[0];
      self->_dtScratchBuffers[0] = v41;

      if (self->_dtScratchBuffers[0])
      {
        v48 = objc_msgSend_device(self->_metalCtx, v43, v44, v45, v46, v47);
        v52 = objc_msgSend_newBufferWithLength_options_(v48, v49, 614400, 0, v50, v51);
        v53 = self->_dtScratchBuffers[1];
        self->_dtScratchBuffers[1] = v52;

        if (self->_dtScratchBuffers[1])
        {
          v54 = 0;
          goto LABEL_8;
        }

        sub_29573267C(&v61);
      }

      else
      {
        sub_295732728(&v61);
      }
    }

    else
    {
      sub_2957327D4(&v61);
    }
  }

  else
  {
    sub_295732880(&v61);
  }

  v54 = v61;
  if (v61)
  {
    objc_msgSend_releaseResources(self, v56, v57, v58, v59, v60);
  }

LABEL_8:

  return v54;
}

- (void)releaseResources
{
  tempTexture = self->_tempTexture;
  self->_tempTexture = 0;

  self->_width = 0;
  self->_height = 0;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = DistanceTransformGpu;
  [(DistanceTransformGpu *)&v7 dealloc];
}

- (int)computeDistanceWithTexture:(id)a3 distance:(id)a4 waitForScheduled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15 = v9;
  if (!self->_metalCtx)
  {
    sub_295732E8C(&v153);
LABEL_20:
    v45 = 0;
    v32 = 0;
LABEL_26:
    v5 = v153;
    goto LABEL_14;
  }

  if (!v8)
  {
    sub_295732DE0(&v153);
    goto LABEL_20;
  }

  if (!v9)
  {
    sub_295732D34(&v153);
    goto LABEL_20;
  }

  if (objc_msgSend_pixelFormat(v8, v10, v11, v12, v13, v14) != 25)
  {
    sub_29573292C(&v153);
    goto LABEL_20;
  }

  if (objc_msgSend_pixelFormat(v15, v16, v17, v18, v19, v20) != 25)
  {
    sub_2957329D8(&v153);
    goto LABEL_20;
  }

  v26 = objc_msgSend_commandQueue(self->_metalCtx, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_commandBuffer(v26, v27, v28, v29, v30, v31);

  if (!v32)
  {
    sub_295732C88(&v153);
LABEL_24:
    v45 = 0;
    goto LABEL_26;
  }

  width = self->_width;
  height = self->_height;
  v40 = objc_msgSend_computeCommandEncoder(v32, v33, v34, v35, v36, v37);
  v45 = v40;
  if (!v40)
  {
    sub_295732BDC(&v153);
    goto LABEL_26;
  }

  objc_msgSend_setComputePipelineState_(v40, v41, self->_dtInitKernel, v42, v43, v44);
  objc_msgSend_setTexture_atIndex_(v45, v46, v8, 0, v47, v48);
  objc_msgSend_setTexture_atIndex_(v45, v49, self->_maskTexture, 1, v50, v51);
  v153 = (width + 31) >> 5;
  v154.i64[0] = (height + 31) >> 5;
  v154.i64[1] = 1;
  *v152 = vdupq_n_s64(0x10uLL);
  *&v152[16] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v45, v52, &v153, v152, v53, v54);
  objc_msgSend_endEncoding(v45, v55, v56, v57, v58, v59);
  v60 = self->_width;
  v66 = objc_msgSend_computeCommandEncoder(v32, v61, v62, v63, v64, v65);

  if (!v66)
  {
    sub_295732B30(&v153);
    goto LABEL_24;
  }

  objc_msgSend_setComputePipelineState_(v66, v67, self->_dtVerticalKernel, v68, v69, v70);
  objc_msgSend_setTexture_atIndex_(v66, v71, self->_maskTexture, 0, v72, v73);
  objc_msgSend_setTexture_atIndex_(v66, v74, self->_tempTexture, 1, v75, v76);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v77, self->_dtScratchBuffers[0], 0, 0, v78);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v79, self->_dtScratchBuffers[1], 0, 1, v80);
  v153 = (v60 + 31) >> 5;
  v154 = vdupq_n_s64(1uLL);
  *v152 = 32;
  *&v152[8] = xmmword_295742E88;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v66, v81, &v153, v152, v82, v83);
  objc_msgSend_endEncoding(v66, v84, v85, v86, v87, v88);
  v89 = self->_height;
  v45 = objc_msgSend_computeCommandEncoder(v32, v90, v91, v92, v93, v94);

  if (!v45)
  {
    sub_295732A84(&v153);
    goto LABEL_26;
  }

  objc_msgSend_setComputePipelineState_(v45, v95, self->_dtHorizontalKernel, v96, v97, v98);
  objc_msgSend_setTexture_atIndex_(v45, v99, self->_tempTexture, 0, v100, v101);
  objc_msgSend_setTexture_atIndex_(v45, v102, v15, 1, v103, v104);
  objc_msgSend_setBuffer_offset_atIndex_(v45, v105, self->_dtScratchBuffers[0], 0, 0, v106);
  objc_msgSend_setBuffer_offset_atIndex_(v45, v107, self->_dtScratchBuffers[1], 0, 1, v108);
  v153 = 1;
  v154.i64[0] = (v89 + 31) >> 5;
  v154.i64[1] = 1;
  *v152 = xmmword_295742E70;
  *&v152[16] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v45, v109, &v153, v152, v110, v111);
  objc_msgSend_endEncoding(v45, v112, v113, v114, v115, v116);
  if (*MEMORY[0x29EDB9270])
  {
    v122 = objc_msgSend_commandQueue(v32, v117, v118, v119, v120, v121);
    v128 = objc_msgSend_commandBuffer(v122, v123, v124, v125, v126, v127);

    objc_msgSend_setLabel_(v128, v129, @"KTRACE_MTLCMDBUF", v130, v131, v132);
    objc_msgSend_addCompletedHandler_(v128, v133, &unk_2A1C983C0, v134, v135, v136);
    objc_msgSend_commit(v128, v137, v138, v139, v140, v141);
    objc_msgSend_addCompletedHandler_(v32, v142, &unk_2A1C983E0, v143, v144, v145);
  }

  objc_msgSend_commit(v32, v117, v118, v119, v120, v121);
  if (v5)
  {
    objc_msgSend_waitUntilScheduled(v32, v146, v147, v148, v149, v150);
    v5 = 0;
  }

LABEL_14:

  return v5;
}

- (int)createDTKernels
{
  v5 = objc_msgSend_computePipelineStateFor_constants_(self->_metalCtx, a2, @"distanceInitialization", 0, v2, v3);
  dtInitKernel = self->_dtInitKernel;
  self->_dtInitKernel = v5;

  if (self->_dtInitKernel)
  {
    v10 = objc_msgSend_computePipelineStateFor_constants_(self->_metalCtx, v7, @"distanceTransformVertical", 0, v8, v9);
    dtVerticalKernel = self->_dtVerticalKernel;
    self->_dtVerticalKernel = v10;

    if (self->_dtVerticalKernel)
    {
      v15 = objc_msgSend_computePipelineStateFor_constants_(self->_metalCtx, v12, @"distanceTransformHorizontal", 0, v13, v14);
      dtHorizontalKernel = self->_dtHorizontalKernel;
      self->_dtHorizontalKernel = v15;

      if (self->_dtHorizontalKernel)
      {
        return 0;
      }

      else
      {
        sub_295733090(&v18);
        return v18;
      }
    }

    else
    {
      sub_29573313C(&v19);
      return v19;
    }
  }

  else
  {
    sub_2957331E8(&v20);
    return v20;
  }
}

@end