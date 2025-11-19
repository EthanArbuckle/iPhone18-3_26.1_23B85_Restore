@interface UniHighlightRecovery
+ (BOOL)runHighlightRecoveryWithInputTexture:(id)a3 outputTexture:(id)a4 temporaryTexture:(id)a5 dynamicParams:(id)a6 iterations:(int)a7 tileSize:(int)a8 scanKernel:(id)a9 diffuseKernel:(id)a10 copyBackKernel:(id)a11 copyKernel:(id)a12 commandBuffer:(id)a13 constants:(id)a14 forCoreImage:(BOOL)a15;
+ (id)generateCIImage:(id)a3;
+ (id)processList:(id)a3 tileSize:(int)a4;
- (UniHighlightRecovery)init;
- (UniHighlightRecovery)initWithDevice:(id)a3;
- (UniHighlightRecovery)initWithDevice:(id)a3 library:(id)a4 constants:(id)a5;
- (id)_identifyGPU:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)inputNameArray;
- (id)outputImage:(id)a3;
- (id)outputNameArray;
- (id)run:(id)a3;
@end

@implementation UniHighlightRecovery

- (UniHighlightRecovery)init
{
  v3.receiver = self;
  v3.super_class = UniHighlightRecovery;
  return [(UniKernel *)&v3 init];
}

- (UniHighlightRecovery)initWithDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UniHighlightRecovery;
  v5 = [(UniKernel *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, v4);
  }

  return v7;
}

- (UniHighlightRecovery)initWithDevice:(id)a3 library:(id)a4 constants:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_initWithDevice_(self, v10, a3);
  if (v12)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(v9, v11, @"SparseRenderer::kXhlrbTileSize");
    v16 = objc_msgSend_intValue(v13, v14, v15);
    objc_msgSend_setHlrTileSize_(v12, v17, v16);

    v19 = objc_msgSend_objectForKeyedSubscript_(v9, v18, @"SparseRenderer::kXhlrbTileSize", @"SparseRenderer::kXhlrbTileSize");
    v49 = v19;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v20, &v49, &v48, 1);

    v23 = objc_msgSend_findComputeKernel_library_constants_(UniDeviceCache, v22, @"sparserendering_xhlrb_scan", v8, v9);
    v26 = objc_msgSend_mk(v23, v24, v25);
    objc_msgSend_setHlrScanKernel_(v12, v27, v26);

    v29 = objc_msgSend_findComputeKernel_library_constants_(UniDeviceCache, v28, @"sparserendering_xhlrb_diffuse", v8, v9);
    v32 = objc_msgSend_mk(v29, v30, v31);
    objc_msgSend_setHlrDiffuseKernel_(v12, v33, v32);

    v35 = objc_msgSend_findComputeKernel_library_constants_(UniDeviceCache, v34, @"sparserendering_xhlrb_copy_back", v8, v21);
    v38 = objc_msgSend_mk(v35, v36, v37);
    objc_msgSend_setHlrCopyBackKernel_(v12, v39, v38);

    v41 = objc_msgSend_findComputeKernel_library_constants_(UniDeviceCache, v40, @"plain_or_sRGB_copy", v8, 0);
    v44 = objc_msgSend_mk(v41, v42, v43);
    objc_msgSend_setHlrCopyKernel_(v12, v45, v44);

    objc_msgSend_setHlrConstants_(v12, v46, v9);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30.receiver = self;
  v30.super_class = UniHighlightRecovery;
  v6 = [(UniKernel *)&v30 copyWithZone:a3];
  if (v6)
  {
    v7 = objc_msgSend_hlrScanKernel(self, v4, v5);
    objc_msgSend_setHlrScanKernel_(v6, v8, v7);

    v11 = objc_msgSend_hlrDiffuseKernel(self, v9, v10);
    objc_msgSend_setHlrDiffuseKernel_(v6, v12, v11);

    v15 = objc_msgSend_hlrCopyKernel(self, v13, v14);
    objc_msgSend_setHlrCopyKernel_(v6, v16, v15);

    v19 = objc_msgSend_hlrCopyBackKernel(self, v17, v18);
    objc_msgSend_setHlrCopyBackKernel_(v6, v20, v19);

    v23 = objc_msgSend_hlrTileSize(self, v21, v22);
    objc_msgSend_setHlrTileSize_(v6, v24, v23);
    v27 = objc_msgSend_hlrConstants(self, v25, v26);
    objc_msgSend_setHlrConstants_(v6, v28, v27);
  }

  return v6;
}

+ (id)processList:(id)a3 tileSize:(int)a4
{
  v5 = a3;
  v8 = objc_msgSend_width(v5, v6, v7);
  v11 = 2 * (v8 + a4 - 1) / a4 * ((objc_msgSend_height(v5, v9, v10) + a4 - 1) / a4) + 4;
  v12 = 4 * v11;
  v13 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
  v15 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v14, v13, v12);
  free(v13);
  v18 = objc_msgSend_device(v5, v16, v17);

  v20 = objc_msgSend_bufferFromData_device_(UniDeviceCache, v19, v15, v18);

  objc_msgSend_setLabel_(v20, v21, @"XHLRB ProcList");

  return v20;
}

- (id)inputNameArray
{
  v4 = *MEMORY[0x29EDB9238];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, &v4, 1);

  return v2;
}

- (id)outputNameArray
{
  v4 = *MEMORY[0x29EDB9258];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, &v4, 1);

  return v2;
}

+ (BOOL)runHighlightRecoveryWithInputTexture:(id)a3 outputTexture:(id)a4 temporaryTexture:(id)a5 dynamicParams:(id)a6 iterations:(int)a7 tileSize:(int)a8 scanKernel:(id)a9 diffuseKernel:(id)a10 copyBackKernel:(id)a11 copyKernel:(id)a12 commandBuffer:(id)a13 constants:(id)a14 forCoreImage:(BOOL)a15
{
  v195 = a3;
  v19 = a4;
  v20 = a5;
  v197 = a6;
  v21 = a9;
  v202 = a10;
  v201 = a11;
  v199 = a12;
  v200 = a13;
  v22 = a14;
  v23 = v195;
  v24 = v19;
  v25 = v23;
  v26 = v24;
  v29 = objc_msgSend_device(v25, v27, v28);
  v196 = objc_msgSend_supportsNonUniformThreadgroupSize(v29, v30, v31);

  v34 = v25;
  if (a15)
  {
    v35 = objc_msgSend_blitCommandEncoder(v200, v32, v33);
    objc_msgSend_setLabel_(v200, v36, @"XHLRBComputeBlit");
    if (!v20)
    {
      sub_2956CE03C();
    }

    v39 = objc_msgSend_width(v25, v37, v38);
    if (v39 > objc_msgSend_width(v20, v40, v41))
    {
      sub_2956CE010();
    }

    v44 = objc_msgSend_height(v25, v42, v43);
    if (v44 > objc_msgSend_height(v20, v45, v46))
    {
      sub_2956CDFE4();
    }

    v49 = objc_msgSend_pixelFormat(v25, v47, v48);
    if (v49 != objc_msgSend_pixelFormat(v20, v50, v51))
    {
      sub_2956CDF34();
    }

    v214 = 0uLL;
    *&v215 = 0;
    *&v209 = objc_msgSend_width(v25, v52, v53);
    *(&v209 + 1) = objc_msgSend_height(v25, v54, v55);
    *&v210 = 1;
    v218 = 0;
    v219 = 0;
    v220 = 0;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v35, v56, v25, 0, 0, &v214, &v209, v20, 0, 0, &v218);
    objc_msgSend_endEncoding(v35, v57, v58);
    v59 = v20;

    v34 = v59;
  }

  v217 = 0;
  v215 = 0u;
  v216 = 0u;
  v214 = 0u;
  v60 = objc_msgSend_device(v34, v32, v33);
  objc_msgSend_pixelFormat(v34, v61, v62);
  MTLPixelFormatGetInfoForDevice();

  if ((WORD4(v214) & 0x400) != 0)
  {
    sub_2956CDF60();
  }

  v66 = (WORD4(v214) & 0x800) == 0 && *(&v215 + 1) == 32;
  v191 = v66;
  v213 = v66;
  v212 = 0;
  v210 = 0u;
  v211 = 0u;
  v209 = 0u;
  v67 = objc_msgSend_device(v26, v63, v64);
  objc_msgSend_pixelFormat(v26, v68, v69);
  MTLPixelFormatGetInfoForDevice();

  if ((WORD4(v209) & 0x400) != 0)
  {
    sub_2956CDF8C();
  }

  v194 = v20;
  v189 = v22;
  v72 = (WORD4(v209) & 0x800) == 0 && *(&v215 + 1) == 32;
  v188 = v72;
  v208 = v72;
  v73 = a8;
  v74 = objc_msgSend_processList_tileSize_(UniHighlightRecovery, v70, v25, a8);
  v77 = objc_msgSend_maxTotalThreadsPerThreadgroup(v21, v75, v76);
  v80 = objc_msgSend_maxTotalThreadsPerThreadgroup(v202, v78, v79);
  v83 = objc_msgSend_maxTotalThreadsPerThreadgroup(v201, v81, v82);
  v84 = log2f(fminf(v77, fminf(v80, v83)));
  v87 = exp2f(floorf(v84)) / a8;
  if (v87 >= a8 >> 1)
  {
    v88 = a8 >> 1;
  }

  else
  {
    v88 = v87;
  }

  v89 = objc_msgSend_width(v25, v85, v86);
  v190 = v25;
  v198 = v21;
  v92 = objc_msgSend_height(v25, v90, v91);
  memset(v207, 0, sizeof(v207));
  if (objc_msgSend_length(v197, v93, v94) != 22)
  {
    sub_2956CDFB8();
  }

  v96 = a8 - 1;
  v187 = (v96 + v92) / a8;
  v97 = (v96 + v89) / a8;
  objc_msgSend_getBytes_length_(v197, v95, v207, 22);
  v100 = objc_msgSend_blitCommandEncoder(v200, v98, v99);
  objc_msgSend_setLabel_(v100, v101, @"SR XHLRB Init");
  v104 = objc_msgSend_length(v74, v102, v103);
  objc_msgSend_fillBuffer_range_value_(v100, v105, v74, 0, v104, 0);
  v193 = v100;
  objc_msgSend_endEncoding(v100, v106, v107);
  v110 = objc_msgSend_computeCommandEncoder(v200, v108, v109);
  objc_msgSend_setLabel_(v110, v111, @"SS XHLRB Compute");
  objc_msgSend_setComputePipelineState_(v110, v112, v198);
  objc_msgSend_setBytes_length_atIndex_(v110, v113, v207, 22, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v110, v114, v74, 0, 1);
  objc_msgSend_setTexture_atIndex_(v110, v115, v34, 0);
  v218 = v97;
  v219 = v187;
  v220 = 1;
  v204 = v88;
  v205 = v73;
  v206 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v110, v116, &v218, &v204);
  v203 = v191 & v188;
  objc_msgSend_setBytes_length_atIndex_(v110, v117, &v203, 1, 30);
  if (a7 >= 1)
  {
    do
    {
      objc_msgSend_setComputePipelineState_(v110, v118, v202);
      objc_msgSend_setBytes_length_atIndex_(v110, v120, v207, 22, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v110, v121, v74, 0, 1);
      objc_msgSend_setTexture_atIndex_(v110, v122, v34, 0);
      objc_msgSend_setTexture_atIndex_(v110, v123, v26, 1);
      if (v191 != v188)
      {
        objc_msgSend_setBytes_length_atIndex_(v110, v124, &v208, 1, 30);
        v218 = v88;
        v219 = v73;
        v220 = 1;
        objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v110, v125, v74, 0, &v218);
        objc_msgSend_setComputePipelineState_(v110, v126, v201);
        objc_msgSend_setBuffer_offset_atIndex_(v110, v127, v74, 0, 0);
        objc_msgSend_setTexture_atIndex_(v110, v128, v26, 0);
        objc_msgSend_setTexture_atIndex_(v110, v129, v34, 1);
        objc_msgSend_setBytes_length_atIndex_(v110, v130, &v213, 1, 30);
      }

      else
      {
        v218 = v88;
        v219 = v73;
        v220 = 1;
        objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v110, v124, v74, 0, &v218);
        objc_msgSend_setComputePipelineState_(v110, v132, v201);
        objc_msgSend_setBuffer_offset_atIndex_(v110, v133, v74, 0, 0);
        objc_msgSend_setTexture_atIndex_(v110, v134, v26, 0);
        objc_msgSend_setTexture_atIndex_(v110, v135, v34, 1);
      }

      v218 = v88;
      v219 = v73;
      v220 = 1;
      objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v110, v131, v74, 0, &v218);
      --a7;
    }

    while (a7);
  }

  v136 = objc_msgSend_threadExecutionWidth(v199, v118, v119);
  v139 = objc_msgSend_maxTotalThreadsPerThreadgroup(v199, v137, v138) / v136;
  objc_msgSend_setComputePipelineState_(v110, v140, v199);
  objc_msgSend_setTexture_atIndex_(v110, v141, v34, 0);
  objc_msgSend_setTexture_atIndex_(v110, v142, v26, 1);
  objc_msgSend_setBytes_length_atIndex_(v110, v143, &v208, 1, 0);
  if (v196)
  {
    v146 = objc_msgSend_width(v34, v144, v145);
    v149 = objc_msgSend_height(v34, v147, v148);
    v218 = v146;
    v219 = v149;
    v220 = 1;
    v204 = v136;
    v205 = v139;
    v206 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v110, v150, &v218, &v204);
  }

  else
  {
    v153 = objc_msgSend_threadExecutionWidth(v199, v144, v145);
    v156 = objc_msgSend_maxTotalThreadsPerThreadgroup(v199, v154, v155) / v153;
    v159 = (v153 + objc_msgSend_width(v34, v157, v158) - 1) / v153;
    v162 = objc_msgSend_height(v34, v160, v161);
    v218 = v159;
    v219 = (v156 + v162 - 1) / v156;
    v220 = 1;
    v204 = v153;
    v205 = v156;
    v206 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v110, v163, &v218, &v204);
  }

  v164 = v194;
  v165 = v198;
  if (!a15)
  {
    objc_msgSend_setTexture_atIndex_(v110, v151, v26, 0);
    objc_msgSend_setTexture_atIndex_(v110, v166, v34, 1);
    v203 = 0;
    objc_msgSend_setBytes_length_atIndex_(v110, v167, &v203, 1, 0);
    if (v196)
    {
      v170 = objc_msgSend_width(v34, v168, v169);
      v173 = objc_msgSend_height(v34, v171, v172);
      v218 = v170;
      v219 = v173;
      v165 = v198;
      v220 = 1;
      v204 = v136;
      v205 = v139;
      v206 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v110, v174, &v218, &v204);
    }

    else
    {
      v175 = objc_msgSend_threadExecutionWidth(v199, v168, v169);
      v178 = objc_msgSend_maxTotalThreadsPerThreadgroup(v199, v176, v177) / v175;
      v181 = (v175 + objc_msgSend_width(v34, v179, v180) - 1) / v175;
      v184 = objc_msgSend_height(v34, v182, v183);
      v218 = v181;
      v219 = (v178 + v184 - 1) / v178;
      v164 = v194;
      v220 = 1;
      v204 = v175;
      v205 = v178;
      v206 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v110, v185, &v218, &v204);
    }
  }

  objc_msgSend_endEncoding(v110, v151, v152);

  return 1;
}

- (id)run:(id)a3
{
  v4 = a3;
  v65 = v4;
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v10 = objc_msgSend_device(self, v5, v6);
    v9 = objc_msgSend_newCommandQueue(v10, v11, v12);
  }

  v63 = v9;
  v13 = objc_msgSend_inputs(self, v7, v8);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, *MEMORY[0x29EDB9238]);
  v17 = objc_msgSend__mtlTextureForImage_(UniKernel, v16, v15);

  v20 = objc_msgSend_inputs(self, v18, v19);
  v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, *MEMORY[0x29EDB9258]);
  v24 = objc_msgSend__mtlTextureForImage_(UniKernel, v23, v22);

  v27 = objc_msgSend_commandBuffer(v9, v25, v26);
  objc_msgSend_setLabel_(v27, v28, @"SR XHLRB");
  v64 = objc_msgSend_inputs(self, v29, v30);
  v60 = objc_msgSend_objectForKeyedSubscript_(v64, v31, @"dynamic_params");
  v62 = objc_msgSend_inputs(self, v32, v33);
  v61 = objc_msgSend_objectForKeyedSubscript_(v62, v34, @"inputIterations");
  v59 = objc_msgSend_intValue(v61, v35, v36);
  v39 = objc_msgSend_hlrTileSize(self, v37, v38);
  v42 = objc_msgSend_hlrScanKernel(self, v40, v41);
  v45 = objc_msgSend_hlrDiffuseKernel(self, v43, v44);
  v48 = objc_msgSend_hlrCopyBackKernel(self, v46, v47);
  v51 = objc_msgSend_hlrCopyKernel(self, v49, v50);
  v54 = objc_msgSend_hlrConstants(self, v52, v53);
  objc_msgSend_runHighlightRecoveryWithInputTexture_outputTexture_temporaryTexture_dynamicParams_iterations_tileSize_scanKernel_diffuseKernel_copyBackKernel_copyKernel_commandBuffer_constants_forCoreImage_(UniHighlightRecovery, v55, v17, v24, 0, v60, v59, v39, v42, v45, v48, v51, v27, v54, 0);

  v66[0] = v27;
  v66[1] = v24;
  v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v56, v66, 2);

  return v57;
}

+ (id)generateCIImage:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_inputs(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x29EDB9238]);
  v10 = objc_msgSend__ciImageForInput_(v3, v9, v8);

  if (v10)
  {
    objc_msgSend_extent(v10, v11, v12);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v23 = objc_msgSend_imageByClampingToExtent(v10, v21, v22);

    v70[0] = @"inputScale";
    v69 = objc_msgSend_inputs(v3, v24, v25);
    v68 = objc_msgSend_objectForKeyedSubscript_(v69, v26, *MEMORY[0x29EDB9248]);
    v71[0] = v68;
    v70[1] = @"inputIterations";
    v67 = objc_msgSend_inputs(v3, v27, v28);
    v66 = objc_msgSend_objectForKeyedSubscript_(v67, v29, @"inputIterations");
    v71[1] = v66;
    v70[2] = @"inputDynamicParams";
    v65 = objc_msgSend_inputs(v3, v30, v31);
    v64 = objc_msgSend_objectForKeyedSubscript_(v65, v32, @"dynamic_params");
    v71[2] = v64;
    v70[3] = @"inputTileSize";
    v33 = MEMORY[0x29EDBA070];
    v36 = objc_msgSend_hlrTileSize(v3, v34, v35);
    v38 = objc_msgSend_numberWithInt_(v33, v37, v36);
    v71[3] = v38;
    v70[4] = @"inputScanKernel";
    v41 = objc_msgSend_hlrScanKernel(v3, v39, v40);
    v71[4] = v41;
    v70[5] = @"inputDiffuseKernel";
    v44 = objc_msgSend_hlrDiffuseKernel(v3, v42, v43);
    v71[5] = v44;
    v70[6] = @"inputCopyBackKernel";
    v47 = objc_msgSend_hlrCopyBackKernel(v3, v45, v46);
    v71[6] = v47;
    v70[7] = @"inputCopyKernel";
    v50 = objc_msgSend_hlrCopyKernel(v3, v48, v49);
    v71[7] = v50;
    v70[8] = @"inputConstants";
    v53 = objc_msgSend_hlrConstants(v3, v51, v52);
    v71[8] = v53;
    v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v54, v71, v70, 9);
    v63 = v23;
    v57 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v23, v56, @"SDOFHighlightRecovery", v55);
    v60 = objc_msgSend_imageByCroppingToRect_(v57, v58, v59, v14, v16, v18, v20);

    if (!v60)
    {
      sub_2956CE068();
    }

    v10 = objc_msgSend_imageWithCIImage_(UniImage, v61, v60);
  }

  return v10;
}

- (id)outputImage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_copy(self, v5, v6);
  v8 = objc_opt_class();
  v10 = objc_msgSend_generateCIImage_(v8, v9, v7);
  if (v10)
  {
    v12 = v10;
    objc_msgSend_setKernel_(v10, v11, v7);
  }

  else
  {
    v15 = [UniImage alloc];
    v12 = objc_msgSend_initWithKernel_(v15, v16, v7);
  }

  v17 = objc_msgSend_inputs(v7, v13, v14);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, *MEMORY[0x29EDB9258]);
  objc_msgSend_setTexture_(v12, v20, v19);

  v23 = objc_msgSend_texture(v12, v21, v22);
  if (!v23)
  {
    sub_2956CE094();
  }

  return v12;
}

- (id)_identifyGPU:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_name(v3, v4, v5);
  if (objc_msgSend_containsString_(v6, v7, @"Apple"))
  {
    NSSelectorFromString(&cfstr_Architecture.isa);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      v15 = &stru_2A1C8D648;
      goto LABEL_15;
    }

    v6 = objc_msgSend_architecture(v3, v9, v10);
    v13 = objc_msgSend_name(v6, v11, v12);
    v15 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v13, v14, @"applegpu_", &stru_2A1C8D648);
    v18 = objc_msgSend_revision(v6, v16, v17);
    if (objc_msgSend_containsString_(v18, v19, @"A"))
    {
      v21 = 0;
    }

    else if (objc_msgSend_containsString_(v15, v20, @"g16p"))
    {
      v24 = objc_msgSend_revision(v6, v22, v23);
      v21 = objc_msgSend_containsString_(v24, v25, @"B0") ^ 1;
    }

    else
    {
      v21 = 1;
    }

    if ((objc_msgSend_containsString_(v15, v26, @"g17p") & 1) == 0 && (v21 & 1) == 0)
    {
      v29 = MEMORY[0x29EDBA0F8];
      v30 = objc_msgSend_revision(v6, v27, v28);
      v33 = objc_msgSend_lowercaseString(v30, v31, v32);
      v35 = objc_msgSend_stringWithFormat_(v29, v34, @"%@_%@", v15, v33);

      v15 = v35;
    }
  }

  else
  {
    v15 = &stru_2A1C8D648;
  }

LABEL_15:

  return v15;
}

@end