@interface DenoiseRemixStage
+ (int)prewarmShaders:(id)shaders tuningParameters:(id)parameters plistEntryName:(id)name;
+ (void)prewarmOneShader:(id)shader entryToParse:(id)parse denoisingOptions:(DenoiseRemixStageOptions *)options;
- (BOOL)dumpParamsToFile:(id)file;
- (BOOL)loadParamsFromFile:(id)file;
- (DenoiseRemixStage)initWithContext:(id)context options:(const DenoiseRemixStageOptions *)options numPyrLevels:(int)levels;
- (int)runShader:(const void *)shader shader:(id)a4 desc:(id)desc uniforms:(id)uniforms uniforms2:(id)uniforms2 uniforms3:(id)uniforms3;
- (int)setResourcesWithOutputPyramid:(id)pyramid noiseMapPyramid:(id)mapPyramid sharpeningPyramid:(id)sharpeningPyramid localGainMapTex:(id)tex;
- (int)setUniforms:(AmbnrConfiguration *)uniforms;
@end

@implementation DenoiseRemixStage

- (BOOL)dumpParamsToFile:(id)file
{
  fileCopy = file;
  v4 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v7 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v5, self->_pyr->levels, v6);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v8, v7, @"number_bands");

  v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"bands");

  if (self->_pyr->levels >= 1)
  {
    v12 = 0;
    do
    {
      v13 = self->_uniforms[v12];
      v17 = objc_msgSend_contents(v13, v14, v15, v16);
      v18 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      v21 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v19, v12, v20);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v22, v21, @"band");

      v26 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v23, v24, v25, *(v17 + 336));
      objc_msgSend_setObject_forKeyedSubscript_(v18, v27, v26, @"lumaUpsamplingCoordOffset[0]");

      LODWORD(v28) = *(v17 + 340);
      v32 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v29, v30, v31, v28);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v33, v32, @"lumaUpsamplingCoordOffset[1]");

      v37 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v34, v35, v36, *(v17 + 344));
      objc_msgSend_setObject_forKeyedSubscript_(v18, v38, v37, @"chromaUpsamplingCoordOffset[0]");

      LODWORD(v39) = *(v17 + 348);
      v43 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v40, v41, v42, v39);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v44, v43, @"chromaUpsamplingCoordOffset[1]");

      LODWORD(v45) = *v17;
      v49 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v46, v47, v48, v45);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v50, v49, @"nm.lumaSigmaIntercept");

      LODWORD(v51) = *(v17 + 4);
      v55 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v52, v53, v54, v51);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v56, v55, @"nm.lumaSigmaSlope");

      LODWORD(v57) = *(v17 + 8);
      v61 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v58, v59, v60, v57);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v62, v61, @"nm.lumaSigmaMax");

      v66 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v63, v64, v65, *(v17 + 16));
      objc_msgSend_setObject_forKeyedSubscript_(v18, v67, v66, @"nm.chromaSigma[0]");

      LODWORD(v68) = *(v17 + 20);
      v72 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v69, v70, v71, v68);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v73, v72, @"nm.chromaSigma[1]");

      LODWORD(v74) = *(v17 + 116);
      v78 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v75, v76, v77, v74);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v79, v78, @"das.blueBoost");

      LODWORD(v80) = *(v17 + 72);
      v84 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v81, v82, v83, v80);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v85, v84, @"das.flatnessBoost");

      LODWORD(v86) = *(v17 + 76);
      v90 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v87, v88, v89, v86);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v91, v90, @"das.flatnessThreshold");

      LODWORD(v92) = *(v17 + 80);
      v96 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v93, v94, v95, v92);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v97, v96, @"das.gdFlatnessBoostMidtone");

      LODWORD(v98) = *(v17 + 84);
      v102 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v99, v100, v101, v98);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v103, v102, @"das.gdFlatnessMidtoneValue");

      LODWORD(v104) = *(v17 + 88);
      v108 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v105, v106, v107, v104);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v109, v108, @"das.gdFlatnessBoostShadow");

      LODWORD(v110) = *(v17 + 92);
      v114 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v111, v112, v113, v110);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v115, v114, @"das.gdFlatnessBoostHighlight");

      LODWORD(v116) = *(v17 + 96);
      v120 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v117, v118, v119, v116);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v121, v120, @"das.gdTexturenessThresholdLow");

      LODWORD(v122) = *(v17 + 100);
      v126 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v123, v124, v125, v122);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v127, v126, @"das.gdTexturenessThresholdHigh");

      LODWORD(v128) = *(v17 + 104);
      v132 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v129, v130, v131, v128);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v133, v132, @"das.gdTexturenessShadingFactor");

      LODWORD(v134) = *(v17 + 112);
      v138 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v135, v136, v137, v134);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v139, v138, @"das.radialSharpnessBoost");

      LODWORD(v140) = *(v17 + 108);
      v144 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v141, v142, v143, v140);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v145, v144, @"das.radialFlatnessBoost");

      LODWORD(v146) = *(v17 + 196);
      v150 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v147, v148, v149, v146);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v151, v150, @"das.bluenessCb.start");

      LODWORD(v152) = *(v17 + 200);
      v156 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v153, v154, v155, v152);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v157, v156, @"das.bluenessCb.end");

      LODWORD(v158) = *(v17 + 204);
      v162 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v159, v160, v161, v158);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v163, v162, @"das.bluenessCb.margin");

      LODWORD(v164) = *(v17 + 208);
      v168 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v165, v166, v167, v164);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v169, v168, @"das.bluenessCr.start");

      LODWORD(v170) = *(v17 + 212);
      v174 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v171, v172, v173, v170);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v175, v174, @"das.bluenessCr.end");

      LODWORD(v176) = *(v17 + 216);
      v180 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v177, v178, v179, v176);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v181, v180, @"das.bluenessCr.margin");

      v184 = objc_msgSend_objectForKeyedSubscript_(v4, v182, @"bands", v183, fileCopy);
      objc_msgSend_addObject_(v184, v185, v18, v186);

      ++v12;
    }

    while (v12 < self->_pyr->levels);
  }

  v193 = 0;
  v187 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x29EDB9FF0], v11, v4, 1, &v193, fileCopy);
  v189 = objc_msgSend_writeToFile_atomically_(v187, v188, v192, 1);

  return v189;
}

- (BOOL)loadParamsFromFile:(id)file
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x29EDB8DA0], a2, file, v3);
  if (v6)
  {
    v192 = v6;
    v193 = 0;
    v7 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x29EDB9FF0], v5, v6, 0, &v193);
    v191 = v193;
    if (self->_pyr->levels >= 1)
    {
      v8 = 0;
      do
      {
        v9 = self->_uniforms[v8];
        v13 = objc_msgSend_contents(v9, v10, v11, v12);
        *&v14 = -1;
        *(&v14 + 1) = -1;
        *v13 = v14;
        *(v13 + 16) = v14;
        *(v13 + 32) = v14;
        *(v13 + 48) = v14;
        *(v13 + 64) = v14;
        *(v13 + 80) = v14;
        *(v13 + 96) = v14;
        *(v13 + 112) = v14;
        *(v13 + 128) = v14;
        *(v13 + 144) = v14;
        *(v13 + 160) = v14;
        *(v13 + 176) = v14;
        *(v13 + 192) = v14;
        *(v13 + 208) = v14;
        *(v13 + 224) = v14;
        *(v13 + 240) = v14;
        *(v13 + 256) = v14;
        *(v13 + 272) = v14;
        *(v13 + 288) = v14;
        *(v13 + 304) = v14;
        *(v13 + 320) = v14;
        *(v13 + 336) = v14;
        v17 = objc_msgSend_objectForKeyedSubscript_(v7, v15, @"bands", v16);
        v20 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, v8, v19);

        v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"lumaUpsamplingCoordOffset[0]", v22);
        objc_msgSend_floatValue(v23, v24, v25, v26);
        *(v13 + 336) = v27;

        v30 = objc_msgSend_objectForKeyedSubscript_(v20, v28, @"lumaUpsamplingCoordOffset[1]", v29);
        objc_msgSend_floatValue(v30, v31, v32, v33);
        *(v13 + 340) = v34;

        v37 = objc_msgSend_objectForKeyedSubscript_(v20, v35, @"chromaUpsamplingCoordOffset[0]", v36);
        objc_msgSend_floatValue(v37, v38, v39, v40);
        *(v13 + 344) = v41;

        v44 = objc_msgSend_objectForKeyedSubscript_(v20, v42, @"chromaUpsamplingCoordOffset[1]", v43);
        objc_msgSend_floatValue(v44, v45, v46, v47);
        *(v13 + 348) = v48;

        v51 = objc_msgSend_objectForKeyedSubscript_(v20, v49, @"nm.lumaSigmaIntercept", v50);
        objc_msgSend_floatValue(v51, v52, v53, v54);
        *v13 = v55;

        v58 = objc_msgSend_objectForKeyedSubscript_(v20, v56, @"nm.lumaSigmaSlope", v57);
        objc_msgSend_floatValue(v58, v59, v60, v61);
        *(v13 + 4) = v62;

        v65 = objc_msgSend_objectForKeyedSubscript_(v20, v63, @"nm.lumaSigmaMax", v64);
        objc_msgSend_floatValue(v65, v66, v67, v68);
        *(v13 + 8) = v69;

        v72 = objc_msgSend_objectForKeyedSubscript_(v20, v70, @"nm.chromaSigma[0]", v71);
        objc_msgSend_floatValue(v72, v73, v74, v75);
        *(v13 + 16) = v76;

        v79 = objc_msgSend_objectForKeyedSubscript_(v20, v77, @"nm.chromaSigma[1]", v78);
        objc_msgSend_floatValue(v79, v80, v81, v82);
        *(v13 + 20) = v83;

        v86 = objc_msgSend_objectForKeyedSubscript_(v20, v84, @"das.blueBoost", v85);
        objc_msgSend_floatValue(v86, v87, v88, v89);
        *(v13 + 116) = v90;

        v93 = objc_msgSend_objectForKeyedSubscript_(v20, v91, @"das.flatnessBoost", v92);
        objc_msgSend_floatValue(v93, v94, v95, v96);
        *(v13 + 72) = v97;

        v100 = objc_msgSend_objectForKeyedSubscript_(v20, v98, @"das.flatnessThreshold", v99);
        objc_msgSend_floatValue(v100, v101, v102, v103);
        *(v13 + 76) = v104;

        v107 = objc_msgSend_objectForKeyedSubscript_(v20, v105, @"das.gdFlatnessBoostMidtone", v106);
        objc_msgSend_floatValue(v107, v108, v109, v110);
        *(v13 + 80) = v111;

        v114 = objc_msgSend_objectForKeyedSubscript_(v20, v112, @"das.gdFlatnessMidtoneValue", v113);
        objc_msgSend_floatValue(v114, v115, v116, v117);
        *(v13 + 84) = v118;

        v121 = objc_msgSend_objectForKeyedSubscript_(v20, v119, @"das.gdFlatnessBoostShadow", v120);
        objc_msgSend_floatValue(v121, v122, v123, v124);
        *(v13 + 88) = v125;

        v128 = objc_msgSend_objectForKeyedSubscript_(v20, v126, @"das.gdFlatnessBoostHighlight", v127);
        objc_msgSend_floatValue(v128, v129, v130, v131);
        *(v13 + 92) = v132;

        v135 = objc_msgSend_objectForKeyedSubscript_(v20, v133, @"das.radialSharpnessBoost", v134);
        objc_msgSend_floatValue(v135, v136, v137, v138);
        *(v13 + 112) = v139;

        v142 = objc_msgSend_objectForKeyedSubscript_(v20, v140, @"das.radialFlatnessBoost", v141);
        objc_msgSend_floatValue(v142, v143, v144, v145);
        *(v13 + 108) = v146;

        v149 = objc_msgSend_objectForKeyedSubscript_(v20, v147, @"das.bluenessCb.start", v148);
        objc_msgSend_floatValue(v149, v150, v151, v152);
        *(v13 + 196) = v153;

        v156 = objc_msgSend_objectForKeyedSubscript_(v20, v154, @"das.bluenessCb.end", v155);
        objc_msgSend_floatValue(v156, v157, v158, v159);
        *(v13 + 200) = v160;

        v163 = objc_msgSend_objectForKeyedSubscript_(v20, v161, @"das.bluenessCb.margin", v162);
        objc_msgSend_floatValue(v163, v164, v165, v166);
        *(v13 + 204) = v167;

        v170 = objc_msgSend_objectForKeyedSubscript_(v20, v168, @"das.bluenessCr.start", v169);
        objc_msgSend_floatValue(v170, v171, v172, v173);
        *(v13 + 208) = v174;

        v177 = objc_msgSend_objectForKeyedSubscript_(v20, v175, @"das.bluenessCr.end", v176);
        objc_msgSend_floatValue(v177, v178, v179, v180);
        *(v13 + 212) = v181;

        v184 = objc_msgSend_objectForKeyedSubscript_(v20, v182, @"das.bluenessCr.margin", v183);
        objc_msgSend_floatValue(v184, v185, v186, v187);
        *(v13 + 216) = v188;

        ++v8;
      }

      while (v8 < self->_pyr->levels);
    }

    v6 = v192;
  }

  v189 = v6 != 0;

  return v189;
}

- (DenoiseRemixStage)initWithContext:(id)context options:(const DenoiseRemixStageOptions *)options numPyrLevels:(int)levels
{
  contextCopy = context;
  if (levels > 0)
  {
    objc_storeStrong(&self->_metal, context);
    v13 = 0;
    v14 = *&options->lgaAlgorithm;
    *&self->_options.enableNoiseMap = *&options->enableNoiseMap;
    *&self->_options.lgaAlgorithm = v14;
    v15 = 1;
    while (2)
    {
      v16 = 0;
      v17 = v15;
      v18 = 1;
      do
      {
        v19 = v18;
        v20 = objc_msgSend_sharedInstance(DenoiseRemixStageShared, v10, v11, v12);
        v22 = objc_msgSend_getShaders_lumaFP16_chromaFP16_options_(v20, v21, contextCopy, v13 & 1, v16 & 1, options);

        if (!v22)
        {
          sub_2958CDEF0(&v59);
          goto LABEL_16;
        }

        v18 = 0;
        v16 = 1;
      }

      while ((v19 & 1) != 0);
      v15 = 0;
      v13 = 1;
      if (v17)
      {
        continue;
      }

      break;
    }

    v23 = objc_opt_new();
    v26 = v23;
    if (v23)
    {
      objc_msgSend_setStorageMode_(v23, v24, 0, v25);
      objc_msgSend_setHazardTrackingMode_(v26, v27, 2, v28);
      objc_msgSend_setSize_(v26, v29, 20480, v30);
      v34 = objc_msgSend_device(contextCopy, v31, v32, v33);
      v37 = objc_msgSend_newHeapWithDescriptor_(v34, v35, v26, v36);
      uniformsHeap = self->_uniformsHeap;
      self->_uniformsHeap = v37;

      if (self->_uniformsHeap)
      {
        for (i = 40; i != 200; i += 8)
        {
          v43 = self->_uniformsHeap;
          v44 = objc_msgSend_resourceOptions(v43, v39, v40, v41);
          v46 = objc_msgSend_newBufferWithLength_options_(v43, v45, 352, v44);
          v47 = *(&self->super.isa + i);
          *(&self->super.isa + i) = v46;

          if (!*(&self->super.isa + i))
          {
            sub_2958CDD1C(&v59);
            goto LABEL_20;
          }
        }

        v48 = self->_uniformsHeap;
        v49 = objc_msgSend_resourceOptions(v48, v39, v40, v41);
        v51 = objc_msgSend_newBufferWithLength_options_(v48, v50, 16, v49);
        roiTxUniform = self->_roiTxUniform;
        self->_roiTxUniform = v51;

        if (self->_roiTxUniform)
        {

          objc_msgSend_prewarmRenderers_(DenoiseRemixStage, v53, self->_metal, v54);
          goto LABEL_14;
        }

        sub_2958CDC80(&v59);
      }

      else
      {
        sub_2958CDDB8(&v59);
      }
    }

    else
    {
      sub_2958CDE54(&v59);
    }

LABEL_20:
    v58 = v59;

    if (!v58)
    {
      goto LABEL_14;
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  sub_2958CDF8C(&v59);
LABEL_16:
  if (v59)
  {
    goto LABEL_17;
  }

LABEL_14:
  selfCopy = self;
LABEL_18:
  v56 = selfCopy;

  return v56;
}

+ (int)prewarmShaders:(id)shaders tuningParameters:(id)parameters plistEntryName:(id)name
{
  shadersCopy = shaders;
  parametersCopy = parameters;
  nameCopy = name;
  v90 = 0;
  v89 = 0;
  v9 = objc_autoreleasePoolPush();
  v75 = parametersCopy;
  v12 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v10, @"DefaultSensorIDs", v11);
  v13 = v12;
  if (v12)
  {
    v70 = v12;
    v71 = v9;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v14 = v12;
    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v85, v84, 16);
    if (v76)
    {
      v73 = *v86;
      v72 = v14;
      do
      {
        for (i = 0; i != v76; ++i)
        {
          if (*v86 != v73)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v85 + 1) + 8 * i);
          v20 = objc_msgSend_objectForKeyedSubscript_(v14, v16, v19, v17, v70, v71);
          v23 = objc_msgSend_objectForKeyedSubscript_(v75, v21, v19, v22);
          v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v20, v25);
          v29 = objc_msgSend_objectForKeyedSubscript_(v26, v27, nameCopy, v28);
          v32 = objc_msgSend_objectForKeyedSubscript_(v29, v30, @"NRFParameters", v31);
          v35 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"DenoiseAndSharpening", v34);

          if (v35)
          {
            v77 = v20;
            v78 = i;
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v39 = objc_msgSend_allKeys(v35, v36, v37, v38);
            v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v80, v79, 16);
            if (v41)
            {
              v45 = v41;
              v46 = *v81;
              do
              {
                for (j = 0; j != v45; ++j)
                {
                  if (*v81 != v46)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v48 = *(*(&v80 + 1) + 8 * j);
                  v49 = objc_msgSend_getSharedInstance(DenoiseRemixStageConfig, v42, v43, v44);
                  v52 = objc_msgSend_objectForKeyedSubscript_(v49, v50, v48, v51);

                  if (v52)
                  {
                    v55 = objc_msgSend_objectForKeyedSubscript_(v35, v53, v48, v54);
                    LODWORD(v89) = objc_msgSend_lgaAlgorithm(v52, v56, v57, v58);
                    BYTE4(v89) = objc_msgSend_enableBandZeroDenoising(v52, v59, v60, v61);
                    LOBYTE(v90) = objc_msgSend_enableNoiseMap(v52, v62, v63, v64);
                    objc_msgSend_prewarmOneShader_entryToParse_denoisingOptions_(DenoiseRemixStage, v65, shadersCopy, v55, &v89);
                  }
                }

                v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v80, v79, 16);
              }

              while (v45);
            }

            v14 = v72;
            v20 = v77;
            i = v78;
          }
        }

        v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v85, v84, 16);
      }

      while (v76);
    }

    objc_msgSend_prewarmRenderers_(DenoiseRemixStage, v66, shadersCopy, v67);
    v68 = 0;
    v13 = v70;
    v9 = v71;
  }

  else
  {
    sub_2958CE028(v91);
    v68 = v91[0];
  }

  objc_autoreleasePoolPop(v9);

  return v68;
}

+ (void)prewarmOneShader:(id)shader entryToParse:(id)parse denoisingOptions:(DenoiseRemixStageOptions *)options
{
  shaderCopy = shader;
  parseCopy = parse;
  v10 = objc_msgSend_objectForKeyedSubscript_(parseCopy, v8, @"EnableBilateralRegression", v9);
  options->enableBilateralRegression = objc_msgSend_BOOLValue(v10, v11, v12, v13);

  v16 = objc_msgSend_objectForKeyedSubscript_(parseCopy, v14, @"EnableLoGOffset", v15);
  options->enableLoGOffset = objc_msgSend_BOOLValue(v16, v17, v18, v19);

  v22 = objc_msgSend_objectForKeyedSubscript_(parseCopy, v20, @"EnableLowVarSharpening", v21);
  options->enableLowVarSharpening = objc_msgSend_BOOLValue(v22, v23, v24, v25);

  v28 = objc_msgSend_objectForKeyedSubscript_(parseCopy, v26, @"EnableGdFlatness", v27);
  options->enableGdFlatness = objc_msgSend_BOOLValue(v28, v29, v30, v31);

  for (i = 0; i != 4; ++i)
  {
    v33 = [DenoiseRemixShaders alloc];
    if (i)
    {
      v35 = 25;
    }

    else
    {
      v35 = 10;
    }

    if (i >= 2)
    {
      v36 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v33, v34, shaderCopy, @"RemixDenoise_vert", v35, 65, options);
    }

    else
    {
      v36 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v33, v34, shaderCopy, @"RemixDenoise_vert", v35, 30, options);
    }
  }
}

- (int)setResourcesWithOutputPyramid:(id)pyramid noiseMapPyramid:(id)mapPyramid sharpeningPyramid:(id)sharpeningPyramid localGainMapTex:(id)tex
{
  pyramidCopy = pyramid;
  mapPyramidCopy = mapPyramid;
  sharpeningPyramidCopy = sharpeningPyramid;
  texCopy = tex;
  if (!mapPyramidCopy && self->_options.enableNoiseMap)
  {
    sub_2958CE160(&v18);
    v15 = v18;
  }

  else if (!sharpeningPyramidCopy && self->_options.enableLowVarSharpening)
  {
    sub_2958CE0C4(&v17);
    v15 = v17;
  }

  else
  {
    objc_storeStrong(&self->_pyr, pyramid);
    objc_storeStrong(&self->_noiseMapPyramid, mapPyramid);
    objc_storeStrong(&self->_sharpeningPyramid, sharpeningPyramid);
    objc_storeStrong(&self->_localGainMapTex, tex);
    v15 = 0;
  }

  return v15;
}

- (int)setUniforms:(AmbnrConfiguration *)uniforms
{
  pyr = self->_pyr;
  if (pyr)
  {
    if (pyr->levels >= 1)
    {
      v6 = 0;
      uniforms = self->_uniforms;
      do
      {
        v8 = uniforms[v6];
        v12 = objc_msgSend_contents(v8, v9, v10, v11);
        memcpy(v12, uniforms, 0x160uLL);
        ++v6;
        uniforms = (uniforms + 352);
      }

      while (v6 < self->_pyr->levels);
    }

    return 0;
  }

  else
  {
    sub_2958CE1FC(&v14);
    return v14;
  }
}

- (int)runShader:(const void *)shader shader:(id)a4 desc:(id)desc uniforms:(id)uniforms uniforms2:(id)uniforms2 uniforms3:(id)uniforms3
{
  v14 = a4;
  descCopy = desc;
  uniformsCopy = uniforms;
  uniforms2Copy = uniforms2;
  uniforms3Copy = uniforms3;
  v22 = objc_msgSend_colorAttachments(descCopy, v19, v20, v21);
  v25 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0, v24);
  v29 = objc_msgSend_texture(v25, v26, v27, v28);
  objc_msgSend_width(v29, v30, v31, v32);

  v36 = objc_msgSend_colorAttachments(descCopy, v33, v34, v35);
  v39 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0, v38);
  v43 = objc_msgSend_texture(v39, v40, v41, v42);
  objc_msgSend_height(v43, v44, v45, v46);

  v50 = objc_msgSend_commandQueue(self->_metal, v47, v48, v49);
  v54 = objc_msgSend_commandBuffer(v50, v51, v52, v53);

  if (v54)
  {
    v57 = objc_msgSend_renderCommandEncoderWithDescriptor_(v54, v55, descCopy, v56);
    if (v57)
    {
      v61 = v57;
      v62 = objc_msgSend_fullRangeVertexBuf(self->_metal, v58, v59, v60);
      objc_msgSend_setVertexBuffer_offset_atIndex_(v61, v63, v62, 0, 0);

      objc_msgSend_setFragmentTextures_withRange_(v61, v64, shader, 0, 15);
      objc_msgSend_setFragmentBuffer_offset_atIndex_(v61, v65, uniformsCopy, 0, 0);
      if (uniforms2Copy)
      {
        objc_msgSend_setFragmentBuffer_offset_atIndex_(v61, v66, uniforms2Copy, 0, 1);
      }

      if (uniforms3Copy)
      {
        objc_msgSend_setFragmentBuffer_offset_atIndex_(v61, v66, uniforms3Copy, 0, 2);
      }

      objc_msgSend_setRenderPipelineState_(v61, v66, v14[1], v67);
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v61, v68, 4, 0, 4);
      objc_msgSend_endEncoding(v61, v69, v70, v71);
      objc_msgSend_commit(v54, v72, v73, v74);

      v75 = 0;
    }

    else
    {
      sub_2958CE298(&v77);
      v75 = v77;
    }
  }

  else
  {
    sub_2958CE334(&v78);
    v75 = v78;
  }

  return v75;
}

@end