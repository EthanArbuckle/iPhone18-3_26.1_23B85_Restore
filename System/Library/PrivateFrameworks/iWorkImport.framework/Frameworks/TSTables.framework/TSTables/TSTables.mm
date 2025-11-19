void sub_221076F14(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_221077004(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 15) = 0;
  v3 = a2;
  v8 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);
  v9 = *a1;
  *a1 = v8;

  return a1;
}

void sub_221077078(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 15) = 0;
  if (*(a1 + 16) == 1)
  {
    v18 = sub_2210771B0(a1, a2, a3, a4, a5);
    v10 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v18, v18, v8, v9);
    *a6 = 0;
    *(a6 + 8) = v10;
    *(a6 + 16) = 1;
    *(a6 + 17) = *(a1 + 17);
  }

  else
  {
    v11 = sub_2210772BC(a1, a2, a3, a4, a5);
    v16 = objc_msgSend_copy(v11, v12, v13, v14, v15);
    sub_221077004(&v19, v16);
    v17 = v19;
    v19 = 0uLL;
    *a6 = v17;
    *(a6 + 16) = v20;
    *(a6 + 18) = v21;
  }
}

id sub_2210771B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPStorage *TSCERichTextStorage::wpStorage() const", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextStorage.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 85, 0, "can't access TSWPStorage of non-rich rich text storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    v5 = 0;
  }

  return v5;
}

id sub_2210772BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16))
  {
    v5 = sub_2210771B0(a1, a2, a3, a4, a5);
    v10 = objc_msgSend_string(v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = *a1;
  }

  return v10;
}

uint64_t sub_221077330(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    objc_opt_class();
    v1 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_221077390(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a3;
  sub_221077078(a1, v7, v8, v9, v10, a4);
  sub_221077424(a4, a2, v11);
}

void sub_221077400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_221077288(v10);

  _Unwind_Resume(a1);
}

void sub_221077424(uint64_t a1, uint64_t a2, void *a3)
{
  v205 = a3;
  if (*(a1 + 16) != 1)
  {
    if (*(a2 + 16))
    {
      v29 = *(a2 + 8);
      v12 = v29;
      if (v29 && objc_msgSend_length(v29, v30, v31, v32, v33))
      {
        v38 = objc_msgSend_calcEngine(v205, v34, v35, v36, v37);
        v43 = objc_msgSend_containingTable(v205, v39, v40, v41, v42);
        v47 = objc_msgSend_tableResolverForTableUID_(v38, v44, v43, v45, v46);

        v204 = v47;
        if (v47)
        {
          v52 = objc_msgSend_containingCell(v205, v48, v49, v50, v51);
          v203 = objc_msgSend_cellTextStyle_(v47, v53, v52, v54, v55);
        }

        else
        {
          v203 = 0;
        }

        v122 = sub_2210772BC(a1, v48, v49, v50, v51);
        if (objc_msgSend_length(v122, v123, v124, v125, v126))
        {
          v130 = [TSCEUnpersistedStorage alloc];
          v135 = objc_msgSend_context(v12, v131, v132, v133, v134);
          v140 = objc_msgSend_wpKind(v12, v136, v137, v138, v139);
          v145 = objc_msgSend_stylesheet(v12, v141, v142, v143, v144);
          v150 = objc_msgSend_stylesheet(v12, v146, v147, v148, v149);
          v155 = objc_msgSend_defaultListStyle(v150, v151, v152, v153, v154);
          v157 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v130, v156, v135, v122, v140, v145, v203, v155, 0, 0);

          v165 = objc_msgSend_length(v157, v158, v159, v160, v161);
          if (*(a2 + 17) == 1)
          {
            objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v157, v162, v12, v165, 0, 0);
          }

          else
          {
            v168 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v162, v12, v163, v164);
            sub_221077B14(v168, 0);
            objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v157, v169, v168, v165, 0, 0);
          }

          objc_storeStrong((a1 + 8), v157);
          *(a1 + 16) = 1;
          v174 = 1;
          if ((*(a2 + 18) & 1) == 0)
          {
            v174 = objc_msgSend_paragraphCount(v12, v170, v171, v172, v173) == 1;
          }

          *(a1 + 18) = v174;
          *(a1 + 17) = 1;
        }

        else
        {
          v166 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v127, v12, v128, v129);
          v167 = *(a1 + 8);
          *(a1 + 8) = v166;

          *(a1 + 16) = 1;
          *(a1 + 17) = *(a2 + 17);
        }
      }
    }

    else
    {
      v100 = sub_2210772BC(a1, v5, v6, v7, v8);

      if (v100)
      {
        v105 = sub_2210772BC(a2, v101, v102, v103, v104);

        if (!v105)
        {
          goto LABEL_57;
        }

        v110 = *a1;
        v12 = sub_2210772BC(a2, v106, v107, v108, v109);
        objc_msgSend_appendString_(v110, v111, v12, v112, v113);
      }

      else
      {
        v12 = sub_2210772BC(a2, v101, v102, v103, v104);
        v120 = objc_msgSend_mutableCopy(v12, v116, v117, v118, v119);
        v121 = *a1;
        *a1 = v120;
      }
    }

    goto LABEL_56;
  }

  v9 = *(a1 + 8);
  if (!*(a2 + 16))
  {
    v56 = v9;
    v12 = v56;
    if (v56 && objc_msgSend_length(v56, v57, v58, v59, v60))
    {
      v18 = sub_2210772BC(a2, v61, v62, v63, v64);
      if (v18)
      {
        if ((*(a1 + 18) & 1) == 0)
        {
          v69 = objc_msgSend_paragraphCount(v12, v65, v66, v67, v68) - 1;
          v73 = objc_msgSend_textRangeForParagraphAtIndex_(v12, v70, v69, v71, v72);
          v75 = v74;
          sub_221077B14(v12, v69);
          v80 = objc_msgSend_calcEngine(v205, v76, v77, v78, v79);
          v85 = objc_msgSend_containingTable(v205, v81, v82, v83, v84);
          v89 = objc_msgSend_tableResolverForTableUID_(v80, v86, v85, v87, v88);

          if (v89)
          {
            v94 = objc_msgSend_containingCell(v205, v90, v91, v92, v93);
            v98 = objc_msgSend_cellTextStyle_(v89, v95, v94, v96, v97);
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v12, v99, v98, v73, v75, 0);
          }

          else
          {
            v98 = 0;
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v12, v90, 0, v73, v75, 0);
          }
        }

        v189 = 1;
        *(a1 + 18) = 1;
        if ((*(a1 + 17) & 1) == 0)
        {
          v189 = objc_msgSend_paragraphCount(v12, v65, v66, v67, v68) == 1;
        }

        *(a1 + 17) = v189;
        v190 = sub_2210772BC(a2, v65, v66, v67, v68);
        v195 = objc_msgSend_length(v12, v191, v192, v193, v194);
        objc_msgSend_insertString_atCharIndex_undoTransaction_(v12, v196, v190, v195, 0);
        v201 = objc_msgSend_length(v190, v197, v198, v199, v200);
        objc_msgSend_setCharacterStyle_range_undoTransaction_(v12, v202, 0, v195, v201, 0);
      }

      goto LABEL_55;
    }

    *(a1 + 16) = 0;
    objc_storeStrong(a1, *a2);
    v115 = *(a1 + 8);
    *(a1 + 8) = 0;

    *(a1 + 17) = 0;
LABEL_56:

    goto LABEL_57;
  }

  if (!v9 || !objc_msgSend_length(v9, v5, v6, v7, v8))
  {
    v114 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v5, *(a2 + 8), v7, v8);
    v12 = *(a1 + 8);
    *(a1 + 8) = v114;
    goto LABEL_56;
  }

  v11 = *(a2 + 8);
  if (v11 && objc_msgSend_length(v11, v5, v10, v7, v8))
  {
    v12 = *(a1 + 8);
    v17 = objc_msgSend_paragraphCount(v12, v13, v14, v15, v16);
    v18 = *(a2 + 8);
    v27 = objc_msgSend_length(v12, v19, v20, v21, v22);
    if (*(a2 + 17))
    {
      v28 = 0;
    }

    else
    {
      v28 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v23, v18, v25, v26);
      sub_221077B14(v28, 0);
    }

    if ((*(a1 + 18) & 1) == 0)
    {
      v175 = objc_msgSend_paragraphCount(v12, v23, v24, v25, v26);
      sub_221077B14(v12, v175 - 1);
    }

    if (v28)
    {
      v176 = v28;
    }

    else
    {
      v176 = v18;
    }

    v177 = v176;
    objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v12, v178, v177, v27, 0, 0);
    if (objc_msgSend_paragraphCount(v12, v179, v180, v181, v182) == 1)
    {
      v187 = 1;
      *(a1 + 17) = 1;
    }

    else
    {
      v188 = *(a1 + 17);
      if (v17 <= 1)
      {
        v188 = 0;
      }

      *(a1 + 17) = v188;
      v187 = *(a2 + 18) == 1 && objc_msgSend_paragraphCount(v18, v183, v184, v185, v186) > 1;
    }

    *(a1 + 18) = v187;

LABEL_55:
    goto LABEL_56;
  }

LABEL_57:
}

void sub_221077B14(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v54.location = 0;
  v54.length = 0;
  v52 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v3, v5, a2, &v54, v6);
  v11 = objc_msgSend_propertyMap(v52, v7, v8, v9, v10);
  v51 = objc_msgSend_properties(MEMORY[0x277D80DB0], v12, v13, v14, v15);
  objc_msgSend_filterWithProperties_(v11, v16, v51, v17, v18);
  context = v4;
  location = v54.location;
  length = v54.length;
  v27 = objc_msgSend_context(v3, v21, v22, v23, v24);
  v28 = length + location;
  if (location < v28)
  {
    v29 = 0;
    while (1)
    {
      v53.location = location;
      v53.length = v28 - location;
      v34 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v3, v25, location, &v53, v26);
      if (v34)
      {
        v35 = objc_msgSend_copy(v11, v30, v31, v32, v33);
        v40 = objc_msgSend_propertyMap(v34, v36, v37, v38, v39);
        objc_msgSend_addValuesFromPropertyMap_(v35, v41, v40, v42, v43);

        v44 = objc_alloc(MEMORY[0x277D80DB0]);
        isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v44, v45, v27, 0, v35, 0);

        if (!isVariation)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (!v29)
        {
          v47 = objc_alloc(MEMORY[0x277D80DB0]);
          v29 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v47, v48, v27, 0, v11, 0);
        }

        isVariation = v29;
        v29 = isVariation;
        if (!isVariation)
        {
          goto LABEL_10;
        }
      }

      v49 = NSIntersectionRange(v53, v54);
      objc_msgSend_setCharacterStyle_range_undoTransaction_(v3, v49.length, isVariation, v49.location, v49.length, 0);
LABEL_10:
      location += v53.length;

      if (location >= v28)
      {
        goto LABEL_13;
      }
    }
  }

  v29 = 0;
LABEL_13:

  objc_autoreleasePoolPop(context);
}

void sub_221077D90(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (*(a1 + 16) == 1)
  {
    v10 = sub_2210771B0(a1, a2, a3, a4, a5);
    v15 = v10;
    if (v9)
    {
      v16 = sub_2210771B0(a4, v11, v12, v13, v14);
      objc_msgSend_replaceCharactersInRange_withStorage_usePasteRules_dolcContext_undoTransaction_(v15, v17, a2, a3, v16, 1, 0, 0);
    }

    else
    {
      if (!a2 && a3 >= objc_msgSend_length(v10, v11, v12, v13, v14))
      {
        v50 = sub_2210772BC(a4, v11, v12, v13, v14);
        v55 = objc_msgSend_mutableCopy(v50, v51, v52, v53, v54);

        v56 = *a1;
        *a1 = v55;
        v57 = v55;

        v58 = *(a1 + 8);
        *(a1 + 8) = 0;

        *(a1 + 16) = 0;
        goto LABEL_13;
      }

      v16 = sub_2210772BC(a4, v11, v12, v13, v14);
      objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v15, v40, a2, a3, v16, 0);
    }
  }

  else if (*(a4 + 16))
  {
    v15 = sub_2210771B0(a4, a2, a3, a4, a5);
    v16 = sub_2210772BC(a1, v18, v19, v20, v21);
    v28 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v22, v15, v23, v24);
    if (a2)
    {
      v29 = objc_msgSend_substringToIndex_(v16, v25, a2, v26, v27);
      objc_msgSend_insertString_atCharIndex_undoTransaction_(v28, v30, v29, 0, 0);
    }

    v31 = objc_msgSend_substringFromIndex_(v16, v25, &a2[a3], v26, v27);
    v36 = objc_msgSend_length(v28, v32, v33, v34, v35);
    objc_msgSend_insertString_atCharIndex_undoTransaction_(v28, v37, v31, v36, 0);
    v38 = *a1;
    *a1 = 0;

    v39 = *(a1 + 8);
    *(a1 + 8) = v28;

    *(a1 + 16) = 1;
  }

  else
  {
    v15 = *a1;
    v16 = sub_2210772BC(a4, v41, v42, v43, v44);
    objc_msgSend_replaceCharactersInRange_withString_(v15, v45, a2, a3, v16);
  }

LABEL_13:
  sub_221078028(a1, v46, v47, v48, v49);
  *(a1 + 17) = 0;
}

void sub_221078028(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) == 1)
  {
    v22 = sub_2210771B0(a1, a2, a3, a4, a5);
    if (objc_msgSend_canBeStoredInAStringValueCell(v22, v6, v7, v8, v9))
    {
      v14 = objc_msgSend_string(v22, v10, v11, v12, v13);
      v19 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18);
      v20 = *a1;
      *a1 = v19;

      v21 = *(a1 + 8);
      *(a1 + 8) = 0;

      *(a1 + 16) = 0;
      *(a1 + 18) = 0;
    }
  }
}

void sub_2210780F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v8 = sub_2210771B0(a1, a2, a3, a4, a5);
    v13 = objc_msgSend_string(v8, v9, v10, v11, v12);
    v16 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(v13, v14, *a2, *(a2 + 8), v15);
    v18 = v17;
    v22 = objc_msgSend_context(v8, v17, v19, v20, v21);
    v24 = objc_msgSend_newSubstorageWithRange_context_flags_(v8, v23, v16, v18, v22, 1);

    if (objc_msgSend_length(v24, v25, v26, v27, v28))
    {
      v33 = objc_msgSend_string(v24, v29, v30, v31, v32);
      v34 = v33;
      v39 = objc_msgSend_UTF8String(v34, v35, v36, v37, v38);

      if (!v39)
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "TSCERichTextStorage TSCERichTextStorage::substringWithRange(const NSRange &) const", v31, v32);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextStorage.mm", v43, v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 364, 0, "Couldn't convert string obtained from storage to UTF-8 - broke a composed character, perhaps?");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
      }
    }

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 15) = 0;
    if (objc_msgSend_canBeStoredInAStringValueCell(v24, v29, v30, v31, v32))
    {
      v55 = objc_msgSend_string(v24, v51, v52, v53, v54);
      sub_221077004(&v70, v55);
      v56 = v70;
      v70 = 0;
      v57 = *a6;
      *a6 = v56;

      v58 = v71;
      v71 = 0;
      v59 = *(a6 + 8);
      *(a6 + 8) = v58;

      *(a6 + 16) = v72;
      *(a6 + 18) = v73;
    }

    else
    {
      v66 = v24;
      v67 = *a6;
      *a6 = 0;

      v68 = *(a6 + 8);
      *(a6 + 8) = v66;

      *(a6 + 16) = 1;
      *(a6 + 18) = 0;
    }
  }

  else
  {
    v69 = sub_2210772BC(a1, a2, a3, a4, a5);
    v62 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(v69, v60, *a2, *(a2 + 8), v61);
    v65 = objc_msgSend_substringWithRange_(v69, v63, v62, v63, v64);
    sub_221077004(a6, v65);
  }
}

void sub_2210783E8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = objc_msgSend_length(v3, v5, v6, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2210784F0;
  v13[3] = &unk_27845D7D0;
  v10 = v4;
  v15 = v10;
  v11 = v3;
  v14 = v11;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v11, v12, 0, v9, 1027, v13);
}

void sub_2210784F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = (*(*(a1 + 40) + 16))();
  if ((objc_msgSend_isEqualToString_(v7, v8, v12, v9, v10) & 1) == 0)
  {
    objc_msgSend_replaceCharactersInRange_withString_(*(a1 + 32), v11, a3, a4, v7);
  }
}

void sub_2210785A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  if (*(a1 + 16) == 1)
  {
    v9 = sub_2210771B0(a1, v5, v6, v7, v8);
    v13 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v10, v9, v11, v12);
    objc_msgSend_uppercaseWithUndoTransaction_locale_(v13, v14, 0, v21, v15);
    *a3 = 0;
    *(a3 + 8) = v13;
    *(a3 + 16) = 1;
    *(a3 + 18) = 0;
  }

  else
  {
    v16 = sub_2210772BC(a1, v5, v6, v7, v8);
    v9 = objc_msgSend_uppercaseString(v16, v17, v18, v19, v20);

    sub_221077004(a3, v9);
  }
}

void sub_2210786B4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  if (*(a1 + 16) == 1)
  {
    v9 = sub_2210771B0(a1, v5, v6, v7, v8);
    v13 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v10, v9, v11, v12);
    objc_msgSend_lowercaseWithUndoTransaction_locale_(v13, v14, 0, v21, v15);
    *a3 = 0;
    *(a3 + 8) = v13;
    *(a3 + 16) = 1;
    *(a3 + 18) = 0;
  }

  else
  {
    v16 = sub_2210772BC(a1, v5, v6, v7, v8);
    v9 = objc_msgSend_lowercaseString(v16, v17, v18, v19, v20);

    sub_221077004(a3, v9);
  }
}

void sub_2210787C4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  if (*(a1 + 16) == 1)
  {
    v9 = sub_2210771B0(a1, v5, v6, v7, v8);
    v13 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v10, v9, v11, v12);
    objc_msgSend_capitalizeWithUndoTransaction_locale_(v13, v14, 0, v21, v15);
    *a3 = 0;
    *(a3 + 8) = v13;
    *(a3 + 16) = 1;
    *(a3 + 18) = 0;
  }

  else
  {
    v16 = sub_2210772BC(a1, v5, v6, v7, v8);
    v9 = objc_msgSend_mutableCopy(v16, v17, v18, v19, v20);

    sub_2210783E8(v9, &unk_2834A1290);
    sub_221077004(a3, v9);
  }
}

id sub_2210788E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_capitalizedString(a2, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_221078910(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) == 1)
  {
    sub_2210771B0(a1, a2, a3, a4, a5);
  }

  else
  {
    sub_2210772BC(a1, a2, a3, a4, a5);
  }
  v5 = ;
  v10 = objc_msgSend_length(v5, v6, v7, v8, v9);

  return v10;
}

uint64_t sub_22107897C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) == 1)
  {
    sub_2210771B0(a1, a2, a3, a4, a5);
  }

  else
  {
    sub_2210772BC(a1, a2, a3, a4, a5);
  }
  v6 = ;
  v10 = objc_msgSend_characterAtIndex_(v6, v7, *a2, v8, v9);

  return v10;
}

id sub_2210789F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) == 1)
  {
    v6 = [TSCERichTextValue alloc];
    ParagraphHadStylesDemoted_lastParagraphHadStylesDemoted = objc_msgSend_initWithStorage_firstParagraphHadStylesDemoted_lastParagraphHadStylesDemoted_(v6, v7, *(a1 + 8), *(a1 + 17), *(a1 + 18));
  }

  else
  {
    v9 = *a1;
    if (!*a1)
    {
      v9 = &stru_2834BADA0;
    }

    ParagraphHadStylesDemoted_lastParagraphHadStylesDemoted = objc_msgSend_stringValue_(TSCEStringValue, a2, v9, a4, a5);
  }

  return ParagraphHadStylesDemoted_lastParagraphHadStylesDemoted;
}

id sub_221078A70(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v94 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v8 = a4;
  v9 = a6;
  v88 = v8;
  v10 = [TSTFunctionEndNode alloc];
  v15 = objc_msgSend_context(v8, v11, v12, v13, v14);
  Index = objc_msgSend_firstIndex(v86, v16, v17, v18, v19);
  v25 = objc_msgSend_lastIndex(v86, v21, v22, v23, v24);
  Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v10, v26, v15, v8, Index, v25);

  v31 = objc_msgSend_functionNode(v86, v27, v28, v29, v30);
  v36 = objc_msgSend_children(v31, v32, v33, v34, v35);

  v37 = MEMORY[0x277CBEB18];
  v42 = objc_msgSend_count(v36, v38, v39, v40, v41);
  v46 = objc_msgSend_arrayWithCapacity_(v37, v43, v42, v44, v45);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v47 = v36;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v89, v93, 16);
  if (v53)
  {
    v54 = *v90;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v90 != v54)
        {
          objc_enumerationMutation(v47);
        }

        v56 = *(*(&v89 + 1) + 8 * i);
        v57 = objc_msgSend_tokenAttachment(v56, v49, v50, v51, v52);
        v61 = objc_msgSend_objectForKey_(v9, v58, v57, v59, v60);

        if (v61)
        {
          v69 = objc_msgSend_expressionNode(v61, v62, v63, v64, v65);
        }

        else
        {
          v70 = objc_msgSend_context(v88, v62, v63, v64, v65);
          v69 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v56, v71, v70, a5, v9);
        }

        objc_msgSend_addObject_(v46, v66, v69, v67, v68);
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v89, v93, 16);
    }

    while (v53);
  }

  v75 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v72, v46, v73, v74);
  v80 = objc_msgSend_functionNode(Index_lastIndex, v76, v77, v78, v79);
  objc_msgSend_setChildren_(v80, v81, v75, v82, v83);

  return Index_lastIndex;
}

uint64_t sub_221078DE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v11 = a4;
  if (!v11)
  {
    v12 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10);
    v11 = objc_msgSend_stylesheet(v12, v13, v14, v15, v16);
  }

  v19 = 0;
  matched = objc_msgSend_i_copyIntoContext_stylesheet_paragraphStyle_listStyle_bakeModes_resettingHostTableToMatch_referenceColorHelper_disableMenus_(a1, v7, v6, v11, 0, 0, 0, 0, 0, v19);

  return matched;
}

id sub_221078EA0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7, void *a8, void *a9, char a10)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v88 = a6;
  v86 = a8;
  v84 = a9;
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277D80F28]);
    v24 = objc_msgSend_string(a1, v20, v21, v22, v23);
    v82 = objc_msgSend_writingDirectionForParagraphAtParIndex_(a1, v25, 0, v26, v27);
    v29 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v19, v28, v16, v24, 3, v17, v18, v88, 0, 0, v82, v84, v86);
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277D80F28]);
    v24 = objc_msgSend_string(a1, v31, v32, v33, v34);
    v39 = objc_msgSend_defaultParagraphStyle(v17, v35, v36, v37, v38);
    v44 = objc_msgSend_defaultListStyle(v17, v40, v41, v42, v43);
    v83 = objc_msgSend_writingDirectionForParagraphAtParIndex_(a1, v45, 0, v46, v47);
    v29 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v30, v48, v16, v24, 3, v17, v39, v44, 0, 0, v83, v84, v86);
  }

  v53 = objc_msgSend_length(v29, v49, v50, v51, v52);
  if (v53 != objc_msgSend_length(a1, v54, v55, v56, v57))
  {
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]", v59, v60);
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v64, v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 114, 0, "Creating a copy of the storage resulted in a smaller storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = sub_221079224;
  v89[3] = &unk_27845D838;
  v89[4] = a1;
  v94 = a7;
  v72 = v16;
  v90 = v72;
  v73 = v87;
  v91 = v73;
  v74 = v85;
  v92 = v74;
  v95 = a10;
  v75 = v29;
  v93 = v75;
  objc_msgSend_performBlockIgnoringModifications_(v75, v76, v89, v77, v78);
  v79 = v93;
  v80 = v75;

  return v80;
}

void sub_221079224(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_range(v6, a2, a3, a4, a5);
  v10 = objc_msgSend_attachmentIndexRangeForTextRange_(v6, v8, v7, v8, v9);
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D812B8]);
  v243 = objc_msgSend_initWithCapacity_(v13, v14, v12, v15, v16);
  v17 = objc_alloc(MEMORY[0x277D81258]);
  v25 = objc_msgSend_initWithCapacity_(v17, v18, v12, v19, v20);
  v236 = v10 + v12;
  if (v10 >= v10 + v12)
  {
LABEL_28:
    v239 = 0;
    goto LABEL_33;
  }

  v240 = 0;
  v238 = 0;
  v239 = 1;
  while (1)
  {
    v245 = 0;
    v241 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(*(a1 + 32), v21, v10, &v245, v24);
    objc_opt_class();
    v242 = TSUDynamicCast();
    if (!v241)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]_block_invoke", v27, v28);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v32, v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 133, 0, "Found an attachment that wasn't a TSTWPTokenAttachment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }

    v44 = objc_msgSend_objectForKey_(v243, v26, v242, v27, v28);
    if (!v44)
    {
      v45 = objc_msgSend_expressionNode(v242, v40, v41, v42, v43);
      v50 = objc_msgSend_tokenType(v45, v46, v47, v48, v49);

      if (v50 == 2)
      {
        objc_opt_class();
        v57 = objc_msgSend_expressionNode(v242, v53, v54, v55, v56);
        v58 = TSUDynamicCast();

        objc_msgSend_removeObject_(v25, v59, v58, v60, v61);
        v66 = objc_msgSend_functionNode(v58, v62, v63, v64, v65);
        v71 = objc_msgSend_tokenAttachment(v66, v67, v68, v69, v70);
        v75 = objc_msgSend_objectForKey_(v243, v72, v71, v73, v74);

        if (!v75)
        {
          v237 = objc_msgSend_copyIntoContext_bakeModes_(v242, v76, *(a1 + 40), *(a1 + 72), v79);
          goto LABEL_20;
        }

        v80 = *(a1 + 32);
        v81 = objc_msgSend_expressionNode(v75, v76, v77, v78, v79);
        v83 = objc_msgSend_p_processEndNode_startNode_bakeModes_tokenDict_(v80, v82, v58, v81, *(a1 + 72), v243);

        v84 = [TSTWPTokenAttachment alloc];
        v237 = objc_msgSend_initWithContext_expressionNode_(v84, v85, *(a1 + 40), v83, v86);
      }

      else
      {
        v237 = objc_msgSend_copyIntoContext_bakeModes_(v242, v51, *(a1 + 40), *(a1 + 72), v52);
        objc_opt_class();
        v91 = objc_msgSend_expressionNode(v237, v87, v88, v89, v90);
        v58 = TSUDynamicCast();

        if (v58)
        {
          if (*(a1 + 48))
          {
            isLocalReference = objc_msgSend_isLocalReference(v58, v92, v93, v94, v95);
            v101 = objc_msgSend_tableUID(*(a1 + 48), v97, v98, v99, v100);
            objc_msgSend_setHostTableUID_(v58, v102, v101, v102, v103);
            if (isLocalReference)
            {
              v105 = objc_msgSend_tableUID(v58, v92, v104, v94, v95);
              v107 = v106;
              if (v105 != objc_msgSend_tableUID(*(a1 + 48), v106, v108, v109, v110) || v107 != v92)
              {
                v112 = objc_msgSend_baseBoundingBox(v58, v92, v111, v94, v95);
                v114 = v113;
                v118 = objc_msgSend_tableUID(*(a1 + 48), v113, v115, v116, v117);
                v244[0] = v112;
                v244[1] = v114;
                v244[2] = v118;
                v244[3] = v119;
                v123 = objc_msgSend_basePreserveFlags(v58, v119, v120, v121, v122);
                objc_msgSend_setBaseRangeRef_preserveFlags_(v58, v124, v244, v123, v125);
              }
            }
          }

          objc_msgSend_setReferenceColorHelper_(v58, v92, *(a1 + 56), v94, v95);
          v238 = objc_msgSend_suppressReferenceOptionsMenu(v58, v126, v127, v128, v129);
        }

        objc_msgSend_setObject_forUncopiedKey_(v243, v92, v237, v242, v95);
        objc_opt_class();
        v134 = objc_msgSend_expressionNode(v242, v130, v131, v132, v133);
        v75 = TSUDynamicCast();

        if (!v75)
        {
          goto LABEL_20;
        }

        v83 = objc_msgSend_functionEndNode(v75, v135, v136, v137, v138);
        objc_msgSend_addObject_(v25, v139, v83, v140, v141);
      }

LABEL_20:
      v44 = v237;
    }

    objc_msgSend_setNeverShowsMenu_(v44, v40, (*(a1 + 73) | v238) & 1, v42, v43);
    v245 += v240;
    v142 = v245;
    if (v142 + 1 > objc_msgSend_length(*(a1 + 64), v143, v144, v145, v146))
    {
      break;
    }

    if (objc_msgSend_characterAtIndex_(*(a1 + 64), v147, v142, v148, v149) != 65532)
    {
      v153 = MEMORY[0x277D81150];
      v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]_block_invoke", v151, v152);
      v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v156, v157);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v153, v159, v154, v158, 198, 0, "Expected destination storage to have an attachment character at this index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161, v162, v163);
    }

    objc_msgSend_deleteRange_undoTransaction_(*(a1 + 64), v150, v142, 1, 0);
    objc_opt_class();
    v168 = objc_msgSend_expressionNode(v44, v164, v165, v166, v167);
    v169 = TSUDynamicCast();

    v174 = *(a1 + 64);
    v175 = v245;
    if (v169)
    {
      v176 = objc_msgSend_string(v169, v170, v171, v172, v173);
      objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v174, v177, v175, 0, v176, 0);

      v182 = objc_msgSend_string(v169, v178, v179, v180, v181);
      v240 = v240 + objc_msgSend_length(v182, v183, v184, v185, v186) - 1;
    }

    else
    {
      objc_msgSend_insertAttachmentOrFootnote_range_(*(a1 + 64), v170, v44, v245, 0);
    }

    v239 = ++v10 < v236;
    if (!--v12)
    {
      goto LABEL_28;
    }
  }

  v187 = MEMORY[0x277D81150];
  v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]_block_invoke", v148, v149);
  v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v190, v191);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v187, v193, v188, v192, 190, 0, "attachment character index out of bounds. Bailing.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v194, v195, v196, v197);
LABEL_33:
  while (objc_msgSend_count(v25, v21, v22, v23, v24))
  {
    v198 = objc_msgSend_anyObject(v25, v224, v225, v226, v227);
    objc_msgSend_removeObject_(v25, v199, v198, v200, v201);
    v206 = objc_msgSend_functionNode(v198, v202, v203, v204, v205);
    v211 = objc_msgSend_tokenAttachment(v206, v207, v208, v209, v210);
    v215 = objc_msgSend_objectForKey_(v243, v212, v211, v213, v214);

    if (v215)
    {
      v220 = *(a1 + 32);
      v221 = objc_msgSend_expressionNode(v215, v216, v217, v218, v219);
      v223 = objc_msgSend_p_processEndNode_startNode_bakeModes_tokenDict_(v220, v222, v198, v221, *(a1 + 72), v243);
    }
  }

  if (v239)
  {
    v228 = objc_msgSend_length(*(a1 + 64), v224, v225, v226, v227);
    if (v228)
    {
      v232 = v228 - 1;
      v233 = MEMORY[0x277D81408];
      do
      {
        if (objc_msgSend_characterAtIndex_(*(a1 + 64), v229, v232, v230, v231) == 65532)
        {
          v235 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 64), v229, v232, v230, v231);
          if (!v235)
          {
            if (*v233 != -1)
            {
              sub_2216F6494();
            }

            objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(*(a1 + 64), v234, v232, 1, &stru_2834BADA0, 0);
          }
        }

        --v232;
      }

      while (v232 != -1);
    }
  }
}

void sub_221079B74()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_221079BB8(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = objc_opt_class();
  v7 = objc_msgSend_range(a1, v3, v4, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221079CA4;
  v11[3] = &unk_27845D860;
  v11[4] = &v12;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(a1, v8, v2, v7, v8, v11);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_221079C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221079CA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  v11 = objc_msgSend_expressionNode(v12, v7, v8, v9, v10);
  *(*(*(a1 + 32) + 8) + 24) = v11 == 0;

  *a5 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_221079D30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage(TSTFormulaAdditions) p_rangeOfString:orNodeClass:range:]", v6, v7);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v8, v12, 281, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s: %s", v20, v21, "Do not call method", "[TSWPStorage(TSTFormulaAdditions) p_rangeOfString:orNodeClass:range:]");
  v24 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v23, *MEMORY[0x277CBE658], v22, 0);
  v25 = v24;

  objc_exception_throw(v24);
}

uint64_t sub_221079E54(id a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a1 == v8)
  {
    goto LABEL_15;
  }

  v9 = objc_msgSend_range(a1, v4, v5, v6, v7);
  v11 = v10;
  isEqualToExpressionNode = 0;
  if (v9 != objc_msgSend_range(v8, v10, v12, v13, v14) || v11 != v15)
  {
    goto LABEL_17;
  }

  v20 = objc_msgSend_string(a1, v15, v16, v17, v18);
  v25 = objc_msgSend_string(v8, v21, v22, v23, v24);
  isEqualToString = objc_msgSend_isEqualToString_(v20, v26, v25, v27, v28);

  if (!isEqualToString || (v34 = objc_msgSend_range(a1, v30, v31, v32, v33), v37 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v35, v34, v35, v36), v39 = v38, v43 = objc_msgSend_range(v8, v38, v40, v41, v42), v46 = objc_msgSend_attachmentIndexRangeForTextRange_(v8, v44, v43, v44, v45), v39 != v47))
  {
    isEqualToExpressionNode = 0;
    goto LABEL_17;
  }

  v48 = &v39[v37];
  if (v37 >= &v39[v37])
  {
LABEL_15:
    isEqualToExpressionNode = 1;
    goto LABEL_17;
  }

  v49 = v46;
  do
  {
    objc_opt_class();
    v52 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v50, v37, 0, v51);
    v53 = TSUDynamicCast();

    objc_opt_class();
    v56 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v8, v54, v49, 0, v55);
    v57 = TSUDynamicCast();

    if (v53 && v57)
    {
      v62 = objc_msgSend_expressionNode(v53, v58, v59, v60, v61);
      v67 = objc_msgSend_expressionNode(v57, v63, v64, v65, v66);
      isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(v62, v68, v67, v69, v70);
    }

    else
    {
      isEqualToExpressionNode = (v53 == 0) ^ (v57 != 0);
    }

    if (v37 + 1 >= v48)
    {
      break;
    }

    ++v49;
    ++v37;
  }

  while ((isEqualToExpressionNode & 1) != 0);
LABEL_17:

  return isEqualToExpressionNode;
}

uint64_t sub_22107A0E8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, a3, a4, a5);
  v11 = a3 + 1;
  while (v11)
  {
    v12 = objc_msgSend_characterAtIndex_(a1, v7, --v11, v8, v9);
    if ((objc_msgSend_characterIsMember_(v10, v13, v12, v14, v15) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v11;
}

unint64_t sub_22107A170(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v11 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, a3, a4, a5);
  while (v5 < objc_msgSend_length(a1, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_characterAtIndex_(a1, v12, v5, v13, v14);
    if ((objc_msgSend_characterIsMember_(v11, v16, v15, v17, v18) & 1) == 0)
    {
      goto LABEL_6;
    }

    ++v5;
  }

  v5 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v5;
}

void sub_22107A21C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v19 = a3;
  v6 = a4;
  v15 = objc_msgSend_length(v19, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend_length(a1, v11, v12, v13, v14);
    objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(a1, v17, v16, 0, v19, 0);
    if (v6)
    {
      objc_msgSend_setLanguage_forCharRange_undoTransaction_(a1, v18, v6, v16, v15, 0);
    }
  }
}

void sub_22107A2E4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v18 = a3;
  v10 = a4;
  v15 = objc_msgSend_length(v18, v11, v12, v13, v14);
  objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(a1, v16, a5, a6, v18, 0);
  if (v10)
  {
    objc_msgSend_setLanguage_forCharRange_undoTransaction_(a1, v17, v10, a5, v15, 0);
  }
}

void sub_22107A3B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  v6 = a4;
  v11 = objc_msgSend_length(a1, v7, v8, v9, v10);
  objc_msgSend_insertAttachmentOrFootnote_range_(a1, v12, v14, v11, 0);
  if (v6)
  {
    objc_msgSend_setLanguage_forCharRange_undoTransaction_(a1, v13, v6, v11, 1, 0);
  }
}

uint64_t sub_22107A460(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_range(a1, a2, a3, a4, a5);

  return MEMORY[0x2821F9670](a1, sel_stringWithFormulaPlainTextFromRange_, v7, v6, v8);
}

uint64_t sub_22107A4A8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_range(a1, a2, a3, a4, a5);

  return MEMORY[0x2821F9670](a1, sel_stringWithFormulaDetokenizedTextFromRange_, v7, v6, v8);
}

id sub_22107A4F0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4, a5);
  v11 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v9, v6, v5, v10);
  if (v6 < v6 + v5)
  {
    v15 = v11;
    do
    {
      v16 = objc_msgSend_characterAtIndex_(a1, v12, v6, v13, v14);
      if (v16 == 65532)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        v22 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v20, v15, &v50, v21);
        v23 = TSUDynamicCast();

        objc_opt_class();
        v28 = TSUDynamicCast();
        if (v6 != v50)
        {
          v29 = MEMORY[0x277D81150];
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSWPStorage(TSTFormulaAdditions) p_stringWithFormulaAsTextFromRange:returningTokenValues:]", v26, v27);
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v32, v33);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 421, 0, "Attachment index mismatch");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
        }

        if (v28)
        {
          if (v49)
          {
            objc_msgSend_detokenizedText(v28, v24, v25, v26, v27);
          }

          else
          {
            objc_msgSend_formulaPlainText(v28, v24, v25, v26, v27);
          }
          v40 = ;
          if (objc_msgSend_length(v40, v41, v42, v43, v44))
          {
            objc_msgSend_appendString_(v8, v45, v40, v46, v47);
          }
        }

        ++v15;
      }

      else
      {
        objc_msgSend_appendFormat_(v8, v17, @"%C", v18, v19, v16);
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  return v8;
}

void sub_22107A760(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_characterCount(a1, a2, a3, a4, a5);
  if (v7)
  {
    v10 = v7;
    v11 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v8, 0, a4, v9);
    if (a4)
    {
      v15 = v11;
      v16 = 0;
      do
      {
        if (v16 < v10 && objc_msgSend_characterAtIndex_(a1, v12, v16, v13, v14) == 65532)
        {
          v56 = 0x7FFFFFFFFFFFFFFFLL;
          objc_opt_class();
          v19 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v17, v15, &v56, v18);
          v20 = TSUDynamicCast();

          if (v16 != v56)
          {
            v25 = MEMORY[0x277D81150];
            v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorage(TSTFormulaAdditions) inProgressFunctions:atInsertionPoint:]", v23, v24);
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v28, v29);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 448, 0, "Attachment index mismatch");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
          }

          v36 = objc_msgSend_expressionNode(v20, v21, v22, v23, v24);
          v55 = v36;
          if (v36)
          {
            if (objc_msgSend_isFunctionNode(v36, v37, v38, v39, v40))
            {
              sub_22107A9E4(a3, &v55);
            }

            else if (objc_msgSend_isFunctionEndNode(v55, v41, v42, v43, v44))
            {
              objc_opt_class();
              v45 = TSUDynamicCast();
              v46 = a3[1];
              if (*a3 != v46)
              {
                v47 = *(v46 - 8);
                v52 = objc_msgSend_functionNode(v45, v48, v49, v50, v51);

                if (v47 == v52)
                {
                  v53 = a3[1];

                  a3[1] = v53 - 8;
                }
              }
            }
          }

          ++v15;
        }

        ++v16;
      }

      while (a4 != v16);
    }
  }
}

id sub_22107A9E4(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22107AAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_22107AAD8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  objc_msgSend_inProgressFunctions_atInsertionPoint_(a1, a2, &v7, a3, a5);
  if (v7 == v8)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v8 - 8);
  }

  v10 = &v7;
  sub_22107C2C0(&v10);

  return v5;
}

void sub_22107AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_22107C2C0(&a12);
  _Unwind_Resume(a1);
}

id sub_22107AB70(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v8 = objc_opt_new();
  v13 = objc_msgSend_characterCount(a1, v9, v10, v11, v12);
  if (!v13)
  {
    goto LABEL_78;
  }

  v14 = [TSTFunctionNode alloc];
  v19 = objc_msgSend_context(a1, v15, v16, v17, v18);
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v14, v20, v19, 104, 0, 0, 0);

  v123 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v22, a3, a4, v23);
  v28 = objc_msgSend_singleQuoteCharacters(TSTFormula, v24, v25, v26, v27);
  v36 = objc_msgSend_doubleQuoteCharacters(TSTFormula, v29, v30, v31, v32);
  v37 = a3 + a4;
  if (a3 >= a3 + a4)
  {
    v122 = 0;
    v102 = 1;
    goto LABEL_74;
  }

  v121 = Index_lastIndex;
  v122 = 0;
  v125 = 0;
  v126 = 0;
  v38 = v13 - 1;
  do
  {
    if (a3 >= v13)
    {
      v39 = 0;
    }

    else
    {
      v39 = objc_msgSend_characterAtIndex_(a1, v33, a3, v34, v35);
      if (v39 == 65532)
      {
        v127 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        v42 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v40, v123, &v127, v41);
        v43 = TSUDynamicCast();

        v48 = objc_msgSend_expressionNode(v43, v44, v45, v46, v47);
        v53 = v48;
        if (!v48)
        {
LABEL_51:
          ++v123;

          goto LABEL_52;
        }

        isFunctionNode = objc_msgSend_isFunctionNode(v48, v49, v50, v51, v52);
        if (v122)
        {
          v59 = 0;
        }

        else
        {
          v59 = isFunctionNode;
        }

        if (v59 == 1)
        {
          v122 = v53;
        }

        else
        {
          if (objc_msgSend_isFunctionNode(v53, v55, v56, v57, v58))
          {
            if (v126 == 1)
            {
              objc_msgSend_addObject_(v8, v82, v121, v84, v85);
            }

            v60 = v126 + 1;
            goto LABEL_50;
          }

          if (objc_msgSend_isFunctionEndNode(v53, v82, v83, v84, v85))
          {
            v60 = v126 - 1;
            if (!v126)
            {
              v60 = 0;
            }

            goto LABEL_50;
          }

          if (v126 != 1)
          {
            goto LABEL_51;
          }

          if ((objc_msgSend_isEmptyNode(v53, v86, v87, v88, v89) & 1) != 0 || objc_msgSend_isArgumentPlaceholderNode(v53, v94, v95, v96, v97))
          {
            objc_msgSend_addObject_(v8, v94, v53, v96, v97);
          }

          else if (objc_msgSend_count(v8, v94, v98, v96, v97) <= v125)
          {
            objc_msgSend_addObject_(v8, v99, v121, v100, v101);
          }
        }

        v60 = 1;
LABEL_50:
        v126 = v60;
        goto LABEL_51;
      }
    }

    if (v39 == a5)
    {
      v61 = v125;
      if (v126 == 1)
      {
        v61 = v125 + 1;
      }

      v125 = v61;
    }

    else if (objc_msgSend_characterIsMember_(v28, v33, v39, v34, v35))
    {
      while (a3 < v38)
      {
        v62 = a3 + 1;
        v63 = objc_msgSend_characterAtIndex_(a1, v33, a3 + 1, v34, v35);
        if (objc_msgSend_characterIsMember_(v28, v64, v63, v65, v66))
        {
          a3 += 2;
          if (a3 >= v13)
          {
            IsMember = objc_msgSend_characterIsMember_(v28, v33, 0, v34, v35);
          }

          else
          {
            v67 = objc_msgSend_characterAtIndex_(a1, v33, a3, v34, v35);
            IsMember = objc_msgSend_characterIsMember_(v28, v68, v67, v69, v70);
          }

          if ((IsMember & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          ++a3;
        }
      }
    }

    else if (objc_msgSend_characterIsMember_(v36, v33, v39, v34, v35))
    {
      while (a3 < v38)
      {
        v62 = a3 + 1;
        v73 = objc_msgSend_characterAtIndex_(a1, v33, a3 + 1, v34, v35);
        if (objc_msgSend_characterIsMember_(v36, v74, v73, v75, v76))
        {
          a3 += 2;
          if (a3 >= v13)
          {
            v81 = objc_msgSend_characterIsMember_(v36, v33, 0, v34, v35);
          }

          else
          {
            v77 = objc_msgSend_characterAtIndex_(a1, v33, a3, v34, v35);
            v81 = objc_msgSend_characterIsMember_(v36, v78, v77, v79, v80);
          }

          if ((v81 & 1) == 0)
          {
LABEL_35:
            a3 = v62;
            break;
          }
        }

        else
        {
          ++a3;
        }
      }
    }

    else
    {
      if (v126 == 1 && objc_msgSend_count(v8, v33, v72, v34, v35) <= v125)
      {
        objc_msgSend_addObject_(v8, v33, v121, v34, v35);
      }

      if (v39 == 40 || v39 == 65288 || v39 == 123)
      {
        ++v126;
      }

      else
      {
        v93 = (v39 == 125 || v39 == 41 || v39 == 65289) && v126 != 0;
        v126 -= v93;
      }
    }

LABEL_52:
    ++a3;
  }

  while (a3 < v37);
  v102 = v125 + 1;
  Index_lastIndex = v121;
LABEL_74:
  v103 = [TSTEmptyExpressionNode alloc];
  v108 = objc_msgSend_context(a1, v104, v105, v106, v107);
  v112 = objc_msgSend_initWithContext_(v103, v109, v108, v110, v111);

  while (objc_msgSend_count(v8, v113, v114, v115, v116) < v102)
  {
    objc_msgSend_addObject_(v8, v117, v112, v118, v119);
  }

LABEL_78:

  return v8;
}

void sub_22107B0CC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  objc_msgSend_inProgressFunctions_atInsertionPoint_(a1, v7, &v36, a4, v8);
  v10 = v36;
  v9 = v37;
  if (v36 != v37)
  {
    v31 = v37;
    do
    {
      v11 = *v10;
      objc_opt_class();
      v12 = TSUDynamicCast();
      v17 = v12;
      if (v12 && ((objc_msgSend_isLetFunction(v12, v13, v14, v15, v16) & 1) != 0 || objc_msgSend_isLambdaFunction(v17, v18, v19, v20, v21)))
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v22 = objc_msgSend_children(v17, v18, v19, v20, v21);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v32, v40, 16);
        if (v24)
        {
          v25 = *v33;
          do
          {
            v26 = 0;
            do
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v32 + 1) + 8 * v26);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_addObject_(v6, v28, v27, v29, v30);
              }

              ++v26;
            }

            while (v24 != v26);
            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v28, &v32, v40, 16);
          }

          while (v24);
        }

        v9 = v31;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  v39 = &v36;
  sub_22107C2C0(&v39);
}

void sub_22107B29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a19;
  sub_22107C2C0(&a22);

  _Unwind_Resume(a1);
}

uint64_t sub_22107B2F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v57 = a4;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v12 = objc_msgSend_characterCount(a1, v6, v7, v8, v9);
  if (v12 && (v13 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v10, 0, a3, v11), a3))
  {
    v17 = v13;
    v58 = 0;
    v18 = 0;
    do
    {
      if (v18 < v12 && objc_msgSend_characterAtIndex_(a1, v14, v18, v15, v16) == 65532)
      {
        v63 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        v21 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v19, v17, &v63, v20);
        v22 = TSUDynamicCast();

        if (v18 != v63)
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSWPStorage(TSTFormulaAdditions) inProgressArgumentIndexAtInsertionPoint:forFunctionNode:]", v25, v26);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v30, v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 653, 0, "Attachment index mismatch");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
        }

        v38 = objc_msgSend_expressionNode(v22, v23, v24, v25, v26);
        v59 = v38;
        if (v38)
        {
          if (objc_msgSend_isFunctionNode(v38, v39, v40, v41, v42))
          {
            sub_22107A9E4(&v60, &v59);
          }

          else
          {
            if (objc_msgSend_isFunctionEndNode(v59, v43, v44, v45, v46))
            {
              objc_opt_class();
              v47 = TSUDynamicCast();
              if (v60 != v61)
              {
                v48 = *(v61 - 8);
                v53 = objc_msgSend_functionNode(v47, v49, v50, v51, v52);

                if (v48 == v53)
                {
                  v54 = v61 - 8;

                  v61 = v54;
                }
              }
            }

            if (v60 != v61)
            {
              v55 = v58;
              if (*(v61 - 8) == v57)
              {
                v55 = v58 + 1;
              }

              v58 = v55;
            }
          }
        }

        ++v17;
      }

      v18 = (v18 + 1);
    }

    while (a3 != v18);
  }

  else
  {
    v58 = 0;
  }

  v63 = &v60;
  sub_22107C2C0(&v63);

  return v58;
}

void sub_22107B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_22107C2C0(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_22107B5F4(void *a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (objc_msgSend_characterCount(a1, a2, a3, a4, a5) <= a3)
  {
    return 0;
  }

  v11 = objc_msgSend_documentRoot(a1, v7, v8, v9, v10);
  v16 = objc_msgSend_documentLocale(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_listSeparator(v16, v17, v18, v19, v20);

  v25 = objc_msgSend_characterAtIndex_(v21, v22, 0, v23, v24);
  v33 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v26, v27, v28, v29);
  while (1)
  {
    isFunctionNode = v5 != 0;
    if (!v5)
    {
      break;
    }

    v38 = objc_msgSend_characterAtIndex_(a1, v30, --v5, v31, v32);
    if (v38 == v25)
    {
      break;
    }

    if ((objc_msgSend_characterIsMember_(v33, v35, v38, v36, v37) & 1) == 0)
    {
      if (v38 == 65532)
      {
        objc_opt_class();
        v42 = objc_msgSend_attachmentAtCharIndex_(a1, v39, v5, v40, v41);
        v43 = TSUDynamicCast();

        v48 = objc_msgSend_expressionNode(v43, v44, v45, v46, v47);
        isFunctionNode = objc_msgSend_isFunctionNode(v48, v49, v50, v51, v52);
      }

      else
      {
        isFunctionNode = 0;
      }

      break;
    }
  }

  return isFunctionNode;
}

uint64_t sub_22107B7AC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_range(a1, a2, a3, a4, a5);

  return MEMORY[0x2821F9670](a1, sel_p_detokenizeEverythingInRange_, v7, v6, v8);
}

uint64_t sub_22107B7EC(uint64_t result, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a3 + a4;
    if (a3 + a4 > a3)
    {
      v7 = result;
      do
      {
        result = objc_msgSend_p_detokenizeTokenAtCharIndex_(v7, a2, --v6, a4, a5);
      }

      while (v6 > a3);
    }
  }

  return result;
}

void sub_22107B844(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_characterAtIndex_(a1, a2, a3, a4, a5) == 65532)
  {
    objc_opt_class();
    v10 = objc_msgSend_attachmentAtCharIndex_(a1, v7, a3, v8, v9);
    v29 = TSUDynamicCast();

    if (v29)
    {
      v15 = objc_msgSend_detokenizedText(v29, v11, v12, v13, v14);
      objc_msgSend_p_replaceTokenAtCharIndex_withText_(a1, v16, a3, v15, v17);
    }

    else
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(TSTFormulaAdditions) p_detokenizeTokenAtCharIndex:]", v13, v14);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 747, 0, "expected only token attachments within the detokenization range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }
  }
}

void sub_22107B9CC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v76 = a4;
  objc_opt_class();
  v9 = objc_msgSend_attachmentAtCharIndex_(a1, v6, a3, v7, v8);
  v10 = TSUDynamicCast();

  if (!v10)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(TSTFormulaAdditions) p_replaceTokenAtCharIndex:withText:]", v13, v14);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v55, v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v58, v53, v57, 757, 0, "invalid nil value for '%{public}s'", "token");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
    if (v76)
    {
      goto LABEL_15;
    }

LABEL_13:
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(TSTFormulaAdditions) p_replaceTokenAtCharIndex:withText:]", v13, v14);
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v66, v67);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v69, v64, v68, 758, 0, "invalid nil value for '%{public}s'", "text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
    goto LABEL_15;
  }

  if (!v76)
  {
    goto LABEL_13;
  }

  v15 = objc_msgSend_expressionNode(v10, v11, v12, v13, v14);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v75 = objc_msgSend_componentsSeparatedByString_(v76, v17, @":", v18, v19);
    v74 = objc_msgSend_firstObject(v75, v20, v21, v22, v23);
    objc_msgSend_p_replaceUnknownDirectionText_atRange_(a1, v24, v74, a3, 1);
    v29 = objc_msgSend_length(v74, v25, v26, v27, v28);
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v34 = objc_msgSend_count(v75, v30, v31, v32, v33);
    v37 = objc_msgSend_subarrayWithRange_(v75, v35, 1, v34 - 1, v36);
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v77, v81, 16);
    if (v40)
    {
      v41 = v29 + a3;
      v42 = *v78;
      v43 = *MEMORY[0x277D81448];
      do
      {
        v44 = 0;
        do
        {
          if (*v78 != v42)
          {
            objc_enumerationMutation(v37);
          }

          v45 = *(*(&v77 + 1) + 8 * v44);
          objc_msgSend_replaceText_withLanguage_atRange_(a1, v39, @":", v43, v41, 0);
          v46 = v41 + 1;
          objc_msgSend_p_replaceUnknownDirectionText_atRange_(a1, v47, v45, v46, 0);
          v41 = objc_msgSend_length(v45, v48, v49, v50, v51) + v46;
          ++v44;
        }

        while (v40 != v44);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v77, v81, 16);
      }

      while (v40);
    }
  }

  else
  {
    objc_msgSend_p_replaceMixedDirectionText_atRange_(a1, v17, v76, a3, 1);
  }

LABEL_15:
}

void sub_22107BDCC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  if (TSWPGetDefaultParagraphDirection() == 1)
  {
    objc_msgSend_replaceText_withLanguage_atRange_(a1, v8, v9, @"he", a4, a5);
  }

  else
  {
    objc_msgSend_replaceText_withLanguage_atRange_(a1, v8, v9, @"en", a4, a5);
  }
}

void sub_22107BE64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v70 = a3;
  v12 = objc_msgSend_mutableCopy(v70, v8, v9, v10, v11);
  v17 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x277CCA900], v13, v14, v15, v16);
  v22 = objc_msgSend_documentRoot(a1, v18, v19, v20, v21);
  v27 = objc_msgSend_documentLocale(v22, v23, v24, v25, v26);
  isLanguageFormulasDirectionRightToLeft = objc_msgSend_isLanguageFormulasDirectionRightToLeft(v27, v28, v29, v30, v31);
  v33 = @"en";
  if (isLanguageFormulasDirectionRightToLeft)
  {
    v33 = @"he";
  }

  v34 = v33;

  if (objc_msgSend_length(v12, v35, v36, v37, v38))
  {
    v43 = *MEMORY[0x277D81448];
    while (objc_msgSend_length(v12, v39, v40, v41, v42))
    {
      v47 = objc_msgSend_characterAtIndex_(v12, v44, 0, v45, v46);
      IsMember = objc_msgSend_characterIsMember_(v17, v48, v47, v49, v50);
      for (i = 1; i < objc_msgSend_length(v12, v51, v52, v53, v54); ++i)
      {
        v57 = objc_msgSend_characterAtIndex_(v12, v51, i, v53, v54);
        if (IsMember != objc_msgSend_characterIsMember_(v17, v58, v57, v59, v60))
        {
          break;
        }
      }

      v62 = objc_msgSend_substringToIndex_(v12, v51, i, v53, v54);
      if (IsMember)
      {
        objc_msgSend_replaceText_withLanguage_atRange_(a1, v61, v62, v34, a4, a5);
      }

      else
      {
        objc_msgSend_replaceText_withLanguage_atRange_(a1, v61, v62, v43, a4, a5);
      }

      v67 = objc_msgSend_length(v62, v63, v64, v65, v66);
      objc_msgSend_deleteCharactersInRange_(v12, v68, 0, i, v69);
      a4 += v67;

      a5 = 0;
    }
  }

  else
  {
    objc_msgSend_replaceText_atRange_(a1, v39, v12, a4, a5);
  }
}

void sub_22107C098(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_22107C160(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22107C1BC(exception, a1);
  __cxa_throw(exception, off_27845D7B8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22107C1BC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22107C1F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22107C238()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_22107C26C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22107C2C0(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22107C800(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_22107C800(a1, *a2);
    sub_22107C800(a1, a2[1]);
    sub_22107C860((a2 + 8), a2[9]);

    operator delete(a2);
  }
}

void sub_22107C860(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_22107C860(a1, *a2);
    sub_22107C860(a1, *(a2 + 1));
    TSUIndexSet::~TSUIndexSet((a2 + 40));

    operator delete(a2);
  }
}

void sub_22107CC64(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22107DB10(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v36, v40, 16);
  if (v4)
  {
    v5 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * v6);
        objc_msgSend_setParentNode_(v7, v8, *(a1 + 32), v9, v10);
        v15 = objc_msgSend_groupCellValue(v7, v11, v12, v13, v14);
        v20 = objc_msgSend_canonicalKeyString(v15, v16, v17, v18, v19);

        if (v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = &stru_2834BADA0;
        }

        v24 = *(*(a1 + 32) + 152);
        if (!v24)
        {
          v25 = objc_opt_new();
          v26 = *(a1 + 32);
          v27 = *(v26 + 152);
          *(v26 + 152) = v25;

          v24 = *(*(a1 + 32) + 152);
        }

        objc_msgSend_setObject_forKey_(v24, v21, v7, v23, v22);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_22107DD80;
        v34[3] = &unk_27845D8B0;
        v34[4] = *(a1 + 32);
        v28 = v7;
        v35 = v28;
        objc_msgSend_enumerateRowUidsWithBlock_(v28, v29, v34, v30, v31);

        ++v6;
      }

      while (v4 != v6);
      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v36, v40, 16);
    }

    while (v4);
  }
}

void sub_22107DD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[3] = v6;
  v5 = sub_221086FBC((v3 + 248), v6);
  objc_storeStrong(v5 + 4, v4);
}

void sub_22107DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[3] = v6;
  v5 = sub_221086FBC((v3 + 248), v6);
  objc_storeStrong(v5 + 4, v4);
}

void sub_22107E348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTGroupNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22107E4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[3] = v6;
  v5 = sub_221086FBC((v3 + 248), v6);
  objc_storeStrong(v5 + 4, v4);
}

uint64_t sub_22107E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_221087578((*(a1 + 32) + 248), v4);
}

uint64_t sub_22107EF30(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 56);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(v3 + 60))
    {
LABEL_7:
      *v4 = v6 + 1;
      v7 = MEMORY[0x223DA0360](*(v3 + 48));
      v8 = *(v3 + 56);
      v9 = *(v3 + 64) + 8 * v8;
      *(v3 + 56) = v8 + 1;
      *(v9 + 8) = v7;
      return TSKUIDStruct::saveToMessage(&v11, v7);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 48));
    v4 = *(v3 + 64);
    v6 = *v4;
    goto LABEL_7;
  }

  *(v3 + 56) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  return TSKUIDStruct::saveToMessage(&v11, v7);
}

uint64_t sub_22107F2D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v5 = *(a1 + 32);
  objc_msgSend_lookupKeyForRowUID_(*(a1 + 40), a2, v7, a4, a5);
  return TSUIndexSet::addIndex((v5 + 168));
}

void sub_221082084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221082180(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  result = objc_msgSend_findKeyForRowUid_(*(a1 + 32), a2, &v9, a4, a5);
  if (result != -1)
  {
    result = TSUIndexSet::containsIndex((*(a1 + 40) + 168));
    if (result)
    {
      TSUIndexSet::removeIndex((*(a1 + 40) + 168));
      return objc_msgSend_addUUID_(*(a1 + 48), v7, v9, v10, v8);
    }
  }

  return result;
}

uint64_t sub_221082204(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) | objc_msgSend_mergedFormatChangedByRemovingRowUID_groupBy_(*(a1[4] + 240), a2, &v8, a1[5], a5)) & 1;
  return objc_msgSend_didRemoveRowUID_fromGroup_(a1[5], v6, v8, v9, a1[4]);
}

void sub_221082AA4(_Unwind_Exception *a1, uint64_t a2, __int128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, TSUIndexSet *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__pa, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51)
{
  _Block_object_dispose(&a38, 8);
  if (__pa)
  {
    a45 = __pa;
    operator delete(__pa);
  }

  _Block_object_dispose((v55 - 192), 8);
  sub_221087B80(v55 - 144);

  if (v54)
  {
    operator delete(v54);
  }

  _Unwind_Resume(a1);
}

void sub_221082C98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v11[0] = objc_msgSend_formulaCoord(v3, v5, v6, v7, v8);
  v11[2] = v11;
  v9 = sub_221087C00((v4 + 48), v11);
  v10 = v9[3];
  v9[3] = v3;
}

void sub_221082D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_aggNodeForColumnUid_(v3, v4, a1 + 48, v5, v6);
  objc_msgSend_addChild_skipWillModify_(*(a1 + 32), v8, v7, 1, v9);
  v10 = *(*(a1 + 40) + 8);
  v15 = objc_msgSend_formulaCoord(v7, v11, v12, v13, v14);
  sub_221087EC8((v10 + 48), &v15);
}

__n128 sub_221082DB8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221082DDC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221082DF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_hiddenStates(*(a1 + 32), a2, a3, a4, a5);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_referenceToHiddenStateFromRow_toRow_(v7, v8, *a2, *(a2 + 2), v9);
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  if (TSCERangeRef::isValid(&v27))
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = v11[7];
    v13 = v11[8];
    if (v12 >= v13)
    {
      v16 = v11[6];
      v17 = (v12 - v16) >> 5;
      v18 = v17 + 1;
      if ((v17 + 1) >> 59)
      {
        sub_22107C148();
      }

      v19 = v13 - v16;
      if (v19 >> 4 > v18)
      {
        v18 = v19 >> 4;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFE0)
      {
        v20 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        sub_221087FE8((v11 + 6), v20);
      }

      v21 = 32 * v17;
      tableUID = v27._tableUID;
      *v21 = v27.range;
      *(v21 + 16) = tableUID;
      v15 = 32 * v17 + 32;
      v23 = v11[6];
      v24 = v11[7] - v23;
      v25 = 32 * v17 - v24;
      memcpy((v21 - v24), v23, v24);
      v26 = v11[6];
      v11[6] = v25;
      v11[7] = v15;
      v11[8] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v14 = v27._tableUID;
      *v12 = v27.range;
      *(v12 + 16) = v14;
      v15 = v12 + 32;
    }

    v11[7] = v15;
  }
}

void sub_2210832E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22108332C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221083350(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void *sub_221083368(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_221086F74(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_221083408(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v7 = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4, a5);
  *(&v7 + 1) = v6;
  sub_221083454(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_221083454(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_221086F74(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_2210837EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TSUIndexSet *a13, TSUIndexSet *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  TSUIndexSet::~TSUIndexSet(&a21);

  TSUIndexSet::~TSUIndexSet(&a25);
  _Block_object_dispose((v28 - 120), 8);
  v30 = *(v28 - 72);
  if (v30)
  {
    *(v28 - 64) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_221083890(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v7 = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4, a5);
  *(&v7 + 1) = v6;
  sub_221083454(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_2210838DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v7 = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4, a5);
  *(&v7 + 1) = v6;
  sub_221083454(*(*(a1 + 40) + 8) + 48, &v7);
}

uint64_t sub_221083A4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_rowUIDForLookupKey_(*(*(a1 + 32) + 96), a2, a2, a4, a5);
  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_221083DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221083E14(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  result = objc_msgSend_findKeyForRowUid_(*(a1 + 32), a2, v8, a4, a5);
  if (result != -1)
  {
    result = TSUIndexSet::containsIndex((*(a1 + 40) + 168));
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

void sub_221086ACC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

__n128 *sub_221086AF0(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v27 = a1;
    if (v14)
    {
      sub_221086F74(a1, v14);
    }

    v24 = 0;
    v25 = 16 * v15;
    v26 = (16 * v15);
    sub_221088570(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_221086C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_221086EBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_221086F1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221086F38(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_221086F74(a1, a2);
  }

  sub_22107C148();
}

void sub_221086F74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_221086FBC(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_221087210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221087224(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_221087270(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_221087360(a1, prime);
    }
  }
}

void sub_221087360(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2210874C4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221087578(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087224(v4);
    return 1;
  }

  return result;
}

void *sub_2210875C4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_221087680@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_2210877BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_221087834(a1, i + 2);
  }

  return a1;
}

void *sub_221087834(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_221087A90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221087AA4(uint64_t a1)
{
  sub_221087AE0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221087AE0(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_221087B24(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221087AE0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_221087B80(uint64_t a1)
{
  sub_221087BBC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221087BBC(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221087C00(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void sub_221087E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221087E7C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_221087EC8(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087E7C(v4);
    return 1;
  }

  return result;
}

void *sub_221087F14(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2 + 16 * *(a2 + 2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    v8 = *a2;
    do
    {
      v9 = result[1];
      if (v9 == v3)
      {
        v10 = result[2];
        v12 = v10 == v8;
        v11 = (v8 ^ v10) & 0x101FFFF00000000;
        v12 = v12 && v11 == 0;
        if (v12)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_221087FE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221088030(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *sub_2210880A0(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_2210882F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

void *sub_221088308(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_22108855C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

__n128 sub_221088570(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_221086F74(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void sub_221088678(uint64_t a1, unint64_t a2, void *a3)
{
  v20 = a3;
  if (a2 >= 3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTArgumentAtIndexLocator::setArgumentAt(NSInteger, TSTFormulaPredArg *__strong)", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentAtIndexLocator.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 33, 0, "Position %d not supported", a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  else
  {
    objc_storeStrong((a1 + 8 * a2 + 184), a3);
  }
}

TSCEASTNumberElement *sub_22108878C(uint64_t a1, TSCEASTNumberElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v24._decimal.w[0] = TSCEASTNumberElement::value(a2, a1, v5, v6, v7);
    v24._decimal.w[1] = v8;
    TSUDecimal::doubleValue(&v24);
    v13 = objc_msgSend_initWithDouble_(v4, v9, v10, v11, v12);
    sub_221088678(a1, 1uLL, v13);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v14 = [TSTFormulaPredArg alloc];
    v24._decimal.w[0] = TSCEASTNumberElement::value(a2, a1, v15, v16, v17);
    v24._decimal.w[1] = v18;
    TSUDecimal::doubleValue(&v24);
    v13 = objc_msgSend_initWithDouble_(v14, v19, v20, v21, v22);
    sub_221088678(a1, 2uLL, v13);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTBooleanElement *sub_2210888B0(uint64_t a1, TSCEASTBooleanElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v8 = TSCEASTBooleanElement::value(a2, a1, v5, v6, v7);
    v13 = objc_msgSend_initWithDouble_(v4, v9, v10, v11, v12, v8);
    sub_221088678(a1, 1uLL, v13);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v14 = [TSTFormulaPredArg alloc];
    v18 = TSCEASTBooleanElement::value(a2, a1, v15, v16, v17);
    v13 = objc_msgSend_initWithDouble_(v14, v19, v20, v21, v22, v18);
    sub_221088678(a1, 2uLL, v13);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTStringElement *sub_2210889BC(uint64_t a1, TSCEASTStringElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v8 = TSCEASTStringElement::string(a2, a1, v5, v6, v7);
    v12 = objc_msgSend_initWithString_(v4, v9, v8, v10, v11);

    sub_221088678(a1, 1uLL, v12);
  }

  return a2;
}

TSCEASTDateElement *sub_221088A78(uint64_t a1, TSCEASTDateElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v8 = TSCEASTDateElement::value(a2, a1, v5, v6, v7);
    v12 = objc_msgSend_initWithDate_(v4, v9, v8, v10, v11);

    sub_221088678(a1, 1uLL, v12);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v13 = [TSTFormulaPredArg alloc];
    v17 = TSCEASTDateElement::value(a2, a1, v14, v15, v16);
    v12 = objc_msgSend_initWithDate_(v13, v18, v17, v19, v20);

    sub_221088678(a1, 2uLL, v12);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTDurationElement *sub_221088BAC(uint64_t a1, TSCEASTDurationElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v8 = TSCEASTDurationElement::unitNum(a2, a1, v5, v6, v7);
    v12 = TSCEASTDurationElement::unit(a2, a1, v9, v10, v11);
    v13 = sub_221387CBC(v12);
    v17 = objc_msgSend_initWithDuration_units_(v4, v14, v13, v15, v16, v8);
    sub_221088678(a1, 1uLL, v17);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v18 = [TSTFormulaPredArg alloc];
    v22 = TSCEASTDurationElement::unitNum(a2, a1, v19, v20, v21);
    v26 = TSCEASTDurationElement::unit(a2, a1, v23, v24, v25);
    v27 = sub_221387CBC(v26);
    v17 = objc_msgSend_initWithDuration_units_(v18, v28, v27, v29, v30, v22);
    sub_221088678(a1, 2uLL, v17);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTCategoryRefElement *sub_221088CF0(uint64_t a1, TSCEASTCategoryRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      v9 = TSCEASTCategoryRefElement::categoryRef(a2, a1, v6, v7, v8);
      v13 = objc_msgSend_initWithCategoryRef_(v5, v10, v9, v11, v12);

      sub_221088678(a1, i, v13);
    }
  }

  return a2;
}

TSCEASTViewTractRefElement *sub_221088DC8(uint64_t a1, TSCEASTViewTractRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      v9 = TSCEASTViewTractRefElement::viewTractRef(a2, a1, v6, v7, v8);
      v13 = objc_msgSend_initWithViewTractRef_(v5, v10, v9, v11, v12);

      sub_221088678(a1, i, v13);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221088EA0(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  if (v4)
  {
    sub_221088F08(a1, a2);
  }

  else if ((v4 & 0xC) != 4 && (v4 & 0xC) != 8)
  {
    sub_221089014(a1, a2);
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221088F08(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      TSCEASTRelativeCoordRefElement::crossTableRef(a2, a1, v6, v7, v8, v18);
      v12 = objc_msgSend_initWithCrossTableRef_(v5, v9, v18, v10, v11);
      if (TSCEASTElement::hasUidTracts(a2, a1))
      {
        v13 = TSCEASTElement::mutableUndoTractList(a2, a1);
        objc_msgSend_setUidTractList_(v12, v14, v13, v15, v16);
      }

      sub_221088678(a1, i, v12);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221089014(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v8 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v5, v6, v7);
      v21._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
      tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v20 = v8;
      TSCERelativeCellCoordinate::setPreserveFlags(&v20, &v21);
      v9 = [TSTFormulaPredArg alloc];
      v13 = objc_msgSend_initWithCrossTableRef_(v9, v10, &tableUID, v11, v12);
      if (TSCEASTElement::hasUidTracts(a2, a1))
      {
        v14 = TSCEASTElement::mutableUndoTractList(a2, a1);
        objc_msgSend_setUidTractList_(v13, v15, v14, v16, v17);
      }

      sub_221088678(a1, i, v13);
    }
  }

  return a2;
}

uint64_t sub_221089154(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 181) = 1;
  do
  {
    if (*(a1 + 4 * v4 + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), v4) == *(a1 + 176))
    {
      v5 = TSCEASTElement::tag(a2, a1);
      if (v5 == 64)
      {
        v20 = (*(*a2 + 136))(a2, a1);
        v34._flags = 0;
        v35 = v20;
        v36 = v21;
        v37 = 0x7FFFFFFFLL;
        TSCERelativeCellCoordinate::setPreserveFlags(&v37, &v34);
        v22 = [TSTFormulaPredArg alloc];
        v26 = objc_msgSend_initWithCrossTableRef_(v22, v23, &v35, v24, v25);
        sub_221088678(a1, v4, v26);
      }

      else
      {
        if (v5 == 65)
        {
          v9 = MEMORY[0x277D81150];
          v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "virtual TSCEASTElement *TSTArgumentAtIndexLocator::linkedRefNode(TSCEASTLinkedRefElement *)", v7, v8);
          v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentAtIndexLocator.mm", v12, v13);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 206, 0, "Never used - now deprecated TSCEASTLinkedRowRefNode");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
          goto LABEL_10;
        }

        v27 = (*(*a2 + 136))(a2, a1);
        v34._flags = 0;
        v35 = v27;
        v36 = v28;
        v37 = 0;
        TSCERelativeCellCoordinate::setPreserveFlags(&v37, &v34);
        v29 = [TSTFormulaPredArg alloc];
        v26 = objc_msgSend_initWithCrossTableRef_(v29, v30, &v35, v31, v32);
        sub_221088678(a1, v4, v26);
      }
    }

LABEL_10:
    ++v4;
  }

  while (v4 != 3);
  return a2;
}

unint64_t sub_221089378(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2210898C4(a1, a2, a3, a4, a5);
  sub_2210899C8(a2, v7, v8, v9, v10);
  sub_2210898C4(a1, v11, v12, v13, v14);
  sub_2210899C8(a2, v15, v16, v17, v18);
  return a2 | (a1 << 32);
}

uint64_t sub_2210893C4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27CFB5198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5198))
  {
    v14 = sub_221089378(0x7FFFLL, 0x7FFFFFFF, v11, v12, v13);
    v15._flags = 0;
    qword_27CFB5180 = 0;
    *algn_27CFB5188 = 0;
    qword_27CFB5190 = v14;
    TSCERelativeCellCoordinate::setPreserveFlags(&qword_27CFB5190, &v15);
    __cxa_guard_release(&qword_27CFB5198);
  }

  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      v9 = objc_msgSend_initWithCrossTableRef_(v5, v6, &qword_27CFB5180, v7, v8);
      sub_221088678(a1, i, v9);
    }
  }

  return a2;
}

TSCEASTElement *sub_2210894F4(uint64_t a1, TSCEASTElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = TSCEASTElement::mutableUndoTractList(a2, a1);
      v19 = 0;
      v20 = 0;
      v19 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v6, v7, v8);
      v20 = v9;
      v10 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
      objc_msgSend_setPreserveFlags_(v5, v11, v10, v12, v13);
      v14 = [TSTFormulaPredArg alloc];
      inited = objc_msgSend_initAsBadRefWithTableUID_uidTractList_(v14, v15, &v19, v5, v16);
      sub_221088678(a1, i, inited);
    }
  }

  return a2;
}

TSCEASTUidReferenceElement *sub_221089604(uint64_t a1, TSCEASTUidReferenceElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = (*(*a2 + 96))(a2, a1);
      v15 = 0;
      v16 = 0;
      v15 = TSCEASTUidReferenceElement::tableUID(a2, a1, v6, v7, v8);
      v16 = v9;
      v10 = [TSTFormulaPredArg alloc];
      v13 = objc_msgSend_initWithTableUID_uidTractList_(v10, v11, &v15, v5, v12);
      sub_221088678(a1, i, v13);
    }
  }

  return a2;
}

void sub_221089718(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_221089764(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_221089868(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 180) == 1)
  {
    *(result + 180) = 0;
  }

  else
  {
    result = TSCEASTElement::tag(a2, result);
    if (result != 27)
    {
      ++*(v2 + 176);
    }
  }

  return result;
}

uint64_t sub_2210898C4(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 0x7FFF)
  {
    v5 = result;
    if ((result + 999) >= 0x7CFu)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static void TSCERelativeCellCoordinate::assertColumnInMaxRange(TSURelativeColumnIndex)", a4, a5);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 45, 0, "TSCERelativeCellCoordinate: column outside valid range: %d", v5);

      v17 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v17, v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t sub_2210899C8(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 0x7FFFFFFF)
  {
    v5 = result;
    if ((result + 999999) >= 0x1E847F)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static void TSCERelativeCellCoordinate::assertRowInMaxRange(TSURelativeRowIndex)", a4, a5);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 51, 0, "TSCERelativeCellCoordinate row outside valid range: %d", v5);

      v17 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v17, v13, v14, v15, v16);
    }
  }

  return result;
}

TSCEASTCategoryRefElement *sub_221089AD4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4, a5);
  if (objc_msgSend_groupByUid(v7, v8, v9, v10, v11) != *(a1 + 17) || v12 != *(a1 + 18))
  {
    goto LABEL_27;
  }

  v20 = objc_msgSend_absoluteGroupUid(v7, v12, v13, v14, v15);
  v21 = v16;
  if (!*(a1 + 19))
  {
    v22 = *(a1 + 17);
    v23 = *(a1 + 18);
    v24 = sub_221089E8C(a1);
    v26 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v25, v22, v23, v24);
    v27 = *(a1 + 19);
    *(a1 + 19) = v26;
  }

  if (!*(a1 + 20))
  {
    v28 = objc_msgSend_tableInfo(*(a1 + 19), v16, v17, v18, v19);
    v33 = objc_msgSend_tableUID(v28, v29, v30, v31, v32);
    v35 = v34;
    v36 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v33 != v36->var0.var0._tableUID._lower)
    {
LABEL_10:

      goto LABEL_11;
    }

    upper = v36->var0.var0._tableUID._upper;

    if (v35 == upper)
    {
      v38 = objc_msgSend_tableInfo(*(a1 + 19), v16, v17, v18, v19);
      v43 = objc_msgSend_translator(v38, v39, v40, v41, v42);
      v44 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      v48 = objc_msgSend_rowUIDForBaseRowIndex_(v43, v45, v44->var0.var0.coordinate.row, v46, v47);
      v50 = v49;

      if (v48 | v50)
      {
        v51 = *(a1 + 19);
        v52 = objc_msgSend_numberOfLevels(v51, v16, v17, v18, v19);
        v54 = objc_msgSend_groupNodeForRowUid_atLevel_(v51, v53, v48, v50, v52);
        v28 = *(a1 + 20);
        *(a1 + 20) = v54;
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v55 = *(a1 + 19);
  if (!v55 || !*(a1 + 20))
  {
    goto LABEL_27;
  }

  v56 = objc_msgSend_tableInfo(v55, v16, v17, v18, v19);
  v61 = objc_msgSend_tableUID(v56, v57, v58, v59, v60);
  v63 = v62;
  v64 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  if (v61 != v64->var0.var1._tableUID._lower)
  {
LABEL_26:

    goto LABEL_27;
  }

  v65 = v64->var0.var1._tableUID._upper;

  if (v63 != v65)
  {
    goto LABEL_27;
  }

  v66 = *(a1 + 20);
  for (i = objc_msgSend_groupLevel(v66, v67, v68, v69, v70); ; i = objc_msgSend_groupLevel(v80, v81, v82, v83, v84))
  {
    if (!i)
    {
      v56 = v66;
      goto LABEL_26;
    }

    if (v20 == objc_msgSend_groupUid(v66, v71, v72, v73, v74) && v21 == v76)
    {
      break;
    }

    v80 = objc_msgSend_parentNode(v66, v76, v77, v78, v79);

    v66 = v80;
  }

  v85 = objc_msgSend_tableInfo(*(a1 + 19), v76, v77, v78, v79);
  v90 = objc_msgSend_translator(v85, v86, v87, v88, v89);
  v91 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  v95 = objc_msgSend_rowUIDForBaseRowIndex_(v90, v92, v91->var0.var1.coordinate.row, v93, v94);
  v97 = v96;

  v98 = *(a1 + 19);
  v103 = objc_msgSend_numberOfLevels(v98, v99, v100, v101, v102);
  v105 = objc_msgSend_groupNodeForRowUid_atLevel_(v98, v104, v95, v97, v103);
  v56 = v105;
  if (!v105)
  {
LABEL_25:

    goto LABEL_26;
  }

  v110 = v105;
  while (objc_msgSend_groupLevel(v110, v106, v107, v108, v109) > i)
  {
    v115 = objc_msgSend_parentNode(v110, v111, v112, v113, v114);

    v110 = v115;
    if (!v115)
    {
      goto LABEL_25;
    }
  }

  v117 = objc_msgSend_groupUid(v110, v111, v112, v113, v114);
  objc_msgSend_setAbsoluteGroupUid_(v7, v118, v117, v118, v119);

  TSCEASTCategoryRefElement::setCategoryRef(this, v7, a1);
LABEL_27:

  return this;
}

id sub_221089E98(void *a1, TSCEFormulaRewriteContext *a2, __int128 *a3)
{
  v5 = a1;
  v10 = objc_msgSend_astNodeArrayCopy(v5, v6, v7, v8, v9);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v28, v10, a2);
  v28[0] = &unk_2834A1450;
  v31 = *a3;
  v32 = 0;
  v33 = 0;
  TSCEASTStreamIterator::rewrite(v28, v11, v12, v13, v14);
  v15 = v5;
  if (v29 == 1)
  {
    v16 = v30;
    v30 = 0;
    v17 = [TSCEFormulaObject alloc];
    v22 = objc_msgSend_translationFlags(v5, v18, v19, v20, v21);
    v15 = objc_msgSend_initWithNodeArray_translationFlags_(v17, v23, v16, v22, v24);

    TSCEASTNodeArray::freeNodeArray(v16, v25);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v28, v26);

  return v15;
}

void sub_221089FE4(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_22108A098(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22108A350(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22108A830(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_22108BC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22108BC18(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_hash(v14, v6, v7, v8, v9);
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_hash(v5, v10, v11, v12, v13);
}

void sub_22108BDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108BE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108C074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108C11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108C1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

_BYTE *sub_22108CCD0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
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

uint64_t sub_22108EBB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 3)
  {
    v18 = 2;
    if (a1 != 2)
    {
      v18 = 0;
    }

    if (a1 == 1)
    {
      return 1;
    }

    else
    {
      return v18;
    }
  }

  else if ((a1 - 4) >= 2)
  {
    if (a1 == 7)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTSelectionType TSTArchivedToNativeSelectionType(const TST::SelectionTypeArchive)", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchiveUtilities.h", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 212, 0, "shouldn't be converting from deprecated archived selection type %d", a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    return 0;
  }
}

uint64_t sub_22108ECBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22108F110(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 32) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_8;
  }

  if (v8 == *(v5 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
    v6 = *(v5 + 40);
    v8 = *v6;
  }

  *v6 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(v5 + 24));
  v10 = *(v5 + 32);
  v11 = *(v5 + 40) + 8 * v10;
  *(v5 + 32) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_8:

  return sub_2211239EC(a2, a3, v9);
}

uint64_t sub_22108F1E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(v5 + 64);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v5 + 56);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 56) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_8;
  }

  if (v8 == *(v5 + 60))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 48));
    v6 = *(v5 + 64);
    v8 = *v6;
  }

  *v6 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(v5 + 48));
  v10 = *(v5 + 56);
  v11 = *(v5 + 64) + 8 * v10;
  *(v5 + 56) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_8:

  return sub_2211239EC(a2, a3, v9);
}

void sub_22109057C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2210907D0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2210923D4(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2210925FC(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_2210947A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  _Block_object_dispose(&STACK[0x328], 8);

  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x378], 8);

  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&STACK[0x3E8], 8);

  sub_22107C800(&STACK[0x408], STACK[0x410]);
  _Block_object_dispose(&STACK[0x420], 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221094B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221094B88(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  v8 = *(*(*(a1 + 112) + 8) + 40);
  if (!v8)
  {
    v11 = *(a2 + 8);
LABEL_10:
    v13 = *(a1 + 40);
    v106 = v11;
    v14 = objc_msgSend_tableResolverForTableUID_(v13, a2, &v106, a4, a5);
    v15 = *(*(a1 + 112) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    goto LABEL_11;
  }

  v9 = objc_msgSend_tableUID(v8, a2, a3, a4, a5);
  v11 = *(a2 + 8);
  if (v9 != v11 || a2 != *(&v11 + 1))
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = *(*(*(a1 + 112) + 8) + 40);
  if (v17)
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = objc_msgSend_tableName(v17, a2, v10, a4, a5);
    LOBYTE(v18) = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v18, v21, v19, v20, v22);

    if (v18)
    {
LABEL_13:
      v23 = objc_msgSend_anyRefForRangeForHeaderCell_usePreserveFlags_(*(a1 + 56), a2, a2, *(a1 + 200), a5);
      v26 = objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(v23, v24, *(a1 + 40), a1 + 168, v25);
      v27 = sub_2211403F8(*(*(a1 + 64) + 8), v26);

      if (objc_msgSend_filterColons(*(a1 + 72), v28, v29, v30, v31) && objc_msgSend_rangeOfString_(v27, v32, @":", v33, v34) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_53;
      }

      objc_msgSend_addObject_(*(a1 + 80), v32, v23, v33, v34);
      if (*(*(*(a1 + 120) + 8) + 24))
      {
        goto LABEL_53;
      }

      v39 = objc_msgSend_rangeReference(v23, v35, v36, v37, v38);
      v44 = v39;
      if (v39)
      {
        objc_msgSend_rangeRef(v39, v40, v41, v42, v43);
        v45 = v107;
      }

      else
      {
        v45 = 0;
        v106 = 0u;
        v107 = 0u;
      }

      v46 = v45 == *(a1 + 184) && *(&v107 + 1) == *(a1 + 192);

      v47 = *(a1 + 88);
      v52 = objc_msgSend_length(v27, v48, v49, v50, v51);
      v57 = objc_msgSend_length(*(a1 + 88), v53, v54, v55, v56);
      if (v52 >= v57 ? objc_msgSend_compare_options_range_locale_(v27, v58, v47, 393, 0, v57, *(a1 + 96), v106, v107) : objc_msgSend_compare_options_range_locale_(v27, v58, v47, 393, 0, v52, *(a1 + 96), v106, v107))
      {
        goto LABEL_53;
      }

      v64 = *(*(*(a1 + 112) + 8) + 40);
      if (v64)
      {
        v65 = objc_msgSend_tableUID(v64, v60, v61, v62, v63);
        v67 = *(a2 + 8);
        if (__PAIR128__(v60, v65) == v67)
        {
LABEL_31:
          v72 = *(*(*(a1 + 112) + 8) + 40);
          if (v72)
          {
            v73 = objc_msgSend_sheetName(v72, v60, v66, v62, v63);
            objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(v73, v74, *(a1 + 96), v75, v76);
          }

          else
          {
            v73 = 0;
            objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(0, v60, *(a1 + 96), v62, v63);
          }
          v81 = ;
          if (!*(*(*(a1 + 128) + 8) + 40))
          {
            v82 = *(a1 + 104);
            if (v82)
            {
              v83 = objc_msgSend_sheetName(v82, v77, v78, v79, v80);
              v87 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(v83, v84, *(a1 + 96), v85, v86);
              v88 = *(*(a1 + 128) + 8);
              v89 = *(v88 + 40);
              *(v88 + 40) = v87;
            }
          }

          if (v46 || (v90 = *(*(a1 + 128) + 8), (v91 = *(v90 + 40)) == 0))
          {
            v94 = 1;
          }

          else if (v81)
          {
            v92 = objc_msgSend_length(*(v90 + 40), v77, v78, v79, v80);
            v94 = objc_msgSend_compare_options_range_locale_(v91, v93, v81, 0, 0, v92, *(a1 + 96)) == 0;
          }

          else
          {
            v94 = 0;
          }

          v95 = *(*(a1 + 136) + 8);
          if ((*(v95 + 24) & 1) == 0)
          {
            *(v95 + 24) = 1;
            objc_storeStrong((*(*(a1 + 144) + 8) + 40), v23);
            if (v46)
            {
              *(*(*(a1 + 152) + 8) + 24) = 1;
            }

            else
            {
              *(*(*(a1 + 160) + 8) + 24) = v94;
            }

            goto LABEL_52;
          }

          v96 = *(*(a1 + 152) + 8);
          if (*(v96 + 24))
          {
            if (v46)
            {
              v97 = *(*(a1 + 144) + 8);
              v98 = *(v97 + 40);
              *(v97 + 40) = 0;

              *(*(*(a1 + 120) + 8) + 24) = 1;
              v103 = objc_msgSend_referencesMatchingInputAsPrefix(*(a1 + 72), v99, v100, v101, v102);

              if (!v103)
              {
                *a3 = 1;
              }
            }

            goto LABEL_52;
          }

          if (v46)
          {
            goto LABEL_50;
          }

          v96 = *(*(a1 + 160) + 8);
          if (*(v96 + 24))
          {
            if (!v94)
            {
              goto LABEL_52;
            }
          }

          else if (v94)
          {
LABEL_50:
            *(v96 + 24) = 1;
            objc_storeStrong((*(*(a1 + 144) + 8) + 40), v23);
LABEL_52:

LABEL_53:
            return;
          }

          v104 = *(*(a1 + 144) + 8);
          v105 = *(v104 + 40);
          *(v104 + 40) = 0;

          goto LABEL_52;
        }
      }

      else
      {
        v67 = *(a2 + 8);
      }

      v68 = *(a1 + 40);
      v106 = v67;
      v69 = objc_msgSend_tableResolverForTableUID_(v68, v60, &v106, v62, v63);
      v70 = *(*(a1 + 112) + 8);
      v71 = *(v70 + 40);
      *(v70 + 40) = v69;

      goto LABEL_31;
    }
  }
}

void sub_221095058(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_abortObject(*(a1 + 32), a2, a3, a4, a5);
  isAborted = objc_msgSend_isAborted(v8, v9, v10, v11, v12);

  if (isAborted)
  {
    *a3 = 1;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    if (v19)
    {
      objc_msgSend_spanningRangeForHeaderCell_(v19, v14, a2, v16, v17);
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    v20 = *(*(*(a1 + 80) + 8) + 40);
    if (!v20 || (objc_msgSend_tableUID(v20, v14, v15, v16, v17) == v68 ? (v22 = v14 == *(&v68 + 1)) : (v22 = 0), !v22))
    {
      v23 = objc_msgSend_tableResolverForTableUID_(*(a1 + 48), v14, &v68, v16, v17);
      v24 = *(*(a1 + 80) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    v26 = *(*(*(a1 + 80) + 8) + 40);
    if (v26)
    {
      v27 = objc_msgSend_tableName(v26, v14, v21, v16, v17);
    }

    else
    {
      v27 = 0;
    }

    v28 = objc_msgSend_documentLocale(*(a1 + 48), v14, v21, v16, v17);
    v32 = v28;
    v33 = *(a1 + 56);
    if (!v33 || v27 && objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v28, v29, v33, v27, v31))
    {
      v66._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v66._coordsForOwnerUid.__tree_.__size_ = 0;
      v66._coordsForOwnerUid.__tree_.__begin_node_ = &v66._coordsForOwnerUid.__tree_.__end_node_;
      v34 = *(a1 + 64);
      v35 = *(a1 + 40);
      IsComplete = objc_msgSend_referenceIsComplete(*(a1 + 32), v29, v33, v30, v31);
      v38 = objc_msgSend_subsetForReferenceName_limitToTable_includePrefixes_(v35, v37, v34, &v68, IsComplete ^ 1u);
      if (objc_msgSend_referenceIsComplete(*(a1 + 32), v39, v40, v41, v42))
      {
        if (v38)
        {
          objc_msgSend_headerCellsExactlyMatching_(v38, v43, *(a1 + 64), v45, v46);
        }

        else
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
        }
      }

      else if (objc_msgSend_length(*(a1 + 64), v43, v44, v45, v46))
      {
        if (v38)
        {
          objc_msgSend_headerCellsMatchingPrefix_(v38, v47, *(a1 + 64), v48, v49);
        }

        else
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
        }
      }

      else
      {
        v50 = *(a1 + 40);
        if (v50)
        {
          objc_msgSend_allHeaderCellRefsLimitedToTable_(v50, v47, &v68, v48, v49);
        }

        else
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
        }
      }

      TSCECellRefSet::operator=(&v66, &v63);
      sub_22107C800(&v63, v64);
      if ((TSCECellRefSet::isEmpty(&v66) & 1) == 0)
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3321888768;
        v51[2] = sub_221095430;
        v51[3] = &unk_2834A15B8;
        v52 = *(a1 + 32);
        v56 = a3;
        v53 = *(a1 + 40);
        v57 = v67;
        v58 = v68;
        TSCECellRefSet::TSCECellRefSet(&v59, (a1 + 88));
        v60 = *(a1 + 112);
        v54 = *(a1 + 72);
        v61 = a2;
        v62 = *(a1 + 128);
        v55 = *(a1 + 64);
        TSCECellRefSet::enumerateCellRefsUsingBlock(&v66, v51);

        sub_22107C800(&v59, v59._coordsForOwnerUid.__tree_.__end_node_.__left_);
      }

      sub_22107C800(&v66, v66._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }

    objc_autoreleasePoolPop(v18);
  }
}

void sub_22109538C(_Unwind_Exception *a1)
{
  sub_22107C800(v4 - 136, *(v4 - 128));

  _Unwind_Resume(a1);
}

void sub_221095430(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_abortObject(*(a1 + 32), a2, a3, a4, a5);
  isAborted = objc_msgSend_isAborted(v8, v9, v10, v11, v12);

  if (isAborted)
  {
    *a3 = 1;
    **(a1 + 64) = 1;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 40);
  if (v18)
  {
    objc_msgSend_spanningRangeForHeaderCell_(v18, v14, a2, v15, v16);
    v19 = v146;
  }

  else
  {
    v19 = 0;
    v145 = 0u;
    v146 = 0u;
  }

  if (*(a1 + 88) != __PAIR128__(*(&v146 + 1), v19) || TSCECellRefSet::containsCellRef((a1 + 104), a2) && sub_221494F18(*(a1 + 72), *(a1 + 80), v145.i64[0], v145.i64[1]) != -1)
  {
    goto LABEL_149;
  }

  v21 = *(a1 + 72);
  v20 = *(a1 + 80);
  v22 = v145.u32[2];
  v23 = v145.i32[0];
  v24 = v21 & 0xFFFF00000000;
  v25 = v20 & 0xFFFF00000000;
  if (v21 != 0x7FFFFFFFLL && v24 == 0x7FFF00000000 && v25 == 0x7FFF00000000)
  {
    v26 = 0;
    v27 = v20 != 0x7FFFFFFF;
  }

  else
  {
    v27 = 0;
    if (v21 != 0x7FFFFFFFLL || v24 == 0x7FFF00000000)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      if (v25 != 0x7FFF00000000)
      {
        v27 = 0;
        v26 = v20 == 0x7FFFFFFF;
      }
    }
  }

  v28 = v145.i64[0] & 0xFFFF00000000;
  v29 = v145.i64[1] & 0xFFFF00000000;
  v30 = v145.u32[0];
  if (v145.u32[0] != 0x7FFFFFFFLL && v28 == 0x7FFF00000000 && v29 == 0x7FFF00000000)
  {
    v31 = 0;
    v32 = v145.i32[2] != 0x7FFFFFFF;
  }

  else
  {
    v32 = 0;
    if (v145.u32[0] != 0x7FFFFFFFLL || v28 == 0x7FFF00000000)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0;
      if (v29 != 0x7FFF00000000)
      {
        v32 = 0;
        v31 = v145.i32[2] == 0x7FFFFFFF;
      }
    }
  }

  if (v27)
  {
    v24 = 0;
    v25 = 0x3E700000000;
    if (!v32)
    {
LABEL_29:
      if (v31)
      {
        v23 = 0;
        v22 = 999999;
      }

      v30 = v23;
      goto LABEL_36;
    }
  }

  else
  {
    if (v26)
    {
      LODWORD(v21) = 0;
      LODWORD(v20) = 999999;
    }

    if (!v32)
    {
      goto LABEL_29;
    }
  }

  v28 = 0;
  v29 = 0x3E700000000;
LABEL_36:
  v33 = 0x7FFF7FFFFFFFLL;
  v34 = 0x7FFFFFFFLL;
  if (v21 > v22 || v23 > v20)
  {
    v36 = 0x7FFF00000000;
  }

  else
  {
    v35 = HIDWORD(v24);
    v36 = 0x7FFF00000000;
    v34 = 0x7FFFFFFFLL;
    if (HIDWORD(v24) <= HIDWORD(v29))
    {
      v37 = HIDWORD(v25);
      v38 = HIDWORD(v28);
      if (HIDWORD(v28) <= HIDWORD(v25))
      {
        v34 = 0x7FFFFFFFLL;
        if (v21 != 0x7FFFFFFFLL && v24 != 0x7FFF00000000)
        {
          v34 = 0x7FFFFFFFLL;
          if (v20 != 0x7FFFFFFFLL && v25 != 0x7FFF00000000)
          {
            v34 = 0x7FFFFFFFLL;
            if (v37 >= v35 && v21 <= v20)
            {
              v34 = 0x7FFFFFFFLL;
              if (v30 != 0x7FFFFFFF && v28 != 0x7FFF00000000)
              {
                v34 = 0x7FFFFFFFLL;
                if (v22 != 0x7FFFFFFFLL && v29 != 0x7FFF00000000)
                {
                  v34 = 0x7FFFFFFFLL;
                  if (v38 <= HIDWORD(v29) && v23 <= v22)
                  {
                    if (v35 <= v38)
                    {
                      v39 = HIDWORD(v28);
                    }

                    else
                    {
                      v39 = HIDWORD(v24);
                    }

                    if (v21 <= v23)
                    {
                      v21 = v23;
                    }

                    else
                    {
                      v21 = v21;
                    }

                    v40 = v39 << 32;
                    if (v37 >= HIDWORD(v29))
                    {
                      v41 = HIDWORD(v29);
                    }

                    else
                    {
                      v41 = HIDWORD(v25);
                    }

                    if (v20 >= v22)
                    {
                      v20 = v22;
                    }

                    else
                    {
                      v20 = v20;
                    }

                    v42 = v41 << 32;
                    if (v27 && v32)
                    {
                      v42 = 0x7FFF00000000;
                      v36 = 0x7FFF00000000;
                    }

                    else
                    {
                      v36 = v40;
                    }

                    if (v26 && v31)
                    {
                      v20 = 0x7FFFFFFFLL;
                    }

                    v33 = v42 | v20;
                    if (v26 && v31)
                    {
                      v34 = 0x7FFFFFFFLL;
                    }

                    else
                    {
                      v34 = v21;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v43 = v34 | v36;
  v142 = v34 | v36;
  v143 = v33;
  v144 = *(a1 + 88);
  v44 = HIDWORD(v36);
  v45 = HIDWORD(v33);
  v46 = v36 & 0xFFFF00000000;
  if ((v36 & 0xFFFF00000000) == 0x7FFF00000000 || v34 == 0x7FFFFFFF)
  {
    v47 = v33 & 0xFFFF00000000;
  }

  else
  {
    v47 = v33 & 0xFFFF00000000;
    if (v33 != 0x7FFFFFFF && v47 != 0x7FFF00000000 && v44 <= v45 && v43 <= v33)
    {
      goto LABEL_92;
    }
  }

  if (v34 != 0x7FFFFFFF && v46 == 0x7FFF00000000 && v47 == 0x7FFF00000000)
  {
    if (v33 == 0x7FFFFFFF || v43 > v33)
    {
      goto LABEL_149;
    }

LABEL_92:
    v48 = objc_msgSend_referencesMatchingInputAsPrefix(*(a1 + 32), v34, 0x7FFF00000000, v31, v28);
    if (v48 || v144 == *(a1 + 128))
    {
    }

    else if (objc_msgSend_count(*(a1 + 48), v49, v50, v51, v52) >= 2)
    {
      goto LABEL_149;
    }

    v56 = objc_msgSend_stringInHeaderCell_(*(a1 + 40), v53, a2, v54, v55);
    if (objc_msgSend_filterColons(*(a1 + 32), v57, v58, v59, v60) && objc_msgSend_rangeOfString_(v56, v61, @":", v62, v63) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_148;
    }

    v139 = v56;
    if (v142 == 0x7FFFFFFF || (v142 & 0xFFFF00000000) == 0x7FFF00000000 || v143 == 0x7FFFFFFF || (v143 & 0xFFFF00000000) == 0x7FFF00000000 || WORD2(v142) > WORD2(v143) || v142 > v143 || WORD2(v142) != WORD2(v143) || v142 != v143)
    {
      v72 = [TSCEAnyReference alloc];
      v68 = objc_msgSend_initWithRangeRef_(v72, v73, &v142, v74, v75);
    }

    else
    {
      v64 = [TSCEAnyReference alloc];
      v140 = v142;
      v141 = v144;
      v68 = objc_msgSend_initWithCellRef_(v64, v65, &v140, v66, v67);
    }

    v76 = v68;
    objc_msgSend_setWasConstructedViaNames_(v68, v69, 1, v70, v71);
    if (*(a1 + 152) == 1)
    {
      v80 = *(a1 + 72);
      v81.i64[0] = 0xFFFFFFFFLL;
      v81.i64[1] = 0xFFFFFFFFLL;
      v82 = vandq_s8(v80, v81);
      v83.i64[0] = 0xFFFF00000000;
      v83.i64[1] = 0xFFFF00000000;
      *v80.i8 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v80, v83), vdupq_n_s64(0x7FFF00000000uLL))));
      *v80.i8 = vuzp1_s16(*v80.i8, *v80.i8);
      v80.i32[1] = vuzp1_s16(*&v80, vmovn_s64(vceqq_s64(v82, vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
      if (vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(*v80.i8, 0xFuLL)), 0x8000400020001)) == 15)
      {
        v84 = 5;
      }

      else
      {
        v84 = 10;
      }
    }

    else
    {
      v84 = 0;
    }

    if (*(a1 + 153) == 1)
    {
      v85.i64[0] = 0xFFFFFFFFLL;
      v85.i64[1] = 0xFFFFFFFFLL;
      v86.i64[0] = 0xFFFF00000000;
      v86.i64[1] = 0xFFFF00000000;
      v87 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v145, v86), vdupq_n_s64(0x7FFF00000000uLL))));
      v88 = vuzp1_s16(v87, v87);
      v88.i32[1] = vuzp1_s16(v88, vmovn_s64(vceqq_s64(vandq_s8(v145, v85), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
      if (vminv_u16(v88))
      {
        v89 = 5;
      }

      else
      {
        v89 = 10;
      }

      v84 |= v89;
    }

    objc_msgSend_setPreserveFlags_(v76, v77, v84, v78, v79);
    v93 = objc_msgSend_stringInHeaderCell_(*(a1 + 40), v90, *(a1 + 144), v91, v92);
    objc_msgSend_filterColons(*(a1 + 32), v94, v95, v96, v97);
    v101 = @"$";
    if (*(a1 + 152))
    {
      v102 = @"$";
    }

    else
    {
      v102 = &stru_2834BADA0;
    }

    if (*(a1 + 153))
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v98, @"%@%@ %@%@", v99, v100, v102, v93, @"$", v56);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v98, @"%@%@ %@%@", v99, v100, v102, v93, &stru_2834BADA0, v56);
    }
    v103 = ;
    objc_msgSend_setOverrideText_(v76, v104, v103, v105, v106);

    v111 = MEMORY[0x277CCACA8];
    if (*(a1 + 152))
    {
      v112 = @"$";
    }

    else
    {
      v112 = &stru_2834BADA0;
    }

    v113 = *(a1 + 154);
    v114 = v93;
    if (v113 == 1)
    {
      v114 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(v93, v107, v108, v109, v110);
    }

    v119 = objc_msgSend_stringWithFormat_(v111, v107, @"%@%@", v109, v110, v112, v114);
    if (v113)
    {
    }

    if (*(a1 + 155) == 1)
    {
      v120 = MEMORY[0x277CCACA8];
      if (!*(a1 + 153))
      {
        v101 = &stru_2834BADA0;
      }

LABEL_135:
      v121 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(v139, v115, v116, v117, v118);
      v122 = 1;
      objc_msgSend_stringWithFormat_(v120, v123, @"%@%@", v124, v125, v101, v121);
      v131 = LABEL_145:;
      if (v122)
      {
      }

      v132 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v128, @"%@ %@", v129, v130, v119, v131);
      objc_msgSend_setOverrideTextAsTyped_(v76, v133, v132, v134, v135);

      objc_msgSend_addObject_(*(a1 + 48), v136, v76, v137, v138);
      v56 = v139;
LABEL_148:

      goto LABEL_149;
    }

    if (objc_msgSend_length(*(a1 + 56), v115, v116, v117, v118))
    {
      v122 = 0;
      v120 = MEMORY[0x277CCACA8];
      if (!*(a1 + 153))
      {
        v101 = &stru_2834BADA0;
      }
    }

    else
    {
      v127 = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(v139, v115, v126, v117, v118);
      v120 = MEMORY[0x277CCACA8];
      if (!*(a1 + 153))
      {
        v101 = &stru_2834BADA0;
      }

      if (v127)
      {
        goto LABEL_135;
      }

      v122 = 0;
    }

    v121 = v139;
    objc_msgSend_stringWithFormat_(v120, v115, @"%@%@", v117, v118, v101, v139);
    goto LABEL_145;
  }

  if (v34 == 0x7FFFFFFF && v46 != 0x7FFF00000000 && v47 != 0x7FFF00000000 && v33 == 0x7FFFFFFF && v44 <= v45)
  {
    goto LABEL_92;
  }

LABEL_149:
  objc_autoreleasePoolPop(v17);
}

void sub_221098F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

__n128 sub_221099028(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_221099038(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_spanningRangeForHeaderCell_(v6, a2, a2, a4, a5);
    v10 = *&v35[4];
    v11 = *v35 != 0x7FFFFFFF || (*v35 & 0xFFFF00000000) == 0x7FFF00000000;
    if (!v11 && v36 == *&v35[4])
    {
      if (*(a1 + 40) && (v37 != *(a1 + 64) || v37 == 0))
      {
        if (*(a1 + 64))
        {
          return;
        }

        if (*(a1 + 72))
        {
          return;
        }

        v25 = objc_msgSend_resolverForTableUID_(*(a1 + 48), v8, v37, *(&v37 + 1), v9);
        v30 = objc_msgSend_tableName(v25, v26, v27, v28, v29);
        isEqualToString = objc_msgSend_isEqualToString_(v30, v31, *(a1 + 40), v32, v33);

        if (!isEqualToString)
        {
          return;
        }

        v10 = *&v35[4];
      }

      v12 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v8, v37, *(&v37 + 1), *(a1 + 48));
      v17 = objc_msgSend_translator(v12, v13, v14, v15, v16);
      v21 = objc_msgSend_columnUIDForBaseColumnIndex_(v17, v18, v10, v19, v20);
      v22 = *(*(a1 + 56) + 8);
      *(v22 + 48) = v21;
      *(v22 + 56) = v23;

      v24 = *(*(a1 + 56) + 8);
      if (*(v24 + 48) || *(v24 + 56))
      {
        *a3 = 1;
      }
    }
  }
}

void sub_22109A8E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22109AB0C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v11 = v6;
  if (v6)
  {
    v12 = *(*(a1 + 32) + 264);
    if (v12 == objc_msgSend_presetID(v6, v7, v8, v9, v10))
    {
      objc_msgSend_setTableStylePreset_(*(a1 + 32), v13, v11, v14, v15);
      *a4 = 1;
    }
  }
}

void sub_22109B6E8(uint64_t a1)
{
  *(*(a1 + 32) + 744) = *(a1 + 88);
  objc_storeStrong((*(a1 + 32) + 680), *(a1 + 40));
  *(*(a1 + 32) + 288) = *(a1 + 48);
  v6 = objc_msgSend_documentRoot(*(a1 + 56), v2, v3, v4, v5);
  v11 = objc_msgSend_calculationEngine(v6, v7, v8, v9, v10);
  *(*(a1 + 32) + 216) = v11;

  *(*(a1 + 32) + 112) = 0;
  *(*(a1 + 32) + 116) = 0;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *(*(a1 + 32) + 184) = 0;
  *(*(a1 + 32) + 188) = 0;
  *(*(a1 + 32) + 192) = 0;
  *(*(a1 + 32) + 170) = 0;
  *(*(a1 + 32) + 171) = 0;
  *(*(a1 + 32) + 232) = 0x4036000000000000;
  *(*(a1 + 32) + 240) = 0x4058800000000000;
  v14 = [TSTTableDataStore alloc];
  v18 = objc_msgSend_initWithOwner_(v14, v15, *(a1 + 32), v16, v17);
  v19 = *(a1 + 32);
  v20 = *(v19 + 224);
  *(v19 + 224) = v18;

  objc_msgSend_setStorageParentToInfo_(*(*(a1 + 32) + 224), v21, *(a1 + 48), v22, v23);
  v28 = objc_msgSend_unnamedTableString(*(a1 + 32), v24, v25, v26, v27);
  v29 = *(a1 + 32);
  v30 = *(v29 + 248);
  *(v29 + 248) = v28;

  *(*(a1 + 32) + 172) = objc_msgSend_tableNameEnabledInNewTables(*(a1 + 80), v31, v32, v33, v34);
  *(*(a1 + 32) + 174) = 0;
  *(*(a1 + 32) + 175) = 0;
  v35 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  v36 = *(a1 + 32);
  v37 = *(v36 + 584);
  *(v36 + 584) = v35;

  v38 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  v39 = *(a1 + 32);
  v40 = *(v39 + 592);
  *(v39 + 592) = v38;

  v41 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  v42 = *(a1 + 32);
  v43 = *(v42 + 600);
  *(v42 + 600) = v41;

  v44 = objc_alloc_init(TSTCellDictionary);
  v45 = *(a1 + 32);
  v46 = *(v45 + 568);
  *(v45 + 568) = v44;

  v47 = objc_alloc_init(TSTCellDictionary);
  v48 = *(a1 + 32);
  v49 = *(v48 + 576);
  *(v48 + 576) = v47;

  v50 = [TSTConditionalStyleFormulaOwner alloc];
  v54 = objc_msgSend_initWithTableModel_(v50, v51, *(a1 + 32), v52, v53);
  v55 = *(a1 + 32);
  v56 = *(v55 + 608);
  *(v55 + 608) = v54;

  v57 = [TSTMergeOwner alloc];
  v61 = objc_msgSend_initWithTableModel_(v57, v58, *(a1 + 32), v59, v60);
  v62 = *(a1 + 32);
  v63 = *(v62 + 616);
  *(v62 + 616) = v61;

  v64 = [TSTCategoryOwner alloc];
  v68 = objc_msgSend_initWithBaseTableModel_(v64, v65, *(a1 + 32), v66, v67);
  v69 = *(a1 + 32);
  v70 = *(v69 + 624);
  *(v69 + 624) = v68;

  v71 = [TSTHiddenStatesOwner alloc];
  v75 = objc_msgSend_initWithBaseTable_(v71, v72, *(a1 + 32), v73, v74);
  v76 = *(a1 + 32);
  v77 = *(v76 + 640);
  *(v76 + 640) = v75;

  v78 = [TSTSortRuleReferenceTracker alloc];
  v80 = objc_msgSend_initWithTableInfo_baseTableUID_context_(v78, v79, *(a1 + 48), *(a1 + 32) + 744, *(a1 + 56));
  v81 = *(a1 + 32);
  v82 = *(v81 + 672);
  *(v81 + 672) = v80;

  v83 = [TSTPencilAnnotationOwner alloc];
  v87 = objc_msgSend_initWithTableModel_(v83, v84, *(a1 + 32), v85, v86);
  v88 = *(a1 + 32);
  v89 = *(v88 + 736);
  *(v88 + 736) = v87;

  v90 = [TSCEHauntedOwner alloc];
  v94 = objc_msgSend_initWithBaseTableUID_(v90, v91, *(a1 + 32) + 744, v92, v93);
  v95 = *(a1 + 32);
  v96 = *(v95 + 648);
  *(v95 + 648) = v94;

  v97 = [TSCESpillOwner alloc];
  v101 = objc_msgSend_initWithBaseTableUID_(v97, v98, *(a1 + 32) + 744, v99, v100);
  v102 = *(a1 + 32);
  v103 = *(v102 + 656);
  *(v102 + 656) = v101;

  v104 = [TSTHiddenStateFormulaOwner alloc];
  v105 = *(a1 + 56);
  v162 = sub_2212C4930((*(a1 + 32) + 744), 4, v106, v107, v108);
  v163 = v109;
  v111 = objc_msgSend_initWithContext_ownerUID_(v104, v109, v105, &v162, v110);
  v112 = *(a1 + 32);
  v113 = *(v112 + 64);
  *(v112 + 64) = v111;

  v114 = [TSTHiddenStateFormulaOwner alloc];
  v115 = *(a1 + 56);
  v162 = sub_2212C4930((*(a1 + 32) + 744), 0xB, v116, v117, v118);
  v163 = v119;
  v121 = objc_msgSend_initWithContext_ownerUID_(v114, v119, v115, &v162, v120);
  v122 = *(a1 + 32);
  v123 = *(v122 + 72);
  *(v122 + 72) = v121;

  *(*(a1 + 32) + 200) = 0x300020000000ALL;
  *(*(a1 + 32) + 208) = 0x300020000000ALL;
  *(*(a1 + 32) + 178) = 0;
  v124 = [TSTTableSortOrder alloc];
  v127 = objc_msgSend_initWithRules_type_(v124, v125, MEMORY[0x277CBEBF8], 0, v126);
  v128 = *(a1 + 32);
  v129 = *(v128 + 664);
  *(v128 + 664) = v127;

  v130 = [TSTStrokeSidecar alloc];
  v134 = objc_msgSend_initWithTableModel_(v130, v131, *(a1 + 32), v132, v133);
  v135 = *(a1 + 32);
  v136 = *(v135 + 80);
  *(v135 + 80) = v134;

  if (!(v13 | v12))
  {
    TSUSetCrashReporterInfo();
    v152 = MEMORY[0x277D81150];
    v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "[TSTTableModel initWithContext:tableUID:columnRowUIDMap:styles:stylePreset:tableInfo:]_block_invoke", v154, v155, "[TSTTableModel initWithContext:tableUID:columnRowUIDMap:styles:stylePreset:tableInfo:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 636);
    v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v158, v159);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v152, v161, v156, v160, 636, 1, "Caller must provide preset or styles or both.");

    TSUCrashBreakpoint();
    abort();
  }

  if (!v12)
  {
    v12 = objc_msgSend_styleNetwork(v13, v137, v138, v139, v140);
  }

  objc_msgSend_setTableStylePreset_(*(a1 + 32), v137, v13, v139, v140);
  objc_msgSend_setStyleNetwork_(*(a1 + 32), v141, v12, v142, v143);
  if (objc_msgSend_tableSizeClass(*(a1 + 32), v144, v145, v146, v147) >= 2)
  {
    objc_msgSend_setShouldUseWideRows_(*(*(a1 + 32) + 224), v148, 1, v150, v151);
  }

  *(*(a1 + 32) + 179) = 0;
  objc_msgSend_verifySubOwnerUIDsUsed(*(a1 + 32), v148, v149, v150, v151);
}

void sub_22109C3F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1 + 32) + 288) = *(a1 + 40);
  v6 = objc_msgSend_tableStylePreset(*(a1 + 48), a2, a3, a4, a5);

  if (!v6)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 272);
    *(v11 + 272) = 0;
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v18 = objc_msgSend_fromTableUID(v13, v7, v8, v9, v10);
    v19 = *(a1 + 48);
    if (v18 | v14)
    {
      v20 = objc_msgSend_fromTableUID(v19, v14, v15, v16, v17);
    }

    else
    {
      v20 = objc_msgSend_tableUID(v19, v14, v15, v16, v17);
    }

    v25 = (*(a1 + 32) + 760);
    *v25 = v20;
    v25[1] = v21;
    v30 = objc_msgSend_fromGroupByUID(*(a1 + 48), v21, v22, v23, v24);
    v31 = *(a1 + 48);
    if (v30 | v26)
    {
      v32 = objc_msgSend_fromGroupByUID(v31, v26, v27, v28, v29);
      v33 = (*(a1 + 32) + 776);
      *v33 = v32;
      v33[1] = v7;
    }

    else
    {
      v34 = objc_msgSend_tableInfo(v31, v26, v27, v28, v29);
      v39 = objc_msgSend_groupByUid(v34, v35, v36, v37, v38);
      v40 = (*(a1 + 32) + 776);
      *v40 = v39;
      v40[1] = v41;
    }
  }

  v42 = *(a1 + 80);
  *(*(a1 + 32) + 174) = objc_msgSend_repeatingHeaderRowsEnabled(*(a1 + 48), v7, v8, v9, v10);
  *(*(a1 + 32) + 175) = objc_msgSend_repeatingHeaderColumnsEnabled(*(a1 + 48), v43, v44, v45, v46);
  *(*(a1 + 32) + 170) = objc_msgSend_headerRowsFrozen(*(a1 + 48), v47, v48, v49, v50);
  *(*(a1 + 32) + 171) = objc_msgSend_headerColumnsFrozen(*(a1 + 48), v51, v52, v53, v54);
  v305.origin = objc_msgSend_headerRowRange(*(a1 + 48), v55, v56, v57, v58);
  v305.size = v59;
  sub_2210AFE68(&v305.origin, (a1 + 80));
  *(*(a1 + 32) + 188) = HIDWORD(v60) - (*(a1 + 92) <= HIDWORD(v60));
  v305.origin = objc_msgSend_headerColumnRange(*(a1 + 48), v60, v61, v62, v63);
  v305.size = v64;
  sub_2210AFE68(&v305.origin, (a1 + 80));
  *(*(a1 + 32) + 184) = v65 - (*(a1 + 88) <= v65);
  v305.origin = objc_msgSend_footerRowRange(*(a1 + 48), v65, v66, v67, v68);
  v305.size = v69;
  sub_2210AFE68(&v305.origin, (a1 + 80));
  *(*(a1 + 32) + 192) = HIDWORD(v70) - (*(a1 + 92) <= HIDWORD(v70));
  *(*(a1 + 32) + 172) = objc_msgSend_tableNameEnabled(*(a1 + 48), v70, v71, v72, v73);
  v74 = [TSTStrokeSidecar alloc];
  v78 = objc_msgSend_initWithTableModel_(v74, v75, *(a1 + 32), v76, v77);
  v79 = *(a1 + 32);
  v80 = *(v79 + 80);
  *(v79 + 80) = v78;

  if (*(a1 + 96) == 1)
  {
    v85 = *(a1 + 32);
    v86 = objc_msgSend_tableName(*(a1 + 48), v81, v82, v83, v84);
    objc_msgSend_setTableName_(v85, v87, v86, v88, v89);

    v90 = *(a1 + 32);
    v95 = objc_msgSend_tableNameBorderEnabled(*(a1 + 48), v91, v92, v93, v94);
    objc_msgSend_setTableNameBorderEnabled_(v90, v96, v95, v97, v98);
    v99 = *(a1 + 32);
    objc_msgSend_tableNameHeight(*(a1 + 48), v100, v101, v102, v103);
    objc_msgSend_setTableNameHeight_(v99, v104, v105, v106, v107);
    v108 = *(a1 + 32);
    v113 = objc_msgSend_styleApplyClearsAll(*(a1 + 48), v109, v110, v111, v112);
    objc_msgSend_setStyleApplyClearsAll_(v108, v114, v113, v115, v116);
  }

  v117 = *(a1 + 32);
  objc_msgSend_defaultRowHeight(*(a1 + 48), v81, v82, v83, v84);
  objc_msgSend_setDefaultRowHeight_(v117, v118, v119, v120, v121);
  v122 = *(a1 + 32);
  objc_msgSend_defaultColumnWidth(*(a1 + 48), v123, v124, v125, v126);
  objc_msgSend_setDefaultColumnWidth_(v122, v127, v128, v129, v130);
  v327[0] = MEMORY[0x277D85DD0];
  v327[1] = 3221225472;
  v327[2] = sub_22109D160;
  v327[3] = &unk_27845DBE8;
  v328 = *(a1 + 48);
  v329 = *(a1 + 32);
  v330 = v42;
  sub_22109D0C8((a1 + 80), v327);
  v323[0] = MEMORY[0x277D85DD0];
  v323[1] = 3221225472;
  v323[2] = sub_22109D254;
  v323[3] = &unk_27845DC10;
  v324 = *(a1 + 48);
  v325 = *(a1 + 32);
  v326 = v42;
  sub_22109D1B8(a1 + 80, v323);
  if (*(a1 + 96) == 1)
  {
    v135 = objc_msgSend_sortOrder(*(a1 + 48), v131, v132, v133, v134);
    v140 = objc_msgSend_copy(v135, v136, v137, v138, v139);
    v141 = *(a1 + 32);
    v142 = *(v141 + 664);
    *(v141 + 664) = v140;
  }

  v143 = objc_msgSend_mergeOwner(*(a1 + 48), v131, v132, v133, v134);
  v147 = v143;
  if (v143)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v143, v144, *(a1 + 56), v145, v146);
  }

  else
  {
    v320 = 0;
    v321 = 0;
    v322 = 0;
  }

  v152 = v320;
  v153 = v321;
  while (v152 != v153)
  {
    v305.origin = 0;
    v305.size = 0;
    v154 = v152[1];
    v305.origin = ((*v152 - (*(a1 + 80) & 0xFFFF00000000)) & 0xFFFF00000000 | (*v152 - *(a1 + 80)));
    v305.size = v154;
    v297 = objc_msgSend_tableAreaForBaseCellCoord_(*(a1 + 32), v148, *&v305.origin, v150, v151);
    sub_2210F73F8(&v297);
    v155 = *(a1 + 32);
    v156 = TSUCellRect::bottomRight(&v305);
    v311 = objc_msgSend_tableAreaForBaseCellCoord_(v155, v157, v156, v158, v159);
    sub_2210F73F8(&v311);
    if (v297 != v311)
    {
      v302.origin = objc_msgSend_headerRowRange(*(a1 + 32), v160, v161, v162, v163);
      v302.size = v164;
      origin = v305.origin;
      if (TSUCellRect::contains(&v302, origin))
      {
        *(*(a1 + 32) + 188) = 0;
      }

      v302.origin = objc_msgSend_headerColumnRange(*(a1 + 32), v166, v167, v168, v169);
      v302.size = v170;
      v171 = v305.origin;
      if (TSUCellRect::contains(&v302, v171))
      {
        *(*(a1 + 32) + 184) = 0;
      }

      if (v311 == 4)
      {
        *(*(a1 + 32) + 192) = 0;
      }
    }

    v172 = objc_msgSend_mergeOwner(*(a1 + 32), v160, v161, v162, v163);
    objc_msgSend_insertBaseMergeRange_(v172, v173, *&v305.origin, *&v305.size, v174);

    v152 += 2;
  }

  v175 = objc_msgSend_pencilAnnotationOwner(*(a1 + 48), v148, v149, v150, v151);
  v180 = objc_msgSend_formulaStore(v175, v176, v177, v178, v179);
  v181 = *(a1 + 56);
  v315[0] = MEMORY[0x277D85DD0];
  v315[1] = 3221225472;
  v315[2] = sub_22109D2B0;
  v315[3] = &unk_27845DC38;
  v182 = v180;
  v316 = v182;
  v319 = *(a1 + 80);
  v317 = *(a1 + 32);
  v318 = *(a1 + 40);
  v271 = v182;
  objc_msgSend_enumerateAnnotationsAndFormulasContainedInRegion_withBlock_(v175, v183, v181, v315, v184);
  v193 = objc_msgSend_calcEngine(*(a1 + 48), v185, v186, v187, v188);
  if (!v193)
  {
    v194 = objc_msgSend_documentRoot(*(a1 + 48), v189, v190, v191, v192);
    v193 = objc_msgSend_calculationEngine(v194, v195, v196, v197, v198);
  }

  v314.origin = 0;
  v314.size = 0;
  v314.origin = objc_msgSend_boundingCellRange(*(a1 + 56), v189, v190, v191, v192);
  v314.size = v199;
  v203 = objc_msgSend_tableInfo(*(a1 + 48), v199, v200, v201, v202);
  v204 = TSUCellRect::columns(&v314);
  if (v203)
  {
    objc_msgSend_columnUIDsForColumnRange_(v203, v205, v204, v205, v206);
  }

  else
  {
    v311 = 0;
    v312 = 0;
    v313 = 0;
  }

  v211 = objc_msgSend_tableInfo(*(a1 + 48), v207, v208, v209, v210);
  v212 = TSUCellRect::rows(&v314);
  if (v211)
  {
    objc_msgSend_rowUIDsForRowRange_(v211, v213, v212, v213, v214);
  }

  else
  {
    v308 = 0;
    v309 = 0;
    v310 = 0;
  }

  sub_2210BBBE8(&v305, &v311, &v308);
  *__p = 0u;
  v304 = 0u;
  v302 = 0;
  v215 = [TSTFormulaRewriteSpec alloc];
  v297 = objc_msgSend_tableUID(*(a1 + 48), v216, v217, v218, v219);
  v298 = v220;
  v301[0] = objc_msgSend_tableUID(*(a1 + 32), v220, v221, v222, v223);
  v301[1] = v224;
  v228 = objc_msgSend_tableInfo(*(a1 + 48), v224, v225, v226, v227);
  v233 = objc_msgSend_translator(v228, v229, v230, v231, v232);
  v238 = objc_msgSend_coordinateMapper(v233, v234, v235, v236, v237);
  v240 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v215, v239, &v297, &v305, v301, &v302, v238);

  v297 = 0;
  v298 = &v297;
  v299 = 0x2020000000;
  v300 = 0;
  v241 = *(a1 + 48);
  v242 = *(a1 + 56);
  v288[0] = MEMORY[0x277D85DD0];
  v288[1] = 3221225472;
  v288[2] = sub_22109D470;
  v288[3] = &unk_27845DC88;
  v296 = v42;
  v289 = *(a1 + 64);
  v243 = *(a1 + 32);
  v244 = *(a1 + 72);
  v290 = v243;
  v295 = v244;
  v291 = *(a1 + 48);
  v245 = v193;
  v292 = v245;
  v246 = v240;
  v293 = v246;
  v294 = &v297;
  objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(v241, v247, v242, 66058240, v288);
  v252 = v298[3];
  if (v252)
  {
    MEMORY[0x223DA1450](v252, 0x1080C405B0C81BELL);
  }

  v253 = objc_msgSend_boundingTopLeftCellID(*(a1 + 56), v248, v249, v250, v251);
  v258 = objc_msgSend_boundingTopLeftCellID(*(a1 + 56), v254, v255, v256, v257);
  v263 = objc_msgSend_strokeSidecar(*(a1 + 48), v259, v260, v261, v262);
  v264 = HIDWORD(v258);
  v265 = *(a1 + 56);
  v284[0] = MEMORY[0x277D85DD0];
  v284[1] = 3221225472;
  v284[2] = sub_22109DAE8;
  v284[3] = &unk_27845DCB0;
  v286 = v253;
  v287 = v264;
  v285 = *(a1 + 32);
  v280[0] = MEMORY[0x277D85DD0];
  v280[1] = 3221225472;
  v280[2] = sub_22109DB1C;
  v280[3] = &unk_27845DCB0;
  v282 = v253;
  v283 = v264;
  v281 = *(a1 + 32);
  v276[0] = MEMORY[0x277D85DD0];
  v276[1] = 3221225472;
  v276[2] = sub_22109DB50;
  v276[3] = &unk_27845DCD8;
  v279 = v264;
  v278 = v253;
  v277 = *(a1 + 32);
  v272[0] = MEMORY[0x277D85DD0];
  v272[1] = 3221225472;
  v272[2] = sub_22109DB84;
  v272[3] = &unk_27845DCD8;
  v275 = v264;
  v274 = v253;
  v273 = *(a1 + 32);
  objc_msgSend_enumerateStrokesInRegion_usingTopStrokeBlock_usingBottomStrokeBlock_usingLeftStrokeBlock_usingRightStrokeBlock_(v263, v266, v265, v284, v280, v276, v272);

  objc_msgSend_flattenStrokeOrder(*(*(a1 + 32) + 80), v267, v268, v269, v270);
  _Block_object_dispose(&v297, 8);

  if (__p[1])
  {
    *&v304 = __p[1];
    operator delete(__p[1]);
  }

  if (v302.origin)
  {
    v302.size = v302.origin;
    operator delete(*&v302.origin);
  }

  if (v306)
  {
    v307 = v306;
    operator delete(v306);
  }

  if (v305.origin)
  {
    v305.size = v305.origin;
    operator delete(*&v305.origin);
  }

  if (v308)
  {
    v309 = v308;
    operator delete(v308);
  }

  if (v311)
  {
    v312 = v311;
    operator delete(v311);
  }

  if (v320)
  {
    v321 = v320;
    operator delete(v320);
  }
}

void sub_22109D0C8(_DWORD *a1, void *a2)
{
  v4 = a2;
  if (a1[3])
  {
    v3 = 0;
    do
    {
      v4[2](v4, v3 + *a1);
      ++v3;
    }

    while (v3 < a1[3]);
  }
}

uint64_t sub_22109D160(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v11 = 0;
  result = objc_msgSend_heightOfRowAtIndex_isDefault_(*(a1 + 32), a2, a2, &v11, a5);
  if ((v11 & 1) == 0)
  {
    return objc_msgSend_setHeight_ofRowAtIndex_(*(a1 + 40), v8, (v5 - *(a1 + 48)), v9, v10);
  }

  return result;
}

void sub_22109D1B8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      v4[2](v4, (*(a1 + 4) + v3++));
    }

    while (*(a1 + 8) > v3);
  }
}

uint64_t sub_22109D254(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v11 = 0;
  result = objc_msgSend_widthOfColumnAtIndex_isDefault_(*(a1 + 32), a2, a2, &v11, a5);
  if ((v11 & 1) == 0)
  {
    return objc_msgSend_setWidth_ofColumnAtIndex_(*(a1 + 40), v8, (v5 - *(a1 + 52)), v9, v10);
  }

  return result;
}

void sub_22109D2B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v8 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(*(a1 + 32), v6, a4, 0, v7);
  v10 = v9;
  v11 = *(a1 + 56);
  v15 = objc_msgSend_pencilAnnotationStorage(v35, v9, v12, v13, v14);
  v20 = objc_msgSend_context(*(a1 + 40), v16, v17, v18, v19);
  v24 = objc_msgSend_copyWithContext_(v15, v21, v20, v22, v23);

  v25 = [TSTPencilAnnotation alloc];
  v32 = objc_msgSend_initWithTableInfo_pencilAnnotationStorage_(v25, v26, *(a1 + 48), v24, v27);
  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F64BC();
  }

  v33 = objc_msgSend_pencilAnnotationOwner(*(a1 + 40), v28, v29, v30, v31);
  objc_msgSend_addAnnotation_withAnchorRange_(v33, v34, v32, (v8 - (v11 & 0xFFFF00000000)) & 0xFFFF00000000 | (v8 - v11), v10);
}

void sub_22109D42C()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_22109D470(uint64_t a1, void *x1_0)
{
  v3 = x1_0;
  v8 = objc_msgSend_cell(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_cellID(v3, v9, v10, v11, v12) >> 32;
  v14 = *(a1 + 92);
  v19 = objc_msgSend_cellID(v3, v15, v16, v17, v18);
  if (!v8)
  {
    goto LABEL_30;
  }

  v24 = v19;
  v176 = *(a1 + 88);
  if (objc_msgSend_isEmpty(v8, v20, v21, v22, v23))
  {
    goto LABEL_30;
  }

  objc_msgSend_clearDataListIDs(v8, v25, v26, v27, v28);
  if (objc_msgSend_hasFormulaSyntaxError(v8, v29, v30, v31, v32))
  {
    v37 = objc_msgSend_formulaSyntaxError(v8, v33, v34, v35, v36);
    v38 = *(a1 + 32);
    v43 = objc_msgSend_documentRoot(*(a1 + 40), v39, v40, v41, v42);
    v48 = objc_msgSend_stylesheet(v43, v44, v45, v46, v47);
    v51 = objc_msgSend_i_copyIntoContext_stylesheet_(v37, v49, v38, v48, v50);

    objc_msgSend_setFormulaSyntaxError_(v8, v52, v51, v53, v54);
  }

  if (objc_msgSend_hasRichText(v8, v33, v34, v35, v36))
  {
    v59 = objc_msgSend_richTextValue(v8, v55, v56, v57, v58);
    v63 = objc_msgSend_copyWithContext_(v59, v60, *(a1 + 32), v61, v62);

    objc_msgSend_setRichTextValue_(v8, v64, v63, v65, v66);
  }

  if (objc_msgSend_hasCommentStorage(v8, v55, v56, v57, v58))
  {
    v71 = objc_msgSend_commentStorage(v8, v67, v68, v69, v70);
    v75 = objc_msgSend_copyWithContext_(v71, v72, *(a1 + 32), v73, v74);

    objc_msgSend_setCommentStorage_(v8, v76, v75, v77, v78);
  }

  v79 = objc_msgSend_cellSpec(v8, v67, v68, v69, v70);
  v84 = objc_msgSend_asChooserControlSpec(v79, v80, v81, v82, v83);

  if (v84)
  {
    v89 = objc_msgSend_popupModel(v84, v85, v86, v87, v88);
    v93 = objc_msgSend_copyWithContext_(v89, v90, *(a1 + 32), v91, v92);

    Item = objc_msgSend_startWithFirstItem(v84, v94, v95, v96, v97);
    v101 = objc_msgSend_popupCellSpec_startWithFirstItem_(TSTCellChooserControlSpec, v99, v93, Item, v100);
    objc_msgSend_setCellSpec_(v8, v102, v101, v103, v104);
  }

  v109 = (v24 - v176) | ((v13 - v14) << 32);
  if (objc_msgSend_hasFormula(v8, v85, v86, v87, v88))
  {
    v110 = objc_msgSend_formulaObject(v8, v105, v106, v107, v108);
    if (objc_msgSend_isSpillFormula(v110, v111, v112, v113, v114))
    {
      v119 = objc_msgSend_spillOrigin(v110, v115, v116, v117, v118);
      v120 = 0x7FFF7FFFFFFFLL;
      v121 = *(a1 + 92);
      if (v121 <= WORD2(v119))
      {
        v122 = *(a1 + 88);
        v123 = v119 >= v122;
        v124 = v119 - v122;
        if (v123)
        {
          v120 = v124 | ((WORD2(v119) - v121) << 32);
        }
      }

      v125 = [TSCEFormulaObject alloc];
      v183.var1 = 0;
      v183.var2.var0.var0.coordinate = 0;
      v183.var0 = v120;
      v184.var0._tableUID._lower = 0;
      v184.var0._tableUID._upper = 0;
      v184.var0.coordinate = v109;
      TSCEFormulaCreationMagic::cellRef(&v183, 3, v126, &v184, v127, &v185);
      TSCEFormulaCreationMagic::__SPILL(&v185, v187, v186);
      v131 = objc_msgSend_initWithCreator_(v125, v128, v186, v129, v130);

      objc_msgSend_setFormulaObject_(v8, v132, v131, v133, v134);
    }

    else
    {
      if (!*(a1 + 80))
      {
LABEL_21:

        goto LABEL_22;
      }

      v135 = objc_msgSend_cellID(v3, v115, v116, v117, v118);
      v140 = objc_msgSend_tableUID(*(a1 + 48), v136, v137, v138, v139);
      v183.var0 = v135;
      v183.var1 = v140;
      v183.var2.var0.var0.coordinate = v141;
      sub_2212C7294(&v184, &v183);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v183, *(a1 + 56), &v184);
      v131 = sub_221491A58(v110, &v183, *(a1 + 64), *(a1 + 80));
      objc_msgSend_setFormulaObject_(v8, v142, v131, v143, v144);
    }

    goto LABEL_21;
  }

LABEL_22:
  if (objc_msgSend_hasConditionalStyle(v8, v105, v106, v107, v108))
  {
    if (*(a1 + 80))
    {
      v149 = objc_msgSend_cellID(v3, v145, v146, v147, v148);
      v154 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 48), v150, v151, v152, v153);
      v184.var0.coordinate = v149;
      v184.var0._tableUID._lower = v154;
      v184.var0._tableUID._upper = v155;
      sub_2212C7294(&v183, &v184);
      v156 = *(*(*(a1 + 72) + 8) + 24);
      if (!v156)
      {
        operator new();
      }

      v157 = TSCEFormulaRewriteContext::setContainingCell(v156, &v183);
      v166 = objc_msgSend_conditionalStyle(v8, v162, v163, v164, v165, v157);
      v167 = *(*(*(a1 + 72) + 8) + 24);
      v177 = MEMORY[0x277D85DD0];
      v178 = 3221225472;
      v179 = sub_22109DAA8;
      v180 = &unk_27845DC60;
      v168 = *(a1 + 64);
      v169 = *(a1 + 80);
      v181 = v168;
      v182 = v169;
      v172 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v166, v170, v167, &v177, v171);
    }

    else
    {
      v158 = objc_msgSend_conditionalStyle(v8, v145, v146, v147, v148);
      v172 = objc_msgSend_copyWithContext_(v158, v159, *(a1 + 32), v160, v161);
    }

    objc_msgSend_setConditionalStyle_(v8, v173, v172, v174, v175);
  }

  objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_doRichTextDOLC_(*(*(a1 + 40) + 224), v145, v8, v109, *(a1 + 40) + 744, *(*(a1 + 40) + 216), *(*(a1 + 40) + 608), 1, 1, v177, v178, v179, v180);

LABEL_30:
}

void sub_22109D96C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v4, 0x1080C405B0C81BELL);

  _Unwind_Resume(a1);
}

id sub_22109DAA8(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_221491A58(a2, a3, *(a1 + 32), *(a1 + 40));

  return v3;
}

uint64_t sub_22109DBB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_22109E458(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1 + 32) + 288) = 0;
  v6 = objc_msgSend_tableName(*(a1 + 40), a2, a3, a4, a5);
  v10 = objc_msgSend_stringByAppendingString_(v6, v7, @" as Pivot Source Table", v8, v9);
  objc_msgSend_setTableName_(*(a1 + 32), v11, v10, v12, v13);

  objc_msgSend_setShouldUseWideRows_(*(a1 + 32), v14, 1, v15, v16);
  *(*(a1 + 32) + 188) = *(a1 + 72);
  *(*(a1 + 32) + 184) = 0;
  *(*(a1 + 32) + 192) = 0;
  v21 = objc_msgSend_tableStylePreset(*(a1 + 40), v17, v18, v19, v20);

  if (!v21)
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 272);
    *(v22 + 272) = 0;
  }

  v24 = [TSTStrokeSidecar alloc];
  v28 = objc_msgSend_initForUpgradeWithTableModel_(v24, v25, *(a1 + 32), v26, v27);
  v29 = *(a1 + 32);
  v30 = *(v29 + 80);
  *(v29 + 80) = v28;

  v31 = *(a1 + 32);
  objc_msgSend_defaultRowHeight(*(a1 + 40), v32, v33, v34, v35);
  objc_msgSend_setDefaultRowHeight_(v31, v36, v37, v38, v39);
  v40 = *(a1 + 32);
  objc_msgSend_defaultColumnWidth(*(a1 + 40), v41, v42, v43, v44);
  objc_msgSend_setDefaultColumnWidth_(v40, v45, v46, v47, v48);
  result = objc_msgSend_p_updateMergesAndCellsAsPivotDataWithSourceModel_sourceRegion_sourceBodyRegion_(*(a1 + 32), v49, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v54 = *(a1 + 64);
  if (v54)
  {
    v55 = *(*(a1 + 32) + 624);

    return objc_msgSend_setCalcEngine_(v55, v51, v54, v52, v53);
  }

  return result;
}

void sub_22109E638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTTableModel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_22109E74C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v7 = v3;
  if (v3)
  {
    objc_msgSend_removeValueForProperty_(v3, v4, 901, v5, v6);
    objc_msgSend_removeValueForProperty_(v7, v8, 902, v9, v10);
    objc_msgSend_removeValueForProperty_(v7, v11, 899, v12, v13);
    objc_msgSend_removeValueForProperty_(v7, v14, 900, v15, v16);
  }

  return v2;
}

void sub_22109EBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22109EBF4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

id sub_22109EF40(uint64_t a1)
{
  v2 = [TSTCellMap alloc];
  v7 = objc_msgSend_context(*(a1 + 32), v3, v4, v5, v6);
  v10 = objc_msgSend_initWithContext_uidBased_(v2, v8, v7, 0, v9);

  return v10;
}

uint64_t sub_22109EFBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_cell(v5, v7, v8, v9, v10);
  v16 = v11;
  if (v11 && objc_msgSend_valueType(v11, v12, v13, v14, v15) && objc_msgSend_valueType(v16, v17, v18, v19, v20) != 8 && (objc_msgSend_isEmpty(v16, v21, v22, v23, v24) & 1) == 0)
  {
    v29 = objc_msgSend_cellID(v5, v25, v26, v27, v28);
    v33 = v29;
    if (*(a1 + 48) == 1)
    {
      LOWORD(v34) = objc_msgSend_mappedIndexForSourceIndex_(*(a1 + 32), v30, WORD2(v29), v31, v32);
    }

    else
    {
      v34 = HIDWORD(v29);
    }

    v35 = v33;
    if (*(a1 + 49) == 1)
    {
      v35 = objc_msgSend_mappedIndexForSourceIndex_(*(a1 + 40), v30, v33, v31, v32);
    }

    objc_msgSend_addCell_andCellID_(v6, v30, v16, (v34 << 32) | v33 & 0xFFFF000000000000 | v35, v32);
  }

  return 0;
}

void sub_22109F0E0(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_appendCellMap_precopied_(*(a1 + 32), v5, *(*(&v10 + 1) + 8 * v9++), 1, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

uint64_t sub_22109F7B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22109F7CC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_clear(*(*(a1[6] + 8) + 40), a2, a3, a4, a5);
  objc_msgSend_inflateFromStorageRef_dataStore_suppressingTransmutation_(*(*(a1[6] + 8) + 40), v8, a2, *(a1[4] + 224), 1);
  v11 = a1[5];
  v12 = *(*(a1[6] + 8) + 40);

  return objc_msgSend_addCell_andCellID_(v11, v9, v12, a3, v10);
}

void sub_2210A0FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  sub_22107C860(&a71, a72);
  _Block_object_dispose((v73 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2210A124C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
  v8 = *(a1 + 40);

  return MEMORY[0x2821F9670](v8, sel_showRowAtIndex_forAction_, a2, 1, v7);
}

uint64_t sub_2210A1294(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
  v8 = *(a1 + 40);

  return MEMORY[0x2821F9670](v8, sel_showColumnAtIndex_forAction_, v5, 1, v7);
}

uint64_t sub_2210A12F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v226 = v5;
  v11 = objc_msgSend_cellID(v5, v7, v8, v9, v10);
  v237 = v11;
  v16 = objc_msgSend_cell(v5, v12, v13, v14, v15);
  v21 = v16;
  if (*(a1 + 72) >= *MEMORY[0x277D80968])
  {
    v37 = 0;
    goto LABEL_19;
  }

  if (objc_msgSend_valueType(v16, v17, v18, v19, v20) != 9)
  {
    v37 = 0;
    goto LABEL_12;
  }

  v26 = objc_msgSend_richTextValue(v21, v22, v23, v24, v25);
  v31 = v26;
  if (!v26)
  {
    objc_msgSend_clearValue(v21, v27, v28, v29, v30);
    objc_msgSend_setCurrentFormat_isExplicit_(v21, v38, 0, 0, v39);
LABEL_10:
    v37 = 1;
    goto LABEL_11;
  }

  v32 = objc_msgSend_documentRoot(v26, v27, v28, v29, v30);

  if (!v32)
  {
    v40 = objc_msgSend_documentRoot(*(a1 + 32), v33, v34, v35, v36);
    objc_sync_enter(v40);
    objc_msgSend_willBeRemovedFromDocumentRoot_(v31, v41, v40, v42, v43);
    objc_msgSend_wasRemovedFromDocumentRoot_(v31, v44, v40, v45, v46);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v31, v47, v40, 0, v48);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v31, v49, v40, 0, v50);
    objc_sync_exit(v40);

    goto LABEL_10;
  }

  v37 = 0;
LABEL_11:

LABEL_12:
  if (objc_msgSend_hasMismatchedFormatAndValue(v21, v22, v23, v24, v25))
  {
    v55 = objc_msgSend_formatType(v21, v51, v52, v53, v54);
    if (v55 == 263)
    {
      objc_msgSend_setBoolValue_(v21, v56, 0, v58, v59);
    }

    else if (v55 == 267)
    {
      objc_msgSend_setNumberDoubleValue_(v21, v56, v57, v58, v59, 0.0);
    }

    else
    {
      objc_msgSend_setDefaultFormatForValue(v21, v56, v57, v58, v59);
    }

    v37 = 1;
  }

LABEL_19:
  v233 = 0;
  v234 = &v233;
  v235 = 0x2020000000;
  v236 = 0;
  v230[0] = MEMORY[0x277D85DD0];
  v230[1] = 3221225472;
  v230[2] = sub_2210A1B88;
  v230[3] = &unk_27845DE88;
  v60 = v21;
  v231 = v60;
  v232 = &v233;
  objc_msgSend_processCustomFormatsWithBlock_(v60, v61, v230, v62, v63);
  v64 = *(v234 + 24);
  if (objc_msgSend_hasMismatchedFormatAndValue(v60, v65, v66, v67, v68))
  {
    objc_msgSend_setDefaultFormatForValue(v60, v69, v70, v71, v72);
    v73 = 1;
  }

  else
  {
    v73 = v37 | v64;
  }

  v74 = *(a1 + 72);
  if (v74 <= 0x2000200000002)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      v75 = objc_msgSend_removeControlCellSpec(v60, v69, v70, v71, v72);
      v73 |= objc_msgSend_removeControlFormatSpares(v60, v76, v77, v78, v79) | v75;
    }

    v84 = objc_msgSend_cellStyle(v60, v69, v70, v71, v72);
    if (!v84)
    {
LABEL_35:
      v114 = objc_msgSend_textStyle(v60, v80, v81, v82, v83);
      if (!v114)
      {
LABEL_45:

        v74 = *(a1 + 72);
        goto LABEL_46;
      }

      LOBYTE(v227._decimal.w[0]) = 0;
      v119 = objc_msgSend_textStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(*(a1 + 32), v112, v11, &v227, v113);
      if (v114 == v119)
      {
        objc_msgSend_setTextStyle_(v60, v115, 0, v117, v118);
      }

      else
      {
        if (!objc_msgSend_isVariation(v114, v115, v116, v117, v118))
        {
          goto LABEL_44;
        }

        v124 = objc_msgSend_parent(v114, v120, v121, v122, v123);

        if (v124)
        {
          goto LABEL_44;
        }

        if ((v227._decimal.w[0] & 1) == 0)
        {
          v128 = objc_msgSend_defaultTextStyleForBaseCellCoord_(*(a1 + 32), v125, v11, v126, v127);

          v119 = v128;
        }

        v129 = *(a1 + 40);
        objc_sync_enter(v129);
        v130 = *(a1 + 40);
        v135 = objc_msgSend_propertyMap(v114, v131, v132, v133, v134);
        v138 = objc_msgSend_variationOfStyle_propertyMap_(v130, v136, v119, v135, v137);

        objc_msgSend_setTextStyle_(v60, v139, v138, v140, v141);
        objc_sync_exit(v129);
      }

      v73 = 1;
LABEL_44:

      goto LABEL_45;
    }

    LOBYTE(v227._decimal.w[0]) = 0;
    v89 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(*(a1 + 32), v80, v11, &v227, v83);
    if (v84 == v89)
    {
      objc_msgSend_setCellStyle_(v60, v85, 0, v87, v88);
    }

    else
    {
      if (!objc_msgSend_isVariation(v84, v85, v86, v87, v88))
      {
        goto LABEL_34;
      }

      v94 = objc_msgSend_parent(v84, v90, v91, v92, v93);

      if (v94)
      {
        goto LABEL_34;
      }

      if ((v227._decimal.w[0] & 1) == 0)
      {
        v98 = objc_msgSend_defaultCellStyleForBaseCellCoord_(*(a1 + 32), v95, v11, v96, v97);

        v89 = v98;
      }

      v99 = *(a1 + 40);
      objc_sync_enter(v99);
      v100 = *(a1 + 40);
      v105 = objc_msgSend_propertyMap(v84, v101, v102, v103, v104);
      v108 = objc_msgSend_variationOfStyle_propertyMap_(v100, v106, v89, v105, v107);

      objc_msgSend_setCellStyle_(v60, v109, v108, v110, v111);
      objc_sync_exit(v99);
    }

    v73 = 1;
LABEL_34:

    goto LABEL_35;
  }

LABEL_46:
  if (v74 > 0x4000100000002)
  {
    goto LABEL_57;
  }

  if (objc_msgSend_valueType(v60, v69, v70, v71, v72) == 2)
  {
    v227._decimal.w[0] = objc_msgSend_numberDecimalValue(v60, v142, v143, v144, v145);
    v227._decimal.w[1] = v146;
    if (TSUDecimal::reinterpretDoubleAsDecimal(&v227))
    {
      objc_msgSend_setNumberDecimalValue_(v60, v147, v227._decimal.w[0], v227._decimal.w[1], v150);
LABEL_53:
      v73 = 1;
    }
  }

  else if (objc_msgSend_valueType(v60, v142, v143, v144, v145) == 10)
  {
    v227._decimal.w[0] = objc_msgSend_currencyDecimalValue(v60, v147, v148, v149, v150);
    v227._decimal.w[1] = v151;
    if (TSUDecimal::reinterpretDoubleAsDecimal(&v227))
    {
      objc_msgSend_setCurrencyDecimalValue_(v60, v147, v227._decimal.w[0], v227._decimal.w[1], v150);
      goto LABEL_53;
    }
  }

  if ((objc_msgSend_hasFormula(v60, v147, v148, v149, v150) & 1) != 0 || objc_msgSend_hasConditionalStyle(v60, v69, v70, v71, v72))
  {
    v73 = 1;
  }

LABEL_57:
  v229 = 0;
  v152 = *(a1 + 72);
  if (v152 < *(a1 + 80))
  {
    if (objc_msgSend_hasFormula(v60, v69, v70, v71, v72))
    {
      v153 = *(a1 + 48);
      v154 = objc_msgSend_formulaObject(v60, v69, v70, v71, v72);
      v159 = objc_msgSend_tableUID(*(a1 + 32), v155, v156, v157, v158);
      v227._decimal.w[0] = v237;
      v227._decimal.w[1] = v159;
      v228 = v160;
      objc_msgSend_addFunctionUsesInFormula_atCellRef_outContainsVolatileFunction_(v153, v160, v154, &v227, &v229);

      if ((objc_msgSend_cellFlags(v60, v161, v162, v163, v164) & 0x200) != 0)
      {
        TSCECellCoordSet::addCellCoord((*(*(a1 + 64) + 8) + 48), &v237);
      }
    }

    v152 = *(a1 + 72);
  }

  if (v152 <= 0xA000000000002)
  {
    if (objc_msgSend_hasFormula(v60, v69, v70, v71, v72))
    {
      v169 = objc_msgSend_formulaObject(v60, v165, v166, v167, v168);
      v172 = objc_msgSend_copyByClearingUids_containingTableUID_(v169, v170, *(a1 + 56), *(a1 + 32) + 744, v171);

      v177 = objc_msgSend_formulaObject(v60, v173, v174, v175, v176);
      v178 = v229;

      if (v172 != v177 || (v178 & 1) != 0)
      {
        objc_msgSend_setFormulaObject_(v60, v179, v172, v180, v181);
        v73 = 1;
      }
    }

    if (objc_msgSend_hasConditionalStyle(v60, v165, v166, v167, v168))
    {
      v182 = objc_msgSend_conditionalStyle(v60, v69, v70, v71, v72);
      v185 = objc_msgSend_copyByClearingUids_containingTableUID_(v182, v183, *(a1 + 56), *(a1 + 32) + 744, v184);

      v190 = objc_msgSend_conditionalStyle(v60, v186, v187, v188, v189);

      if (v185 != v190)
      {
        objc_msgSend_setConditionalStyle_(v60, v191, v185, v192, v193);
        v73 = 1;
      }
    }
  }

  if ((objc_msgSend_validateAndRepair(v60, v69, v70, v71, v72) | v73))
  {
    if (objc_msgSend_isEmpty(v60, v194, v195, v196, v197))
    {
      v202 = objc_msgSend_emptyCellCount(v6, v198, v199, v200, v201);
      objc_msgSend_setEmptyCellCount_(v6, v203, v202 + 1, v204, v205);
    }

    v206 = objc_msgSend_copy(v60, v198, v199, v200, v201);
    v211 = objc_msgSend_sourceRectOrigin(v6, v207, v208, v209, v210);
    row = v237.row;
    column = v237.column;
    objc_msgSend_prepareToAddCells(v6, v214, v215, v216, v217);
    v222 = objc_msgSend_sparseCellList(v6, v218, v219, v220, v221);
    objc_msgSend_addCell_atUidOffset_(v222, v223, v206, (column - WORD2(v211)) | ((row - v211) << 32), v224);
  }

  _Block_object_dispose(&v233, 8);
  return 0;
}

void sub_2210A1A38(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, ...)
{
  va_start(va, a14);

  objc_sync_exit(v14);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2210A1B88(uint64_t a1, void *a2)
{
  v26 = a2;
  v7 = objc_msgSend_customFormat(v26, v3, v4, v5, v6);

  if (!v7)
  {
    v12 = objc_msgSend_formatType(*(a1 + 32), v8, v9, v10, v11);
    if (v12 == objc_msgSend_formatType(v26, v13, v14, v15, v16) && objc_msgSend_hasValue(*(a1 + 32), v17, v18, v19, v20))
    {
      objc_msgSend_setDefaultFormatForValue(*(a1 + 32), v17, v18, v19, v20);
    }

    else
    {
      v21 = *(a1 + 32);
      v22 = objc_msgSend_formatType(v26, v17, v18, v19, v20);
      objc_msgSend_clearFormatOfType_(v21, v23, v22, v24, v25);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id sub_2210A1C50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_columnRowUIDMap(*(a1 + 32), a2, a3, a4, a5);
  v9 = objc_msgSend_perChunkHelperWithSourceRect_columnRowUIDMap_(TSTTableModelCellModificationHelper, v8, a2, a3, v7);

  return v9;
}

void sub_2210A1CD8(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a2;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v24, v28, 16);
  if (v9)
  {
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_msgSend_sparseCellList(v12, v5, v6, v7, v8, v24);
        v14 = v13 == 0;

        if (!v14)
        {
          v19 = *(a1 + 32);
          v20 = objc_msgSend_sparseCellList(v12, v15, v16, v17, v18);
          objc_msgSend_appendCellList_(v19, v21, v20, v22, v23);
        }

        *(*(*(a1 + 40) + 8) + 24) -= objc_msgSend_emptyCellCount(v12, v15, v16, v17, v18);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v24, v28, 16);
    }

    while (v9);
  }
}

void sub_2210A450C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 696), a2);
  v4 = a2;
  *(*(a1 + 32) + 178) = 1;
}

uint64_t sub_2210A4594(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (!v6[85])
  {
    v7 = [TSTColumnRowUIDMap alloc];
    v12 = objc_msgSend_context(*(a1 + 32), v8, v9, v10, v11);
    v17 = objc_msgSend_nsTableUID(*(a1 + 32), v13, v14, v15, v16);
    v19 = objc_msgSend_initWithContext_tableUUID_numberOfRows_numberOfColumns_(v7, v18, v12, v17, *(a1 + 40), *(a1 + 44));
    v20 = *(a1 + 32);
    v21 = *(v20 + 680);
    *(v20 + 680) = v19;

    v6 = *(a1 + 32);
  }

  v22 = objc_msgSend_documentRoot(v6, a2, a3, a4, a5);
  v27 = objc_msgSend_calculationEngine(v22, v23, v24, v25, v26);
  *(*(a1 + 32) + 216) = v27;

  objc_msgSend_setTableModelDuringUnarchive_(*(*(a1 + 32) + 632), v28, *(a1 + 32), v29, v30);
  v31 = *(a1 + 32);
  if (v31[47] >= objc_msgSend_numberOfRows(v31, v32, v33, v34, v35))
  {
    *(*(a1 + 32) + 188) = objc_msgSend_numberOfRows(*(a1 + 32), v36, v37, v38, v39) - 1;
  }

  v40 = *(a1 + 32);
  if (v40[92] >= objc_msgSend_numberOfColumns(v40, v36, v37, v38, v39))
  {
    *(*(a1 + 32) + 184) = objc_msgSend_numberOfColumns(*(a1 + 32), v41, v42, v43, v44) - 1;
  }

  v45 = *(a1 + 32);
  v46 = objc_msgSend_numberOfRows(v45, v41, v42, v43, v44);
  v50 = *(a1 + 32);
  if (v45[48] >= (v46 - *(v50 + 188)))
  {
    *(*(a1 + 32) + 192) = objc_msgSend_numberOfRows(*(a1 + 32), v47, v50, v48, v49) + ~*(*(a1 + 32) + 188);
    v50 = *(a1 + 32);
  }

  v51 = *(v50 + 624);
  if (v51)
  {
    objc_msgSend_unpackAfterUnarchive_(v51, v47, v50, v48, v49);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v50, v47, v50, v48, v49);
    v56 = [TSTCategoryOwner alloc];
    v60 = objc_msgSend_initWithBaseTableModel_(v56, v57, *(a1 + 32), v58, v59);
    v61 = *(a1 + 32);
    v62 = *(v61 + 624);
    *(v61 + 624) = v60;
  }

  objc_msgSend_p_upgradeMerges(*(a1 + 32), v52, v53, v54, v55);
  result = objc_msgSend_updateForTableSize_(*(*(a1 + 32) + 80), v63, *(a1 + 44) | (*(a1 + 40) << 32), v64, v65);
  if ((*(a1 + 48) & 1) == 0)
  {
    v70 = *(a1 + 32);

    return objc_msgSend_validateTableStylesInSameStylesheetExpectingDocSS_(v70, v67, 0, v68, v69);
  }

  return result;
}

void sub_2210A9828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2210AAE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2210AAE6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_cellExistsAtBaseCellCoord_(*(a1 + 32), a2, a2, a4, a5);
  if (a3 && (result & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = *(a1 + 64);
  if (v10 > v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1001;
    *a5 = 1;
    v10 = *(*(*(a1 + 40) + 8) + 24);
  }

  if (*(a1 + 56) + ~a4 < v11 - v10)
  {
    *a5 = 1;
  }

  return result;
}

void sub_2210AD254(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  objc_msgSend_heightOfRowAtIndex_isDefault_(*(a1 + 40), a2, a2, 0, a5);
  v14 = objc_msgSend_numberWithDouble_(v5, v7, v8, v9, v10);
  objc_msgSend_addObject_(v6, v11, v14, v12, v13);
}

void sub_2210AD3C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  objc_msgSend_widthOfColumnAtIndex_isDefault_(*(a1 + 40), a2, a2, 0, a5);
  v14 = objc_msgSend_numberWithDouble_(v5, v7, v8, v9, v10);
  objc_msgSend_addObject_(v6, v11, v14, v12, v13);
}

void sub_2210AD4BC(uint64_t a1, void *a2, unsigned __int16 a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v14 = v5;
  objc_msgSend_tsu_CGFloatValue(v5, v7, v8, v9, v10);
  objc_msgSend_setWidth_ofColumnAtIndex_(v6, v11, a3, v12, v13);
}

void sub_2210AD5A4(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v14 = v5;
  objc_msgSend_tsu_CGFloatValue(v5, v7, v8, v9, v10);
  objc_msgSend_setHeight_ofRowAtIndex_(v6, v11, a3, v12, v13);
}

void sub_2210AE9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210AEA44(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >= 0xF4240)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  if (&a2[a1] >= 0xF4241)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4, a5);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  return a1;
}

void sub_2210AEE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2210AEE74(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = &a2[a1];
  if (a1 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0)
  {
    if (a1 >= 0x3E8)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4, a5);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v12, v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 373, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    }

    if (v6 >= 0x3EA)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4, a5);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 374, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }
  }

  return v5 << 32;
}

uint64_t sub_2210AF174(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v16[0] = sub_2210AEA44(a2, a3, a3, a4, a5);
  v16[1] = v6;
  v15[0] = objc_msgSend_range(*(a1 + 32), v6, v7, v8, v9);
  v15[1] = v10;
  v11 = sub_2210AFE68(v16, v15);
  return objc_msgSend__removeAnnotationsFromDeleteRange_(*(a1 + 32), v12, v11, v12, v13);
}

uint64_t sub_2210AF24C(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v16[0] = sub_2210AEE74(a2, a3, a3, a4, a5);
  v16[1] = v6;
  v15[0] = objc_msgSend_range(*(a1 + 32), v6, v7, v8, v9);
  v15[1] = v10;
  v11 = sub_2210AFE68(v16, v15);
  return objc_msgSend__removeAnnotationsFromDeleteRange_(*(a1 + 32), v12, v11, v12, v13);
}

uint64_t sub_2210AF8E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_headerInfo_hidingActionForRowAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  if (result)
  {
    v10 = result;
    v11 = *(a1 + 40);

    return objc_msgSend_hideRowAtIndex_forAction_(v11, v8, a2, v10, v9);
  }

  return result;
}

uint64_t sub_2210AF940(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  result = objc_msgSend_headerInfo_hidingActionForColumnAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  if (result)
  {
    v10 = result;
    v11 = *(a1 + 40);

    return objc_msgSend_hideColumnAtIndex_forAction_(v11, v8, v5, v10, v9);
  }

  return result;
}

void sub_2210AFDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2210AFE2C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2210AFE50(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

unint64_t sub_2210AFE68(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = 0x7FFFFFFF;
  v4 = *a1 == 0x7FFFFFFF || (*a1 & 0xFFFF00000000) == 0x7FFF00000000;
  if (v4 || ((v5 = a1[1], HIDWORD(v5)) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = 0;
    v8 = 0x7FFFLL;
  }

  else
  {
    v10 = *a2;
    v8 = 0x7FFFLL;
    if (*a2 == 0x7FFFFFFF)
    {
      goto LABEL_54;
    }

    v7 = 0;
    if ((v10 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return v7 | (v8 << 32) | v3;
    }

    v11 = a2[1];
    v8 = 0x7FFFLL;
    if (!HIDWORD(v11))
    {
LABEL_54:
      v7 = 0;
      return v7 | (v8 << 32) | v3;
    }

    v7 = 0;
    if (v11)
    {
      v3 = *MEMORY[0x277D813C8];
      v8 = *(MEMORY[0x277D813C8] + 4);
      v12 = HIDWORD(v2);
      v13 = HIDWORD(v10);
      if (WORD2(v2) <= WORD2(v10))
      {
        v14 = WORD2(v10);
      }

      else
      {
        v14 = WORD2(v2);
      }

      v15 = v2 + HIDWORD(v5) - 1;
      if (v10 == 0x7FFFFFFF)
      {
        v16 = 0;
      }

      else
      {
        v16 = *a2;
      }

      if (v10 == 0x7FFFFFFF)
      {
        v17 = 0x7FFFFFFF;
      }

      else
      {
        v17 = v10 + HIDWORD(v11) - 1;
      }

      if (v2 == 0x7FFFFFFF)
      {
        v18 = 0;
      }

      else
      {
        v18 = v2;
      }

      if (v2 == 0x7FFFFFFF)
      {
        v15 = 0x7FFFFFFF;
      }

      if (v18 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v18;
      }

      if (WORD2(v2) == 0x7FFF || v5 == 0)
      {
        v21 = 0x7FFF;
      }

      else
      {
        v21 = v5 + v12 - 1;
      }

      if (WORD2(v10) == 0x7FFF || v11 == 0)
      {
        LOWORD(v11) = 0x7FFF;
      }

      else
      {
        LOWORD(v11) = v11 + v13 - 1;
      }

      if (v21 >= v11)
      {
        LODWORD(v11) = v11;
      }

      else
      {
        LODWORD(v11) = v21;
      }

      if (v15 >= v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = v15;
      }

      if (v23 < v19 || v14 > v11)
      {
        v7 = *(MEMORY[0x277D813C8] + 6) << 48;
      }

      else
      {
        v7 = 0;
        v3 = v19;
        v8 = v14;
      }
    }
  }

  return v7 | (v8 << 32) | v3;
}

void sub_2210AFFEC(uint64_t a1, void *a2)
{
  v32 = a2;
  v7 = objc_msgSend_cell(v32, v3, v4, v5, v6);
  hasValueOrCommentBreakingMergeFragment = objc_msgSend_hasValueOrCommentBreakingMergeFragment(v7, v8, v9, v10, v11);

  if (hasValueOrCommentBreakingMergeFragment)
  {
    v17 = *(*(a1 + 32) + 8);
    v18 = objc_msgSend_cellID(v32, v13, v14, v15, v16);
    v20 = v17[7];
    v19 = v17[8];
    if (v20 >= v19)
    {
      v22 = v17[6];
      v23 = (v20 - v22) >> 3;
      if ((v23 + 1) >> 61)
      {
        sub_22107C148();
      }

      v24 = v19 - v22;
      v25 = v24 >> 2;
      if (v24 >> 2 <= (v23 + 1))
      {
        v25 = v23 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        sub_2210874C4((v17 + 6), v26);
      }

      v27 = (8 * v23);
      *v27 = v18;
      v21 = 8 * v23 + 8;
      v28 = v17[6];
      v29 = v17[7] - v28;
      v30 = v27 - v29;
      memcpy(v27 - v29, v28, v29);
      v31 = v17[6];
      v17[6] = v30;
      v17[7] = v21;
      v17[8] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v20 = v18;
      v21 = (v20 + 1);
    }

    v17[7] = v21;
  }
}

void sub_2210B1628(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2210B25EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  *(v65 - 104) = v64;
  sub_22107C2C0((v65 - 104));

  *(v65 - 104) = v63;
  sub_22107C2C0((v65 - 104));

  *(v65 - 104) = &a38;
  sub_22107C2C0((v65 - 104));

  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose((v65 - 256), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2210B26E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
}

id sub_2210B2738(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v19 = 0;
  if (objc_msgSend_isSpillFormula(v5, v6, v7, v8, v9))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v11 = v5;
  }

  else
  {
    v12 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDs_rewriteContext_outError_(v5, v10, *(a1 + 56), *(*(a1 + 48) + 8) + 48, &v19);
    v16 = v12;
    if (v19 == 1)
    {
      objc_msgSend_addIndex_(*(a1 + 32), v13, a3, v14, v15);
    }

    else
    {
      v17 = v12;

      v5 = v17;
    }

    v11 = v5;
  }

  return v11;
}

id sub_2210B2828(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v14 = 0;
  v7 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDsWithMap_rewriteContext_error_(v5, v6, *(a1 + 48), *(*(a1 + 40) + 8) + 48, &v14);
  v11 = v7;
  if (v14 == 1)
  {
    objc_msgSend_addIndex_(*(a1 + 32), v8, a3, v9, v10);
  }

  else
  {
    v12 = v7;

    v5 = v12;
  }

  return v5;
}

void sub_2210B28E0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2210BC0EC(a1, v5);
  }
}

uint64_t sub_2210B2968(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cell(v3, v4, v5, v6, v7);
  v71 = objc_msgSend_cellID(v3, v9, v10, v11, v12);
  if (objc_msgSend_hasFormula(v8, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_formulaObject(v8, v17, v18, v19, v20);
    v26 = objc_msgSend_formulaID(v8, v22, v23, v24, v25);
    if (v26 && objc_msgSend_containsIndex_(*(a1 + 32), v27, v26, v29, v30))
    {
      if (v21)
      {
        v70 = 0;
        v31 = *(*(a1 + 48) + 8);
        *&v69.var0 = *(v31 + 48);
        sub_2212C7250(&v69.var2);
        TSCEFormulaRewriteContextRecord::operator=(&v69.var2, v31 + 64);
        TSCEFormulaRewriteContext::setContainingCellCoord(&v69, &v71);
        v33 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v21, v32, *(a1 + 72), &v69, &v70);
        v38 = v33;
        if (v70 == 1 && *(a1 + 104) == 1)
        {
          objc_msgSend_bakeFormulaToValue(v8, v34, v35, v36, v37, *&v69.var0);
          objc_msgSend_addIndex_(*(*(a1 + 80) + 8 * v71.row), v39, v71.column, v40, v41);
        }

        else
        {
          if (objc_msgSend_isEqualToFormula_(v33, v34, v21, v36, v37, *&v69.var0))
          {
            v42 = 0;
LABEL_16:

            goto LABEL_17;
          }

          objc_msgSend_setFormulaObject_(v8, v43, v38, v44, v45);
        }

        v42 = 1;
        goto LABEL_16;
      }
    }

    else if (objc_msgSend_isSpillFormula(v21, v27, v28, v29, v30))
    {
      v42 = 1;
      *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_17:

      goto LABEL_18;
    }

    v42 = 0;
    goto LABEL_17;
  }

  v42 = 0;
LABEL_18:
  if (objc_msgSend_hasConditionalStyle(v8, v17, v18, v19, v20))
  {
    v50 = objc_msgSend_conditionalStyleID(v8, v46, v47, v48, v49);
    if (v50)
    {
      if (objc_msgSend_containsIndex_(*(a1 + 40), v51, v50, v52, v53))
      {
        v58 = objc_msgSend_conditionalStyle(v8, v54, v55, v56, v57);
        if (v58)
        {
          v70 = 0;
          v59 = *(*(a1 + 64) + 8);
          *&v69.var0 = *(v59 + 48);
          sub_2212C7250(&v69.var2);
          TSCEFormulaRewriteContextRecord::operator=(&v69.var2, v59 + 64);
          TSCEFormulaRewriteContext::setContainingCellCoord(&v69, &v71);
          v64 = objc_msgSend_copyByRemappingOwnerUIDsWithMap_rewriteContext_error_(v58, v60, *(a1 + 72), &v69, &v70);
          if (v64 != v58)
          {
            objc_msgSend_setConditionalStyle_(v8, v61, v64, v62, v63);
            objc_msgSend_setConditionalStyleAppliedRule_(v8, v65, 15, v66, v67);
            v42 = 1;
          }
        }
      }
    }
  }

  return v42;
}

uint64_t sub_2210B2C14(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v2 = a1 + 80;
  *(v2 + 16) = 0;
  return sub_2210BC1EC(v2, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
}

void sub_2210B2C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = a3;
  if (objc_msgSend_hasFormula(v33, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_formulaObject(v33, v8, v9, v10, v11);
    if (objc_msgSend_isSpillFormula(v12, v13, v14, v15, v16))
    {
      v21 = objc_msgSend_spillOrigin(v12, v17, v18, v19, v20);
      if (objc_msgSend_containsIndex_(*(*(a1 + 32) + 8 * v21), v22, WORD2(v21), v23, v24))
      {
        objc_msgSend_bakeFormulaToValue(v33, v25, v26, v27, v28);
      }

      else
      {
        objc_msgSend_setFormulaObject_(v33, v25, 0, v27, v28);
        objc_msgSend_clearValue(v33, v29, v30, v31, v32);
      }
    }
  }
}

uint64_t sub_2210B2D3C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return sub_2210BC1EC(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

uint64_t sub_2210B2E78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cell(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_removeCustomFormatsWithIDs_(v6, v7, *(a1 + 32), v8, v9);

  return v10;
}

void sub_2210B35AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose((v12 - 256), 8);

  _Unwind_Resume(a1);
}

id sub_2210B36BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByClearingUids_containingTableUID_(a2, a2, *(a1 + 32), a1 + 40, a5);

  return v5;
}

id sub_2210B36F0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if ((objc_msgSend_translationFlags(v5, v6, v7, v8, v9) & 6) == 0 && objc_msgSend_hasBadRefWithUidInfo(v5, v10, v11, v12, v13))
  {
    objc_msgSend_addIndex_(*(a1 + 32), v14, a3, v15, v16);
  }

  return v5;
}

id sub_2210B3770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13[0] = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 40), v5, v6, v7, v8);
  v13[1] = v9;
  v11 = objc_msgSend_copyByClearingUids_containingTableUID_(v3, v9, v4, v13, v10);

  return v11;
}

id sub_2210B37F0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (objc_msgSend_hasBadRefWithUidInfo(v5, v6, v7, v8, v9))
  {
    objc_msgSend_addIndex_(*(a1 + 32), v10, a3, v11, v12);
  }

  return v5;
}

uint64_t sub_2210B385C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cell(v3, v4, v5, v6, v7);
  if (!objc_msgSend_hasFormula(v8, v9, v10, v11, v12))
  {
    v38 = 0;
    goto LABEL_20;
  }

  v17 = objc_msgSend_formulaID(v8, v13, v14, v15, v16);
  v26 = objc_msgSend_formulaObject(v8, v18, v19, v20, v21);
  if ((*(a1 + 88) & 1) == 0 && (*(a1 + 89) & 1) == 0)
  {
    v39 = objc_msgSend_cellID(v3, v22, v23, v24, v25);
    v44 = objc_msgSend_tableUID(*(a1 + 32), v40, v41, v42, v43);
    v167.var0 = v39;
    v167.var1 = v44;
    v167.var2.var0.var0.coordinate = v45;
    sub_2212C7294(&v173, &v167);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v172, *(a1 + 40), &v173);
    v50 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v46, v47, v48, v49);
    v55 = objc_msgSend_supportsCategorization(v50, v51, v52, v53, v54);

    v60 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v56, v57, v58, v59);
    v65 = objc_msgSend_supportsPivotTables(v60, v61, v62, v63, v64);

    if ((v55 & 1) == 0)
    {
      v70 = objc_msgSend_copyByConvertingColonTractToColon_breakUpIntoRefs_(v26, v66, &v172, 1, v69);

      v26 = v70;
    }

    v71 = objc_msgSend_const_astNodeArray(v26, v66, v67, v68, v69);
    v72 = *(*(a1 + 64) + 8);
    v73 = *(a1 + 32);
    v166 = 0uLL;
    sub_22134BFF8(&v167, v71, (v72 + 48), (v73 + 776), &v166);
    v78 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v74, v75, v76, v77);
    v168 = objc_msgSend_supportsCategorization(v78, v79, v80, v81, v82) ^ 1;

    TSCEASTStreamIterator::rewrite(&v167, v83, v84, v85, v86);
    v88 = v169;
    if (((v169 | v55) & 1) == 0)
    {
      v88 = v170;
    }

    if (v88)
    {
      TSCEASTStreamIterator::~TSCEASTStreamIterator(&v167, v87);
    }

    else
    {
      v90 = v171;
      TSCEASTStreamIterator::~TSCEASTStreamIterator(&v167, v87);
      if (v65 & 1 | ((v90 & 1) == 0))
      {
        goto LABEL_4;
      }
    }

    if (objc_msgSend_hasFormulaEvaluationError(v8, v22, v89, v24, v25))
    {
      objc_msgSend_clearValue(v8, v91, v92, v93, v94);
    }

    objc_msgSend_setCellSpec_(v8, v91, 0, v93, v94);
    goto LABEL_18;
  }

LABEL_4:
  if (objc_msgSend_containsIndex_(*(a1 + 48), v22, v17, v24, v25))
  {
    v27 = *(*(a1 + 72) + 8);
    *&v167.var0 = *(v27 + 48);
    sub_2212C7250(&v167.var2);
    TSCEFormulaRewriteContextRecord::operator=(&v167.var2, v27 + 64);
    v172.var0 = objc_msgSend_cellID(v3, v28, v29, v30, v31);
    TSCEFormulaRewriteContext::setContainingCellCoord(&v167, &v172);
    v34 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(v26, v32, &v167, 0, v33);
    objc_msgSend_setFormulaObject_(v8, v35, v34, v36, v37);

LABEL_18:
    v38 = 1;
    goto LABEL_19;
  }

  v38 = 0;
LABEL_19:

LABEL_20:
  if (objc_msgSend_hasConditionalStyle(v8, v13, v14, v15, v16))
  {
    v99 = objc_msgSend_conditionalStyleID(v8, v95, v96, v97, v98);
    v104 = objc_msgSend_conditionalStyle(v8, v100, v101, v102, v103);
    v105 = *(*(a1 + 80) + 8);
    *&v167.var0 = *(v105 + 48);
    sub_2212C7250(&v167.var2);
    TSCEFormulaRewriteContextRecord::operator=(&v167.var2, v105 + 64);
    v172.var0 = objc_msgSend_cellID(v3, v106, v107, v108, v109);
    TSCEFormulaRewriteContext::setContainingCellCoord(&v167, &v172);
    v112 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v104, v110, &v167, &unk_2834A16C8, v111);

    v117 = objc_msgSend_conditionalStyle(v8, v113, v114, v115, v116);

    if (v112 != v117)
    {
      objc_msgSend_setConditionalStyle_(v8, v118, v112, v119, v120);
      objc_msgSend_setConditionalStyleAppliedRule_(v8, v121, 15, v122, v123);
      v38 = 1;
    }

    if (objc_msgSend_containsIndex_(*(a1 + 56), v118, v99, v119, v120))
    {
      v172.var0 = objc_msgSend_cellID(v3, v124, v125, v126, v127);
      TSCEFormulaRewriteContext::setContainingCellCoord(&v167, &v172);
      v130 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(v112, v128, &v167, 0, v129);

      objc_msgSend_setConditionalStyle_(v8, v131, v130, v132, v133);
      objc_msgSend_setConditionalStyleAppliedRule_(v8, v134, 15, v135, v136);
      v38 = 1;
    }

    else
    {
      v130 = v112;
    }

    v137 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v124, v125, v126, v127);
    v142 = objc_msgSend_supportsPivotTables(v137, v138, v139, v140, v141);

    v147 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v143, v144, v145, v146);
    v152 = objc_msgSend_supportsCategorization(v147, v148, v149, v150, v151);

    if ((v142 & v152 & 1) == 0)
    {
      v172.var0 = 0;
      v172.var1 = &v172;
      v172.var2.var0.var0.coordinate = 0x2020000000;
      LOBYTE(v172.var2.var0.var0._tableUID._lower) = 0;
      v163[0] = MEMORY[0x277D85DD0];
      v163[1] = 3221225472;
      v163[2] = sub_2210B3E1C;
      v163[3] = &unk_27845E358;
      v155 = *(a1 + 32);
      v164 = v152;
      v163[4] = v155;
      v163[5] = &v172;
      v165 = v142;
      objc_msgSend_iterateFormulasWithContext_block_(v130, v153, &v167, v163, v154);
      if (*(v172.var1 + 24) == 1)
      {

        objc_msgSend_setConditionalStyle_(v8, v156, 0, v157, v158);
        objc_msgSend_setConditionalStyleAppliedRule_(v8, v159, 15, v160, v161);
        v130 = 0;
        v38 = 1;
      }

      _Block_object_dispose(&v172, 8);
    }
  }

  return v38;
}

void sub_2210B3D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, v16);
  _Unwind_Resume(a1);
}

id sub_2210B3DF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByMakingAllCategoryRefsIndirect_(a2, a2, a3, a4, a5);

  return v5;
}

void sub_2210B3E1C(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3, _BYTE *a4, uint64_t a5)
{
  v8 = objc_msgSend_const_astNodeArray(a2, a2, a3, a4, a5);
  v9 = *(a1 + 32);
  v16 = 0uLL;
  sub_22134BFF8(v17, v8, a3, (v9 + 776), &v16);
  v17[168] = *(a1 + 48) ^ 1;
  TSCEASTStreamIterator::rewrite(v17, v10, v11, v12, v13);
  if ((v17[169] & 1) != 0 || (*(a1 + 48) & 1) == 0 && v17[170] == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v15 = *(*(a1 + 40) + 8);
  if (*(v15 + 24) & 1) != 0 || v17[171] == 1 && (*(a1 + 49) & 1) == 0 && (*(v15 + 24) = 1, (*(*(*(a1 + 40) + 8) + 24)))
  {
    *a4 = 1;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v17, v14);
}

void sub_2210B3F18(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2210B3F2C(uint64_t a1, void *a2)
{
  v28 = a2;
  v7 = objc_msgSend_cellID(v28, v3, v4, v5, v6);
  v12 = objc_msgSend_cellID(v28, v8, v9, v10, v11);
  v19 = objc_msgSend_formulaAtCellID_(*(*(a1 + 32) + 224), v13, v7, v14, v15);
  if (v19)
  {
    objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(*(a1 + 32), v16, v19, v12, *(a1 + 40));
  }

  v24 = objc_msgSend_conditionalStyleSetAtCellID_(*(*(a1 + 32) + 224), v16, v7, v17, v18);
  if (v24)
  {
    v25 = objc_msgSend_conditionalStyleFormulaOwner(*(a1 + 32), v20, v21, v22, v23);
    objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(v25, v26, v24, v7, v27);
  }
}

void sub_2210B4050(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7, v8);
  v27 = v9;
  v14 = objc_msgSend_emptyReferenceSetWrapper(*(a1 + 32), v10, v11, v12, v13);
  v19 = v14;
  if (v14)
  {
    v20 = objc_msgSend_referenceSet(v14, v15, v16, v17, v18);
    v21 = *(a1 + 32);
    *&v26.var0 = v9;
    v26.var6 = *(a1 + 40);
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v5, v22, v20, v21, &v26, 0, 0);
  }

  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v26, 0, 1);
  v23 = *(a1 + 32);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v25, &v26);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v23, v24, &v27, a1 + 40, v19, &v25);
}

void sub_2210B46DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a64)
  {
    operator delete(a64);
  }

  sub_22109DBB8(&a67);
  sub_22109DBB8(&STACK[0x200]);
  v70 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v70;
    operator delete(v70);
  }

  v71 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v71;
    operator delete(v71);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210B480C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cell(v3, v4, v5, v6, v7);
  if (!objc_msgSend_cellHasFormula(v3, v9, v10, v11, v12))
  {
    v17 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 272) == 1)
  {
    objc_msgSend_bakeFormulaToValue(v8, v13, v14, v15, v16);
    v17 = 1;
    goto LABEL_22;
  }

  v18 = objc_msgSend_formulaObject(v8, v13, v14, v15, v16);
  if (!objc_msgSend_isSpillFormula(v18, v19, v20, v21, v22))
  {
    v35 = v18;
    v40 = objc_msgSend_cellID(v3, v36, v37, v38, v39);
    if (v35)
    {
      v41 = v40;
      v42 = 0x7FFF7FFFFFFFLL;
      v43 = *(a1 + 264);
      if (v43 + WORD2(v40) <= 0x3E7 && (v43 >> 32) + v40 <= 0xF423F)
      {
        v42 = TSUOffsetColumnRowCoordinate();
      }

      *&v107.var0 = *(a1 + 48);
      sub_2212C7250(&v107.var2);
      TSCEFormulaRewriteContextRecord::operator=(&v107.var2, a1 + 64);
      if (*(a1 + 152))
      {
        v48 = objc_msgSend_tableUID(*(a1 + 32), v44, v45, v46, v47);
        *&v105 = v42;
        *(&v105 + 1) = v48;
        v106 = v49;
        v53 = objc_msgSend_tableUID(*(a1 + 32), v49, v50, v51, v52);
        v102.n128_u64[0] = v41;
        v102.n128_u64[1] = v53;
        v103 = v54;
        sub_2212C726C(&v104, &v105, &v102);
        v55 = v35;
        TSCEFormulaRewriteContext::setContainingCell(&v107, &v104);
        v56 = sub_22149252C(v55, &v107, *(a1 + 40), *(a1 + 152), 0);

        if (v55 == v56)
        {
          v17 = 0;
        }

        else
        {
          objc_msgSend_setFormulaObject_(v8, v57, v56, v58, v59);
          v17 = 1;
        }

        v35 = v56;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v27 = objc_msgSend_spillOrigin(v18, v23, v24, v25, v26);
  if (v27 != 0x7FFFFFFF && (v27 & 0xFFFF00000000) != 0x7FFF00000000)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_21;
  }

  objc_msgSend_setFormulaObject_(v8, v28, 0, v29, v30);
  objc_msgSend_clearValue(v8, v31, v32, v33, v34);
  v17 = 1;
LABEL_21:

LABEL_22:
  if (objc_msgSend_cellHasConditionalStyle(v3, v13, v14, v15, v16))
  {
    v64 = objc_msgSend_conditionalStyle(v8, v60, v61, v62, v63);
    v69 = objc_msgSend_cellID(v3, v65, v66, v67, v68);
    v70 = v69;
    v71 = 0x7FFF7FFFFFFFLL;
    v72 = *(a1 + 264);
    if (v72 + WORD2(v69) <= 0x3E7 && (v72 >> 32) + v69 <= 0xF423F)
    {
      v71 = TSUOffsetColumnRowCoordinate();
    }

    *&v107.var0 = *(a1 + 160);
    sub_2212C7250(&v107.var2);
    TSCEFormulaRewriteContextRecord::operator=(&v107.var2, a1 + 176);
    v73 = v64;
    v78 = v73;
    if (*(a1 + 152))
    {
      objc_msgSend_tableUID(*(a1 + 32), v74, v75, v76, v77);
      v83 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 32), v79, v80, v81, v82);
      *&v105 = v71;
      *(&v105 + 1) = v83;
      v106 = v84;
      v88 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 32), v84, v85, v86, v87);
      v102.n128_u64[0] = v70;
      v102.n128_u64[1] = v88;
      v103 = v89;
      sub_2212C726C(&v104, &v105, &v102);
      TSCEFormulaRewriteContext::setContainingCell(&v107, &v104);
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = sub_2210B4C58;
      v99[3] = &unk_27845DC60;
      v90 = *(a1 + 40);
      v91 = *(a1 + 152);
      v100 = v90;
      v101 = v91;
      v94 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v78, v92, &v107, v99, v93);

      if (v94 != v78)
      {
        objc_msgSend_setConditionalStyle_(v8, v74, v94, v76, v77);
        v17 = 1;
      }
    }

    else
    {
      v94 = v73;
    }

    if (objc_msgSend_conditionalStyleAppliedRule(v8, v74, v75, v76, v77) != 15)
    {
      objc_msgSend_setConditionalStyleAppliedRule_(v8, v95, 15, v96, v97);
      v17 = 1;
    }
  }

  return v17;
}

id sub_2210B4C58(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_22149252C(a2, a3, *(a1 + 32), *(a1 + 40), 0);

  return v3;
}

uint64_t sub_2210B4C98(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);
  TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
  *(a1 + 160) = *(a2 + 160);
  sub_2212C7250(a1 + 176);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 176, a2 + 176);
}

void sub_2210B4D04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_setFormulaCoordSpace_(v8, v5, 0, v6, v7);
}

uint64_t sub_2210B4E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cell(a2, a2, a3, a4, a5);
  v11 = v6;
  if (*(a1 + 32) == 1)
  {
    v12 = objc_msgSend_removeControlCellSpec(v6, v7, v8, v9, v10);
    v17 = objc_msgSend_removeControlFormatSpares(v11, v13, v14, v15, v16) | v12;
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 33) == 1 && objc_msgSend_hasImportWarningSet(v11, v7, v8, v9, v10))
  {
    objc_msgSend_setImportWarningSet_(v11, v18, 0, v19, v20);
    v17 = 1;
  }

  return v17 & 1;
}

void sub_2210B50D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_2210B5128(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = objc_msgSend_const_astNodeArray(v6, v7, v8, v9, v10);
  sub_22134BFF8(v18, v11, (*(*(a1 + 32) + 8) + 48), (a1 + 48), (a1 + 64));
  TSCEASTStreamIterator::rewrite(v18, v12, v13, v14, v15);
  if ((v18[169] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v18, v16);

  return v6;
}

void sub_2210B51C8(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_2210B52A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_22107C860(v14 + 16, a13);
  sub_22107C860(v13, *v15);
  _Unwind_Resume(a1);
}

id sub_2210B587C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a4 == 1)
  {
    objc_opt_class();
    v13 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), v10, v9, v11, v12);
    v14 = TSUCheckedDynamicCast();

    v19 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v15, v16, v17, v18);
    v24 = objc_msgSend_supportsBidiTablesUI(v19, v20, v21, v22, v23);

    if ((v24 & 1) == 0)
    {
      v25 = objc_alloc_init(MEMORY[0x277D80AB8]);
      objc_msgSend_setIntValue_forProperty_(v25, v26, 0, 798, v27);
      v30 = objc_msgSend_variationOfStyle_propertyMap_(*(a1 + 40), v28, v14, v25, v29);

      v14 = v30;
    }
  }

  else
  {
    v14 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), v6, v9, v7, v8);
  }

  return v14;
}

id sub_2210B5BCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), a2, a2, a4, a5);

  return v5;
}

id sub_2210B5CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v4, v3, v5, v6);

  return v3;
}

id sub_2210B5E44(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

BOOL sub_2210B5E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cell(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_cellID(v3, v9, v10, v11, v12);
  v22 = objc_msgSend_cellStyle(v8, v14, v15, v16, v17);
  if (v22)
  {
    v26 = objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(*(a1 + 32), v18, v13, 1, 0);
    v27 = v22 == v26;
    if (v22 == v26)
    {
      objc_msgSend_setCellStyle_(v8, v23, 0, v24, v25);
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = objc_msgSend_textStyle(v8, v18, v19, v20, v21);
  if (v29)
  {
    v33 = objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(*(a1 + 32), v28, v13, 1, 0);
    if (v29 == v33)
    {
      objc_msgSend_setTextStyle_(v8, v30, 0, v31, v32);
      v27 = 1;
    }
  }

  return v27;
}

void sub_2210B6284(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6)
  {
    v39 = v6;
    v11 = objc_msgSend_stylesheet(v6, v7, v8, v9, v10);
    v15 = v11;
    v16 = *(a1 + 32);
    if (v11 != v16)
    {
      if (!v11 || !v16)
      {
        if (!v11)
        {
          v17 = MEMORY[0x277D81150];
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableModel validateTableStylesInSameStylesheetExpectingDocSS:]_block_invoke", v13, v14);
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v20, v21);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 7278, 0, "invalid nil value for '%{public}s'", "styleStylesheet");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
LABEL_12:
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableModel validateTableStylesInSameStylesheetExpectingDocSS:]_block_invoke", v13, v14);
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v31, v32);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 7279, 0, "Expected%{public}@ stylesheet %p on table network style %lu, got %p", *(a1 + 40), *(a1 + 32), a4, v15);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
          goto LABEL_13;
        }

LABEL_8:
        if (v16 && (objc_msgSend_isAncestorOf_(v16, v12, v15, v13, v14) & 1) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ((objc_msgSend_isAncestorOf_(v11, v12, v16, v13, v14) & 1) == 0)
      {
        v16 = *(a1 + 32);
        goto LABEL_8;
      }
    }

LABEL_13:

    v6 = v39;
  }
}

void sub_2210B6A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cell(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_richTextValue(v8, v9, v10, v11, v12);

  if (v13)
  {
    v18 = objc_msgSend_range(v13, v14, v15, v16, v17);
    v20 = v19;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2210B6BB8;
    v24[3] = &unk_27845E530;
    v25 = *(a1 + 32);
    v26 = v3;
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v27 = v21;
    v28 = v22;
    v29 = v13;
    objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v29, v23, 0, v18, v20, v24);
  }
}

void sub_2210B6BB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v15 = objc_msgSend_stylesheet(v40, v7, v8, v9, v10);
  if (!v15)
  {
LABEL_4:
    v22 = objc_msgSend_cellID(*(a1 + 40), v11, v12, v13, v14);
    v23 = *(a1 + 48);
    v27 = objc_msgSend_tableStyleAreaForBaseCellCoord_(*(a1 + 56), v24, v22, v25, v26);
    v15 = objc_msgSend_textStyleForTableStyleArea_(v23, v28, v27, v29, v30);
    v31 = *(a1 + 32);
    v36 = objc_msgSend_propertyMap(v40, v32, v33, v34, v35);
    v20 = objc_msgSend_variationOfStyle_propertyMap_(v31, v37, v15, v36, v38);

    objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(*(a1 + 64), v39, v20, a3, a4, 0);
    goto LABEL_5;
  }

  v20 = objc_msgSend_stylesheet(v40, v11, v12, v13, v14);
  if (v20 == *(a1 + 32))
  {
    v21 = objc_msgSend_parent(v40, v16, v17, v18, v19);

    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_5:

LABEL_6:
}

void sub_2210B6D20(uint64_t a1, void *a2)
{
  v108 = a2;
  v3 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_cell(v108, v4, v5, v6, v7);
  v13 = objc_msgSend_valueType(v8, v9, v10, v11, v12);

  if (v13 == 4)
  {
    v18 = objc_msgSend_cell(v108, v14, v15, v16, v17);
    objc_msgSend_copyToCell_(v18, v19, *(a1 + 32), v20, v21);

    v22 = *(*(a1 + 40) + 696);
    v27 = objc_msgSend_cellID(v108, v23, v24, v25, v26);
    v30 = objc_msgSend_rangeForCellID_includingBreak_(v22, v28, v27, 0, v29);
    v35 = v31;
    if (v31)
    {
      v36 = v30;
      v37 = *(a1 + 40);
      v38 = v37[87];
      v39 = objc_msgSend_context(v37, v31, v32, v33, v34);
      v41 = objc_msgSend_newSubstorageWithRange_context_flags_kind_(v38, v40, v36, v35, v39, 0, 5);

      if (objc_msgSend_canBeStoredInAStringValueCell(v41, v42, v43, v44, v45))
      {
        v50 = *(a1 + 32);
        v51 = objc_msgSend_stringValue(v41, v46, v47, v48, v49);
        objc_msgSend_setStringValue_(v50, v52, v51, v53, v54);

        v57 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v41, v55, 0, 0, v56);
        v62 = v57;
        if (v57)
        {
          v63 = objc_msgSend_propertyMap(v57, v58, v59, v60, v61);
          v64 = *(a1 + 40);
          v69 = objc_msgSend_cellID(v108, v65, v66, v67, v68);
          v73 = objc_msgSend_defaultTextStyleForBaseCellCoord_(v64, v70, v69, v71, v72);
          v78 = objc_msgSend_documentRoot(*(a1 + 40), v74, v75, v76, v77);
          v83 = objc_msgSend_stylesheet(v78, v79, v80, v81, v82);
          v86 = objc_msgSend_variationOfStyle_propertyMap_(v83, v84, v73, v63, v85);

          objc_msgSend_setTextStyle_(*(a1 + 32), v87, v86, v88, v89);
        }
      }

      else
      {
        v94 = *(a1 + 40);
        v95 = v94[87];
        v96 = objc_msgSend_context(v94, v46, v47, v48, v49);
        v62 = objc_msgSend_newSubstorageWithRange_context_flags_kind_(v95, v97, v36, v35, v96, 0, 5);

        objc_msgSend_setRichTextValue_(*(a1 + 32), v98, v62, v99, v100);
      }

      objc_msgSend_setCurrentFormat_isExplicit_(*(a1 + 32), v101, *(a1 + 48), 1, v102);
    }

    else
    {
      objc_msgSend_clearValue(*(a1 + 32), 0, v32, v33, v34);
    }

    v103 = *(a1 + 56);
    v104 = *(a1 + 32);
    v105 = objc_msgSend_cellID(v108, v90, v91, v92, v93);
    objc_msgSend_addCell_andCellID_(v103, v106, v104, v105, v107);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2210B70C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2210B7340(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = a2;
  v9 = objc_msgSend_cell(v20, v5, v6, v7, v8);
  v14 = objc_msgSend_richTextValue(v9, v10, v11, v12, v13);
  v15 = *(a1 + 32);

  if (v14 == v15)
  {
    *(*(*(a1 + 40) + 8) + 48) = objc_msgSend_cellID(v20, v16, v17, v18, v19);
    *a3 = 1;
  }
}

void sub_2210B8C58(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a2;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (objc_msgSend_affectsCellBorders(*(a1 + 32), a2, a3, a4, a5))
  {
    v12 = *(*(a1 + 40) + 80);
    if (v12)
    {
      objc_msgSend_accumulateCellBordersConcurrentlyInRow_atColumns_(v12, v10, v7, a3, v11);
    }

    else
    {
      v13 = 0uLL;
      v14 = 0;
    }

    sub_2210BC2A8(a6);
    *a6 = v13;
    *(a6 + 16) = v14;
    v14 = 0;
    v13 = 0uLL;
    v15 = &v13;
    sub_22107C2C0(&v15);
  }
}

void sub_2210B8D24(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v11 = a3;
  v12 = *(*(a1 + 32) + 224);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2210B8E34;
  v16[3] = &unk_27845E5F8;
  v19 = a5;
  v13 = *(a1 + 40);
  v15 = *(a1 + 32);
  v17 = v13;
  v18 = v15;
  if (v12)
  {
    objc_msgSend_accumulateCurrentCellsConcurrentlyInRow_rowInfo_atColumns_usingCellCreationBlock_(v12, v14, a2, v11, a4, v16);
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }
}

id sub_2210B8E34(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  if (*v5 == v5[1])
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*v5 + 8 * a3);
  }

  v11 = v6;
  if (a2 && sub_2210B8F38(a2, v7, v8, v9, v10))
  {
    v12 = objc_msgSend_copy(*(a1 + 32), v7, v8, v9, v10);
    objc_msgSend_inflateFromStorageRef_dataStore_suppressingTransmutation_(v12, v13, a2, *(*(a1 + 40) + 224), 1);
    objc_msgSend_setCellBorder_(v12, v14, v11, v15, v16);
  }

  else if (v11)
  {
    v12 = objc_msgSend_copy(*(a1 + 32), v7, v8, v9, v10);
    objc_msgSend_setCellBorder_(v12, v17, v11, v18, v19);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL sub_2210B8F38(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (v5 != 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 138, 0, "Can't parse cell storage header version %d!", v5);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return v5 == 5;
}

void sub_2210B9338(uint64_t a1, TSUCellCoord a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (objc_msgSend_hasConditionalStyle(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_conditionalStyle(v6, v11, v12, v13, v14);
    if (objc_msgSend_containsUidReferences(v15, v16, v17, v18, v19))
    {
      v24 = *(a1 + 32);
      v25 = *(v24 + 216);
      v26 = objc_msgSend_ownerUID(*(v24 + 608), v20, v21, v22, v23);
      v44.coordinate = a2;
      v44._tableUID._lower = v26;
      v44._tableUID._upper = v27;
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v45, v25, &v44);
      TSCEFormulaRewriteContext::setHostCellOverridesTableID(&v45, 0);
      v31 = objc_msgSend_copyToGeometricFormWithRewriteContext_(v15, v28, &v45, v29, v30);

      objc_msgSend_setConditionalStyle_(v6, v32, v31, v33, v34);
    }

    else
    {
      v31 = v15;
    }

    if (*(a1 + 40))
    {
      v35 = v31;
    }

    else
    {
      v36 = *(a1 + 32);
      v37 = *(v36 + 216);
      v44.coordinate = a2;
      v44._tableUID = *(v36 + 744);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v45, v37, &v44);
      v35 = objc_msgSend_copyByConvertingToRelativeAncestorsWithRewriteContext_(v31, v38, &v45, v39, v40);

      objc_msgSend_setConditionalStyle_(v6, v41, v35, v42, v43);
    }
  }
}

void sub_2210B94B0(uint64_t a1, TSUCellCoord a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (objc_msgSend_hasFormulaContainingUidReferences(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_formulaObject(v6, v11, v12, v13, v14);
    v16 = *(a1 + 32);
    v17 = *(v16 + 216);
    v25.coordinate = a2;
    v25._tableUID = *(v16 + 744);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26, v17, &v25);
    v21 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v15, v18, &v26, v19, v20);
    objc_msgSend_setFormulaObject_(v6, v22, v21, v23, v24);
  }
}

void sub_2210B958C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v46 = a4;
  v12 = a5;
  if (a2 == 0x7FFFFFFF || (a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableModel setCellsConcurrently:ignoreFormula:clearImportWarnings:formulaReplacer:]_block_invoke_3", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 8048, 0, "baseCoord should be valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (!objc_msgSend_hasCommentStorage(v12, v8, v9, v10, v11) || !objc_msgSend_hasCommentStorage(v46, v24, v25, v26, v27) || (objc_msgSend_commentStorage(v12, v24, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_commentStorage(v46, v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), v33, v28, v28 != v33))
  {
    if (objc_msgSend_hasCommentStorage(v12, v24, v25, v26, v27))
    {
      v38 = objc_msgSend_commentStorage(v12, v34, v35, v36, v37);
      objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(*(a1 + 32), v39, v38, a2, *MEMORY[0x277D805C8]);
    }

    if (objc_msgSend_hasCommentStorage(v46, v34, v35, v36, v37))
    {
      v44 = objc_msgSend_commentStorage(v46, v40, v41, v42, v43);
      objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(*(a1 + 32), v45, v44, a2, *MEMORY[0x277D805B8]);
    }
  }
}

void sub_2210B9788(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v46 = a4;
  v7 = a5;
  if ((objc_msgSend_hasRichText(v46, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasRichText(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableModel setCellsConcurrently:ignoreFormula:clearImportWarnings:formulaReplacer:]_block_invoke_4", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 8069, 0, "cells called should have rich text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_richTextValue(v7, v12, v13, v14, v15);
  v36 = objc_msgSend_richTextValue(v46, v28, v29, v30, v31);
  if (v27 != v36)
  {
    if (v27)
    {
      v37 = objc_msgSend_documentRoot(v27, v32, v33, v34, v35);

      if (v37)
      {
        objc_msgSend_willBeRemovedFromDocumentRoot_(v27, v32, *(a1 + 32), v34, v35);
        objc_msgSend_wasRemovedFromDocumentRoot_(v27, v38, *(a1 + 32), v39, v40);
      }
    }

    if (v36)
    {
      v41 = objc_msgSend_documentRoot(v36, v32, v33, v34, v35);

      if (!v41)
      {
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v36, v42, *(a1 + 32), 0, v43);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v36, v44, *(a1 + 32), 0, v45);
      }
    }
  }
}

void sub_2210B9ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_2210BA06C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_columnRowUIDMap(*(a1 + 32), a2, a3, a4, a5);
  v9 = objc_msgSend_perChunkHelperWithSourceRect_columnRowUIDMap_(TSTTableModelCellModificationHelper, v8, a2, a3, v7);

  return v9;
}

uint64_t sub_2210BA0F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v11 = objc_msgSend_cell(v5, v7, v8, v9, v10);
    v16 = objc_msgSend_copy(v11, v12, v13, v14, v15);

    v21 = objc_msgSend_sourceRectOrigin(v6, v17, v18, v19, v20);
    v26 = objc_msgSend_cellID(v5, v22, v23, v24, v25);
    objc_msgSend_prepareToAddCells(v6, v27, v28, v29, v30);
    v35 = objc_msgSend_sparseCellList(v6, v31, v32, v33, v34);
    objc_msgSend_addCell_atUidOffset_(v35, v36, v16, (WORD2(v26) - WORD2(v21)) | ((v26 - v21) << 32), v37);
  }

  return 0;
}

void sub_2210BA20C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_sparseCellList(v3, v4, v5, v6, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2210BA2FC;
  v13[3] = &unk_27845E6C0;
  v9 = v3;
  v14 = v9;
  v15 = *(a1 + 32);
  objc_msgSend_enumerateSeriallyByUidOffsetUsingBlock_(v8, v10, v13, v11, v12);
}