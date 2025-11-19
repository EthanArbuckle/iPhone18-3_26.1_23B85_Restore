@interface TSDImmutableBrushStrokeStorage
+ (unint64_t)p_totalSectionCountWithPaths:(id)a3;
- (TSDImmutableBrushStrokeStorage)initWithImage:(id)a3 paths:(id)a4 bounds:(id)a5 textureIndices:(id)a6 options:(id)a7 lineEnds:(id)a8;
- (id)deepCopy;
@end

@implementation TSDImmutableBrushStrokeStorage

- (TSDImmutableBrushStrokeStorage)initWithImage:(id)a3 paths:(id)a4 bounds:(id)a5 textureIndices:(id)a6 options:(id)a7 lineEnds:(id)a8
{
  v24 = a3;
  v15 = a4;
  v23 = a5;
  v22 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = TSDImmutableBrushStrokeStorage;
  v18 = [(TSDImmutableBrushStrokeStorage *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_image, a3);
    objc_storeStrong(&v19->_paths, a4);
    objc_storeStrong(&v19->_bounds, a5);
    objc_storeStrong(&v19->_textureIndices, a6);
    objc_storeStrong(&v19->_options, a7);
    objc_storeStrong(&v19->_lineEnds, a8);
    v19->_totalSectionCount = objc_msgSend_p_totalSectionCountWithPaths_(TSDImmutableBrushStrokeStorage, v20, v15);
  }

  return v19;
}

+ (unint64_t)p_totalSectionCountWithPaths:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_allKeys(v3, v4, v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_objectForKeyedSubscript_(v3, v9, *(*(&v18 + 1) + 8 * i));
        v11 += objc_msgSend_count(v14, v15, v16);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v18, v22, 16);
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)deepCopy
{
  v246 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_image(self, a2, v2);
  v190 = objc_msgSend_copy(v4, v5, v6);

  v196 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v205 = self;
  v11 = objc_msgSend_paths(self, v9, v10);
  v14 = objc_msgSend_allKeys(v11, v12, v13);

  obj = v14;
  v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v234, v245, 16);
  if (v197)
  {
    v194 = *v235;
    do
    {
      v18 = 0;
      do
      {
        if (*v235 != v194)
        {
          objc_enumerationMutation(obj);
        }

        v201 = v18;
        v19 = *(*(&v234 + 1) + 8 * v18);
        v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v23 = objc_msgSend_paths(v205, v21, v22);
        v199 = v19;
        v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v19);

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v230, v244, 16);
        if (v27)
        {
          v28 = v27;
          v29 = *v231;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v231 != v29)
              {
                objc_enumerationMutation(v25);
              }

              v31 = *(*(&v230 + 1) + 8 * i);
              v32 = [TSDBrushStrokeStorageBezierPathContainer alloc];
              v35 = objc_msgSend_originalPath(v31, v33, v34);
              v38 = objc_msgSend_copy(v35, v36, v37);
              v41 = objc_msgSend_pathWithPossibleSmoothing(v31, v39, v40);
              v44 = objc_msgSend_copy(v41, v42, v43);
              v46 = objc_msgSend_initWithOriginalPath_pathWithPossibleSmoothing_(v32, v45, v38, v44);
              objc_msgSend_addObject_(v20, v47, v46);
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v48, &v230, v244, 16);
          }

          while (v28);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v196, v49, v20, v199);
        v18 = v201 + 1;
      }

      while (v201 + 1 != v197);
      v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v234, v245, 16);
    }

    while (v197);
  }

  v200 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v50, v51);
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v54 = objc_msgSend_bounds(v205, v52, v53);
  v57 = objc_msgSend_allKeys(v54, v55, v56);

  v202 = v57;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v226, v243, 16);
  if (v59)
  {
    v62 = v59;
    v63 = *v227;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v227 != v63)
        {
          objc_enumerationMutation(v202);
        }

        v65 = *(*(&v226 + 1) + 8 * j);
        v66 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61);
        v222 = 0u;
        v223 = 0u;
        v224 = 0u;
        v225 = 0u;
        v69 = objc_msgSend_bounds(v205, v67, v68);
        v71 = objc_msgSend_objectForKeyedSubscript_(v69, v70, v65);

        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v222, v242, 16);
        if (v73)
        {
          v76 = v73;
          v77 = *v223;
          do
          {
            for (k = 0; k != v76; ++k)
            {
              if (*v223 != v77)
              {
                objc_enumerationMutation(v71);
              }

              v79 = objc_msgSend_copy(*(*(&v222 + 1) + 8 * k), v74, v75);
              objc_msgSend_addObject_(v66, v80, v79);
            }

            v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v222, v242, 16);
          }

          while (v76);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v200, v81, v66, v65);
      }

      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v60, &v226, v243, 16);
    }

    while (v62);
  }

  v198 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v82, v83);
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v86 = objc_msgSend_textureIndices(v205, v84, v85);
  v89 = objc_msgSend_allKeys(v86, v87, v88);

  v203 = v89;
  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v218, v241, 16);
  if (v91)
  {
    v94 = v91;
    v95 = *v219;
    do
    {
      for (m = 0; m != v94; ++m)
      {
        if (*v219 != v95)
        {
          objc_enumerationMutation(v203);
        }

        v97 = *(*(&v218 + 1) + 8 * m);
        v98 = objc_msgSend_array(MEMORY[0x277CBEB18], v92, v93);
        v214 = 0u;
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v101 = objc_msgSend_textureIndices(v205, v99, v100);
        v103 = objc_msgSend_objectForKeyedSubscript_(v101, v102, v97);

        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, &v214, v240, 16);
        if (v105)
        {
          v108 = v105;
          v109 = *v215;
          do
          {
            for (n = 0; n != v108; ++n)
            {
              if (*v215 != v109)
              {
                objc_enumerationMutation(v103);
              }

              v111 = objc_msgSend_copy(*(*(&v214 + 1) + 8 * n), v106, v107);
              objc_msgSend_addObject_(v98, v112, v111);
            }

            v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v106, &v214, v240, 16);
          }

          while (v108);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v198, v113, v98, v97);
      }

      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v92, &v218, v241, 16);
    }

    while (v94);
  }

  v116 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v114, v115);
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v119 = objc_msgSend_options(v205, v117, v118);
  v122 = objc_msgSend_allKeys(v119, v120, v121);

  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, &v210, v239, 16);
  if (v124)
  {
    v127 = v124;
    v128 = *v211;
    do
    {
      for (ii = 0; ii != v127; ++ii)
      {
        if (*v211 != v128)
        {
          objc_enumerationMutation(v122);
        }

        v130 = *(*(&v210 + 1) + 8 * ii);
        v131 = objc_msgSend_options(v205, v125, v126);
        v133 = objc_msgSend_objectForKeyedSubscript_(v131, v132, v130);

        v136 = objc_msgSend_copy(v133, v134, v135);
        objc_msgSend_setObject_forKeyedSubscript_(v116, v137, v136, v130);
      }

      v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v125, &v210, v239, 16);
    }

    while (v127);
  }

  v189 = v116;

  v195 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v138, v139);
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v142 = objc_msgSend_lineEnds(v205, v140, v141);
  v145 = objc_msgSend_allKeys(v142, v143, v144);

  v191 = v145;
  v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v146, &v206, v238, 16);
  if (v204)
  {
    obja = *v207;
    do
    {
      for (jj = 0; jj != v204; jj = jj + 1)
      {
        if (*v207 != obja)
        {
          objc_enumerationMutation(v191);
        }

        v150 = *(*(&v206 + 1) + 8 * jj);
        v151 = objc_msgSend_lineEnds(v205, v147, v148, v189);
        v153 = objc_msgSend_objectForKeyedSubscript_(v151, v152, v150);

        v154 = [TSDLineEnd alloc];
        v157 = objc_msgSend_path(v153, v155, v156);
        v160 = objc_msgSend_copy(v157, v158, v159);
        v163 = objc_msgSend_wrapPath(v153, v161, v162);
        v166 = objc_msgSend_copy(v163, v164, v165);
        objc_msgSend_endPoint(v153, v167, v168);
        v170 = v169;
        v172 = v171;
        isFilled = objc_msgSend_isFilled(v153, v173, v174);
        v178 = objc_msgSend_identifier(v153, v176, v177);
        v181 = objc_msgSend_lineJoin(v153, v179, v180);
        isFilled_identifier_lineJoin = objc_msgSend_initWithBezierPath_wrapPath_endPoint_isFilled_identifier_lineJoin_(v154, v182, v160, v166, isFilled, v178, v181, v170, v172);
        objc_msgSend_setObject_forKeyedSubscript_(v195, v184, isFilled_identifier_lineJoin, v150);
      }

      v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v147, &v206, v238, 16);
    }

    while (v204);
  }

  v185 = [TSDImmutableBrushStrokeStorage alloc];
  v187 = objc_msgSend_initWithImage_paths_bounds_textureIndices_options_lineEnds_(v185, v186, v190, v196, v200, v198, v189, v195);

  return v187;
}

@end