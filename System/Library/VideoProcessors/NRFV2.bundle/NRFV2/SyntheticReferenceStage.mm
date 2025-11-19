@interface SyntheticReferenceStage
+ (int)prewarmShaders:(id)a3;
- (SidecarWriter)sidecarWriter;
- (SyntheticReferenceStage)initWithMetalContext:(id)a3;
- (int)_doColorConvertEv0ToOutput:(id)a3 ev0:(id)a4 ev0Properties:(const frameProperties_t *)a5 srPlist:(id)a6 intermediateMetadata:(id)a7;
- (int)collectDetectorsResultsWithGrayGhost:(id)a3 motionDetection:(id)a4 nrfPlist:(id)a5;
- (int)startDetectorsWithGrayGhost:(id)a3 motionDetection:(id)a4 evm:(id)a5 ev0:(id)a6 evmProperties:(const frameProperties_t *)a7 ev0Properties:(const frameProperties_t *)a8 nrfPlist:(id)a9;
- (uint64_t)_doDeepShadowRecovery:(__n128)a3 noiseDivisorOutputTex:(__n128)a4 lscGainsTex:(__n128)a5 evm:(__n128)a6 ev0:(__n128)a7 evmHomography:(__n128)a8 ev0Homography:(__n128)a9 evmProperties:(uint64_t)a10 evmGreenTintAdjustmentParams:(void *)a11 ev0Properties:(void *)a12 srPlist:(void *)a13 intermediateMetadata:(void *)a14;
- (uint64_t)_doHighlightRecovery:(__n128)a3 noiseDivisorOutputTex:(__n128)a4 evm:(__n128)a5 ev0:(__n128)a6 evmHomography:(__n128)a7 ev0Homography:(__n128)a8 evmProperties:(__n128)a9 evmGreenTintAdjustmentParams:(uint64_t)a10 ev0Properties:(void *)a11 srPlist:(void *)a12 intermediateMetadata:(void *)a13;
- (uint64_t)doSyntheticReference:(double)a3 noiseDivisorOutputTex:(double)a4 lscGainsTex:(double)a5 evm:(double)a6 ev0:(double)a7 evmHomography:(double)a8 ev0Homography:(double)a9 evmProperties:(uint64_t)a10 evmGreenTintAdjustment:(void *)a11 ev0Properties:(void *)a12 nrfPlist:(void *)a13 intermediateMetadata:(void *)a14;
- (uint64_t)generateNoiseMap:(__n128)a3 outputNoiseMapChroma:(__n128)a4 lscGainsTex:(uint64_t)a5 ev0:(void *)a6 ev0Homography:(void *)a7 ev0Properties:(void *)a8;
- (uint64_t)generateNoiseMap:(__n128)a3 outputNoiseMapChroma:(__n128)a4 noiseDivisorTex:(__n128)a5 lscGainsTex:(__n128)a6 evm:(__n128)a7 ev0:(__n128)a8 evmHomography:(__n128)a9 ev0Homography:(uint64_t)a10 evmProperties:(void *)a11 evmGreenTintAdjustmentParams:(void *)a12 ev0Properties:(void *)a13;
@end

@implementation SyntheticReferenceStage

- (SyntheticReferenceStage)initWithMetalContext:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SyntheticReferenceStage;
  v6 = [(SyntheticReferenceStage *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, a3);
    v11 = objc_msgSend_sharedInstance(SyntheticReferenceShared, v8, v9, v10);
    v14 = objc_msgSend_getShaders_(v11, v12, v7->_metal, v13);
    shaders = v7->_shaders;
    v7->_shaders = v14;

    if (v7->_shaders)
    {
      v7->_pyramidLevels = objc_msgSend_pyramidLevels(SyntheticReferenceStage, v16, v17, v18);
      v7->_syntheticReferenceMode = 0;
      v19 = v7;
    }

    else
    {
      sub_29589D7A0();
      v19 = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v20;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [SyntheticReferenceShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, v3, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (uint64_t)_doHighlightRecovery:(__n128)a3 noiseDivisorOutputTex:(__n128)a4 evm:(__n128)a5 ev0:(__n128)a6 evmHomography:(__n128)a7 ev0Homography:(__n128)a8 evmProperties:(__n128)a9 evmGreenTintAdjustmentParams:(uint64_t)a10 ev0Properties:(void *)a11 srPlist:(void *)a12 intermediateMetadata:(void *)a13
{
  v23 = a11;
  v178 = a12;
  v24 = a13;
  v177 = a14;
  v25 = a17;
  v29 = a18;
  v30 = MEMORY[0x29EDB9270];
  v31 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v31 = *v30;
  }

  if (v31)
  {
    v32 = objc_msgSend_commandQueue(*(a1 + 8), v26, v27, v28);
    v36 = objc_msgSend_commandBuffer(v32, v33, v34, v35);

    objc_msgSend_setLabel_(v36, v37, @"KTRACE_START_MTL", v38);
    objc_msgSend_addCompletedHandler_(v36, v39, &unk_2A1CA94C0, v40);
    objc_msgSend_commit(v36, v41, v42, v43);
  }

  v189 = 0;
  v190 = 0;
  v165 = *(a16 + 224147);
  LODWORD(v189) = sub_295820728((a15 + 1), a16 + 16, a16);
  v44 = *(a16 + 224128);
  v188[10] = *(a16 + 224112);
  v188[11] = v44;
  v45 = *(a16 + 224064);
  v188[6] = *(a16 + 224048);
  v188[7] = v45;
  v46 = *(a16 + 224096);
  v188[8] = *(a16 + 224080);
  v188[9] = v46;
  v47 = *(a16 + 224000);
  v188[2] = *(a16 + 223984);
  v188[3] = v47;
  v48 = *(a16 + 224032);
  v188[4] = *(a16 + 224016);
  v188[5] = v48;
  v49 = *(a16 + 223968);
  v188[0] = *(a16 + 223952);
  v188[1] = v49;
  v50 = a15[14007];
  v51 = a15[14008];
  v52 = a15[14005];
  v188[22] = a15[14006];
  v188[23] = v50;
  v53 = a15[14009];
  v188[24] = v51;
  v188[25] = v53;
  v54 = a15[14003];
  v55 = a15[14004];
  v56 = a15[14001];
  v188[18] = a15[14002];
  v188[19] = v54;
  v188[20] = v55;
  v188[21] = v52;
  v57 = a15[13999];
  v58 = a15[14000];
  v59 = a15[13997];
  v188[14] = a15[13998];
  v188[15] = v57;
  v188[16] = v58;
  v188[17] = v56;
  v188[12] = *(a16 + 224144);
  v188[13] = v59;
  v191 = a5;
  v192 = a6;
  v193 = a7;
  v194 = a2;
  v195 = a3;
  v196 = a4;
  v197 = a8;
  v198 = a9;
  objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v60, a16 + 16, *(v25 + 7));
  v199 = v61;
  v65 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v62, v63, v64);
  objc_msgSend_setObject_forKeyedSubscript_(v29, v66, v65, @"syntheticReferencePedestal");

  v70 = objc_msgSend_commandQueue(*(a1 + 8), v67, v68, v69);
  v74 = objc_msgSend_commandBuffer(v70, v71, v72, v73);

  v78 = a1;
  v176 = v74;
  if (!v74)
  {
    sub_29589DB60(v184);
    v149 = LODWORD(v184[0]);
    v81 = v177;
    v82 = v178;
    goto LABEL_15;
  }

  v79 = objc_msgSend_computeCommandEncoder(v74, v75, v76, v77);
  v81 = v177;
  v82 = v178;
  if (!v79)
  {
    sub_29589DAC4(v184);
LABEL_24:
    v149 = LODWORD(v184[0]);
    goto LABEL_15;
  }

  v83 = v79;
  v172 = v29;
  v174 = v24;
  objc_msgSend_setBytes_length_atIndex_(v79, v80, v188, 688, 0);
  v87 = objc_msgSend_width(*(v177 + 42), v84, v85, v86);
  v91 = objc_msgSend_height(*(v177 + 42), v88, v89, v90);
  v94 = objc_msgSend_objectAtIndexedSubscript_(*(v25 + 1), v92, 0, v93);

  if (!v94)
  {
    sub_29589DA24();
    v149 = LODWORD(v184[0]);
    v24 = v174;
    v29 = v172;
    v78 = a1;
    goto LABEL_15;
  }

  v97 = v23;
  v186 = 0;
  v98 = objc_msgSend_objectAtIndexedSubscript_(*(v25 + 1), v95, 0, v96);
  v185[0] = v98[5];
  v101 = objc_msgSend_objectAtIndexedSubscript_(*(v25 + 1), v99, 0, v100);
  v185[1] = v101[6];
  v104 = objc_msgSend_objectAtIndexedSubscript_(*(v25 + 1), v102, 0, v103);
  v185[2] = v104[3];
  v107 = objc_msgSend_objectAtIndexedSubscript_(*(v25 + 1), v105, 0, v106);
  v185[3] = v107[4];
  v110 = objc_msgSend_objectAtIndexedSubscript_(*(v25 + 1), v108, 0, v109);
  LODWORD(v186) = v110[2];
  *&v111 = 0.5 / v87;
  *(&v111 + 1) = 0.5 / v91;
  v187 = v111;

  objc_msgSend_setBytes_length_atIndex_(v83, v112, v185, 32, 1);
  if (!v165)
  {
    v81 = v177;
    objc_msgSend_setTexture_atIndex_(v83, v113, *(v177 + 42), 0);
    objc_msgSend_setTexture_atIndex_(v83, v120, *(v177 + 62), 1);
    v24 = v174;
    objc_msgSend_setTexture_atIndex_(v83, v121, v174[42], 2);
    v117 = 0;
    v23 = v97;
    v82 = v178;
    v78 = a1;
    v29 = v172;
    objc_msgSend_setTexture_atIndex_(v83, v122, v174[62], 3);
    goto LABEL_13;
  }

  v81 = v177;
  v114 = *(v177 + 82);
  v24 = v174;
  v29 = v172;
  v78 = a1;
  if (v114)
  {
    v23 = v97;
    if (v174[82])
    {
      objc_msgSend_setTexture_atIndex_(v83, v113, v114, 0);
      objc_msgSend_setTexture_atIndex_(v83, v115, 0, 1);
      objc_msgSend_setTexture_atIndex_(v83, v116, v174[82], 2);
      v117 = 8;
      v82 = v178;
      objc_msgSend_setTexture_atIndex_(v83, v118, 0, 3);
LABEL_13:
      objc_msgSend_setTexture_atIndex_(v83, v119, v23[2], 4);
      objc_msgSend_setTexture_atIndex_(v83, v123, v23[3], 5);
      objc_msgSend_setTexture_atIndex_(v83, v124, v82, 6);
      *&v125 = v199;
      v127 = objc_msgSend_getKernel_configFlags_(*(v78 + 16), v126, 0, v117 | (4 * (v199 != 0.0)), v125);
      if (v127)
      {
        v180 = v127;
        objc_msgSend_setComputePipelineState_(v83, v128, v127, v129);
        objc_msgSend_setImageblockWidth_height_(v83, v130, 8, 4);
        v134 = objc_msgSend_width(v81[42], v131, v132, v133);
        v138 = objc_msgSend_height(v81[42], v135, v136, v137);
        v184[0] = v134;
        v184[1] = v138;
        v184[2] = 1;
        v182 = xmmword_2959D5ED0;
        v183 = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v83, v139, v184, &v182);
        objc_msgSend_endEncoding(v83, v140, v141, v142);
        objc_msgSend_commit(v176, v143, v144, v145);

        v149 = 0;
        goto LABEL_15;
      }

      sub_29589D844();
      goto LABEL_24;
    }

    sub_29589D8E4();
    v149 = LODWORD(v184[0]);
  }

  else
  {
    sub_29589D984();
    v149 = LODWORD(v184[0]);
    v23 = v97;
  }

  v82 = v178;
LABEL_15:
  v150 = MEMORY[0x29EDB9270];
  v151 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v151 = *v150;
  }

  if (v151)
  {
    v152 = objc_msgSend_commandQueue(*(v78 + 8), v146, v147, v148);
    v156 = objc_msgSend_commandBuffer(v152, v153, v154, v155);

    objc_msgSend_setLabel_(v156, v157, @"KTRACE_END_MTL", v158);
    v181[0] = MEMORY[0x29EDCA5F8];
    v181[1] = 3221225472;
    v181[2] = sub_29582B9AC;
    v181[3] = &unk_29EDDBE78;
    v181[5] = 0;
    v181[6] = 0;
    v181[4] = 1;
    objc_msgSend_addCompletedHandler_(v156, v159, v181, v160);
    objc_msgSend_commit(v156, v161, v162, v163);
  }

  return v149;
}

- (uint64_t)_doDeepShadowRecovery:(__n128)a3 noiseDivisorOutputTex:(__n128)a4 lscGainsTex:(__n128)a5 evm:(__n128)a6 ev0:(__n128)a7 evmHomography:(__n128)a8 ev0Homography:(__n128)a9 evmProperties:(uint64_t)a10 evmGreenTintAdjustmentParams:(void *)a11 ev0Properties:(void *)a12 srPlist:(void *)a13 intermediateMetadata:(void *)a14
{
  v225 = a11;
  v224 = a12;
  v236 = a13;
  v24 = a14;
  v25 = a15;
  v239 = a18;
  v29 = a19;
  gain = a17->meta.exposureParams.gain;
  v254 = 0;
  v31 = MEMORY[0x29EDB9270];
  v32 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v32 = *v31;
  }

  if (v32)
  {
    v33 = objc_msgSend_commandQueue(*(a1 + 8), v26, v27, v28);
    v37 = objc_msgSend_commandBuffer(v33, v34, v35, v36);

    objc_msgSend_setLabel_(v37, v38, @"KTRACE_START_MTL", v39);
    objc_msgSend_addCompletedHandler_(v37, v40, &unk_2A1CA94E0, v41);
    objc_msgSend_commit(v37, v42, v43, v44);
  }

  v256 = 0;
  v257 = 0;
  v231 = a17[1].meta.ltmCurves.ltmLut.bytes[179];
  LODWORD(v256) = sub_295820728(a16 + 16, &a17->meta.exposureParams, a17);
  v45 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights;
  v255[10] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows;
  v255[11] = v45;
  v46 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows;
  v255[6] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v255[7] = v46;
  v47 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid;
  v255[8] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights;
  v255[9] = v47;
  v48 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid;
  v255[2] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding;
  v255[3] = v48;
  v49 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights;
  v255[4] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows;
  v255[5] = v49;
  v50 = *&a17[1].meta.ltmCurves.ltmLut.version;
  v255[0] = *&a17[1].meta.ROI.size.height;
  v255[1] = v50;
  v51 = *(a16 + 224112);
  v52 = *(a16 + 224128);
  v53 = *(a16 + 224080);
  v255[22] = *(a16 + 224096);
  v255[23] = v51;
  v54 = *(a16 + 224144);
  v255[24] = v52;
  v255[25] = v54;
  v55 = *(a16 + 224048);
  v56 = *(a16 + 224064);
  v57 = *(a16 + 224016);
  v255[18] = *(a16 + 224032);
  v255[19] = v55;
  v255[20] = v56;
  v255[21] = v53;
  v58 = *(a16 + 223984);
  v59 = *(a16 + 224000);
  v60 = *(a16 + 223952);
  v255[14] = *(a16 + 223968);
  v255[15] = v58;
  v255[16] = v59;
  v255[17] = v57;
  v255[12] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid;
  v255[13] = v60;
  v258 = a5;
  v259 = a6;
  v260 = a7;
  v261 = a2;
  v262 = a3;
  v263 = a4;
  v265[3] = a8;
  v265[4] = a9;
  objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v61, &a17->meta.exposureParams, *(v239 + 7));
  v266 = v62;
  v264 = a17->meta.exposureParams.exposure_time / *(a16 + 64);
  v66 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v63, v64, v65);
  objc_msgSend_setObject_forKeyedSubscript_(v29, v67, v66, @"syntheticReferencePedestal");

  v226 = v25;
  if ((objc_msgSend_fillRawNoiseModelParameters_exposureParams_(DeepFusionCommon, v68, v265, a16 + 16) & 1) == 0)
  {
    sub_29589DBFC(&v250);
LABEL_64:
    v160 = 0;
    v230 = 0;
    v241 = 0;
    v118 = 0;
    v117 = 0;
    v208 = v250;
    goto LABEL_43;
  }

  v72 = v266;
  v73 = *(a1 + 24);
  v74 = objc_msgSend_allocator(*(a1 + 8), v69, v70, v71);
  v78 = objc_msgSend_newTextureDescriptor(v74, v75, v76, v77);

  if (!v78)
  {
    sub_29589E354(&v250);
    goto LABEL_64;
  }

  v228 = v24;
  v82 = (v73 - 1);
  v83 = objc_msgSend_width(v25[v82 + 42], v79, v80, v81);
  v87 = objc_msgSend_desc(v78, v84, v85, v86);
  objc_msgSend_setWidth_(v87, v88, v83, v89);

  v93 = objc_msgSend_height(v25[v82 + 42], v90, v91, v92);
  v97 = objc_msgSend_desc(v78, v94, v95, v96);
  objc_msgSend_setHeight_(v97, v98, v93, v99);

  v103 = objc_msgSend_desc(v78, v100, v101, v102);
  objc_msgSend_setUsage_(v103, v104, 3, v105);

  v230 = v78;
  v109 = objc_msgSend_desc(v78, v106, v107, v108);
  objc_msgSend_setPixelFormat_(v109, v110, 115, v111);

  if (v73 < 1)
  {
    v119 = 0;
    v118 = 0;
    v117 = 0;
LABEL_40:
    v241 = v119;
    v31 = MEMORY[0x29EDB9270];
    if (v254)
    {
      sub_29589DDD0(&v250);
      v160 = 0;
      v208 = v250;
    }

    else
    {
      v160 = 0;
      v208 = 0;
    }

    v24 = v228;
    goto LABEL_43;
  }

  v115 = v25;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  if (v231)
  {
    v120 = 8;
  }

  else
  {
    v120 = 0;
  }

  v235 = v120 | (4 * (v72 != 0.0));
  v238 = &v228[v82];
  v243 = &v115[v82];
  v233 = (v73 - 1);
  while (1)
  {
    v121 = v117;
    v122 = objc_msgSend_commandQueue(*(a1 + 8), v112, v113, v114);
    v117 = objc_msgSend_commandBuffer(v122, v123, v124, v125);

    if (!v117)
    {
      v241 = v119;
      sub_29589E2B8(&v250);
      goto LABEL_58;
    }

    v129 = objc_msgSend_computeCommandEncoder(v117, v126, v127, v128);

    if (!v129)
    {
      v241 = v119;
      sub_29589E21C(&v250);
      v160 = 0;
      v118 = 0;
      goto LABEL_59;
    }

    v131 = v82 + v116;
    v118 = v129;
    objc_msgSend_setBytes_length_atIndex_(v129, v130, v255, 688, 0);
    v135 = objc_msgSend_width(v243[v116 + 42], v132, v133, v134);
    v140 = objc_msgSend_height(v243[v116 + 42], v136, v137, v138);
    if (v82 + v116 || !v231)
    {
      objc_msgSend_setTexture_atIndex_(v129, v139, v243[v116 + 42], 0);
      objc_msgSend_setTexture_atIndex_(v129, v146, v243[v116 + 62], 1);
      objc_msgSend_setTexture_atIndex_(v129, v147, v238[v116 + 42], 4);
      objc_msgSend_setTexture_atIndex_(v129, v148, v238[v116 + 62], 5);
    }

    else
    {
      v141 = v226[82];
      if (!v141)
      {
        v241 = v119;
        sub_29589E180(&v250);
        goto LABEL_58;
      }

      if (!v228[82])
      {
        v241 = v119;
        sub_29589E0E4(&v250);
        v160 = 0;
        v208 = v250;
        v24 = v228;
        goto LABEL_61;
      }

      objc_msgSend_setTexture_atIndex_(v129, v139, v141, 0);
      objc_msgSend_setTexture_atIndex_(v129, v142, 0, 1);
      objc_msgSend_setTexture_atIndex_(v129, v143, v228[82], 4);
      objc_msgSend_setTexture_atIndex_(v129, v144, 0, 5);
    }

    if (v116)
    {
      objc_msgSend_setTexture_atIndex_(v129, v145, v243[v116 + 43], 2);
      objc_msgSend_setTexture_atIndex_(v129, v149, v243[v116 + 63], 3);
      objc_msgSend_setTexture_atIndex_(v129, v150, v238[v116 + 43], 6);
      objc_msgSend_setTexture_atIndex_(v129, v151, v238[v116 + 63], 7);
    }

    objc_msgSend_setTexture_atIndex_(v129, v145, v236, 11);
    if (v131)
    {
      v241 = v119;
      objc_msgSend_setLabel_(v230, v152, 0, v153);
      v157 = objc_msgSend_allocator(*(a1 + 8), v154, v155, v156);
      v160 = objc_msgSend_newTextureWithDescriptor_(v157, v158, v230, v159);

      if (!v160)
      {
        sub_29589DC98(&v250);
        goto LABEL_59;
      }

      objc_msgSend_setTexture_atIndex_(v118, v161, v160, 13);
      v165 = objc_msgSend_desc(v230, v162, v163, v164);
      v169 = objc_msgSend_width(v165, v166, v167, v168);
      objc_msgSend_setWidth_(v165, v170, 2 * v169, v171);

      v175 = objc_msgSend_desc(v230, v172, v173, v174);
      v179 = objc_msgSend_height(v175, v176, v177, v178);
      objc_msgSend_setHeight_(v175, v180, 2 * v179, v181);

      if (!v116)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    objc_msgSend_setTexture_atIndex_(v129, v152, v224, 16);
    v185 = v225[2];
    if (!v185)
    {
      v241 = v119;
      sub_29589E048(&v250);
      goto LABEL_58;
    }

    if (!v225[3])
    {
      break;
    }

    objc_msgSend_setTexture_atIndex_(v129, v184, v185, 14);
    objc_msgSend_setTexture_atIndex_(v129, v186, v225[3], 15);
    v160 = 0;
    if (!v116)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (!v254)
    {
      v241 = v119;
      sub_29589DD34(&v250);
      goto LABEL_59;
    }

    objc_msgSend_setTexture_atIndex_(v118, v182, v254, 12);
LABEL_31:
    v187 = objc_msgSend_objectAtIndexedSubscript_(*(v239 + 2), v182, v131, v183);
    if (!v187)
    {
      v241 = v119;
      sub_29589DF10(&v250);
      goto LABEL_59;
    }

    v188 = v187;
    v189 = v131 == 0;
    v253 = 0;
    v251 = 0u;
    v252 = 0u;
    v250 = 0u;
    LODWORD(v250) = sub_29584472C(*(v187 + 8), gain);
    DWORD1(v250) = sub_29584472C(v188[2], gain);
    DWORD2(v250) = sub_29584472C(v188[5], gain);
    HIDWORD(v250) = sub_29584472C(v188[6], gain);
    LODWORD(v251) = sub_29584472C(v188[3], gain);
    DWORD1(v251) = sub_29584472C(v188[4], gain);
    DWORD2(v251) = sub_29584472C(v188[7], gain);
    HIDWORD(v251) = sub_29584472C(v188[8], gain);
    LODWORD(v252) = sub_29584472C(v188[9], gain);
    DWORD1(v252) = sub_29584472C(v188[10], gain);
    DWORD2(v252) = sub_29584472C(v188[11], gain);
    *&v190 = 0.5 / v135;
    *(&v190 + 1) = 0.5 / v140;
    v253 = v190;
    objc_msgSend_setBytes_length_atIndex_(v118, v191, &v250, 56, 1);
    v193 = v235;
    if (!v116)
    {
      v193 = v235 + 1;
    }

    v194 = objc_msgSend_getKernel_configFlags_(*(a1 + 16), v192, 4, v193 | (2 * v189));

    if (!v194)
    {
      sub_29589DE6C(&v250, v188, &v248);
      v241 = 0;
      v208 = v248.u32[0];
      goto LABEL_60;
    }

    v119 = v194;
    objc_msgSend_setImageblockWidth_height_(v118, v195, 16, 16);
    objc_msgSend_setComputePipelineState_(v118, v196, v194, v197);
    v198.i64[0] = v135;
    v198.i64[1] = v140;
    v199 = vaddq_s64(v198, vdupq_n_s64(0xBuLL));
    v199.i64[0] /= 0xCuLL;
    v199.i64[1] /= 0xCuLL;
    v248 = v199;
    v249 = 1;
    v246 = vdupq_n_s64(0x10uLL);
    v247 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v118, v200, &v248, &v246);
    objc_msgSend_endEncoding(v118, v201, v202, v203);
    objc_msgSend_commit(v117, v204, v205, v206);
    if (v254)
    {
      FigMetalDecRef();
    }

    v207 = v254;
    v254 = v160;

    --v116;
    v82 = v233;
    if (v233 + v116 + 1 <= 0)
    {
      goto LABEL_40;
    }
  }

  v241 = v119;
  sub_29589DFAC(&v250);
LABEL_58:
  v160 = 0;
LABEL_59:
  v208 = v250;
LABEL_60:
  v24 = v228;
LABEL_61:
  v31 = MEMORY[0x29EDB9270];
LABEL_43:
  v209 = *v31;
  if (*v31 == 1)
  {
    kdebug_trace();
    v209 = *v31;
  }

  if (v209)
  {
    v210 = objc_msgSend_commandQueue(*(a1 + 8), v112, v113, v114);
    v214 = objc_msgSend_commandBuffer(v210, v211, v212, v213);

    objc_msgSend_setLabel_(v214, v215, @"KTRACE_END_MTL", v216);
    v245[0] = MEMORY[0x29EDCA5F8];
    v245[1] = 3221225472;
    v245[2] = sub_29582C720;
    v245[3] = &unk_29EDDBE78;
    v245[5] = 0;
    v245[6] = 0;
    v245[4] = 2;
    objc_msgSend_addCompletedHandler_(v214, v217, v245, v218);
    objc_msgSend_commit(v214, v219, v220, v221);
  }

  return v208;
}

- (uint64_t)generateNoiseMap:(__n128)a3 outputNoiseMapChroma:(__n128)a4 noiseDivisorTex:(__n128)a5 lscGainsTex:(__n128)a6 evm:(__n128)a7 ev0:(__n128)a8 evmHomography:(__n128)a9 ev0Homography:(uint64_t)a10 evmProperties:(void *)a11 evmGreenTintAdjustmentParams:(void *)a12 ev0Properties:(void *)a13
{
  v137 = a11;
  v139 = a12;
  v138 = a13;
  v24 = a14;
  v25 = a15;
  v29 = a16;
  v30 = MEMORY[0x29EDB9270];
  v31 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v31 = *v30;
  }

  if (v31)
  {
    v32 = objc_msgSend_commandQueue(*(a1 + 8), v26, v27, v28);
    v36 = objc_msgSend_commandBuffer(v32, v33, v34, v35);

    objc_msgSend_setLabel_(v36, v37, @"KTRACE_START_MTL", v38);
    objc_msgSend_addCompletedHandler_(v36, v39, &unk_2A1CA9500, v40);
    objc_msgSend_commit(v36, v41, v42, v43);
  }

  v145 = 0;
  v146 = 0;
  v44 = a18[1].meta.ltmCurves.ltmLut.bytes[179];
  LODWORD(v145) = sub_295820728(&a17->meta.exposureParams, &a18->meta.exposureParams, a18);
  v45 = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights;
  v144[10] = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows;
  v144[11] = v45;
  v46 = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows;
  v144[6] = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v144[7] = v46;
  v47 = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid;
  v144[8] = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights;
  v144[9] = v47;
  v48 = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid;
  v144[2] = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding;
  v144[3] = v48;
  v49 = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights;
  v144[4] = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows;
  v144[5] = v49;
  v50 = *&a18[1].meta.ltmCurves.ltmLut.version;
  v144[0] = *&a18[1].meta.ROI.size.height;
  v144[1] = v50;
  v51 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows;
  v52 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights;
  v53 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights;
  v144[22] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid;
  v144[23] = v51;
  v54 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid;
  v144[24] = v52;
  v144[25] = v54;
  v55 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v56 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows;
  v57 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows;
  v144[18] = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights;
  v144[19] = v55;
  v144[20] = v56;
  v144[21] = v53;
  v58 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding;
  v59 = *&a17[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid;
  v60 = *&a17[1].meta.ROI.size.height;
  v144[14] = *&a17[1].meta.ltmCurves.ltmLut.version;
  v144[15] = v58;
  v144[16] = v59;
  v144[17] = v57;
  v144[12] = *&a18[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid;
  v144[13] = v60;
  v147 = a5;
  v148 = a6;
  v149 = a7;
  v150 = a2;
  v151 = a3;
  v152 = a4;
  v155[3] = a8;
  v155[4] = a9;
  v153 = a18->meta.exposureParams.exposure_time / a17->meta.exposureParams.exposure_time;
  if ((objc_msgSend_fillRawNoiseModelParameters_exposureParams_(DeepFusionCommon, v61, &v154, &a18->meta.exposureParams) & 1) == 0)
  {
    sub_29589E3F0(v143);
    v113 = LODWORD(v143[0]);
    v66 = v137;
    goto LABEL_16;
  }

  v66 = v137;
  if (objc_msgSend_fillRawNoiseModelParameters_exposureParams_(DeepFusionCommon, v62, v155, &a17->meta.exposureParams))
  {
    v67 = objc_msgSend_commandQueue(*(a1 + 8), v63, v64, v65);
    v71 = objc_msgSend_commandBuffer(v67, v68, v69, v70);

    if (v71)
    {
      v75 = objc_msgSend_computeCommandEncoder(v71, v72, v73, v74);
      if (v75)
      {
        v77 = v75;
        objc_msgSend_setBytes_length_atIndex_(v75, v76, v144, 688, 0);
        if (!v44)
        {
          objc_msgSend_setTexture_atIndex_(v77, v78, v29[42], 0);
          objc_msgSend_setTexture_atIndex_(v77, v84, v29[62], 1);
          objc_msgSend_setTexture_atIndex_(v77, v85, v25[42], 2);
          objc_msgSend_setTexture_atIndex_(v77, v86, v25[62], 3, *&a5, *&a2, *&a6, *&a3, *&a7, *&a4, *&a8, *&a9);
          goto LABEL_14;
        }

        v79 = v29[82];
        if (v79)
        {
          if (v25[82])
          {
            objc_msgSend_setTexture_atIndex_(v77, v78, v79, 0);
            objc_msgSend_setTexture_atIndex_(v77, v80, 0, 1);
            objc_msgSend_setTexture_atIndex_(v77, v81, v25[82], 2);
            v44 = 8;
            objc_msgSend_setTexture_atIndex_(v77, v82, 0, 3, *&a5, *&a2, *&a6, *&a3, *&a7, *&a4, *&a8, *&a9);
LABEL_14:
            objc_msgSend_setTexture_atIndex_(v77, v83, v24, 4);
            objc_msgSend_setTexture_atIndex_(v77, v87, v138, 5);
            objc_msgSend_setTexture_atIndex_(v77, v88, v137, 6);
            objc_msgSend_setTexture_atIndex_(v77, v89, v139, 7);
            v91 = objc_msgSend_getKernel_configFlags_(*(a1 + 16), v90, 1, v44);
            if (v91)
            {
              v94 = v91;
              objc_msgSend_setComputePipelineState_(v77, v92, v91, v93);
              v98 = objc_msgSend_width(v29[42], v95, v96, v97);
              v102 = objc_msgSend_height(v29[42], v99, v100, v101);
              v143[0] = v98;
              v143[1] = v102;
              v143[2] = 1;
              v141 = xmmword_2959D5ED0;
              v142 = 1;
              objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v77, v103, v143, &v141);
              objc_msgSend_endEncoding(v77, v104, v105, v106);
              objc_msgSend_commit(v71, v107, v108, v109);

              v113 = 0;
              goto LABEL_16;
            }

            sub_29589E528();
            goto LABEL_28;
          }

          sub_29589E5CC();
        }

        else
        {
          sub_29589E670();
        }
      }

      else
      {
        sub_29589E714();
      }
    }

    else
    {
      sub_29589E7B4(v143);
    }
  }

  else
  {
    sub_29589E48C(v143);
  }

LABEL_28:
  v113 = LODWORD(v143[0]);
LABEL_16:
  v114 = MEMORY[0x29EDB9270];
  v115 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v115 = *v114;
  }

  if (v115)
  {
    v116 = objc_msgSend_commandQueue(*(a1 + 8), v110, v111, v112);
    v120 = objc_msgSend_commandBuffer(v116, v117, v118, v119);

    objc_msgSend_setLabel_(v120, v121, @"KTRACE_END_MTL", v122);
    v140[0] = MEMORY[0x29EDCA5F8];
    v140[1] = 3221225472;
    v140[2] = sub_29582CDFC;
    v140[3] = &unk_29EDDBE78;
    v140[5] = 0;
    v140[6] = 0;
    v140[4] = 3;
    objc_msgSend_addCompletedHandler_(v120, v123, v140, v124);
    objc_msgSend_commit(v120, v125, v126, v127);
  }

  return v113;
}

- (uint64_t)generateNoiseMap:(__n128)a3 outputNoiseMapChroma:(__n128)a4 lscGainsTex:(uint64_t)a5 ev0:(void *)a6 ev0Homography:(void *)a7 ev0Properties:(void *)a8
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v21 = a9;
  v117 = 0u;
  memset(v118, 0, 144);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  memset(&v109[13], 0, 208);
  v22 = MEMORY[0x29EDB9270];
  v23 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v23 = *v22;
  }

  if (v23)
  {
    v24 = objc_msgSend_commandQueue(*(a1 + 8), v18, v19, v20);
    v28 = objc_msgSend_commandBuffer(v24, v25, v26, v27);

    objc_msgSend_setLabel_(v28, v29, @"KTRACE_START_MTL", v30);
    objc_msgSend_addCompletedHandler_(v28, v31, &unk_2A1CA9520, v32);
    objc_msgSend_commit(v28, v33, v34, v35);
  }

  v36 = *(a10 + 224147);
  LODWORD(v110) = 1065353216;
  v37 = *(a10 + 224128);
  v109[10] = *(a10 + 224112);
  v109[11] = v37;
  v109[12] = *(a10 + 224144);
  v38 = *(a10 + 224064);
  v109[6] = *(a10 + 224048);
  v109[7] = v38;
  v39 = *(a10 + 224096);
  v109[8] = *(a10 + 224080);
  v109[9] = v39;
  v40 = *(a10 + 224000);
  v109[2] = *(a10 + 223984);
  v109[3] = v40;
  v41 = *(a10 + 224032);
  v109[4] = *(a10 + 224016);
  v109[5] = v41;
  v42 = *(a10 + 223968);
  v109[0] = *(a10 + 223952);
  v109[1] = v42;
  v111 = a2;
  v112 = a3;
  v113 = a4;
  LODWORD(v117) = 1065353216;
  if (objc_msgSend_fillRawNoiseModelParameters_exposureParams_(DeepFusionCommon, v18, v118, a10 + 16, *&a2, *&a3, *&a4))
  {
    v46 = objc_msgSend_commandQueue(*(a1 + 8), v43, v44, v45);
    v50 = objc_msgSend_commandBuffer(v46, v47, v48, v49);

    if (v50)
    {
      v54 = objc_msgSend_computeCommandEncoder(v50, v51, v52, v53);
      if (v54)
      {
        v56 = v54;
        objc_msgSend_setBytes_length_atIndex_(v54, v55, v109, 688, 0);
        if (v36)
        {
          v58 = v21[82];
          if (!v58)
          {
            sub_29589E990();
            goto LABEL_26;
          }

          objc_msgSend_setTexture_atIndex_(v56, v57, v58, 0);
          v36 = 8;
          objc_msgSend_setTexture_atIndex_(v56, v59, 0, 1);
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(v56, v57, v21[42], 0);
          objc_msgSend_setTexture_atIndex_(v56, v61, v21[62], 1);
        }

        objc_msgSend_setTexture_atIndex_(v56, v60, v17, 2);
        objc_msgSend_setTexture_atIndex_(v56, v62, v15, 3);
        objc_msgSend_setTexture_atIndex_(v56, v63, v16, 4);
        v65 = objc_msgSend_getKernel_configFlags_(*(a1 + 16), v64, 2, v36);
        if (v65)
        {
          v68 = v65;
          objc_msgSend_setComputePipelineState_(v56, v66, v65, v67);
          v72 = objc_msgSend_width(v21[42], v69, v70, v71);
          v76 = objc_msgSend_height(v21[42], v73, v74, v75);
          v108[0] = v72;
          v108[1] = v76;
          v108[2] = 1;
          v106 = xmmword_2959D5ED0;
          v107 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v56, v77, v108, &v106);
          objc_msgSend_endEncoding(v56, v78, v79, v80);
          objc_msgSend_commit(v50, v81, v82, v83);

          v87 = 0;
LABEL_14:
          v22 = MEMORY[0x29EDB9270];
          goto LABEL_15;
        }

        sub_29589E8EC();
LABEL_26:
        v87 = LODWORD(v108[0]);
        goto LABEL_14;
      }

      sub_29589EA34();
    }

    else
    {
      sub_29589EAD4(v108);
    }
  }

  else
  {
    sub_29589E850(v108);
  }

  v87 = LODWORD(v108[0]);
LABEL_15:
  v88 = *v22;
  if (*v22 == 1)
  {
    kdebug_trace();
    v88 = *v22;
  }

  if (v88)
  {
    v89 = objc_msgSend_commandQueue(*(a1 + 8), v84, v85, v86);
    v93 = objc_msgSend_commandBuffer(v89, v90, v91, v92);

    objc_msgSend_setLabel_(v93, v94, @"KTRACE_END_MTL", v95);
    v105[0] = MEMORY[0x29EDCA5F8];
    v105[1] = 3221225472;
    v105[2] = sub_29582D3D4;
    v105[3] = &unk_29EDDBE78;
    v105[5] = 0;
    v105[6] = 0;
    v105[4] = 4;
    objc_msgSend_addCompletedHandler_(v93, v96, v105, v97);
    objc_msgSend_commit(v93, v98, v99, v100);
  }

  return v87;
}

- (int)_doColorConvertEv0ToOutput:(id)a3 ev0:(id)a4 ev0Properties:(const frameProperties_t *)a5 srPlist:(id)a6 intermediateMetadata:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v18 = a7;
  v19 = MEMORY[0x29EDB9270];
  v20 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v20 = *v19;
  }

  if (v20)
  {
    v21 = objc_msgSend_commandQueue(self->_metal, v15, v16, v17);
    v25 = objc_msgSend_commandBuffer(v21, v22, v23, v24);

    objc_msgSend_setLabel_(v25, v26, @"KTRACE_START_MTL", v27);
    objc_msgSend_addCompletedHandler_(v25, v28, &unk_2A1CA9540, v29);
    objc_msgSend_commit(v25, v30, v31, v32);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  if (v12)
  {
    if (v13)
    {
      v33 = a5[1].meta.ltmCurves.ltmLut.bytes[179];
      v150 = 0uLL;
      *v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v146 = 0uLL;
      v147 = 0uLL;
      v144 = 0uLL;
      v145 = 0uLL;
      v142 = 0uLL;
      v143 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v138 = 0uLL;
      v139 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      v134 = 0uLL;
      v135 = 0uLL;
      v132 = 0uLL;
      v133 = 0uLL;
      v130 = 0uLL;
      v131 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v34 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid;
      v111 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding;
      v112 = v34;
      v35 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows;
      v115 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
      v116 = v35;
      v36 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights;
      v113 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows;
      v114 = v36;
      v37 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid;
      v120 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights;
      v121 = v37;
      v38 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows;
      v118 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid;
      v119 = v38;
      v117 = *&a5[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights;
      v39 = *&a5[1].meta.ltmCurves.ltmLut.version;
      v109 = *&a5[1].meta.ROI.size.height;
      v110 = v39;
      objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v15, &a5->meta.exposureParams, v14[7]);
      v151[0] = v40;
      v44 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v41, v42, v43);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v45, v44, @"syntheticReferencePedestal");

      v49 = objc_msgSend_commandQueue(self->_metal, v46, v47, v48);
      v53 = objc_msgSend_commandBuffer(v49, v50, v51, v52);

      if (v53)
      {
        v57 = objc_msgSend_computeCommandEncoder(v53, v54, v55, v56);
        if (v57)
        {
          v59 = v57;
          objc_msgSend_setBytes_length_atIndex_(v57, v58, &v109, 688, 0);
          if (v33)
          {
            v61 = v13[82];
            if (!v61)
            {
              sub_29589EC14();
              goto LABEL_28;
            }

            objc_msgSend_setTexture_atIndex_(v59, v60, v61, 0);
            v33 = 8;
            objc_msgSend_setTexture_atIndex_(v59, v62, 0, 1);
          }

          else
          {
            objc_msgSend_setTexture_atIndex_(v59, v60, v13[42], 0);
            objc_msgSend_setTexture_atIndex_(v59, v64, v13[62], 1);
          }

          objc_msgSend_setTexture_atIndex_(v59, v63, v12[2], 2);
          objc_msgSend_setTexture_atIndex_(v59, v65, v12[3], 3);
          *&v66 = v151[0];
          v68 = objc_msgSend_getKernel_configFlags_(self->_shaders, v67, 3, v33 | (4 * (v151[0] != 0.0)), v66);
          if (v68)
          {
            v71 = v68;
            objc_msgSend_setComputePipelineState_(v59, v69, v68, v70);
            v75 = objc_msgSend_width(v13[42], v72, v73, v74);
            v79 = objc_msgSend_height(v13[42], v76, v77, v78);
            v108[0] = v75;
            v108[1] = v79;
            v108[2] = 1;
            v106 = xmmword_2959D5ED0;
            v107 = 1;
            objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v59, v80, v108, &v106);
            objc_msgSend_endEncoding(v59, v81, v82, v83);
            objc_msgSend_commit(v53, v84, v85, v86);

            v90 = 0;
LABEL_15:
            v19 = MEMORY[0x29EDB9270];
            goto LABEL_16;
          }

          sub_29589EB70();
LABEL_28:
          v90 = v108[0];
          goto LABEL_15;
        }

        sub_29589ECB8();
      }

      else
      {
        sub_29589ED64(v108);
      }
    }

    else
    {
      sub_29589EE00(v108);
    }
  }

  else
  {
    sub_29589EE9C(v108);
  }

  v90 = v108[0];
LABEL_16:
  v91 = *v19;
  if (*v19 == 1)
  {
    kdebug_trace();
    v91 = *v19;
  }

  if (v91)
  {
    v92 = objc_msgSend_commandQueue(self->_metal, v87, v88, v89);
    v96 = objc_msgSend_commandBuffer(v92, v93, v94, v95);

    objc_msgSend_setLabel_(v96, v97, @"KTRACE_END_MTL", v98);
    v105[0] = MEMORY[0x29EDCA5F8];
    v105[1] = 3221225472;
    v105[2] = sub_29582DA24;
    v105[3] = &unk_29EDDBE78;
    v105[5] = 0;
    v105[6] = 0;
    v105[4] = 5;
    objc_msgSend_addCompletedHandler_(v96, v99, v105, v100);
    objc_msgSend_commit(v96, v101, v102, v103);
  }

  return v90;
}

- (int)startDetectorsWithGrayGhost:(id)a3 motionDetection:(id)a4 evm:(id)a5 ev0:(id)a6 evmProperties:(const frameProperties_t *)a7 ev0Properties:(const frameProperties_t *)a8 nrfPlist:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = v19;
  self->_syntheticReferenceMode = 0;
  self->_useMotionDetector = 0;
  v35 = v15;
  if (!v15)
  {
    sub_29589F4FC(&v37);
LABEL_27:
    v23 = 0;
    v22 = 0;
    goto LABEL_28;
  }

  if (!v16)
  {
    sub_29589F460(&v37);
LABEL_25:
    v23 = 0;
    v22 = 0;
    v15 = 0;
LABEL_28:
    started = v37;
    goto LABEL_17;
  }

  if (!v17)
  {
    sub_29589F3C4(&v37);
    goto LABEL_25;
  }

  if (!v18)
  {
    sub_29589F328(&v37);
    goto LABEL_25;
  }

  if (!a7)
  {
    sub_29589F28C(&v37);
    goto LABEL_25;
  }

  if (!a8)
  {
    sub_29589F1F0(&v37);
    goto LABEL_25;
  }

  if (!v19)
  {
    sub_29589F154(&v37);
    goto LABEL_25;
  }

  v21 = v19[7];
  v15 = v21;
  if (!v21)
  {
    sub_29589F0B8(&v37);
    goto LABEL_27;
  }

  v36[0] = v21[9];
  v36[1] = v21[8];
  v36[2] = v21[10];
  v22 = malloc_type_malloc(0x36BE0uLL, 0x1020040DF6BF6F3uLL);
  if (!v22)
  {
    sub_29589F058();
    v23 = 0;
LABEL_31:
    started = -12786;
    goto LABEL_17;
  }

  v23 = malloc_type_malloc(0x36BE0uLL, 0x1020040DF6BF6F3uLL);
  if (!v23)
  {
    sub_29589EFF8();
    goto LABEL_31;
  }

  memcpy(v22, a7, 0x36BE0uLL);
  memcpy(v23, a8, 0x36BE0uLL);
  v24 = MEMORY[0x29EDCA928];
  v25 = *MEMORY[0x29EDCA928];
  v26 = *(MEMORY[0x29EDCA928] + 16);
  v22[13993] = *MEMORY[0x29EDCA928];
  v22[13994] = v26;
  v27 = *(v24 + 32);
  v22[13995] = v27;
  v23[13993] = v25;
  v23[13994] = v26;
  v23[13995] = v27;
  hasChromaBias_atBand_params = objc_msgSend_runGrayGhostDetection_ev0Bands_evmProperties_ev0Properties_hasChromaBias_atBand_params_(v35, v28, v17, v18, v22, v23, 0, v15[6], v36);
  if (hasChromaBias_atBand_params)
  {
    started = hasChromaBias_atBand_params;
    sub_29589EF38();
  }

  else
  {
    v31 = a7->meta.exposureParams.exposure_time * a7->meta.exposureParams.gain;
    v32 = v31 <= (*(v15 + 12) / 0.98) && v31 >= (*(v15 + 13) * 0.98);
    self->_useMotionDetector = v32;
    started = objc_msgSend_startMotionDetection_evm_ev0_evmProperties_ev0Properties_(v16, v30, v20, v17[43], v18[43], v22, v23);
    if (started)
    {
      sub_29589EF98();
    }
  }

LABEL_17:
  free(v22);
  free(v23);

  return started;
}

- (int)collectDetectorsResultsWithGrayGhost:(id)a3 motionDetection:(id)a4 nrfPlist:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    sub_29589F76C(&v27);
LABEL_18:
    v25 = v27;
    goto LABEL_13;
  }

  if (!v9)
  {
    sub_29589F6D0(&v27);
    goto LABEL_18;
  }

  if (!v10)
  {
    sub_29589F634(&v27);
    goto LABEL_18;
  }

  v12 = v10[7];
  if (!v12)
  {
    sub_29589F598(&v27);
    goto LABEL_18;
  }

  v16 = v12;
  objc_msgSend_getGrayGhostResultSync(v8, v13, v14, v15);
  v18 = v17;
  objc_msgSend_getMotionDetectionResultSync(v9, v19, v20, v21);
  v23 = self->_useMotionDetector && v22 > v16[11];
  if (v18 > v16[7] || v23)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  self->_syntheticReferenceMode = v24;

  v25 = 0;
LABEL_13:

  return v25;
}

- (uint64_t)doSyntheticReference:(double)a3 noiseDivisorOutputTex:(double)a4 lscGainsTex:(double)a5 evm:(double)a6 ev0:(double)a7 evmHomography:(double)a8 ev0Homography:(double)a9 evmProperties:(uint64_t)a10 evmGreenTintAdjustment:(void *)a11 ev0Properties:(void *)a12 nrfPlist:(void *)a13 intermediateMetadata:(void *)a14
{
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a18;
  v33 = a19;
  v73 = v29;
  if (v27)
  {
    v34 = *(a1 + 24);
    if (v34 > v27[2])
    {
      sub_29589F8A4(v76);
      goto LABEL_37;
    }

    if (!*(a1 + 32))
    {
      sub_29589F808(v76);
LABEL_37:
      v59 = v76[0];
      goto LABEL_28;
    }
  }

  else
  {
    v34 = *(a1 + 24);
  }

  if (v34 > v28[2])
  {
    sub_2958A0110(v76);
    goto LABEL_37;
  }

  if (!v24)
  {
    sub_2958A0074(v76);
    goto LABEL_37;
  }

  v35 = objc_msgSend_width(v25, v30, v31, v32);
  if (objc_msgSend_width(v24[2], v36, v37, v38) != 2 * v35)
  {
    sub_29589F940(v76);
    goto LABEL_37;
  }

  v42 = objc_msgSend_height(v25, v39, v40, v41);
  if (objc_msgSend_height(v24[2], v43, v44, v45) != 2 * v42)
  {
    sub_29589F9DC(v76);
    goto LABEL_37;
  }

  if (!v26)
  {
    sub_29589FFD8(v76);
    goto LABEL_37;
  }

  v75 = v26;
  v46 = v29[7];
  if (!v46)
  {
    sub_29589FF3C(v76);
LABEL_43:
    v59 = v76[0];
    goto LABEL_27;
  }

  v49 = v46;
  if (LODWORD(a17[1].meta.ROI.origin.y) != 2)
  {
    sub_29589FA78();
    goto LABEL_43;
  }

  v50 = a17[1].meta.ltmCurves.ltmLut.bytes[179];
  if (v50 == 1 && !*(v28 + 82))
  {
    sub_29589FE90();
    goto LABEL_43;
  }

  v51 = 0x29EDBA000uLL;
  if (!v27)
  {
    v60 = objc_msgSend__doColorConvertEv0ToOutput_ev0_ev0Properties_srPlist_intermediateMetadata_(a1, v47, v24, v28, a17, v46, v33);
    if (v60)
    {
      v59 = v60;
      sub_29589FE18(v60, v49);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (*(a16 + 223936) != 2)
  {
    sub_29589FB24();
    goto LABEL_43;
  }

  if (*(a16 + 224147) != 1)
  {
    goto LABEL_20;
  }

  if (!*(v27 + 82))
  {
    sub_29589FD6C();
    goto LABEL_43;
  }

  if ((v50 & 1) == 0)
  {
    sub_29589FBD0();
    goto LABEL_43;
  }

LABEL_20:
  v52 = *(a1 + 32);
  v53 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v47, v52 != 1, v48);
  objc_msgSend_setObject_forKeyedSubscript_(v33, v54, v53, @"DSR");

  if (v52 == 1)
  {
    v61 = objc_msgSend__doHighlightRecovery_noiseDivisorOutputTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties_srPlist_intermediateMetadata_(a1, v55, v24, v25, v27, v28, a16, a17, a2, a3, a4, a5, a6, a7, a8, a9, v49, v33);
    v51 = 0x29EDBA000uLL;
    if (v61)
    {
      v59 = v61;
      sub_29589FC7C(v61, v49);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v56 = objc_msgSend__doDeepShadowRecovery_noiseDivisorOutputTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties_srPlist_intermediateMetadata_(a1, v55, v24, v25, v75, v27, v28, a16, a2, a3, a4, a5, a6, a7, a8, a9, a17, v49, v33);
  v51 = 0x29EDBA000;
  if (!v56)
  {
LABEL_26:
    v62 = objc_msgSend_numberWithUnsignedInt_(*(v51 + 112), v57, *(a1 + 32), v58);
    objc_msgSend_setObject_forKeyedSubscript_(v33, v63, v62, @"Mode");

    v59 = 0;
    goto LABEL_27;
  }

  v59 = v56;
  sub_29589FCF4(v56, v49);
LABEL_27:
  v26 = v75;
LABEL_28:

  return v59;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end