void sub_275FC9724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

void sub_275FC9850(uint64_t a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_lineCount(v15, v3, v4, v5, v6, v7))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v13 = *(*(a1 + 40) + 8);
  objc_msgSend_frameBounds(v15, v8, v9, v10, v11, v12);
  if (v14 >= *(v13 + 24))
  {
    v14 = *(v13 + 24);
  }

  *(*(*(a1 + 40) + 8) + 24) = v14;
}

void sub_275FC98E8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = objc_msgSend_i_flowLayoutController(*(a1 + 32), a2, a3, a4, a5, a6);
  objc_msgSend_layOutFlowsIfNeededOnPage_(v12, v7, v8, v9, v10, v11, *(a1 + 40));
}

void sub_275FCACD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_275FCAD88(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_275FCAD98(uint64_t a1, void *a2)
{
  v25 = a2;
  v8 = objc_msgSend_anchoredRange(v25, v3, v4, v5, v6, v7);
  v14 = *(MEMORY[0x277D81490] + 8);
  if (v8 != *MEMORY[0x277D81490] || v9 != v14)
  {
    v16 = *(*(a1 + 32) + 8);
    v17 = *(v16 + 48);
    v18 = *(v16 + 56);
    if (v17 == *MEMORY[0x277D81490] && v18 == v14)
    {
      location = objc_msgSend_anchoredRange(v25, v9, v10, v11, v12, v13);
    }

    else
    {
      v28.location = objc_msgSend_anchoredRange(v25, v9, v10, v11, v12, v13);
      v28.length = v20;
      v27.location = v17;
      v27.length = v18;
      v23 = NSUnionRange(v27, v28);
      length = v23.length;
      location = v23.location;
    }

    v24 = *(*(a1 + 32) + 8);
    *(v24 + 48) = location;
    *(v24 + 56) = length;
  }
}

uint64_t sub_275FCB39C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v9 = v6;
  if (v7 != v9)
  {
    v14 = objc_msgSend_info(v7, v8, v10, v11, v12, v13);
    v20 = objc_msgSend_info(v9, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_sectionTemplateDrawableProvider(*(a1 + 32), v21, v22, v23, v24, v25);
    v32 = objc_msgSend_sectionTemplateDrawables(v26, v27, v28, v29, v30, v31);

    if (v32)
    {
      v38 = objc_msgSend_indexOfObjectIdenticalTo_(v32, v33, v34, v35, v36, v37, v14);
      v44 = objc_msgSend_indexOfObjectIdenticalTo_(v32, v39, v40, v41, v42, v43, v20);
      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v44 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v86 = -1;
        }

        else if (v38 < v44)
        {
          v86 = -1;
        }

        else
        {
          v86 = v38 > v44;
        }

        goto LABEL_54;
      }

      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v86 = 1;
LABEL_54:

        goto LABEL_55;
      }
    }

    v184 = v20;
    v185 = v14;
    v186 = objc_msgSend_drawablesZOrder(*(a1 + 40), v33, v34, v35, v36, v37);
    v50 = objc_msgSend_zOrderOfDrawable_(v186, v45, v46, v47, v48, v49, v14);
    v56 = objc_msgSend_zOrderOfDrawable_(v186, v51, v52, v53, v54, v55, v20);
    v62 = objc_msgSend_info(*(a1 + 32), v57, v58, v59, v60, v61);
    v68 = objc_msgSend_documentRoot(v62, v63, v64, v65, v66, v67);
    v74 = objc_msgSend_bodyStorage(v68, v69, v70, v71, v72, v73);
    v80 = objc_msgSend_zOrderOfDrawable_(v186, v75, v76, v77, v78, v79, v74);

    if (v50 < v80)
    {
      if (v56 >= v80)
      {
        v86 = -1;
      }

      else if (v50 < v56)
      {
        v86 = -1;
      }

      else
      {
        v86 = v50 > v56;
      }

      goto LABEL_53;
    }

    if (v56 < v80)
    {
      v86 = 1;
LABEL_53:

      v20 = v184;
      v14 = v185;
      goto LABEL_54;
    }

    v105 = objc_msgSend_headerFooterProvider(*(a1 + 32), v81, v82, v83, v84, v85);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v111 = objc_msgSend_headerFooterTypeForStorage_(v105, v106, v107, v108, v109, v110, v185);
    }

    else
    {
      v111 = -1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v117 = objc_msgSend_headerFooterTypeForStorage_(v105, v112, v113, v114, v115, v116, v184);
      v86 = v117;
      if (!v111)
      {
        if (!v117)
        {
LABEL_37:
          v138 = objc_msgSend_headerFragmentIndexForStorage_(v105, v112, v113, v114, v115, v116, v185);
          v144 = objc_msgSend_headerFragmentIndexForStorage_(v105, v139, v140, v141, v142, v143, v184);
          v145 = v138 >= v144;
          v146 = v138 > v144;
LABEL_38:
          v147 = v146;
          if (v145)
          {
            v86 = v147;
          }

          else
          {
            v86 = -1;
          }

          goto LABEL_52;
        }

        goto LABEL_36;
      }

      if (!v117)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v86 = -1;
      if (!v111)
      {
LABEL_52:

        goto LABEL_53;
      }
    }

    v118 = objc_msgSend_bodyLayout(*(a1 + 32), v112, v113, v114, v115, v116);

    if (v118 != v7)
    {
      v124 = objc_msgSend_bodyLayout(*(a1 + 32), v119, v120, v121, v122, v123);

      if (v124 == v9)
      {
        goto LABEL_51;
      }

      v130 = objc_msgSend_footnoteContainerLayout(*(a1 + 32), v125, v126, v127, v128, v129);

      if (v130 != v7)
      {
        v136 = objc_msgSend_footnoteContainerLayout(*(a1 + 32), v131, v132, v133, v134, v135);

        if (v136 != v9)
        {
          if (v111 == 1)
          {
            if (v86 == 1)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          if (v86 == 1)
          {
            goto LABEL_52;
          }

          if (v50 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v56 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v145 = v50 >= v56;
              v146 = v50 > v56;
              goto LABEL_38;
            }

            goto LABEL_36;
          }

          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v148 = sub_275FCB9A4(v113, v114, v115, v116, v137, v185);
            v149 = v148;
            v154 = sub_275FCB9A4(v150, v151, v152, v153, v148, v184);
            if (v154 || !v149)
            {
              if (v149 || !v154)
              {
                if (v149 || v154)
                {
                  v183 = v105;
                  v155 = objc_opt_class();
                  v156 = NSStringFromClass(v155);
                  v157 = objc_opt_class();
                  v158 = NSStringFromClass(v157);
                  v159 = MEMORY[0x277D81150];
                  v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, v161, v162, v163, v164, "[TPPaginatedPageLayout p_sortChildLayouts]_block_invoke");
                  v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, v170, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v172, v173, v174, v175, v176, v165, v171, 1875, 0, "Unexpected objects: %{public}@(%{public}p)#%lu and %{public}@(%{public}p)#%lu", v156, v7, 0x7FFFFFFFFFFFFFFFLL, v158, v9, 0x7FFFFFFFFFFFFFFFLL);

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v177, v178, v179, v180, v181);
                  v86 = 0;
                  v105 = v183;
                }

                else
                {
                  v86 = 0;
                }

                goto LABEL_52;
              }

              goto LABEL_51;
            }

            goto LABEL_36;
          }
        }

LABEL_51:
        v86 = 1;
        goto LABEL_52;
      }
    }

LABEL_36:
    v86 = -1;
    goto LABEL_52;
  }

  v87 = MEMORY[0x277D81150];
  v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, v13, "[TPPaginatedPageLayout p_sortChildLayouts]_block_invoke");
  v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v95, v96, v97, v98, v99, v88, v94, 1758, 0, "Unexpected layout equality");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102, v103, v104);
  v86 = 0;
LABEL_55:

  return v86;
}

BOOL sub_275FCB9A4(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, void *a6)
{
  v6 = objc_msgSend_owningAttachmentNoRecurse(a6, a6, a1, a2, a3, a4);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_parentStorage(v6, v7, v8, v9, v10, v11);
    v14 = v13 != 0;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

void sub_275FCCCD8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = TSUDynamicCast();

  v9 = v10;
  if (v10)
  {
    objc_msgSend_addObject_(*(a1 + 32), v4, v5, v6, v7, v8, v10);
    v9 = v10;
  }
}

void sub_275FCD7E8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_275FCE2CC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v9 = a2;
  objc_msgSend_setSection_(*(*(a1 + 32) + 64), v4, v5, v6, v7, v8);
}

void sub_275FCE350(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 72), a2);
  v9 = a2;
  objc_msgSend_setSection_(*(*(a1 + 32) + 72), v4, v5, v6, v7, v8);
}

void sub_275FCE3DC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 80), a2);
  v9 = a2;
  objc_msgSend_setSection_(*(*(a1 + 32) + 80), v4, v5, v6, v7, v8);
}

uint64_t sub_275FCE468(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (*(a1 + 48) <= 0x2CBDB02A3uLL)
  {
    objc_msgSend_p_upgradePageSizeAndMarginsFromObsoleteSettings_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 40));
  }

  v7 = *(a1 + 32);

  return objc_msgSend_p_makeUserGuideStorage(v7, a2, a3, a4, a5, a6);
}

void sub_275FCE858(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275FB2CD8();
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

void sub_275FCE950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275FCF0A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_275FD08A4(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275FD0944;
  v8[3] = &unk_27A6A84E0;
  v9 = *(a1 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(a2, v3, v4, v5, v6, v7, v8);
}

void sub_275FD0958(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275FD09F8;
  v8[3] = &unk_27A6A84E0;
  v9 = *(a1 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(a2, v3, v4, v5, v6, v7, v8);
}

void sub_275FD0A0C(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, v8, &v17, v21, 16);
  if (v10)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_i_addSectionTemplateDrawable_(*(a1 + 32), v9, v11, v12, v13, v14, *(*(&v17 + 1) + 8 * v16++), v17);
      }

      while (v10 != v16);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, v11, v12, v13, v14, &v17, v21, 16);
    }

    while (v10);
  }
}

void sub_275FD0B28(uint64_t a1)
{
  v118 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v7 = objc_msgSend_context(*(a1 + 32), v2, v3, v4, v5, v6);
  v13 = objc_msgSend_documentObject(v7, v8, v9, v10, v11, v12);
  v14 = TSUDynamicCast();

  v15 = *(a1 + 40);
  v21 = objc_msgSend_stylesheet(v14, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_theme(v14, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_headerAndFooterStyle(v27, v28, v29, v30, v31, v32);
  objc_msgSend_i_ensureHeaderFooterStoragesExistWithStylesheet_paragraphStyle_context_(v15, v34, v35, v36, v37, v38, v21, v33, 0);

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v43 = objc_msgSend_headerFooterFragmentEnumerator(*(a1 + 40), v39, 0, v40, v41, v42);
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, v45, v46, v47, v48, &v112, v117, 16);
  if (v50)
  {
    v55 = *v113;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v113 != v55)
        {
          objc_enumerationMutation(v43);
        }

        v57 = *(*(&v112 + 1) + 8 * i);
        if (objc_msgSend_tsp_isInDocument(v57, v49, v51, v52, v53, v54))
        {
          objc_msgSend_willBeRemovedFromDocumentRoot_(v57, v49, v51, v52, v53, v54, v14);
          objc_msgSend_wasRemovedFromDocumentRoot_(v57, v58, v59, v60, v61, v62, v14);
        }
      }

      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v49, v51, v52, v53, v54, &v112, v117, 16);
    }

    while (v50);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v67 = objc_msgSend_sectionTemplateDrawables(*(a1 + 40), v63, 0, v64, v65, v66, 0);
  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, v69, v70, v71, v72, &v108, v116, 16);
  if (v74)
  {
    v79 = *v109;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v109 != v79)
        {
          objc_enumerationMutation(v67);
        }

        v81 = *(*(&v108 + 1) + 8 * j);
        if (objc_msgSend_tsp_isInDocument(v81, v73, v75, v76, v77, v78))
        {
          objc_msgSend_willBeRemovedFromDocumentRoot_(v81, v73, v75, v76, v77, v78, v14);
          objc_msgSend_wasRemovedFromDocumentRoot_(v81, v82, v83, v84, v85, v86, v14);
        }
      }

      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v73, v75, v76, v77, v78, &v108, v116, 16);
    }

    while (v74);
  }

  if (objc_msgSend_tsp_isInDocument(*(a1 + 32), v87, v88, v89, v90, v91))
  {
    v97 = objc_msgSend_unarchivingContext(MEMORY[0x277D805F0], v92, v93, v94, v95, v96);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(a1 + 40), v98, v99, v100, v101, v102, v14, v97);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(a1 + 40), v103, v104, v105, v106, v107, v14, v97);
  }
}

void sub_275FD4678(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_275FD478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TPTextFlowLayoutController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_275FD6008(uint64_t a1, void *a2)
{
  v65 = a2;
  v8 = objc_msgSend_range(*(a1 + 32), v3, v4, v5, v6, v7);
  v10 = v9;
  v15 = objc_msgSend_range(v65, v9, v11, v12, v13, v14);
  v21.location = v15;
  v21.length = v16;
  v22 = *(MEMORY[0x277D81490] + 8);
  if (v8 != *MEMORY[0x277D81490] || v10 != v22)
  {
    if (v15 != *MEMORY[0x277D81490] || v16 != v22)
    {
      v67.location = v8;
      v67.length = v10;
      v25 = NSUnionRange(v67, v21);
      objc_msgSend_setRange_(*(a1 + 32), v25.length, v26, v27, v28, v29, v25.location, v25.length);
      goto LABEL_12;
    }

    v21.location = v8;
    v21.length = v10;
  }

  objc_msgSend_setRange_(*(a1 + 32), v16, v17, v18, v19, v20, v21.location, v21.length);
LABEL_12:
  WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(*(a1 + 32), v30, v31, v32, v33, v34);
  v41 = objc_msgSend_nextWidowPullsDownFromCharIndex(v65, v36, v37, v38, v39, v40);
  if (WidowPullsDownFromCharIndex <= v41)
  {
    objc_msgSend_setNextWidowPullsDownFromCharIndex_(*(a1 + 32), v42, v43, v44, v45, v46, v41);
  }

  else
  {
    objc_msgSend_setNextWidowPullsDownFromCharIndex_(*(a1 + 32), v42, v43, v44, v45, v46, WidowPullsDownFromCharIndex);
  }

  v52 = *(a1 + 32);
  v53 = objc_msgSend_lineCount(v65, v47, v48, v49, v50, v51);
  v59 = objc_msgSend_lineFragmentCount(v52, v54, v55, v56, v57, v58);
  objc_msgSend_setLineFragmentCount_(v52, v60, v61, v62, v63, v64, v59 + v53);
}

uint64_t sub_275FD6BA0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v8[0] = MEMORY[0x277D85DD0];
  a3.n128_u64[0] = 3221225472;
  v8[1] = 3221225472;
  v8[2] = sub_275FD6C18;
  v8[3] = &unk_27A6A8558;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  return objc_msgSend_enumerateIndexesUsingBlock_(v6, a2, a3, a4, a5, a6, v8);
}

void sub_275FD6C18(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_msgSend_i_invalidatePageIndex_(WeakRetained, v3, v4, v5, v6, v7, a2);
}

void sub_275FD7404(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v45 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v3, v4, v5, v6, v7, *(a1 + 64));

  if (v45)
  {
    v13 = objc_msgSend_flowHints(v45, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v15, v16, v17, v18, *(a1 + 40));
    v25 = v19;
    if (v19)
    {
      v26 = objc_msgSend_range(v19, v20, v21, v22, v23, v24);
      v28 = v27;
      v33 = objc_msgSend_dirtyRangesIntersecting_(*(a1 + 48), v27, v29, v30, v31, v32, v26, v27);
      if (objc_msgSend_count(v33, v34, v35, v36, v37, v38) || (v44 = *(a1 + 72), v44 == v26) || v44 == &v28[v26])
      {
        objc_msgSend_addIndex_(*(a1 + 56), v39, v40, v41, v42, v43, *(a1 + 64));
      }
    }

    else
    {
      objc_msgSend_addIndex_(*(a1 + 56), v20, v21, v22, v23, v24, *(a1 + 64));
    }
  }

  else
  {
    objc_msgSend_addIndex_(*(a1 + 56), v8, v9, v10, v11, v12, *(a1 + 64));
  }
}

uint64_t sub_275FD7564(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v8[0] = MEMORY[0x277D85DD0];
  a3.n128_u64[0] = 3221225472;
  v8[1] = 3221225472;
  v8[2] = sub_275FD75DC;
  v8[3] = &unk_27A6A8558;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  return objc_msgSend_enumerateIndexesUsingBlock_(v6, a2, a3, a4, a5, a6, v8);
}

void sub_275FD75DC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_msgSend_i_invalidatePageIndex_(WeakRetained, v4, v5, v6, v7, v8, a2);

  v15 = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_msgSend_i_rebuildCachedLayoutChildrenFromStartPage_toEndPage_setNeedsLayout_(v15, v9, v10, v11, v12, v13, a2, a2, 1);
}

void sub_275FD7DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275FD7F10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FD7F28()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_275FD7F6C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_275FD7FB0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_275FD7FF4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_hintForFlow_pageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 40), *(a1 + 56));
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t sub_275FD8838(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = objc_msgSend_indexOfObject_(*(a1 + 32), v6, v7, v8, v9, v10, a2);
  v17 = objc_msgSend_indexOfObject_(*(a1 + 32), v12, v13, v14, v15, v16, v5);
  if (v11 < v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = v11 > v17;
  }

  return v18;
}

id sub_275FD89E8(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = objc_msgSend_context(a1, a2, a3, a4, a5, a6);
  v12 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10, v11);

  return v12;
}

void sub_275FD904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_275FD9064(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = TPThumbnailImager;
  result = objc_msgSendSuper2(&v3, sel_newImage);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_275FD9EEC(uint64_t a1, const char *a2, double a3, __n128 a4, __n128 a5, __n128 a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = objc_msgSend_documentRoot(*(a1 + 32), a2, 0, a4, a5, a6);
  v12 = objc_msgSend_storagesWithChanges(v6, v7, v8, v9, v10, v11);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v40, v44, 16);
  if (v18)
  {
    v24 = v18;
    v25 = *v41;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v12);
        }

        v27 = *(*(&v40 + 1) + 8 * i);
        objc_msgSend_settingsDidChangeRequiringLayoutAndRendering(v27, v19, v20, v21, v22, v23);
        v33 = objc_msgSend_range(v27, v28, v29, v30, v31, v32);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = sub_275FDA070;
        v39[3] = &unk_27A6A8620;
        v39[4] = v27;
        objc_msgSend_enumerateChangesInRange_usingBlock_(v27, v34, v35, v36, v37, v38, v33, v34, v39);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, v20, v21, v22, v23, &v40, v44, 16);
    }

    while (v24);
  }
}

uint64_t sub_275FDA070(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 32);
  objc_msgSend_range(v6, a2, a3, a4, a5, a6);

  return MEMORY[0x2821F9670](v6, sel_didChangeRange_delta_broadcastKind_attributeKindChanges_, v7, v8, v9, v10);
}

uint64_t sub_275FDA9C4(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = objc_msgSend_parent(a1, a2, a3, a4, a5, a6);
  if (objc_opt_respondsToSelector())
  {
    v12 = objc_msgSend_pageIndex(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  return v12;
}

id sub_275FDAA18(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      objc_opt_class();
      v3 = TSUDynamicCast();
      if (v3)
      {
        break;
      }

      v9 = objc_msgSend_parent(v2, v4, v5, v6, v7, v8);

      v2 = v9;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v9 = v3;
LABEL_8:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_275FDAAA8(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = objc_msgSend_pageLayout(a1, a2, a3, a4, a5, a6);
  objc_opt_class();
  v7 = TSUDynamicCast();
  v13 = objc_msgSend_info(v7, v8, v9, v10, v11, v12);

  objc_opt_class();
  v19 = objc_msgSend_documentRoot(v13, v14, v15, v16, v17, v18);
  v20 = TSUDynamicCast();

  v21 = [TPShapeTextWrapController alloc];
  v27 = objc_msgSend_initWithDocumentRoot_(v21, v22, v23, v24, v25, v26, v20);

  return v27;
}

id sub_275FDAB74(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [TPSection alloc];
  v10 = objc_msgSend_initWithContext_(v4, v5, v6, v7, v8, v9, v3);

  return v10;
}

id sub_275FDABCC(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = objc_msgSend_context(a1, a2, a3, a4, a5, a6);
  v12 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10, v11);

  return v12;
}

id sub_275FDAC18(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_context(a1, a2, a3, a4, a5, a6);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_bodyStorage(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_objectUUIDPath(v19, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_objectUUID(a1, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_UUIDPathByAppendingUUID_(v25, v32, v33, v34, v35, v36, v31);

  return v37;
}

id sub_275FDACC8(void *a1)
{
  v70 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v7 = objc_msgSend_pageLayout(a1, v2, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    v14 = objc_msgSend_layoutsCausingWrapOnTextLayoutTarget_ignoreIntersection_(v8, v9, v10, v11, v12, v13, a1, 1);
    if (objc_msgSend_count(v14, v15, v16, v17, v18, v19))
    {
      v64 = v8;
      v25 = objc_msgSend_mutableCopy(v14, v20, v21, v22, v23, v24);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v26 = v14;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, v28, v29, v30, v31, &v65, v69, 16);
      if (v32)
      {
        v38 = v32;
        v39 = *v66;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v66 != v39)
            {
              objc_enumerationMutation(v26);
            }

            v41 = objc_msgSend_parent(*(*(&v65 + 1) + 8 * i), v33, v34, v35, v36, v37, v63);
            objc_opt_class();
            v63 = &unk_288510D20;
            v42 = TSUClassAndProtocolCast();

            if (v42)
            {
              do
              {
                if (objc_msgSend_tsu_containsObjectIdenticalTo_(v25, v33, v34, v35, v36, v37, v42, &unk_288510D20))
                {
                  break;
                }

                objc_msgSend_addObject_(v25, v43, v44, v45, v46, v47, v42);
                v53 = objc_msgSend_parent(v42, v48, v49, v50, v51, v52);
                objc_opt_class();
                v63 = &unk_288510D20;
                v54 = TSUClassAndProtocolCast();

                v42 = v54;
              }

              while (v54);
            }
          }

          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v33, v34, v35, v36, v37, &v65, v69, 16);
        }

        while (v38);
      }

      v8 = v64;
    }

    else
    {
      v25 = 0;
    }

    v55 = objc_msgSend_copy(v25, v56, v57, v58, v59, v60, v63);
  }

  else
  {
    v25 = 0;
    v55 = objc_msgSend_copy(0, v9, v10, v11, v12, v13);
  }

  v61 = v55;

  return v61;
}

uint64_t sub_275FDCA74(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    return -1;
  }

  else
  {
    return a2 > a3;
  }
}

void sub_275FDCA84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16 = v3;
  v10 = objc_msgSend_hash(v3, v5, v6, v7, v8, v9);
  objc_msgSend_addUnsignedInteger_(v4, v11, v12, v13, v14, v15, v10);
}

uint64_t sub_275FDCC7C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  isLocked = objc_msgSend_isLocked(v3, v4, v5, v6, v7, v8);

  return isLocked ^ 1u;
}

void sub_275FDD1FC(uint64_t a1, id *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = *a2;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, v9, &v47, v51, 16);
  v46 = a2;
  v16 = 0;
  if (v11)
  {
    v17 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v4);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        if (objc_msgSend_isFloatingAboveText(v19, v10, v12, v13, v14, v15) & 1) != 0 || (objc_msgSend_isAttachedToBodyText(v19, v20, v21, v22, v23, v24))
        {
          v25 = 0;
          v26 = 1;
        }

        else
        {
          objc_opt_class();
          v32 = objc_msgSend_owningAttachmentNoRecurse(v19, v27, v28, v29, v30, v31);
          v33 = TSUDynamicCast();
          v25 = objc_msgSend_parentStorage(v33, v34, v35, v36, v37, v38);

          v26 = 0;
        }

        if (*(a1 + 40) == v26 && v25 == *(a1 + 32))
        {
          if (v16)
          {
            objc_msgSend_addObject_(v16, v20, v21, v22, v23, v24, v19);
          }

          else
          {
            v39 = objc_alloc(MEMORY[0x277CBEB58]);
            v16 = objc_msgSend_initWithObjects_(v39, v40, v41, v42, v43, v44, v19, 0);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, v12, v13, v14, v15, &v47, v51, 16);
    }

    while (v11);
  }

  v45 = *v46;
  *v46 = v16;
}

void sub_275FDDA14(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FDDAC0(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_msgSend_initWithArray_(v3, v4, v5, v6, v7, v8, v11);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  objc_storeStrong((*(a1 + 32) + 88), v9);
}

void sub_275FDDB6C(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_msgSend_initWithArray_(v3, v4, v5, v6, v7, v8, v11);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  objc_storeStrong((*(a1 + 32) + 96), v9);
}

void sub_275FDDC18(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_msgSend_initWithArray_(v3, v4, v5, v6, v7, v8, v11);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  objc_storeStrong((*(a1 + 32) + 104), v9);
}

uint64_t sub_275FDDED0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 104);
  v4 = *v2;
  if (v3 < *v2)
  {
    *(v1 + 104) = v3 + 1;
    goto LABEL_8;
  }

  if (v4 == *(v1 + 108))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 96));
    v2 = *(v1 + 112);
    v4 = *v2;
  }

  *v2 = v4 + 1;
  v5 = MEMORY[0x277C92D40](*(v1 + 96));
  v6 = *(v1 + 104);
  v7 = *(v1 + 112) + 8 * v6;
  *(v1 + 104) = v6 + 1;
  *(v7 + 8) = v5;
LABEL_8:

  return TSPNSRangeCopyToMessage();
}

void sub_275FDE2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_275FDE414(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogFinisher::operator=();
    google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogFinisher::operator=();
    google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_275FDE4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_275FDE79C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FDE848(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_initWithCapacity_(v4, v5, v6, v7, v8, v9, *(a1 + 40));
  v11 = *(a1 + 32);
  v12 = *(v11 + 64);
  *(v11 + 64) = v10;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = v3;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, v18, &v40, v44, 16);
  if (v19)
  {
    v20 = *v41;
    do
    {
      v21 = 0;
      do
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v40 + 1) + 8 * v21);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (v28 = objc_opt_class(), objc_msgSend_canPartitionInline(v28, v29, v30, v31, v32, v33, v40)) && (objc_msgSend_isFloatingAboveText(v22, v23, v24, v25, v26, v27) & 1) == 0)
        {
          objc_msgSend_willModifyForUpgrade(*(a1 + 32), v23, v24, v25, v26, v27);
        }

        else
        {
          objc_msgSend_addObject_(*(*(a1 + 32) + 64), v23, v24, v25, v26, v27, v22, v40);
        }

        ++v21;
      }

      while (v19 != v21);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v34, v35, v36, v37, v38, &v40, v44, 16);
      v19 = v39;
    }

    while (v39);
  }
}

void sub_275FDE9FC(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v59 = objc_msgSend_documentRoot(*(a1 + 32), a2, a3, a4, a5, a6);
  v12 = objc_msgSend_settings(v59, v7, v8, v9, v10, v11);
  hasBody = objc_msgSend_hasBody(v12, v13, v14, v15, v16, v17);

  if ((hasBody & 1) == 0)
  {
    v24 = objc_msgSend_bodyStorage(v59, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_indexOfObject_(*(*(a1 + 32) + 64), v25, v26, v27, v28, v29, v24);
    if (v30)
    {
      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = MEMORY[0x277D81150];
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, v35, "[TPDrawablesZOrder loadFromUnarchiver:]_block_invoke_2");
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDrawablesZOrder.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v44, v45, v46, v47, v48, v37, v43, 97, 0, "Failed to find body storage in Z-order");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52, v53);
      }

      else
      {
        objc_msgSend_willModifyForUpgrade(*(a1 + 32), v31, v32, v33, v34, v35);
        objc_msgSend_moveDrawable_toZOrder_(*(a1 + 32), v54, v55, v56, v57, v58, v24, 0);
      }
    }
  }
}

void sub_275FDF8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a13 = &a24;
  sub_275FDFB98(&a13);

  _Unwind_Resume(a1);
}

void *sub_275FDF91C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_275FDFC30(result, a2);
    }

    sub_275FDFC18();
  }

  return result;
}

void sub_275FDF9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FDFD1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275FDF9D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = ((v7 - *a1) >> 4) + 1;
    if (v9 >> 60)
    {
      sub_275FDFC18();
    }

    v10 = a2 - v8;
    v11 = v6 - v8;
    v12 = v11 >> 3;
    if (v11 >> 3 <= v9)
    {
      v12 = ((v7 - *a1) >> 4) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 4;
    v18[4] = a1;
    if (v13)
    {
      sub_275FDFC30(a1, v13);
    }

    v18[0] = 0;
    v18[1] = 16 * v14;
    v18[2] = 16 * v14;
    v18[3] = 0;
    sub_275FDFE0C(v18, a3);
    v4 = sub_275FDFF58(a1, v18, v4);
    sub_275FDFD1C(v18);
  }

  else if (a2 == v7)
  {
    v15 = *a3;
    v16 = *(a3 + 8);
    *v7 = v15;
    v7[1] = v16;
    a1[1] = (v7 + 2);
  }

  else
  {
    sub_275FDFD70(a1, a2, a1[1], a2 + 16);
    objc_storeStrong(v4, *a3);
    *(v4 + 8) = *(a3 + 8);
  }

  return v4;
}

void sub_275FDFB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FDFD1C(va);
  _Unwind_Resume(a1);
}

void sub_275FDFB98(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_275FDFC30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275FDFC78();
}

void sub_275FDFC78()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_275FDFCAC(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      *a4 = v8;
      a4[1] = v9;
      a4 += 2;
      v7 += 2;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v10 = *v6;
      v6 += 2;
    }
  }
}

uint64_t sub_275FDFD1C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275FDFD70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      v11 = *v10;
      v12 = *(v10 + 8);
      *v8 = v11;
      v8[1] = v12;
      v8 += 2;
      v10 += 16;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_275FE0014(&v14, a2, v7, v6);
}

id sub_275FDFE0C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      sub_275FDFC30(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_275FE008C(v11, v5, v4, (v5 - 16 * v6));
    v4 = v7;
    a1[1] -= 16 * v6;
    a1[2] = v7;
  }

  result = *a2;
  *v4 = result;
  v4[1] = *(a2 + 8);
  a1[2] += 16;
  return result;
}

uint64_t sub_275FDFF58(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  sub_275FDFCAC(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_275FDFCAC(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_275FE0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 16);
      v7 -= 16;
      objc_storeStrong((a4 - 16), v8);
      *(a4 - 8) = *(v7 + 8);
      a4 -= 16;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_275FE008C(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      location[1] = *(v5 + 8);
      v5 += 16;
      location += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_275FE08F0(uint64_t a1, void *a2)
{
  v21 = a2;
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4, v5, v6, v7);
  if (v9 == v21)
  {
    v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v10, v11, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_copyForArchiving(v21, v8, v10, v11, v12, v13);
  }

  v15 = v14;

  objc_msgSend_addObject_(*(a1 + 32), v16, v17, v18, v19, v20, v15);
}

void sub_275FE39FC(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_isPartitioned(v26, v3, v4, v5, v6, v7))
  {
    v13 = *(a1 + 32);
    v14 = objc_msgSend_drawable(v26, v8, v9, v10, v11, v12);
    v20 = objc_msgSend_objectUUID(v14, v15, v16, v17, v18, v19);
    objc_msgSend_addObject_(v13, v21, v22, v23, v24, v25, v20);
  }
}

void sub_275FE451C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FE45C8(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v10 = objc_msgSend_count(v3, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_arrayWithCapacity_(v4, v11, v12, v13, v14, v15, v10);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = v3;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, v19, v20, v21, v22, &v42, v46, 16);
  if (v24)
  {
    v29 = *v43;
    do
    {
      v30 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v17);
        }

        v32 = objc_msgSend_hint(*(*(&v42 + 1) + 8 * v30), v23, v25, v26, v27, v28, v42);
        if (!v32)
        {
          v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v31, v33, v34, v35, v36);
        }

        objc_msgSend_addObject_(v16, v31, v33, v34, v35, v36, v32);

        ++v30;
      }

      while (v24 != v30);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v23, v25, v26, v27, v28, &v42, v46, 16);
    }

    while (v24);
  }

  objc_msgSend_setChildHints_(*(a1 + 32), v37, v38, v39, v40, v41, v16);
}

void sub_275FE4778(void *a1, uint64_t a2, void *a3)
{
  v12 = a1;
  v5 = a3;
  v6 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v12, v7, v8, v9, v10, v11, a2, v6, 0, v5);
}

void sub_275FE4808(uint64_t a1, void *a2)
{
  v64 = a2;
  v3 = objc_alloc(MEMORY[0x277D81278]);
  v9 = objc_msgSend_count(v64, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_initWithCapacity_(v3, v10, v11, v12, v13, v14, v9);
  v16 = objc_alloc(MEMORY[0x277D81278]);
  v22 = objc_msgSend_count(v64, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_initWithCapacity_(v16, v23, v24, v25, v26, v27, v22);
  v34 = objc_msgSend_count(v64, v29, v30, v31, v32, v33);
  if (*(a1 + 56) == v34)
  {
    if (v34 >= 1)
    {
      v40 = 0;
      do
      {
        v41 = objc_msgSend_objectAtIndexedSubscript_(v64, v35, v36, v37, v38, v39, v40);
        v47 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v42, v43, v44, v45, v46, v40);
        objc_msgSend_setObject_forUncopiedKey_(v15, v48, v49, v50, v51, v52, v47, v41);

        v58 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v53, v54, v55, v56, v57, v40);
        objc_msgSend_setObject_forUncopiedKey_(v28, v59, v60, v61, v62, v63, v58, v41);

        ++v40;
      }

      while (v40 < *(a1 + 56));
    }

    objc_storeStrong((*(a1 + 48) + 40), v15);
    objc_storeStrong((*(a1 + 48) + 112), v28);
  }

  else
  {
    *(*(a1 + 48) + 8) = 5;
  }
}

void sub_275FE57BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v31 = v5;
  objc_msgSend_CGPointValue(v6, v7, v8, v9, v10, v11);
  v17 = v13.n128_u64[0];
  v18 = v14.n128_u64[0];
  v19 = *(a1 + 40);
  v20 = *(v19 + 64);
  if (!v20)
  {
    goto LABEL_6;
  }

  v21 = *(v19 + 56);
  v22 = *v20;
  if (v21 < *v20)
  {
    *(v19 + 56) = v21 + 1;
    v23 = *&v20[2 * v21 + 2];
    goto LABEL_8;
  }

  if (v22 == *(v19 + 60))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v19 + 48));
    v20 = *(v19 + 64);
    v22 = *v20;
  }

  *v20 = v22 + 1;
  v23 = sub_275FAF648(*(v19 + 48));
  v24 = *(v19 + 56);
  v25 = *(v19 + 64) + 8 * v24;
  *(v19 + 56) = v24 + 1;
  *(v25 + 8) = v23;
LABEL_8:
  *(v23 + 16) |= 8u;
  v26 = *(v23 + 48);
  if (!v26)
  {
    v27 = *(v23 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = sub_275FAF560(v27);
    *(v23 + 48) = v26;
  }

  *(v26 + 16) |= 1u;
  *(v23 + 16) |= 8u;
  *(v26 + 16) |= 2u;
  *(v26 + 24) = v17;
  *(v26 + 32) = v18;
  v28 = *(a1 + 32);
  *(v23 + 16) |= 4u;
  v29 = *(v23 + 40);
  if (!v29)
  {
    v30 = *(v23 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = MEMORY[0x277C92D50](v30);
    *(v23 + 40) = v29;
  }

  objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(v28, v12, v13, v14, v15, v16, v31, v29);
}

void sub_275FE6AFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v15 = v3;
    v9 = objc_msgSend_entryForListStyle(*(a1 + 32), v4, v5, v6, v7, v8);
    objc_msgSend_setObject_forKey_(v9, v10, v11, v12, v13, v14, *(a1 + 40), v15);

    v3 = v15;
  }
}

void sub_275FE77B4()
{
  v0 = objc_alloc(MEMORY[0x277D80AB8]);
  v13 = objc_msgSend_numberFormatWithFormatType_decimalPlaces_showThousandsSeparator_(MEMORY[0x277D80048], v1, v2, v3, v4, v5, 258, 0, 1);
  v11 = objc_msgSend_initWithPropertiesAndValues_(v0, v6, v7, v8, v9, v10, 1350, 0, 1349, 1, 1287, 0, 1272, 1, 1264, 1, 1286, 0, 1284, 0, 1270, 1, 1481, 0, 1466, 0, 1431, 0, 1469, 0, 1484, 1, 1433, v13, 1435, 4, 1472, 0, 1474, 0, 0);
  v12 = qword_280A404C0;
  qword_280A404C0 = v11;
}

uint64_t sub_275FE7EB0(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v6, v7, v8, v9, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

uint64_t sub_275FE7F28(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = v4;
  if (v3 == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = 0;
    if (v3 && v4)
    {
      isEqualToString = objc_msgSend_isEqualToString_(v3, v5, v6, v7, v8, v9, v4);
    }
  }

  return isEqualToString;
}

uint64_t sub_275FE8D64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FE8D7C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FE8E38(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FE8EF4(uint64_t a1)
{
  v44[2] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = TSUDynamicCast();
  objc_opt_class();
  v8 = objc_msgSend_selection(*(*(*(a1 + 56) + 8) + 40), v3, v4, v5, v6, v7);
  v9 = TSUDynamicCast();

  if (v2)
  {
    if (objc_msgSend_wpKind(v2, v10, v11, v12, v13, v14))
    {
      v15 = 1;
    }

    else
    {
      v15 = v9 == 0;
    }

    if (!v15)
    {
      v16 = objc_alloc(MEMORY[0x277D80670]);
      v22 = objc_msgSend_tsck_documentRoot(*(a1 + 32), v17, v18, v19, v20, v21);
      v28 = objc_msgSend_initWithDocumentRoot_(v16, v23, v24, v25, v26, v27, v22);

      v29 = MEMORY[0x277D806C8];
      v44[0] = v28;
      v44[1] = v9;
      v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v31, v32, v33, v34, v44, 2);
      v41 = objc_msgSend_selectionPathWithSelectionArray_(v29, v36, v37, v38, v39, v40, v35);
      v42 = *(a1 + 40);
      v43 = *(v42 + 120);
      *(v42 + 120) = v41;
    }
  }
}

void sub_275FE90B8(uint64_t a1, void *a2)
{
  v30 = a2;
  v8 = *(*(a1 + 32) + 128);
  if (v8)
  {
    v9 = objc_msgSend_mutableCopy(v8, v3, v4, v5, v6, v7);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v10, v11, v12, v13, v14, *(a1 + 40), v30);
    v20 = objc_msgSend_copy(v9, v15, v16, v17, v18, v19);
    v21 = *(a1 + 32);
    v22 = *(v21 + 128);
    *(v21 + 128) = v20;
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x277CBEAC0]);
    v28 = objc_msgSend_initWithObjectsAndKeys_(v23, v30, v24, v25, v26, v27, *(a1 + 40), v30, 0);
    v29 = *(a1 + 32);
    v9 = *(v29 + 128);
    *(v29 + 128) = v28;
  }
}

void sub_275FE9194(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = v3;
}

void sub_275FE9214(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D80270]);
  v8 = objc_msgSend_initWithContext_(v2, v3, v4, v5, v6, v7, *(a1 + 40));
  v9 = *(a1 + 32);
  v10 = *(v9 + 176);
  *(v9 + 176) = v8;
}

void sub_275FE9270(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D806B8]);
  v3 = *(a1 + 40);
  v17 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v4, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithContext_userDefaults_(v2, v9, v10, v11, v12, v13, v3);
  v15 = *(a1 + 32);
  v16 = *(v15 + 184);
  *(v15 + 184) = v14;
}

void sub_275FE9AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275FEACAC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_275FEB034(_Unwind_Exception *a1)
{
  sub_275FB56E8((v2 - 88));

  _Unwind_Resume(a1);
}

void sub_275FEB084(uint64_t a1, void *a2)
{
  v45 = a2;
  v9 = objc_msgSend_count(v45, v3, v4, v5, v6, v7);
  v14 = *(a1 + 40);
  if (*(a1 + 44) + v14 != v9)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, v13, "[TPSectionTemplatePage loadFromUnarchiver:]_block_invoke");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 208, 0, "Header/footer object count (%d) differes from header count (%d) + footer count (%d)", v9, *(a1 + 40), *(a1 + 44));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
    v14 = *(a1 + 40);
  }

  if (v14 < 1 || v9 < 1)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = 0;
    do
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v45, v8, v10, v11, v12, v13, v34);
      v36 = *(a1 + 32) + 80;
      v37 = *(v36 + 8 * v34);
      *(v36 + 8 * v34) = v35;
    }

    while (++v34 < *(a1 + 40) && v34 < (v9 & 0x7FFFFFFF));
  }

  if (*(a1 + 44) >= 1 && v34 < v9)
  {
    v34 = v34;
    v39 = 3;
    do
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(v45, v8, v10, v11, v12, v13, v34);
      v41 = *(a1 + 32) + 80;
      v42 = *(v41 + 8 * v39);
      *(v41 + 8 * v39) = v40;

      ++v34;
      v43 = v39 - 2;
      ++v39;
    }

    while (v43 < *(a1 + 44) && v34 < v9);
  }
}

void sub_275FEB278(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v92 = objc_msgSend_context(*(a1 + 32), v3, v4, v5, v6, v7);
  v13 = objc_msgSend_documentObject(v92, v8, v9, v10, v11, v12);
  v14 = TSUDynamicCast();
  objc_msgSend_i_setDocumentRoot_(v2, v15, v16, v17, v18, v19, v14);

  v93 = objc_alloc_init(MEMORY[0x277D81258]);
  v25 = objc_msgSend_p_isInDocument(*(a1 + 32), v20, v21, v22, v23, v24);
  v26 = 0;
  v27 = 1;
  v28 = MEMORY[0x277D81500];
  do
  {
    v91 = v27;
    v29 = 24 * v26 + 80;
    v30 = 3;
    do
    {
      v31 = *(*(a1 + 32) + v29);
      v37 = objc_msgSend_member_(v93, v32, v33, v34, v35, v36, v31);

      if (v37)
      {
        if (*v28 != -1)
        {
          sub_276038250();
        }

        v43 = objc_msgSend_length(v31, v38, v39, v40, v41, v42);
        v49 = objc_msgSend_context(v31, v44, v45, v46, v47, v48);
        v55 = objc_msgSend_newSubstorageWithRange_context_flags_(v31, v50, v51, v52, v53, v54, 0, v43, v49, 39);

        objc_msgSend_willModifyForUpgrade(*(a1 + 32), v56, v57, v58, v59, v60);
        objc_storeStrong((*(a1 + 32) + v29), v55);
        v31 = v55;
      }

      objc_msgSend_addObject_(v93, v38, v39, v40, v41, v42, v31);
      if (v25)
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
        v67 = objc_msgSend_parentStorage(WeakRetained, v62, v63, v64, v65, v66);
        objc_msgSend_setParentInfo_(v31, v68, v69, v70, v71, v72, v67);

        v78 = objc_msgSend_documentRoot(v31, v73, v74, v75, v76, v77);

        if (!v78)
        {
          v79 = objc_loadWeakRetained((*(a1 + 32) + 64));
          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v31, v80, v81, v82, v83, v84, v79, 0);

          v85 = objc_loadWeakRetained((*(a1 + 32) + 64));
          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v31, v86, v87, v88, v89, v90, v85, 0);
        }
      }

      v29 += 8;
      --v30;
    }

    while (v30);
    v27 = 0;
    v26 = 1;
  }

  while ((v91 & 1) != 0);
}

void sub_275FEB554()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_275FEB64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TPSectionTemplatePage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_275FEC214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a11 = &a22;
  sub_275FEFFF0(&a11);

  _Unwind_Resume(a1);
}

void *sub_275FEC284(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_275FF0078(result, a2);
    }

    sub_275FDFC18();
  }

  return result;
}

void sub_275FEC32C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FF0124(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_275FEC340(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_275FDFC18();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v20[4] = a1;
    if (v15)
    {
      sub_275FF0078(a1, v15);
    }

    v20[0] = 0;
    v20[1] = 16 * v16;
    v20[2] = 16 * v16;
    v20[3] = 0;
    sub_275FF01C4(v20, a3);
    v4 = sub_275FF02CC(a1, v20, v4);
    sub_275FF0124(v20);
  }

  else if (a2 == v6)
  {
    v17 = *a3;
    v18 = a3[1];
    a3[1] = 0;
    *v6 = v17;
    v6[1] = v18;
    a1[1] = (v6 + 2);
  }

  else
  {
    sub_275FF0178(a1, a2, v6, a2 + 16);
    *v4 = *a3;
    v8 = a3[1];
    a3[1] = 0;
    v9 = v4[1];
    v4[1] = v8;
  }

  return v4;
}

void sub_275FEC46C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FF0124(va);
  _Unwind_Resume(a1);
}

void sub_275FEC9B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275FED5C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FEDC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_275FEE150(_Unwind_Exception *a1)
{
  for (i = 40; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_275FEE808(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FEFFF0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_275FF0078(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275FDFC78();
}

void sub_275FF00C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6[1] = 0;
      *a4 = v7;
      a4[1] = v8;
      a4 += 2;
      v6 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 2;
    }
  }
}

uint64_t sub_275FF0124(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275FF0178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_275FF0388(a2, v7, v6);
}

void *sub_275FF01C4(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 3;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      sub_275FF0078(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 4) + 1 + ((((v5 - *v3) >> 4) + 1) >> 63)) >> 1;
    result = sub_275FF03F0(v5, v4, &v5[-2 * v7]);
    v3[1] -= 16 * v7;
  }

  v12 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  *v4 = v12;
  v4[1] = v13;
  v3[2] = v4 + 2;
  return result;
}

uint64_t sub_275FF02CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_275FF00C0(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_275FF00C0(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_275FF0388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 - 16);
      v6 -= 16;
      *(a3 - 16) = v7;
      a3 -= 16;
      v8 = *(v6 + 8);
      *(v6 + 8) = 0;
      v9 = *(a3 + 8);
      *(a3 + 8) = v8;
    }

    while (v6 != a1);
  }

  return a2;
}

void *sub_275FF03F0(void *a1, void *a2, void *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      *a3 = *v4;
      v6 = v4[1];
      v4[1] = 0;
      v7 = a3[1];
      a3[1] = v6;

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void sub_275FF1A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275FF1A38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FF1A50(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void sub_275FF1B88(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_msgSend_zOrderOfDrawable_(*(*(a1 + 32) + 88), v6, v7, v8, v9, v10, v5);
  (*(*(a1 + 40) + 16))();
}

void sub_275FF3660(void *a1, void *a2)
{
  v51 = a2;
  objc_msgSend_setObject_forKey_(*(a1[4] + 80), v3, v4, v5, v6, v7);
  v8 = a1[8];
  v14 = objc_msgSend_count(*(*(a1[6] + 8) + 40), v9, v10, v11, v12, v13);
  if (v8 >= v14)
  {
    objc_msgSend_setObject_atIndexedSubscript_(*(*(a1[6] + 8) + 40), v15, v16, v17, v18, v19, v51, v14);
  }

  else
  {
    objc_msgSend_setObject_atIndexedSubscript_(*(*(a1[6] + 8) + 40), v15, v16, v17, v18, v19, v51, v8);
  }

  if (++*(*(a1[7] + 8) + 24) == a1[9])
  {
    v25 = 0;
    for (i = 0; i < objc_msgSend_count(*(*(a1[6] + 8) + 40), v20, v21, v22, v23, v24); ++i)
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1[6] + 8) + 40), v27, v28, v29, v30, v31, i);
      v38 = objc_msgSend_null(MEMORY[0x277CBEB68], v33, v34, v35, v36, v37);
      isEqual = objc_msgSend_isEqual_(v32, v39, v40, v41, v42, v43, v38);

      if ((isEqual & 1) == 0)
      {
        objc_opt_class();
        v45 = TSUDynamicCast();
        objc_msgSend_insertDrawable_atZOrder_(*(a1[4] + 88), v46, v47, v48, v49, v50, v45, v25++);
      }
    }
  }
}

uint64_t sub_275FF3830(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_count(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6);
  result = objc_msgSend_drawableCount(*(*(a1 + 32) + 88), v8, v9, v10, v11, v12);
  if (v7 != result)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPPageTemplate loadFromUnarchiver:]_block_invoke_3");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm");
    v27 = *(a1 + 32);
    v28 = *(v27 + 96);
    v34 = objc_msgSend_count(*(v27 + 80), v29, v30, v31, v32, v33);
    v40 = objc_msgSend_drawableCount(*(*(a1 + 32) + 88), v35, v36, v37, v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v41, v42, v43, v44, v45, v20, v26, 431, 0, "In template %@ _placeholderDrawables has %lu entries but _drawablesZOrder has %lu.", v28, v34, v40);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49, v50);
    v51 = *(a1 + 32);
    v52 = *(v51 + 80);
    v58[0] = MEMORY[0x277D85DD0];
    v53.n128_u64[0] = 3221225472;
    v58[1] = 3221225472;
    v58[2] = sub_275FF39C4;
    v58[3] = &unk_27A6A8A60;
    v58[4] = v51;
    return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v52, v54, v53, v55, v56, v57, v58);
  }

  return result;
}

void sub_275FF39C4(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  if (objc_msgSend_zOrderOfDrawable_(*(*(a1 + 32) + 88), v4, v5, v6, v7, v8) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_addDrawable_(*(*(a1 + 32) + 88), v9, v10, v11, v12, v13, v14);
  }
}

void sub_275FF3CCC(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v12 = objc_msgSend_zOrderOfDrawable_(*(*(a1 + 40) + 88), v7, v8, v9, v10, v11, v5);
  objc_msgSend_appendFormat_(v6, v13, v14, v15, v16, v17, @" {%@ : %@ (z-index:%lu)}", v18, v5, v12);
}

void sub_275FF4D3C(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v19 = objc_msgSend_canvas(a2, a2, a3, a4, a5, a6);
  v13 = objc_msgSend_layoutController(v19, v8, v9, v10, v11, v12);
  objc_msgSend_paginateThroughPageIndex_forLayoutController_(v6, v14, v15, v16, v17, v18, v7, v13);
}

void sub_275FF4FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275FF5080;
  v9[3] = &unk_27A6A8AD8;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setPostRenderAction_(v3, v4, v5, v6, v7, v8, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_275FF5064(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_275FF5080(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_p_addHyperLinksInContext_forCanvas_(WeakRetained, v6, v7, v8, v9, v10, a2, v5);
}

void sub_275FF5320(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v24 = a2;
  v8 = objc_msgSend_includeComments(v2, v3, v4, v5, v6, v7);
  objc_msgSend_setShouldShowComments_(v24, v9, v10, v11, v12, v13, v8);
  objc_msgSend_setShouldShowTextCommentHighlights_(v24, v14, v15, v16, v17, v18, 0);
  objc_msgSend_setShouldShowInstructionalText_(v24, v19, v20, v21, v22, v23, 1);
}

void sub_275FF84CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_275FFD2D0(va);
  _Unwind_Resume(a1);
}

NSUInteger sub_275FF8CB8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_wpKind(v3, v5, v6, v7, v8, v9))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "NSRange TPSectionCharRange(TSWPStorage * _Nonnull __strong, TPPageIndexPath * _Nonnull __strong)");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 26, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
  }

  v33 = *MEMORY[0x277D81490];
  v34 = objc_msgSend_sectionIndex(v4, v10, v11, v12, v13, v14);
  if (v34 < objc_msgSend_sectionCount(v3, v35, v36, v37, v38, v39))
  {
    if (v3)
    {
      objc_msgSend_sectionEnumeratorAtSectionIndex_(v3, v40, v41, v42, v43, v44, v34);
    }

    else
    {
      memset(v46, 0, sizeof(v46));
    }

    v33 = sub_2760007C4(v46);
    sub_2760005A4(v46);
  }

  return v33;
}

BOOL sub_275FF8E30(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_wpKind(v3, v5, v6, v7, v8, v9))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "BOOL TPIsLastSection(TSWPStorage * _Nonnull __strong, TPPageIndexPath * _Nonnull __strong)");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 39, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
  }

  v33 = objc_msgSend_sectionIndex(v4, v10, v11, v12, v13, v14);
  if (v3)
  {
    objc_msgSend_sectionEnumeratorAtSectionIndex_(v3, v34, v35, v36, v37, v38, v33);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  v39 = sub_2760009C4(v41);
  sub_2760005A4(v41);

  return v39;
}

uint64_t sub_275FF8F7C(void *a1)
{
  v1 = a1;
  if (objc_msgSend_wpKind(v1, v2, v3, v4, v5, v6))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "NSUInteger TPIndexOfLastSection(TSWPStorage * _Nonnull __strong)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 44, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  v30 = objc_msgSend_length(v1, v7, v8, v9, v10, v11);
  if (v1)
  {
    objc_msgSend_sectionEnumeratorAtCharIndex_(v1, v31, v32, v33, v34, v35, v30);
    v36 = *(&v38[0] + 1);
  }

  else
  {
    v36 = 0;
    memset(v38, 0, sizeof(v38));
  }

  sub_2760005A4(v38);

  return v36;
}

uint64_t sub_275FF909C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (objc_msgSend_wpKind(v5, v7, v8, v9, v10, v11))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "NSUInteger TPNextSectionIndex(TSWPStorage * _Nonnull __strong, TPPageIndexPath * _Nonnull __strong, NSUInteger * _Nonnull)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v26, v27, v28, v29, v18, v24, 49, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33, v34);
  }

  v36 = objc_msgSend_sectionIndex(v6, v12, v13, v14, v15, v16);
  if (v5)
  {
    objc_msgSend_sectionEnumeratorAtSectionIndex_(v5, v35, v37, v38, v39, v40, v36);
  }

  else
  {
    memset(v49, 0, sizeof(v49));
  }

  if (sub_2760009C4(v49))
  {
    v45 = v36 + 1;
  }

  else
  {
    sub_2760005CC(v49);
    v45 = *(&v49[0] + 1);
  }

  v46 = sub_276000688(v49, &v48, v41, v42, v43, v44);
  if (a3)
  {
    *a3 = v48;
  }

  sub_2760005A4(v49);

  return v45;
}

id sub_275FF976C(void *a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v10 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v6, v7, v8, v9);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v15 = objc_msgSend_children(v3, v11, 0, v12, v13, v14);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v17, v18, v19, v20, &v67, v72, 16);
  if (v21)
  {
    v27 = v21;
    v28 = *v68;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v68 != v28)
        {
          objc_enumerationMutation(v15);
        }

        v30 = *(*(&v67 + 1) + 8 * i);
        v31 = objc_msgSend_info(v30, v22, v23, v24, v25, v26);

        if (v31 == v4)
        {
          objc_msgSend_addObject_(v10, v22, v23, v24, v25, v26, v30);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, v23, v24, v25, v26, &v67, v72, 16);
    }

    while (v27);
  }

  if (!objc_msgSend_count(v10, v32, v33, v34, v35, v36))
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v41 = objc_msgSend_children(v3, v37, 0, v38, v39, v40, 0);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, v43, v44, v45, v46, &v63, v71, 16);
    if (v47)
    {
      v48 = v47;
      v49 = *v64;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v64 != v49)
          {
            objc_enumerationMutation(v41);
          }

          v51 = sub_275FF976C(*(*(&v63 + 1) + 8 * j), v4);
          objc_msgSend_unionSet_(v10, v52, v53, v54, v55, v56, v51);
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v57, v58, v59, v60, v61, &v63, v71, 16);
      }

      while (v48);
    }
  }

  return v10;
}

void sub_275FFA850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFA868(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v23 = objc_msgSend_p_paginationState(*(a1 + 32), a2, a3, a4, a5, a6);
  if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(v23, v7, v8, v9, v10, v11, *(a1 + 48)))
  {
    LOBYTE(isPaginating) = 1;
  }

  else
  {
    isPaginating = objc_msgSend_isPaginating(*(a1 + 32), v12, v13, v14, v15, v16);
    if (isPaginating)
    {
      LOBYTE(isPaginating) = objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(v23, v18, v19, v20, v21, v22, *(a1 + 48));
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = isPaginating;
}

void sub_275FFA9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFAA04(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = objc_msgSend_p_paginationState(*(a1 + 32), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(v12, v7, v8, v9, v10, v11, *(a1 + 48));
}

void sub_275FFAD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275FFADAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FFADC4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 1);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_275FFB028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB044(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 1);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_275FFB1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB1E8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48)))
  {
    v12 = objc_msgSend_p_paginationState(*(a1 + 32), v7, v8, v9, v10, v11);
    v49 = objc_msgSend_sectionHints(v12, v13, v14, v15, v16, v17);

    v23 = objc_msgSend_count(v49, v18, v19, v20, v21, v22);
    if (v23)
    {
      v29 = 0;
      v30 = v23 - 1;
      while (1)
      {
        v31 = objc_msgSend_objectAtIndexedSubscript_(v49, v24, v25, v26, v27, v28, v29);
        v37 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v32, v33, v34, v35, v36, v29);
        if (!v37)
        {
          break;
        }

        v43 = v37;
        if (!*(*(*(a1 + 40) + 8) + 40) || (objc_msgSend_inheritPreviousHeaderFooter(v37, v38, v39, v40, v41, v42) & 1) == 0)
        {
          v44 = objc_msgSend_p_pageMasterForPageIndex_inSection_sectionHint_(*(a1 + 32), v38, v39, v40, v41, v42, *(a1 + 48), v43, v31);
          v45 = *(*(a1 + 40) + 8);
          v46 = *(v45 + 40);
          *(v45 + 40) = v44;
        }

        v47 = objc_msgSend_containsDocumentPageIndex_(v31, v38, v39, v40, v41, v42, *(a1 + 48));

        if ((v47 & 1) == 0 && v30 != v29++)
        {
          continue;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
  }
}

void sub_275FFB434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB44C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48)))
  {
    v12 = objc_msgSend_p_paginationState(*(a1 + 32), v7, v8, v9, v10, v11);
    v61 = objc_msgSend_sectionHints(v12, v13, v14, v15, v16, v17);

    v23 = objc_msgSend_count(v61, v18, v19, v20, v21, v22);
    if (v23)
    {
      v29 = v23;
      v30 = 0;
      while (1)
      {
        v31 = objc_msgSend_objectAtIndexedSubscript_(v61, v24, v25, v26, v27, v28, v30);
        v37 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v32, v33, v34, v35, v36, v30);
        if (!v37)
        {
          break;
        }

        v43 = v37;
        hasPageHintOfKind_atPageIndex = objc_msgSend_hasPageHintOfKind_atPageIndex_(v31, v38, v39, v40, v41, v42, 2, 0);
        if (hasPageHintOfKind_atPageIndex)
        {
          v50 = *(a1 + 48);
          if (v50 == objc_msgSend_documentStartPageIndex(v31, v44, v46, v47, v48, v49))
          {
            goto LABEL_17;
          }
        }

        if (objc_msgSend_sectionTemplateFirstPageHidesHeaderFooter(v43, v44, v46, v47, v48, v49))
        {
          v56 = *(a1 + 48);
          started = objc_msgSend_documentStartPageIndex(v31, v51, v52, v53, v54, v55);
          v58 = v56 == started;
          v59 = hasPageHintOfKind_atPageIndex ^ 1;
          if (v56 == started)
          {
            v59 = 1;
          }

          if ((v59 & 1) == 0)
          {
            v60 = *(a1 + 48);
            v58 = v60 == objc_msgSend_documentStartPageIndex(v31, v51, v52, v53, v54, v55) + 1;
          }

          if (v58)
          {
LABEL_17:
            *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_18:

            break;
          }
        }

        if (objc_msgSend_containsDocumentPageIndex_(v31, v51, v52, v53, v54, v55, *(a1 + 48)))
        {
          goto LABEL_18;
        }

        if (v29 == ++v30)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_20:
  }
}

void sub_275FFB874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB890(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48)))
  {
    v12 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v7, v8, v9, v10, v11, *(a1 + 48), 0, 1);
    if (v12)
    {
      v45 = v12;
      v18 = objc_msgSend_p_paginationState(*(a1 + 32), v13, v14, v15, v16, v17);
      v24 = objc_msgSend_sectionHints(v18, v19, v20, v21, v22, v23);
      v30 = objc_msgSend_indexOfObjectIdenticalTo_(v24, v25, v26, v27, v28, v29, v45);

      v36 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v31, v32, v33, v34, v35, v30);
      v42 = objc_msgSend_p_pageMasterForPageIndex_inSection_sectionHint_(*(a1 + 32), v37, v38, v39, v40, v41, *(a1 + 48), v36, v45);
      v43 = *(*(a1 + 40) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v12 = v45;
    }
  }
}

void sub_275FFBFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFBFC0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (!objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48)))
  {
    return;
  }

  v12 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v7, v8, v9, v10, v11, *(a1 + 48), 0, 1);
  v17 = v12;
  if (v12)
  {
    v49 = v12;
    v18 = objc_msgSend_pageKind(v12, v12, v13, v14, v15, v16);
    if (v18 > 2)
    {
      v17 = v49;
      if (v18 == 3 || v18 == 4 || v18 == 6)
      {
        v23 = *(*(a1 + 40) + 8);
        v24 = *(v23 + 24) & 0xFFFFFFFFFFFFFFFELL;
LABEL_12:
        *(v23 + 24) = v24;
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v17 = v49;
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v23 = *(*(a1 + 40) + 8);
        v24 = 2;
        goto LABEL_12;
      }

LABEL_16:
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v19, v20, v21, v22, "[TPPaginatedPageController(LayoutInfoProvider) contentFlagsForPageIndex:]_block_invoke");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m");
      v38 = objc_msgSend_pageKind(v49, v33, v34, v35, v36, v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v39, v40, v41, v42, v43, v26, v32, 345, 0, "Can't produce content flags for this page kind: %ld", v38);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
      v17 = v49;
    }
  }

LABEL_13:
}

void sub_275FFC250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFC268(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v8 = objc_msgSend_wpKind(v2, v3, v4, v5, v6, v7);

  if (v8 == 1)
  {
    if (!objc_msgSend_shouldHeaderFooterBeVisibleForPageIndex_(*(a1 + 40), v9, v10, v11, v12, v13, *(a1 + 56)))
    {
      return;
    }

    v19 = objc_msgSend_headerFooterProviderForPageIndex_(*(a1 + 40), v14, v15, v16, v17, v18, *(a1 + 56));
    if (v19)
    {
      v37 = v19;
      v25 = objc_msgSend_headerFooterTypeForStorage_(v19, v20, v21, v22, v23, v24, *(a1 + 32)) == -1;
      goto LABEL_8;
    }

LABEL_12:
    v36 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v19 = objc_msgSend_sectionTemplateDrawableProviderForPageIndex_(*(a1 + 40), v26, v27, v28, v29, v30, *(a1 + 56));
  if (!v19)
  {
    goto LABEL_12;
  }

  v37 = v19;
  v25 = objc_msgSend_indexOfSectionTemplateDrawable_(v19, v31, v32, v33, v34, v35, *(a1 + 32)) == 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
  v19 = v37;
  v36 = !v25;
LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = v36;
}

void sub_275FFC6D4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (!objc_msgSend_canProvideNumberingInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48)))
  {
    return;
  }

  v12 = objc_msgSend_p_paginationState(*(a1 + 32), v7, v8, v9, v10, v11);
  v55 = objc_msgSend_sectionHints(v12, v13, v14, v15, v16, v17);

  v23 = objc_msgSend_count(v55, v18, v19, v20, v21, v22);
  if (!v23)
  {
    goto LABEL_19;
  }

  v29 = v23;
  v30 = 0;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  while (1)
  {
    v31 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v24, v25, v26, v27, v28, v30);
    if (v31)
    {
      break;
    }

LABEL_12:
    if (v29 == ++v30)
    {
      goto LABEL_17;
    }
  }

  v32 = v31;
  v33 = objc_msgSend_objectAtIndexedSubscript_(v55, v24, v25, v26, v27, v28, v30);
  if (objc_msgSend_sectionPageNumberKind(v32, v34, v35, v36, v37, v38) == 1)
  {
    if (objc_msgSend_documentStartPageIndex(v33, v39, v40, v41, v42, v43) > *(a1 + 48))
    {
      goto LABEL_16;
    }

    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_sectionPageNumberStart(v32, v44, v45, v46, v47, v48);
    if (objc_msgSend_hasPageHintOfKind_atPageIndex_(v33, v49, v50, v51, v52, v53, 2, 0))
    {
      --*(*(*(a1 + 40) + 8) + 24);
    }
  }

  if ((*(a1 + 56) & 1) != 0 || !objc_msgSend_containsDocumentPageIndex_(v33, v39, v40, v41, v42, v43, *(a1 + 48)))
  {
    *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_pageCount(v33, v39, v40, v41, v42, v43);

    goto LABEL_12;
  }

  v54 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += v54 - objc_msgSend_documentStartPageIndex(v33, v39, v40, v41, v42, v43);
LABEL_16:

LABEL_17:
  if (*(a1 + 56) == 1)
  {
    --*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_19:
}

uint64_t sub_275FFC8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  sub_275FFC928(a1, v4, 0, v5, v6, v7);

  return a1;
}

void sub_275FFC928(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(a1 + 8);
  if (v7 >= objc_msgSend_count(*a1, a2, a3, a4, a5, a6) || (objc_msgSend_objectAtIndexedSubscript_(*a1, v8, v9, v10, v11, v12, *(a1 + 8)), v13 = objc_claimAutoreleasedReturnValue(), v14 = *(a1 + 16), v20 = objc_msgSend_pageCount(v13, v15, v16, v17, v18, v19), v13, v14 >= v20))
  {
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    *(a1 + 8) = vnegq_f64(v21);
    v22 = *(a1 + 24);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  }
}

void *sub_275FFC9D4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v7;
  *a1 = v9;
  a1[1] = objc_msgSend_sectionIndex(v8, v10, v11, v12, v13, v14);
  a1[2] = objc_msgSend_pageIndex(v8, v15, v16, v17, v18, v19);
  a1[3] = 0;
  a1[4] = 0x7FFFFFFFFFFFFFFFLL;
  sub_275FFC928(a1, v20, v21, v22, v23, v24);
  sub_275FFCAD0(a1, v25, v26, v27, v28, v29);
  v35 = sub_275FFCB6C(a1, v30, v31, v32, v33, v34);
  if (a4)
  {
    v41 = v35;
  }

  else
  {
    v41 = 1;
  }

  if ((v41 & 1) == 0)
  {
    do
    {
      if (a4 < 0)
      {
        sub_275FFCD14(a1, v36, v37, v38, v39, v40);
        v42 = 1;
      }

      else
      {
        sub_275FFCF2C(a1, v36, v37, v38, v39, v40);
        v42 = -1;
      }

      a4 += v42;
    }

    while (a4);
  }

  return a1;
}

void sub_275FFCAD0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 8);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *(a1 + 16);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      if (v6)
      {
        v10 = 0;
        do
        {
          v11 = objc_msgSend_objectAtIndexedSubscript_(*a1, a2, a3, a4, a5, a6, v10);
          v9 += objc_msgSend_pageCount(v11, v12, v13, v14, v15, v16);

          ++v10;
        }

        while (v10 < *(a1 + 8));
        v8 = *(a1 + 16);
      }

      *(a1 + 32) = v8 + v9;
    }
  }
}

uint64_t sub_275FFCB6C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (*(a1 + 16) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v7 = *(a1 + 8);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 32) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (v7 >= objc_msgSend_count(*a1, a2, a3, a4, a5, a6))
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "BOOL TPPageHintEnumerator::isFinished() const");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v53, v54, v55, v56, v57, v46, v52, 261, 0, "Section index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
    return 1;
  }

  v13 = objc_msgSend_objectAtIndexedSubscript_(*a1, v8, v9, v10, v11, v12, *(a1 + 8));
  v14 = *(a1 + 16);
  v20 = v14 >= objc_msgSend_pageCount(v13, v15, v16, v17, v18, v19);
  v26 = v20;
  if (v20)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "BOOL TPPageHintEnumerator::isFinished() const");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v35, v36, v37, v38, v39, v28, v34, 266, 0, "Page index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43, v44);
  }

  return v26;
}

uint64_t sub_275FFCD14(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "TPPageHintEnumerator &TPPageHintEnumerator::operator--()");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 114, 0, "Shouldn't be decrementing once we're finished");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  v30 = *(a1 + 24);
  *(a1 + 24) = 0;

  if ((sub_275FFCB6C(a1, v31, v32, v33, v34, v35) & 1) == 0)
  {
    while (1)
    {
      v41 = *(a1 + 32);
      if (v41)
      {
        *(a1 + 32) = v41 - 1;
      }

      v42 = *(a1 + 16);
      if (v42)
      {
        *(a1 + 16) = v42 - 1;
        return a1;
      }

      v43 = *(a1 + 8);
      if (!v43)
      {
        v78.f64[0] = NAN;
        v78.f64[1] = NAN;
        *(a1 + 8) = vnegq_f64(v78);
        v79 = *(a1 + 24);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;

        return a1;
      }

      *(a1 + 8) = v43 - 1;
      v44 = objc_msgSend_objectAtIndexedSubscript_(*a1, v36, v37, v38, v39, v40);
      if (objc_msgSend_pageCount(v44, v45, v46, v47, v48, v49))
      {
        break;
      }

      if (objc_msgSend_lastPageIndex(v44, v50, v51, v52, v53, v54) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v60 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, v59, "TPPageHintEnumerator &TPPageHintEnumerator::operator--()");
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v68, v69, v70, v71, v72, v61, v67, 137, 0, "Unexpected page index for empty section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76, v77);
      }
    }

    *(a1 + 16) = objc_msgSend_lastPageIndex(v44, v50, v51, v52, v53, v54);
  }

  return a1;
}

uint64_t sub_275FFCF2C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "TPPageHintEnumerator &TPPageHintEnumerator::operator++()");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 81, 0, "Shouldn't be incrementing once we're finished");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  v30 = *(a1 + 24);
  *(a1 + 24) = 0;

  if ((sub_275FFCB6C(a1, v31, v32, v33, v34, v35) & 1) == 0)
  {
    while (1)
    {
      ++*(a1 + 32);
      v41 = objc_msgSend_objectAtIndexedSubscript_(*a1, v36, v37, v38, v39, v40, *(a1 + 8));
      v42 = *(a1 + 16);
      if (v42 + 1 < objc_msgSend_pageCount(v41, v43, v44, v45, v46, v47))
      {
        ++*(a1 + 16);
        goto LABEL_13;
      }

      v53 = *(a1 + 8);
      if (v53 + 1 >= objc_msgSend_count(*a1, v48, v49, v50, v51, v52))
      {
        v94.f64[0] = NAN;
        v94.f64[1] = NAN;
        *(a1 + 8) = vnegq_f64(v94);
        v95 = *(a1 + 24);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;

        goto LABEL_13;
      }

      v59 = *a1;
      ++*(a1 + 8);
      *(a1 + 16) = 0;
      v60 = objc_msgSend_objectAtIndexedSubscript_(v59, v54, v55, v56, v57, v58);

      if (objc_msgSend_pageCount(v60, v61, v62, v63, v64, v65))
      {
        break;
      }

      if (objc_msgSend_lastPageIndex(v60, v66, v67, v68, v69, v70) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v76 = MEMORY[0x277D81150];
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, v75, "TPPageHintEnumerator &TPPageHintEnumerator::operator++()");
        v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v84, v85, v86, v87, v88, v77, v83, 101, 0, "Unexpected page index for empty section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92, v93);
      }
    }

    v41 = v60;
LABEL_13:
  }

  return a1;
}

uint64_t sub_275FFD184(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 8) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  v13 = objc_msgSend_count(v5, v8, v7, v9, v10, v11);
  if (v13)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(*a1, v12, v14, v15, v16, v17, v19);
      v18 += objc_msgSend_pageCount(v20, v21, v22, v23, v24, v25);
      if (v18 > a3)
      {
        break;
      }

      if (v13 == ++v19)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 8) = v19;
    *(a1 + 16) = a3 - objc_msgSend_documentStartPageIndex(v20, v26, v27, v28, v29, v30);
  }

LABEL_7:
  sub_275FFC928(a1, v12, v14, v15, v16, v17);

  return a1;
}

id *sub_275FFD290(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

id sub_275FFD2D4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6))
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(*a1, v7, v8, v9, v10, v11, *(a1 + 8));
  }

  return v12;
}

id sub_275FFD320(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(a1 + 24);
  if (!v7)
  {
    if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6))
    {
      v13 = 0;
    }

    else
    {
      v14 = sub_275FFD2D4(a1, v8, v9, v10, v11, v12);
      v13 = objc_msgSend_pageHintForPageIndex_(v14, v15, v16, v17, v18, v19, *(a1 + 16));
    }

    v20 = *(a1 + 24);
    *(a1 + 24) = v13;

    v7 = *(a1 + 24);
  }

  return v7;
}

uint64_t sub_275FFD3B8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = sub_275FFD320(a1, a2, a3, a4, a5, a6);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_pageKind(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_275FFD410(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = sub_275FFD320(a1, a2, a3, a4, a5, a6);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_range(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

uint64_t sub_275FFD47C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = sub_275FFD320(a1, a2, a3, a4, a5, a6);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_anchoredRange(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

uint64_t sub_275FFD4E8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = sub_275FFD320(a1, a2, a3, a4, a5, a6);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_footnoteAutoNumberRange(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

uint64_t sub_275FFD554(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = sub_275FFD320(a1, a2, a3, a4, a5, a6);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_footnoteLayoutRange(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

id sub_275FFD5C0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = sub_275FFD320(a1, a2, a3, a4, a5, a6);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_firstChildHint(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_275FFD62C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = sub_275FFD320(a1, a2, a3, a4, a5, a6);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_lastChildHint(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_275FFDEDC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v8, "[TPViewStateRoot loadFromUnarchiver:]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPViewStateRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 95, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 64);
  *(v27 + 64) = v4;
}

void sub_275FFDFD8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v8, "[TPViewStateRoot loadFromUnarchiver:]_block_invoke_2");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPViewStateRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 102, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 72);
  *(v27 + 72) = v4;
}

id sub_275FFFC3C()
{
  if (qword_280A404D8 != -1)
  {
    sub_2760383C8();
  }

  v1 = qword_280A404D0;

  return v1;
}

void sub_275FFFC80(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, const char *a6)
{
  v6 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a6, a1, a2, a3, a4);
  v7 = qword_280A404D0;
  qword_280A404D0 = v6;
}

uint64_t sub_275FFFCC0(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v7 = a2;
  objc_initWeak(a1, v7);
  *(a1 + 8) = a3;
  v8 = sub_275FFFE18(a3, v7);
  v9 = sub_27600009C(a4, v7);
  if (v8 <= v9 + 1)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v10 - v11;
  *(a1 + 32) = a3;
  *(a1 + 40) = 1;
  sub_276000344(a1);
  sub_2760003B4(a1);
  v12 = sub_276000420(a1);
  *(a1 + 8) = v12;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "TPSectionEnumerator::TPSectionEnumerator(TSWPStorage *__strong, TSWPAttributeIndex, TSWPAttributeIndex)");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v26, v27, v28, v29, v30, v19, v25, 34, 0, "bad section index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34, v35);
  }

  return a1;
}

void sub_275FFFDE8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);

  _Unwind_Resume(a1);
}

unint64_t sub_275FFFE18(unint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_attributeArrayForKind_(v3, v4, v5, v6, v7, v8, 8);
  v15 = v9;
  if (v9)
  {
    if (!*(v9 + 24))
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "static TSWPAttributeIndex TPSectionEnumerator::firstSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v24, v25, v26, v27, v28, v17, v23, 185, 0, "Illegal section count");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32, v33);
    }

    if (a1)
    {
      do
      {
        v34 = TSWPAttributeArray::rangeForAttributeIndex(v15);
        *v82 = xmmword_27605FD20;
        if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(v3, v35, xmmword_27605FD20, v36, v37, v38, v34 - 1, v82) & 1) == 0)
        {
          break;
        }

        v40 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v15);
        if (v40 >= a1)
        {
          v45 = MEMORY[0x277D81150];
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v41, v42, v43, v44, "static TSWPAttributeIndex TPSectionEnumerator::firstSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)");
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v53, v54, v55, v56, v57, v46, v52, 196, 0, "Skipping past the hidden range should give us a new section");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
        }

        a1 = v40;
      }

      while (v40);
    }
  }

  else
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "static TSWPAttributeIndex TPSectionEnumerator::firstSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)");
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v71, v72, v73, v74, v75, v64, v70, 183, 0, "invalid nil value for '%{public}s'", "sectionTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79, v80);
    a1 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return a1;
}

unint64_t sub_27600009C(unint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_msgSend_attributeArrayForKind_(v3, v4, v5, v6, v7, v8, 8);
  v15 = v9;
  if (v9)
  {
    v16 = *(v9 + 24);
    if (!v16)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "static TSWPAttributeIndex TPSectionEnumerator::lastSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v26, v27, v28, v29, v18, v24, 210, 0, "Illegal section count");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33, v34);
      v16 = *(v15 + 6);
    }

    if (a1 + 1 < v16)
    {
      v35 = v16;
      while (1)
      {
        v36 = TSWPAttributeArray::rangeForAttributeIndex(v15);
        v84 = xmmword_27605FD20;
        if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(v3, v37, xmmword_27605FD20, v38, v39, v40, &v37[v36 - 1], &v84) & 1) == 0)
        {
          break;
        }

        v42 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v15);
        if (v42 <= a1)
        {
          v47 = MEMORY[0x277D81150];
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v43, v44, v45, v46, "static TSWPAttributeIndex TPSectionEnumerator::lastSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)");
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v55, v56, v57, v58, v59, v48, v54, 224, 0, "Skipping past the hidden range should give us a new section");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63, v64);
        }

        a1 = v42;
        if (v42 + 1 >= v35)
        {
          goto LABEL_13;
        }
      }
    }

    v42 = a1;
  }

  else
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "static TSWPAttributeIndex TPSectionEnumerator::lastSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)");
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v73, v74, v75, v76, v77, v66, v72, 208, 0, "invalid nil value for '%{public}s'", "sectionTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81, v82);
    v42 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_13:

  return v42;
}

void sub_276000344(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = sub_275FFFE18(v2, WeakRetained);
  v5 = *(a1 + 40);
  v6 = v5 + *(a1 + 32);
  if (v4 <= v6)
  {
    v7 = v5 + *(a1 + 32);
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v7 - v8;

  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
}

void sub_2760003B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = sub_27600009C(v2, WeakRetained);
  if (v2 <= v4 + 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v2;
  }

  if (v2 >= v4 + 1)
  {
    v2 = v4 + 1;
  }

  v6 = v5 - v2;

  *(a1 + 32) = v2;
  *(a1 + 40) = v6;
}

unint64_t sub_276000420(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4 = v1 >= v2;
  v3 = v1 - v2;
  v4 = !v4 || v3 >= *(a1 + 24);
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(a1);
    v7 = sub_2760007C4(a1);
    VisibleCharInRange = objc_msgSend_indexOfFirstVisibleCharInRange_(WeakRetained, v8, v9, v10, v11, v12, v7, v8);

    if (VisibleCharInRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      while (1)
      {
        v14 = sub_27600086C(a1);
        v1 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v14);
        v15 = sub_27600086C(a1);
        v16 = TSWPAttributeArray::charIndexForAttributeIndex(v15);
        v17 = v16 ? v16 - 1 : 0;
        v18 = objc_loadWeakRetained(a1);
        if (!objc_msgSend_hasHiddenTextAtCharIndex_(v18, v19, v20, v21, v22, v23, v17))
        {
          break;
        }

        v24 = *(a1 + 32);

        if (v1 <= v24)
        {
          goto LABEL_13;
        }
      }

LABEL_13:
      v30 = *(a1 + 32);
      v4 = v1 >= v30;
      v31 = v1 - v30;
      if (!v4 || v31 >= *(a1 + 40))
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "TSWPAttributeIndex TPSectionEnumerator::firstVisibleSectionIndex() const");
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v40, v41, v42, v43, v44, v33, v39, 174, 0, "Visible section index is out of bounds");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48, v49);
      }
    }
  }

  return v1;
}

void *sub_2760005CC(void *a1)
{
  a1[4] += a1[5];
  a1[5] = 1;
  sub_2760003B4(a1);
  a1[1] = sub_276000420(a1);
  return a1;
}

void *sub_276000610@<X0>(id *from@<X0>, uint64_t a2@<X8>)
{
  objc_copyWeak(a2, from);
  *(a2 + 8) = from[1];
  v4 = *(from + 2);
  *(a2 + 16) = *(from + 1);
  *(a2 + 32) = v4;
  from[4] = from[4] + from[5];
  from[5] = 1;
  sub_2760003B4(from);
  result = sub_276000420(from);
  from[1] = result;
  return result;
}

id sub_276000688(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a2)
  {
    *a2 = sub_2760007C4(a1);
    *(a2 + 8) = a2;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = v8 >= v9;
  v10 = v8 - v9;
  v11 = !v11 || v10 >= *(a1 + 24);
  if (v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, a6, "TPSection *TPSectionEnumerator::section(NSRange *) const");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
    v20 = *(a1 + 8);
    v21 = NSStringFromRange(*(a1 + 16));
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v22, v23, v24, v25, v26, v13, v19, 108, 0, "section index not within enumeration range: %lu / %{public}@", v20, v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
    v33 = 0;
  }

  else
  {
    v32 = sub_27600086C(a1);
    v33 = TSWPAttributeArray::objectForAttributeIndex(v32);
  }

  return v33;
}

NSUInteger sub_2760007C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4 = v1 >= v2;
  v3 = v1 - v2;
  v4 = !v4 || v3 >= *(a1 + 24);
  if (v4)
  {
    return *MEMORY[0x277D81490];
  }

  v7 = sub_27600086C(a1);
  v5 = TSWPAttributeArray::rangeForAttributeIndex(v7);
  v9 = v8;
  if (*(a1 + 40) >= 2uLL)
  {
    v10 = sub_27600086C(a1);
    v14.location = TSWPAttributeArray::rangeForAttributeIndex(v10);
    v14.length = v11;
    v13.location = v5;
    v13.length = v9;
    return NSUnionRange(v13, v14).location;
  }

  return v5;
}

uint64_t sub_27600086C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v7 = objc_msgSend_attributeArrayForKind_(WeakRetained, v2, v3, v4, v5, v6, 8);

  if (!v7)
  {
    v26 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "TSWPParagraphAttributeArray *TPSectionEnumerator::sectionTable() const");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v33, v34, v35, v36, v14, v20, 141, 0, "invalid nil value for '%{public}s'", "result");
    goto LABEL_5;
  }

  if (!*(v7 + 24))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "TSWPParagraphAttributeArray *TPSectionEnumerator::sectionTable() const");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 143, 0, "Illegal section count");
LABEL_5:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40, v41);
  }

  return v7;
}

void sub_276001D38(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276002B3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276003400(void *a1, const char *a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v9 = objc_msgSend_length(a1, a2, a4, a5, a6, a7);
  if (v9 <= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = v9;
  }

  if (v9 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v9;
  }

  return objc_msgSend_sectionEnumeratorForCharRange_(a1, v10, v11, v12, v13, v14, v16, v15 - v16);
}

uint64_t sub_27600345C@<X0>(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>, __n128 a9@<Q3>)
{
  v13 = objc_msgSend_sectionIndexForCharIndex_(a1, a2, a6, a7, a8, a9);
  v14 = a3 + a4;
  if (v14 == objc_msgSend_length(a1, v15, v16, v17, v18, v19))
  {
    v25 = objc_msgSend_sectionCount(a1, v20, v21, v22, v23, v24) - 1;
  }

  else
  {
    v25 = v13;
    if (a4)
    {
      v25 = objc_msgSend_sectionIndexForCharIndex_(a1, v20, v21, v22, v23, v24, v14 - 1, v13);
    }
  }

  return sub_2760005A0(a5, a1, v13, v25);
}

uint64_t sub_2760034F8@<X0>(void *a1@<X0>, const char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>)
{
  if (objc_msgSend_length(a1, a2, a5, a6, a7, a8))
  {
    v16 = objc_msgSend_length(a1, v11, v12, v13, v14, v15);
    v22 = objc_msgSend_sectionIndexForCharIndex_(a1, v17, v18, v19, v20, v21, v16);
  }

  else
  {
    v22 = 0;
  }

  return sub_2760005A0(a4, a1, a3, v22);
}

id sub_27600356C(void *a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_2760036A4;
  v21 = sub_2760036B4;
  v22 = 0;
  v2 = objc_opt_class();
  v8 = objc_msgSend_length(a1, v3, v4, v5, v6, v7);
  v16[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v16[1] = 3221225472;
  v16[2] = sub_2760036BC;
  v16[3] = &unk_27A6A8C98;
  v16[4] = &v17;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(a1, v10, v9, v11, v12, v13, v2, 0, v8, v16);
  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

void sub_276003684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760036A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2760036F4(void *a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_2760036A4;
  v21 = sub_2760036B4;
  v22 = 0;
  v2 = objc_opt_class();
  v8 = objc_msgSend_length(a1, v3, v4, v5, v6, v7);
  v16[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v16[1] = 3221225472;
  v16[2] = sub_27600382C;
  v16[3] = &unk_27A6A8CC0;
  v16[4] = &v17;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(a1, v10, v9, v11, v12, v13, v2, 0, v8, v16);
  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

void sub_27600380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_276003864(void *a1, const char *a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  CharIndex = objc_msgSend_findCharIndex(a3, a2, a4, a5, a6, a7);
  objc_msgSend_sectionEnumeratorForCharRange_(a1, v9, v10, v11, v12, v13, CharIndex, 1);
  objc_opt_class();
  v18 = sub_276000688(v27, 0, v14, v15, v16, v17);
  v19 = TSUDynamicCast();

  v25 = objc_msgSend_backgroundFill(v19, v20, v21, v22, v23, v24);

  sub_2760005A4(v27);

  return v25;
}

id sub_276003944(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_range(a1, a2, a3, a4, a5, a6);
  v13 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_passingTest_(a1, v8, v9, v10, v11, v12, 6, v7, v8, &unk_288501238);
  v19 = v13;
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = objc_msgSend_array(MEMORY[0x277CBEA60], v14, v15, v16, v17, v18);
  }

  v21 = v20;

  return v21;
}

void sub_276003C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_2760047FC(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v6, v7, v8, v9, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

uint64_t sub_276005D38(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_name(a2, a2, a3, a4, a5, a6);
  isEqual = objc_msgSend_isEqual_(v7, v8, v9, v10, v11, v12, *(a1 + 32));

  return isEqual;
}

void sub_27600613C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2760005A4(va);
  _Unwind_Resume(a1);
}

void sub_276006A50(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_276006AA0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276006BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TPDocumentRoot;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2760074B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276008000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);

  _Unwind_Resume(a1);
}

void sub_2760080C4(uint64_t a1, void *a2)
{
  v26 = a2;
  if (!v26)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, v7, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 916, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  }

  objc_msgSend_setTheme_(*(a1 + 32), v3, v4, v5, v6, v7, v26);
}

void sub_2760081CC(uint64_t a1, void *a2)
{
  v26 = a2;
  if (!v26)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, v7, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_2");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 923, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  }

  objc_msgSend_setStylesheet_(*(a1 + 32), v3, v4, v5, v6, v7, v26);
}

void sub_2760082D4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v8, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_3");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 931, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 496);
  *(v27 + 496) = v4;
}

void sub_2760083D0(uint64_t a1, void *a2)
{
  v26 = a2;
  if (!v26)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, v7, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_4");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 938, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  }

  objc_msgSend_setDrawablesZOrder_(*(a1 + 32), v3, v4, v5, v6, v7, v26);
}

void sub_2760084D8(uint64_t a1, void *a2)
{
  v26 = a2;
  if (!v26)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, v7, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_5");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 945, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  }

  objc_msgSend_setFloatingDrawables_(*(a1 + 32), v3, v4, v5, v6, v7, v26);
}

void sub_2760085E0(uint64_t a1, void *a2)
{
  v26 = a2;
  if (!v26)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, v7, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_6");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 952, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  }

  objc_msgSend_setFlowInfoContainer_(*(a1 + 32), v3, v4, v5, v6, v7, v26);
}

uint64_t sub_2760086E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276008700(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v8, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 961, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = *(*(a1 + 32) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v4;
}

void sub_2760087F8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v8, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_2");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 968, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 504);
  *(v27 + 504) = v4;
}

void sub_276008930(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v8, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_6");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 991, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 664);
  *(v27 + 664) = v4;
}

void sub_276008A2C(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = objc_msgSend_object(a2, a2, a3, a4, a5, a6);
  objc_msgSend_setCustomFormatListToUpgrade_(*(a1 + 32), v7, v8, v9, v10, v11);
}

uint64_t sub_276008AB0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v368 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  if (!v7[61])
  {
    v8 = objc_alloc(MEMORY[0x277D80AE0]);
    v14 = objc_msgSend_context(*(a1 + 32), v9, v10, v11, v12, v13);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v8, v15, v16, v17, v18, v19, v14, 1);
    v21 = *(a1 + 32);
    v22 = *(v21 + 488);
    *(v21 + 488) = canCullStyles;

    v7 = *(a1 + 32);
  }

  if (!v7[60])
  {
    v23 = objc_msgSend_themeWithContext_alternate_withStylesheet_(TPTheme, a2, a3, a4, a5, a6, *(a1 + 40), 5, v7[61]);
    objc_msgSend_setTheme_(*(a1 + 32), v24, v25, v26, v27, v28, v23);

    v7 = *(a1 + 32);
  }

  if (!v7[62])
  {
    objc_msgSend_pCreateBodyStorage(v7, a2, a3, a4, a5, a6);
    v7 = *(a1 + 32);
  }

  if (!v7[64])
  {
    objc_msgSend_willModifyForUpgrade(v7, a2, a3, a4, a5, a6);
    v29 = *(a1 + 32);
    v35 = objc_msgSend_bodyStorage(v29, v30, v31, v32, v33, v34);
    objc_msgSend_pCreateDrawablesZOrderBodyStorage_addAnchoredDrawables_(v29, v36, v37, v38, v39, v40, v35, 1);

    v7 = *(a1 + 32);
  }

  if (!v7[65])
  {
    objc_msgSend_pCreateFloatingDrawables(v7, a2, a3, a4, a5, a6);
    v7 = *(a1 + 32);
  }

  if (v7[97])
  {
    v338 = objc_opt_new();
    v359 = 0u;
    v360 = 0u;
    v361 = 0u;
    v362 = 0u;
    v45 = objc_msgSend_flowInfos(*(*(a1 + 32) + 776), v41, 0, v42, v43, v44);
    obj = v45;
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, v47, v48, v49, v50, &v359, v367, 16);
    if (v51)
    {
      v340 = *v360;
      do
      {
        v52 = 0;
        v341 = v51;
        do
        {
          if (*v360 != v340)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v359 + 1) + 8 * v52);
          v54 = objc_opt_new();
          v357 = 0u;
          v358 = 0u;
          v355 = 0u;
          v356 = 0u;
          v59 = objc_msgSend_textboxes(v53, v55, 0, v56, v57, v58);
          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, v61, v62, v63, v64, &v355, v366, 16);
          v342 = v53;
          if (v66)
          {
            v71 = *v356;
            do
            {
              for (i = 0; i != v66; ++i)
              {
                if (*v356 != v71)
                {
                  objc_enumerationMutation(v59);
                }

                v73 = *(*(&v355 + 1) + 8 * i);
                if (objc_msgSend_pageIndexForDrawable_(*(*(a1 + 32) + 520), v65, v67, v68, v69, v70, v73) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  objc_msgSend_addObject_(v54, v65, v67, v68, v69, v70, v73);
                }
              }

              v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v65, v67, v68, v69, v70, &v355, v366, 16);
            }

            while (v66);
          }

          if (objc_msgSend_count(v54, v74, v75, v76, v77, v78))
          {
            v84 = objc_msgSend_textboxes(v342, v79, v80, v81, v82, v83);
            v90 = objc_msgSend_mutableCopy(v84, v85, v86, v87, v88, v89);

            objc_msgSend_removeObjectsInArray_(v90, v91, v92, v93, v94, v95, v54);
            if (objc_msgSend_count(v90, v96, v97, v98, v99, v100))
            {
              if (*MEMORY[0x277D81500] != -1)
              {
                sub_2760383F0();
              }

              objc_msgSend_willModifyForUpgrade(v342, v101, v102, v103, v104, v105);
              objc_msgSend_setTextboxes_(v342, v106, v107, v108, v109, v110, v90);
            }

            else
            {
              if (*MEMORY[0x277D81500] != -1)
              {
                sub_276038418();
              }

              objc_msgSend_addObject_(v338, v101, v102, v103, v104, v105, v342);
            }
          }

          ++v52;
        }

        while (v52 != v341);
        v45 = obj;
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v111, v112, v113, v114, v115, &v359, v367, 16);
      }

      while (v51);
    }

    v353 = 0u;
    v354 = 0u;
    v351 = 0u;
    v352 = 0u;
    v116 = v338;
    v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v117, v118, v119, v120, v121, &v351, v365, 16);
    if (v123)
    {
      v128 = *v352;
      do
      {
        for (j = 0; j != v123; ++j)
        {
          if (*v352 != v128)
          {
            objc_enumerationMutation(v116);
          }

          v130 = *(*(&v351 + 1) + 8 * j);
          objc_msgSend_willModifyForUpgrade(*(*(a1 + 32) + 776), v122, v124, v125, v126, v127);
          objc_msgSend_removeFlowInfo_(*(*(a1 + 32) + 776), v131, v132, v133, v134, v135, v130);
        }

        v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v122, v124, v125, v126, v127, &v351, v365, 16);
      }

      while (v123);
    }
  }

  else
  {
    objc_msgSend_pCreateFlowInfoContainer(v7, a2, a3, a4, a5, a6);
  }

  v141 = *(*(*(a1 + 48) + 8) + 40);
  if (v141)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(v141, v136, v137, v138, v139, v140, *(a1 + 32));
    objc_msgSend_wasRemovedFromDocumentRoot_(*(*(*(a1 + 48) + 8) + 40), v142, v143, v144, v145, v146, *(a1 + 32));
    if (*(a1 + 72) == 1)
    {
      objc_msgSend_pUpgradeSection_documentVersion_(*(a1 + 32), v136, v137, v138, v139, v140, *(*(*(a1 + 48) + 8) + 40), *(a1 + 56));
    }
  }

  objc_msgSend_pCommonInitialization(*(a1 + 32), v136, v137, v138, v139, v140);
  if (*(a1 + 72) == 1)
  {
    objc_msgSend_performHyperlinkUpgradesIfNecessaryForVersion_(*(a1 + 32), v147, v148, v149, v150, v151, *(a1 + 56));
    objc_msgSend_p_upgradeTOCStyles(*(a1 + 32), v152, v153, v154, v155, v156);
    objc_msgSend_p_upgradeBodyTOC(*(a1 + 32), v157, v158, v159, v160, v161);
    *(*(a1 + 32) + 464) = 1;
  }

  if (*(a1 + 64) < *MEMORY[0x277D80968])
  {
    objc_msgSend_p_upgradeTOCModelForUnity20(*(a1 + 32), v147, v148, v149, v150, v151);
  }

  if ((*(a1 + 73) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v147, v148, v149, v150, v151);
    objc_msgSend_p_initializeShowInBookmarksListParagraphStylesProperty(*(a1 + 32), v162, v163, v164, v165, v166);
  }

  v167 = objc_msgSend_settings(*(a1 + 32), v147, v148, v149, v150, v151);
  hasBody = objc_msgSend_hasBody(v167, v168, v169, v170, v171, v172);

  if ((hasBody & 1) == 0)
  {
    v349 = 0u;
    v350 = 0u;
    v347 = 0u;
    v348 = 0u;
    v179 = objc_msgSend_sections(*(a1 + 32), v174, 0, v176, v177, v178);
    v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v180, v181, v182, v183, v184, &v347, v364, 16);
    if (v186)
    {
      v191 = *v348;
LABEL_58:
      v192 = 0;
      while (1)
      {
        if (*v348 != v191)
        {
          objc_enumerationMutation(v179);
        }

        v193 = objc_msgSend_sectionTemplatePageForType_(*(*(&v347 + 1) + 8 * v192), v185, v187, v188, v189, v190, 0);
        v199 = objc_msgSend_pageTemplateUUIDPath(v193, v194, v195, v196, v197, v198);
        v200 = v199 == 0;

        if (v200)
        {
          break;
        }

        if (v186 == ++v192)
        {
          v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v185, v187, v188, v189, v190, &v347, v364, 16);
          if (v186)
          {
            goto LABEL_58;
          }

          goto LABEL_71;
        }
      }

      if (objc_msgSend_count(*(*(a1 + 32) + 736), v201, v202, v203, v204, v205) != 1)
      {

        goto LABEL_71;
      }

      v211 = objc_msgSend_firstObject(*(*(a1 + 32) + 736), v206, v207, v208, v209, v210);
      v217 = objc_msgSend_objectUUID(v211, v212, v213, v214, v215, v216);
      v223 = objc_msgSend_UUIDString(v217, v218, v219, v220, v221, v222);
      isEqualToString = objc_msgSend_isEqualToString_(v223, v224, v225, v226, v227, v228, @"6EC83440-F231-4439-8E15-2D32D699FA7F");

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_72;
      }

      v235 = *(a1 + 64);
      v236 = 1;
      if (v235 <= 0x2000400000003 && v235 >= *MEMORY[0x277D80990])
      {
        TSUSetCrashReporterInfo();
        v237 = MEMORY[0x277D81150];
        v243 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v238, v239, v240, v241, v242, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_9", "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_9", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", 1195);
        v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v244, v245, v246, v247, v248, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v237, v250, v251, v252, v253, v254, v243, v249, 1195, 1, "Document is from a pre-release 2.4 build and could not be upgraded");

        TSUCrashBreakpoint();
        abort();
      }
    }

    else
    {
LABEL_71:

LABEL_72:
      v236 = 0;
    }

    if (((objc_msgSend_count(*(*(a1 + 32) + 736), v230, v231, v232, v233, v234) != 0) & ~v236) != 0)
    {
      v345 = 0u;
      v346 = 0u;
      v343 = 0u;
      v344 = 0u;
      v265 = objc_msgSend_sections(*(a1 + 32), v255, 0, v257, v258, v259);
      v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v265, v266, v267, v268, v269, v270, &v343, v363, 16);
      if (v272)
      {
        v277 = *v344;
        do
        {
          for (k = 0; k != v272; ++k)
          {
            if (*v344 != v277)
            {
              objc_enumerationMutation(v265);
            }

            v279 = objc_msgSend_sectionTemplatePageForType_(*(*(&v343 + 1) + 8 * k), v271, v273, v274, v275, v276, 0);
            v285 = objc_msgSend_pageTemplateUUIDPath(v279, v280, v281, v282, v283, v284);
            v286 = v285 == 0;

            if (v286)
            {
              objc_msgSend_willModifyForUpgrade(v279, v287, v288, v289, v290, v291);
              v292 = [TPPageTemplate alloc];
              v298 = objc_msgSend_context(*(a1 + 32), v293, v294, v295, v296, v297);
              v304 = objc_msgSend_blankPageTemplateName(*(a1 + 32), v299, v300, v301, v302, v303);
              v310 = objc_msgSend_initWithContext_name_placeholderDrawables_placeholderTagsInZOrder_sectionTemplateDrawables_(v292, v305, v306, v307, v308, v309, v298, v304, MEMORY[0x277CBEC10], MEMORY[0x277CBEBF8], 0);

              objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v310, v311, v312, v313, v314, v315, *(a1 + 32), 0);
              objc_msgSend_addObject_(*(*(a1 + 32) + 736), v316, v317, v318, v319, v320, v310);
              objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v310, v321, v322, v323, v324, v325, *(a1 + 32), 0);
              v331 = objc_msgSend_objectUUIDPath(v310, v326, v327, v328, v329, v330);
              objc_msgSend_i_setPageTemplateUUIDPath_(v279, v332, v333, v334, v335, v336, v331);
            }
          }

          v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v265, v271, v273, v274, v275, v276, &v343, v363, 16);
        }

        while (v272);
      }
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v255, v256, v257, v258, v259);
      objc_msgSend_i_upgradeSectionsForPageTemplates(*(a1 + 32), v260, v261, v262, v263, v264);
    }
  }

  if (*(a1 + 64) < *MEMORY[0x277D809A8])
  {
    objc_msgSend_upgradeParagraphStylesForTOCNavigator(*(a1 + 32), v174, v175, v176, v177, v178);
  }

  return objc_msgSend_validate_(*(*(a1 + 32) + 496), v174, v175, v176, v177, v178, 2);
}

void sub_27600954C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276009590()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_27600A8F8(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  v53 = objc_msgSend_tocInfo(a2, a2, a3, a4, a5, a6);
  v15 = objc_msgSend_tocSettings(v53, v10, v11, v12, v13, v14);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v20 = objc_msgSend_indexedStyles(v15, v16, 0, v17, v18, v19);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, v22, v23, v24, v25, &v54, v58, 16);
  if (v27)
  {
    v32 = 0;
    v33 = *v55;
    do
    {
      v34 = 0;
      do
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v20);
        }

        v35 = objc_msgSend_entryStyleForParagraphStyle_(v15, v26, v28, v29, v30, v31, *(*(&v54 + 1) + 8 * v34));
        if (objc_msgSend_containsObject_(*(a1 + 32), v36, v37, v38, v39, v40, v35))
        {
          if ((v32 & 1) == 0)
          {
            v46 = *(a1 + 40);
            v47 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v41, v42, v43, v44, v45, a8);
            objc_msgSend_addObject_(v46, v48, v49, v50, v51, v52, v47);
          }

          v32 = 1;
        }

        else
        {
          objc_msgSend_addObject_(*(a1 + 32), v41, v42, v43, v44, v45, v35);
        }

        ++v34;
      }

      while (v27 != v34);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v26, v28, v29, v30, v31, &v54, v58, 16);
    }

    while (v27);
  }
}

void sub_27600AAE8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v24 = objc_msgSend_entryStyleForParagraphStyle_(*(a1 + 32), a2, a3, a4, a5, a6, a2);
  v12 = objc_msgSend_stylesheet(v24, v7, v8, v9, v10, v11);

  if (!v12)
  {
    v18 = objc_msgSend_stylesheet(*(a1 + 40), v13, v14, v15, v16, v17);
    objc_msgSend_addStyle_(v18, v19, v20, v21, v22, v23, v24);
  }
}

id sub_27600CE88(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 0x400u;
  v4 = *(v3 + 200);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C92CD0](v5);
    *(v3 + 200) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TPDocumentRoot;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_27600DC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_27600DC7C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  a3.n128_u64[0] = *(a1 + 48);
  a4.n128_u64[0] = *(a1 + 56);
  v7 = objc_msgSend_p_previewImageWithImageSize_(*(a1 + 32), a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_27600E02C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_27600E66C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  *a4 = 1;
  v13 = objc_msgSend_bodyStorage(*(a1 + 32), v8, v9, v10, v11, v12);
  if (v13 == v7)
  {
    v15 = 0;
  }

  else
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = (*(v14 + 16))(v14, v7, a3, a4);
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

void sub_27600F87C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 32) != v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

uint64_t sub_276010CCC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_276010D24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v14 = v8;
  if (v8 && objc_msgSend_isLocalizable(v8, v9, v10, v11, v12, v13))
  {
    v20 = *(a1 + 32);
    v33[0] = v14;
    v21 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v15, v16, v17, v18, v19, a3, a4);
    v33[1] = v21;
    v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v23, v24, v25, v26, v33, 2);
    objc_msgSend_addObject_(v20, v28, v29, v30, v31, v32, v27);
  }
}

void sub_276010E24(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2760117C8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  while (1)
  {
    v8 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 32), a2, a3, a4, a5, a6, a2, 0);
    v14 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 40), v9, v10, v11, v12, v13, a2, 0);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v15, v16, v17, v18, v19, a2, 0, 0);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 40), v20, v21, v22, v23, v24, a2, v8, 0);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v25, v26, v27, v28, v29, a2, v14, 0);

    operator++();
  }
}

void sub_2760118A8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v34 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 32), a2, a3, a4, a5, a6, a2, 0);
  v13 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 32), v8, v9, v10, v11, v12, a2, 2);
  if (objc_msgSend_length(v34, v14, v15, v16, v17, v18) || objc_msgSend_length(v13, v19, v20, v21, v22, v23))
  {
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v19, v20, v21, v22, v23, a2, 0, 2);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v24, v25, v26, v27, v28, a2, v13, 0);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v29, v30, v31, v32, v33, a2, v34, 2);
  }
}

void sub_276011CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276011D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_27601269C(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v16, v6, v7, v8, v9, v10, *(a1 + 32), *(a1 + 40)))
  {
    objc_msgSend_addObject_(*(a1 + 48), v11, v12, v13, v14, v15, v5);
  }
}

void sub_2760130E0(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setStylesheetForUpgradeToSingleStylesheet_(v8, v3, v4, v5, v6, v7, *(a1 + 32));
  }
}

void sub_27601343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276013454(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_2760135A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760135D4(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = a2;
  v10 = objc_msgSend_pencilAnnotationStorage(v24, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_drawing(v10, v11, v12, v13, v14, v15);
  objc_msgSend_pencilAnnotationDrawingScale(v16, v17, v18, v19, v20, v21);
  v23 = v22;

  if (v23 > 0.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = v23;
    *a3 = 1;
  }
}

void sub_27601414C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_276014698(void *a1)
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

    v4 = MEMORY[0x277C92D70](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TPTheme;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_276014E84(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_276014FD0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_27601507C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_276015138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_27601580C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  *(*(a1 + 32) + 152) = 0;
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5, a6);
  objc_msgSend_removeObserver_(v7, v8, v9, v10, v11, v12, *(a1 + 32));

  objc_storeWeak((*(a1 + 32) + 272), 0);
  v13 = *(a1 + 32);
  v14 = *(v13 + 200);
  *(v13 + 200) = 0;

  objc_msgSend_p_destroyBodyLayoutState(*(a1 + 32), v15, v16, v17, v18, v19);
  objc_msgSend_clearOwner(*(*(a1 + 32) + 96), v20, v21, v22, v23, v24);
  v25 = *(a1 + 32);
  v26 = *(v25 + 96);
  *(v25 + 96) = 0;

  objc_msgSend_tearDown(*(*(a1 + 32) + 104), v27, v28, v29, v30, v31);
  v32 = *(a1 + 32);
  v33 = *(v32 + 104);
  *(v32 + 104) = 0;

  v34 = *(a1 + 32);
  v35 = *(v34 + 112);
  *(v34 + 112) = 0;

  v36 = *(a1 + 32);
  v37 = *(v36 + 80);
  *(v36 + 80) = 0;

  v38 = *(a1 + 32);
  v39 = *(v38 + 88);
  *(v38 + 88) = 0;

  v40 = *(a1 + 32);
  v41 = *(v40 + 128);
  *(v40 + 128) = 0;

  v42 = *(a1 + 32);
  v43 = *(v42 + 176);
  *(v42 + 176) = 0;

  v44 = *(a1 + 32);
  v45 = *(v44 + 184);
  *(v44 + 184) = 0;

  objc_msgSend_teardown(*(*(a1 + 32) + 192), v46, v47, v48, v49, v50);
  v51 = *(a1 + 32);
  v52 = *(v51 + 192);
  *(v51 + 192) = 0;

  *(*(a1 + 32) + 121) = 1;
}

void sub_276015DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_276015EE0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v420 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_documentRoot(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_bodyStorage(v7, v8, v9, v10, v11, v12);
  v383 = objc_msgSend_length(v13, v14, v15, v16, v17, v18);

  v385 = *(MEMORY[0x277D81490] + 8);
  v386 = *MEMORY[0x277D81490];
  v411 = 0u;
  v412 = 0u;
  v413 = 0u;
  v414 = 0u;
  obj = objc_msgSend_sectionHints(*(a1 + 40), v19, 0, v20, v21, v22);
  v381 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v24, v25, v26, v27, &v411, v419, 16);
  if (v381)
  {
    v393 = 0;
    v380 = *v412;
    v33 = v385;
    v34 = v386;
    do
    {
      for (i = 0; i != v381; ++i)
      {
        if (*v412 != v380)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v411 + 1) + 8 * i);
        if (objc_msgSend_documentStartPageIndex(v35, v28, v29, v30, v31, v32) != v393)
        {
          v293 = MEMORY[0x277D81150];
          v294 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke");
          v300 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v295, v296, v297, v298, v299, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
          started = objc_msgSend_documentStartPageIndex(v35, v301, v302, v303, v304, v305);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v293, v307, v308, v309, v310, v311, v294, v300, 484, 0, "inconsistent hint pageIndex: %lu instead of %lu", started, v393);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v312, v313, v314, v315, v316);
          *(*(*(a1 + 56) + 8) + 24) = 0;
          goto LABEL_65;
        }

        v409 = 0u;
        v410 = 0u;
        v407 = 0u;
        v408 = 0u;
        v384 = objc_msgSend_pageHints(v35, v36, 0, v38, v39, v40);
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v384, v41, v42, v43, v44, v45, &v407, v418, 16);
        if (!v46)
        {
          goto LABEL_60;
        }

        v391 = *v408;
        while (2)
        {
          v394 = 0;
          v390 = v46;
          do
          {
            if (*v408 != v391)
            {
              objc_enumerationMutation(v384);
            }

            v52 = *(*(&v407 + 1) + 8 * v394);
            if (objc_msgSend_pageKind(v52, v47, v48, v49, v50, v51) == 1)
            {
              v58 = objc_msgSend_range(v52, v53, v54, v55, v56, v57);
              if (&v59[v58] > v383)
              {
                v240 = MEMORY[0x277D81150];
                v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, v63, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke");
                v247 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v242, v243, v244, v245, v246, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
                v253 = objc_msgSend_range(v52, v248, v249, v250, v251, v252);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v240, v254, v255, v256, v257, v258, v241, v247, 492, 0, "bad hint: out of range (%lu > %lu)", &v254[v253], v383);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v259, v260, v261, v262, v263);
                goto LABEL_59;
              }

              v392 = objc_msgSend_anchoredRange(v52, v59, v60, v61, v62, v63);
              v389 = v64;
              v69 = objc_msgSend_range(v52, v64, v65, v66, v67, v68);
              v388 = v70;
              if (v34 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v69 != &v33[v34])
                {
                  v264 = MEMORY[0x277D81150];
                  v265 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, v74, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke");
                  v271 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v266, v267, v268, v269, v270, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v264, v272, v273, v274, v275, v276, v265, v271, 502, 0, "Hints' ranges are inconsistent");
                  goto LABEL_58;
                }

                if (v392 != &v385[v386])
                {
                  v277 = MEMORY[0x277D81150];
                  v265 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, v74, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke");
                  v271 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v278, v279, v280, v281, v282, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v277, v283, v284, v285, v286, v287, v265, v271, 507, 0, "Hints' anchored ranges are inconsistent");
LABEL_58:

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v288, v289, v290, v291, v292);
LABEL_59:
                  *(*(*(a1 + 56) + 8) + 24) = 0;
                  goto LABEL_60;
                }
              }

              v387 = v69;
              v405 = 0u;
              v406 = 0u;
              v403 = 0u;
              v404 = 0u;
              v75 = objc_msgSend_anchoredDrawablePositions(v52, v70, 0, v72, v73, v74);
              v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, v77, v78, v79, v80, &v403, v417, 16);
              if (v81)
              {
                v82 = *v404;
                while (2)
                {
                  for (j = 0; j != v81; ++j)
                  {
                    if (*v404 != v82)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v84 = *(*(&v403 + 1) + 8 * j);
                    objc_opt_class();
                    v90 = objc_msgSend_documentRoot(*(a1 + 32), v85, v86, v87, v88, v89);
                    v96 = objc_msgSend_context(v90, v91, v92, v93, v94, v95);
                    v102 = objc_msgSend_objectWithUUIDPath_(v96, v97, v98, v99, v100, v101, v84);
                    v103 = TSUDynamicCast();

                    v109 = objc_msgSend_owningAttachmentNoRecurse(v103, v104, v105, v106, v107, v108);
                    LODWORD(v90) = v109 == 0;

                    if (v90)
                    {
                      v120 = MEMORY[0x277D81150];
                      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, v114, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke");
                      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, v123, v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v128, v129, v130, v131, v132, v121, v127, 519, 0, "bad hint: detached drawable");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135, v136, v137);
                      *(*(*(a1 + 56) + 8) + 24) = 0;

                      goto LABEL_27;
                    }
                  }

                  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v115, v116, v117, v118, v119, &v403, v417, 16);
                  if (v81)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_27:

              v401 = 0u;
              v402 = 0u;
              v399 = 0u;
              v400 = 0u;
              v142 = objc_msgSend_startingPartitionedAttachments(v52, v138, 0, v139, v140, v141);
              v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v143, v144, v145, v146, v147, &v399, v416, 16);
              if (v148)
              {
                v149 = *v400;
                while (2)
                {
                  for (k = 0; k != v148; ++k)
                  {
                    if (*v400 != v149)
                    {
                      objc_enumerationMutation(v142);
                    }

                    v151 = *(*(&v399 + 1) + 8 * k);
                    objc_opt_class();
                    v157 = objc_msgSend_documentRoot(*(a1 + 32), v152, v153, v154, v155, v156);
                    v163 = objc_msgSend_context(v157, v158, v159, v160, v161, v162);
                    v169 = objc_msgSend_objectWithUUID_(v163, v164, v165, v166, v167, v168, v151);
                    v170 = TSUDynamicCast();

                    if (!v170)
                    {
                      v181 = MEMORY[0x277D81150];
                      v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v171, v172, v173, v174, v175, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke");
                      v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v184, v185, v186, v187, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v189, v190, v191, v192, v193, v182, v188, 528, 0, "bad hint: missing partitionable attachment");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v194, v195, v196, v197, v198);
                      *(*(*(a1 + 56) + 8) + 24) = 0;
                      goto LABEL_37;
                    }
                  }

                  v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v176, v177, v178, v179, v180, &v399, v416, 16);
                  if (v148)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_37:

              v33 = v388;
              v385 = v389;
              v386 = v392;
              v34 = v387;
              if (*(*(*(a1 + 56) + 8) + 24) != 1)
              {
                v386 = v392;
                v34 = v387;
                goto LABEL_60;
              }
            }

            if (objc_msgSend_pageKind(v52, v53, v54, v55, v56, v57) != 5)
            {
              v199 = objc_msgSend_documentRoot(*(a1 + 32), v47, v48, v49, v50, v51);
              v205 = objc_msgSend_floatingDrawables(v199, v200, v201, v202, v203, v204);
              v211 = objc_msgSend_drawablesOnPageIndex_(v205, v206, v207, v208, v209, v210, v393);

              v397 = 0u;
              v398 = 0u;
              v395 = 0u;
              v396 = 0u;
              v212 = v211;
              v218 = objc_msgSend_countByEnumeratingWithState_objects_count_(v212, v213, v214, v215, v216, v217, &v395, v415, 16);
              if (v218)
              {
                v219 = *v396;
                while (2)
                {
                  for (m = 0; m != v218; ++m)
                  {
                    if (*v396 != v219)
                    {
                      objc_enumerationMutation(v212);
                    }

                    objc_opt_class();
                    v221 = TSUDynamicCast();
                    isLinked = objc_msgSend_isLinked(v221, v222, v223, v224, v225, v226);

                    if (isLinked)
                    {
                      v233 = objc_msgSend_flowHints(v52, v228, v229, v230, v231, v232);
                      v239 = objc_msgSend_count(v233, v234, v235, v236, v237, v238) == 0;

                      if (v239)
                      {
                        *(*(*(a1 + 56) + 8) + 24) = 0;
                      }

                      goto LABEL_50;
                    }
                  }

                  v218 = objc_msgSend_countByEnumeratingWithState_objects_count_(v212, v228, v229, v230, v231, v232, &v395, v415, 16);
                  if (v218)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_50:
            }

            ++v393;
            ++v394;
          }

          while (v394 != v390);
          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v384, v47, v48, v49, v50, v51, &v407, v418, 16);
          if (v46)
          {
            continue;
          }

          break;
        }

LABEL_60:

        if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v381 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, v29, v30, v31, v32, &v411, v419, 16);
    }

    while (v381);
  }

LABEL_65:

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_msgSend_setSectionHints_(*(*(a1 + 32) + 80), v317, v318, v319, v320, v321, *(a1 + 48));
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (objc_msgSend_sectionIndex(*(a1 + 40), v322, v323, v324, v325, v326) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v332 = *(*(a1 + 32) + 80);
        v333 = objc_msgSend_sectionIndex(*(a1 + 40), v327, v328, v329, v330, v331);
        objc_msgSend_setSectionIndex_(v332, v334, v335, v336, v337, v338, v333);
      }

      if (objc_msgSend_sectionPageIndex(*(a1 + 40), v327, v328, v329, v330, v331) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v344 = *(*(a1 + 32) + 80);
        v345 = objc_msgSend_sectionPageIndex(*(a1 + 40), v339, v340, v341, v342, v343);
        objc_msgSend_setPageIndex_(v344, v346, v347, v348, v349, v350, v345);
      }

      if (objc_msgSend_documentPageIndex(*(a1 + 40), v339, v340, v341, v342, v343) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v356 = *(*(a1 + 32) + 80);
        v357 = objc_msgSend_documentPageIndex(*(a1 + 40), v351, v352, v353, v354, v355);
        objc_msgSend_setDocumentPageIndex_(v356, v358, v359, v360, v361, v362, v357);
      }

      if (objc_msgSend_lastPageCount(*(a1 + 40), v351, v352, v353, v354, v355) != 0x7FFFFFFFFFFFFFFFLL)
      {
        PageCount = objc_msgSend_lastPageCount(*(a1 + 40), v363, v364, v365, v366, v367);
        v370 = *(a1 + 32);
        v369 = (a1 + 32);
        *(v370 + 136) = PageCount;
        v371 = *v369;
        v377 = objc_msgSend_pageHintCount(*(*v369 + 80), v372, v373, v374, v375, v376);
        v378 = *(v371 + 136);
        if (v378 <= v377)
        {
          v378 = v377;
        }

        *(*v369 + 136) = v378;
      }
    }
  }
}

void sub_276016C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_276016FC0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (objc_msgSend_isInsertionPoint(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    v12 = *(a1 + 40);
    v13 = objc_msgSend_insertionCharIndex(*(a1 + 32), v7, v8, v9, v10, v11);
    v19 = objc_msgSend_caretLFAffinity(*(a1 + 32), v14, v15, v16, v17, v18);
    v25 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v12, v20, v21, v22, v23, v24, v13, 0, v19, 1, 0);
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = v25;
      v32 = *(a1 + 48);

      objc_msgSend_addIndex_(v32, v26, v27, v28, v29, v30, v31);
    }
  }

  else if (objc_msgSend_isRange(*(a1 + 32), v7, v8, v9, v10, v11))
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_276017104;
    v40[3] = &unk_27A6A9130;
    v33 = *(a1 + 32);
    v40[4] = *(a1 + 40);
    v42 = *(a1 + 64);
    v39 = *(a1 + 48);
    v34 = v39.n128_u64[0];
    v41 = v39;
    objc_msgSend_enumerateRanges_(v33, v35, v39, v36, v37, v38, v40);
  }
}

uint64_t sub_276017104(uint64_t a1, const char *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  objc_msgSend_p_pageRangeForRange_forcePagination_includingEmptyPages_caretAffinity_leadingCharIndex_outEndIsValid_(*(a1 + 32), a2, a4, a5, a6, a7, a2, a3, *(a1 + 56), 0, 0, 0x7FFFFFFFFFFFFFFFLL, *(a1 + 48));
  v12 = *(a1 + 40);

  return MEMORY[0x2821F9670](v12, sel_addIndexesInRange_, v8, v9, v10, v11);
}

__n128 sub_27601745C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_27601746C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(a1 + 56);
  if (v7 || (v8 = *(a1 + 64), v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v10 = v8 == *(*(a1 + 32) + 248) + *(*(a1 + 32) + 240);
    v9 = 1;
  }

  if ((*(a1 + 88) & 1) != 0 || (v11 = *(a1 + 32), v12 = v11[30], v13 = *(a1 + 48), v12 > v13) || (v14 = v13 + v7, v11[31] + v12 < v13 + v7 || v10) || (objc_msgSend_documentRoot(v11, a2, a3, a4, a5, a6), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v15, v16, v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_length(v21, v22, v23, v24, v25, v26), v21, v15, v14 == v27))
  {
    v28 = *(a1 + 32);
    if (v9)
    {
      v29 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v28, a2, a3, a4, a5, a6, *(a1 + 64), *(a1 + 88), *(a1 + 80), 1, 0);
      v35 = *(*(a1 + 40) + 8);
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = *MEMORY[0x277D81490];
        *(v35 + 48) = *MEMORY[0x277D81490];
      }

      else
      {
        *(v35 + 48) = v29;
        *(v35 + 56) = 1;
      }

      v55 = *(a1 + 72);
      if (v55)
      {
        *v55 = 1;
      }

      v56 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v30, v31, v32, v33, v34, v29, 0, 0);
      v62 = v56;
      if ((*(a1 + 88) & 1) == 0 && objc_msgSend_pageKind(v56, v57, v58, v59, v60, v61) == 1)
      {
        v193 = 0;
        v68 = objc_msgSend_rangeAndChildHints_(v62, v63, v64, v65, v66, v67, &v193);
        v70 = v69;
        v71 = v193;
        v72 = (*(a1 + 32) + 240);
        *v72 = v68;
        v72[1] = v70;
        if (objc_msgSend_count(v71, v73, v74, v75, v76, v77))
        {
          *(*(a1 + 32) + 256) = 0x7FFFFFFFFFFFFFFFLL;
          *(*(a1 + 32) + 240) = *MEMORY[0x277D81490];
        }

        else
        {
          *(*(a1 + 32) + 256) = *(*(*(a1 + 40) + 8) + 48);
        }
      }
    }

    else
    {
      v36 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v28, a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 88), 0, 1, 0);
      v42 = objc_msgSend_documentRoot(*(a1 + 32), v37, v38, v39, v40, v41);
      v48 = objc_msgSend_bodyStorage(v42, v43, v44, v45, v46, v47);
      v54 = v48;
      if (v48)
      {
        objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v48, v49, v50, v51, v52, v53, *(a1 + 56) + *(a1 + 48), 0);
      }

      else
      {
        v192 = 0;
        memset(v191, 0, sizeof(v191));
      }

      if ((TSWPParagraphEnumerator::isFirstParagraph(v191) & 1) == 0)
      {
        TSWPParagraphEnumerator::operator--();
      }

      v78 = objc_alloc(MEMORY[0x277D80E18]);
      v84 = objc_msgSend_documentRoot(*(a1 + 32), v79, v80, v81, v82, v83);
      v90 = objc_msgSend_bodyStorage(v84, v85, v86, v87, v88, v89);
      v91 = TSWPParagraphEnumerator::paragraphTextRange(v191);
      v97 = *(a1 + 56);
      v98 = v97 + *(a1 + 48);
      if (v91 <= v98)
      {
        v99 = v97 + *(a1 + 48);
      }

      else
      {
        v99 = v91;
      }

      if (v91 >= v98)
      {
        v100 = objc_msgSend_initWithStorage_subRange_(v78, v92, v93, v94, v95, v96, v90, v98, v99 - v98);
      }

      else
      {
        v100 = objc_msgSend_initWithStorage_subRange_(v78, v92, v93, v94, v95, v96, v90, v91, v99 - v91);
      }

      v101 = v100;

      v112 = *(a1 + 56) + *(a1 + 48);
      if (objc_msgSend_length(v101, v102, v103, v104, v105, v106))
      {
        v114 = TSWPPreviousCharIndexFromTextSource();
        if (v114 >= *(a1 + 48))
        {
          v125 = objc_msgSend_documentRoot(*(a1 + 32), v113, v115, v116, v117, v118);
          v131 = objc_msgSend_bodyStorage(v125, v126, v127, v128, v129, v130);
          v137 = objc_msgSend_characterAtIndex_(v131, v132, v133, v134, v135, v136, v114);
          v138 = IsParagraphBreakingCharacter();
          if (v137 == 8232)
          {
            v139 = 1;
          }

          else
          {
            v139 = v138;
          }

          if (v139)
          {
            v112 = v114;
          }

          v119 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), v140, v141, v142, v143, v144, v112, *(a1 + 88), v139 ^ 1u, *(a1 + 89), 0);
        }

        else
        {
          v119 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), v113, v115, v116, v117, v118, *(a1 + 48), *(a1 + 88), 0, *(a1 + 89), 0);
        }
      }

      else
      {
        v119 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), v107, v108, v109, v110, v111, v112, *(a1 + 88), 0, *(a1 + 89), 0);
      }

      if (v119 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v119 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v120, v121, v122, v123, v124);
      }

      else
      {
        v145 = *(a1 + 72);
        if (v145)
        {
          *v145 = 1;
        }
      }

      v146 = v119 - v36;
      if (v119 < v36)
      {
        v147 = MEMORY[0x277D81150];
        v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, v121, v122, v123, v124, "[TPPaginatedPageController p_pageRangeForRange:forcePagination:includingEmptyPages:caretAffinity:leadingCharIndex:outEndIsValid:]_block_invoke");
        v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, v150, v151, v152, v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v155, v156, v157, v158, v159, v148, v154, 839, 0, "selection should end after it starts");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161, v162, v163, v164);
      }

      v165 = *(*(a1 + 40) + 8);
      *(v165 + 48) = v36;
      *(v165 + 56) = v146 + 1;
      if (*(*(*(a1 + 40) + 8) + 56) == 1)
      {
        v166 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v120, v121, v122, v123, v124, v36, *(a1 + 89), 0);
        v172 = v166;
        if ((*(a1 + 88) & 1) == 0 && objc_msgSend_pageKind(v166, v167, v168, v169, v170, v171) == 1)
        {
          v190 = 0;
          v178 = objc_msgSend_rangeAndChildHints_(v172, v173, v174, v175, v176, v177, &v190);
          v180 = v179;
          v181 = v190;
          v182 = (*(a1 + 32) + 240);
          *v182 = v178;
          v182[1] = v180;
          if (objc_msgSend_count(v181, v183, v184, v185, v186, v187))
          {
            *(*(a1 + 32) + 256) = 0x7FFFFFFFFFFFFFFFLL;
            *(*(a1 + 32) + 240) = *MEMORY[0x277D81490];
          }

          else
          {
            *(*(a1 + 32) + 256) = *(*(*(a1 + 40) + 8) + 48);
          }
        }
      }

      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(v191);
    }
  }

  else
  {
    v188 = *(*(a1 + 40) + 8);
    *(v188 + 48) = *(*(a1 + 32) + 256);
    *(v188 + 56) = 1;
    v189 = *(a1 + 72);
    if (v189)
    {
      *v189 = 1;
    }
  }
}

void sub_2760179E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_276017BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276017BD8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (objc_msgSend_isInsertionPoint(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    v12 = *(a1 + 40);
    v13 = objc_msgSend_start(*(a1 + 32), v7, v8, v9, v10, v11);
    v19 = objc_msgSend_caretLFAffinity(*(a1 + 32), v14, v15, v16, v17, v18);
    result = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v12, v20, v21, v22, v23, v24, v13, 0, v19, 0, 0);
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v26 = result;
    v27 = 1;
    goto LABEL_10;
  }

  result = objc_msgSend_isRange(*(a1 + 32), v7, v8, v9, v10, v11);
  if (result)
  {
    v33 = *(a1 + 40);
    v34 = objc_msgSend_start(*(a1 + 32), v28, v29, v30, v31, v32);
    v26 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v33, v35, v36, v37, v38, v39, v34, 0, 0, 0, 0);
    v40 = *(a1 + 40);
    v46 = objc_msgSend_end(*(a1 + 32), v41, v42, v43, v44, v45);
    result = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v40, v47, v48, v49, v50, v51, v46, 0, 1, 0, 0);
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = objc_msgSend_documentPageIndex(*(*(a1 + 40) + 80), v52, v53, v54, v55, v56);
    }

    if (v26 != 0x7FFFFFFFFFFFFFFFLL && result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = result - v26 + 1;
LABEL_10:
      v57 = *(*(a1 + 48) + 8);
      *(v57 + 48) = v26;
      *(v57 + 56) = v27;
    }
  }

  return result;
}

void sub_276017DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276017DF8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  v8 = *(*(a1 + 40) + 8);
  *(v8 + 48) = result;
  *(v8 + 56) = v9;
  return result;
}

void sub_276017F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276017F3C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_anchoredRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  v8 = *(*(a1 + 40) + 8);
  *(v8 + 48) = result;
  *(v8 + 56) = v9;
  return result;
}

void sub_276018244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27601825C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_footnoteLayoutRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  v8 = *(*(a1 + 40) + 8);
  *(v8 + 48) = result;
  *(v8 + 56) = v9;
  return result;
}

void sub_27601835C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6, *(a1 + 48)) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "[TPPaginatedPageController pageBeginsWithPaginatedAttachment:]_block_invoke");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v23, v35, v18, 947, 0, "page must be laid out to tell if it starts with a paginated attachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  }

  v36 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v7, v8, v9, v10, v11, *(a1 + 48), 0, 0);
  v34 = objc_msgSend_firstChildHint(v36, v29, v30, v31, v32, v33);

  if (v34)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_276018550(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6, *(a1 + 48)) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "[TPPaginatedPageController pageEndsWithPaginatedAttachment:]_block_invoke");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v23, v35, v18, 962, 0, "page must be laid out to tell if it ends with a paginated attachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  }

  v36 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v7, v8, v9, v10, v11, *(a1 + 48), 0, 0);
  v34 = objc_msgSend_lastChildHint(v36, v29, v30, v31, v32, v33);

  if (v34)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_276018744(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6, *(a1 + 48)) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "[TPPaginatedPageController pageAtIndexHasBody:]_block_invoke");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v23, v34, v18, 977, 0, "page must be laid out to tell if it has a body");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  }

  v35 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v7, v8, v9, v10, v11, *(a1 + 48), 0, 0);
  if (objc_msgSend_pageKind(v35, v29, v30, v31, v32, v33) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t sub_276018938(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 0, *(a1 + 56), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_276018A48(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_pageIndexForAnchoredCharIndex_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_276018BD0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_pageIndexForFootnoteIndex_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276018CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276018D14(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, 0, *(a1 + 56), 0);
  if (v7)
  {
    v13 = 0;
    while (1)
    {
      v33 = v7;
      if (objc_msgSend_sectionIndex(v7, v8, v9, v10, v11, v12) >= *(a1 + 48))
      {
        break;
      }

      ++v13;

      v7 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v14, v15, v16, v17, v18, v13, *(a1 + 56), 0);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v19 = *(*(a1 + 40) + 8);
    *(v19 + 48) = v13;
    *(v19 + 56) = 1;
  }

LABEL_7:
  v20 = *(*(*(a1 + 40) + 8) + 48);
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v8, v9, v10, v11, v12, v20 + 1, *(a1 + 56), 0);
    if (v21)
    {
      v27 = v20 + 2;
      while (1)
      {
        v34 = v21;
        if (objc_msgSend_sectionIndex(v21, v22, v23, v24, v25, v26) > *(a1 + 48))
        {
          break;
        }

        ++*(*(*(a1 + 40) + 8) + 56);

        v21 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v28, v29, v30, v31, v32, v27, *(a1 + 56), 0);
        ++v27;
        if (!v21)
        {
          goto LABEL_15;
        }
      }

      v21 = v34;
LABEL_15:
    }
  }
}

void sub_276018F44(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  if (v7)
  {
    v13 = v7;
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_sectionIndex(v7, v8, v9, v10, v11, v12);
    v7 = v13;
  }
}

void sub_2760190AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760190C4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  if (v7)
  {
    v52 = v7;
    v14 = objc_msgSend_documentPageRange(v7, v8, v9, v10, v11, v12);
    v19 = v13;
    v7 = v52;
    if (v13)
    {
      v20 = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v13, v15, v16, v17, v18, v14, *(a1 + 56), 0);
      v22 = v21;
      v28 = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v21, v23, v24, v25, v26, &v19[v14 - 1], *(a1 + 56), 0);
      v33 = v27;
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v29, v30, v31, v32, "[TPPaginatedPageController sectionBodyRangeForPageIndex:forcePagination:]_block_invoke");
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 1097, 0, "Not laid out through end of section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
      }

      v54.location = v20;
      v54.length = v22;
      v55.location = v28;
      v55.length = v33;
      *(*(*(a1 + 40) + 8) + 48) = NSUnionRange(v54, v55);
      v7 = v52;
    }
  }
}

void sub_276019328(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0);
  if (v7)
  {
    v13 = v7;
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) - objc_msgSend_documentPageRange(v7, v8, v9, v10, v11, v12);
    v7 = v13;
  }
}

void sub_276019494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760194AC(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 64), 0);
  if (v7)
  {
    v20 = v7;
    v13 = objc_msgSend_documentPageRange(v7, v8, v9, v10, v11, v12);
    v19 = *(*(a1 + 40) + 8);
    *(v19 + 48) = v13;
    *(v19 + 56) = v14;
    v7 = v20;
    if (*(a1 + 56))
    {
      **(a1 + 56) = objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(*(*(a1 + 32) + 80), v14, v15, v16, v17, v18, *(*(*(a1 + 40) + 8) + 56) + *(*(*(a1 + 40) + 8) + 48));
      v7 = v20;
    }
  }
}

void sub_27601968C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760196AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2760196C4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0);
  v43 = v7;
  if (v7)
  {
    v13 = objc_msgSend_info(v7, v8, v9, v10, v11, v12);

    if (!v13)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPPaginatedPageController pageInfoForPageIndex:]_block_invoke");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 1147, 0, "cached page layout should have an info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_info(v43, v14, v15, v16, v17, v18);
    v38 = *(*(a1 + 40) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    v7 = v43;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v40 = objc_msgSend_p_pageInfoForPageAtIndex_(*(a1 + 32), v8, v9, v10, v11, v12, *(a1 + 48));
    v41 = *(*(a1 + 40) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    v7 = v43;
  }
}

void sub_276019934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276019954(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_count(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), v14, 0, v15, v16, v17, 0);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, v23, &v46, v50, 16);
    if (v25)
    {
      v30 = *v47;
      do
      {
        v31 = 0;
        do
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(v18);
          }

          v32 = *(*(*(a1 + 40) + 8) + 40);
          v33 = MEMORY[0x277CCABB0];
          v34 = objc_msgSend_pageCount(*(*(&v46 + 1) + 8 * v31), v24, v26, v27, v28, v29);
          v40 = objc_msgSend_numberWithUnsignedInteger_(v33, v35, v36, v37, v38, v39, v34);
          objc_msgSend_addObject_(v32, v41, v42, v43, v44, v45, v40);

          ++v31;
        }

        while (v25 != v31);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, v26, v27, v28, v29, &v46, v50, 16);
      }

      while (v25);
    }
  }
}

void sub_276019C14(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v149 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 56), 0, 0, *(a1 + 64), 0);
  v13 = objc_msgSend_orderedSelections(*(a1 + 40), v8, v9, v10, v11, v12);
  v19 = objc_msgSend_indexOfObjectPassingTest_(v13, v14, v15, v16, v17, v18, &unk_2885012D8);

  objc_opt_class();
  v25 = objc_msgSend_selectionAtIndex_(*(a1 + 40), v20, v21, v22, v23, v24, v19);
  v140 = TSUCheckedDynamicCast();

  objc_opt_class();
  v31 = objc_msgSend_documentRoot(*(a1 + 32), v26, v27, v28, v29, v30);
  v37 = objc_msgSend_bodyStorage(v31, v32, v33, v34, v35, v36);
  v43 = objc_msgSend_attachmentAtCharIndex_(v37, v38, v39, v40, v41, v42, *(a1 + 56));
  v141 = TSUCheckedDynamicCast();

  v49 = objc_msgSend_infos(v140, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_drawable(v141, v50, v51, v52, v53, v54);
  LOBYTE(v37) = objc_msgSend_containsObject_(v49, v56, v57, v58, v59, v60, v55);

  if ((v37 & 1) == 0)
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPPaginatedPageController pageIndicesForPartitionableAttachmentAtBodyCharIndex:selectionPath:forcePagination:]_block_invoke");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v74, v75, v76, v77, v78, v67, v73, 1189, 0, "Selection path %@ doesn't contain attachment at %lu", *(a1 + 40), *(a1 + 56));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82, v83);
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v84 = 0;
  }

  else
  {
    v84 = v7;
  }

  while (1)
  {
    v85 = v84;
    v86 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v61, v62, v63, v64, v65);
    v92 = v86;
    if (!v86)
    {
      break;
    }

    v147 = 0;
    v93 = objc_msgSend_rangeAndChildHints_(v86, v87, v88, v89, v90, v91, &v147);
    v95 = v94;
    v97 = v147;
    v102 = *(a1 + 56);
    if (v102 < v93)
    {
      goto LABEL_28;
    }

    if (v102 <= v93 + v95 && (objc_msgSend_pageKind(v92, v96, v98, v99, v100, v101) == 1 || v97))
    {
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      obj = v97;
      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v103, v104, v105, v106, v107, &v143, v148, 16);
      if (v108)
      {
        v109 = *v144;
        while (2)
        {
          for (i = 0; i != v108; ++i)
          {
            if (*v144 != v109)
            {
              objc_enumerationMutation(obj);
            }

            v111 = TSUProtocolCast();
            if (objc_msgSend_overlapsWithSelectionPath_(v111, v112, v113, v114, v115, v116, *(a1 + 40), &unk_288546710))
            {
              objc_msgSend_addIndex_(*(a1 + 48), v117, v118, v119, v120, v121, v85);

              goto LABEL_21;
            }
          }

          v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v122, v123, v124, v125, v126, &v143, v148, 16);
          if (v108)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v132 = *(a1 + 56);
      if (v132 < v93 + v95)
      {
        v133 = v132 >= v93;
        v134 = v132 - v93;
        if (v133 && v134 < v95 && !objc_msgSend_count(*(a1 + 48), v127, v128, v129, v130, v131))
        {
          objc_msgSend_addIndex_(*(a1 + 48), v135, v136, v137, v138, v139, v85);
        }

LABEL_28:

        break;
      }
    }

    v84 = v85 + 1;
  }
}

uint64_t sub_27601A0A4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_27601A1F0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v224 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = objc_msgSend_withPageLayoutRecursionCount(v7, a2, a3, a4, a5, a6);
  objc_msgSend_setWithPageLayoutRecursionCount_(v7, v9, v10, v11, v12, v13, v8 + 1);
  v14 = *(a1 + 56);
  v20 = objc_msgSend_documentRoot(*(a1 + 32), v15, v16, v17, v18, v19);
  isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v21, v22, v23, v24, v25, v14, v20);

  v32 = *(a1 + 56);
  if (v32 >= 0x7FFFFFFFFFFFFFFFLL && (v33 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v41, v42, v43, v44, v45, v34, v40, 1247, 0, "Illegal page index: %lu", *(a1 + 56)), v40, v34, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49, v50), v32 = *(a1 + 56), v32 > 0x7FFFFFFFFFFFFFFELL))
  {
    if ((isAlternativePageIndex_documentRoot & 1) == 0)
    {
      v51 = *(a1 + 32);
      v52 = v51[20];
      goto LABEL_19;
    }
  }

  else
  {
    v51 = *(a1 + 32);
    v52 = v51[20];
    if (!((v52 == v32) | isAlternativePageIndex_documentRoot & 1))
    {
LABEL_19:
      if (v52 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v107 = MEMORY[0x277D81150];
        v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke");
        v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, v110, v111, v112, v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v115, v116, v117, v118, v119, v108, v114, 1280, 0, "Laying out page index %lu while inside didLayOutPageIndex: %lu", *(a1 + 56), *(*(a1 + 32) + 160));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123, v124);
        v51 = *(a1 + 32);
      }

      objc_msgSend_setAllowParagraphMetrics_(v51, v27, v28, v29, v30, v31, 0);
      v130 = 0;
      v131 = 1;
      v132 = MEMORY[0x277D81408];
      while (1)
      {
        v133 = v131;
        v134 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v125, v126, v127, v128, v129);
        v135 = *(a1 + 56);
        if (v134 > v135)
        {
          break;
        }

        if (v130)
        {
          if (*v132 != -1)
          {
            sub_276038440();
          }

          v135 = *(a1 + 56);
        }

        objc_msgSend_p_paginateThroughPageIndex_forLayoutController_clearOffscreenInfos_(*(a1 + 32), v125, v126, v127, v128, v129, v135, *(a1 + 40), 0);
        v131 = 0;
        v130 = 1;
        if ((v133 & 1) == 0)
        {
          v135 = *(a1 + 56);
          break;
        }
      }

      objc_msgSend_p_withPageLayoutAtIndex_preferredLayoutController_executeBlock_(*(a1 + 32), v125, v126, v127, v128, v129, v135, *(a1 + 40), *(a1 + 48));
      objc_msgSend_setAllowParagraphMetrics_(*(a1 + 32), v136, v137, v138, v139, v140, 1);
      if (objc_msgSend_withPageLayoutRecursionCount(*(a1 + 32), v141, v142, v143, v144, v145) < 1)
      {
        v146 = objc_msgSend_canvas(*(*(a1 + 32) + 104), v102, v103, v104, v105, v106);
        objc_msgSend_setInfosToDisplay_(v146, v147, v148, v149, v150, v151, 0);
      }

      goto LABEL_36;
    }
  }

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v53 = objc_msgSend_rootLayout(*(a1 + 40), v27, 0, v29, v30, v31);
  v59 = objc_msgSend_children(v53, v54, v55, v56, v57, v58);

  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, v61, v62, v63, v64, &v219, v223, 16);
  if (v65)
  {
    v66 = *v220;
    while (2)
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v220 != v66)
        {
          objc_enumerationMutation(v59);
        }

        objc_opt_class();
        v68 = TSUCheckedDynamicCast();
        v74 = v68;
        if (v68 && objc_msgSend_pageIndex(v68, v69, v70, v71, v72, v73) == *(a1 + 56))
        {
          (*(*(a1 + 48) + 16))();

          goto LABEL_36;
        }
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v75, v76, v77, v78, v79, &v219, v223, 16);
      if (v65)
      {
        continue;
      }

      break;
    }
  }

  v80 = *(a1 + 56);
  v86 = objc_msgSend_documentRoot(*(a1 + 32), v81, v82, v83, v84, v85);
  if (objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v87, v88, v89, v90, v91, v80, v86))
  {
  }

  else
  {
    isDocSetupPageIndex = objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v92, v93, v94, v95, v96, *(a1 + 56));

    if ((isDocSetupPageIndex & 1) == 0)
    {
      v193 = MEMORY[0x277D81150];
      v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v98, v99, v100, v101, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke");
      v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, v196, v197, v198, v199, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v201, v202, v203, v204, v205, v194, v200, 1276, 0, "Failed to find page that was just laid out");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v206, v207, v208, v209, v210);
      goto LABEL_36;
    }
  }

  v153 = *(a1 + 32);
  if (v153[20] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v154 = MEMORY[0x277D81150];
    v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v98, v99, v100, v101, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke");
    v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, v157, v158, v159, v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v154, v162, v163, v164, v165, v166, v155, v161, 1263, 0, "Laying out page index %lu while inside didLayOutPageIndex: %lu", *(a1 + 56), *(*(a1 + 32) + 160));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v167, v168, v169, v170, v171);
    v153 = *(a1 + 32);
  }

  objc_msgSend_setAllowParagraphMetrics_(v153, v97, v98, v99, v100, v101, 0);
  objc_msgSend_p_withPageLayoutAtIndex_preferredLayoutController_executeBlock_(*(a1 + 32), v172, v173, v174, v175, v176, *(a1 + 56), *(a1 + 40), *(a1 + 48));
  objc_msgSend_setAllowParagraphMetrics_(*(a1 + 32), v177, v178, v179, v180, v181, 1);
  v187 = objc_msgSend_canvas(*(*(a1 + 32) + 104), v182, v183, v184, v185, v186);
  objc_msgSend_setInfosToDisplay_(v187, v188, v189, v190, v191, v192, 0);

LABEL_36:
  v211 = *(a1 + 32);
  v212 = objc_msgSend_withPageLayoutRecursionCount(v211, v102, v103, v104, v105, v106);
  return objc_msgSend_setWithPageLayoutRecursionCount_(v211, v213, v214, v215, v216, v217, v212 - 1);
}

void sub_27601A844()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_27601A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601AA24(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = objc_msgSend_p_pageIndicesForFlow_withSelection_forcePagination_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 40), *(a1 + 48), 0);
  *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_count(v12, v7, v8, v9, v10, v11) != 0;
}

void sub_27601AB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27601AB74(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_isPaginationComplete(*(a1 + 32), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_27601AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601B464(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v47 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isPaginating(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = *(a1 + 40);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, v12, &v42, v46, 16);
    if (v13)
    {
      v14 = *v43;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v7);
          }

          objc_opt_class();
          v16 = TSUDynamicCast();
          canAnchor = objc_msgSend_canAnchor(v16, v17, v18, v19, v20, v21);

          if ((canAnchor & 1) == 0)
          {
            *(*(*(a1 + 48) + 8) + 24) = 0;
            goto LABEL_13;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v23, v24, v25, v26, v27, &v42, v46, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v28 = *(a1 + 56);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_27601B67C;
      v38[3] = &unk_27A6A9330;
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);
      v32 = *(a1 + 32);
      v39 = v30;
      v40 = v32;
      v41 = v31;
      objc_msgSend_withPageLayoutAtIndex_executeBlock_(v29, v33, v34, v35, v36, v37, v28, v38);
    }
  }
}

void sub_27601B67C(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, v9, &v18, v22, 16);
  if (v11)
  {
    v16 = *v19;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v19 != v16)
      {
        objc_enumerationMutation(v4);
      }

      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_p_canAnchorDrawable_toPageLayout_(*(a1 + 40), v10, v12, v13, v14, v15, *(*(&v18 + 1) + 8 * v17), v3, v18);
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v11 == ++v17)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, v12, v13, v14, v15, &v18, v22, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_27601B928(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(*(a1 + 32) + 176);
  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D81258]);
    v9 = *(a1 + 32);
    v10 = *(v9 + 176);
    *(v9 + 176) = v8;

    v7 = *(*(a1 + 32) + 176);
  }

  v11 = *(a1 + 40);

  return objc_msgSend_addObject_(v7, a2, a3, a4, a5, a6, v11);
}

void sub_27601BD48(uint64_t a1)
{
  v264 = *MEMORY[0x277D85DE8];
  v254 = *(*(a1 + 32) + 96);
  v7 = objc_msgSend_dirtyRanges(v254, v2, v3, v4, v5, v6);
  v255 = objc_msgSend_copy(v7, v8, v9, v10, v11, v12);

  *(*(a1 + 32) + 153) = 1;
  PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(*(a1 + 32), v13, v14, v15, v16, v17);
  v24 = objc_msgSend_documentRoot(*(a1 + 32), v19, v20, v21, v22, v23);
  v30 = objc_msgSend_settings(v24, v25, v26, v27, v28, v29);
  v253 = PageIndexNeedingLayout;
  hasBody = objc_msgSend_hasBody(v30, v31, v32, v33, v34, v35);

  v42 = 0;
  v43 = 0;
  while (v42 < objc_msgSend_count(v255, v37, v38, v39, v40, v41))
  {
    v260 = 0;
    v261 = 0;
    v262 = 0;
    if (v255)
    {
      objc_msgSend_dirtyRangeAtIndex_(v255, v44, v45, v46, v47, v48, v42);
      v49 = v260;
      if (((v260 != 0) & hasBody) == 1)
      {
        v50 = objc_msgSend_documentRoot(*(a1 + 32), v44, v45, v46, v47, v48);
        v56 = objc_msgSend_bodyStorage(v50, v51, v52, v53, v54, v55);
        v57 = v260 - 1;
        v63 = objc_msgSend_attachmentAtCharIndex_(v56, v58, v59, v60, v61, v62, v260 - 1);

        if (v63 && (objc_msgSend_isPartitioned(v63, v64, v65, v66, v67, v68) & 1) != 0)
        {
          v57 = v260;
        }
      }

      else
      {
        v57 = v260;
      }
    }

    else
    {
      v49 = 0;
      v57 = 0;
    }

    v69 = objc_msgSend_p_pageHintIndexForCharIndex_(*(a1 + 32), v44, v45, v46, v47, v48, v57 - v43);
    v75 = objc_msgSend_p_pageHintIndexForAnchoredCharIndex_(*(a1 + 32), v70, v71, v72, v73, v74, v49 - v43);
    if (v75 >= v69)
    {
      v76 = v69;
    }

    else
    {
      v76 = v75;
    }

    if (v76 != 0x7FFFFFFFFFFFFFFFLL || (ValidCharIndex = objc_msgSend_p_lastValidCharIndex(*(a1 + 32), v37, v38, v39, v40, v41), ValidCharIndex != 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend_documentRoot(*(a1 + 32), v37, v38, v39, v40, v41), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v78, v79, v80, v81, v82, v83), v84 = objc_claimAutoreleasedReturnValue(), v90 = objc_msgSend_length(v84, v85, v86, v87, v88, v89), v84, v78, v260 == ValidCharIndex) && v261 == v90 - ValidCharIndex && (v91 = *(a1 + 32), v92 = objc_msgSend_documentPageIndex(v91[10], v37, v38, v39, v40, v41), v76 = objc_msgSend_p_textPageIndexPrecedingPageIndex_(v91, v93, v94, v95, v96, v97, v92), v76 != 0x7FFFFFFFFFFFFFFFLL))
    {
      if (hasBody)
      {
        v98 = 0;
      }

      else
      {
        v98 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v37, v38, v39, v40, v41, v76, 0, 1);
      }

      objc_msgSend_p_setNeedsLayoutOnPageIndex_(*(a1 + 32), v37, v38, v39, v40, v41, v76);
      if (v98)
      {
        v99 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), v37, v38, v39, v40, v41);
        v105 = objc_msgSend_count(v99, v100, v101, v102, v103, v104);

        v111 = objc_msgSend_pageIndex(v98, v106, v107, v108, v109, v110);
        v118 = objc_msgSend_sectionIndex(v98, v112, v113, v114, v115, v116);
        if (v118 < v105)
        {
          v123 = v111 + 1;
          v124 = v76 + 1;
          do
          {
            v125 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), v117, v119, v120, v121, v122);
            v131 = objc_msgSend_objectAtIndexedSubscript_(v125, v126, v127, v128, v129, v130, v118);

            v137 = objc_msgSend_pageHints(v131, v132, v133, v134, v135, v136);
            v143 = objc_msgSend_count(v137, v138, v139, v140, v141, v142);

            v149 = v143 > v123;
            v150 = v143 - v123;
            if (v149)
            {
              do
              {
                objc_msgSend_p_setNeedsLayoutOnPageIndex_(*(a1 + 32), v144, v145, v146, v147, v148, v124++);
                --v150;
              }

              while (v150);
            }

            v123 = 0;
            ++v118;
          }

          while (v118 != v105);
        }

        break;
      }
    }

    v43 += v262;
    ++v42;
  }

  objc_msgSend_p_destroyBodyLayoutState(*(a1 + 32), v44, v45, v46, v47, v48);
  objc_msgSend_setBodyCharIndex_(*(*(a1 + 32) + 80), v151, v152, v153, v154, v155, 0x7FFFFFFFFFFFFFFFLL);
  objc_msgSend_setFootnoteIndex_(*(*(a1 + 32) + 80), v156, v157, v158, v159, v160, 0x7FFFFFFFFFFFFFFFLL);
  if (objc_msgSend_p_isPaginationComplete(*(a1 + 32), v161, v162, v163, v164, v165))
  {
    v171 = MEMORY[0x277D81150];
    v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, v170, "[TPPaginatedPageController p_processBodyLayoutInvalidation]_block_invoke");
    v178 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, v174, v175, v176, v177, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v179, v180, v181, v182, v183, v172, v178, 2094, 0, "layout should not be complete after the layout manager claims to need layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v184, v185, v186, v187, v188);
  }

  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v189 = *(*(a1 + 32) + 176);
  v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v190, v191, v192, v193, v194, &v256, v263, 16);
  if (v195)
  {
    v196 = *v257;
    isBodyTextPaginationCoherentForPageController_atPageIndex = 1;
    do
    {
      v198 = 0;
      v199 = isBodyTextPaginationCoherentForPageController_atPageIndex;
      do
      {
        if (*v257 != v196)
        {
          objc_enumerationMutation(v189);
        }

        v201 = TSUProtocolCast();
        isBodyTextPaginationCoherentForPageController_atPageIndex = (v201 == 0) & v199;
        if (v201 && ((v199 ^ 1) & 1) == 0)
        {
          v206 = *(a1 + 32);
          v207 = objc_msgSend_documentPageIndex(*(v206 + 80), v200, v202, v203, v204, v205, &unk_288546998);
          isBodyTextPaginationCoherentForPageController_atPageIndex = objc_msgSend_isBodyTextPaginationCoherentForPageController_atPageIndex_(v201, v208, v209, v210, v211, v212, v206, v207);
        }

        ++v198;
        v199 = isBodyTextPaginationCoherentForPageController_atPageIndex;
      }

      while (v195 != v198);
      v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v213, v214, v215, v216, v217, &v256, v263, 16);
    }

    while (v195);
  }

  else
  {
    isBodyTextPaginationCoherentForPageController_atPageIndex = 1;
  }

  if (v253)
  {
    v223 = objc_msgSend_backgroundPaginationController(*(a1 + 32), v218, v219, v220, v221, v222);
    isBackgroundPaginationSuspended = objc_msgSend_isBackgroundPaginationSuspended(v223, v224, v225, v226, v227, v228);

    if (((isBackgroundPaginationSuspended | isBodyTextPaginationCoherentForPageController_atPageIndex) & 1) == 0)
    {
      v235 = MEMORY[0x277D81150];
      v236 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v230, v231, v232, v233, v234, "[TPPaginatedPageController p_processBodyLayoutInvalidation]_block_invoke");
      v242 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v237, v238, v239, v240, v241, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v235, v243, v244, v245, v246, v247, v236, v242, 2109, 0, "canvas view should need layout after the layout manager claims to need layout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v248, v249, v250, v251, v252);
    }
  }
}

void sub_27601CB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_27601CB8C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 56) - 1, 0, 1);
  if (v7)
  {
    v56 = v7;
    v13 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v7, v8, v9, v10, v11, v7);
    if (!v13)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, v17, "[TPPaginatedPageController pageOriginForPageIndex:allowAfterPaginationPoint:]_block_invoke");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v45, v46, v47, v48, v49, v38, v44, 2185, 0, "invalid nil value for '%{public}s'", "previousPageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53, v54);
LABEL_13:

      v7 = v56;
      goto LABEL_14;
    }

    isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(*(a1 + 32), v12, v14, v15, v16, v17);
    v24 = objc_msgSend_documentRoot(*(a1 + 32), v19, v20, v21, v22, v23);
    v30 = objc_msgSend_writingDirection(v24, v25, v26, v27, v28, v29);

    if (v30 == 1)
    {
      v36 = objc_msgSend_pageColumn(v13, v31, v32, v33, v34, v35) != 1;
    }

    else
    {
      if (!isPageLayoutRightToLeft)
      {
LABEL_9:
        if (*(*(*(a1 + 40) + 8) + 24) == isPageLayoutRightToLeft)
        {
          v55 = objc_msgSend_pageRow(v13, v31, v32, v33, v34, v35) + 1;
        }

        else
        {
          v55 = objc_msgSend_pageRow(v13, v31, v32, v33, v34, v35);
        }

        *(*(*(a1 + 48) + 8) + 24) = v55;
        goto LABEL_13;
      }

      v36 = objc_msgSend_pageColumn(v13, v31, v32, v33, v34, v35) == 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v36;
    goto LABEL_9;
  }

LABEL_14:
}

void sub_27601CF18(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = objc_msgSend_i_pageHintForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_pageKind(v12, v7, v8, v9, v10, v11);
}

void sub_27601D2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601D310(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_pageCount(v7, a2, a3, a4, a5, a6);
  v15 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(v7, v9, v10, v11, v12, v13, v8 - 1, 0, 1);
  v20 = *(a1 + 32);
  if (v15)
  {
    objc_msgSend_p_pageHintForPageIndexPath_(v20, v14, v16, v17, v18, v19, v15);
  }

  else
  {
    objc_msgSend_p_lastValidPageHint(v20, v14, v16, v17, v18, v19);
  }
  v48 = ;
  if (v48)
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_pageRow(v48, v21, v22, v23, v24, v25) + 1;
    v26 = *(a1 + 32);
    v27 = *(*(*(a1 + 40) + 8) + 24);
    if (v27 != *(v26 + 224))
    {
      *(v26 + 224) = v27;
    }
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "[TPPaginatedPageController pageHeightCountForPageViewState:]_block_invoke");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v36, v37, v38, v39, v40, v29, v35, 2327, 0, "invalid nil value for '%{public}s'", "lastUsablePageHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44, v45);
  }

  v46 = *(*(a1 + 40) + 8);
  if (!*(v46 + 24))
  {
    LODWORD(v47) = *(*(a1 + 32) + 224);
    if (v47 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v47;
    }

    *(v46 + 24) = v47;
  }
}

void sub_27601D694(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v31 = *MEMORY[0x277D85DE8];
  objc_msgSend_verticalPageSeparation(*(a1 + 32), a2, a3, a4, a5, a6);
  *(*(a1 + 32) + 216) = v7;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = objc_msgSend_pageLayouts(*(*(a1 + 32) + 72), v8, 0, v9, v10, v11, 0);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v26, v30, 16);
  if (v19)
  {
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_invalidatePosition(*(*(&v26 + 1) + 8 * v25++), v18, v20, v21, v22, v23);
      }

      while (v19 != v25);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v20, v21, v22, v23, &v26, v30, 16);
    }

    while (v19);
  }
}

void sub_27601DB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601DBF4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 1);
  if (v7)
  {
    v37 = v7;
    v12 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v7, v8, v9, v10, v11, v7);
    v18 = v12;
    if (v12)
    {
      *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_pageColumn(v12, v13, v14, v15, v16, v17);
    }

    else
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "[TPPaginatedPageController adjacentPageIndexForPageIndex:]_block_invoke");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 2425, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
    }

    v7 = v37;
  }
}

void sub_27601DF98(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_27601E198(uint64_t a1, void *a2, _BYTE *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v66 = a2;
  v8 = objc_msgSend_children(v66, v4, 0, v5, v6, v7);
  obj = v8;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, v13, &v68, v72, 16);
  if (v14)
  {
    v15 = *v69;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v69 != v15)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v17 = TSUDynamicCast();
        objc_opt_class();
        v23 = objc_msgSend_info(v17, v18, v19, v20, v21, v22);
        v24 = TSUDynamicCast();

        if (v24)
        {
          v30 = *(a1 + 32);
          v31 = objc_msgSend_objectUUID(v24, v25, v26, v27, v28, v29);
          LODWORD(v30) = objc_msgSend_containsObject_(v30, v32, v33, v34, v35, v36, v31);

          if (v30)
          {
            v47 = *(a1 + 40);
            v48 = objc_msgSend_info(v66, v37, v38, v39, v40, v41);
            v54 = objc_msgSend_pageIndex(v48, v49, v50, v51, v52, v53);
            objc_msgSend_addIndex_(v47, v55, v56, v57, v58, v59, v54);

            if (objc_msgSend_count(*(a1 + 32), v60, v61, v62, v63, v64) == 1)
            {
              *a3 = 1;
            }

            v8 = obj;
            goto LABEL_14;
          }
        }
      }

      v8 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, v43, v44, v45, v46, &v68, v72, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

void sub_27601ED74(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 32);
  v24 = objc_msgSend_userInfo(*(a1 + 40), a2, a3, a4, a5, a6);
  v12 = objc_msgSend_objectForKeyedSubscript_(v24, v7, v8, v9, v10, v11, @"resetMetricsCache");
  v18 = objc_msgSend_BOOLValue(v12, v13, v14, v15, v16, v17);
  objc_msgSend_p_forceRestartPaginationAndResetMetricsCache_(v6, v19, v20, v21, v22, v23, v18);
}

void sub_276020EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v13 = v10;

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_276020F54(void *a1, void *a2, double a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, _BYTE *a8)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = objc_msgSend_pageHints(a2, a2, 0, a4, a5, a6, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v29, v33, 16);
  if (v17)
  {
    v22 = *v30;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v10);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        if (objc_msgSend_pageKind(v24, v16, v18, v19, v20, v21) == 1)
        {
          v25 = objc_msgSend_range(v24, v16, v18, v19, v20, v21);
          v26 = a1[6];
          if (v26 < v25)
          {
            goto LABEL_16;
          }

          v27 = v26 - v25;
          if (!v27 || v27 < v16)
          {
            *(*(a1[4] + 8) + 24) = 1;
LABEL_16:
            *a8 = 1;
            goto LABEL_17;
          }
        }

        ++*(*(a1[5] + 8) + 24);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v29, v33, 16);
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

void sub_276021218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_276021260(void *a1, void *a2, double a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, _BYTE *a8)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = objc_msgSend_pageHints(a2, a2, 0, a4, a5, a6, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v29, v33, 16);
  if (v17)
  {
    v22 = *v30;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v10);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        if (objc_msgSend_pageKind(v24, v16, v18, v19, v20, v21) == 1)
        {
          v25 = objc_msgSend_anchoredRange(v24, v16, v18, v19, v20, v21);
          v26 = a1[6];
          if (v26 < v25)
          {
            goto LABEL_16;
          }

          v27 = v26 - v25;
          if (!v27 || v27 < v16)
          {
            *(*(a1[4] + 8) + 24) = 1;
LABEL_16:
            *a8 = 1;
            goto LABEL_17;
          }
        }

        ++*(*(a1[5] + 8) + 24);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v29, v33, 16);
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

void sub_27602182C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 32);
  v12 = objc_msgSend_pageInfoForPageIndex_(*(a1 + 40), a2, a3, a4, a5, a6, a2);
  objc_msgSend_addObject_(v6, v7, v8, v9, v10, v11);
}

void sub_276021F78(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = objc_msgSend_pageInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, a2);
  objc_msgSend_addObject_(*(a1 + 40), v7, v8, v9, v10, v11);
}

void sub_276022CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v32 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_276022DC8(uint64_t a1, void *a2)
{
  v70 = a2;
  v8 = objc_msgSend_pageIndex(v70, v3, v4, v5, v6, v7);
  if (v8 != objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v9, v10, v11, v12, v13))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]_block_invoke");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    v32 = objc_msgSend_pageIndex(v70, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v33, v34, v35, v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v39, v40, v41, v42, v43, v20, v26, 4312, 0, "Page to be laid out doesn't match pagination state: %lu vs %lu", v32, v38);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
  }

  objc_msgSend_p_layOutIntoPageLayout_outDidSync_(*(a1 + 32), v14, v15, v16, v17, v18, v70, *(*(a1 + 40) + 8) + 24);
  v49 = MEMORY[0x277D80DC0];
  v55 = objc_msgSend_bodyLayout(v70, v50, v51, v52, v53, v54);
  v61 = objc_msgSend_columns(v55, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_rangeOfColumns_(v49, v62, v63, v64, v65, v66, v61);
  v68 = *(*(a1 + 48) + 8);
  *(v68 + 48) = v67;
  *(v68 + 56) = v69;
}

void sub_276023F90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  if ((objc_msgSend_hasHiddenTextAtCharIndex_(*(a1 + 32), v6, v7, v8, v9, v10, a4) & 1) == 0)
  {
    v16 = *(a1 + 40);
    v17 = objc_msgSend_containedStorage(v23, v11, v12, v13, v14, v15);
    objc_msgSend_addFootnoteReferenceStorage_(v16, v18, v19, v20, v21, v22, v17);
  }
}

BOOL sub_27602402C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = MEMORY[0x277D80DC0];
  v8 = objc_msgSend_columns(*(a1 + 32), a2, a3, a4, a5, a6);
  v14 = objc_msgSend_rangeOfColumns_(v7, v9, v10, v11, v12, v13, v8);
  v16 = v15;

  v22 = objc_msgSend_columns(*(a1 + 32), v17, v18, v19, v20, v21);
  v28 = objc_msgSend_lastObject(v22, v23, v24, v25, v26, v27);
  if ((objc_msgSend_layoutResultFlags(v28, v29, v30, v31, v32, v33) & 0x800) != 0)
  {
    v51 = 1;
  }

  else
  {
    v39 = objc_msgSend_documentRoot(*(a1 + 40), v34, v35, v36, v37, v38);
    v45 = objc_msgSend_bodyStorage(v39, v40, v41, v42, v43, v44);
    v51 = v14 + v16 == objc_msgSend_length(v45, v46, v47, v48, v49, v50);
  }

  return v51;
}

void sub_276026C10(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v97 = *MEMORY[0x277D85DE8];
  isPaginationComplete = objc_msgSend_p_isPaginationComplete(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v8, v9, v10, v11, v12);
  v14 = v13;
  v77 = isPaginationComplete;
  if (isPaginationComplete)
  {
    v15 = *(a1 + 32);
  }

  else
  {
    v14 = v13 + 1;
    v15 = *(a1 + 32);
    if ((v13 + 1) <= *(v15 + 136))
    {
      goto LABEL_29;
    }
  }

  *(v15 + 136) = v14;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v16 = *(*(a1 + 32) + 176);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, v21, &v90, v96, 16);
  if (v22)
  {
    v23 = *v91;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v91 != v23)
        {
          objc_enumerationMutation(v16);
        }

        v25 = TSUProtocolCast();
        objc_msgSend_canvasSizeWillChangeForPageController_(v25, v26, v27, v28, v29, v30, *(a1 + 32), &unk_288546998);
        v31 = TSUProtocolCast();
        objc_msgSend_pageCountDidChangeForPageController_(v31, v32, v33, v34, v35, v36, *(a1 + 32), &unk_2885469F8);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v37, v38, v39, v40, v41, &v90, v96, 16);
    }

    while (v22);
  }

  if (v77)
  {
    v42 = *(a1 + 32);
    v43 = *(v42 + 144);
    if (v14 != v43)
    {
      v44 = v14 > v43;
      *(v42 + 144) = v14;
      objc_initWeak(&location, *(a1 + 32));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276027058;
      block[3] = &unk_27A6A9510;
      objc_copyWeak(&v87, &location);
      v88 = v44;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v49 = objc_msgSend_pageLayouts(*(*(a1 + 32) + 72), v45, 0, v46, v47, v48);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, v51, v52, v53, v54, &v82, v95, 16);
      if (v56)
      {
        v61 = *v83;
        do
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v83 != v61)
            {
              objc_enumerationMutation(v49);
            }

            objc_msgSend_invalidateLayoutsForPageCountChange(*(*(&v82 + 1) + 8 * j), v55, v57, v58, v59, v60);
          }

          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v55, v57, v58, v59, v60, &v82, v95, 16);
        }

        while (v56);
      }

      objc_destroyWeak(&v87);
      objc_destroyWeak(&location);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v63 = *(*(a1 + 32) + 176);
    v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, v65, v66, v67, v68, &v78, v94, 16);
    if (v70)
    {
      v75 = *v79;
      do
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v79 != v75)
          {
            objc_enumerationMutation(v63);
          }

          objc_msgSend_paginationCompletedForPageController_(*(*(&v78 + 1) + 8 * k), v69, v71, v72, v73, v74, *(a1 + 32));
        }

        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v69, v71, v72, v73, v74, &v78, v94, 16);
      }

      while (v70);
    }
  }

LABEL_29:
  *(*(a1 + 32) + 152) = 0;
}

void sub_276026FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_276027058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && (WeakRetained[121] & 1) == 0)
  {
    v9 = objc_msgSend_documentRoot(WeakRetained, v3, v4, v5, v6, v7);
    v15 = objc_msgSend_accessController(v9, v10, v11, v12, v13, v14);
    v21[0] = MEMORY[0x277D85DD0];
    v16.n128_u64[0] = 3221225472;
    v21[1] = 3221225472;
    v21[2] = sub_276027150;
    v21[3] = &unk_27A6A94E8;
    v21[4] = v9;
    v22 = *(a1 + 40);
    objc_msgSend_performWrite_(v15, v17, v16, v18, v19, v20, v21);
  }
}

void sub_276027150(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = objc_msgSend_bodyStorage(*(a1 + 32), a2, a3, a4, a5, a6);
  objc_msgSend_invalidatePageCountAttachmentCharIndexes_(v12, v7, v8, v9, v10, v11, *(a1 + 40));
}

void sub_2760277E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FFD2D0(va);

  _Unwind_Resume(a1);
}

void sub_2760278D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FFD2D0(va);

  _Unwind_Resume(a1);
}

void sub_2760279CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FFD2D0(va);

  _Unwind_Resume(a1);
}

void sub_276027F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276027F9C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (objc_msgSend_p_isPaginationComplete(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_p_layOutNextPageOnceWithOffscreenLayoutController(*(a1 + 32), v7, v8, v9, v10, v11);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_27602809C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[121] & 1) == 0 && WeakRetained[152] == 1)
  {
    objc_msgSend_p_updatePageCount(WeakRetained, v1, v2, v3, v4, v5);
  }
}

void sub_2760281D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760281E8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v30 = objc_msgSend_canvas(*(*(a1 + 32) + 104), a2, a3, a4, a5, a6);
  v12 = objc_msgSend_layoutController(v30, v7, v8, v9, v10, v11);
  v13 = *(a1 + 32);
  v14 = objc_opt_new();
  objc_msgSend_p_layOutNextPageForLayoutController_dirtyRange_(v13, v15, v16, v17, v18, v19, v12, v14);

  objc_msgSend_setInfosToDisplay_(v30, v20, v21, v22, v23, v24, 0);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_p_didLayOut(*(a1 + 32), v25, v26, v27, v28, v29);
}

void sub_2760293DC(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v367 = *MEMORY[0x277D85DE8];
  objc_msgSend_willInflate(*(a1 + 32), a2, a3, a4, a5, a6);
  if ((objc_msgSend_isPaginating(*(a1 + 40), v7, v8, v9, v10, v11) & 1) == 0)
  {
    v17 = objc_msgSend_pageIndex(*(a1 + 32), v12, v13, v14, v15, v16);
    v352 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 40), v18, v19, v20, v21, v22, v17, 0, 0);
    v28 = v352;
    if (!v352)
    {
LABEL_46:

      return;
    }

    v30 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 40), v23, v24, v25, v26, v27);
    if (!v30)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v31, v32, v33, v34, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v43, v44, v45, v46, v47, v36, v42, 5747, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51, v52);
    }

    if (objc_msgSend_pageKind(v30, v29, v31, v32, v33, v34) != 1)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, v57, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke");
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v66, v67, v68, v69, v70, v59, v65, 5748, 0, "Can't inflate columns on a non-text page");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74, v75);
    }

    v351 = objc_msgSend_firstChildHint(v30, v53, v54, v55, v56, v57);
    if (v17 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isFirstHint(v351, v76, v77, v78, v79, v80) & 1) == 0)
    {
      v167 = objc_msgSend_sectionHints(*(*(a1 + 40) + 80), v76, v77, v78, v79, v80);
      sub_275FFD28C(&v359, v167, v17 - 1);

      while (1)
      {
        v173 = sub_275FFD320(&v359, v168, v169, v170, v171, v172);
        v174 = v173 == 0;

        if (v174)
        {
          break;
        }

        if (sub_275FFD3B8(&v359, v175, v176, v177, v178, v179) == 1)
        {
          v81 = sub_275FFD62C(&v359, v180, v181, v182, v183, v184);
          if (v81)
          {
            sub_275FFD2D0(&v359);
            goto LABEL_11;
          }

          v190 = sub_275FFD5C0(&v359, v185, v186, v187, v188, v189);
          if (v190)
          {
            v309 = MEMORY[0x277D81150];
            v310 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v180, v181, v182, v183, v184, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke");
            v316 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v311, v312, v313, v314, v315, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v309, v317, v318, v319, v320, v321, v310, v316, 5765, 0, "inconsistent previous child hint");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v322, v323, v324, v325, v326);
            break;
          }
        }

        sub_275FFCD14(&v359, v180, v181, v182, v183, v184);
      }

      sub_275FFD2D0(&v359);
      v327 = MEMORY[0x277D81150];
      v333 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v328, v329, v330, v331, v332, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke");
      v339 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v334, v335, v336, v337, v338, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v327, v340, v341, v342, v343, v344, v333, v339, 5773, 0, "Failed to find previous child hint for %lu", v17);

      v81 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v345, v346, v347, v348, v349);
    }

    else
    {
      v81 = 0;
    }

LABEL_11:
    if (!v30)
    {
      v149 = MEMORY[0x277D81150];
      v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, v80, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke");
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v157, v158, v159, v160, v161, v150, v156, 5776, 0, "Nil page hint for %{public}@\n%@", v352, *(a1 + 40));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164, v165, v166);
LABEL_45:

      v28 = v352;
      goto LABEL_46;
    }

    v359 = 0;
    v360 = &v359;
    v361 = 0x4012000000;
    v362 = sub_27601745C;
    v363 = nullsub_2;
    v364 = &unk_2760658C2;
    v365 = *MEMORY[0x277D81490];
    v82 = objc_msgSend_documentRoot(*(a1 + 40), v76, v365, v78, v79, v80);
    if (objc_msgSend_laysOutBodyVertically(v82, v83, v84, v85, v86, v87))
    {
      v93 = objc_msgSend_documentRoot(*(a1 + 40), v88, v89, v90, v91, v92);
      v99 = objc_msgSend_settings(v93, v94, v95, v96, v97, v98);
      hasFacingPages = objc_msgSend_hasFacingPages(v99, v100, v101, v102, v103, v104);

      if ((((v17 & 1) == 0) & hasFacingPages) != 1)
      {
LABEL_28:
        v191 = *(a1 + 32);
        v192 = *(*(a1 + 40) + 96);
        v193 = objc_msgSend_hints(v30, v106, v107, v108, v109, v110);
        v199 = objc_msgSend_anchoredDrawablePositions(v30, v194, v195, v196, v197, v198);
        objc_msgSend_inflateTarget_fromHints_childHint_anchoredDrawablePositions_footnoteLayoutRange_(v192, v200, v201, v202, v203, v204, v191, v193, v81, v199, v360[6], v360[7]);

        v210 = objc_msgSend_columns(*(a1 + 32), v205, v206, v207, v208, v209);
        v216 = objc_msgSend_count(v210, v211, v212, v213, v214, v215) == 0;

        if (v216)
        {
          v222 = MEMORY[0x277D81150];
          v223 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v217, v218, v219, v220, v221, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke");
          v229 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v224, v225, v226, v227, v228, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v222, v230, v231, v232, v233, v234, v223, v229, 5803, 0, "should have created columns unless we're in the process of doing layout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v235, v236, v237, v238, v239);
        }

        v240 = objc_msgSend_lastChildHint(v30, v217, v218, v219, v220, v221);

        v355 = 0u;
        v356 = 0u;
        v353 = 0u;
        v354 = 0u;
        v245 = objc_msgSend_columns(*(a1 + 32), v241, 0, v242, v243, v244);
        v251 = objc_msgSend_reverseObjectEnumerator(v245, v246, v247, v248, v249, v250);

        v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v252, v253, v254, v255, v256, &v353, v366, 16);
        if (v258)
        {
          v263 = *v354;
          while (2)
          {
            for (i = 0; i != v258; i = i + 1)
            {
              if (*v354 != v263)
              {
                objc_enumerationMutation(v251);
              }

              v265 = *(*(&v353 + 1) + 8 * i);
              if (objc_msgSend_lineCount(v265, v257, v259, v260, v261, v262))
              {
                hasPartitionedAttachmentContinuationAt = objc_msgSend_hasPartitionedAttachmentContinuationAt_(v265, v257, v259, v260, v261, v262, 1);
                if (hasPartitionedAttachmentContinuationAt)
                {
                  v272 = objc_msgSend_lineCount(v265, v267, v268, v269, v270, v271);
                  v258 = objc_msgSend_partitionedLayoutOfLineFragmentAtIndex_(v265, v273, v274, v275, v276, v277, v272 - 1);
                }

                else
                {
                  v258 = 0;
                }

                goto LABEL_42;
              }
            }

            v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v257, v259, v260, v261, v262, &v353, v366, 16);
            if (v258)
            {
              continue;
            }

            break;
          }
        }

        hasPartitionedAttachmentContinuationAt = 0;
LABEL_42:

        if (hasPartitionedAttachmentContinuationAt != (v240 != 0))
        {
          v283 = MEMORY[0x277D81150];
          v284 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v278, v279, v280, v281, v282, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke");
          v290 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v285, v286, v287, v288, v289, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
          v296 = objc_msgSend_lastChildHint(v30, v291, v292, v293, v294, v295);
          v297 = objc_opt_class();
          v298 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v283, v299, v300, v301, v302, v303, v284, v290, 5817, 0, "page hint doesn't match layout for partition at end (%lu). %{public}@ vs %{public}@", v17, v297, v298);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v304, v305, v306, v307, v308);
        }

        _Block_object_dispose(&v359, 8);
        goto LABEL_45;
      }

      v82 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 40), v106, v107, v108, v109, v110, v17 - 1, 0, 1);
      if (v82)
      {
        v116 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 40), v111, v112, v113, v114, v115, v82);
        v122 = v116;
        if (v116 && (objc_msgSend_terminatedByBreak(v116, v117, v118, v119, v120, v121) & 1) == 0)
        {
          v358 = 0;
          v128 = objc_msgSend_rangeAndChildHints_(v122, v123, v124, v125, v126, v127, &v358);
          v350 = v129;
          v130 = v128;
          v131 = v358;
          v137 = objc_msgSend_documentRoot(*(a1 + 40), v132, v133, v134, v135, v136);
          v143 = objc_msgSend_bodyStorage(v137, v138, v139, v140, v141, v142);

          v357[0] = MEMORY[0x277D85DD0];
          v144.n128_u64[0] = 3221225472;
          v357[1] = 3221225472;
          v357[2] = sub_276029E54;
          v357[3] = &unk_27A6A9560;
          v357[4] = &v359;
          objc_msgSend_enumerateFootnoteAttachmentsInTextRange_usingBlock_(v143, v145, v144, v146, v147, v148, v130, v350, v357);
        }
      }

      else
      {
        v122 = 0;
      }
    }

    goto LABEL_28;
  }
}

void sub_276029C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

NSUInteger sub_276029E54(uint64_t a1, uint64_t a2, NSRange a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5.location = *(v4 + 48);
  v5.length = 1;
  v6 = *(MEMORY[0x277D81490] + 8);
  if (v5.location != *MEMORY[0x277D81490] || *(v4 + 56) != v6)
  {
    if (*MEMORY[0x277D81490] == a3.location && v6 == 1)
    {
      a3.location = *(v4 + 48);
      v5.length = *(v4 + 56);
    }

    else
    {
      v5.length = *(v4 + 56);
      a3.length = 1;
      v5 = NSUnionRange(v5, a3);
      a3.location = v5.location;
      v4 = *(*(a1 + 32) + 8);
    }
  }

  *(v4 + 48) = a3.location;
  *(v4 + 56) = v5.length;
  return v5.location;
}

void sub_276029F7C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if ((objc_msgSend_isPaginating(*(a1 + 32), a2, a3, a4, a5, a6) & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = objc_msgSend_pageIndex(*(a1 + 40), v7, v8, v9, v10, v11);
    v19 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(v12, v14, v15, v16, v17, v18, v13, 0, 0);
    if (v19)
    {
      v60 = v19;
      v24 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v19, v20, v21, v22, v23, v19);
      if (objc_msgSend_pageKind(v24, v25, v26, v27, v28, v29) != 1 && objc_msgSend_pageKind(v24, v30, v31, v32, v33, v34) != 6 && objc_msgSend_pageKind(v24, v30, v31, v32, v33, v34) != 4 && objc_msgSend_pageKind(v24, v30, v31, v32, v33, v34) != 3)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, v34, "[TPPaginatedPageController i_inflateFootnotesInFootnoteContainer:]_block_invoke");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v43, v44, v45, v46, v47, v36, v42, 5831, 0, "Can't inflate footnotes on this kind of page");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51, v52);
      }

      v53 = *(*(a1 + 32) + 112);
      v54 = objc_msgSend_footnoteLayoutRange(v24, v30, v31, v32, v33, v34);
      objc_msgSend_inflateFootnotesInRange_intoFootnoteContainer_(v53, v55, v56, v57, v58, v59, v54, v55, *(a1 + 40));

      v19 = v60;
    }
  }
}

void sub_27602A1E8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if ((objc_msgSend_isPaginating(*(a1 + 32), a2, a3, a4, a5, a6) & 1) == 0)
  {
    v12 = objc_msgSend_pageIndex(*(a1 + 40), v7, v8, v9, v10, v11);
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = MEMORY[0x277D81150];
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "[TPPaginatedPageController i_inflateTextFlowsOnPage:]_block_invoke");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v29, v70, v24, 5843, 0, "Invalid page index for %@", *(a1 + 40));

      v35 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v35, v30, v31, v32, v33, v34);
    }

    else
    {
      v71 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v13, v14, v15, v16, v17, v12, 0, 0);
      v41 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v36, v37, v38, v39, v40);
      if (objc_msgSend_pageKind(v41, v42, v43, v44, v45, v46) == 5 || !objc_msgSend_pageKind(v41, v47, v48, v49, v50, v51))
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "[TPPaginatedPageController i_inflateTextFlowsOnPage:]_block_invoke");
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v60, v61, v62, v63, v64, v53, v59, 5847, 0, "Can't inflate footnotes on this kind of page");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68, v69);
      }

      objc_msgSend_layOutFlowsIfNeededOnPage_(*(*(a1 + 32) + 192), v47, v48, v49, v50, v51, *(a1 + 40));
    }
  }
}

void sub_27602A500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27602A520(uint64_t result, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (**(result + 48))
  {
    v6 = result;
    v7 = objc_msgSend_sectionHints(*(*(result + 32) + 80), a2, a3, a4, a5, a6);
    sub_275FFD28C(v60, v7, **(v6 + 48) - 1);

    while (1)
    {
      v13 = sub_275FFD320(v60, v8, v9, v10, v11, v12);

      if (!v13)
      {
        break;
      }

      if (sub_275FFD3B8(v60, v14, v15, v16, v17, v18) == 1)
      {
        v24 = sub_275FFD320(v60, v19, v20, v21, v22, v23);
        v30 = objc_msgSend_hints(v24, v25, v26, v27, v28, v29);

        if (objc_msgSend_count(v30, v31, v32, v33, v34, v35))
        {
          v41 = objc_msgSend_objectAtIndexedSubscript_(v30, v36, v37, v38, v39, v40, 0);
          if (objc_msgSend_lineFragmentCount(v41, v42, v43, v44, v45, v46))
          {
            v57 = sub_275FFD320(v60, v47, v48, v49, v50, v51);
            v58 = *(*(v6 + 40) + 8);
            v59 = *(v58 + 40);
            *(v58 + 40) = v57;

            **(v6 + 48) = sub_275FFD698(v60);
            return sub_275FFD2D0(v60);
          }
        }
      }

      else if (sub_275FFD3B8(v60, v19, v20, v21, v22, v23) == 5)
      {
        return sub_275FFD2D0(v60);
      }

      sub_275FFCD14(v60, v52, v53, v54, v55, v56);
    }

    return sub_275FFD2D0(v60);
  }

  return result;
}

void sub_27602A66C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_275FFD2D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27602A81C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_isPaginating(*(a1 + 32), a2, a3, a4, a5, a6);
  if ((result & 1) == 0)
  {
    v12 = *(*(a1 + 32) + 192);

    return MEMORY[0x2821F9670](v12, sel_invalidateFlows_startingPage_, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_27602AC48(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (objc_msgSend_isPaginating(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    v12 = *(a1 + 40);
    result = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v7, v8, v9, v10, v11);
    if (v12 != result)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPPaginatedPageController i_setNeedsDynamicLayoutForLayoutController:onPageIndex:]_block_invoke");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 5930, 0, "pages shouldn't need dynamic layout while another page is being laid out");

      v43 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v43, v38, v39, v40, v41, v42);
    }
  }

  else
  {
    objc_msgSend_p_invalidatePageIndex_(*(a1 + 32), v7, v8, v9, v10, v11, *(a1 + 40));
    v24 = *(a1 + 32);

    return objc_msgSend_p_interruptBackgroundPagination(v24, v19, v20, v21, v22, v23);
  }

  return result;
}

void sub_27602AFDC(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  objc_msgSend_restartPaginationFromFirstPage(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6);
  objc_msgSend_p_performPaginationResetAndMetricsReset_(*(a1 + 32), v7, v8, v9, v10, v11, *(a1 + 40));
  objc_msgSend_p_destroyBodyLayoutState(*(a1 + 32), v12, v13, v14, v15, v16);
  v17.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v18 = v17.n128_f64[0];
  objc_msgSend_paginateThroughPageIndex_(*(a1 + 32), v19, v17, v20, v21, v22, -1);
  v23.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v24 = v23.n128_f64[0] - v18;
  v29 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v25, v23, v26, v27, v28);
  v30 = *MEMORY[0x277D85DF8];
  v31.n128_f64[0] = v29 / v24;
  v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, v31, v33, v34, v35, @"Layout of %lu pages took %g seconds (%g pages / sec)", v29, *&v24, v31.n128_u64[0]);
  v41 = objc_msgSend_UTF8String(v42, v36, v37, v38, v39, v40);
  fprintf(v30, "%s\n", v41);
}

id variable initialization expression of TPPaginationState._pageIndexPath()
{
  v0 = objc_allocWithZone(TPPageIndexPath);

  return [v0 initWithSectionIndex:0 pageIndex:0];
}

uint64_t sub_27602B1E0()
{
  result = sub_2760384B4();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t variable initialization expression of TPPageLayoutCache.accessQueue()
{
  v0 = sub_2760385C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2760385B4();
  MEMORY[0x28223BE20]();
  sub_2760384E4();
  MEMORY[0x28223BE20]();
  sub_27602B424();
  sub_2760384D4();
  v5[1] = MEMORY[0x277D84F90];
  sub_27602B470();
  sub_27602B4C8(&qword_280A40108);
  sub_27602B510();
  sub_276038614();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_2760385E4();
}

unint64_t sub_27602B424()
{
  result = qword_280A400F8;
  if (!qword_280A400F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A400F8);
  }

  return result;
}

unint64_t sub_27602B470()
{
  result = qword_280A40100;
  if (!qword_280A40100)
  {
    sub_2760385B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A40100);
  }

  return result;
}

uint64_t sub_27602B4C8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_27602B510()
{
  result = qword_280A40110;
  if (!qword_280A40110)
  {
    sub_27602B574(&qword_280A40108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A40110);
  }

  return result;
}

uint64_t sub_27602B574(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_27602B5C4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_2760384F4();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.logPaginationCat = v0;
  return result;
}

uint64_t *OS_os_log.logPaginationCat.unsafeMutableAddressor()
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.logPaginationCat;
}

id static OS_os_log.logPaginationCat.getter()
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.logPaginationCat;

  return v0;
}

void static OS_os_log.logPaginationCat.setter(uint64_t a1)
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static OS_os_log.logPaginationCat;
  static OS_os_log.logPaginationCat = a1;
}

uint64_t (*static OS_os_log.logPaginationCat.modify())()
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::UInt_optional __swiftcall TPPaginatedPageController.adjacentPage(forPageIndex:)(Swift::UInt forPageIndex)
{
  v2 = [v1 adjacentPageIndexForPageIndex_];
  v3 = sub_2760384B4();
  v4 = v3 >= 0;
  v5 = v2 == v3;
  v6 = v4 && v5;
  if (v4 && v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  result.value = v7;
  result.is_nil = v6;
  return result;
}

uint64_t TPPaginationState.isInvalid.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TPPaginationState.isInvalid.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TPPaginationState.pageIndexPath.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t TPPaginationState.pageIndexPath.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2760384C4();
}

id sub_27602BBDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_27602BC44(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_2760384C4();
}

void (*TPPaginationState.pageIndexPath.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_27602BD84;
}

void sub_27602BD84(id **a1, char a2)
{
  v3 = *a1;
  v4 = *a1 + 3;
  v5 = *v4;
  (*a1)[4] = *v4;
  v6 = v3[5];
  if (a2)
  {
    v7 = v5;
    sub_2760384C4();
  }

  else
  {
    sub_2760384C4();
  }

  free(v3);
}

uint64_t TPPaginationState.documentPageIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TPPaginationState.documentPageIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602FDD8;
}

uint64_t TPPaginationState.lastLaidOutSectionIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__lastLaidOutSectionIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27602C084@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__lastLaidOutSectionIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t TPPaginationState.bodyLayoutState.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TPPaginationState.bodyLayoutState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2760384C4();
}

uint64_t sub_27602C26C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_27602C2C4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2760384C4();
}

uint64_t (*TPPaginationState.bodyLayoutState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602C3F4;
}

uint64_t TPPaginationState.bodyCharIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TPPaginationState.bodyCharIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602FDD8;
}

uint64_t TPPaginationState.footnoteIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__footnoteIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27602C63C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_2760384C4();
}

uint64_t sub_27602C6C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2760384C4();
}

uint64_t sub_27602C740(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2760384C4();
}

uint64_t (*TPPaginationState.footnoteIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__footnoteIndex;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602FDD8;
}

void sub_27602C890(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  *(*a1 + 32) = *(*a1 + 24);
  v3 = v2;
  sub_2760384C4();

  free(v1);
}

uint64_t TPPaginationState.sectionHints.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2760384C4();
}

uint64_t sub_27602CAF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_27602CB50(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_2760384C4();
}

void (*TPPaginationState.sectionHints.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_27602CC90;
}

void sub_27602CC90(id **a1, char a2)
{
  v3 = *a1;
  (*a1)[4] = (*a1)[3];
  v4 = v3[5];
  if (a2)
  {

    sub_2760384C4();
  }

  else
  {
    sub_2760384C4();
  }

  free(v3);
}

void (*TPPaginationState.sectionIndex.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = [*(v1 + v5) sectionIndex];
  return sub_27602CE20;
}

id sub_27602CE38(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(a1 + v5) *a3];
}

id sub_27602CEA0(SEL *a1)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(v1 + v3) *a1];
}

id sub_27602CF04(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(a1 + v7) *a4];
}

id sub_27602CF74(uint64_t a1, SEL *a2)
{
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(v2 + v5) *a2];
}

void (*TPPaginationState.pageIndex.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = [*(v1 + v5) pageIndex];
  return sub_27602D074;
}

void sub_27602D080(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = *a1;
  [*(*(*a1 + 32) + *(*a1 + 40)) *a3];

  free(v3);
}