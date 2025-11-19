id sub_275DD33D8(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a7 || !objc_msgSend_p_hasContentForRange_labelOnly_(a7, a6, a8, a9, a11))
  {
    return 0;
  }

  v20 = objc_alloc_init(MEMORY[0x277D803E0]);
  objc_msgSend_setRep_(v20, v21, a7);
  v22 = *(MEMORY[0x277CBF3A0] + 16);
  v65 = *MEMORY[0x277CBF3A0];
  v66 = v22;
  v63 = 0;
  isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a7, v23, a8, a9, a11, 1, a10, 1, a1, a2, a3, a4, v63, &v65);
  if (isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds)
  {
    v26 = isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds;
    objc_msgSend_addRenderable_(v20, v25, isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds);
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSWPShapeRep(KeynoteAdditions) p_textureSetFromRep:range:textureByGlyphStyle:includeListLabel:desiredContentRect:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 736, 0, "nil texture!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  objc_msgSend_setIsMagicMove_(v20, v27, 1);
  objc_msgSend_setShouldTransformUsingTextureCenter_(v20, v35, 1);
  objc_msgSend_setObjectType_(v20, v36, 2);
  objc_msgSend_setTextureAttributes_textureBounds_(a7, v37, v20, v65, v66);
  v40 = objc_msgSend_info(a7, v38, v39);
  objc_msgSend_opacity(v40, v41, v42);
  objc_msgSend_setTextureOpacity_(v20, v44, v45, v43);
  objc_msgSend_setLayerGeometry(v20, v46, v47);
  v50 = objc_msgSend_textStorageForTexture(a7, v48, v49);
  v53 = objc_msgSend_range(v50, v51, v52);
  LOBYTE(v64) = 0;
  v55 = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a7, v54, v53, v54, a11, 1, a10, 1, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v64, 0);
  objc_msgSend_frame(v55, v56, v57);
  objc_msgSend_setBoundingRect_(v20, v58, v59);
  objc_msgSend_teardown(v55, v60, v61);

  return v20;
}

uint64_t sub_275DD3604(void *a1, const char *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unsigned int a8, void *a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned __int8 a13)
{
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if (a5 && objc_msgSend_p_hasContentForRange_labelOnly_(a5, a2, a6, a7, a13))
  {
    HIBYTE(v57) = 1;
    LOBYTE(v57) = a13;
    objc_msgSend_p_getBoundsRect_contentRect_transform_applyReflection_applyShadow_forRange_includeListLabel_isMagicMove_(a5, a2, 0, &v59, 0, 0, 0, a6, a7, v57);
    TSURectWithInverseNormalizedRect();
    v63.origin.x = v23;
    v63.origin.y = v24;
    v63.size.width = v25;
    v63.size.height = v26;
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    v61 = CGRectUnion(v60, v63);
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    height = v61.size.height;
  }

  if (a9 && objc_msgSend_p_hasContentForRange_labelOnly_(a9, a2, a10, a11, a13))
  {
    BYTE1(v56) = 1;
    LOBYTE(v56) = a13;
    objc_msgSend_p_getBoundsRect_contentRect_transform_applyReflection_applyShadow_forRange_includeListLabel_isMagicMove_(a9, v27, 0, &v59, 0, 0, 0, a10, a11, v56);
    TSURectWithInverseNormalizedRect();
    v64.origin.x = v28;
    v64.origin.y = v29;
    v64.size.width = v30;
    v64.size.height = v31;
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    CGRectUnion(v62, v64);
  }

  result = TSURectWithInverseNormalizedRect();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  if (a5 && (result = objc_msgSend_p_hasContentForRange_labelOnly_(a5, v33, a6, a7, a13), result))
  {
    v42 = objc_msgSend_p_textureSetFromRep_range_textureByGlyphStyle_includeListLabel_desiredContentRect_(a1, v33, a5, a6, a7, a8, a13, v35, v37, v39, v41);
    v45 = objc_msgSend_visibleTextures(v42, v43, v44);
    result = objc_msgSend_count(v45, v46, v47);
    if (!result)
    {
      v42 = 0;
    }

    if (!a9)
    {
LABEL_20:
      v55 = 0;
      if (!a3)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v42 = 0;
    if (!a9)
    {
      goto LABEL_20;
    }
  }

  result = objc_msgSend_p_hasContentForRange_labelOnly_(a9, v33, a10, a11, a13);
  if (!result)
  {
    goto LABEL_20;
  }

  v49 = objc_msgSend_p_textureSetFromRep_range_textureByGlyphStyle_includeListLabel_desiredContentRect_(a1, v48, a9, a10, a11, a12, a13, v35, v37, v39, v41);
  v52 = objc_msgSend_visibleTextures(v49, v50, v51);
  result = objc_msgSend_count(v52, v53, v54);
  if (result)
  {
    v55 = v49;
  }

  else
  {
    v55 = 0;
  }

  if (a3)
  {
LABEL_21:
    *a3 = v42;
  }

LABEL_22:
  if (a4)
  {
    *a4 = v55;
  }

  return result;
}

void *sub_275DD38A4(void *a1, const char *a2, void *a3)
{
  v198 = *MEMORY[0x277D85DE8];
  v182 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  obj = a3;
  v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v4, &v193, v197, 16);
  if (v180)
  {
    v179 = *v194;
    do
    {
      v7 = 0;
      do
      {
        if (*v194 != v179)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v193 + 1) + 8 * v7);
        v9 = objc_msgSend_outgoingObject(v8, v5, v6);
        v12 = objc_msgSend_rep(v9, v10, v11);
        v190 = v8;
        v15 = objc_msgSend_incomingObject(v8, v13, v14);
        v18 = objc_msgSend_rep(v15, v16, v17);
        v19 = v18;
        v20 = v18 != 0;
        v181 = v7;
        if (!(v12 | v18))
        {
          v39 = MEMORY[0x277D81150];
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSWPShapeRep(KeynoteAdditions) magicMoveAnimationMatchesFromMatches:description:]");
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 848, 0, "No incoming NOR outgoing rep!");
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
          v46 = 0;
          v20 = 0;
          goto LABEL_19;
        }

        if (v12)
        {
          v21 = objc_msgSend_outgoingObject(v8, v5, v6);
          v24 = objc_msgSend_attributes(v21, v22, v23);
          v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"kMagicMoveTextChunkKey");
          hasListLabel = objc_msgSend_hasListLabel(v26, v27, v28);
          if (v19)
          {
            goto LABEL_9;
          }
        }

        else
        {
          hasListLabel = 0;
          if (v18)
          {
LABEL_9:
            v30 = objc_msgSend_incomingObject(v190, v5, v6);
            v33 = objc_msgSend_attributes(v30, v31, v32);
            v35 = objc_msgSend_objectForKeyedSubscript_(v33, v34, @"kMagicMoveTextChunkKey");
            v38 = objc_msgSend_hasListLabel(v35, v36, v37);
            goto LABEL_13;
          }
        }

        v38 = 0;
LABEL_13:
        v46 = hasListLabel | v38;
        if (v12)
        {
          v47 = objc_msgSend_outgoingObject(v190, v5, v6);
          v50 = objc_msgSend_stringRange(v47, v48, v49);
          if (!objc_msgSend_p_hasContentForRange_labelOnly_(v12, v51, v50, v51, v46 & 1))
          {
            goto LABEL_48;
          }

          if (!v19)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v20 = 0;
          if (!v19)
          {
            goto LABEL_19;
          }
        }

        v52 = objc_msgSend_incomingObject(v190, v5, v6);
        v55 = objc_msgSend_stringRange(v52, v53, v54);
        if (!objc_msgSend_p_hasContentForRange_labelOnly_(v19, v56, v55, v56, v46 & 1))
        {
          goto LABEL_48;
        }

LABEL_19:
        v57 = objc_msgSend_outgoingObject(v190, v5, v6);
        v60 = objc_msgSend_stringRange(v57, v58, v59);
        v62 = v61;
        v64 = objc_msgSend_incomingObject(v190, v61, v63);
        v67 = objc_msgSend_stringRange(v64, v65, v66);
        v68 = v5;
        if (v20)
        {
          v69 = v67;
          v70 = objc_msgSend_textStorageForTexture(v12, v5, v6);
          v73 = objc_msgSend_textStorageForTexture(v19, v71, v72);
          v74 = MEMORY[0x277D80F00];
          v77 = objc_msgSend_textPropertiesNeedingCharacterAnimation(MEMORY[0x277D80F00], v75, v76);
          v78 = v74;
          v79 = v73;
          v81 = objc_msgSend_numberOfDifferencesBetweenStyleProperties_betweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange_maxDifferencesBeforeReturning_(v78, v80, v77, v70, v60, v62, v73, v69, v68, 1);
          v184 = v81 > 0;
          v183 = v81 < 1;
          if (v81 < 1)
          {
            v82 = 1;
          }

          else
          {
            v82 = v62;
          }

          if (v81 >= 1)
          {
            v68 = 1;
          }

          v186 = v68;
          v187 = v82;
          if (v81 >= 1)
          {
            v62 = 1;
          }

          v188 = v62;
          if (v46)
          {
            v83 = v81;
            v192 = 0;
            v84 = v79;
            shouldMatch = objc_msgSend_p_listLabelsAreEqualWithOutgoingStorage_outgoingCharIndex_incomingStorage_incomingCharIndex_shouldMatch_(a1, v5, v70, v60, v79, v69, &v192);
            if (v83 < 1)
            {
              v46 = shouldMatch;
            }

            else
            {
              v46 = 0;
            }

            if ((v46 & 1) == 0)
            {
              v86 = shouldMatch;
              v87 = objc_msgSend_rangeByExtendingRangeToLineBreak_(v70, v5, v60, v62);
              v89 = objc_msgSend_rangeByExtendingRangeToLineBreak_(v84, v88, v69, v186);
              v191 = 0uLL;
              BYTE4(v177) = 1;
              LODWORD(v177) = v184;
              objc_msgSend_p_getOutgoingTextureSet_incomingTextureSet_withOutgoingRep_outgoingChunkRange_outgoingTextureByGlyphStyle_incomingRep_incomingChunkRange_incomingTextureByGlyphStyle_includeListLabels_(a1, v90, &v191 + 8, &v191, v12, v87, 0, v19, v89, 0, v177);
              v91 = v191;
              if (v191 != 0)
              {
                if (v192 == 1)
                {
                  v92 = objc_alloc(MEMORY[0x277D80310]);
                  matched = objc_msgSend_matchType(v190, v93, v94);
                  v97 = objc_msgSend_initWithMatchType_outgoingTexture_incomingTexture_(v92, v96, matched, *(&v191 + 1), v191);
                  v99 = v97;
                  if ((v86 & 1) == 0)
                  {
                    objc_msgSend_setShouldDisableTextMorphing_(v97, v98, 1);
                  }

LABEL_54:
                  objc_msgSend_addObject_(v182, v98, v99);
                }

                else
                {
                  if (*(&v191 + 1))
                  {
                    v169 = objc_alloc(MEMORY[0x277D80310]);
                    v171 = objc_msgSend_initWithMatchType_outgoingTexture_incomingTexture_(v169, v170, 5, *(&v191 + 1), 0);
                    objc_msgSend_addObject_(v182, v172, v171);
                    v91 = v191;
                  }

                  if (v91)
                  {
                    v173 = objc_alloc(MEMORY[0x277D80310]);
                    v99 = objc_msgSend_initWithMatchType_outgoingTexture_incomingTexture_(v173, v174, 5, 0, v191);
                    goto LABEL_54;
                  }
                }
              }
            }
          }

          else
          {
            v46 = 0;
          }

          if (!v187)
          {
            goto LABEL_48;
          }

          goto LABEL_39;
        }

        v188 = v62;
        v184 = 0;
        v183 = 1;
        v186 = v5;
        v187 = 1;
LABEL_39:
        for (i = 0; i != v187; ++i)
        {
          v101 = objc_msgSend_outgoingObject(v190, v5, v6);
          v104 = objc_msgSend_stringRange(v101, v102, v103);
          v107 = objc_msgSend_incomingObject(v190, v105, v106);
          v110 = objc_msgSend_stringRange(v107, v108, v109) + i;
          if (v12 && (objc_msgSend_p_hasContentForRange_labelOnly_(v12, v5, v104 + i, v188, v46 & 1) & 1) != 0 || v19 && objc_msgSend_p_hasContentForRange_labelOnly_(v19, v5, v110, v186, v46 & 1))
          {
            v111 = v12;
            v112 = v46;
            v113 = MEMORY[0x277D80F00];
            v114 = objc_msgSend_textPropertiesAffectingVisualStyleExceptSize(MEMORY[0x277D80F00], v5, v6);
            v117 = objc_msgSend_textStorageForTexture(v111, v115, v116);
            v120 = objc_msgSend_textStorageForTexture(v19, v118, v119);
            shouldDisableTextMorphingBetweenOutgoingRep_outgoingChunkRange_incomingRep_incomingChunkRange = 1;
            v123 = objc_msgSend_numberOfDifferencesBetweenStyleProperties_betweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange_maxDifferencesBeforeReturning_(v113, v121, v114, v117, v104 + i, v188, v120, v110, v186, 1);
            if (!v183)
            {
              shouldDisableTextMorphingBetweenOutgoingRep_outgoingChunkRange_incomingRep_incomingChunkRange = objc_msgSend_p_shouldDisableTextMorphingBetweenOutgoingRep_outgoingChunkRange_incomingRep_incomingChunkRange_(a1, v122, v111, v104 + i, v188, v19, v110, v186);
            }

            v191 = 0uLL;
            v46 = v112;
            BYTE4(v177) = v112 & 1;
            LODWORD(v177) = v184;
            objc_msgSend_p_getOutgoingTextureSet_incomingTextureSet_withOutgoingRep_outgoingChunkRange_outgoingTextureByGlyphStyle_incomingRep_incomingChunkRange_incomingTextureByGlyphStyle_includeListLabels_(a1, v122, &v191 + 8, &v191, v111, v104 + i, v188, v19, v110, v186, v177);
            v126 = objc_msgSend_outgoingObject(v190, v124, v125);
            v129 = objc_msgSend_attributes(v126, v127, v128);
            v131 = objc_msgSend_objectForKeyedSubscript_(v129, v130, @"kMagicMoveTextChunkKey");
            objc_msgSend_opacityFromRenderer(v131, v132, v133);
            v135 = v134;
            v136 = *(&v191 + 1);
            objc_msgSend_textureOpacity(*(&v191 + 1), v137, v138);
            objc_msgSend_setTextureOpacity_(v136, v140, v141, v135 * v139);
            v144 = objc_msgSend_incomingObject(v190, v142, v143);
            v147 = objc_msgSend_attributes(v144, v145, v146);
            v149 = objc_msgSend_objectForKeyedSubscript_(v147, v148, @"kMagicMoveTextChunkKey");
            objc_msgSend_opacityFromRenderer(v149, v150, v151);
            v153 = v152;
            v154 = v191;
            objc_msgSend_textureOpacity(v191, v155, v156);
            objc_msgSend_setTextureOpacity_(v154, v158, v159, v153 * v157);
            v160 = objc_alloc(MEMORY[0x277D80310]);
            v163 = objc_msgSend_matchType(v190, v161, v162);
            v165 = objc_msgSend_initWithMatchType_outgoingTexture_incomingTexture_(v160, v164, v163, *(&v191 + 1), v191);
            objc_msgSend_setIsTextStyleIdenticalExceptSize_(v165, v166, v123 == 0);
            objc_msgSend_setShouldDisableTextMorphing_(v165, v167, shouldDisableTextMorphingBetweenOutgoingRep_outgoingChunkRange_incomingRep_incomingChunkRange);
            objc_msgSend_addObject_(v182, v168, v165);
            v12 = v111;
          }
        }

LABEL_48:
        v7 = v181 + 1;
      }

      while (v181 + 1 != v180);
      v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v193, v197, 16);
      v180 = v175;
    }

    while (v175);
  }

  return v182;
}

BOOL sub_275DD3F64(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v98 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  objc_msgSend_tsu_addNonNilObject_(v11, v12, a3);
  objc_msgSend_tsu_addNonNilObject_(v11, v13, a6);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v93, v97, 16);
  if (v15)
  {
    v18 = v15;
    v19 = 0;
    v20 = *v94;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v94 != v20)
        {
          objc_enumerationMutation(v11);
        }

        v22 = *(*(&v93 + 1) + 8 * i);
        v23 = objc_msgSend_info(v22, v16, v17);
        v26 = objc_msgSend_shadow(v23, v24, v25);
        v29 = v26;
        if (v26)
        {
          if (objc_msgSend_isEnabled(v26, v27, v28))
          {
            objc_msgSend_opacity(v29, v27, v28);
            LODWORD(v29) = v30 > 0.0;
          }

          else
          {
            LODWORD(v29) = 0;
          }
        }

        v31 = objc_msgSend_info(v22, v27, v28);
        if (objc_msgSend_fill(v31, v32, v33) && (v34 = objc_msgSend_info(v22, v16, v17), v37 = objc_msgSend_fill(v34, v35, v36), (objc_msgSend_isClear(v37, v38, v39) & 1) == 0))
        {
          v41 = objc_msgSend_info(v22, v16, v17);
          v44 = objc_msgSend_fill(v41, v42, v43);
          v40 = objc_msgSend_isOpaque(v44, v45, v46) ^ 1;
        }

        else
        {
          v40 = 1;
        }

        v47 = v40 | v19;
        if (v29)
        {
          v19 = v47;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v16, &v93, v97, 16);
    }

    while (v18);
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  v48 = objc_msgSend_info(a3, v16, v17);
  v51 = objc_msgSend_reflection(v48, v49, v50);
  v54 = objc_msgSend_info(a6, v52, v53);
  v59 = objc_msgSend_reflection(v54, v55, v56);
  if (v51)
  {
    objc_msgSend_opacity(v51, v57, v58);
    if (v60 > 0.0)
    {
      if (v59)
      {
        objc_msgSend_opacity(v59, v57, v58);
      }

      return 1;
    }
  }

  if (v59)
  {
    objc_msgSend_opacity(v59, v57, v58);
    v62 = a5;
    if ((v61 > 0.0) | v19 & 1)
    {
      return 1;
    }
  }

  else
  {
    v62 = a5;
    if (v19)
    {
      return 1;
    }
  }

  v64 = objc_msgSend_containedRep(a3, v57, v58);
  shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange = 1;
  v66 = objc_msgSend_fontTraitsForRange_includingLabel_(v64, v65, a4, v62, 1);
  v69 = objc_msgSend_containedRep(a6, v67, v68);
  if (((v66 | objc_msgSend_fontTraitsForRange_includingLabel_(v69, v70, a7, a8, 1)) & 0x2000) == 0)
  {
    v73 = MEMORY[0x277D80F00];
    v74 = objc_msgSend_textStorageForTexture(a3, v71, v72);
    v77 = objc_msgSend_textStorageForTexture(a6, v75, v76);
    shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange = objc_msgSend_shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange_(v73, v78, v74, a4, v62, v77, a7, a8);
    if (!shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange && v62 && a8)
    {
      v81 = objc_msgSend_textStorageForTexture(a3, v79, v80);
      objc_msgSend_attachmentIndexRangeForTextRange_(v81, v82, a4, v62);
      v84 = v83;
      v86 = objc_msgSend_textStorageForTexture(a6, v83, v85);
      objc_msgSend_attachmentIndexRangeForTextRange_(v86, v87, a7, a8);
      return (v84 | v88) != 0;
    }
  }

  return shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange;
}

void *sub_275DD4258(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v215 = *MEMORY[0x277D85DE8];
  v176 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
  v17 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
  v164 = a1;
  v165 = a6;
  v175 = a3;
  v177 = a5;
  v163 = objc_msgSend_p_longestChunkInOutgoingObjects_incomingObjects_textDeliveryType_addOutgoingChunksToArray_addIncomingChunksToArray_textureDescription_(a1, v18, a3, a4, a6, v14, v17, a5);
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v166 = v17;
  v167 = v14;
  v213[0] = v14;
  v213[1] = v17;
  obj = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v213, 2);
  v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v203, v214, 16);
  if (v171)
  {
    v169 = *v204;
    do
    {
      v23 = 0;
      do
      {
        if (*v204 != v169)
        {
          v24 = v23;
          objc_enumerationMutation(obj);
          v23 = v24;
        }

        v173 = v23;
        v178 = *(*(&v203 + 1) + 8 * v23);
        v25 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22);
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v26, &v199, v212, 16);
        if (v29)
        {
          v30 = *v200;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v200 != v30)
              {
                objc_enumerationMutation(v178);
              }

              v32 = *(*(&v199 + 1) + 8 * i);
              v33 = objc_msgSend_rep(v32, v27, v28);
              v36 = objc_msgSend_objectForKey_(a7, v34, v33);
              if (!v36)
              {
                v37 = MEMORY[0x277D81150];
                v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "+[TSWPShapeRep(KeynoteAdditions) magicMoveTextMatchesBetweenOutgoingObjects:andIncomingObjects:textureDescription:textDeliveryType:repToOpacityTextRangeDictMap:]");
                v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 1122, 0, "invalid nil value for '%{public}s'", "opacityRangeDict");
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
              }

              v195 = 0;
              v196 = &v195;
              v197 = 0x2020000000;
              v198 = 0x3FF0000000000000;
              v194[0] = MEMORY[0x277D85DD0];
              v194[1] = 3221225472;
              v194[2] = sub_275DD4A8C;
              v194[3] = &unk_27A698F00;
              v194[4] = v32;
              v194[5] = &v195;
              objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v36, v35, v194);
              objc_msgSend_setOpacityFromRenderer_(v32, v44, v45, v196[3]);
              if (v196[3] == 0.0)
              {
                objc_msgSend_setIsVisible_(v32, v46, 0);
                objc_msgSend_addObject_(v25, v47, v32);
              }

              _Block_object_dispose(&v195, 8);
            }

            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v27, &v199, v212, 16);
          }

          while (v29);
        }

        objc_msgSend_removeObjectsInArray_(v178, v27, v25);
        v23 = v173 + 1;
      }

      while (v173 + 1 != v171);
      v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v203, v214, 16);
    }

    while (v171);
  }

  v48 = v163;
  if (v163)
  {
    do
    {
      v49 = v48;
      v50 = objc_msgSend_p_potentialMatchesWithChunkLength_outgoingTextChunks_incomingTextChunks_textureDescription_textDeliveryType_(v164, v21, v48, v167, v166, v177, v165);
      if (objc_msgSend_count(v50, v51, v52))
      {
        v53 = objc_autoreleasePoolPush();
        v56 = objc_msgSend_matchingEngine(MEMORY[0x277D80328], v54, v55);
        objc_msgSend_addMatches_(v56, v57, v50);
        matched = objc_msgSend_matchResults(v56, v58, v59);
        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(matched, v61, &v190, v211, 16);
        if (v64)
        {
          v65 = *v191;
          do
          {
            for (j = 0; j != v64; ++j)
            {
              if (*v191 != v65)
              {
                objc_enumerationMutation(matched);
              }

              v67 = *(*(&v190 + 1) + 8 * j);
              v68 = objc_msgSend_outgoingObject(v67, v62, v63);
              v71 = objc_msgSend_attributes(v68, v69, v70);
              v73 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"kMagicMoveTextChunkKey");
              v76 = objc_msgSend_unhandledIndexSet(v73, v74, v75);
              v79 = objc_msgSend_incomingObject(v67, v77, v78);
              v82 = objc_msgSend_attributes(v79, v80, v81);
              v84 = objc_msgSend_objectForKeyedSubscript_(v82, v83, @"kMagicMoveTextChunkKey");
              v87 = objc_msgSend_unhandledIndexSet(v84, v85, v86);
              v90 = objc_msgSend_outgoingObject(v67, v88, v89);
              v93 = objc_msgSend_stringRange(v90, v91, v92);
              objc_msgSend_removeIndexesInRange_(v76, v94, v93, v94);
              v97 = objc_msgSend_incomingObject(v67, v95, v96);
              v100 = objc_msgSend_stringRange(v97, v98, v99);
              objc_msgSend_removeIndexesInRange_(v87, v101, v100, v101);
            }

            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(matched, v62, &v190, v211, 16);
          }

          while (v64);
        }

        objc_msgSend_addObjectsFromArray_(v176, v62, matched);
        objc_autoreleasePoolPop(v53);
      }

      v48 = v49 - 1;
    }

    while (v49 != 1);
  }

  v170 = objc_msgSend_arrayByAddingObjectsFromArray_(v167, v21, v166);
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v102, &v186, v210, 16);
  if (v174)
  {
    v172 = *v187;
    do
    {
      for (k = 0; k != v174; k = k + 1)
      {
        if (*v187 != v172)
        {
          objc_enumerationMutation(v170);
        }

        v181 = *(*(&v186 + 1) + 8 * k);
        if (objc_msgSend_isVisible(v181, v103, v104))
        {
          v105 = objc_msgSend_rep(v181, v103, v104);
          v108 = objc_msgSend_unhandledIndexSet(v181, v106, v107);
          v111 = objc_msgSend_textStorageForTexture(v105, v109, v110);
          v114 = objc_msgSend_string(v111, v112, v113);
          v117 = objc_msgSend_array(MEMORY[0x277CBEB18], v115, v116);
          Index = objc_msgSend_firstIndex(v108, v118, v119);
          v122 = Index;
          if (Index != 0x7FFFFFFFFFFFFFFFLL)
          {
            v123 = Index;
            do
            {
              v124 = v123 + 1;
              if ((objc_msgSend_containsIndex_(v108, v121, v123 + 1) & 1) == 0)
              {
                v125 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v121, v122, v124 - v122);
                objc_msgSend_addObject_(v117, v126, v125);
                v124 = objc_msgSend_indexGreaterThanIndex_(v108, v127, v123);
                v122 = v124;
              }

              v123 = v124;
            }

            while (v122 != 0x7FFFFFFFFFFFFFFFLL);
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v121, &v182, v209, 16);
          if (v128)
          {
            v129 = *v183;
            do
            {
              for (m = 0; m != v128; ++m)
              {
                if (*v183 != v129)
                {
                  objc_enumerationMutation(v117);
                }

                v131 = objc_msgSend_rangeValue(*(*(&v182 + 1) + 8 * m), v103, v104);
                v133 = v132;
                if (objc_msgSend_p_hasContentForRange_labelOnly_(v105, v132, v131, v132, 0))
                {
                  v134 = objc_msgSend_containedRep(v105, v103, v104);
                  objc_msgSend_glyphRectForRange_includingLabel_(v134, v135, v131, v133, 1);
                  v137 = objc_msgSend_substringWithRange_(v114, v136, v131, v133);
                  v138 = MEMORY[0x277D80320];
                  TSUCenterOfRect();
                  v140 = objc_msgSend_matchObjectWithTextRep_position_stringValue_stringRange_(v138, v139, v105, v137, v131, v133);
                  v141 = MEMORY[0x277CBEB38];
                  v207 = @"kMagicMoveTextChunkKey";
                  v208 = v181;
                  v143 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v142, &v208, &v207, 1);
                  v145 = objc_msgSend_dictionaryWithDictionary_(v141, v144, v143);
                  objc_msgSend_setAttributes_(v140, v146, v145);
                  v148 = objc_msgSend_containsObject_(v175, v147, v105);
                  if (v148)
                  {
                    v150 = v140;
                  }

                  else
                  {
                    v150 = 0;
                  }

                  if (v148)
                  {
                    v151 = objc_msgSend_matchWithOutgoingObject_incomingObject_matchType_attributeMatchPercent_textureDescription_(MEMORY[0x277D80318], v149, v150, 0, 5, v177, 0.0);
                  }

                  else
                  {
                    v151 = objc_msgSend_matchWithOutgoingObject_incomingObject_matchType_attributeMatchPercent_textureDescription_(MEMORY[0x277D80318], v149, v150, v140, 5, v177, 0.0);
                  }

                  objc_msgSend_addObject_(v176, v152, v151);
                  v155 = objc_msgSend_attributes(v140, v153, v154);
                  v157 = objc_msgSend_objectForKeyedSubscript_(v155, v156, @"kMagicMoveTextChunkKey");
                  v160 = objc_msgSend_unhandledIndexSet(v157, v158, v159);
                  objc_msgSend_removeIndexesInRange_(v160, v161, v131, v133);
                }
              }

              v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v103, &v182, v209, 16);
            }

            while (v128);
          }
        }
      }

      v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v103, &v186, v210, 16);
    }

    while (v174);
  }

  return v176;
}

NSUInteger sub_275DD4A8C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = objc_msgSend_rangeValue(a2, a2, a3);
  v9 = v8;
  v17.location = objc_msgSend_range(*(a1 + 32), v8, v10);
  v17.length = v11;
  v16.location = v7;
  v16.length = v9;
  v14 = NSIntersectionRange(v16, v17);
  result = v14.location;
  if (v14.length)
  {
    result = objc_msgSend_doubleValue(a3, v14.length, v13);
    *(*(*(a1 + 40) + 8) + 24) = v15;
    *a4 = 1;
  }

  return result;
}

double sub_275DD4B10(void *a1, const char *a2, void *a3, void *a4, void *a5)
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1257, 0, "outgoingObject is not TSWPShapeRep!");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    if (!a4)
    {
      return 0.0;
    }
  }

  else if (!a4)
  {
    v112 = MEMORY[0x277D81150];
    v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]");
    v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v116, v113, v115, 1259, 0, "Both objects are NULL!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118);
    return 0.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1258, 0, "incomingObject is not TSWPShapeRep!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26 = 0.0;
  if (a3)
  {
    if (objc_msgSend_shouldDisableMatchesOnText(a5, v17, v18))
    {
      goto LABEL_11;
    }

    v49 = objc_msgSend_textStorageForTexture(a3, v27, v28);
    v52 = objc_msgSend_stringWithAttachmentCharacterRemoved(v49, v50, v51);
    v55 = objc_msgSend_textStorageForTexture(a4, v53, v54);
    v58 = objc_msgSend_stringWithAttachmentCharacterRemoved(v55, v56, v57);
    if ((objc_msgSend_isEqualToString_(v52, v59, v58) & 1) == 0)
    {
      v119 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v60, v61);
      v121 = objc_msgSend_stringByTrimmingCharactersInSet_(v52, v120, v119);
      if (objc_msgSend_length(v121, v122, v123))
      {
        return v26;
      }

      v126 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v124, v125);
      v128 = objc_msgSend_stringByTrimmingCharactersInSet_(v58, v127, v126);
      if (objc_msgSend_length(v128, v129, v130))
      {
        return v26;
      }
    }

    v62 = objc_msgSend_layout(a3, v60, v61);
    v65 = objc_msgSend_containedLayout(v62, v63, v64);
    v68 = objc_msgSend_columns(v65, v66, v67);
    v71 = objc_msgSend_layout(a4, v69, v70);
    v74 = objc_msgSend_containedLayout(v71, v72, v73);
    v77 = objc_msgSend_columns(v74, v75, v76);
    v80 = objc_msgSend_count(v68, v78, v79);
    if (v80 != objc_msgSend_count(v77, v81, v82))
    {
      return v26;
    }

    if (!objc_msgSend_count(v68, v83, v84))
    {
LABEL_11:
      v29 = objc_msgSend_layout(a3, v27, v28);
      v32 = objc_msgSend_info(v29, v30, v31);
      v35 = objc_msgSend_layout(a4, v33, v34);
      v38 = objc_msgSend_info(v35, v36, v37);
      v41 = objc_msgSend_shapeStyle(v32, v39, v40);
      v44 = objc_msgSend_shapeStyle(v38, v42, v43);
      v46 = objc_msgSend_mixingTypeWithObject_context_(v41, v45, v44, a5);
      v26 = 0.0;
      if (v46 <= 2)
      {
        if (v46)
        {
          if (v46 == 2)
          {
            v26 = 0.125;
          }
        }

        else
        {
          v131 = MEMORY[0x277D81150];
          v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]");
          v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v135, v132, v134, 1340, 0, "Undefined mixing type!");
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v137);
        }
      }

      else
      {
        switch(v46)
        {
          case 3:
            v26 = 0.25;
            break;
          case 4:
            v26 = 0.5;
            break;
          case 5:
            v26 = 1.0;
            break;
        }
      }

      if (!objc_msgSend_isShapeInvisible(a3, v47, v48) || (objc_msgSend_isShapeInvisible(a4, v138, v139) & 1) == 0)
      {
        v143.receiver = a1;
        v143.super_class = &OBJC_METACLASS___TSWPShapeRep_0;
        objc_msgSendSuper2(&v143, sel_magicMoveAttributeMatchPercentBetweenOutgoingObject_incomingObject_mixingTypeContext_, a3, a4, a5);
        TSUMix();
        return v140;
      }
    }

    else
    {
      v85 = 0;
      v142 = a1;
      while (1)
      {
        v86 = objc_msgSend_objectAtIndexedSubscript_(v68, v27, v85);
        v89 = objc_msgSend_lineCount(v86, v87, v88);
        v91 = objc_msgSend_objectAtIndexedSubscript_(v77, v90, v85);
        if (v89 != objc_msgSend_lineCount(v91, v92, v93))
        {
          break;
        }

        if (v89)
        {
          v96 = 0;
          do
          {
            v97 = objc_msgSend_objectAtIndexedSubscript_(v68, v94, v85);
            v99 = objc_msgSend_rangeOfLineFragmentAtIndex_(v97, v98, v96);
            v101 = v100;
            v102 = objc_msgSend_objectAtIndexedSubscript_(v77, v100, v85);
            if (v99 != objc_msgSend_rangeOfLineFragmentAtIndex_(v102, v103, v96))
            {
              return v26;
            }

            if (v101 != v104)
            {
              return v26;
            }

            v106 = objc_msgSend_textStorageForTexture(a3, v104, v105);
            objc_msgSend_dropCapStyleAtCharIndex_(v106, v107, v99);
            v110 = objc_msgSend_textStorageForTexture(a4, v108, v109);
            objc_msgSend_dropCapStyleAtCharIndex_(v110, v111, v99);
            if (TSDMixingTypeWithObjects() == 1)
            {
              return v26;
            }
          }

          while (v89 != ++v96);
        }

        ++v85;
        a1 = v142;
        if (v85 >= objc_msgSend_count(v68, v94, v95))
        {
          goto LABEL_11;
        }
      }
    }
  }

  return v26;
}

uint64_t sub_275DD4FB8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_layout(a1, a2, a3);
  v7 = objc_msgSend_stroke(v4, v5, v6);
  v10 = objc_msgSend_shapeLayout(a1, v8, v9);
  v15 = objc_msgSend_fill(v10, v11, v12);
  if (v7 && (objc_msgSend_shouldRender(v7, v13, v14) & 1) != 0)
  {
    return 0;
  }

  if (!v15)
  {
    return 1;
  }

  return objc_msgSend_isClear(v15, v13, v14);
}

id sub_275DD5034(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  v9 = objc_msgSend_textStorageForTexture(a1, v7, v8);
  v12 = objc_msgSend_paragraphCount(v9, v10, v11);
  v15 = objc_msgSend_range(v9, v13, v14);
  if (v12)
  {
    v18 = v15;
    v19 = length;
    v20 = 0;
    v21 = 0;
    v45 = a3;
    v22 = 1;
    v44 = v9;
    while ((v22 & 1) == 0)
    {
      if (v12 != 1)
      {
        v53.location = objc_msgSend_textRangeForParagraphAtIndex_(v9, length, v21);
        v53.length = v24;
        v52.location = v18;
        v52.length = v19;
        v25 = NSUnionRange(v52, v53);
        length = v25.length;
        location = v25.location;
LABEL_8:
        v18 = location;
        v19 = length;
      }

      if (v18 == 0x7FFFFFFFFFFFFFFFLL || v21 != v12 - 1 && objc_msgSend_characterAtIndex_(v9, length, v19 + v18 - 1) == 11 || a3 == 2 && !a4 && v21 + 1 < v12 && objc_msgSend_paragraphLevelAtParIndex_(v9, length, v21 + 1))
      {
        v22 = 0;
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, length, &v46, v50, 16);
        if (v26)
        {
          v29 = v26;
          v30 = *v47;
LABEL_19:
          v31 = 0;
          while (1)
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(v6);
            }

            v32 = *(*(&v46 + 1) + 8 * v31);
            if (objc_msgSend_stageIndex(v32, v27, v28) == v20)
            {
              break;
            }

            if (v29 == ++v31)
            {
              v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v27, &v46, v50, 16);
              if (v29)
              {
                goto LABEL_19;
              }

              goto LABEL_27;
            }
          }

          if (v32)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        v32 = objc_opt_new();
        objc_msgSend_setStageIndex_(v32, v33, v20);
        objc_msgSend_addObject_(v6, v34, v32);

LABEL_28:
        v35 = objc_msgSend_storageRanges(v32, v27, v28);
        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = MEMORY[0x277CBEBF8];
        }

        v38 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v36, v18, v19);
        v40 = objc_msgSend_arrayByAddingObject_(v37, v39, v38);
        objc_msgSend_setStorageRanges_(v32, v41, v40);
        a3 = v45;
        if (v45)
        {
          v9 = v44;
          if (v45 != 2 || !a4 || (v17 = v21 + 1, v21 + 1 >= v12) || !objc_msgSend_paragraphLevelAtParIndex_(v44, length, v17))
          {
            ++v20;
          }

          v22 = 1;
        }

        else
        {
          v22 = 1;
          v9 = v44;
        }
      }

      if (++v21 == v12)
      {
        return v6;
      }
    }

    location = objc_msgSend_range(v9, length, v17);
    if (v12 != 1)
    {
      location = objc_msgSend_textRangeForParagraphAtIndex_(v9, length, v21);
    }

    goto LABEL_8;
  }

  return v6;
}

uint64_t sub_275DD5318(uint64_t a1, const char *a2, NSUInteger a3, NSUInteger a4, uint64_t a5, void *a6)
{
  v48 = a3 + a4;
  v63 = *MEMORY[0x277D85DE8];
  for (i = 1; ; --i)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, a2, &v57, v62, 16);
    if (v51)
    {
      break;
    }

    if (!i)
    {
      result = -1;
      goto LABEL_31;
    }

LABEL_27:
    ;
  }

  v45 = i;
  v9 = i + a3;
  v49 = -1;
  v50 = *v58;
  do
  {
    for (j = 0; j != v51; ++j)
    {
      if (*v58 != v50)
      {
        objc_enumerationMutation(a6);
      }

      v11 = *(*(&v57 + 1) + 8 * j);
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v12 = objc_msgSend_storageRanges(v11, a2, v8);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v53, v61, 16);
      if (v14)
      {
        v15 = v14;
        v52 = v11;
        v16 = *v54;
        while (2)
        {
          for (k = 0; k != v15; ++k)
          {
            if (*v54 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = objc_msgSend_rangeValue(*(*(&v53 + 1) + 8 * k), a2, v8);
            v19 = &a2[v18];
            if (v18 <= a3 && v19 >= v9)
            {
              v21 = v18;
              v22 = a2;
              v49 = objc_msgSend_stageIndex(v52, a2, v8);
              if (v19 < v48)
              {
                v23 = MEMORY[0x277D81150];
                v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPShapeRep(KeynoteAdditions) stageIndexForStorageRange:forTextureDescription:stageChunks:]");
                v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
                v64.location = v21;
                v64.length = v22;
                v27 = NSStringFromRange(v64);
                v30 = objc_msgSend_stageIndex(v52, v28, v29);
                v65.location = a3;
                v65.length = a4;
                v31 = NSStringFromRange(v65);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v32, v24, v26, 1466, 0, "Range %@ at stage %d does not contain input range %@!", v27, v30, v31);
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
              }

              goto LABEL_21;
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, a2, &v53, v61, 16);
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
      ;
    }

    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, a2, &v57, v62, 16);
  }

  while (v51);
  result = v49;
  i = v45;
  if (v45 && v49 == -1)
  {
    goto LABEL_27;
  }

  if ((v49 & 0x8000000000000000) == 0)
  {
    return result;
  }

LABEL_31:
  v36 = MEMORY[0x277D81150];
  v37 = result;
  v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPShapeRep(KeynoteAdditions) stageIndexForStorageRange:forTextureDescription:stageChunks:]");
  v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
  v66.location = a3;
  v66.length = a4;
  v41 = NSStringFromRange(v66);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v38, v40, 1473, 0, "Didn't find range %@ in stageStorageRanges!", v41);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
  return v37;
}

id sub_275DD5630(void *a1, const char *a2, void *a3)
{
  v248 = *MEMORY[0x277D85DE8];
  isMagicMove = objc_msgSend_isMagicMove(a3, a2, a3);
  v7 = objc_msgSend_copy(a3, v5, v6);
  if ((objc_msgSend_shouldSeparateText(v7, v8, v9) & 1) == 0)
  {
    objc_msgSend_setShouldNotAddContainedReps_(v7, v10, 0);
  }

  shouldNotAddText = objc_msgSend_shouldNotAddText(v7, v10, v11);
  if (shouldNotAddText)
  {
    objc_msgSend_setShouldNotAddContainedReps_(v7, v12, 1);
  }

  v232 = objc_msgSend_textStorageForTexture(a1, v12, v13);
  v17 = objc_msgSend_range(v232, v15, v16);
  v20 = v17;
  v21 = v18;
  if ((shouldNotAddText & 1) != 0 || !(v17 | v18))
  {
    v22 = 1;
    goto LABEL_8;
  }

  if (!objc_msgSend_deliveryStyle(v7, v18, v19) && !objc_msgSend_byGlyphStyle(v7, v18, v47) || isMagicMove && (objc_msgSend_shouldSeparateText(v7, v18, v47) & 1) == 0)
  {
    v22 = 0;
LABEL_8:
    v23 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(v232, v18, 105, v20, 0);
    v25 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(v232, v24, 94, v20, 0);
    if (objc_msgSend_isEqualToNumber_(v23, v26, &unk_2884F3A38))
    {
      if (v25)
      {
        objc_msgSend_alphaComponent(v25, v27, v28);
        LOBYTE(v25) = v29 != 0.0;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    v245.receiver = a1;
    v245.super_class = TSWPShapeRep_0;
    if (objc_msgSendSuper2(&v245, sel_isInvisible))
    {
      if ((v25 & 1) == 0)
      {
        objc_msgSend_opacity(a1, v30, v31);
        if (v32 != 0.0)
        {
          if (v22)
          {
            v33 = 0;
          }

          else
          {
            v33 = objc_alloc_init(MEMORY[0x277D803E0]);
            objc_msgSend_setRep_(v33, v184, a1);
            v187 = objc_msgSend_info(a1, v185, v186);
            objc_msgSend_opacity(v187, v188, v189);
            objc_msgSend_setTextureOpacity_(v33, v191, v192, v190);
            v195 = objc_msgSend_info(a1, v193, v194);
            v198 = objc_msgSend_geometry(v195, v196, v197);
            objc_msgSend_angle(v198, v199, v200);
            objc_msgSend_setTextureAngle_(v33, v202, v203, v201 * 0.0174532925);
            objc_msgSend_setShouldTransformUsingTextureCenter_(v33, v204, 1);
            objc_msgSend_setIsMagicMove_(v33, v205, isMagicMove);
            objc_msgSend_setObjectType_(v33, v206, 2);
            v207 = *MEMORY[0x277CBF398];
            v208 = *(MEMORY[0x277CBF398] + 8);
            v209 = *(MEMORY[0x277CBF398] + 16);
            v210 = *(MEMORY[0x277CBF398] + 24);
            v213 = objc_msgSend_byGlyphStyle(v7, v211, v212);
            isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a1, v214, v20, v21, 1, isMagicMove, v213, 1, v207, v208, v209, v210, 0, 0);
            if (isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds)
            {
              v218 = isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds;
              objc_msgSend_addRenderable_(v33, v216, isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds);
            }

            if ((objc_msgSend_shouldNotAddContainedReps(v7, v216, v217) & 1) == 0)
            {
              objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(a1, v30, v33, v7, 0);
            }
          }

          goto LABEL_91;
        }
      }
    }

    if (((v22 | objc_msgSend_shouldSeparateText(v7, v30, v31) & isMagicMove ^ 1) & 1) == 0)
    {
      objc_msgSend_setShouldNotAddContainedReps_(v7, v34, 1);
    }

    v244.receiver = a1;
    v244.super_class = TSWPShapeRep_0;
    v33 = objc_msgSendSuper2(&v244, sel_textureForDescription_, v7);
    objc_msgSend_setIsMagicMove_(v33, v35, isMagicMove);
    if (((shouldNotAddText | v22 | objc_msgSend_shouldSeparateText(v7, v36, v37) & isMagicMove ^ 1) & 1) == 0)
    {
      v39 = *MEMORY[0x277CBF398];
      v40 = *(MEMORY[0x277CBF398] + 8);
      v41 = *(MEMORY[0x277CBF398] + 16);
      v42 = *(MEMORY[0x277CBF398] + 24);
      v43 = objc_msgSend_byGlyphStyle(v7, v30, v38);
      v45 = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a1, v44, v20, v21, 0, 1, v43, 1, v39, v40, v41, v42, 0, 0);
      if (v45)
      {
        v46 = v45;
        objc_msgSend_addRenderable_forStage_(v33, v30, v45, 0);
LABEL_86:

        goto LABEL_91;
      }
    }

    goto LABEL_91;
  }

  v48 = objc_msgSend_paragraphCount(v232, v18, v47);
  v243.receiver = a1;
  v243.super_class = TSWPShapeRep_0;
  v51 = objc_msgSendSuper2(&v243, sel_isInvisible);
  if ((v51 & 1) != 0 || (shouldNotAddContainedReps = objc_msgSend_shouldNotAddContainedReps(v7, v49, v50), objc_msgSend_setShouldNotAddContainedReps_(v7, v53, 1), v242.receiver = a1, v242.super_class = TSWPShapeRep_0, v54 = objc_msgSendSuper2(&v242, sel_textureForDescription_, v7), objc_msgSend_setShouldNotAddContainedReps_(v7, v55, shouldNotAddContainedReps), !v54))
  {
    v54 = objc_alloc_init(MEMORY[0x277D803E0]);
    objc_msgSend_setRep_(v54, v58, a1);
    v61 = objc_msgSend_info(a1, v59, v60);
    objc_msgSend_opacity(v61, v62, v63);
    objc_msgSend_setTextureOpacity_(v54, v65, v66, v64);
    v69 = objc_msgSend_info(a1, v67, v68);
    v72 = objc_msgSend_geometry(v69, v70, v71);
    objc_msgSend_angle(v72, v73, v74);
    objc_msgSend_setTextureAngle_(v54, v76, v77, v75 * 0.0174532925);
    objc_msgSend_setObjectType_(v54, v78, 2);
    if (v51)
    {
      objc_msgSend_setShouldTransformUsingTextureCenter_(v54, v56, 1);
    }
  }

  v79 = objc_msgSend_shapeInfo(a1, v56, v57);
  v82 = objc_msgSend_shadow(v79, v80, v81);
  if (v82)
  {
    v85 = v82;
    if (objc_msgSend_isEnabled(v82, v83, v84))
    {
      if ((objc_msgSend_isContactShadow(v85, v83, v84) & 1) != 0 || objc_msgSend_isCurvedShadow(v85, v83, v84))
      {
        v86 = objc_msgSend_range(v232, v83, v84);
        v88 = v87;
        v89 = *MEMORY[0x277CBF398];
        v90 = *(MEMORY[0x277CBF398] + 8);
        v91 = *(MEMORY[0x277CBF398] + 16);
        v92 = *(MEMORY[0x277CBF398] + 24);
        v94 = objc_msgSend_byGlyphStyle(v7, v87, v93);
        v96 = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a1, v95, v86, v88, 1, isMagicMove, v94, 1, v89, v90, v91, v92, 1, 0);
        if (v96)
        {
          v97 = v96;
          objc_msgSend_addRenderable_forStage_(v54, v83, v96, -2);
        }
      }
    }
  }

  v231 = objc_msgSend_byGlyphStyle(v7, v83, v84);
  v100 = objc_msgSend_deliveryStyle(v7, v98, v99);
  v103 = objc_msgSend_byGlyphStyle(v7, v101, v102);
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = objc_msgSend_stageChunksForDeliveryStyle_byGlyphStyle_(a1, v104, v100, v103);
  v106 = v232;
  v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v105, &v238, v247, 16);
  if (v225)
  {
    v224 = *v239;
    v227 = v48 - 1;
    v109 = MEMORY[0x277CBF398];
    do
    {
      v110 = 0;
      do
      {
        if (*v239 != v224)
        {
          objc_enumerationMutation(obj);
        }

        v226 = v110;
        v111 = *(*(&v238 + 1) + 8 * v110);
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v228 = objc_msgSend_storageRanges(v111, v107, v108);
        v230 = objc_msgSend_countByEnumeratingWithState_objects_count_(v228, v112, &v234, v246, 16);
        if (v230)
        {
          v229 = *v235;
          do
          {
            v113 = 0;
            do
            {
              if (*v235 != v229)
              {
                objc_enumerationMutation(v228);
              }

              v114 = objc_msgSend_rangeValue(*(*(&v234 + 1) + 8 * v113), v107, v108);
              v116 = v115;
              v117 = objc_msgSend_paragraphIndexAtCharIndex_(v106, v115, v114);
              if (!v116)
              {
                goto LABEL_52;
              }

              v118 = objc_msgSend_characterAtIndex_(v106, v107, v116 + v114 - 1);
              v119 = IsParagraphBreakingCharacter();
              if (v118 == 8232)
              {
                v120 = 1;
              }

              else
              {
                v120 = v119;
              }

              v116 -= v120;
              if (!v231)
              {
                v106 = v232;
                if (v116)
                {
                  goto LABEL_56;
                }

LABEL_52:
                if (v117 != v227)
                {
                  goto LABEL_56;
                }

                v116 = 0;
                if (!objc_msgSend_paragraphHasListLabelAtCharIndex_(v106, v107, v114))
                {
                  goto LABEL_56;
                }

                goto LABEL_54;
              }

              v106 = v232;
              if (!v116)
              {
                goto LABEL_52;
              }

LABEL_54:
              v121 = *v109;
              v122 = v109[1];
              v123 = v109[2];
              v124 = v109[3];
              v125 = objc_msgSend_byGlyphStyle(v7, v107, v108);
              LOBYTE(v222) = 0;
              v127 = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a1, v126, v114, 0, 1, isMagicMove, v125, 0, v121, v122, v123, v124, v222, 0);
              if (v127)
              {
                v128 = v127;
                v129 = objc_msgSend_stageIndex(v111, v107, v108);
                objc_msgSend_addRenderable_forStage_(v54, v130, v128, v129);
              }

LABEL_56:
              if (v231)
              {
                v131 = v116 + v114;
                while (1)
                {
                  if (v114 >= v131)
                  {
                    goto LABEL_75;
                  }

                  v132 = objc_msgSend_byGlyphStyle(v7, v107, v108);
                  if (v132 == 3)
                  {
                    v137 = objc_msgSend_rangeByExtendingRangeToLineBreak_(v232, v133, v114, 0);
                  }

                  else
                  {
                    if (v132 != 2)
                    {
                      if (v132 == 1)
                      {
                        v135 = objc_msgSend_containedRep(a1, v133, v134);
                        v116 = objc_msgSend_charCountOfGlyphStartingAtCharIndex_(v135, v136, v114);
                        if (!v116)
                        {
                          goto LABEL_69;
                        }
                      }

                      goto LABEL_67;
                    }

                    v137 = objc_msgSend_rangeByExtendingRangeToWhitespace_(v232, v133, v114, 0);
                  }

                  v114 = v137;
                  v116 = v133;
                  if (!v133)
                  {
                    goto LABEL_69;
                  }

LABEL_67:
                  v138 = *v109;
                  v139 = v109[1];
                  v140 = v109[2];
                  v141 = v109[3];
                  v142 = objc_msgSend_byGlyphStyle(v7, v133, v134);
                  LOBYTE(v222) = 0;
                  v144 = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a1, v143, v114, v116, 0, isMagicMove, v142, 0, v138, v139, v140, v141, v222, 0);
                  if (v144)
                  {
                    v145 = v144;
                    v146 = objc_msgSend_stageIndex(v111, v133, v134);
                    objc_msgSend_addRenderable_forStage_(v54, v147, v145, v146);
                  }

LABEL_69:
                  if (objc_msgSend_byGlyphStyle(v7, v133, v134) == 2)
                  {
                    ++v116;
                  }

                  if (!v116)
                  {
                    goto LABEL_75;
                  }

                  v114 += v116;
                }
              }

              v148 = *v109;
              v149 = v109[1];
              v150 = v109[2];
              v151 = v109[3];
              v152 = objc_msgSend_byGlyphStyle(v7, v107, v108);
              LOBYTE(v222) = 0;
              v154 = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a1, v153, v114, v116, 0, isMagicMove, v152, 0, v148, v149, v150, v151, v222, 0);
              if (v154)
              {
                v155 = v154;
                v156 = objc_msgSend_stageIndex(v111, v107, v108);
                objc_msgSend_addRenderable_forStage_(v54, v157, v155, v156);
              }

LABEL_75:
              ++v113;
              v106 = v232;
            }

            while (v113 != v230);
            v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v228, v107, &v234, v246, 16);
            v230 = v158;
          }

          while (v158);
        }

        v110 = v226 + 1;
      }

      while (v226 + 1 != v225);
      v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v107, &v238, v247, 16);
    }

    while (v225);
  }

  v33 = v54;
  if ((objc_msgSend_shouldNotAddContainedReps(v7, v107, v108) & 1) == 0)
  {
    v161 = objc_msgSend_copy(v7, v159, v160);
    v164 = objc_msgSend_childRepByGlyphStyle(v7, v162, v163);
    objc_msgSend_setByGlyphStyle_(v161, v165, v164);
    objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(a1, v166, v54, v161, 0);

    v106 = v232;
  }

  if (objc_msgSend_shouldTransformUsingTextureCenter(v54, v159, v160))
  {
    v168 = objc_msgSend_range(v106, v30, v167);
    v170 = v169;
    v171 = *MEMORY[0x277CBF398];
    v172 = *(MEMORY[0x277CBF398] + 8);
    v173 = *(MEMORY[0x277CBF398] + 16);
    v174 = *(MEMORY[0x277CBF398] + 24);
    v176 = objc_msgSend_byGlyphStyle(v7, v169, v175);
    LOBYTE(v222) = 0;
    v46 = objc_msgSend_newTextureRenderableForRange_includeListLabel_isMagicMove_desiredContentRect_textureByGlyphStyle_includeGroupedShadow_groupedShadowOnly_textureBounds_(a1, v177, v168, v170, 1, isMagicMove, v176, 0, v171, v172, v173, v174, v222, 0);
    objc_msgSend_frame(v46, v178, v179);
    objc_msgSend_setBoundingRect_(v33, v180, v181);
    objc_msgSend_teardown(v46, v182, v183);
    goto LABEL_86;
  }

LABEL_91:
  if (isMagicMove)
  {
    objc_msgSend_setIsMagicMove_(v33, v30, 1);
    objc_msgSend_setLayerGeometry(v33, v219, v220);
  }

  return v33;
}

id sub_275DD6048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DD60CC;
  v7[3] = &unk_27A698F28;
  v7[4] = a1;
  v7[5] = a5;
  v6.receiver = a1;
  v6.super_class = TSWPShapeRep_0;
  return objc_msgSendSuper2(&v6, sel_addChildTexturesToTextureSet_forDescription_passingTest_, a3, a4, v7);
}

uint64_t sub_275DD60CC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_containedRep(*(a1 + 32), a2, a3) == a2)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + 16);

  return v5();
}

uint64_t sub_275DD613C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_layout(a1, a2, a3);
  v7 = objc_msgSend_info(v4, v5, v6);
  v10 = objc_msgSend_textStorage(v7, v8, v9);
  if (objc_msgSend_length(v10, v11, v12))
  {
    return v10;
  }

  if (!objc_msgSend_displaysInstructionalText(v7, v13, v14))
  {
    return v10;
  }

  v17 = objc_msgSend_canvas(a1, v15, v16);
  if (!objc_msgSend_shouldShowInstructionalTextForLayout_(v17, v18, v4))
  {
    return v10;
  }

  v21 = objc_msgSend_containedLayout(v4, v19, v20);

  return objc_msgSend_storage(v21, v22, v23);
}

double sub_275DD61D0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = sub_275DD6314;
  v17 = nullsub_2;
  v18 = &unk_275E9EF93;
  v7 = *(MEMORY[0x277CBF398] + 16);
  v19 = *MEMORY[0x277CBF398];
  v20 = v7;
  v8 = objc_msgSend_textStorageForTexture(a1, a2, a3);
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_275DD6324;
    v12[3] = &unk_27A698F50;
    v12[4] = a1;
    v12[5] = &v13;
    objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(v8, v9, 7, a3, a4, v12);
  }

  v10 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_275DD62FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_275DD6314(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_275DD6324(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_containedRep(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_glyphCountForRubyFieldAtCharIndex_(v5, v6, a3);
  v8 = *(*(a1 + 40) + 8);
  v9 = v8[6];
  v10 = v8[7];
  v11 = v8[8];
  v12 = v8[9];
  v15 = objc_msgSend_containedRep(*(a1 + 32), v13, v14);
  objc_msgSend_glyphRectForRubyFieldAtCharIndex_glyphRange_(v15, v16, a3, 0, v7);
  v22.origin.x = v17;
  v22.origin.y = v18;
  v22.size.width = v19;
  v22.size.height = v20;
  v21.origin.x = v9;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  *(*(*(a1 + 40) + 8) + 48) = CGRectUnion(v21, v22);
}

void *sub_275DD63CC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_textStorageForTexture(a1, a2, a3);
  if (result)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_275DD6470;
    v11[3] = &unk_27A698F78;
    v11[4] = a1;
    v11[5] = a4;
    v11[6] = a5;
    v11[7] = a3;
    return objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(result, v10, 7, a4, a5, v11);
  }

  return result;
}

uint64_t sub_275DD6470(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 + a3 - 1;
  v6 = *(result + 40);
  v8 = v5 >= v6;
  v7 = v5 - v6;
  v8 = !v8 || v7 >= *(result + 48);
  if (!v8)
  {
    v10 = result;
    v11 = objc_msgSend_containedRep(*(result + 32), a2, a3);
    objc_msgSend_glyphCountForRubyFieldAtCharIndex_(v11, v12, a3);
    v15 = objc_msgSend_containedRep(*(v10 + 32), v13, v14);
    v16 = *(v10 + 56);

    return MEMORY[0x2821F9670](v15, sel_drawRubyInContext_rubyFieldStart_rubyGlyphRange_, v16);
  }

  return result;
}

BOOL sub_275DD64F4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_containedRep(a1, a2, a3);
  objc_msgSend_glyphRectForRange_includingLabel_(v9, v10, a3, a4, a5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  objc_msgSend_p_rectForRubyFields_(a1, v19, a3, a4);
  v32.origin.x = v20;
  v32.origin.y = v21;
  v32.size.width = v22;
  v32.size.height = v23;
  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  v30 = CGRectUnion(v29, v32);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  result = 0;
  if (!CGRectIsNull(v30))
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectIsEmpty(v31))
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_275DD65CC(void *a1, const char *a2, void *a3, void *a4, _OWORD *a5, _BYTE *a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, char a12)
{
  v16 = objc_msgSend_canvas(a1, a2, a3);
  objc_msgSend_viewScale(v16, v17, v18);
  v21 = objc_msgSend_shapeInfo(a1, v19, v20);
  v24 = objc_msgSend_reflection(v21, v22, v23);
  v27 = objc_msgSend_shapeInfo(a1, v25, v26);
  v30 = objc_msgSend_shadow(v27, v28, v29);
  v33 = objc_msgSend_info(a1, v31, v32);
  v36 = objc_msgSend_fill(v33, v34, v35);
  if (v30)
  {
    v39 = v36;
    if (objc_msgSend_isEnabled(v30, v37, v38))
    {
      v129.receiver = a1;
      v129.super_class = TSWPShapeRep_0;
      LODWORD(v30) = 1;
      if ((objc_msgSendSuper2(&v129, sel_isInvisible) & 1) == 0 && v39)
      {
        LODWORD(v30) = objc_msgSend_isClear(v39, v37, v38);
      }
    }

    else
    {
      LODWORD(v30) = 0;
    }
  }

  v40 = objc_msgSend_containedRep(a1, v37, v38);
  objc_msgSend_glyphRectForRange_includingLabel_(v40, v41, a9, a10, a11);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  objc_msgSend_p_rectForRubyFields_(a1, v50, a9, a10);
  v139.origin.x = v51;
  v139.origin.y = v52;
  v139.size.width = v53;
  v139.size.height = v54;
  v130.origin.x = v43;
  v130.origin.y = v45;
  v130.size.width = v47;
  v130.size.height = v49;
  v131 = CGRectUnion(v130, v139);
  x = v131.origin.x;
  y = v131.origin.y;
  width = v131.size.width;
  height = v131.size.height;
  if (CGRectIsNull(v131))
  {
    v61 = 0;
    if (!v30)
    {
LABEL_9:
      v121.size.width = width;
      v121.size.height = height;
      v121.origin.x = x;
      v121.origin.y = y;
      goto LABEL_12;
    }
  }

  else
  {
    v132.origin.x = x;
    v132.origin.y = y;
    v132.size.width = width;
    v132.size.height = height;
    v61 = !CGRectIsEmpty(v132);
    if (!v30)
    {
      goto LABEL_9;
    }
  }

  v62 = objc_msgSend_shapeInfo(a1, v59, v60);
  v65 = objc_msgSend_shadow(v62, v63, v64);
  v68 = objc_msgSend_info(a1, v66, v67);
  v71 = objc_msgSend_geometry(v68, v69, v70);
  objc_msgSend_angle(v71, v72, v73);
  objc_msgSend_shadowBoundsForRect_additionalAngle_(v65, v74, v75, x, y, width, height, v76);
  v140.origin.x = v77;
  v140.origin.y = v78;
  v140.size.width = v79;
  v140.size.height = v80;
  v133.origin.x = x;
  v133.origin.y = y;
  v133.size.width = width;
  v133.size.height = height;
  v121 = CGRectUnion(v133, v140);
LABEL_12:
  memset(&v128, 0, sizeof(v128));
  v81 = objc_msgSend_layout(a1, v59, v60);
  if (v81)
  {
    objc_msgSend_transformInRoot(v81, v82, v83);
    if (!a12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    memset(&v128, 0, sizeof(v128));
    if (!a12)
    {
      goto LABEL_20;
    }
  }

  v126 = v128;
  if (a1)
  {
    objc_msgSend_unRotatedTransform_(a1, v82, &v126);
  }

  else
  {
    memset(&v127, 0, sizeof(v127));
  }

  v128 = v127;
LABEL_20:
  v84 = objc_msgSend_containedRep(a1, v82, v83);
  v87 = objc_msgSend_layout(v84, v85, v86);
  v90 = objc_msgSend_geometry(v87, v88, v89);
  if (v90)
  {
    objc_msgSend_transform(v90, v91, v92);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v128;
  CGAffineTransformConcat(&v127, &t1, &t2);
  v128 = v127;
  if (v24)
  {
    v127 = v128;
    v134.origin.x = v43;
    v134.origin.y = v45;
    v134.size.width = v47;
    v134.size.height = v49;
    v135 = CGRectApplyAffineTransform(v134, &v127);
    v93 = v135.origin.x;
    v94 = v135.origin.y;
    v95 = v135.size.width;
    v96 = v135.size.height;
    v99 = objc_msgSend_styledLayout(a1, v97, v98);
    objc_msgSend_reflectionFrameForSubRect_(v99, v100, v101, v93, v94, v95, v96);
    v119 = v136.origin.y;
    v120 = v136.origin.x;
    v117 = v136.size.height;
    v118 = v136.size.width;
    v102 = !CGRectIsNull(v136);
  }

  else
  {
    v102 = 0;
    v119 = *(MEMORY[0x277CBF398] + 8);
    v120 = *MEMORY[0x277CBF398];
    v117 = *(MEMORY[0x277CBF398] + 24);
    v118 = *(MEMORY[0x277CBF398] + 16);
  }

  v127 = v128;
  v137.origin.x = x;
  v137.origin.y = y;
  v137.size.width = width;
  v137.size.height = height;
  CGRectApplyAffineTransform(v137, &v127);
  v127 = v128;
  v138 = CGRectApplyAffineTransform(v121, &v127);
  if (v102)
  {
    v141.origin.y = v119;
    v141.origin.x = v120;
    v141.size.height = v117;
    v141.size.width = v118;
    CGRectUnion(v138, v141);
  }

  TSUNormalizedPointInRect();
  TSURectGetMaxPoint();
  TSUNormalizedPointInRect();
  TSUMultiplyRectScalar();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  if (a4)
  {
    TSURectWithPoints();
    *a4 = v111;
    a4[1] = v112;
    a4[2] = v113;
    a4[3] = v114;
  }

  if (a3)
  {
    *a3 = v104;
    a3[1] = v106;
    a3[2] = v108;
    a3[3] = v110;
  }

  if (a5)
  {
    v115 = *&v128.c;
    *a5 = *&v128.a;
    a5[1] = v115;
    a5[2] = *&v128.tx;
  }

  if (a6)
  {
    *a6 = v102;
  }

  if (a7)
  {
    *a7 = v30;
  }

  return v61;
}

uint64_t sub_275DD6AA8(void *a1, const char *a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v9 = objc_msgSend_canvas(a1, a2, a3);
  objc_msgSend_viewScale(v9, v10, v11);
  v14 = objc_msgSend_containedRep(a1, v12, v13);
  v17 = objc_msgSend_layout(v14, v15, v16);
  objc_msgSend_frame(v17, v18, v19);
  v22 = objc_msgSend_containedRep(a1, v20, v21);
  objc_msgSend_caretRectForCharIndex_leadingEdge_caretAffinity_(v22, v23, a3, a5, 0);
  v34 = v25;
  v35 = v24;
  v27 = v26;
  v29 = v28;
  TSURoundedSize();
  TSUMultiplySizeScalar();
  TSUAddSizes();
  v30 = a4[1];
  *&v36.a = *a4;
  *&v36.c = v30;
  *&v36.tx = a4[2];
  memset(&v37, 0, sizeof(v37));
  CGAffineTransformTranslate(&v37, &v36, v31, v32);
  v36 = v37;
  v38.origin.y = v34;
  v38.origin.x = v35;
  v38.size.width = v27;
  v38.size.height = v29;
  CGRectApplyAffineTransform(v38, &v36);
  TSUMultiplyRectScalar();
  TSUMultiplyPointScalar();
  TSUSubtractPoints();
  return TSURectWithOriginAndSize();
}

void *sub_275DD6C08(void *a1, const char *a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, char a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, char a13, double *a14)
{
  v24 = a6 ^ 1;
  v200[2] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v24 = 0;
  }

  v25 = v24 | a5;
  v26 = objc_msgSend_canvas(a1, a2, a3);
  objc_msgSend_viewScale(v26, v27, v28);
  v30 = v29;
  v33 = objc_msgSend_info(a1, v31, v32);
  objc_msgSend_opacity(v33, v34, v35);
  v37 = v36;
  v40 = objc_msgSend_shapeInfo(a1, v38, v39);
  v43 = objc_msgSend_shadow(v40, v41, v42);
  v46 = objc_msgSend_shapeInfo(a1, v44, v45);
  v49 = objc_msgSend_reflection(v46, v47, v48);
  v190 = 0;
  HIBYTE(v160) = a6;
  LOBYTE(v160) = v25;
  if (!objc_msgSend_p_getBoundsRect_contentRect_transform_applyReflection_applyShadow_forRange_includeListLabel_isMagicMove_(a1, v50, &v192, &v196, &v191, &v190 + 1, &v190, a3, a4, v160))
  {
    return 0;
  }

  v51 = v37;
  v201.origin.x = a9;
  v201.origin.y = a10;
  v201.size.width = a11;
  v201.size.height = a12;
  IsNull = CGRectIsNull(v201);
  v53 = v192;
  v54 = v193;
  v55 = v194;
  v56 = v195;
  if (!IsNull)
  {
    v158 = a9;
    v159 = a10;
    v161 = a11;
    v162 = a12;
    TSURectByExpandingBoundingRectToContentRect();
    v192 = v53;
    v193 = v54;
    v194 = v55;
    v195 = v56;
    v196 = a9;
    v197 = a10;
    v198 = a11;
    v199 = a12;
  }

  v202 = CGRectIntegral(*&v53);
  x = v202.origin.x;
  y = v202.origin.y;
  width = v202.size.width;
  height = v202.size.height;
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v179 = v191;
  v176[2] = sub_275DD72EC;
  v176[3] = &unk_27A698FC8;
  v177 = v202;
  v178 = v30;
  v180 = a3;
  v181 = a4;
  v184 = v25;
  v183 = a7;
  v185 = v190;
  v186 = a13;
  v187 = a8;
  v176[4] = a1;
  v176[5] = v43;
  v188 = HIBYTE(v190);
  v182 = v51;
  v189 = a6;
  v63 = objc_msgSend_layout(a1, v61, v62);
  if (v63)
  {
    objc_msgSend_transformInRoot(v63, v64, v65);
  }

  else
  {
    memset(&v173, 0, sizeof(v173));
  }

  v191 = v173;
  if (a6)
  {
    v67 = objc_msgSend_layout(a1, v64, v65);
    if (v67)
    {
      objc_msgSend_transformInRoot(v67, v64, v65);
      if (a1)
      {
LABEL_13:
        objc_msgSend_unRotatedTransform_(a1, v64, v175, *&v158, *&v159, *&v161, *&v162);
LABEL_16:
        v191 = v173;
        goto LABEL_17;
      }
    }

    else
    {
      memset(v175, 0, sizeof(v175));
      if (a1)
      {
        goto LABEL_13;
      }
    }

    memset(&v173, 0, sizeof(v173));
    goto LABEL_16;
  }

LABEL_17:
  v68 = a3 + a4;
  v69 = objc_msgSend_containedRep(a1, v64, v65, *&v158, *&v159, *&v161);
  v71 = objc_msgSend_columnForCharIndex_(v69, v70, a3);
  if (v71)
  {
    v74 = v71;
    objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v71, v72, a3 + a4, 0);
    v170 = v30 * v173.tx;
    objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v74, v75, a3, 0);
    v76 = v30 * v174;
  }

  else
  {
    v170 = 1.0;
    v76 = 0.0;
  }

  v171 = y;
  v172 = x;
  if (a6 && v49 && (v190 & 0x100) == 0)
  {
    v169 = *(MEMORY[0x277CBF348] + 8);
    objc_msgSend_naturalBounds(a1, v72, v73);
    objc_msgSend_convertNaturalRectToUnscaledCanvas_(a1, v97, v98);
    objc_msgSend_naturalBounds(a1, v99, v100);
    TSUCenterRectOverRect();
    TSUMultiplyRectScalar();
    TSUSubtractPoints();
    v167 = v102;
    v168 = v101;
    v92 = v169;
    if (a6)
    {
      goto LABEL_24;
    }

LABEL_26:
    v173 = v191;
    objc_msgSend_p_getCaretRectForCharIndex_transform_integralBounds_leadingEdge_(a1, v90, a3, &v173, 1, x, y, width, height);
    v165 = v105;
    v166 = v104;
    v163 = v107;
    v164 = v106;
    if (v68)
    {
      v108 = v68 - 1;
    }

    else
    {
      v108 = 0;
    }

    v173 = v191;
    objc_msgSend_p_getCaretRectForCharIndex_transform_integralBounds_leadingEdge_(a1, v103, v108, &v173, 0, x, y, width, height);
    v93 = v109;
    v94 = v110;
    v95 = v111;
    v96 = v112;
    goto LABEL_30;
  }

  objc_msgSend_naturalBounds(a1, v72, v73);
  v173 = v191;
  CGRectApplyAffineTransform(v203, &v173);
  TSUMultiplyRectScalar();
  TSUSubtractPoints();
  v167 = v78;
  v168 = v77;
  v81 = objc_msgSend_containedRep(a1, v79, v80);
  v84 = objc_msgSend_layout(v81, v82, v83);
  v87 = objc_msgSend_geometryInRoot(v84, v85, v86);
  objc_msgSend_frame(v87, v88, v89);
  TSUMultiplyRectScalar();
  TSUSubtractPoints();
  v92 = v91;
  if ((a6 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  v93 = *MEMORY[0x277CBF3A0];
  v94 = *(MEMORY[0x277CBF3A0] + 8);
  v95 = *(MEMORY[0x277CBF3A0] + 16);
  v96 = *(MEMORY[0x277CBF3A0] + 24);
  v165 = v94;
  v166 = *MEMORY[0x277CBF3A0];
  v163 = v96;
  v164 = v95;
LABEL_30:
  v113 = objc_alloc(MEMORY[0x277D803E8]);
  v66 = objc_msgSend_initWithSize_offset_renderBlock_(v113, v114, v176, width, height, v168, v167);
  objc_msgSend_setTextureOpacity_(v66, v115, v116, 1.0);
  objc_msgSend_setTextureType_(v66, v117, 6);
  objc_msgSend_setContentRect_(v66, v118, v119, v196, v197, v198, v199);
  v122 = objc_msgSend_info(a1, v120, v121);
  IsVertical = objc_msgSend_textIsVertical(v122, v123, v124);
  objc_msgSend_setIsVerticalText_(v66, v126, IsVertical);
  objc_msgSend_setTextBaseline_(v66, v127, v128, (v170 - v92) / height);
  objc_msgSend_setTextXHeight_(v66, v129, v130, v76 / height);
  objc_msgSend_setLeadingCaretRect_(v66, v131, v132, v166, v165, v164, v163);
  objc_msgSend_setTrailingCaretRect_(v66, v133, v134, v93, v94, v95, v96);
  if (a13)
  {
    objc_msgSend_setTextureType_(v66, v135, 4);
  }

  v137 = objc_msgSend_textStorageForTexture(a1, v135, v136);
  v139 = objc_msgSend_substringWithRange_(v137, v138, a3, a4);
  objc_msgSend_setText_(v66, v140, v139);
  objc_msgSend_setTextRange_(v66, v141, a3, a4);
  if (a4)
  {
    objc_opt_class();
    objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(v137, v143, 48, a3, 0);
    v144 = TSUDynamicCast();
    v147 = objc_msgSend_referenceColor(v144, v145, v146);
  }

  else
  {
    v200[0] = objc_msgSend_listStyleAtCharIndex_effectiveRange_(v137, v142, a3, 0);
    v200[1] = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v137, v149, a3, 0);
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v150, v200, 2);
    v147 = TSWPResolvePropertyForStyles();
  }

  objc_msgSend_setTextColor_(v66, v148, v147);
  objc_opt_class();
  objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(v137, v151, 50, a3, 0);
  v152 = TSUDynamicCast();
  if (v152)
  {
    v155 = objc_msgSend_color(v152, v153, v154);
    objc_msgSend_setTextBorderColor_(v66, v156, v155);
  }

  if (a14)
  {
    *a14 = v172;
    a14[1] = v171;
    a14[2] = width;
    a14[3] = height;
  }

  return v66;
}

void sub_275DD72EC(uint64_t a1, CGContextRef c)
{
  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  CGContextScaleCTM(c, *(a1 + 80), *(a1 + 80));
  v4 = *(a1 + 104);
  *&transform.a = *(a1 + 88);
  *&transform.c = v4;
  *&transform.tx = *(a1 + 120);
  CGContextConcatCTM(c, &transform);
  v7 = *(a1 + 144);
  if (v7)
  {
    if (*(a1 + 160))
    {
      v8 = objc_alloc(MEMORY[0x277D80EF8]);
      v10 = objc_msgSend_initWithRange_(v8, v9, *(a1 + 136), *(a1 + 144));
LABEL_12:
      v20 = v10;
      goto LABEL_14;
    }
  }

  else
  {
    if (*(a1 + 164) != 1)
    {
      goto LABEL_13;
    }

    if (*(a1 + 160))
    {
      v11 = objc_alloc(MEMORY[0x277D80EF8]);
      v10 = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_(v11, v12, 1, *(a1 + 136), *(a1 + 144), 2, 0);
      goto LABEL_12;
    }
  }

  v13 = *(a1 + 136);
  v14 = objc_msgSend_textStorageForTexture(*(a1 + 32), v5, v6);
  if (v13 != objc_msgSend_range(v14, v15, v16) || v7 != v5)
  {
    v18 = objc_alloc(MEMORY[0x277D80EF8]);
    v10 = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_(v18, v19, 2, *(a1 + 136), *(a1 + 144), 2, 0);
    goto LABEL_12;
  }

LABEL_13:
  v20 = 0;
LABEL_14:
  if (*(a1 + 165) == 1)
  {
    if (*(a1 + 166) == 1 && *(a1 + 167) == 1)
    {
      v21 = 1;
      objc_msgSend_drawShadowInContext_withChildren_withDrawableOpacity_(*(a1 + 32), v5, c, 1, 0);
      goto LABEL_28;
    }

    CGContextSaveGState(c);
    if (objc_msgSend_isDropShadow(*(a1 + 40), v22, v23))
    {
      v26 = *(a1 + 40);
      v27 = objc_msgSend_canvas(*(a1 + 32), v24, v25);
      objc_msgSend_viewScale(v27, v28, v29);
      v31 = v30;
      v34 = objc_msgSend_canvas(*(a1 + 32), v32, v33);
      if (objc_msgSend_isDrawingIntoPDF(v34, v35, v36))
      {
        v39 = objc_msgSend_canvas(*(a1 + 32), v37, v38);
        isPrinting = objc_msgSend_isPrinting(v39, v40, v41);
        objc_msgSend_applyToContext_viewScale_flipped_(v26, v43, c, isPrinting, v31);
      }

      else
      {
        objc_msgSend_applyToContext_viewScale_flipped_(v26, v37, c, 0, v31);
      }
    }

    else if (*(a1 + 167) == 1)
    {
      objc_msgSend_drawShadowInContext_withChildren_withDrawableOpacity_(*(a1 + 32), v24, c, 1, 0);
    }

    v44 = objc_msgSend_canvas(*(a1 + 32), v24, v25);
    if (objc_msgSend_isDrawingIntoPDF(v44, v45, v46))
    {
      v21 = 0;
      goto LABEL_28;
    }

    CGContextBeginTransparencyLayer(c, 0);
  }

  v21 = 1;
LABEL_28:
  if ((*(a1 + 166) & 1) == 0)
  {
    CGContextSetShouldSubpixelQuantizeFonts(c, 0);
    CGContextSetAllowsFontSubpixelQuantization(c, 0);
    v49 = objc_msgSend_containedRep(*(a1 + 32), v47, v48);
    objc_msgSend_recursivelyDrawInContext_limitSelection_suppressInvisibles_(v49, v50, c, v20, 0);
    if (v20)
    {
      objc_msgSend_p_drawRubyInContext_forRange_(*(a1 + 32), v51, c, *(a1 + 136), *(a1 + 144));
    }

    if (*(a1 + 165) == 1)
    {
      if (v21)
      {
        CGContextEndTransparencyLayer(c);
      }

      CGContextRestoreGState(c);
    }

    if (*(a1 + 168) == 1)
    {
      v53 = objc_msgSend_containedRep(*(a1 + 32), v51, v52);
      v56 = objc_msgSend_layout(v53, v54, v55);
      v59 = objc_msgSend_geometry(v56, v57, v58);
      if (v59)
      {
        objc_msgSend_transform(v59, v60, v61);
      }

      else
      {
        memset(&v75, 0, sizeof(v75));
      }

      CGAffineTransformInvert(&transform, &v75);
      CGContextConcatCTM(c, &transform);
      v62 = *(a1 + 136);
      v63 = *(a1 + 144);
      v66 = objc_msgSend_textStorageForTexture(*(a1 + 32), v64, v65);
      v71 = v62 != objc_msgSend_range(v66, v67, v68) || v63 != v69;
      v72 = *(a1 + 32);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_275DD7644;
      v73[3] = &unk_27A698FA0;
      v73[6] = *(a1 + 152);
      v74 = *(a1 + 169);
      v73[4] = v72;
      v73[5] = v20;
      objc_msgSend_drawReflectionInContext_withTransparencyLayer_applyingOpacity_shouldClipGradient_withBlock_(v72, v69, c, v71, 1, 1, v73);
    }
  }
}

uint64_t sub_275DD7644(uint64_t a1, CGContextRef c, uint64_t a3)
{
  v5 = *(a1 + 48);
  if (v5 < 1.0 && (*(a1 + 56) & 1) == 0)
  {
    CGContextSetAlpha(c, v5);
  }

  v6 = objc_msgSend_containedRep(*(a1 + 32), c, a3);
  v9 = objc_msgSend_layout(v6, v7, v8);
  v12 = objc_msgSend_geometry(v9, v10, v11);
  if (v12)
  {
    objc_msgSend_transform(v12, v13, v14);
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  CGContextConcatCTM(c, &v20);
  v17 = objc_msgSend_containedRep(*(a1 + 32), v15, v16);
  return objc_msgSend_recursivelyDrawInContext_limitSelection_suppressInvisibles_(v17, v18, c, *(a1 + 40), 0);
}

uint64_t sub_275DD7FF4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_isLocked(v2, v3, v4) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_275DD8D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&a29);

  _Unwind_Resume(a1);
}

void sub_275DD9188(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_275DDA454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_275DDA62C(void *a1)
{
  v1 = qword_280A3C0B8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_275E5B5AC();
  }

  v4 = objc_msgSend_containsObject_(qword_280A3C0B0, v2, v3);

  return v4;
}

void sub_275DDA684()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_msgSend_initWithObjects_(v0, @"KNActionBuildCustomAttributesRepeatCount", @"KNBuildAttributesDirection", @"KNBuildAttributesInitialChunkCreationEventTrigger", @"KNBuildAttributesStartOffset", @"KNBuildAttributesEndOffset", @"KNAnimationOrder", *MEMORY[0x277D80108], *MEMORY[0x277D800E8], @"KNBuildCustomAttributesTextDelivery", @"KNBuildCustomAttributesDeliveryOption", @"KNBuildCustomAttributesRandomNumberSeed", @"KNActionBuildCustomAttributesJiggleIntensity", @"KNActionBuildCustomAttributesRepeatCount", @"KNBuildChunkReferentProperty", @"KNTextureDeliveryStyleProperty", 0);
  v2 = qword_280A3C0B0;
  qword_280A3C0B0 = v1;
}

uint64_t sub_275DDA790(void *a1)
{
  v1 = qword_280A3C0C8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_275E5B5C0();
  }

  v4 = objc_msgSend_containsObject_(qword_280A3C0C0, v2, v3);

  return v4;
}

void sub_275DDA7E8()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_msgSend_initWithObjects_(v0, *MEMORY[0x277D800F0], @"KNBuildAttributesDefaultDuration", @"KNBuildChunkDurationProperty", @"KNBuildAttributesInitialChunkCreationDelay", @"KNAnimationDelayAutomaticAfter", @"KNAnimationDelayAutomaticWith", @"KNBuildAttributesDeprecatedInterchunkDelay", @"com.apple.iWork.Keynote.KLNBCConvergence.height", @"KNActionBuildCustomAttributesScale", *MEMORY[0x277D80110], *MEMORY[0x277D800E8], *MEMORY[0x277D80100], *MEMORY[0x277D800F0], @"KNBuildChunkDelayProperty", @"KNBuildCustomAttributesDetail", @"KNBuildCustomAttributesScaleAmount", @"KNBuildCustomAttributesTravelDistance", 0);
  v2 = qword_280A3C0C0;
  qword_280A3C0C0 = v1;
}

uint64_t sub_275DDA910(void *a1)
{
  v1 = qword_280A3C0D8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_275E5B5D4();
  }

  v4 = objc_msgSend_containsObject_(qword_280A3C0D0, v2, v3);

  return v4;
}

void sub_275DDA968()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_msgSend_initWithObjects_(v0, v1, @"KNBuildAttributesDeprecatedInterchunkAuto", @"KNBuildCustomAttributesBounce", @"KNBuildCustomAttributesAlignToPath", @"KNBuildCustomAttributesMotionBlur", @"KNActionBuildCustomAttributesDecay", @"KNBuildChunkAutomaticProperty", @"WritingDirectionIsRTL", @"KNBuildCustomAttributesIncludeEndpoints", @"KNBuildCustomAttributesShine", @"KNBuildCustomAttributesCursor", 0);
  v3 = qword_280A3C0D0;
  qword_280A3C0D0 = v2;
}

uint64_t sub_275DDAA3C(void *a1)
{
  v1 = qword_280A3C0E8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_275E5B5E8();
  }

  v4 = objc_msgSend_containsObject_(qword_280A3C0E0, v2, v3);

  return v4;
}

void sub_275DDAA94()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_msgSend_initWithObjects_(v0, v1, *MEMORY[0x277D80178], @"KNBuildDeliveryProperty", @"KNBuildEffectProperty", @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", @"KNAnimationAttributesCustomEffectTimingCurveThemeName2", @"KNAnimationAttributesCustomEffectTimingCurveThemeName3", 0);
  v3 = qword_280A3C0E0;
  qword_280A3C0E0 = v2;
}

uint64_t sub_275DDAB30(void *a1)
{
  v1 = qword_280A3C0F8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_275E5B5FC();
  }

  v4 = objc_msgSend_containsObject_(qword_280A3C0F0, v2, v3);

  return v4;
}

void sub_275DDAB88()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_msgSend_initWithObjects_(v0, v1, *MEMORY[0x277D800F8], @"KNAnimationAttributesCustomEffectTimingCurve1", @"KNAnimationAttributesCustomEffectTimingCurve2", @"KNAnimationAttributesCustomEffectTimingCurve3", 0);
  v3 = qword_280A3C0F0;
  qword_280A3C0F0 = v2;
}

void sub_275DDAF30()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_msgSend_initWithObjects_(v0, @"KNAnimationAttributesCustomEffectTimingCurve1", @"KNBuildCustomAttributesTextDelivery", @"KNBuildCustomAttributesDeliveryOption", @"KNBuildCustomAttributesBounce", @"KNBuildCustomAttributesAlignToPath", @"KNBuildCustomAttributesMotionBlur", @"KNBuildCustomAttributesRandomNumberSeed", @"KNBuildCustomAttributesIncludeEndpoints", @"KNBuildCustomAttributesShine", @"KNBuildCustomAttributesScaleAmount", @"KNBuildCustomAttributesTravelDistance", @"KNBuildCustomAttributesCursor", @"KNAnimationAttributesCustomEffectTimingCurve1", @"KNAnimationAttributesCustomEffectTimingCurve2", @"KNAnimationAttributesCustomEffectTimingCurve3", @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", @"KNAnimationAttributesCustomEffectTimingCurveThemeName2", @"KNAnimationAttributesCustomEffectTimingCurveThemeName3", @"KNBuildCustomAttributesDetail", *MEMORY[0x277D800E8], @"KNActionBuildCustomAttributesJiggleIntensity", @"KNActionBuildCustomAttributesRepeatCount", @"KNActionBuildCustomAttributesDecay", @"KNActionBuildCustomAttributesScale", 0);
  v2 = qword_280A3C100;
  qword_280A3C100 = v1;
}

uint64_t sub_275DDB8A8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    v7 = objc_msgSend_objectUUID(v4, v5, v6);
    isEqual = objc_msgSend_isEqual_(v7, v8, *(a1 + 32));
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

void sub_275DDC834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = KNNoteLayout;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_275DDF234()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DDF4F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275DDF518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_275DDF5EC;
  v5[3] = &unk_27A699078;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  objc_copyWeak(&v7, (a1 + 48));
  objc_msgSend_performSlideRead_(WeakRetained, v4, v5);

  objc_destroyWeak(&v7);
}

void sub_275DDF5EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);

  v8 = *MEMORY[0x277D80478];
  objc_msgSend_setObject_forKeyedSubscript_(v7, v9, MEMORY[0x277CBEC38], *MEMORY[0x277D80478]);
  v12 = objc_msgSend_ASVForSlideNode_(*(a1 + 32), v10, *(a1 + 40));
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[KNAnimatedTextureManager p_setupGenerateTexturesOperationOnSlideNode:]_block_invoke_2");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 350, 0, "invalid nil value for '%{public}s'", "asv");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v21, v22);

  if ((isCancelled & 1) == 0)
  {
    objc_msgSend_begin(MEMORY[0x277CD9FF0], v24, v25);
    objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v26, 1);
    v27 = MEMORY[0x277CD9FF0];
    isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v28, v29);
    objc_msgSend_activateBackground_(v27, v31, isMainThread ^ 1u);
    v32 = *MEMORY[0x277D805D8];
    objc_msgSend_setObject_forKeyedSubscript_(v7, v33, MEMORY[0x277CBEC38], *MEMORY[0x277D805D8]);
    v34 = os_signpost_id_make_with_pointer(*(*(a1 + 32) + 120), v12);
    v35 = *(*(a1 + 32) + 120);
    v36 = v35;
    if (v34 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      objc_msgSend_generateTextures(v12, v42, v43);
      if (v34 == -1)
      {
LABEL_12:
        objc_msgSend_setObject_forKeyedSubscript_(v7, v44, 0, v32);
        objc_msgSend_commit(MEMORY[0x277CD9FF0], v45, v46);
        goto LABEL_13;
      }

      v41 = *(*(a1 + 32) + 120);
    }

    else
    {
      if (os_signpost_enabled(v35))
      {
        *buf = 134217984;
        v48 = objc_msgSend_slideNumber(v12, v37, v38);
        _os_signpost_emit_with_name_impl(&dword_275D41000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "GenerateTextures", "Begin slide %ld", buf, 0xCu);
      }

      objc_msgSend_generateTextures(v12, v39, v40);
      v41 = *(*(a1 + 32) + 120);
      if (os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v41, OS_SIGNPOST_INTERVAL_END, v34, "GenerateTextures", "End", buf, 2u);
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  objc_msgSend_setObject_forKeyedSubscript_(v7, v24, 0, v8);
}

void sub_275DDFA00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275DDFA20(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);

  v8 = *MEMORY[0x277D80478];
  objc_msgSend_setObject_forKeyedSubscript_(v7, v9, MEMORY[0x277CBEC38], *MEMORY[0x277D80478]);
  v12 = objc_msgSend_ASVForSlideNode_(*(a1 + 32), v10, *(a1 + 40));
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[KNAnimatedTextureManager p_setupRenderTexturesOperationOnSlideNode:]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 398, 0, "invalid nil value for '%{public}s'", "asv");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v21, v22);

  if ((isCancelled & 1) == 0)
  {
    v25 = os_signpost_id_make_with_pointer(*(*(a1 + 32) + 120), v12);
    v26 = *(*(a1 + 32) + 120);
    v27 = v26;
    if (v25 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      objc_msgSend_renderTextures(v12, v33, v34);
      if (v25 == -1)
      {
LABEL_12:
        objc_msgSend_p_addSlideNodeToMemorySet_(*(a1 + 32), v35, *(a1 + 40));
        goto LABEL_13;
      }

      v32 = *(*(a1 + 32) + 120);
    }

    else
    {
      if (os_signpost_enabled(v26))
      {
        *buf = 134217984;
        v37 = objc_msgSend_slideNumber(v12, v28, v29);
        _os_signpost_emit_with_name_impl(&dword_275D41000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "Rasterization", "Begin slide %ld", buf, 0xCu);
      }

      objc_msgSend_renderTextures(v12, v30, v31);
      v32 = *(*(a1 + 32) + 120);
      if (os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v32, OS_SIGNPOST_INTERVAL_END, v25, "Rasterization", "End", buf, 2u);
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  objc_msgSend_setObject_forKeyedSubscript_(v7, v24, 0, v8);
}

void sub_275DDFD9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275DDFDB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);

  v8 = *MEMORY[0x277D80478];
  objc_msgSend_setObject_forKeyedSubscript_(v7, v9, MEMORY[0x277CBEC38], *MEMORY[0x277D80478]);
  v12 = objc_msgSend_ASVForSlideNode_(*(a1 + 32), v10, *(a1 + 40));
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[KNAnimatedTextureManager p_setupPrepareAnimationsOperationOnSlideNode:]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 429, 0, "invalid nil value for '%{public}s'", "asv");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v21, v22);

  if ((isCancelled & 1) == 0)
  {
    v25 = os_signpost_id_make_with_pointer(*(*(a1 + 32) + 120), v12);
    v26 = *(*(a1 + 32) + 120);
    v27 = v26;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (os_signpost_enabled(v26))
      {
        *buf = 134217984;
        v36 = objc_msgSend_slideNumber(v12, v28, v29);
        _os_signpost_emit_with_name_impl(&dword_275D41000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PrepareAnimations", "Begin slide %ld", buf, 0xCu);
      }

      objc_msgSend_prepareAnimations(v12, v30, v31);
      v32 = *(*(a1 + 32) + 120);
      if (os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v32, OS_SIGNPOST_INTERVAL_END, v25, "PrepareAnimations", "End", buf, 2u);
      }

      goto LABEL_11;
    }

    objc_msgSend_prepareAnimations(v12, v33, v34);
    if (v25 != -1)
    {
      v32 = *(*(a1 + 32) + 120);
LABEL_11:
    }
  }

  objc_msgSend_setObject_forKeyedSubscript_(v7, v24, 0, v8);
}

void sub_275DE0334()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE05BC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  os_unfair_lock_unlock((v2 + 16));
  if (v3 == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    objc_msgSend_p_processSlideNode_isHighPriority_(v5, v4, v6, 0);
  }
}

void sub_275DE0C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_275DE0C54(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v8 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v6, v7);
    v27 = objc_msgSend_threadDictionary(v8, v9, v10);

    v11 = *MEMORY[0x277D805D8];
    objc_msgSend_setObject_forKeyedSubscript_(v27, v12, MEMORY[0x277CBEC38], *MEMORY[0x277D805D8]);
    v15 = objc_msgSend_parent(a1[4], v13, v14);
    v18 = objc_msgSend_rep(v15, v16, v17);

    if (v18)
    {
      v21 = objc_msgSend_parent(a1[4], v19, v20);
      v24 = objc_msgSend_rep(v21, v22, v23);

      objc_sync_enter(v24);
      objc_msgSend_p_rasterizeTexture_(a1[5], v25, a1[4]);
      objc_sync_exit(v24);
    }

    else
    {
      objc_msgSend_p_rasterizeTexture_(a1[5], v19, a1[4]);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v27, v26, 0, v11);
  }
}

void sub_275DE0DA0(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  objc_msgSend_setRenderingOperation_(*(a1 + 32), v2, 0);
  objc_sync_exit(obj);
}

void sub_275DE121C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275DE1260()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE12A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);

  v8 = *MEMORY[0x277D80478];
  objc_msgSend_setObject_forKeyedSubscript_(v7, v9, MEMORY[0x277CBEC38], *MEMORY[0x277D80478]);
  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v11 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 32), v10, *(a1 + 40));
  if (!v11)
  {
    goto LABEL_23;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((objc_msgSend_isCancelled(WeakRetained, v13, v14) & 1) != 0 || (v15 = *(a1 + 32), v16 = *(a1 + 40), *(v15 + 24) == v16))
  {

    goto LABEL_23;
  }

  v17 = objc_loadWeakRetained((v15 + 8));
  v20 = objc_msgSend_alternateNextSlideNode(v17, v18, v19);

  if (v16 == v20)
  {
LABEL_23:
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v59 = 0;
    goto LABEL_24;
  }

  v61 = v8;
  v62 = v7;
  v60 = v11;
  v21 = v11;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v22 = *(*(a1 + 32) + 32);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v69, v74, 16);
  v63 = v21;
  if (v24)
  {
    v25 = v24;
    v26 = *v70;
    do
    {
      v27 = 0;
      do
      {
        if (*v70 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v69 + 1) + 8 * v27);
        v29 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v31 = objc_msgSend_nextSlideNodeAfterSlideNode_(v29, v30, v28);

        v34 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 32), v32, v31);
        if (v34 == v21)
        {
          v35 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 32), v33, v28);
          v38 = objc_msgSend_model(v35, v36, v37);
          v41 = objc_msgSend_transitionRenderer(v38, v39, v40);
          objc_msgSend_addObject_(v64, v42, v41);

          v21 = v63;
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v43, &v69, v74, 16);
    }

    while (v25);
  }

  objc_msgSend_removeObject_(*(*(a1 + 32) + 40), v44, *(a1 + 40));
  objc_msgSend_removeObjectForKey_(*(*(a1 + 32) + 32), v45, *(a1 + 40));
  objc_msgSend_removeObject_(*(*(a1 + 32) + 48), v46, *(a1 + 40));
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  objc_msgSend_p_removeTextureCacheForASV_(*(a1 + 32), v47, v21);
  objc_msgSend_serializeTextures(v21, v48, v49);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v50 = v64;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v65, v73, 16);
  v8 = v61;
  v7 = v62;
  v11 = v60;
  if (v52)
  {
    v55 = v52;
    v56 = *v66;
    do
    {
      v57 = 0;
      do
      {
        if (*v66 != v56)
        {
          objc_enumerationMutation(v50);
        }

        objc_msgSend_teardown(*(*(&v65 + 1) + 8 * v57++), v53, v54);
      }

      while (v55 != v57);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v65, v73, 16);
    }

    while (v55);
  }

  v59 = v63;
LABEL_24:
  objc_msgSend_setObject_forKeyedSubscript_(v7, v58, 0, v8);
}

void sub_275DE1848()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE18EC()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE1A94()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE1D48(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v5 = objc_msgSend_count(*(a1 + 32), a2, a3);
  if (v5 >= 2 && *(a1 + 56) == 1)
  {
    if (objc_msgSend_canTrimMovieSegmentsInContext_(KNRecordingMovieSegmentTrimmer, v4, *(a1 + 40)))
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 48), v6, v7);
      v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v10 = 1;
      do
      {
        v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v8, v10 - 1);
        objc_msgSend_startTime(v11, v12, v13);
        v15 = v14;
        v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v16, v10);
        objc_msgSend_startTime(v17, v18, v19);
        v21 = v20;

        v23 = v21 - v15;
        if (v23 <= 0.0)
        {
          objc_msgSend_addIndex_(v9, v22, v10 - 1);
        }

        else
        {
          v24 = [KNRecordingMovieSegmentTrimmer alloc];
          v26 = objc_msgSend_initWithMovieSegment_trimDuration_(v24, v25, v11, v23);
          v27 = dispatch_semaphore_create(0);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = sub_275DE2004;
          v30[3] = &unk_27A6990C8;
          v31 = *(a1 + 32);
          v33 = &v35;
          v34 = v10 - 1;
          v28 = v27;
          v32 = v28;
          objc_msgSend_trimMovieSegmentWithCompletionHandler_(v26, v29, v30);
          dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v10;
      }

      while (v5 != v10);
      objc_msgSend_removeObjectsAtIndexes_(*(a1 + 32), v8, v9);
    }

    else
    {
      *(v36 + 24) = 1;
    }
  }

  objc_storeStrong((*(a1 + 48) + 64), *(a1 + 32));
  *(*(a1 + 48) + 72) = *(v36 + 24) ^ 1;
  _Block_object_dispose(&v35, 8);
}

void sub_275DE1F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275DE2004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v3, v3, *(a1 + 56));
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_275DE244C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EB470 = &unk_2884D63B8;
  *algn_2812EB478 = 0;
  dword_2812EB480 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE24C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DE4498(&unk_2812EAA50, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2534(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DED580(&unk_2812EAD30, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE25A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEA0D4(qword_2812EAC18, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2614(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DE92E4(&unk_2812EABD0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2684(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEACE0(&unk_2812EAC50, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE26F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EAB68 = v4;
  qword_2812EAB60 = &unk_2884D5548;
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812EAB96 = 0u;
  unk_2812EAB88 = 0u;
  unk_2812EAB78 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE27B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EABB0 = v4;
  qword_2812EABA8 = &unk_2884D55F8;
  if (atomic_load_explicit(dword_2812EA070, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EABC8 = 0;
  qword_2812EABC0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2864(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E00180(&unk_2812EB3D0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE28D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEF034(qword_2812EADB8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2944(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEF9B0(qword_2812EADF0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE29B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EB1E8 = 0;
  unk_2812EB1F0 = 0;
  qword_2812EB1E0 = &unk_2884D6048;
  qword_2812EB1F8 = 0;
  unk_2812EB200 = 0;
  byte_2812EB208 = 1;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2A38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EB610 = v4;
  qword_2812EB608 = &unk_2884D6728;
  if (atomic_load_explicit(dword_2812EA118, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB620 = 0;
  unk_2812EB628 = 0;
  qword_2812EB630 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2AEC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB368 = v4;
  qword_2812EB360 = &unk_2884D61A8;
  if (atomic_load_explicit(dword_2812EA140, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB378 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2B9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DFF4B4(qword_2812EB380, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2C0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E19198(qword_2812EBD48, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2C7C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBC88 = v4;
  qword_2812EBC80 = &unk_2884D76F8;
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EBCC8 = 0;
  unk_2812EBCB8 = 0u;
  unk_2812EBCA8 = 0u;
  unk_2812EBC98 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2D3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E17764(&unk_2812EBCD0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2DAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBD28 = v4;
  qword_2812EBD20 = &unk_2884D7858;
  if (atomic_load_explicit(dword_2812EA1F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EBD40 = 0;
  qword_2812EBD38 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2E60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E19CC8(qword_2812EBD90, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2ED0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EBDD0 = 0;
  unk_2812EBDD8 = 0;
  qword_2812EBDC8 = &unk_2884D7A68;
  qword_2812EBDE0 = 0;
  dword_2812EBDE8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2F50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E15710(&unk_2812EBBF8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2FC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC178 = v4;
  qword_2812EC170 = &unk_2884D7C78;
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC188 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3070(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC140 = v4;
  qword_2812EC138 = &unk_2884D7BC8;
  if (atomic_load_explicit(dword_2812EA2A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC150 = 0;
  unk_2812EC158 = 0;
  dword_2812EC168 = 0;
  qword_2812EC160 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3128(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E1AB2C(&unk_2812EBDF0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3198(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E12248(qword_2812EBAC8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3208(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EADA0 = v4;
  qword_2812EAD98 = &unk_2884D5A18;
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EADB0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE32B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E08518(&unk_2812EB6C0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3328(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB6A0 = v4;
  qword_2812EB698 = &unk_2884D6938;
  if (atomic_load_explicit(dword_2812EA390, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB6B0 = 0;
  unk_2812EB6B8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE33D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EAD78 = v4;
  qword_2812EAD70 = &unk_2884D5968;
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EAD90 = 0;
  qword_2812EAD88 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE348C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBBE0 = v4;
  qword_2812EBBD8 = &unk_2884D7598;
  if (atomic_load_explicit(dword_2812EA3D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBBF0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE353C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0B488(qword_2812EB848, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE35AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0C440(&unk_2812EB8B8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE361C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EB948 = 0;
  unk_2812EB950 = 0;
  qword_2812EB940 = &unk_2884D6CA8;
  byte_2812EB958 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3698(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0E9E0(&unk_2812EB998, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3708(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0E0B8(qword_2812EB960, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3778(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EBA10 = v4;
  qword_2812EBA08 = &unk_2884D6F68;
  if (atomic_load_explicit(dword_2812EA4C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBA20 = 0;
  unk_2812EBA28 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3828(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E1101C(&unk_2812EBA50, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3898(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E119AC(&unk_2812EBA90, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3908(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB9E0 = v4;
  qword_2812EB9D8 = &unk_2884D6EB8;
  if (atomic_load_explicit(dword_2812EA528, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB9F0 = 0;
  unk_2812EB9F8 = 0;
  qword_2812EBA00 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE39BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBA38 = v4;
  qword_2812EBA30 = &unk_2884D7018;
  dword_2812EBA48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3A40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB920 = v4;
  qword_2812EB918 = &unk_2884D6BF8;
  if (atomic_load_explicit(dword_2812EA568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EB938 = 0;
  qword_2812EB930 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3AF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0433C(&unk_2812EB590, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3B64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF1B58(&unk_2812EAEB0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3BD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF13EC(&unk_2812EAE80, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3C44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF0D04(qword_2812EAE58, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3CB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF04A4(qword_2812EAE30, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3D24(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E1443C(qword_2812EBB80, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3D94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBB60 = v4;
  qword_2812EBB58 = &unk_2884D7438;
  if (atomic_load_explicit(dword_2812EA6A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBB70 = 0;
  unk_2812EBB78 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3E44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF7204(&unk_2812EB0B8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3EB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF693C(qword_2812EB080, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3F24(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBB40 = v4;
  qword_2812EBB38 = &unk_2884D7388;
  if (atomic_load_explicit(dword_2812EA728, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBB50 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3FD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EB670 = v4;
  qword_2812EB668 = &unk_2884D6888;
  if (atomic_load_explicit(dword_2812EA748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB680 = 0;
  unk_2812EB688 = 0;
  dword_2812EB690 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE4088(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB640 = v4;
  qword_2812EB638 = &unk_2884D67D8;
  if (atomic_load_explicit(dword_2812EA770, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB650 = 0;
  unk_2812EB658 = 0;
  unk_2812EB65D = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE413C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E03A04(qword_2812EB558, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE41AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E12B2C(&unk_2812EBAF8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE421C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E02064(&unk_2812EB4B0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE428C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E01804(qword_2812EB488, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE42FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EAB48 = v4;
  qword_2812EAB40 = &unk_2884D5498;
  if (atomic_load_explicit(dword_2812EA828, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EAB58 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE43AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DE609C(&unk_2812EAAD8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE441C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DFB2C8(&unk_2812EB210, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE4498(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5338;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812E9F68, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

uint64_t sub_275DE4520(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2884D5338;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_275E22484((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 16);
  }

  v6 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 32) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 40) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 48) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 56) = v6;
  if ((v4 & 0x10) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  if ((v4 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v4 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v4 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v4 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  return a1;
}

uint64_t sub_275DE4794(uint64_t a1)
{
  sub_275DE47C8(a1);
  sub_275DE4968((a1 + 8));
  return a1;
}

uint64_t sub_275DE47C8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 48);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C8F960](v6, 0x1012C40EC159624);
  }

  v7 = *(v1 + 56);
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277C8F960](v7, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAA50)
  {
    v8 = *(v1 + 64);
    if (v8)
    {
      TSP::Color::~Color(v8);
      MEMORY[0x277C8F960]();
    }

    if (*(v1 + 72))
    {
      v9 = MEMORY[0x277C8E820]();
      MEMORY[0x277C8F960](v9, 0x10A1C405E354A75);
    }

    if (*(v1 + 80))
    {
      v10 = MEMORY[0x277C8E820]();
      MEMORY[0x277C8F960](v10, 0x10A1C405E354A75);
    }

    result = *(v1 + 88);
    if (result)
    {
      MEMORY[0x277C8E820]();

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

uint64_t *sub_275DE4968(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DE4A00(uint64_t a1)
{
  sub_275DE4794(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DE4A40(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v8 = result[6] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_39:
    result = TSP::Color::Clear(result[8]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_40;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_27:
  v7 = result[5] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_35:
  v9 = result[7] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_40:
  result = TSD::PathSourceArchive::Clear(v1[9]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::PathSourceArchive::Clear(v1[10]);
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = TSD::PathSourceArchive::Clear(v1[11]);
  }

  if ((v2 & 0xFE00) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 6) = 0u;
    *(v1 + 7) = 0u;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DE4BEC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v48 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v48) & 1) == 0)
  {
    while (1)
    {
      v7 = (v48 + 1);
      v8 = *v48;
      if (*v48 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v48, (v9 - 128));
          v48 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_90;
          }

          v7 = TagFallback;
          v8 = v11;
          goto LABEL_7;
        }

        v7 = (v48 + 2);
      }

      v48 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_52;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_52;
        case 3u:
          if (v8 != 25)
          {
            goto LABEL_71;
          }

          v18 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x200u;
          *(a1 + 96) = v18;
          goto LABEL_27;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_71;
          }

          v5 |= 0x800u;
          v22 = (v7 + 1);
          LODWORD(v23) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          v24 = *v22;
          v23 = (v23 + (v24 << 7) - 128);
          if (v24 < 0)
          {
            v42 = google::protobuf::internal::VarintParseSlow32(v7, v23);
            v48 = v42;
            *(a1 + 112) = v43;
            if (!v42)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_37:
            v48 = v22;
            *(a1 + 112) = v23;
          }

          goto LABEL_79;
        case 5u:
          if (v8 != 41)
          {
            goto LABEL_71;
          }

          v14 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x400u;
          *(a1 + 104) = v14;
          goto LABEL_27;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_71;
          }

          v5 |= 0x4000u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v44 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v48 = v44;
            *(a1 + 128) = v45 != 0;
            if (!v44)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_49:
            v48 = v28;
            *(a1 + 128) = v27 != 0;
          }

          goto LABEL_79;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x20u;
          v31 = *(a1 + 64);
          if (!v31)
          {
            v32 = *(a1 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = MEMORY[0x277C8F010](v32);
            LODWORD(v31) = v33;
            *(a1 + 64) = v33;
            v7 = v48;
          }

          v30 = sub_275E5B69C(a3, v31, v7);
          goto LABEL_78;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x40u;
          v15 = *(a1 + 72);
          if (v15)
          {
            goto LABEL_70;
          }

          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = MEMORY[0x277C8EFB0](v25);
          LODWORD(v15) = v26;
          *(a1 + 72) = v26;
          goto LABEL_69;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x80u;
          v15 = *(a1 + 80);
          if (v15)
          {
            goto LABEL_70;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = MEMORY[0x277C8EFB0](v37);
          LODWORD(v15) = v38;
          *(a1 + 80) = v38;
          goto LABEL_69;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 88);
          if (v15)
          {
            goto LABEL_70;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C8EFB0](v16);
          LODWORD(v15) = v17;
          *(a1 + 88) = v17;
LABEL_69:
          v7 = v48;
LABEL_70:
          v30 = sub_275E5B76C(a3, v15, v7);
          goto LABEL_78;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_71;
          }

          v5 |= 0x1000u;
          v34 = (v7 + 1);
          LODWORD(v35) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v36 = *v34;
          v35 = (v35 + (v36 << 7) - 128);
          if (v36 < 0)
          {
            v46 = google::protobuf::internal::VarintParseSlow32(v7, v35);
            v48 = v46;
            *(a1 + 116) = v47;
            if (!v46)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_63:
            v48 = v34;
            *(a1 + 116) = v35;
          }

          goto LABEL_79;
        case 0xCu:
          if (v8 != 97)
          {
            goto LABEL_71;
          }

          v13 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x2000u;
          *(a1 + 120) = v13;
LABEL_27:
          v48 = v12;
          goto LABEL_79;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 4u;
          goto LABEL_52;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 8u;
          goto LABEL_52;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x10u;
LABEL_52:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v30 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_78;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_71;
          }

          v5 |= 0x8000u;
          v20 = (v7 + 1);
          v19 = *v7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            v40 = google::protobuf::internal::VarintParseSlow64(v7, v19);
            v48 = v40;
            *(a1 + 129) = v41 != 0;
            if (!v40)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v20 = (v7 + 2);
LABEL_32:
            v48 = v20;
            *(a1 + 129) = v19 != 0;
          }

          goto LABEL_79;
        default:
LABEL_71:
          if (v8)
          {
            v39 = (v8 & 7) == 4;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v30 = google::protobuf::internal::UnknownFieldParse();
LABEL_78:
          v48 = v30;
          if (!v30)
          {
LABEL_90:
            v48 = 0;
            goto LABEL_2;
          }

LABEL_79:
          if (sub_275E221E8(a3, &v48))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

unsigned __int8 *sub_275DE51A0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_4:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_5;
    }

LABEL_23:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 112);
    *v4 = 32;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 96);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_6;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 104);
  *v4 = 41;
  *(v4 + 1) = v12;
  v4 += 9;
  if ((v6 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 128);
  *v4 = 48;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 64);
  *v4 = 58;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v14, v16, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(a1 + 72);
  *v4 = 66;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v4 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v4[2] = v23;
      v22 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v21;
    v22 = v4 + 2;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v20, v22, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 80);
  *v4 = 74;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = v4 + 3;
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      v4[2] = v29;
      v28 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v27;
    v28 = v4 + 2;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v26, v28, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_11:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

LABEL_80:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v38 = *(a1 + 116);
    *v4 = 88;
    if (v38 > 0x7F)
    {
      v4[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++v4;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(v4 - 1) = v40;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v4[2] = v39;
        v4 += 3;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      v4[1] = v38;
      v4 += 2;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_91;
      }
    }

LABEL_13:
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(a1 + 88);
  *v4 = 82;
  v33 = *(v32 + 5);
  if (v33 > 0x7F)
  {
    v4[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = v4 + 3;
      do
      {
        *(v34 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v34;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v34 - 1) = v36;
    }

    else
    {
      v4[2] = v35;
      v34 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v33;
    v34 = v4 + 2;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v32, v34, a3);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_80;
  }

LABEL_12:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_13;
  }

LABEL_91:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(a1 + 120);
  *v4 = 97;
  *(v4 + 1) = v42;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_14:
    if ((v6 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_95;
  }

LABEL_94:
  v4 = sub_275DE5774(a3, 13, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_15:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_96;
  }

LABEL_95:
  v4 = sub_275DE5774(a3, 14, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_97;
  }

LABEL_96:
  v4 = sub_275DE5774(a3, 15, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_100;
  }

LABEL_97:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(a1 + 129);
  *v4 = 384;
  v4[2] = v43;
  v4 += 3;
LABEL_100:
  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v44 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DE5774(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB50]();
}

uint64_t sub_275DE58A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_43:
  v21 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = TSP::Color::ByteSizeLong(*(a1 + 64));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_47:
  v25 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 72));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 80));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v11 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 88));
      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v12 = v3 + 9;
    if ((v2 & 0x200) == 0)
    {
      v12 = v3;
    }

    if ((v2 & 0x400) != 0)
    {
      v12 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      v12 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x1000) != 0)
    {
      v12 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x2000) != 0)
    {
      v12 += 9;
    }

    v13 = v12 + ((v2 >> 13) & 2);
    if ((v2 & 0x8000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275DE5BE0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D18, 0);
  if (v4)
  {

    return sub_275DE5C88(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE5C88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

LABEL_14:
    *(v3 + 16) |= 8u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(v3 + 16) |= 0x10u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x20) == 0)
    {
LABEL_24:
      v9 = MEMORY[0x277D804C8];
      if ((v5 & 0x40) != 0)
      {
        *(v3 + 16) |= 0x40u;
        v10 = *(v3 + 72);
        if (!v10)
        {
          v11 = *(v3 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8EFB0](v11);
          *(v3 + 72) = v10;
        }

        if (*(a2 + 72))
        {
          v12 = *(a2 + 72);
        }

        else
        {
          v12 = v9;
        }

        result = TSD::PathSourceArchive::MergeFrom(v10, v12);
      }

      if ((v5 & 0x80) != 0)
      {
        *(v3 + 16) |= 0x80u;
        v13 = *(v3 + 80);
        if (!v13)
        {
          v14 = *(v3 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C8EFB0](v14);
          *(v3 + 80) = v13;
        }

        if (*(a2 + 80))
        {
          v15 = *(a2 + 80);
        }

        else
        {
          v15 = v9;
        }

        result = TSD::PathSourceArchive::MergeFrom(v13, v15);
      }

      goto LABEL_42;
    }

LABEL_16:
    *(v3 + 16) |= 0x20u;
    v6 = *(v3 + 64);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8F010](v7);
      *(v3 + 64) = v6;
    }

    if (*(a2 + 64))
    {
      v8 = *(a2 + 64);
    }

    else
    {
      v8 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v6, v8);
    goto LABEL_24;
  }

LABEL_42:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v16 = *(v3 + 88);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C8EFB0](v17);
      *(v3 + 88) = v16;
    }

    if (*(a2 + 88))
    {
      v18 = *(a2 + 88);
    }

    else
    {
      v18 = MEMORY[0x277D804C8];
    }

    result = TSD::PathSourceArchive::MergeFrom(v16, v18);
    if ((v5 & 0x200) == 0)
    {
LABEL_45:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_63;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  *(v3 + 96) = *(a2 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_46:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v3 + 104) = *(a2 + 104);
  if ((v5 & 0x800) == 0)
  {
LABEL_47:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v3 + 112) = *(a2 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_48:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v3 + 116) = *(a2 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_49:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

LABEL_67:
    *(v3 + 128) = *(a2 + 128);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_66:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_67;
  }

LABEL_50:
  if ((v5 & 0x8000) != 0)
  {
LABEL_51:
    *(v3 + 129) = *(a2 + 129);
  }

LABEL_52:
  *(v3 + 16) |= v5;
  return result;
}

uint64_t *sub_275DE5FA4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE4A40(result);

    return sub_275DE5BE0(v4, a2);
  }

  return result;
}

uint64_t sub_275DE5FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSD::PathSourceArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::PathSourceArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = TSD::PathSourceArchive::IsInitialized(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DE609C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D53E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA848, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x100000001;
  return a1;
}

uint64_t sub_275DE6128(uint64_t a1)
{
  sub_275DE615C(a1);
  sub_275DE4968((a1 + 8));
  return a1;
}

uint64_t sub_275DE615C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAAD8)
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      TSP::Color::~Color(v5);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 48);
    if (result)
    {
      sub_275DE4794(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DE625C(uint64_t a1)
{
  sub_275DE6128(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DE629C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  result = TSP::Color::Clear(result[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_275DE4A40(v1[6]);
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    v1[7] = 0;
    v1[8] = 0;
    *(v1 + 18) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
    *(v1 + 23) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 22) = 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DE63AC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v65 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v65) & 1) == 0)
  {
    while (1)
    {
      v7 = (v65 + 1);
      v8 = *v65;
      if (*v65 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v65, (v9 - 128));
          v65 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_116;
          }

          v7 = TagFallback;
          v8 = v11;
          goto LABEL_7;
        }

        v7 = (v65 + 2);
      }

      v65 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_33;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 2u;
LABEL_33:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v23 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_92;
        case 3u:
          if (v8 != 25)
          {
            goto LABEL_85;
          }

          v33 = *v7;
          v18 = (v7 + 8);
          v5 |= 0x10u;
          *(a1 + 56) = v33;
          goto LABEL_84;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_85;
          }

          v5 |= 0x20u;
          v30 = (v7 + 1);
          LODWORD(v31) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          v32 = *v30;
          v31 = (v31 + (v32 << 7) - 128);
          if (v32 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow32(v7, v31);
            v65 = v59;
            *(a1 + 64) = v60;
            if (!v59)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_48:
            v65 = v30;
            *(a1 + 64) = v31;
          }

          goto LABEL_93;
        case 5u:
          if (v8 != 45)
          {
            goto LABEL_85;
          }

          v19 = *v7;
          v18 = (v7 + 4);
          v5 |= 0x40u;
          *(a1 + 68) = v19;
          goto LABEL_84;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_85;
          }

          v5 |= 0x2000u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            v65 = v55;
            *(a1 + 87) = v56 != 0;
            if (!v55)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v25 = (v7 + 2);
LABEL_38:
            v65 = v25;
            *(a1 + 87) = v24 != 0;
          }

          goto LABEL_93;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 4u;
          v34 = *(a1 + 40);
          if (!v34)
          {
            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = MEMORY[0x277C8F010](v35);
            LODWORD(v34) = v36;
            *(a1 + 40) = v36;
            v7 = v65;
          }

          v23 = sub_275E5B69C(a3, v34, v7);
          goto LABEL_92;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 8u;
          v37 = *(a1 + 48);
          if (!v37)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = sub_275E1F5E0(v38);
            *(a1 + 48) = v37;
            v7 = v65;
          }

          v23 = sub_275E5B83C(a3, v37, v7);
          goto LABEL_92;
        case 9u:
          if (v8 != 77)
          {
            goto LABEL_85;
          }

          v48 = *v7;
          v18 = (v7 + 4);
          v5 |= 0x80u;
          *(a1 + 72) = v48;
          goto LABEL_84;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_85;
          }

          v5 |= 0x100u;
          v45 = (v7 + 1);
          LODWORD(v46) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

          v47 = *v45;
          v46 = (v46 + (v47 << 7) - 128);
          if (v47 < 0)
          {
            v63 = google::protobuf::internal::VarintParseSlow32(v7, v46);
            v65 = v63;
            *(a1 + 76) = v64;
            if (!v63)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v45 = (v7 + 2);
LABEL_79:
            v65 = v45;
            *(a1 + 76) = v46;
          }

          goto LABEL_93;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_85;
          }

          v5 |= 0x200u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if (v17 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow32(v7, v16);
            v65 = v51;
            *(a1 + 80) = v52;
            if (!v51)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_23:
            v65 = v15;
            *(a1 + 80) = v16;
          }

          goto LABEL_93;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_85;
          }

          v5 |= 0x400u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v65 = v57;
            *(a1 + 84) = v58 != 0;
            if (!v57)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_43:
            v65 = v28;
            *(a1 + 84) = v27 != 0;
          }

          goto LABEL_93;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_85;
          }

          v5 |= 0x800u;
          v21 = (v7 + 1);
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v65 = v53;
            *(a1 + 85) = v54 != 0;
            if (!v53)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v21 = (v7 + 2);
LABEL_30:
            v65 = v21;
            *(a1 + 85) = v20 != 0;
          }

          goto LABEL_93;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_85;
          }

          v13 = (v7 + 1);
          v12 = *v7;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v65 = google::protobuf::internal::VarintParseSlow64(v7, v12);
            if (!v65)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v13 = (v7 + 2);
LABEL_16:
            v65 = v13;
          }

          if ((v12 - 1) > 4)
          {
            sub_275E5F558();
          }

          else
          {
            *(a1 + 16) |= 0x8000u;
            *(a1 + 92) = v12;
          }

          goto LABEL_93;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_85;
          }

          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v65 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            if (!v65)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_67:
            v65 = v40;
          }

          if ((v39 - 1) > 3)
          {
            sub_275E5F51C();
          }

          else
          {
            *(a1 + 16) |= 0x10000u;
            *(a1 + 96) = v39;
          }

          goto LABEL_93;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_85;
          }

          v5 |= 0x1000u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v61 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v65 = v61;
            *(a1 + 86) = v62 != 0;
            if (!v61)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_74:
            v65 = v43;
            *(a1 + 86) = v42 != 0;
          }

          goto LABEL_93;
        case 0x12u:
          if (v8 != 149)
          {
            goto LABEL_85;
          }

          v49 = *v7;
          v18 = (v7 + 4);
          v5 |= 0x4000u;
          *(a1 + 88) = v49;
LABEL_84:
          v65 = v18;
          goto LABEL_93;
        default:
LABEL_85:
          if (v8)
          {
            v50 = (v8 & 7) == 4;
          }

          else
          {
            v50 = 1;
          }

          if (v50)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_92:
          v65 = v23;
          if (!v23)
          {
LABEL_116:
            v65 = 0;
            goto LABEL_2;
          }

LABEL_93:
          if (sub_275E221E8(a3, &v65))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v65;
}

unsigned __int8 *sub_275DE6A84(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 64);
    *v4 = 32;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 56);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 68);
  *v4 = 45;
  *(v4 + 1) = v12;
  v4 += 5;
  if ((v6 & 0x2000) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 87);
  *v4 = 48;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 40);
  *v4 = 58;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v14, v16, a3);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

LABEL_51:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(a1 + 48);
  *v4 = 66;
  v21 = *(v20 + 20);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v4 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v4[2] = v23;
      v22 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v21;
    v22 = v4 + 2;
  }

  v4 = sub_275DE51A0(v20, v22, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 72);
  *v4 = 77;
  *(v4 + 1) = v26;
  v4 += 5;
  if ((v6 & 0x100) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_75:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 80);
    *v4 = 88;
    if (v31 > 0x7F)
    {
      v4[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v4;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v4 - 1) = v33;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_86;
      }
    }

LABEL_13:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_89;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 76);
  *v4 = 80;
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v28 = v27 >> 7;
    if (v27 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v4;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v4 - 1) = v29;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v4[2] = v28;
      v4 += 3;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_75;
      }
    }
  }

  else
  {
    v4[1] = v27;
    v4 += 2;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_75;
    }
  }

LABEL_12:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_13;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 84);
  *v4 = 96;
  v4[1] = v35;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_14:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_92;
  }

LABEL_89:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(a1 + 85);
  *v4 = 104;
  v4[1] = v36;
  v4 += 2;
  if ((v6 & 0x8000) == 0)
  {
LABEL_15:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

LABEL_103:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(a1 + 96);
    *v4 = 384;
    if (v41 > 0x7F)
    {
      v4[2] = v41 | 0x80;
      v42 = v41 >> 7;
      if (v41 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          ++v4;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(v4 - 1) = v43;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v4[3] = v42;
        v4 += 4;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
      v4[2] = v41;
      v4 += 3;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_114;
      }
    }

LABEL_17:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_117;
  }

LABEL_92:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(a1 + 92);
  *v4 = 120;
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v38 = v37 >> 7;
    if (v37 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v4;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v4 - 1) = v39;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v4[2] = v38;
      v4 += 3;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_103;
      }
    }
  }

  else
  {
    v4[1] = v37;
    v4 += 2;
    if ((v6 & 0x10000) != 0)
    {
      goto LABEL_103;
    }
  }

LABEL_16:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_17;
  }

LABEL_114:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(a1 + 86);
  *v4 = 392;
  v4[2] = v45;
  v4 += 3;
  if ((v6 & 0x4000) != 0)
  {
LABEL_117:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v46 = *(a1 + 88);
    *v4 = 405;
    *(v4 + 2) = v46;
    v4 += 6;
  }

LABEL_120:
  v47 = *(a1 + 8);
  if ((v47 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v47 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DE7130(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v20 = TSP::Color::ByteSizeLong(*(a1 + 40));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v2 & 8) != 0)
  {
LABEL_14:
    v11 = sub_275DE58A0(*(a1 + 48));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v12 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v12 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x40) != 0)
  {
    v12 += 5;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v12 + 5;
  }

  else
  {
    v4 = v12;
  }

LABEL_24:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x200) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v13 = v4 + ((v2 >> 10) & 2) + ((v2 >> 9) & 2);
    if ((v2 & 0x1000) != 0)
    {
      v13 += 3;
    }

    v14 = v13 + ((v2 >> 12) & 2);
    if ((v2 & 0x4000) != 0)
    {
      v4 = v14 + 6;
    }

    else
    {
      v4 = v14;
    }

    if ((v2 & 0x8000) != 0)
    {
      v15 = *(a1 + 92);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      v4 += v17;
    }
  }

  if ((v2 & 0x10000) != 0)
  {
    v18 = *(a1 + 96);
    if (v18 < 0)
    {
      v19 = 12;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v4 += v19;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275DE73E4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D30, 0);
  if (v4)
  {

    return sub_275DE748C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE748C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 4u;
    v7 = *(v3 + 40);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C8F010](v8);
      *(v3 + 40) = v7;
    }

    if (*(a2 + 40))
    {
      v9 = *(a2 + 40);
    }

    else
    {
      v9 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v7, v9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(v3 + 16) |= 8u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = sub_275E1F5E0(v11);
      *(v3 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = &unk_2812EAA50;
    }

    result = sub_275DE5C88(v10, v12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_13;
    }

LABEL_48:
    *(v3 + 68) = *(a2 + 68);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 76) = *(a2 + 76);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 80) = *(a2 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v3 + 84) = *(a2 + 84);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v3 + 85) = *(a2 + 85);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v3 + 86) = *(a2 + 86);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_56:
    *(v3 + 88) = *(a2 + 88);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_55:
  *(v3 + 87) = *(a2 + 87);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_56;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 92) = *(a2 + 92);
  }

LABEL_24:
  *(v3 + 16) |= v5;
LABEL_25:
  if ((v5 & 0x10000) != 0)
  {
    v6 = *(a2 + 96);
    *(v3 + 16) |= 0x10000u;
    *(v3 + 96) = v6;
  }

  return result;
}

uint64_t *sub_275DE76E4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE629C(result);

    return sub_275DE73E4(v4, a2);
  }

  return result;
}

uint64_t sub_275DE7730(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_275DE5FF0(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275DE77B4(uint64_t *a1)
{
  if (a1 != &qword_2812EAB40)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275DE6128(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C40E6413DF5);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DE7818(uint64_t *a1)
{
  sub_275DE77B4(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DE7858(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_275DE629C(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275DE78B4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_275E221E8(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 18)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = sub_275E1F66C(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_275E5B90C(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *sub_275DE79FC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 18;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_275DE6A84(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DE7AEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_275DE7130(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275DE7B78(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D48, 0);
  if (v4)
  {

    return sub_275DE7C20(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE7C20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_275E1F66C(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &unk_2812EAAD8;
    }

    return sub_275DE748C(v6, v8);
  }

  return result;
}

uint64_t *sub_275DE7CC8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE7858(result);

    return sub_275DE7B78(v4, a2);
  }

  return result;
}

uint64_t sub_275DE7D14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_275DE7730(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275DE7D64(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5548;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 54) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

uint64_t *sub_275DE7DD8(uint64_t *a1)
{
  if (a1 != &qword_2812EAB60)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275DE8CE8(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C40C05B56FCLL);
    }

    v5 = a1[5];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DE7E7C(uint64_t *a1)
{
  sub_275DE7DD8(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DE7EBC()
{
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EAB60;
}

uint64_t *sub_275DE7EFC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_275DE7F94(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSP::UUID::Clear(v1[5]);
    }
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    v1[6] = 0;
    v1[7] = 0;
    *(v1 + 62) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

uint64_t *sub_275DE7F94(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::UUID::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275DE7FF4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v42 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v42) & 1) == 0)
  {
    while (1)
    {
      v7 = (v42 + 1);
      v8 = *v42;
      if ((*v42 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v42, (v9 - 128));
      v42 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 != 58)
            {
              goto LABEL_61;
            }

            *(a1 + 16) |= 2u;
            v33 = *(a1 + 32);
            if (!v33)
            {
              v34 = *(a1 + 8);
              if (v34)
              {
                v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = sub_275E1F89C(v34);
              *(a1 + 32) = v33;
              v7 = v42;
            }

            v23 = sub_275E5BAAC(a3, v33, v7);
          }

          else
          {
            if (v10 == 8 && v8 == 66)
            {
              *(a1 + 16) |= 4u;
              v20 = *(a1 + 40);
              if (!v20)
              {
                v21 = *(a1 + 8);
                if (v21)
                {
                  v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
                }

                v22 = MEMORY[0x277C8F000](v21);
                LODWORD(v20) = v22;
                *(a1 + 40) = v22;
                v7 = v42;
              }

              v23 = sub_275E5BB7C(a3, v20, v7);
              goto LABEL_68;
            }

LABEL_61:
            if (v8)
            {
              v35 = (v8 & 7) == 4;
            }

            else
            {
              v35 = 1;
            }

            if (v35)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_275E22260((a1 + 8));
            }

            v23 = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_68:
          v42 = v23;
          if (!v23)
          {
            goto LABEL_78;
          }

          goto LABEL_69;
        }

        if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_61;
          }

          v5 |= 0x40u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_51:
            v42 = v30;
            *(a1 + 68) = v29 != 0;
            goto LABEL_69;
          }

          v36 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v42 = v36;
          *(a1 + 68) = v37 != 0;
          if (!v36)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_61;
          }

          v5 |= 0x80u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v42 = v16;
            *(a1 + 69) = v15 != 0;
            goto LABEL_69;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v42 = v40;
          *(a1 + 69) = v41 != 0;
          if (!v40)
          {
LABEL_78:
            v42 = 0;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 25)
            {
              v32 = *v7;
              v18 = (v7 + 8);
              v5 |= 8u;
              *(a1 + 48) = v32;
              goto LABEL_54;
            }
          }

          else if (v10 == 4 && v8 == 33)
          {
            v19 = *v7;
            v18 = (v7 + 8);
            v5 |= 0x10u;
            *(a1 + 56) = v19;
LABEL_54:
            v42 = v18;
            goto LABEL_69;
          }

          goto LABEL_61;
        }

        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C8F050](v27);
              LODWORD(v26) = v28;
              *(a1 + 24) = v28;
              v7 = v42;
            }

            v23 = sub_275E5B9DC(a3, v26, v7);
            goto LABEL_68;
          }

          goto LABEL_61;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_61;
        }

        v5 |= 0x20u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v42 = v12;
          *(a1 + 64) = v13;
          goto LABEL_69;
        }

        v38 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v42 = v38;
        *(a1 + 64) = v39;
        if (!v38)
        {
          goto LABEL_78;
        }
      }

LABEL_69:
      if (sub_275E221E8(a3, &v42))
      {
        goto LABEL_2;
      }
    }

    v7 = (v42 + 2);
LABEL_6:
    v42 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v42;
}

unsigned __int8 *sub_275DE83CC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 64);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 8) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 24);
  *a2 = 10;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      a2[2] = v9;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 48);
  *a2 = 25;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(a1 + 56);
  *a2 = 33;
  *(a2 + 1) = v17;
  a2 += 9;
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 68);
  *a2 = 40;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 69);
  *a2 = 48;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 32);
  *a2 = 58;
  v21 = *(v20 + 20);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = sub_275DE8F64(v20, v22, a3);
  if ((v5 & 4) != 0)
  {
LABEL_53:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(a1 + 40);
    *a2 = 66;
    v27 = *(v26 + 5);
    if (v27 > 0x7F)
    {
      a2[1] = v27 | 0x80;
      v29 = v27 >> 7;
      if (v27 >> 14)
      {
        v28 = a2 + 3;
        do
        {
          *(v28 - 1) = v29 | 0x80;
          v30 = v29 >> 7;
          ++v28;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
        *(v28 - 1) = v30;
      }

      else
      {
        a2[2] = v29;
        v28 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v27;
      v28 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v26, v28, a3);
  }

LABEL_63:
  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DE876C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Reference::ByteSizeLong(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_275DE90E4(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSP::UUID::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v8 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v8 += 9;
  }

  if ((v2 & 0x20) != 0)
  {
    v8 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = v8 + ((v2 >> 6) & 2) + ((v2 >> 5) & 2);
LABEL_17:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275DE88D0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D60, 0);
  if (v4)
  {

    return sub_275DE8978(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE8978(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8F050](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275E1F89C(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812EABA8;
    }

    result = sub_275DE8B14(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8F000](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_12:
      *(v3 + 69) = *(a2 + 69);
      goto LABEL_13;
    }

LABEL_42:
    *(v3 + 68) = *(a2 + 68);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_275DE8B14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8F000](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      result = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_275DE8BC8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE7EFC(result);

    return sub_275DE88D0(v4, a2);
  }

  return result;
}

uint64_t sub_275DE8C14(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 16))
    {
      result = TSP::UUID::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DE8C80(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275DE8CE8(uint64_t *a1)
{
  if (a1 != &qword_2812EABA8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DE8D4C(uint64_t *a1)
{
  sub_275DE8CE8(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275DE8D8C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C8F000](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_275E5BB7C(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v13 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v23 = v14;
        *(a1 + 32) = v13;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_275E221E8(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *sub_275DE8F64(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}