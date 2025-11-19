@interface TSCH3DChartStackedColumnSceneObject
- (void)sortElements:(id *)a3 pipeline:(id)a4;
@end

@implementation TSCH3DChartStackedColumnSceneObject

- (void)sortElements:(id *)a3 pipeline:(id)a4
{
  v290 = a4;
  v10 = objc_msgSend_scene(v290, v6, v7, v8, v9);
  v15 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v11, v12, v13, v14, v10);

  v288 = v15;
  if (v15)
  {
    objc_msgSend_rotation(v15, v16, v17, v18, v19);
  }

  else
  {
    v307 = 0;
    v306 = 0;
  }

  objc_msgSend_processor(v290, v16, v17, v18, v19);
  v296 = 1065353216;
  v298 = 0;
  v297 = 0;
  v299 = 1065353216;
  v300 = 0;
  v301 = 0;
  v302 = 1065353216;
  v304 = 0;
  v303 = 0;
  v287 = v305 = 1065353216;
  objc_msgSend_copyProjectionInto_(v287, v20, v21, v22, v23, &v296);
  v24 = objc_opt_class();
  isHorizontalChart = objc_msgSend_isHorizontalChart(v24, v25, v26, v27, v28);
  v30 = v306;
  v286 = self;
  v289 = v290;
  v36 = objc_msgSend_processor(v289, v31, v32, v33, v34);
  v292 = v36;
  if (!v36)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v37, v38, v39, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  v55 = objc_msgSend_scene(v289, v35, v37, v38, v39);
  v294 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v56, v57, v58, v59, v55);

  v285 = a3;
  v60 = *a3;
  __src = 0;
  v316 = 0;
  v317 = 0;
  v65 = objc_msgSend_count(v60, v61, v62, v63, v64);
  sub_276182010(&__src, v65);
  v69 = 0;
  if (isHorizontalChart)
  {
    v70 = *&v30;
  }

  else
  {
    v70 = *(&v30 + 1);
  }

  v291 = v70;
  v71 = 0.0078125;
  v293 = v60;
  while (v69 < objc_msgSend_count(v60, v66, v71, v67, v68))
  {
    v76 = objc_msgSend_objectAtIndexedSubscript_(v60, v72, v73, v74, v75, v69);
    objc_msgSend_pushMatrix(v36, v77, v78, v79, v80);
    v85 = objc_msgSend_properties(v76, v81, v82, v83, v84);
    v91 = objc_msgSend_series(v76, v86, v87, v88, v89);
    if (v76)
    {
      objc_msgSend_index(v76, v90, v92, v93, v94);
    }

    else
    {
      *v308 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v85, v90, v92, v93, v94, v36, v91, v308, v294);

    *&v308[3] = 0;
    *&v308[1] = 0;
    v308[0] = 1065353216;
    v308[5] = 1065353216;
    v309 = 0;
    v310 = 0;
    v313 = 0;
    v312 = 0;
    v311 = 1065353216;
    v314 = 1065353216;
    objc_msgSend_copyTransformInto_(v36, v95, v96, v97, v98, v308);
    v99 = v76;
    v344 = 1056964608;
    v345 = 1056964608;
    v342 = 1056964608;
    v343 = 0;
    v340 = 0;
    v341 = 1056964608;
    v337 = 1056964608;
    v338 = 1056964608;
    v339 = 1065353216;
    v336 = 0x3F8000003F000000;
    v334 = 0x3F80000000000000;
    v335 = 1056964608;
    sub_276154744(&v344, v308, &v332, v100);
    sub_276154744(&v342, v308, &v330, v101);
    sub_276154744(&v340, v308, &v328, v102);
    sub_276154744(&v338, v308, &v326, v103);
    sub_276154744(&v336, v308, &v324, v104);
    sub_276154744(&v334, v308, &v322, v105);
    v295 = v69;
    v110 = v332.f32[0] - v330.f32[0];
    v111 = v332.f32[1] - v330.f32[1];
    v112 = v328.f32[0] - v332.f32[0];
    v113 = v328.f32[1] - v332.f32[1];
    v114 = v329 - v333;
    v115 = v324.f32[0] - v326.f32[0];
    v116 = v324.f32[1] - v326.f32[1];
    v117 = v325 - v327;
    v118 = 0.0 - v332.f32[0];
    v119 = 0.0 - v332.f32[1];
    v120 = 0.0 - v333;
    v121 = 0.0 - v324.f32[0];
    v122 = 0.0 - v324.f32[1];
    v123 = 0.0 - v325;
    v124 = (((0.0 - v332.f32[1]) * (v332.f32[1] - v330.f32[1])) + ((v332.f32[0] - v330.f32[0]) * (0.0 - v332.f32[0]))) + ((v333 - v331) * (0.0 - v333));
    if (v124 >= 0.0)
    {
      v125 = v333 - v331;
    }

    else
    {
      v110 = -(v332.f32[0] - v330.f32[0]);
      v111 = -(v332.f32[1] - v330.f32[1]);
      v125 = -(v333 - v331);
    }

    v126 = 1.0 / sqrtf(((v111 * v111) + (v110 * v110)) + (v125 * v125));
    v127 = v110 * v126;
    v128 = v111 * v126;
    v129 = v125 * v126;
    v130 = ((v119 * v113) + (v112 * v118)) + (v114 * v120);
    v131 = v130 < 0.0;
    if (v130 >= 0.0)
    {
      v132 = v328.f32[1] - v332.f32[1];
    }

    else
    {
      v114 = -v114;
      v132 = -v113;
    }

    if (v131)
    {
      v112 = -v112;
    }

    v133 = 1.0 / sqrtf(((v132 * v132) + (v112 * v112)) + (v114 * v114));
    v134 = v112 * v133;
    v135 = v132 * v133;
    v136 = v114 * v133;
    v137 = ((v122 * v116) + (v115 * v121)) + (v117 * v123);
    v138 = -v115;
    if (v137 < 0.0)
    {
      v139 = -v116;
    }

    else
    {
      v138 = v324.f32[0] - v326.f32[0];
      v139 = v324.f32[1] - v326.f32[1];
    }

    if (v137 < 0.0)
    {
      v140 = -v117;
    }

    else
    {
      v140 = v325 - v327;
    }

    v141 = 1.0 / sqrtf(((v139 * v139) + (v138 * v138)) + (v140 * v140));
    v142 = v138 * v141;
    v143 = v140 * v141;
    v144 = 1.0 / sqrtf(((v119 * v119) + (v118 * v118)) + (v120 * v120));
    v145 = v118 * v144;
    v146 = v119 * v144;
    v147 = v120 * v144;
    v148 = 1.0 / sqrtf(((v122 * v122) + (v121 * v121)) + (v123 * v123));
    v149 = v121 * v148;
    v150 = v123 * v148;
    v151 = ((v146 * v128) + (v127 * v145)) + (v129 * v147);
    v152 = ((v146 * v135) + (v134 * v145)) + (v136 * v147);
    if ((v151 > v152) | isHorizontalChart & 1)
    {
      v153 = v129;
    }

    else
    {
      v153 = v136;
    }

    if (isHorizontalChart)
    {
      v154 = (v124 >= 0.0) ^ (((v147 * v127) - (v153 * v145)) >= 0.0);
      v155 = (v137 >= 0.0) ^ (((v150 * v142) - (v143 * v149)) < 0.0);
    }

    else
    {
      v156 = v122 * v148;
      v157 = (((v122 * v148) * (v139 * v141)) + (v142 * v149)) + (v143 * v150);
      v158 = ((v122 * (v322.f32[1] - v324.f32[1])) + ((v322.f32[0] - v324.f32[0]) * v121)) + ((v323 - v325) * v123);
      v159 = v158 < 0.0;
      if (v158 >= 0.0)
      {
        v160 = v323 - v325;
      }

      else
      {
        v160 = -(v323 - v325);
      }

      v161 = -(v322.f32[0] - v324.f32[0]);
      if (!v159)
      {
        v161 = v322.f32[0] - v324.f32[0];
      }

      v162 = -(v322.f32[1] - v324.f32[1]);
      if (!v159)
      {
        v162 = v322.f32[1] - v324.f32[1];
      }

      v163 = 1.0 / sqrtf(((v162 * v162) + (v161 * v161)) + (v160 * v160));
      v164 = v160 * v163;
      v165 = v162 * v163;
      v166 = ((v156 * v165) + ((v161 * v163) * v149)) + (v164 * v150);
      v167 = v157 <= v166;
      if (v157 <= v166)
      {
        v168 = v165;
      }

      else
      {
        v168 = v139 * v141;
      }

      if (!v167)
      {
        v164 = v143;
      }

      if (v151 <= v152)
      {
        v128 = v135;
      }

      v155 = ((v156 * v164) - (v168 * v150)) < 0.0;
      v154 = ((v146 * v153) - (v128 * v147)) >= 0.0;
    }

    v169 = v324.f32[1] - v332.f32[1];
    LODWORD(v109) = -1.0;
    if ((v324.f32[0] - v332.f32[0]) >= 0.0)
    {
      *&v107 = 0.0;
    }

    else
    {
      *&v107 = -1.0;
    }

    if ((v324.f32[0] - v332.f32[0]) > 0.0)
    {
      *&v107 = 1.0;
    }

    v170 = v169 <= 0.0;
    if (v169 >= 0.0)
    {
      *&v108 = 0.0;
    }

    else
    {
      *&v108 = -1.0;
    }

    if (!v170)
    {
      *&v108 = 1.0;
    }

    v171 = isHorizontalChart;
    if (!isHorizontalChart)
    {
      *&v107 = *&v108;
    }

    v172 = *&v107 >= 0.0;
    v174 = objc_msgSend_properties(v99, v106, v107, v108, v109);
    if (!v174)
    {
      v178 = MEMORY[0x277D81150];
      v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, v175, v176, v177, "float (anonymous namespace)::MakeSortData::operator()(TSCH3DChartElementSceneObject *__strong, mat4cref, TSCH3DRenderElementInfo *__strong)");
      v184 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v180, v181, v182, v183, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartStackedColumnSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v178, v185, v186, v187, v188, v179, v184, 163, 0, "invalid nil value for '%{public}s'", "properties");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191, v192);
    }

    v319 = 0;
    v320 = 0;
    v321 = 0;
    if (v76)
    {
      v60 = v293;
      objc_msgSend_index(v99, v173, v175, v176, v177);
      if (!v174)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v318 = 0;
      v60 = v293;
      if (!v174)
      {
LABEL_70:
        v200 = 0;
        v319 = 0;
        v320 = 0;
        v199 = 1;
        v321 = 0;
        if (v76)
        {
          goto LABEL_68;
        }

        goto LABEL_71;
      }
    }

    objc_msgSend_barElementInfoAtIndex_(v174, v173, v175, v176, v177, &v318);
    v193 = v320;
    v194 = v321;
    objc_msgSend_size(v174, v195, v196, v197, v198);
    if (v193)
    {
      v199 = -1;
    }

    else
    {
      v199 = v194 + 1;
    }

    v200 = SHIDWORD(v318);
    if (v76)
    {
LABEL_68:
      objc_msgSend_index(v99, v173, v175, v176, v177);
      v201 = SHIDWORD(v318);
      goto LABEL_72;
    }

LABEL_71:
    v201 = 0;
LABEL_72:
    v202 = v154 | v155 | v172;
    v203 = 0.0;
    isHorizontalChart = v171;
    if (((v202 ^ 1 | v154 & v155) & 1) == 0)
    {
      if ((v202 & ~v155 | v154))
      {
        if (v199 < 0)
        {
          v204 = ~v201;
        }

        else
        {
          v204 = v199;
        }

        *&v175 = (v204 + v200);
      }

      else
      {
        *&v175 = v201;
        if (v199 >= 0)
        {
          *&v175 = -v199;
        }
      }

      LODWORD(v176) = 0.5;
      v203 = *&v175 + 0.5;
    }

    if (v76)
    {
      objc_msgSend_index(v99, v173, v175, v176, v177);
      v205 = v295;
      v206 = v318;
      if (v174)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v206 = 0;
      v205 = v295;
      if (v174)
      {
LABEL_83:
        objc_msgSend_size(v174, v173, v175, v176, v177);
        v207 = v318;
        goto LABEL_86;
      }
    }

    v207 = 0;
LABEL_86:
    v208 = v207 + ~v206;
    if (v291 > 0.0)
    {
      v208 = v206;
    }

    v209 = -(v203 + (v208 * v200)) / (v207 * v200);

    v214 = v316;
    if (v316 >= v317)
    {
      v216 = __src;
      v217 = v316 - __src;
      v218 = (v316 - __src) >> 4;
      v219 = v218 + 1;
      if ((v218 + 1) >> 60)
      {
        sub_276161760();
      }

      v220 = v317 - __src;
      if ((v317 - __src) >> 3 > v219)
      {
        v219 = v220 >> 3;
      }

      v221 = v220 >= 0x7FFFFFFFFFFFFFF0;
      v222 = 0xFFFFFFFFFFFFFFFLL;
      if (!v221)
      {
        v222 = v219;
      }

      if (v222)
      {
        sub_2761820B0(&__src, v222);
      }

      v223 = (v316 - __src) >> 4;
      v224 = 16 * v218;
      *v224 = v209;
      *(v224 + 8) = v205;
      v215 = (16 * v218 + 16);
      v225 = (16 * v218 - 16 * v223);
      memcpy((v224 - 16 * v223), v216, v217);
      v226 = __src;
      __src = v225;
      v316 = v215;
      v317 = 0;
      if (v226)
      {
        operator delete(v226);
      }
    }

    else
    {
      *v316 = v209;
      *(v214 + 1) = v205;
      v215 = v214 + 4;
    }

    v36 = v292;
    v316 = v215;
    objc_msgSend_popMatrix(v292, v210, v211, v212, v213);

    v69 = v205 + 1;
  }

  v227 = 126 - 2 * __clz((v316 - __src) >> 4);
  if (v316 == __src)
  {
    v228 = 0;
  }

  else
  {
    v228 = v227;
  }

  sub_2761820F8(__src, v316, v308, v228, 1);
  v229 = MEMORY[0x277CBEB18];
  v234 = objc_msgSend_count(v60, v230, v231, v232, v233);
  v240 = objc_msgSend_arrayWithCapacity_(v229, v235, v236, v237, v238, v234);
  for (i = __src; i != v316; i += 4)
  {
    v245 = objc_msgSend_objectAtIndexedSubscript_(v60, v239, v241, v242, v243, *(i + 1));
    objc_msgSend_addObject_(v240, v246, v247, v248, v249, v245);
  }

  v250 = objc_msgSend_count(v60, v239, v241, v242, v243);
  if (v250 != objc_msgSend_count(v240, v251, v252, v253, v254))
  {
    v259 = MEMORY[0x277D81150];
    v260 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v255, v256, v257, v258, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v265 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v261, v262, v263, v264, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v270 = objc_msgSend_count(v60, v266, v267, v268, v269);
    v275 = objc_msgSend_count(v240, v271, v272, v273, v274);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v259, v276, v277, v278, v279, v260, v265, 59, 0, "size mismatch between elements and sorted %lu, %lu", v270, v275);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v280, v281, v282, v283);
  }

  v284 = v240;
  *v285 = v240;

  if (__src)
  {
    v316 = __src;
    operator delete(__src);
  }
}

@end