@interface TSDMagicMoveTextureZOrderer
- (NSArray)flattenableAnimationMatches;
- (TSDMagicMoveTextureZOrderer)init;
- (TSDMagicMoveTextureZOrderer)initWithAnimationMatches:(id)a3;
- (id)p_debugDescription;
- (id)p_newArrayBySortingMatches:(id)a3 withInterpolatedPercent:(double)a4;
- (id)p_outgoingTextureMatchesInZOrder;
- (id)p_outgoingTextureMatchesInZOrderWithTextureSets:(id)a3;
- (id)p_textureSetsInZOrderMatches;
- (id)p_uniqueIntersections;
- (id)p_zOrderMatchForTextureRectangle:(id)a3 withTextureSets:(id)a4;
- (id)texturedRectanglesAtPercent:(double)a3;
- (unint64_t)p_bestZIndexForUnassignedMatch:(id)a3 inMatchArray:(id)a4;
- (unint64_t)p_zIntersectionsBetweenZOrdererMatches:(id)a3;
- (void)dealloc;
- (void)p_addFlattenableAnimationMatches:(id)a3 toArray:(id)a4;
- (void)p_addVisibleTexturesFromMatches:(id)a3 toArray:(id)a4 interpolatedPercent:(double)a5;
- (void)p_adjustZOrdererMatchesZIndexByTextureType:(id)a3;
- (void)p_calculateTextureArraysFromIntersections;
- (void)p_setupZOrderMatchesWithAnimationMatches:(id)a3;
@end

@implementation TSDMagicMoveTextureZOrderer

- (TSDMagicMoveTextureZOrderer)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMagicMoveTextureZOrderer init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 1000, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDMagicMoveTextureZOrderer init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSDMagicMoveTextureZOrderer)initWithAnimationMatches:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSDMagicMoveTextureZOrderer;
  v5 = [(TSDMagicMoveTextureZOrderer *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_create("TSDMagicMoveTextureZOrderer", 0);
    resultQueue = v5->_resultQueue;
    v5->_resultQueue = v6;

    objc_msgSend_p_setupZOrderMatchesWithAnimationMatches_(v5, v8, v4);
    objc_msgSend_p_calculateTextureArraysFromIntersections(v5, v9, v10);
  }

  return v5;
}

- (void)dealloc
{
  free(self->_percentTexturesTimes);
  v3.receiver = self;
  v3.super_class = TSDMagicMoveTextureZOrderer;
  [(TSDMagicMoveTextureZOrderer *)&v3 dealloc];
}

- (id)texturedRectanglesAtPercent:(double)a3
{
  if (a3 == 0.0)
  {
    outgoingTexturesInZOrder = self->_outgoingTexturesInZOrder;
LABEL_5:
    v7 = outgoingTexturesInZOrder;
    goto LABEL_6;
  }

  if (a3 == 1.0)
  {
    outgoingTexturesInZOrder = self->_incomingTexturesInZOrder;
    goto LABEL_5;
  }

  v9 = objc_msgSend_count(self->_percentTextures, a2, v3);
  if (v9 && (percentTexturesTimes = self->_percentTexturesTimes, *percentTexturesTimes <= a3))
  {
    v12 = v9 - 1;
    v13 = 1;
    while (v9 != v13)
    {
      v14 = percentTexturesTimes[v13++];
      if (v14 > a3)
      {
        objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v10, v13 - 2);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v10, v12);
  v7 = LABEL_13:;
LABEL_6:

  return v7;
}

- (void)p_addVisibleTexturesFromMatches:(id)a3 toArray:(id)a4 interpolatedPercent:(double)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v41 = v7;
  v11 = objc_msgSend_initWithArray_(v9, v10, v7);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2766C81B4;
  v48[3] = &unk_27A6CCD68;
  *&v48[4] = a5;
  objc_msgSend_sortUsingComparator_(v11, v12, v48);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v44, v49, 16);
  if (v14)
  {
    v17 = v14;
    v43 = *v45;
    do
    {
      v18 = 0;
      do
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v19 = 0;
        v20 = *(*(&v44 + 1) + 8 * v18);
        do
        {
          v21 = objc_msgSend_outgoingTexture(v20, v15, v16);
          v23 = objc_msgSend_firstVisibleTextureForTextureType_(v21, v22, v19);

          if (v23 || (objc_msgSend_incomingTexture(v20, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_firstVisibleTextureForTextureType_(v26, v27, v19), v23 = objc_claimAutoreleasedReturnValue(), v26, v23))
          {
            objc_msgSend_addObject_(v8, v24, v23);
          }

          v29 = objc_msgSend_layer(v23, v24, v28);
          v31 = objc_msgSend_valueForKey_(v29, v30, @"kTSDTextureLayerKeyIsPaired");
          v34 = objc_msgSend_BOOLValue(v31, v32, v33);

          if (v34)
          {
            v37 = objc_msgSend_incomingTexture(v20, v35, v36);
            v39 = objc_msgSend_firstVisibleTextureForTextureType_(v37, v38, v19);

            if (v39 && v39 != v23)
            {
              objc_msgSend_addObject_(v8, v40, v39);
            }
          }

          ++v19;
        }

        while (v19 != 17);
        ++v18;
      }

      while (v18 != v17);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v44, v49, 16);
    }

    while (v17);
  }
}

- (id)p_newArrayBySortingMatches:(id)a3 withInterpolatedPercent:(double)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithArray_(v7, v8, v6);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2766C84BC;
  v41[3] = &unk_27A6CCD68;
  *&v41[4] = a4;
  objc_msgSend_sortUsingComparator_(v9, v10, v41);
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v37, v42, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v38;
    do
    {
      v20 = 0;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        if (objc_msgSend_count(v12, v16, v17, v37))
        {
          v24 = objc_msgSend_lastObject(v12, v22, v23);
          objc_msgSend_interpolatedZIndexAtPercent_(v24, v25, v26, a4);
          v28 = v27;
          objc_msgSend_interpolatedZIndexAtPercent_(v21, v29, v30, a4);
          v32 = v31;

          if (v28 != v32 && vabdd_f64(v28, v32) >= 0.00999999978)
          {
            objc_msgSend_p_addVisibleTexturesFromMatches_toArray_interpolatedPercent_(self, v22, v12, v11, a4);
            objc_msgSend_removeAllObjects(v12, v33, v34);
          }
        }

        objc_msgSend_addObject_(v12, v22, v21);
        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v37, v42, 16);
    }

    while (v18);
  }

  objc_msgSend_p_addVisibleTexturesFromMatches_toArray_interpolatedPercent_(self, v35, v12, v11, a4);
  return v11;
}

- (void)p_adjustZOrdererMatchesZIndexByTextureType:(id)a3
{
  v136 = *MEMORY[0x277D85DE8];
  v106 = a3;
  v111 = objc_opt_new();
  v5 = 1;
  do
  {
    v6 = v5;
    objc_msgSend_removeAllObjects(v111, v3, v4);
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    obj = v106;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v128, v135, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v129;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v129 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v128 + 1) + 8 * i);
          if (v6)
          {
            v15 = objc_msgSend_outgoingZIndex(v14, v9, v10);
          }

          else
          {
            v15 = objc_msgSend_incomingZIndex(v14, v9, v10);
          }

          v16 = v15;
          if (v15 != -1)
          {
            v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, v15);
            v19 = objc_msgSend_objectForKey_(v111, v18, v17);

            if (!v19)
            {
              v19 = objc_opt_new();
              v22 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v21, v16);
              objc_msgSend_setObject_forKey_(v111, v23, v19, v22);
            }

            objc_msgSend_addObject_(v19, v20, v14);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v128, v135, 16);
      }

      while (v11);
    }

    v115 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v24, v25);
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    v29 = objc_msgSend_allKeys(v111, v27, v28);
    v31 = objc_msgSend_initWithArray_(v26, v30, v29);

    objc_msgSend_sortUsingSelector_(v31, v32, sel_compare_);
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v107 = v31;
    v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v33, &v124, v134, 16);
    if (v110)
    {
      v113 = 0;
      v109 = *v125;
      do
      {
        v35 = 0;
        do
        {
          if (*v125 != v109)
          {
            objc_enumerationMutation(v107);
          }

          v112 = v35;
          v36 = objc_msgSend_objectForKey_(v111, v34, *(*(&v124 + 1) + 8 * v35));
          objc_msgSend_removeAllObjects(v115, v37, v38);
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v39 = v36;
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v120, v133, 16);
          if (v41)
          {
            v44 = v41;
            v45 = *v121;
            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v121 != v45)
                {
                  objc_enumerationMutation(v39);
                }

                v47 = *(*(&v120 + 1) + 8 * j);
                if (v6)
                {
                  objc_msgSend_outgoingTexture(v47, v42, v43);
                }

                else
                {
                  objc_msgSend_incomingTexture(v47, v42, v43);
                }
                v48 = ;
                v51 = v48;
                if (v48)
                {
                  v52 = MEMORY[0x277CCABB0];
                  v53 = objc_msgSend_visibleTextures(v48, v49, v50);
                  v56 = objc_msgSend_firstObject(v53, v54, v55);
                  v59 = objc_msgSend_textureType(v56, v57, v58);
                  v61 = objc_msgSend_numberWithInteger_(v52, v60, v59);
                  objc_msgSend_addObject_(v115, v62, v61);
                }
              }

              v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v120, v133, 16);
            }

            while (v44);
          }

          objc_msgSend_sortUsingComparator_(v115, v63, &unk_288574EE8);
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = v39;
          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v64, &v116, v132, 16);
          if (v65)
          {
            v68 = v65;
            v69 = *v117;
            do
            {
              for (k = 0; k != v68; ++k)
              {
                if (*v117 != v69)
                {
                  objc_enumerationMutation(v114);
                }

                v71 = *(*(&v116 + 1) + 8 * k);
                if (v6)
                {
                  objc_msgSend_outgoingTexture(v71, v66, v67);
                }

                else
                {
                  objc_msgSend_incomingTexture(v71, v66, v67);
                }
                v72 = ;
                v73 = MEMORY[0x277CCABB0];
                v76 = objc_msgSend_visibleTextures(v72, v74, v75);
                v79 = objc_msgSend_firstObject(v76, v77, v78);
                v82 = objc_msgSend_textureType(v79, v80, v81);
                v84 = objc_msgSend_numberWithInteger_(v73, v83, v82);
                v86 = objc_msgSend_indexOfObject_(v115, v85, v84);

                if (v86 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v89 = MEMORY[0x277D81150];
                  v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSDMagicMoveTextureZOrderer p_adjustZOrdererMatchesZIndexByTextureType:]");
                  v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v93, v90, v92, 1150, 0, "Couldn't find texture type!");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95);
                }

                if (v6)
                {
                  if ((objc_msgSend_isOutgoingZIndexUnmatched(v71, v87, v88) & 1) == 0)
                  {
                    v98 = objc_msgSend_outgoingZIndex(v71, v96, v97);
                    objc_msgSend_setOutgoingZIndex_(v71, v99, v86 + v113 + v98);
                  }
                }

                else if ((objc_msgSend_isIncomingZIndexUnmatched(v71, v87, v88) & 1) == 0)
                {
                  v102 = objc_msgSend_incomingZIndex(v71, v100, v101);
                  objc_msgSend_setIncomingZIndex_(v71, v103, v86 + v113 + v102);
                }
              }

              v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v66, &v116, v132, 16);
            }

            while (v68);
          }

          v113 = v113 + objc_msgSend_count(v115, v104, v105) - 1;
          v35 = v112 + 1;
        }

        while (v112 + 1 != v110);
        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v34, &v124, v134, 16);
      }

      while (v110);
    }

    v5 = 0;
  }

  while ((v6 & 1) != 0);
}

- (void)p_setupZOrderMatchesWithAnimationMatches:(id)a3
{
  v163 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v151, v162, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v152;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v152 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v151 + 1) + 8 * i);
        v11 = [TSDMagicMoveTextureZOrdererMatch alloc];
        v13 = objc_msgSend_initWithAnimationMatch_(v11, v12, v10);
        objc_msgSend_addObject_(v4, v14, v13);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v151, v162, 16);
    }

    while (v7);
  }

  objc_msgSend_p_adjustZOrdererMatchesZIndexByTextureType_(self, v16, v4);
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v17 = v4;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v147, v161, 16);
  if (v19)
  {
    v22 = v19;
    v23 = 0;
    v24 = 0;
    v25 = *v148;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v148 != v25)
        {
          objc_enumerationMutation(v17);
        }

        v27 = *(*(&v147 + 1) + 8 * j);
        v28 = objc_msgSend_outgoingZIndex(v27, v20, v21);
        if (v24 <= v28)
        {
          v24 = v28;
        }

        v31 = objc_msgSend_incomingZIndex(v27, v29, v30);
        if (v23 <= v31)
        {
          v23 = v31;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v147, v161, 16);
    }

    while (v22);
    v32 = v24 + 1;
    v121 = v23 + 1;
  }

  else
  {
    v121 = 1;
    v32 = 1;
  }

  v114 = objc_opt_new();
  v113 = objc_opt_new();
  v33 = 0;
  do
  {
    v34 = objc_opt_new();
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v35 = v17;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v143, v160, 16);
    if (v37)
    {
      v40 = v37;
      v41 = *v144;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v144 != v41)
          {
            objc_enumerationMutation(v35);
          }

          v43 = *(*(&v143 + 1) + 8 * k);
          if (objc_msgSend_outgoingZIndex(v43, v38, v39) == v33 && objc_msgSend_incomingZIndex(v43, v38, v39) == -1)
          {
            objc_msgSend_addObject_(v34, v38, v43);
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v143, v160, 16);
      }

      while (v40);
    }

    if (objc_msgSend_count(v34, v44, v45) >= 2)
    {
      objc_msgSend_addObject_(v114, v46, v34);
    }

    ++v33;
  }

  while (v33 != v32);
  v47 = 0;
  do
  {
    v48 = objc_opt_new();
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v119 = v35;
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v49, &v139, v159, 16);
    if (v50)
    {
      v53 = v50;
      v54 = *v140;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v140 != v54)
          {
            objc_enumerationMutation(v119);
          }

          v56 = *(*(&v139 + 1) + 8 * m);
          if (objc_msgSend_incomingZIndex(v56, v51, v52) == v47 && objc_msgSend_outgoingZIndex(v56, v51, v52) == -1)
          {
            objc_msgSend_addObject_(v48, v51, v56);
          }
        }

        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v51, &v139, v159, 16);
      }

      while (v53);
    }

    if (objc_msgSend_count(v48, v57, v58) >= 2)
    {
      objc_msgSend_addObject_(v113, v59, v48);
    }

    ++v47;
  }

  while (v47 != v121);
  v60 = 1;
  do
  {
    v61 = v60;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v62 = v119;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v135, v158, 16);
    if (v64)
    {
      v67 = v64;
      v68 = *v136;
      v116 = *v136;
      v117 = v62;
      do
      {
        v69 = 0;
        v118 = v67;
        do
        {
          if (*v136 != v68)
          {
            objc_enumerationMutation(v62);
          }

          v70 = *(*(&v135 + 1) + 8 * v69);
          if (v61)
          {
            v71 = objc_msgSend_outgoingZIndex(v70, v65, v66);
          }

          else
          {
            v71 = objc_msgSend_incomingZIndex(v70, v65, v66);
          }

          if (v71 == -1)
          {
            v120 = v69;
            matched = objc_msgSend_p_bestZIndexForUnassignedMatch_inMatchArray_(self, v65, v70, v62);
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v73 = v62;
            v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v131, v157, 16);
            if (v75)
            {
              v78 = v75;
              v79 = *v132;
              do
              {
                for (n = 0; n != v78; ++n)
                {
                  if (*v132 != v79)
                  {
                    objc_enumerationMutation(v73);
                  }

                  v81 = *(*(&v131 + 1) + 8 * n);
                  if (v61)
                  {
                    if (objc_msgSend_outgoingZIndex(v81, v76, v77) >= matched)
                    {
                      v82 = objc_msgSend_outgoingZIndex(v81, v76, v77);
                      objc_msgSend_setOutgoingZIndex_(v81, v83, v82 + 1);
                    }
                  }

                  else if (objc_msgSend_incomingZIndex(v81, v76, v77) >= matched)
                  {
                    v84 = objc_msgSend_incomingZIndex(v81, v76, v77);
                    objc_msgSend_setIncomingZIndex_(v81, v85, v84 + 1);
                  }
                }

                v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v131, v157, 16);
              }

              while (v78);
            }

            if (v61)
            {
              objc_msgSend_setOutgoingZIndex_(v70, v86, matched);
              v87 = v113;
            }

            else
            {
              objc_msgSend_setIncomingZIndex_(v70, v86, matched);
              v87 = v114;
            }

            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v122 = v87;
            v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v88, &v127, v156, 16);
            if (v89)
            {
              v91 = v89;
              v92 = *v128;
              do
              {
                for (ii = 0; ii != v91; ++ii)
                {
                  if (*v128 != v92)
                  {
                    objc_enumerationMutation(v122);
                  }

                  v94 = *(*(&v127 + 1) + 8 * ii);
                  if (objc_msgSend_containsObject_(v94, v90, v70))
                  {
                    v95 = v70;
                    v125 = 0u;
                    v126 = 0u;
                    v123 = 0u;
                    v124 = 0u;
                    v96 = v94;
                    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v123, v155, 16);
                    if (v98)
                    {
                      v100 = v98;
                      v101 = *v124;
                      do
                      {
                        for (jj = 0; jj != v100; ++jj)
                        {
                          if (*v124 != v101)
                          {
                            objc_enumerationMutation(v96);
                          }

                          v103 = *(*(&v123 + 1) + 8 * jj);
                          if (v61)
                          {
                            objc_msgSend_setOutgoingZIndex_(v103, v99, matched);
                          }

                          else
                          {
                            objc_msgSend_setIncomingZIndex_(v103, v99, matched);
                          }
                        }

                        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v99, &v123, v155, 16);
                      }

                      while (v100);
                    }

                    v70 = v95;
                  }
                }

                v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v90, &v127, v156, 16);
              }

              while (v91);
            }

            v68 = v116;
            v62 = v117;
            v67 = v118;
            v69 = v120;
          }

          ++v69;
        }

        while (v69 != v67);
        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v65, &v135, v158, 16);
      }

      while (v67);
    }

    v60 = 0;
  }

  while ((v61 & 1) != 0);
  zOrderMatches = self->_zOrderMatches;
  self->_zOrderMatches = v62;
  v105 = v62;

  v107 = objc_msgSend_p_newArrayBySortingMatches_withInterpolatedPercent_(self, v106, v105, 0.0);
  outgoingTexturesInZOrder = self->_outgoingTexturesInZOrder;
  self->_outgoingTexturesInZOrder = v107;

  v110 = objc_msgSend_p_newArrayBySortingMatches_withInterpolatedPercent_(self, v109, v105, 1.0);
  incomingTexturesInZOrder = self->_incomingTexturesInZOrder;
  self->_incomingTexturesInZOrder = v110;
}

- (unint64_t)p_zIntersectionsBetweenZOrdererMatches:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_count(v3, v4, v5);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(v3, v7, v10);
      v13 = ++v10;
      if (v10 < v8)
      {
        do
        {
          v14 = objc_msgSend_objectAtIndexedSubscript_(v3, v11, v13);
          v16 = objc_msgSend_intersectsZOrdererMatch_(v12, v15, v14);

          v9 += v16;
          ++v13;
        }

        while (v8 != v13);
      }
    }

    while (v10 != v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)p_debugDescription
{
  v161 = *MEMORY[0x277D85DE8];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v3 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, a2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v153, v160, 16);
  if (v5)
  {
    v8 = v5;
    v9 = 0;
    v10 = *v154;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v12 = v9;
        if (*v154 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v153 + 1) + 8 * i);
        v14 = objc_msgSend_textureType(v13, v6, v7);
        v16 = sub_2766A57EC(v14, v15);
        v19 = objc_msgSend_length(v16, v17, v18);

        v22 = objc_msgSend_textureType(v13, v20, v21);
        v23 = v19 + 5;
        if (v22 != 6)
        {
          v23 = v19;
        }

        if (v12 <= v23)
        {
          v9 = v23;
        }

        else
        {
          v9 = v12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v153, v160, 16);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v25 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v24, @"Texture Z Orders:");
  v27 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v26, 0);
  v30 = objc_msgSend_count(v27, v28, v29);

  if (v30 >= 1)
  {
    v32 = 0;
    v128 = v9;
    v130 = v25;
    do
    {
      objc_msgSend_appendString_(v25, v31, @"\n");
      v34 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v33, 0);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, v32);
      v39 = objc_msgSend_textureType(v36, v37, v38);
      v41 = sub_2766A57EC(v39, v40);

      v43 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v42, 0);
      v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, v32);
      v48 = objc_msgSend_text(v45, v46, v47);

      v129 = v48;
      if (v48)
      {
        v51 = objc_msgSend_length(v48, v49, v50);
        if (v51 >= 3)
        {
          objc_msgSend_substringWithRange_(v48, v52, 0, 3);
        }

        else
        {
          objc_msgSend_substringWithRange_(v48, v52, 0, v51);
        }
        v53 = ;
        v55 = objc_msgSend_stringByAppendingFormat_(v41, v54, @"%@", v53);

        v41 = v55;
      }

      if (objc_msgSend_length(v41, v49, v50) < v9)
      {
        v57 = 0;
        do
        {
          objc_msgSend_appendString_(v130, v56, @" ");
          ++v57;
        }

        while (v57 < v9 - objc_msgSend_length(v41, v58, v59));
      }

      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      obj = self->_zOrderMatches;
      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v149, v159, 16);
      v131 = v41;
      v61 = 0;
      if (v134)
      {
        v133 = *v150;
        do
        {
          v62 = 0;
          do
          {
            if (*v150 != v133)
            {
              objc_enumerationMutation(obj);
            }

            v135 = v62;
            v63 = *(*(&v149 + 1) + 8 * v62);
            v64 = objc_opt_new();
            v67 = objc_msgSend_outgoingTexture(v63, v65, v66);

            if (v67)
            {
              v70 = objc_msgSend_outgoingTexture(v63, v68, v69);
              objc_msgSend_addObject_(v64, v71, v70);
            }

            v72 = objc_msgSend_incomingTexture(v63, v68, v69);

            if (v72)
            {
              v75 = objc_msgSend_incomingTexture(v63, v73, v74);
              objc_msgSend_addObject_(v64, v76, v75);
            }

            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v136 = v64;
            v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v136, v77, &v145, v158, 16);
            if (v139)
            {
              v137 = v63;
              v138 = *v146;
LABEL_36:
              v80 = 0;
              while (1)
              {
                if (*v146 != v138)
                {
                  objc_enumerationMutation(v136);
                }

                v81 = *(*(&v145 + 1) + 8 * v80);
                v141 = 0u;
                v142 = 0u;
                v143 = 0u;
                v144 = 0u;
                v82 = objc_msgSend_visibleTextures(v81, v78, v79);
                v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v141, v157, 16);
                if (v84)
                {
                  v86 = v84;
                  v140 = v61;
                  v87 = *v142;
                  while (2)
                  {
                    for (j = 0; j != v86; ++j)
                    {
                      if (*v142 != v87)
                      {
                        objc_enumerationMutation(v82);
                      }

                      v89 = *(*(&v141 + 1) + 8 * j);
                      v90 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v85, 0);
                      v92 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, v32);

                      if (v89 == v92)
                      {
                        v61 = v137;

                        goto LABEL_49;
                      }
                    }

                    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v85, &v141, v157, 16);
                    if (v86)
                    {
                      continue;
                    }

                    break;
                  }

                  v61 = v140;
                }

LABEL_49:

                if (v61)
                {
                  break;
                }

                if (++v80 == v139)
                {
                  v61 = 0;
                  v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v136, v78, &v145, v158, 16);
                  if (v139)
                  {
                    goto LABEL_36;
                  }

                  break;
                }
              }
            }

            v62 = v135 + 1;
          }

          while (v135 + 1 != v134);
          v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, &v149, v159, 16);
        }

        while (v134);
      }

      v96 = objc_msgSend_outgoingZIndex(v61, v94, v95);
      if (objc_msgSend_isOutgoingZIndexUnmatched(v61, v97, v98))
      {
        v101 = @"*";
      }

      else
      {
        v101 = @" ";
      }

      v102 = objc_msgSend_incomingZIndex(v61, v99, v100);
      v103 = v61;
      if (objc_msgSend_isIncomingZIndexUnmatched(v61, v104, v105))
      {
        v107 = @"*";
      }

      else
      {
        v107 = @" ";
      }

      v25 = v130;
      objc_msgSend_appendFormat_(v130, v106, @"%@ %2d(z:%2d%@->%2d%@):", v131, v32, v96, v101, v102, v107);
      if (objc_msgSend_count(self->_percentTextures, v108, v109) >= 1)
      {
        v111 = 0;
        do
        {
          v112 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v110, 0);
          v114 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v113, v111);
          v116 = objc_msgSend_objectAtIndexedSubscript_(v114, v115, v32);
          v118 = objc_msgSend_indexOfObject_(v112, v117, v116);
          objc_msgSend_appendFormat_(v130, v119, @"  %2d", v118);

          ++v111;
        }

        while (v111 < objc_msgSend_count(self->_percentTextures, v120, v121));
      }

      ++v32;
      v123 = objc_msgSend_objectAtIndexedSubscript_(self->_percentTextures, v122, 0);
      v126 = objc_msgSend_count(v123, v124, v125);

      v9 = v128;
    }

    while (v32 < v126);
  }

  return v25;
}

- (unint64_t)p_bestZIndexForUnassignedMatch:(id)a3 inMatchArray:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_outgoingZIndex(v5, v7, v8) != -1 && objc_msgSend_incomingZIndex(v5, v9, v10) != -1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDMagicMoveTextureZOrderer p_bestZIndexForUnassignedMatch:inMatchArray:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1372, 0, "This match is already assigned!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_outgoingZIndex(v5, v9, v10);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v19 = v6;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v55, v60, 16);
  if (v21)
  {
    v24 = v21;
    v25 = 0;
    v26 = *v56;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = *(*(&v55 + 1) + 8 * i);
        if (v18 == -1)
        {
          v29 = objc_msgSend_outgoingZIndex(v28, v22, v23);
        }

        else
        {
          v29 = objc_msgSend_incomingZIndex(v28, v22, v23);
        }

        if (v25 <= v29)
        {
          v25 = v29;
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v55, v60, 16);
    }

    while (v24);
    v30 = v25 + 1;
  }

  else
  {
    v30 = 1;
  }

  v33 = objc_msgSend_count(v19, v31, v32);
  v36 = objc_msgSend_outgoingTexture(v5, v34, v35);
  v38 = objc_msgSend_firstVisibleTextureForTextureType_(v36, v37, 1);
  v50 = v38 == 0;

  v39 = -1;
  do
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v19;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v51, v59, 16);
    if (v42)
    {
      v44 = v42;
      v45 = 0;
      v46 = *v52;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v52 != v46)
          {
            objc_enumerationMutation(v40);
          }

          v45 += objc_msgSend_intersectsZOrdererMatch_withAttemptedZIndex_(v5, v43, *(*(&v51 + 1) + 8 * j), v30);
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v51, v59, 16);
      }

      while (v44);
    }

    else
    {
      v45 = 0;
    }

    if (v45 < v39)
    {
      v39 = v45;
      v33 = v30;
    }
  }

  while (v30-- > v50);

  return v33;
}

- (id)p_uniqueIntersections
{
  v4 = objc_msgSend_count(self->_zOrderMatches, a2, v2);
  v7 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v6);
  v8 = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766C9E08;
  block[3] = &unk_27A6CCD90;
  block[4] = self;
  v13 = v4;
  v9 = v7;
  v12 = v9;
  dispatch_apply(v4 - 1, 0, block);

  objc_autoreleasePoolPop(v8);

  return v9;
}

- (void)p_calculateTextureArraysFromIntersections
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_p_uniqueIntersections(self, a2, v2);
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_allObjects(v4, v6, v7);
  v10 = objc_msgSend_initWithArray_(v5, v9, v8);

  objc_msgSend_sortUsingSelector_(v10, v11, sel_compare_);
  if (!objc_msgSend_count(v10, v12, v13) || (objc_msgSend_firstObject(v10, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_intValue(v16, v17, v18), v16, v19))
  {
    objc_msgSend_insertObject_atIndex_(v10, v14, &unk_28859C3D0, 0);
  }

  v21 = objc_msgSend_lastObject(v10, v14, v20);
  v24 = objc_msgSend_intValue(v21, v22, v23);

  if (v24 != 1)
  {
    objc_msgSend_addObject_(v10, v25, &unk_28859C3E8);
  }

  v27 = objc_msgSend_count(v10, v25, v26);
  v28 = objc_opt_new();
  v31 = objc_opt_new();
  if (v27)
  {
    v32 = 0;
    v33 = 0.0;
    do
    {
      v36 = 1.0;
      if (v32 < objc_msgSend_count(v10, v29, v30))
      {
        v37 = objc_msgSend_objectAtIndexedSubscript_(v10, v34, v32);
        objc_msgSend_doubleValue(v37, v38, v39);
        v36 = v40;
      }

      if (v36 == 1.0)
      {
        v41 = 1.0;
      }

      else
      {
        v41 = (v33 + v36) * 0.5;
      }

      v42 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v34, v35, v33);
      objc_msgSend_addObject_(v31, v43, v42);

      v45 = objc_msgSend_p_newArrayBySortingMatches_withInterpolatedPercent_(self, v44, self->_zOrderMatches, v41);
      objc_msgSend_addObject_(v28, v46, v45);

      ++v32;
      v33 = v36;
    }

    while (v27 != v32);
  }

  if (objc_msgSend_count(v31, v29, v30) != v27)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSDMagicMoveTextureZOrderer p_calculateTextureArraysFromIntersections]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    v55 = objc_msgSend_count(v31, v53, v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v50, v52, 1467, 0, "percentTexturesTimes.count(%d) != percentTextureCount(%d)!", v55, v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
  }

  if (objc_msgSend_count(v28, v47, v48) != v27)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TSDMagicMoveTextureZOrderer p_calculateTextureArraysFromIntersections]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    v66 = objc_msgSend_count(v28, v64, v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v61, v63, 1468, 0, "percentTextures.count(%d) != percentTextureCount(%d)!", v66, v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
  }

  free(self->_percentTexturesTimes);
  if (v27 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v27;
  }

  self->_percentTexturesTimes = malloc_type_calloc(8uLL, v70, 0x2ABF82C3uLL);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v71 = v31;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v85, v89, 16);
  if (v73)
  {
    v76 = v73;
    v77 = 0;
    v78 = *v86;
    do
    {
      v79 = 0;
      v80 = v77;
      do
      {
        if (*v86 != v78)
        {
          objc_enumerationMutation(v71);
        }

        objc_msgSend_doubleValue(*(*(&v85 + 1) + 8 * v79), v74, v75);
        v77 = v80 + 1;
        self->_percentTexturesTimes[v80] = v81;
        ++v79;
        ++v80;
      }

      while (v76 != v79);
      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v85, v89, 16);
    }

    while (v76);
  }

  percentTextures = self->_percentTextures;
  self->_percentTextures = v28;

  self->_zOrderIntersectionsCount = objc_msgSend_count(v10, v83, v84);
}

- (void)p_addFlattenableAnimationMatches:(id)a3 toArray:(id)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    v71 = self;
    v72 = v7;
    v10 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v73 = v6;
    v11 = v6;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v89, v96, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v90;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v90 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v89 + 1) + 8 * i);
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v20 = objc_msgSend_outgoingTexture(v19, v14, v15);
          v23 = objc_msgSend_visibleTextures(v20, v21, v22);

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v85, v95, 16);
          if (v25)
          {
            v27 = v25;
            v28 = *v86;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v86 != v28)
                {
                  objc_enumerationMutation(v23);
                }

                objc_msgSend_addObject_(v10, v26, *(*(&v85 + 1) + 8 * j));
              }

              v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v85, v95, 16);
            }

            while (v27);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v89, v96, 16);
      }

      while (v16);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v30 = v10;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v81, v94, 16);
    if (v32)
    {
      v33 = v32;
      v34 = *v82;
      v70 = *v82;
      while (2)
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v82 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v81 + 1) + 8 * k);
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v37 = v30;
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v77, v93, 16);
          if (v39)
          {
            v42 = v39;
            v43 = *v78;
LABEL_23:
            v44 = 0;
            while (1)
            {
              if (*v78 != v43)
              {
                objc_enumerationMutation(v37);
              }

              v45 = *(*(&v77 + 1) + 8 * v44);
              if (v36 != v45)
              {
                objc_msgSend_frameOnCanvas(v36, v40, v41);
                v47 = v46;
                v49 = v48;
                v51 = v50;
                v53 = v52;
                objc_msgSend_frameOnCanvas(v45, v54, v55);
                v99.origin.x = v56;
                v99.origin.y = v57;
                v99.size.width = v58;
                v99.size.height = v59;
                v98.origin.x = v47;
                v98.origin.y = v49;
                v98.size.width = v51;
                v98.size.height = v53;
                if (CGRectIntersectsRect(v98, v99))
                {
                  break;
                }
              }

              if (v42 == ++v44)
              {
                v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v77, v93, 16);
                if (v42)
                {
                  goto LABEL_23;
                }

                goto LABEL_30;
              }
            }

            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = sub_2766CA85C;
            v76[3] = &unk_27A6CCDB8;
            v76[4] = v71;
            objc_msgSend_sortUsingComparator_(v37, v61, v76);
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = sub_2766CA9F0;
            v74[3] = &unk_27A6CCDE0;
            v30 = v37;
            v75 = v30;
            v62 = MEMORY[0x277C9C8B0](v74);
            if (((v62)[2](v62, v71->_outgoingTexturesInZOrder) & 1) == 0)
            {

              goto LABEL_37;
            }

            v63 = (v62)[2](v62, v71->_incomingTexturesInZOrder);

            v7 = v72;
            v6 = v73;
            if (!v63)
            {
              goto LABEL_39;
            }

            v66 = MEMORY[0x277CBEA60];
            v30 = objc_msgSend_array(v11, v64, v65);
            v68 = objc_msgSend_arrayWithArray_(v66, v67, v30);
            objc_msgSend_addObject_(v72, v69, v68);

            goto LABEL_38;
          }

LABEL_30:

          v34 = v70;
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v60, &v81, v94, 16);
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:
    v7 = v72;
    v6 = v73;
LABEL_38:
  }

LABEL_39:
}

- (id)p_outgoingTextureMatchesInZOrder
{
  v4 = objc_msgSend_p_textureSetsInZOrderMatches(self, a2, v2);
  v6 = objc_msgSend_p_outgoingTextureMatchesInZOrderWithTextureSets_(self, v5, v4);

  return v6;
}

- (id)p_textureSetsInZOrderMatches
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_count(self->_zOrderMatches, a2, v2);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = self->_zOrderMatches;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v34, v38, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = objc_msgSend_set(MEMORY[0x277CBEB58], v11, v12, v34);
        v20 = objc_msgSend_outgoingTexture(v16, v18, v19);
        v23 = objc_msgSend_visibleTextures(v20, v21, v22);
        objc_msgSend_addObjectsFromArray_(v17, v24, v23);

        v27 = objc_msgSend_incomingTexture(v16, v25, v26);
        v30 = objc_msgSend_visibleTextures(v27, v28, v29);
        objc_msgSend_addObjectsFromArray_(v17, v31, v30);

        objc_msgSend_addObject_(v7, v32, v17);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v34, v38, 16);
    }

    while (v13);
  }

  return v7;
}

- (id)p_outgoingTextureMatchesInZOrderWithTextureSets:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(self->_outgoingTexturesInZOrder, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  if (objc_msgSend_count(self->_outgoingTexturesInZOrder, v11, v12))
  {
    v15 = 0;
    do
    {
      v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);
      objc_msgSend_addObject_(v10, v17, v16);

      ++v15;
    }

    while (v15 < objc_msgSend_count(self->_outgoingTexturesInZOrder, v18, v19));
  }

  v20 = objc_msgSend_count(self->_outgoingTexturesInZOrder, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766CAEAC;
  block[3] = &unk_27A6CCE30;
  block[4] = self;
  v27 = v4;
  v21 = v10;
  v28 = v21;
  v22 = v4;
  dispatch_apply(v20, 0, block);
  v23 = v28;
  v24 = v21;

  return v21;
}

- (id)p_zOrderMatchForTextureRectangle:(id)a3 withTextureSets:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = 0;
    while (1)
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, v11);
      v14 = objc_msgSend_containsObject_(v12, v13, v6);

      if (v14)
      {
        break;
      }

      if (++v11 >= objc_msgSend_count(v7, v15, v16))
      {
        goto LABEL_5;
      }
    }

    v17 = objc_msgSend_objectAtIndexedSubscript_(self->_zOrderMatches, v15, v11);
  }

  else
  {
LABEL_5:
    v17 = 0;
  }

  return v17;
}

- (NSArray)flattenableAnimationMatches
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v4, v5);
  v97 = self;
  v9 = objc_msgSend_p_outgoingTextureMatchesInZOrder(self, v7, v8);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v106, v112, 16);
  v87 = v9;
  if (v11)
  {
    v14 = v11;
    v15 = *v107;
    v90 = *v107;
    obj = v3;
    do
    {
      v16 = 0;
      v95 = v14;
      do
      {
        if (*v107 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v106 + 1) + 8 * v16);
        v18 = objc_msgSend_animationMatch(v17, v12, v13, v87);
        isMatched = objc_msgSend_isMatched(v18, v19, v20);

        if (isMatched)
        {
          objc_msgSend_p_addFlattenableAnimationMatches_toArray_(v97, v22, v6, v3);
          objc_msgSend_removeAllObjects(v6, v24, v25);
          goto LABEL_25;
        }

        if (objc_msgSend_count(v6, v22, v23))
        {
          v28 = objc_msgSend_firstObject(v6, v26, v27);
          v31 = objc_msgSend_animationMatch(v28, v29, v30);
          v36 = objc_msgSend_outgoingTexture(v31, v32, v33);
          if (v36 || (objc_msgSend_animationMatch(v17, v34, v35), v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend_outgoingTexture(v89, v37, v38), (v93 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v39 = objc_msgSend_firstObject(v6, v34, v35);
            v42 = objc_msgSend_animationMatch(v39, v40, v41);
            v45 = objc_msgSend_incomingTexture(v42, v43, v44);
            if (v45)
            {

              if (v36)
              {

                v15 = v90;
                v3 = obj;
                v14 = v95;
                objc_msgSend_p_addFlattenableAnimationMatches_toArray_(v97, v48, v6, obj);
                goto LABEL_23;
              }

              v15 = v90;
              v3 = obj;
            }

            else
            {
              v51 = objc_msgSend_animationMatch(v17, v46, v47);
              v54 = objc_msgSend_incomingTexture(v51, v52, v53);

              if (v36)
              {

                v9 = v87;
                v15 = v90;
                v3 = obj;
                v14 = v95;
                if (!v54)
                {
                  goto LABEL_24;
                }

LABEL_22:
                objc_msgSend_p_addFlattenableAnimationMatches_toArray_(v97, v26, v6, v3);
LABEL_23:
                objc_msgSend_removeAllObjects(v6, v49, v50);
                goto LABEL_24;
              }

              v9 = v87;
              v15 = v90;
              v3 = obj;
              v36 = v54 == 0;
            }
          }

          else
          {
            v93 = 0;
            LOBYTE(v36) = 1;
          }

          v14 = v95;
          if ((v36 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_24:
        objc_msgSend_addObject_(v6, v26, v17);
LABEL_25:
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v106, v112, 16);
    }

    while (v14);
  }

  objc_msgSend_p_addFlattenableAnimationMatches_toArray_(v97, v12, v6, v3, v87);
  v96 = objc_msgSend_array(MEMORY[0x277CBEB18], v55, v56);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obja = v3;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v57, &v102, v111, 16);
  if (v58)
  {
    v61 = v58;
    v94 = *v103;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v103 != v94)
        {
          objc_enumerationMutation(obja);
        }

        v63 = *(*(&v102 + 1) + 8 * i);
        v64 = objc_msgSend_array(MEMORY[0x277CBEB18], v59, v60);
        objc_msgSend_p_addVisibleTexturesFromMatches_toArray_interpolatedPercent_(v97, v65, v63, v64, 0.0);
        v66 = MEMORY[0x277CBEB18];
        v69 = objc_msgSend_count(v63, v67, v68);
        v71 = objc_msgSend_arrayWithCapacity_(v66, v70, v69);
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v72 = v63;
        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v98, v110, 16);
        if (v74)
        {
          v77 = v74;
          v78 = *v99;
          do
          {
            for (j = 0; j != v77; ++j)
            {
              if (*v99 != v78)
              {
                objc_enumerationMutation(v72);
              }

              v80 = objc_msgSend_animationMatch(*(*(&v98 + 1) + 8 * j), v75, v76);
              objc_msgSend_addObject_(v71, v81, v80);
            }

            v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, &v98, v110, 16);
          }

          while (v77);
        }

        v82 = objc_opt_new();
        objc_msgSend_setAnimationMatches_(v82, v83, v71);
        objc_msgSend_setTexturesInZOrder_(v82, v84, v64);
        objc_msgSend_addObject_(v96, v85, v82);
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v59, &v102, v111, 16);
    }

    while (v61);
  }

  return v96;
}

@end