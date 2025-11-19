@interface Demosaic
- (Demosaic)initWithMetalContext:(id)a3;
- (int)_compileShaders;
- (int)convertLinearRGB:(id)a3 toLuma:(id)a4;
- (int)demosaic2x:(id)a3 rawImagePixelFormat:(unsigned int)a4 toLuma:(id)a5 toRGBA:(id)a6;
- (int)downscaleRGBA:(id)a3 toRGBA:(id)a4 scalingFactor:(id)a5 commandBuffer:;
- (int)fillLSCGainsTextureFrom:(id *)a3;
- (int)preProcessMetadata:(id)a3 cameraInfoByPortType:(id)a4;
- (int)resampleLuma:(id)a3 toLuma:(id)a4 magnification:(float)a5 preShift:;
@end

@implementation Demosaic

- (Demosaic)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v17.receiver = self;
    v17.super_class = Demosaic;
    v6 = [(Demosaic *)&v17 init];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_metalContext, a3);
      v15 = objc_msgSend__compileShaders(self, v7, v8, v9, v10, v11, v12, v13, v14);
      if (v15)
      {
        sub_295765D04(v15, self);
        self = 0;
      }

      else
      {
        self->_outputImageHeight = 0;
        *&self->_gatNoiseStdInFullResolution = 0x3F80000000000000;
      }
    }
  }

  else
  {
    sub_295765DA0();
  }

  return self;
}

- (int)demosaic2x:(id)a3 rawImagePixelFormat:(unsigned int)a4 toLuma:(id)a5 toRGBA:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v208 = vcvts_n_f32_u64(self->_metadataParameters.rawSensorWidth - objc_msgSend_width(v10, v13, v14, v15, v16, v17, v18, v19, v20), 1uLL);
  v207 = vcvts_n_f32_u64(self->_metadataParameters.rawSensorHeight - objc_msgSend_height(v10, v21, v22, v23, v24, v25, v26, v27, v208), 1uLL) + self->_metadataParameters.outputOffsetY;
  v206 = (objc_msgSend_width(self->_lscGainsTex, v28, v29, v30, v31, v32, v33, v34, v207) + -1.0) / (self->_metadataParameters.rawSensorWidth + -1.0);
  v49 = (objc_msgSend_height(self->_lscGainsTex, v35, v36, v37, v38, v39, v40, v41, v206) + -1.0) / (self->_metadataParameters.rawSensorHeight + -1.0);
  *&v50 = v206;
  *(&v50 + 1) = v49;
  *self->_anon_88 = __PAIR64__(LODWORD(v207), LODWORD(v208));
  *&self->_anon_88[8] = v50;
  if (a4 == 1919379252)
  {
    v51 = 0;
    *&self->_anon_88[16] = 0;
  }

  else if (a4 == 1650943796)
  {
    v51 = 0;
    *&self->_anon_88[16] = 1;
  }

  else
  {
    fig_log_get_emitter();
    v51 = FigSignalErrorAtGM();
  }

  v52 = objc_msgSend_commandQueue(self->_metalContext, v42, v43, v44, v45, v46, v47, v48, v49);
  v61 = objc_msgSend_commandBuffer(v52, v53, v54, v55, v56, v57, v58, v59, v60);

  if (v61)
  {
    v209 = v51;
    v70 = objc_msgSend_computeCommandEncoder(v61, v62, v63, v64, v65, v66, v67, v68, v69);
    v71 = self->_pipelineStates[0];
    objc_msgSend_setComputePipelineState_(v70, v72, v71, v73, v74, v75, v76, v77, v78);
    objc_msgSend_setTexture_atIndex_(v70, v79, v10, 0, v80, v81, v82, v83, v84);
    objc_msgSend_setTexture_atIndex_(v70, v85, self->_lscGainsTex, 1, v86, v87, v88, v89, v90);
    v91 = v11;
    objc_msgSend_setTexture_atIndex_(v70, v92, v11, 2, v93, v94, v95, v96, v97);
    objc_msgSend_setTexture_atIndex_(v70, v98, v12, 3, v99, v100, v101, v102, v103);
    objc_msgSend_setBytes_length_atIndex_(v70, v104, &self->_metadataParameters, 112, 0, v105, v106, v107, v108);
    v117 = objc_msgSend_threadExecutionWidth(v71, v109, v110, v111, v112, v113, v114, v115, v116);
    v126 = objc_msgSend_maxTotalThreadsPerThreadgroup(v71, v118, v119, v120, v121, v122, v123, v124, v125) / v117;
    v211[0] = objc_msgSend_width(v12, v127, v128, v129, v130, v131, v132, v133, v134);
    v211[1] = objc_msgSend_height(v12, v135, v136, v137, v138, v139, v140, v141, v142);
    v211[2] = 1;
    v210[0] = v117;
    v210[1] = v126;
    v210[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v70, v143, v211, v210, v144, v145, v146, v147, v148);
    objc_msgSend_endEncoding(v70, v149, v150, v151, v152, v153, v154, v155, v156);
    if (*MEMORY[0x29EDB9270])
    {
      v165 = objc_msgSend_commandQueue(v61, v157, v158, v159, v160, v161, v162, v163, v164);
      v174 = objc_msgSend_commandBuffer(v165, v166, v167, v168, v169, v170, v171, v172, v173);

      objc_msgSend_setLabel_(v174, v175, @"KTRACE_MTLCMDBUF", v176, v177, v178, v179, v180, v181);
      objc_msgSend_addCompletedHandler_(v174, v182, &unk_2A1C9B1D8, v183, v184, v185, v186, v187, v188);
      objc_msgSend_commit(v174, v189, v190, v191, v192, v193, v194, v195, v196);
      objc_msgSend_addCompletedHandler_(v61, v197, &unk_2A1C9B1F8, v198, v199, v200, v201, v202, v203);
    }

    objc_msgSend_commit(v61, v157, v158, v159, v160, v161, v162, v163, v164);

    v204 = v209;
    v11 = v91;
  }

  else
  {
    sub_295765E18(v211);
    v204 = v211[0];
  }

  return v204;
}

- (int)convertLinearRGB:(id)a3 toLuma:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = v7;
  if (!v6)
  {
    sub_295766068();
    goto LABEL_11;
  }

  if (!v7)
  {
    sub_295765FF0();
    goto LABEL_11;
  }

  v17 = objc_msgSend_width(v6, v8, v9, v10, v11, v12, v13, v14, v15);
  if (v17 != objc_msgSend_width(v16, v18, v19, v20, v21, v22, v23, v24, v25) || (v34 = objc_msgSend_height(v6, v26, v27, v28, v29, v30, v31, v32, v33), v34 != objc_msgSend_height(v16, v35, v36, v37, v38, v39, v40, v41, v42)))
  {
    sub_295765EC8();
LABEL_11:
    v151 = -12780;
    goto LABEL_7;
  }

  v51 = objc_msgSend_commandQueue(self->_metalContext, v43, v44, v45, v46, v47, v48, v49, v50);
  v60 = objc_msgSend_commandBuffer(v51, v52, v53, v54, v55, v56, v57, v58, v59);

  if (v60)
  {
    v69 = objc_msgSend_computeCommandEncoder(v60, v61, v62, v63, v64, v65, v66, v67, v68);
    v70 = self->_pipelineStates[1];
    objc_msgSend_setComputePipelineState_(v69, v71, v70, v72, v73, v74, v75, v76, v77);
    objc_msgSend_setTexture_atIndex_(v69, v78, v6, 0, v79, v80, v81, v82, v83);
    objc_msgSend_setTexture_atIndex_(v69, v84, v16, 1, v85, v86, v87, v88, v89);
    objc_msgSend_setBytes_length_atIndex_(v69, v90, &self->_metadataParameters, 112, 0, v91, v92, v93, v94);
    v103 = objc_msgSend_threadExecutionWidth(v70, v95, v96, v97, v98, v99, v100, v101, v102);
    v112 = objc_msgSend_maxTotalThreadsPerThreadgroup(v70, v104, v105, v106, v107, v108, v109, v110, v111) / v103;
    v154[0] = objc_msgSend_width(v16, v113, v114, v115, v116, v117, v118, v119, v120);
    v154[1] = objc_msgSend_height(v16, v121, v122, v123, v124, v125, v126, v127, v128);
    v154[2] = 1;
    v153[0] = v103;
    v153[1] = v112;
    v153[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v69, v129, v154, v153, v130, v131, v132, v133, v134);
    objc_msgSend_endEncoding(v69, v135, v136, v137, v138, v139, v140, v141, v142);
    objc_msgSend_commit(v60, v143, v144, v145, v146, v147, v148, v149, v150);

    v151 = 0;
  }

  else
  {
    sub_295765F40(v154);
    v151 = v154[0];
  }

LABEL_7:

  return v151;
}

- (int)resampleLuma:(id)a3 toLuma:(id)a4 magnification:(float)a5 preShift:
{
  v197 = v5;
  v9 = a3;
  v10 = a4;
  v19 = objc_msgSend_width(v9, v11, v12, v13, v14, v15, v16, v17, v18);
  v28 = objc_msgSend_height(v9, v20, v21, v22, v23, v24, v25, v26, v27);
  v37 = objc_msgSend_width(v10, v29, v30, v31, v32, v33, v34, v35, v36);
  v46 = objc_msgSend_height(v10, v38, v39, v40, v41, v42, v43, v44, v45);
  *&v47 = v19 / (v37 * a5);
  v48 = (1.0 - (1.0 / a5)) * 0.5;
  *(&v47 + 1) = *&v197 + (v48 * v19);
  *(&v47 + 2) = v28 / (v46 * a5);
  *(&v47 + 3) = *(&v197 + 1) + (v48 * v28);
  v200 = v47;
  v56 = objc_msgSend_commandQueue(self->_metalContext, v49, v50, v51, v52, v53, v54, v55, *(&v47 + 2));
  v65 = objc_msgSend_commandBuffer(v56, v57, v58, v59, v60, v61, v62, v63, v64);

  if (v65)
  {
    v74 = objc_msgSend_computeCommandEncoder(v65, v66, v67, v68, v69, v70, v71, v72, v73);
    v75 = self->_pipelineStates[2];
    objc_msgSend_setComputePipelineState_(v74, v76, v75, v77, v78, v79, v80, v81, v82);
    objc_msgSend_setTexture_atIndex_(v74, v83, v9, 0, v84, v85, v86, v87, v88);
    objc_msgSend_setTexture_atIndex_(v74, v89, v10, 1, v90, v91, v92, v93, v94);
    objc_msgSend_setBytes_length_atIndex_(v74, v95, &v200, 16, 0, v96, v97, v98, v99);
    v108 = objc_msgSend_threadExecutionWidth(v75, v100, v101, v102, v103, v104, v105, v106, v107);
    v117 = objc_msgSend_maxTotalThreadsPerThreadgroup(v75, v109, v110, v111, v112, v113, v114, v115, v116) / v108;
    v199[0] = objc_msgSend_width(v10, v118, v119, v120, v121, v122, v123, v124, v125);
    v199[1] = objc_msgSend_height(v10, v126, v127, v128, v129, v130, v131, v132, v133);
    v199[2] = 1;
    v198[0] = v108;
    v198[1] = v117;
    v198[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v74, v134, v199, v198, v135, v136, v137, v138, v139);
    objc_msgSend_endEncoding(v74, v140, v141, v142, v143, v144, v145, v146, v147);
    if (*MEMORY[0x29EDB9270])
    {
      v156 = objc_msgSend_commandQueue(v65, v148, v149, v150, v151, v152, v153, v154, v155);
      v165 = objc_msgSend_commandBuffer(v156, v157, v158, v159, v160, v161, v162, v163, v164);

      objc_msgSend_setLabel_(v165, v166, @"KTRACE_MTLCMDBUF", v167, v168, v169, v170, v171, v172);
      objc_msgSend_addCompletedHandler_(v165, v173, &unk_2A1C9B218, v174, v175, v176, v177, v178, v179);
      objc_msgSend_commit(v165, v180, v181, v182, v183, v184, v185, v186, v187);
      objc_msgSend_addCompletedHandler_(v65, v188, &unk_2A1C9B238, v189, v190, v191, v192, v193, v194);
    }

    objc_msgSend_commit(v65, v148, v149, v150, v151, v152, v153, v154, v155, v197);

    v195 = 0;
  }

  else
  {
    sub_2957660E0(v199);
    v195 = v199[0];
  }

  return v195;
}

- (int)downscaleRGBA:(id)a3 toRGBA:(id)a4 scalingFactor:(id)a5 commandBuffer:
{
  __asm { FMOV            V1.2S, #1.0 }

  v104 = vdiv_f32(_D1, v5);
  v14 = a4;
  v15 = a3;
  v24 = objc_msgSend_computeCommandEncoder(a5, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = self->_pipelineStates[3];
  objc_msgSend_setComputePipelineState_(v24, v26, v25, v27, v28, v29, v30, v31, v32);
  objc_msgSend_setTexture_atIndex_(v24, v33, v15, 0, v34, v35, v36, v37, v38);

  objc_msgSend_setTexture_atIndex_(v24, v39, v14, 1, v40, v41, v42, v43, v44);
  objc_msgSend_setBytes_length_atIndex_(v24, v45, &v104, 8, 0, v46, v47, v48, v49);
  v58 = objc_msgSend_threadExecutionWidth(v25, v50, v51, v52, v53, v54, v55, v56, v57);
  v67 = objc_msgSend_maxTotalThreadsPerThreadgroup(v25, v59, v60, v61, v62, v63, v64, v65, v66);

  v68 = v67 / v58;
  v77 = objc_msgSend_width(v14, v69, v70, v71, v72, v73, v74, v75, v76);
  v86 = objc_msgSend_height(v14, v78, v79, v80, v81, v82, v83, v84, v85);

  v103[0] = v77;
  v103[1] = v86;
  v103[2] = 1;
  v102[0] = v58;
  v102[1] = v68;
  v102[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v24, v87, v103, v102, v88, v89, v90, v91, v92);
  objc_msgSend_endEncoding(v24, v93, v94, v95, v96, v97, v98, v99, v100);

  return 0;
}

- (int)_compileShaders
{
  v8 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, a2, @"demosaic2xKernel", 0, v2, v3, v4, v5, v6);
  v9 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v8;

  if (self->_pipelineStates[0])
  {
    v16 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v10, @"resampleKernel", 0, v11, v12, v13, v14, v15);
    v17 = self->_pipelineStates[2];
    self->_pipelineStates[2] = v16;

    if (self->_pipelineStates[2])
    {
      v24 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v18, @"downscaleKernel", 0, v19, v20, v21, v22, v23);
      v25 = self->_pipelineStates[3];
      self->_pipelineStates[3] = v24;

      if (self->_pipelineStates[3])
      {
        v32 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v26, @"rgbToLumaKernel", 0, v27, v28, v29, v30, v31);
        v33 = self->_pipelineStates[1];
        self->_pipelineStates[1] = v32;

        if (self->_pipelineStates[1])
        {
          return 0;
        }

        sub_295766190();
      }

      else
      {
        sub_295766208();
      }
    }

    else
    {
      sub_295766280();
    }
  }

  else
  {
    sub_2957662F8();
  }

  return -12786;
}

- (int)preProcessMetadata:(id)a3 cameraInfoByPortType:(id)a4
{
  v6 = a3;
  v13 = a4;
  if (!self->_outputImageHeight)
  {
    sub_295766EF8();
LABEL_63:
    v579 = -12780;
    goto LABEL_39;
  }

  maxAnalogGain = self->_maxAnalogGain;
  if (maxAnalogGain <= 0.0)
  {
    sub_295766E80();
    goto LABEL_63;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"SushiRawBlackLevel", v8, v9, v10, v11, v12, maxAnalogGain);
  if (!v15)
  {
    sub_295766E08();
    goto LABEL_63;
  }

  v24 = v15;
  v25 = objc_msgSend_intValue(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  self->_metadataParameters.sensorBlack = v25;
  self->_metadataParameters.sensorWhite = 16232;
  v26 = 16232.0 / (16232.0 - v25);
  self->_metadataParameters.sensorGainCeilingToFullRange = v26;
  v33 = objc_msgSend_objectForKeyedSubscript_(v6, v27, @"AGC", v28, v29, v30, v31, v32, v26);

  if (!v33)
  {
    sub_295766D90();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v43 = v42 * 0.0039062;
  self->_metadataParameters.sensorAGC = v43;
  v50 = objc_msgSend_objectForKeyedSubscript_(v6, v44, @"ReadNoise_1x", v45, v46, v47, v48, v49, v43);

  if (!v50)
  {
    sub_295766D18();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v50, v51, v52, v53, v54, v55, v56, v57, v58);
  v60 = v59 * 0.000015259;
  self->_metadataParameters.noiseE1x8x[0] = v60;
  v67 = objc_msgSend_objectForKeyedSubscript_(v6, v61, @"ReadNoise_8x", v62, v63, v64, v65, v66, v60);

  if (!v67)
  {
    sub_295766CA0();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v77 = v76 * 0.000015259;
  self->_metadataParameters.noiseE1x8x[1] = v77;
  v78.i32[0] = LODWORD(self->_metadataParameters.noiseE1x8x[0]);
  v78.f32[1] = v77;
  v79 = vmul_f32(v78, v78);
  *&v80 = vmla_lane_f32(vdup_lane_s32(v79, 0), 0x3C8000003F800000, v79, 1);
  v581 = v80;
  v582.columns[0] = 0x3F82000040000000;
  v582.columns[1] = 0x3F8008003F820000;
  v87 = __invert_f2(v582);
  v88 = vmla_lane_f32(vmul_n_f32(v87.columns[0], *&v581), v87.columns[1], *&v581, 1);
  v89 = vrsqrte_f32(v88);
  v90 = vmul_f32(v89, vrsqrts_f32(v88, vmul_f32(v89, v89)));
  v91 = vmul_f32(v90, vrsqrts_f32(v88, vmul_f32(v90, v90)));
  __asm { FMOV            V1.2S, #1.0 }

  v97 = vdiv_f32(_D1, v91);
  sensorAGC = self->_metadataParameters.sensorAGC;
  _D1.f32[1] = sensorAGC;
  v99 = vdiv_f32(v97, _D1);
  self->_metadataParameters.readnoiseStdE = sqrtf(vaddv_f32(vmul_f32(v99, v99)));
  if (sensorAGC < 1.0)
  {
    sub_295766C10(v67);
    goto LABEL_63;
  }

  if (sensorAGC > self->_maxAnalogGain)
  {
    sub_295766B80(v67);
    goto LABEL_63;
  }

  v100 = objc_msgSend_objectForKeyedSubscript_(v6, v81, @"sensorDGain", v82, v83, v84, v85, v86, sensorAGC);

  if (!v100)
  {
    sub_295766B08();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v100, v101, v102, v103, v104, v105, v106, v107, v108);
  v110 = (v109 * 0.0039062) * self->_metadataParameters.sensorAGC;
  self->_metadataParameters.sensorGain = v110;
  v117 = objc_msgSend_objectForKeyedSubscript_(v6, v111, @"ConversionGain", v112, v113, v114, v115, v116, v110);

  if (!v117)
  {
    sub_295766A90();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v127 = v126;
  v134 = objc_msgSend_objectForKeyedSubscript_(v6, v128, @"SensorBlackLevel", v129, v130, v131, v132, v133, v126);

  if (!v134)
  {
    sub_295766A18();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v134, v135, v136, v137, v138, v139, v140, v141, 0.000015259);
  sensorBlack = self->_metadataParameters.sensorBlack;
  sensorWhite = self->_metadataParameters.sensorWhite;
  v145 = (sensorWhite - sensorBlack) / (1023.0 - v144);
  self->_metadataParameters.scaleSashimi = v145;
  v146 = 1.0 / ((v127 * 0.000015259) * (self->_metadataParameters.sensorGain * v145));
  v147 = (self->_metadataParameters.readnoiseStdE * self->_metadataParameters.readnoiseStdE) + 0.375;
  self->_metadataParameters.gatScale = v146;
  self->_metadataParameters.gatBias = v147;
  v148 = sqrtf(v147 + ((sensorWhite - sensorBlack) * v146));
  v149 = v148 + v148;
  v150 = sqrtf(v147);
  self->_metadataParameters.gatBlackNormalized = (v150 + v150) / v149;
  self->_metadataParameters.gatWhite = v149;
  v151 = 1.0 / v149;
  self->_gatNoiseStdInFullResolution = v151;
  v158 = objc_msgSend_objectForKeyedSubscript_(v6, v152, @"ispDGain", v153, v154, v155, v156, v157, v151);

  if (!v158)
  {
    sub_2957669A0();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v158, v159, v160, v161, v162, v163, v164, v165, v166);
  self->_metadataParameters.expIspGain = v167;
  v174 = objc_msgSend_objectForKeyedSubscript_(v6, v168, @"ispDGainRangeExpansionFactor", v169, v170, v171, v172, v173, v167);

  if (!v174)
  {
    sub_295766928();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v174, v175, v176, v177, v178, v179, v180, v181, v182);
  v184 = self->_metadataParameters.expIspGain / (v183 * 256.0);
  self->_metadataParameters.expIspGain = v184;
  v191 = objc_msgSend_objectForKeyedSubscript_(v6, v185, *MEMORY[0x29EDC06A0], v186, v187, v188, v189, v190, v184);
  if (objc_msgSend_BOOLValue(v191, v192, v193, v194, v195, v196, v197, v198, v199))
  {
  }

  else
  {
    v214 = objc_msgSend_objectForKeyedSubscript_(v6, v200, *MEMORY[0x29EDC0210], v201, v202, v203, v204, v205, v206);
    objc_msgSend_floatValue(v214, v215, v216, v217, v218, v219, v220, v221, v222);
    v224 = v223;

    if (v224 >= 0.0)
    {
      goto LABEL_24;
    }
  }

  v225 = objc_msgSend_objectForKeyedSubscript_(v6, v207, @"EVZeroMetadata", v208, v209, v210, v211, v212, v213, v581);
  v233 = v225;
  if (v225)
  {
    v234 = objc_msgSend_objectForKeyedSubscript_(v225, v226, @"ispDGain", v227, v228, v229, v230, v231, v232);
    objc_msgSend_floatValue(v234, v235, v236, v237, v238, v239, v240, v241, v242);
    v244 = v243;
    v251 = objc_msgSend_objectForKeyedSubscript_(v233, v245, @"sensorDGain", v246, v247, v248, v249, v250, v243);
    objc_msgSend_floatValue(v251, v252, v253, v254, v255, v256, v257, v258, v259);
    v261 = v244 * v260;
    v268 = objc_msgSend_objectForKeyedSubscript_(v233, v262, @"ExposureTime", v263, v264, v265, v266, v267, v260);
    objc_msgSend_floatValue(v268, v269, v270, v271, v272, v273, v274, v275, v276);
    v278 = v261 * v277;
    v285 = objc_msgSend_objectForKeyedSubscript_(v233, v279, @"AGC", v280, v281, v282, v283, v284, v277);
    objc_msgSend_floatValue(v285, v286, v287, v288, v289, v290, v291, v292, v293);
    v295 = v278 * v294;

    v303 = objc_msgSend_objectForKeyedSubscript_(v6, v296, @"ispDGain", v297, v298, v299, v300, v301, v302);
    objc_msgSend_floatValue(v303, v304, v305, v306, v307, v308, v309, v310, v311);
    v313 = v312;
    v320 = objc_msgSend_objectForKeyedSubscript_(v6, v314, @"sensorDGain", v315, v316, v317, v318, v319, v312);
    objc_msgSend_floatValue(v320, v321, v322, v323, v324, v325, v326, v327, v328);
    v330 = v329;
    v337 = objc_msgSend_objectForKeyedSubscript_(v6, v331, @"ExposureTime", v332, v333, v334, v335, v336, v329);
    objc_msgSend_floatValue(v337, v338, v339, v340, v341, v342, v343, v344, v345);
    v347 = v346;
    v354 = objc_msgSend_objectForKeyedSubscript_(v6, v348, @"AGC", v349, v350, v351, v352, v353, v346);
    objc_msgSend_floatValue(v354, v355, v356, v357, v358, v359, v360, v361, v362);
    v364 = v363;

    if (v295 > 0.0)
    {
      v365 = ((v313 * v330) * v347) * v364;
      if (v365 > 0.0)
      {
        v366 = v295 / v365;
        if (v366 > 4.0)
        {
          v366 = 4.0;
        }

        self->_metadataParameters.expIspGain = (v366 * 0.81) * self->_metadataParameters.expIspGain;
      }
    }
  }

LABEL_24:
  v367 = objc_msgSend_objectForKeyedSubscript_(v6, v207, @"AWBComboRGain", v208, v209, v210, v211, v212, v213, v581);

  if (!v367)
  {
    sub_2957668B0();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v367, v368, v369, v370, v371, v372, v373, v374, v375);
  v377 = v376 * 0.00024414;
  self->_metadataParameters.expAwbRgb[0] = v377;
  v384 = objc_msgSend_objectForKeyedSubscript_(v6, v378, @"AWBComboGGain", v379, v380, v381, v382, v383, v377);

  if (!v384)
  {
    sub_295766838();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v384, v385, v386, v387, v388, v389, v390, v391, v392);
  v394 = v393 * 0.00024414;
  self->_metadataParameters.expAwbRgb[1] = v394;
  v401 = objc_msgSend_objectForKeyedSubscript_(v6, v395, @"AWBComboBGain", v396, v397, v398, v399, v400, v394);

  if (!v401)
  {
    sub_2957667C0();
    goto LABEL_63;
  }

  objc_msgSend_floatValue(v401, v402, v403, v404, v405, v406, v407, v408, v409);
  v411 = v410 * 0.00024414;
  self->_metadataParameters.expAwbRgb[2] = v411;
  self->_metadataParameters.outputOffsetY = 0;
  v418 = objc_msgSend_objectForKeyedSubscript_(v6, v412, @"ValidBufferRectForProcessedRaw", v413, v414, v415, v416, v417, v411);
  v426 = objc_msgSend_objectForKeyedSubscript_(v418, v419, @"Height", v420, v421, v422, v423, v424, v425);

  if (!v426)
  {
    sub_295766748();
    goto LABEL_63;
  }

  self->_metadataParameters.outputSizeY = objc_msgSend_intValue(v426, v427, v428, v429, v430, v431, v432, v433, v434);
  self->_metadataParameters.scaleRawTo16bits = 4;
  v442 = objc_msgSend_objectForKeyedSubscript_(v6, v435, @"RawSensorHeight", v436, v437, v438, v439, v440, v441);

  if (!v442)
  {
    sub_2957666D0();
    goto LABEL_63;
  }

  v457 = objc_msgSend_intValue(v442, v443, v444, v445, v446, v447, v448, v449, v450) - self->_outputImageHeight;
  if (v457 < 0)
  {
    sub_295766640(v442);
    goto LABEL_63;
  }

  v459 = objc_msgSend_objectForKeyedSubscript_(v6, v451, @"TotalSensorCropRectForProcessedRaw", v452, v453, v454, v455, v456, v458);
  v467 = objc_msgSend_objectForKeyedSubscript_(v459, v460, @"Y", v461, v462, v463, v464, v465, v466);

  if (!v467)
  {
    sub_2957665C8();
    goto LABEL_63;
  }

  v476 = objc_msgSend_intValue(v467, v468, v469, v470, v471, v472, v473, v474, v475);
  self->_metadataParameters.outputOffsetY = (v476 - (v457 >> 1)) & ~((v476 - (v457 >> 1)) >> 31);
  v484 = objc_msgSend_objectForKeyedSubscript_(v6, v477, @"PortType", v478, v479, v480, v481, v482, v483);
  v492 = objc_msgSend_objectForKeyedSubscript_(v13, v485, v484, v486, v487, v488, v489, v490, v491);
  v500 = objc_msgSend_objectForKeyedSubscript_(v492, v493, @"LSCGains", v494, v495, v496, v497, v498, v499);

  if (!v500)
  {
    sub_295766538(v467);
    goto LABEL_63;
  }

  v501 = v500;
  v510 = objc_msgSend_bytes(v501, v502, v503, v504, v505, v506, v507, v508, v509);
  if (objc_msgSend_width(self->_lscGainsTex, v511, v512, v513, v514, v515, v516, v517, v518) != *(v510 + 20))
  {
    v527 = objc_msgSend_height(self->_lscGainsTex, v519, v520, v521, v522, v523, v524, v525, v526);
    v522 = *(v510 + 24);
    if (v527 != v522)
    {
      v528 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v519, 115, *(v510 + 20), v522, 0, v524, v525, v526);
      v537 = objc_msgSend_device(self->_metalContext, v529, v530, v531, v532, v533, v534, v535, v536);
      v545 = objc_msgSend_newTextureWithDescriptor_(v537, v538, v528, v539, v540, v541, v542, v543, v544);
      lscGainsTex = self->_lscGainsTex;
      self->_lscGainsTex = v545;

      if (!self->_lscGainsTex)
      {
        sub_295766370(v528, v467, v500);
        v579 = -12786;
        goto LABEL_39;
      }
    }
  }

  objc_msgSend_fillLSCGainsTextureFrom_(self, v519, v510, v521, v522, v523, v524, v525, v526);
  v554 = objc_msgSend_objectForKeyedSubscript_(v6, v547, @"RawSensorWidth", v548, v549, v550, v551, v552, v553);

  if (!v554)
  {
    sub_2957664A8(v500);
    goto LABEL_63;
  }

  self->_metadataParameters.rawSensorWidth = objc_msgSend_intValue(v554, v555, v556, v557, v558, v559, v560, v561, v562);
  v570 = objc_msgSend_objectForKeyedSubscript_(v6, v563, @"RawSensorHeight", v564, v565, v566, v567, v568, v569);

  if (!v570)
  {
    sub_295766418(v500);
    goto LABEL_63;
  }

  self->_metadataParameters.rawSensorHeight = objc_msgSend_intValue(v570, v571, v572, v573, v574, v575, v576, v577, v578);

  v579 = 0;
LABEL_39:

  return v579;
}

- (int)fillLSCGainsTextureFrom:(id *)a3
{
  var4 = a3->var1.var0.var4;
  var5 = a3->var1.var0.var5;
  var6 = a3->var1.var0.var6;
  var7 = a3->var1.var0.var7;
  var8 = a3->var1.var0.var8;
  var9 = a3->var1.var0.var9;
  v11 = (var5 * var4);
  v12 = malloc_type_malloc(8 * v11, 0x1000040BDFB0063uLL);
  if (v12)
  {
    v17 = v12;
    if (v11)
    {
      v18 = 0;
      do
      {
        v19.i32[0] = *(&a3->var1.var1.var10 + 4 * var6 + v18);
        v19.i32[1] = *(&a3->var1.var1.var10 + 4 * var9 + v18);
        v19.i32[2] = *(&a3->var1.var1.var10 + 4 * var7 + v18);
        v19.i32[3] = *(&a3->var1.var1.var10 + 4 * var8 + v18);
        v16 = vcvt_f16_f32(v19);
        *&v12[2 * (v18 & 0xFFFFFFFC)] = v16;
        v18 += 4;
      }

      while (4 * v11 != v18);
    }

    lscGainsTex = self->_lscGainsTex;
    memset(v22, 0, 24);
    v22[3] = var4;
    v22[4] = var5;
    v22[5] = 1;
    objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(lscGainsTex, v13, v22, 0, v17, 8 * var4, v14, v15, *v16.i32);
    free(v17);
    return 0;
  }

  else
  {
    sub_295766F70();
    return -12786;
  }
}

@end