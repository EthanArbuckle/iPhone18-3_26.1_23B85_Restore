void sub_276F3AD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, void *a28)
{
  if (v34)
  {
  }

  sub_276F40794(v35 - 136);
  _Unwind_Resume(a1);
}

void sub_276F3B084(uint64_t *a1, uint64_t a2, TSWPAttributeArray *a3, int a4)
{
  if (!a3 || !a4)
  {
    return;
  }

  v7 = *(*a1 + 448);
  objc_msgSend_willModify(*(*a1 + 8), a2, a3);
  v8 = sub_276F3C3D4(a1, a2);
  v36 = v8;
  if (!v8)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      (*(a3->var0 + 5))(a3, *(a2 + 16), *(a2 + 24), *a1);
      goto LABEL_16;
    }

    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void TSWPStorageActionRunner::runOverlappingFieldsTableAction(const TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 641, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
LABEL_15:
    (*(a3->var0 + 4))(a3, v36, *(a2 + 16), *(a2 + 24), *(*a1 + 424));
    goto LABEL_16;
  }

  v11 = (*(a3->var0 + 16))(a3, v8, *(a2 + 16), *(a2 + 24));
  if (v11)
  {
    v12 = v36 == v11;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void TSWPStorageActionRunner::runOverlappingFieldsTableAction(const TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 637, 0, "resolved object should be pointer equal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (*(a2 + 4))
  {
    goto LABEL_15;
  }

  v20 = sub_276E0C944(a3, *(a2 + 16), *(a2 + 24), v36);
  v22 = v21;
  v38.location = v20;
  v38.length = v22;
  v23 = TSWPAttributeArray::rangeForAttributeRange(a3, v38);
  sub_276E0DC14(a3, v36, v23, v24, *(*a1 + 424), *a1);
LABEL_16:
  v32 = *a1;
  if (*(*a1 + 448) > v7)
  {
    v33 = *(v32 + 16);
    v34 = (v32 + 24);
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v34;
    }

    sub_276E3F5CC(v35, *(a2 + 16), *(a2 + 24), 0, 0);
  }
}

void sub_276F3B3B8(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(*a1 + 448);
  if (TSWPAttributeArray::attributeKindIsChangeTracking(*(a2 + 8)))
  {
    v33 = sub_276F40884(a2);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (!a3)
      {
        return;
      }

      v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, *(a2 + 16));
      if (v10 >= *(a3 + 24))
      {
        return;
      }

      v11 = v10;
      v12 = TSWPAttributeArray::objectForAttributeIndex(a3, v10);
      if (!v12)
      {
        return;
      }

      v34 = v12;
      v15 = objc_msgSend_date(v34, v13, v14);
      sub_276DCFBE8(v15, *a1);

      if (a4)
      {
        sub_276F2F46C(*a1, v16);
        v17 = *a1;
        v18 = *(a3 + 28);
        v21 = objc_msgSend_date(v34, v19, v20);
        sub_276F2F6A0(v17, 0xAu, v18, v11, v21);

        v22 = sub_276F40884(a2);
        objc_msgSend_setDate_(v34, v23, v22);

        objc_msgSend_trackedTextDidChange(v34, v24, v25);
      }

      goto LABEL_16;
    }
  }

  v26 = sub_276F3C3D4(a1, a2);
  if (a3 && a4)
  {
    v34 = v26;
    objc_msgSend_willModify(*(*a1 + 8), v27, v28);
    (*(*a3 + 32))(a3, v34, *(a2 + 16), *(a2 + 24), *(*a1 + 424));
    v29 = *a1;
    if (*(*a1 + 448) > v8)
    {
      v30 = *(v29 + 16);
      v31 = (v29 + 24);
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      sub_276E3F5CC(v32, *(a2 + 16), *(a2 + 24), 0, *(a3 + 28) == 16);
    }

LABEL_16:
    v26 = v34;
  }
}

uint64_t sub_276F3B620(uint64_t *a1, const char *a2, NSUInteger a3, int a4)
{
  v5 = a2;
  v7 = *a1;
  *(v7 + 472) = 1;
  v8 = *(v7 + 456);
  if (!v8 || (a2 = *v8, *(v8 + 8) - *v8 != 48))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 436, 0, "Expected pInverseActions to not be null and to have a size of 1.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    a2 = v5;
    if (v8)
    {
      a2 = *v8;
    }
  }

  sub_276F406BC(v180, a2);
  v16 = *(*a1 + 448);
  v19 = objc_msgSend_attributeArrayForKind_(*(*a1 + 8), v17, 0);
  if (!v19)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 443, 0, "No paragraph array.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    v35 = 0;
    goto LABEL_91;
  }

  v163 = sub_276F2F9C4(*a1, v5, *(v5 + 16), v19);
  v164 = v20;
  v21 = objc_msgSend_textRangeForParagraphIndexRange_(*(*a1 + 8), v20, v163, v20);
  v165 = v22;
  v166 = v21;
  if (*(v5 + 8) != *(a3 + 28))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 450, 0, "action does not match the specified attribute array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v162 = v19;
  sub_276F406BC(v179, v5);
  v31 = *MEMORY[0x277D81490];
  v30 = *(MEMORY[0x277D81490] + 8);
  v160 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a3, *(v5 + 16));
  v32 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, *(v5 + 16));
  v33 = *(a3 + 24);
  if (v32 >= v33)
  {
    v35 = 0;
  }

  else
  {
    v34 = TSWPAttributeArray::objectForAttributeIndex(a3, v32);
    v33 = *(a3 + 24);
    v35 = v34;
  }

  v169 = v16;
  if (v32 >= v33)
  {
    v44 = 0;
  }

  else
  {
    v31 = TSWPAttributeArray::rangeForAttributeIndex(a3, v32);
    v30 = v43;
    v44 = TSWPAttributeArray::objectForAttributeIndex(a3, v32);
  }

  v168 = v44;
  v45 = sub_276F3C3D4(a1, v5);
  v178 = 0;
  v46 = sub_276F3C8F4(a1, v5, v45, v35, &v178);
  v173 = v45;
  v47 = v178;
  v48 = *(v5 + 4);
  if ((v48 & 3) != 0)
  {
    v49 = v48 ^ 3;
  }

  else
  {
    v49 = v48;
  }

  v167 = v47;
  v170 = v46;
  sub_276F4046C(&v176, *(v5 + 16), *(v5 + 24), v49, v46);
  sub_276F4136C(v180, &v176);
  sub_276F40794(&v176);
  if ((*(v5 + 4) & 2) != 0)
  {
    if (*(*a1 + 16))
    {
      v50 = *(*a1 + 16);
    }

    else
    {
      v50 = *a1 + 24;
    }

    v51 = sub_276E3EAC8(v50);
    v54 = v51;
    if (v51 && objc_msgSend_shouldDeepCopyUndoObjects(v51, v52, v53))
    {
      v57 = objc_msgSend_context(v54, v55, v56);
      sub_276F417A4(v180);

      v58 = sub_276F40884(v180);
      v59 = v58;
      if (v170 == v58)
      {
      }

      else
      {
        v60 = sub_276F40884(v180);

        if (v60)
        {
          v158 = MEMORY[0x277D81150];
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v65, v62, v64, 492, 0, "Expected deep copy not to affect objectForStorage aka rollback object.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
        }
      }
    }

    v44 = v168;
    v46 = v170;
  }

  sub_276F407C4(v175, v180, v44);
  sub_276F40798(&v176, v175, v31, v30);
  sub_276F4136C(v179, &v176);
  sub_276F40794(&v176);
  v68 = sub_276F40794(v175);
  if (a4)
  {
    v172 = *(v5 + 16);
    v161 = v35;
    if (v172)
    {
      v71 = objc_msgSend_string(*(*a1 + 8), v69, v70);
      v159 = objc_msgSend_characterAtIndex_(v71, v72, v172 - 1);

      v73 = *(v5 + 16);
    }

    else
    {
      v73 = 0;
      v159 = 0;
    }

    v74 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v73);
    v75 = TSWPAttributeArray::rangeForAttributeIndex(a3, v74);
    v77 = v76;
    if (*(v5 + 4))
    {
      v78 = sub_276F40884(v5);
    }

    else
    {
      v78 = 0;
    }

    if (v172)
    {
      v80 = v78;
    }

    else
    {
      v80 = v78;
      if (!v78)
      {
        v81 = [TSWPSectionPlaceholder alloc];
        v84 = objc_msgSend_context(*(*a1 + 8), v82, v83);
        v80 = objc_msgSend_initWithContext_(v81, v85, v84);
      }
    }

    v173 = v80;
    if (v35 == v80 && (v86 = *(v5 + 16), v75 <= v86))
    {
      v87 = v75;
      if (v75 + v77 >= *(v5 + 24) + v86)
      {
        v88 = 0;
        v89 = (*(v5 + 4) >> 6) & 1;
        goto LABEL_44;
      }
    }

    else
    {
      v87 = v75;
    }

    v88 = 1;
    v89 = 1;
LABEL_44:
    v90 = 0;
    if (v159 > 0xA || ((1 << v159) & 0x411) == 0 || (v90 = 1, (v89 & 1) == 0))
    {
      v91 = MEMORY[0x277D81150];
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v95, v92, v94, 515, 0, "Should always be able to apply.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97);
    }

    v46 = v170;
    if (v87 >= v172)
    {
      v98 = 1;
    }

    else
    {
      v98 = v88;
    }

    if ((v98 & 1) == 0 && (*(v5 + 4) & 0x40) != 0)
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v103, v100, v102, 518, 0, "We cannot duplicate sections.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105);
    }

    v106 = v89 & v90;
    v35 = v161;
    if (v106 != 1)
    {
      goto LABEL_78;
    }

    v107 = v164;
    if (v164 >= 2)
    {
      v109 = v162;
      v108 = v163;
      v110 = v173;
      if (v163 + v164 != *(v162 + 6))
      {
        goto LABEL_59;
      }

      v111 = TSWPAttributeArray::charIndexForAttributeIndex(v162, (v163 + v164 - 1));
      v107 = v164 - (v111 == objc_msgSend_length(*(*a1 + 8), v112, v113));
    }

    v110 = v173;
    v109 = v162;
    v108 = v163;
LABEL_59:
    TSWPParagraphAttributeArray::applyObjectToParagraphRange(a3, v110, v108, v107, v109, *a1);
    v35 = v161;
    if (v172)
    {
      v114 = v160 == 0x7FFFFFFFFFFFFFFFLL;
      if (v159 == 4)
      {
        v115 = v173 == 0;
        v117 = IsParagraphBreakingCharacter(4) ^ 1;
        if (!v173)
        {
          LOBYTE(v117) = 1;
        }

        if ((v117 & 1) == 0)
        {
          v118 = sub_276F40884(v180);
          v115 = v118 != 0;
        }
      }

      else
      {
        v119 = IsParagraphBreakingCharacter(v159);
        v115 = 0;
        if (v173)
        {
          v114 = v119;
        }

        else
        {
          v114 = 0;
        }
      }

      if (v114 || v115)
      {
        v176 = (v172 - 1);
        v177 = 1;
        v127 = *(*a1 + 8);
        v128 = sub_276F40884(v5);
        v130 = objc_msgSend_pFlipSpecialCharacterForObject_range_insertLength_outChangeRange_attributeArrayKind_actionState_(v127, v129, v128, v172 - 1, 1, 1, &v176, *(v5 + 8), *a1);

        v131 = *a1;
        if (*(*a1 + 448) > v169)
        {
          v132 = *(v131 + 16);
          v133 = (v131 + 24);
          if (v132)
          {
            v134 = v132;
          }

          else
          {
            v134 = v133;
          }

          sub_276E3F5CC(v134, v176, v177, v130, 1);
        }
      }

      else
      {
        v120 = MEMORY[0x277D81150];
        v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
        v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v124, v121, v123, 541, 0, "Should not get into a state where no flipping is necessary unless through OT. If OT put us here, then OT should remove this action.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126);
      }
    }

LABEL_78:
    v135 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, *(v5 + 16));
    v136 = TSWPAttributeArray::rangeForAttributeIndex(a3, v135);
    v138 = TSWPAttributeArray::objectForAttributeIndex(a3, v135);
    if (v136 > *(v5 + 16))
    {
      v139 = MEMORY[0x277D81150];
      v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
      v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v143, v140, v142, 556, 0, "Failure to apply section range.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v144, v145);
    }

    if (v173 && v138 != v173)
    {
      v146 = MEMORY[0x277D81150];
      v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "void TSWPStorageActionRunner::runSectionBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *const, BOOL)");
      v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v150, v147, v149, 557, 0, "Failure to apply section object.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152);
    }

    v44 = v168;
  }

  if (*(*a1 + 448) > v169 && sub_276F3C74C(v68, v179, a3, v166, v165))
  {
    if (*(*a1 + 16))
    {
      v153 = *(*a1 + 16);
    }

    else
    {
      v153 = (*a1 + 24);
    }

    sub_276E3F5CC(v153, v166, v165, 0, 0);
  }

  sub_276F40794(v179);
LABEL_91:
  if (*(v5 + 4))
  {
    v154 = sub_276F3C3D4(a1, v5);
    v174 = 0;
    v155 = sub_276F3C8F4(a1, v5, v154, v35, &v174);
    v156 = v174;
    sub_276F4046C(v179, *(v5 + 16), *(v5 + 24), *(v5 + 4) ^ 3u, v155);
    sub_276F4136C(v180, v179);
    sub_276F40794(v179);
  }

  sub_276F2F8B4(*a1, v180, 0);
  *(*a1 + 472) = 0;

  return sub_276F40794(v180);
}

void sub_276F3C194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23)
{
  sub_276F40794(v23 - 184);
  sub_276F40794(v23 - 136);
  _Unwind_Resume(a1);
}

id sub_276F3C3D4(uint64_t a1, uint64_t a2)
{
  if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a2 + 8)))
  {
    objc_opt_class();
    v4 = sub_276F40884(a2);
    v5 = TSUDynamicCast();

    v6 = sub_276F40884(a2);

    if (v6 && !v5)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "id TSWPStorageActionRunner::objectForApplying(const TSWPStorageAction &)");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 729, 0, "Should either be clearing with nil or passing in a style diff object");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    v16 = objc_msgSend_style(v5, v7, v8);
    if (v16)
    {
      objc_opt_class();
      v17 = TSUDynamicCast();

      if (!v17)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "id TSWPStorageActionRunner::objectForApplying(const TSWPStorageAction &)");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 732, 0, "only style objects should be in the attribute table");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      }
    }

LABEL_9:
    goto LABEL_14;
  }

  v16 = sub_276F40884(a2);
  if (!v16)
  {
    if ((*(a2 + 4) & 1) != 0 && !TSWPAttributeArray::attributeKindIsOverlapping(*(a2 + 8)))
    {
      v39 = 0;
      v38 = 0;
      v5 = sub_276F40EE0(a2, &v39, &v38);
      if (v5)
      {
        if (*(*a1 + 16))
        {
          v27 = *(*a1 + 16);
        }

        else
        {
          v27 = *a1 + 24;
        }

        v28 = sub_276E3EAC8(v27);
        v30 = v28;
        if (!v28 || (objc_msgSend_actionObjectForUUIDPath_(v28, v29, v5), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "id TSWPStorageActionRunner::objectForApplying(const TSWPStorageAction &)");
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 748, 0, "invalid nil value for '%{public}s'", "result");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_9;
    }

    v16 = 0;
  }

LABEL_14:

  return v16;
}

BOOL sub_276F3C74C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((*(a2 + 5) & 0x80) != 0)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  if (*(a2 + 16) == *MEMORY[0x277D81490] && *(a2 + 24) == *(MEMORY[0x277D81490] + 8))
  {
    return 1;
  }

  v10 = TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a3 + 28));
  v11 = *(a2 + 16);
  if (!v10)
  {
    if (v11 <= a4 && *(a2 + 24) + v11 >= a4 + a5)
    {
      goto LABEL_16;
    }

    return 1;
  }

  v12 = 1;
  if (v11 == a4 && *(a2 + 24) == a5)
  {
LABEL_16:
    IsBreaking = TSWPAttributeArray::attributeKindIsBreaking(*(a2 + 8));
    if (IsBreaking)
    {
      v15 = a3;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0;
    if (TSWPAttributeArray::attributeKindIsBreaking(*(a2 + 8)) && IsBreaking)
    {
      v16 = !TSWPAttributeArray::hasObjects(*(v15 + 28));
    }

    if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a3 + 28)))
    {
      v17 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a3, a4);
    }

    else
    {
      v17 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, a4);
    }

    v18 = v17;
    if (v17 >= *(a3 + 24))
    {
      if (v16)
      {
        v19 = 0;
        return v19 != sub_276F40598(a2, v18);
      }

      v20 = 0;
    }

    else
    {
      if (v16)
      {
        v19 = *TSWPAttributeRecord::paragraphData(*(v15 + 8) + 16 * v17, *(v15 + 28));
        return v19 != sub_276F40598(a2, v18);
      }

      v20 = TSWPAttributeArray::objectForAttributeIndex(a3, v17);
    }

    v12 = sub_276F41188(a2, v20) ^ 1;
  }

  return v12;
}

id sub_276F3C8F4(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  sub_276F406BC(v13, a2);
  v11 = TSWPAttributeArray::inverseObjectForApplying(v13, v9, v10, a5, *a1);
  sub_276F40794(v13);

  return v11;
}

void sub_276F3C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276F40794(&a9);

  _Unwind_Resume(a1);
}

void sub_276F3C9BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  if (*(*a1 + 16))
  {
    v6 = *(*a1 + 16);
  }

  else
  {
    v6 = *a1 + 24;
  }

  v7 = sub_276E3EAC8(v6);
  v9 = v7;
  if (v7)
  {
    objc_msgSend_willRunAttachmentTableAction_objectToApply_(v7, v8, a2, v10);
  }
}

void sub_276F3CA5C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(*a1 + 16))
  {
    v9 = *(*a1 + 16);
  }

  else
  {
    v9 = *a1 + 24;
  }

  v10 = sub_276E3EAC8(v9);
  v13 = v10;
  if (v10)
  {
    if ((*(a2 + 4) & 1) != 0 && (objc_msgSend_delegateShouldAssignPlacementIndex(v10, v11, v12) & 1) == 0)
    {
      v36 = 0;
      v35 = 0;
      v14 = sub_276F40EE0(a2, &v35, &v36);
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_msgSend_supportsUUID(v8, v15, v16))
          {
            v19 = objc_msgSend_context(*(*a1 + 8), v17, v18);
            v21 = objc_msgSend_objectWithUUIDPath_(v19, v20, v14);

            if (v21)
            {
              objc_msgSend_setIndex_forObject_(v13, v22, v36, v21);
              if (*(*a1 + 473) == 1 && (*(a2 + 5) & 4) == 0)
              {
                v25 = objc_msgSend_indexForObject_(v13, v24, v21);
                if (v25 != v36)
                {
                  sub_276F41640(a2, v14, v25);
                }
              }
            }

            else
            {
              v26 = objc_msgSend_documentRoot(*(*a1 + 8), v22, v23);

              if (v26)
              {
                v28 = MEMORY[0x277D81150];
                v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "void TSWPStorageActionRunner::didRunAttachmentTableAction(TSWPStorageAction &, __strong id, __strong id)");
                v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 605, 0, "expect object in document or document root is nil for tests");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
              }
            }
          }
        }
      }
    }

    objc_msgSend_didRunAttachmentTableAction_currentObject_(v13, v11, a2, v7);
  }
}

void sub_276F3CCD8(uint64_t a1, uint64_t *a2)
{
  v38 = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = 0x277D81000uLL;
    do
    {
      if (*(v2 + 8) == 4 || (v6 = *(v5 + 336), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionRunner::runActionsForFinalObjectUpdates(const TSWPStorageActionVector &)"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1045, 0, "TSWPStorageActionRunner: only atttachment object updates currently supported."), v9, v7, objc_msgSend_logBacktraceThrottled(*(v5 + 336), v11, v12), *(v2 + 8) == 4))
      {
        v13 = sub_276F40884(v2);
        v16 = *(*a1 + 8);
        if (v13)
        {
          v17 = objc_msgSend_parentStorage(v13, v14, v15);

          if (v17 == v16)
          {
            v19 = v5;
            CharIndexWithHintIndex = objc_msgSend_findCharIndexWithHintIndex_(v13, v18, &v38);
            if (CharIndexWithHintIndex < objc_msgSend_length(v16, v21, v22))
            {
              if ((objc_msgSend_shouldInvalidateWhenTextPropertiesChange(v13, v23, v24) & 1) == 0)
              {
                v26 = *(v5 + 336);
                v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "void TSWPStorageActionRunner::runActionsForFinalObjectUpdates(const TSWPStorageActionVector &)");
                v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1054, 0, "Attachment is expected to require updating if it appears in the input action vector.");

                objc_msgSend_logBacktraceThrottled(*(v19 + 336), v31, v32);
              }

              v5 = v19;
              if (objc_msgSend_needsUpdateForStyleChangeToStorage_charIndex_(v13, v25, v16, CharIndexWithHintIndex))
              {
                objc_msgSend_updateForStyleChangeToStorage_charIndex_(v13, v33, v16, CharIndexWithHintIndex);
                if (*(*a1 + 16))
                {
                  v34 = *(*a1 + 16);
                }

                else
                {
                  v34 = (*a1 + 24);
                }

                sub_276E3F5CC(v34, CharIndexWithHintIndex, 1uLL, 0, 0);
                if (*(*a1 + 16))
                {
                  v35 = *(*a1 + 16);
                }

                else
                {
                  v35 = *a1 + 24;
                }

                v36 = sub_276E3EAC8(v35);
                v5 = v19;
                objc_msgSend_didUpdateStyleForAttachment_(v36, v37, v13);
              }
            }
          }
        }
      }

      v2 += 48;
    }

    while (v2 != v3);
  }
}

id sub_276F3E2BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D803C0];
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], a2, a3, 0.0, 0.0, 0.0, 0.150000006);
  v6 = objc_msgSend_strokeWithColor_width_(v3, v5, v4, 1.0);

  return v6;
}

id sub_276F3E378(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D801F8];
  v4 = objc_msgSend_whiteColor(MEMORY[0x277D81180], a2, a3);
  v6 = objc_msgSend_colorWithColor_(v3, v5, v4);

  return v6;
}

id sub_276F3E400(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D803A8];
  v4 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, a3);
  v6 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(v3, v5, v4, 1, 90.0, 2.0, 5.0, 0.25);

  return v6;
}

void sub_276F3EEA0(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_commentScalingMultiplier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_geometry(*(a1 + 32), v4, v5);
  objc_msgSend_size(v6, v7, v8);
  v11 = objc_msgSend_geometry(*(a1 + 32), v9, v10);
  objc_msgSend_size(v11, v12, v13);

  v14 = objc_alloc(MEMORY[0x277D802E8]);
  v17 = objc_msgSend_geometry(*(a1 + 32), v15, v16);
  objc_msgSend_center(v17, v18, v19);
  v22 = objc_msgSend_initWithCenter_size_(v14, v20, v21);

  v25 = objc_msgSend_context(*(a1 + 32), v23, v24);
  v28 = objc_msgSend_storage(*(a1 + 32), v26, v27);
  v30 = objc_msgSend_p_commentInfoWithContext_geometry_storage_(TSWPFloatingCommentInfo, v29, v25, v22, v28);

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_276F3F060;
  v32[3] = &unk_27A6F6B30;
  v32[4] = *(a1 + 32);
  objc_msgSend_performBlockWithTemporaryLayout_(v30, v31, v32);
}

uint64_t sub_276F3F060(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return objc_msgSend_transferLayoutGeometryToInfo_withAdditionalTransform_assertIfInDocument_(a2, a2, v2, v5, 0);
}

void sub_276F3F0A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_textStorage(*(a1 + 32), a2, a3);
  objc_msgSend_addDisallowedElementKind_(v4, v3, 784399);
}

id sub_276F3F460(void *a1)
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

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeInfoArchive>(v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSWPFloatingCommentInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_276F3F8BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276F3FA14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276F3FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  *a1 = 2;
  *(a1 + 4) = a6;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a4;
  sub_276F3FD28(a1, a5);
  return a1;
}

void sub_276F3FD28(uint64_t a1, void *a2)
{
  v15 = a2;
  if ((*a1 - 1) <= 1)
  {
    v4 = *(a1 + 32);
    if (v4 != v15)
    {
      *(a1 + 32) = 0;

      if (sub_276F41040(a1, v15))
      {
        objc_storeStrong((a1 + 32), a2);
      }

      else if (v15)
      {
        v6 = MEMORY[0x277D81150];
        v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void TSWPStorageAction::setObject(__strong id)");
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v9, 458, 0, "Object is of unknown type %{public}@", v11);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
      }
    }
  }
}

uint64_t sub_276F3FE98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  *a1 = 1;
  *(a1 + 4) = a5;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  sub_276F3FD28(a1, a4);
  return a1;
}

uint64_t sub_276F3FEFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  *a1 = 2;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a5;
  sub_276F3FF5C(a1, a7, a6);
  return a1;
}

void sub_276F3FF5C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ((*a1 - 1) <= 1)
  {
    if (TSWPAttributeArray::hasPairedData(*(a1 + 8)) || TSWPAttributeArray::hasSingleData(*(a1 + 8)))
    {
      v6 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, a3, "I");
      sub_276F3FD28(a1, v6);
    }

    else
    {
      sub_276F3FD28(a1, v7);
    }
  }
}

uint64_t sub_276F40064(uint64_t a1, const char *a2)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = *MEMORY[0x277D81490];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPStorageAction::TSWPStorageAction(TSWPStorageActionKind)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 77, 0, "Unexpected action kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return a1;
}

uint64_t sub_276F40160(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  v15 = a5;
  v17 = a6;
  *a1 = 2;
  *(a1 + 4) = a4;
  *(a1 + 8) = a8;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  if (a8 > 8 || ((1 << a8) & 0x130) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSWPStorageAction::TSWPStorageAction(NSRange, UInt32, NSObject *__strong, TSUUUIDPath *__strong, int32_t, TSWPAttributeArrayKind)");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 82, 0, "unexpected attribute table kind: %lu", a8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  if (!TSWPAttributeArray::attributeKindIsOverlapping(a8) && (*(a1 + 4) & 0x402) != 0)
  {
    v26 = 0;
LABEL_13:

    v15 = v26;
    goto LABEL_14;
  }

  if (v15 && v17 && a8 == 4)
  {
    v15 = v15;
    v29 = objc_msgSend_lastUUID(v17, v27, v28);
    v32 = objc_msgSend_drawable(v15, v30, v31);
    v35 = objc_msgSend_objectUUID(v32, v33, v34);
    isEqual = objc_msgSend_isEqual_(v35, v36, v29);

    if ((isEqual & 1) == 0)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "TSWPStorageAction::TSWPStorageAction(NSRange, UInt32, NSObject *__strong, TSUUUIDPath *__strong, int32_t, TSWPAttributeArrayKind)");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
      v45 = objc_msgSend_drawable(v15, v43, v44);
      v48 = objc_msgSend_objectUUID(v45, v46, v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v49, v40, v42, 94, 0, "UUID mismatch (%{public}@ vs %{public}@", v48, v29);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    }

    v26 = v15;
    goto LABEL_13;
  }

LABEL_14:
  v52 = objc_msgSend_objectPlacementWithObject_uuidPath_index_(TSWPObjectPlacement, v25, v15, v17, a7);
  sub_276F3FD28(a1, v52);

  return a1;
}

uint64_t sub_276F40470(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_276F40538(a1, *(a2 + 40));
  if ((*a1 - 1) < 2)
  {
    if (TSWPAttributeArray::hasPairedData(*(a1 + 8)) || TSWPAttributeArray::hasSingleData(*(a1 + 8)))
    {
      v6 = sub_276F40598(a2, v4);
      sub_276F3FF5C(a1, 0, &v6);
    }

    else
    {
      sub_276F3FD28(a1, *(a2 + 32));
    }
  }

  return a1;
}

void sub_276F40538(uint64_t a1, void *a2)
{
  v4 = a2;
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  if (v6 != v4)
  {
    v7 = v4;
    objc_storeStrong(v5, a2);
    v4 = v7;
  }
}

uint64_t sub_276F40598(uint64_t a1, const char *a2)
{
  v14 = 0;
  if ((*a1 - 1) <= 1)
  {
    if (*(a1 + 32))
    {
      if (TSWPAttributeArray::hasPairedData(*(a1 + 8)))
      {
        objc_msgSend_getValue_(*(a1 + 32), v3, &v13);
        return v13;
      }

      else if (TSWPAttributeArray::hasSingleData(*(a1 + 8)))
      {
        objc_msgSend_getValue_(*(a1 + 32), v11, &v14);
      }
    }

    else
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPParagraphData TSWPStorageAction::paragraphData() const");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 265, 0, "invalid nil value for '%{public}s'", "_object");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  return v14;
}

uint64_t sub_276F406C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;

  return a1;
}

uint64_t sub_276F4070C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  sub_276F40470(a1, a2);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  sub_276F3FD28(a1, v9);

  return a1;
}

void sub_276F40774(_Unwind_Exception *a1)
{
  sub_276F406C0(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_276F40798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_276F40470(a1, a2);
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_276F407C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  sub_276F40470(a1, a2);
  sub_276F3FD28(a1, v5);

  return a1;
}

void sub_276F40818(_Unwind_Exception *a1)
{
  sub_276F406C0(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_276F40838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_276F40470(a1, a2);
  sub_276F3FF5C(v5, 0, a3);
  return a1;
}

id sub_276F40884(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_object(v2, v3, v4);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = v6;

  return v7;
}

uint64_t sub_276F40908(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  sub_276F40470(a1, a2);
  v8 = sub_276F40884(a1);
  v10 = objc_msgSend_objectPlacementWithObject_uuidPath_index_(TSWPObjectPlacement, v9, v8, v7, a4);
  sub_276F3FD28(a1, v10);

  return a1;
}

void sub_276F409A4(_Unwind_Exception *a1)
{
  v5 = v4;

  sub_276F406C0(v2);
  _Unwind_Resume(a1);
}

void sub_276F409E0(uint64_t a1, void *a2)
{
  v19 = a2;
  if (v19)
  {
    if ((TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a1 + 8)) & 1) != 0 || (v3 = *(a1 + 8), v3 == 9))
    {
      objc_opt_class();
      v5 = TSUDynamicCast();
      if (v5)
      {
        v6 = objc_msgSend_migratedStyleForStyle_(v19, v4, v5);
        v7 = v6;
        if (v6 != v5)
        {
          v7 = v6;
          v8 = *(a1 + 32);
          *(a1 + 32) = v7;
LABEL_10:
        }
      }

      else
      {
        objc_opt_class();
        v7 = TSUDynamicCast();
        v5 = objc_msgSend_style(v7, v9, v10);
        if (v5)
        {
          v8 = objc_msgSend_migratedStyleForStyle_(v19, v11, v5);
          if (v8 != v5)
          {
            objc_msgSend_setStyle_(v7, v12, v8);
          }

          goto LABEL_10;
        }
      }

LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    if (*(a1 + 4))
    {
      if ((v3 - 4) < 2)
      {
        v5 = sub_276F40884(a1);
        objc_opt_class();
        v13 = TSUDynamicCast();
        v7 = v13;
        if (!v13)
        {
          goto LABEL_11;
        }

        objc_msgSend_migrateStyleWithDocumentRoot_(v13, v14, v19);
        goto LABEL_20;
      }

      if (v3 == 8)
      {
        v5 = sub_276F40884(a1);
        if (!v5)
        {
          goto LABEL_12;
        }

        v15 = objc_alloc(MEMORY[0x277CBEA60]);
        v7 = objc_msgSend_initWithObjects_(v15, v16, v5, 0);
        if (!objc_msgSend_objectsNeedToBeMigrated_(v19, v17, v7))
        {
          goto LABEL_11;
        }

        objc_msgSend_migrateStylesInObjects_(v19, v18, v7);
LABEL_20:
        sub_276F40538(a1, 0);
        goto LABEL_11;
      }
    }
  }

LABEL_13:
}

void sub_276F40C1C(uint64_t a1, void *a2)
{
  v13 = a2;
  if ((sub_276F40D48(a1) & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSWPStorageAction::migrateWithDocumentRoot(TSKDocumentRoot *__strong)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 223, 0, "Do not call this method unless requiresMigration() is true");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  if (v13 && sub_276F40D48(a1))
  {
    v11 = sub_276F40884(a1);
    objc_msgSend_migrateWithDocumentRoot_(v11, v12, v13);
  }
}

uint64_t sub_276F40D48(uint64_t a1)
{
  if (TSWPAttributeArray::requiresMigration(*(a1 + 8)))
  {
    v2 = sub_276F40884(a1);
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_276F40DB4(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  if ((v2 & 0x2000) == 0)
  {
    goto LABEL_2;
  }

  v3 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = a2 == 0;
  }

  if (!v5)
  {
    if (*a1 == 2 && ((TSWPAttributeArray::attributeKindIsBreaking(*(a1 + 8)) & 1) != 0 || TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(*(a1 + 8))))
    {
LABEL_2:
      v3 = 0;
      goto LABEL_11;
    }

    v3 = 1;
  }

LABEL_11:
  v6 = !v3;
  if ((v2 & 0x200) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_276F40E2C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  objc_opt_class();
  v1 = TSUDynamicCast();
  v4 = v1;
  if (v1)
  {
    v7 = objc_msgSend_uuidPath(v1, v2, v3);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = objc_msgSend_object(v4, v5, v6);
      v8 = v9 != 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id sub_276F40EE0(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = -1;
  *a2 = 0;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_uuidPath(v5, v6, v7);
    *a3 = objc_msgSend_index(v8, v10, v11);
    *a2 = objc_msgSend_object(v8, v12, v13);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSUUUIDPath *TSWPStorageAction::uuidPathObjectAndIndex(__autoreleasing id &, int32_t &) const");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 331, 0, "placement is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    v9 = 0;
  }

  return v9;
}

uint64_t sub_276F41040(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TSWPAttributeArray::hasPairedData(*(a1 + 8)) || TSWPAttributeArray::hasSingleData(*(a1 + 8)))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = objc_opt_class();
        isKindOfClass = objc_msgSend_isMemberOfClass_(v3, v7, v6) ^ 1;
      }

      else
      {
        isKindOfClass = 0;
      }
    }
  }

  return isKindOfClass & 1;
}

uint64_t sub_276F41188(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1 == 2)
  {
    v4 = *(a1 + 8);
    v5 = sub_276F40884(a1);
    IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(v4, v5, v3);
  }

  else
  {
    IsEquivalentToObject = sub_276F41228(a1, v3);
  }

  return IsEquivalentToObject;
}

uint64_t sub_276F41228(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a1 + 8)))
  {
    v4 = sub_276F40884(a1);
    v6 = sub_276F40884(a1);
    if (v4)
    {
      isEqual = objc_msgSend_isEqual_(v6, v5, v3);
    }

    else
    {
      isEqual = v6 == v3;
    }
  }

  else
  {
    v4 = sub_276F40884(a1);
    isEqual = v4 == v3;
  }

  return isEqual;
}

uint64_t sub_276F41308(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = -1;
  v3 = *MEMORY[0x277D81490];
  v4 = 0;
  v5 = 0;
  sub_276F4136C(a1, v2);
  return sub_276F406C0(v2);
}

uint64_t sub_276F4136C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPStorageAction &TSWPStorageAction::operator=(const TSWPStorageAction &)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 789, 0, "Do not assign this because it likely represents bad calling logic.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  else
  {
    *(a1 + 4) = 0;
    sub_276F3FD28(a1, 0);
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    sub_276F40538(a1, *(a2 + 40));
    if ((*a1 - 1) <= 1)
    {
      if (TSWPAttributeArray::hasPairedData(*(a1 + 8)) || TSWPAttributeArray::hasSingleData(*(a1 + 8)))
      {
        v13 = sub_276F40598(a2, v4);
        sub_276F3FF5C(a1, 0, &v13);
      }

      else
      {
        sub_276F3FD28(a1, *(a2 + 32));
      }
    }
  }

  return a1;
}

uint64_t sub_276F414C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) + *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = sub_276F40884(a1);
  v5 = sub_276F40884(a2);
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (v8)
    {
      isEqualToStyleDiff = objc_msgSend_isEqualToStyleDiff_(v6, v7, v8);
    }

    else
    {
      isEqualToStyleDiff = 0;
    }
  }

  else
  {
    isEqualToStyleDiff = sub_276F41188(a1, v5);
  }

  return isEqualToStyleDiff;
}

uint64_t sub_276F415E8@<X0>(NSRange *a1@<X0>, NSRange *a2@<X1>, NSRange *a3@<X8>)
{
  v5 = NSUnionRange(a1[1], a2[1]);
  result = sub_276F40470(a3, a1);
  a3[1] = v5;
  return result;
}

void sub_276F41640(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 8) == 4 && (*(a1 + 4) & 1) != 0)
  {
    v22 = v5;
    objc_opt_class();
    v6 = TSUDynamicCast();
    v9 = v6;
    if (v6)
    {
      v10 = objc_msgSend_uuidPath(v6, v7, v8);
      if (!objc_msgSend_isEqual_(v10, v11, v22))
      {
LABEL_7:

        goto LABEL_8;
      }

      v14 = objc_msgSend_index(v9, v12, v13);

      if (v14 != a3)
      {
        v10 = objc_msgSend_object(v9, v15, v16);
        v19 = objc_msgSend_uuidPath(v9, v17, v18);
        v21 = objc_msgSend_objectPlacementWithObject_uuidPath_index_(TSWPObjectPlacement, v20, v10, v19, a3);
        sub_276F3FD28(a1, v21);

        goto LABEL_7;
      }
    }

LABEL_8:

    v5 = v22;
  }
}

void sub_276F417A4(uint64_t a1)
{
  sub_276F40538(a1, 0);
  v2 = *(a1 + 8);
  v3 = v2 > 8;
  v4 = (1 << v2) & 0x130;
  v5 = v3 || v4 == 0;
  if (v5 || (*(a1 + 4) & 0x401) != 1)
  {
    return;
  }

  objc_opt_class();
  v39 = TSUDynamicCast();
  if (v39)
  {
    v6 = sub_276F40884(a1);
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      v10 = objc_msgSend_initWithObjects_(v8, v9, v7, 0);
      v13 = objc_msgSend_drawable(v7, v11, v12);

      if (v13)
      {
        v16 = 0;
        v17 = 0;
        if (!v10)
        {
          goto LABEL_23;
        }

LABEL_16:
        if (objc_msgSend_count(v10, v14, v15) != 1)
        {
          v29 = MEMORY[0x277D81150];
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "void TSWPStorageAction::createDeepCopyForMakeInverse(TSPObjectContext *__strong)");
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 1158, 0, "Should have copied 1 object.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
        }

        goto LABEL_23;
      }

      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSWPStorageAction::createDeepCopyForMakeInverse(TSPObjectContext *__strong)");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAction.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 1151, 0, "Expected attachment to have drawable");

      v16 = 0;
      v17 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      if (v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      v18 = TSUDynamicCast();
      if (v18)
      {
        v19 = objc_alloc(MEMORY[0x277CBEB18]);
        v10 = objc_msgSend_initWithObjects_(v19, v20, v18, 0);
        v16 = v18;
        v17 = 0;
        if (!v10)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (*(a1 + 8) == 8)
      {
        objc_opt_class();
        v36 = TSUDynamicCast();
        if (v36)
        {
          v37 = objc_alloc(MEMORY[0x277CBEB18]);
          v10 = objc_msgSend_initWithObjects_(v37, v38, v36, 0);
          v16 = 0;
          v17 = v36;
          if (!v10)
          {
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      v10 = 0;
      v17 = 0;
      v16 = 0;
    }

LABEL_23:
  }
}

uint64_t sub_276F41C24(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 > 8;
  v3 = (1 << v1) & 0x130;
  if (v2 || v3 == 0)
  {
    return 0;
  }

  v5 = *(a1 + 4);
  if ((v5 & 0x400) != 0)
  {
    return 0;
  }

  else
  {
    return v5 & 1;
  }
}

uint64_t sub_276F41C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = 1;
  if ((v2 & 0x20) != 0)
  {
    v3 = 2;
  }

  v4 = 2;
  if ((v2 & 0x20) == 0)
  {
    v4 = (v2 >> 4) & 1;
  }

  if ((v2 & 0x100) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = (v2 >> 7) & 1;
  }

  if (a2 != 15)
  {
    v5 = v4;
  }

  if (a2 == 13)
  {
    return v3;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_276F41CA4(uint64_t a1)
{
  if (TSWPAttributeArray::hasPairedData(*(a1 + 8)) || TSWPAttributeArray::hasSingleData(*(a1 + 8)))
  {
    v3 = sub_276F40598(a1, v2);
    if (!TSWPAttributeArray::hasSingleData(*(a1 + 8)) || v3 == 0)
    {
      LODWORD(result) = TSWPAttributeArray::hasPairedData(*(a1 + 8));
      if (v3)
      {
        return result;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return sub_276F40E2C(a1);
  }
}

void sub_276F41D34(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a5;
  v17 = v15;
  ++a1[61];
  if (*(a1 + 440) != 1 || (v31 = v15, v18 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "virtual void TSWPStorageActionBuilder::buildActionsForApplyObjectAndData(TSWPStorageActionGroup &, TSWPAttributeArrayKind, const NSRange &, __strong id, const TSWPParagraphData &, UInt32, int32_t)"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 42, 0, "Attempting to build actions when running actions."), v21, v19, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24), v17 = v31, (a1[55] & 1) == 0))
  {
    v26 = *(a2 + 8);
    v25 = *(a2 + 16);
    sub_276F40060(v32, a7, a3, *a4, a4[1], a6, v17);
    if (((*(*a1 + 48))(a1, a2, v32, a8) & 1) == 0)
    {
      sub_276EE3E28(a2, v32);
    }

    v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 4);
    v28 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4);
    v29 = v28 - v27;
    if (v28 > v27)
    {
      v30 = 48 * v27;
      do
      {
        (*(*a1 + 32))(a1, a2, *(a2 + 8) + v30, 0);
        v30 += 48;
        --v29;
      }

      while (v29);
    }

    sub_276F40794(v32);
  }

  --a1[61];
}

void sub_276F41F7C(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v6 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), a2, 0);
  v8 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v7, *(a3 + 8));
  v9 = TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(v8 + 28));
  location = *(a3 + 16);
  v11 = *(a3 + 24);
  hasObjects = TSWPAttributeArray::hasObjects(*(a3 + 8));
  v42 = 0;
  if (hasObjects)
  {
    v14 = 1;
  }

  else
  {
    v42 = sub_276F40598(a3, v12);
    v14 = v42 == 0;
  }

  v43.location = location;
  v43.length = v11;
  v16 = sub_276F2F9C4(a1, a3, v43, v6);
  v17 = *(a1 + 16);
  if (!v17 || (*(v17 + 216) & 0x20) != 0 || ((*(v8 + 28) == 11) & ~hasObjects) == 0)
  {
    v18 = *(a1 + 8);
LABEL_8:
    v20.location = objc_msgSend_textRangeForParagraphIndexRange_(v18, v15, v16, v15);
    v20.length = v19;
    goto LABEL_9;
  }

  v18 = *(a1 + 8);
  if (v14)
  {
    goto LABEL_8;
  }

  v20.location = objc_msgSend_textRangeForParagraphIndexRange_(v18, v15, v16, 1);
  v20.length = v36;
  location = v20.location;
  v11 = v36;
LABEL_9:
  v21 = sub_276F2F9C4(a1, a3, v20, v8);
  v24 = v22;
  v25 = &v22[v21 - 1];
  if (hasObjects)
  {
    v26 = TSWPAttributeArray::objectForAttributeIndex(v8, v25);
    v39 = sub_276F33A94(a1, a3, v26, 1);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v39 = 0;
    v26 = 0;
    if (v9)
    {
LABEL_11:
      v27 = a4;
      if ((a4 & 2) != 0)
      {
        goto LABEL_32;
      }

      if (!v24)
      {
        goto LABEL_32;
      }

      v28 = TSWPAttributeArray::rangeForAttributeIndex(v8, v25);
      if (v29)
      {
        goto LABEL_32;
      }

      v30 = location + v11;
      if (v28 != location + v11)
      {
        goto LABEL_32;
      }

      v31 = 0;
      goto LABEL_29;
    }
  }

  if ((*(a3 + 5) & 8) != 0)
  {
    goto LABEL_32;
  }

  if (!v11)
  {
    goto LABEL_32;
  }

  v32 = location + v11;
  if (location + v11 != objc_msgSend_length(*(a1 + 8), v22, v23) || TSWPAttributeArray::exactAttributeIndexForCharIndex(v6, location + v11) == 0x7FFFFFFFFFFFFFFFLL || v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  v27 = *(a3 + 4);
  v33 = TSWPAttributeArray::rangeForAttributeIndex(v8, v25);
  if (v32 <= v33 + v34)
  {
    v35 = v33 + v34;
  }

  else
  {
    v35 = location + v11;
  }

  if (v32 >= v33 + v34)
  {
    v30 = v33 + v34;
  }

  else
  {
    v30 = location + v11;
  }

  v31 = v35 - v30;
LABEL_29:
  if (v30 != *MEMORY[0x277D81490] || v31 != *(MEMORY[0x277D81490] + 8))
  {
    sub_276F40060(v41, v27 | 0x800u, *(a3 + 8), v30, v31, &v42, v39);
    sub_276F4015C(v40, 0);
    sub_276EE3FF0(a2, v41, v40);
    sub_276F40794(v40);
    sub_276F40794(v41);
  }

LABEL_32:
}

void sub_276F4225C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), a2, *(a3 + 8));
  v7 = v6;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v6)
  {
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, *(a3 + 16));
    if (v10 >= *(v7 + 24))
    {
      v7 = 0;
    }

    else
    {
      v7 = TSWPAttributeArray::objectForAttributeIndex(v7, v10);
    }
  }

  hasObjects = TSWPAttributeArray::hasObjects(*(a3 + 8));
  v16 = 0;
  if (!hasObjects)
  {
    v16 = sub_276F40598(a3, v12);
  }

  v13 = sub_276F33A94(a1, a3, v7, 1);
  sub_276F40060(v15, *(a3 + 4) | 0x800u, *(a3 + 8), v8, v9, &v16, v13);
  sub_276F4015C(v14, 0);
  sub_276EE3FF0(a2, v15, v14);
  sub_276F40794(v14);
  sub_276F40794(v15);
}

void sub_276F423BC(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v6 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), a2, 0);
  v76 = a1;
  v74 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v7, *(a3 + 8));
  hasObjects = TSWPAttributeArray::hasObjects(*(a3 + 8));
  v87[0] = 0;
  if (!hasObjects)
  {
    v87[0] = sub_276F40598(a3, v8);
  }

  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = a3;
  v78 = a3;
  if (!*(v6 + 24))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "void TSWPStorageActionBuilder::buildBreakingActionsForApplyObjectAndData(TSWPStorageActionGroup &, const TSWPStorageAction &, UInt32)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 195, 0, "Paragraph array should have at least one entry!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    v12 = a3;
  }

  v20 = v76;
  v91.location = v10;
  v91.length = v11;
  v22 = sub_276F2F9C4(v76, v12, v91, v6);
  v23 = v21;
  if (!v21)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "void TSWPStorageActionBuilder::buildBreakingActionsForApplyObjectAndData(TSWPStorageActionGroup &, const TSWPStorageAction &, UInt32)");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 197, 0, "parIndexRange should not be empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v20 = v76;
  }

  v31 = *(v20 + 16);
  v32 = 0;
  if (v31)
  {
    v33 = v74;
    v34 = v74 != 0;
    if ((*(v31 + 216) & 0x20) == 0 && v74)
    {
      v35 = *(v74 + 28) != 11 || hasObjects;
      if (v35)
      {
        v32 = 0;
      }

      else
      {
        v32 = v87[0] != 0;
        if (v87[0])
        {
          v23 = 1;
        }
      }

      v34 = 1;
      v33 = v74;
    }
  }

  else
  {
    v33 = v74;
    v34 = v74 != 0;
  }

  v36 = objc_msgSend_textRangeForParagraphIndexRange_(*(v76 + 8), v21, v22, v23);
  v38 = v36;
  v39 = v37;
  if (v32)
  {
    v40 = v37;
  }

  else
  {
    v40 = v11;
  }

  if (v32)
  {
    v41 = v36;
  }

  else
  {
    v41 = v10;
  }

  v77.location = v41;
  v77.length = v40;
  v92.location = v36;
  v92.length = v37;
  v42 = sub_276F2F9C4(v76, v78, v92, v33);
  v71 = v43;
  if (!v34)
  {
    v50 = 0;
LABEL_66:
    sub_276F4225C(v76, a2, v78);
    goto LABEL_67;
  }

  v44 = v42;
  sub_276F4015C(v86, 0);
  sub_276F4015C(v83, 0);
  sub_276F4015C(v82, 0);
  v45 = TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(v74 + 28));
  v46 = TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(v74 + 28));
  if (((!v45 | ((a4 & 2) >> 1)) & 1) == 0)
  {
    length = v77.length;
    location = v77.location;
    if (v38 != v77.location || v39 != v77.length)
    {
      length = v39;
      location = v38;
    }

    v77.location = location;
    v77.length = length;
  }

  v49 = &v44[v71];
  if (v44 >= &v44[v71])
  {
    v52 = 0;
    v50 = 0;
LABEL_60:
    v63 = 0;
  }

  else
  {
    v50 = 0;
    v72 = 0;
    v51 = 0;
    v52 = 0;
    v70 = *&v46 & ((a4 & 2) >> 1);
    v67 = hasObjects && !v45 && !v46;
    v68 = &v44[v71];
    v69 = (v49 - 1);
    v65 = v49 - 2;
    v66 = v44;
    while (1)
    {
      v53 = v50;
      v88.location = TSWPAttributeArray::rangeForAttributeIndex(v74, v44);
      v54 = v88.location;
      v55 = v88.length;
      v56 = NSIntersectionRange(v88, v77);
      v75 = v52;
      v57 = TSWPAttributeArray::objectForAttributeIndex(v74, v44);
      v58 = *(v78 + 4);
      v50 = sub_276F33A94(v76, v78, v57, 1);

      v89.location = v54;
      v89.length = v55;
      if (!NSIntersectionRange(v89, v77).length)
      {
        break;
      }

      if (v70)
      {
        v59 = v56.length != 0;
      }

      else
      {
        v59 = v56.length;
      }

      sub_276F40060(v81, v58 | 0x800u, *(v78 + 8), v56.location, v59, v87, v50);
      v52 = v75;
      sub_276F4015C(v80, 0);
      if (v44 < v69 && v67 && v54 == v56.location && v55 == v56.length && v71 >= 2 && v44 > v66)
      {
        if (v51)
        {
          if (v57 == v75)
          {
            v93.location = v56.location;
            v93.length = v59;
            v62 = NSUnionRange(v85, v93);
            sub_276F40060(v79, v84, *(v78 + 8), v62.location, v62.length, v87, v50);
            sub_276F4136C(v83, v79);
            sub_276F40794(v79);
            v60 = v75;
          }

          else
          {
            v60 = v57;

            sub_276EE3FF0(a2, v83, v82);
            sub_276F4136C(v83, v81);
            v72 = 1;
          }
        }

        else
        {
          sub_276F4136C(v83, v81);
          v60 = v57;
        }

        v61 = (v44 + 1);
        if (v44 == v65 || v61 < *(v74 + 6) && (v90.location = TSWPAttributeArray::rangeForAttributeIndex(v74, v44 + 1), !NSIntersectionRange(v90, v77).length))
        {
          sub_276EE3FF0(a2, v83, v82);
          v51 = 0;
          v72 = 1;
        }

        else
        {
          v51 = 1;
        }

        v52 = v60;
      }

      else
      {
        if (v51)
        {

          sub_276EE3FF0(a2, v83, v82);
          v52 = 0;
          sub_276F4136C(v83, v86);
        }

        sub_276EE3FF0(a2, v81, v80);
        v51 = 0;
        v61 = (v44 + 1);
        v72 = 1;
      }

      sub_276F40794(v80);
      sub_276F40794(v81);

      v44 = v61;
      if (v61 == v68)
      {
        if ((v72 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }
    }

    if (v72)
    {
      v52 = v75;
LABEL_63:
      sub_276F41F7C(v76, a2, v78, a4);
      v63 = 1;
      goto LABEL_65;
    }

    v63 = 0;
    v52 = v75;
  }

LABEL_65:

  sub_276F40794(v82);
  sub_276F40794(v83);
  sub_276F40794(v86);
  if ((v63 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_67:
}

void sub_276F42A0C(_Unwind_Exception *a1)
{
  sub_276F40794(v3 - 240);
  sub_276F40794(v3 - 192);
  sub_276F40794(v3 - 144);
  _Unwind_Resume(a1);
}

void sub_276F42B28(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), a2, *(a3 + 8));
  if (v5 && (v6 = v5, v7 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(v5, *(a3 + 16)), v7 < &v7[v8]) && (v9 = v7, v10 = v8, v19.location = TSWPAttributeArray::rangeForAttributeIndex(v6, v7), location = v19.location, length = v19.length, NSIntersectionRange(v19, *(a3 + 16)).length))
  {
    v13 = 0;
    v14 = v9 + 1;
    do
    {
      v20.location = location;
      v20.length = length;
      v15 = NSIntersectionRange(v20, *(a3 + 16));
      if (v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(a3 + 32);
      }

      sub_276F3FE94(v18, *(a3 + 8), v15.location, v15.length, v16, *(a3 + 4));
      sub_276F4015C(v17, 0);
      sub_276EE3FF0(a2, v18, v17);
      sub_276F40794(v17);
      sub_276F40794(v18);

      if (v10 - 1 == v13)
      {
        break;
      }

      v21.location = TSWPAttributeArray::rangeForAttributeIndex(v6, v14);
      location = v21.location;
      length = v21.length;
      ++v14;
      ++v13;
    }

    while (NSIntersectionRange(v21, *(a3 + 16)).length);
  }

  else
  {
    sub_276F3FE94(v18, *(a3 + 8), *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 4));
    sub_276F4015C(v17, 0);
    sub_276EE3FF0(a2, v18, v17);
    sub_276F40794(v17);
    sub_276F40794(v18);
  }
}

void sub_276F42CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_276F40794(&a9);
  sub_276F40794(&a15);
  _Unwind_Resume(a1);
}

void sub_276F42D1C(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v6 = *(a3 + 8);
  v7 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), a2, v6);
  v38 = a1;
  objc_msgSend_range(*(a1 + 8), v8, v9);
  v41 = a3;
  v10 = TSUIntersectionRangeWithEdge();
  v45 = v11;
  v46 = v10;
  v44 = v7;
  if (v7)
  {
    v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, v10);
    v43 = *(v7 + 24);
    if (v12 < v43)
    {
      v13 = v12;
      while (1)
      {
        v14 = TSWPAttributeArray::rangeForAttributeIndex(v44, v13);
        v16 = v15;
        v17 = TSWPAttributeArray::objectForAttributeIndex(v44, v13);
        v51.location = v14;
        v51.length = v16;
        v53.length = v45;
        v53.location = v46;
        if (!NSIntersectionRange(v51, v53).length)
        {
          break;
        }

        MustCopyOnSplit = TSWPAttributeArray::attributeKindMustCopyOnSplit(v6);
        MustTruncateOnSplit = TSWPAttributeArray::attributeKindMustTruncateOnSplit(v6);
        v20 = MustTruncateOnSplit;
        if ((MustCopyOnSplit | MustTruncateOnSplit))
        {
          v52.location = v14;
          v52.length = v16;
          v54.length = v45;
          v54.location = v46;
          v21 = NSIntersectionRange(v52, v54);
          if ((a4 & 2) == 0)
          {
            if (v17)
            {
              v22 = sub_276F40884(v41);
              v23 = v17;
              v24 = v6;
              v40 = v23;
              IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(v6, v22, v23);

              v28 = v21.location <= v14 ? 1 : IsEquivalentToObject;
              v6 = v24;
              v17 = v40;
              if ((v28 & 1) == 0)
              {
                v29 = v14 + v16 - (v21.location + v21.length);
                if (v14 + v16 > v21.location + v21.length)
                {
                  if (MustCopyOnSplit)
                  {
                    sub_276F3FE94(v50, v6, v14, v16, 0, *(v41 + 4));
                    sub_276F4015C(v49, 0);
                    sub_276EE3FF0(a2, v50, v49);
                    v32 = objc_msgSend_context(*(v38 + 8), v30, v31);
                    v34 = objc_msgSend_copyWithContext_(v40, v33, v32);

                    sub_276F3FE94(v48, v6, v14, v21.location - v14, v34, *(v41 + 4));
                    sub_276F4015C(v47, 0);
                    sub_276EE3FF0(a2, v48, v47);
                    sub_276F40794(v47);
                    sub_276F40794(v48);

                    sub_276F40794(v49);
                    sub_276F40794(v50);
                  }

                  if (v20)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v36 = objc_msgSend_context(*(v38 + 8), v26, v27);
                    v35 = objc_msgSend_copyWithContext_(v40, v37, v36);
                  }

                  sub_276F3FE94(v50, v6, v21.location + v21.length, v29, v35, *(v41 + 4));
                  sub_276F4015C(v49, 0);
                  sub_276EE3FF0(a2, v50, v49);
                  sub_276F40794(v49);
                  sub_276F40794(v50);
                }
              }
            }
          }
        }

        if (v43 == ++v13)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_276F430E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_276F406BC(v14, a3);
  sub_276F4015C(v13, 0);
  v6 = *(a3 + 4);
  v8 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v7, v15);
  if (v8)
  {
    v9 = sub_276F40884(v14);
    v10 = (*(*v8 + 128))(v8, v9, v16, v17);

    if (v10)
    {
      if (v6)
      {

        goto LABEL_8;
      }

      sub_276F407C4(v12, v14, v10);
      sub_276F4136C(v14, v12);
      sub_276F40794(v12);

      goto LABEL_6;
    }
  }

  if ((v6 & 2) == 0)
  {
LABEL_6:
    sub_276EE3FF0(a2, v14, v13);
  }

LABEL_8:
  sub_276F40794(v13);
  return sub_276F40794(v14);
}

void sub_276F431F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_276F40794(&a9);

  sub_276F40794(&a15);
  sub_276F40794(v16 - 80);
  _Unwind_Resume(a1);
}

void sub_276F43244(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a3 + 8);
  v9 = objc_msgSend_length(*(a1 + 8), a2, a3);
  sub_276F42D1C(a1, a2, a3, a4);
  v42 = v8;
  v11 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v10, v8);
  v12 = *MEMORY[0x277D81490];
  v13 = *(MEMORY[0x277D81490] + 8);
  v43 = a1;
  objc_msgSend_range(*(a1 + 8), v14, v15);
  v16 = TSUIntersectionRangeWithEdge();
  v18 = v17;
  v19 = *(a3 + 24) + *(a3 + 16);
  v20 = v19 > v9;
  v21 = v19 - v9;
  if (v20)
  {
    v22 = v9;
  }

  else
  {
    v22 = v12;
  }

  v37 = v9;
  v38 = v22;
  if (!v20)
  {
    v21 = v13;
  }

  v39 = v21;
  if (!v11)
  {
    goto LABEL_17;
  }

  v23 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v11, v16);
  v40 = *(v11 + 24);
  v41 = v23;
  if (v23 >= v40)
  {
    goto LABEL_17;
  }

  v24 = 0;
  v25 = v23;
  do
  {
    v26 = TSWPAttributeArray::rangeForAttributeIndex(v11, v25);
    v28 = v27;
    v29 = TSWPAttributeArray::objectForAttributeIndex(v11, v25);
    v46.location = v26;
    v46.length = v28;
    v48.location = v16;
    v48.length = v18;
    if (!NSIntersectionRange(v46, v48).length)
    {
      break;
    }

    v47.location = v26;
    v47.length = v28;
    v49.location = v16;
    v49.length = v18;
    v30 = NSIntersectionRange(v47, v49);
    v31 = sub_276F33A94(v43, a3, v29, 0);
    sub_276F3FE94(v45, v42, v30.location, v30.length, v31, *(a3 + 4));
    if (v25 > v41 && (v32 = *(a2 + 56), v33 = (-1 - 0x5555555555555555 * ((*(a2 + 64) - v32) >> 4)), sub_276F414C8(v32 + 48 * v33, v45)))
    {
      sub_276F415E8((*(a2 + 56) + 48 * v33), v45, v44);
      sub_276EE4188(a2, v33, v44);
    }

    else
    {
      sub_276F4015C(v44, 0);
      sub_276EE3FF0(a2, v45, v44);
    }

    sub_276F40794(v44);
    sub_276F40794(v45);

    ++v25;
    v24 = 1;
  }

  while (v40 != v25);

  if ((v24 & 1) == 0)
  {
LABEL_17:
    v34 = sub_276F40884(a3);
    v35 = v34;
    if (v34 && v18)
    {
    }

    else
    {
      if (!TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(v42))
      {
        goto LABEL_25;
      }

      if (v16 != v37 || v18)
      {
        goto LABEL_26;
      }
    }

    v35 = sub_276F33A94(v43, a3, 0, 0);
    sub_276F3FE94(v45, *(a3 + 8), v16, v18, v35, *(a3 + 4));
    sub_276F4015C(v44, 0);
    sub_276EE3FF0(a2, v45, v44);
    sub_276F40794(v44);
    sub_276F40794(v45);
LABEL_25:
  }

LABEL_26:
  if (v39)
  {
    v36 = sub_276F33A94(v43, a3, 0, 0);
    sub_276F3FE94(v45, *(a3 + 8), v38, v39, v36, *(a3 + 4));
    sub_276F4015C(v44, 0);
    sub_276EE3FF0(a2, v45, v44);
    sub_276F40794(v44);
    sub_276F40794(v45);
  }
}

unint64_t sub_276F43638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = a1 + 24;
  }

  v6 = sub_276E3EAC8(v4);
  v104 = v6;
  v113 = a3;
  if (*a3 != 1)
  {
    IsAttachment = TSWPAttributeArray::attributeKindIsAttachment(*(a3 + 8));
    v81 = *(a3 + 8) == 8 || IsAttachment;
    if (v81 == 1)
    {
      v82 = *(a3 + 32);
      LOBYTE(v7) = v82 != 0;
      if (v82)
      {
        v85 = sub_276F40884(a3);
        if (v6)
        {
          objc_msgSend_storageUUIDPath(v6, v83, v84);
        }

        else
        {
          objc_msgSend_objectUUIDPath(*(a1 + 8), v83, v84);
        }
        v119 = ;
        v87 = sub_276D35028(v85, v119);
        if (v6)
        {
          v88 = objc_msgSend_wasObjectMoved_(v6, v86, v85);
          v89 = v82 != 0;
        }

        else
        {
          v89 = v82 != 0;
          v88 = 0;
        }

        v7 = *(v113 + 16);
        v90 = *(v113 + 24);
        if (v88)
        {
          v91 = 1025;
        }

        else
        {
          v91 = 1;
        }

        v93 = *(v113 + 4) | v91;
        if (TSWPAttributeArray::attributeKindIsBreaking(*(v113 + 8)))
        {
          v94 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v92, *(v113 + 8));
          v95 = v94;
          v96 = v93 | 0x800;
          if (v94)
          {
            v97 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v94, v7);
            if (v97 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v98 = TSWPAttributeArray::objectForAttributeIndex(v95, v97);
              v99 = v98;
              if (v98)
              {
                v100 = *(v113 + 4);
                if (v88)
                {
                  v101 = 3138;
                }

                else
                {
                  v101 = 2114;
                }

                v116 = sub_276D35028(v98, v119);
                if (v104)
                {
                  objc_msgSend_indexForObject_(v104, v102, v99);
                }

                sub_276F4046C(v120, v7, 1, v100 | v101, v99);
                sub_276EE3E28(a2, v120);
                v96 = v93 | 0x840;
                sub_276F40794(v120);
              }
            }
          }

          v90 = 1;
        }

        else
        {
          v96 = v93;
        }

        sub_276F4046C(v120, v7, v90, v96, v82);
        v6 = v104;
        sub_276EE3E28(a2, v120);
        LOBYTE(v7) = v89;
        sub_276F40794(v120);
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    goto LABEL_112;
  }

  v7 = 0;
  for (i = 0; i != 3; ++i)
  {
    v9 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v5, qword_276FAC810[i], v104);
    if (!v9 || !*(v9 + 24))
    {
      continue;
    }

    v109 = i;
    v11 = *MEMORY[0x277D81490];
    v10 = *(MEMORY[0x277D81490] + 8);
    v12 = *(v113 + 16);
    v13 = *(v113 + 24);
    v115 = v9;
    v14 = *(v113 + 4);
    v114 = *(v9 + 28);
    if (TSWPAttributeArray::attributeKindIsBreaking(v114))
    {
      v107 = v11;
      v111 = *MEMORY[0x277D81490];
      v117 = *(MEMORY[0x277D81490] + 8);
      v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v115, *(v113 + 16));
      v16 = v7;
      v17 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v115, *(v113 + 24) + *(v113 + 16));
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual BOOL TSWPStorageActionBuilder::buildDOLCActionsForForwardAction(TSWPStorageActionGroup &, const TSWPStorageAction &, int32_t)");
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 567, 0, "Bad attribute index.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
      }

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual BOOL TSWPStorageActionBuilder::buildDOLCActionsForForwardAction(TSWPStorageActionGroup &, const TSWPStorageAction &, int32_t)");
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 568, 0, "Bad attribute index at end.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
      }

      v7 = v16;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = v111;
      }

      else
      {
        v32 = TSWPAttributeArray::rangeForAttributeIndex(v115, v15);
        v117 = v5;
      }

      v6 = v104;
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = 0;
        v34 = *(v115 + 6);
        v35 = *(v113 + 16);
      }

      else
      {
        v36 = TSWPAttributeArray::rangeForAttributeIndex(v115, v17);
        v34 = *(v115 + 6);
        v35 = *(v113 + 16);
        if (v17)
        {
          v33 = *(v113 + 24) + v35 == v36;
        }

        else
        {
          v33 = 0;
        }
      }

      v110 = v14 | 0x802;
      if (v32 > v35 || &v117[v32] < *(v113 + 24) + v35 || v33)
      {
        v10 = 0;
        v37 = (v34 - v15);
        if (v34 > v15)
        {
          v38 = v13 + v33;
          while (1)
          {
            v124.location = TSWPAttributeArray::rangeForAttributeIndex(v115, &v10[v15]);
            location = v124.location;
            length = v124.length;
            v128.location = v12;
            v128.length = v38;
            v5 = NSIntersectionRange(v124, v128).length;
            if (!v5 && (length || location < v12 || location - v12 >= v38))
            {
              break;
            }

            if (v37 == ++v10)
            {
              v10 = v37;
              break;
            }
          }
        }
      }

      else
      {
        v15 = v107;
      }
    }

    else
    {
      v127.location = v12;
      v127.length = v13;
      v15 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(v115, v127);
      v10 = v5;
      v110 = v14 | 2;
    }

    v41 = v115;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v118 = &v15[v10];
    if (v15 >= &v15[v10])
    {
      i = v109;
      continue;
    }

    i = v109;
    do
    {
      v42 = TSWPAttributeArray::objectForAttributeIndex(v41, v15);
      if (!v42)
      {
        goto LABEL_76;
      }

      v43.location = TSWPAttributeArray::rangeForAttributeIndex(v41, v15);
      v44 = v43.location;
      if (v114 != 8)
      {
        v43.length = 1;
        v53 = NSIntersectionRange(v43, *(v113 + 16));
        v47 = v53.length;
        v126.location = v44;
        v126.length = 1;
        v45 = NSIntersectionRange(v126, *(v113 + 16)).length;
        v41 = v115;
        if (v45)
        {
          v44 = v53.location;
          if (v6)
          {
            goto LABEL_43;
          }

LABEL_40:
          v48 = *(a1 + 8);
          v51 = objc_msgSend_objectUUIDPath(v48, v49, v50);

          v52 = v51;
LABEL_44:
          v112 = v52;
          v55 = sub_276D35028(v42, v52);
          if (v6)
          {
            v56 = objc_msgSend_indexForObject_(v6, v54, v42);
            v108 = objc_msgSend_wasObjectMoved_(v6, v57, v42);
            if (v56 < 0)
            {
              goto LABEL_72;
            }

            v58 = v121;
            v59 = v122;
            v60 = v122 - v121;
            v61 = (v122 - v121) >> 2;
            v62 = 0;
            if (v122 != v121)
            {
              if (v61 <= 1)
              {
                v63 = 1;
              }

              else
              {
                v63 = (v122 - v121) >> 2;
              }

              v64 = v121;
              do
              {
                v65 = *v64;
                v64 += 4;
                if (v65 < v56)
                {
                  ++v62;
                }

                --v63;
              }

              while (v63);
            }

            if (v122 >= v123)
            {
              v67 = v61 + 1;
              if ((v61 + 1) >> 62)
              {
                sub_276D34ED8();
              }

              v68 = v123 - v121;
              if ((v123 - v121) >> 1 > v67)
              {
                v67 = v68 >> 1;
              }

              v69 = v68 >= 0x7FFFFFFFFFFFFFFCLL;
              v70 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v69)
              {
                v70 = v67;
              }

              if (v70)
              {
                sub_276F46BD4(&v121, v70);
              }

              *(4 * v61) = v56;
              v66 = 4 * v61 + 4;
              memcpy(0, v58, v60);
              v71 = v121;
              v121 = 0;
              v122 = v66;
              v123 = 0;
              if (v71)
              {
                operator delete(v71);
              }

              v6 = v104;
            }

            else
            {
              *v122 = v56;
              v66 = (v59 + 4);
            }

            v122 = v66;
            if (v56 < v62)
            {
              v72 = MEMORY[0x277D81150];
              v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "virtual BOOL TSWPStorageActionBuilder::buildDOLCActionsForForwardAction(TSWPStorageActionGroup &, const TSWPStorageAction &, int32_t)");
              v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v76, v73, v75, 654, 0, "Placement index transformation failed. Likely downstream assertions during transformation on other client(s).");

              v6 = v104;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78);
            }

            v79 = v56 - v62 < 0;
            v41 = v115;
            if (v79)
            {
LABEL_72:
              if ((v108 & 1) == 0)
              {
                goto LABEL_74;
              }
            }

            else if ((v108 & 1) == 0)
            {
              goto LABEL_74;
            }

            v110 |= 0x400u;
          }

LABEL_74:
          sub_276F4046C(v120, v44, v47, v110, v42);
          sub_276EE3E28(a2, v120);
          sub_276F40794(v120);

          v7 = 1;
        }

        i = v109;
        goto LABEL_76;
      }

      if (v15)
      {
        v125.location = v43.location - 1;
        v125.length = 1;
        v45 = NSIntersectionRange(v125, *(v113 + 16)).length;
        if (v45)
        {
          v47 = 1;
          if (!v6)
          {
            goto LABEL_40;
          }

LABEL_43:
          v52 = objc_msgSend_storageUUIDPath(v6, v45, v46);
          goto LABEL_44;
        }
      }

LABEL_76:

      ++v15;
    }

    while (v15 != v118);
    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }
  }

LABEL_112:

  return v7 & 1;
}

void sub_276F44094(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *a3;
  v8 = *(a3 + 4);
  v10 = *(a3 + 16);
  v11 = v10 == objc_msgSend_length(*(a1 + 8), a2, a3);
  if (sub_276F40DB4(a3, v11))
  {
    v12 = v8 & 3;
    if ((a4 & 1) != 0 && (v9 == 1 ? (v13 = v12 == 0) : (v13 = 0), v13))
    {
      objc_opt_class();
      v14 = TSUDynamicCast();
      sub_276F31920(a2 + 112, v14);

      sub_276F406BC(v22, a3);
      v15 = *(a1 + 16);
      if (!v15)
      {
        v15 = a1 + 24;
      }

      if ((*(v15 + 216) & 1) == 0)
      {
        objc_opt_class();
        v16 = TSUDynamicCast();
        v17 = sub_276F31C6C((a2 + 112), v16);

        sub_276F407C4(v21, a3, v17);
        sub_276F4136C(v22, v21);
        sub_276F40794(v21);
      }

      sub_276F44364(a1, a2, v22);
      sub_276F4448C(v18, a2, v22);
      sub_276F44560(a1, a2, v22);
      sub_276F40794(v22);
    }

    else
    {
      IsBreaking = TSWPAttributeArray::attributeKindIsBreaking(*(a3 + 8));
      v20 = *(a3 + 8);
      if (IsBreaking)
      {
        if (v12 || v20 != 8)
        {

          sub_276F423BC(a1, a2, a3, a4);
        }
      }

      else if (TSWPAttributeArray::attributeKindIsAttachment(v20))
      {
        if (v12)
        {

          sub_276F42B28(a1, a2, a3);
        }
      }

      else if (TSWPAttributeArray::attributeKindIsOverlapping(*(a3 + 8)))
      {

        sub_276F430E0(a1, a2, a3);
      }

      else
      {

        sub_276F43244(a1, a2, a3, a4);
      }
    }
  }
}

void sub_276F44318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_276F40794(&a9);

  sub_276F40794(&a15);
  _Unwind_Resume(a1);
}

void sub_276F44364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v6 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), a2, 0);
    if (v6)
    {
      v7 = v6;
      v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, *(a3 + 24) + *(a3 + 16));
      v9 = TSWPAttributeArray::charIndexForAttributeIndex(v7, v8);
      if (v9 && *(a3 + 16) <= v9)
      {
        v11 = *(a1 + 16);
        if (v11)
        {
          *(v11 + 384) = 1;
        }
      }
    }
  }

  v12 = 0;
  for (i = 0; i < 0x17; v12 = i)
  {
    if (v12)
    {
      if (v12 == 5)
      {
        v13 = *(a2 + 137);
      }

      else
      {
        v13 = v12 == 4 ? *(a2 + 136) : 0;
      }

      actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(*(a1 + 8), a2, v12, v13 & 1, a1);
      if (actionState)
      {
        sub_276F44740(a1, a2, a3, actionState);
      }
    }

    sub_276D14D78(&i);
  }

  v15 = objc_msgSend_attributeArrayForKind_withCreate_actionState_(*(a1 + 8), a2, 0, 0, a1);
  if (v15)
  {
    sub_276F44740(a1, a2, a3, v15);
  }
}

uint64_t sub_276F4448C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  objc_opt_class();
  v7 = TSUDynamicCast();
  sub_276F3FEF8(v10, v5, v6, v7, *(a3 + 4));

  sub_276F4015C(v9, 0);
  sub_276EE3FF0(a2, v10, v9);
  sub_276F40794(v9);
  return sub_276F40794(v10);
}

void sub_276F44530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_276F40794(&a9);
  sub_276F40794(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_276F44560(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_276EE3A74(v22);
  LODWORD(v22[0]) = *a2;
  sub_276F44A8C(v22, (a2 + 14));
  v7 = 0;
  for (i = 0; i < 0x17; v7 = i)
  {
    actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(*(a1 + 8), v6, v7, 0, a1);
    v9 = actionState;
    if (actionState)
    {
      if (TSWPAttributeArray::attributeKindBehavesLikeAField(*(actionState + 28)))
      {
        sub_276F44AD4(a1, v22, a3, v9);
      }

      else if (TSWPAttributeArray::attributeKindIsBreaking(*(v9 + 28)) && *(v9 + 28) != 8)
      {
        sub_276F44F30(a1, v22, a3, v9);
      }
    }

    sub_276D14D78(&i);
  }

  if (v24 != v23)
  {
    v11 = a2[7];
    v10 = a2[8];
    sub_276F33448(a2, v22);
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 4) - 0x5555555555555555 * ((v24 - v23) >> 4) != 0xAAAAAAAAAAAAAAABLL * ((a2[8] - a2[7]) >> 4))
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void TSWPStorageActionBuilder::buildActionsForDidReplaceText(TSWPStorageActionGroup &, const TSWPStorageAction &)");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 891, 0, "appendActionsAndInverseDetailActions failed.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }
  }

  return sub_276EE3B58(v22);
}

void sub_276F44708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_276EE3B58(va);
  _Unwind_Resume(a1);
}

void sub_276F44740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24))
  {
    goto LABEL_2;
  }

  if (!a4 || (*(a2 + 138) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    goto LABEL_16;
  }

  if ((TSWPAttributeArray::attributeKindIsBreaking(*(a4 + 28)) & 1) == 0)
  {
LABEL_16:
    if (!TSWPAttributeArray::attributeKindBehavesLikeAField(*(a4 + 28)))
    {
      return;
    }
  }

LABEL_2:
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_276F4491C(a1, a2, a4, a3, &v19);
  if (a4 && *(a4 + 28) == 3 && v20 != v19)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageActionBuilder::buildActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 807, 0, "Expected no forward action overrides for character table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = v19;
  if (v20 != v19)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      (*(*a1 + 32))(a1, a2, v16 + v17, 2);
      ++v18;
      v16 = v19;
      v17 += 48;
    }

    while (v18 < 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 4));
  }

  v22 = &v19;
  sub_276E40F9C(&v22);
}

void sub_276F448E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_276E40F9C(&a12);
  _Unwind_Resume(a1);
}

void sub_276F4491C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a3)
  {
    if (TSWPAttributeArray::attributeKindIsBreaking(*(a3 + 28)))
    {

      sub_276F4542C(a1, a2, a3, a4, a5);
    }

    else if (TSWPAttributeArray::attributeKindBehavesLikeAField(*(a3 + 28)))
    {

      sub_276F45C2C(a1, v18, a3, a4, a5);
    }
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionBuilder::buildActionsForWillReplaceTextWithAttributeArrayWithActions(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 898, 0, "No attributeArray input.");

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v15, v16);
  }
}

char *sub_276F44A8C(uint64_t a1, uint64_t a2)
{
  result = (a1 + 112);
  if (result != a2)
  {
    result = sub_276E409B0(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  }

  *(a1 + 136) = *(a2 + 24);
  return result;
}

uint64_t sub_276F44AD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionBuilder::buildFieldActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1229, 0, "invalid nil value for '%{public}s'", "attributeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v34 = 0;
  v15 = *(a3 + 4);
  v16 = *(a3 + 16);
  v17 = *(a4 + 28);
  sub_276F4015C(v33, 0);
  if (TSWPAttributeArray::attributeKindTextReplacementAlwaysDeletes(v17))
  {
    if (sub_276E40864())
    {
      v18 = sub_276E40864();
      sub_276F40060(v32, v15, v17, v16, v18, &v34, 0);
      sub_276EE3FF0(a2, v32, v33);
      sub_276F40794(v32);
    }

    return sub_276F40794(v33);
  }

  v19 = sub_276F41C60(a3, *(a4 + 28));
  v20 = sub_276E40864();
  if (*(a3 + 24))
  {
    return sub_276F40794(v33);
  }

  v21 = v20;
  if (!v20)
  {
    return sub_276F40794(v33);
  }

  v22 = *(a3 + 16);
  v25 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(a4, v22);
  v26 = *(a4 + 24);
  if (v25 == v26)
  {
    if (v22 == objc_msgSend_length(*(a1 + 8), v23, v24))
    {
      goto LABEL_15;
    }

    v26 = *(a4 + 24);
  }

  if (v25 >= v26)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = TSWPAttributeArray::charIndexForAttributeIndex(a4, v25);
  }

  if (v27 == v22)
  {
LABEL_15:
    if (v25)
    {
      v28 = TSWPAttributeArray::objectForAttributeIndex(a4, (v25 - 1));
    }

    else
    {
      v28 = 0;
    }

    if (v25 >= *(a4 + 24))
    {
      v29 = 0;
      if (!v28)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v29 = TSWPAttributeArray::objectForAttributeIndex(a4, v25);
      if (!v28)
      {
        goto LABEL_28;
      }
    }

    if (!v29)
    {
      if (v19)
      {
        if (v19 == 1)
        {
LABEL_37:
          sub_276F3FE94(v32, *(a4 + 28), v22, v21, v28, 0);
          sub_276EE3FF0(a2, v32, v33);
          goto LABEL_40;
        }

        if (v19 != 2)
        {
          goto LABEL_41;
        }
      }

      if (v25 != *(a4 + 24))
      {
        goto LABEL_41;
      }

      v30 = objc_msgSend_length(*(a1 + 8), v23, v24);
      sub_276F3FE94(v32, *(a4 + 28), v22, v21 - v22 + v30, 0, 0);
      sub_276EE3FF0(a2, v32, v33);
LABEL_40:
      sub_276F40794(v32);
      goto LABEL_41;
    }

LABEL_28:
    if (!v28 || !v29)
    {
      if (v28 || !v29 || v19 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (v19 != 1)
    {
      if (!v19)
      {
LABEL_39:
        sub_276F3FE94(v32, *(a4 + 28), v22, v21, 0, 0);
        sub_276EE3FF0(a2, v32, v33);
        goto LABEL_40;
      }

LABEL_41:

      return sub_276F40794(v33);
    }

    goto LABEL_37;
  }

  return sub_276F40794(v33);
}

void sub_276F44E7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_276F40794(va);

  sub_276F40794(va1);
  _Unwind_Resume(a1);
}

void sub_276F44F30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a4 + 28)))
    {

      sub_276F463D8(a1, a2, a3, a4);
      return;
    }

    if (!*(a4 + 24))
    {
      return;
    }

    v16 = *(a3 + 16);
    v17 = *(a3 + 24);
    v60 = *(a3 + 4);
    v18 = *(a4 + 28);
    if (!TSWPAttributeArray::attributeKindIsBreaking(v18) || v18 == 8)
    {
      return;
    }

    v20 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a4, v16);
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "void TSWPStorageActionBuilder::buildBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 1167, 0, "Bad attribute index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      v28 = v17;
      v29 = v16;
    }

    else
    {
      v29 = TSWPAttributeArray::rangeForAttributeIndex(a4, v20);
      if (v29 > v16)
      {
        v30 = v17 + v16;
LABEL_24:
        v35 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a4, v30);
        if (v35 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v36 = MEMORY[0x277D81150];
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "void TSWPStorageActionBuilder::buildBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)");
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 1178, 0, "Bad attribute index.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
          v44 = *MEMORY[0x277D81490];
          v43 = *(MEMORY[0x277D81490] + 8);
        }

        else
        {
          v44 = TSWPAttributeArray::rangeForAttributeIndex(a4, v35);
          v43 = v45;
        }

        if (sub_276E408C0(a3) && v16 < v44 && v30 == v44)
        {
          objc_opt_class();
          v46 = TSUDynamicCast();
          objc_opt_class();
          v47 = TSUDynamicCast();
          v50 = objc_msgSend_length(v47, v48, v49);
          v52 = objc_msgSend_characterAtIndex_(v46, v51, v50 - 1);
          v53 = IsParagraphBreakingCharacter(v52);

          if (v53)
          {
            if (!TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(a4 + 28)))
            {
              v63 = 0;
              if (TSWPAttributeArray::hasObjects(v18))
              {
                v54 = TSWPAttributeArray::objectForAttributeIndex(a4, v35);
                if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(v18))
                {
                  v55 = [TSWPStyleDiff alloc];
                  v57 = objc_msgSend_initWithContext_style_(v55, v56, 0, v54);

                  v54 = v57;
                }
              }

              else
              {
                v58 = TSWPAttributeRecord::paragraphData(*(a4 + 8) + 16 * v35, *(a4 + 28));
                v54 = 0;
                v63 = *v58;
              }

              v59 = sub_276E40864();
              sub_276F40060(v62, v60 | 0x800u, v18, v59 + v16, v43, &v63, v54);
              sub_276F4015C(v61, 0);
              sub_276EE3FF0(a2, v62, v61);
              sub_276F40794(v61);
              sub_276F40794(v62);
            }
          }
        }

        return;
      }
    }

    v30 = v17 + v16;
    v31 = v28 + v29;
    v33 = v20 + 1 == *(a4 + 24) || v30 != v31;
    if (v31 >= v30 && v33)
    {
      return;
    }

    goto LABEL_24;
  }

  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionBuilder::buildBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1160, 0, "No attributeArray input.");

  v15 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v15, v13, v14);
}

void sub_276F4538C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_276F40794(va);
  sub_276F40794(va1);

  _Unwind_Resume(a1);
}

void sub_276F4542C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionBuilder::buildBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 921, 0, "No attributeArray input.");

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v15, v16);
    return;
  }

  if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a3 + 28)))
  {

    sub_276F45F90(a1, a2, a3, a4, a5);
    return;
  }

  v106 = a5;
  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  v105 = *(a4 + 4);
  v20 = *(a3 + 28);
  v107 = *(a3 + 28);
  if (TSWPAttributeArray::attributeKindIsBreaking(v107))
  {
    v21 = v20 == 8;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v18);
    v104 = v22;
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v19;
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "void TSWPStorageActionBuilder::buildBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 930, 0, "Bad attribute index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
      v32 = (a3 + 24);
      v33 = 0x8000000000000000;
      v19 = v24;
      v34 = v24;
      v35 = v18;
    }

    else
    {
      v36 = v22;
      v35 = TSWPAttributeArray::rangeForAttributeIndex(a3, v22);
      v33 = v36 + 1;
      v32 = (a3 + 24);
      if (v35 > v18)
      {
        v37 = &v19[v18];
        goto LABEL_25;
      }
    }

    v37 = &v19[v18];
    v38 = &v34[v35];
    v40 = v33 == *v32 || v37 != v38;
    if (v38 >= v37 && v40)
    {
      return;
    }

LABEL_25:
    v97 = v32;
    v103 = v19;
    v41 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v37);
    v43 = MEMORY[0x277D81490];
    v108 = v41;
    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "void TSWPStorageActionBuilder::buildBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 956, 0, "Bad attribute index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
      v43 = MEMORY[0x277D81490];
      v45 = *MEMORY[0x277D81490];
      v47 = *(MEMORY[0x277D81490] + 8);
      v44 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v41;
      v45 = TSWPAttributeArray::rangeForAttributeIndex(a3, v41);
      v47 = v46;
    }

    v55 = v44 + 1 != *(a3 + 24) || v47 == 0;
    v102 = v45;
    v57 = !v55 && v37 > v45;
    v101 = v57;
    v100 = sub_276E408C0(a4);
    range2 = v47;
    if (TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(a3 + 28)) && v35 < v18 && v33 <= v44)
    {
      v59 = v18;
      if (v33 < *v97)
      {
        v59 = TSWPAttributeArray::rangeForAttributeIndex(a3, v33);
        v103 = v58;
        v104 = v33;
      }
    }

    else
    {
      v59 = v18;
    }

    v61 = *v43;
    v60 = v43[1];
    v62 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v58, 0, v97);
    if (v62)
    {
      v63 = v62;
      v64 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v62, v59);
      v65 = v61;
      v98 = v60;
      if (v64 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v65 = TSWPAttributeArray::rangeForAttributeIndex(v63, v64);
        v60 = v66;
      }

      v67 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v63, v37);
      if (v67 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = v67;
        v61 = TSWPAttributeArray::rangeForAttributeIndex(v63, v67);
        v98 = v69;
        if (v68)
        {
          TSWPAttributeArray::rangeForAttributeIndex(v63, v68 - 1);
        }
      }

      v70 = v98;
    }

    else
    {
      v65 = v61;
      v70 = v60;
    }

    v72 = v18 == v65 || v18 == v60 + v65;
    v73 = v61 + v70;
    v75 = v37 > v61 && v37 < v73;
    v76 = v70;
    if ((v100 | v101))
    {
      v77 = v103;
      if (!v72)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v77 = v103;
      if (!v72)
      {
LABEL_72:
        v78 = v104;
        goto LABEL_73;
      }

      if (v37 == v61)
      {
        v78 = v108;
        goto LABEL_73;
      }

      v78 = v108;
      if (v37 == v73)
      {
LABEL_73:
        if (v65 < v59 && v102 > v59)
        {
          v79 = v77 + v59 - v65;
        }

        else
        {
          v65 = v59;
          v79 = v77;
        }

        if (TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(a3 + 28)))
        {
          if (v108 == 0x7FFFFFFFFFFFFFFFLL)
          {
            return;
          }

          v81 = v102;
          if (v102 == v65 && v79 == range2)
          {
            v79 = range2;
          }

          else
          {
            v79 = v102 - v65;
            if (v102 == v65)
            {
              v84 = MEMORY[0x277D81150];
              v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "void TSWPStorageActionBuilder::buildBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)");
              v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v88, v85, v87, 1028, 0, "Expected length during newLead phase.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90);
              v79 = 0;
              v81 = v102;
            }
          }
        }

        else
        {
          v81 = v102;
          if (v102 < v65 + v79 && (v61 != *MEMORY[0x277D81490] || v76 != *(MEMORY[0x277D81490] + 8)))
          {
            if (v61 >= v65 + v79)
            {
              v82 = 0;
            }

            else
            {
              v82 = v76;
            }

            v83 = v82 + v61;
            v79 = v83 - v65;
            range2 = v102 + range2 - v83;
            v81 = v83;
          }
        }

        if (v108 != 0x7FFFFFFFFFFFFFFFLL && v78 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v91 = v81;
          v111[0] = 0;
          if (TSWPAttributeArray::hasObjects(v107))
          {
            v92 = TSWPAttributeArray::objectForAttributeIndex(a3, v78);
            if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a4 + 8)))
            {
              v93 = [TSWPStyleDiff alloc];
              v95 = objc_msgSend_initWithContext_style_(v93, v94, 0, v92);

              v92 = v95;
            }
          }

          else
          {
            v92 = 0;
            v111[0] = *TSWPAttributeRecord::paragraphData(*(a3 + 8) + 16 * v78, *(a3 + 28));
          }

          sub_276F4015C(v110, 0);
          if (v78 == v108 && TSWPAttributeArray::supportsAttributeCollapsing(*(a3 + 28)))
          {
            v113.location = v65;
            v113.length = v79;
            v114.location = v91;
            v114.length = range2;
            v96 = NSUnionRange(v113, v114);
            sub_276F40060(v109, v105 | 0x800u, v107, v96.location, v96.length, v111, v92);
            sub_276F4136C(v110, v109);
            sub_276F40794(v109);
            sub_276EE3F9C(v106, v110);
          }

          else
          {
            sub_276F40060(v109, v105 | 0x800u, v107, v65, v79, v111, v92);
            sub_276F4136C(v110, v109);
            sub_276F40794(v109);
            sub_276EE3F9C(v106, v110);
          }

          sub_276F40794(v110);
        }

        return;
      }
    }

    if (v75)
    {
      v78 = v108;
    }

    else
    {
      v78 = v104;
    }

    goto LABEL_73;
  }
}

void sub_276F45C2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionBuilder::buildFieldActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1084, 0, "invalid nil value for '%{public}s'", "attributeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v36 = a5;
  v40 = 0;
  v35 = *(a4 + 4);
  v16 = *(a4 + 16);
  v17 = *(a4 + 24);
  v18 = sub_276E40864();
  v38 = *(a3 + 28);
  v19 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, *(a4 + 16));
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v20 = TSWPAttributeArray::rangeForAttributeIndex(a3, v19);
  if (TSWPAttributeArray::attributeKindTextReplacementAlwaysDeletes(v38))
  {
    if (!(v17 | v18))
    {
      return;
    }

    v21 = *MEMORY[0x277D81490];
    v22 = *(MEMORY[0x277D81490] + 8);
    v23 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v16);
    v24 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v17 + v16);
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v25 = v24;
    if (v24 == 0x7FFFFFFFFFFFFFFFLL || v23 > v24)
    {
      return;
    }

    v37 = 0;
    while (1)
    {
      v26 = TSWPAttributeArray::objectForAttributeIndex(a3, v23);
      v27.location = TSWPAttributeArray::rangeForAttributeIndex(a3, v23);
      location = v27.location;
      length = v27.length;
      if (v17 && v26)
      {
        v42.location = v16;
        v42.length = v17;
        if (NSIntersectionRange(v27, v42).length)
        {
          goto LABEL_19;
        }
      }

      else if (v26 && !v17 && v16 > v27.location && v16 - v27.location < v27.length)
      {
LABEL_19:
        if (v21 == *MEMORY[0x277D81490] && v22 == *(MEMORY[0x277D81490] + 8))
        {
          v37 = 1;
          v22 = length;
          v21 = location;
        }

        else
        {
          v41.location = v21;
          v41.length = v22;
          v43.location = location;
          v43.length = length;
          v31 = NSUnionRange(v41, v43);
          v21 = v31.location;
          v22 = v31.length;
          v37 = 1;
        }
      }

      if (++v23 > v25)
      {
        if (v37)
        {
          sub_276F40060(v39, v35, v38, v21, v22, &v40, 0);
          sub_276EE3F9C(v36, v39);
          goto LABEL_36;
        }

        return;
      }
    }
  }

  if ((TSWPAttributeArray::attributeKindStyleNeverExtends(v38) & 1) == 0 && TSWPAttributeArray::attributeKindIsSmartField(v38))
  {
    v34 = !v17 && v16 == objc_msgSend_length(*(a1 + 8), v32, v33);
    if (v20 >= v16 && !v34)
    {
      sub_276F40060(v39, v35, v38, v16, v17, &v40, 0);
      sub_276EE3F9C(a5, v39);
LABEL_36:
      sub_276F40794(v39);
    }
  }
}

void sub_276F45F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 1345, 0, "No attributeArray input.");

    v35 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v35, v33, v34);
    return;
  }

  if (!TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a3 + 28)))
  {
    TSUSetCrashReporterInfo();
    v39 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)", "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm", 1347);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v41, v43, 1347, 1, "Expected this method to be called only for single sparse breaking tables.");
    goto LABEL_28;
  }

  v11 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v10, 0);
  if (!v11)
  {
    TSUSetCrashReporterInfo();
    v45 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)", "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForWillReplaceTextWithAttributeArray(TSWPStorageActionGroup &, TSWPAttributeArray *, const TSWPStorageAction &, TSWPStorageActionVector &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm", 1349);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v48, v41, v43, 1349, 1, "The paragraph table is required.");
LABEL_28:

    TSUCrashBreakpoint();
    abort();
  }

  v12 = v11;
  v13 = *(a3 + 28);
  if (!TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(v13))
  {
    return;
  }

  v50 = a5;
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v12, v14);
  v17 = TSWPAttributeArray::rangeForAttributeIndex(v12, v16);
  range1 = v18;
  v19 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v12, v15 + v14);
  v20 = TSWPAttributeArray::rangeForAttributeIndex(v12, v19);
  v22 = v21;
  v23 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a3, v17);
  v49 = *(a4 + 4);
  v53 = 0;
  if ((sub_276F33BE4(a1, a4, a3) & 1) == 0)
  {
    v24 = *(MEMORY[0x277D81490] + 8);
    if ((v17 != *MEMORY[0x277D81490] || range1 != v24) && (v20 != *MEMORY[0x277D81490] || v22 != v24))
    {
      v55.location = v17;
      v55.length = range1;
      v56.location = v20;
      v56.length = v22;
      v36 = NSUnionRange(v55, v56);
      if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a3 + 28)))
      {
        v37 = [TSWPStyleDiff alloc];
        v27 = objc_msgSend_initWithContext_style_(v37, v38, 0, 0);
      }

      else
      {
        v27 = 0;
      }

      sub_276F40060(v52, v49 | 0x800u, v13, v36.location, v36.length, &v53, v27);
      sub_276EE3F9C(v50, v52);
      goto LABEL_24;
    }
  }

  if (*(a2 + 138) == 1 && v17 == v14 && v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a3 + 28)))
    {
      v25 = [TSWPStyleDiff alloc];
      v27 = objc_msgSend_initWithContext_style_(v25, v26, 0, 0);
    }

    else
    {
      v27 = 0;
    }

    sub_276F40060(v52, v49 | 0x800u, *(a3 + 28), v17, 0, &v53, v27);
    sub_276EE3F9C(v50, v52);
LABEL_24:
    sub_276F40794(v52);
  }
}

void sub_276F4637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_276F40794(va);

  _Unwind_Resume(a1);
}

void sub_276F463D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && *(a4 + 24))
  {
    if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a4 + 28)))
    {
      v9 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v8, 0);
      if (v9)
      {
        v10 = v9;
        v12 = *(a3 + 16);
        v11 = *(a3 + 24);
        v62 = *(a3 + 4);
        v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v9, v12);
        v14 = TSWPAttributeArray::rangeForAttributeIndex(v10, v13);
        v58 = v15;
        v16 = &v12[v11];
        v17 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, &v12[v11]);
        v61 = TSWPAttributeArray::rangeForAttributeIndex(v10, v17);
        v19 = v18;
        v20 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a4, v14);
        v21 = sub_276F33E7C(a1, v12, v11);
        v59 = *(MEMORY[0x277D81490] + 8);
        v60 = *MEMORY[0x277D81490];
        if (sub_276F33BE4(a1, a3, a4))
        {
LABEL_6:
          v24 = 0;
          v25 = 0;
          goto LABEL_16;
        }

        v26 = objc_msgSend_length(*(a1 + 8), v22, v23);
        if (v12 != v14)
        {
          goto LABEL_11;
        }

        if (v16 != v26 && v61 + v19 <= v16)
        {
          goto LABEL_6;
        }

        if (!v21)
        {
          v27 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a4, v61);
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_12;
          }
        }

        else
        {
LABEL_11:
          v27 = v20;
          if (v20 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_12:
            v24 = 0;
LABEL_15:
            v25 = 1;
LABEL_16:
            v28 = sub_276F31F60(a2 + 112);
            if (*(a2 + 138) == 1)
            {
              v30 = v28;
              if (v28 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = MEMORY[0x277D81150];
                v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)");
                v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 1478, 0, "Should have at least 1 breaking character in markers.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
              }

              else if (v14 == v12 && v20 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v28 == sub_276E40864() - 1 || v58)
                {
                  if ((v25 & 1) == 0)
                  {
                    v47 = TSWPAttributeArray::objectForAttributeIndex(a4, v20);

                    v24 = v47;
                  }

                  v39 = 0;
                  v40 = 0;
                  v14 = &v12[v30 + 1];
                  v65[0] = 0;
                  goto LABEL_30;
                }

                v25 = 0;
              }

              if (v14 < v61)
              {
                v38 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a4, v61);
                if (v30 != 0x7FFFFFFFFFFFFFFFLL && v38 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v39 = TSWPAttributeArray::objectForAttributeIndex(a4, v38);
                  v65[0] = 0;
                  v59 = 1;
                  v60 = &v12[v30 + 1];
                  v40 = 1;
                  if ((v25 & 1) == 0)
                  {
LABEL_33:
                    if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a4 + 28)))
                    {
                      v44 = [TSWPStyleDiff alloc];
                      v46 = objc_msgSend_initWithContext_style_(v44, v45, 0, v39);

                      v39 = v46;
                    }

                    sub_276F40060(v64, v62 | 0x800u, *(a4 + 28), v60, v59, v65, v39);
                    sub_276F4015C(v63, 0);
                    sub_276EE3FF0(a2, v64, v63);
                    sub_276F40794(v63);
                    sub_276F40794(v64);
                    goto LABEL_36;
                  }

LABEL_30:
                  if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a4 + 28)))
                  {
                    v41 = [TSWPStyleDiff alloc];
                    v43 = objc_msgSend_initWithContext_style_(v41, v42, 0, v24);

                    v24 = v43;
                  }

                  sub_276F40060(v64, v62 | 0x800u, *(a4 + 28), v14, 1, v65, v24);
                  sub_276F4015C(v63, 0);
                  sub_276EE3FF0(a2, v64, v63);
                  sub_276F40794(v63);
                  sub_276F40794(v64);
                  if ((v40 & 1) == 0)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_33;
                }
              }
            }

            v39 = 0;
            v40 = 0;
            v65[0] = 0;
            if (!v25)
            {
LABEL_36:

              return;
            }

            goto LABEL_30;
          }
        }

        v24 = TSWPAttributeArray::objectForAttributeIndex(a4, v27);
        goto LABEL_15;
      }

      TSUSetCrashReporterInfo();
      v54 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)", "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm", 1414);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v57, v50, v52, 1414, 1, "The paragraph attribute array should be non-NULL.");
    }

    else
    {
      TSUSetCrashReporterInfo();
      v48 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)", "void TSWPStorageActionBuilder::buildSingleSparseBreakingActionsForDidReplaceTextWithAttributeArray(TSWPStorageActionGroup &, const TSWPStorageAction &, TSWPAttributeArray *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm", 1411);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v50, v52, 1411, 1, "This method only handles table that respond true to supportsSingleSparseBreakingTableEntries.");
    }

    TSUCrashBreakpoint();
    abort();
  }
}

void sub_276F46970(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_276F4015C(a3, 0);
  v6 = *(a2 + 4);
  if ((v6 & 0x20) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = (v6 >> 4) & 1;
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  objc_opt_class();
  v11 = TSUDynamicCast();
  v13 = objc_msgSend_pOverrideObjectBeforeReplacingCharactersInRange_withString_withInsertionBehavior_(v8, v12, v9, v10, v11, v7);

  if (v13 || (v23 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v14, 3)) != 0 && (v24 = *(a2 + 16), v25 = *(a2 + 24), objc_opt_class(), TSUDynamicCast(), v26 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend_length(v26, v27, v28), (*(*v23 + 120))(v23, v24, v25, v29, a1), v13 = objc_claimAutoreleasedReturnValue(), v26, v13))
  {
    v15 = *(a2 + 16);
    objc_opt_class();
    v16 = TSUDynamicCast();
    v19 = objc_msgSend_length(v16, v17, v18);

    v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21);

    if (v13 == v22)
    {

      v13 = 0;
    }

    v31 = 0;
    sub_276F40060(v30, v6, 3, v15, v19, &v31, v13);
    sub_276F4136C(a3, v30);
    sub_276F40794(v30);
  }
}

void sub_276F46B9C(void *a1)
{
  sub_276F32E10(a1);

  JUMPOUT(0x277CA3D00);
}

void sub_276F46BD4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_276D34F38();
}

id TSWPSecondaryHighlight.__allocating_init(ranges:color:pathStyle:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_276F48A28(a1, 0, a2, a3);

  return v8;
}

id TSWPSecondaryHighlight.__allocating_init(rangeArray:color:pathStyle:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v14[4] = sub_276F48C54;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_276F4707C;
  v14[3] = &unk_288609A88;
  v10 = _Block_copy(v14);

  [a1 enumerateRanges_];
  _Block_release(v10);
  swift_beginAccess();
  objc_allocWithZone(v4);

  v12 = sub_276F48A28(v11, 0, a2, a3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();

  return v12;
}

id TSWPSecondaryHighlight.init(rangeArray:color:pathStyle:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v12[4] = sub_276F495FC;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_276F4707C;
  v12[3] = &unk_288609AB0;
  v8 = _Block_copy(v12);

  [a1 enumerateRanges_];
  _Block_release(v8);
  swift_beginAccess();
  objc_allocWithZone(ObjectType);

  v10 = sub_276F48A28(v9, 0, a2, a3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();

  return v10;
}

uint64_t sub_276F46FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = *(a5 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v8;
  if ((result & 1) == 0)
  {
    result = sub_276F4D2DC(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
    *(a5 + 16) = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_276F4D2DC((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(a5 + 16) = v8;
  return result;
}

uint64_t sub_276F4707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

id TSWPSecondaryHighlight.__allocating_init(range:color:pathStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  sub_276F48C74(&qword_280A57BA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_276FAC850;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = objc_allocWithZone(v4);
  v12 = sub_276F48A28(v10, 0, a3, a4);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

id TSWPSecondaryHighlight.init(range:color:pathStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_276F48C74(&qword_280A57BA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_276FAC850;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = objc_allocWithZone(ObjectType);
  v11 = sub_276F48A28(v9, 0, a3, a4);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

id TSWPSecondaryHighlight.__allocating_init(smartField:color:pathStyle:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = objc_allocWithZone(v3);
  v9 = sub_276F48A28(a1, 1, a2, a3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id TSWPSecondaryHighlight.init(smartField:color:pathStyle:)(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjectType());
  v7 = sub_276F48A28(a1, 1, a2, a3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t TSWPSecondaryHighlight.selectionVisibility.getter()
{
  v1 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_selectionVisibility;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TSWPSecondaryHighlight.selectionVisibility.setter(char a1)
{
  v3 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_selectionVisibility;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

TSText::TSWPSecondaryHighlight::SelectionVisibility_optional __swiftcall TSWPSecondaryHighlight.SelectionVisibility.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_276F47744()
{
  v1 = *v0;
  sub_276F59ED8();
  MEMORY[0x277CA10E0](v1);
  return sub_276F59EF8();
}

uint64_t sub_276F477B8()
{
  v1 = *v0;
  sub_276F59ED8();
  MEMORY[0x277CA10E0](v1);
  return sub_276F59EF8();
}

uint64_t *sub_276F477FC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t TSWPSecondaryHighlight.highlightOrdering.getter()
{
  v1 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_highlightOrdering;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TSWPSecondaryHighlight.highlightOrdering.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_highlightOrdering;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t TSWPSecondaryHighlight.HighlightOrdering.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_276F479DC()
{
  v1 = *v0;
  sub_276F59ED8();
  MEMORY[0x277CA10E0](v1);
  return sub_276F59EF8();
}

uint64_t sub_276F47A50()
{
  v1 = *v0;
  sub_276F59ED8();
  MEMORY[0x277CA10E0](v1);
  return sub_276F59EF8();
}

uint64_t *sub_276F47A94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Bool __swiftcall TSWPSecondaryHighlight.wantsCaretAndSelectionVisible(for:)(TSWPSelection *a1)
{
  v3 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_selectionVisibility;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v1 + v3) && v4 != 1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x277D84FA0];
    if ([(TSWPSelection *)a1 validVisualRanges])
    {
      v6 = [(TSWPSelection *)a1 ranges];
      aBlock[4] = sub_276F49024;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_276F4707C;
      aBlock[3] = &unk_288609B00;
      v7 = _Block_copy(aBlock);

      [(TSWPRangeArray *)v6 enumerateRanges:v7];
      _Block_release(v7);
    }

    else
    {
      v8 = [(TSWPSelection *)a1 DEPRECATED_range];
      sub_276F481B8(aBlock, v8, v9);
    }

    v10 = *(v1 + OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_rangeSource);
    if (*(v1 + OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_rangeSource + 8))
    {
      sub_276F48C74(&qword_280A57BA0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_276FAC850;
      *(v11 + 32) = [v10 range];
      *(v11 + 40) = v12;
      sub_276F48F98(v10, 1);
      v10 = v11;
    }

    else
    {
    }

    v13 = sub_276F48FA4(v10);

    swift_beginAccess();
    v14 = sub_276F4802C(v13, *(v5 + 16));

    LOBYTE(v4) = v14 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_276F47D9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_276F481B8(&v5, a1, a2);
  return swift_endAccess();
}

id TSWPSecondaryHighlight.action(for:forKey:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEB68]);

  return [v0 init];
}

id TSWPSecondaryHighlight.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TSWPSecondaryHighlight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_276F4801C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_276F4802C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v14 = *v13;
    v15 = v13[1];
    sub_276F59ED8();
    MEMORY[0x277CA10E0](v14);
    MEMORY[0x277CA10E0](v15);
    result = sub_276F59EF8();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      if (v21 == v14 && v20 == v15)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_276F481B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_276F59ED8();
  MEMORY[0x277CA10E0](a2);
  MEMORY[0x277CA10E0](a3);
  v8 = sub_276F59EF8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_276F4853C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_276F482D4()
{
  v1 = v0;
  v2 = *v0;
  sub_276F48C74(&qword_280A57C88);
  result = sub_276F59E08();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_276F59ED8();
      MEMORY[0x277CA10E0](v18);
      MEMORY[0x277CA10E0](v19);
      result = sub_276F59EF8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_276F4853C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_276F482D4();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_276F486AC();
      a3 = v9;
      goto LABEL_15;
    }

    sub_276F487F0();
  }

  v10 = *v4;
  sub_276F59ED8();
  MEMORY[0x277CA10E0](v6);
  MEMORY[0x277CA10E0](a2);
  result = sub_276F59EF8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = sub_276F59EB8();
  __break(1u);
  return result;
}

void *sub_276F486AC()
{
  v1 = v0;
  sub_276F48C74(&qword_280A57C88);
  v2 = *v0;
  v3 = sub_276F59DF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_276F487F0()
{
  v1 = v0;
  v2 = *v0;
  sub_276F48C74(&qword_280A57C88);
  result = sub_276F59E08();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_276F59ED8();
      MEMORY[0x277CA10E0](v17);
      MEMORY[0x277CA10E0](v18);
      result = sub_276F59EF8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

id sub_276F48A28(void *a1, char a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_selectionVisibility] = 0;
  v11 = 1;
  *&v5[OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_highlightOrdering] = 1;
  v12 = &v5[OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_rangeSource];
  *v12 = a1;
  v12[8] = a2 & 1;
  *&v5[OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_color] = a3;
  *&v5[OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_pathStyle] = a4;
  v24 = MEMORY[0x277D84F90];
  if ((a2 & 1) != 0 || (v11 = a1[2]) != 0)
  {
    v22 = ObjectType;
    v13 = a3;
    sub_276F49570(a1, a2 & 1);
    do
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
      [v14 setEdgeAntialiasingMask_];
      [v14 setFillColor_];
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v13, 1.0);
      [v14 setStrokeColor_];

      v16 = v14;
      MEMORY[0x277CA0F40]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_276F59D78();
      }

      sub_276F59D98();

      --v11;
    }

    while (v11);
    v17 = v24;
    v18 = v22;
  }

  else
  {
    v20 = ObjectType;
    v21 = a3;
    sub_276F49570(a1, 0);
    v18 = v20;
    v17 = MEMORY[0x277D84F90];
  }

  *&v5[OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_layers] = v17;
  v23.receiver = v5;
  v23.super_class = v18;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_276F48C1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_276F48C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_276F48C74(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_276F48CBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_rangeSource);
  if (*(v0 + OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_rangeSource + 8) == 1)
  {
    sub_276F48C74(&qword_280A57BA0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_276FAC850;
    *(v2 + 32) = [v1 range];
    *(v2 + 40) = v3;
    v4 = 1;
    sub_276F48F98(v1, 1);
    v1 = v2;
    v5 = *(v24 + OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_layers);
LABEL_4:
    if (v5 >> 62)
    {
      goto LABEL_24;
    }

    v21 = v5 & 0xFFFFFFFFFFFFFF8;
    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_276F59E78())
    {
      v6 = 0;
      v18 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_pathStyle;
      v7 = v1 + 5;
      v22 = *MEMORY[0x277D81490];
      v20 = *(MEMORY[0x277D81490] + 8);
      v19 = v4;
      while (v6 < v1[2])
      {
        if (i == v6)
        {
          goto LABEL_19;
        }

        v9 = *(v7 - 1);
        v8 = *v7;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x277CA1020](v6, v5);
        }

        else
        {
          if (v6 >= *(v21 + 16))
          {
            goto LABEL_23;
          }

          v10 = *(v5 + 8 * v6 + 32);
        }

        v11 = v10;
        [v10 setDelegate_];
        if (v9 == v22 && v8 == v20 || (v12 = objc_opt_self(), sub_276F494D0(0, &qword_280A57C68), v13 = v1, v14 = sub_276F59D58(), v15 = [v12 pathForHighlightWithRange:v9 columnArray:v8 pathStyle:{v14, *(v24 + v18)}], v14, v1 = v13, v4 = v19, !v15))
        {
          [v11 setPath_];
        }

        else
        {
          v16 = [v15 CGPath];
          [v11 setPath_];
        }

        ++v6;

        v7 += 2;
        if (v4 == v6)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v21 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v4 = v1[2];
  v5 = *(v24 + OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_layers);

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_19:
}

void sub_276F48F98(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_276F48FA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for _NSRange(0);
  v4 = v3;
  v5 = sub_276F49518();
  result = MEMORY[0x277CA0FA0](v2, v4, v5);
  v9 = result;
  if (v2)
  {
    v7 = (a1 + 40);
    do
    {
      sub_276F481B8(&v8, *(v7 - 1), *v7);
      v7 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_276F4902C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_276F48C74(&qword_280A57C78);
    v3 = sub_276F59EA8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_276F4D870(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_276F49128()
{
  result = qword_280A57BC8;
  if (!qword_280A57BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A57BC8);
  }

  return result;
}

unint64_t sub_276F49180()
{
  result = qword_280A57BD0;
  if (!qword_280A57BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A57BD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSWPSecondaryHighlight.SelectionVisibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TSWPSecondaryHighlight.SelectionVisibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_276F493AC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_276F493C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_276F49408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_276F49468(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_276F49474(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_276F49494(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_276F494D0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_276F49518()
{
  result = qword_280A57C80;
  if (!qword_280A57C80)
  {
    type metadata accessor for _NSRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A57C80);
  }

  return result;
}

id sub_276F49570(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_276F495A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

CGSize __swiftcall TSWPHeaderLayout.maximumFrameSize(forChild:)(TSDLayout_optional *forChild)
{
  [v1 maxSize];
  v4 = v3 * 0.800000012;
  result.height = v4;
  result.width = v2;
  return result;
}

id TSWPHeaderLayout.init(info:frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 frame:{a2, a3, a4, a5}];
  swift_unknownObjectRelease();
  return v5;
}

id TSWPHeaderLayout.init(info:frame:)(uint64_t a1)
{
  v3.super_class = TSWPHeaderLayout;
  v1 = objc_msgSendSuper2(&v3, sel_initWithInfo_frame_, a1);
  swift_unknownObjectRelease();
  if (v1)
  {
  }

  return v1;
}

id TSWPHeaderLayout.init(info:storage:frame:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 storage:a2 frame:{a3, a4, a5, a6}];
  swift_unknownObjectRelease();

  return v7;
}

id TSWPHeaderLayout.init(info:storage:frame:)(uint64_t a1, void *a2)
{
  v5.super_class = TSWPHeaderLayout;
  v3 = objc_msgSendSuper2(&v5, sel_initWithInfo_storage_frame_, a1, a2);
  swift_unknownObjectRelease();

  if (v3)
  {
  }

  return v3;
}

id TSWPHeaderLayout.init(info:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v3.super_class = TSWPHeaderLayout;
  v1 = objc_msgSendSuper2(&v3, sel_initWithInfo_, a1);
  swift_unknownObjectRelease();
  if (v1)
  {
  }

  return v1;
}

unint64_t type metadata accessor for TSWPHeaderLayout()
{
  result = qword_280A57D00;
  if (!qword_280A57D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A57D00);
  }

  return result;
}

uint64_t sub_276F49B4C(uint64_t a1)
{
  sub_276F59E58();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_276F59E48();
    TSUSetCrashReporterInfov();
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    sub_276F4AFF4((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_276F59F08();
    v8 = *v3;
    v9 = *(result + 16);
    v10 = __OFADD__(*v3, v9);
    v11 = *v3 + v9;
    if (v10)
    {
      break;
    }

    v12 = v2[4];
    if (v12 >= v11)
    {
      goto LABEL_18;
    }

    if (v12 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v13 = v2[5];
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    v2[4] = v11;
    if ((v11 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v14 = result;
    v15 = swift_slowAlloc();
    v16 = v15;
    v2[5] = v15;
    if (v13)
    {
      if (v15 != v13 || v15 >= &v13[8 * v8])
      {
        memmove(v15, v13, 8 * v8);
      }

      sub_276F59E38();
      result = v14;
LABEL_18:
      v16 = v2[5];
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v14;
    if (!v16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v18 = *(result + 16);
    if (v18)
    {
      v19 = (result + 32);
      v20 = *v3;
      while (1)
      {
        v21 = *v19++;
        *&v16[8 * v20] = v21;
        v20 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v20;
        if (!--v18)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t TSWPStorage.ParagraphInfo.charRange.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

BOOL sub_276F49DA4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return a1[1] == a2[1] && a1[2] == a2[2];
}

uint64_t TSWPStorage.Paragraphs.makeIterator()(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_276F4AC40(v5, a2, a3);

  return v6;
}

void sub_276F49E30(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_276F4AC40(*v1, *(v1 + 8), *(v1 + 16));
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
}

uint64_t sub_276F49E98()
{
  v1 = *v0;
  sub_276F4A570(*v0, *(v0 + 8), *(v0 + 16));
  v3 = v2;

  return v3;
}

uint64_t TSWPStorage.paragaphs()()
{
  v1 = v0;
  v2 = [v1 characterCount];

  return sub_276F4AA94(v1, 0, v2);
}

id TSWPStorage.paragraphs(from:)(unint64_t a1)
{
  v3 = v1;
  result = [v3 characterCount];
  if (result < a1)
  {
    __break(1u);
  }

  else
  {

    return sub_276F4AA94(v3, a1, result);
  }

  return result;
}

uint64_t TSWPStorage.paragraphs(in:)(uint64_t result, uint64_t a2)
{
  v3 = a2 + 1;
  if (a2 == -1)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = [v2 characterCount];
    if (v5 < v4)
    {
      v4 = v5;
    }

    if (v5 < v3)
    {
      v3 = v5;
    }

    v6 = v2;

    return sub_276F4AA94(v6, v4, v3);
  }

  return result;
}

uint64_t TSWPStorage.paragraphs(in:)(unint64_t a1, unint64_t a2)
{
  v5 = [v2 characterCount];
  if (v5 < a1)
  {
    a1 = v5;
  }

  if (v5 < a2)
  {
    a2 = v5;
  }

  v6 = v2;

  return sub_276F4AA94(v6, a1, a2);
}

uint64_t TSWPStorage.paragraphInfo(at:)(unint64_t a1)
{
  if ([v1 characterCount] < a1)
  {
    goto LABEL_8;
  }

  v3 = v1;
  v4 = [v3 characterCount];
  if (v4 < a1)
  {
    __break(1u);
LABEL_8:
    sub_276F49B4C(MEMORY[0x277D84F90]);
    sub_276F59E58();
    v16 = swift_allocObject();
    v16[2] = 8;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
    v17 = sub_276F59E48();
    v18 = objc_opt_self();
    sub_276F59E18();
    v19 = sub_276F59D08();

    sub_276F59E18();
    v20 = sub_276F59D08();

    sub_276F59E18();
    v21 = sub_276F59D08();

    [v18 handleFailureInFunction:v19 file:v20 lineNumber:60 isFatal:1 format:v21 args:v17];

    TSUCrashBreakpoint();
    result = sub_276F59E68();
    __break(1u);
    return result;
  }

  v5 = sub_276F4AA94(v3, a1, v4);
  v8 = sub_276F4AC40(v5, v6, v7);
  v10 = v9;
  v12 = v11;

  if (v10 >= v12)
  {
    sub_276F4A3F0(v12, v8);
    v13 = v14;
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t TSWPParagraphIterator.next()()
{
  if (*(v0 + 8) < *(v0 + 16))
  {
    return 0;
  }

  v2 = sub_276F4A3F0(*(v0 + 16), *v0);
  result = v3;
  *(v0 + 16) = v2;
  return result;
}

unint64_t sub_276F4A324(uint64_t a1, id a2)
{
  if ([a2 hasTrackedChanges])
  {
    result = [a2 paragraphCount];
    v5 = result;
    while (a1 != -1)
    {
      v6 = a1;
      if (a1 + 1 >= v5)
      {
        return v6;
      }

      result = [a2 textRangeForParagraphAtIndex_];
      v8 = result + v7;
      if (__OFADD__(result, v7))
      {
        goto LABEL_13;
      }

      if (__OFSUB__(v8, 1))
      {
        goto LABEL_14;
      }

      if (v8 - 1 < 0)
      {
        goto LABEL_15;
      }

      result = [a2 hasHiddenTextAtCharIndex_];
      ++a1;
      if ((result & 1) == 0)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    return a1;
  }

  return result;
}

char *sub_276F4A3F0(uint64_t a1, id a2)
{
  v4 = [a2 charIndexForParagraphAtIndex_];
  v5 = [a2 characterCount];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = [a2 indexOfFirstVisibleCharInRange_];
  v9 = sub_276F59CF8();
  if (v8 == v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  [a2 paragraphIndexAtCharIndex_];
  v12 = sub_276F4A324(a1, a2);
  result = [a2 textRangeForParagraphAtIndex_];
  v15 = &result[v14];
  if (__OFADD__(result, v14))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < v4)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

void sub_276F4A500(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v3 >= v4)
  {
    *(v1 + 16) = sub_276F4A3F0(*(v1 + 16), *v1);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v3 < v4;
}

void sub_276F4A570(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_276F4AC40(v5, a2, a3);
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x277D84F90];
  v45 = v8;
  if (v8 >= v10)
  {
    v12 = 0;
    v13 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      v14 = [v6 charIndexForParagraphAtIndex_];
      v15 = [v6 characterCount];
      v16 = v14 <= v15 ? v15 : v14;
      v17 = v14 >= v15 ? v15 : v14;
      v18 = [v6 indexOfFirstVisibleCharInRange_];
      v19 = sub_276F59CF8();
      v20 = v18 == v19 ? v14 : v18;
      v21 = v19 >= 0 ? v20 : v18;
      v46 = [v6 paragraphIndexAtCharIndex_];
      if ([v6 hasTrackedChanges])
      {
        break;
      }

      v23 = v10;
LABEL_26:
      v27 = [v6 textRangeForParagraphAtIndex_];
      v29 = &v27[v28];
      if (__OFADD__(v27, v28))
      {
        goto LABEL_51;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      v10 = v23 + 1;
      if (v23 == -1)
      {
        goto LABEL_53;
      }

      if (v29 < v14)
      {
        goto LABEL_54;
      }

      if (!v12)
      {
        v30 = v11[3];
        if (((v30 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_56;
        }

        v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
        if (v31 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        sub_276F48C74(&qword_280A57D10);
        v33 = swift_allocObject();
        v34 = (j__malloc_size(v33) - 32) / 24;
        v33[2] = v32;
        v33[3] = 2 * v34;
        v35 = (v33 + 4);
        v36 = v11[2];
        v37 = v11;
        v38 = v11[3] >> 1;
        if (v36)
        {
          v39 = v37 + 4;
          v40 = v37;
          if (v33 != v37 || v35 >= v39 + 24 * v38)
          {
            memmove(v33 + 4, v39, 24 * v38);
          }

          v40[2] = 0;
        }

        v13 = (v35 + 24 * v38);
        v12 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v38;

        v11 = v33;
      }

      v41 = __OFSUB__(v12--, 1);
      if (v41)
      {
        goto LABEL_55;
      }

      *v13 = v46;
      v13[1] = v14;
      v13[2] = v29;
      v13 += 3;
      if (v45 < v10)
      {
        goto LABEL_43;
      }
    }

    v22 = [v6 paragraphCount];
    while (v10 != -1)
    {
      v23 = v10;
      if (v10 + 1 >= v22)
      {
        goto LABEL_26;
      }

      v24 = [v6 textRangeForParagraphAtIndex_];
      v26 = &v24[v25];
      if (__OFADD__(v24, v25))
      {
        goto LABEL_48;
      }

      if (__OFSUB__(v26, 1))
      {
        goto LABEL_49;
      }

      if (((v26 - 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      ++v10;
      if (([v6 hasHiddenTextAtCharIndex_] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = 0;
LABEL_43:

  v42 = v11[3];
  if (v42 >= 2)
  {
    v43 = v42 >> 1;
    v41 = __OFSUB__(v43, v12);
    v44 = v43 - v12;
    if (!v41)
    {
      v11[2] = v44;
      return;
    }

LABEL_57:
    __break(1u);
  }
}

void sub_276F4A86C(char **a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_276F4AC40(a4, a5, a6);
  v35 = v11;
  v13 = v12;

  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v33 = a1;
      v34 = a3;
      v14 = 1;
      a1 = &selRef_setHeightValid_;
      while (1)
      {
        if (v35 < v13)
        {
LABEL_37:
          a1 = v33;
          goto LABEL_38;
        }

        v15 = [v10 charIndexForParagraphAtIndex_];
        v16 = [v10 characterCount];
        v17 = v15 <= v16 ? v16 : v15;
        v18 = v15 >= v16 ? v16 : v15;
        v19 = [v10 indexOfFirstVisibleCharInRange_];
        v20 = sub_276F59CF8();
        v21 = v19 == v20 ? v15 : v19;
        v22 = v20 >= 0 ? v21 : v19;
        v23 = [v10 paragraphIndexAtCharIndex_];
        if ([v10 hasTrackedChanges])
        {
          break;
        }

        v25 = v13;
LABEL_28:
        v29 = [v10 textRangeForParagraphAtIndex_];
        v31 = &v29[v30];
        if (__OFADD__(v29, v30))
        {
          goto LABEL_43;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v13 = v25 + 1;
        if (v25 == -1)
        {
          goto LABEL_45;
        }

        if (v31 < v15)
        {
          goto LABEL_46;
        }

        *a2 = v23;
        a2[1] = v15;
        a2[2] = v31;
        if (v14 == v34)
        {
          goto LABEL_37;
        }

        a2 += 3;
        if (__OFADD__(v14++, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      v24 = [v10 paragraphCount];
      while (v13 != -1)
      {
        v25 = v13;
        if (v13 + 1 >= v24)
        {
          goto LABEL_28;
        }

        v26 = [v10 textRangeForParagraphAtIndex_];
        v28 = &v26[v27];
        if (__OFADD__(v26, v27))
        {
          goto LABEL_40;
        }

        if (__OFSUB__(v28, 1))
        {
          goto LABEL_41;
        }

        if (((v28 - 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        ++v13;
        if (([v10 hasHiddenTextAtCharIndex_] & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    *a1 = v10;
    a1[1] = v35;
    a1[2] = v13;
  }
}

uint64_t sub_276F4AA94(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 characterCount] >= a3)
  {
    return a1;
  }

  sub_276F49B4C(MEMORY[0x277D84F90]);
  sub_276F59E58();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v6 = sub_276F59E48();
  v7 = objc_opt_self();
  sub_276F59E18();
  v8 = sub_276F59D08();

  sub_276F59E18();
  v9 = sub_276F59D08();

  sub_276F59E18();
  v10 = sub_276F59D08();

  [v7 handleFailureInFunction:v8 file:v9 lineNumber:31 isFatal:1 format:v10 args:v6];

  TSUCrashBreakpoint();
  result = sub_276F59E68();
  __break(1u);
  return result;
}

uint64_t sub_276F4AC40(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 characterCount] < a3)
  {
    sub_276F49B4C(MEMORY[0x277D84F90]);
    sub_276F59E58();
    v10 = swift_allocObject();
    v10[2] = 8;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
    v11 = sub_276F59E48();
    v12 = objc_opt_self();
    sub_276F59E18();
    v13 = sub_276F59D08();

    sub_276F59E18();
    v14 = sub_276F59D08();

    sub_276F59E18();
    v15 = sub_276F59D08();

    [v12 handleFailureInFunction:v13 file:v14 lineNumber:81 isFatal:1 format:v15 args:v11];

    TSUCrashBreakpoint();
    result = sub_276F59E68();
    __break(1u);
  }

  else
  {
    v6 = a1;
    v7 = [v6 paragraphIndexAtCharIndex_];
    if ([v6 hasTrackedChanges] && v7)
    {
      do
      {
        v8 = [v6 textRangeForParagraphAtIndex_];
        if (v8 < 1)
        {
          break;
        }

        if (![v6 hasHiddenTextAtCharIndex_])
        {
          break;
        }

        --v7;
      }

      while (v7);
    }

    sub_276F4A324([v6 paragraphIndexAtCharIndex_], v6);
    return v6;
  }

  return result;
}

unint64_t sub_276F4AE7C()
{
  result = qword_280A57D08;
  if (!qword_280A57D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A57D08);
  }

  return result;
}

__n128 _s13ParagraphInfoVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s13ParagraphInfoVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13ParagraphInfoVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_276F4AF54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_276F4AFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_276F4AFF4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_276F4B040()
{
  swift_getObjectType();
  if ([v0 valueForProperty_])
  {
    sub_276F59DD8();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_276F4E9D0(v14);
    goto LABEL_20;
  }

  sub_276F48C74(&qword_280A57D50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v10 = [swift_getObjCClassFromMetadata() defaultLabelNumberType];
    type metadata accessor for TSWPListNumberType(0);
    v4 = sub_276F59D88();
    v4[2] = 9;
    v4[4] = v10;
    v4[5] = v10;
    v4[6] = v10;
    v4[7] = v10;
    v4[8] = v10;
    v4[9] = v10;
    v4[10] = v10;
    v4[11] = v10;
    v4[12] = v10;
    return v4;
  }

  if (v11 >> 62)
  {
    goto LABEL_23;
  }

  v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
LABEL_24:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    *&v14[0] = MEMORY[0x277D84F90];
    result = sub_276F4D600(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      break;
    }

    v3 = 0;
    v4 = *&v14[0];
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x277CA1020](v3);
        goto LABEL_15;
      }

      if ((v3 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(v11 + 8 * v3 + 32);
LABEL_15:
      v6 = v5;
      v7 = [v5 unsignedIntegerValue];

      *&v14[0] = v4;
      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        sub_276F4D600((v8 > 1), v9 + 1, 1);
        v4 = *&v14[0];
      }

      ++v3;
      v4[2] = v9 + 1;
      v4[v9 + 4] = v7;
      if (v1 == v3)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v1 = sub_276F59E78();
    if (!v1)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

char *sub_276F4B298()
{
  if ([v0 valueForProperty_])
  {
    sub_276F59DD8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_276F4E9D0(v13);
    goto LABEL_18;
  }

  sub_276F48C74(&qword_280A57D50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    type metadata accessor for TSWPListLabelType(0);
    v4 = sub_276F59D88();
    *(v4 + 16) = 9;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0;
    return v4;
  }

  if (!(v10 >> 62))
  {
    v1 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v1 = sub_276F59E78();
  if (!v1)
  {
LABEL_20:

    return MEMORY[0x277D84F90];
  }

LABEL_8:
  *&v13[0] = MEMORY[0x277D84F90];
  result = sub_276F4D630(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = *&v13[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x277CA1020](v3);
      }

      else
      {
        v5 = *(v10 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 unsignedIntegerValue];

      *&v13[0] = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_276F4D630((v8 > 1), v9 + 1, 1);
        v4 = *&v13[0];
      }

      ++v3;
      *(v4 + 16) = v9 + 1;
      *(v4 + 8 * v9 + 32) = v7;
    }

    while (v1 != v3);

    return v4;
  }

  __break(1u);
  return result;
}

char *sub_276F4B4AC()
{
  if ([v0 valueForProperty_])
  {
    sub_276F59DD8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_276F4E9D0(v13);
    goto LABEL_18;
  }

  sub_276F48C74(&qword_280A57D50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v4 = sub_276F59D88();
    *(v4 + 16) = 9;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    return v4;
  }

  if (!(v10 >> 62))
  {
    v1 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v1 = sub_276F59E78();
  if (!v1)
  {
LABEL_20:

    return MEMORY[0x277D84F90];
  }

LABEL_8:
  *&v13[0] = MEMORY[0x277D84F90];
  result = sub_276F4D660(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = *&v13[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x277CA1020](v3);
      }

      else
      {
        v5 = *(v10 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 BOOLValue];

      *&v13[0] = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_276F4D660((v8 > 1), v9 + 1, 1);
        v4 = *&v13[0];
      }

      ++v3;
      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v7;
    }

    while (v1 != v3);

    return v4;
  }

  __break(1u);
  return result;
}

id TSWPTopicNumbers.init(with:)(uint64_t a1)
{
  v3 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
  *&v1[v3] = sub_276F4902C(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR___TSWPTopicNumbers_invalidCharIndex] = 0;
  *&v1[OBJC_IVAR___TSWPTopicNumbers_storage] = a1;
  v5.receiver = v1;
  v5.super_class = TSWPTopicNumbers;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall TSWPTopicNumbers.invalidate(from:)(Swift::UInt from)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___TSWPTopicNumbers_storage);
  TSWPStorage.paragraphInfo(at:)(from);
  v6 = v5;
  LOBYTE(from) = v7;

  if ((from & 1) == 0)
  {
    v8 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
    swift_beginAccess();
    v9 = *(v2 + v8);
    v12 = *(v9 + 64);
    v11 = v9 + 64;
    v10 = v12;
    v13 = 1 << *(*(v2 + v8) + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;

    v18 = 0;
    v43 = v17;
    v44 = v8;
    while (v15)
    {
LABEL_10:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v18 << 9) | (8 * v20);
      v22 = *(*(v17 + 56) + v21);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = 0;
        v25 = *(*(v17 + 48) + v21);
        v26 = v22 + 32;
        v27 = v23;
        do
        {
          if (__OFSUB__(v27, v24))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v28 = v24 + (v27 - v24) / 2;
          if (__OFADD__(v24, (v27 - v24) / 2))
          {
            goto LABEL_41;
          }

          if (v28 >= v23)
          {
            goto LABEL_42;
          }

          if (*(v26 + 24 * v28) < v6)
          {
            v24 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_43;
            }

            v28 = v27;
          }

          v27 = v28;
        }

        while (v24 != v28);
        if (v28 >= v23)
        {
          continue;
        }

        swift_beginAccess();
        v45 = v25;
        v29 = sub_276F4BB5C(v47, v45);
        v46 = v30;
        v31 = *v30;
        if (!*v30)
        {
          (v29)(v47, 0);
          swift_endAccess();
LABEL_35:

          v17 = v43;
          v8 = v44;
          continue;
        }

        v32 = *(v31 + 2);
        if (v32 < v28)
        {
          goto LABEL_45;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          if (__OFADD__(v32, v28 - v32))
          {
            goto LABEL_47;
          }

          v42 = v29;
          v41 = v28 - v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v46 = v31;
          if (!isUniquelyReferenced_nonNull_native || v28 > *(v31 + 3) >> 1)
          {
            if (*(v31 + 2) <= v28)
            {
              v34 = v28;
            }

            else
            {
              v34 = *(v31 + 2);
            }

            v31 = sub_276F4D3E0(isUniquelyReferenced_nonNull_native, v34, 1, v31);
            *v46 = v31;
          }

          swift_arrayDestroy();
          if (v32 != v28)
          {
            memmove(&v31[24 * v28 + 32], &v31[24 * v32 + 32], 24 * (*(v31 + 2) - v32));
            v35 = *(v31 + 2);
            v36 = __OFADD__(v35, v41);
            v37 = v35 + v41;
            if (v36)
            {
              goto LABEL_48;
            }

            *(v31 + 2) = v37;
          }

          *v46 = v31;
          v42(v47, 0);
          swift_endAccess();
          goto LABEL_35;
        }

        goto LABEL_46;
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v39 = sub_276F4DCFC(v38);

        *(v2 + v8) = v39;

        v40 = *(v2 + OBJC_IVAR___TSWPTopicNumbers_invalidCharIndex);
        if (v6 < v40)
        {
          v40 = v6;
        }

        *(v2 + OBJC_IVAR___TSWPTopicNumbers_invalidCharIndex) = v40;
        return;
      }

      v15 = *(v11 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

void (*sub_276F4BB5C(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_276F4D988(v4, a2);
  return sub_276F4BBD4;
}

void sub_276F4BBD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::UInt __swiftcall TSWPTopicNumbers.listNumber(for:)(Swift::UInt a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___TSWPTopicNumbers_storage;
  v5 = *(v2 + OBJC_IVAR___TSWPTopicNumbers_storage);
  v6 = TSWPStorage.paragraphInfo(at:)(a1);
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    return 0;
  }

  result = [*(v2 + v4) paragraphLevelAtParIndex_];
  if ((result & 0x8000000000000000) == 0)
  {
    if (result <= 8)
    {
      v12 = result;
      v13 = [*(v2 + v4) listStyleAtParIndex:v6 effectiveRange:0];
      v14 = [v13 baseStyleForTopicNumbers];

      if (v14)
      {
        sub_276F4BD9C(v8);
        result = sub_276F4C594(v14, v8);
        if (v15)
        {
          if (v12 < *(v15 + 16))
          {
            v16 = *(v15 + 32 * v12 + 32);

            return v16;
          }

          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_276F4BD9C(unint64_t a1)
{
  v2 = OBJC_IVAR___TSWPTopicNumbers_invalidCharIndex;
  v3 = *(v1 + OBJC_IVAR___TSWPTopicNumbers_invalidCharIndex);
  if (v3 > a1)
  {
    return;
  }

  v4 = a1 + 1;
  if (a1 == -1)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v5 = OBJC_IVAR___TSWPTopicNumbers_storage;
  v6 = *(v1 + OBJC_IVAR___TSWPTopicNumbers_storage);
  v7 = [v6 characterCount];
  if (v7 >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v7;
  }

  v10 = sub_276F4AA94(v6, v8, v9);
  v90 = sub_276F4AC40(v10, v11, v12);
  v14 = v13;
  v16 = v15;

  v89 = v14;
  if (v14 < v16)
  {
LABEL_10:

    return;
  }

  v85 = v2;
  v86 = v1;
  v87 = v5;
  while (1)
  {
    v17 = [v90 charIndexForParagraphAtIndex_];
    v18 = [v90 characterCount];
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v17 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    v21 = [v90 indexOfFirstVisibleCharInRange_];
    v22 = sub_276F59CF8();
    if (v21 == v22)
    {
      v23 = v17;
    }

    else
    {
      v23 = v21;
    }

    if (v22 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = v21;
    }

    v25 = [v90 paragraphIndexAtCharIndex_];
    if ([v90 hasTrackedChanges])
    {
      v26 = [v90 paragraphCount];
      while (v16 != -1)
      {
        v27 = v16;
        if (v16 + 1 >= v26)
        {
          goto LABEL_38;
        }

        v28 = [v90 textRangeForParagraphAtIndex_];
        v30 = &v28[v29];
        if (__OFADD__(v28, v29))
        {
          goto LABEL_119;
        }

        if (__OFSUB__(v30, 1))
        {
          goto LABEL_120;
        }

        if (((v30 - 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_121;
        }

        ++v16;
        if (([v90 hasHiddenTextAtCharIndex_] & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v27 = v16;
LABEL_38:
    v31 = [v90 textRangeForParagraphAtIndex_];
    v33 = &v31[v32];
    if (__OFADD__(v31, v32))
    {
      goto LABEL_122;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_123;
    }

    v16 = v27 + 1;
    if (v27 == -1)
    {
      goto LABEL_124;
    }

    if (v33 < v17)
    {
      goto LABEL_125;
    }

    v34 = [*(v1 + v5) listStyleAtParIndex:v25 effectiveRange:0];
    if (v34)
    {
      break;
    }

LABEL_15:
    *(v1 + v2) = v33;
    if (v89 < v16)
    {
      goto LABEL_10;
    }
  }

  v35 = v34;
  v36 = [v34 baseStyleForTopicNumbers];
  if (!v36)
  {

    goto LABEL_15;
  }

  v88 = v36;
  v37 = [*(v1 + v5) paragraphLevelAtParIndex_];
  if (v37 < 0)
  {
    goto LABEL_128;
  }

  v38 = v37;
  v39 = sub_276F4B298();
  if (v38 >= *(v39 + 2))
  {
    goto LABEL_129;
  }

  v40 = v39;
  if (*&v39[8 * v38 + 32] != 3)
  {

LABEL_50:
    v1 = v86;
LABEL_51:
    v2 = v85;
    v5 = v87;
    goto LABEL_15;
  }

  v82 = v39 + 32;
  v41 = [*(v86 + v87) dropCapStyleAtParIndex_];
  if (v41)
  {

    goto LABEL_50;
  }

  if ((v33 - v17) < 0)
  {
    goto LABEL_131;
  }

  v1 = v86;
  if ([*(v86 + v87) hasPartitionableAttachmentAtStartOfTextRange_])
  {

    goto LABEL_51;
  }

  sub_276F4CAB4(v88);
  v81 = v42;
  if (!v43)
  {
    v46 = sub_276F59D88();
    v43 = 0;
    v45 = v46;
    v44 = 0;
    *(v46 + 16) = 9;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 32) = 0;
    *(v46 + 56) = 0;
    *(v46 + 72) = 0;
    *(v46 + 80) = 0;
    *(v46 + 64) = 0;
    *(v46 + 88) = 0;
    *(v46 + 104) = 0;
    *(v46 + 112) = 0;
    *(v46 + 96) = 0;
    *(v46 + 120) = 0;
    *(v46 + 136) = 0;
    *(v46 + 144) = 0;
    *(v46 + 128) = 0;
    *(v46 + 152) = 0;
    *(v46 + 160) = 0;
    *(v46 + 168) = 0;
    *(v46 + 184) = 0;
    *(v46 + 176) = 0;
    *(v46 + 192) = 0;
    *(v46 + 200) = 0;
    *(v46 + 216) = 0;
    *(v46 + 208) = 0;
    *(v46 + 232) = 0;
    *(v46 + 240) = 0;
    *(v46 + 224) = 0;
    *(v46 + 248) = 0;
    *(v46 + 264) = 0;
    *(v46 + 272) = 0;
    *(v46 + 256) = 0;
    *(v46 + 280) = 0;
    *(v46 + 296) = 0;
    *(v46 + 304) = 0;
    *(v46 + 288) = 0;
    *(v46 + 312) = 0;
    if (!v38)
    {
      goto LABEL_92;
    }

LABEL_60:
    v83 = v45;
    if (v38 == v44)
    {
      v47 = v43;

      v48 = v47;
      v45 = v83;
      goto LABEL_77;
    }

    if (v38 <= v44)
    {
      goto LABEL_142;
    }

    if (v44 < 0)
    {
      goto LABEL_143;
    }

    v80 = v38 - v44;
    v49 = *(v45 + 16);
    if (v44 >= v49 || v38 - 1 >= v49)
    {
      goto LABEL_144;
    }

    v79 = v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_276F4E794(v83);
    }

    v45 = v83;
    if (v80 > 1)
    {
      v50 = v44 + (v80 & 0xFFFFFFFFFFFFFFFELL);
      v51 = &v83[32 * v44 + 64];
      v52 = v80 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v51 - 4) = 1;
        *v51 = 1;
        v51 += 64;
        v52 -= 2;
      }

      while (v52);
      v48 = v79;
      if (v80 == (v80 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_77:
        if (!v48)
        {
          goto LABEL_92;
        }

        v55 = v45;

        v45 = v55;
        if (v38 >= v81)
        {
          goto LABEL_92;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v50 = v44;
      v48 = v79;
    }

    v53 = 32 * v50 + 32;
    v54 = v38 - v50;
    do
    {
      *&v83[v53] = 1;
      v53 += 32;
      --v54;
    }

    while (v54);
    goto LABEL_77;
  }

  v44 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    goto LABEL_133;
  }

  if (v44 < v38)
  {
    v45 = v43;
    goto LABEL_60;
  }

  v45 = v43;
  if (v38 < v42)
  {
LABEL_79:
    v56 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_276F4E794(v56);
    }

    v57 = v38 + 1;
    v58 = *(v56 + 2);
    if (v38 + 1 >= v58)
    {
      goto LABEL_141;
    }

    v45 = v56;
    *&v56[32 * v57 + 32] = 0;
    if (v57 != v81)
    {
      if (v57 >= v81)
      {
        goto LABEL_145;
      }

      if (v38 + 2 >= v58)
      {
        goto LABEL_146;
      }

      if (v81 >= v58)
      {
        goto LABEL_147;
      }

      v59 = v81 + ~v38;
      if (v59 < 2)
      {
        goto LABEL_90;
      }

      v57 += v59 & 0xFFFFFFFFFFFFFFFELL;
      v60 = &v56[32 * v38 + 128];
      v61 = v59 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v60 - 4) = 0;
        *v60 = 0;
        v60 += 64;
        v61 -= 2;
      }

      while (v61);
      if (v59 != (v59 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_90:
        v62 = 32 * v57 + 64;
        v63 = v81 - v57;
        do
        {
          *&v56[v62] = 0;
          v62 += 32;
          --v63;
        }

        while (v63);
      }
    }
  }

LABEL_92:
  v64 = v45;
  v65 = [*(v86 + v87) listStartAtParIndex_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v65)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v67 = v64;
    }

    else
    {
      v67 = sub_276F4E794(v64);
    }

    if (v38 >= *(v67 + 2))
    {
      goto LABEL_134;
    }

    *&v67[32 * v38 + 32] = v65;
  }

  else
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v67 = v64;
    }

    else
    {
      v67 = sub_276F4E794(v64);
    }

    if (v38 >= *(v67 + 2))
    {
      goto LABEL_139;
    }

    v68 = *&v67[32 * v38 + 32];
    v69 = __CFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_140;
    }

    *&v67[32 * v38 + 32] = v70;
  }

  v84 = v67;
  v71 = sub_276F4B040();
  v72 = sub_276F4B4AC();
  v73 = *(v84 + 16);
  if (v73 < v38)
  {
    goto LABEL_132;
  }

  if (v38 == v73)
  {
LABEL_115:

    v1 = v86;
    sub_276F4CB68(v17, v38, v84, v88);

    goto LABEL_51;
  }

  if (v38 >= v73)
  {
    goto LABEL_135;
  }

  v74 = *(v71 + 2);
  if (v38 >= v74 || v73 > v74)
  {
    goto LABEL_136;
  }

  v75 = *(v40 + 2);
  if (v38 >= v75 || v73 > v75)
  {
    goto LABEL_137;
  }

  v76 = *(v72 + 2);
  if (v38 < v76 && v73 <= v76)
  {
    v77 = (v84 + 32 * v38 + 56);
    v78 = v38;
    while ((v78 & 0x8000000000000000) == 0)
    {
      if (v78 >= *(v84 + 16))
      {
        goto LABEL_127;
      }

      *(v77 - 1) = *&v71[8 * v78 + 32];
      *(v77 - 2) = *&v82[8 * v78];
      *v77 = v72[v78 + 32];
      v77 += 32;
      if (v73 == ++v78)
      {
        goto LABEL_115;
      }
    }

    goto LABEL_126;
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_276F4C594(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16) || (v7 = sub_276F4D870(a1), (v8 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  result = swift_endAccess();
  v11 = *(v9 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  v13 = v9 + 32;
  v14 = *(v9 + 16);
  do
  {
    if (__OFSUB__(v14, v12))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v15 = v12 + (v14 - v12) / 2;
    if (__OFADD__(v12, (v14 - v12) / 2))
    {
      goto LABEL_20;
    }

    if (v15 >= v11)
    {
      goto LABEL_21;
    }

    if (*(v13 + 24 * v15) < a2)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_22;
      }

      v15 = v14;
    }

    v14 = v15;
  }

  while (v12 != v15);
  if (v15 >= v11)
  {
    return 0;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v16 = (v13 + 24 * v15);
  if (*v16 > a2)
  {
    return 0;
  }

  v17 = *v16;

  return v17;
}

Swift::String __swiftcall TSWPTopicNumbers.numberedListLabel(for:includeFormatting:)(Swift::UInt a1, Swift::Bool includeFormatting)
{
  v3 = v2;
  v4 = includeFormatting;
  v6 = OBJC_IVAR___TSWPTopicNumbers_storage;
  v7 = *(v3 + OBJC_IVAR___TSWPTopicNumbers_storage);
  v8 = TSWPStorage.paragraphInfo(at:)(a1);
  v10 = v9;
  v12 = v11;

  if (v12)
  {
    goto LABEL_18;
  }

  v13 = [*(v3 + v6) paragraphLevelAtParIndex_];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = v13;
  if (v13 > 8 || (v16 = [*(v3 + v6) listStyleAtParIndex:v8 effectiveRange:0], v17 = objc_msgSend(v16, sel_baseStyleForTopicNumbers), v16, !v17))
  {
LABEL_18:
    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_26;
  }

  sub_276F4BD9C(v10);
  v13 = sub_276F4C594(v17, v10);
  if (v18)
  {
    v37 = v17;
    if (*(v18 + 16) <= v15)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = 0;
    v20 = (v18 + 32 * v15 + 56);
    v21 = 0xE000000000000000;
    v22 = 0x277CCA000uLL;
    v23 = &selRef_tswp_contentsScriptInRange_;
    v24 = v15;
    while (v24 <= v15)
    {
      if (*(v20 - 2) == 3)
      {
        v25 = *(v20 - 3);
        v26 = *(v20 - 1);
        v38 = *v20;
        v13 = objc_opt_self();
        if (HIDWORD(v25))
        {
          goto LABEL_24;
        }

        v27 = [v13 v23[11]];
        if (v27)
        {
          v28 = v4;
          v29 = v22;
          v30 = v27;
          v31 = sub_276F59D18();
          v33 = v32;

          v22 = v29;
          v4 = v28;
          v23 = &selRef_tswp_contentsScriptInRange_;
        }

        else
        {
          v31 = 0;
          v33 = 0xE000000000000000;
        }

        MEMORY[0x277CA0F20](v19, v21);

        v19 = v31;
        v21 = v33;
        v34 = v24-- != 0;
        v35 = v38;
        if (!v34)
        {
          v35 = 0;
        }

        v20 -= 32;
        if (v35)
        {
          continue;
        }
      }

      v17 = v37;
      goto LABEL_21;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = 0;
  v21 = 0xE000000000000000;
LABEL_21:

  v13 = v19;
  v14 = v21;
LABEL_26:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

void __swiftcall TSWPTopicNumbers.init()(TSWPTopicNumbers *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_276F4CAB4(uint64_t a1)
{
  v3 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_276F4D870(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v7 + 24 * v8 + 8);

      return v9;
    }
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

uint64_t sub_276F4CB68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
  swift_beginAccess();
  if (!*(*(v4 + v9) + 16) || (sub_276F4D870(a4), (v10 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    v11 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v4 + v9);
    *(v4 + v9) = 0x8000000000000000;
    sub_276F4E7A8(MEMORY[0x277D84F90], v11, isUniquelyReferenced_nonNull_native);

    *(v4 + v9) = v23;
  }

  swift_endAccess();
  swift_beginAccess();
  v14 = sub_276F4BB5C(v22, a4);
  v15 = *v13;
  if (*v13)
  {
    v16 = v13;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v15;
    if ((v17 & 1) == 0)
    {
      v15 = sub_276F4D3E0(0, *(v15 + 2) + 1, 1, v15);
      *v16 = v15;
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = sub_276F4D3E0((v18 > 1), v19 + 1, 1, v15);
      *v16 = v15;
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[24 * v19];
    *(v20 + 4) = a1;
    *(v20 + 5) = a2;
    *(v20 + 6) = a3;
    (v14)(v22, 0);
  }

  else
  {
    (v14)(v22, 0);
  }

  return swift_endAccess();
}

TSWPTopicNumberHints_optional __swiftcall TSWPTopicNumbers.hints(for:)(Swift::UInt a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___TSWPTopicNumbers_storage);
  TSWPStorage.paragraphInfo(at:)(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    v13 = 0;
LABEL_48:
    v21 = v13;
  }

  else
  {
    sub_276F4BD9C(v8);
    v13 = [objc_allocWithZone(TSWPTopicNumberHints) init];
    v14 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
    swift_beginAccess();
    v65 = v14;
    v15 = *(v2 + v14);
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v66 = v15;

    v22 = 0;
    while (v19)
    {
LABEL_13:
      v24 = *(*(v66 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v19)))));
      swift_beginAccess();
      v25 = *(v2 + v65);
      v26 = *(v25 + 16);
      v27 = v24;
      v28 = v27;
      if (v26 && (v29 = sub_276F4D870(v27), (v30 & 1) != 0))
      {
        v31 = *(*(v25 + 56) + 8 * v29);
        v21 = swift_endAccess();
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = 0;
          v34 = v31 + 32;
          v35 = *(v31 + 16);
          while (!__OFSUB__(v35, v33))
          {
            v36 = v33 + (v35 - v33) / 2;
            if (__OFADD__(v33, (v35 - v33) / 2))
            {
              goto LABEL_51;
            }

            if (v36 >= v32)
            {
              goto LABEL_52;
            }

            if (*(v34 + 24 * v36) < v6)
            {
              v33 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_53;
              }

              v36 = v35;
            }

            v35 = v36;
            if (v33 == v36)
            {
              if (v36 >= v32)
              {
                goto LABEL_7;
              }

              if ((v36 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              v37 = (v34 + 24 * v36);
              if (v6 < *v37)
              {
                goto LABEL_7;
              }

              v61 = v28;
              v62 = v13;
              v63 = v6;
              v64 = v2;
              v38 = v37[2];
              v39 = objc_allocWithZone(TSWPTopicNumberHintEntry);

              v21 = [v39 init];
              if (*(v38 + 16) >= 9uLL)
              {
                v40 = v21;
                v41 = 0;
                v42 = (v38 + 56);
                do
                {
                  v43 = [(objc_class *)v40 topicNumbers];
                  sub_276F494D0(0, &qword_280A57D30);
                  v44 = sub_276F59D68();

                  if ((v44 & 0xC000000000000001) != 0)
                  {
                    v45 = MEMORY[0x277CA1020](v41, v44);
                  }

                  else
                  {
                    if (v41 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_54;
                    }

                    v45 = *(v44 + 8 * v41 + 32);
                  }

                  v46 = v45;

                  [v46 setNumber_];

                  v47 = [(objc_class *)v40 topicNumbers];
                  v48 = sub_276F59D68();

                  if ((v48 & 0xC000000000000001) != 0)
                  {
                    v49 = MEMORY[0x277CA1020](v41, v48);
                  }

                  else
                  {
                    if (v41 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_55;
                    }

                    v49 = *(v48 + 8 * v41 + 32);
                  }

                  v50 = v49;

                  [v50 setLabelType_];

                  v51 = [(objc_class *)v40 topicNumbers];
                  v52 = sub_276F59D68();

                  if ((v52 & 0xC000000000000001) != 0)
                  {
                    v53 = MEMORY[0x277CA1020](v41, v52);
                  }

                  else
                  {
                    if (v41 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_56;
                    }

                    v53 = *(v52 + 8 * v41 + 32);
                  }

                  v54 = v53;

                  [v54 setNumberType_];

                  v55 = [(objc_class *)v40 topicNumbers];
                  v56 = sub_276F59D68();

                  if ((v56 & 0xC000000000000001) != 0)
                  {
                    v57 = MEMORY[0x277CA1020](v41, v56);
                  }

                  else
                  {
                    if (v41 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_57;
                    }

                    v57 = *(v56 + 8 * v41 + 32);
                  }

                  v58 = v57;
                  ++v41;

                  v59 = *v42;
                  v42 += 32;
                  [v58 setIsTiered_];
                }

                while (v41 != 9);

                v13 = v62;
                v60 = [(objc_class *)v62 entryForListStyle];
                [v60 setObject:v40 forKeyedSubscript:v61];

                v28 = v60;
                v6 = v63;
                v2 = v64;
                goto LABEL_7;
              }

              goto LABEL_59;
            }
          }

          goto LABEL_50;
        }
      }

      else
      {
        swift_endAccess();
      }

LABEL_7:
      v19 &= v19 - 1;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        goto LABEL_48;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        v22 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  result.value._entryForListStyle = v11;
  result.value.super.isa = v21;
  result.is_nil = v12;
  return result;
}

char *sub_276F4D2DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_276F48C74(&qword_280A57BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_276F4D3E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_276F48C74(&qword_280A57D78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_276F4D500(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_276F48C74(&qword_280A57D68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_276F4D600(char *a1, int64_t a2, char a3)
{
  result = sub_276F4D680(a1, a2, a3, *v3, &qword_280A57D60);
  *v3 = result;
  return result;
}

char *sub_276F4D630(char *a1, int64_t a2, char a3)
{
  result = sub_276F4D680(a1, a2, a3, *v3, &qword_280A57D70);
  *v3 = result;
  return result;
}

char *sub_276F4D660(char *a1, int64_t a2, char a3)
{
  result = sub_276F4D77C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_276F4D680(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_276F48C74(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_276F4D77C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_276F48C74(&qword_280A57D58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_276F4D870(uint64_t a1)
{
  v2 = sub_276F59DB8();

  return sub_276F4D8B4(a1, v2);
}

unint64_t sub_276F4D8B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_276F494D0(0, &qword_280A57D40);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_276F59DC8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void (*sub_276F4D988(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_276F4E470(v5);
  v5[9] = sub_276F4E1DC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_276F4DA2C;
}

void sub_276F4DA2C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_276F4DA8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_276F48C74(&qword_280A57C78);
  result = sub_276F59E98();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_276F59DB8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t *sub_276F4DCFC(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20]();
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_276F4DE5C(v6, v4, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_276F4DF48(v8, v4, a1);
  result = MEMORY[0x277CA4610](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_276F4DE5C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_276F4DFC0(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_276F4DFC0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_276F4DF48(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_276F4DE5C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_276F4DFC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_276F48C74(&qword_280A57C78);
  result = sub_276F59EA8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = v17;

    result = sub_276F59DB8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_276F4E1DC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_276F4D870(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_276F4E630();
      v11 = v19;
      goto LABEL_11;
    }

    sub_276F4DA8C(v16, a3 & 1);
    v11 = sub_276F4D870(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_276F494D0(0, &qword_280A57D40);
    result = sub_276F59EC8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_276F4E334;
}

void sub_276F4E334(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if ((*a1)[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v14 = v2[1];
      v6[2] = v4;
      v15 = v14;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v10 = v2[3];
      v11 = *v2[2];

      sub_276F4E4A4(v10, v11);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v12 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v12;
    *(v6[7] + 8 * v5) = v3;
    v13 = v6[2];
    v9 = __OFADD__(v13, 1);
    v4 = v13 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_276F4E470(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_276F4E498;
}

void sub_276F4E4A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_276F59DE8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_276F59DB8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void *sub_276F4E630()
{
  v1 = v0;
  sub_276F48C74(&qword_280A57C78);
  v2 = *v0;
  v3 = sub_276F59E88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_276F4E7A8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_276F4D870(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_276F4DA8C(v13, a3 & 1);
      v8 = sub_276F4D870(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_276F494D0(0, &qword_280A57D40);
        result = sub_276F59EC8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_276F4E630();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_276F4E938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_276F4E980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_276F4E9D0(uint64_t a1)
{
  v2 = sub_276F48C74(&qword_280A57D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_276F4EA38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_276F4EA4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_276F4EAA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void sub_276F4F324()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "NSUInteger ExtractPointsFromFlattenedPath(TSUBezierPath *__strong, CGPoint *)", "NSUInteger ExtractPointsFromFlattenedPath(TSUBezierPath *__strong, CGPoint *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment+Geometry.m", 125);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment+Geometry.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 125, 1, "Path must be flattened");

  TSUCrashBreakpoint();
  abort();
}

void sub_276F4F648()
{
  if (__cxa_guard_acquire(&qword_280A583F8))
  {
    __cxa_atexit(sub_276DEAB58, 0, &dword_276D10000);

    __cxa_guard_release(&qword_280A583F8);
  }
}

uint64_t sub_276F4F918(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Range::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F4F9E8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F4FAB8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ObjectAttributeTable_ObjectAttribute::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F4FB88(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::StringAttributeTable_StringAttribute::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F4FC58(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ParaDataAttributeTable_ParaDataAttribute::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F4FD28(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F4FDF8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ObjectAttributeTable::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F4FEC8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ParaDataAttributeTable::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F4FF98(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::StringAttributeTable::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F50068(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::OverlappingFieldAttributeTable::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void TSWP::CharacterStylePropertiesArchive::_InternalParse()
{
  sub_276EAACFC();
  v2 = sub_276EA4A1C(v0, &v217);
  TagFallback = sub_276EAAD78(v2, v3, v4, v5, v6, v7, v8, v9, v214, v217);
  if ((v11 & 1) == 0)
  {
    while (2)
    {
      v12 = (TagFallback + 1);
      v13 = *TagFallback;
      if (*TagFallback < 0)
      {
        v13 = (v13 + (*v12 << 7) - 128);
        if (*v12 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(TagFallback, v13);
          v217 = TagFallback;
          if (!TagFallback)
          {
            return;
          }

          v12 = TagFallback;
LABEL_7:
          switch(v13 >> 3)
          {
            case 1u:
              if (v13 != 8)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x2000);
              if ((v14 & 0x8000000000000000) == 0 || (sub_276EAAC10(), (v17 & 0x80000000) == 0))
              {
                sub_276EAAC68();
                *(v1 + 156) = v18;
                goto LABEL_223;
              }

              google::protobuf::internal::VarintParseSlow64(v16, v15);
              sub_276EAAC58();
              *(v1 + 156) = v201;
              if (TagFallback)
              {
                goto LABEL_223;
              }

              return;
            case 2u:
              if (v13 != 16)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x4000);
              if ((v100 & 0x8000000000000000) == 0 || (sub_276EAAC10(), (v103 & 0x80000000) == 0))
              {
                sub_276EAAC68();
                *(v1 + 157) = v104;
                goto LABEL_223;
              }

              google::protobuf::internal::VarintParseSlow64(v102, v101);
              sub_276EAAC58();
              *(v1 + 157) = v202;
              if (TagFallback)
              {
                goto LABEL_223;
              }

              return;
            case 3u:
              if (v13 != 29)
              {
                goto LABEL_229;
              }

              *(v1 + 152) = sub_276EAAD54(v12, *(v1 + 16) | 0x1000);
              goto LABEL_222;
            case 4u:
              if (v13 != 32)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x8000);
              if (v90 < 0 && (sub_276EAAC10(), v93 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v92, v91);
                sub_276EAAC58();
                *(v1 + 158) = v199;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 158) = v94;
              }

              goto LABEL_223;
            case 5u:
              if (v13 != 42)
              {
                goto LABEL_229;
              }

              sub_276EAADEC(*(v1 + 16) | 1);
              if (v64)
              {
                sub_276EAADF8();
              }

              goto LABEL_217;
            case 6u:
              if (v13 != 48)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x10000);
              if (v120 < 0 && (sub_276EAAC10(), v123 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v122, v121);
                sub_276EAAC58();
                *(v1 + 159) = v205;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 159) = v124;
              }

              goto LABEL_223;
            case 7u:
              if (v13 != 58)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x10u;
              v78 = *(v1 + 88);
              if (v78)
              {
                goto LABEL_211;
              }

              v130 = *(v1 + 8);
              if (v130)
              {
                sub_276EAAD2C(v130);
              }

              v131 = MEMORY[0x277CA3210]();
              LODWORD(v78) = v131;
              *(v1 + 88) = v131;
              goto LABEL_210;
            case 8u:
              if (v13 != 64)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x1000000);
              if (v95 < 0 && (sub_276EAAC10(), v98 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v97, v96);
                sub_276EAAC58();
                *(v1 + 188) = v200;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 188) = v99;
              }

              goto LABEL_223;
            case 9u:
              if (v13 != 74)
              {
                goto LABEL_229;
              }

              sub_276EAADEC(*(v1 + 16) | 2);
              if (v136)
              {
                sub_276EAADF8();
              }

              goto LABEL_217;
            case 0xAu:
              if (v13 != 80)
              {
                goto LABEL_229;
              }

              sub_276EAAD6C();
              if ((v74 & 0x8000000000000000) == 0)
              {
                goto LABEL_92;
              }

              sub_276EAAC78();
              if (v77 < 0)
              {
                TagFallback = sub_276EAADC8(v76, v74);
                v217 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                LODWORD(v74) = v196;
              }

              else
              {
                v75 = (v76 + 2);
LABEL_92:
                v217 = v75;
              }

              if (v74 <= 2)
              {
                *(v1 + 16) |= 0x20000u;
                *(v1 + 160) = v74;
                goto LABEL_223;
              }

              if (*(v1 + 8))
              {
                goto LABEL_237;
              }

              goto LABEL_303;
            case 0xBu:
              if (v13 != 88)
              {
                goto LABEL_229;
              }

              sub_276EAAD6C();
              if ((v132 & 0x8000000000000000) == 0)
              {
                goto LABEL_165;
              }

              sub_276EAAC78();
              if (v135 < 0)
              {
                TagFallback = sub_276EAADC8(v134, v132);
                v217 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                LODWORD(v132) = v207;
              }

              else
              {
                v133 = (v134 + 2);
LABEL_165:
                v217 = v133;
              }

              if (v132 > 3)
              {
                if (*(v1 + 8))
                {
LABEL_237:
                  v186 = sub_276EAAD60();
                }

                else
                {
LABEL_303:
                  v186 = sub_276EAADB0();
                }

                TagFallback = google::protobuf::UnknownFieldSet::AddVarint(v186);
              }

              else
              {
                *(v1 + 16) |= 0x40000u;
                *(v1 + 164) = v132;
              }

              goto LABEL_223;
            case 0xCu:
              if (v13 != 96)
              {
                goto LABEL_229;
              }

              sub_276EAAD6C();
              if ((v60 & 0x8000000000000000) == 0)
              {
                goto LABEL_70;
              }

              sub_276EAAC78();
              if (v63 < 0)
              {
                TagFallback = sub_276EAADC8(v62, v60);
                v217 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                LODWORD(v60) = v193;
              }

              else
              {
                v61 = (v62 + 2);
LABEL_70:
                v217 = v61;
              }

              if (v60 <= 3)
              {
                *(v1 + 16) |= 0x80000u;
                *(v1 + 168) = v60;
                goto LABEL_223;
              }

              if (*(v1 + 8))
              {
                goto LABEL_237;
              }

              goto LABEL_303;
            case 0xDu:
              if (v13 != 104)
              {
                goto LABEL_229;
              }

              sub_276EAAD6C();
              if ((v70 & 0x8000000000000000) == 0)
              {
                goto LABEL_85;
              }

              sub_276EAAC78();
              if (v73 < 0)
              {
                TagFallback = sub_276EAADC8(v72, v70);
                v217 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                LODWORD(v70) = v195;
              }

              else
              {
                v71 = (v72 + 2);
LABEL_85:
                v217 = v71;
              }

              if (v70 <= 3)
              {
                *(v1 + 16) |= 0x100000u;
                *(v1 + 172) = v70;
                goto LABEL_223;
              }

              if (*(v1 + 8))
              {
                goto LABEL_237;
              }

              goto LABEL_303;
            case 0xEu:
              if (v13 != 117)
              {
                goto LABEL_229;
              }

              *(v1 + 176) = sub_276EAAD54(v12, *(v1 + 16) | 0x200000);
              goto LABEL_222;
            case 0xFu:
              if (v13 != 125)
              {
                goto LABEL_229;
              }

              *(v1 + 180) = sub_276EAAD54(v12, *(v1 + 16) | 0x400000);
              goto LABEL_222;
            case 0x10u:
              if (v13 != 128)
              {
                goto LABEL_229;
              }

              sub_276EAAD6C();
              if ((v86 & 0x8000000000000000) == 0)
              {
                goto LABEL_110;
              }

              sub_276EAAC78();
              if (v89 < 0)
              {
                TagFallback = sub_276EAADC8(v88, v86);
                v217 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                LODWORD(v86) = v198;
              }

              else
              {
                v87 = (v88 + 2);
LABEL_110:
                v217 = v87;
              }

              if (v86 <= 2)
              {
                *(v1 + 16) |= 0x800000u;
                *(v1 + 184) = v86;
                goto LABEL_223;
              }

              if (*(v1 + 8))
              {
                goto LABEL_237;
              }

              goto LABEL_303;
            case 0x11u:
              if (v13 != 136)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x2000000);
              if (v42 < 0 && (sub_276EAAC10(), v45 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v44, v43);
                sub_276EAAC58();
                *(v1 + 189) = v191;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 189) = v46;
              }

              goto LABEL_223;
            case 0x12u:
              if (v13 != 146)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x20u;
              v78 = *(v1 + 96);
              if (v78)
              {
                goto LABEL_211;
              }

              v110 = *(v1 + 8);
              if (v110)
              {
                sub_276EAAD2C(v110);
              }

              v111 = MEMORY[0x277CA3210]();
              LODWORD(v78) = v111;
              *(v1 + 96) = v111;
              goto LABEL_210;
            case 0x13u:
              if (v13 != 157)
              {
                goto LABEL_229;
              }

              *(v1 + 192) = sub_276EAAD54(v12, *(v1 + 16) | 0x10000000);
              goto LABEL_222;
            case 0x14u:
              if (v13 != 160)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x4000000);
              if (v157 < 0 && (sub_276EAAC10(), v160 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v159, v158);
                sub_276EAAC58();
                *(v1 + 190) = v211;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 190) = v161;
              }

              goto LABEL_223;
            case 0x15u:
              if (v13 != 170)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x40u;
              v117 = *(v1 + 104);
              if (!v117)
              {
                v118 = *(v1 + 8);
                if (v118)
                {
                  sub_276EAAD2C(v118);
                }

                v119 = MEMORY[0x277CA3140]();
                LODWORD(v117) = v119;
                *(v1 + 104) = v119;
                v12 = v217;
              }

              TagFallback = sub_276F510C4(v0, v117, v12);
              goto LABEL_218;
            case 0x16u:
              if (v13 != 176)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x8000000);
              if (v125 < 0 && (sub_276EAAC10(), v128 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v127, v126);
                sub_276EAAC58();
                *(v1 + 191) = v206;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 191) = v129;
              }

              goto LABEL_223;
            case 0x17u:
              if (v13 != 186)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x80u;
              v78 = *(v1 + 112);
              if (v78)
              {
                goto LABEL_211;
              }

              v150 = *(v1 + 8);
              if (v150)
              {
                sub_276EAAD2C(v150);
              }

              v151 = MEMORY[0x277CA3210]();
              LODWORD(v78) = v151;
              *(v1 + 112) = v151;
              goto LABEL_210;
            case 0x18u:
              if (v13 != 197)
              {
                goto LABEL_229;
              }

              *(v1 + 196) = sub_276EAAD54(v12, *(v1 + 16) | 0x20000000);
              goto LABEL_222;
            case 0x19u:
              if (v13 != 200)
              {
                goto LABEL_229;
              }

              sub_276EAACC0(*(v1 + 16) | 0x80000000);
              if (v81 < 0 && (sub_276EAAC10(), v84 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v83, v82);
                sub_276EAAC58();
                *(v1 + 204) = v197;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 204) = v85;
              }

              goto LABEL_223;
            case 0x1Au:
              if (v13 != 210)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x100u;
              v78 = *(v1 + 120);
              if (v78)
              {
                goto LABEL_211;
              }

              v79 = *(v1 + 8);
              if (v79)
              {
                sub_276EAAD2C(v79);
              }

              v80 = MEMORY[0x277CA3210]();
              LODWORD(v78) = v80;
              *(v1 + 120) = v80;
              goto LABEL_210;
            case 0x1Bu:
              if (v13 != 221)
              {
                goto LABEL_229;
              }

              *(v1 + 200) = sub_276EAAD54(v12, *(v1 + 16) | 0x40000000);
              goto LABEL_222;
            case 0x1Cu:
              if (v13 != 224)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 1);
              if (v33 < 0 && (sub_276EAAC10(), v36 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v35, v34);
                sub_276EAAC58();
                *(v1 + 205) = v189;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 205) = v37;
              }

              goto LABEL_223;
            case 0x1Du:
              if (v13 != 234)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x200u;
              v78 = *(v1 + 128);
              if (v78)
              {
                goto LABEL_211;
              }

              v167 = *(v1 + 8);
              if (v167)
              {
                sub_276EAAD2C(v167);
              }

              v168 = MEMORY[0x277CA3210]();
              LODWORD(v78) = v168;
              *(v1 + 128) = v168;
LABEL_210:
              v12 = v217;
LABEL_211:
              TagFallback = sub_276F50FF4(v0, v78, v12);
              goto LABEL_218;
            case 0x1Eu:
              if (v13 != 245)
              {
                goto LABEL_229;
              }

              *(v1 + 20) |= 8u;
              v169 = *v12;
              v52 = (v12 + 4);
              *(v1 + 208) = v169;
LABEL_222:
              v217 = v52;
              goto LABEL_223;
            case 0x1Fu:
              if (v13 != 248)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 2);
              if (v137 < 0 && (sub_276EAAC10(), v140 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v139, v138);
                sub_276EAAC58();
                *(v1 + 206) = v208;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 206) = v141;
              }

              goto LABEL_223;
            case 0x20u:
              if (v13)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 4);
              if (v105 < 0 && (sub_276EAAC10(), v108 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v107, v106);
                sub_276EAAC58();
                *(v1 + 207) = v203;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 207) = v109;
              }

              goto LABEL_223;
            case 0x21u:
              if (v13 != 8)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x10);
              if (v142 < 0 && (sub_276EAAC10(), v145 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v144, v143);
                sub_276EAAC58();
                *(v1 + 212) = v209;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 212) = v146;
              }

              goto LABEL_223;
            case 0x22u:
              if (v13 != 18)
              {
                goto LABEL_229;
              }

              TagFallback = v12 - 2;
              break;
            case 0x23u:
              if (v13 != 24)
              {
                goto LABEL_229;
              }

              sub_276EAAD6C();
              if ((v38 & 0x8000000000000000) == 0)
              {
                goto LABEL_40;
              }

              sub_276EAAC78();
              if (v41 < 0)
              {
                TagFallback = sub_276EAADC8(v40, v38);
                v217 = TagFallback;
                if (!TagFallback)
                {
                  return;
                }

                LODWORD(v38) = v190;
              }

              else
              {
                v39 = (v40 + 2);
LABEL_40:
                v217 = v39;
              }

              if ((v38 + 1) <= 2)
              {
                *(v1 + 20) |= 0x2000u;
                *(v1 + 224) = v38;
                goto LABEL_223;
              }

              if (*(v1 + 8))
              {
                goto LABEL_237;
              }

              goto LABEL_303;
            case 0x24u:
              if (v13 != 32)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x20);
              if (v27 < 0 && (sub_276EAAC10(), v30 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v29, v28);
                sub_276EAAC58();
                *(v1 + 213) = v188;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 213) = v31;
              }

              goto LABEL_223;
            case 0x25u:
              if (v13 != 42)
              {
                goto LABEL_229;
              }

              sub_276EAADEC(*(v1 + 16) | 4);
              if (v32)
              {
                sub_276EAADF8();
              }

              goto LABEL_217;
            case 0x26u:
              if (v13 != 48)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x40);
              if (v22 < 0 && (sub_276EAAC10(), v25 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v24, v23);
                sub_276EAAC58();
                *(v1 + 214) = v187;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 214) = v26;
              }

              goto LABEL_223;
            case 0x27u:
              if (v13 != 58)
              {
                goto LABEL_229;
              }

              sub_276EAADEC(*(v1 + 16) | 8);
              if (v170)
              {
                sub_276EAADF8();
              }

LABEL_217:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              TagFallback = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_218;
            case 0x28u:
              if (v13 != 64)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x80);
              if (v152 < 0 && (sub_276EAAC10(), v155 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v154, v153);
                sub_276EAAC58();
                *(v1 + 215) = v210;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 215) = v156;
              }

              goto LABEL_223;
            case 0x29u:
              if (v13 != 72)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x100);
              if (v65 < 0 && (sub_276EAAC10(), v68 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v67, v66);
                sub_276EAAC58();
                *(v1 + 216) = v194;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 216) = v69;
              }

              goto LABEL_223;
            case 0x2Au:
              if (v13 != 80)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x200);
              if (v112 < 0 && (sub_276EAAC10(), v115 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v114, v113);
                sub_276EAAC58();
                *(v1 + 217) = v204;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 217) = v116;
              }

              goto LABEL_223;
            case 0x2Bu:
              if (v13 != 88)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x400);
              if (v162 < 0 && (sub_276EAAC10(), v165 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v164, v163);
                sub_276EAAC58();
                *(v1 + 218) = v212;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 218) = v166;
              }

              goto LABEL_223;
            case 0x2Cu:
              if (v13 != 98)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x400u;
              v19 = *(v1 + 136);
              if (!v19)
              {
                v20 = *(v1 + 8);
                if (v20)
                {
                  sub_276EAAD2C(v20);
                }

                v21 = MEMORY[0x277CA3150]();
                LODWORD(v19) = v21;
                *(v1 + 136) = v21;
                v12 = v217;
              }

              TagFallback = sub_276F51264(v0, v19, v12);
              goto LABEL_218;
            case 0x2Du:
              if (v13 != 104)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x800);
              if (v47 < 0 && (sub_276EAAC10(), v50 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v49, v48);
                sub_276EAAC58();
                *(v1 + 219) = v192;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 219) = v51;
              }

              goto LABEL_223;
            case 0x2Eu:
              if (v13 != 114)
              {
                goto LABEL_229;
              }

              *(v1 + 16) |= 0x800u;
              v147 = *(v1 + 144);
              if (!v147)
              {
                v148 = *(v1 + 8);
                if (v148)
                {
                  sub_276EAAD2C(v148);
                }

                v149 = MEMORY[0x277CA3120]();
                LODWORD(v147) = v149;
                *(v1 + 144) = v149;
                v12 = v217;
              }

              TagFallback = sub_276F51334(v0, v147, v12);
              goto LABEL_218;
            case 0x2Fu:
              if (v13 != 120)
              {
                goto LABEL_229;
              }

              sub_276EAAC90(*(v1 + 20) | 0x1000);
              if (v180 < 0 && (sub_276EAAC10(), v183 < 0))
              {
                google::protobuf::internal::VarintParseSlow64(v182, v181);
                sub_276EAAC58();
                *(v1 + 220) = v213;
                if (!TagFallback)
                {
                  return;
                }
              }

              else
              {
                sub_276EAAC68();
                *(v1 + 220) = v184;
              }

              goto LABEL_223;
            default:
LABEL_229:
              if (v13)
              {
                v185 = (v13 & 7) == 4;
              }

              else
              {
                v185 = 1;
              }

              if (v185)
              {
                *(v0 + 80) = v13 - 1;
                return;
              }

              if ((*(v1 + 8) & 1) == 0)
              {
                v215 = v13;
                sub_276EA4A94((v1 + 8));
              }

              TagFallback = google::protobuf::internal::UnknownFieldParse();
LABEL_218:
              v217 = TagFallback;
              if (!TagFallback)
              {
                return;
              }

LABEL_223:
              v171 = sub_276EAAD38(TagFallback, v215);
              TagFallback = sub_276EAAD78(v171, v172, v173, v174, v175, v176, v177, v178, v216, v217);
              if (v179)
              {
                return;
              }

              continue;
          }

          while (1)
          {
            v53 = (TagFallback + 2);
            v217 = (TagFallback + 2);
            v54 = *(v1 + 48);
            if (!v54)
            {
              goto LABEL_56;
            }

            v59 = *(v1 + 40);
            v55 = *v54;
            if (v59 < *v54)
            {
              *(v1 + 40) = v59 + 1;
              v56 = *&v54[2 * v59 + 2];
              goto LABEL_60;
            }

            if (v55 == *(v1 + 44))
            {
LABEL_56:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 32));
              v54 = *(v1 + 48);
              v55 = *v54;
            }

            *v54 = v55 + 1;
            v56 = google::protobuf::Arena::CreateMaybeMessage<TSWP::FontFeatureArchive>(*(v1 + 32));
            v57 = *(v1 + 40);
            v58 = *(v1 + 48) + 8 * v57;
            *(v1 + 40) = v57 + 1;
            *(v58 + 8) = v56;
            v53 = v217;
LABEL_60:
            TagFallback = sub_276F51194(v0, v56, v53);
            v217 = TagFallback;
            if (!TagFallback)
            {
              return;
            }

            if (*v0 <= TagFallback || *TagFallback != 658)
            {
              goto LABEL_223;
            }
          }
        }

        v12 = (TagFallback + 2);
      }

      break;
    }

    v217 = v12;
    goto LABEL_7;
  }
}

uint64_t sub_276F50FF4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Color::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F510C4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ShadowArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51194(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::FontFeatureArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F51264(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::StrokeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F51334(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::FillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F51404(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StyleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

void sub_276F514D4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    SizeFallback = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!SizeFallback)
    {
      return;
    }

    v5 = SizeFallback;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 == v10)
  {
    TSWP::CharacterStylePropertiesArchive::_InternalParse();
    if (v11)
    {
      ++*(a1 + 88);
      if (!*(a1 + 80))
      {
        v12 = *(a1 + 28) + v9 - v8;
        *(a1 + 28) = v12;
        *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
      }
    }
  }
}

google::protobuf::internal *sub_276F515A4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::TabArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51674(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::LineSpacingArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F51744(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Point::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51814(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::TabsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F518E4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ParagraphStylePropertiesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F519B4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::DataReference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51A84(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ListStyleArchive_LabelGeometry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51B54(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ListStyleArchive_LabelImage::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51C24(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51CF4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ColumnsArchive_EqualColumnsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51DC4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ColumnsArchive_NonEqualColumnsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51E94(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ColumnsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F51F64(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::PaddingArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52034(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ColumnStylePropertiesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F52104(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ShapeStyleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F521D4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ShapeStylePropertiesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F522A4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ParagraphStyleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52374(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::TOCEntryStylePropertiesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52444(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::TOCSettingsArchive_TOCEntryData::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F52514(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Date::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F525E4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_GenericTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F526B4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_TextTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52784(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_CharIndexTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52854(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_ReplaceCharIndexTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52924(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_AttributeIndexTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F529F4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_InsertNilTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52AC4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_InsertAttributeTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52B94(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_CharDeltaTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52C64(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_ParagraphDataTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52D34(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_ObjectDOLCTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52E04(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_CTDateTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52ED4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_StorageAction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F52FA4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_UnionTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F53074(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction_StorageActionGroup::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F53144(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::UndoTransaction::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F53214(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ShapeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F532E4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ShapeInfoArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TSWP::EquationInfoArchive::_InternalParse()
{
  sub_276EAACFC();
  while (1)
  {
    v3 = sub_276EAAD38(v2);
    v11 = sub_276EAAD78(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276EAAD1C();
    if (v13 < 0)
    {
      sub_276EAACE8();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_276EAAE04();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_276EAAE28();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_276EAAE10();
    }

    else
    {
      sub_276EA4A94((v0 + 8));
      sub_276EAADE0();
    }

    v2 = sub_276EAAE34();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_276EAAE1C();
  return v21;
}

google::protobuf::internal *sub_276F53470(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::TextualAttachmentArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TSWP::UIGraphicalAttachment::_InternalParse()
{
  sub_276EAACFC();
  while (1)
  {
    v3 = sub_276EAAD38(v2);
    v11 = sub_276EAAD78(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276EAAD1C();
    if (v13 < 0)
    {
      sub_276EAACE8();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_276EAAE04();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_276EAAE28();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_276EAAE10();
    }

    else
    {
      sub_276EA4A94((v0 + 8));
      sub_276EAADE0();
    }

    v2 = sub_276EAAE34();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_276EAAE1C();
  return v21;
}

google::protobuf::internal *sub_276F535FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::DrawableAttachmentArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F536CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::SmartFieldArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F5379C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::PlaceholderSmartFieldArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F5386C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::MergeFieldTypeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F5393C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::TOCSmartFieldArchive_TOCEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TSWP::HyperlinkSelectionArchive::_InternalParse()
{
  sub_276EAACFC();
  while (1)
  {
    v3 = sub_276EAAD38(v2);
    v11 = sub_276EAAD78(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276EAAD1C();
    if (v13 < 0)
    {
      sub_276EAACE8();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_276EAAE04();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_276EAAE28();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_276EAAE10();
    }

    else
    {
      sub_276EA4A94((v0 + 8));
      sub_276EAADE0();
    }

    v2 = sub_276EAAE34();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_276EAAE1C();
  return v21;
}

uint64_t TSWP::DateTimeSelectionArchive::_InternalParse()
{
  sub_276EAACFC();
  while (1)
  {
    v3 = sub_276EAAD38(v2);
    v11 = sub_276EAAD78(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276EAAD1C();
    if (v13 < 0)
    {
      sub_276EAACE8();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_276EAAE04();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_276EAAE28();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_276EAAE10();
    }

    else
    {
      sub_276EA4A94((v0 + 8));
      sub_276EAADE0();
    }

    v2 = sub_276EAAE34();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_276EAAE1C();
  return v21;
}

google::protobuf::internal *sub_276F53B84(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::DropCapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F53C54(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::DropCapStylePropertiesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F53D24(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::SelectionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F53DF4()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F53E30()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F53E6C()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F53EA8()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return sub_276EAAD98(v2);
}

uint64_t sub_276F53EDC()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F53F18()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_276F53F54(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 - 8);
  v2 = (v1 - 8);
  if (!v3)
  {
    operator delete(v2);
  }
}

uint64_t sub_276F53F68()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F53FA4()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F53FE0()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F5401C()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F54058()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

google::protobuf::internal *sub_276F552E8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetCharacterStyleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F553B8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetColumnsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55488(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetDropCapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55558(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetFontFeaturesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55628(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetLineSpacingArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F556F8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F557C8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleBoolArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55898(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleFloatArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55968(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleImageDataArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55A38(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55B08(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55BD8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55CA8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetListStyleStringArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55D78(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetPaddingArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55E48(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetParagraphStyleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55F18(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetRuleOffsetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F55FE8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecSetTabsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F560B8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecDoubleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F56188(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecIntegerArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F56258(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecStringArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F56328(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecBoolArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F563F8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecFontFeaturesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F564C8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecShadowArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F56598(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecColorArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F56668(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecStrokeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F56738(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecFillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56808(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecColumnsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F568D8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecPaddingArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F569A8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecDropCapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56A78(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::CharacterStylePropertyChangeSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56B48(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleFloatArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56C18(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56CE8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleImageDataArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56DB8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleListNumberTypeArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56E88(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleBoolArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F56F58(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleStringArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F57028(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleListLabelTypeArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F570F8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecParagraphStyleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F571C8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecListStyleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F57298(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecLineSpacingArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F57368(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecRuleOffsetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F57438(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecTabsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F57508(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::BaseShapeStylePropertyChangeSetArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F575D8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::ParagraphStylePropertyChangeSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F576A8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::SpecCharacterStyleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F57778(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWPSOS::ShapeStylePropertyChangeSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void sub_276F57848(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 - 8);
  v2 = (v1 - 8);
  if (!v3)
  {
    operator delete(v2);
  }
}

uint64_t sub_276F5785C(uint64_t *a1)
{
  if (*a1)
  {
    v1 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v1 = sub_276EA4A94(a1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v1);
}

uint64_t sub_276F58170(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F58240(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDPath::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F58310(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F583E0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::DataReferenceRecord::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F584B0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::TextCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F58580(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ModifyTOCSettingsBaseCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F58650(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::StorageActionCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F58720(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::ApplyThemeChildCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F587F0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::BaseApplyPresetCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F588C0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::StyleBaseCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F58990(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StyleUpdatePropertyMapCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F58A60(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::BaseStyleSetValueCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F58B30(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ShapeSelectionTransformerArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F58C00(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DrawableContentDescription::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F58CD0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ObjectPropertyArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F58DA0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::AddIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F58E70(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::RemoveIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F58F40(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::RearrangeIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276F59010(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F590E0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276F591B0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276F59280(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::MediaInfoGeometryCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276F59350()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_276F5938C()
{
  sub_276EAACD0();
  if (v1)
  {
    v2 = sub_276EAACDC(v1);
  }

  else
  {
    v2 = sub_276EA4A94(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x28210FE18](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGPoint CGContextConvertPointToDeviceSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x282110A30](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint CGContextConvertPointToUserSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x282110A38](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A50](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize CGContextConvertSizeToUserSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A58](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  MEMORY[0x282114778](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x282114948](line);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CTRunGetImageBounds(CTRunRef run, CGContextRef context, CFRange range)
{
  MEMORY[0x2821149B8](run, context, range.location, range.length);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x2821149E8](run);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t String()
{
  return MEMORY[0x2821EB098]();
}

{
  return MEMORY[0x2821EB0A0]();
}

{
  return MEMORY[0x2821EB0A8]();
}

{
  return MEMORY[0x2821EB0B0]();
}

{
  return MEMORY[0x2821EB0C8]();
}

{
  return MEMORY[0x2821EB0D0]();
}

{
  return MEMORY[0x2821EB0E8]();
}

{
  return MEMORY[0x2821EB0F0]();
}

{
  return MEMORY[0x2821EB100]();
}

{
  return MEMORY[0x2821EB108]();
}

{
  return MEMORY[0x2821EB118]();
}

{
  return MEMORY[0x2821EB128]();
}

{
  return MEMORY[0x2821EB130]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}