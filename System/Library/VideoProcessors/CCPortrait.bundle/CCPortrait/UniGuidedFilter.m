@interface UniGuidedFilter
- (UniGuidedFilter)init;
- (UniGuidedFilter)initWithDevice:(id)a3;
- (id)_combineRGB:(id)a3 weights:(id)a4 tmpRGBA:(id)a5 rgbWeight:(float)a6 buffer:(id)a7;
- (id)_identifyGPU:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)outputImage:(id)a3;
- (id)run:(id)a3;
@end

@implementation UniGuidedFilter

- (UniGuidedFilter)init
{
  v3.receiver = self;
  v3.super_class = UniGuidedFilter;
  return [(UniKernel *)&v3 init];
}

- (UniGuidedFilter)initWithDevice:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = UniGuidedFilter;
  v5 = [(UniKernel *)&v29 init];
  v7 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_msgSend_setDevice_(v5, v6, v4);
  if (qword_2A18BA390 != -1)
  {
    sub_2956CD9A4();
  }

  v8 = v7[9];
  v7[9] = 0;

  v9 = qword_2A18BA2E8;
  objc_sync_enter(v9);
  v11 = objc_msgSend_objectForKey_(qword_2A18BA2E8, v10, v4);
  v12 = v7[9];
  v7[9] = v11;

  objc_sync_exit(v9);
  if (v7[9])
  {
    goto LABEL_5;
  }

  v15 = MEMORY[0x29EDB9F48];
  v16 = objc_opt_class();
  v18 = objc_msgSend_bundleForClass_(v15, v17, v16);
  if (!v18)
  {
    v28 = uni_logger_api();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_2956CD9CC(v7, v28);
    }

    goto LABEL_13;
  }

  v19 = v18;
  v20 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v20, v21, v19, 0);
  v24 = objc_msgSend_computePipelineStateFor_constants_(inited, v23, @"_combineRGBAndAlpha", 0);
  v25 = v7[9];
  v7[9] = v24;

  v26 = qword_2A18BA2E8;
  objc_sync_enter(v26);
  objc_msgSend_setObject_forKey_(qword_2A18BA2E8, v27, v7[9], v4);
  objc_sync_exit(v26);

  if (!v7[9])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_6;
  }

LABEL_5:
  v13 = v7;
LABEL_6:

  return v13;
}

- (id)_combineRGB:(id)a3 weights:(id)a4 tmpRGBA:(id)a5 rgbWeight:(float)a6 buffer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v51 = a6;
  v15 = a7;
  if (!v12)
  {
    sub_2956CDAB0();
  }

  if (!v13)
  {
    sub_2956CDA84();
  }

  v16 = v15;
  v17 = v14;
  v20 = v17;
  if (!v17 || (v21 = v17, (objc_msgSend_conformsToProtocol_(v17, v18, &unk_2A1CA0A70) & 1) == 0))
  {
    v22 = objc_msgSend_pixelFormat(v12, v18, v19);
    v21 = createSimilarTexture(v13, v22);

    if (!v21)
    {
      sub_2956CDA58();
    }
  }

  v23 = objc_msgSend_computeCommandEncoder(v16, v18, v19);
  objc_msgSend_setComputePipelineState_(v23, v24, self->combineRGBA);
  objc_msgSend_setTexture_atIndex_(v23, v25, v12, 0);
  objc_msgSend_setTexture_atIndex_(v23, v26, v13, 1);
  objc_msgSend_setTexture_atIndex_(v23, v27, v21, 2);
  objc_msgSend_setBytes_length_atIndex_(v23, v28, &v51, 4, 0);
  v48 = v12;
  v31 = objc_msgSend_width(v13, v29, v30);
  v34 = objc_msgSend_height(v13, v32, v33);
  v37 = objc_msgSend_threadExecutionWidth(self->combineRGBA, v35, v36);
  v40 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->combineRGBA, v38, v39);
  v43 = objc_msgSend_threadExecutionWidth(self->combineRGBA, v41, v42);
  v50[0] = v31;
  v50[1] = v34;
  v50[2] = 1;
  v49[0] = v37;
  v49[1] = v40 / v43;
  v49[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v23, v44, v50, v49);
  objc_msgSend_endEncoding(v23, v45, v46);

  return v21;
}

- (id)run:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_inputs(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"source");
  v11 = objc_msgSend__mtlTextureForImage_(UniKernel, v10, v9);

  v14 = objc_msgSend_inputs(self, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"guidance");
  v18 = objc_msgSend__mtlTextureForImage_(UniKernel, v17, v16);

  v21 = objc_msgSend_inputs(self, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"weights");
  v25 = objc_msgSend__mtlTextureForImage_(UniKernel, v24, v23);

  v28 = objc_msgSend_inputs(self, v26, v27);
  v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"destinationCoefficients");
  v32 = objc_msgSend__mtlTextureForImage_(UniKernel, v31, v30);

  v35 = objc_msgSend_inputs(self, v33, v34);
  v37 = objc_msgSend_objectForKeyedSubscript_(v35, v36, @"tmpRGBA");
  v149 = objc_msgSend__mtlTextureForImage_(UniKernel, v38, v37);

  v41 = objc_msgSend_inputs(self, v39, v40);
  v45 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"rgbWeight");
  if (v45)
  {
    v46 = objc_msgSend_inputs(self, v43, v44);
    v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, @"rgbWeight");
    objc_msgSend_floatValue(v48, v49, v50);
    v52 = v51;
  }

  else
  {
    v52 = 1.0;
  }

  if (!v11)
  {
    sub_2956CDBB8();
  }

  if (!v18)
  {
    sub_2956CDB8C();
  }

  if (!v25)
  {
    sub_2956CDB60();
  }

  if (!v32)
  {
    sub_2956CDB34();
  }

  v57 = objc_msgSend_device(self, v53, v54);
  if (v57)
  {
    objc_msgSend_device(self, v55, v56);
  }

  else
  {
    objc_msgSend_device(v11, v55, v56);
  }
  v58 = ;

  v143 = v58;
  if (v4)
  {
    v61 = v4;
  }

  else
  {
    v61 = objc_msgSend_newCommandQueue(v58, v59, v60);
  }

  v148 = v32;
  v142 = v61;
  v150 = objc_msgSend_commandBuffer(v61, v62, v63);
  objc_msgSend_setLabel_(v150, v64, @"MPSImageSpatioTemporalGuidedFilter");
  v67 = objc_msgSend_inputs(self, v65, v66);
  v71 = objc_msgSend_objectForKeyedSubscript_(v67, v68, @"subsampleFactor");
  if (v71)
  {
    objc_msgSend_inputs(self, v69, v70);
    v73 = v72 = v25;
    v75 = objc_msgSend_objectForKeyedSubscript_(v73, v74, @"subsampleFactor");
    v144 = objc_msgSend_unsignedIntegerValue(v75, v76, v77);

    v25 = v72;
  }

  else
  {
    v144 = 8;
  }

  *&v78 = v52;
  v147 = objc_msgSend__combineRGB_weights_tmpRGBA_rgbWeight_buffer_(self, v79, v18, v25, v149, v150, v78);
  if (!v147)
  {
    sub_2956CDB08();
  }

  v140 = v25;
  v141 = v18;
  v82 = MEMORY[0x29EDB8E00];
  v155[0] = @"MPSImageSpatioTemporalGuidedFilter";
  v154[0] = @"name";
  v154[1] = @"spatialDiameter";
  v83 = objc_msgSend_inputs(self, v80, v81);
  v87 = objc_msgSend_objectForKeyedSubscript_(v83, v84, @"spatialDiameter");
  v146 = v4;
  if (v87)
  {
    v18 = objc_msgSend_inputs(self, v85, v86);
    v89 = objc_msgSend_objectForKeyedSubscript_(v18, v88, @"spatialDiameter");
  }

  else
  {
    v89 = &unk_2A1C94B40;
  }

  v155[1] = v89;
  v154[2] = @"width";
  v90 = MEMORY[0x29EDBA070];
  v91 = objc_msgSend_width(v11, v85, v86);
  v93 = objc_msgSend_numberWithUnsignedInteger_(v90, v92, v91);
  v155[2] = v93;
  v154[3] = @"height";
  v94 = MEMORY[0x29EDBA070];
  v145 = v11;
  v97 = objc_msgSend_height(v11, v95, v96);
  v99 = objc_msgSend_numberWithUnsignedInteger_(v94, v98, v97);
  v155[3] = v99;
  v154[4] = @"subsampleFactor";
  v101 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v100, v144);
  v155[4] = v101;
  v103 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v102, v155, v154, 5);
  v105 = objc_msgSend_dictionaryWithDictionary_(v82, v104, v103);

  if (v87)
  {
  }

  v108 = objc_msgSend_inputs(self, v106, v107);
  v110 = objc_msgSend_objectForKeyedSubscript_(v108, v109, @"epsilon");

  if (v110)
  {
    v113 = objc_msgSend_inputs(self, v111, v112);
    v115 = objc_msgSend_objectForKeyedSubscript_(v113, v114, @"epsilon");
    objc_msgSend_setObject_forKeyedSubscript_(v105, v116, v115, @"epsilon");
  }

  v117 = objc_msgSend_device(v146, v111, v112);
  v119 = objc_msgSend_findKernel_device_(UniDeviceCache, v118, v105, v117);

  objc_msgSend_setLabel_(v119, v120, @"MPSImageSpatioTemporalGuidedFilter");
  if (!v119)
  {
    sub_2956CDADC();
  }

  v122 = v105;
  v153 = v145;
  v123 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v121, &v153, 1);
  v126 = objc_msgSend_inputs(self, v124, v125);
  v130 = objc_msgSend_objectForKeyedSubscript_(v126, v127, @"iterations");
  if (v130)
  {
    v105 = objc_msgSend_inputs(self, v128, v129);
    self = objc_msgSend_objectForKeyedSubscript_(v105, v131, @"iterations");
    v134 = objc_msgSend_unsignedIntegerValue(self, v132, v133);
  }

  else
  {
    v134 = 50;
  }

  v152 = v148;
  v135 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v128, &v152, 1);
  objc_msgSend_encodeToCommandBuffer_sourceTextureArray_guidanceTexture_constraintsTextureArray_numberOfIterations_destinationTextureArray_(v119, v136, v150, v123, v147, 0, v134, v135);

  if (v130)
  {
  }

  v151[0] = v150;
  v151[1] = v148;
  v138 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v137, v151, 2);

  return v138;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = UniGuidedFilter;
  return [(UniKernel *)&v4 copyWithZone:a3];
}

- (id)outputImage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_inputs(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"source");
  v14 = objc_msgSend__ciImageForInput_(v7, v13, v12);

  v17 = objc_msgSend_inputs(v7, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"guidance");
  v21 = objc_msgSend__ciImageForInput_(v7, v20, v19);

  v24 = objc_msgSend_inputs(v7, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"weights");
  v28 = objc_msgSend__ciImageForInput_(v7, v27, v26);

  if (!v14)
  {
    sub_2956CDD8C();
  }

  if (!v21)
  {
    sub_2956CDD60();
  }

  if (!v28)
  {
    sub_2956CDD34();
  }

  objc_msgSend_extent(v21, v29, v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  objc_msgSend_extent(v28, v39, v40);
  v214.origin.x = v41;
  v214.origin.y = v42;
  v214.size.width = v43;
  v214.size.height = v44;
  v213.origin.x = v32;
  v213.origin.y = v34;
  v213.size.width = v36;
  v213.size.height = v38;
  if (!CGRectEqualToRect(v213, v214))
  {
    objc_msgSend_extent(v28, v45, v46);
    v48 = v47;
    objc_msgSend_extent(v21, v49, v50);
    v52 = v48 / v51;
    objc_msgSend_extent(v28, v53, v54);
    v56 = v55;
    objc_msgSend_extent(v21, v57, v58);
    CGAffineTransformMakeScale(&v211, v52, v56 / v59);
    v61 = objc_msgSend_imageByApplyingTransform_highQualityDownsample_(v21, v60, &v211, 0);

    v21 = v61;
  }

  v202 = objc_msgSend__disparityRefinementRGBAGuideKernel(self, v45, v46);
  if (!v202)
  {
    sub_2956CDD08();
  }

  v64 = objc_msgSend_inputs(v7, v62, v63);
  v68 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"rgbWeight");
  if (v68)
  {
    v69 = objc_msgSend_inputs(v7, v66, v67);
    v71 = objc_msgSend_objectForKeyedSubscript_(v69, v70, @"rgbWeight");
  }

  else
  {
    v71 = &unk_2A1C94B58;
  }

  objc_msgSend_extent(v21, v72, v73);
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v210[0] = v21;
  v210[1] = v28;
  v198 = v71;
  v199 = v28;
  v210[2] = v71;
  v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v82, v210, 3);
  v208 = *MEMORY[0x29EDB9250];
  v84 = 0x29EDBA000;
  v86 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v85, *MEMORY[0x29EDB91F8]);
  v209 = v86;
  v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v87, &v209, &v208, 1);
  v90 = objc_msgSend_applyWithExtent_arguments_options_(v202, v89, v83, v88, v75, v77, v79, v81);

  if (!v90)
  {
    sub_2956CDCDC();
  }

  v93 = MEMORY[0x29EDB9198];
  objc_msgSend_extent(v14, v91, v92);
  v96 = objc_msgSend_vectorWithCGRect_(v93, v94, v95);
  v207[0] = v96;
  v97 = MEMORY[0x29EDB9198];
  v200 = v90;
  objc_msgSend_extent(v90, v98, v99);
  v102 = objc_msgSend_vectorWithCGRect_(v97, v100, v101);
  v207[1] = v102;
  v201 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v103, v207, 2);

  v106 = objc_msgSend_inputs(v7, v104, v105);
  v110 = objc_msgSend_objectForKeyedSubscript_(v106, v107, @"subsampleFactor");
  if (v110)
  {
    v111 = objc_msgSend_inputs(v7, v108, v109);
    v113 = objc_msgSend_objectForKeyedSubscript_(v111, v112, @"subsampleFactor");
    v116 = objc_msgSend_unsignedIntegerValue(v113, v114, v115);
  }

  else
  {
    v116 = 8;
  }

  v191 = MEMORY[0x29EDB8E00];
  v206[0] = @"MPSImageSpatioTemporalGuidedFilter";
  v205[0] = @"name";
  v205[1] = @"spatialDiameter";
  v195 = objc_msgSend_inputs(v7, v117, v118);
  v194 = objc_msgSend_objectForKeyedSubscript_(v195, v119, @"spatialDiameter");
  if (v194)
  {
    v188 = objc_msgSend_inputs(v7, v120, v121);
    v123 = objc_msgSend_objectForKeyedSubscript_(v188, v122, @"spatialDiameter");
  }

  else
  {
    v123 = &unk_2A1C94B40;
  }

  v190 = v123;
  v206[1] = v123;
  v206[2] = v201;
  v205[2] = @"imageExtents";
  v205[3] = @"epsilon";
  v192 = objc_msgSend_inputs(v7, v120, v121);
  v127 = objc_msgSend_objectForKeyedSubscript_(v192, v124, @"epsilon");
  v197 = v4;
  if (v127)
  {
    v187 = objc_msgSend_inputs(v7, v125, v126);
    v129 = objc_msgSend_objectForKeyedSubscript_(v187, v128, @"epsilon");
  }

  else
  {
    v129 = &unk_2A1C95580;
  }

  v189 = v129;
  v206[3] = v129;
  v205[4] = @"subsampleFactor";
  v130 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v125, v116);
  v206[4] = v130;
  v205[5] = @"width";
  v131 = MEMORY[0x29EDBA070];
  objc_msgSend_extent(v14, v132, v133);
  v137 = objc_msgSend_numberWithDouble_(v131, v134, v135, v136);
  v206[5] = v137;
  v205[6] = @"height";
  v138 = MEMORY[0x29EDBA070];
  v196 = v14;
  objc_msgSend_extent(v14, v139, v140);
  v144 = objc_msgSend_numberWithDouble_(v138, v141, v142, v143);
  v206[6] = v144;
  v205[7] = @"iterations";
  v147 = objc_msgSend_inputs(v7, v145, v146);
  v151 = objc_msgSend_objectForKeyedSubscript_(v147, v148, @"iterations");
  v193 = v7;
  if (v151)
  {
    v84 = objc_msgSend_inputs(v7, v149, v150);
    v153 = objc_msgSend_objectForKeyedSubscript_(v84, v152, @"iterations");
  }

  else
  {
    v153 = &unk_2A1C94B70;
  }

  v206[7] = v153;
  v154 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v149, v206, v205, 8);
  v156 = objc_msgSend_dictionaryWithDictionary_(v191, v155, v154);

  if (v151)
  {
  }

  if (v127)
  {
  }

  v157 = v200;
  if (v194)
  {
  }

  objc_msgSend_extent(v200, v158, v159);
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v167 = v166;
  v204[0] = v196;
  v204[1] = v200;
  v169 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v168, v204, 2);
  v203 = 0;
  v171 = objc_msgSend_applyWithExtent_inputs_arguments_error_(GuidedFilterProcessor, v170, v169, v156, &v203, v161, v163, v165, v167);
  v172 = v203;

  if (v172)
  {
    v174 = uni_logger_api();
    if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
    {
      sub_2956CDBE4(v172, v174);
    }

    v175 = 0;
  }

  else
  {
    if (!v171)
    {
      sub_2956CDCB0();
    }

    v175 = objc_msgSend_imageWithCIImage_(UniImage, v173, v171);
    v178 = objc_msgSend_inputs(v193, v176, v177);
    v180 = objc_msgSend_objectForKeyedSubscript_(v178, v179, @"destinationCoefficients");
    objc_msgSend_setTexture_(v175, v181, v180);

    v184 = objc_msgSend_texture(v175, v182, v183);
    if (!v184)
    {
      sub_2956CDC84();
    }

    objc_msgSend_setKernel_(v175, v185, v193);
    v157 = v200;
  }

  return v175;
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