void sub_275D4454C()
{
  v0 = dispatch_queue_create("com.apple.iWork.KNMotionBackground.imageGenerationQueue", 0);
  v1 = qword_280A3BF08;
  qword_280A3BF08 = v0;
}

void sub_275D45A60(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_275D46850(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((objc_msgSend_containsObject_(*(a1 + 32), v3, v5) & 1) == 0)
  {
    objc_msgSend_adoptStylesheet_withMapper_(v5, v4, *(a1 + 40), *(a1 + 48));
  }
}

id sub_275D46D5C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectUUID(a2, a2, a3);

  return v3;
}

void sub_275D46D8C()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A39EE8;
  qword_280A39EE8 = v0;
}

id sub_275D4859C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();

  return v3;
}

uint64_t sub_275D486D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_275D4B270(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_275D4C180(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_drawable(a2, a2, a3);
  v6 = objc_msgSend_containsObject_(v3, v5, v4);

  return v6;
}

BOOL sub_275D4C2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_drawable(v3, v4, v5);
  if (v8 == *(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v9 = objc_msgSend_animationType(v3, v6, v7) == *(a1 + 40);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_275D4EB98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275D4FED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_275D52794(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 192), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275D52944(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D5295C(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *(a1 + 48);
  if (v5 != objc_msgSend_count(v4, v6, v7))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNAbstractSlide loadFromArchive:unarchiver:]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 3184, 0, "Expected the number of info messages to match the number of unarchived infos.  Document is possibly corrupted.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v4;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v22, v26, 16);
  if (v19)
  {
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(&v22 + 1) + 8 * v21++), v18, *(a1 + 32), *(a1 + 56), v22);
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v22, v26, 16);
    }

    while (v19);
  }
}

void sub_275D52B3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v20 = v3;
  if (v4 != objc_msgSend_count(v3, v5, v6))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAbstractSlide loadFromArchive:unarchiver:]_block_invoke_2");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 3197, 0, "Expected the number of drawable z-order infos messages to match the number of unarchived infos.  Document is possibly corrupted.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_alloc(MEMORY[0x277CBEB40]);
  v17 = objc_msgSend_initWithArray_(v15, v16, v20);
  v18 = *(a1 + 32);
  v19 = *(v18 + 72);
  *(v18 + 72) = v17;
}

void sub_275D52C64(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_msgSend_initWithArray_(v4, v5, v3);
  v7 = *(a1 + 32);
  v8 = *(v7 + 200);
  *(v7 + 200) = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(*(a1 + 32) + 200);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v15, v19, 16);
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_setSlide_(*(*(&v15 + 1) + 8 * v14++), v11, *(a1 + 32), v15);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v15, v19, 16);
    }

    while (v12);
  }
}

void sub_275D52E0C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 176), a2);
  v5 = a2;
  objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(a1 + 32) + 176), v4, *(a1 + 32), *(a1 + 40));
}

void sub_275D52E94(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v3, v4, *(a1 + 40));
  }
}

void sub_275D52EFC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v3, *(a1 + 40), v4);
  }
}

void sub_275D52F64(uint64_t a1, const char *a2, uint64_t a3)
{
  v319 = *MEMORY[0x277D85DE8];
  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 72);
    if (v4 <= 0x51FF6E3FFLL)
    {
      objc_msgSend_p_updateChartBuildChunksImmediatelyWithoutUndoHistory(*(a1 + 32), a2, a3);
      v4 = *(a1 + 72);
    }

    if (v4 <= 0x520051B0FLL)
    {
      objc_msgSend_p_updateOverlappingBuildEventTriggers(*(a1 + 32), a2, a3);
    }
  }

  v297 = a1;
  obj = objc_msgSend_objectsPassingTest_(*(*(a1 + 32) + 200), a2, &unk_2884D4BA0);
  v7 = objc_msgSend_count(*(*(a1 + 32) + 200), v5, v6);
  if (v7 != objc_msgSend_count(obj, v8, v9))
  {
    if (KNBuildArchivingLogCat_init_token != -1)
    {
      sub_275E59CCC();
    }

    objc_msgSend_willModifyForUpgrade(*(v297 + 32), v10, v11);
    objc_storeStrong((*(v297 + 32) + 200), obj);
  }

  v12 = objc_msgSend_count(*(*(v297 + 32) + 208), v10, v11);
  v289 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v13, v12);
  v292 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v14, v15);
  v293 = objc_msgSend_setWithCapacity_(MEMORY[0x277CBEB58], v16, v12);
  v17 = MEMORY[0x277CBEB38];
  v20 = objc_msgSend_count(*(*(v297 + 32) + 208), v18, v19);
  v291 = objc_msgSend_dictionaryWithCapacity_(v17, v21, v20);
  for (i = 0; ; ++i)
  {
    v26 = objc_msgSend_count(*(*(v297 + 32) + 208), v22, v23);
    v27 = *(v297 + 32);
    if (i >= v26)
    {
      break;
    }

    v28 = objc_msgSend_objectAtIndexedSubscript_(v27[26], v25, i);
    v30 = objc_msgSend_containsObject_(v293, v29, v28);
    objc_msgSend_addObject_(v293, v31, v28);
    v35 = objc_msgSend_build(v28, v32, v33);
    if (v35 && !(v30 & 1 | ((objc_msgSend_containsObject_(*(*(v297 + 32) + 200), v34, v35) & 1) == 0)))
    {
      if (*(v297 + 97))
      {
        goto LABEL_24;
      }

      v38 = objc_msgSend_chunkIdentifier(v28, v34, v36);
      if (v38)
      {
        v39 = objc_msgSend_objectForKeyedSubscript_(v291, v37, v38);

        if (v39)
        {
          v42 = objc_msgSend_chunkCount(v35, v40, v41);
          if (v42 == objc_msgSend_expectedChunkCount(v35, v43, v44))
          {
            objc_msgSend_i_clearChunkIdentifier(v28, v45, v46);
            objc_msgSend_i_generateAndApplyNewChunkIdentifierToChunk_(v35, v47, v28);
          }

          else
          {
            objc_msgSend_addIndex_(v292, v45, i);
          }
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v291, v40, v28, v38);
        }
      }

      if (*(v297 + 97))
      {
LABEL_24:
        v48 = objc_msgSend_chunkIdentifier(v28, v34, v36);
        isValid = objc_msgSend_isValid(v48, v49, v50);

        if ((isValid & 1) == 0)
        {
          objc_msgSend_i_generateAndApplyNewChunkIdentifierToChunk_(v35, v34, v28);
        }
      }

      v52 = objc_msgSend_chunkIdentifier(v28, v34, v36);
      v55 = objc_msgSend_buildUUID(v52, v53, v54);

      if (v55)
      {
        v58 = objc_msgSend_objectUUID(v35, v56, v57);
        isEqual = objc_msgSend_isEqual_(v55, v59, v58);

        if (isEqual)
        {
          objc_msgSend_addObject_(v289, v61, v28);
        }
      }
    }

    else
    {
      objc_msgSend_addIndex_(v292, v34, i);
      if (KNBuildArchivingLogCat_init_token != -1)
      {
        sub_275E59D1C();
      }
    }
  }

  v62 = v297;
  objc_msgSend_p_updateBuildEffects_version_(v27, v25, *(v297 + 96), *(v297 + 80));
  if (objc_msgSend_count(v292, v63, v64))
  {
    if (KNBuildArchivingLogCat_init_token != -1)
    {
      sub_275E59CE0();
      v62 = v297;
    }

    v67 = objc_msgSend_mutableCopy(*(*(v62 + 32) + 208), v65, v66);
    objc_msgSend_removeObjectsAtIndexes_(v67, v68, v292);
    objc_msgSend_willModifyForUpgrade(*(v62 + 32), v69, v70);
    objc_storeStrong((*(v62 + 32) + 208), v67);
    objc_msgSend_p_updateChunkCount(*(v62 + 32), v71, v72);
  }

  v313 = 0u;
  v314 = 0u;
  v311 = 0u;
  v312 = 0u;
  v296 = v289;
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v296, v73, &v311, v318, 16);
  if (v76)
  {
    v77 = *v312;
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v312 != v77)
        {
          objc_enumerationMutation(v296);
        }

        v79 = *(*(&v311 + 1) + 8 * j);
        v80 = objc_msgSend_build(v79, v74, v75);
        objc_msgSend_i_registerBuildChunkIdentifierForChunk_(v80, v81, v79);
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v296, v74, &v311, v318, 16);
    }

    while (v76);
  }

  v82 = v297;
  objc_msgSend_p_updateStartAndEndOffsetsIfNecessaryForFileVersion_(*(v297 + 32), v83, *(v297 + 88));
  v290 = objc_msgSend_documentRoot(*(v297 + 32), v84, v85);
  v286 = objc_msgSend_show(v290, v86, v87);
  if (!v286)
  {
    v89 = MEMORY[0x277D81150];
    v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "[KNAbstractSlide loadFromArchive:unarchiver:]_block_invoke_11");
    v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v93, v90, v92, 3472, 0, "invalid nil value for '%{public}s'", "show");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95);
    v82 = v297;
  }

  if (!*(*(v82 + 32) + 72))
  {
    v96 = objc_alloc(MEMORY[0x277CBEB40]);
    v98 = objc_msgSend_initWithArray_(v96, v97, *(*(*(v82 + 40) + 8) + 40));
    v99 = *(v82 + 32);
    v100 = *(v99 + 72);
    *(v99 + 72) = v98;

    v82 = v297;
  }

  v101 = objc_alloc(MEMORY[0x277D802E8]);
  objc_msgSend_size(v286, v102, v103);
  v285 = objc_msgSend_initWithSize_(v101, v104, v105);
  v107 = objc_msgSend_backgroundWithSlide_andGeometry_(KNSlideBackgroundInfo, v106, *(v82 + 32));
  v108 = *(v82 + 32);
  v109 = *(v108 + 64);
  *(v108 + 64) = v107;

  v287 = *(*(v82 + 32) + 72);
  v112 = v297;
  if (*(*(*(v297 + 48) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115 = *(v297 + 32);
      v116 = *(*(*(v297 + 48) + 8) + 40);
      v117 = *(v115 + 152);
      *(v115 + 152) = v116;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(*(v297 + 32), v113, v114);
      v117 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v118, v119);
      v120 = [KNTitlePlaceholderInfo alloc];
      v122 = objc_msgSend_initWithKNPlaceholderInfo_(v120, v121, *(*(*(v297 + 48) + 8) + 40));
      v123 = *(v297 + 32);
      v124 = *(v123 + 152);
      *(v123 + 152) = v122;

      objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(*(v297 + 48) + 8) + 40), v125, v290);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(v297 + 32) + 152), v126, v290, v117);
      v129 = objc_msgSend_objectUUID(*(*(*(v297 + 48) + 8) + 40), v127, v128);
      objc_msgSend_setObjectUUID_(*(*(v297 + 32) + 152), v130, v129);

      v133 = objc_msgSend_textStorage(*(*(*(v297 + 48) + 8) + 40), v131, v132);
      v136 = objc_msgSend_objectUUID(v133, v134, v135);
      v139 = objc_msgSend_textStorage(*(*(v297 + 32) + 152), v137, v138);
      objc_msgSend_setObjectUUID_(v139, v140, v136);

      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(v297 + 32) + 152), v141, v290, v117);
      objc_msgSend_wasRemovedFromDocumentRoot_(*(*(*(v297 + 48) + 8) + 40), v142, v290);
      v145 = objc_msgSend_indexOfObject_(v287, v143, *(*(*(v297 + 48) + 8) + 40));
      if (v145 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v287, v144, v145, *(*(v297 + 32) + 152));
      }

      objc_msgSend_p_updateBuildsReplacingPlaceholder_withPlaceholder_(*(v297 + 32), v144, *(*(*(v297 + 48) + 8) + 40), *(*(v297 + 32) + 152));
    }

    v112 = v297;
    objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(v297 + 32) + 152), v146, *(v297 + 32), *(v297 + 98));
  }

  if (*(*(*(v112 + 56) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v149 = *(v112 + 32);
      v150 = *(*(*(v112 + 56) + 8) + 40);
      v151 = *(v149 + 160);
      *(v149 + 160) = v150;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(*(v112 + 32), v147, v148);
      v151 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v152, v153);
      v154 = [KNBodyPlaceholderInfo alloc];
      v156 = objc_msgSend_initWithKNPlaceholderInfo_(v154, v155, *(*(*(v112 + 56) + 8) + 40));
      v157 = *(v112 + 32);
      v158 = *(v157 + 160);
      *(v157 + 160) = v156;

      objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(*(v297 + 56) + 8) + 40), v159, v290);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(v297 + 32) + 160), v160, v290, v151);
      v163 = objc_msgSend_objectUUID(*(*(*(v297 + 56) + 8) + 40), v161, v162);
      objc_msgSend_setObjectUUID_(*(*(v297 + 32) + 160), v164, v163);

      v167 = objc_msgSend_textStorage(*(*(*(v297 + 56) + 8) + 40), v165, v166);
      v170 = objc_msgSend_objectUUID(v167, v168, v169);
      v173 = objc_msgSend_textStorage(*(*(v297 + 32) + 160), v171, v172);
      objc_msgSend_setObjectUUID_(v173, v174, v170);

      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(v297 + 32) + 160), v175, v290, v151);
      objc_msgSend_wasRemovedFromDocumentRoot_(*(*(*(v297 + 56) + 8) + 40), v176, v290);
      v179 = objc_msgSend_indexOfObject_(v287, v177, *(*(*(v297 + 56) + 8) + 40));
      if (v179 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v287, v178, v179, *(*(v297 + 32) + 160));
      }

      objc_msgSend_p_updateBuildsReplacingPlaceholder_withPlaceholder_(*(v297 + 32), v178, *(*(*(v297 + 56) + 8) + 40), *(*(v297 + 32) + 160));
    }

    v112 = v297;
    objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(v297 + 32) + 160), v180, *(v297 + 32), *(v297 + 98));
  }

  if (*(*(*(v112 + 64) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v183 = *(v112 + 32);
      v184 = *(*(*(v112 + 64) + 8) + 40);
      v185 = *(v183 + 168);
      *(v183 + 168) = v184;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(*(v112 + 32), v181, v182);
      v185 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v186, v187);
      v188 = [KNObjectPlaceholderInfo alloc];
      v190 = objc_msgSend_initWithKNPlaceholderInfo_(v188, v189, *(*(*(v112 + 64) + 8) + 40));
      v191 = *(v112 + 32);
      v192 = *(v191 + 168);
      *(v191 + 168) = v190;

      objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(*(v297 + 64) + 8) + 40), v193, v290);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(v297 + 32) + 168), v194, v290, v185);
      v197 = objc_msgSend_objectUUID(*(*(*(v297 + 64) + 8) + 40), v195, v196);
      objc_msgSend_setObjectUUID_(*(*(v297 + 32) + 168), v198, v197);

      v201 = objc_msgSend_textStorage(*(*(*(v297 + 64) + 8) + 40), v199, v200);
      v204 = objc_msgSend_objectUUID(v201, v202, v203);
      v207 = objc_msgSend_textStorage(*(*(v297 + 32) + 168), v205, v206);
      objc_msgSend_setObjectUUID_(v207, v208, v204);

      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(v297 + 32) + 168), v209, v290, v185);
      objc_msgSend_wasRemovedFromDocumentRoot_(*(*(*(v297 + 64) + 8) + 40), v210, v290);
      v213 = objc_msgSend_indexOfObject_(v287, v211, *(*(*(v297 + 64) + 8) + 40));
      if (v213 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v287, v212, v213, *(*(v297 + 32) + 168));
      }

      objc_msgSend_p_updateBuildsReplacingPlaceholder_withPlaceholder_(*(v297 + 32), v212, *(*(*(v297 + 64) + 8) + 40), *(*(v297 + 32) + 168));
    }

    objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(v297 + 32) + 168), v214, *(v297 + 32), *(v297 + 98));
  }

  v295 = objc_msgSend_array(MEMORY[0x277CBEB18], v110, v111);
  v309 = 0u;
  v310 = 0u;
  v307 = 0u;
  v308 = 0u;
  v215 = v287;
  v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v216, &v307, v317, 16);
  if (v217)
  {
    v218 = *v308;
    do
    {
      for (k = 0; k != v217; ++k)
      {
        if (*v308 != v218)
        {
          objc_enumerationMutation(v215);
        }

        objc_opt_class();
        v220 = TSUDynamicCast();
        v223 = v220;
        if (v220 && (objc_msgSend_isValidShapeToUnarchive(v220, v221, v222) & 1) == 0)
        {
          objc_msgSend_addObject_(v295, v224, v223);
        }
      }

      v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v225, &v307, v317, 16);
    }

    while (v217);
  }

  v306[0] = MEMORY[0x277D85DD0];
  v306[1] = 3221225472;
  v306[2] = sub_275D54330;
  v306[3] = &unk_27A697AD0;
  v306[4] = *(v297 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(v295, v226, v306);
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  v229 = objc_msgSend_allValues(*(*(v297 + 32) + 192), v227, v228);
  v233 = objc_msgSend_countByEnumeratingWithState_objects_count_(v229, v230, &v302, v316, 16);
  if (v233)
  {
    v234 = *v303;
    v235 = MEMORY[0x277D81408];
    do
    {
      v236 = 0;
      do
      {
        if (*v303 != v234)
        {
          objc_enumerationMutation(v229);
        }

        v237 = *(*(&v302 + 1) + 8 * v236);
        v238 = objc_msgSend_childInfos(*(v297 + 32), v231, v232);
        v240 = objc_msgSend_containsObject_(v238, v239, v237);

        if ((v240 & 1) == 0)
        {
          if (*v235 != -1)
          {
            sub_275E59CF4();
          }

          objc_msgSend_removeTagForDrawable_(*(v297 + 32), v231, v237);
        }

        ++v236;
      }

      while (v233 != v236);
      v233 = objc_msgSend_countByEnumeratingWithState_objects_count_(v229, v231, &v302, v316, 16);
    }

    while (v233);
  }

  v243 = v297;
  if (*(v297 + 96) == 1)
  {
    objc_msgSend_willModifyForUpgrade(*(v297 + 32), v241, v242);
    v246 = objc_msgSend_documentRoot(*(v297 + 32), v244, v245);
    v294 = objc_msgSend_stylesheet(v246, v247, v248);

    isLocked = objc_msgSend_isLocked(v294, v249, v250);
    objc_msgSend_setIsLocked_(v294, v251, 0);
    v300 = 0u;
    v301 = 0u;
    v298 = 0u;
    v299 = 0u;
    v254 = objc_msgSend_childInfos(*(v297 + 32), v252, v253);
    v256 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v255, &v298, v315, 16);
    if (!v256)
    {
      goto LABEL_102;
    }

    v257 = *v299;
    while (1)
    {
      for (m = 0; m != v256; ++m)
      {
        if (*v299 != v257)
        {
          objc_enumerationMutation(v254);
        }

        objc_opt_class();
        v259 = TSUDynamicCast();
        v262 = v259;
        if (v259)
        {
          v263 = objc_msgSend_geometry(v259, v260, v261);
          if (objc_msgSend_heightValid(v263, v264, v265))
          {
            v268 = objc_msgSend_displaysInstructionalText(v262, v266, v267);

            if (!v268)
            {
              goto LABEL_100;
            }

            v269 = objc_alloc(MEMORY[0x277D80AB8]);
            v263 = objc_msgSend_initWithCapacity_(v269, v270, 1);
            objc_msgSend_setBoxedObject_forProperty_(v263, v271, MEMORY[0x277CBEC38], 152);
            v274 = objc_msgSend_style(v262, v272, v273);
            v276 = objc_msgSend_variationOfStyle_propertyMap_(v294, v275, v274, v263);

            objc_msgSend_setStyle_(v262, v277, v276);
          }
        }

LABEL_100:
      }

      v256 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v278, &v298, v315, 16);
      if (!v256)
      {
LABEL_102:

        if (isLocked)
        {
          objc_msgSend_setIsLocked_(v294, v279, 1);
        }

        v243 = v297;
        break;
      }
    }
  }

  v280 = objc_msgSend_motionBackgroundStyle(*(v243 + 32), v241, v242);
  v281 = v280 == 0;

  if (!v281)
  {
    objc_msgSend_updateMotionBackground(*(v297 + 32), v282, v283);
  }
}

void sub_275D54264()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275D542A8()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275D542EC()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275D5433C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

_BYTE *sub_275D55B98(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_275D55C68(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_275D55CC4(exception, a1);
  __cxa_throw(exception, off_27A697808, MEMORY[0x277D825F0]);
}

std::logic_error *sub_275D55CC4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_275D55D64(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = KNAnimationTypeFromNumber();
  v7 = objc_msgSend_localizedNameForType_(v4, v6, v5);

  v9 = objc_msgSend_localizedNameForType_(v3, v8, v5);

  v11 = objc_msgSend_localizedCompare_(v7, v10, v9);
  return v11;
}

uint64_t sub_275D55DF8(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (qword_280A3BF10 != -1)
  {
    sub_275E59D30();
  }

  v6 = objc_msgSend_indexOfObject_(qword_280A3BF18, v4, v3);
  v8 = objc_msgSend_indexOfObject_(qword_280A3BF18, v7, v5);
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = objc_msgSend_caseInsensitiveCompare_(v3, v9, v5);
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void sub_275D55EA0(uint64_t a1, const char *a2)
{
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 11);
  for (i = 0; i != 11; ++i)
  {
    v4 = objc_msgSend_localizedCategoryNameForCategory_(KNAnimationRegistry, v2, qword_275E70880[i]);
    objc_msgSend_addObject_(v10, v5, v4);
  }

  v6 = objc_alloc(MEMORY[0x277CBEA60]);
  v8 = objc_msgSend_initWithArray_(v6, v7, v10);
  v9 = qword_280A3BF18;
  qword_280A3BF18 = v8;
}

void sub_275D55FA0()
{
  v0 = objc_alloc_init(KNAnimationRegistry);
  v1 = qword_280A3BF28;
  qword_280A3BF28 = v0;
}

void sub_275D5685C()
{
  v41 = objc_alloc(MEMORY[0x277CBEAC0]);
  v48 = sub_275DC204C();
  v54 = objc_msgSend_localizedStringForKey_value_table_(v48, v0, @"Shimmer", &stru_2884D8E20, @"Keynote");
  v47 = sub_275DC204C();
  v39 = objc_msgSend_localizedStringForKey_value_table_(v47, v1, @"Sparkle", &stru_2884D8E20, @"Keynote");
  v46 = sub_275DC204C();
  v53 = objc_msgSend_localizedStringForKey_value_table_(v46, v2, @"Swoosh", &stru_2884D8E20, @"Keynote");
  v45 = sub_275DC204C();
  v36 = objc_msgSend_localizedStringForKey_value_table_(v45, v3, @"Blur", &stru_2884D8E20, @"Keynote");
  v44 = sub_275DC204C();
  v52 = objc_msgSend_localizedStringForKey_value_table_(v44, v4, @"Burn", &stru_2884D8E20, @"Keynote");
  v43 = sub_275DC204C();
  v33 = objc_msgSend_localizedStringForKey_value_table_(v43, v5, @"Falling Tiles", &stru_2884D8E20, @"Keynote");
  v42 = sub_275DC204C();
  v51 = objc_msgSend_localizedStringForKey_value_table_(v42, v6, @"Flash", &stru_2884D8E20, @"Keynote");
  v40 = sub_275DC204C();
  v50 = objc_msgSend_localizedStringForKey_value_table_(v40, v7, @"Motion Dissolve", &stru_2884D8E20, @"Keynote");
  v38 = sub_275DC204C();
  v49 = objc_msgSend_localizedStringForKey_value_table_(v38, v8, @"Radial", &stru_2884D8E20, @"Keynote");
  v37 = sub_275DC204C();
  v29 = objc_msgSend_localizedStringForKey_value_table_(v37, v9, @"Shutter", &stru_2884D8E20, @"Keynote");
  v35 = sub_275DC204C();
  v28 = objc_msgSend_localizedStringForKey_value_table_(v35, v10, @"Convergence", &stru_2884D8E20, @"Keynote");
  v34 = sub_275DC204C();
  v27 = objc_msgSend_localizedStringForKey_value_table_(v34, v11, @"Drift by Object", &stru_2884D8E20, @"Keynote");
  v32 = sub_275DC204C();
  v26 = objc_msgSend_localizedStringForKey_value_table_(v32, v12, @"Drop", &stru_2884D8E20, @"Keynote");
  v31 = sub_275DC204C();
  v14 = objc_msgSend_localizedStringForKey_value_table_(v31, v13, @"Revolve", &stru_2884D8E20, @"Keynote");
  v30 = sub_275DC204C();
  v16 = objc_msgSend_localizedStringForKey_value_table_(v30, v15, @"Lens Flare", &stru_2884D8E20, @"Keynote");
  v17 = sub_275DC204C();
  v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v18, @"Pop", &stru_2884D8E20, @"Keynote");
  v20 = sub_275DC204C();
  v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"Typewriter", &stru_2884D8E20, @"Keynote");
  v24 = objc_msgSend_initWithObjectsAndKeys_(v41, v23, v54, @"apple:ca-text-shimmer", v39, @"apple:ca-text-sparkle", v53, @"com.apple.iWork.Keynote.BLTSwoosh", v36, @"com.apple.iWork.Keynote.KLNBlur", v52, @"apple:burn", v33, @"apple:fallingtiles", v51, @"apple:flash", v50, @"apple:motion dissolve", v49, @"apple:wipe-radial", v29, @"com.apple.iWork.Keynote.BLTShutter", v28, @"com.apple.iWork.Keynote.KLNBCConvergence", v27, @"apple:drift object", v26, @"apple:dropbuild", v14, @"apple:revolve", v16, @"com.apple.iWork.Keynote.BUKLensFlare", v19, @"apple:pop", v22, *MEMORY[0x277D80168], 0);
  v25 = qword_280A3BF38;
  qword_280A3BF38 = v24;
}

void sub_275D56E3C(uint64_t a1, const char *a2)
{
  for (i = 0; i != 11; ++i)
  {
    v4 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, LODWORD(qword_275E70880[i]));
    objc_msgSend_addObject_(*(a1 + 32), v5, v4);
  }
}

void sub_275D58970()
{
  v44[11] = *MEMORY[0x277D85DE8];
  v43 = sub_275DC204C();
  v42 = objc_msgSend_localizedStringForKey_value_table_(v43, v0, @"Title", &stru_2884D8E20, @"Keynote");
  v44[0] = v42;
  v41 = sub_275DC204C();
  v40 = objc_msgSend_localizedStringForKey_value_table_(v41, v1, @"Title Alt", &stru_2884D8E20, @"Keynote");
  v44[1] = v40;
  v39 = sub_275DC204C();
  v38 = objc_msgSend_localizedStringForKey_value_table_(v39, v2, @"Subtitle", &stru_2884D8E20, @"Keynote");
  v44[2] = v38;
  v37 = sub_275DC204C();
  v36 = objc_msgSend_localizedStringForKey_value_table_(v37, v3, @"Body", &stru_2884D8E20, @"Keynote");
  v44[3] = v36;
  v35 = sub_275DC204C();
  v34 = objc_msgSend_localizedStringForKey_value_table_(v35, v4, @"Body Small", &stru_2884D8E20, @"Keynote");
  v44[4] = v34;
  v33 = sub_275DC204C();
  v32 = objc_msgSend_localizedStringForKey_value_table_(v33, v5, @"Bullets", &stru_2884D8E20, @"Keynote");
  v44[5] = v32;
  v31 = sub_275DC204C();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v31, v6, @"Bullets Small", &stru_2884D8E20, @"Keynote");
  v44[6] = v7;
  v8 = sub_275DC204C();
  v10 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Caption", &stru_2884D8E20, @"Keynote");
  v44[7] = v10;
  v11 = sub_275DC204C();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"Caption Alt", &stru_2884D8E20, @"Keynote");
  v44[8] = v13;
  v14 = sub_275DC204C();
  v16 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, @"Label", &stru_2884D8E20, @"Keynote");
  v44[9] = v16;
  v17 = sub_275DC204C();
  v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v18, @"Label Alt", &stru_2884D8E20, @"Keynote");
  v44[10] = v19;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v44, 11);
  v22 = qword_280A3BF48;
  qword_280A3BF48 = v21;

  if (!qword_280A3BF48)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[KNDocumentRoot protected_defaultTextPresetOrdering]_block_invoke");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 499, 0, "invalid nil value for '%{public}s'", "sDefaultTextPresetOrdering");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }
}

void sub_275D58FDC(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_name(v21, v3, v4);
  v7 = objc_msgSend_rangeOfString_(v5, v6, @"transient style from -mappedTextStyleOfClass:forStyle:");

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a1 + 32);
    v11 = objc_msgSend_theme(*(a1 + 40), v8, v9);
    v14 = objc_msgSend_defaultCharacterStyle(v11, v12, v13);
    v17 = objc_msgSend_fullPropertyMap(v21, v15, v16);
    v19 = objc_msgSend_variationOfStyle_propertyMap_(v10, v18, v14, v17);

    objc_msgSend_setObject_forKey_(*(a1 + 48), v20, v19, v21);
  }
}

void sub_275D590C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_referencedStyles(v3, v4, v5);
  v8 = objc_msgSend_intersectsSet_(v6, v7, *(a1 + 32));

  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_275D59180;
    v10[3] = &unk_27A697B70;
    v11 = *(a1 + 40);
    objc_msgSend_replaceReferencedStylesUsingBlock_(v3, v9, v10);
  }
}

id sub_275D59180(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = objc_msgSend_objectForKey_(*(a1 + 32), v4, v3);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

void sub_275D5A540(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v8 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(*(a1 + 56), v6, v5, v5, *MEMORY[0x277D80008], *(a1 + 32), *(a1 + 40));
  if (v8)
  {
    objc_msgSend_setInstructionalText_forInfo_(*(a1 + 48), v7, v8, v16);
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[KNDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1535, 0, "no localized string for instructional text '%{public}@'", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

uint64_t sub_275D5B3E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v4, v3);
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v5, v3);
    if (v7)
    {
      v8 = objc_opt_class();
      if (v8 != objc_opt_class())
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]_block_invoke");
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1712, 0, "Values for key %@ should be of the same class %@ %@", v3, v6, v7);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = objc_msgSend_compare_(v6, v17, v7);
LABEL_10:
        v19 = v18;
LABEL_13:

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = objc_msgSend_localizedCaseInsensitiveCompare_(v6, v20, v7);
        goto LABEL_10;
      }

      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]_block_invoke");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 1720, 0, "Unexpected value class for key %@ %@", v3, v6);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    v19 = 0;
    goto LABEL_13;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

void sub_275D5B8D0(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_removeAll(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v6, v7);
  objc_msgSend_addSlideNode_atDepth_dolcContext_(v5, v8, v4, 1, v9);
}

void sub_275D5BE48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_object(a2, a2, a3);
  objc_msgSend_setCustomFormatListToUpgrade_(*(a1 + 32), v4, v5);
}

id sub_275D5BFD8(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 2u;
  v4 = *(v3 + 32);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8EF60](v5);
    *(v3 + 32) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNDocumentRoot;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275D5C284(uint64_t a1, const char *a2, uint64_t a3)
{
  v382 = *MEMORY[0x277D85DE8];
  v303 = objc_msgSend_show(*(a1 + 32), a2, a3);
  v305 = objc_msgSend_theme(v303, v4, v5);
  v304 = objc_msgSend_slideTree(v303, v6, v7);
  if (!objc_msgSend_hasPreUFFVersion(*(a1 + 32), v8, v9))
  {
    if (*(a1 + 48) >= *MEMORY[0x277D80950])
    {
      goto LABEL_57;
    }

    v360 = 0u;
    v361 = 0u;
    v358 = 0u;
    v359 = 0u;
    v25 = objc_msgSend_slideNodes(v304, v10, v11);
    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v75, &v358, v379, 16);
    if (v78)
    {
      v79 = *v359;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v359 != v79)
          {
            objc_enumerationMutation(v25);
          }

          v81 = *(*(&v358 + 1) + 8 * i);
          objc_msgSend_willModifyForUpgrade(v81, v76, v77);
          objc_msgSend_invalidateBuildEventCountCaches(v81, v82, v83);
        }

        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v76, &v358, v379, 16);
      }

      while (v78);
    }

    goto LABEL_56;
  }

  v12 = *(a1 + 40);
  if (v12 <= 0x51FF69643)
  {
    v368 = 0u;
    v369 = 0u;
    v366 = 0u;
    v367 = 0u;
    v13 = objc_msgSend_visibleSlideNodes(v304, v10, v11);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v366, v381, 16);
    if (v17)
    {
      v18 = *v367;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v367 != v18)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_invalidateBuildEventCountCaches(*(*(&v366 + 1) + 8 * j), v15, v16);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v366, v381, 16);
      }

      while (v17);
    }

    v12 = *(a1 + 40);
  }

  if (v12 <= 0x774114FEBLL)
  {
    v20 = MEMORY[0x277CCA8D8];
    v21 = objc_opt_class();
    v23 = objc_msgSend_bundleForClass_(v20, v22, v21);
    v25 = objc_msgSend_pathForResource_ofType_(v23, v24, @"NativeThemes", @"plist");

    v301 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v26, v25);
    v29 = objc_msgSend_UUID(v305, v27, v28);
    v298 = objc_msgSend_objectForKeyedSubscript_(v301, v30, v29);

    v31 = MEMORY[0x277CCA8D8];
    v32 = objc_opt_class();
    v34 = objc_msgSend_bundleForClass_(v31, v33, v32);
    v299 = objc_msgSend_pathForResource_ofType_(v34, v35, @"OldNativeThemesMap", @"plist");

    v297 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v36, v299);
    v39 = objc_msgSend_UUID(v305, v37, v38);
    v300 = objc_msgSend_objectForKeyedSubscript_(v297, v40, v39);

    if (!v298 && v300)
    {
      objc_msgSend_willModifyForUpgrade(v305, v41, v42);
      v44 = objc_msgSend_objectForKeyedSubscript_(v301, v43, v300);
      isEqualToString = objc_msgSend_isEqualToString_(v44, v45, @"White");

      if (isEqualToString)
      {
        v49 = objc_msgSend_templateSlides(v305, v47, v48);
        v51 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, 0);
        v54 = objc_msgSend_slide(v51, v52, v53);
        v57 = objc_msgSend_childInfos(v54, v55, v56);

        v364 = 0u;
        v365 = 0u;
        v362 = 0u;
        v363 = 0u;
        obj = v57;
        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v362, v380, 16);
        if (v59)
        {
          v60 = *v363;
          while (2)
          {
            for (k = 0; k != v59; ++k)
            {
              if (*v363 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v62 = *(*(&v362 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v64 = v62;
                v67 = objc_msgSend_imageData(v64, v65, v66);
                v70 = objc_msgSend_documentResourceLocator(v67, v68, v69);

                if (!objc_msgSend_caseInsensitiveCompare_(v70, v71, @"T11/PhotoPortfolio/Photo Portfolio - Image 1"))
                {
                  v86 = objc_msgSend_allKeysForObject_(v301, v72, @"PhotoPortfolio");
                  if (objc_msgSend_count(v86, v90, v91))
                  {
LABEL_44:
                    v94 = objc_msgSend_objectAtIndexedSubscript_(v86, v89, 0);
                    objc_msgSend_setUUID_(v305, v95, v94);
                  }

                  else
                  {
                    v103 = MEMORY[0x277D81150];
                    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke");
                    v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v107, v104, v106, 164, 0, "Could not resolve the theme for PhotoPortfolio from NativeThemes.plist. Is it imported?");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
                  }

LABEL_48:

                  goto LABEL_49;
                }

                if (!objc_msgSend_caseInsensitiveCompare_(v70, v72, @"Renaissance/72801391_2880x1920"))
                {
                  v86 = objc_msgSend_allKeysForObject_(v301, v73, @"Renaissance");
                  if (objc_msgSend_count(v86, v92, v93))
                  {
                    goto LABEL_44;
                  }

                  v110 = MEMORY[0x277D81150];
                  v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke");
                  v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v114, v111, v113, 177, 0, "Could not resolve the theme for Renaissance from NativeThemes.plist. Is it imported?");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116);
                  goto LABEL_48;
                }

                if (!objc_msgSend_caseInsensitiveCompare_(v70, v73, @"Ginger/gray_placeholder/Happy_Girls") || !objc_msgSend_caseInsensitiveCompare_(v70, v74, @"T11/White/PLACEHOLDER_apple_17-cr2_1877_comp"))
                {
                  v86 = objc_msgSend_allKeysForObject_(v301, v74, @"White");
                  if (objc_msgSend_count(v86, v87, v88))
                  {
                    goto LABEL_44;
                  }

                  v96 = MEMORY[0x277D81150];
                  v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke");
                  v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v100, v97, v99, 191, 0, "Could not resolve the theme for White from NativeThemes.plist. Is it imported?");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102);
                  goto LABEL_48;
                }
              }
            }

            v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v362, v380, 16);
            if (v59)
            {
              continue;
            }

            break;
          }
        }

LABEL_49:
      }

      else
      {
        objc_msgSend_setUUID_(v305, v47, v300);
      }

      v117 = objc_msgSend_UUID(v305, v84, v85);
      v119 = objc_msgSend_objectForKeyedSubscript_(v301, v118, v117);
      v120 = v119 == 0;

      if (v120)
      {
        v122 = MEMORY[0x277D81150];
        v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, "[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke");
        v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v126, v123, v125, 204, 0, "Didn't end up with a new native theme. Failing over to White.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128);
        v130 = objc_msgSend_allKeysForObject_(v301, v129, @"White");
        if (objc_msgSend_count(v130, v131, v132))
        {
          v134 = objc_msgSend_objectAtIndexedSubscript_(v130, v133, 0);
          objc_msgSend_setUUID_(v305, v135, v134);
        }

        else
        {
          v136 = MEMORY[0x277D81150];
          v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke");
          v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v140, v137, v139, 209, 0, "Could not resolve the theme for White from NativeThemes.plist. Is it imported?");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142);
        }
      }
    }

LABEL_56:
  }

LABEL_57:
  objc_msgSend_performHyperlinkUpgradesIfNecessaryForVersion_(*(a1 + 32), v10, *(a1 + 40));
  if (*(a1 + 48) < *MEMORY[0x277D80968])
  {
    v145 = *(a1 + 32);
    v146 = objc_msgSend_slideNodes(v304, v143, v144);
    objc_msgSend_p_hyperlinkAndBreadcrumbUpgradeForUnity20SlideNodes_(v145, v147, v146);
  }

  v356 = 0u;
  v357 = 0u;
  v354 = 0u;
  v355 = 0u;
  v148 = objc_msgSend_templateSlides(v305, v143, v144);
  v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v149, &v354, v378, 16);
  if (v152)
  {
    v153 = *v355;
    do
    {
      for (m = 0; m != v152; ++m)
      {
        if (*v355 != v153)
        {
          objc_enumerationMutation(v148);
        }

        v155 = objc_msgSend_slide(*(*(&v354 + 1) + 8 * m), v150, v151);
        objc_msgSend_generateObjectPlaceholderIfNecessary(v155, v156, v157);
      }

      v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v150, &v354, v378, 16);
    }

    while (v152);
  }

  if (*(a1 + 48) <= 0x2000000000017uLL)
  {
    v302 = objc_msgSend_stylesheet(*(a1 + 32), v158, v159);
    v162 = objc_msgSend_makeStyleMapper(*(a1 + 32), v160, v161);
    objc_msgSend_setClientsMustRemap_(v162, v163, 1);
    v166 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v164, v165);
    v348 = 0;
    v349 = &v348;
    v350 = 0x3042000000;
    v351 = sub_275D5D8AC;
    v352 = sub_275D5D8B8;
    v353 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275D5D8C0;
    aBlock[3] = &unk_27A697CB0;
    v167 = v166;
    v345 = v167;
    v168 = v302;
    v346 = v168;
    v347 = &v348;
    v169 = _Block_copy(aBlock);
    objc_storeWeak(v349 + 5, v169);
    v342[0] = 0;
    v342[1] = v342;
    v342[2] = 0x2020000000;
    v343 = 0;
    v171 = objc_msgSend_modelEnumeratorWithFlags_(*(a1 + 32), v170, 2);
    v338[0] = MEMORY[0x277D85DD0];
    v338[1] = 3221225472;
    v338[2] = sub_275D5DB60;
    v338[3] = &unk_27A697D28;
    v172 = v169;
    v340 = v172;
    v173 = v162;
    v339 = v173;
    v341 = v342;
    objc_msgSend_enumerateStyleClientsUsingBlock_(v171, v174, v338);

    _Block_object_dispose(v342, 8);
    _Block_object_dispose(&v348, 8);
    objc_destroyWeak(&v353);
  }

  v175 = objc_msgSend_stylesheet(*(a1 + 32), v158, v159);
  v336 = 0u;
  v337 = 0u;
  v334 = 0u;
  v335 = 0u;
  v178 = objc_msgSend_show(*(a1 + 32), v176, v177);
  v181 = objc_msgSend_theme(v178, v179, v180);
  v184 = objc_msgSend_templateSlides(v181, v182, v183);

  v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v185, &v334, v377, 16);
  if (v188)
  {
    v189 = *v335;
    do
    {
      for (n = 0; n != v188; ++n)
      {
        if (*v335 != v189)
        {
          objc_enumerationMutation(v184);
        }

        v191 = objc_msgSend_slide(*(*(&v334 + 1) + 8 * n), v186, v187);
        v194 = objc_msgSend_style(v191, v192, v193);

        v197 = objc_msgSend_parent(v194, v195, v196);
        LODWORD(v191) = v197 == 0;

        if (v191)
        {
          v200 = objc_msgSend_styleIdentifier(v194, v198, v199);
          v201 = v200 == 0;

          if (v201)
          {
            v203 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v175, v202, @"slide", @"slidestyle", 0);
            objc_msgSend_setIdentifier_ofStyle_(v175, v204, v203, v194);
          }
        }
      }

      v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v186, &v334, v377, 16);
    }

    while (v188);
  }

  v207 = *(a1 + 48);
  if (v207 <= 0x4000100000005 && v207 >= *MEMORY[0x277D809A8])
  {
    v208 = objc_msgSend_recording(v303, v205, v206);
    v213 = objc_msgSend_recordingByAddingMissingEventsForRadar49654305(v208, v209, v210);
    if (v213 != v208)
    {
      objc_msgSend_willModifyForUpgrade(v303, v211, v212);
      objc_msgSend_setRecording_(v303, v214, v213);
    }

    v332 = 0u;
    v333 = 0u;
    v330 = 0u;
    v331 = 0u;
    v215 = objc_msgSend_visibleSlideNodes(v304, v211, v212);
    v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v216, &v330, v376, 16);
    if (v219)
    {
      v220 = *v331;
      do
      {
        for (ii = 0; ii != v219; ++ii)
        {
          if (*v331 != v220)
          {
            objc_enumerationMutation(v215);
          }

          objc_msgSend_invalidateBuildEventCountCaches(*(*(&v330 + 1) + 8 * ii), v217, v218);
        }

        v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v217, &v330, v376, 16);
      }

      while (v219);
    }
  }

  v222 = sub_275E53AE0();
  v225 = *(a1 + 48);
  if (v225 >= v222)
  {
    if (v225 >= sub_275E53AF0())
    {
      v312 = 0uLL;
      v313 = 0uLL;
      v310 = 0uLL;
      v311 = 0uLL;
      v275 = objc_msgSend_slideNodes(v304, v252, v253);
      v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v276, &v310, v371, 16);
      if (v279)
      {
        v280 = *v311;
        do
        {
          for (jj = 0; jj != v279; ++jj)
          {
            if (*v311 != v280)
            {
              objc_enumerationMutation(v275);
            }

            v282 = *(*(&v310 + 1) + 8 * jj);
            if (objc_msgSend_needsToUpdateLiveVideoSourceUsageAfterUnarchiving(v282, v277, v278))
            {
              objc_msgSend_willModifyForUpgrade(v282, v277, v278);
              objc_msgSend_updateLiveVideoSourceUsage(v282, v283, v284);
            }
          }

          v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v277, &v310, v371, 16);
        }

        while (v279);
      }

      v308 = 0u;
      v309 = 0u;
      v306 = 0u;
      v307 = 0u;
      v240 = objc_msgSend_templateSlides(v305, v285, v286);
      v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v287, &v306, v370, 16);
      if (v290)
      {
        v291 = *v307;
        do
        {
          for (kk = 0; kk != v290; ++kk)
          {
            if (*v307 != v291)
            {
              objc_enumerationMutation(v240);
            }

            v293 = *(*(&v306 + 1) + 8 * kk);
            if (objc_msgSend_needsToUpdateLiveVideoSourceUsageAfterUnarchiving(v293, v288, v289))
            {
              objc_msgSend_willModifyForUpgrade(v293, v288, v289);
              objc_msgSend_updateLiveVideoSourceUsage(v293, v294, v295);
            }
          }

          v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v288, &v306, v370, 16);
        }

        while (v290);
      }
    }

    else
    {
      v320 = 0uLL;
      v321 = 0uLL;
      v318 = 0uLL;
      v319 = 0uLL;
      v254 = objc_msgSend_slideNodes(v304, v252, v253);
      v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v255, &v318, v373, 16);
      if (v258)
      {
        v259 = *v319;
        do
        {
          for (mm = 0; mm != v258; ++mm)
          {
            if (*v319 != v259)
            {
              objc_enumerationMutation(v254);
            }

            v261 = *(*(&v318 + 1) + 8 * mm);
            objc_msgSend_willModifyForUpgrade(v261, v256, v257);
            objc_msgSend_updateLiveVideoSourceUsage(v261, v262, v263);
          }

          v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v256, &v318, v373, 16);
        }

        while (v258);
      }

      v316 = 0u;
      v317 = 0u;
      v314 = 0u;
      v315 = 0u;
      v240 = objc_msgSend_templateSlides(v305, v264, v265);
      v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v266, &v314, v372, 16);
      if (v269)
      {
        v270 = *v315;
        do
        {
          for (nn = 0; nn != v269; ++nn)
          {
            if (*v315 != v270)
            {
              objc_enumerationMutation(v240);
            }

            v272 = *(*(&v314 + 1) + 8 * nn);
            objc_msgSend_willModifyForUpgrade(v272, v267, v268);
            objc_msgSend_updateLiveVideoSourceUsage(v272, v273, v274);
          }

          v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v267, &v314, v372, 16);
        }

        while (v269);
      }
    }
  }

  else
  {
    v328 = 0u;
    v329 = 0u;
    v326 = 0u;
    v327 = 0u;
    v226 = objc_msgSend_slideNodes(v304, v223, v224);
    v230 = objc_msgSend_countByEnumeratingWithState_objects_count_(v226, v227, &v326, v375, 16);
    if (v230)
    {
      v231 = *v327;
      do
      {
        for (i1 = 0; i1 != v230; ++i1)
        {
          if (*v327 != v231)
          {
            objc_enumerationMutation(v226);
          }

          v233 = *(*(&v326 + 1) + 8 * i1);
          objc_msgSend_willModifyForUpgrade(v233, v228, v229);
          objc_msgSend_updateTemplateSlideUUID(v233, v234, v235);
          objc_msgSend_updateLiveVideoSourceUsage(v233, v236, v237);
        }

        v230 = objc_msgSend_countByEnumeratingWithState_objects_count_(v226, v228, &v326, v375, 16);
      }

      while (v230);
    }

    v324 = 0u;
    v325 = 0u;
    v322 = 0u;
    v323 = 0u;
    v240 = objc_msgSend_templateSlides(v305, v238, v239);
    v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v241, &v322, v374, 16);
    if (v244)
    {
      v245 = *v323;
      do
      {
        for (i2 = 0; i2 != v244; ++i2)
        {
          if (*v323 != v245)
          {
            objc_enumerationMutation(v240);
          }

          v247 = *(*(&v322 + 1) + 8 * i2);
          objc_msgSend_willModifyForUpgrade(v247, v242, v243);
          objc_msgSend_updateTemplateSlideUUID(v247, v248, v249);
          objc_msgSend_updateLiveVideoSourceUsage(v247, v250, v251);
        }

        v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v242, &v322, v374, 16);
      }

      while (v244);
    }
  }
}

uint64_t sub_275D5D8C0(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = objc_msgSend_objectForKey_(*(a1 + 32), v4, v3);
  v8 = v5;
  if (!v5)
  {
    if (v3)
    {
      v10 = objc_msgSend_stylesheet(v3, v6, v7);
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        objc_msgSend_setObject_forKey_(*(a1 + 32), v12, MEMORY[0x277CBEC38], v3);
LABEL_8:
        v9 = 1;
        goto LABEL_19;
      }

      WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
      v16 = objc_msgSend_parent(v3, v14, v15);
      v17 = WeakRetained[2](WeakRetained, v16);

      v19 = *(a1 + 32);
      if (v17)
      {
        objc_msgSend_setObject_forKey_(v19, v18, MEMORY[0x277CBEC38], v3);
        goto LABEL_8;
      }

      objc_msgSend_setObject_forKey_(v19, v18, MEMORY[0x277CBEC38], v3);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v22 = objc_msgSend_referencedStyles(v3, v20, v21, 0);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v32, v36, 16);
      if (v24)
      {
        v25 = *v33;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v32 + 1) + 8 * i);
            v28 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
            LODWORD(v27) = v28[2](v28, v27);

            if (v27)
            {
              objc_msgSend_setObject_forKey_(*(a1 + 32), v29, MEMORY[0x277CBEC38], v3);

              goto LABEL_8;
            }
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, &v32, v36, 16);
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      objc_msgSend_setObject_forKey_(*(a1 + 32), v30, MEMORY[0x277CBEC28], v3);
    }

    v9 = 0;
    goto LABEL_19;
  }

  v9 = objc_msgSend_BOOLValue(v5, v6, v7);
LABEL_19:

  return v9;
}

void sub_275D5DB60(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_referencedStyles(v3, v4, v5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275D5DCFC;
  v15[3] = &unk_27A697CD8;
  v16 = *(a1 + 40);
  v8 = objc_msgSend_objectsPassingTest_(v6, v7, v15);

  if (objc_msgSend_count(v8, v9, v10))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_275D5DD0C;
    v12[3] = &unk_27A697D00;
    v13 = v8;
    v14 = *(a1 + 32);
    objc_msgSend_replaceReferencedStylesUsingBlock_(v3, v11, v12);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

id sub_275D5DD0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (objc_msgSend_containsObject_(*(a1 + 32), v4, v3))
  {
    v6 = objc_msgSend_mappedStyleForStyle_(*(a1 + 40), v5, v3);
  }

  return v6;
}

uint64_t sub_275D5E550(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[4];
  v7 = objc_msgSend_objectUUID(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v8, a2, v7);
  result = objc_msgSend_objectAtIndexedSubscript_(*(a1[5] + 96), v9, a3);
  if (result)
  {
    v12 = result;
    result = objc_msgSend_isEqualToString_(result, v11, &stru_2884D8E20);
    if ((result & 1) == 0)
    {
      v14 = a1[6];

      return objc_msgSend_setObject_forKeyedSubscript_(v14, v13, a2, v12);
    }
  }

  return result;
}

uint64_t sub_275D5E5F8(uint64_t a1, const char *a2)
{
  result = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, a2);
  if (!result)
  {
    v7 = objc_msgSend_childInfos(*(a1 + 40), v5, v6);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_275D5E68C;
    v9[3] = &unk_27A697DA0;
    v9[4] = a2;
    return objc_msgSend_tsu_firstObjectPassingTest_(v7, v8, v9);
  }

  return result;
}

uint64_t sub_275D5E68C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_objectUUID(a2, a2, a3);

  return objc_msgSend_isEqual_(v3, v4, v5);
}

id sub_275D5EC10(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 64) = result;
  return result;
}

id sub_275D5EC44(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 88) = result;
  return result;
}

void *sub_275D5EFD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275D5F01C(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_275D5F01C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E59D80(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275D5F0A4);
}

void sub_275D5F0A4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_275D60E60(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v6 = v3;
  if (v3 && objc_msgSend_isPlaceholder(v3, v4, v5))
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v8);
  }
}

void sub_275D60FAC(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
    v6 = v3;
    if (v3)
    {
      if (objc_msgSend_isPlaceholder(v3, v4, v5))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else if (objc_msgSend_hasTagForInfo_(*(a1 + 40), v4, v8))
    {
      goto LABEL_5;
    }

    objc_msgSend_addObject_(*(a1 + 32), v7, v8);
    goto LABEL_5;
  }

LABEL_6:
}

void sub_275D61340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D61358(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_slide(a2, a2, a3);
  if (v6 != a1[4])
  {
    v11 = v6;
    v9 = objc_msgSend_style(v6, v7, v8);
    if (objc_msgSend_isRelatedTo_(v9, v10, a1[5]))
    {
      *(*(a1[6] + 8) + 24) = 1;
      *a4 = 0;
    }

    v6 = v11;
  }
}

void sub_275D61AC4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    objc_msgSend_appendString_(*(a1 + 32), v5, @"\n");
  }

  objc_msgSend_appendString_(*(a1 + 32), v5, v6);
}

void sub_275D61B2C(uint64_t a1, void *a2, unint64_t a3)
{
  v28 = a2;
  if (a3)
  {
    objc_msgSend_unarchiverAppendParagraphBreak_(*(a1 + 32), v5, 10);
  }

  v7 = *(a1 + 32);
  v8 = objc_msgSend_length(v7, v5, v6);
  objc_msgSend_insertString_atCharIndex_undoTransaction_(v7, v9, v28, v8, 0);
  objc_msgSend_setParagraphLevel_atParIndex_undoTransaction_(*(a1 + 32), v10, a3, a3, 0);
  v15 = objc_msgSend_count(*(a1 + 40), v11, v12);
  v16 = *(a1 + 40);
  if (v15 <= a3)
  {
    objc_msgSend_lastObject(v16, v13, v14);
  }

  else
  {
    objc_msgSend_objectAtIndexedSubscript_(v16, v13, a3);
  }
  v17 = ;
  objc_msgSend_setParagraphStyle_atParIndex_undoTransaction_(*(a1 + 32), v18, v17, a3, 0);
  v21 = *(a1 + 48);
  if (v21)
  {
    v24 = objc_msgSend_count(v21, v19, v20);
    v25 = *(a1 + 48);
    if (v24 <= a3)
    {
      objc_msgSend_lastObject(v25, v22, v23);
    }

    else
    {
      objc_msgSend_objectAtIndexedSubscript_(v25, v22, a3);
    }
    v26 = ;
    objc_msgSend_setListStyle_atParIndex_undoTransaction_(*(a1 + 32), v27, v26, a3, 0);
  }
}

uint64_t sub_275D627F0(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6 && (v7 = objc_msgSend_count(a1, v4, v5), v7 == objc_msgSend_count(v6, v8, v9)))
  {
    if (objc_msgSend_count(a1, v10, v11))
    {
      v13 = 0;
      do
      {
        v14 = objc_msgSend_objectAtIndexedSubscript_(a1, v12, v13);
        v16 = objc_msgSend_objectAtIndexedSubscript_(v6, v15, v13);
        isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v14, v17, v16);

        if ((isEquivalentForCrossDocumentPasteMasterComparison & 1) == 0)
        {
          break;
        }

        ++v13;
      }

      while (v13 < objc_msgSend_count(a1, v19, v20));
    }

    else
    {
      isEquivalentForCrossDocumentPasteMasterComparison = 1;
    }
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

  return isEquivalentForCrossDocumentPasteMasterComparison;
}

void sub_275D62E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D62EA0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v12 = objc_msgSend_placeholdersForTags(v7, v10, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

  LOBYTE(v9) = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v8, v14, v15);
  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t sub_275D62F5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = objc_msgSend_propertyMap(a1, v5, v6);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_275D630A0;
    v13[3] = &unk_27A697F58;
    v9 = v8;
    v14 = v9;
    v15 = v7;
    v16 = a1;
    v17 = &v18;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v9, v10, v13);
    v11 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_275D63088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D630A0(uint64_t a1, uint64_t a2, int a3, void *a4, _BYTE *a5)
{
  v35 = a4;
  if (a3 != 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_14;
    }

    v22 = objc_msgSend_boxedObjectForProperty_(*(a1 + 40), v21, a2);
    objc_opt_class();
    v23 = TSUDynamicCast();
    objc_opt_class();
    v24 = TSUDynamicCast();
    v26 = v24;
    if (v23 && v24)
    {
      if ((objc_msgSend_isEqualWithTolerance_(v23, v25, v24) & 1) == 0)
      {
        v27 = 1090;
LABEL_12:
        v28 = MEMORY[0x277CCACA8];
        v29 = String();
        v31 = objc_msgSend_stringWithFormat_(v28, v30, @"property %d(%@) of style %@", a2, v29, *(a1 + 48));

        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
        objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v34, v33, v27, v31);

        *(*(*(a1 + 56) + 8) + 24) = 0;
        *a5 = 1;
      }
    }

    else if ((objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v35, v25, v22) & 1) == 0)
    {
      v27 = 1095;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  objc_msgSend_floatValueForProperty_(*(a1 + 32), v9, a2);
  v11 = v10;
  objc_msgSend_floatValueForProperty_(*(a1 + 40), v12, a2);
  if (v11 != v13 && vabdd_f64(v11, v13) >= fabs(v13 * 0.000000999999997))
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = String();
    v17 = objc_msgSend_stringWithFormat_(v14, v16, @"property %d(%@) of style %@", a2, v15, *(a1 + 48));

    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v20, v19, 1073, v17);

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a5 = 1;
  }

LABEL_14:
}

uint64_t sub_275D633D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_13;
  }

  v8 = objc_msgSend_caption(a1, v6, v7);

  if (!v8)
  {
    v20 = objc_msgSend_caption(v5, v9, v10);

    if (v20)
    {
      v19 = 1134;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"caption 2");
      goto LABEL_12;
    }

LABEL_7:
    v21 = objc_msgSend_title(a1, v17, v18);

    if (v21)
    {
      v24 = objc_msgSend_title(a1, v22, v23);
      v27 = objc_msgSend_title(v5, v25, v26);
      isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v24, v28, v27);

      if ((isEquivalentForCrossDocumentPasteMasterComparison & 1) == 0)
      {
        v19 = 1141;
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"title");
        goto LABEL_12;
      }
    }

    else
    {
      v31 = objc_msgSend_title(v5, v22, v23);

      if (v31)
      {
        v19 = 1145;
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"title 2");
        goto LABEL_12;
      }
    }

    v37 = 1;
    goto LABEL_14;
  }

  v11 = objc_msgSend_caption(a1, v9, v10);
  v14 = objc_msgSend_caption(v5, v12, v13);
  v16 = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v11, v15, v14);

  if (v16)
  {
    goto LABEL_7;
  }

  v19 = 1130;
  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"caption");
  v33 = LABEL_12:;
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
  objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v36, v35, v19, v33);

LABEL_13:
  v37 = 0;
LABEL_14:

  return v37;
}

uint64_t sub_275D635A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_6;
  }

  v8 = objc_msgSend_geometry(a1, v6, v7);
  v11 = objc_msgSend_geometry(v5, v9, v10);
  isEqual = objc_msgSend_isEqual_(v8, v12, v11);

  if ((isEqual & 1) == 0)
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"info geometry");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v26, v25, 1163, v23);

    goto LABEL_6;
  }

  v28.receiver = a1;
  v28.super_class = TSDStyledInfo_0;
  if (!objc_msgSendSuper2(&v28, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5))
  {
LABEL_6:
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
    goto LABEL_7;
  }

  v17 = objc_msgSend_style(a1, v15, v16);
  v20 = objc_msgSend_style(v5, v18, v19);
  isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v17, v21, v20);

LABEL_7:
  return isEquivalentForCrossDocumentPasteMasterComparison;
}

uint64_t sub_275D63710(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_10;
  }

  v8 = objc_msgSend_geometry(a1, v6, v7);
  v11 = objc_msgSend_geometry(v5, v9, v10);
  if (v8 | v11)
  {
    v14 = v11;
    isEqual = objc_msgSend_isEqual_(v8, v12, v11);

    if (!isEqual)
    {
      v25 = 1181;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"maskInfo geometry");
      v26 = LABEL_9:;
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
      objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v29, v28, v25, v26);

LABEL_10:
      v24 = 0;
      goto LABEL_11;
    }
  }

  v16 = objc_msgSend_pathSource(a1, v12, v13);
  v19 = objc_msgSend_pathSource(v5, v17, v18);
  if (v16 | v19)
  {
    v21 = v19;
    v22 = objc_msgSend_isEqual_(v16, v20, v19);

    if ((v22 & 1) == 0)
    {
      v25 = 1185;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"maskInfo pathSource");
      goto LABEL_9;
    }
  }

  v24 = 1;
LABEL_11:

  return v24;
}

uint64_t sub_275D63878(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    goto LABEL_13;
  }

  v11 = objc_msgSend_maskInfo(a1, v7, v8);
  if (v11 || (objc_msgSend_maskInfo(v6, v9, v10), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = objc_msgSend_maskInfo(a1, v9, v10);
    v15 = objc_msgSend_maskInfo(v6, v13, v14);
    isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v12, v16, v15);

    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 1;
  }

LABEL_8:
  v33.receiver = a1;
  v33.super_class = &off_2885322B8;
  if (!objc_msgSendSuper2(&v33, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v6))
  {
LABEL_13:
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
    goto LABEL_16;
  }

  v20 = objc_msgSend_imageData(a1, v18, v19);
  v23 = objc_msgSend_imageData(v6, v21, v22);
  if (objc_msgSend_isEqual_(v20, v24, v23))
  {
    v27 = objc_msgSend_instantAlphaPath(a1, v25, v26);
    v31 = objc_msgSend_instantAlphaPath(v6, v28, v29);
    if (v27 | v31)
    {
      isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEqual_(v27, v30, v31) & isEquivalentForCrossDocumentPasteMasterComparison;
    }
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

LABEL_16:
  return isEquivalentForCrossDocumentPasteMasterComparison;
}

uint64_t sub_275D63A10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (v15.receiver = a1, v15.super_class = &off_288532D70, objc_msgSendSuper2(&v15, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5)))
  {
    v8 = objc_msgSend_movieData(a1, v6, v7);
    v11 = objc_msgSend_movieData(v5, v9, v10);
    isEqual = objc_msgSend_isEqual_(v8, v12, v11);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

uint64_t sub_275D63ADC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (v27.receiver = a1, v27.super_class = TSDShapeInfo_0, objc_msgSendSuper2(&v27, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5)))
  {
    v8 = objc_msgSend_pathSource(a1, v6, v7);
    v13 = objc_msgSend_pathSource(v5, v9, v10);
    if (v8 | v13 && !objc_msgSend_isEqual_(v8, v11, v13))
    {
      isEqual = 0;
    }

    else
    {
      v14 = objc_msgSend_headLineEnd(a1, v11, v12);
      v19 = objc_msgSend_headLineEnd(v5, v15, v16);
      if (v14 | v19 && !objc_msgSend_isEqual_(v14, v17, v19))
      {
        isEqual = 0;
      }

      else
      {
        v20 = objc_msgSend_tailLineEnd(a1, v17, v18);
        v24 = objc_msgSend_tailLineEnd(v5, v21, v22);
        if (v20 | v24)
        {
          isEqual = objc_msgSend_isEqual_(v20, v23, v24);
        }

        else
        {
          isEqual = 1;
        }
      }
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

uint64_t sub_275D63C58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v8 = objc_msgSend_range(a1, v6, v7);
    v10 = v9;
    v12 = objc_msgSend_range(v5, v9, v11);
    if (!objc_msgSend_compareRange_otherStorage_otherRange_options_objectComparisonBlock_(a1, v13, v8, v10, v5, v12, v13, 0, &unk_2884D4CF0))
    {
      v19 = 1;
      goto LABEL_6;
    }

    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"text storage equivalence");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v18, v17, 1257, v15);
  }

  v19 = 0;
LABEL_6:

  return v19;
}

uint64_t sub_275D63D74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (v15.receiver = a1, v15.super_class = TSWPShapeInfo_0, objc_msgSendSuper2(&v15, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5)))
  {
    v8 = objc_msgSend_textStorage(a1, v6, v7);
    v11 = objc_msgSend_textStorage(v5, v9, v10);
    isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v8, v12, v11);
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

  return isEquivalentForCrossDocumentPasteMasterComparison;
}

id sub_275D63E40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v8 = objc_msgSend_geometry(a1, v6, v7);
    v11 = objc_msgSend_geometry(v5, v9, v10);
    if (objc_msgSend_isEqual_(v8, v12, v11))
    {
      v15 = objc_msgSend_childInfos(a1, v13, v14);
      v18 = objc_msgSend_childInfos(v5, v16, v17);
      if (objc_msgSend_kn_isEquivalentForCrossDocumentPasteMasterComparison_(v15, v19, v18))
      {
        v22.receiver = a1;
        v22.super_class = &off_288534B38;
        v20 = objc_msgSendSuper2(&v22, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id sub_275D63F5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_objectComparisonBlock_(a1, v5, v4, &unk_2884D4D10))
  {
    v13.receiver = a1;
    v13.super_class = &off_28853D210;
    v7 = objc_msgSendSuper2(&v13, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v4);
  }

  else
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"table equivalence");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v11, v10, 1300, v8);

    v7 = 0;
  }

  return v7;
}

id sub_275D64040(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_5;
  }

  v8 = objc_msgSend_placement(a1, v6, v7);
  v11 = objc_msgSend_placement(v5, v9, v10);
  isEqual = objc_msgSend_isEqual_(v8, v12, v11);

  if ((isEqual & 1) == 0)
  {
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"title placement");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v19, v18, 1318, v16);

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v21.receiver = a1;
  v21.super_class = &off_28853D720;
  v15 = objc_msgSendSuper2(&v21, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5);
LABEL_6:

  return v15;
}

uint64_t sub_275D64178(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v20.receiver = a1;
  v20.super_class = &off_28853DB18;
  if (objc_msgSendSuper2(&v20, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v4))
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      isAnchored = objc_msgSend_isAnchored(a1, v5, v6);
      if (isAnchored == objc_msgSend_isAnchored(v7, v9, v10))
      {
        v14 = objc_msgSend_drawable(a1, v11, v12);
        v17 = objc_msgSend_drawable(v7, v15, v16);
        isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v14, v18, v17);
      }

      else
      {
        isEquivalentForCrossDocumentPasteMasterComparison = 0;
      }
    }

    else
    {
      isEquivalentForCrossDocumentPasteMasterComparison = 1;
    }
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

  return isEquivalentForCrossDocumentPasteMasterComparison;
}

void sub_275D6482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D6486C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_slideIfLoaded(a2, a2, a3);
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_275D64FDC(uint64_t a1)
{
  v338 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v332 = a1;
  v4 = objc_msgSend_titlePlaceholder(*(a1 + 32), v2, v3);
  v5 = TSUDynamicCast();

  v327 = v5;
  if (!v5 || *(v332 + 40))
  {
    objc_msgSend_willModifyForUpgrade(*(v332 + 32), v6, v7);
    v10 = objc_msgSend_documentRoot(*(v332 + 32), v8, v9);
    v13 = objc_msgSend_stylesheet(v10, v11, v12);

    if (!v13)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[KNTemplateSlide(PersistenceAdditions) loadFromUnarchiver:]_block_invoke_4");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlidePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 237, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    v329 = objc_msgSend_titlePlaceholder(*(v332 + 32), v14, v15);
    v23 = *(v332 + 32);
    v24 = objc_opt_class();
    v25 = *(v332 + 48);
    v28 = objc_msgSend_documentRoot(*(v332 + 32), v26, v27);
    v31 = objc_msgSend_stylesheet(v28, v29, v30);
    v33 = *(v332 + 88);
    v32 = *(v332 + 96);
    if (objc_msgSend_count(*(v332 + 40), v34, v35))
    {
      v38 = v332;
      v39 = *(v332 + 40);
    }

    else
    {
      v39 = 0;
      v38 = v332;
    }

    v40 = objc_msgSend_context(*(v38 + 32), v36, v37);
    v42 = objc_msgSend_placeholderOfClass_withGeometry_stylesheet_shapePresetIndex_textPresetIndex_layoutPropertyMap_paragraphPropertyMap_listPropertyMap_context_(v23, v41, v24, v25, v31, v33, v32, v39, 0, 0, v40);
    objc_msgSend_setTitlePlaceholder_(*(v332 + 32), v43, v42);

    if (v329)
    {
      v46 = *(v332 + 32);
      v47 = objc_msgSend_titlePlaceholder(v46, v44, v45);
      objc_msgSend_replaceChildInfo_with_(v46, v48, v329, v47);
    }
  }

  objc_opt_class();
  v51 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v49, v50);
  v52 = TSUDynamicCast();

  v328 = v52;
  if (!v52 || *(v332 + 56))
  {
    objc_msgSend_willModifyForUpgrade(*(v332 + 32), v53, v54);
    v57 = objc_msgSend_documentRoot(*(v332 + 32), v55, v56);
    v60 = objc_msgSend_stylesheet(v57, v58, v59);

    if (!v60)
    {
      v63 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[KNTemplateSlide(PersistenceAdditions) loadFromUnarchiver:]_block_invoke_4");
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlidePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v64, v66, 264, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
    }

    v330 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v61, v62);
    v70 = *(v332 + 32);
    v71 = objc_opt_class();
    v72 = *(v332 + 64);
    v75 = objc_msgSend_documentRoot(*(v332 + 32), v73, v74);
    v78 = objc_msgSend_stylesheet(v75, v76, v77);
    v79 = *(v332 + 104);
    v80 = *(v332 + 112);
    if (objc_msgSend_count(*(v332 + 56), v81, v82))
    {
      v85 = v332;
      v86 = *(v332 + 56);
    }

    else
    {
      v86 = 0;
      v85 = v332;
    }

    v87 = objc_msgSend_context(*(v85 + 32), v83, v84);
    v89 = objc_msgSend_placeholderOfClass_withGeometry_stylesheet_shapePresetIndex_textPresetIndex_layoutPropertyMap_paragraphPropertyMap_listPropertyMap_context_(v70, v88, v71, v72, v78, v79, v80, v86, 0, 0, v87);
    objc_msgSend_setBodyPlaceholder_(*(v332 + 32), v90, v89);

    if (v330)
    {
      v93 = *(v332 + 32);
      v94 = objc_msgSend_bodyPlaceholder(v93, v91, v92);
      objc_msgSend_replaceChildInfo_with_(v93, v95, v330, v94);
    }
  }

  v96 = objc_msgSend_slideNumberPlaceholder(*(v332 + 32), v53, v54);
  if (!v96 || (v99 = *(v332 + 72), v96, v99))
  {
    objc_msgSend_willModifyForUpgrade(*(v332 + 32), v97, v98);
    v102 = objc_msgSend_documentRoot(*(v332 + 32), v100, v101);
    v105 = objc_msgSend_stylesheet(v102, v103, v104);

    if (!v105)
    {
      v108 = MEMORY[0x277D81150];
      v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "[KNTemplateSlide(PersistenceAdditions) loadFromUnarchiver:]_block_invoke_4");
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlidePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v112, v109, v111, 290, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114);
    }

    v331 = objc_msgSend_slideNumberPlaceholder(*(v332 + 32), v106, v107);
    v115 = *(v332 + 32);
    v116 = objc_opt_class();
    v117 = *(v332 + 80);
    v120 = objc_msgSend_documentRoot(*(v332 + 32), v118, v119);
    v123 = objc_msgSend_stylesheet(v120, v121, v122);
    v124 = *(v332 + 120);
    v125 = *(v332 + 128);
    if (objc_msgSend_count(*(v332 + 72), v126, v127))
    {
      v130 = v332;
      v131 = *(v332 + 72);
    }

    else
    {
      v131 = 0;
      v130 = v332;
    }

    v132 = objc_msgSend_context(*(v130 + 32), v128, v129);
    v134 = objc_msgSend_placeholderOfClass_withGeometry_stylesheet_shapePresetIndex_textPresetIndex_layoutPropertyMap_paragraphPropertyMap_listPropertyMap_context_(v115, v133, v116, v117, v123, v124, v125, v131, 0, 0, v132);
    objc_msgSend_setSlideNumberPlaceholder_(*(v332 + 32), v135, v134);

    if (v331)
    {
      v138 = *(v332 + 32);
      v139 = objc_msgSend_slideNumberPlaceholder(v138, v136, v137);
      objc_msgSend_replaceChildInfo_with_(v138, v140, v331, v139);
    }
  }

  v141 = objc_msgSend_titlePlaceholder(*(v332 + 32), v97, v98);
  v144 = objc_msgSend_geometry(v141, v142, v143);

  v147 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v145, v146);
  v150 = objc_msgSend_geometry(v147, v148, v149);

  if (!v144 || !v150)
  {
    objc_msgSend_willModifyForUpgrade(*(v332 + 32), v151, v152);
    objc_opt_class();
    v155 = objc_msgSend_documentRoot(*(v332 + 32), v153, v154);
    v156 = TSUDynamicCast();

    v159 = objc_msgSend_show(v156, v157, v158);
    objc_msgSend_size(v159, v160, v161);

    v164 = objc_msgSend_titlePlaceholder(*(v332 + 32), v162, v163);
    v167 = objc_msgSend_geometry(v164, v165, v166);

    if (!v167)
    {
      v170 = objc_alloc(MEMORY[0x277D802E8]);
      TSURoundedRect();
      v172 = v171;
      v174 = v173;
      v177 = objc_msgSend_initWithPosition_size_(v170, v175, v176);
      v180 = objc_msgSend_titlePlaceholder(*(v332 + 32), v178, v179);
      objc_msgSend_setGeometry_(v180, v181, v177);

      v182 = objc_alloc(MEMORY[0x277D801C8]);
      v185 = objc_msgSend_initWithNaturalSize_(v182, v183, v184, v172, v174);
      v188 = objc_msgSend_titlePlaceholder(*(v332 + 32), v186, v187);
      objc_msgSend_setPathSource_(v188, v189, v185);
    }

    v190 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v168, v169);
    v193 = objc_msgSend_geometry(v190, v191, v192);

    if (!v193)
    {
      v194 = objc_alloc(MEMORY[0x277D802E8]);
      TSURoundedRect();
      v196 = v195;
      v198 = v197;
      v201 = objc_msgSend_initWithPosition_size_(v194, v199, v200);
      v204 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v202, v203);
      objc_msgSend_setGeometry_(v204, v205, v201);

      v206 = objc_alloc(MEMORY[0x277D801C8]);
      v209 = objc_msgSend_initWithNaturalSize_(v206, v207, v208, v196, v198);
      v212 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v210, v211);
      objc_msgSend_setPathSource_(v212, v213, v209);
    }
  }

  v214 = v332;
  if (*(v332 + 136) <= 0x774114A0FuLL)
  {
    v215 = objc_msgSend_placeholdersForTags(*(v332 + 32), v151, v152);
    v218 = objc_msgSend_count(v215, v216, v217);

    v214 = v332;
    if (!v218)
    {
      v335 = 0u;
      v336 = 0u;
      v333 = 0u;
      v334 = 0u;
      v219 = objc_msgSend_imagePlaceholders(*(v332 + 32), v151, v152);
      v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v220, &v333, v337, 16);
      if (v222)
      {
        v223 = 0;
        v224 = *v334;
        do
        {
          for (i = 0; i != v222; ++i)
          {
            if (*v334 != v224)
            {
              objc_enumerationMutation(v219);
            }

            v226 = *(*(&v333 + 1) + 8 * i);
            if (v223)
            {
              v227 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v221, @"Media-%ld", v223);
              objc_msgSend_setInfo_forSageTag_(*(v332 + 32), v228, v226, v227);
            }

            else
            {
              v227 = @"Media";
              objc_msgSend_setInfo_forSageTag_(*(v332 + 32), v221, v226, @"Media");
            }

            ++v223;
          }

          v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v221, &v333, v337, 16);
        }

        while (v222);
      }

      v214 = v332;
    }
  }

  if (*(v214 + 152) != 1)
  {
    goto LABEL_60;
  }

  v231 = objc_msgSend_thumbnailTextForTitlePlaceholder(*(v214 + 32), v151, v152);
  if (v231)
  {
    goto LABEL_55;
  }

  v232 = objc_msgSend_titlePlaceholder(*(v332 + 32), v229, v230);
  v235 = objc_msgSend_textStorage(v232, v233, v234);
  v238 = objc_msgSend_length(v235, v236, v237) == 0;

  if (!v238)
  {
    v231 = objc_msgSend_titlePlaceholder(*(v332 + 32), v239, v240);
    v243 = objc_msgSend_textStorage(v231, v241, v242);
    v246 = objc_msgSend_string(v243, v244, v245);
    objc_msgSend_setThumbnailTextForTitlePlaceholder_(*(v332 + 32), v247, v246);

LABEL_55:
  }

  v250 = objc_msgSend_thumbnailTextForBodyPlaceholder(*(v332 + 32), v239, v240);
  if (v250)
  {
LABEL_59:

    v214 = v332;
    goto LABEL_60;
  }

  v251 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v248, v249);
  v254 = objc_msgSend_textStorage(v251, v252, v253);
  v257 = objc_msgSend_length(v254, v255, v256) == 0;

  v214 = v332;
  if (!v257)
  {
    v250 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v151, v152);
    v260 = objc_msgSend_textStorage(v250, v258, v259);
    v263 = objc_msgSend_string(v260, v261, v262);
    objc_msgSend_setThumbnailTextForBodyPlaceholder_(*(v332 + 32), v264, v263);

    goto LABEL_59;
  }

LABEL_60:
  if (*(v214 + 144) < *MEMORY[0x277D80960])
  {
    hasBug16580905 = objc_msgSend_hasBug16580905(*(v214 + 32), v151, v152);
    v214 = v332;
    if (hasBug16580905)
    {
      objc_msgSend_willModifyForUpgrade(*(v332 + 32), v151, v152);
      v268 = objc_msgSend_owningDocument(*(v332 + 32), v266, v267);
      v271 = objc_msgSend_show(v268, v269, v270);
      v274 = objc_msgSend_theme(v271, v272, v273);

      v277 = objc_msgSend_pastingContext(MEMORY[0x277D805F0], v275, v276);
      v278 = objc_alloc(MEMORY[0x277D7FFD0]);
      v281 = objc_msgSend_stylesheet(v268, v279, v280);
      v283 = objc_msgSend_initWithTargetStylesheet_(v278, v282, v281);

      objc_msgSend_setClientsMustRemap_(v283, v284, 1);
      v285 = *(v332 + 32);
      v288 = objc_msgSend_stylesheet(v268, v286, v287);
      objc_msgSend_adoptStylesheet_withMapper_(v285, v289, v288, v283);

      v290 = [KNSlideNode alloc];
      v293 = objc_msgSend_context(*(v332 + 32), v291, v292);
      v295 = objc_msgSend_initWithContext_(v290, v294, v293);

      objc_msgSend_setSlide_(v295, v296, *(v332 + 32));
      objc_msgSend_setSlideNode_(*(v332 + 32), v297, v295);
      objc_msgSend_willBeRemovedFromDocumentRoot_(*(v332 + 32), v298, v268);
      objc_msgSend_wasRemovedFromDocumentRoot_(*(v332 + 32), v299, v268);
      objc_msgSend_addTemplateSlideNode_dolcContext_(v274, v300, v295, v277);

      v214 = v332;
    }
  }

  if (!objc_msgSend_count(*(*(v214 + 32) + 264), v151, v152))
  {
    v303 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v301, v302);
    v304 = objc_alloc(MEMORY[0x277CBEA60]);
    v307 = objc_msgSend_textStorage(v303, v305, v306);
    v309 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v307, v308, 0, 0);
    v311 = objc_msgSend_initWithObjects_(v304, v310, v309, 0);
    v312 = *(v332 + 32);
    v313 = *(v312 + 264);
    *(v312 + 264) = v311;
  }

  if (!objc_msgSend_count(*(*(v332 + 32) + 272), v301, v302))
  {
    v316 = objc_msgSend_bodyPlaceholder(*(v332 + 32), v314, v315);
    v317 = objc_alloc(MEMORY[0x277CBEA60]);
    v320 = objc_msgSend_textStorage(v316, v318, v319);
    v322 = objc_msgSend_listStyleAtParIndex_effectiveRange_(v320, v321, 0, 0);
    v324 = objc_msgSend_initWithObjects_(v317, v323, v322, 0);
    v325 = *(v332 + 32);
    v326 = *(v325 + 272);
    *(v325 + 272) = v324;
  }

  objc_msgSend_updatePlaceholderText(*(v332 + 32), v314, v315);
}

void sub_275D66404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275D665A4(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  *&asbd.mSampleRate = xmmword_275E70938;
  *&asbd.mBytesPerPacket = unk_275E70948;
  *&asbd.mBitsPerChannel = 32;
  layout = *ymmword_275E70960;
  formatDescriptionOut = 0;
  v2 = *MEMORY[0x277CBECE8];
  CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], &asbd, 0x20uLL, &layout, 0, 0, 0, &formatDescriptionOut);
  blockBufferOut = 0;
  CMBlockBufferCreateWithMemoryBlock(v2, 0, 0x8000uLL, v2, 0, 0, 0x8000uLL, 1u, &blockBufferOut);
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
  bzero(dataPointerOut, 0x8000uLL);
  v3 = objc_alloc(MEMORY[0x277CE6460]);
  v6 = objc_msgSend_generatedFileURL(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_initWithURL_fileType_error_(v3, v7, v6, *MEMORY[0x277CE5DA8], 0);

  v41 = objc_alloc(MEMORY[0x277CE6468]);
  v39 = MEMORY[0x277CBEAC0];
  v40 = *MEMORY[0x277CE5E48];
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, 1633772320);
  v11 = *MEMORY[0x277CB8280];
  v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, asbd.mSampleRate);
  v15 = *MEMORY[0x277CB82E0];
  v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, 2);
  v18 = *MEMORY[0x277CB82B0];
  v20 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v19, &layout, 32);
  v21 = *MEMORY[0x277CB8250];
  v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v22, 64000);
  v25 = objc_msgSend_dictionaryWithObjectsAndKeys_(v39, v24, v10, v11, v14, v15, v17, v18, v20, v21, v23, *MEMORY[0x277CB8268], 0);
  v27 = objc_msgSend_initWithMediaType_outputSettings_(v41, v26, v40, v25);

  objc_msgSend_addInput_(v8, v28, v27);
  objc_msgSend_setShouldOptimizeForNetworkUse_(v8, v29, 1);
  objc_msgSend_startWriting(v8, v30, v31);
  v53 = *MEMORY[0x277CC08F0];
  v42 = v53;
  v54 = *(MEMORY[0x277CC08F0] + 16);
  v32 = v54;
  objc_msgSend_startSessionAtSourceTime_(v8, v33, &v53);
  memset(&v59, 0, sizeof(v59));
  CMTimeMakeWithSeconds(&v59, *(*(a1 + 32) + 8), asbd.mSampleRate);
  memset(&v58, 0, sizeof(v58));
  CMTimeMake(&v58, 4096, asbd.mSampleRate);
  *&v53 = 0;
  *(&v53 + 1) = &v53;
  v54 = 0x3810000000;
  v55 = &unk_275E9EF93;
  v56 = v42;
  v57 = v32;
  v34 = dispatch_queue_create("KNEmptyMovieFileGenerator audio writing", 0);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_275D669D4;
  v44[3] = &unk_27A698040;
  v35 = v27;
  v51 = v58;
  v45 = v35;
  v48 = &v53;
  v49 = blockBufferOut;
  v50 = formatDescriptionOut;
  v52 = v59;
  v36 = v8;
  v46 = v36;
  v47 = *(a1 + 40);
  objc_msgSend_requestMediaDataWhenReadyOnQueue_usingBlock_(v35, v37, v34, v44);

  _Block_object_dispose(&v53, 8);
  objc_autoreleasePoolPop(context);
}

void sub_275D669D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_msgSend_isReadyForMoreMediaData(*(a1 + 32), v3, v4))
  {
    v5 = *MEMORY[0x277CBECE8];
    v20 = *MEMORY[0x277CC0898];
    v6 = *(MEMORY[0x277CC0898] + 16);
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v29 = 0;
      *&sampleTimingArray.decodeTimeStamp.timescale = 0u;
      *&sampleTimingArray.presentationTimeStamp.epoch = 0u;
      *&sampleTimingArray.presentationTimeStamp.value = 0u;
      *&sampleTimingArray.duration.value = *(a1 + 80);
      sampleTimingArray.duration.epoch = *(a1 + 96);
      v8 = *(a1 + 64);
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 32);
      sampleTimingArray.presentationTimeStamp.epoch = *(v9 + 48);
      *&sampleTimingArray.presentationTimeStamp.value = v10;
      *&sampleTimingArray.decodeTimeStamp.value = v20;
      sampleTimingArray.decodeTimeStamp.epoch = v6;
      sampleSizeArray = 8;
      CMSampleBufferCreate(v5, v8, 1u, 0, 0, *(a1 + 72), 4096, 1, &sampleTimingArray, 1, &sampleSizeArray, &v29);
      objc_msgSend_appendSampleBuffer_(*(a1 + 32), v11, v29);
      CFRelease(v29);
      lhs = *(*(*(a1 + 56) + 8) + 32);
      rhs = *(a1 + 80);
      CMTimeAdd(&v26, &lhs, &rhs);
      *(*(*(a1 + 56) + 8) + 32) = v26;
      lhs = *(*(*(a1 + 56) + 8) + 32);
      rhs = *(a1 + 104);
      if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
      {
        break;
      }

      objc_autoreleasePoolPop(v7);
      if ((objc_msgSend_isReadyForMoreMediaData(*(a1 + 32), v14, v15) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    objc_msgSend_markAsFinished(*(a1 + 32), v12, v13);
    v16 = *(a1 + 40);
    lhs = *(a1 + 104);
    objc_msgSend_endSessionAtSourceTime_(v16, v17, &lhs);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_275D66C38;
    v21[3] = &unk_27A698018;
    v23 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v18 = *(a1 + 40);
    v22 = *(a1 + 48);
    objc_msgSend_finishWritingWithCompletionHandler_(v18, v19, v21);

    objc_autoreleasePoolPop(v7);
  }

LABEL_7:
  objc_autoreleasePoolPop(v2);
}

void sub_275D66C38(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_275D66CF0()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 4101, 4102, 4107, 4112, 4118, 4119, 4120, 4121, 4122, 4123, 4124, 4146, 4147, 4148, 4149, 4150, 4151, 4152, 4153, 4156, 4177, 4176, 4178, 4103, 4104, 4105, 4106, 4108, 4109, 4110, 4111, 4113, 4114, 4115, 4116, 4117, 4125, 4126, 4127, 4128, 4129, 4130, 4131, 4132, 4133, 4134, 4135, 4136, 4137, 4138, 4139, 4140, 4141, 4142, 4143, 4144, 4145, 4154, 4155, 4157, 4158);
  v3 = qword_280A3BF60;
  qword_280A3BF60 = v2;

  if (!qword_280A3BF60)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[KNMotionBackgroundStyle properties]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 190, 0, "invalid nil value for '%{public}s'", "properties");

    v12 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v12, v10, v11);
  }
}

void sub_275D67124()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A3BF70;
  v10 = v0;
  qword_280A3BF70 = v0;

  if (!qword_280A3BF70)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "+[KNMotionBackgroundStyle propertiesAllowingNSNull]_block_invoke");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 204, 0, "invalid nil value for '%{public}s'", "s_nullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }
}

uint64_t sub_275D679EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v6 = v4;
  if (v4)
  {
    v7 = objc_msgSend_valueForProperty_(v4, v5, 4101);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

void sub_275D67CD0()
{
  v58[18] = *MEMORY[0x277D85DE8];
  v57[0] = @"motionBackground-0-motionBackgroundStyle";
  v56 = sub_275DC204C();
  v55 = objc_msgSend_localizedStringForKey_value_table_(v56, v0, @"Rainbow", &stru_2884D8E20, @"Keynote");
  v58[0] = v55;
  v57[1] = @"motionBackground-1-motionBackgroundStyle";
  v54 = sub_275DC204C();
  v53 = objc_msgSend_localizedStringForKey_value_table_(v54, v1, @"Ocean Floor", &stru_2884D8E20, @"Keynote");
  v58[1] = v53;
  v57[2] = @"motionBackground-2-motionBackgroundStyle";
  v52 = sub_275DC204C();
  v51 = objc_msgSend_localizedStringForKey_value_table_(v52, v2, @"Neptune", &stru_2884D8E20, @"Keynote");
  v58[2] = v51;
  v57[3] = @"motionBackground-3-motionBackgroundStyle";
  v50 = sub_275DC204C();
  v49 = objc_msgSend_localizedStringForKey_value_table_(v50, v3, @"Snow Day", &stru_2884D8E20, @"Keynote");
  v58[3] = v49;
  v57[4] = @"motionBackground-4-motionBackgroundStyle";
  v48 = sub_275DC204C();
  v47 = objc_msgSend_localizedStringForKey_value_table_(v48, v4, @"Neon Splash", &stru_2884D8E20, @"Keynote");
  v58[4] = v47;
  v57[5] = @"motionBackground-5-motionBackgroundStyle";
  v46 = sub_275DC204C();
  v45 = objc_msgSend_localizedStringForKey_value_table_(v46, v5, @"Jade Cliffs", &stru_2884D8E20, @"Keynote");
  v58[5] = v45;
  v57[6] = @"motionBackground-6-motionBackgroundStyle";
  v44 = sub_275DC204C();
  v43 = objc_msgSend_localizedStringForKey_value_table_(v44, v6, @"Stormy Seas", &stru_2884D8E20, @"Keynote");
  v58[6] = v43;
  v57[7] = @"motionBackground-7-motionBackgroundStyle";
  v42 = sub_275DC204C();
  v41 = objc_msgSend_localizedStringForKey_value_table_(v42, v7, @"Poolside", &stru_2884D8E20, @"Keynote");
  v58[7] = v41;
  v57[8] = @"motionBackground-8-motionBackgroundStyle";
  v40 = sub_275DC204C();
  v39 = objc_msgSend_localizedStringForKey_value_table_(v40, v8, @"Nebula", &stru_2884D8E20, @"Keynote");
  v58[8] = v39;
  v57[9] = @"motionBackground-9-motionBackgroundStyle";
  v38 = sub_275DC204C();
  v37 = objc_msgSend_localizedStringForKey_value_table_(v38, v9, @"Black Smoke", &stru_2884D8E20, @"Keynote");
  v58[9] = v37;
  v57[10] = @"motionBackground-10-motionBackgroundStyle";
  v36 = sub_275DC204C();
  v35 = objc_msgSend_localizedStringForKey_value_table_(v36, v10, @"Lime Juice", &stru_2884D8E20, @"Keynote");
  v58[10] = v35;
  v57[11] = @"motionBackground-11-motionBackgroundStyle";
  v34 = sub_275DC204C();
  v33 = objc_msgSend_localizedStringForKey_value_table_(v34, v11, @"Solar Flare", &stru_2884D8E20, @"Keynote");
  v58[11] = v33;
  v57[12] = @"motionBackground-12-motionBackgroundStyle";
  v32 = sub_275DC204C();
  v31 = objc_msgSend_localizedStringForKey_value_table_(v32, v12, @"Sunset Dunes", &stru_2884D8E20, @"Keynote");
  v58[12] = v31;
  v57[13] = @"motionBackground-13-motionBackgroundStyle";
  v13 = sub_275DC204C();
  v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"Morning Surf", &stru_2884D8E20, @"Keynote");
  v58[13] = v15;
  v57[14] = @"motionBackground-14-motionBackgroundStyle";
  v16 = sub_275DC204C();
  v18 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"Lava Lamp", &stru_2884D8E20, @"Keynote");
  v58[14] = v18;
  v57[15] = @"motionBackground-15-motionBackgroundStyle";
  v19 = sub_275DC204C();
  v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"Flamingo", &stru_2884D8E20, @"Keynote");
  v58[15] = v21;
  v57[16] = @"motionBackground-16-motionBackgroundStyle";
  v22 = sub_275DC204C();
  v24 = objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Cool Breeze", &stru_2884D8E20, @"Keynote");
  v58[16] = v24;
  v57[17] = @"motionBackground-17-motionBackgroundStyle";
  v25 = sub_275DC204C();
  v27 = objc_msgSend_localizedStringForKey_value_table_(v25, v26, @"Purple Vista", &stru_2884D8E20, @"Keynote");
  v58[17] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v58, v57, 18);
  v30 = qword_280A3BF80;
  qword_280A3BF80 = v29;
}

void sub_275D685D4()
{
  v58[18] = *MEMORY[0x277D85DE8];
  v57[0] = @"motionBackground-0-motionBackgroundStyle";
  v56 = sub_275DC204C();
  v55 = objc_msgSend_localizedStringForKey_value_table_(v56, v0, @"Ambient diffused moving background that transitions through the colors of the rainbow", &stru_2884D8E20, @"Keynote");
  v58[0] = v55;
  v57[1] = @"motionBackground-1-motionBackgroundStyle";
  v54 = sub_275DC204C();
  v53 = objc_msgSend_localizedStringForKey_value_table_(v54, v1, @"Black moving background with blue mountains", &stru_2884D8E20, @"Keynote");
  v58[1] = v53;
  v57[2] = @"motionBackground-2-motionBackgroundStyle";
  v52 = sub_275DC204C();
  v51 = objc_msgSend_localizedStringForKey_value_table_(v52, v2, @"Ambient diffused moving background that transitions through blue and navy", &stru_2884D8E20, @"Keynote");
  v58[2] = v51;
  v57[3] = @"motionBackground-3-motionBackgroundStyle";
  v50 = sub_275DC204C();
  v49 = objc_msgSend_localizedStringForKey_value_table_(v50, v3, @"Light blue moving background with white mountains", &stru_2884D8E20, @"Keynote");
  v58[3] = v49;
  v57[4] = @"motionBackground-4-motionBackgroundStyle";
  v48 = sub_275DC204C();
  v47 = objc_msgSend_localizedStringForKey_value_table_(v48, v4, @"Ambient diffused moving background that transitions through pink and purple", &stru_2884D8E20, @"Keynote");
  v58[4] = v47;
  v57[5] = @"motionBackground-5-motionBackgroundStyle";
  v46 = sub_275DC204C();
  v45 = objc_msgSend_localizedStringForKey_value_table_(v46, v5, @"Dark blue moving background with green and aqua mountains", &stru_2884D8E20, @"Keynote");
  v58[5] = v45;
  v57[6] = @"motionBackground-6-motionBackgroundStyle";
  v44 = sub_275DC204C();
  v43 = objc_msgSend_localizedStringForKey_value_table_(v44, v6, @"Dark blue moving background with green waves", &stru_2884D8E20, @"Keynote");
  v58[6] = v43;
  v57[7] = @"motionBackground-7-motionBackgroundStyle";
  v42 = sub_275DC204C();
  v41 = objc_msgSend_localizedStringForKey_value_table_(v42, v7, @"Ambient diffused moving background that transitions through aqua and blue", &stru_2884D8E20, @"Keynote");
  v58[7] = v41;
  v57[8] = @"motionBackground-8-motionBackgroundStyle";
  v40 = sub_275DC204C();
  v39 = objc_msgSend_localizedStringForKey_value_table_(v40, v8, @"Black moving background with diffused purple mountains", &stru_2884D8E20, @"Keynote");
  v58[8] = v39;
  v57[9] = @"motionBackground-9-motionBackgroundStyle";
  v38 = sub_275DC204C();
  v37 = objc_msgSend_localizedStringForKey_value_table_(v38, v9, @"Black moving background with gray landscape", &stru_2884D8E20, @"Keynote");
  v58[9] = v37;
  v57[10] = @"motionBackground-10-motionBackgroundStyle";
  v36 = sub_275DC204C();
  v35 = objc_msgSend_localizedStringForKey_value_table_(v36, v10, @"Green moving background with light green blobs", &stru_2884D8E20, @"Keynote");
  v58[10] = v35;
  v57[11] = @"motionBackground-11-motionBackgroundStyle";
  v34 = sub_275DC204C();
  v33 = objc_msgSend_localizedStringForKey_value_table_(v34, v11, @"Light orange moving background with orange waves", &stru_2884D8E20, @"Keynote");
  v58[11] = v33;
  v57[12] = @"motionBackground-12-motionBackgroundStyle";
  v32 = sub_275DC204C();
  v31 = objc_msgSend_localizedStringForKey_value_table_(v32, v12, @"Purple moving background with orange mountains", &stru_2884D8E20, @"Keynote");
  v58[12] = v31;
  v57[13] = @"motionBackground-13-motionBackgroundStyle";
  v13 = sub_275DC204C();
  v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"Gray moving background with light gray waves", &stru_2884D8E20, @"Keynote");
  v58[13] = v15;
  v57[14] = @"motionBackground-14-motionBackgroundStyle";
  v16 = sub_275DC204C();
  v18 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"Orange moving background with pink blobs", &stru_2884D8E20, @"Keynote");
  v58[14] = v18;
  v57[15] = @"motionBackground-15-motionBackgroundStyle";
  v19 = sub_275DC204C();
  v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"Ambient diffused moving background that transitions through pink and peach", &stru_2884D8E20, @"Keynote");
  v58[15] = v21;
  v57[16] = @"motionBackground-16-motionBackgroundStyle";
  v22 = sub_275DC204C();
  v24 = objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"White moving background with multicolored waves", &stru_2884D8E20, @"Keynote");
  v58[16] = v24;
  v57[17] = @"motionBackground-17-motionBackgroundStyle";
  v25 = sub_275DC204C();
  v27 = objc_msgSend_localizedStringForKey_value_table_(v25, v26, @"Purple moving background with dark purple mountains", &stru_2884D8E20, @"Keynote");
  v58[17] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v58, v57, 18);
  v30 = qword_280A3BF90;
  qword_280A3BF90 = v29;
}

void sub_275D6DC90(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 52) == 1 && *(a1 + 40) < *MEMORY[0x277D808B8])
  {
    v28 = objc_msgSend_pathSource(*(a1 + 32), a2, a3);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
      v7 = objc_msgSend_pathSource(*(a1 + 32), v5, v6);
      v29 = objc_msgSend_bezierPath(v7, v8, v9);

      v10 = objc_alloc(MEMORY[0x277D801C8]);
      v12 = objc_msgSend_initWithBezierPath_(v10, v11, v29);
      objc_msgSend_setPathSource_(*(a1 + 32), v13, v12);
    }
  }

  if (*(a1 + 48) == 4)
  {
    v30 = objc_msgSend_geometry(*(a1 + 32), a2, a3);
    objc_msgSend_angle(v30, v14, v15);
    v17 = v16;

    if (v17 != 0.0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v18, v19);
      v22 = objc_msgSend_geometry(*(a1 + 32), v20, v21);
      v31 = objc_msgSend_mutableCopy(v22, v23, v24);

      objc_msgSend_setAngle_(v31, v25, v26, 0.0);
      objc_msgSend_setGeometry_(*(a1 + 32), v27, v31);
    }
  }
}

id sub_275D6DF2C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8F0D0](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNPlaceholderInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275D6E830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275D6E848(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_isSlideNumberVisible(a2, a2, a3);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_275D70124(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_indexOfObjectIdenticalTo_(*(a1 + 32), a2, a2);
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v6, a3);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v7, v8, v5);
}

void sub_275D73780(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v12 = TSUDynamicCast();

  v6 = v12;
  if (v12)
  {
    v7 = objc_msgSend_url(v12, v4, v5);
    v9 = objc_msgSend_uniqueIdentifierFromHyperlinkURL_(KNHyperlinkController, v8, v7);
    v11 = v9;
    if (v9 && objc_msgSend_isEqualToString_(v9, v10, *(a1 + 32)))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v6 = v12;
  }
}

void sub_275D74EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275D74EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D74F0C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  v21 = TSUDynamicCast();

  v8 = v21;
  if (v21)
  {
    v9 = objc_msgSend_tableName(v21, v6, v7);
    v12 = objc_msgSend_objectLocale(v21, v10, v11);
    if (objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v12, v13, v9, *(a1 + 32)))
    {
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      if (!v17)
      {
        v18 = objc_msgSend_baseTableModel(v21, v14, v15);
        v19 = *(*(a1 + 40) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        if (!a3)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      *(v16 + 40) = 0;

      if (a3)
      {
LABEL_5:
        *a3 = 1;
      }
    }

LABEL_6:

    v8 = v21;
  }
}

void sub_275D75144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D7515C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v21 = TSUDynamicCast();

  v6 = v21;
  if (v21)
  {
    v7 = objc_msgSend_tableName(v21, v4, v5);
    if (!objc_msgSend_length(*(a1 + 32), v8, v9) || (v12 = *(a1 + 32), objc_msgSend_objectLocale(v21, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_locale(v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v7, v17, v12, v16), v16, v13, v12))
    {
      v18 = *(*(*(a1 + 40) + 8) + 40);
      v19 = objc_msgSend_resolver(v21, v10, v11);
      objc_msgSend_addObject_(v18, v20, v19);
    }

    v6 = v21;
  }
}

void sub_275D75348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D75360(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v10;
  if (isKindOfClass)
  {
    v8 = objc_msgSend_tableName(v10, v10, v6);
    if (!objc_msgSend_caseInsensitiveCompare_(v8, v9, *(a1 + 32)))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      if (a3)
      {
        *a3 = 1;
      }
    }

    v7 = v10;
  }
}

void sub_275D768F4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v5 = a2;
  objc_msgSend_addLoadObserver_action_(v5, v4, *(a1 + 32), sel_didLoadSlide_);
}

void sub_275D76978(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275D76A20;
  v7[3] = &unk_27A6982F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(a2, v6, v7);
}

void sub_275D76A20(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, a3);
  objc_msgSend_CGSizeValue(v6, v7, v8);
  v10 = v9;
  v12 = v11;

  v15 = objc_msgSend_data(v20, v13, v14);
  v18 = objc_msgSend_null(MEMORY[0x277D80828], v16, v17);

  if (v15 != v18)
  {
    objc_msgSend_addThumbnail_atSize_(*(a1 + 40), v19, v15, v10, v12);
  }
}

void sub_275D76B0C(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = objc_msgSend_data(a2, a2, a3);
  if (v12)
  {
    v6 = objc_msgSend_null(MEMORY[0x277D80828], v4, v5);

    if (v12 != v6)
    {
      v9 = objc_msgSend_needsDownload(v12, v7, v8);
      v10 = *(a1 + 32);
      if (v9)
      {
        objc_msgSend_tsck_addDownloadObserver_lockMode_options_completionHandler_(v12, v12, v10, 2, 2, &unk_2884D4DB0);
      }

      else
      {
        objc_msgSend_naturalSizeForImageData_(MEMORY[0x277D801D0], v12, v12);
        objc_msgSend_addThumbnail_atSize_(v10, v11, v12);
      }
    }
  }
}

void sub_275D76BE4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  objc_msgSend_naturalSizeForImageData_(MEMORY[0x277D801D0], v5, v4);
  objc_msgSend_addThumbnail_atSize_(v7, v6, v4);
}

void sub_275D76C68(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = objc_msgSend_slideAndReturnError_(v3, a2, &v10);
  v7 = v10;
  if (v4)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v5, v6);
    *(*(a1 + 32) + 102) = objc_msgSend_isSlideNumberVisible(v4, v8, v9);
  }

  else if (KNPersistenceLogCat_init_token != -1)
  {
    sub_275E5A0C8();
  }
}

void sub_275D76D20()
{
  v0 = TSULogCreateCategory();
  v1 = KNPersistenceLogCat_log_t;
  KNPersistenceLogCat_log_t = v0;
}

void sub_275D76D64(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = objc_msgSend_slideAndReturnError_(v3, a2, &v10);
  v7 = v10;
  if (v4)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v5, v6);
    *(*(a1 + 32) + 152) = objc_msgSend_backgroundIsNoFillOrColorFillWithAlpha(v4, v8, v9);
  }

  else if (KNPersistenceLogCat_init_token != -1)
  {
    sub_275E5A0F0();
  }
}

void sub_275D76E1C()
{
  v0 = TSULogCreateCategory();
  v1 = KNPersistenceLogCat_log_t;
  KNPersistenceLogCat_log_t = v0;
}

void sub_275D76E60(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_msgSend_count(v8, v4, v5))
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v6, v7);
    objc_storeStrong((*(a1 + 32) + 144), a2);
  }
}

void sub_275D7822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

void sub_275D78290(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 224), a2);
  v5 = a2;
  objc_msgSend_setParentInfo_(*(*(a1 + 32) + 224), v4, *(a1 + 32));
}

void sub_275D78318(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 232);
  *(v5 + 232) = v4;
}

uint64_t sub_275D783A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D783C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_titlePlaceholder(*(a1 + 32), a2, a3);

  if (!v4)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_defaultTitlePlaceholder(*(a1 + 32), v7, v8);
    objc_msgSend_setTitlePlaceholder_(*(a1 + 32), v10, v9);
  }

  v11 = objc_msgSend_bodyPlaceholder(*(a1 + 32), v5, v6);

  if (!v11)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v12, v13);
    v16 = objc_msgSend_defaultBodyPlaceholder(*(a1 + 32), v14, v15);
    objc_msgSend_setBodyPlaceholder_(*(a1 + 32), v17, v16);
  }

  v18 = objc_msgSend_slideNumberPlaceholder(*(a1 + 32), v12, v13);

  if (!v18)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v19, v20);
    v23 = objc_msgSend_defaultSlideNumberPlaceholder(*(a1 + 32), v21, v22);
    objc_msgSend_setSlideNumberPlaceholder_(*(a1 + 32), v24, v23);
  }

  if (*(a1 + 56))
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v19, v20);
    if (*(*(a1 + 32) + 232))
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNSlide(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_2");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlidePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 112, 0, "Expected _infosUsingObjectPlaceholderGeometry to be nil at this point since we're upgrading a document.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v33 = *(a1 + 32);
      v34 = *(v33 + 232);
      *(v33 + 232) = v32;

      objc_msgSend_addObject_(*(*(a1 + 32) + 232), v35, *(*(*(a1 + 40) + 8) + 40));
    }
  }

  v36 = *(a1 + 32);
  if (!v36[29])
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = *(a1 + 32);
    v39 = *(v38 + 232);
    *(v38 + 232) = v37;

    v36 = *(a1 + 32);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v40 = objc_msgSend_placeholdersForTags(v36, v19, v20, 0);
  v43 = objc_msgSend_allKeys(v40, v41, v42);

  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v63, v67, 16);
  if (v47)
  {
    v48 = *v64;
    v49 = MEMORY[0x277D81408];
    do
    {
      v50 = 0;
      do
      {
        if (*v64 != v48)
        {
          objc_enumerationMutation(v43);
        }

        v51 = *(*(&v63 + 1) + 8 * v50);
        v52 = objc_msgSend_templateSlide(*(a1 + 32), v45, v46);
        v54 = objc_msgSend_infoForTag_(v52, v53, v51);
        v55 = v54 == 0;

        if (v55)
        {
          v57 = objc_msgSend_infoForTag_(*(a1 + 32), v45, v51);
          if (*v49 != -1)
          {
            sub_275E5A118();
          }

          objc_msgSend_removeTagForDrawable_(*(a1 + 32), v56, v57);
        }

        ++v50;
      }

      while (v47 != v50);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v63, v67, 16);
    }

    while (v47);
  }

  if (*(a1 + 48) < *MEMORY[0x277D80960])
  {
    v60 = objc_msgSend_templateSlide(*(a1 + 32), v58, v59);
    objc_msgSend_hasBug16580905(v60, v61, v62);
  }
}

void sub_275D787C8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275D78C8C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 40) <= 0x51FF678F7uLL)
  {
    v4 = *(a1 + 32);
    if (!v4[28])
    {
      objc_msgSend_willModifyForUpgrade(v4, a2, a3);
      v7 = objc_msgSend_context(*(a1 + 32), v5, v6);
      v10 = objc_msgSend_documentRoot(v7, v8, v9);

      v13 = objc_msgSend_theme(v10, v11, v12);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_275D78DC4;
      v16[3] = &unk_27A698458;
      v16[4] = *(a1 + 32);
      v14 = v10;
      v17 = v14;
      objc_msgSend_upgradeStylesWithBlock_(v13, v15, v16);
    }
  }
}

void sub_275D78DC4(uint64_t a1, void *a2)
{
  v29 = a2;
  objc_msgSend_addDefaultPresenterNotesStylesIfAbsent(v29, v3, v4);
  v7 = objc_msgSend_defaultPresenterNotesParagraphStyle(v29, v5, v6);
  v8 = objc_alloc(MEMORY[0x277D80F28]);
  v11 = objc_msgSend_context(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_stylesheet(*(a1 + 40), v12, v13);
  v17 = objc_msgSend_initialListStyle(v7, v15, v16);
  v19 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v8, v18, v11, 0, 4, v14, v7, v17, 0, 0);

  v20 = [KNNoteInfo alloc];
  v23 = objc_msgSend_context(*(a1 + 32), v21, v22);
  v25 = objc_msgSend_initWithContext_containedStorage_(v20, v24, v23, v19);
  v26 = *(a1 + 32);
  v27 = *(v26 + 224);
  *(v26 + 224) = v25;

  objc_msgSend_setParentInfo_(*(*(a1 + 32) + 224), v28, *(a1 + 32));
}

void *sub_275D7BCE4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (!result[35])
  {
    objc_msgSend_willModifyForUpgrade(result, a2, a3);
    v5 = objc_opt_class();
    v8 = objc_msgSend_context(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_i_makeArchivedMoviePosterImageDataWithContext_(v5, v9, v8);
    v11 = *(a1 + 32);
    v12 = *(v11 + 280);
    *(v11 + 280) = v10;

    v14 = *(a1 + 32);
    v15 = v14[35];

    return objc_msgSend_didAddReferenceToData_(v14, v13, v15);
  }

  return result;
}

id sub_275D7C454(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 4u;
  v4 = *(v3 + 64);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8EF90](v5);
    *(v3 + 64) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNLiveVideoInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275D7C728(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 40) <= 0x2CBCCA934uLL)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
    v33 = objc_msgSend_textStorage(*(a1 + 32), v4, v5);
    v6 = [KNSlideNumberAttachment alloc];
    v9 = objc_msgSend_context(*(a1 + 32), v7, v8);
    v11 = objc_msgSend_initWithContext_(v6, v10, v9);

    objc_msgSend_willModifyForUpgrade(v33, v12, v13);
    v16 = objc_msgSend_range(v33, v14, v15);
    objc_msgSend_insertAttachmentOrFootnote_range_(v33, v17, v11, v16, v17);
  }

  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
  v20 = objc_msgSend_geometry(*(a1 + 32), v18, v19);
  v34 = objc_msgSend_mutableCopy(v20, v21, v22);

  objc_msgSend_size(v34, v23, v24);
  objc_msgSend_setSize_(v34, v25, v26);
  objc_msgSend_setHeightValid_(v34, v27, 0);
  if (*(a1 + 40) <= 0x51FF64FF5uLL)
  {
    objc_msgSend_size(v34, v28, v29);
    objc_msgSend_setSize_(v34, v30, v31, 0.0);
    objc_msgSend_setWidthValid_(v34, v32, 0);
  }

  objc_msgSend_setGeometry_(*(a1 + 32), v28, v34);
}

void sub_275D7C8CC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_geometry(*(a1 + 32), v4, v5);
  v15 = objc_msgSend_mutableCopy(v6, v7, v8);

  objc_msgSend_size(v15, v9, v10);
  objc_msgSend_setSize_(v15, v11, v12);
  objc_msgSend_setHeightValid_(v15, v13, 0);
  objc_msgSend_setGeometry_(*(a1 + 32), v14, v15);
}

void sub_275D7C97C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
  v4 = MEMORY[0x277D80380];
  v12 = objc_msgSend_geometry(*(a1 + 32), v5, v6);
  objc_msgSend_size(v12, v7, v8);
  v10 = objc_msgSend_pathSourceForShapeType_naturalSize_(v4, v9, 0);
  objc_msgSend_setPathSource_(*(a1 + 32), v11, v10);
}

uint64_t sub_275D7CD28(uint64_t a1)
{
  (*(*(*(a1 + 32) + 48) + 16))();
  dispatch_source_cancel(*(*(a1 + 32) + 56));
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_275D7D410()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 516, 4096, 0);
  v3 = qword_280A3BFA8;
  qword_280A3BFA8 = v2;

  if (!qword_280A3BFA8)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[KNSlideStyle properties]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 55, 0, "invalid nil value for '%{public}s'", "properties");

    v12 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v12, v10, v11);
  }
}

void sub_275D7D568()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 516, 0);
  v3 = qword_280A3BFB8;
  v12 = v2;
  qword_280A3BFB8 = v2;

  if (!qword_280A3BFB8)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[KNSlideStyle propertiesAllowingNSNull]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 69, 0, "invalid nil value for '%{public}s'", "s_nullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }
}

void sub_275D7D974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_275D7DE70(uint64_t a1, const char *a2)
{
  if (objc_msgSend_containsProperty_(*(a1 + 32), a2, 516))
  {
    v4 = objc_msgSend_objectForProperty_(*(a1 + 32), v3, 516);
    v5 = *(a1 + 48);
    v13 = v4;
    v6 = objc_opt_class();
    LODWORD(v5) = objc_msgSend_validateObjectValue_withClass_forProperty_(v5, v7, &v13, v6, 516);
    v8 = v13;

    if (v5)
    {
      v10 = *(a1 + 56);
      *(v10 + 16) |= 1u;
      v11 = *(v10 + 24);
      if (!v11)
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C8EF70](v12);
        *(v10 + 24) = v11;
      }

      objc_msgSend_saveToArchive_archiver_(v8, v9, v11, *(a1 + 40));
    }
  }
}

void sub_275D7E93C()
{
  v0 = objc_alloc(MEMORY[0x277D80AB8]);
  v2 = objc_msgSend_numberFormatWithFormatType_decimalPlaces_showThousandsSeparator_(MEMORY[0x277D80048], v1, 258, 0, 1);
  v12 = objc_msgSend_initWithPropertiesAndValues_(v0, v3, 1349, 0, 1350, 0, 1271, 1, 1264, 1, 1287, 0, 1286, 0, 1239, 0x3FA999999999999ALL, 1481, 0, 1484, 1, 1433, v2, 1435, 4, 1431, 0, 1472, 0, 1474, 0, 0);

  objc_storeStrong(&qword_280A3BFC8, v12);
  if (!qword_280A3BFC8)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNAppPropertiesProvider appChartPropertyOverrides]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAppPropertiesProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 169, 0, "invalid nil value for '%{public}s'", "sAppChartPropertyOverrides");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }
}

uint64_t sub_275D81FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = objc_msgSend_indexOfSlideNode_(v5, v7, a2);
  v10 = objc_msgSend_indexOfSlideNode_(*(a1 + 32), v9, v6);

  if (v8 < v10)
  {
    return -1;
  }

  else
  {
    return v8 > v10;
  }
}

void sub_275D829AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275D82A0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D82A34(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc(MEMORY[0x277CBEB40]);
  v5 = objc_msgSend_initWithArray_(v3, v4, v9);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  objc_msgSend_makeObjectsPerformSelector_withObject_(v9, v8, sel_setSlideTree_, *(a1 + 32));
}

uint64_t sub_275D82AD0(uint64_t result, const char *a2, uint64_t a3)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v3 = result;
    objc_msgSend_willModifyForUpgrade(*(result + 32), a2, a3);
    v4 = *(v3 + 32);
    v5 = *(*(*(v3 + 40) + 8) + 40);

    return MEMORY[0x2821F9670](v5, sel_addOldModelDescendantsToSlideTree_, v4);
  }

  return result;
}

void sub_275D82E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275D82E64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D82E7C(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = objc_msgSend_templateSlides(*(a1 + 32), v5, v6, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend_slide(*(*(&v20 + 1) + 8 * v14), v10, v11);

          ++v14;
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
      }

      while (v12);
    }

    v17 = objc_msgSend_p_findDefaultTemplateSlideWithoutLoadingSlides(*(a1 + 32), v15, v16);
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

double sub_275D856EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_msgSend_center(v5, v7, v8);
  objc_msgSend_center(v6, v9, v10);
  TSUDistance();
  v12 = (*(a1 + 32) - v11) / *(a1 + 32) * 0.5 + 0.0;
  if (objc_msgSend_widthValid(v5, v13, v14) && objc_msgSend_widthValid(v6, v15, v16))
  {
    objc_msgSend_size(v5, v15, v16);
    v18 = v17;
    objc_msgSend_size(v6, v19, v20);
    v22 = (v18 - v21) * 0.25;
    objc_msgSend_size(v5, v23, v24);
    v26 = v25;
    objc_msgSend_size(v6, v27, v28);
    v12 = v12 + v22 / fmax(v26, v29);
  }

  if (objc_msgSend_heightValid(v5, v15, v16) && objc_msgSend_heightValid(v6, v30, v31))
  {
    objc_msgSend_size(v5, v32, v33);
    v35 = v34;
    objc_msgSend_size(v6, v36, v37);
    v39 = (v35 - v38) * 0.25;
    objc_msgSend_size(v5, v40, v41);
    v43 = v42;
    objc_msgSend_size(v6, v44, v45);
    v12 = v12 + v39 / fmax(v43, v46);
  }

  return v12;
}

BOOL sub_275D85838(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_textStorage(a2, a2, a3);
  v5 = objc_msgSend_listStyleAtParIndex_effectiveRange_(v3, v4, 0, 0);

  v7 = objc_msgSend_effectiveTypeForLevel_(v5, v6, 0) != 0;
  return v7;
}

uint64_t sub_275D85C3C(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  matched = objc_msgSend_p_matchScoreForTemplateSlide_toTemplateSlide_(v3, v6, v5, v4);
  LODWORD(v2) = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v5, v8, *(v2 + 40));

  if (v2)
  {
    return matched;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275D85F44(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_styleIdentifier(a2, v5, v6);
  v8 = String();
  v11 = objc_msgSend_styleIdentifier(v4, v9, v10);

  v12 = String();
  if (v8 < v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v8 > v12;
  }

  return v13;
}

void sub_275D85FC0(uint64_t a1, void *a2)
{
  v572[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v552 = a2;
  v553 = objc_msgSend_array(v2, v3, v4);
  v5 = objc_alloc(MEMORY[0x277D80AB8]);
  v6 = MEMORY[0x277D80278];
  v9 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v7, v8, 0.0171778519, 0.953631818, 1.0692215, 1.0);
  v572[0] = v9;
  v12 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v10, v11, 0.0329328626, 1.07337511, 0.776418328, 1.0);
  v572[1] = v12;
  v15 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v13, v14, 0.865645945, 0.970207214, 0.187016323, 1.0);
  v572[2] = v15;
  v18 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v16, v17, 1.06287956, 0.740338981, 0.0960855409, 1.0);
  v572[3] = v18;
  v21 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v19, v20, 1.15655303, 0.122111596, 0.877481461, 1.0);
  v572[4] = v21;
  v24 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v22, v23, 0.768655657, 0.0957314074, 1.1493324, 1.0);
  v572[5] = v24;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v572, 6);
  v28 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v6, v27, v26);
  v551 = objc_msgSend_initWithPropertiesAndValues_(v5, v29, 4101, @"KNGradientLinearBase", 4107, v28, 4118, 0x4060000000000000, 4116, 0, 4125, 0x3FEB68D060000000, 4120, 0x3FEF249D60000000, 4121, 0x3FF8000000000000, 4124, 0x3FF8000000000000, 4192, 0x4040D9999999999ALL, 4167, 0x3FF6BA5E353F7CEELL, 4173, 0x4044C9520200604DLL, 4137, 0x3FE0000000000000, 0);

  v30 = [KNMotionBackgroundStyle alloc];
  v33 = objc_msgSend_context(*(a1 + 32), v31, v32);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v30, v34, v33, @"Rainbow", v551, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v35, isVariation, @"motionBackground-0-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v36, isVariation);
  v37 = objc_alloc(MEMORY[0x277D80AB8]);
  v38 = MEMORY[0x277D80278];
  v41 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v39, v40, 0.049046088, 0.049046088, 0.049046088, 1.0);
  v571[0] = v41;
  v44 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v42, v43, 0.0527705923, 0.0527705923, 0.222461507, 1.0);
  v571[1] = v44;
  v47 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v45, v46, 0.0560052283, 0.0560052283, 0.680407583, 1.0);
  v571[2] = v47;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v571, 3);
  v51 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v38, v50, v49);
  v549 = objc_msgSend_initWithPropertiesAndValues_(v37, v52, 4101, @"KNGradientTerrainBase", 4107, v51, 4118, 0x4058CD33A0000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x400570A3D70A3D71, 4147, 0xC059000000000000, 4148, 0x4000000000000000, 4150, 0x401DFAE147AE147BLL, 4151, 0x401DFAE147AE147BLL, 4156, 0x401AAE147AE147AELL, 4162, 0x400780B6A0000000, 4195, 0x401D5A7080000000, 4116, 0, 4125, 0x3FF00505C0000000, 4133, 0x3FF4368BA0000000, 4134, 0x4017EF85E0000000, 4135, 0x3FF15FE180000000, 4190, 0x4041133333333333, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x404A066666666666, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153, 0x4000000000000000, 4137);

  v53 = [KNMotionBackgroundStyle alloc];
  v56 = objc_msgSend_context(*(a1 + 32), v54, v55);
  v548 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v53, v57, v56, @"Ocean Floor", v549, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v58, v548, @"motionBackground-1-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v59, v548);
  v60 = objc_alloc(MEMORY[0x277D80AB8]);
  v61 = MEMORY[0x277D80278];
  v64 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v62, v63, 0.000194204549, 0.158831462, 0.651384592, 1.0);
  v570[0] = v64;
  v67 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v65, v66, 0.00000465818812, 0.367956161, 1.32507861, 1.0);
  v570[1] = v67;
  v70 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v68, v69, 0.00794737693, 0.00000427937221, 0.719858705, 1.0);
  v570[2] = v70;
  v73 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v71, v72, 0.0000199353944, 0.00443308149, 0.317127168, 1.0);
  v570[3] = v73;
  v75 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v74, v570, 4);
  v77 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v61, v76, v75);
  v547 = objc_msgSend_initWithPropertiesAndValues_(v60, v78, 4101, @"KNGradientDiffusionBase", 4107, v77, 4118, 0x40669C53AFFFFFFELL, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4167, 0x3FF0000000000000, 4173, 0x404E800000000000, 4146, 0x4000000000000000, 4148, 0x4012333333333333, 4207, 3, 4149, 0x3FB999999999999ALL, 4156, 0x3FE231E89C000000, 0);

  v79 = [KNMotionBackgroundStyle alloc];
  v82 = objc_msgSend_context(*(a1 + 32), v80, v81);
  v546 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v79, v83, v82, @"Neptune", v547, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v84, v546, @"motionBackground-2-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v85, v546);
  v86 = objc_alloc(MEMORY[0x277D80AB8]);
  v87 = MEMORY[0x277D80278];
  v90 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v88, v89, 0.772300243, 0.857222974, 0.947685062, 1.0);
  v569[0] = v90;
  v93 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v91, v92, 0.810903847, 0.898848414, 0.993541002, 1.0);
  v569[1] = v93;
  v96 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v94, v95, 0.97643584, 0.976442396, 0.976442396, 1.0);
  v569[2] = v96;
  v99 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v97, v98, 0.979920387, 0.927681446, 0.981947541, 1.0);
  v569[3] = v99;
  v101 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v100, v569, 4);
  v103 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v87, v102, v101);
  v545 = objc_msgSend_initWithPropertiesAndValues_(v86, v104, 4101, @"KNGradientTerrainBase", 4107, v103, 4118, 0x405914E8FFFFFFFCLL, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x4012FE425AEE6320, 4147, 0x40336BCBFFB00000, 4148, 0x4000000000000000, 4150, 0x3FF2CCCCCCCCCCCDLL, 4151, 0x3FF2CCCCCCCCCCCDLL, 4156, 0x403AAB851EB851ECLL, 4162, 0x403AECBCA0000000, 4195, 0x401D5A7080000000, 4116, 0x3F83CB29A0000000, 4125, 0x3FF3574EC0000000, 4133, 0x3FF5874500000000, 4134, 0x401AF1DE60000000, 4135, 0x3FEDC0FD40000000, 4137, 0x3FD22328A0000000, 4190, 0x3FE84C3EC0000000, 4166, 0x3FF009C200000001, 4175, 0x3FA3D0B400000000, 4176, 0x40492AED80000000, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153);

  v105 = [KNMotionBackgroundStyle alloc];
  v108 = objc_msgSend_context(*(a1 + 32), v106, v107);
  v544 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v105, v109, v108, @"Snow Day", v545, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v110, v544, @"motionBackground-3-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v111, v544);
  v112 = objc_alloc(MEMORY[0x277D80AB8]);
  v113 = MEMORY[0x277D80278];
  v116 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v114, v115, 0.446791917, 0.226384312, 0.993499338, 1.0);
  v568[0] = v116;
  v119 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v117, v118, 1.13155365, 0.322087973, 0.995109021, 1.0);
  v568[1] = v119;
  v121 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v120, v568, 2);
  v123 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v113, v122, v121);
  v543 = objc_msgSend_initWithPropertiesAndValues_(v112, v124, 4101, @"KNGradientLinearBase", 4107, v123, 4118, 0x4060000000000000, 4116, 0, 4125, 0x3FF0000000000000, 4120, 0x3FE8000000000000, 4177, 0, 4121, 0x3FF8000000000000, 4124, 0x3FF8000000000000, 4192, 0x4060E00000000000, 4167, 0x4004000000000000, 4173, 0x404EBD70A3D70A3DLL, 4137, 0x3FE0000000000000, 0);

  v125 = [KNMotionBackgroundStyle alloc];
  v128 = objc_msgSend_context(*(a1 + 32), v126, v127);
  v542 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v125, v129, v128, @"Neon Splash", v543, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v130, v542, @"motionBackground-4-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v131, v542);
  v132 = objc_alloc(MEMORY[0x277D80AB8]);
  v133 = MEMORY[0x277D80278];
  v136 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v134, v135, 0.0369332023, 0.0122549022, 0.262192398, 1.0);
  v567[0] = v136;
  v139 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v137, v138, 0.141640306, 0.995141327, 0.645448267, 1.0);
  v567[1] = v139;
  v142 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v140, v141, 0.694874286, 0.949148654, 1.18095016, 1.0);
  v567[2] = v142;
  v145 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v143, v144, 0.049046088, 0.049046088, 0.049046088, 1.0);
  v567[3] = v145;
  v147 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v146, v567, 4);
  v149 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v133, v148, v147);
  v541 = objc_msgSend_initWithPropertiesAndValues_(v132, v150, 4101, @"KNGradientTerrainFlyover", 4107, v149, 4118, 0x4058CD33A0000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x4012836B8F9B1316, 4147, 0x4059000000000000, 4148, 0x4010000000000000, 4150, 0x4016000000000000, 4151, 0x4016000000000000, 4156, 0, 4162, 0x40314CC560000000, 4195, 0x401D5A7080000000, 4116, 0, 4125, 0x3FF00505C0000000, 4133, 0x3FEB8D4FE0000000, 4134, 0x401D000000000000, 4135, 0x3FF15FE180000000, 4137, 0x3FE4CCDAE0000000, 4190, 0x4059400000000000, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x4043FD70A3D70A3DLL, 4180, 0, 4182, 20, 4152, 0x3FE0000000000000, 4153);

  v151 = [KNMotionBackgroundStyle alloc];
  v154 = objc_msgSend_context(*(a1 + 32), v152, v153);
  v540 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v151, v155, v154, @"Jade Cliffs", v541, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v156, v540, @"motionBackground-5-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v157, v540);
  v158 = objc_alloc(MEMORY[0x277D80AB8]);
  v159 = MEMORY[0x277D80278];
  v162 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v160, v161, 0.230470389, 0.677356958, 0.615757406, 1.0);
  v566[0] = v162;
  v165 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v163, v164, 0.164266706, 0.249249399, 0.286720216, 1.0);
  v566[1] = v165;
  v168 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v166, v167, 0.435294122, 0.450980395, 0.494117647, 1.0);
  v566[2] = v168;
  v171 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v169, v170, 0.53725493, 0.627451003, 0.603921592, 1.0);
  v566[3] = v171;
  v173 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v172, v566, 4);
  v175 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v159, v174, v173);
  v178 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v176, v177, 0.164266706, 0.249249399, 0.286720216, 1.0);
  v539 = objc_msgSend_initWithPropertiesAndValues_(v158, v179, 4101, @"KNWavesBase", 4107, v175, 4108, v178, 4103, @"Hard Light", 4189, 0x3FE6848BEB5B2D4DLL, 4116, 0, 4125, 0x3FF1BB5260000000, 4188, 0x3FC5645680000000, 4135, 0x3FF0000000000000, 4137, 0x3FD7970CE0000000, 4190, 0x3FDD1E95C0000000, 4184, 1, 4158, 0x3FE398D640000000, 4159, 0x3FC43C45E0000000, 4166, 0x3FF4ECB0E0000000, 4183, 0, 4185, 0x3FEDF62B6AE7D567, 4173, 0x4046800000000000, 4127, 0x400C48CF40000000, 4167, 0x400F728E80000000, 4187, 0xBFE2BE2480000000, 4186, 0x3FE4364380000000, 0);

  v180 = [KNMotionBackgroundStyle alloc];
  v183 = objc_msgSend_context(*(a1 + 32), v181, v182);
  v538 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v180, v184, v183, @"Stormy Seas", v539, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v185, v538, @"motionBackground-6-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v186, v538);
  v187 = objc_alloc(MEMORY[0x277D80AB8]);
  v188 = MEMORY[0x277D80278];
  v189 = MEMORY[0x277D80280];
  v192 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v190, v191, 0.00046732201, 0.63853234, 2.49315023, 1.0);
  v194 = objc_msgSend_gradientStopWithColor_fraction_(v189, v193, v192, 0.0);
  v565[0] = v194;
  v195 = MEMORY[0x277D80280];
  v198 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v196, v197, 0.0350950137, 1.84629607, 1.84625077, 1.0);
  v200 = objc_msgSend_gradientStopWithColor_fraction_(v195, v199, v198, 0.834862);
  v565[1] = v200;
  v201 = MEMORY[0x277D80280];
  v204 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v202, v203, 0.000711828586, 0.617635965, 1.75101733, 1.0);
  v206 = objc_msgSend_gradientStopWithColor_fraction_(v201, v205, v204, 1.0);
  v565[2] = v206;
  v208 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v207, v565, 3);
  v210 = objc_msgSend_linearGradientWithGradientStops_(v188, v209, v208);
  v537 = objc_msgSend_initWithPropertiesAndValues_(v187, v211, 4101, @"KNGradientDiffusionBase", 4107, v210, 4118, 0x4063A3D70A3D70A4, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4167, 0x3FFFAE147AE147AELL, 4173, 0x404E800000000000, 4146, 0x4000000000000000, 4148, 0x4012CCCCCCCCCCCDLL, 4207, 3, 4149, 0x3FB1EB851EB851ECLL, 4156, 0x3FE231E89C000000, 0);

  v212 = [KNMotionBackgroundStyle alloc];
  v215 = objc_msgSend_context(*(a1 + 32), v213, v214);
  v536 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v212, v216, v215, @"Poolside", v537, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v217, v536, @"motionBackground-7-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v218, v536);
  v219 = objc_alloc(MEMORY[0x277D80AB8]);
  v220 = MEMORY[0x277D80278];
  v533 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v221, v222, 0.0215697698, 0.036212191, 0.0266084224, 1.0);
  v564[0] = v533;
  v225 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v223, v224, 1.42408955, 0.110789873, 1.42408955, 1.0);
  v564[1] = v225;
  v228 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v226, v227, 0.444156796, 0.00737953744, 0.581361473, 1.0);
  v564[2] = v228;
  v231 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v229, v230, 0.0165861789, 0.0033961744, 0.371912181, 1.0);
  v564[3] = v231;
  v234 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v232, v233, 0.0215697698, 0.036212191, 0.0266084224, 1.0);
  v564[4] = v234;
  v236 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v235, v564, 5);
  v238 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v220, v237, v236);
  v535 = objc_msgSend_initWithPropertiesAndValues_(v219, v239, 4101, @"KNGradientTerrainBase", 4107, v238, 4118, 0x4058CD33A0000000, 4122, 0, 4119, 0x3FF40CA0C0000000, 4120, 0x3FF75606E0000000, 4123, 0, 4121, 0x3FF31889C0000000, 4124, 0x3FF0000000000000, 4146, 0x3FF6DB22D0E56042, 4147, 0x4059000000000000, 4148, 0x4008000000000000, 4150, 0x3FB820E8C0000000, 4151, 0x3FB820E8C0000000, 4162, 0x4025CC59E0000000, 4195, 0x400E724B40000000, 4116, 0, 4125, 0x3FF00505C0000000, 4133, 0x3FE5F81220000000, 4134, 0x4034000000000000, 4135, 0x3FF15FE180000000, 4190, 0x3FEA0EFAA0000000, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x404FCF5A20000000, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153, 0x4000000000000000, 4156, 0x3FE231E89C000000, 4137);

  v240 = [KNMotionBackgroundStyle alloc];
  v243 = objc_msgSend_context(*(a1 + 32), v241, v242);
  v534 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v240, v244, v243, @"Nebula", v535, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v245, v534, @"motionBackground-8-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v246, v534);
  v247 = objc_alloc(MEMORY[0x277D80AB8]);
  v248 = MEMORY[0x277D80278];
  v251 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v249, v250, 0.0559352264, 0.0559352264, 0.0559352264, 1.0);
  v563[0] = v251;
  v254 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v252, v253, 0.112279594, 0.112280518, 0.112280019, 1.0);
  v563[1] = v254;
  v257 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v255, v256, 0.181982964, 0.181984901, 0.181983843, 1.0);
  v563[2] = v257;
  v260 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v258, v259, 0.112279594, 0.112280518, 0.112280019, 1.0);
  v563[3] = v260;
  v263 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v261, v262, 0.0559352264, 0.0559352264, 0.0559352264, 1.0);
  v563[4] = v263;
  v265 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v264, v563, 5);
  v267 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v248, v266, v265);
  v532 = objc_msgSend_initWithPropertiesAndValues_(v247, v268, 4101, @"KNGradientTerrainBase", 4107, v267, 4118, 0x4054A692E0000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x4012FE425AEE6320, 4147, 0x40336BCBFFB00000, 4148, 0x4000000000000000, 4150, 0x3FF2CCCCCCCCCCCDLL, 4151, 0x3FF2CCCCCCCCCCCDLL, 4156, 0x401C449BA5E353F8, 4162, 0x403AECBCA0000000, 4195, 0x401D5A7080000000, 4116, 0, 4125, 0x3FF1727EE0000000, 4133, 0x3FF31A7480000000, 4134, 0x4015CAC1A0000000, 4135, 0x3FE6B47620000000, 4137, 0x3FDE351760000000, 4190, 0, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x4043711E00000000, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153);

  v269 = [KNMotionBackgroundStyle alloc];
  v272 = objc_msgSend_context(*(a1 + 32), v270, v271);
  v531 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v269, v273, v272, @"Black Smoke", v532, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v274, v531, @"motionBackground-9-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v275, v531);
  v276 = objc_alloc(MEMORY[0x277D80AB8]);
  v277 = MEMORY[0x277D80278];
  v280 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v278, v279, 0.221773937, 0.493775129, 0.274629623, 1.0);
  v562[0] = v280;
  v283 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v281, v282, 0.26312685, 1.06772661, 0.0647380053, 1.0);
  v562[1] = v283;
  v286 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v284, v285, 0.367542922, 0.768351912, 0.603538454, 1.0);
  v562[2] = v286;
  v289 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v287, v288, 0.32191357, 0.600937724, 0.306578815, 1.0);
  v562[3] = v289;
  v292 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v290, v291, 0.37398842, 0.721991062, 0.383742362, 1.0);
  v562[4] = v292;
  v294 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v293, v562, 5);
  v296 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v277, v295, v294);
  v530 = objc_msgSend_initWithPropertiesAndValues_(v276, v297, 4101, @"KNGraphicSpheresBase", 4107, v296, 4122, 0, 4118, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4116, 0, 4125, 0x3FEDC28F5C28F5C3, 4135, 0x3FF68F5C28F5C28FLL, 4166, 0x3FF8000000000000, 4176, 0x4056800000000000, 4149, 0x401419CE075F6FD2, 4158, 0x4020C027525460AALL, 4159, 0x3FE0A3D70A3D70A4, 4165, 0x4069000000000000, 4173, 0x4056000000000000, 0);

  v298 = [KNMotionBackgroundStyle alloc];
  v301 = objc_msgSend_context(*(a1 + 32), v299, v300);
  v529 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v298, v302, v301, @"Lime Juice", v530, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v303, v529, @"motionBackground-10-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v304, v529);
  v305 = objc_alloc(MEMORY[0x277D80AB8]);
  v306 = MEMORY[0x277D80278];
  v309 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v307, v308, 0.999174178, 0.677044213, 0.327683568, 1.0);
  v561[0] = v309;
  v312 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v310, v311, 1.0, 0.784695327, 0.563535571, 1.0);
  v561[1] = v312;
  v315 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v313, v314, 1.0, 0.618000329, 0.190617591, 1.0);
  v561[2] = v315;
  v318 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v316, v317, 1.0, 0.873410165, 0.645642161, 1.0);
  v561[3] = v318;
  v320 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v319, v561, 4);
  v322 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v306, v321, v320);
  v325 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v323, v324, 0.99949199, 0.873410165, 0.73082751, 1.0);
  v528 = objc_msgSend_initWithPropertiesAndValues_(v305, v326, 4101, @"KNWavesSymmetrical", 4107, v322, 4108, v325, 4103, @"Multiply", 4189, 0, 4116, 0x3FC251FA20000000, 4125, 0x3FE94EE560000000, 4188, 0x3FD3D14D80000000, 4135, 0x3FF26ACFBFFFFFFELL, 4137, 0x3FCF0BB660000000, 4190, 0x3FD0284660000000, 4184, 1, 4158, 0x4006F4F6A0000000, 4159, 0x3FD04DFF00000000, 4166, 0x3FFF07ABC0000000, 4183, 1, 4185, 0x4024000000000000, 4173, 0x4046800000000000, 4186, 0, 4127, 0x4010000000000000, 4167, 0x4009C9526FFFFFFFLL, 4187, 0, 0);

  v327 = [KNMotionBackgroundStyle alloc];
  v330 = objc_msgSend_context(*(a1 + 32), v328, v329);
  v527 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v327, v331, v330, @"Solar Flare", v528, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v332, v527, @"motionBackground-11-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v333, v527);
  v525 = objc_alloc(MEMORY[0x277D80AB8]);
  v334 = MEMORY[0x277D80278];
  v335 = MEMORY[0x277D80280];
  v523 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v336, v337, 0.175603896, 0.0676446185, 0.316335797, 1.0);
  v339 = objc_msgSend_gradientStopWithColor_fraction_(v335, v338, v523, 0.0589611);
  v560[0] = v339;
  v340 = MEMORY[0x277D80280];
  v343 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v341, v342, 0.628993213, 0.082050614, 0.292652041, 1.0);
  v345 = objc_msgSend_gradientStopWithColor_fraction_(v340, v344, v343, 0.509015);
  v560[1] = v345;
  v346 = MEMORY[0x277D80280];
  v349 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v347, v348, 0.626752197, 0.0597777478, 0.101361342, 1.0);
  v351 = objc_msgSend_gradientStopWithColor_fraction_(v346, v350, v349, 0.652395);
  v560[2] = v351;
  v352 = MEMORY[0x277D80280];
  v355 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v353, v354, 1.25981414, 0.863757967, 0.118308976, 1.0);
  v357 = objc_msgSend_gradientStopWithColor_fraction_(v352, v356, v355, 0.79569);
  v560[3] = v357;
  v359 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v358, v560, 4);
  v361 = objc_msgSend_linearGradientWithGradientStops_(v334, v360, v359);
  v526 = objc_msgSend_initWithPropertiesAndValues_(v525, v362, 4101, @"KNGradientTerrainFlyover", 4107, v361, 4118, 0x4069000000000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x400CCC6E6D9BE4CDLL, 4147, 0xC059000000000000, 4148, 0x4008000000000000, 4150, 0x4015000000000000, 4151, 0x4015000000000000, 4156, 0, 4162, 0x4040000000000000, 4195, 0x402E000000000000, 4116, 0x3F9E5FEFE0000000, 4125, 0x3FF2EE34E0000000, 4133, 0x3FF25B5D00000000, 4134, 0x40145B3460000000, 4135, 0x3FF15FE180000000, 4137, 0x3FE4CCCCCCCCCCCDLL, 4190, 0x4059000000000000, 4166, 0x3FF019F920000000, 4175, 0x3FA3D0B400000000, 4176, 0x40370A3D70A3D70ALL, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153);

  v363 = [KNMotionBackgroundStyle alloc];
  v366 = objc_msgSend_context(*(a1 + 32), v364, v365);
  v524 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v363, v367, v366, @"Sunset Dunes", v526, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v368, v524, @"motionBackground-12-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v369, v524);
  v370 = objc_alloc(MEMORY[0x277D80AB8]);
  v371 = MEMORY[0x277D80278];
  v374 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v372, v373, 0.49, 0.514, 0.608, 1.0);
  v559[0] = v374;
  v377 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v375, v376, 1.0, 0.997588038, 0.976123512, 1.0);
  v559[1] = v377;
  v380 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v378, v379, 0.667, 0.7, 0.831, 1.0);
  v559[2] = v380;
  v382 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v381, v559, 3);
  v384 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v371, v383, v382);
  v387 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v385, v386, 0.489, 0.513, 0.608, 1.0);
  v522 = objc_msgSend_initWithPropertiesAndValues_(v370, v388, 4101, @"KNWavesBase", 4107, v384, 4108, v387, 4103, @"Soft Light", 4189, 0x3FD9C8216C61522ALL, 4116, 0x3FB29C2580000000, 4125, 0x3FF03F6660000000, 4188, 0x3FDA72DD00000000, 4135, 0x3FFF21E040000000, 4137, 0x3FE31C2BC0000000, 4190, 0x3FE8ECDA60000000, 4184, 1, 4158, 0x400B1039E0000000, 4159, 0x3FE186D9C0000000, 4166, 0x3FE7943840000000, 4183, 0, 4185, 0x3FF8DAB9F559B3D0, 4167, 0x40195BA540000001, 4173, 0x4049000006400000, 4186, 0x3FF5099A00000000, 4127, 0x4010000000000000, 4187, 0xBFE0F5C28F5C28F6, 0);

  v389 = [KNMotionBackgroundStyle alloc];
  v392 = objc_msgSend_context(*(a1 + 32), v390, v391);
  v521 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v389, v393, v392, @"Morning Surf", v522, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v394, v521, @"motionBackground-13-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v395, v521);
  v396 = objc_alloc(MEMORY[0x277D80AB8]);
  v397 = MEMORY[0x277D80278];
  v400 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v398, v399, 3.69858384, 1.17111111, 0.584948957, 1.0);
  v558[0] = v400;
  v403 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v401, v402, 3.15873384, 1.54265821, 0.264154911, 1.0);
  v558[1] = v403;
  v406 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v404, v405, 2.81668305, 0.830420374, 3.62037063, 1.0);
  v558[2] = v406;
  v409 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v407, v408, 3.15873384, 1.54265821, 0.264154911, 1.0);
  v558[3] = v409;
  v412 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v410, v411, 1.80219495, 0.00101774395, 0.284373045, 1.0);
  v558[4] = v412;
  v414 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v413, v558, 5);
  v416 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v397, v415, v414);
  v520 = objc_msgSend_initWithPropertiesAndValues_(v396, v417, 4101, @"KNGraphicSpheresBase", 4107, v416, 4122, 0, 4118, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4116, 0, 4125, 0x4000000000000000, 4135, 0x3FF2FDBBC0000000, 4166, 0x4000000000000000, 4176, 0x40516CDAC0000000, 4149, 0x4011C28F5C28F5C3, 4158, 0x400C000000000000, 4159, 0x3FD12200A0000000, 4173, 0x402A000000000000, 0);

  v418 = [KNMotionBackgroundStyle alloc];
  v421 = objc_msgSend_context(*(a1 + 32), v419, v420);
  v519 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v418, v422, v421, @"Lava Lamp", v520, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v423, v519, @"motionBackground-14-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v424, v519);
  v425 = objc_alloc(MEMORY[0x277D80AB8]);
  v426 = MEMORY[0x277D80278];
  v429 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v427, v428, 0.973410904, 0.735510945, 0.675889551, 1.0);
  v557[0] = v429;
  v432 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v430, v431, 1.0, 0.516379893, 0.594603539, 1.0);
  v557[1] = v432;
  v434 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v433, v557, 2);
  v436 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v426, v435, v434);
  v518 = objc_msgSend_initWithPropertiesAndValues_(v425, v437, 4101, @"KNGradientLinearBase", 4107, v436, 4118, 0x407F400000000000, 4116, 0, 4125, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4177, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4192, 0x4060E00000000000, 4167, 0x4004000000000000, 4173, 0x404EBD70A3D70A3DLL, 4137, 0x3FE0000000000000, 0);

  v438 = [KNMotionBackgroundStyle alloc];
  v441 = objc_msgSend_context(*(a1 + 32), v439, v440);
  v517 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v438, v442, v441, @"Flamingo", v518, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v443, v517, @"motionBackground-15-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v444, v517);
  v445 = objc_alloc(MEMORY[0x277D80AB8]);
  v446 = MEMORY[0x277D80278];
  v449 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v447, v448, 0.763, 0.81228, 0.98, 1.0);
  v556[0] = v449;
  v452 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v450, v451, 0.79, 0.69, 0.69, 1.0);
  v556[1] = v452;
  v455 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v453, v454, 0.868, 0.429, 0.325, 1.0);
  v556[2] = v455;
  v458 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v456, v457, 0.376, 0.791, 0.8392, 1.0);
  v556[3] = v458;
  v460 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v459, v556, 4);
  v462 = objc_msgSend_evenlyDistributedLinearGradientWithColors_(v446, v461, v460);
  v465 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v463, v464, 0.943699419, 0.992402017, 0.992575824, 1.0);
  v516 = objc_msgSend_initWithPropertiesAndValues_(v445, v466, 4101, @"KNWavesSymmetrical", 4107, v462, 4108, v465, 4103, @"Multiply", 4189, 0x4013626809D49518, 4116, 0, 4125, 0x3FEFE41160000000, 4188, 0x3FD0ABDAE0000000, 4135, 0x3FE4212F80000000, 4137, 0x3FAB3BA4E0000000, 4190, 0x3FE8ECDA60000000, 4184, 0, 4158, 0x400E50C180000000, 4159, 0x3FD2112CE0000000, 4166, 0x3FF750EDA0000000, 4183, 1, 4185, 0x4024000000000000, 4173, 0x4059000000000000, 4186, 0, 4127, 0x3FFEB517E0000000, 4167, 0x401D0F21E4000000, 4187, 0xBFF0000000000000, 0);

  v467 = [KNMotionBackgroundStyle alloc];
  v470 = objc_msgSend_context(*(a1 + 32), v468, v469);
  v515 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v467, v471, v470, @"Cool Breeze", v516, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v472, v515, @"motionBackground-16-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v473, v515);
  v513 = objc_alloc(MEMORY[0x277D80AB8]);
  v474 = MEMORY[0x277D80278];
  v475 = MEMORY[0x277D80280];
  v514 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v476, v477, 0.697872459, 0.442927033, 1.21634281, 1.0);
  v479 = objc_msgSend_gradientStopWithColor_fraction_(v475, v478, v514, 0.0);
  v555[0] = v479;
  v480 = MEMORY[0x277D80280];
  v483 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v481, v482, 0.252315938, 0.206160709, 0.608057677, 1.0);
  v485 = objc_msgSend_gradientStopWithColor_fraction_(v480, v484, v483, 0.239216);
  v555[1] = v485;
  v486 = MEMORY[0x277D80280];
  v489 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v487, v488, 0.461889237, 0.414777309, 1.01745367, 1.0);
  v491 = objc_msgSend_gradientStopWithColor_fraction_(v486, v490, v489, 0.444954);
  v555[2] = v491;
  v492 = MEMORY[0x277D80280];
  v495 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v493, v494, 0.046404738, 0.0, 0.00527885091, 1.0);
  v497 = objc_msgSend_gradientStopWithColor_fraction_(v492, v496, v495, 1.0);
  v555[3] = v497;
  v499 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v498, v555, 4);
  v501 = objc_msgSend_linearGradientWithGradientStops_(v474, v500, v499);
  v503 = objc_msgSend_initWithPropertiesAndValues_(v513, v502, 4101, @"KNGradientTerrainFlyover", 4107, v501, 4118, 0x4069000000000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x401A0E4B87BDCF03, 4147, 0xC059000000000000, 4148, 0x4008000000000000, 4150, 0x4016000000000000, 4151, 0x4016000000000000, 4156, 0, 4162, 0x4040000000000000, 4195, 0x402E000000000000, 4116, 0x3F9E5FEFE0000000, 4125, 0x3FF2EE34E0000000, 4133, 0x3FF25B5D00000000, 4134, 0x40145B3460000000, 4135, 0x3FF15FE180000000, 4137, 0x3FE4CCCCCCCCCCCDLL, 4190, 0x4059400000000000, 4166, 0x3FF019F920000000, 4175, 0x3FA3D0B400000000, 4176, 0x40438A3D70A3D70ALL, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153);

  v504 = [KNMotionBackgroundStyle alloc];
  v507 = objc_msgSend_context(*(a1 + 32), v505, v506);
  v509 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v504, v508, v507, @"Purple Vista", v503, 0);

  objc_msgSend_addStyle_withIdentifier_(v552, v510, v509, @"motionBackground-17-motionBackgroundStyle");
  objc_msgSend_addObject_(v553, v511, v509);
  objc_msgSend_setPresets_ofKind_(*(a1 + 32), v512, v553, *MEMORY[0x277D80B60]);
}

void sub_275D8AAA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_p_findDefaultTemplateSlideWithoutLoadingSlides(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_275D8AD40(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_templateSlides(*(a1 + 32), a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_slide(*(*(&v17 + 1) + 8 * v11), v7, v8);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v17, v21, 16);
    }

    while (v9);
  }

  v12 = *(a1 + 32);
  v15 = objc_msgSend_p_findDefaultTemplateSlideWithoutLoadingSlides(v12, v13, v14);
  objc_msgSend_p_setDefaultTemplateSlideNode_(v12, v16, v15);
}

void sub_275D8C850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  _Block_object_dispose((v11 - 256), 8);

  _Block_object_dispose((v11 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275D8C8FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D8C964(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

uint64_t sub_275D8CA28(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 56) == 1)
  {
    v4 = objc_msgSend_legacyStylesheet(*(a1 + 32), a2, a3);
    objc_msgSend_upgradeDefaultPresenterNotesStyles(v4, v5, v6);
  }

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    objc_storeWeak((v7 + 144), v8);
  }

  else if ((*(v7 + 152) & 1) == 0)
  {
    if (*(*(*(a1 + 48) + 8) + 40) && (objc_msgSend_templateSlides(v7, 0, a3), v9 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_containsObject_(v9, v10, *(*(*(a1 + 48) + 8) + 40)), v9, v7 = *(a1 + 32), v11))
    {
      objc_storeWeak((v7 + 144), *(*(*(a1 + 48) + 8) + 40));
      *(*(a1 + 32) + 152) = 0;
    }

    else
    {
      *(v7 + 152) = 1;
    }
  }

  objc_msgSend_upgradeStylesWithBlock_(*(a1 + 32), v8, &unk_2884D4EB0);
  v14 = *(a1 + 32);

  return objc_msgSend_createDefaultMotionBackgroundStylePresetsIfNeeded(v14, v12, v13);
}

void sub_275D8CC98(uint64_t a1)
{
  if (*(a1 + 40) <= 0x77411C1FBuLL)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));

    if (!WeakRetained)
    {
      v4 = *(a1 + 32);

      MEMORY[0x2821F9670](v4, sel_resolveDefaultTemplateSlide, v3);
    }
  }
}

id sub_275D8D3DC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 2u;
  v4 = *(v3 + 128);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8F070](v5);
    *(v3 + 128) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNTheme;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

id sub_275D8D594(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_parentSlideForInfo_(KNAbstractSlide, a2, a1);
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_templateSlide(v4, v5, v6);
    v10 = objc_msgSend_infoCorrespondingToInfo_(v8, v9, a1);

    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPShapeInfo(KeynoteAdditions) instructionalTextFromModel]");
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 43, 0, "%@ is a slide TSWPShapeInfo for which the corresponding template object %@ is not a TSWPShapeInfo. This particular call will handle this without problems, but it we should track down how this happened because it might cause problems elsewhere.", a1, v10);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
      }

      v20 = objc_msgSend_templateSlide(v7, v11, v12);
      v22 = objc_msgSend_instructionalTextForInfo_(v20, v21, v10);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    objc_opt_class();
    v10 = TSUCheckedDynamicCast();
    v22 = objc_msgSend_instructionalTextForInfo_(v10, v23, a1);
  }

  return v22;
}

uint64_t sub_275D8D73C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_instructionalTextFromModel(a1, a2, a3);

  if (v4)
  {
    return 1;
  }

  v8 = objc_msgSend_geometry(a1, v5, v6);
  if (objc_msgSend_isTextBox(a1, v9, v10) && (objc_msgSend_isLinked(a1, v11, v12) & 1) == 0)
  {
    if (objc_msgSend_widthValid(v8, v13, v14))
    {
      v7 = objc_msgSend_heightValid(v8, v16, v17) ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_275D8D7D0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_instructionalTextFromModel(a1, a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_defaultInstructionalText(a1, v5, v6);
  }

  v9 = v8;

  return v9;
}

id sub_275D8D830()
{
  if (qword_280A3BFE0 != -1)
  {
    sub_275E5B420();
  }

  v1 = qword_280A3BFD8;

  return v1;
}

void sub_275D8D874(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], a2, 16, 17, 19, 20, 35, 36, 37, 41, 43, 44, 45, 0);
  v3 = qword_280A3BFD8;
  qword_280A3BFD8 = v2;
}

id sub_275D8D900()
{
  if (qword_280A3BFF0 != -1)
  {
    sub_275E5B434();
  }

  v1 = qword_280A3BFE8;

  return v1;
}

void sub_275D8D944(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AA8], a2, 21, 0);
  v3 = qword_280A3BFE8;
  qword_280A3BFE8 = v2;
}

id sub_275D8D994(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8DA34;
  block[3] = &unk_27A698760;
  block[4] = a1;
  if (qword_280A3C000 != -1)
  {
    dispatch_once(&qword_280A3C000, block);
  }

  v1 = qword_280A3BFF8;

  return v1;
}

void sub_275D8DA34(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AA8], a2, 21, 48, 17, 23, 24, 25, 26, 27, 28, 29, 30, 50, 38, 40, 94, 98, 0);
  v6 = objc_msgSend_textPropertiesNeedingCharacterAnimation(*(a1 + 32), v4, v5);
  objc_msgSend_addProperties_(v3, v7, v6);

  v8 = qword_280A3BFF8;
  qword_280A3BFF8 = v3;
}

id sub_275D8DB0C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8DBAC;
  block[3] = &unk_27A698760;
  block[4] = a1;
  if (qword_280A3C010 != -1)
  {
    dispatch_once(&qword_280A3C010, block);
  }

  v1 = qword_280A3C008;

  return v1;
}

void sub_275D8DBAC(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D80AA8]);
  v5 = objc_msgSend_textPropertiesAffectingVisualStyle(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_initWithPropertySet_(v2, v6, v5);

  objc_msgSend_removeProperty_(v7, v8, 17);
  v9 = qword_280A3C008;
  qword_280A3C008 = v7;
}

id sub_275D8DC28()
{
  if (qword_280A3C020 != -1)
  {
    sub_275E5B448();
  }

  v1 = qword_280A3C018;

  return v1;
}

void sub_275D8DC6C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], a2, 31, 34, 39, 46, 47, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 95, 96, 105, 106, 99, 100, 101, 102, 103, 121, 104, 108, 109, 107, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 0);
  v3 = qword_280A3C018;
  qword_280A3C018 = v2;
}

id sub_275D8DDC0()
{
  if (qword_280A3C030 != -1)
  {
    sub_275E5B45C();
  }

  v1 = qword_280A3C028;

  return v1;
}

void sub_275D8DE04(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AA8], a2, 25, 29, 38, 40, 94, 98, 0);
  v3 = qword_280A3C028;
  qword_280A3C028 = v2;
}

BOOL sub_275D8DE70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, unint64_t a8)
{
  v13 = a3;
  v14 = a6;
  v28 = *MEMORY[0x277D81510];
  v29 = v28;
  v16 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v13, v15, a4, &v29);
  v18 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v14, v17, a7, &v28);
  v20 = v18;
  if (*(&v29 + 1) != *(&v28 + 1))
  {
    if (v29 != a4 || *(&v29 + 1) != a5)
    {
      goto LABEL_13;
    }

    v24 = 0;
    if (v28 != __PAIR128__(a8, a7))
    {
      goto LABEL_24;
    }
  }

  if ((v16 != 0) != (v18 != 0) || v16 && v18 && !objc_msgSend_isEqual_(v16, v19, v18))
  {
LABEL_13:
    v24 = 0;
    goto LABEL_24;
  }

  v27 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v13, v19, a4, &v29);
  v23 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v14, v21, a7, &v28);
  if (*(&v29 + 1) == *(&v28 + 1) || (v24 = 0, v29 == __PAIR128__(a5, a4)) && (v24 = 0, v28 == __PAIR128__(a8, a7)))
  {
    v24 = (v27 != 0) == (v23 != 0) && (!v27 || !v23 || objc_msgSend_isEqual_(v27, v22, v23));
  }

LABEL_24:
  return v24;
}

uint64_t sub_275D8E05C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v130 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v93 = a6;
  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v121 = 1;
  v114 = 0u;
  v115 = 0u;
  v14 = v11;
  v116 = 0u;
  v117 = 0u;
  v92 = v11;
  if (!v11)
  {
    v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
  }

  v127[0] = v14;
  v88 = a4;
  v89 = a5;
  v15 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v12, a4, a5);
  v127[1] = v15;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v127, 2);
  v128[0] = v19;
  v20 = v93;
  if (!v93)
  {
    v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18);
  }

  v126[0] = v20;
  v21 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v17, a7, a8);
  v126[1] = v21;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v126, 2);
  v128[1] = v23;
  obj = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v128, 2);

  if (!v93)
  {
  }

  if (!v92)
  {
  }

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v114, v129, 16);
  if (v27)
  {
    v96 = *v115;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v115 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v114 + 1) + 8 * i);
        v30 = objc_msgSend_objectAtIndexedSubscript_(v29, v26, 0);
        v32 = objc_msgSend_objectAtIndexedSubscript_(v29, v31, 1);
        v35 = objc_msgSend_rangeValue(v32, v33, v34);
        v37 = v36;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v113.location = 0;
          v113.length = 0;
          v39 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(v30, v38, 48, v35, &v113);
          v131.location = v35;
          v131.length = v37;
          v42 = NSIntersectionRange(v131, v113);
          length = v42.length;
          if (v35 != v42.location || v37 != v42.length)
          {
            v44 = MEMORY[0x277D81150];
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42.length, "+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]");
            v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 329, 0, "Range for TSWPCharacterFillProperty is different from effective range of style!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
          }

          if (v39)
          {
            if (objc_msgSend_fillType(v39, length, v41) || ((objc_msgSend_referenceColor(v39, v51, v52), v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend_alphaComponent(v53, v54, v55), fabs(v56 + -1.0) >= 0.00999999978) ? (v57 = v56 != 1.0) : (v57 = 0), v53, v57))
            {
              *(v123 + 24) = 1;

              goto LABEL_38;
            }
          }

          v112.location = 0;
          v112.length = 0;
          v58 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(v30, length, 50, v35, &v112);
          v132.location = v35;
          v132.length = v37;
          v61 = NSIntersectionRange(v132, v112);
          v59 = v61.length;
          if (v35 != v61.location || v37 != v61.length)
          {
            v62 = MEMORY[0x277D81150];
            v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61.length, "+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]");
            v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v66, v63, v65, 348, 0, "Range for TSWPCharacterStrokeProperty is different from effective range of style!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68);
          }

          if (v58)
          {
            *(v123 + 24) = 1;
LABEL_37:

LABEL_38:
            goto LABEL_39;
          }

          v69 = objc_msgSend_textPropertiesAffectingTextMorph(a1, v59, v60);
          v106[0] = MEMORY[0x277D85DD0];
          v106[1] = 3221225472;
          v106[2] = sub_275D8E73C;
          v106[3] = &unk_27A698788;
          v70 = v30;
          v110 = v35;
          v111 = v37;
          v107 = v70;
          v108 = v39;
          v109 = &v122;
          objc_msgSend_enumeratePropertiesUsingBlock_(v69, v71, v106);

          v72 = *(v123 + 24);
          if (v72)
          {
            goto LABEL_37;
          }
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v114, v129, 16);
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_39:

  if (v123[3] & 1) != 0 || (objc_msgSend_textPropertiesAffectingVisualStyle(a1, v73, v74), v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend_textPropertiesAffectingVisualStyleExceptSize(a1, v76, v77), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend_propertySetByRemovingPropertiesFromSet_(v75, v79, v78), v80 = objc_claimAutoreleasedReturnValue(), v78, v75, objc_msgSend_textPropertiesAffectingVisualStyle(a1, v81, v82), v83 = objc_claimAutoreleasedReturnValue(), v97[0] = MEMORY[0x277D85DD0], v97[1] = 3221225472, v97[2] = sub_275D8E8E8, v97[3] = &unk_27A6987B0, v84 = v80, v98 = v84, v99 = v92, v102 = v88, v103 = v89, v104 = a7, v105 = a8, v100 = v93, v101 = &v118, objc_msgSend_enumeratePropertiesUsingBlock_(v83, v85, v97), v83, v100, v99, v98, v84, (v123[3]))
  {
    v86 = 1;
  }

  else
  {
    v86 = *(v119 + 24);
  }

  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v122, 8);

  return v86 & 1;
}

void sub_275D8E6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Unwind_Resume(a1);
}

void sub_275D8E73C(uint64_t a1, const char *a2, _BYTE *a3)
{
  v25.location = 0;
  v25.length = 0;
  v5 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(*(a1 + 32), a2, a2, *(a1 + 56), &v25);
  v6 = NSIntersectionRange(*(a1 + 56), v25);
  if (*(a1 + 56) != v6.location || *(a1 + 64) != v6.length)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6.length, "+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]_block_invoke");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 362, 0, "Range is different from effective range of style!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_opt_class();
  v15 = TSUDynamicCast();
  objc_opt_class();
  v16 = TSUDynamicCast();
  v19 = v16;
  if (v16)
  {
    v20 = objc_msgSend_referenceColor(v16, v17, v18);

    v15 = v20;
  }

  if (!v15)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v21 = *(a1 + 40);
  if (!v21 || (objc_msgSend_referenceColor(v21, v17, v18), v22 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v15, v23, v22), v22, (isEqual & 1) == 0))
  {
LABEL_13:
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_14:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_275D8E8E8(uint64_t a1, const char *a2, _BYTE *a3)
{
  v6 = objc_msgSend_containsProperty_(*(a1 + 32), a2, a2);
  v30.location = 0;
  v30.length = 0;
  v9 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(*(a1 + 40), v7, a2, *(a1 + 64), &v30);
  if ((v6 & 1) == 0)
  {
    v10 = NSIntersectionRange(*(a1 + 64), v30);
    length = v10.length;
    if (*(a1 + 64) != v10.location || *(a1 + 72) != v10.length)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10.length, "+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]_block_invoke_2");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 404, 0, "outgoing range is different from effective range of style!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }
  }

  v29.location = 0;
  v29.length = 0;
  v20 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(*(a1 + 48), length, a2, *(a1 + 80), &v29);
  if ((v6 & 1) == 0)
  {
    v21 = NSIntersectionRange(*(a1 + 80), v29);
    v19 = v21.length;
    if (*(a1 + 80) != v21.location || *(a1 + 88) != v21.length)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21.length, "+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]_block_invoke_2");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 413, 0, "incoming range is different from effective range of style!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }
  }

  if (v9 != v20 && !objc_msgSend_isEqual_(v9, v19, v20) || v6 && (v30.location != v29.location || v30.length != v29.length))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a3 = 1;
  }
}

uint64_t sub_275D8EB00(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a11;
  v16 = a3;
  v17 = a4;
  v19 = a7;
  if (!a11)
  {
    v33 = v16;
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[TSWPShapeInfo(KeynoteAdditions) numberOfDifferencesBetweenStyleProperties:betweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:maxDifferencesBeforeReturning:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
    v24 = v20;
    v16 = v33;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v25, v21, v23, 435, 0, "Dude why are you even calling me then, GAWD");

    v15 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  v28 = objc_opt_class();
  if (objc_msgSend_stylesAreEqualWithOutgoingStorage_outgoingRange_incomingStorage_incomingRange_(v28, v29, v17, a5, a6, v19, a9, a10))
  {
    v30 = 0;
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_275D8ECFC;
    v34[3] = &unk_27A6987D8;
    v38 = a5;
    v39 = a6;
    v40 = a9;
    v41 = a10;
    v35 = v17;
    v36 = v19;
    v37 = &v43;
    v42 = v15;
    objc_msgSend_enumeratePropertiesUsingBlock_(v16, v31, v34);
    v30 = v44[3];

    _Block_object_dispose(&v43, 8);
  }

  return v30;
}

void sub_275D8ECE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D8ECFC(uint64_t a1, const char *a2, _BYTE *a3)
{
  if (*(a1 + 64) >= *(a1 + 80))
  {
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = *(a1 + 64);
  }

  if (!v3)
  {
    return;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 72);
    objc_msgSend_characterAtIndex_(*(a1 + 32), a2, v7 + v8);
    v10 = IsWhitespaceCharacter();
    objc_msgSend_characterAtIndex_(*(a1 + 40), v11, v7 + v9);
    v12 = IsWhitespaceCharacter();
    if (v12 && (v10 & 1) != 0)
    {
      goto LABEL_14;
    }

    v16 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(*(a1 + 32), a2, a2, v7 + v8, 0);
    v14 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(*(a1 + 40), v13, a2, v7 + v9, 0);
    v15 = v14;
    if (v10 != v12 || (v16 != 0) != (v14 != 0) || v16 && v14 && (objc_msgSend_isEqual_(v16, v16, v14) & 1) == 0)
    {
      break;
    }

LABEL_14:
    if (v3 == ++v7)
    {
      return;
    }
  }

  if (++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 88))
  {
    *a3 = 1;
  }
}

uint64_t sub_275D8EE94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (!v4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPShapeInfo(KeynoteAdditions) mixingTypeWithObject:context:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 494, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  return 4;
}

id sub_275D8EF64(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_geometry(a1, v8, v9);
  v13 = objc_msgSend_geometry(v7, v11, v12);
  v52 = TSDMixingMixedObjectWithFraction();

  v16 = objc_msgSend_shapeStyle(a1, v14, v15);
  v19 = objc_msgSend_shapeStyle(v7, v17, v18);
  v20 = TSDMixingMixedObjectWithFraction();

  v23 = objc_msgSend_pathSource(a1, v21, v22);
  v26 = objc_msgSend_pathSource(v7, v24, v25);
  v27 = TSDMixingMixedObjectWithFraction();

  if (a2 > 0.5)
  {
    v28 = v7;
  }

  else
  {
    v28 = a1;
  }

  v29 = v28;
  v32 = objc_msgSend_textStorage(v29, v30, v31);
  v35 = objc_msgSend_textStorage(v29, v33, v34);
  v38 = objc_msgSend_range(v35, v36, v37);
  v40 = v39;
  v42 = objc_msgSend_context(v29, v39, v41);
  v44 = objc_msgSend_newSubstorageWithRange_context_flags_(v32, v43, v38, v40, v42, 1);

  v45 = objc_alloc(MEMORY[0x277D80F00]);
  v48 = objc_msgSend_context(a1, v46, v47);

  v50 = objc_msgSend_initWithContext_geometry_style_pathSource_wpStorage_(v45, v49, v48, v52, v20, v27, v44);

  return v50;
}

BOOL sub_275D8F18C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v5 = objc_msgSend_containingGroup(a1, v2, v3);
  v4 = v5 == 0;

  return v4;
}

void sub_275D8F1EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_threadCollector(MEMORY[0x277D80630], a2, a3);
  v5 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v4, *MEMORY[0x277D807F8]);
  objc_msgSend_registerChange_details_forChangeSource_(v7, v6, 50003, v5, a1);
}

uint64_t sub_275D92D18(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [KNWebVideoRenderer alloc];
  v14 = objc_msgSend_initWithAnimatedBuild_info_buildStage_animatedSlideView_(v12, v13, v11, a1, v10, v9);

  return v14;
}

void sub_275D974E8(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, v13);
  v9 = v7;
  if (v7)
  {
    v10 = objc_msgSend_entryByMergingEntry_(v7, v8, v5);
  }

  else
  {
    v10 = v5;
  }

  v12 = v10;
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v10, v13);
}

void sub_275D97BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D97C1C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v11 = objc_msgSend_sourceWithObjectUUID_(*(a1 + 32), v8, a2);
  if (v11 == *(a1 + 40))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = objc_msgSend_archivedBackgroundKinds(v7, v9, v10, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v25, 16);
    if (v16)
    {
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = objc_msgSend_integerValue(*(*(&v21 + 1) + 8 * i), v14, v15);
          if (objc_msgSend_i_backgroundKindForArchivedBackgroundKind_(KNLiveVideoInfo, v20, v19) == *(a1 + 56))
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v21, v25, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

void sub_275D98434(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277D812A8]);
  second = objc_msgSend_initWithFirst_second_(v6, v7, v10, v5);
  objc_msgSend_addObject_(*(a1 + 32), v9, second);
}

uint64_t sub_275D984E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_first(a2, v5, v6);
  v10 = objc_msgSend_first(v4, v8, v9);
  v12 = objc_msgSend_tsu_compare_(v7, v11, v10);

  return v12;
}

void sub_275D98550(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275D987F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275D98CF0(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    sub_275D98DF4(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_275D98DF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_275E5B470(a1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  JUMPOUT(0x277C8F160);
}

void sub_275D99CEC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275D99DB8(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_updateDefaultsValues(*(a1 + 32), a2, a3);
  v3 = objc_opt_new();
  v4 = qword_280A3C058;
  qword_280A3C058 = v3;
}

void sub_275D9B3C0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A3C068;
  qword_280A3C068 = v0;
}

void sub_275D9B538()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275D9B8FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275D9B98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = KNNoteRep;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_275D9BF68()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimationEngineCat_log_t;
  KNAnimationEngineCat_log_t = v0;
}

void sub_275D9C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_275D9C2F0(uint64_t a1, void *a2, double a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_msgSend_startTime(v5, v6, v7);
  v9 = v8 + a3;
  objc_msgSend_durationWithChildren(v5, v10, v11);
  v15 = v9 + v14;
  if ((*(*(a1 + 32) + 56) & 1) == 0)
  {
    v16 = objc_msgSend_pluginClass(v5, v12, v13);
    v17 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(v16, v18, v17))
    {
      v23 = objc_msgSend_deliveryOption(*(a1 + 40), v19, v20) == 3 || objc_msgSend_deliveryOption(*(a1 + 40), v21, v22) == 2;
    }

    else
    {
      v23 = 0;
    }

    if ((v24 = objc_opt_class(), objc_msgSend_isSubclassOfClass_(v16, v25, v24)) && !v23 || (v26 = objc_opt_class(), objc_msgSend_isSubclassOfClass_(v16, v27, v26)))
    {
      v15 = v9;
    }
  }

  (*(*(a1 + 48) + 16))(v9 + *(a1 + 72), v15 + *(a1 + 72));
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v29 = objc_msgSend_rendererForAnimatedBuild_(*(a1 + 32), v28, v5);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = objc_msgSend_animatedBuildsToStartAtEnd(v29, v30, v31, 0);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v39, v43, 16);
    if (v34)
    {
      v35 = v34;
      v36 = *v40;
LABEL_14:
      v37 = 0;
      while (1)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(v32);
        }

        (*(*(*(*(a1 + 64) + 8) + 24) + 16))(v15);
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        if (v35 == ++v37)
        {
          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, &v39, v43, 16);
          if (v35)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }
}

uint64_t sub_275D9E10C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_eventIndex(v4, v6, v7);
  if (v8 < objc_msgSend_eventIndex(v5, v9, v10))
  {
LABEL_2:
    v13 = -1;
    goto LABEL_11;
  }

  v14 = objc_msgSend_eventIndex(v4, v11, v12);
  if (v14 > objc_msgSend_eventIndex(v5, v15, v16))
  {
    v13 = 1;
    goto LABEL_11;
  }

  objc_msgSend_eventEndTime(v4, v17, v18);
  v20 = v19;
  objc_msgSend_eventEndTime(v5, v21, v22);
  if (v20 == v25)
  {
    v26 = objc_msgSend_parentBuild(v4, v23, v24);

    if (v26 != v5)
    {
      v29 = objc_msgSend_parentBuild(v5, v27, v28);
      v13 = v29 == v4;

      goto LABEL_11;
    }

    goto LABEL_2;
  }

  objc_msgSend_eventEndTime(v4, v23, v24);
  v31 = v30;
  objc_msgSend_eventEndTime(v5, v32, v33);
  if (v31 >= v34)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

LABEL_11:

  return v13;
}

void sub_275DA15FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_appendString_(v3, v5, @"\r            ");
  v6 = *(a1 + 32);
  v10 = objc_msgSend_description(v4, v7, v8);

  objc_msgSend_appendString_(v6, v9, v10);
}

void sub_275DA32A0(uint64_t a1, CGContextRef c)
{
  CGContextSetRGBFillColor(c, 0.0, 0.0, 0.0, 1.0);
  v6 = objc_msgSend_animationContext(*(*(a1 + 32) + 8), v4, v5);
  objc_msgSend_slideRect(v6, v7, v8);

  CGContextFillRect(c, *&v9);
}

double sub_275DA4478(void *a1, uint64_t a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_clipRect(v4, v5, v6);
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  v17 = objc_msgSend_childReps(v4, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = objc_msgSend_childReps(v4, v21, v22);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v44, v48, 16);
    if (v25)
    {
      v27 = v25;
      v28 = *v45;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v23);
          }

          objc_msgSend_p_clipRectForRep_(a1, v26, *(*(&v44 + 1) + 8 * i));
          v53.origin.x = v30;
          v53.origin.y = v31;
          v53.size.width = v32;
          v53.size.height = v33;
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          v51 = CGRectUnion(v50, v53);
          x = v51.origin.x;
          y = v51.origin.y;
          width = v51.size.width;
          height = v51.size.height;
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v44, v48, 16);
      }

      while (v27);
    }
  }

  v34 = objc_msgSend_layout(v4, v21, v22);
  v37 = objc_msgSend_geometry(v34, v35, v36);
  v40 = v37;
  if (v37)
  {
    objc_msgSend_transform(v37, v38, v39);
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  *&v41 = CGRectApplyAffineTransform(v52, &v43);

  return v41;
}

double sub_275DA4678(void *a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v8 = objc_msgSend_info(a1, a2, a3);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = objc_msgSend_childReps(a1, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v29, v33, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = objc_msgSend_info(v19, v14, v15);
        isNonGroupedChild = objc_msgSend_isNonGroupedChild_(v8, v21, v20);

        if ((isNonGroupedChild & 1) == 0)
        {
          objc_msgSend_p_clipRectForRep_(a1, v14, v19);
          v38.origin.x = v23;
          v38.origin.y = v24;
          v38.size.width = v25;
          v38.size.height = v26;
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v36 = CGRectUnion(v35, v38);
          x = v36.origin.x;
          y = v36.origin.y;
          width = v36.size.width;
          height = v36.size.height;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v29, v33, 16);
    }

    while (v16);
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (CGRectIsNull(v37))
  {
    TSURectWithSize();
    x = v27;
  }

  return x;
}

id sub_275DA4858(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  isMagicMove = objc_msgSend_isMagicMove(v4, v5, v6);
  memset(&v81, 0, sizeof(v81));
  v10 = objc_msgSend_layout(a1, v8, v9);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_transformInRoot(v10, v11, v12);
  }

  else
  {
    memset(&v81, 0, sizeof(v81));
  }

  if (isMagicMove)
  {
    v79 = v81;
    objc_msgSend_unRotatedTransform_(a1, v14, &v79);
    v81 = v80;
  }

  v16 = objc_msgSend_canvas(a1, v14, v15);
  objc_msgSend_viewScale(v16, v17, v18);
  v20 = v19;

  objc_msgSend_p_rectIncludingChildCaptions(a1, v21, v22);
  x = v83.origin.x;
  y = v83.origin.y;
  width = v83.size.width;
  height = v83.size.height;
  v80 = v81;
  CGRectApplyAffineTransform(v83, &v80);
  TSUMultiplyRectScalar();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  objc_msgSend_naturalBounds(a1, v34, v35);
  v80 = v81;
  CGRectApplyAffineTransform(v84, &v80);
  TSUMultiplyRectScalar();
  v85.origin.x = v27;
  v85.origin.y = v29;
  v85.size.width = v31;
  v85.size.height = v33;
  v86 = CGRectIntegral(v85);
  v36 = v86.origin.x;
  v37 = v86.origin.y;
  v38 = v86.size.width;
  v39 = v86.size.height;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275DA4BEC;
  aBlock[3] = &unk_27A6989D0;
  v72 = v86;
  v40 = v4;
  v73 = x;
  v74 = y;
  v75 = width;
  v76 = height;
  v77 = v20;
  v78 = v81;
  v70 = v40;
  v71 = a1;
  v41 = _Block_copy(aBlock);
  v42 = objc_alloc_init(MEMORY[0x277D803E0]);
  objc_msgSend_setRep_(v42, v43, a1);
  objc_msgSend_setObjectType_(v42, v44, 0);
  v45 = objc_alloc(MEMORY[0x277D803E8]);
  TSUSubtractPoints();
  v49 = objc_msgSend_initWithSize_offset_renderBlock_(v45, v46, v41, v38, v39, v47, v48);
  objc_msgSend_setIsMagicMove_(v42, v50, isMagicMove);
  objc_msgSend_setTextureType_(v49, v51, 5);
  objc_msgSend_setTextureOpacity_(v49, v52, v53, 1.0);
  objc_msgSend_addRenderable_(v42, v54, v49);
  objc_msgSend_opacity(a1, v55, v56);
  objc_msgSend_setTextureOpacity_(v42, v57, v58);
  objc_msgSend_centerForRotation(a1, v59, v60);
  objc_msgSend_setCenter_(v42, v61, v62);
  objc_msgSend_setTextureAttributes_textureBounds_(a1, v63, v42, v36, v37, v38, v39);
  if ((isMagicMove & 1) == 0)
  {
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_275DA4DF8;
    v68[3] = &unk_27A6989F8;
    v68[4] = a1;
    v64 = _Block_copy(v68);
    objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(a1, v65, v42, v40, v64);
  }

  return v42;
}

void sub_275DA4BEC(uint64_t a1, CGContextRef c)
{
  v37 = *MEMORY[0x277D85DE8];
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  if (objc_msgSend_shouldDistortToFit(*(a1 + 32), v4, v5))
  {
    v6 = *(a1 + 64) / *(a1 + 96);
    v7 = *(a1 + 72) / *(a1 + 104);
    v8 = c;
  }

  else
  {
    v6 = *(a1 + 112);
    v8 = c;
    v7 = v6;
  }

  CGContextScaleCTM(v8, v6, v7);
  v9 = *(a1 + 136);
  *&transform.a = *(a1 + 120);
  *&transform.c = v9;
  *&transform.tx = *(a1 + 152);
  CGContextConcatCTM(c, &transform);
  CGContextSaveGState(c);
  objc_msgSend_drawInContext_(*(a1 + 40), v10, c);
  CGContextRestoreGState(c);
  if ((objc_msgSend_shouldNotAddContainedReps(*(a1 + 32), v11, v12) & 1) == 0)
  {
    v15 = objc_msgSend_info(*(a1 + 40), v13, v14);
    CGContextSaveGState(c);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = objc_msgSend_childReps(*(a1 + 40), v16, v17, 0);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v31, v36, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v31 + 1) + 8 * i);
          v27 = objc_msgSend_info(v26, v21, v22);
          isNonGroupedChild = objc_msgSend_isNonGroupedChild_(v15, v28, v27);

          if ((isNonGroupedChild & 1) == 0)
          {
            CGContextSaveGState(c);
            objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v26, v30, c, 0);
            CGContextRestoreGState(c);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v31, v36, 16);
      }

      while (v23);
    }

    CGContextRestoreGState(c);
  }
}

BOOL sub_275DA4DF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_info(v2, v4, v5);
  v9 = objc_msgSend_info(v3, v7, v8);

  v14 = objc_msgSend_title(v6, v10, v11);
  if (v14 == v9)
  {
    v16 = 1;
  }

  else
  {
    v15 = objc_msgSend_caption(v6, v12, v13);
    v16 = v15 == v9;
  }

  return v16;
}

void sub_275DA5A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275DA5A88(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  result = objc_msgSend_integerValue(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result == *(a1 + 40);
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_275DAB56C(uint64_t a1, void *a2)
{
  v62 = a2;
  TSDRegisterPersistentClasses();
  TSKRegisterPersistentClasses();
  __C();
  String();
  TSTRegisterPersistentClasses();
  __C();
  __C();
  TSWPRegisterPersistentClasses();
  TSARegisterPersistentClasses();
  v2 = sub_275E05E2C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v3, 1, v2, off_2812EA908[58], "KNDocumentRoot");
  v4 = sub_275E0455C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v5, 2, v4, off_2812EA908[56], "KNShow");
  v6 = sub_275DFB644();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v7, 3, v6, off_2812EA908[40], "KNArchivedUIState");
  v8 = sub_275DF7570();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v9, 4, v8, off_2812EA908[36], "KNSlideNode");
  v10 = sub_275DF20A4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v11, 5, v10, off_2812EA908[32], "KNAbstractSlide");
  v12 = sub_275DF20A4();
  objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v62, v13, 6, v12, "KNAbstractSlide");
  v14 = sub_275DEE32C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v15, 7, v14, off_2812EA908[18], "KNPlaceholderInfo");
  v16 = sub_275DED6FC();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v17, 8, v16, off_2812EA908[16], "KNBuild");
  v18 = sub_275E074C4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v19, 9, v18, off_2812EA908[62], "KNSlideStyle");
  v20 = sub_275E022F8();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v21, 10, v20, off_2812EA908[52], "KNTheme");
  v22 = sub_275DEE32C();
  v24 = objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v62, v23, 12, v22, "KNPlaceholderInfo");
  v25 = TSWP::TextualAttachmentArchive::default_instance(v24);
  objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v62, v26, 14, v25, "KNSlideNumberAttachment");
  v27 = sub_275DEEAE8();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v28, 15, v27, off_2812EA908[20], "KNNoteInfo");
  v29 = sub_275E0C630();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v30, 16, v29, off_2812EA908[70], "KNRecording");
  v31 = sub_275E0E20C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v32, 17, v31, off_2812EA908[76], "KNRecordingEventTrack");
  v33 = sub_275E11ABC();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v34, 18, v33, off_2812EA908[88], "KNRecordingMovieTrack");
  v35 = sub_275DEF174();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v36, 19, v35, off_2812EA908[22], "KNClassicStylesheetRecord");
  v37 = sub_275DEFB34();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v38, 20, v37, off_2812EA908[24], "KNClassicThemeRecord");
  v39 = sub_275E12C40();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v40, 21, v39, off_2812EA908[92], "KNSoundtrack");
  v41 = sub_275E13588();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v42, 22, v41, off_2812EA908[94], "KNSlideNumberAttachment");
  v43 = sub_275DFA528();
  google::protobuf::internal::AssignDescriptors();
  v45 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v44, 23, v43, off_2812EA908[38], "KNMacArchivedUILayout");
  v46 = TSWP::NumberAttachmentArchive::default_instance(v45);
  v47 = MEMORY[0x277D810B8];
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setOverrideMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v48, 2043, v46, *(*(v47 + 88) + 1072), "KNSlideNumberAttachment");
  v49 = sub_275E1E63C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v50, 26, v49, off_2812EA908[118], "KNMotionBackgroundStyle");
  v51 = sub_275DE7EBC();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v52, 153, v51, off_2812EA908[6], "KNBuildChunk");
  v53 = sub_275DEA2A4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v54, 159, v53, off_2812EA908[12], "KNBuildAttributeTuple");
  v55 = sub_275E1797C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v56, 184, v55, off_2812EA908[106], "KNLiveVideoSource");
  v57 = sub_275E19E08();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v62, v58, 185, v57, off_2812EA908[112], "KNLiveVideoSourceCollection");
  v59 = MEMORY[0x277D80248];
  v60 = objc_opt_class();
  objc_msgSend_registerSubclass_(v59, v61, v60);
}

void sub_275DABB70(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = objc_msgSend_sharedRegistry(MEMORY[0x277D80880], v2, v3);
  String();
  TSDRegisterPropertyCommandObjects();
  TSTRegisterPropertyCommandObjects();
  TSWPRegisterPropertyCommandObjects();
}

void sub_275DACA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275DACDF0(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, a3);
  v4 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v5, v6);
  objc_msgSend_activateBackground_(v4, v8, isMainThread ^ 1u);
  v9 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v11 = *(a1 + 40);
  v12 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v15 = objc_msgSend_currentEventIndex(v12, v13, v14);
  objc_msgSend_renderIntoContext_eventIndex_ignoreBuildVisibility_(WeakRetained, v16, v11, v15, *(a1 + 48));

  objc_autoreleasePoolPop(v9);
  v19 = MEMORY[0x277CD9FF0];

  return objc_msgSend_commit(v19, v17, v18);
}

void sub_275DACF64(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_copyImageOfCurrentEventIgnoringBuildVisilibity_(*(a1 + 32), a2, 0);
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  CGImageRelease(v3);
}

void sub_275DAF66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275DAF684(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_p_checkNodeEqualityIncludingUUID_secondSlideNode_(*(a1 + 32), a2, a2, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_275DAF7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275DAF7D8(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_p_checkNodeEqualityIncludingUUID_secondSlideNode_(*(a1 + 32), a2, a2, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_275DB197C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3[27])
  {
    objc_msgSend_willChangeValueForKey_(v3, a2, @"playerController");
    objc_msgSend_teardown(*(*(a1 + 32) + 216), v4, v5);

    *(*(a1 + 32) + 216) = 0;
    objc_msgSend_didChangeValueForKey_(*(a1 + 32), v6, @"playerController");
  }

  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    objc_msgSend_setPlayer_(v7, v8, 0);
  }

  *(*(a1 + 32) + 224) = 0;
  result = objc_msgSend_p_didEndMoviePlayback(*(a1 + 32), v9, v10);
  *(*(a1 + 32) + 313) &= ~2u;
  return result;
}

void sub_275DB2158(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v7 = @"KNShowMovieHUDWhenMouseOver";
  v8[0] = MEMORY[0x277CBEC38];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v8, &v7, 1);
  objc_msgSend_registerDefaults_(v3, v6, v5);
}

void sub_275DB2430()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimationEngineCat_log_t;
  KNAnimationEngineCat_log_t = v0;
}

uint64_t sub_275DB51BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 264));
  InfoVisible_allowAudioOnlyMovies = objc_msgSend_canMakeInfoVisible_allowAudioOnlyMovies_(WeakRetained, v5, v3, 1);

  return InfoVisible_allowAudioOnlyMovies;
}

void sub_275DB665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275DB6694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275DB66AC(void *a1, void *a2, double a3, double a4)
{
  v21 = a2;
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 24);
  if (v9 <= a4)
  {
    v9 = a4;
  }

  *(v8 + 24) = v9;
  if (*(*(a1[5] + 8) + 24))
  {
    v10 = objc_msgSend_stringByAppendingString_(*(*(a1[6] + 8) + 40), v6, @"+");
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1[6] + 8) + 40);
  v14 = objc_msgSend_pluginClass(v21, v6, v7);
  v15 = NSStringFromClass(v14);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_stringByAppendingString_(v13, v16, v15);
  }

  else
  {
    objc_msgSend_stringByAppendingString_(v13, v16, @"nil");
  }
  v18 = ;
  v19 = *(a1[6] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  ++*(*(a1[5] + 8) + 24);
}

uint64_t sub_275DB81B4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_275DB956C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v18);
  _Unwind_Resume(a1);
}

void sub_275DB959C(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 264));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DB966C;
  v7[3] = &unk_27A698B08;
  objc_copyWeak(v8, (a1 + 40));
  v5 = *(a1 + 48);
  v8[1] = a2;
  v8[2] = v5;
  v9 = *(a1 + 56);
  objc_msgSend_performSlideRead_(WeakRetained, v6, v7);

  objc_destroyWeak(v8);
}

void sub_275DB966C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_renderIntoContext_eventIndex_ignoreBuildVisibility_(WeakRetained, v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

void sub_275DBCB08(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_data(v8, v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;
}

void sub_275DBD774(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc(MEMORY[0x277CBEB70]);
  v5 = objc_msgSend_initWithArray_(v3, v4, v8);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;
}

id sub_275DC204C()
{
  if (qword_280A3C080 != -1)
  {
    sub_275E5B548();
  }

  v1 = qword_280A3C078;

  return v1;
}

void sub_275DC2090()
{
  Class = objc_getClass("KNBundleLookup");
  if (Class)
  {
    v2 = objc_msgSend_bundleForClass_(MEMORY[0x277CCA8D8], v1, Class);
    v3 = qword_280A3C078;
    qword_280A3C078 = v2;
  }
}

void sub_275DC2320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275DC2338()
{
  v0 = dispatch_queue_create("parameterGroup", 0);
  v1 = qword_280A3C098;
  qword_280A3C098 = v0;

  return MEMORY[0x2821F9670](KNAnimParameterGroup, sel_p_loadAllParametersIfNecessary, v2);
}

uint64_t sub_275DC2384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275DC239C(uint64_t a1, const char *a2, uint64_t a3)
{
  isAnimationEditorConnected = objc_msgSend_isAnimationEditorConnected(KNAnimationTools, a2, a3);
  v6 = qword_280A3C088;
  if (isAnimationEditorConnected)
  {
    v7 = 0;
  }

  else
  {
    if (qword_280A3C088)
    {
      goto LABEL_6;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = qword_280A3C088;
  }

  qword_280A3C088 = v7;

LABEL_6:
  v8 = objc_msgSend_objectForKeyedSubscript_(qword_280A3C088, v5, *(a1 + 32));
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = sub_275DC204C();
    v21 = objc_msgSend_pathForResource_ofType_(v11, v12, *(a1 + 32), @"parameterGroup");

    if (v21 || (objc_msgSend_stringByAppendingPathExtension_(*(a1 + 32), v13, @"parameterGroup"), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [KNAnimParameterGroup alloc];
      v16 = objc_msgSend_initWithFileName_(v14, v15, v21);
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v20 = *(*(*(a1 + 40) + 8) + 40);
      if (v20)
      {
        objc_msgSend_setObject_forKeyedSubscript_(qword_280A3C088, v19, v20, *(a1 + 32));
      }
    }

    else
    {
      v21 = 0;
    }
  }
}

void sub_275DC2548()
{
  v42 = *MEMORY[0x277D85DE8];
  if (!qword_280A3C088)
  {
    v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v1 = qword_280A3C088;
    qword_280A3C088 = v0;
  }

  v2 = sub_275DC204C();
  v4 = objc_msgSend_pathsForResourcesOfType_inDirectory_(v2, v3, @"parameterGroup", 0);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v37, v41, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [KNAnimParameterGroup alloc];
        v13 = objc_msgSend_initWithFileName_(v11, v12, v10);
        v16 = objc_msgSend_lastPathComponent(v10, v14, v15);
        v19 = objc_msgSend_stringByDeletingPathExtension(v16, v17, v18);

        if (v19)
        {
          if (v13)
          {
            objc_msgSend_setObject_forKeyedSubscript_(qword_280A3C088, v20, v13, v19);
            goto LABEL_13;
          }
        }

        else
        {
          v21 = MEMORY[0x277D81150];
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[KNAnimParameterGroup p_loadAllParametersIfNecessary]_block_invoke");
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 117, 0, "invalid nil value for '%{public}s'", "name");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
          if (v13)
          {
            goto LABEL_13;
          }
        }

        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[KNAnimParameterGroup p_loadAllParametersIfNecessary]_block_invoke");
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 118, 0, "invalid nil value for '%{public}s'", "parameterGroup");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
LABEL_13:

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v37, v41, 16);
    }

    while (v7);
  }
}

void sub_275DC45F0(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275DC46E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275DC4B2C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275DC5BDC(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc(MEMORY[0x277CCAA78]);
  if (*(a1 + 72))
  {
    v5 = objc_msgSend_tsp_initWithMessage_(v3, v4, *(a1 + 72));
  }

  else
  {
    v5 = objc_msgSend_tsp_initWithMessage_(v3, v4, MEMORY[0x277D80A08]);
  }

  v7 = v5;
  objc_msgSend_setObject_forUncopiedKey_(*(a1 + 32), v6, v5, v8);
}

void sub_275DC5C90(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
}

void sub_275DC6928(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v14 = v3;
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v4, v5);
    v8 = objc_msgSend_objectUUID(v14, v6, v7);
    v11 = objc_msgSend_copy(v8, v9, v10);
    v12 = *(a1 + 40);
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;

    v3 = v14;
  }
}

void sub_275DC69CC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 24))
  {
    v4 = objc_msgSend_context(*(a1 + 40), a2, a3);
    objc_storeWeak((*(a1 + 32) + 16), v4);
  }
}

void sub_275DC7AF0(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275DC7BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275DC7FE4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = objc_msgSend_mappedStyleForStyle_(*(a1 + 40), v6, v7);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v9, v8, v10);
  }
}

void sub_275DC81B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addObject_(*(a1 + 32), v4, v5);
  }
}

void sub_275DC8348(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (objc_msgSend_conformsToProtocol_(v6, v4, &unk_2884F66B8))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_addObject_(*(a1 + 32), v5, v6);
    }
  }
}

void sub_275DC85E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_object(a2, a2, a3);
  if (v5)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v4, v5, *(a1 + 40));
  }
}

void sub_275DC8658(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = objc_msgSend_objectEnumerator(*(*(a1 + 32) + 64), a2, a3, 0, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v23, v27, 16);
  if (v6)
  {
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        v12 = v9;
        if (v9)
        {
          v13 = objc_msgSend_stylesheet(v9, v10, v11);
          v14 = v13 == 0;

          if (v14)
          {
            v17 = objc_msgSend_documentRoot(*(a1 + 32), v15, v16);
            v20 = objc_msgSend_stylesheet(v17, v18, v19);
            objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(v20, v21, v12, 0, 0, 0);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v22, &v23, v27, 16);
    }

    while (v6);
  }
}

void sub_275DC8DCC(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275DC8EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275DCAAC0(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_movieData(a1, a2, a3);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_msgSend_movieRemoteURL(a1, v4, v5);
    v7 = v8 != 0;
  }

  return v7;
}

id sub_275DCAB18(void *a1, const char *a2, uint64_t a3)
{
  isAudioOnly = objc_msgSend_isAudioOnly(a1, a2, a3);
  v4 = MEMORY[0x277D80148];
  if (!isAudioOnly)
  {
    v4 = MEMORY[0x277D80158];
  }

  v5 = *v4;

  return v5;
}

uint64_t sub_275DCAB6C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [KNMovieRenderer alloc];
  v14 = objc_msgSend_initWithAnimatedBuild_info_buildStage_animatedSlideView_(v12, v13, v11, a1, v10, v9);

  return v14;
}

void sub_275DCBF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_275DD0518(uint64_t a1, CGContextRef c)
{
  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  CGContextScaleCTM(c, *(a1 + 72), *(a1 + 72));
  v4 = *(a1 + 96);
  *&v8.a = *(a1 + 80);
  *&v8.c = v4;
  *&v8.tx = *(a1 + 112);
  CGContextConcatCTM(c, &v8);
  objc_msgSend_p_antialiasingDefeatedVideoMaskBoundsInContext_(*(a1 + 32), v5, c);
  return objc_msgSend_p_drawBackgroundFillRect_inContext_(*(a1 + 32), v6, c);
}

id sub_275DD0818(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], a2, a3);
  v4 = String();

  return v4;
}

id sub_275DD087C(void *a1)
{
  v2 = objc_opt_class();
  v5 = objc_msgSend_presenterNotesParagraphStyleIdentifier(v2, v3, v4);
  objc_opt_class();
  v7 = objc_msgSend_cascadedStyleWithIdentifier_(a1, v6, v5);
  v8 = TSUDynamicCast();

  return v8;
}

id sub_275DD0908(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EA0], a2, a3);
  v4 = String();

  return v4;
}

void sub_275DD098C(void *a1, const char *a2, uint64_t a3)
{
  v66 = a3;
  v72 = *MEMORY[0x277D85DE8];
  isLocked = objc_msgSend_isLocked(a1, a2, a3);
  v4 = objc_opt_class();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = objc_msgSend_p_boxedLabelTypesForNotesListStyles(a1, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v67, v71, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = objc_msgSend_unsignedIntegerValue(*(*(&v67 + 1) + 8 * i), v9, v10);
        v16 = objc_msgSend_p_presenterNotesListStyleIdentifierForListLabelType_(v4, v15, v14);
        objc_opt_class();
        v18 = objc_msgSend_styleWithIdentifier_(a1, v17, v16);
        v19 = TSUDynamicCast();

        if (v19)
        {
          if (v66)
          {
            objc_msgSend_willModifyForUpgrade(v19, v20, v21);
            v23 = objc_msgSend_p_defaultPresenterNotesListStylePropertyMapForListLabelType_(a1, v22, v14);
            objc_msgSend_removeAllValues(v19, v24, v25);
            objc_msgSend_setValuesForProperties_(v19, v26, v23);
          }
        }

        else
        {
          objc_msgSend_setIsLocked_(a1, v20, 0);
          objc_msgSend_willModifyForUpgrade(a1, v27, v28);
          v31 = objc_msgSend_context(a1, v29, v30);
          v19 = objc_msgSend_p_newDefaultPresenterNotesListStyleWithContext_forListLabelType_(a1, v32, v31, v14);

          objc_msgSend_addStyle_withIdentifier_(a1, v33, v19, v16);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v67, v71, 16);
    }

    while (v11);
  }

  v36 = objc_msgSend_presenterNotesParagraphStyleIdentifier(v4, v34, v35);
  objc_opt_class();
  v38 = objc_msgSend_styleWithIdentifier_(a1, v37, v36);
  v39 = TSUDynamicCast();

  if (v39)
  {
    if (v66)
    {
      objc_msgSend_willModifyForUpgrade(v39, v40, v41);
      v44 = objc_msgSend_p_defaultPresenterNotesParagraphStylePropertyMap(a1, v42, v43);
      objc_msgSend_removeAllValues(v39, v45, v46);
      objc_msgSend_setValuesForProperties_(v39, v47, v44);
    }
  }

  else
  {
    objc_msgSend_setIsLocked_(a1, v40, 0);
    objc_msgSend_willModifyForUpgrade(a1, v48, v49);
    v52 = objc_msgSend_context(a1, v50, v51);
    v39 = objc_msgSend_p_defaultPresenterNotesParagraphStyleWithContext_(a1, v53, v52);

    objc_msgSend_addStyle_withIdentifier_(a1, v54, v39, v36);
  }

  objc_msgSend_setIsLocked_(a1, v40, isLocked);
  v57 = objc_msgSend_name(v39, v55, v56);

  if (!v57)
  {
    objc_msgSend_willModifyForUpgrade(v39, v58, v59);
    v60 = sub_275DC204C();
    v62 = objc_msgSend_localizedStringForKey_value_table_(v60, v61, @"Presenter Notes", &stru_2884D8E20, @"Keynote");
    objc_msgSend_setName_(v39, v63, v62);
  }
}

id sub_275DD0CE8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, a3);
  v5 = objc_alloc(MEMORY[0x277D80E80]);
  v7 = objc_msgSend_initWithMode_amount_(v5, v6, 0, 1.17999995);
  v8 = objc_opt_class();
  v11 = objc_msgSend_p_presenterNotesListStyleIdentifierForListLabelType_(v8, v9, 0);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSSStylesheet(KNPresenterNotesAdditions) p_defaultPresenterNotesParagraphStylePropertyMap]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSSStylesheet_KNPresenterNotesAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 123, 0, "invalid nil value for '%{public}s'", "listStyleIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  objc_opt_class();
  v20 = objc_msgSend_styleWithIdentifier_(a1, v19, v11);
  v21 = TSUDynamicCast();

  v24 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EC8], v22, v23);
  objc_msgSend_setObject_forProperty_(v24, v25, @"HelveticaNeue", 16);
  v27 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v26, v4);
  objc_msgSend_setObject_forProperty_(v24, v28, v27, 48);

  objc_msgSend_setObject_forProperty_(v24, v29, v7, 85);
  LODWORD(v30) = 22.0;
  objc_msgSend_setFloatValue_forProperty_(v24, v31, 17, v30);
  objc_msgSend_setFloatValue_forProperty_(v24, v32, 80, 0.0);
  objc_msgSend_setFloatValue_forProperty_(v24, v33, 81, 0.0);
  objc_msgSend_setFloatValue_forProperty_(v24, v34, 82, 0.0);
  objc_msgSend_setIntValue_forProperty_(v24, v35, 0, 86);
  objc_msgSend_setObject_forProperty_(v24, v36, v21, 103);

  return v24;
}

id sub_275DD0F10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_p_defaultPresenterNotesParagraphStylePropertyMap(a1, v5, v6);
  v8 = objc_alloc(MEMORY[0x277D80EC8]);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v8, v9, v4, 0, v7, 0);

  return isVariation;
}

id sub_275DD0F90(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    v12 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EA0], a2, 0);
    goto LABEL_16;
  }

  v4 = objc_msgSend_count(&unk_2884F3E38, a2, a3);
  v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v4);
  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v7, a3);
  if (v4)
  {
    v10 = v4;
    do
    {
      objc_msgSend_addObject_(v6, v8, v9);
      --v10;
    }

    while (v10);
  }

  v12 = objc_msgSend_propertyMapWithPropertiesAndValues_(MEMORY[0x277D80AB8], v8, 180, v6, 177, &unk_2884F3E38, 0);
  if (a3 == 2)
  {
    v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v11, v4);
    v18 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v33, v4);
    v20 = objc_msgSend_defaultLabelString(MEMORY[0x277D80EA0], v34, v35);
    v28 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v36, v4);
    v37 = objc_alloc(MEMORY[0x277D80E98]);
    for (i = objc_msgSend_initWithScale_scaleWithText_baselineOffset_(v37, v38, 1, 0.800000012, 0.0); v4; --v4)
    {
      objc_msgSend_addObject_(v13, v39, &unk_2884F3D18);
      objc_msgSend_addObject_(v18, v40, v20);
      objc_msgSend_addObject_(v28, v41, i);
    }

    objc_msgSend_setObject_forProperty_(v12, v39, v13, 176);
    objc_msgSend_setObject_forProperty_(v12, v42, v18, 183);
    j = v28;
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v11, v4);
    v16 = objc_msgSend_defaultLabelNumberType(MEMORY[0x277D80EA0], v14, v15);
    v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v17, v16);
    v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v19, v4);
    *&v21 = flt_275E71268[v16] / 24.0;
    for (j = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v21);
    {
      objc_msgSend_addObject_(v13, v24, v18);
      objc_msgSend_addObject_(v20, v27, j);
    }

    v28 = objc_msgSend_defaultLabelGeometries(MEMORY[0x277D80EA0], v24, v25);
    objc_msgSend_setObject_forProperty_(v12, v29, v20, 176);
    objc_msgSend_setObject_forProperty_(v12, v30, v13, 184);
    i = v28;
LABEL_14:
    objc_msgSend_setObject_forProperty_(v12, v31, v28, 181);
  }

LABEL_16:

  return v12;
}

uint64_t sub_275DD1268(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = objc_msgSend_p_defaultPresenterNotesListStylePropertyMapForListLabelType_(a1, v7, a4);
  v9 = objc_alloc(MEMORY[0x277D80EA0]);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v9, v10, v6, 0, v8, 0);

  return isVariation;
}

id sub_275DD12E0(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D81268]);
  v3 = objc_opt_class();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275DD1514;
  aBlock[3] = &unk_27A698ED8;
  v25 = v2;
  v32 = v25;
  v4 = _Block_copy(aBlock);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = objc_msgSend_p_boxedLabelTypesForNotesListStyles(a1, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v27, v33, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = objc_msgSend_unsignedIntegerValue(*(*(&v27 + 1) + 8 * v13), v9, v10, v25);
        v16 = objc_msgSend_p_presenterNotesListStyleIdentifierForListLabelType_(v3, v15, v14);
        objc_opt_class();
        v18 = objc_msgSend_styleWithIdentifier_(a1, v17, v16);
        v19 = TSUDynamicCast();

        v4[2](v4, v19);
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v27, v33, 16);
    }

    while (v11);
  }

  v22 = objc_msgSend_defaultPresenterNotesParagraphStyle(a1, v20, v21);
  v4[2](v4, v22);

  v23 = v25;
  return v25;
}

void sub_275DD1514(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v4);
    v7 = objc_msgSend_descendants(v4, v5, v6);
    v9 = v7;
    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
      if (v10)
      {
        v12 = v10;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v9);
            }

            objc_msgSend_addObject_(*(a1 + 32), v11, *(*(&v15 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v15, v19, 16);
        }

        while (v12);
      }
    }
  }
}

id sub_275DD1638(void *a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = objc_msgSend_styles(a1, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v22;
    v14 = *MEMORY[0x277D810C0];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = objc_msgSend_styleIdentifier(v16, v10, v11);
        hasPrefix = objc_msgSend_hasPrefix_(v17, v18, v14);

        if (hasPrefix)
        {
          objc_msgSend_addObject_(v4, v10, v16);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v21, v25, 16);
    }

    while (v12);
  }

  return v4;
}

double sub_275DD1CE4(uint64_t a1, const char *a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_rep(a3, a2, a3);
  v8 = objc_msgSend_textStorageForTexture(v5, v6, v7);
  v11 = objc_msgSend_rep(a4, v9, v10);
  v14 = objc_msgSend_textStorageForTexture(v11, v12, v13);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v70[0] = objc_msgSend_textPropertiesNeedingCharacterAnimation(MEMORY[0x277D80F00], v15, v16);
  v70[1] = &unk_2884F3EE0;
  v71[0] = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v70, 2);
  v69[0] = objc_msgSend_textPropertiesAffectingVisualStyle(MEMORY[0x277D80F00], v18, v19);
  v69[1] = &unk_2884F3EF0;
  v71[1] = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v69, 2);
  obj = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v71, 2);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v65, v72, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v66;
    v28 = 0.0;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v66 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v65 + 1) + 8 * i);
        v31 = objc_msgSend_objectAtIndex_(v30, v24, 0);
        v33 = objc_msgSend_objectAtIndex_(v30, v32, 1);
        objc_msgSend_floatValue(v33, v34, v35);
        v37 = v36;
        v38 = MEMORY[0x277D80F00];
        v41 = objc_msgSend_range(a3, v39, v40);
        v43 = v42;
        v45 = objc_msgSend_range(a4, v42, v44);
        v47 = objc_msgSend_numberOfDifferencesBetweenStyleProperties_betweenOutgoingStorage_outgoingRange_incomingStorage_incomingRange_maxDifferencesBeforeReturning_(v38, v46, v31, v8, v41, v43, v14, v45, v46, 3);
        if (v47 >= 3)
        {
          v48 = 3;
        }

        else
        {
          v48 = v47;
        }

        v28 = v28 + (3 - v48) / 3.0 * v37;
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v65, v72, 16);
    }

    while (v26);
  }

  else
  {
    v28 = 0.0;
  }

  hasListLabel = objc_msgSend_hasListLabel(a3, v24, v25);
  if (hasListLabel == objc_msgSend_hasListLabel(a4, v50, v51))
  {
    v28 = v28 + 0.5;
  }

  v54 = objc_msgSend_range(a3, v52, v53);
  v56 = v55;
  v58 = objc_msgSend_range(a4, v55, v57);
  v60 = v56 == v59 && v54 == v58;
  v61 = v28 + 0.001;
  if (!v60)
  {
    v61 = v28;
  }

  return v61 / 2.001;
}

void *sub_275DD1F74(void *a1, const char *a2, unint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v168 = *MEMORY[0x277D85DE8];
  v135 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  if (a3 == 1)
  {
    v137 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCAB50], v10, v11);
  }

  else
  {
    v137 = 0;
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v10, &v158, v167, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v159;
    v143 = a5;
    v130 = *v159;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v159 != v17)
        {
          objc_enumerationMutation(a4);
        }

        v146 = *(*(&v158 + 1) + 8 * i);
        if (objc_msgSend_isVisible(v146, v14, v15, v130))
        {
          v147 = objc_msgSend_range(v146, v14, v15);
          v140 = v14;
          if (v14 >= a3 && (a7 != 2 || v14 == a3))
          {
            shouldTreatAsSingleCharacter = objc_msgSend_shouldTreatAsSingleCharacter(v146, v14, v15);
            v20 = v140 == a3 || shouldTreatAsSingleCharacter == 0;
            if (v20 && (objc_msgSend_hasBackgroundShape(v146, v14, v15) & 1) == 0)
            {
              v142 = objc_msgSend_unhandledIndexSet(v146, v14, v15);
              if (objc_msgSend_count(v142, v21, v22) >= a3)
              {
                v139 = objc_msgSend_stringValue(v146, v14, v15);
                v145 = objc_msgSend_rep(v146, v23, v24);
                v27 = objc_msgSend_textStorageForTexture(v145, v25, v26);
                v138 = objc_msgSend_length(v27, v28, v29);
                v154 = 0u;
                v155 = 0u;
                v156 = 0u;
                v157 = 0u;
                v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, v30, &v154, v166, 16);
                if (v151)
                {
                  v144 = *v155;
                  v131 = i;
                  v132 = v16;
                  do
                  {
                    v31 = 0;
                    v32 = v144;
                    do
                    {
                      if (*v155 != v32)
                      {
                        objc_enumerationMutation(a5);
                      }

                      v153 = *(*(&v154 + 1) + 8 * v31);
                      if (objc_msgSend_isVisible(v153, v14, v15))
                      {
                        v33 = objc_msgSend_range(v153, v14, v15);
                        if (v14 >= a3)
                        {
                          v34 = v33;
                          v35 = v14;
                          if (a7 != 2 || v14 == a3)
                          {
                            v36 = objc_msgSend_shouldTreatAsSingleCharacter(v153, v14, v15);
                            if ((v35 == a3 || v36 == 0) && (objc_msgSend_hasBackgroundShape(v153, v14, v15) & 1) == 0)
                            {
                              v152 = objc_msgSend_unhandledIndexSet(v153, v14, v15);
                              if (objc_msgSend_count(v152, v38, v39) >= a3)
                              {
                                v148 = objc_msgSend_stringValue(v153, v14, v15);
                                v42 = objc_msgSend_rep(v153, v40, v41);
                                v45 = objc_msgSend_info(v145, v43, v44);
                                v48 = objc_msgSend_geometry(v45, v46, v47);
                                v51 = objc_msgSend_horizontalFlip(v48, v49, v50);
                                v141 = v42;
                                v54 = objc_msgSend_info(v42, v52, v53);
                                v57 = objc_msgSend_geometry(v54, v55, v56);
                                v20 = v51 == objc_msgSend_horizontalFlip(v57, v58, v59);
                                a5 = v143;
                                if (v20)
                                {
                                  v60 = 0;
                                  do
                                  {
                                    v150 = v60;
                                    if (objc_msgSend_countOfIndexesInRange_(v142, v14, v60 + v147, a3) == a3)
                                    {
                                      v149 = objc_msgSend_substringWithRange_(v139, v14, v150, a3);
                                      if (objc_msgSend_length(v149, v61, v62) != 1 || v138 < 6 || (v63 = objc_msgSend_characterAtIndex_(v149, v14, 0), (objc_msgSend_characterIsMember_(v137, v64, v63) & 1) == 0))
                                      {
                                        if (!objc_msgSend_hasPrefix_(v149, v14, @" ") || (hasListLabel = objc_msgSend_hasListLabel(v146, v14, v65), !v150) && hasListLabel)
                                        {
                                          if ((objc_msgSend_hasSuffix_(v149, v14, @" ") & 1) == 0)
                                          {
                                            v67 = 0;
                                            do
                                            {
                                              if (objc_msgSend_countOfIndexesInRange_(v152, v14, v67 + v34, a3) == a3)
                                              {
                                                v68 = objc_msgSend_substringWithRange_(v148, v14, v67, a3);
                                                if (!objc_msgSend_compare_options_(v149, v69, v68, 0))
                                                {
                                                  v72 = (objc_msgSend_hasListLabel(v146, v14, v15) & 1) != 0 ? 1 : objc_msgSend_hasListLabel(v153, v70, v71);
                                                  v73 = objc_msgSend_containedRep(v145, v70, v71);
                                                  objc_msgSend_glyphRectForRange_includingLabel_(v73, v74, v150 + v147, a3, v72);
                                                  if (!CGRectIsNull(v169))
                                                  {
                                                    v75 = objc_msgSend_layout(v145, v14, v15);
                                                    v78 = objc_msgSend_geometry(v75, v76, v77);
                                                    objc_msgSend_frame(v78, v79, v80);
                                                    v83 = objc_msgSend_containedRep(v141, v81, v82);
                                                    objc_msgSend_glyphRectForRange_includingLabel_(v83, v84, v67 + v34, a3, v72);
                                                    if (!CGRectIsNull(v170))
                                                    {
                                                      TSUAddPoints();
                                                      v87 = objc_msgSend_layout(v141, v85, v86);
                                                      v90 = objc_msgSend_geometry(v87, v88, v89);
                                                      objc_msgSend_frame(v90, v91, v92);
                                                      TSUAddPoints();
                                                      v93 = MEMORY[0x277D80320];
                                                      TSUCenterOfRect();
                                                      matched = objc_msgSend_matchObjectWithTextRep_position_stringValue_stringRange_(v93, v94, v145, v149, v150 + v147, a3);
                                                      v96 = MEMORY[0x277CBEB38];
                                                      v164 = @"kMagicMoveTextChunkKey";
                                                      v165 = v146;
                                                      v98 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v97, &v165, &v164, 1);
                                                      v100 = objc_msgSend_dictionaryWithDictionary_(v96, v99, v98);
                                                      objc_msgSend_setAttributes_(matched, v101, v100);
                                                      v102 = MEMORY[0x277D80320];
                                                      TSUCenterOfRect();
                                                      v104 = objc_msgSend_matchObjectWithTextRep_position_stringValue_stringRange_(v102, v103, v141, v68, v67 + v34, a3);
                                                      v105 = MEMORY[0x277CBEB38];
                                                      v162 = @"kMagicMoveTextChunkKey";
                                                      v163 = v153;
                                                      v107 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v106, &v163, &v162, 1);
                                                      v109 = objc_msgSend_dictionaryWithDictionary_(v105, v108, v107);
                                                      objc_msgSend_setAttributes_(v104, v110, v109);
                                                      v32 = v144;
                                                      objc_msgSend_p_mmAttributeMatchPercentWithOutgoingTextChunk_incomingTextChunk_(a1, v111, v146, v153);
                                                      v113 = objc_msgSend_matchWithOutgoingObject_incomingObject_matchType_attributeMatchPercent_textureDescription_(MEMORY[0x277D80318], v112, matched, v104, 3, a6);
                                                      objc_msgSend_addObject_(v135, v114, v113);
                                                    }
                                                  }
                                                }
                                              }

                                              if (a7 > 2)
                                              {
                                                if ((a7 - 3) >= 2)
                                                {
                                                  continue;
                                                }
                                              }

                                              else if (a7)
                                              {
                                                if (a7 != 1)
                                                {
                                                  if (a7 == 2)
                                                  {
                                                    v67 += v35;
                                                  }

                                                  continue;
                                                }
                                              }

                                              else
                                              {
                                                v115 = MEMORY[0x277D81150];
                                                v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSWPShapeRep(KeynoteAdditions) p_potentialMatchesWithChunkLength:outgoingTextChunks:incomingTextChunks:textureDescription:textDeliveryType:]");
                                                v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
                                                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v119, v116, v118, 356, 0, "Undefined text delivery type, defaulting to By Object");
                                                v32 = v144;
                                                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121);
                                              }

                                              ++v67;
                                            }

                                            while (v67 <= &v35[-a3]);
                                          }
                                        }
                                      }
                                    }

                                    if (a7 > 2)
                                    {
                                      a5 = v143;
                                      v60 = v150;
                                      if ((a7 - 3) >= 2)
                                      {
                                        continue;
                                      }
                                    }

                                    else
                                    {
                                      v60 = v150;
                                      if (a7)
                                      {
                                        a5 = v143;
                                        if (a7 != 1)
                                        {
                                          if (a7 == 2)
                                          {
                                            v60 = &v140[v150];
                                          }

                                          continue;
                                        }
                                      }

                                      else
                                      {
                                        v122 = MEMORY[0x277D81150];
                                        v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSWPShapeRep(KeynoteAdditions) p_potentialMatchesWithChunkLength:outgoingTextChunks:incomingTextChunks:textureDescription:textDeliveryType:]");
                                        v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
                                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v126, v123, v125, 372, 0, "Undefined text delivery type, defaulting to By Object");
                                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128);
                                        v60 = v150;
                                        a5 = v143;
                                      }
                                    }

                                    ++v60;
                                  }

                                  while (v60 <= &v140[-a3]);
                                }
                              }
                            }
                          }
                        }
                      }

                      ++v31;
                    }

                    while (v31 != v151);
                    i = v131;
                    v16 = v132;
                    v17 = v130;
                    v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, v14, &v154, v166, 16);
                  }

                  while (v151);
                }
              }
            }
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v14, &v158, v167, 16);
    }

    while (v16);
  }

  return v135;
}

void *sub_275DD2744(uint64_t a1, const char *a2, void *a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a4 < a4 + a5)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = a6;
    while (1)
    {
      v14 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(a3, a2, 21, a4 + v10, 0);
      if (v14)
      {
        v16 = objc_msgSend_intValue(v14, a2, v15);
        if ((v16 - 1) < 2)
        {
          if (v11)
          {
            v18 = objc_msgSend_substringWithRange_(v11, a2, v10, 1);
            goto LABEL_13;
          }

          v19 = objc_msgSend_uppercaseString(a6, a2, v17);
          v11 = v19;
          goto LABEL_12;
        }

        if (v16 == 3)
        {
          if (v12)
          {
            v18 = objc_msgSend_substringWithRange_(v12, a2, v10, 1);
            goto LABEL_13;
          }

          v19 = objc_msgSend_capitalizedString(a6, a2, v17);
          v12 = v19;
LABEL_12:
          v18 = objc_msgSend_substringWithRange_(v19, v20, v10, 1);
LABEL_13:
          if (v18)
          {
            v13 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v13, a2, v10, 1, v18);
          }
        }
      }

      if (a5 == ++v10)
      {
        return v13;
      }
    }
  }

  return a6;
}

unint64_t sub_275DD2848(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v224 = *MEMORY[0x277D85DE8];
  if (qword_280A3C0A8 != -1)
  {
    sub_275E5B598();
  }

  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  obj = objc_msgSend_arrayByAddingObjectsFromArray_(a3, a2, a4);
  v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v218, v223, 16);
  v13 = 0;
  if (v192)
  {
    v190 = *v219;
    v14 = 0x277CCA000uLL;
    v211 = a5;
    do
    {
      v15 = 0;
      do
      {
        if (*v219 != v190)
        {
          objc_enumerationMutation(obj);
        }

        v193 = v15;
        v16 = *(*(&v218 + 1) + 8 * v15);
        v17 = objc_msgSend_deliveryStyle(a8, v11, v12);
        v20 = objc_msgSend_byGlyphStyle(a8, v18, v19);
        v208 = objc_msgSend_stageChunksForDeliveryStyle_byGlyphStyle_(v16, v21, v17, v20);
        v23 = objc_msgSend_containsObject_(a3, v22, v16);
        v26 = objc_msgSend_textStorageForTexture(v16, v24, v25);
        v29 = objc_msgSend_range(v26, v27, v28);
        v31 = v30;
        v213 = objc_msgSend_string(v26, v30, v32);
        v214 = 0u;
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v35 = objc_msgSend_layout(v16, v33, v34);
        v38 = objc_msgSend_containedLayout(v35, v36, v37);
        v194 = objc_msgSend_columns(v38, v39, v40);
        v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v41, &v214, v222, 16);
        if (v196)
        {
          v42 = &v31[v29];
          v195 = *v215;
          v43 = a7;
          if (v23)
          {
            v43 = a6;
          }

          v210 = v43;
          v44 = v211;
          do
          {
            v45 = 0;
            do
            {
              if (*v215 != v195)
              {
                objc_enumerationMutation(v194);
              }

              v46 = *(*(&v214 + 1) + 8 * v45);
              v197 = v45;
              if (v44 == 1)
              {
                v47 = objc_msgSend_range(v46, v11, v12);
                v49 = v48;
                v50 = objc_opt_new();
                objc_msgSend_setRep_(v50, v51, v16);
                objc_msgSend_setRange_(v50, v52, v47, v49);
                v54 = objc_msgSend_substringWithRange_(v213, v53, v47, v49);
                objc_msgSend_setStringValue_(v50, v55, v54);
                HasListLabelAtCharIndex = objc_msgSend_paragraphHasListLabelAtCharIndex_(v26, v56, v47);
                objc_msgSend_setHasListLabel_(v50, v58, HasListLabelAtCharIndex);
                v60 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v59, v47, v49);
                objc_msgSend_setUnhandledIndexSet_(v50, v61, v60);
                objc_msgSend_setStageIndex_(v50, v62, 0);
                objc_msgSend_addObject_(v210, v63, v50);

                v44 = v211;
                if (v13 <= v49)
                {
                  v13 = v49;
                }
              }

              else if (objc_msgSend_lineCount(v46, v11, v12))
              {
                v64 = 0;
                v198 = v46;
                while (1)
                {
                  v199 = v64;
                  v65 = objc_msgSend_rangeOfLineFragmentAtIndex_(v46, v11, v64);
                  v68 = &v66[v65];
                  if (v65 < &v66[v65])
                  {
                    break;
                  }

LABEL_91:
                  v46 = v198;
                  v64 = v199 + 1;
                  if (v199 + 1 >= objc_msgSend_lineCount(v198, v66, v67))
                  {
                    goto LABEL_92;
                  }
                }

                v69 = v65;
                while (2)
                {
                  v70 = &v68[-v69];
                  objc_msgSend_attachmentIndexRangeForTextRange_(v26, v66, v69, &v68[-v69]);
                  if (v44 == 2 || v66)
                  {
                    for (i = v68 > v69; v69 < v68; i = ++v69 < v68)
                    {
                      if (v69 >= v42)
                      {
                        break;
                      }

                      v72 = objc_msgSend_whitespaceAndNewlineCharacterSet(*(v14 + 2304), v66, v67);
                      v74 = objc_msgSend_characterAtIndex_(v26, v73, v69);
                      if (!objc_msgSend_characterIsMember_(v72, v75, v74))
                      {
                        goto LABEL_32;
                      }
                    }

                    if (i)
                    {
LABEL_32:
                      if (v44 == 2)
                      {
                        v76 = objc_msgSend_tswp_invisibleCharacterSet(*(v14 + 2304), v66, v67);
                        v78 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v213, v77, v76, 0, v69, &v68[-v69]);
                      }

                      else
                      {
                        v78 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v213, v66, qword_280A3C0A0, 0, v69, &v68[-v69]);
                      }

                      v79 = v78 - v69;
                      if (v78 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v79 = &v68[-v69];
                      }

                      if (v78 == v69)
                      {
                        v70 = 1;
                      }

                      else
                      {
                        v70 = v79;
                      }

                      if (!v70)
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_41;
                    }
                  }

                  else
                  {
                    if (!v70)
                    {
                      goto LABEL_49;
                    }

LABEL_41:
                    if (v69 >= v42)
                    {
LABEL_49:
                      v80 = v69;
                      if (v70)
                      {
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v80 = v69;
                      while (1)
                      {
                        objc_msgSend_characterAtIndex_(v26, v66, v80);
                        if (!IsWhitespaceCharacter())
                        {
                          break;
                        }

                        v82 = objc_msgSend_containedRep(v16, v66, v81);
                        objc_msgSend_labelRectForCharIndex_(v82, v83, v80);
                        if (v84 != 0.0)
                        {
                          break;
                        }

                        ++v80;
                        if (!--v70 || v80 >= v42)
                        {
                          if (v70)
                          {
                            break;
                          }

                          goto LABEL_57;
                        }
                      }

LABEL_50:
                      while (1)
                      {
                        v85 = v80 + v70 - 1;
                        if (v85 >= v42)
                        {
                          break;
                        }

                        objc_msgSend_characterAtIndex_(v26, v66, v85);
                        if (!IsWhitespaceCharacter())
                        {
                          break;
                        }

                        if (!--v70)
                        {
                          goto LABEL_57;
                        }
                      }

                      if (v70 == 1)
                      {
                        objc_msgSend_attachmentIndexRangeForTextRange_(v26, v66, v80, 1);
                        if (v66)
                        {
                          v70 = 1;
                          goto LABEL_86;
                        }
                      }
                    }

LABEL_57:
                    if (objc_msgSend_p_hasContentForRange_labelOnly_(v16, v66, v80, v70, 1))
                    {
                      v86 = objc_msgSend_substringWithRange_(v213, v66, v80, v70);
                      v88 = objc_msgSend_p_stringByApplyingCapitalizationPropertyFromStorage_withRange_toString_(a1, v87, v26, v80, v70, v86);
                      v212 = v13;
                      if (v80 == objc_msgSend_paragraphStartAtCharIndex_(v26, v89, v69))
                      {
                        v91 = objc_msgSend_paragraphHasListLabelAtCharIndex_(v26, v90, v69);
                      }

                      else
                      {
                        v91 = 0;
                      }

                      v92 = objc_opt_new();
                      objc_msgSend_setRep_(v92, v93, v16);
                      objc_msgSend_setRange_(v92, v94, v80, v70);
                      objc_msgSend_setStringValue_(v92, v95, v88);
                      v206 = v91;
                      objc_msgSend_setHasListLabel_(v92, v96, v91);
                      v98 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v97, v80, v70);
                      objc_msgSend_setUnhandledIndexSet_(v92, v99, v98);
                      v101 = objc_msgSend_stageIndexForStorageRange_forTextureDescription_stageChunks_(v16, v100, v80, v70, a8, v208);
                      objc_msgSend_setStageIndex_(v92, v102, v101);
                      v105 = objc_msgSend_containedRep(v16, v103, v104);
                      v107 = objc_msgSend_charCountOfGlyphStartingAtCharIndex_(v105, v106, v80) == v70;
                      objc_msgSend_setShouldTreatAsSingleCharacter_(v92, v108, v107);
                      if (objc_msgSend_shouldTreatAsSingleCharacter(v92, v109, v110))
                      {
                        v112 = objc_msgSend_dropCapStyleAtCharIndex_(v26, v111, v80);
                        if (v112)
                        {
                          v113 = objc_msgSend_objectForProperty_(v112, v111, 256);
                          v116 = objc_msgSend_shapeEnabled(v113, v114, v115);
                          objc_msgSend_setHasBackgroundShape_(v92, v117, v116);
                        }
                      }

                      objc_msgSend_addObject_(v210, v111, v92);

                      v44 = v211;
                      if (v211 == 2 && v70 >= 2 && (objc_msgSend_shouldTreatAsSingleCharacter(v92, v66, v67) & 1) == 0)
                      {
                        v202 = objc_msgSend_unhandledIndexSet(v92, v66, v67);
                        v120 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v118, v119);
                        v122 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v213, v121, v120, 0, v80, v70);
                        if (v122 == v80)
                        {
                          v124 = v123;
                          v125 = v80;
                          v126 = v70;
                          v127 = v70;
                          v128 = v70 - v123;
                          if (v70 >= v123)
                          {
                            if (v70 > v123)
                            {
                              v129 = v122;
                              v203 = v70 - v123;
                              v130 = objc_opt_new();
                              objc_msgSend_setRep_(v130, v131, v16);
                              objc_msgSend_setRange_(v130, v132, v129, v124);
                              v134 = objc_msgSend_substringWithRange_(v213, v133, v129, v124);
                              objc_msgSend_setStringValue_(v130, v135, v134);
                              objc_msgSend_setHasListLabel_(v130, v136, v206);
                              objc_msgSend_setUnhandledIndexSet_(v130, v137, v202);
                              v139 = objc_msgSend_stageIndexForStorageRange_forTextureDescription_stageChunks_(v16, v138, v129, v124, a8, v208);
                              objc_msgSend_setStageIndex_(v130, v140, v139);
                              objc_msgSend_addObject_(v210, v141, v130);

                              v128 = v203;
                            }

                            v125 = &v124[v80];
                            v126 = v128;
                            v127 = v128;
                          }
                        }

                        else
                        {
                          v125 = v80;
                          v126 = v70;
                          v127 = v70;
                        }

                        v204 = v127;
                        v142 = v125;
                        v143 = objc_msgSend_substringWithRange_(v213, v123, v125, v126);
                        v145 = objc_msgSend_p_stringByApplyingCapitalizationPropertyFromStorage_withRange_toString_(a1, v144, v26, v142, v126, v143);
                        v148 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v146, v147);
                        v150 = objc_msgSend_stringByTrimmingCharactersInSet_(v145, v149, v148);
                        v153 = objc_msgSend_length(v150, v151, v152) + v142;
                        v201 = v150;
                        v156 = objc_msgSend_length(v150, v154, v155);
                        v200 = v142;
                        if (v153 <= v142)
                        {
LABEL_76:
                          v159 = v204;
                        }

                        else
                        {
                          v159 = v204;
                          v160 = v204 - v156;
                          if (v204 != v156)
                          {
                            v204 = v156;
                            v161 = objc_opt_new();
                            objc_msgSend_setRep_(v161, v162, v16);
                            objc_msgSend_setRange_(v161, v163, v153, v160);
                            v165 = objc_msgSend_substringWithRange_(v213, v164, v153, v160);
                            objc_msgSend_setStringValue_(v161, v166, v165);
                            objc_msgSend_setHasListLabel_(v161, v167, 0);
                            objc_msgSend_setUnhandledIndexSet_(v161, v168, v202);
                            v170 = objc_msgSend_stageIndexForStorageRange_forTextureDescription_stageChunks_(v16, v169, v153, v160, a8, v208);
                            objc_msgSend_setStageIndex_(v161, v171, v170);
                            objc_msgSend_addObject_(v210, v172, v161);

                            goto LABEL_76;
                          }
                        }

                        v173 = v159;
                        v174 = objc_msgSend_length(v201, v157, v158);
                        v175 = v173;
                        v44 = 2;
                        if (v174 && v175 && v70 != v175)
                        {
                          v205 = v175;
                          v176 = objc_opt_new();
                          objc_msgSend_setRep_(v176, v177, v16);
                          objc_msgSend_setRange_(v176, v178, v200, v205);
                          objc_msgSend_setStringValue_(v176, v179, v201);
                          if (v80 == v200)
                          {
                            objc_msgSend_setHasListLabel_(v176, v180, v206);
                          }

                          else
                          {
                            objc_msgSend_setHasListLabel_(v176, v180, 0);
                          }

                          objc_msgSend_setUnhandledIndexSet_(v176, v181, v202);
                          v183 = objc_msgSend_stageIndexForStorageRange_forTextureDescription_stageChunks_(v16, v182, v200, v205, a8, v208);
                          objc_msgSend_setStageIndex_(v176, v184, v183);
                          objc_msgSend_addObject_(v210, v185, v176);

                          v44 = 2;
                        }
                      }

                      v13 = v212;
                      if (v212 <= v70)
                      {
                        v13 = v70;
                      }
                    }

LABEL_86:
                    if (v69 + 1 > v70 + v80)
                    {
                      ++v69;
                    }

                    else
                    {
                      v69 = v70 + v80;
                    }

                    v14 = 0x277CCA000;
                  }

                  if (v69 >= v68)
                  {
                    goto LABEL_91;
                  }

                  continue;
                }
              }

LABEL_92:
              v45 = v197 + 1;
            }

            while (v197 + 1 != v196);
            v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v11, &v214, v222, 16);
          }

          while (v196);
        }

        v15 = v193 + 1;
      }

      while (v193 + 1 != v192);
      v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v218, v223, 16);
    }

    while (v192);
  }

  return v13;
}

id sub_275DD31A0(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C", 65532);
  result = objc_msgSend_characterSetWithCharactersInString_(v2, v4, v3);
  qword_280A3C0A0 = result;
  return result;
}

uint64_t sub_275DD3200(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char *a7)
{
  v12 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(a3, a2, a4, 0);
  v14 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(a5, v13, a6, 0);
  v16 = 0;
  if (!v12)
  {
    result = 0;
    goto LABEL_21;
  }

  v17 = v14;
  result = 0;
  if (!v17)
  {
    goto LABEL_21;
  }

  v19 = objc_msgSend_paragraphIndexAtCharIndex_(a3, v15, a4);
  v21 = objc_msgSend_paragraphIndexAtCharIndex_(a5, v20, a6);
  v23 = objc_msgSend_listNumberForParagraphIndex_numberingData_(a3, v22, v19, v42);
  v25 = objc_msgSend_listNumberForParagraphIndex_numberingData_(a5, v24, v21, v41);
  if (v42[0] != v41[0])
  {
    v16 = 0;
    result = 0;
    goto LABEL_21;
  }

  v28 = v25;
  v16 = 0;
  result = 1;
  if (v42[0] > 1)
  {
    if (v42[0] == 4)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "+[TSWPShapeRep(KeynoteAdditions) p_listLabelsAreEqualWithOutgoingStorage:outgoingCharIndex:incomingStorage:incomingCharIndex:shouldMatch:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 701, 0, "Invalid List Label Type!");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      v16 = 0;
LABEL_15:
      result = 1;
      goto LABEL_21;
    }

    if (v42[0] != 3)
    {
      if (v42[0] != 2)
      {
        goto LABEL_21;
      }

LABEL_20:
      v16 = 1;
      goto LABEL_21;
    }

    if (v23 == v28)
    {
      v36 = objc_msgSend_numberTypeName(v12, v26, v27);
      v39 = objc_msgSend_numberTypeName(v17, v37, v38);
      if (objc_msgSend_isEqualToString_(v36, v40, v39))
      {
        v16 = 1;
        goto LABEL_15;
      }
    }

LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  if (!v42[0])
  {
    goto LABEL_20;
  }

  if (v42[0] == 1)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (a7)
  {
    *a7 = v16;
  }

  return result;
}