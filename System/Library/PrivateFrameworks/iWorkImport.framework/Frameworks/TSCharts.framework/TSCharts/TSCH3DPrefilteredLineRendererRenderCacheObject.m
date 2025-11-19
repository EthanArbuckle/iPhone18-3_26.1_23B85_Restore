@interface TSCH3DPrefilteredLineRendererRenderCacheObject
- (TSCH3DPrefilteredLineRendererRenderCacheObject)init;
- (id)p_box;
- (id)p_diffuseTexcoords;
- (id)p_geometry;
- (id)p_normals;
- (id)p_originalGeometry;
- (id)p_texcoords;
- (void)allocateDynamicResourcesIntoArray:(id)a3;
- (void)renderWithLineRenderer:(id)a3 setting:(id)a4 fromVertex:(const void *)a5 toVertex:(const void *)a6;
- (void)submitResourcesWithLineRenderer:(id)a3 setting:(id)a4;
@end

@implementation TSCH3DPrefilteredLineRendererRenderCacheObject

- (TSCH3DPrefilteredLineRendererRenderCacheObject)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DPrefilteredLineRendererRenderCacheObject;
  return [(TSCH3DSceneRenderCacheObject *)&v3 init];
}

- (void)allocateDynamicResourcesIntoArray:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5, v6, v7, v3))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DPrefilteredLineRendererRenderCacheObject allocateDynamicResourcesIntoArray:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 367, 0, "array must be empty for indexing to work");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9, v10, v11);
  v83 = v3;
  v28 = v27;
  v33 = objc_msgSend_count(v83, v29, v30, v31, v32);
  if (v33 <= 5)
  {
    v38 = v33 - 6;
    do
    {
      objc_msgSend_addObject_(v83, v34, v35, v36, v37, v28);
    }

    while (!__CFADD__(v38++, 1));
  }

  v44 = &qword_2764D6828;
  v45 = 6;
  v46 = &qword_2764D6828;
  do
  {
    v47 = *v46;
    v46 += 2;
    v48 = objc_msgSend_bufferWithCapacity_dimension_(TSCH3DVectorDataBuffer, v40, v41, v42, v43, 0, v47);
    v53 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v49, v50, v51, v52, v48);

    objc_msgSend_replaceObjectAtIndex_withObject_(v83, v54, v55, v56, v57, *(v44 - 2), v53);
    v44 = v46;
    --v45;
  }

  while (v45);
  v58 = objc_msgSend_null(MEMORY[0x277CBEB68], v40, v41, v42, v43);
  v63 = objc_msgSend_indexOfObject_(v83, v59, v60, v61, v62, v58);

  if (v63 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "[TSCH3DPrefilteredLineRendererRenderCacheObject allocateDynamicResourcesIntoArray:]");
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 395, 0, "not all objects are replaced with resource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }
}

- (id)p_geometry
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 0);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_geometry]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 401, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_texcoords
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 1);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_texcoords]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 408, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_box
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 2);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_box]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 415, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_originalGeometry
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 3);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_originalGeometry]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 422, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_normals
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_normals]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 429, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_diffuseTexcoords
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 5);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_diffuseTexcoords]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 436, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (void)submitResourcesWithLineRenderer:(id)a3 setting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v370 = v6;
  v374 = v7;
  v369 = objc_msgSend_pipeline(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_processor(v369, v12, v13, v14, v15);
  if (v7)
  {
    objc_msgSend_strokeColor(v7, v16, v18, v19, v20);
  }

  else
  {
    v379 = 0;
    v380 = 0;
  }

  objc_msgSend_lineWidth(v7, v16, v18, v19, v20);
  *&v24 = *&v24 * 0.83337;
  if (*&v24 > 1.0)
  {
    *&v24 = 1.0;
  }

  LODWORD(v22) = HIDWORD(v380);
  *&v24 = *&v24 * *(&v380 + 1);
  HIDWORD(v380) = LODWORD(v24);
  v25 = objc_msgSend_effectsStates(v17, v21, v24, v22, v23);
  v30 = objc_msgSend_stateSharingID(TSCH3DPrefilteredLineOutputColorShaderEffect, v26, v27, v28, v29);
  sub_276212340(v25, v30, &v379);

  memset(&v378[12], 0, 13);
  memset(v378, 0, 11);
  if (v7)
  {
    objc_msgSend_filterRadius(v7, v31, v32, v33, v34);
  }

  else
  {
    *v376 = 0uLL;
  }

  v35 = 0;
  __asm { FMOV            V1.4S, #1.5 }

  v41 = vand_s8(vmovn_s32(vcgtq_f32(_Q1, *v376)), 0x1000100010001);
  v42 = COERCE_DOUBLE(vuzp1_s8(v41, v41));
  LODWORD(v377) = LODWORD(v42);
  LOBYTE(v43) = 1;
  do
  {
    while ((v43 & 1) == 0)
    {
      LOBYTE(v43) = 0;
      if (++v35 == 4)
      {
        goto LABEL_17;
      }
    }

    v43 = v378[v35++ - 8];
  }

  while (v35 != 4);
  if (v43)
  {
    v373 = objc_msgSend_texture(TSCH3DBoxTexture, v31, v42, COERCE_DOUBLE(0x1000100010001), v34);
    goto LABEL_18;
  }

LABEL_17:
  v373 = objc_msgSend_texture(TSCH3DGaussTexture, v31, v42, COERCE_DOUBLE(0x1000100010001), v34);
LABEL_18:
  v48 = objc_msgSend_variableTexture(TSCH3DPrefilteredLineShaderEffect, v44, v45, v46, v47);
  v53 = objc_msgSend_texture_resource_attributes_(v17, v49, v50, v51, v52, v48, v373, v378);

  v377 = v53;
  v58 = objc_msgSend_effectsStates(v17, v54, v55, v56, v57);
  v63 = objc_msgSend_stateSharingID(TSCH3DPrefilteredLineShaderEffect, v59, v60, v61, v62);
  sub_2762123DC(v58, v63, &v377);

  v64 = v374;
  v69 = objc_msgSend_stroke(v374, v65, v66, v67, v68);

  if (v69)
  {
    *&v376[17] = 0;
    *&v376[12] = 0;
    *v376 = 0;
    *&v376[7] = 0;
    strokeTexture = self->_strokeTexture;
    if (!strokeTexture || (objc_msgSend_stroke(strokeTexture, v70, v71, v72, v73), v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stroke(v374, v76, v77, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v75, v81, v82, v83, v84, v80), v80, v75, v64 = v374, (isEqual & 1) == 0))
    {
      v90 = [TSCH3DStrokePatternTexture alloc];
      v95 = objc_msgSend_stroke(v64, v91, v92, v93, v94);
      v100 = objc_msgSend_initWithStroke_(v90, v96, v97, v98, v99, v95);
      v101 = self->_strokeTexture;
      self->_strokeTexture = v100;
    }

    v102 = objc_msgSend_variableTexture(TSCH3DStrokePatternShaderEffect, v86, v87, v88, v89);
    v107 = objc_msgSend_texture_resource_attributes_(v17, v103, v104, v105, v106, v102, self->_strokeTexture, v376);

    v375 = v107;
    v112 = objc_msgSend_effectsStates(v17, v108, v109, v110, v111);
    v117 = objc_msgSend_stateSharingID(TSCH3DStrokePatternShaderEffect, v113, v114, v115, v116);
    sub_2762123DC(v112, v117, &v375);

    v64 = v374;
  }

  v372 = objc_msgSend_p_geometry(self, v70, v71, v72, v73);
  v122 = objc_msgSend_buffer(v372, v118, v119, v120, v121);
  v127 = objc_msgSend_count(v122, v123, v124, v125, v126);

  if (v127)
  {
    objc_msgSend_geometry_(v17, v128, v129, v130, v131, v372);
    v371 = objc_msgSend_p_texcoords(self, v132, v133, v134, v135);
    v140 = objc_msgSend_buffer(v371, v136, v137, v138, v139);
    v145 = objc_msgSend_count(v140, v141, v142, v143, v144);

    if (v145 != v127)
    {
      v150 = MEMORY[0x277D81150];
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, v147, v148, v149, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      v161 = objc_msgSend_buffer(v371, v157, v158, v159, v160);
      v166 = objc_msgSend_count(v161, v162, v163, v164, v165);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v167, v168, v169, v170, v151, v156, 483, 0, "buffer size mismatch %lu should be %lu", v166, v127);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v171, v172, v173, v174);
    }

    v175 = objc_msgSend_variablePrefilterBoxTextureCoordinate(TSCH3DPrefilteredLineShaderEffect, v146, v147, v148, v149);
    memset(v376, 0, 24);
    v367 = v175;
    objc_msgSend_attribute_resource_specs_(v17, v176, v177, v178, v179, v175, v371, v376);
    v184 = objc_msgSend_p_box(self, v180, v181, v182, v183);
    v368 = v184;
    v189 = objc_msgSend_buffer(v184, v185, v186, v187, v188);
    v194 = objc_msgSend_count(v189, v190, v191, v192, v193);

    if (v194 != v127)
    {
      v199 = MEMORY[0x277D81150];
      v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, v196, v197, v198, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
      v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, v202, v203, v204, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      v210 = objc_msgSend_buffer(v184, v206, v207, v208, v209);
      v215 = objc_msgSend_count(v210, v211, v212, v213, v214);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v199, v216, v217, v218, v219, v200, v205, 492, 0, "buffer size mismatch %lu should be %lu", v215, v127);

      v184 = v368;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221, v222, v223);
    }

    v224 = objc_msgSend_variablePrefilterBox(TSCH3DPrefilteredLineShaderEffect, v195, v196, v197, v198);
    memset(v376, 0, 24);
    objc_msgSend_attribute_resource_specs_(v17, v225, v226, v227, v228, v224, v184, v376);

    v233 = objc_msgSend_p_normals(self, v229, v230, v231, v232);
    v238 = objc_msgSend_buffer(v233, v234, v235, v236, v237);
    v243 = objc_msgSend_count(v238, v239, v240, v241, v242);

    if ((((v243 == 0) ^ objc_msgSend_useNormals(v374, v244, v245, v246, v247)) & 1) == 0)
    {
      v252 = MEMORY[0x277D81150];
      v253 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v248, v249, v250, v251, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
      v258 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v254, v255, v256, v257, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      v263 = objc_msgSend_useNormals(v374, v259, v260, v261, v262);
      v268 = objc_msgSend_buffer(v233, v264, v265, v266, v267);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v252, v269, v270, v271, v272, v253, v258, 501, 0, "setting for normal %ld mismatch with supplied buffer %@(%lu)", v263, v268, v243);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v273, v274, v275, v276);
    }

    if (v243)
    {
      v277 = objc_msgSend_buffer(v233, v248, v249, v250, v251);
      v282 = objc_msgSend_count(v277, v278, v279, v280, v281);

      if (v282 != v127)
      {
        v287 = MEMORY[0x277D81150];
        v288 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, v284, v285, v286, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
        v293 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v289, v290, v291, v292, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v298 = objc_msgSend_buffer(v233, v294, v295, v296, v297);
        v303 = objc_msgSend_count(v298, v299, v300, v301, v302);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v287, v304, v305, v306, v307, v288, v293, 503, 0, "buffer size mismatch %lu should be %lu", v303, v127);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v308, v309, v310, v311);
      }

      objc_msgSend_normals_(v17, v283, v284, v285, v286, v233);
    }

    v312 = objc_msgSend_p_diffuseTexcoords(self, v248, v249, v250, v251);
    v317 = objc_msgSend_buffer(v312, v313, v314, v315, v316);
    v322 = objc_msgSend_count(v317, v318, v319, v320, v321);

    if (v322)
    {
      v327 = objc_msgSend_buffer(v312, v323, v324, v325, v326);
      v332 = objc_msgSend_count(v327, v328, v329, v330, v331);

      if (v332 != v127)
      {
        v337 = MEMORY[0x277D81150];
        v338 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v333, v334, v335, v336, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
        v343 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v339, v340, v341, v342, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v348 = objc_msgSend_buffer(v312, v344, v345, v346, v347);
        v353 = objc_msgSend_count(v348, v349, v350, v351, v352);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v337, v354, v355, v356, v357, v338, v343, 509, 0, "buffer size mismatch %lu should be %lu", v353, v127);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v358, v359, v360, v361);
      }

      objc_msgSend_texcoords_(v17, v333, v334, v335, v336, v312);
    }

    v362 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v323, v324, v325, v326, 1);
    objc_msgSend_submit_(v17, v363, v364, v365, v366, v362);

    v64 = v374;
  }
}

- (void)renderWithLineRenderer:(id)a3 setting:(id)a4 fromVertex:(const void *)a5 toVertex:(const void *)a6
{
  v9 = a3;
  v10 = a4;
  if ((sub_2762139C0(a5, a6) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DPrefilteredLineRendererRenderCacheObject renderWithLineRenderer:setting:fromVertex:toVertex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    v29 = sub_276213A5C(a5, v22, v23, v24, v25, v26, v27, v28);
    v37 = sub_276213A5C(a6, v30, v31, v32, v33, v34, v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v38, v39, v40, v41, v16, v21, 529, 0, "inconsistent state for v0 %@ v1 %@", v29, v37);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v46 = 0.0;
  v557 = 0;
  v558 = 0.0;
  v555 = 0;
  v556 = 0.0;
  v47 = *(a5 + 1);
  if (v47)
  {
    v48 = *(a6 + 1);
    if (v48)
    {
      if (v9)
      {
        objc_msgSend_normalMatrix(v9, v11, 0.0, v13, v14);
        v47 = *(a5 + 1);
        v49 = *(&__y + 1);
        v50 = *&__y;
        v51 = *(&v550 + 3);
        v52 = *(&v550 + 2);
        v53 = *(&__y + 3);
        LODWORD(v54) = DWORD2(__y);
        LODWORD(v55) = DWORD1(v550);
        v56 = *&v550;
        LODWORD(v57) = v551;
        v48 = *(a6 + 1);
      }

      else
      {
        LODWORD(v551) = 0;
        v57 = 0.0;
        v55 = 0.0;
        v54 = 0.0;
        __y = 0u;
        v550 = 0u;
        v51 = 0.0;
        v56 = 0.0;
        v49 = 0.0;
        v52 = 0.0;
        v53 = 0.0;
        v50 = 0.0;
      }

      v58 = v47[1];
      v59 = v47[2];
      v60 = ((v58 * v56) + (v49 * *v47)) + (v51 * v59);
      v61 = ((v58 * *&v55) + (*&v54 * *v47)) + (*&v57 * v59);
      v557.f32[0] = ((v53 * v58) + (v50 * *v47)) + (v52 * v59);
      v557.f32[1] = v60;
      v558 = v61;
      v62 = v48[1];
      v63 = (v53 * v62) + (v50 * *v48);
      v64 = v48[2];
      v65 = ((v56 * v62) + (v49 * *v48)) + (v51 * v64);
      *&v55 = *&v55 * v62;
      *&v54 = *&v55 + (*&v54 * *v48);
      *&v57 = *&v54 + (*&v57 * v64);
      v555.f32[0] = v63 + (v52 * v64);
      v555.f32[1] = v65;
      v556 = *&v57;
      if (objc_msgSend_cullBackfaces(v10, v11, v57, v54, v55))
      {
        *&v67 = v558;
        if (v558 < 0.0)
        {
          *&v67 = v556;
          if (v556 < 0.0)
          {
            goto LABEL_137;
          }
        }
      }

      v70 = objc_msgSend_p_normals(self, v66, v67, v68, v69);
      v71 = sub_27618C648(v70);
      sub_276213B6C(v71, &v557, &v555);
    }
  }

  if (*(a5 + 2) && *(a5 + 6) != 1 && *(a6 + 2) && *(a6 + 6) != 1)
  {
    v72 = objc_msgSend_p_diffuseTexcoords(self, v11, v46, v13, v14);
    v73 = sub_27618C374(v72);
    v74 = *(a5 + 2);
    v75 = *(a6 + 2);
    sub_276161E1C(v73, v74);
    sub_276161E1C(v73, v75);
    sub_276161E1C(v73, v75);
    sub_276161E1C(v73, v74);
    sub_276161E1C(v73, v75);
    sub_276161E1C(v73, v74);
  }

  v76 = *a5;
  if (v9)
  {
    objc_msgSend_modelMatrix(v9, v11, v46, v13, v14);
  }

  else
  {
    v551 = 0u;
    *v552 = 0u;
    __y = 0u;
    v550 = 0u;
  }

  *&v78 = sub_276154744(v76, &__y, &v553, v14);
  v81 = *a6;
  if (v9)
  {
    objc_msgSend_modelMatrix(v9, v77, v78, v79, v80);
  }

  else
  {
    v551 = 0u;
    *v552 = 0u;
    __y = 0u;
    v550 = 0u;
  }

  sub_276154744(v81, &__y, &v547, v80);
  v83 = 0.0;
  v84 = 0.0;
  v85 = 0.0;
  v86 = 0.0;
  v87 = 0.0;
  v88 = 0.0;
  v89 = 0.0;
  v90 = 0.0;
  v91 = 0.0;
  v92 = 0.0;
  v93 = 0.0;
  v94 = 0.0;
  v95 = 0.0;
  v96 = 0.0;
  v97 = 0.0;
  v98 = 0.0;
  v99 = 0.0;
  if (v9)
  {
    objc_msgSend_normalizedProjection(v9, v82, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    v95 = *(&__y + 1);
    v99 = *&__y;
    v94 = *(&v550 + 1);
    v98 = *&v550;
    v93 = *(&v551 + 1);
    v97 = *&v551;
    v92 = v552[1];
    v96 = v552[0];
    v87 = *(&__y + 3);
    v91 = *(&__y + 2);
    v86 = *(&v550 + 3);
    v90 = *(&v550 + 2);
    v85 = *(&v551 + 3);
    v89 = *(&v551 + 2);
    v84 = v552[3];
    v88 = v552[2];
  }

  v509 = v98;
  v510 = v99;
  v511 = v90;
  v512 = v94;
  v513 = v95;
  v514 = v91;
  v515 = v89;
  v516 = v86;
  v518 = v97;
  v520 = v87;
  v522 = v85;
  v524 = v93;
  v528 = v88;
  v533 = v96;
  v100 = 0.0;
  v101 = 0.0;
  v102 = 0.0;
  v103 = v553;
  v104 = 0.0;
  v105 = v554;
  v106 = 0.0;
  v107 = 0.0;
  v537 = 0.0;
  v108 = 0.0;
  v109 = 0.0;
  v539 = 0.0;
  v541 = 0;
  v110 = 0.0;
  v111 = 0.0;
  v112 = 0.0;
  if (v9)
  {
    objc_msgSend_normalizedProjection(v9, v82, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    v541 = *(&__y + 4);
    v112 = *&__y;
    v539 = *(&v550 + 1);
    v111 = *&v550;
    v108 = *(&v551 + 1);
    v110 = *&v551;
    *&v107 = v552[1];
    *&v109 = v552[0];
    v102 = *(&__y + 3);
    v101 = *(&v550 + 3);
    v537 = *(&v550 + 2);
    v100 = *(&v551 + 3);
    v106 = *(&v551 + 2);
    v83 = v552[3];
    *&v104 = v552[2];
  }

  v498 = v106;
  v499 = v110;
  v500 = v101;
  v501 = v108;
  v502 = v102;
  v503 = v100;
  v504 = *&v109;
  v505 = *&v104;
  v506 = *&v107;
  v507 = v84;
  v508 = v83;
  v113 = v547;
  v114 = v548;
  v546 = 0uLL;
  objc_msgSend_lineWidth(v10, v82, v107, v104, v109);
  v496 = *&v115;
  v119 = objc_msgSend_pipeline(v9, v116, v115, v117, v118);

  if (!v119)
  {
    v124 = MEMORY[0x277D81150];
    v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, v121, v122, v123, "[TSCH3DPrefilteredLineRendererRenderCacheObject renderWithLineRenderer:setting:fromVertex:toVertex:]");
    v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, v127, v128, v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v131, v132, v133, v134, v125, v130, 568, 0, "invalid nil value for '%{public}s'", "renderer.pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v136, v137, v138);
  }

  v139 = objc_msgSend_pipeline(v9, v120, v121, v122, v123);
  objc_msgSend_superSamples(v139, v140, v141, v142, v143);
  v495 = v144;

  if (v10)
  {
    objc_msgSend_filterRadius(v10, v145, v146, v147, v148);
    v147 = *(&__y + 1);
    v494 = vcvtq_f64_f32(*&__y);
    v149 = vcvtq_f64_f32(*(&__y + 8));
  }

  else
  {
    __y = 0uLL;
    v149 = 0uLL;
    v494 = 0u;
  }

  v493 = v149;
  v150 = objc_msgSend_pipeline(v9, v145, v149.f64[0], v147, v148);
  objc_msgSend_superSamples(v150, v151, v152, v153, v154);
  v492 = v155;

  if (v9)
  {
    objc_msgSend_viewport(v9, v156, v157, v158, v159);
    v158 = *&__y;
    v160 = COERCE_DOUBLE(vcvt_f32_s32(vsub_s32(*(&__y + 8), *&__y)));
  }

  else
  {
    v160 = 0.0;
  }

  v497 = *&v160;
  v161 = objc_msgSend_p_geometry(self, v156, v160, v158, v159);
  v162 = sub_27618C648(v161);

  v163 = v162[1] - *v162;
  sub_2761EDA00(v162, 0xAAAAAAAAAAAAAAABLL * (v163 >> 2) + 6);
  v169 = objc_msgSend_stroke(v10, v164, v165, v166, v167);
  if (v169)
  {
    v173 = objc_msgSend_stroke(v10, v168, v170, v171, v172);
    v174 = sub_276213BE8(v173);
    v179 = objc_msgSend_pipeline(v9, v175, v176, v177, v178);
    objc_msgSend_superSamples(v179, v180, v181, v182, v183);
    v536 = (v184 * v174);
  }

  else
  {
    v536 = 0.0;
  }

  v185 = ((v113.f32[1] * v111) + (v112 * v113.f32[0])) + (v499 * v114);
  v186 = ((v113.f32[1] * v500) + (v502 * v113.f32[0])) + (v503 * v114);
  v187 = v92 + (((v103.f32[1] * v512) + (v513 * v103.f32[0])) + (v524 * v105));
  v188 = v528 + (((v103.f32[1] * v511) + (v514 * v103.f32[0])) + (v515 * v105));
  v189 = v507 + (((v103.f32[1] * v516) + (v520 * v103.f32[0])) + (v522 * v105));
  v190 = (v533 + (((v103.f32[1] * v509) + (v510 * v103.f32[0])) + (v518 * v105))) / v189;
  v191 = v187 / v189;
  v192 = v188 / v189;
  v193 = (v504 + v185) / (v83 + v186);
  v194 = (v506 + (((v113.f32[1] * v539) + (*&v541 * v113.f32[0])) + (v501 * v114))) / (v508 + v186);
  v195 = (v505 + (((v113.f32[1] * v537) + (*(&v541 + 1) * v113.f32[0])) + (v498 * v114))) / (v508 + v186);

  v543 = v193;
  v542 = v194;
  v538 = v190;
  v540 = v191;
  if (*(a5 + 1) && *(a6 + 1))
  {
    if ((objc_msgSend_disableColorOutput(v10, v196, v197, v198, v199) & 1) == 0)
    {
      v204 = MEMORY[0x277D81150];
      v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, v201, v202, v203, "[TSCH3DPrefilteredLineRendererRenderCacheObject renderWithLineRenderer:setting:fromVertex:toVertex:]");
      v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v206, v207, v208, v209, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v204, v211, v212, v213, v214, v205, v210, 585, 0, "cannot use normal and generate_2pixel_quad unless color is disabled");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v215, v216, v217, v218);
    }

    v219 = (v190 * v497.f32[0]);
    v220 = vmuls_lane_f32(v191, v497, 1);
    v221 = (v193 * v497.f32[0]);
    v222 = vmuls_lane_f32(v194, v497, 1);
    v223 = v195;
    v224 = (*v162 + v163);
    v225 = v221 - v219;
    v226 = v222 - v220;
    v227 = (v221 - v219) * (1.0 / sqrt(v226 * v226 + v225 * v225));
    v228 = -v227;
    if (v227 >= 0.0)
    {
      v228 = v227;
    }

    v229 = vaddq_f64(vcvtq_f64_f32(v557), vcvtq_f64_f32(v555));
    v230 = vmulq_n_f64(v229, 1.0 / sqrt(COERCE_DOUBLE(*&vmulq_f64(v229, v229).f64[1]) + v229.f64[0] * v229.f64[0]));
    v231.i64[0] = v228 <= 0.707106781;
    v231.i64[1] = v228 > 0.707106781;
    __asm
    {
      FMOV            V19.2D, #-1.0
      FMOV            V20.2D, #1.0
    }

    v237 = (v219 + 0.5);
    v238 = vbslq_s8(vcgtzq_f64(v230), _Q20, vandq_s8(_Q19, vcltzq_f64(v230)));
    v239 = (v220 + 0.5);
    v240 = (0.5 - v192);
    v241 = vmulq_f64(v238, vcvtq_f64_u64(v231));
    v242 = (v221 + 0.5);
    v243 = (v222 + 0.5);
    v244 = (0.5 - v223);
    v245 = v242 - v241.f64[0];
    v246 = v241.f64[0] + v242;
    v247 = v241.f64[1] + v243;
    v534 = v241;
    v248 = v241.f64[0] + v237;
    v249 = v241.f64[1] + v239;
    if ((v242 - v241.f64[0] - (v237 - v241.f64[0])) * (v241.f64[1] + v239 - (v239 - v241.f64[1])) - (v243 - v241.f64[1] - (v239 - v241.f64[1])) * (v241.f64[0] + v237 - (v237 - v241.f64[0])) >= 0.0)
    {
      v250 = v241.f64[0] + v237;
      v251 = v241.f64[1] + v239;
      v252 = v241.f64[0] + v242;
      v253 = v241.f64[1] + v243;
      v246 = v245;
      v247 = v243 - v241.f64[1];
      v248 = v237 - v241.f64[0];
      v249 = v239 - v241.f64[1];
    }

    else
    {
      v250 = v237 - v241.f64[0];
      v251 = v239 - v241.f64[1];
      v252 = v242 - v241.f64[0];
      v253 = v243 - v241.f64[1];
    }

    v328 = 0.0 - v225;
    *&v225 = v244;
    v329 = v248;
    v330 = v249;
    v331 = v246;
    *v224 = v329;
    v224[1] = v330;
    v332 = v247;
    v333 = v252;
    v334 = v253;
    v224[2] = v240;
    v224[3] = v331;
    v335 = v250;
    v336 = v251;
    v224[4] = v332;
    v224[5] = v244;
    v224[6] = v333;
    v224[7] = v334;
    v224[8] = v244;
    v224[9] = v329;
    v224[10] = v330;
    v224[11] = v240;
    v224[12] = v333;
    v224[13] = v334;
    v224[14] = v244;
    v224[15] = v335;
    v224[16] = v336;
    v224[17] = v240;
    if (v228 > 0.707106781)
    {
      v367 = 0.0;
      if (v328 < 0.0)
      {
        v367 = -1.0;
      }

      if (v328 <= 0.0)
      {
        v338 = v367;
      }

      else
      {
        v338 = 1.0;
      }

      if (v338 == 0.0)
      {
        v368 = MEMORY[0x277D81150];
        v527 = v219;
        v531 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, v367, 1.0, v225, "double (anonymous namespace)::generate_2pixel_quad(const dvec3 &, const dvec3 &, const dvec3 &, const dvec3 &, const dvec4 &, double, vec3 *, vec4 &, dvec3 &)");
        v373 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v369, v370, v371, v372, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v374 = MEMORY[0x277CCACA8];
        sub_276152FD4("dvec2(%f, %f)", v375, v376, v377, v378, v379, v380, v381, SLOBYTE(v226));
        if ((SBYTE7(v550) & 0x80u) == 0)
        {
          objc_msgSend_stringWithUTF8String_(v374, v382, v383, v384, v385, &__y);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v374, v382, v383, v384, v385, __y);
        }
        v387 = ;
        if (SBYTE7(v550) < 0)
        {
          operator delete(__y);
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v368, v386, v388, v389, v390, v531, v373, 249, 0, "invalid normal for horizontal line %@", v387, *&v328);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v391, v392, v393, v394);
        v219 = v527;
      }

      v366 = 0.0;
    }

    else
    {
      v337 = 0.0;
      if (v226 < 0.0)
      {
        v337 = -1.0;
      }

      if (v226 <= 0.0)
      {
        v338 = v337;
      }

      else
      {
        v338 = 1.0;
      }

      if (v338 == 0.0)
      {
        v339 = MEMORY[0x277D81150];
        v526 = v219;
        v530 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, v337, 1.0, v225, "double (anonymous namespace)::generate_2pixel_quad(const dvec3 &, const dvec3 &, const dvec3 &, const dvec3 &, const dvec4 &, double, vec3 *, vec4 &, dvec3 &)");
        v344 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v340, v341, v342, v343, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v345 = MEMORY[0x277CCACA8];
        sub_276152FD4("dvec2(%f, %f)", v346, v347, v348, v349, v350, v351, v352, SLOBYTE(v226));
        if ((SBYTE7(v550) & 0x80u) == 0)
        {
          objc_msgSend_stringWithUTF8String_(v345, v353, v354, v355, v356, &__y);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v345, v353, v354, v355, v356, __y);
        }
        v358 = ;
        if (SBYTE7(v550) < 0)
        {
          operator delete(__y);
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v339, v357, v359, v360, v361, v530, v344, 243, 0, "invalid normal for vertical line %@", v358, *&v328);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v362, v363, v364, v365);
        v219 = v526;
      }

      v366 = 1.0;
    }

    if (v338 < 0.0)
    {
      v226 = -v226;
      v328 = -v328;
    }

    v395 = v543;
    *&v396 = v226;
    *&v397 = v328;
    v398 = v328 * v220 + v226 * v219;
    v546.i64[0] = __PAIR64__(v397, v396);
    v546.f32[2] = -v398;
    v546.f32[3] = v366;
    v399 = v244 - v240;
    v400 = (v247 - v249) * (v247 - v249);
    v401 = v400 + (v246 - v248) * (v246 - v248) + v399 * v399;
    v324 = sqrt(v401);
  }

  else
  {
    v254 = objc_msgSend_stroke(v10, v196, v197, v198, v199);
    isRoundDash = objc_msgSend_isRoundDash(v254, v255, v256, v257, v258);
    v262 = 0.0;
    if (isRoundDash)
    {
      v262 = v536;
    }

    v535 = v262;
    v263 = objc_msgSend_pipeline(v9, v260, v262, v536, v261);
    objc_msgSend_superSamples(v263, v264, v265, v266, v267);
    v269 = fmaxf(v496, 1.0);
    v270 = vmulq_n_f64(v494, v492);
    v271 = vmulq_n_f64(v493, v492);
    v272 = (v190 * v497.f32[0]);
    v273 = vmuls_lane_f32(v191, v497, 1);
    v274 = -v192;
    v275 = (v193 * v497.f32[0]);
    v276 = vmuls_lane_f32(v194, v497, 1);
    v277 = -v195;
    v278 = (*v162 + v163);
    v279 = sqrt((v276 - v273) * (v276 - v273) + (v275 - v272) * (v275 - v272) + (v277 - v274) * (v277 - v274));
    v280 = (v275 - v272) * (1.0 / v279);
    v281 = (v276 - v273) * (1.0 / v279);
    v282 = (v277 - v274) * (1.0 / v279);
    v283 = v282 * -0.0 - v281;
    v284 = v280 + v282 * 0.0;
    v285 = v281 * -0.0 + v280 * 0.0;
    v286 = 1.0 / sqrt(v284 * v284 + v283 * v283 + v285 * v285);
    v287 = v283 * v286;
    v288 = v284 * v286;
    v289 = v285 * v286;
    v290.f64[1] = v271.f64[1];
    v290.f64[0] = v279;
    v291.f64[0] = v271.f64[0];
    v291.f64[1] = ((v269 + -0.9) * v495);
    v292 = vaddq_f64(v291, vaddq_f64(v270, v290));
    v293 = v272 - v280 * v270.f64[0];
    v294 = v273 - v281 * v270.f64[0];
    v295 = v274 - v282 * v270.f64[0];
    v296 = v291.f64[1] * 0.5 + v270.f64[1];
    v297 = v296 * v287;
    v298 = v296 * v288;
    v299 = v296 * v289;
    v300 = v293 - v296 * v287;
    v301 = v294 - v296 * v288;
    v302 = v295 - v296 * v289;
    v303 = v280 * v271.f64[0] + v275;
    v304 = v281 * v271.f64[0] + v276;
    v305 = v282 * v271.f64[0] + v277;
    v306 = v303 - v297;
    v307 = v304 - v298;
    v308 = v305 - v299;
    v309 = v291.f64[1] * 0.5 + v271.f64[1];
    v310 = v309 * v287;
    v311 = v309 * v288;
    v312 = v309 * v289;
    v313 = v293 + v310;
    v314 = v294 + v311;
    v315 = v295 + v312;
    v316 = v306 - v300;
    v317 = v304 - v298 - v301;
    v318 = sqrt(v317 * v317 + v316 * v316 + (v305 - v299 - v302) * (v305 - v299 - v302));
    if (v535 <= 0.0)
    {
      v325 = v303 + v310;
      v326 = v304 + v311;
      v327 = v305 + v312;
      v324 = v318;
    }

    else
    {
      v517 = (v269 * v268);
      *&__y = 0;
      v525 = v271;
      v529 = v270;
      v521 = v315;
      v523 = v300;
      v519 = v292;
      v319 = modf(v318 / v535, &__y);
      v292 = v519;
      v315 = v521;
      v300 = v523;
      v271 = v525;
      v270 = v529;
      v320 = v535 * *&__y;
      if (v535 * v319 >= v517)
      {
        v320 = v535 + v535 * *&__y;
      }

      v321 = v280 * v320;
      v322 = v281 * v320;
      v323 = v282 * v320;
      v324 = v320;
      v306 = v523 + v280 * v320;
      v307 = v301 + v281 * v320;
      v308 = v302 + v323;
      v325 = v313 + v321;
      v326 = v314 + v322;
      v327 = v521 + v323;
      v316 = v306 - v523;
      v317 = v307 - v301;
    }

    v546 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v270, v292)), vdivq_f64(vsubq_f64(v292, v271), v292));
    v402 = v316 * (v314 - v301) - v317 * (v313 - v300);
    _NF = v402 < 0.0;
    if (v402 < 0.0)
    {
      v404 = v313;
    }

    else
    {
      v404 = v300;
    }

    if (_NF)
    {
      v405 = v314;
    }

    else
    {
      v405 = v301;
    }

    v406 = v404;
    v407 = v405;
    *v278 = v406;
    v278[1] = v407;
    if (_NF)
    {
      v408 = v325;
    }

    else
    {
      v408 = v306;
    }

    if (_NF)
    {
      v409 = v315;
    }

    else
    {
      v409 = v302;
    }

    v410 = v409;
    v411 = v408;
    v278[2] = v410;
    v278[3] = v411;
    if (_NF)
    {
      v412 = v300;
    }

    else
    {
      v412 = v313;
    }

    if (_NF)
    {
      v413 = v301;
    }

    else
    {
      v413 = v314;
    }

    if (_NF)
    {
      v414 = v302;
    }

    else
    {
      v414 = v315;
    }

    if (_NF)
    {
      v325 = v306;
    }

    if (_NF)
    {
      v415 = v307;
    }

    else
    {
      v415 = v326;
    }

    if (_NF)
    {
      v307 = v326;
    }

    if (_NF)
    {
      v416 = v327;
    }

    else
    {
      v416 = v308;
    }

    v417 = v307;
    v418 = v416;
    v419 = v325;
    v420 = v415;
    v278[4] = v417;
    v278[5] = v418;
    v278[6] = v419;
    v278[7] = v420;
    if (_NF)
    {
      v327 = v308;
    }

    v421 = v327;
    v422 = v412;
    v423 = v413;
    v278[8] = v421;
    v278[9] = v406;
    v278[10] = v407;
    v278[11] = v410;
    v278[12] = v419;
    v278[13] = v420;
    v278[14] = v421;
    v278[15] = v422;
    v424 = v414;
    v278[16] = v423;
    v278[17] = v424;

    v401 = 0.0;
    v534 = 0u;
    v395 = v543;
  }

  if (*(a5 + 6) == 1 && *(a6 + 6) == 1)
  {
    v532 = v324;
    if (v9)
    {
      objc_msgSend_viewport(v9, v200, v401, v399, v400);
      v425 = DWORD2(__y);
      v426 = HIDWORD(__y);
      v427 = __y;
      v428 = DWORD1(__y);
      objc_msgSend_viewport(v9, v429, v430, v431, v432);
      v433 = (v426 - v428);
      v434 = (v425 - v427);
      v435 = __y;
      v436 = SDWORD1(__y);
    }

    else
    {
      v433 = 0.0;
      v434 = 0.0;
      v436 = 0.0;
      v435 = 0.0;
    }

    v437 = v435 + (v434 * v538 + 0.5);
    v438 = v436 + (v433 * v540 + 0.5);
    v439 = v435 + (v434 * v395 + 0.5);
    v440 = v436 + (v433 * v542 + 0.5);
    v441 = v438 - v534.f64[1];
    v442 = v534.f64[0] + v439;
    v443 = v534.f64[1] + v440;
    v444 = v534.f64[0] + v437;
    v445 = v534.f64[1] + v438;
    if ((v439 - v534.f64[0] - (v437 - v534.f64[0])) * (v534.f64[1] + v438 - v441) - (v440 - v534.f64[1] - v441) * (v534.f64[0] + v437 - (v437 - v534.f64[0])) >= 0.0)
    {
      v446 = v534.f64[0] + v437;
      v447 = v534.f64[1] + v438;
      v448 = v534.f64[0] + v439;
      v449 = v534.f64[1] + v440;
      v442 = v439 - v534.f64[0];
      v443 = v440 - v534.f64[1];
      v444 = v437 - v534.f64[0];
      v445 = v438 - v534.f64[1];
    }

    else
    {
      v446 = v437 - v534.f64[0];
      v447 = v438 - v534.f64[1];
      v448 = v439 - v534.f64[0];
      v449 = v440 - v534.f64[1];
    }

    v450 = objc_msgSend_p_diffuseTexcoords(self, v200, v437 - v534.f64[0], v441, v440 - v534.f64[1]);
    v451 = sub_27618C374(v450);

    v452 = v451[1] - *v451;
    sub_2761FAFF8(v451, (v452 >> 4) + 6);
    *&v453 = v444;
    *&v454 = v445;
    v545 = __PAIR64__(v454, v453);
    sub_2761B63E0(&v545, (a5 + 28), &__y);
    v456 = DWORD1(__y);
    v455 = __y;
    *&v457 = v442;
    *&v458 = v443;
    v545 = __PAIR64__(v458, v457);
    sub_2761B63E0(&v545, (a6 + 28), &__y);
    v459 = __y;
    *&v460 = v448;
    *&v461 = v449;
    v545 = __PAIR64__(v461, v460);
    sub_2761B63E0(&v545, (a6 + 28), &__y);
    v462 = __y;
    *&v463 = v446;
    *&v464 = v447;
    v545 = __PAIR64__(v464, v463);
    sub_2761B63E0(&v545, (a5 + 28), &__y);
    v401 = *&__y;
    v465 = *v451 + v452;
    *v465 = __PAIR64__(v456, v455);
    v399 = 0.0078125;
    *(v465 + 8) = 0x3F80000000000000;
    *(v465 + 16) = v459;
    *(v465 + 24) = 0x3F80000000000000;
    *(v465 + 32) = v462;
    *(v465 + 40) = 0x3F80000000000000;
    *(v465 + 48) = __PAIR64__(v456, v455);
    *(v465 + 56) = 0x3F80000000000000;
    *(v465 + 64) = v462;
    *(v465 + 72) = 0x3F80000000000000;
    *(v465 + 80) = v401;
    *(v465 + 88) = 0x3F80000000000000;
    v324 = v532;
  }

  v466 = objc_msgSend_stroke(v10, v200, v401, v399, v400);
  v467 = v324;

  if (v466)
  {
    v469 = v536;
    if (v536 > 0.0)
    {
      *&v469 = v536;
      v467 = v467 / *&v469;
    }
  }

  v472 = objc_msgSend_p_box(self, v468, v469, v470, v471);
  v473 = sub_27618C374(v472);

  v474 = 6;
  do
  {
    sub_276161E1C(v473, &v546);
    --v474;
  }

  while (v474);
  v479 = objc_msgSend_p_texcoords(self, v475, v476, v477, v478);
  v480 = sub_27618C374(v479);

  __y = xmmword_2764D5F20;
  sub_276213D54(v480, &__y);
  *&__y = 1065353216;
  *(&__y + 1) = LODWORD(v467) | 0x3F80000000000000;
  sub_276213D54(v480, &__y);
  __asm { FMOV            V9.2S, #1.0 }

  *&__y = _D9;
  *(&__y + 1) = LODWORD(v467) | 0x3F80000000000000;
  sub_276213D54(v480, &__y);
  __y = xmmword_2764D5F20;
  sub_276213D54(v480, &__y);
  *&__y = _D9;
  *(&__y + 1) = LODWORD(v467) | 0x3F80000000000000;
  sub_276213D54(v480, &__y);
  __y = xmmword_2764D62A0;
  sub_276213D54(v480, &__y);
  if (objc_msgSend_disableColorOutput(v10, v482, v483, v484, v485))
  {
    v490 = objc_msgSend_p_originalGeometry(self, v486, v487, v488, v489);
    v491 = sub_27618C648(v490);
    sub_276213B6C(v491, &v553, &v547);
  }

LABEL_137:
}

@end