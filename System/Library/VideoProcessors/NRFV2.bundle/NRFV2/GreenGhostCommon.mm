@interface GreenGhostCommon
- (GreenGhostCommon)initWithMetalContext:(id)context;
- (SidecarWriter)sidecarWriter;
- (id)functionNameForProgram:(int)program;
- (int)blobDetection:(id)detection output:(id)output params:(BlobTuning)params;
- (int)boxFilter:(id)filter withRadius:(unsigned int)radius output:(id)output;
- (int)brightnessDetectionInput:(id)input output:(id)output params:(BrightnessTuning)params processingROIInfo:(ProcessingROIInfo *)info;
- (int)combineBrightnessMask:(id)mask blobMask:(id)blobMask greenMask:(id)greenMask output:(id)output;
- (int)compileDilateVerticalShaders;
- (int)compileShaders;
- (int)detectionWithLuma:(id)luma croppedLuma:(id)croppedLuma chroma:(id)chroma outputMask:(id)mask params:(DetectionTuning *)params processingROIInfo:(ProcessingROIInfo *)info;
- (int)dilateTexture:(id)texture withNormalizedRadius:(float)radius withThreshold:(id)threshold subtractTexture:(id)subtractTexture output:(id)output;
- (int)downscaleInput:(id)input output:(id)output;
- (int)erodeTexture:(id)texture withNormalizedRadius:(float)radius output:(id)output;
- (int)greenDetectionLuma:(id)luma chroma:(id)chroma output:(id)output params:(GreenTuning)params processingROIInfo:(ProcessingROIInfo *)info;
@end

@implementation GreenGhostCommon

- (id)functionNameForProgram:(int)program
{
  if (program < 0xD)
  {
    return *(&off_29EDDBFD0 + program);
  }

  FigDebugAssert3();
  return 0;
}

- (int)compileDilateVerticalShaders
{
  v4 = objc_opt_new();
  if (v4)
  {
    pipelineStates = self->_pipelineStates;
    v21 = 0;
    while (2)
    {
      v6 = 0;
      v20 = 0;
      do
      {
        if (!v6 || !v21)
        {
          objc_msgSend_setConstantValue_type_atIndex_(v4, v3, &v20, 53, 1);
          objc_msgSend_setConstantValue_type_atIndex_(v4, v7, &v21, 53, 2);
          v8 = v20 + 2 * v21 + 2;
          metal = self->_metal;
          v12 = objc_msgSend_functionNameForProgram_(self, v10, v8, v11);
          v14 = objc_msgSend_computePipelineStateFor_constants_(metal, v13, v12, v4);
          v15 = pipelineStates[v8];
          pipelineStates[v8] = v14;

          if (!pipelineStates[v8])
          {
            sub_295899CC0(&v20, &v22);
            goto LABEL_12;
          }

          v6 = v20;
        }

        v20 = v6 + 1;
      }

      while (v6++ < 1);
      v17 = v21++;
      if (v17 < 1)
      {
        continue;
      }

      break;
    }

    v18 = 0;
  }

  else
  {
    sub_295899D48(&v22);
LABEL_12:
    v18 = v22;
  }

  return v18;
}

- (int)compileShaders
{
  metal = self->_metal;
  v5 = objc_msgSend_functionNameForProgram_(self, a2, 0, v2);
  v7 = objc_msgSend_computePipelineStateFor_constants_(metal, v6, v5, 0);
  v8 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v7;

  if (!self->_pipelineStates[0])
  {
    sub_29589A2F0(&v78);
    return v78;
  }

  v11 = self->_metal;
  v12 = objc_msgSend_functionNameForProgram_(self, v9, 1, v10);
  v14 = objc_msgSend_computePipelineStateFor_constants_(v11, v13, v12, 0);
  v15 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v14;

  if (!self->_pipelineStates[1])
  {
    sub_29589A268(&v78);
    return v78;
  }

  v19 = objc_msgSend_compileDilateVerticalShaders(self, v16, v17, v18);
  if (v19)
  {
    v76 = v19;
    sub_295899DD0();
    return v76;
  }

  v22 = self->_metal;
  v23 = objc_msgSend_functionNameForProgram_(self, v20, 5, v21);
  v25 = objc_msgSend_computePipelineStateFor_constants_(v22, v24, v23, 0);
  v26 = self->_pipelineStates[5];
  self->_pipelineStates[5] = v25;

  if (!self->_pipelineStates[5])
  {
    sub_29589A1E0(&v78);
    return v78;
  }

  v29 = self->_metal;
  v30 = objc_msgSend_functionNameForProgram_(self, v27, 6, v28);
  v32 = objc_msgSend_computePipelineStateFor_constants_(v29, v31, v30, 0);
  v33 = self->_pipelineStates[6];
  self->_pipelineStates[6] = v32;

  if (!self->_pipelineStates[6])
  {
    sub_29589A158(&v78);
    return v78;
  }

  v36 = self->_metal;
  v37 = objc_msgSend_functionNameForProgram_(self, v34, 7, v35);
  v39 = objc_msgSend_computePipelineStateFor_constants_(v36, v38, v37, 0);
  v40 = self->_pipelineStates[7];
  self->_pipelineStates[7] = v39;

  if (!self->_pipelineStates[7])
  {
    sub_29589A0D0(&v78);
    return v78;
  }

  v43 = self->_metal;
  v44 = objc_msgSend_functionNameForProgram_(self, v41, 8, v42);
  v46 = objc_msgSend_computePipelineStateFor_constants_(v43, v45, v44, 0);
  v47 = self->_pipelineStates[8];
  self->_pipelineStates[8] = v46;

  if (!self->_pipelineStates[8])
  {
    sub_29589A048(&v78);
    return v78;
  }

  v50 = self->_metal;
  v51 = objc_msgSend_functionNameForProgram_(self, v48, 9, v49);
  v53 = objc_msgSend_computePipelineStateFor_constants_(v50, v52, v51, 0);
  v54 = self->_pipelineStates[9];
  self->_pipelineStates[9] = v53;

  if (!self->_pipelineStates[9])
  {
    sub_295899FC0(&v78);
    return v78;
  }

  v57 = self->_metal;
  v58 = objc_msgSend_functionNameForProgram_(self, v55, 10, v56);
  v60 = objc_msgSend_computePipelineStateFor_constants_(v57, v59, v58, 0);
  v61 = self->_pipelineStates[10];
  self->_pipelineStates[10] = v60;

  if (!self->_pipelineStates[10])
  {
    sub_295899F38(&v78);
    return v78;
  }

  v64 = self->_metal;
  v65 = objc_msgSend_functionNameForProgram_(self, v62, 11, v63);
  v67 = objc_msgSend_computePipelineStateFor_constants_(v64, v66, v65, 0);
  v68 = self->_pipelineStates[11];
  self->_pipelineStates[11] = v67;

  if (!self->_pipelineStates[11])
  {
    sub_295899EB0(&v78);
    return v78;
  }

  v71 = self->_metal;
  v72 = objc_msgSend_functionNameForProgram_(self, v69, 12, v70);
  v74 = objc_msgSend_computePipelineStateFor_constants_(v71, v73, v72, 0);
  v75 = self->_pipelineStates[12];
  self->_pipelineStates[12] = v74;

  if (!self->_pipelineStates[12])
  {
    sub_295899E28(&v78);
    return v78;
  }

  return 0;
}

- (GreenGhostCommon)initWithMetalContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = GreenGhostCommon;
  v6 = [(GreenGhostCommon *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    sub_29589A3D8();
LABEL_6:
    v12 = 0;
    goto LABEL_3;
  }

  objc_storeStrong(&v6->_metal, context);
  v11 = objc_msgSend_compileShaders(v7, v8, v9, v10);
  v12 = v7;
  if (v11)
  {
    sub_29589A378();
    goto LABEL_6;
  }

LABEL_3:
  v13 = v12;

  return v13;
}

- (int)downscaleInput:(id)input output:(id)output
{
  inputCopy = input;
  outputCopy = output;
  v11 = objc_msgSend_commandQueue(self->_metal, v8, v9, v10);
  v15 = objc_msgSend_commandBuffer(v11, v12, v13, v14);

  if (!v15)
  {
    sub_29589A4EC(v43);
LABEL_7:
    v39 = v43[0];
    goto LABEL_4;
  }

  v19 = objc_msgSend_computeCommandEncoder(v15, v16, v17, v18);
  if (!v19)
  {
    sub_29589A464(v43);
    goto LABEL_7;
  }

  v22 = v19;
  objc_msgSend_setComputePipelineState_(v19, v20, self->_pipelineStates[0], v21);
  objc_msgSend_setImageblockWidth_height_(v22, v23, 32, 32);
  objc_msgSend_setTexture_atIndex_(v22, v24, inputCopy, 0);
  objc_msgSend_setTexture_atIndex_(v22, v25, outputCopy, 1);
  v43[0] = objc_msgSend_width(outputCopy, v26, v27, v28);
  v43[1] = objc_msgSend_height(outputCopy, v29, v30, v31);
  v43[2] = 1;
  v41 = vdupq_n_s64(0x20uLL);
  v42 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v22, v32, v43, &v41);
  objc_msgSend_endEncoding(v22, v33, v34, v35);
  objc_msgSend_commit(v15, v36, v37, v38);

  v39 = 0;
LABEL_4:

  return v39;
}

- (int)dilateTexture:(id)texture withNormalizedRadius:(float)radius withThreshold:(id)threshold subtractTexture:(id)subtractTexture output:(id)output
{
  textureCopy = texture;
  thresholdCopy = threshold;
  subtractTextureCopy = subtractTexture;
  outputCopy = output;
  v19 = objc_msgSend_width(textureCopy, v16, v17, v18);
  if (v19 <= objc_msgSend_height(textureCopy, v20, v21, v22))
  {
    v26 = objc_msgSend_height(textureCopy, v23, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_width(textureCopy, v23, v24, v25);
  }

  v177 = (v26 * radius);
  v176 = 0;
  if (objc_msgSend_width(outputCopy, v27, v28, v29) & 1) != 0 || (objc_msgSend_height(outputCopy, v30, v31, v32))
  {
    sub_29589A574(&v173);
LABEL_24:
    v134 = 0;
    v47 = 0;
    v40 = 0;
LABEL_30:
    v165 = v173;
    goto LABEL_21;
  }

  if (thresholdCopy && subtractTextureCopy)
  {
    sub_29589A830(&v173);
    goto LABEL_24;
  }

  v36 = objc_msgSend_commandQueue(self->_metal, v33, v34, v35);
  v40 = objc_msgSend_commandBuffer(v36, v37, v38, v39);

  if (!v40)
  {
    sub_29589A7A8(&v173);
    v134 = 0;
    v47 = 0;
    goto LABEL_30;
  }

  v47 = objc_msgSend_computeCommandEncoder(v40, v41, v42, v43);
  if (!v47)
  {
    sub_29589A720(&v173);
LABEL_29:
    v134 = 0;
    goto LABEL_30;
  }

  v48 = objc_msgSend_allocator(self->_metal, v44, v45, v46);
  v52 = objc_msgSend_newTextureDescriptor(v48, v49, v50, v51);

  if (!v52)
  {
    sub_29589A698(&v173);
    goto LABEL_29;
  }

  v56 = objc_msgSend_desc(v52, v53, v54, v55);
  objc_msgSend_setCompressionMode_(v56, v57, 2, v58);

  v62 = objc_msgSend_desc(v52, v59, v60, v61);
  objc_msgSend_setCompressionFootprint_(v62, v63, 0, v64);

  v68 = objc_msgSend_desc(v52, v65, v66, v67);
  objc_msgSend_setUsage_(v68, v69, 7, v70);

  v74 = objc_msgSend_pixelFormat(textureCopy, v71, v72, v73);
  v78 = objc_msgSend_desc(v52, v75, v76, v77);
  objc_msgSend_setPixelFormat_(v78, v79, v74, v80);

  v84 = objc_msgSend_width(textureCopy, v81, v82, v83);
  v88 = objc_msgSend_desc(v52, v85, v86, v87);
  objc_msgSend_setWidth_(v88, v89, v84, v90);

  v94 = objc_msgSend_height(textureCopy, v91, v92, v93);
  v98 = objc_msgSend_desc(v52, v95, v96, v97);
  objc_msgSend_setHeight_(v98, v99, v94, v100);

  objc_msgSend_setLabel_(v52, v101, 0, v102);
  v106 = objc_msgSend_allocator(self->_metal, v103, v104, v105);
  v109 = objc_msgSend_newTextureWithDescriptor_(v106, v107, v52, v108);
  v176 = v109;

  if (!v109)
  {
    sub_29589A5FC(v52);
    goto LABEL_29;
  }

  v167 = v40;
  v112 = textureCopy;
  v113 = subtractTextureCopy;
  v114 = 2;
  if (subtractTextureCopy)
  {
    v114 = 4;
  }

  if (thresholdCopy)
  {
    ++v114;
  }

  v115 = (&self->super.isa + v114);
  objc_msgSend_setComputePipelineState_(v47, v110, self->_pipelineStates[1], v111);
  v168 = v112;
  objc_msgSend_setTexture_atIndex_(v47, v116, v112, 0);
  v169 = thresholdCopy;
  objc_msgSend_setTexture_atIndex_(v47, v117, v109, 1);
  objc_msgSend_setBytes_length_atIndex_(v47, v118, &v177, 4, 0);
  v122 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[1], v119, v120, v121);
  v126 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[1], v123, v124, v125) / v122;
  v173 = objc_msgSend_width(outputCopy, v127, v128, v129) >> 1;
  v174 = objc_msgSend_height(outputCopy, v130, v131, v132) >> 1;
  v175 = 1;
  v170 = v122;
  v171 = v126;
  v172 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v47, v133, &v173, &v170);
  v134 = v115[2];
  objc_msgSend_setComputePipelineState_(v47, v135, v134, v136);
  objc_msgSend_setTexture_atIndex_(v47, v137, v109, 0);
  objc_msgSend_setTexture_atIndex_(v47, v138, outputCopy, 2);
  objc_msgSend_setBytes_length_atIndex_(v47, v139, &v177, 4, 0);
  if (thresholdCopy)
  {
    objc_msgSend_floatValue(thresholdCopy, v140, v141, v142);
    LODWORD(v173) = v143;
    objc_msgSend_setBytes_length_atIndex_(v47, v144, &v173, 4, 1);
  }

  v40 = v167;
  if (v113)
  {
    objc_msgSend_setTexture_atIndex_(v47, v140, v113, 1);
  }

  v145 = objc_msgSend_threadExecutionWidth(v134, v140, v141, v142);
  v149 = objc_msgSend_maxTotalThreadsPerThreadgroup(v134, v146, v147, v148) / v145;
  v153 = objc_msgSend_width(outputCopy, v150, v151, v152) >> 1;
  v157 = objc_msgSend_height(outputCopy, v154, v155, v156);
  v173 = v153;
  v174 = v157 >> 1;
  subtractTextureCopy = v113;
  v175 = 1;
  v170 = v145;
  v171 = v149;
  v172 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v47, v158, &v173, &v170);
  objc_msgSend_endEncoding(v47, v159, v160, v161);
  objc_msgSend_commit(v167, v162, v163, v164);
  FigMetalDecRef();

  v165 = 0;
  textureCopy = v168;
  thresholdCopy = v169;
LABEL_21:

  return v165;
}

- (int)erodeTexture:(id)texture withNormalizedRadius:(float)radius output:(id)output
{
  textureCopy = texture;
  outputCopy = output;
  v13 = objc_msgSend_width(textureCopy, v10, v11, v12);
  if (v13 <= objc_msgSend_height(textureCopy, v14, v15, v16))
  {
    v20 = objc_msgSend_height(textureCopy, v17, v18, v19);
  }

  else
  {
    v20 = objc_msgSend_width(textureCopy, v17, v18, v19);
  }

  v164 = (v20 * radius);
  v163 = 0;
  if (objc_msgSend_width(outputCopy, v21, v22, v23) & 1) != 0 || (objc_msgSend_height(outputCopy, v24, v25, v26))
  {
    sub_29589A8B8(&v160);
LABEL_17:
    v154 = v160;
    goto LABEL_11;
  }

  v30 = objc_msgSend_commandQueue(self->_metal, v27, v28, v29);
  v34 = objc_msgSend_commandBuffer(v30, v31, v32, v33);

  if (!v34)
  {
    sub_29589AB4C(&v160);
    goto LABEL_17;
  }

  v38 = objc_msgSend_computeCommandEncoder(v34, v35, v36, v37);
  if (!v38)
  {
    sub_29589AAB0(v34);
    goto LABEL_17;
  }

  v42 = v38;
  v43 = objc_msgSend_allocator(self->_metal, v39, v40, v41);
  v47 = objc_msgSend_newTextureDescriptor(v43, v44, v45, v46);

  if (!v47)
  {
    sub_29589AA00(v42, v34, &v160);
    goto LABEL_17;
  }

  v51 = objc_msgSend_desc(v47, v48, v49, v50);
  objc_msgSend_setCompressionMode_(v51, v52, 2, v53);

  v57 = objc_msgSend_desc(v47, v54, v55, v56);
  objc_msgSend_setCompressionFootprint_(v57, v58, 0, v59);

  v63 = objc_msgSend_desc(v47, v60, v61, v62);
  objc_msgSend_setUsage_(v63, v64, 7, v65);

  v69 = objc_msgSend_pixelFormat(textureCopy, v66, v67, v68);
  v73 = objc_msgSend_desc(v47, v70, v71, v72);
  objc_msgSend_setPixelFormat_(v73, v74, v69, v75);

  v79 = objc_msgSend_width(textureCopy, v76, v77, v78);
  v83 = objc_msgSend_desc(v47, v80, v81, v82);
  objc_msgSend_setWidth_(v83, v84, v79, v85);

  v89 = objc_msgSend_height(textureCopy, v86, v87, v88);
  v93 = objc_msgSend_desc(v47, v90, v91, v92);
  objc_msgSend_setHeight_(v93, v94, v89, v95);

  objc_msgSend_setLabel_(v47, v96, 0, v97);
  v101 = objc_msgSend_allocator(self->_metal, v98, v99, v100);
  v104 = objc_msgSend_newTextureWithDescriptor_(v101, v102, v47, v103);
  v163 = v104;

  if (!v104)
  {
    sub_29589A940(v47, v42, v34, &v160);
    goto LABEL_17;
  }

  objc_msgSend_setComputePipelineState_(v42, v105, self->_pipelineStates[5], v106);
  objc_msgSend_setTexture_atIndex_(v42, v107, textureCopy, 0);
  objc_msgSend_setTexture_atIndex_(v42, v108, v104, 1);
  objc_msgSend_setBytes_length_atIndex_(v42, v109, &v164, 4, 0);
  v113 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[5], v110, v111, v112);
  v117 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[5], v114, v115, v116) / v113;
  v156 = textureCopy;
  v121 = v34;
  v160 = objc_msgSend_width(outputCopy, v118, v119, v120) >> 1;
  v161 = objc_msgSend_height(outputCopy, v122, v123, v124) >> 1;
  v162 = 1;
  v157 = v113;
  v158 = v117;
  v159 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v42, v125, &v160, &v157);
  objc_msgSend_setComputePipelineState_(v42, v126, self->_pipelineStates[6], v127);
  objc_msgSend_setTexture_atIndex_(v42, v128, v104, 0);
  objc_msgSend_setTexture_atIndex_(v42, v129, outputCopy, 1);
  objc_msgSend_setBytes_length_atIndex_(v42, v130, &v164, 4, 0);
  v134 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[6], v131, v132, v133);
  v138 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[6], v135, v136, v137) / v134;
  v142 = objc_msgSend_width(outputCopy, v139, v140, v141) >> 1;
  v146 = objc_msgSend_height(outputCopy, v143, v144, v145);
  v160 = v142;
  v161 = v146 >> 1;
  v162 = 1;
  v157 = v134;
  v158 = v138;
  v159 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v42, v147, &v160, &v157);
  objc_msgSend_endEncoding(v42, v148, v149, v150);
  objc_msgSend_commit(v121, v151, v152, v153);
  FigMetalDecRef();

  textureCopy = v156;
  v154 = 0;
LABEL_11:

  return v154;
}

- (int)boxFilter:(id)filter withRadius:(unsigned int)radius output:(id)output
{
  filterCopy = filter;
  radiusCopy = radius;
  outputCopy = output;
  v150 = 0;
  if (objc_msgSend_width(outputCopy, v10, v11, v12) & 1) != 0 || (objc_msgSend_height(outputCopy, v13, v14, v15))
  {
    sub_29589ABD4(&v147);
LABEL_14:
    v142 = v147;
    goto LABEL_8;
  }

  v19 = objc_msgSend_commandQueue(self->_metal, v16, v17, v18);
  v23 = objc_msgSend_commandBuffer(v19, v20, v21, v22);

  if (!v23)
  {
    sub_29589AE68(&v147);
    goto LABEL_14;
  }

  v27 = objc_msgSend_computeCommandEncoder(v23, v24, v25, v26);
  if (!v27)
  {
    sub_29589ADCC(v23);
    goto LABEL_14;
  }

  v31 = v27;
  v32 = objc_msgSend_allocator(self->_metal, v28, v29, v30);
  v36 = objc_msgSend_newTextureDescriptor(v32, v33, v34, v35);

  if (!v36)
  {
    sub_29589AD1C(v31, v23, &v147);
    goto LABEL_14;
  }

  v40 = objc_msgSend_desc(v36, v37, v38, v39);
  objc_msgSend_setCompressionMode_(v40, v41, 2, v42);

  v46 = objc_msgSend_desc(v36, v43, v44, v45);
  objc_msgSend_setCompressionFootprint_(v46, v47, 0, v48);

  v52 = objc_msgSend_desc(v36, v49, v50, v51);
  objc_msgSend_setUsage_(v52, v53, 7, v54);

  v58 = objc_msgSend_pixelFormat(filterCopy, v55, v56, v57);
  v62 = objc_msgSend_desc(v36, v59, v60, v61);
  objc_msgSend_setPixelFormat_(v62, v63, v58, v64);

  v68 = objc_msgSend_width(filterCopy, v65, v66, v67);
  v72 = objc_msgSend_desc(v36, v69, v70, v71);
  objc_msgSend_setWidth_(v72, v73, v68, v74);

  v78 = objc_msgSend_height(filterCopy, v75, v76, v77);
  v82 = objc_msgSend_desc(v36, v79, v80, v81);
  objc_msgSend_setHeight_(v82, v83, v78, v84);

  objc_msgSend_setLabel_(v36, v85, 0, v86);
  v90 = objc_msgSend_allocator(self->_metal, v87, v88, v89);
  v93 = objc_msgSend_newTextureWithDescriptor_(v90, v91, v36, v92);
  v150 = v93;

  if (!v93)
  {
    sub_29589AC5C(v36, v31, v23, &v147);
    goto LABEL_14;
  }

  objc_msgSend_setComputePipelineState_(v31, v94, self->_pipelineStates[7], v95);
  objc_msgSend_setTexture_atIndex_(v31, v96, filterCopy, 0);
  objc_msgSend_setTexture_atIndex_(v31, v97, v93, 1);
  objc_msgSend_setBytes_length_atIndex_(v31, v98, &radiusCopy, 4, 0);
  v102 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[7], v99, v100, v101);
  v106 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[7], v103, v104, v105) / v102;
  v147 = objc_msgSend_width(outputCopy, v107, v108, v109) >> 1;
  v148 = objc_msgSend_height(outputCopy, v110, v111, v112) >> 1;
  v149 = 1;
  v144 = v102;
  v145 = v106;
  v146 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v31, v113, &v147, &v144);
  objc_msgSend_setComputePipelineState_(v31, v114, self->_pipelineStates[8], v115);
  objc_msgSend_setTexture_atIndex_(v31, v116, v93, 0);
  objc_msgSend_setTexture_atIndex_(v31, v117, outputCopy, 1);
  objc_msgSend_setBytes_length_atIndex_(v31, v118, &radiusCopy, 4, 0);
  v122 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[8], v119, v120, v121);
  v126 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[8], v123, v124, v125) / v122;
  v130 = objc_msgSend_width(outputCopy, v127, v128, v129) >> 1;
  v134 = objc_msgSend_height(outputCopy, v131, v132, v133);
  v147 = v130;
  v148 = v134 >> 1;
  v149 = 1;
  v144 = v122;
  v145 = v126;
  v146 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v31, v135, &v147, &v144);
  objc_msgSend_endEncoding(v31, v136, v137, v138);
  objc_msgSend_commit(v23, v139, v140, v141);
  FigMetalDecRef();

  v142 = 0;
LABEL_8:

  return v142;
}

- (int)brightnessDetectionInput:(id)input output:(id)output params:(BrightnessTuning)params processingROIInfo:(ProcessingROIInfo *)info
{
  v7 = v6;
  inputCopy = input;
  outputCopy = output;
  var0 = info->var0;
  v13 = vadd_f32(*&info[2].var0, *&info[2].var0);
  v138 = objc_msgSend_width(inputCopy, v14, v15, v16);
  v20 = objc_msgSend_height(inputCopy, v17, v18, v19);
  v21.f32[0] = v138;
  v21.f32[1] = v20;
  v22 = *v7;
  v143 = *v7;
  v144 = vmul_f32(v13, v21);
  v23 = v7[4];
  v142 = 0;
  v27 = objc_msgSend_commandQueue(self->_metal, v24, v25, v26);
  v31 = objc_msgSend_commandBuffer(v27, v28, v29, v30);

  if (!v31)
  {
    sub_29589B2E4(v141);
LABEL_14:
    v136 = v141[0];
    goto LABEL_9;
  }

  v35 = objc_msgSend_computeCommandEncoder(v31, v32, v33, v34);
  if (!v35)
  {
    sub_29589B25C(v141);
    goto LABEL_14;
  }

  v39 = v35;
  v40 = objc_msgSend_allocator(self->_metal, v36, v37, v38);
  v44 = objc_msgSend_newTextureDescriptor(v40, v41, v42, v43);

  if (!v44)
  {
    sub_29589B1C0(v39);
    goto LABEL_14;
  }

  v48 = objc_msgSend_desc(v44, v45, v46, v47);
  objc_msgSend_setCompressionMode_(v48, v49, 2, v50);

  v54 = objc_msgSend_desc(v44, v51, v52, v53);
  objc_msgSend_setCompressionFootprint_(v54, v55, 0, v56);

  v60 = objc_msgSend_desc(v44, v57, v58, v59);
  objc_msgSend_setUsage_(v60, v61, 7, v62);

  v66 = objc_msgSend_pixelFormat(inputCopy, v63, v64, v65);
  v70 = objc_msgSend_desc(v44, v67, v68, v69);
  objc_msgSend_setPixelFormat_(v70, v71, v66, v72);

  v76 = objc_msgSend_width(outputCopy, v73, v74, v75);
  v80 = objc_msgSend_desc(v44, v77, v78, v79);
  objc_msgSend_setWidth_(v80, v81, v76, v82);

  v86 = objc_msgSend_height(outputCopy, v83, v84, v85);
  v90 = objc_msgSend_desc(v44, v87, v88, v89);
  objc_msgSend_setHeight_(v90, v91, v86, v92);

  objc_msgSend_setLabel_(v44, v93, 0, v94);
  v98 = objc_msgSend_allocator(self->_metal, v95, v96, v97);
  v101 = objc_msgSend_newTextureWithDescriptor_(v98, v99, v44, v100);
  v142 = v101;

  if (!v101)
  {
    sub_29589B110(v44, v39, v141);
    goto LABEL_14;
  }

  objc_msgSend_setComputePipelineState_(v39, v102, self->_pipelineStates[10], v103);
  v139 = inputCopy;
  objc_msgSend_setTexture_atIndex_(v39, v104, inputCopy, 0);
  objc_msgSend_setTexture_atIndex_(v39, v105, outputCopy, 1);
  objc_msgSend_setBytes_length_atIndex_(v39, v106, &var0, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v39, v107, &v144, 8, 1);
  objc_msgSend_setBytes_length_atIndex_(v39, v108, &v143, 8, 2);
  v112 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[10], v109, v110, v111);
  v116 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[10], v113, v114, v115) / v112;
  v141[0] = objc_msgSend_width(outputCopy, v117, v118, v119);
  v141[1] = objc_msgSend_height(outputCopy, v120, v121, v122);
  v141[2] = 1;
  v140[0] = v112;
  v140[1] = v116;
  v140[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v39, v123, v141, v140);
  objc_msgSend_endEncoding(v39, v124, v125, v126);
  objc_msgSend_commit(v31, v127, v128, v129);
  *&v130 = v23 * info[5].var0;
  v132 = objc_msgSend_erodeTexture_withNormalizedRadius_output_(self, v131, outputCopy, v101, v130);
  if (v132)
  {
    v136 = v132;
    sub_29589B030(v132, v44, v39);
  }

  else
  {
    *&v134 = v23 * info[4].var0;
    v135 = objc_msgSend_dilateTexture_withNormalizedRadius_output_(self, v133, v101, outputCopy, v134);
    v136 = v135;
    if (v135)
    {
      sub_29589B0A0(v135, v44, v39);
    }

    else
    {
      FigMetalDecRef();
    }
  }

  inputCopy = v139;
LABEL_9:

  return v136;
}

- (int)blobDetection:(id)detection output:(id)output params:(BlobTuning)params
{
  v7 = v5;
  v142 = v5;
  v143 = v6;
  detectionCopy = detection;
  outputCopy = output;
  v140 = 0;
  v141 = 0;
  if (objc_msgSend_width(outputCopy, v12, v13, v14) & 1) != 0 || (objc_msgSend_height(outputCopy, v15, v16, v17))
  {
    sub_29589B36C(v139);
LABEL_20:
    v136 = v139[0];
    goto LABEL_11;
  }

  v21 = objc_msgSend_allocator(self->_metal, v18, v19, v20);
  v25 = objc_msgSend_newTextureDescriptor(v21, v22, v23, v24);

  if (!v25)
  {
    sub_29589B758(v139);
    goto LABEL_20;
  }

  v29 = objc_msgSend_desc(v25, v26, v27, v28);
  objc_msgSend_setCompressionMode_(v29, v30, 2, v31);

  v35 = objc_msgSend_desc(v25, v32, v33, v34);
  objc_msgSend_setCompressionFootprint_(v35, v36, 0, v37);

  v41 = objc_msgSend_pixelFormat(detectionCopy, v38, v39, v40);
  v45 = objc_msgSend_desc(v25, v42, v43, v44);
  objc_msgSend_setPixelFormat_(v45, v46, v41, v47);

  v51 = objc_msgSend_desc(v25, v48, v49, v50);
  objc_msgSend_setUsage_(v51, v52, 7, v53);

  v57 = objc_msgSend_width(detectionCopy, v54, v55, v56);
  v61 = objc_msgSend_desc(v25, v58, v59, v60);
  objc_msgSend_setWidth_(v61, v62, v57, v63);

  v67 = objc_msgSend_height(detectionCopy, v64, v65, v66);
  v71 = objc_msgSend_desc(v25, v68, v69, v70);
  objc_msgSend_setHeight_(v71, v72, v67, v73);

  objc_msgSend_setLabel_(v25, v74, 0, v75);
  v79 = objc_msgSend_allocator(self->_metal, v76, v77, v78);
  v82 = objc_msgSend_newTextureWithDescriptor_(v79, v80, v25, v81);
  v141 = v82;

  if (!v82)
  {
    sub_29589B6BC(v25);
    goto LABEL_20;
  }

  v84 = objc_msgSend_boxFilter_withRadius_output_(self, v83, detectionCopy, v7, v82);
  if (v84)
  {
    v136 = v84;
    sub_29589B3F4(v84, v25);
    goto LABEL_11;
  }

  objc_msgSend_setLabel_(v25, v85, 0, v86);
  v90 = objc_msgSend_allocator(self->_metal, v87, v88, v89);
  v93 = objc_msgSend_newTextureWithDescriptor_(v90, v91, v25, v92);
  v140 = v93;

  if (!v93)
  {
    sub_29589B620(v25);
    goto LABEL_20;
  }

  v95 = objc_msgSend_boxFilter_withRadius_output_(self, v94, detectionCopy, HIDWORD(v7), v93);
  if (v95)
  {
    v136 = v95;
    sub_29589B464(v95, v25);
    goto LABEL_11;
  }

  v99 = objc_msgSend_commandQueue(self->_metal, v96, v97, v98);
  v103 = objc_msgSend_commandBuffer(v99, v100, v101, v102);

  if (!v103)
  {
    sub_29589B584(v25);
    goto LABEL_20;
  }

  v107 = objc_msgSend_computeCommandEncoder(v103, v104, v105, v106);
  if (!v107)
  {
    sub_29589B4D4(v25, v103, v139);
    goto LABEL_20;
  }

  v110 = v107;
  objc_msgSend_setComputePipelineState_(v107, v108, self->_pipelineStates[9], v109);
  objc_msgSend_setTexture_atIndex_(v110, v111, v82, 0);
  objc_msgSend_setTexture_atIndex_(v110, v112, v93, 1);
  objc_msgSend_setTexture_atIndex_(v110, v113, outputCopy, 2);
  objc_msgSend_setBytes_length_atIndex_(v110, v114, &v143, 4, 0);
  v118 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[9], v115, v116, v117);
  v122 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[9], v119, v120, v121) / v118;
  v139[0] = objc_msgSend_width(outputCopy, v123, v124, v125) >> 1;
  v139[1] = objc_msgSend_height(outputCopy, v126, v127, v128) >> 1;
  v139[2] = 1;
  v138[0] = v118;
  v138[1] = v122;
  v138[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v110, v129, v139, v138);
  objc_msgSend_endEncoding(v110, v130, v131, v132);
  objc_msgSend_commit(v103, v133, v134, v135);
  FigMetalDecRef();
  FigMetalDecRef();

  v136 = 0;
LABEL_11:

  return v136;
}

- (int)greenDetectionLuma:(id)luma chroma:(id)chroma output:(id)output params:(GreenTuning)params processingROIInfo:(ProcessingROIInfo *)info
{
  v8 = v7;
  lumaCopy = luma;
  chromaCopy = chroma;
  outputCopy = output;
  v136 = 0;
  v16 = *(v8 + 16);
  v20 = objc_msgSend_commandQueue(self->_metal, v17, v18, v19);
  v24 = objc_msgSend_commandBuffer(v20, v21, v22, v23);

  if (!v24)
  {
    sub_29589BB04(v135);
LABEL_14:
    v131 = v135[0];
    goto LABEL_9;
  }

  v28 = objc_msgSend_computeCommandEncoder(v24, v25, v26, v27);
  if (!v28)
  {
    sub_29589BA7C(v135);
    goto LABEL_14;
  }

  v32 = v28;
  v33 = objc_msgSend_allocator(self->_metal, v29, v30, v31);
  v37 = objc_msgSend_newTextureDescriptor(v33, v34, v35, v36);

  if (!v37)
  {
    sub_29589B9E0(v32);
    goto LABEL_14;
  }

  v41 = objc_msgSend_desc(v37, v38, v39, v40);
  objc_msgSend_setCompressionMode_(v41, v42, 2, v43);

  v47 = objc_msgSend_desc(v37, v44, v45, v46);
  objc_msgSend_setCompressionFootprint_(v47, v48, 0, v49);

  v53 = objc_msgSend_desc(v37, v50, v51, v52);
  objc_msgSend_setUsage_(v53, v54, 7, v55);

  v59 = objc_msgSend_pixelFormat(lumaCopy, v56, v57, v58);
  v63 = objc_msgSend_desc(v37, v60, v61, v62);
  objc_msgSend_setPixelFormat_(v63, v64, v59, v65);

  v69 = objc_msgSend_width(lumaCopy, v66, v67, v68);
  v73 = objc_msgSend_desc(v37, v70, v71, v72);
  objc_msgSend_setWidth_(v73, v74, v69, v75);

  v79 = objc_msgSend_height(lumaCopy, v76, v77, v78);
  v83 = objc_msgSend_desc(v37, v80, v81, v82);
  objc_msgSend_setHeight_(v83, v84, v79, v85);

  objc_msgSend_setLabel_(v37, v86, 0, v87);
  v91 = objc_msgSend_allocator(self->_metal, v88, v89, v90);
  v94 = objc_msgSend_newTextureWithDescriptor_(v91, v92, v37, v93);
  v136 = v94;

  if (!v94)
  {
    sub_29589B930(v37, v32, v135);
    goto LABEL_14;
  }

  objc_msgSend_setComputePipelineState_(v32, v95, self->_pipelineStates[11], v96);
  v133 = lumaCopy;
  objc_msgSend_setTexture_atIndex_(v32, v97, lumaCopy, 0);
  objc_msgSend_setTexture_atIndex_(v32, v98, chromaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v32, v99, v94, 2);
  objc_msgSend_setBytes_length_atIndex_(v32, v100, info, 40, 0);
  v104 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[11], v101, v102, v103);
  v108 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[11], v105, v106, v107) / v104;
  v135[0] = objc_msgSend_width(outputCopy, v109, v110, v111);
  v135[1] = objc_msgSend_height(outputCopy, v112, v113, v114);
  v135[2] = 1;
  v134[0] = v104;
  v134[1] = v108;
  v134[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v32, v115, v135, v134);
  objc_msgSend_endEncoding(v32, v116, v117, v118);
  objc_msgSend_commit(v24, v119, v120, v121);
  *&v122 = v16 * info[8].var0;
  v124 = objc_msgSend_dilateTexture_withNormalizedRadius_output_(self, v123, v94, outputCopy, v122);
  if (v124)
  {
    v131 = v124;
    sub_29589B7E0(v124, v37, v32);
    lumaCopy = v133;
  }

  else
  {
    *&v126 = v16 * info[8].var0;
    v127 = objc_msgSend_erodeTexture_withNormalizedRadius_output_(self, v125, outputCopy, v94, v126);
    lumaCopy = v133;
    if (v127)
    {
      v131 = v127;
      sub_29589B850(v127, v37, v32);
    }

    else
    {
      *&v129 = v16 * info[9].var0;
      v130 = objc_msgSend_dilateTexture_withNormalizedRadius_output_(self, v128, v94, outputCopy, v129);
      v131 = v130;
      if (v130)
      {
        sub_29589B8C0(v130, v37, v32);
      }

      else
      {
        FigMetalDecRef();
      }
    }
  }

LABEL_9:

  return v131;
}

- (int)combineBrightnessMask:(id)mask blobMask:(id)blobMask greenMask:(id)greenMask output:(id)output
{
  maskCopy = mask;
  blobMaskCopy = blobMask;
  greenMaskCopy = greenMask;
  outputCopy = output;
  if (objc_msgSend_width(outputCopy, v14, v15, v16) & 1) != 0 || (objc_msgSend_height(outputCopy, v17, v18, v19))
  {
    sub_29589BB8C(v63);
LABEL_10:
    v60 = v63[0];
    goto LABEL_6;
  }

  v23 = objc_msgSend_commandQueue(self->_metal, v20, v21, v22);
  v27 = objc_msgSend_commandBuffer(v23, v24, v25, v26);

  if (!v27)
  {
    sub_29589BCB0(v63);
    goto LABEL_10;
  }

  v31 = objc_msgSend_computeCommandEncoder(v27, v28, v29, v30);
  if (!v31)
  {
    sub_29589BC14(v27);
    goto LABEL_10;
  }

  v34 = v31;
  objc_msgSend_setComputePipelineState_(v31, v32, self->_pipelineStates[12], v33);
  objc_msgSend_setTexture_atIndex_(v34, v35, maskCopy, 0);
  objc_msgSend_setTexture_atIndex_(v34, v36, blobMaskCopy, 1);
  objc_msgSend_setTexture_atIndex_(v34, v37, greenMaskCopy, 2);
  objc_msgSend_setTexture_atIndex_(v34, v38, outputCopy, 3);
  v42 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[12], v39, v40, v41);
  v46 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[12], v43, v44, v45) / v42;
  v63[0] = objc_msgSend_width(outputCopy, v47, v48, v49) >> 1;
  v63[1] = objc_msgSend_height(outputCopy, v50, v51, v52) >> 1;
  v63[2] = 1;
  v62[0] = v42;
  v62[1] = v46;
  v62[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v34, v53, v63, v62);
  objc_msgSend_endEncoding(v34, v54, v55, v56);
  objc_msgSend_commit(v27, v57, v58, v59);

  v60 = 0;
LABEL_6:

  return v60;
}

- (int)detectionWithLuma:(id)luma croppedLuma:(id)croppedLuma chroma:(id)chroma outputMask:(id)mask params:(DetectionTuning *)params processingROIInfo:(ProcessingROIInfo *)info
{
  lumaCopy = luma;
  croppedLumaCopy = croppedLuma;
  chromaCopy = chroma;
  maskCopy = mask;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v20 = objc_msgSend_allocator(self->_metal, v17, v18, v19);
  v24 = objc_msgSend_newTextureDescriptor(v20, v21, v22, v23);

  v112 = lumaCopy;
  if (!v24)
  {
    sub_29589C030(&v113);
LABEL_17:
    v109 = v113;
    goto LABEL_18;
  }

  v28 = objc_msgSend_desc(v24, v25, v26, v27);
  objc_msgSend_setCompressionMode_(v28, v29, 2, v30);

  v34 = objc_msgSend_desc(v24, v31, v32, v33);
  objc_msgSend_setCompressionFootprint_(v34, v35, 0, v36);

  v40 = objc_msgSend_desc(v24, v37, v38, v39);
  objc_msgSend_setUsage_(v40, v41, 7, v42);

  v46 = objc_msgSend_pixelFormat(maskCopy, v43, v44, v45);
  v50 = objc_msgSend_desc(v24, v47, v48, v49);
  objc_msgSend_setPixelFormat_(v50, v51, v46, v52);

  v56 = objc_msgSend_width(maskCopy, v53, v54, v55);
  v60 = objc_msgSend_desc(v24, v57, v58, v59);
  objc_msgSend_setWidth_(v60, v61, v56, v62);

  v66 = objc_msgSend_height(maskCopy, v63, v64, v65);
  v70 = objc_msgSend_desc(v24, v67, v68, v69);
  objc_msgSend_setHeight_(v70, v71, v66, v72);

  objc_msgSend_setLabel_(v24, v73, 0, v74);
  v78 = objc_msgSend_allocator(self->_metal, v75, v76, v77);
  v81 = objc_msgSend_newTextureWithDescriptor_(v78, v79, v24, v80);
  v118 = v81;

  if (!v81)
  {
    sub_29589BFA8(&v113);
    goto LABEL_17;
  }

  v113 = *&params->var0.var0;
  *&v114 = *&params->var2.var0;
  v83 = objc_msgSend_brightnessDetectionInput_output_params_processingROIInfo_(self, v82, lumaCopy, v81, &v113, info);
  if (v83)
  {
    v109 = v83;
    sub_29589BD38();
LABEL_18:
    v106 = chromaCopy;
    goto LABEL_10;
  }

  objc_msgSend_setLabel_(v24, v84, 0, v85);
  v89 = objc_msgSend_allocator(self->_metal, v86, v87, v88);
  v92 = objc_msgSend_newTextureWithDescriptor_(v89, v90, v24, v91);
  v117 = v92;

  if (!v92)
  {
    sub_29589BF20(&v113);
    goto LABEL_17;
  }

  v94 = objc_msgSend_blobDetection_output_params_(self, v93, croppedLumaCopy, v92, *&params->var2.var2, *&params[1].var0.var1);
  if (v94)
  {
    v109 = v94;
    sub_29589BD90();
    goto LABEL_18;
  }

  objc_msgSend_setLabel_(v24, v95, 0, v96);
  v100 = objc_msgSend_allocator(self->_metal, v97, v98, v99);
  v103 = objc_msgSend_newTextureWithDescriptor_(v100, v101, v24, v102);
  v116 = v103;

  if (!v103)
  {
    sub_29589BE98(&v113);
    goto LABEL_17;
  }

  v105 = *&params[2].var0.var0;
  v113 = *&params[1].var1.var0;
  v114 = v105;
  v115 = *&params[2].var2.var0;
  v106 = chromaCopy;
  v107 = objc_msgSend_greenDetectionLuma_chroma_output_params_processingROIInfo_(self, v104, croppedLumaCopy, chromaCopy, v103, &v113, info);
  if (v107)
  {
    v109 = v107;
    sub_29589BDE8();
  }

  else
  {
    v109 = objc_msgSend_combineBrightnessMask_blobMask_greenMask_output_(self, v108, v81, v92, v103, maskCopy);
    if (v109)
    {
      sub_29589BE40();
    }

    else
    {
      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
    }
  }

LABEL_10:

  return v109;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end