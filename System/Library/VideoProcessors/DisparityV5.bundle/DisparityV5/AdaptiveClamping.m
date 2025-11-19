@interface AdaptiveClamping
- (AdaptiveClamping)initWithMetalContext:(id)a3;
- (int)_initShaders;
- (int)clampFromPixelBuffer:(__CVBuffer *)a3 Mask:(__CVBuffer *)a4 MaxDisparity:(float)a5 Percentiles:(id)a6 CommandBuffer:;
@end

@implementation AdaptiveClamping

- (AdaptiveClamping)initWithMetalContext:(id)a3
{
  v5 = a3;
  v37.receiver = self;
  v37.super_class = AdaptiveClamping;
  v6 = [(AdaptiveClamping *)&v37 init];
  v7 = v6;
  if (!v6)
  {
    sub_29576503C();
LABEL_14:
    v35 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  if (!v7->_metalContext)
  {
    v16 = MEMORY[0x29EDB9F48];
    v17 = objc_opt_class();
    v25 = objc_msgSend_bundleForClass_(v16, v18, v17, v19, v20, v21, v22, v23, v24);
    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x29EDC0A40]);
      inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v26, v27, v25, 0, v28, v29, v30, v31, v32);
      metalContext = v7->_metalContext;
      v7->_metalContext = inited;

      if (v7->_metalContext)
      {

        goto LABEL_6;
      }

      sub_295764F4C();
    }

    else
    {
      sub_295764FC4();
    }

    goto LABEL_14;
  }

LABEL_6:
  if (objc_msgSend__initShaders(v7, v8, v9, v10, v11, v12, v13, v14, v15))
  {
    sub_295764EC0();
    goto LABEL_14;
  }

  v35 = v7;
LABEL_8:

  return v35;
}

- (int)clampFromPixelBuffer:(__CVBuffer *)a3 Mask:(__CVBuffer *)a4 MaxDisparity:(float)a5 Percentiles:(id)a6 CommandBuffer:
{
  v276 = v6;
  v281 = a5;
  v11 = a6;
  if (!a3)
  {
    sub_2957657BC();
LABEL_46:
    v154 = 0;
    v67 = 0;
    a4 = 0;
    goto LABEL_47;
  }

  if (!a4)
  {
    sub_295765744();
    v154 = 0;
    v67 = 0;
LABEL_47:
    v36 = 0;
    v58 = 0;
    v20 = 0;
    v273 = -12780;
    goto LABEL_26;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1278226536 && CVPixelBufferGetPixelFormatType(a3) != 1751411059)
  {
    sub_2957650B4();
    goto LABEL_46;
  }

  if (CVPixelBufferGetPixelFormatType(a4) != 1380411457)
  {
    sub_29576512C();
    goto LABEL_46;
  }

  if (a5 <= 0.0)
  {
    sub_2957656CC();
    goto LABEL_46;
  }

  if (*&v276 < 0.0 || *&v276 > 1.0)
  {
    sub_295765654();
    goto LABEL_46;
  }

  if (*(&v276 + 1) < 0.0 || *(&v276 + 1) > 1.0)
  {
    sub_2957655DC();
    goto LABEL_46;
  }

  if ((CVPixelBufferGetWidth(a3) & 3) != 0)
  {
    sub_2957651A4();
    goto LABEL_46;
  }

  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v21 = objc_msgSend_commandQueue(self->_metalContext, v12, v13, v14, v15, v16, v17, v18, v19);
    v20 = objc_msgSend_commandBuffer(v21, v22, v23, v24, v25, v26, v27, v28, v29);

    if (!v20)
    {
      sub_295765564();
      v154 = 0;
      v67 = 0;
      a4 = 0;
      v36 = 0;
LABEL_37:
      v58 = 0;
LABEL_40:
      v273 = -12786;
      goto LABEL_26;
    }
  }

  metalContext = self->_metalContext;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v36 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(metalContext, v33, a3, 25, 1, 0, v34, v35, *&Width, Height);
  if (!v36)
  {
    sub_2957654EC();
    v154 = 0;
    v67 = 0;
    a4 = 0;
    goto LABEL_37;
  }

  v37 = self->_metalContext;
  v38 = CVPixelBufferGetWidth(a4);
  v39 = CVPixelBufferGetHeight(a4);
  a4 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v37, v40, a4, 115, 1, 0, v41, v42, *&v38, v39);
  if (!a4)
  {
    sub_295765474();
    v154 = 0;
    v67 = 0;
    goto LABEL_37;
  }

  v58 = objc_msgSend_computeCommandEncoder(v20, v43, v44, v45, v46, v47, v48, v49, v50);
  if (!v58)
  {
    sub_2957653FC();
    v154 = 0;
    v67 = 0;
    goto LABEL_40;
  }

  v60 = objc_msgSend_device(self->_metalContext, v51, v52, v53, v54, v55, v56, v57, v59);
  v67 = objc_msgSend_newBufferWithLength_options_(v60, v61, 4100, 0, v62, v63, v64, v65, v66);

  if (!v67)
  {
    sub_295765384();
    v154 = 0;
    goto LABEL_40;
  }

  v68 = v67;
  v77 = objc_msgSend_contents(v68, v69, v70, v71, v72, v73, v74, v75, v76);
  bzero(v77, 0x1004uLL);
  if (objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[0], v78, v79, v80, v81, v82, v83, v84, v85) <= 0x3FF)
  {
    sub_29576530C();
    v154 = 0;
    v273 = -12782;
    goto LABEL_26;
  }

  v275 = v20;
  v94 = v11;
  v95 = ((objc_msgSend_width(v36, v86, v87, v88, v89, v90, v91, v92, v93) >> 1) + 31) >> 5;
  v104 = ((objc_msgSend_height(v36, v96, v97, v98, v99, v100, v101, v102, v103) >> 1) + 31) >> 5;
  objc_msgSend_setComputePipelineState_(v58, v105, self->_pipelineStates[0], v106, v107, v108, v109, v110, v111);
  objc_msgSend_setTexture_atIndex_(v58, v112, v36, 0, v113, v114, v115, v116, v117);
  objc_msgSend_setTexture_atIndex_(v58, v118, a4, 1, v119, v120, v121, v122, v123);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v124, v67, 0, 0, v125, v126, v127, v128);
  objc_msgSend_setBytes_length_atIndex_(v58, v129, &v281, 4, 1, v130, v131, v132, v133);
  v279.i64[0] = v95;
  v279.i64[1] = v104;
  v280 = 1;
  v277 = vdupq_n_s64(0x20uLL);
  v278 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v134, &v279, &v277, v135, v136, v137, v138, *v277.i32);
  v147 = objc_msgSend_device(self->_metalContext, v139, v140, v141, v142, v143, v144, v145, v146);
  v154 = objc_msgSend_newBufferWithLength_options_(v147, v148, 8, 0, v149, v150, v151, v152, v153);

  if (!v154)
  {
    sub_295765294();
LABEL_44:
    v273 = -12786;
    goto LABEL_24;
  }

  v155 = v154;
  *objc_msgSend_contents(v155, v156, v157, v158, v159, v160, v161, v162, v163) = v276;
  objc_msgSend_setComputePipelineState_(v58, v164, self->_pipelineStates[1], v165, v166, v167, v168, v169, *&v276);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v170, v67, 0, 0, v171, v172, v173, v174);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v175, v154, 0, 1, v176, v177, v178, v179);
  objc_msgSend_setBytes_length_atIndex_(v58, v180, &v281, 4, 2, v181, v182, v183, v184);
  v279 = vdupq_n_s64(1uLL);
  v280 = 1;
  v277 = v279;
  v278 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v185, &v279, &v277, v186, v187, v188, v189, *v279.i32);
  v190 = self->_metalContext;
  v191 = vcvts_n_f32_u64(CVPixelBufferGetWidth(a3), 2uLL);
  v192 = CVPixelBufferGetHeight(a3);
  v196 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v190, v193, a3, 115, 3, 0, v194, v195, *&v191, v192);

  if (!v196)
  {
    sub_29576521C();
    v36 = 0;
    goto LABEL_44;
  }

  objc_msgSend_setComputePipelineState_(v58, v197, self->_pipelineStates[2], v198, v199, v200, v201, v202, v203);
  objc_msgSend_setTexture_atIndex_(v58, v204, v196, 0, v205, v206, v207, v208, v209);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v210, v154, 0, 0, v211, v212, v213, v214);
  v223 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[2], v215, v216, v217, v218, v219, v220, v221, v222);
  v232 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[2], v224, v225, v226, v227, v228, v229, v230, v231) / v223;
  v241 = objc_msgSend_width(v196, v233, v234, v235, v236, v237, v238, v239, v240);
  v250 = objc_msgSend_height(v196, v242, v243, v244, v245, v246, v247, v248, v249);
  v279.i64[0] = v241;
  v279.i64[1] = v250;
  v280 = 1;
  v277.i64[0] = v223;
  v277.i64[1] = v232;
  v278 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v58, v251, &v279, &v277, v252, v253, v254, v255, v256);
  objc_msgSend_endEncoding(v58, v257, v258, v259, v260, v261, v262, v263, v264);
  v11 = v94;
  if (!v94)
  {
    v20 = v275;
    objc_msgSend_commit(v275, v265, v266, v267, v268, v269, v270, v271, v272);
    v273 = 0;
    v36 = v196;
    goto LABEL_26;
  }

  v273 = 0;
  v36 = v196;
LABEL_24:
  v20 = v275;
LABEL_26:

  return v273;
}

- (int)_initShaders
{
  v8 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, a2, @"DisparityHistogramKernel", 0, v2, v3, v4, v5, v6);
  v9 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v8;

  if (self->_pipelineStates[0])
  {
    v16 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v10, @"DisparityComputeClampingValues", 0, v11, v12, v13, v14, v15);
    v17 = self->_pipelineStates[1];
    self->_pipelineStates[1] = v16;

    if (self->_pipelineStates[1])
    {
      v24 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v18, @"DisparityClampingKernel", 0, v19, v20, v21, v22, v23);
      v25 = self->_pipelineStates[2];
      self->_pipelineStates[2] = v24;

      if (self->_pipelineStates[2])
      {
        return 0;
      }

      else
      {
        sub_295765834(&v27);
        return v27;
      }
    }

    else
    {
      sub_2957658E4(&v28);
      return v28;
    }
  }

  else
  {
    sub_295765994(&v29);
    return v29;
  }
}

@end