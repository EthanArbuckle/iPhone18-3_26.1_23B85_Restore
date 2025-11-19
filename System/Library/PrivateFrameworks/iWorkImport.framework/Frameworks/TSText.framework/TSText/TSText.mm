void sub_276D12678(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276D128DC();
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

void sub_276D12770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D128F4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_276D12950(exception, a1);
  __cxa_throw(exception, off_27A6F3550, MEMORY[0x277D825F0]);
}

std::logic_error *sub_276D12950(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_276D12F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D12F18(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_sourceString(*(a1 + 32), a2, a3);
  objc_msgSend_getCharacters_range_(v6, v7, *(a1 + 48) + 2 * *(*(*(a1 + 40) + 8) + 24), a2, a3);

  *(*(*(a1 + 40) + 8) + 24) += a3;
}

void sub_276D15554()
{
  obj = objc_alloc_init(MEMORY[0x277CCAB50]);
  v2 = objc_msgSend_illegalCharacterSet(MEMORY[0x277CCA900], v0, v1);
  objc_msgSend_formUnionWithCharacterSet_(obj, v3, v2);

  objc_msgSend_addCharactersInRange_(obj, v4, 14, 1);
  objc_msgSend_addCharactersInRange_(obj, v5, 65533, 1);
  v8 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(obj, v9, v8);

  objc_msgSend_removeCharactersInRange_(obj, v10, 917504, 196608);
  objc_msgSend_removeCharactersInRange_(obj, v11, 10, 1);
  objc_msgSend_removeCharactersInRange_(obj, v12, 11, 1);
  objc_msgSend_removeCharactersInRange_(obj, v13, 8233, 1);
  objc_msgSend_removeCharactersInRange_(obj, v14, 8232, 1);
  objc_msgSend_removeCharactersInRange_(obj, v15, 13, 1);
  objc_msgSend_removeCharactersInRange_(obj, v16, 9, 1);
  objc_msgSend_removeCharactersInRange_(obj, v17, 173, 1);
  objc_msgSend_removeCharactersInRange_(obj, v18, 8203, 1);
  objc_msgSend_removeCharactersInRange_(obj, v19, 65279, 1);
  objc_msgSend_removeCharactersInRange_(obj, v20, 8204, 1);
  objc_msgSend_removeCharactersInRange_(obj, v21, 8205, 1);
  objc_msgSend_removeCharactersInRange_(obj, v22, 12, 1);
  objc_msgSend_removeCharactersInRange_(obj, v23, 78896, 16);
  v26 = objc_msgSend_copy(obj, v24, v25);
  v27 = qword_280A57E38;
  qword_280A57E38 = v26;

  objc_msgSend_removeCharactersInRange_(obj, v28, 1564, 1);
  objc_msgSend_removeCharactersInRange_(obj, v29, 8203, 5);
  objc_msgSend_removeCharactersInRange_(obj, v30, 8234, 5);
  objc_msgSend_removeCharactersInRange_(obj, v31, 8288, 5);
  objc_msgSend_removeCharactersInRange_(obj, v32, 8294, 4);
  objc_storeStrong(&qword_280A57E48, obj);
  v35 = objc_msgSend_mutableCopy(qword_280A57E38, v33, v34);
  objc_msgSend_addCharactersInRange_(v35, v36, 65532, 1);
  objc_storeStrong(&qword_280A57E40, v35);
  v39 = objc_msgSend_mutableCopy(qword_280A57E48, v37, v38);
  objc_msgSend_addCharactersInRange_(v39, v40, 65532, 1);
  v41 = qword_280A57E50;
  qword_280A57E50 = v39;
}

void sub_276D157B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

unint64_t sub_276D157F4(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = a2;
  v11 = *MEMORY[0x277D81490];
  theString = v10;
  v32 = a3;
  v33 = a4;
  CharactersPtr = CFStringGetCharactersPtr(v10);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v10, 0x600u);
  }

  v34 = 0;
  v35 = 0;
  v31 = CStringPtr;
  if (a3 >= a3 + a4)
  {
    a3 = v11;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 64;
  do
  {
    if (v14 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v14;
    }

    if (v14 < 0 || (v18 = v33, v33 <= v14))
    {
      v20 = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v19 = &CharactersPtr[v32];
      }

      else
      {
        if (v31)
        {
          v20 = v31[v32 + v14];
          goto LABEL_15;
        }

        if (v35 <= v14 || v15 > v14)
        {
          v23 = v14 - v17;
          v24 = v17 + v13;
          v25 = v16 - v17;
          v26 = v23 + 64;
          if (v23 + 64 >= v33)
          {
            v26 = v33;
          }

          v34 = v23;
          v35 = v26;
          if (v33 >= v25)
          {
            v18 = v25;
          }

          v36.location = v32 + v23;
          v36.length = v18 + v24;
          CFStringGetCharacters(theString, v36, buffer);
          v15 = v34;
        }

        v19 = &buffer[-v15];
      }

      v20 = v19[v14];
    }

LABEL_15:
    v21 = v20 >= a5;
    v22 = v20 - a5;
    if (v21 && v22 < a6)
    {
      goto LABEL_31;
    }

    ++a3;
    ++v14;
    --v13;
    ++v16;
    --a4;
  }

  while (a4);
  a3 = v11;
LABEL_31:

  return a3;
}

void sub_276D160BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276D160D4(uint64_t result, int a2)
{
  if (a2 != 101 && a2 != 104)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_276D1664C(uint64_t a1)
{
  v118 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  *(*(a1 + 32) + 320) = 1;
  objc_storeStrong((*(a1 + 32) + 256), *(a1 + 40));
  *(*v2 + 302) = *(*v2 + 302) & 0xF0 | *(a1 + 100) & 0xF;
  if (*(a1 + 100) == 8)
  {
    TSUSetCrashReporterInfo();
    v100 = MEMORY[0x277D81150];
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]_block_invoke", "[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 713);
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v105, v102, v104, 713, 1, "Attempt to create storage with undefined kind");

    TSUCrashBreakpoint();
    abort();
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 717, 0, "No par style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v4 = *(a1 + 48);
  }

  v12 = *(a1 + 32);
  v13 = objc_msgSend_attributeArrayForKind_withCreate_(v12, v3, 0, 1);
  objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v12, v14, v4, 0, v13, 0, 0);
  v15 = *(a1 + 32);
  v17 = objc_msgSend_attributeArrayForKind_withCreate_(v15, v16, 1, 1);
  objc_msgSend_nonUndoableInsertParagraphData_charIndex_attributeArray_attributeIndex_(v15, v18, 0, 0, v17, 0);
  v19 = *(a1 + 32);
  v21 = objc_msgSend_attributeArrayForKind_withCreate_(v19, v20, 11, 1);
  objc_msgSend_nonUndoableInsertParagraphData_charIndex_attributeArray_attributeIndex_(v19, v22, 0, 0, v21, 0);
  v23 = *(a1 + 96);
  v24 = *(a1 + 32);
  v26 = objc_msgSend_attributeArrayForKind_withCreate_(v24, v25, 18, 1);
  objc_msgSend_nonUndoableInsertParagraphData_charIndex_attributeArray_attributeIndex_(v24, v27, v23, 0, v26, 0);
  v30 = *(a1 + 56);
  v31 = *(a1 + 32);
  if (v30)
  {
    v32 = objc_msgSend_attributeArrayForKind_withCreate_(*(a1 + 32), v28, 2, 1);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v31, v33, v30, 0, v32, 0, 0);
  }

  else if ((v31[302] & 0xF) == 5 && !objc_msgSend_attributeArrayForKind_withCreate_(*(a1 + 32), v28, 2, 0))
  {
    v34 = objc_msgSend_attributeArrayForKind_withCreate_(*(a1 + 32), v28, 2, 1);
    v35 = *(a1 + 32);
    v38 = objc_msgSend_stylesheet(v35, v36, v37);
    v41 = objc_msgSend_defaultListStyle(v38, v39, v40);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v35, v42, v41, 0, v34, 0, 0);
  }

  if (objc_msgSend_supportsSections(*(a1 + 32), v28, v29))
  {
    v45 = *(a1 + 32);
    v46 = *(a1 + 64);
    v47 = v45;
    v48 = v46;
    if (!v46)
    {
      v48 = objc_msgSend_pDefaultSectionForContext_(*(a1 + 32), v43, *(a1 + 72));
      v47 = *(a1 + 32);
    }

    v49 = objc_msgSend_attributeArrayForKind_withCreate_(v47, v43, 8, 1);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v45, v50, v48, 0, v49, 0, 0);
    if (!v46)
    {
    }
  }

  if (objc_msgSend_supportsColumnStyles(*(a1 + 32), v43, v44))
  {
    v53 = *(a1 + 32);
    v54 = *(a1 + 80);
    v55 = v53;
    v56 = v54;
    if (!v54)
    {
      v56 = objc_msgSend_defaultColumnStyle(*(a1 + 40), v51, v52);
      v55 = *(a1 + 32);
    }

    v57 = objc_msgSend_attributeArrayForKind_withCreate_(v55, v51, 9, 1);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v53, v58, v56, 0, v57, 0, 0);
    if (!v54)
    {
    }
  }

  if (objc_msgSend_WPKindSupportsDropCaps(*(a1 + 32), v51, v52))
  {
    v60 = *(a1 + 32);
    v61 = objc_msgSend_attributeArrayForKind_withCreate_(v60, v59, 22, 1);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v60, v62, 0, 0, v61, 0, 0);
  }

  v63 = objc_opt_class();
  v65 = objc_alloc_init(objc_msgSend_pStringClassForWPKind_(v63, v64, *(a1 + 100)));
  v66 = *(a1 + 32);
  v67 = *(v66 + 64);
  *(v66 + 64) = v65;

  if (*(a1 + 88))
  {
    sub_276E3E8D0(v114, 0);
    v115 |= 1u;
    objc_msgSend_insertString_atCharIndex_undoTransaction_(*(a1 + 32), v70, *(a1 + 88), 0, v114);
    sub_276E3EAC4(v114);
  }

  v71 = *(a1 + 40);
  v72 = objc_msgSend_documentRoot(*(a1 + 72), v68, v69);
  v75 = objc_msgSend_stylesheet(v72, v73, v74);
  LOBYTE(v71) = v71 == v75;

  if ((v71 & 1) == 0)
  {
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v76 = *(a1 + 40);
    v77 = objc_opt_class();
    v79 = objc_msgSend_stylesOfClass_(v76, v78, v77);
    v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v110, v117, 16);
    if (v82)
    {
      v83 = *v111;
      while (2)
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v111 != v83)
          {
            objc_enumerationMutation(v79);
          }

          v86 = objc_msgSend_objectForProperty_(*(*(&v110 + 1) + 8 * i), v81, 16);
          if (v86 && objc_msgSend_uiFontTypeForFontName_(TSWPFont, v85, v86) != -1)
          {
            objc_msgSend_setUsesSystemFonts_(*(a1 + 32), v87, 1);

            goto LABEL_35;
          }
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v81, &v110, v117, 16);
        if (v82)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:

    if ((*(*(a1 + 32) + 303) & 4) == 0)
    {
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v88 = *(a1 + 40);
      v89 = objc_opt_class();
      v91 = objc_msgSend_stylesOfClass_(v88, v90, v89);
      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v106, v116, 16);
      if (v94)
      {
        v95 = *v107;
        while (2)
        {
          for (j = 0; j != v94; ++j)
          {
            if (*v107 != v95)
            {
              objc_enumerationMutation(v91);
            }

            v98 = objc_msgSend_objectForProperty_(*(*(&v106 + 1) + 8 * j), v93, 16);
            if (v98 && objc_msgSend_uiFontTypeForFontName_(TSWPFont, v97, v98) != -1)
            {
              objc_msgSend_setUsesSystemFonts_(*(a1 + 32), v99, 1);

              goto LABEL_47;
            }
          }

          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v93, &v106, v116, 16);
          if (v94)
          {
            continue;
          }

          break;
        }
      }

LABEL_47:
    }
  }

  *(*(a1 + 32) + 320) = 0;
}

void sub_276D17010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TSWPStorage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_276D17CE4(uint64_t a1, const char *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  return objc_msgSend_p_finalizeLoadingFromUnarchiverWithTimes_isInDocument_isFromCopy_hasTableListStyle_isCrossAppPaste_hasPreUFFVersion_fileFormatVersion_(*(a1 + 32), a2, v3, *(a1 + 48), *(a1 + 49), *(a1 + 50), *(a1 + 51), *(a1 + 52), *(a1 + 40));
}

void sub_276D198E4(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v30 = a2;
  v9 = objc_msgSend_pencilAnnotationStorage(v30, v7, v8);
  v12 = objc_msgSend_compoundAnnotationType(v9, v10, v11);

  if (v12 == 2)
  {
    *(*(a1[4] + 8) + 24) = 1;
    *a5 = 1;
  }

  v15 = objc_msgSend_pencilAnnotationStorage(v30, v13, v14);
  isCalloutParentStorage = objc_msgSend_isCalloutParentStorage(v15, v16, v17);

  if (isCalloutParentStorage)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *a5 = 1;
  }

  v21 = objc_msgSend_pencilAnnotationStorage(v30, v19, v20);
  if (objc_msgSend_shouldSplitAcrossAnchorRects(v21, v22, v23))
  {
  }

  else
  {
    v26 = objc_msgSend_pencilAnnotationStorage(v30, v24, v25);
    shouldResizeWithAnchor = objc_msgSend_shouldResizeWithAnchor(v26, v27, v28);

    if (!shouldResizeWithAnchor)
    {
      goto LABEL_9;
    }
  }

  *(*(a1[6] + 8) + 24) = 1;
  *a5 = 1;
LABEL_9:
}

uint64_t sub_276D19A30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

void sub_276D19CC0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_276D19CF0(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_276D34ED8();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_276D34EF0(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_276D19E44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D1A0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_276D1A11C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276D1A304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276D1A364()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276D1A484()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276D1A754()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276D1A798()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276D1A9EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_range(v4, a2, a3);
  v7 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276D1AAB8;
  v10[3] = &unk_27A6F36E0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v4, v9, 17, v5, v7, v10);
}

void sub_276D1AAB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  if (v12)
  {
    v9 = objc_msgSend_parentStorage(v12, v7, v8);
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      objc_msgSend_addObject_(*(a1 + 40), v11, v12);
    }

    objc_msgSend_addHighlight_toRange_dolcContext_undoTransaction_(*(a1 + 32), v11, v12, a3, a4, 0, 0);
  }
}

void sub_276D1ACC4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276D1AD78(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

BOOL sub_276D1B430(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_wpKind(v3, v4, v5) == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_276D1CD14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if (objc_msgSend_isAnchored(v11, v6, v7) && (objc_msgSend_isHTMLWrap(v11, v8, v9) & 1) == 0)
  {
    objc_msgSend_addRange_(*(a1 + 32), v10, a4, 1);
  }
}

void sub_276D1DC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, TSWPParagraphEnumerator *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a18);

  _Unwind_Resume(a1);
}

uint64_t sub_276D1DC70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = objc_msgSend_charIndexMappedToStorage_(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a7 = 1;
  return result;
}

void sub_276D1DF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

unint64_t sub_276D1DF7C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_paragraphIndexRangeForCharRange_(*(a1 + 32), a2, a2, a3);
  if (result < &v5[result])
  {
    v6 = result;
    v7 = v5 - 1;
    do
    {
      v8 = objc_msgSend_charIndexForParagraphAtIndex_(*(a1 + 32), v5, v6);
      result = objc_msgSend_isEmptyParagraphRange_ignoreAttachmentCharacters_outRange_(*(a1 + 32), v9, v8, 0, *(a1 + 48), 0);
      *(*(*(a1 + 40) + 8) + 24) = result;
      if (v7-- == 0)
      {
        break;
      }

      ++v6;
    }

    while ((*(*(*(a1 + 40) + 8) + 24) & 1) != 0);
  }

  return result;
}

void sub_276D1E248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, TSWPParagraphEnumerator *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  _Block_object_dispose(&a16, 8);

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a20);
  _Unwind_Resume(a1);
}

void sub_276D1E290(uint64_t a1, void *a2)
{
  v9 = a2;
  if (!objc_msgSend_isAnchored(v9, v3, v4) || (objc_opt_class(), TSUDynamicCast(), v5 = objc_claimAutoreleasedReturnValue(), isHTMLWrap = objc_msgSend_isHTMLWrap(v5, v6, v7), v5, isHTMLWrap))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_276D1E3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276D1E414(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_tswp_isAllWhitespaceInRange_(*(*(a1 + 32) + 64), a2, a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a5 = 1;
  }

  return result;
}

void sub_276D1FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D1FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = TSUProtocolCast();
  v10 = objc_msgSend_infos(v7, v8, v9, &unk_28866BCC0);
  v12 = objc_msgSend_p_relocateNonSelectedAnchorsInRange_selectedInfos_undoTransaction_(v6, v11, a2, a3, v10, *(a1 + 64));
  v14 = v13;

  if (v12 != a2 || v14 != a3)
  {
    objc_msgSend_removeRange_(*(a1 + 48), v15, a2, a3);
    objc_msgSend_addRange_(*(a1 + 48), v17, v12, v14);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_276D20298(_Unwind_Exception *a1, TSWPParagraphEnumerator *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a10);

  _Unwind_Resume(a1);
}

void sub_276D20810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a39, 8);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  _Block_object_dispose((v48 - 200), 8);

  _Block_object_dispose((v48 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276D208C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_276D208E0(__n128 *a1, __n128 *a2)
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

void sub_276D20904(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_276D2091C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 56) + 8) + 24);
  if (a4)
  {
    v8 = &stru_28860A0F0;
  }

  else
  {
    v8 = *(*(*(a1 + 64) + 8) + 40);
  }

  v9 = objc_msgSend_copyWithNewType_range_(*(a1 + 32), a2, 8, &a2[v7], a3);
  v29 = *MEMORY[0x277D81490];
  v12 = objc_msgSend_length(*(a1 + 40), v10, v11);
  *&v28 = objc_msgSend_p_replaceCharactersInLogicalSelection_withString_withFlags_replaceTextData_changeSession_undoTransaction_outInsertedRange_(*(a1 + 40), v13, v9, v8, *(a1 + 104), *(*(*(a1 + 72) + 8) + 40), *(a1 + 48), *(a1 + 96), &v29);
  *(&v28 + 1) = v14;
  sub_276D20ABC(*(*(a1 + 80) + 8) + 48, &v29);
  sub_276D20ABC(*(*(a1 + 88) + 8) + 48, &v28);
  *(*(*(a1 + 56) + 8) + 24) += objc_msgSend_length(*(a1 + 40), v15, v16) - v12;
  v19 = objc_msgSend_attachments(*(*(*(a1 + 72) + 8) + 40), v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (v22)
  {
    v25 = objc_msgSend_replaceTextDataByRemovingAttachments(*(*(*(a1 + 72) + 8) + 40), v23, v24);
    v26 = *(*(a1 + 72) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }
}

void sub_276D20ABC(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_276D34ED8();
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
      sub_276D34F6C(a1, v10);
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

void sub_276D21460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_276F32E10(&a37);

  _Unwind_Resume(a1);
}

void sub_276D215EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 3476, 0, "invalid nil value for '%{public}s'", "innerSelection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (!*(a1 + 40))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]_block_invoke");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 3477, 0, "invalid nil value for '%{public}s'", "pActionBuilder");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  if (v5 && *(a1 + 40))
  {
    v23 = objc_msgSend_styleInsertionBehavior(*(a1 + 32), v6, v7);
    v24 = *(a1 + 40);
    v25 = *(v24 + 480);
    v28 = objc_msgSend_superRange(v5, v26, v27);
    v30 = 32 * (v23 == 2);
    if (v23 == 1)
    {
      v30 = 16;
    }

    v31[0] = v28;
    v31[1] = v29;
    sub_276F334C0(v24, v31, v8, v25 | v30);
    (*(**(a1 + 40) + 16))(*(a1 + 40));
  }
}

void sub_276D21918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276D21938(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v9 = objc_msgSend_substringWithRange_(*(a1 + 32), a2, a2, a3);
  v6 = objc_msgSend_stringByAppendingString_(v4, v5, v9);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_276D235A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (objc_msgSend_isAnchored(v14, v7, v8) && (!v6 || (objc_msgSend_isHTMLWrap(v6, v9, v10) & 1) == 0))
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, a4);
    objc_msgSend_addObject_(v11, v13, v12);
  }
}

void sub_276D23868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, TSWPParagraphEnumerator *a18)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a9);
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_276D23BD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_paragraphIndexRangeForCharRange_(*(a1 + 40), a2, a2, a3);

  return objc_msgSend_addIndexesInRange_(v3, v4, v5, v4);
}

void sub_276D247F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  for (i = 48; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void sub_276D25854(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_dropCapCharIndexesInRange_(*(a1 + 32), a2, a2, a3);
  objc_msgSend_addIndexes_(*(a1 + 40), v4, v5);
}

void sub_276D27D70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v15 = v8;
  if (v10 == v8 || (objc_msgSend_isDescendentOf_(v8, v9, v10) & 1) != 0 || (objc_msgSend_referencedStyles(v15, v9, v11), v12 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_containsObject_(v12, v13, *(a1 + 32)), v12, v14))
  {
    objc_msgSend_styleDidChangeInRange_(*(a1 + 40), v9, a4, a5);
  }
}

uint64_t sub_276D29C64(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_charIndexMappedFromStorage_(v3, v4, *(a1 + 32));
  if (objc_msgSend_length(v3, v6, v7) && objc_msgSend_characterAtIndex_(v3, v8, v5) == 65532)
  {
    v10 = objc_msgSend_attachmentAtCharIndex_(v3, v9, v5);
    isPartitioned = objc_msgSend_isPartitioned(v10, v11, v12);
  }

  else
  {
    isPartitioned = 0;
  }

  return isPartitioned;
}

void sub_276D2A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D2A338(NSRange *a1, void *a2, uint64_t a3, NSUInteger a4, NSUInteger a5, _BYTE *a6)
{
  v10 = a2;
  v12.location = a4;
  v12.length = a5;
  if (NSIntersectionRange(a1[48], v12).length)
  {
    if (objc_opt_isKindOfClass())
    {
      (*(a1[2].location + 16))();
    }

    *(*(a1[2].length + 8) + 24) = 1;
  }

  else if (*(*(a1[2].length + 8) + 24) == 1)
  {
    *a6 = 1;
  }
}

void sub_276D2A634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_276D2A64C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_276D2A65C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  if (*(v3 + 48) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
    *(v3 + 48) = a3;
  }

  else
  {
    v4 = *(v3 + 56) + 1;
  }

  *(v3 + 56) = v4;
  return result;
}

void sub_276D2ADA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D2ADC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v10 = v7;
  if (v7 && (objc_msgSend_elementKind(v7, v8, v9) & 0xBF80F) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

uint64_t sub_276D2B3C4(uint64_t a1, const char *a2, const char *a3)
{
  v8 = objc_msgSend_p_extendRangeToIncludeSmartFields_(*(a1 + 32), a2, a2, a3);
  v9 = v6;
  if (v8 != a2 || v6 != a3)
  {
    while (objc_msgSend_type(*(a1 + 40), v6, v7) == 2)
    {
      v12 = *(a1 + 32);
      v13 = objc_msgSend_textRangeForParagraphsInCharRange_(v12, v11, v8, v9);
      result = objc_msgSend_p_extendRangeToIncludeSmartFields_(v12, v14, v13, v14);
      v16 = result == v8 && v6 == v9;
      v8 = result;
      v9 = v6;
      if (v16)
      {
        return result;
      }
    }
  }

  return v8;
}

uint64_t sub_276D2B474(uint64_t a1, uint64_t a2, const char *a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (result != a2 || v7 != a3)
  {
    result = objc_msgSend_addRange_(*(a1 + 32), v7, result, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void sub_276D2C038(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  v2 = TSUDynamicCast();
  objc_msgSend_resetAllTextAttributeUUIDStrings(v2, v3, v4);
}

void sub_276D2C308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276D2C334(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v9 = *(a1 + 32);
  if (!v9 || (*(v9 + 16))(v9, v14, a5))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10)
    {
      v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 40) + 8) + 40);
    }

    objc_msgSend_addObject_(v10, v7, v14);
  }
}

void sub_276D2C72C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v9)
  {
    v10 = objc_msgSend_sharedDelegate(TSWPApplicationDelegate, v7, v8);
    v13 = objc_msgSend_url(v9, v11, v12);
    isValidURLForImportedHyperlink_targetDocumentRoot_forCrossDocumentPaste = objc_msgSend_isValidURLForImportedHyperlink_targetDocumentRoot_forCrossDocumentPaste_(v10, v14, v13, *(a1 + 32), *(a1 + 48));

    if ((isValidURLForImportedHyperlink_targetDocumentRoot_forCrossDocumentPaste & 1) == 0)
    {
      v17 = MEMORY[0x277D812A8];
      v18 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v16, a3, a4);
      v20 = objc_msgSend_pairWithFirst_second_(v17, v19, v9, v18);

      objc_msgSend_addObject_(*(a1 + 40), v21, v20);
    }
  }
}

void sub_276D2CA54(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  objc_msgSend_nonUndoableRemoveUnsupportedHyperlinksForCrossDocumentPaste_(v3, v4, *(a1 + 32));
}

void sub_276D2CC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_276D2CC5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_passingTest_(*(a1 + 32), a2, *(a1 + 48), a2, a3, 0);
  if (v10)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    objc_msgSend_addObjectsFromArray_(v6, v4, v10);
  }
}

void sub_276D2CFA4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_276D2DEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276D2DF10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_phoneticsExistOnRange_(*(a1 + 32), a2, a2, a3);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_276D2E040(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_baseText(v3, v5, v6);
  v14[0] = v7;
  v10 = objc_msgSend_rubyText(v3, v8, v9);
  v14[1] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v14, 2);
  objc_msgSend_addObject_(v4, v13, v12);
}

void sub_276D2E808()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276D2F3A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v21 = v5;
    v8 = (*(*(a1 + 40) + 16))();
    if (v8 != v21)
    {
      if (v8)
      {
        goto LABEL_7;
      }

      if ((TSWPAttributeArray::allowsNilObjects(*(*(a1 + 56) + 28)) & 1) == 0)
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPStorage replaceReferencedStylesUsingBlock:]_block_invoke");
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        v14 = *(*(a1 + 56) + 28);
        v17 = objc_msgSend_wpKind(*(a1 + 32), v15, v16);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v11, v13, 7293, 0, "Attempt to illegally replace object with nil. [attribute kind: %u][WPKind %u]", v14, v17);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
      }

      if (TSWPAttributeArray::allowsNilObjects(*(*(a1 + 56) + 28)))
      {
LABEL_7:
        if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
        {
          objc_msgSend_willModify(*(a1 + 32), v6, v7);
        }

        TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(*(a1 + 56), v8, a3, 0, 0);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    v5 = v21;
  }
}

void sub_276D2F5F0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_276D2FA9C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_uppercaseString(a2, a2, a3);

  return v3;
}

id sub_276D2FAD8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_lowercaseString(a2, a2, a3);

  return v3;
}

id sub_276D2FB14(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_capitalizedString(a2, a2, a3);

  return v3;
}

void sub_276D2FFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_276D30024(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v15 = a2;
  objc_opt_class();
  v9 = TSUCheckedDynamicCast();
  if ((objc_msgSend_smartFieldKind(v9, v10, v11) & 0x80) != 0)
  {
    v13 = *(*(*(a1 + 40) + 8) + 24);
    if (v13 != a3)
    {
      if (v13 >= a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = *(*(*(a1 + 40) + 8) + 24);
      }

      if (v13 <= a3)
      {
        v13 = a3;
      }

      if ((objc_msgSend_isAllWhitespaceInRange_(*(a1 + 32), v12, v14, v13 - v14) & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a5 = 1;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = a3 + a4;
  }
}

void sub_276D32FE4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v6 = objc_begin_catch(a1);
    objc_opt_class();
    v7 = TSUCheckedDynamicCast();
    if (*MEMORY[0x277D81430] != -1)
    {
      sub_276F4EDDC();
    }

    objc_end_catch();
    JUMPOUT(0x276D32760);
  }

  _Unwind_Resume(a1);
}

void sub_276D33370()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D333B0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D333F0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D33430()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D33470()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D334B0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D334F0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D33530()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D33570()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D335B0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D335F0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D33630()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D33670()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A55968;
  qword_280A55968 = v0;
}

void sub_276D336B0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276D34400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D34418(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = objc_msgSend_drawable(a2, a2, a3);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

void sub_276D346C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *sub_276D34D8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276D34DD0(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_276D34DD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F4EE04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_276D34E58);
}

void sub_276D34E58(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_276D34EF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_276D34F38();
}

void sub_276D34F38()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_276D34F6C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276D34FEC()
{
  result = TSUAnyInputLanguageIsNonRoman();
  byte_280A57E60 = result;
  return result;
}

id sub_276D35028(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = objc_opt_class();
  if (objc_msgSend_needsObjectUUID(v6, v7, v8))
  {
    v12 = objc_msgSend_objectUUID(v5, v9, v10);
    if (v12)
    {
LABEL_3:
      v13 = objc_msgSend_UUIDPathByAppendingUUID_(v4, v11, v12);
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    v14 = TSUDynamicCast();
    v17 = objc_msgSend_drawable(v14, v15, v16);

    objc_opt_class();
    v18 = TSUDynamicCast();
    v21 = objc_msgSend_containedStorage(v18, v19, v20);

    v24 = v17;
    if (v17 || (v24 = v21) != 0)
    {
      v12 = objc_msgSend_objectUUID(v24, v22, v23);
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

uint64_t sub_276D351D4(UChar32 c, _BYTE *a2)
{
  if (!a2)
  {
    result = u_getIntPropertyValue(c, UCHAR_VERTICAL_ORIENTATION);
    if (!result)
    {
      return result;
    }

    return c != 65532;
  }

  *a2 = 0;
  if (u_getIntPropertyValue(c, UCHAR_VERTICAL_ORIENTATION))
  {
    return c != 65532;
  }

  Code = ublock_getCode(c);
  if (Code == UBLOCK_GENERAL_PUNCTUATION)
  {
    if (c == 8205)
    {
      goto LABEL_5;
    }
  }

  else if (Code == UBLOCK_VARIATION_SELECTORS)
  {
LABEL_5:
    result = 0;
    *a2 = 1;
    return result;
  }

  return 0;
}

uint64_t sub_276D35268(uint64_t result)
{
  if ((result - 65296) < 0xA)
  {
    goto LABEL_2;
  }

  if (result > 65504)
  {
    if (result == 65505)
    {
      LOWORD(result) = 163;
    }

    else if (result == 65509)
    {
      LOWORD(result) = 165;
    }
  }

  else
  {
    if (result == 65284)
    {
LABEL_2:
      LOWORD(result) = result + 288;
      return result;
    }

    if (result == 65504)
    {
      LOWORD(result) = 162;
    }
  }

  return result;
}

uint64_t sub_276D352D8(__int16 a1)
{
  v12 = a1;
  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = objc_msgSend_initWithCharacters_length_(v1, v2, &v12, 1);
  v5 = objc_msgSend_stringByApplyingTransform_reverse_(v3, v4, *MEMORY[0x277CBE750], 1);
  if (objc_msgSend_length(v5, v6, v7))
  {
    v9 = objc_msgSend_characterAtIndex_(v5, v8, 0);
  }

  else
  {
    v9 = objc_msgSend_characterAtIndex_(v3, v8, 0);
  }

  v10 = v9;

  return v10;
}

void sub_276D35380(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a1 + 2 * v6);
      v9 = v8 & 0xFC00;
      v11 = v9 == 55296 || v9 == 56320;
      v12 = v7 + 1;
      if (v12 >= a2 || !v11)
      {
        ++v7;
      }

      else
      {
        v14 = *(a1 + 2 * v12);
        v15 = v9 == 55296;
        if (v9 == 55296)
        {
          v16 = *(a1 + 2 * v6);
        }

        else
        {
          v16 = v14;
        }

        if (!v15)
        {
          v14 = *(a1 + 2 * v6);
        }

        v8 = v14 + (v16 << 10) - 56613888;
        v7 += 2;
      }

      v22 = 0;
      v17 = sub_276D351D4(v8, &v22);
      v18 = v17;
      v19 = a3[1];
      if (v19 == *a3)
      {
        v20 = 0uLL;
        v21 = v17;
        sub_276D354BC(a3, &v20);
        v19 = a3[1];
      }

      if (*(v19 - 8) == v18 || (v22 & 1) != 0)
      {
        v6 = v7;
        *(v19 - 16) = v7 - *(v19 - 24);
      }

      else
      {
        *&v20 = v6;
        *(&v20 + 1) = v7 - v6;
        v21 = v18;
        sub_276D354BC(a3, &v20);
        v6 = v7;
      }
    }

    while (v6 < a2);
  }
}

void sub_276D354BC(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_276D34ED8();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_276D3B9F0(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_276D355C4(UChar32 a1)
{
  Code = ublock_getCode(a1);
  result = 0;
  if (Code > UBLOCK_BOPOMOFO)
  {
    if (Code <= UBLOCK_BALINESE)
    {
      v3 = (Code - 70);
      if (v3 > 0x25)
      {
        goto LABEL_30;
      }

      if (((1 << (Code - 70)) & 0x3000203) != 0)
      {
        return 6;
      }

      if (v3 != 4)
      {
        if (v3 == 37)
        {
          return 4;
        }

LABEL_30:
        if (Code != UBLOCK_HANGUL_COMPATIBILITY_JAMO)
        {
          if (Code != UBLOCK_BOPOMOFO_EXTENDED)
          {
            return result;
          }

          return 5;
        }
      }

      return 10;
    }

    if ((Code - 148) >= 2)
    {
      if (Code == UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C || Code == UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D)
      {
        return 6;
      }

      return result;
    }

    return 2;
  }

  if (Code <= UBLOCK_HEBREW)
  {
    if ((Code - 1) >= 4)
    {
      if (Code == UBLOCK_HEBREW)
      {
        v4 = 8;
      }

      else
      {
        v4 = 0;
      }

      if (Code == UBLOCK_CYRILLIC)
      {
        return 9;
      }

      else
      {
        return v4;
      }
    }

    return 2;
  }

  if (Code > UBLOCK_CJK_SYMBOLS_AND_PUNCTUATION)
  {
    if (Code != UBLOCK_HIRAGANA)
    {
      if (Code == UBLOCK_KATAKANA)
      {
        return 4;
      }

      return 5;
    }

    return 3;
  }

  else
  {
    switch(Code)
    {
      case UBLOCK_ARABIC:
        return 7;
      case UBLOCK_HANGUL_JAMO:
        return 10;
      case UBLOCK_LATIN_EXTENDED_ADDITIONAL:
        return 2;
    }
  }

  return result;
}

CFTypeRef TSWPCreateFontWithName(void *a1, double a2)
{
  v5 = a1;
  if (v5)
  {
    v6 = objc_msgSend_sharedInstance(TSWPFontList, v3, v4);
    v8 = objc_msgSend_fontForPostscriptName_atSize_(v6, v7, v5, a2);
    v11 = objc_msgSend_ctFont(v8, v9, v10);
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

CTFontRef sub_276D357AC(void *a1, int a2, unsigned int a3, CGFloat a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v9 = v7;
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x277CC48B8];
  v17[0] = v7;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v17, &v16, 1);
  v12 = CTFontDescriptorCreateWithAttributes(v11);

  v13 = CTFontCreateWithFontDescriptor(v12, a4, 0);
  CFRelease(v12);
  if ((CTFontGetSymbolicTraits(v13) & 3) == (v10 | a3))
  {
    goto LABEL_5;
  }

  if (!v13)
  {
    CopyWithSymbolicTraits = 0;
    goto LABEL_10;
  }

  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v13, a4, 0, v10 | a3, 3u);
  if (!CopyWithSymbolicTraits)
  {
LABEL_5:
    CopyWithSymbolicTraits = v13;
  }

  else
  {
    CFRelease(v13);
  }

LABEL_10:

  return CopyWithSymbolicTraits;
}

const __CTFont *sub_276D35910(const __CTFont *a1)
{
  v1 = a1;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = CTFontCopyFontDescriptor(a1);
  if (!v2)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "CTFontRef TSWPGetVerticalVersionOfFont(CTFontRef)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 611, 0, "invalid nil value for '%{public}s'", "fd");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
LABEL_15:
    v28 = CFRetain(v1);
    CFAutorelease(v28);
    return v1;
  }

  v4 = v2;
  v5 = *MEMORY[0x277CC4920];
  v6 = CTFontDescriptorCopyAttribute(v2, *MEMORY[0x277CC4920]);
  if (v6 && (v9 = v6, v10 = objc_msgSend_intValue(v6, v7, v8), CFRelease(v9), v10 == 2) || (v11 = CTFontCopyAvailableTables(v1, 0)) == 0)
  {
    CFRelease(v4);
    goto LABEL_15;
  }

  v12 = v11;
  v32.length = CFArrayGetCount(v11);
  v32.location = 0;
  v14 = v1;
  if (CFArrayGetFirstIndexOfValue(v12, v32, 0x766D7478) != -1)
  {
    v30 = v5;
    v31[0] = &unk_288626AF8;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v31, &v30, 1);
    v16 = CTFontDescriptorCreateWithAttributes(v15);

    v14 = v1;
    if (v16)
    {
      Size = CTFontGetSize(v1);
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v1, Size, 0, v16);
      v19 = CopyWithAttributes;
      v14 = v1;
      if (CopyWithAttributes)
      {
        CFAutorelease(CopyWithAttributes);
        v14 = v19;
      }

      CFRelease(v16);
    }
  }

  CFRelease(v12);
  CFRelease(v4);
  v20 = v14 == v1;
  v1 = v14;
  if (v20)
  {
    goto LABEL_15;
  }

  return v14;
}

__CFString *sub_276D35B50(const __CTFont *a1)
{
  v1 = CTFontCopyPostScriptName(a1);

  return v1;
}

uint64_t TSWPFontGetAttributes(uint64_t a1, uint64_t *a2, BOOL *a3, _BYTE *a4, CGFloat *a5)
{
  CTFontGetTypeID();
  result = TSUCFTypeCast();
  if (result)
  {
    v10 = result;
    if (a5)
    {
      *a5 = CTFontGetSize(result);
    }

    result = CTFontGetSymbolicTraits(v10);
    *a3 = (result & 2) != 0;
    *a4 = result & 1;
    if (a2)
    {
      result = CTFontCopyFullName(v10);
LABEL_10:
      *a2 = result;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0.0;
    }

    *a4 = 0;
    *a3 = 0;
    if (a2)
    {
      result = 0;
      goto LABEL_10;
    }
  }

  return result;
}

void TSWPFontGetLineHeight()
{
  CTFontGetTypeID();
  v0 = TSUCFTypeCast();
  if (v0)
  {
    v1 = v0;
    CTFontGetAscent(v0);
    CTFontGetDescent(v1);
    CTFontGetLeading(v1);
  }
}

double sub_276D35C8C(double *a1, int a2, double a3)
{
  v3 = a1[5] + a1[2] + a1[4];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = fmax(v3 + a1[6], a3);
      }
    }

    else
    {
      v3 = v3 * a3 + a1[6];
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v3 = a3;
        break;
      case 3:
        v3 = fmin(v3 + a1[6], a3);
        break;
      case 4:
        v3 = fmax(v3 + a1[6] + a3, 0.0);
        break;
    }
  }

  return v3 + *a1 + a1[7];
}

uint64_t TSWPFastCreateFontForStyle(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v7 = a2;
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "CTFontRef  _Nonnull TSWPFastCreateFontForStyle(TSWPCharacterStyle * _Nullable __strong, TSWPParagraphStyle * _Nonnull __strong, NSUInteger)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1891, 0, "paragraphStyle is not allowed to be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  CachedFontForCharacterStyle_scalePercent = objc_msgSend_findCachedFontForCharacterStyle_scalePercent_(v7, v6, v5, a3);
  if (!CachedFontForCharacterStyle_scalePercent)
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
    objc_msgSend_tsu_addNonNilObject_(v18, v19, v5);
    objc_msgSend_tsu_addNonNilObject_(v18, v20, v7);
    CachedFontForCharacterStyle_scalePercent = sub_276D38B74(v18, a3);

    if (!CachedFontForCharacterStyle_scalePercent)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "CTFontRef  _Nonnull TSWPFastCreateFontForStyle(TSWPCharacterStyle * _Nullable __strong, TSWPParagraphStyle * _Nonnull __strong, NSUInteger)");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 1901, 0, "invalid nil value for '%{public}s'", "font");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      CachedFontForCharacterStyle_scalePercent = TSWPCreateFontWithName(@"TimesNewRomanPSMT", 13.0);
    }
  }

  return CachedFontForCharacterStyle_scalePercent;
}

CTFontRef TSWPCreateSubstituteFontForString(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = objc_msgSend_length(v2, v3, v4);
  CTFontGetTypeID();
  v6 = TSUCFTypeCast();
  if (v6)
  {
    v9.location = 0;
    v9.length = v5;
    v7 = CTFontCreateForString(v6, v2, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_276D35FA4()
{
  if (qword_280A57E78 != -1)
  {
    sub_276F4EE50();
  }

  v1 = qword_280A57E70;

  return v1;
}

void sub_276D35FE8()
{
  v22 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v22, v0, 10, 1);
  objc_msgSend_addCharactersInRange_(v22, v1, 13, 1);
  objc_msgSend_addCharactersInRange_(v22, v2, 8233, 1);
  objc_msgSend_addCharactersInRange_(v22, v3, 11, 1);
  objc_msgSend_addCharactersInRange_(v22, v4, 5, 1);
  objc_msgSend_addCharactersInRange_(v22, v5, 12, 1);
  objc_msgSend_addCharactersInRange_(v22, v6, 6, 1);
  objc_msgSend_addCharactersInRange_(v22, v7, 15, 1);
  objc_msgSend_addCharactersInRange_(v22, v8, 4, 1);
  v11 = objc_msgSend_copy(v22, v9, v10);
  v12 = qword_280A57E70;
  qword_280A57E70 = v11;

  v14 = 1;
  do
  {
    if (objc_msgSend_hasMemberInPlane_(qword_280A57E70, v13, v14))
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "NSCharacterSet *TSWPParagraphBreakingCharacterSet()_block_invoke");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 933, 0, "Unexpected surrogate-pair paragraph breaking character (plane=%u)", v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v14 = (v14 + 1);
  }

  while (v14 != 15);
}

id sub_276D361C0()
{
  if (qword_280A57E88 != -1)
  {
    sub_276F4EE64();
  }

  v1 = qword_280A57E80;

  return v1;
}

void sub_276D36204()
{
  v0 = sub_276D35FA4();
  v8 = objc_msgSend_mutableCopy(v0, v1, v2);

  objc_msgSend_addCharactersInRange_(v8, v3, 8232, 1);
  v6 = objc_msgSend_copy(v8, v4, v5);
  v7 = qword_280A57E80;
  qword_280A57E80 = v6;
}

id TSWPColumnBreakingCharacterSet()
{
  if (qword_280A57E98 != -1)
  {
    sub_276F4EE78();
  }

  v1 = qword_280A57E90;

  return v1;
}

void sub_276D362E0(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277CCA900];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C%C%C", 4, 5, 12);
  v4 = objc_msgSend_characterSetWithCharactersInString_(v2, v3, v6);
  v5 = qword_280A57E90;
  qword_280A57E90 = v4;
}

uint64_t IsParagraphBreakingCharacter(uint64_t a1)
{
  v2 = sub_276D35FA4();
  IsMember = objc_msgSend_longCharacterIsMember_(v2, v3, a1);

  return IsMember;
}

id sub_276D363D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 0x2006u)
  {
    if (a1 <= 0x1Fu)
    {
      if (a1 <= 9u)
      {
        switch(a1)
        {
          case 4u:
            v22 = sub_276E32640(a1, a2, a3);
            v7 = v22;
            if (v3)
            {
              objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Section Breaks", &stru_28860A0F0, @"TSText");
            }

            else
            {
              objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Section Break", &stru_28860A0F0, @"TSText");
            }

            break;
          case 5u:
            v20 = sub_276E32640(a1, a2, a3);
            v7 = v20;
            if (v3)
            {
              objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"Page Breaks", &stru_28860A0F0, @"TSText");
            }

            else
            {
              objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"Page Break", &stru_28860A0F0, @"TSText");
            }

            break;
          case 9u:
            v12 = sub_276E32640(a1, a2, a3);
            v7 = v12;
            if (v3)
            {
              objc_msgSend_localizedStringForKey_value_table_(v12, v13, @"Tabs", &stru_28860A0F0, @"TSText");
            }

            else
            {
              objc_msgSend_localizedStringForKey_value_table_(v12, v13, @"Tab", &stru_28860A0F0, @"TSText");
            }

            break;
          default:
            goto LABEL_59;
        }

        goto LABEL_51;
      }

      if (a1 > 0xCu)
      {
        if (a1 != 13)
        {
          if (a1 != 14)
          {
            goto LABEL_59;
          }

          v14 = sub_276E32640(a1, a2, a3);
          v7 = v14;
          if (v3)
          {
            objc_msgSend_localizedStringForKey_value_table_(v14, v15, @"Footnotes", &stru_28860A0F0, @"TSText");
          }

          else
          {
            objc_msgSend_localizedStringForKey_value_table_(v14, v15, @"Footnote", &stru_28860A0F0, @"TSText");
          }

          goto LABEL_51;
        }
      }

      else if (a1 - 10 >= 2)
      {
        if (a1 != 12)
        {
          goto LABEL_59;
        }

        v5 = sub_276E32640(a1, a2, a3);
        v7 = v5;
        if (v3)
        {
          objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Column Breaks", &stru_28860A0F0, @"TSText");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Column Break", &stru_28860A0F0, @"TSText");
        }

        goto LABEL_51;
      }

      goto LABEL_37;
    }

    if (a1 - 0x2000 >= 7 && a1 != 32)
    {
      if (a1 != 160)
      {
        goto LABEL_59;
      }

      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if (a1 <= 0x2028u)
  {
    if (a1 - 8200 >= 4)
    {
      if (a1 != 8199)
      {
        if (a1 != 8232)
        {
          goto LABEL_59;
        }

        v8 = sub_276E32640(a1, a2, a3);
        v7 = v8;
        if (v3)
        {
          objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Line Breaks", &stru_28860A0F0, @"TSText");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Line Break", &stru_28860A0F0, @"TSText");
        }

        goto LABEL_51;
      }

      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if (a1 >= 0x3000u)
  {
    switch(a1)
    {
      case 0x3000u:
        goto LABEL_16;
      case 0xFFFCu:
        v24 = sub_276E32640(a1, a2, a3);
        v7 = v24;
        if (v3)
        {
          objc_msgSend_localizedStringForKey_value_table_(v24, v25, @"Attachments", &stru_28860A0F0, @"TSText");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v24, v25, @"Attachment", &stru_28860A0F0, @"TSText");
        }

        goto LABEL_51;
      case 0xFEFFu:
        goto LABEL_42;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x2029u:
LABEL_37:
        v16 = sub_276E32640(a1, a2, a3);
        v7 = v16;
        if (v3)
        {
          objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"Paragraph Breaks", &stru_28860A0F0, @"TSText");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"Paragraph Break", &stru_28860A0F0, @"TSText");
        }

        v26 = LABEL_51:;
        v4 = v26;

        break;
      case 0x202Fu:
LABEL_42:
        v18 = sub_276E32640(a1, a2, a3);
        v7 = v18;
        if (v3)
        {
          objc_msgSend_localizedStringForKey_value_table_(v18, v19, @"Non Breaking Spaces", &stru_28860A0F0, @"TSText");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v18, v19, @"Non Breaking Space", &stru_28860A0F0, @"TSText");
        }

        goto LABEL_51;
      case 0x205Fu:
LABEL_16:
        v10 = sub_276E32640(a1, a2, a3);
        v7 = v10;
        if (v3)
        {
          objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"Spaces", &stru_28860A0F0, @"TSText");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"Space", &stru_28860A0F0, @"TSText");
        }

        goto LABEL_51;
    }
  }

LABEL_59:

  return v4;
}

uint64_t sub_276D36938(uint64_t a1, const char *a2)
{
  if (qword_280A57EA8 != -1)
  {
    sub_276F4EE8C();
  }

  v3 = qword_280A57EA0;

  return objc_msgSend_longCharacterIsMember_(v3, a2, a1);
}

uint64_t sub_276D3698C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], a2, a3);
  v4 = qword_280A57EA0;
  qword_280A57EA0 = v3;

  v6 = 1;
  do
  {
    result = objc_msgSend_hasMemberInPlane_(qword_280A57EA0, v5, v6);
    if (result)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "BOOL p_isWhitespaceCharacterNotIncludingBreaks(UTF32Char)_block_invoke");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1049, 0, "Unexpected surrogate-pair whitespace character (plane=%u)", v6);

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }

    v6 = (v6 + 1);
  }

  while (v6 != 15);
  return result;
}

uint64_t IsWhitespaceCharacter(uint64_t a1, const char *a2)
{
  if (sub_276D36938(a1, a2))
  {
    return 1;
  }

  LODWORD(result) = IsParagraphBreakingCharacter(a1);
  if (a1 == 8232)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_276D36B00(uint64_t a1, const char *a2)
{
  if (qword_280A57EB8 != -1)
  {
    sub_276F4EEA0();
  }

  v3 = qword_280A57EB0;

  return objc_msgSend_longCharacterIsMember_(v3, a2, a1);
}

void sub_276D36B54(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_tswp_breakingSpaceCharacterSet(MEMORY[0x277CCA900], a2, a3);
  v4 = qword_280A57EB0;
  qword_280A57EB0 = v3;
}

uint64_t sub_276D36B94(uint64_t a1)
{
  IsMember = 1;
  if (a1 <= 8211)
  {
    if (!a1 || a1 == 14)
    {
      return IsMember;
    }
  }

  else if (a1 == 8212 || a1 == 8232 || a1 == 65532)
  {
    return IsMember;
  }

  v3 = IsParagraphBreakingCharacter(a1);
  if (a1 != 8232 && (v3 & 1) == 0)
  {
    v6 = objc_msgSend_tswp_spaceCharacterSet(MEMORY[0x277CCA900], v4, v5);
    IsMember = objc_msgSend_longCharacterIsMember_(v6, v7, a1);
  }

  return IsMember;
}

uint64_t sub_276D36C50(uint64_t a1, const char *a2)
{
  if (qword_280A57EC8 != -1)
  {
    sub_276F4EEB4();
  }

  v3 = qword_280A57EC0;

  return objc_msgSend_longCharacterIsMember_(v3, a2, a1);
}

void sub_276D36CA4()
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = xmmword_276F98C80;
  v7 = unk_276F98C90;
  v8 = xmmword_276F98CA0;
  v9 = unk_276F98CB0;
  LODWORD(v10) = 10551138;
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = objc_msgSend_initWithCharacters_length_(v0, v1, &v6, 34);
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v3, v2, v6, v7, v8, v9, v10, v11);
  v5 = qword_280A57EC0;
  qword_280A57EC0 = v4;
}

uint64_t sub_276D36D74(uint64_t a1, const char *a2)
{
  if (qword_280A57ED8 != -1)
  {
    sub_276F4EEC8();
  }

  v3 = qword_280A57ED0;

  return objc_msgSend_longCharacterIsMember_(v3, a2, a1);
}

void sub_276D36DC8()
{
  v14 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_276F98CC4, sizeof(__dst));
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = objc_msgSend_initWithCharacters_length_(v0, v1, __dst, 129);
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], v3, v2);
  v7 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v5, v6);
  objc_msgSend_formUnionWithCharacterSet_(v4, v8, v7);

  v11 = objc_msgSend_copy(v4, v9, v10);
  v12 = qword_280A57ED0;
  qword_280A57ED0 = v11;
}

void sub_276D36EAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276D36EE0(uint64_t a1, const char *a2)
{
  if (qword_280A57EE8 != -1)
  {
    sub_276F4EEDC();
  }

  v3 = qword_280A57EE0;

  return objc_msgSend_longCharacterIsMember_(v3, a2, a1);
}

void sub_276D36F34()
{
  v7 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_276F98DC6, sizeof(__dst));
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = objc_msgSend_initWithCharacters_length_(v0, v1, __dst, 767);
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v3, v2);
  v5 = qword_280A57EE0;
  qword_280A57EE0 = v4;
}

uint64_t sub_276D36FFC(uint64_t a1, const char *a2)
{
  if (a1 > 12338)
  {
    if ((a1 - 12339) >= 2)
    {
      v6 = 65073;
      if (a1 != 65073)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 12341;
    }

    v7 = a2 == v6;
    return !v7;
  }

  if ((a1 - 8208) <= 0x16)
  {
    v4 = 1 << (a1 - 16);
    if ((v4 & 0x3D) != 0)
    {
      goto LABEL_4;
    }

    if ((v4 & 0x600000) != 0)
    {
      v7 = a2 == a1;
      return !v7;
    }
  }

  if (a1 != 45)
  {
    if (a1 == 47)
    {
      v7 = a2 == 47;
      return !v7;
    }

LABEL_20:
    if (IsWhitespaceCharacter(a1, a2) && (IsWhitespaceCharacter(a2, v8) & 1) != 0)
    {
      return 0;
    }

    if (sub_276D36EE0(a1, v8))
    {
      return sub_276D36EE0(a2, v9) ^ 1;
    }

    else
    {
      return 1;
    }
  }

LABEL_4:
  if ((a2 - 8208) <= 5 && a2 != 8209)
  {
    return 0;
  }

  return a2 != 45;
}

double sub_276D37110(int a1)
{
  result = 0.0;
  if (a1 > 10628)
  {
    if (((a1 - 12289) > 0x1E || ((1 << (a1 - 1)) & 0x51F9FF81) == 0) && (a1 - 10629) >= 2)
    {
      if (a1 != 12539)
      {
        return result;
      }

      return 0.5;
    }

    return 0.25;
  }

  if (a1 > 122)
  {
    if ((a1 - 8216) <= 5 && ((1 << (a1 - 24)) & 0x33) != 0 || (a1 - 125) <= 0x3E && ((1 << (a1 - 125)) & 0x4000400000000001) != 0 || a1 == 123)
    {
      return 0.25;
    }
  }

  else
  {
    v2 = a1 - 32;
    if ((a1 - 32) > 0x3D)
    {
      return result;
    }

    if (((1 << v2) & 0x2800000000001300) != 0)
    {
      return 0.25;
    }

    if (((1 << v2) & 0xC000000) != 0)
    {
      return 0.5;
    }

    if (a1 == 32)
    {
      return 0.0833333333;
    }
  }

  return result;
}

unint64_t TSWPPreviousCharIndexFromTextSource(unint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_length(v3, v4, v5);
  if (!v3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSWPCharIndex TSWPPreviousCharIndexFromTextSource(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1335, 0, "invalid nil value for '%{public}s'", "source");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (objc_msgSend_charIndexMappedToStorage_(v3, v6, v7) < a1)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "TSWPCharIndex TSWPPreviousCharIndexFromTextSource(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 1338, 0, "charIndex should be <= end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
LABEL_14:
    a1 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_19;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v23 = objc_msgSend_charIndexMappedFromStorage_(v3, v15, a1);
  v26 = v23;
  if (!v23)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "TSWPCharIndex TSWPPreviousCharIndexFromTextSource(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 1344, 0, "charIndex should not be at the start of the text source");
LABEL_17:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    goto LABEL_19;
  }

  if (v23 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "TSWPCharIndex TSWPPreviousCharIndexFromTextSource(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v39, v33, v35, 1345, 0, "charIndex should be < NSNotFound");
    goto LABEL_17;
  }

  v28 = objc_msgSend_string(v3, v24, v25);
  for (i = a1; i == a1 && v26; i = objc_msgSend_charIndexMappedToStorage_(v3, v31, v26))
  {
    v30 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v28, v27, --v26);
    if (v26 >= v30)
    {
      v26 = v30;
    }
  }

  a1 = i;
LABEL_19:

  return a1;
}

uint64_t sub_276D37528(unint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_length(v3, v4, v5);
  if (!v3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSWPCharIndex TSWPNextCharIndexFromTextSource(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1366, 0, "invalid nil value for '%{public}s'", "source");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (objc_msgSend_charIndexMappedToStorage_(v3, v6, v7) < a1)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "TSWPCharIndex TSWPNextCharIndexFromTextSource(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 1369, 0, "charIndex should be <= end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
LABEL_15:
    i = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_19;
  }

  if (!v3)
  {
    goto LABEL_15;
  }

  v23 = objc_msgSend_charIndexMappedFromStorage_(v3, v15, a1);
  v26 = v23;
  if (v23 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "TSWPCharIndex TSWPNextCharIndexFromTextSource(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 1372, 0, "charIndex should be < NSNotFound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    goto LABEL_17;
  }

  if (v23 >= v7 - 1)
  {
LABEL_17:
    i = objc_msgSend_charIndexMappedToStorage_(v3, v24, v26 + 1);
    goto LABEL_19;
  }

  v28 = objc_msgSend_string(v3, v24, v25);
  for (i = a1; i == a1 && v26 < v7; i = v32)
  {
    v30 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v28, v27, v26);
    if (&v31[v30] <= v26 + 1)
    {
      v32 = objc_msgSend_charIndexMappedToStorage_(v3, v31, ++v26);
    }

    else
    {
      v26 = &v31[v30];
      v32 = objc_msgSend_charIndexMappedToStorage_(v3, v31, &v31[v30]);
    }
  }

LABEL_19:
  return i;
}

uint64_t sub_276D377F4(unint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "UTF32Char TSWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1459, 0, "invalid nil value for '%{public}s'", "str");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v14 = objc_msgSend_length(v5, v3, v4);
  if (v14 <= a1)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "UTF32Char TSWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 1461, 0, "index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    v16 = 0;
  }

  else
  {
    v16 = objc_msgSend_characterAtIndex_(v5, v13, a1);
    if ((v16 & 0xFC00) == 0xDC00)
    {
      v17 = v5;
      v20 = v17;
      if (a1)
      {
        v21 = objc_msgSend_characterAtIndex_(v17, v18, a1 - 1);
      }

      else
      {
        v21 = 0;
      }

      if (a1 + 1 >= objc_msgSend_length(v20, v18, v19))
      {
        v33 = 0;
      }

      else
      {
        v33 = objc_msgSend_characterAtIndex_(v20, v32, a1 + 1);
      }

      v34 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v20, v32, a1);
      v36 = v35;
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "UTF32Char TSWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
      v53.location = v34;
      v53.length = v36;
      v41 = NSStringFromRange(v53);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v40, 1470, 0, "index inside surrogate pair. characters:U+%04x U+%04x U+%04x, sequence range: %{public}@", v21, v16, v33, v41);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
    }

    else if (a1 + 1 < v14 && (v16 & 0xFC00) == 0xD800)
    {
      v29 = objc_msgSend_characterAtIndex_(v5, v15, a1 + 1);
      v31 = v29;
      if (v29 >> 10 == 55)
      {
        v16 = (v29 + (v16 << 10) - 56613888);
      }

      else
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "UTF32Char TSWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)");
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 1476, 0, "invalid surrogate pair: %x:%x", v16, v31);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
      }
    }
  }

  return v16;
}

unint64_t sub_276D37B98(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  v9 = a1 + a2;
  if (a1 == *MEMORY[0x277D81490] && a2 == *(MEMORY[0x277D81490] + 8))
  {
    v23 = a1;
  }

  else
  {
    if (!v5)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "NSRange TSWPRangeByExtendingRangeToWhitespaceForTextSource(NSRange, __strong id<TSWPTextSource>)");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1491, 0, "invalid nil value for '%{public}s'", "textSource");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }

    v18 = objc_msgSend_length(v8, v6, v7);
    v22 = objc_msgSend_string(v8, v19, v20);
    do
    {
      v23 = a1;
      if (!a1)
      {
        break;
      }

      --a1;
      v24 = objc_msgSend_characterAtIndex_(v22, v21, v23 - 1);
    }

    while ((IsWhitespaceCharacter(v24, v25) & 1) == 0);
    if (v9 < v18)
    {
      while (1)
      {
        v26 = objc_msgSend_characterAtIndex_(v22, v21, v9);
        if (IsWhitespaceCharacter(v26, v27))
        {
          break;
        }

        if (++v9 >= v18)
        {
          v9 = v18;
          break;
        }
      }
    }
  }

  if (v23 < v9)
  {
    v9 = v23;
  }

  return v9;
}

uint64_t sub_276D37D44(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "BOOL TSWPHasWideBreakingCharacter(TSWPCharIndex, __strong id<TSWPTextSource>)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1512, 0, "bad charIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    hasColumnStyleForParagraphBreakAtCharIndex = 0;
  }

  else
  {
    v14 = objc_msgSend_characterAtIndex_(v3, v4, a1);
    if (v14 > 0xC || (hasColumnStyleForParagraphBreakAtCharIndex = 1, ((1 << v14) & 0x1030) == 0))
    {
      hasColumnStyleForParagraphBreakAtCharIndex = objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(v5, v15, a1);
    }
  }

  return hasColumnStyleForParagraphBreakAtCharIndex;
}

BOOL sub_276D37E68(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2 + a3;
  if (a2 >= a2 + a3)
  {
LABEL_6:
    v8 = 1;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(v6, v5, a2);
      v12 = v9;
      if (v9)
      {
        if ((objc_msgSend_isAnchored(v9, v10, v11) & 1) == 0)
        {
          break;
        }
      }

      v8 = ++a2 >= v7;
      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  return v8;
}

uint64_t sub_276D37F20(int a1)
{
  v2 = MEMORY[0x277CA4670]();
  if (v2 > 0x12)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_276F99508[v2];
  }

  if (a1 == 65532)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t TSWPGetDefaultParagraphDirectionWithArabicNumbers(void *a1, int a2)
{
  v3 = a1;
  v7 = objc_msgSend_length(v3, v4, v5);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = objc_msgSend_tswp_utf32CharacterAtIndex_(v3, v6, v8);
      v10 = sub_276D37F20(v9);
      if (v10 == 1)
      {
        break;
      }

      if (v10 == 2 || a2 && v10 == 3 && MEMORY[0x277CA4670](v9) == 5)
      {
        v12 = 1;
        goto LABEL_15;
      }

      if ((v9 & 0xFFFF0000) != 0)
      {
        v11 = v8 + 1;
      }

      else
      {
        v11 = v8;
      }

      v8 = v11 + 1;
      if (v11 + 1 >= v7)
      {
        goto LABEL_12;
      }
    }

    v12 = 0;
  }

  else
  {
LABEL_12:
    v12 = 0xFFFFFFFFLL;
  }

LABEL_15:

  return v12;
}

uint64_t TSWPGetDefaultParagraphDirectionForFormattedText(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  isLanguageCharacterDirectionRightToLeft = objc_msgSend_isLanguageCharacterDirectionRightToLeft(v6, v7, v8);
  v12 = 0;
  if (a2 <= 260)
  {
    switch(a2)
    {
      case 256:
        goto LABEL_23;
      case 257:
        if (isLanguageCharacterDirectionRightToLeft)
        {
          v21 = objc_msgSend_currencyUsesRightToLeftWritingDirection(v6, v10, v11);
          goto LABEL_21;
        }

        break;
      case 258:
        v13 = objc_msgSend_percentSymbol(v6, v10, v11);
        v15 = objc_msgSend_containsString_(v13, v14, @"%");

        if ((v15 & 1) == 0)
        {
          v18 = objc_msgSend_percentSymbol(v6, v16, v17);
          v20 = objc_msgSend_containsString_(v18, v19, @"٪");

          if (v20)
          {
            v12 = 1;
          }

          else
          {
            v12 = 0xFFFFFFFFLL;
          }

          goto LABEL_23;
        }

        break;
      default:
        goto LABEL_17;
    }

    v12 = 0;
    goto LABEL_23;
  }

  if (a2 > 267)
  {
    if (a2 == 269)
    {
      goto LABEL_23;
    }

    if (a2 == 268)
    {
      goto LABEL_15;
    }

LABEL_17:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  if (a2 == 261)
  {
LABEL_15:
    if (isLanguageCharacterDirectionRightToLeft)
    {
      v12 = 1;
      goto LABEL_23;
    }

    v21 = objc_msgSend_containsString_(v5, v10, @"\u200F");
LABEL_21:
    v12 = v21;
    goto LABEL_23;
  }

  if (a2 != 262)
  {
    goto LABEL_17;
  }

LABEL_23:

  return v12;
}

BOOL sub_276D381A8(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_length(v1, v2, v3);
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_tswp_utf32CharacterAtIndex_(v1, v4, v6);
      v8 = sub_276D37F20(v7) & 0xE;
      v9 = v8 == 2;
      if (v8 == 2)
      {
        break;
      }

      v10 = (v7 & 0xFFFF0000) != 0 ? v6 + 1 : v6;
      v6 = v10 + 1;
    }

    while (v10 + 1 < v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL sub_276D38258(unsigned int a1)
{
  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x5694022000000) == 0)
  {
    return a1 == 94 || a1 == 98;
  }

  return result;
}

id TSWPResolvePropertyForStyles(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_firstObject(v3, v4, v5);
  v8 = v6;
  if (v6 && objc_msgSend_wantsCustomResolveLogicForProperty_forStyles_(v6, v7, a2, v3))
  {
    v10 = objc_msgSend_resolvedValueForProperty_inStyles_(v8, v9, a2, v3);
  }

  else
  {
    v13 = sub_276D38258(a2);
    for (i = 0; ; i = v16 + 1)
    {
      v16 = i;
      if (objc_msgSend_count(v3, v11, v12) <= i)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v17 = objc_msgSend_objectAtIndexedSubscript_(v3, v15, i);
      v19 = v17;
      if (v17)
      {
        v10 = objc_msgSend_boxedValueForProperty_(v17, v18, a2);
        if (v10)
        {
          v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21);

          if (v10 != v22)
          {
            goto LABEL_13;
          }

          if (v13)
          {
            break;
          }
        }
      }
    }

    v10 = 0;
LABEL_13:
  }

LABEL_14:

  return v10;
}

id TSWPResolvePropertyForStyles(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  objc_msgSend_tsu_addNonNilObject_(v9, v10, v5);
  objc_msgSend_tsu_addNonNilObject_(v9, v11, v6);
  v12 = TSWPResolvePropertyForStyles(v9, a3);

  return v12;
}

id TSWPResolvePropertyForStyles(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  objc_msgSend_tsu_addNonNilObject_(v12, v13, v7);
  objc_msgSend_tsu_addNonNilObject_(v12, v14, v8);
  objc_msgSend_tsu_addNonNilObject_(v12, v15, v9);
  v16 = TSWPResolvePropertyForStyles(v12, a4);

  return v16;
}

id TSWPResolvePropertyForStyles(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
  objc_msgSend_tsu_addNonNilObject_(v15, v16, v9);
  objc_msgSend_tsu_addNonNilObject_(v15, v17, v10);
  objc_msgSend_tsu_addNonNilObject_(v15, v18, v11);
  objc_msgSend_tsu_addNonNilObject_(v15, v19, v12);
  v20 = TSWPResolvePropertyForStyles(v15, a5);

  return v20;
}

uint64_t sub_276D386B0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10);
  objc_msgSend_tsu_addNonNilObject_(v11, v12, v7);
  objc_msgSend_tsu_addNonNilObject_(v11, v13, v8);
  v14 = sub_276D38764(v11, a3, a4);

  return v14;
}

uint64_t sub_276D38764(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = objc_msgSend_firstObject(v5, v6, v7);
  if (objc_msgSend_wantsCustomResolveLogicForProperty_forStyles_(v8, v9, a2, v5))
  {
    a3 = objc_msgSend_resolvedIntForProperty_inStyles_(v8, v10, a2, v5);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v5;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
    if (v14)
    {
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = objc_msgSend_intValueForProperty_(*(*(&v19 + 1) + 8 * i), v13, a2, v19);
          if (v17 != 0x80000000)
          {
            a3 = v17;
            goto LABEL_13;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v19, v23, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return a3;
}

double sub_276D388FC(void *a1, void *a2, uint64_t a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10);
  objc_msgSend_tsu_addNonNilObject_(v11, v12, v7);
  objc_msgSend_tsu_addNonNilObject_(v11, v13, v8);
  v14 = sub_276D389B0(v11, a3, a4);

  return v14;
}

double sub_276D389B0(void *a1, uint64_t a2, double a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = objc_msgSend_firstObject(v5, v6, v7);
  if (objc_msgSend_wantsCustomResolveLogicForProperty_forStyles_(v8, v9, a2, v5))
  {
    objc_msgSend_resolvedFloatForProperty_inStyles_(v8, v10, a2, v5);
    a3 = v11;
    v12 = INFINITY;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v5;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
    if (v16)
    {
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_floatValueForProperty_(*(*(&v21 + 1) + 8 * i), v15, a2, v21);
          if (v19 != INFINITY)
          {
            v12 = v19;
            goto LABEL_13;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v21, v25, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v12 = INFINITY;
LABEL_13:
  }

  if (v12 != INFINITY)
  {
    a3 = v12;
  }

  return a3;
}

uint64_t sub_276D38B74(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = TSWPResolvePropertyForStyles(v3, 53);
  if (!v4)
  {
    v6 = TSWPResolvePropertyForStyles(v3, 16);
    if (!v6)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "CTFontRef  _Nonnull TSWPCreateFontForStylesWithScale(NSArray<TSSStyle *> * _Nonnull __strong, NSUInteger)");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1930, 0, "Failed to resolve font name");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
      v6 = @"Helvetica";
    }

    v14 = sub_276D38764(v3, 19, 0);
    v15 = sub_276D38764(v3, 20, 0);
    v16 = sub_276D389B0(v3, 17, 12.0);
    v17 = sub_276D38764(v3, 37, 0);
    v18 = TSWPResolvePropertyForStyles(v3, 43);
    v19 = v16 * a2 / 100.0;
    if (v17)
    {
      v19 = v19 * 0.666666687;
    }

    v4 = sub_276D38D60(v6, v14 != 0, v15 != 0, v18, v19);
  }

  return v4;
}

CFTypeRef sub_276D38D60(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v9 = a1;
  v10 = a4;
  v13 = objc_msgSend_sharedInstance(TSWPFontList, v11, v12);
  v15 = objc_msgSend_fontForPostscriptName_(v13, v14, v9);
  v17 = objc_msgSend_copyWithSize_bold_italic_traits_(v15, v16, a2, a3, v10, a5);
  v20 = objc_msgSend_ctFont(v17, v18, v19);
  v21 = CFRetain(v20);

  return v21;
}

void TSWPDefaultLineHeightForFont(const __CTFont *a1)
{
  Ascent = CTFontGetAscent(a1);
  Descent = CTFontGetDescent(a1);
  Leading = CTFontGetLeading(a1);
  BoundingBox = CTFontGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v9 = floor(Leading + 0.5);
  if (Leading <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  v11 = y;
  if (CGRectGetMaxY(BoundingBox) <= Ascent)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v12 = CGRectGetMinY(v20) < -(Descent + Leading);
  }

  else
  {
    v12 = 1;
  }

  glyphs = 0;
  characters = 192;
  if (v12 && v10 == 0.0 && CTFontGetGlyphsForCharacters(a1, &characters, &glyphs, 1))
  {
    BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a1, kCTFontOrientationDefault, &glyphs, 0, 1);
    v13 = BoundingRectsForGlyphs.origin.x;
    v14 = BoundingRectsForGlyphs.origin.y;
    v15 = BoundingRectsForGlyphs.size.width;
    v16 = BoundingRectsForGlyphs.size.height;
    if (CGRectGetMaxY(BoundingRectsForGlyphs) <= Ascent)
    {
      v22.origin.x = v13;
      v22.origin.y = v14;
      v22.size.width = v15;
      v22.size.height = v16;
      CGRectGetMinY(v22);
    }
  }
}

void sub_276D38FF4(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = objc_msgSend_sharedCache(TSWPFontMetricsCache, a2, a3);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_fontHeightInfoForFont_(v6, v7, a1);
  }

  else
  {
    a4[4] = 0u;
    a4[5] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }
}

const __CTFont *sub_276D39080(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = sub_276D388FC(a2, v5, 17, 0.0);
  FontForStyle = TSWPFastCreateFontForStyle(0, v5, a3);
  Size = CTFontGetSize(FontForStyle);
  v9 = a3 / 100.0 * v6;
  if (v9 != Size)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(FontForStyle, v9, 0, 0);
    CFRelease(FontForStyle);
    FontForStyle = CopyWithAttributes;
  }

  return FontForStyle;
}

void *sub_276D39148(const void *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    CopyWithAttributes = TSWPCreateFontWithName(v5, a3);
  }

  else if (CTFontGetSize(a1) == a3)
  {
    CopyWithAttributes = CFRetain(a1);
  }

  else
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(a1, a3, 0, 0);
  }

  v8 = CopyWithAttributes;

  return v8;
}

double sub_276D391DC(void *a1)
{
  v1 = a1;
  v6 = 1.0;
  if (objc_msgSend_scaleWithText(v1, v2, v3))
  {
    objc_msgSend_scale(v1, v4, v5);
    if (v9 != 1.0)
    {
      objc_msgSend_scale(v1, v7, v8);
      v6 = v10;
    }
  }

  return v6;
}

uint64_t sub_276D39248(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = TSWPResolvePropertyForStyles(0, v9, 53);
  if (!v13)
  {
    v14 = sub_276D39080(v9, v10, a5);
    Size = CTFontGetSize(v14);
    v16 = sub_276D391DC(v12);
    v19 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18);
    isEqual = objc_msgSend_isEqual_(v11, v20, v19);
    v22 = Size * v16;

    if (isEqual)
    {

      v11 = 0;
    }

    v13 = sub_276D39148(v14, v11, v22);
    CFRelease(v14);
  }

  return v13;
}

double sub_276D39394(void *a1, void *a2, void *a3, double a4)
{
  v7 = a3;
  v8 = sub_276D39080(a1, a2, a4);
  Ascent = CTFontGetAscent(v8);
  Descent = CTFontGetDescent(v8);
  objc_msgSend_scale(v7, v11, v12);
  v14 = v13;
  CFRelease(v8);

  return (Ascent + Descent) * v14;
}

void sub_276D39460(uint64_t a1, const char *a2, uint64_t a3, int a4, unsigned int a5, int a6, double a7)
{
  v10 = a3;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  sub_276D38FF4(a1, a2, a3, &v23);
  if (a1 != a2 && *&v28 == 0.0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    sub_276D38FF4(a2, v14, v15, &v17);
    *&v28 = v22;
  }

  v16 = sub_276D39570(a1, v14, v15);
  *&v26 = *&v26 + v16 - (*(&v25 + 1) + *&v24 + *&v25 + *(&v25 + 1));
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  sub_276D395EC(&v17, v10, a4, a5, a6, a7);
}

double sub_276D39570(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  sub_276D38FF4(a1, a2, a3, &v5);
  v3 = rint(*&v7 + *(&v8 + 1)) * 5.3636991;
  result = *(&v8 + 1) + *&v5 + *&v8 + *&v7 + *(&v7 + 1) + fmax(*&v6, *(&v5 + 1));
  if (result >= v3)
  {
    return v3;
  }

  return result;
}

double sub_276D395EC(double *a1, int a2, int a3, unsigned int a4, int a5, double a6)
{
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = v6 + v7;
  v10 = (v6 + v7 + v8 + a1[6]) * 0.0440277313;
  if (a1[11] != 0.0)
  {
    v10 = a1[11];
  }

  v11 = fmax(v10, 1.0);
  if (a5 == 1)
  {
    v12 = -v6;
    v13 = -(v7 + v8 - (v12 - v10) - (v8 + v9 * 0.5));
    if (!a3)
    {
      v13 = v12;
    }

    if (a2 == 2)
    {
      v13 = v10 + v13;
    }

    if (a2 && !a3 && a4 <= 3)
    {
      v13 = v13 - v11;
    }
  }

  else
  {
    if (a3)
    {
      v14 = -(v7 + v8 - (v7 + v10) - (v8 + v9 * 0.5));
    }

    else
    {
      if (!a2 || (v14 = a1[4], a4 >= 4))
      {
        v14 = -a1[10];
      }

      if (v14 < 1.0)
      {
        v14 = floor(v7 + a1[7]) * 5.3636991 * 0.0880554625;
      }
    }

    v15 = fmax(fmax(v10, 1.75) - v10, 0.0) + v14;
    if (a3)
    {
      v15 = v14;
    }

    v16 = v14 - v10;
    if (a2 != 2)
    {
      v16 = v14;
    }

    if (a2 == 3)
    {
      v13 = v15;
    }

    else
    {
      v13 = v16;
    }
  }

  return v13 + a6;
}

void sub_276D3976C(uint64_t a1, const char *a2, uint64_t a3, double a4)
{
  v4 = a3;
  v5 = a2;
  v8 = sub_276D39570(a1, a2, a3);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_276D38FF4(a1, v9, v10, &v12);
  *&v15 = *&v15 + v8 - (*&v13 + *&v14 + *(&v14 + 1) + *&v15);
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  v11[5] = v17;
  v11[0] = v12;
  v11[1] = v13;
  sub_276D39824(v11, v5, v4, a4);
}

double sub_276D39824(double *a1, int a2, int a3, double a4)
{
  result = a4 + a1[9] * -0.5;
  if (a2 && !a3)
  {
    return -(a1[4] + a1[5] - result - (a1[5] + (a1[2] + a1[4]) * 0.5));
  }

  if (a2)
  {
    return 0.0;
  }

  return result;
}

void sub_276D398C4(CGRect **a1)
{
  v1 = *MEMORY[0x277CBF398];
  v2 = *(MEMORY[0x277CBF398] + 8);
  v3 = *(MEMORY[0x277CBF398] + 16);
  v4 = *(MEMORY[0x277CBF398] + 24);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    *&v1 = CGRectUnion(*&v1, *v5++);
  }
}

uint64_t sub_276D39910(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_lowercaseString(a1, a2, a3);
  if (qword_280A57EF0 != -1)
  {
    sub_276F4EEF0();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_280A57EF8, v3, v4);
  v8 = v5;
  if (!v5 || (v9 = objc_msgSend_intValue(v5, v6, v7), v9 == 7))
  {
    if (objc_msgSend_length(v4, v6, v7) < 2)
    {
      v9 = 7;
    }

    else
    {
      v11 = objc_msgSend_substringWithRange_(v4, v10, 0, 2);
      v13 = objc_msgSend_objectForKeyedSubscript_(qword_280A57EF8, v12, v11);
      v16 = v13;
      if (v13)
      {
        v9 = objc_msgSend_intValue(v13, v14, v15);
      }

      else
      {
        v9 = 7;
      }
    }
  }

  return v9;
}

void sub_276D39A38()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_288626B10, @"zh-hans", &unk_288626B10, @"zh_hans", &unk_288626B28, @"zh-hant", &unk_288626B28, @"zh_hant", &unk_288626B10, @"zh", &unk_288626AF8, @"ja", &unk_288626B40, @"ko", &unk_288626B58, *MEMORY[0x277D81448], 0);
  v3 = qword_280A57EF8;
  qword_280A57EF8 = v2;
}

BOOL sub_276D39B0C(void *a1, NSUInteger a2, NSUInteger a3)
{
  v5 = a1;
  v8 = v5;
  if (qword_280A57F08 == -1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_276F4EF04();
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (a2 == *MEMORY[0x277D81490] && a3 == *(MEMORY[0x277D81490] + 8))
  {
    v10 = objc_msgSend_length(v8, v6, v7);
    v11 = 0;
  }

  else
  {
    v10 = a3;
    v11 = a2;
  }

  if (v11 + v10 <= objc_msgSend_length(v8, v6, v7))
  {
    v24 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v8, v12, qword_280A57F00, 0, v11, v10) != 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_13;
  }

  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "BOOL TSWPStringContainsCJKCharacters(NSString *__strong, NSRange)");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
  v26.location = a2;
  v26.length = a3;
  v17 = NSStringFromRange(v26);
  v20 = objc_msgSend_length(v8, v18, v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v14, v16, 2400, 0, "Bad parameter: inRange extends past end of string: %{public}@ > %lu", v17, v20);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
LABEL_11:
  v24 = 0;
LABEL_13:

  return v24;
}

void sub_276D39CC4()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v0, v1, 4352, 256);
  objc_msgSend_addCharactersInRange_(v0, v2, 12288, 28672);
  objc_msgSend_addCharactersInRange_(v0, v3, 44032, 11264);
  objc_msgSend_addCharactersInRange_(v0, v4, 0x20000, 0x10000);
  v5 = qword_280A57F00;
  qword_280A57F00 = v0;
}

uint64_t sub_276D39D58(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_lowercaseString(a1, a2, a3);
  if (qword_280A57F10 != -1)
  {
    sub_276F4EF18();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_280A57F18, v3, v4);
  v8 = v5;
  if (!v5 || (v9 = objc_msgSend_intValue(v5, v6, v7), v9 == 7))
  {
    if (objc_msgSend_length(v4, v6, v7) < 2)
    {
      v9 = 7;
    }

    else
    {
      v11 = objc_msgSend_substringWithRange_(v4, v10, 0, 2);
      v13 = objc_msgSend_objectForKeyedSubscript_(qword_280A57F18, v12, v11);
      v16 = v13;
      if (v13)
      {
        v9 = objc_msgSend_intValue(v13, v14, v15);
      }

      else
      {
        v9 = 7;
      }
    }
  }

  return v9;
}

void sub_276D39E80()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_288626B10, @"zh-hans", &unk_288626B10, @"zh_hans", &unk_288626B28, @"zh-hant", &unk_288626B28, @"zh_hant", &unk_288626AF8, @"ja-jp", &unk_288626B40, @"ko-ko", &unk_288626B28, @"zh", &unk_288626AF8, @"ja", &unk_288626B40, @"ko", &unk_288626B70, @"ar", &unk_288626B88, @"he", 0);
  v3 = qword_280A57F18;
  qword_280A57F18 = v2;
}

id sub_276D39F7C(int a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v6 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v10 = @"ja_JP";
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_13;
      }

      v10 = @"ko_KR";
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_13;
    }

    v7 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277CBE690]);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"TW");

    if (isEqualToString)
    {
      v10 = @"zh_TW";
    }

    else
    {
      v10 = @"zh_HK";
    }
  }

  else
  {
    v10 = @"zh_CN";
  }

  v11 = objc_alloc(MEMORY[0x277CBEAF8]);
  v6 = objc_msgSend_initWithLocaleIdentifier_(v11, v12, v10);
LABEL_13:

  return v6;
}

uint64_t TSWPNumberTypeForLocale(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  objc_msgSend_setLocale_(v2, v3, v1);
  objc_msgSend_setNumberStyle_(v2, v4, 1);
  v6 = objc_msgSend_stringFromNumber_(v2, v5, &unk_288626BA0);
  v8 = objc_msgSend_characterAtIndex_(v6, v7, 0);
  switch(v8)
  {
    case 52:
      v9 = 0;
      break;
    case 1636:
      v9 = 1;
      break;
    case 1780:
      v9 = 2;
      break;
    default:
      v9 = 3;
      break;
  }

  return v9;
}

void sub_276D3A17C(const __CFAttributedString *a1, uint64_t a2)
{
  Length = CFAttributedStringGetLength(a1);
  if (!a2)
  {
    String = CFAttributedStringGetString(a1);
    CharactersPtr = CFStringGetCharactersPtr(String);
    if (!CharactersPtr)
    {
      operator new[]();
    }

    a2 = CharactersPtr;
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_276D35380(a2, Length, &__p);
  v7 = CFAttributedStringGetLength(a1);
  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v8 = *MEMORY[0x277CC4838];
  while (longestEffectiveRange.length + longestEffectiveRange.location < v7)
  {
    v27.location = 0;
    v27.length = v7;
    AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(a1, longestEffectiveRange.length + longestEffectiveRange.location, v8, v27, &longestEffectiveRange);
    if (!AttributeAndLongestEffectiveRange)
    {
      break;
    }

    v10 = CTFontCopyPostScriptName(AttributeAndLongestEffectiveRange);
    if (CFEqual(v10, @"AppleColorEmoji"))
    {
      v21 = longestEffectiveRange;
      v22 = 1;
      sub_276D354BC(&__p, &v21.location);
    }

    CFRelease(v10);
  }

  v11 = __p;
  if (v25 != __p)
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v25 - __p) >> 3);
    v14 = *MEMORY[0x277CC4AC8];
    v15 = *MEMORY[0x277CBED28];
    v16 = *MEMORY[0x277CBED10];
    v17 = 1;
    do
    {
      v18 = (__p + 24 * v12);
      if (LOBYTE(v18[1].location))
      {
        v19 = v15;
      }

      else
      {
        v19 = v16;
      }

      CFAttributedStringSetAttribute(a1, *v18, v14, v19);
      v12 = v17;
    }

    while (v13 > v17++);
    v11 = __p;
  }

  if (v11)
  {
    v25 = v11;
    operator delete(v11);
  }
}

void sub_276D3A37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276D3A3AC(int a1, int a2, int a3)
{
  v3 = 20;
  for (i = &dword_276F993CC; *(i - 2) != a1 || *(i - 4) != a2 || *i != a3; i += 4)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return i[1];
}

BOOL TSWPPrimaryInputMethodIsRTL(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = sub_276D3A450(a1, a2, a3);
  v5 = objc_msgSend_characterDirectionForLanguage_(MEMORY[0x277CBEAF8], v4, v3) == 2;

  return v5;
}

id sub_276D3A450(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, a3))
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_276D3A784;
    v42 = sub_276D3A794;
    v43 = @"en";
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_276D3A79C;
    v37[3] = &unk_27A6F3CB8;
    v37[4] = &v38;
    objc_msgSend_performWithApplication_(MEMORY[0x277D811B0], v3, v37);
    if ((objc_msgSend_isEqualToString_(v39[5], v4, @"dictation") & 1) == 0)
    {
      objc_storeStrong(&qword_280A57F20, v39[5]);
    }

    _Block_object_dispose(&v38, 8);
  }

  if (qword_280A57F20)
  {
    v5 = objc_msgSend_rangeOfString_(qword_280A57F20, v3, @"-");
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = qword_280A57F20;
  }

  else
  {
    v6 = objc_msgSend_substringToIndex_(qword_280A57F20, v3, v5);
  }

  v9 = v6;
  if (v6 && objc_msgSend_length(v6, v7, v8) >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "NSString *TSWPGetPrimaryInputLanguage()");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 2773, 0, "Unexpected input language code returned by the OS");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  isEqualToString = objc_msgSend_isEqualToString_(v9, v7, *MEMORY[0x277D813D0]);
  v18 = qword_280A57F20;
  if (!isEqualToString)
  {
    v18 = v9;
  }

  v21 = v18;
  if (!v21)
  {
    v22 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v19, v20);
    v25 = objc_msgSend_preferredLocalizations(v22, v23, v24);
    v21 = objc_msgSend_firstObject(v25, v26, v27);

    if (!v21)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "NSString *TSWPGetPrimaryInputLanguage()");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 2782, 0, "invalid nil value for '%{public}s'", "result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      v21 = 0;
    }
  }

  return v21;
}

uint64_t sub_276D3A784(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276D3A79C(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_textInputMode(v11, v3, v4);
  v8 = objc_msgSend_primaryLanguage(v5, v6, v7);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

id sub_276D3A82C(void *a1)
{
  v3 = a1;
  if (qword_280A57F60 != -1)
  {
    sub_276F4EF2C();
  }

  v4 = sub_276D39D58(v3, v1, v2);
  v7 = objc_msgSend_mutableCopy(qword_280A57F28, v5, v6);
  v9 = v7;
  if (v4 < 6)
  {
    objc_msgSend_addObjectsFromArray_(v7, v8, *off_27A6F3D40[v4]);
  }

  return v9;
}

void sub_276D3A8E4()
{
  v0 = objc_alloc(MEMORY[0x277CBEA60]);
  v2 = objc_msgSend_initWithObjects_(v0, v1, &unk_288626BB8, &unk_288626BD0, &unk_288626BE8, &unk_288626C00, &unk_288626C18, &unk_288626C30, &unk_288626C48, &unk_288626C60, &unk_288626C78, &unk_288626C90, &unk_288626CA8, &unk_288626CC0, &unk_288626CD8, &unk_288626CF0, &unk_288626D08, 0);
  v3 = qword_280A57F28;
  qword_280A57F28 = v2;

  v4 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = objc_msgSend_initWithObjects_(v4, v5, &unk_288626D20, &unk_288626D38, &unk_288626D50, 0);
  v7 = qword_280A57F30;
  qword_280A57F30 = v6;

  v8 = objc_alloc(MEMORY[0x277CBEA60]);
  v10 = objc_msgSend_initWithObjects_(v8, v9, &unk_288626D20, &unk_288626D68, &unk_288626D80, 0);
  v11 = qword_280A57F38;
  qword_280A57F38 = v10;

  v12 = objc_alloc(MEMORY[0x277CBEA60]);
  v14 = objc_msgSend_initWithObjects_(v12, v13, &unk_288626D98, &unk_288626DB0, &unk_288626DC8, &unk_288626DE0, &unk_288626DF8, &unk_288626E10, &unk_288626D20, 0);
  v15 = qword_280A57F40;
  qword_280A57F40 = v14;

  v16 = objc_alloc(MEMORY[0x277CBEA60]);
  v18 = objc_msgSend_initWithObjects_(v16, v17, &unk_288626E28, 0);
  v19 = qword_280A57F48;
  qword_280A57F48 = v18;

  v20 = objc_alloc(MEMORY[0x277CBEA60]);
  v22 = objc_msgSend_initWithObjects_(v20, v21, &unk_288626E40, &unk_288626E58, &unk_288626E70, &unk_288626E88, &unk_288626EA0, &unk_288626EB8, &unk_288626ED0, &unk_288626EE8, &unk_288626F00, 0);
  v23 = qword_280A57F50;
  qword_280A57F50 = v22;

  v24 = objc_alloc(MEMORY[0x277CBEA60]);
  v26 = objc_msgSend_initWithObjects_(v24, v25, &unk_288626F18, &unk_288626F30, &unk_288626F48, 0);
  v27 = qword_280A57F58;
  qword_280A57F58 = v26;
}

uint64_t TSWPGetListNumberTypeForString(void *a1)
{
  v2 = a1;
  if (qword_280A57F70 != -1)
  {
    sub_276F4EF40();
  }

  v3 = objc_msgSend_objectForKey_(qword_280A57F68, v1, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_integerValue(v3, v4, v5);
  }

  else
  {
    v7 = 65;
  }

  return v7;
}

void sub_276D3AC18()
{
  v0 = objc_alloc(MEMORY[0x277CBEB38]);
  v3 = objc_msgSend_initWithCapacity_(v0, v1, 4);
  for (i = 0; i != 65; ++i)
  {
    v5 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v2, i);
    v6 = TSWPStringFromTSWPListNumberType(i);
    objc_msgSend_setObject_forKey_(v3, v7, v5, v6);
  }

  v8 = qword_280A57F68;
  qword_280A57F68 = v3;
}

id TSWPStringFromTSWPListNumberType(uint64_t a1)
{
  if (qword_280A57F80 != -1)
  {
    sub_276F4EF54();
  }

  v2 = qword_280A57F78;

  return sub_276D3AD7C(a1, "TSWPListNumberType", v2, 0);
}

id sub_276D3AD7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, a1);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v9);

  if (!v11)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_initWithCString_encoding_(v13, v14, a2, 4);
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"[Unknown %@ (%zd)]", v15, a1);
    v21[0] = v17;
    v21[1] = v17;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v21, 2);
  }

  v19 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, a4);

  return v19;
}

void sub_276D3AF00(uint64_t a1, const char *a2)
{
  v2 = (*(off_280A55F18 + 2))(off_280A55F18, a2);
  v3 = qword_280A57F78;
  qword_280A57F78 = v2;
}

id sub_276D3AF48(uint64_t a1, const char *a2)
{
  v5[67] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_288626BB8;
  v4[1] = &unk_288626BD0;
  v5[0] = &unk_2886276E0;
  v5[1] = &unk_2886276F8;
  v4[2] = &unk_288626BE8;
  v4[3] = &unk_288626C00;
  v5[2] = &unk_288627710;
  v5[3] = &unk_288627728;
  v4[4] = &unk_288626C18;
  v4[5] = &unk_288626C30;
  v5[4] = &unk_288627740;
  v5[5] = &unk_288627758;
  v4[6] = &unk_288626C48;
  v4[7] = &unk_288626C60;
  v5[6] = &unk_288627770;
  v5[7] = &unk_288627788;
  v4[8] = &unk_288626C78;
  v4[9] = &unk_288626C90;
  v5[8] = &unk_2886277A0;
  v5[9] = &unk_2886277B8;
  v4[10] = &unk_288626CA8;
  v4[11] = &unk_288626CC0;
  v5[10] = &unk_2886277D0;
  v5[11] = &unk_2886277E8;
  v4[12] = &unk_288626CD8;
  v4[13] = &unk_288626CF0;
  v5[12] = &unk_288627800;
  v5[13] = &unk_288627818;
  v4[14] = &unk_288626D08;
  v4[15] = &unk_288626D98;
  v5[14] = &unk_288627830;
  v5[15] = &unk_288627848;
  v4[16] = &unk_288626F60;
  v4[17] = &unk_288626F78;
  v5[16] = &unk_288627860;
  v5[17] = &unk_288627878;
  v4[18] = &unk_288626DE0;
  v4[19] = &unk_288626F90;
  v5[18] = &unk_288627890;
  v5[19] = &unk_2886278A8;
  v4[20] = &unk_288626FA8;
  v4[21] = &unk_288626DB0;
  v5[20] = &unk_2886278C0;
  v5[21] = &unk_2886278D8;
  v4[22] = &unk_288626FC0;
  v4[23] = &unk_288626FD8;
  v5[22] = &unk_2886278F0;
  v5[23] = &unk_288627908;
  v4[24] = &unk_288626DF8;
  v4[25] = &unk_288626FF0;
  v5[24] = &unk_288627920;
  v5[25] = &unk_288627938;
  v4[26] = &unk_288627008;
  v4[27] = &unk_288626DC8;
  v5[26] = &unk_288627950;
  v5[27] = &unk_288627968;
  v4[28] = &unk_288627020;
  v4[29] = &unk_288627038;
  v5[28] = &unk_288627980;
  v5[29] = &unk_288627998;
  v4[30] = &unk_288626D68;
  v4[31] = &unk_288627050;
  v5[30] = &unk_2886279B0;
  v5[31] = &unk_2886279C8;
  v4[32] = &unk_288627068;
  v4[33] = &unk_288626D38;
  v5[32] = &unk_2886279E0;
  v5[33] = &unk_2886279F8;
  v4[34] = &unk_288627080;
  v4[35] = &unk_288627098;
  v5[34] = &unk_288627A10;
  v5[35] = &unk_288627A28;
  v4[36] = &unk_288626E10;
  v4[37] = &unk_2886270B0;
  v5[36] = &unk_288627A40;
  v5[37] = &unk_288627A58;
  v4[38] = &unk_2886270C8;
  v4[39] = &unk_288626D80;
  v5[38] = &unk_288627A70;
  v5[39] = &unk_288627A88;
  v4[40] = &unk_2886270E0;
  v4[41] = &unk_2886270F8;
  v5[40] = &unk_288627AA0;
  v5[41] = &unk_288627AB8;
  v4[42] = &unk_288626D50;
  v4[43] = &unk_288627110;
  v5[42] = &unk_288627AD0;
  v5[43] = &unk_288627AE8;
  v4[44] = &unk_288627128;
  v4[45] = &unk_288626E28;
  v5[44] = &unk_288627B00;
  v5[45] = &unk_288627B18;
  v4[46] = &unk_288627140;
  v4[47] = &unk_288627158;
  v5[46] = &unk_288627B30;
  v5[47] = &unk_288627B48;
  v4[48] = &unk_288626D20;
  v4[49] = &unk_288626E40;
  v5[48] = &unk_288627B60;
  v5[49] = &unk_288627B78;
  v4[50] = &unk_288626E58;
  v4[51] = &unk_288626E70;
  v5[50] = &unk_288627B90;
  v5[51] = &unk_288627BA8;
  v4[52] = &unk_288626E88;
  v4[53] = &unk_288626EA0;
  v5[52] = &unk_288627BC0;
  v5[53] = &unk_288627BD8;
  v4[54] = &unk_288626EB8;
  v4[55] = &unk_288626ED0;
  v5[54] = &unk_288627BF0;
  v5[55] = &unk_288627C08;
  v4[56] = &unk_288626EE8;
  v4[57] = &unk_288626F00;
  v5[56] = &unk_288627C20;
  v5[57] = &unk_288627C38;
  v4[58] = &unk_288627170;
  v4[59] = &unk_288627188;
  v5[58] = &unk_288627C50;
  v5[59] = &unk_288627C68;
  v4[60] = &unk_2886271A0;
  v4[61] = &unk_2886271B8;
  v5[60] = &unk_288627C80;
  v5[61] = &unk_288627C98;
  v4[62] = &unk_288626F18;
  v4[63] = &unk_288626F30;
  v5[62] = &unk_288627CB0;
  v5[63] = &unk_288627CC8;
  v4[64] = &unk_288626F48;
  v5[64] = &unk_288627CE0;
  v4[65] = &unk_2886271D0;
  v5[65] = &unk_288627CF8;
  v4[66] = &unk_2886271E8;
  v5[66] = &unk_288627D10;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 67);

  return v2;
}

id TSWPStringFromTSWPWritingDirection(int a1)
{
  if (qword_280A57F90 != -1)
  {
    sub_276F4EF68();
  }

  v2 = qword_280A57F88;

  return sub_276D3AD7C(a1, "TSWPWritingDirection", v2, 0);
}

void sub_276D3B5EC(uint64_t a1, const char *a2)
{
  v2 = (*(off_280A55F20 + 2))(off_280A55F20, a2);
  v3 = qword_280A57F88;
  qword_280A57F88 = v2;
}

id sub_276D3B634(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_288627260;
  v4[1] = &unk_288627200;
  v5[0] = &unk_288627D88;
  v5[1] = &unk_288627DA0;
  v4[2] = &unk_288627218;
  v5[2] = &unk_288627DB8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);

  return v2;
}

id TSWPStringFromTSWPVerticalAlignment(int a1)
{
  if (qword_280A57FA0 != -1)
  {
    sub_276F4EF7C();
  }

  v2 = qword_280A57F98;

  return sub_276D3AD7C(a1, "TSWPVerticalAlignment", v2, 0);
}

void sub_276D3B748(uint64_t a1, const char *a2)
{
  v2 = (*(off_280A55F28 + 2))(off_280A55F28, a2);
  v3 = qword_280A57F98;
  qword_280A57F98 = v2;
}

id sub_276D3B790(uint64_t a1, const char *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_288627200;
  v4[1] = &unk_288627218;
  v5[0] = &unk_288627E18;
  v5[1] = &unk_288627E30;
  v4[2] = &unk_288627230;
  v4[3] = &unk_288627248;
  v5[2] = &unk_288627E48;
  v5[3] = &unk_288627E60;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 4);

  return v2;
}

id sub_276D3B854(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_276D3B948();
  objc_sync_enter(v5);
  v7 = objc_msgSend_objectForKey_(v5, v6, v3);
  if (!v7)
  {
    v7 = v4[2](v4);
    objc_msgSend_setObject_forKey_(v5, v8, v7, v3);
  }

  objc_sync_exit(v5);

  return v7;
}

void sub_276D3B920(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

id sub_276D3B948()
{
  if (qword_280A57FA8 != -1)
  {
    sub_276F4EF90();
  }

  v1 = qword_280A57FB0;

  return v1;
}

uint64_t sub_276D3B99C()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = qword_280A57FB0;
  qword_280A57FB0 = v0;

  v3 = qword_280A57FB0;

  return objc_msgSend_setName_(v3, v2, @"TSWPObjectCache");
}

void sub_276D3B9F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_276D34F38();
}

void sub_276D3BAE8()
{
  v0 = objc_opt_class();
  v9 = objc_msgSend_paragraphProperties(v0, v1, v2);
  v5 = objc_msgSend_properties(TSWPCharacterStyle, v3, v4);
  v7 = objc_msgSend_propertySetByAddingPropertiesFromSet_(v9, v6, v5);
  v8 = qword_280A57FB8;
  qword_280A57FB8 = v7;
}

void sub_276D3BBD0()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 86, 96, 83, 94, 80, 95, 93, 103, 89, 90, 81, 85, 101, 102, 91, 100, 99, 105, 106, 82, 88, 87, 98, 84, 92, 121, 104, 107, 108, 109, 0);
  v3 = qword_280A57FC8;
  qword_280A57FC8 = v2;
}

void sub_276D3BD18()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 108, 109, 107, 18, 32, 33, 97, 0);
  v3 = qword_280A57FD8;
  qword_280A57FD8 = v2;
}

void sub_276D3BE2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_properties(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_emphasisProperties(TSWPCharacterStyle, v3, v4);
  v7 = objc_msgSend_propertySetByRemovingPropertiesFromSet_(v9, v6, v5);
  v8 = qword_280A57FE8;
  qword_280A57FE8 = v7;
}

void sub_276D3BF6C()
{
  v0 = objc_opt_class();
  v3 = objc_msgSend_paragraphPropertiesAllowingNSNull(v0, v1, v2);
  v6 = objc_msgSend_propertiesAllowingNSNull(TSWPCharacterStyle, v4, v5);
  v8 = objc_msgSend_propertySetByAddingPropertiesFromSet_(v3, v7, v6);

  v13 = objc_msgSend_propertySetByRemovingProperty_(v8, v9, 16);

  v11 = objc_msgSend_propertySetByRemovingProperty_(v13, v10, 18);
  v12 = qword_280A57FF8;
  qword_280A57FF8 = v11;
}

void sub_276D3C02C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276D3C09C()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 94, 95, 100, 98, 103, 107, 109, 0);
  v3 = qword_280A58008;
  qword_280A58008 = v2;
}

void sub_276D3C154(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], a2, 89, 90, 91, 92, 94, 0);
  v3 = qword_280A58018;
  qword_280A58018 = v2;
}

void sub_276D3C950(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a4;
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  if (v9 != v36)
  {
LABEL_6:

    goto LABEL_7;
  }

  v10 = objc_msgSend_containsProperty_(*(a1 + 32), v8, a2);

  if ((v10 & 1) == 0)
  {
    v11 = objc_opt_class();
    v9 = objc_msgSend_defaultValueForProperty_(v11, v12, a2);
    v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);

    if (v9 == v15)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPParagraphStyle initWithContext:name:overridePropertyMap:isVariation:]_block_invoke");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      v21 = String();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v20, 369, 0, "Unexpected NSNull for default value for %{public}@", v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    }

    objc_msgSend_setBoxedObject_forProperty_(*(*(a1 + 40) + *MEMORY[0x277D80AF0]), v16, v9, a2);
    goto LABEL_6;
  }

LABEL_7:
  if (a2 == 16)
  {
    objc_opt_class();
    v25 = TSUCheckedDynamicCast();
    isSystemFontName = objc_msgSend_isSystemFontName_(TSWPFont, v26, v25);

    if (isSystemFontName)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSWPParagraphStyle initWithContext:name:overridePropertyMap:isVariation:]_block_invoke");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 373, 0, "Unexpected use of system font name.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }
  }
}

void sub_276D3CC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSWPParagraphStyle;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276D3CD7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276D3CDB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a4;
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  if (v9 == v25)
  {
    v10 = objc_msgSend_containsProperty_(*(a1 + 32), v8, a2);

    if (v10)
    {
      goto LABEL_7;
    }

    v11 = objc_opt_class();
    v9 = objc_msgSend_defaultValueForProperty_(v11, v12, a2);
    v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);

    if (v9 == v15)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPParagraphStyle setOverridePropertyMap:]_block_invoke");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      v21 = String();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v20, 394, 0, "Unexpected NSNull for default value for %{public}@", v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    }

    objc_msgSend_setBoxedObject_forProperty_(*(*(a1 + 40) + *MEMORY[0x277D80AF0]), v16, v9, a2);
  }

LABEL_7:
}

void sub_276D3D3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_276D3D7D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_276D3F568(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_initialListStyle(*(a1 + 32), a2, a3);
  v7 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v8 = objc_msgSend_overridePropertyMap(v4, v5, v6);
  if (!objc_msgSend_count(v8, v9, v10))
  {
    isVariation = objc_msgSend_isVariation(v7, v11, v12);

    if (!isVariation)
    {
      goto LABEL_6;
    }

    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v14, v15);
    v16 = *(a1 + 32);
    v8 = objc_msgSend_parent(v7, v17, v18);
    objc_msgSend_setInitialListStyle_(v16, v19, v8);
  }

LABEL_6:
  v20 = objc_opt_class();
  v23 = objc_msgSend_propertiesAllowingNSNull(v20, v21, v22);
  v24 = *(*(a1 + 32) + *MEMORY[0x277D80AF0]);
  v86 = MEMORY[0x277D85DD0];
  v87 = 3221225472;
  v88 = sub_276D3FABC;
  v89 = &unk_27A6F3D98;
  v25 = v23;
  v26 = *(a1 + 32);
  v90 = v25;
  v91 = v26;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v24, v27, &v86);
  v32 = objc_msgSend_parent(*(a1 + 32), v28, v29, v86, v87, v88, v89);
  if (v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = objc_msgSend_allowsMissingPropertiesWithNoParentStyleForUpgrade(*(a1 + 32), v30, v31);
  }

  if (*(a1 + 48) == 1 && objc_msgSend_containsProperty_(*(a1 + 40), v34, 17) && ((objc_msgSend_containsProperty_(*(a1 + 40), v34, 47) | v33) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v34, v35);
    objc_msgSend_setIntValue_forProperty_(*(a1 + 40), v36, 0, 47);
  }

  if (*(a1 + 49) == 1 && ((objc_msgSend_containsProperty_(*(a1 + 40), v34, 22) | v33) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v34, v35);
    v37 = *(a1 + 40);
    v39 = objc_msgSend_defaultIntValueForProperty_(TSWPParagraphStyle, v38, 22);
    objc_msgSend_setIntValue_forProperty_(v37, v40, v39, 22);
  }

  if (*(a1 + 50) == 1 && (objc_msgSend_allowAsBookmarkSuggestionStyle(*(a1 + 32), v34, v35) & 1) == 0 && objc_msgSend_containsProperty_(*(a1 + 40), v34, 121) && objc_msgSend_intValueForProperty_(*(a1 + 40), v34, 121) == 1)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v34, v35);
    objc_msgSend_setIntValue_forProperty_(*(a1 + 40), v41, 0, 121);
  }

  if (!(v33 & 1 | ((*(a1 + 51) & 1) == 0)) && (objc_msgSend_containsProperty_(*(a1 + 40), v34, 104) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v34, v35);
    objc_msgSend_setBoolValue_forProperty_(*(a1 + 40), v42, 0, 104);
  }

  if (!(v33 & 1 | ((*(a1 + 52) & 1) == 0)) && (objc_msgSend_containsProperty_(*(a1 + 40), v34, 106) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v34, v35);
    objc_msgSend_setBoolValue_forProperty_(*(a1 + 40), v43, 0, 106);
  }

  if (!(v33 & 1 | ((*(a1 + 53) & 1) == 0)))
  {
    if ((objc_msgSend_containsProperty_(*(a1 + 40), v34, 48) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v44, v45);
      v46 = *(a1 + 40);
      v49 = objc_msgSend_null(MEMORY[0x277CBEB68], v47, v48);
      objc_msgSend_setObject_forProperty_(v46, v50, v49, 48);
    }

    if ((objc_msgSend_containsProperty_(*(a1 + 40), v44, 49) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v51, v52);
      v53 = *(a1 + 40);
      v55 = objc_msgSend_defaultIntValueForProperty_(TSWPParagraphStyle, v54, 49) != 0;
      objc_msgSend_setBoolValue_forProperty_(v53, v56, v55, 49);
    }

    if ((objc_msgSend_containsProperty_(*(a1 + 40), v51, 50) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v34, v35);
      v57 = *(a1 + 40);
      v60 = objc_msgSend_null(MEMORY[0x277CBEB68], v58, v59);
      objc_msgSend_setObject_forProperty_(v57, v61, v60, 50);
    }
  }

  if (!(v33 & 1 | ((*(a1 + 54) & 1) == 0)))
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v34, v35);
    if ((*(a1 + 55) & 1) == 0)
    {
      v62 = *(a1 + 40);
      v63 = objc_msgSend_defaultIntValueForProperty_(TSWPParagraphStyle, v34, 101);
      objc_msgSend_setIntValue_forProperty_(v62, v64, v63, 101);
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      v65 = *(a1 + 40);
      v66 = objc_msgSend_defaultIntValueForProperty_(TSWPParagraphStyle, v34, 102);
      objc_msgSend_setIntValue_forProperty_(v65, v67, v66, 102);
    }

    if ((*(a1 + 57) & 1) == 0)
    {
      v68 = *(a1 + 40);
      v69 = objc_msgSend_defaultValueForProperty_(TSWPParagraphStyle, v34, 45);
      objc_msgSend_setObject_forProperty_(v68, v70, v69, 45);
    }

    if ((*(a1 + 58) & 1) == 0)
    {
      v71 = *(a1 + 40);
      v72 = objc_msgSend_defaultIntValueForProperty_(TSWPParagraphStyle, v34, 44);
      objc_msgSend_setIntValue_forProperty_(v71, v73, v72, 44);
    }

    if ((*(a1 + 59) & 1) == 0)
    {
      v74 = *(a1 + 40);
      v75 = objc_msgSend_defaultValueForProperty_(TSWPParagraphStyle, v34, 96);
      objc_msgSend_setObject_forProperty_(v74, v76, v75, 96);
    }
  }

  v77 = *(a1 + 32);
  v78 = objc_msgSend_overrideValueForProperty_(v77, v34, 95);

  if (v77 == v78)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v79, v80);
    v81 = *(a1 + 40);
    v84 = objc_msgSend_null(MEMORY[0x277CBEB68], v82, v83);
    objc_msgSend_setObject_forProperty_(v81, v85, v84, 95);
  }

  objc_msgSend_setAllowsMissingPropertiesWithNoParentStyleForUpgrade_(*(a1 + 32), v79, 0);
}

void sub_276D3FABC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = a4;
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  if (v9 == v17)
  {
    v10 = objc_msgSend_containsProperty_(*(a1 + 32), v8, a2);

    if (v10)
    {
      goto LABEL_7;
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276F4EFF4();
    }

    objc_msgSend_willModifyForUpgrade(*(a1 + 40), v11, v12);
    v13 = *(*(a1 + 40) + *MEMORY[0x277D80AF0]);
    v14 = objc_opt_class();
    v9 = objc_msgSend_defaultValueForProperty_(v14, v15, a2);
    objc_msgSend_setBoxedObject_forProperty_(v13, v16, v9, a2);
  }

LABEL_7:
}

void sub_276D3FBC8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276D40308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a4;
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  if (v9 == v20)
  {
    v10 = objc_msgSend_containsProperty_(*(a1 + 32), v8, a2);

    if ((v10 & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPParagraphStyle saveToArchive:archiver:]_block_invoke");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      v16 = String();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v15, 1052, 0, "Style contains unexpected NSNull for property %{public}@", v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }
  }

  else
  {
  }
}

void sub_276D40424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_276D40464(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  *(v2 + 16) |= 2u;
  v3 = *(v2 + 32);
  if (!v3)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    v3 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v4);
    *(v2 + 32) = v3;
  }

  return MEMORY[0x2821F9670](v1, sel_saveCharacterStylePropertiesToArchive_archiver_archivingForCommand_, v3);
}

uint64_t sub_276D404E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  *(v2 + 16) |= 4u;
  v3 = *(v2 + 40);
  if (!v3)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    v3 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParagraphStylePropertiesArchive>(v4);
    *(v2 + 40) = v3;
  }

  return MEMORY[0x2821F9670](v1, sel_saveParagraphStylePropertiesToArchive_archiver_, v3);
}

void sub_276D4091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D40940(uint64_t a1, const char *a2)
{
  if ((objc_msgSend_definesProperty_(*(a1 + 32), a2, a2) & 1) == 0)
  {
    v4 = objc_opt_class();
    v23 = objc_msgSend_deprecatedProperties(v4, v5, v6);
    v8 = objc_msgSend_containsProperty_(v23, v7, a2);
    v9 = a2 == 46 ? 1 : v8;

    if ((v9 & 1) == 0)
    {
      if (String())
      {
        if (String() == 2)
        {
          v11 = objc_opt_class();
          objc_msgSend_defaultFloatValueForProperty_(v11, v12, a2);
          if (v14 != INFINITY)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            v15 = *(a1 + 32);

            objc_msgSend_setFloatValue_forProperty_(v15, v13, a2);
          }
        }

        else if (String() == 1)
        {
          v17 = objc_opt_class();
          v19 = objc_msgSend_defaultIntValueForProperty_(v17, v18, a2);
          if (v19 != 0x80000000)
          {
            v21 = v19;
            *(*(*(a1 + 40) + 8) + 24) = 1;
            v22 = *(a1 + 32);

            objc_msgSend_setIntValue_forProperty_(v22, v20, v21, a2);
          }
        }
      }

      else
      {
        v24 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80AD0], v10, a2);
        if (v24)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          objc_msgSend_setValue_forProperty_(*(a1 + 32), v16, v24, a2);
        }
      }
    }
  }
}

void sub_276D411A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D41218(uint64_t a1, const char *a2, _BYTE *a3)
{
  v8 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2);
  v7 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v6, a2);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_276D414F0(void **a1, const char *a2)
{
  v8 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a2);
  v5 = objc_msgSend_boxedValueForProperty_(a1[5], v4, a2);
  v6 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v7, v6, a2);
}

void sub_276D41A1C(uint64_t a1, const char *a2)
{
  v5 = objc_msgSend_componentsSeparatedByString_(@"Body 1", a2, @" ");
  v3 = objc_msgSend_objectAtIndexedSubscript_(v5, v2, 0);
  v4 = qword_280A58028;
  qword_280A58028 = v3;
}

void sub_276D420E4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 34, 21, 22, 19, 18, 20, 16, 17, 35, 39, 41, 33, 32, 40, 29, 27, 28, 37, 38, 36, 25, 23, 24, 30, 26, 43, 44, 45, 46, 47, 50, 48, 49, 0);
  v3 = qword_280A58038;
  qword_280A58038 = v2;
}

void sub_276D42240()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 19, 20, 23, 27, 0);
  v3 = qword_280A58048;
  qword_280A58048 = v2;
}

void sub_276D42340(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_properties(*(a1 + 32), a2, a3);
  v15 = objc_msgSend_mutableCopy(v4, v5, v6);

  v9 = objc_msgSend_emphasisProperties(*(a1 + 32), v7, v8);
  objc_msgSend_removeProperties_(v15, v10, v9);

  v13 = objc_msgSend_copy(v15, v11, v12);
  v14 = qword_280A58058;
  qword_280A58058 = v13;
}

void sub_276D423D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_276D42444()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 18, 33, 32, 0);
  v3 = qword_280A58068;
  qword_280A58068 = v2;
}

void sub_276D424E4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 18, 16, 39, 33, 40, 29, 38, 25, 43, 45, 46, 48, 50, 0);
  v3 = qword_280A58078;
  qword_280A58078 = v2;
}

uint64_t sub_276D42AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  *(v2 + 16) |= 2u;
  v3 = *(v2 + 32);
  if (!v3)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    v3 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v4);
    *(v2 + 32) = v3;
  }

  return MEMORY[0x2821F9670](v1, sel_saveCharacterStylePropertiesToArchive_archiver_archivingForCommand_, v3);
}

void sub_276D42D7C()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 148, 151, 145, 147, 146, 152, 149, 153, 44, 0);
  v3 = qword_280A58088;
  qword_280A58088 = v2;
}

void sub_276D42FA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = sub_276E32640(a1, a2, a3);
  v4 = objc_msgSend_localizedStringForKey_value_table_(v6, v3, @"None", &stru_28860A0F0, @"TSText");
  v5 = qword_280A58098;
  qword_280A58098 = v4;
}

void sub_276D43A84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  if ((objc_msgSend_containsProperty_(*(a1 + 32), v6, a2) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 40), v7, v8);
    objc_msgSend_setBoxedValue_forProperty_(*(a1 + 40), v9, v10, a2);
  }
}

void sub_276D44440(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  HIDWORD(v8) = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  do
  {
    LODWORD(v8) = *(a3 + 4 * v7);
    v9 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a2, a3, v8, v16, v17, v18, v19, v20, v21);
    v10 = *(&v16 + v7);
    *(&v16 + v7) = v9;

    ++v7;
  }

  while (v7 != 9);
  v11 = objc_alloc(MEMORY[0x277CBEA60]);
  v13 = objc_msgSend_initWithObjects_count_(v11, v12, &v16, 9);
  objc_msgSend_setObject_forProperty_(a1, v14, v13, a4);

  for (i = 64; i != -8; i -= 8)
  {
  }
}

void sub_276D4453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 64; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276D4457C(uint64_t result, const char *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    v8 = result;
    for (i = 0; i != 9; ++i)
    {
      v11[i] = *(a5 + 4 * i);
      if (i < *a3)
      {
        v10 = *(*(a3 + 1) + 4 * i);
        if (objc_msgSend_validateFloatValue_forProperty_(TSWPListStyle, a2, &v10, a4))
        {
          v11[i] = v10;
        }
      }
    }

    return objc_msgSend_pSetArrayOfFloats_forProperty_(v8, a2, v11, a4);
  }

  return result;
}

void sub_276D44664(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  do
  {
    v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *(a3 + 4 * v7), v15, v16, v17, v18, v19, v20);
    v9 = *(&v15 + v7);
    *(&v15 + v7) = v8;

    ++v7;
  }

  while (v7 != 9);
  v10 = objc_alloc(MEMORY[0x277CBEA60]);
  v12 = objc_msgSend_initWithObjects_count_(v10, v11, &v15, 9);
  objc_msgSend_setObject_forProperty_(a1, v13, v12, a4);

  for (i = 64; i != -8; i -= 8)
  {
  }
}

void sub_276D44760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 64; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_276D447A0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  do
  {
    v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, *(a3 + v7), v15, v16, v17, v18, v19, v20);
    v9 = *(&v15 + v7);
    *(&v15 + v7) = v8;

    ++v7;
  }

  while (v7 != 9);
  v10 = objc_alloc(MEMORY[0x277CBEA60]);
  v12 = objc_msgSend_initWithObjects_count_(v10, v11, &v15, 9);
  objc_msgSend_setObject_forProperty_(a1, v13, v12, a4);

  for (i = 64; i != -8; i -= 8)
  {
  }
}

void sub_276D4489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 64; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276D448E4(uint64_t result, const char *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    v17 = result;
    v14 = 0;
    v15 = -1;
    do
    {
      if (!a8 || (v16 = v15, v15 == -1))
      {
        v16 = *(a5 + 4 * v14);
      }

      v19[v14] = v16;
      if (v14 < *a3)
      {
        v18 = *(*(a3 + 1) + 4 * v14);
        if (objc_msgSend_validateIntValue_forProperty_min_max_(TSWPListStyle, a2, &v18, a4, a6, a7))
        {
          v15 = v18;
          v19[v14] = v18;
        }
      }

      ++v14;
    }

    while (v14 != 9);
    return objc_msgSend_pSetArrayOfInts_forProperty_(v17, a2, v19, a4);
  }

  return result;
}

uint64_t sub_276D449FC(uint64_t result, const char *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    v8 = result;
    for (i = 0; i != 9; ++i)
    {
      v11[i] = *(a5 + i);
      if (i < *a3)
      {
        v10 = *(*(a3 + 1) + i);
        if (objc_msgSend_validateIntValue_forProperty_min_max_(TSWPListStyle, a2, &v10, a4, 0, 1))
        {
          v11[i] = v10 != 0;
        }
      }
    }

    return objc_msgSend_pSetArrayOfBools_forProperty_(v8, a2, v11, a4);
  }

  return result;
}

void sub_276D44B70()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 181, 182, 184, 185, 183, 180, 176, 0);
  v3 = qword_280A580A8;
  qword_280A580A8 = v2;
}

void sub_276D44C28()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 187, 16, 44, 178, 181, 182, 177, 184, 185, 183, 180, 176, 40, 179, 186, 0);
  v3 = qword_280A580B8;
  qword_280A580B8 = v2;
}

void sub_276D44D10()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 187, 16, 40, 0);
  v3 = qword_280A580C8;
  qword_280A580C8 = v2;
}

void sub_276D44DB0()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A580D8;
  qword_280A580D8 = v0;
}

void sub_276D44E30()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 178, 179, 186, 0);
  v3 = qword_280A580E8;
  qword_280A580E8 = v2;
}

void sub_276D44F9C()
{
  v0 = qword_280A580F8;
  qword_280A580F8 = &unk_288627E78;
}

void sub_276D451B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_276D457C8(void *a1)
{
  v5[9] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v5[0] = v1;
  v5[1] = v1;
  v5[2] = v1;
  v5[3] = v1;
  v5[4] = v1;
  v5[5] = v1;
  v5[6] = v1;
  v5[7] = v1;
  v5[8] = v1;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 9);

  return v3;
}

void sub_276D458C4()
{
  v0 = sub_276D457C8(&unk_288628048);
  v1 = qword_280A58110;
  qword_280A58110 = v0;
}

void sub_276D45948(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_listLabelGeometry(TSWPListLabelGeometry, a2, a3);
  v3 = sub_276D457C8(v5);
  v4 = qword_280A58120;
  qword_280A58120 = v3;
}

void sub_276D45A04(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3);
  v3 = sub_276D457C8(v5);
  v4 = qword_280A58130;
  qword_280A58130 = v3;
}

void sub_276D45B1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = objc_msgSend_defaultLabelNumberType(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_numberWithUnsignedInteger_(v3, v5, v4);
  v6 = sub_276D457C8(v8);
  v7 = qword_280A58140;
  qword_280A58140 = v6;
}

void sub_276D45C44(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = objc_msgSend_defaultTieredNumber(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_numberWithBool_(v3, v5, v4);
  v6 = sub_276D457C8(v8);
  v7 = qword_280A58150;
  qword_280A58150 = v6;
}

void sub_276D45D6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_defaultLabelString(*(a1 + 32), a2, a3);
  v3 = sub_276D457C8(v5);
  v4 = qword_280A58160;
  qword_280A58160 = v3;
}

void sub_276D45E24()
{
  v0 = sub_276D457C8(&unk_2886272A8);
  v1 = qword_280A58170;
  qword_280A58170 = v0;
}

unint64_t sub_276D46A18(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(*(a1 + 32), a2, a3);
  if (result > a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return objc_msgSend_setObject_atIndexedSubscript_(v7, v6, v8, a2);
  }

  return result;
}

void sub_276D48FFC(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    objc_opt_class();
    v5 = objc_msgSend_valueForProperty_(v3, v4, 184);
    v6 = TSUCheckedDynamicCast();

    if (v6)
    {
      objc_msgSend_addObjectsFromArray_(*(a1 + 32), v7, v6);
    }
  }
}

void sub_276D49AF8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_data(a2, a2, a3);
  if (v4)
  {
    v16 = v4;
    v7 = objc_msgSend_filename(v4, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"TSWPNoBulletImage.png");

    if (isEqualToString)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v10, v11);
      v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);

      v15 = v14;
    }

    else
    {
      v15 = v16;
    }

    v17 = v15;
    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v10, v15, *(a1 + 48));
  }

  else
  {
    v17 = 0;
  }
}

void sub_276D4B4B8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], a2, 178, 181, 182, 177, 184, 185, 183, 180, 176, 186, 0);
  v3 = qword_280A58180;
  qword_280A58180 = v2;
}

uint64_t sub_276D4C8AC(uint64_t a1, const char *a2)
{
  result = objc_msgSend_containsProperty_(*(a1 + 32), a2, a2);
  if ((result & 1) == 0)
  {
    result = objc_msgSend_containsProperty_(*(a1 + 40), v5, a2);
    if ((result & 1) == 0)
    {
      v7 = *(a1 + 48);

      return objc_msgSend_addProperty_(v7, v6, a2);
    }
  }

  return result;
}

void sub_276D4D210(unsigned int *a1, int a2)
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
    sub_276D4D314(v4, v8 + 8);
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

void sub_276D4D314(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_276F4F170(a1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  JUMPOUT(0x277CA3350);
}

void sub_276D4D368(unsigned int *a1, int a2)
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
  if (v4)
  {
    sub_276D4D314(v4, v6 + 8);
  }

  else
  {
    v8 = operator new(v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_276D4E680(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276D128DC();
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

void sub_276D4E778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D50AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22)
{
  _Block_object_dispose(&STACK[0x260], 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276D50BFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_intersectsIndexesInRange_(*(a1 + 32), a2, a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a5 = 1;
  }

  return result;
}

void sub_276D51D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

__n128 sub_276D51E4C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_276D51E5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = objc_msgSend_type(*(a1 + 40), a2, a3);
    v9 = objc_msgSend_rectsForSelectionRange_selectionType_forParagraphMode_includeRuby_includePaginatedAttachments_(v6, v8, a2, a3, v7, 0, 0, 0);
    v11 = objc_msgSend_selectedParagraphBreakCount_(*(a1 + 48), v10, a2, a3);
    if (objc_msgSend_emptyParagraphCount_(*(a1 + 48), v12, a2, a3))
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    objc_msgSend_paragraphIndexRangeForCharRange_(*(a1 + 48), v13, a2, a3);
    if (*(a1 + 64) == 1 && *(a1 + 48) && (v17 = v15, objc_msgSend_type(*(a1 + 40), v15, v16) != 3))
    {
      v18 = 1;
      if (objc_msgSend_type(*(a1 + 40), v15, v16) != 5 && v17 >= 2 && v11 + v14)
      {
        v18 = v11 + v14 == 1 && objc_msgSend_count(v9, v15, v16) < 3;
      }
    }

    else
    {
      v18 = 1;
    }

    objc_msgSend_frameBounds(*(a1 + 32), v15, v16);
    v20 = v19;
    v22 = v21;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = v9;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v40, v44, 16);
    if (v27)
    {
      v28 = *v41;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v23);
          }

          objc_msgSend_CGRectValue(*(*(&v40 + 1) + 8 * i), v25, v26, v40);
          v34 = v33;
          v35 = v32;
          if ((*(a1 + 65) | v18))
          {
            v36 = v31;
          }

          else
          {
            v36 = v22;
          }

          if ((*(a1 + 65) | v18))
          {
            v37 = v30;
          }

          else
          {
            v37 = v20;
          }

          v38 = fmax(v36, 1.0);
          if (v32 <= 0.0)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          *(*(*(a1 + 56) + 8) + 48) = CGRectUnion(*(*(*(a1 + 56) + 8) + 48), *(&v34 - 1));
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v40, v44, 16);
      }

      while (v27);
    }
  }
}

uint64_t sub_276D52354(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_storage(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_rangeOfDropCapAtCharIndex_(v5, v6, a2);
  v9 = v8;

  v11 = *(a1 + 40);

  return objc_msgSend_concatenateRange_(v11, v10, v7, v9);
}

void sub_276D53DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276D53E34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276D53E4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_pathForHighlightWithRange_columnArray_pathStyle_(*(a1 + 48), a2, a2, a3, *(a1 + 32), *(a1 + 56));
  if ((objc_msgSend_isEmpty(v10, v4, v5) & 1) == 0)
  {
    v7 = objc_msgSend_uniteWithBezierPath_(*(*(*(a1 + 40) + 8) + 40), v6, v10);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void sub_276D5405C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276D5408C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = *(a1 + 32);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v52, v57, 16);
  if (v9)
  {
    v10 = *v53;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = objc_msgSend_range(v12, v7, v8);
        v15 = v14;
        v17 = objc_msgSend_storage(v12, v14, v16);
        LODWORD(v13) = &v15[v13] > objc_msgSend_length(v17, v18, v19);

        if (v13)
        {
          v40 = MEMORY[0x277D81150];
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSWPColumn boundsRectForSelection:columnArray:includeRuby:includePaginatedAttachments:]_block_invoke");
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 1078, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
          goto LABEL_18;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v22 = objc_msgSend_type(*(a1 + 40), v20, v21);
        v24 = objc_msgSend_rectsForSelectionRange_selectionType_forParagraphMode_includeRuby_includePaginatedAttachments_(v12, v23, a2, a3, v22, 0, *(a1 + 56), *(a1 + 57));
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v48, v56, 16);
        if (v28)
        {
          v29 = *v49;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v49 != v29)
              {
                objc_enumerationMutation(v24);
              }

              v31 = *(*(a1 + 48) + 8);
              v32 = v31[6];
              v33 = v31[7];
              v34 = v31[8];
              v35 = v31[9];
              objc_msgSend_CGRectValue(*(*(&v48 + 1) + 8 * j), v26, v27);
              v60.origin.x = v36;
              v60.origin.y = v37;
              v60.size.width = v38;
              v60.size.height = v39;
              v59.origin.x = v32;
              v59.origin.y = v33;
              v59.size.width = v34;
              v59.size.height = v35;
              *(*(*(a1 + 48) + 8) + 48) = CGRectUnion(v59, v60);
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v48, v56, 16);
          }

          while (v28);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v52, v57, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

void sub_276D556AC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276D556F0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276D57898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, TSWPParagraphEnumerator *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a35);

  _Unwind_Resume(a1);
}

const __CFDictionary *sub_276D5896C(uint64_t a1, CTRunRef run)
{
  result = CTRunGetAttributes(run);
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x277CC4838]);
    if (result)
    {
      result = CTFontGetSymbolicTraits(result);
      v4 = *(*(a1 + 32) + 8);
      v5 = *(v4 + 24);
      if (v5)
      {
        if (v5 == result)
        {
          return result;
        }

        result = ((v5 | result) & 0xFFFFFFF);
      }

      *(v4 + 24) = result;
    }
  }

  return result;
}

void sub_276D59488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D5A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  _Block_object_dispose((v52 - 224), 8);
  v54 = *(v52 - 176);
  if (v54)
  {
    *(v52 - 168) = v54;
    operator delete(v54);
  }

  _Unwind_Resume(a1);
}

__n128 sub_276D5A898(__n128 *a1, __n128 *a2)
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

void sub_276D5A8BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_276D5A8D4(uint64_t a1, NSRange range2)
{
  v3 = NSIntersectionRange(*(a1 + 48), range2);
  if (v3.length)
  {
    sub_276D65948(**(a1 + 64), v3.location, v3.length, *(a1 + 72), *(a1 + 73), *(a1 + 74), *(a1 + 75), *(a1 + 32), &v5);
    v4 = v5;
    sub_276D5F1C8(*(*(a1 + 40) + 8) + 48, *(*(*(a1 + 40) + 8) + 56), v5, v6, (v6 - v5) >> 5);
    if (v4)
    {
      operator delete(v4);
    }
  }
}

void sub_276D5A978(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D5AD28(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_rectsForSelectionRange_selectionType_forParagraphMode_includeRuby_includePaginatedAttachments_(*(a1 + 40), a2, a2, a3, *(a1 + 48), *(a1 + 56), *(a1 + 57), *(a1 + 58));
  objc_msgSend_addObjectsFromArray_(v3, v4, v5);
}

void sub_276D5DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_276D5E320(&STACK[0x2B8]);

  _Unwind_Resume(a1);
}

void sub_276D5DFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v31[0] = *(a1 + 32);
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v31, 1);
  v10 = objc_msgSend_pathForHighlightWithRange_columnArray_pathStyle_(v6, v9, a2, a3, v8, 0);

  if (objc_msgSend_isEmpty(v10, v11, v12))
  {
    v14 = v10;
  }

  else
  {
    v14 = objc_msgSend_outsideEdgeOfBezierPath_(MEMORY[0x277D81160], v13, v10);

    CGContextSaveGState(*(a1 + 48));
    CGContextSetStrokeColorWithColor(*(a1 + 48), *(a1 + 128));
    CGContextSetShouldAntialias(*(a1 + 48), 0);
    objc_msgSend_viewScale(*(a1 + 40), v15, v16);
    TSUMultiplySizeScalar();
    CGContextSetLineWidth(*(a1 + 48), (fabs(v17) + fabs(v18)) * 0.5);
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    if (v22)
    {
      objc_msgSend_transformToWP(v22, v19, v20);
    }

    else
    {
      memset(&v30, 0, sizeof(v30));
    }

    CGContextConcatCTM(v21, &v30);
    v23 = v14;
    objc_msgSend_CGPath(v14, v24, v25);
    CGContextAddPathSafe();
    v28 = *(a1 + 48);
    v29 = *(a1 + 32);
    if (v29)
    {
      objc_msgSend_transformFromWP(v29, v26, v27);
    }

    else
    {
      memset(&v30, 0, sizeof(v30));
    }

    CGContextConcatCTM(v28, &v30);
    CGContextStrokePath(*(a1 + 48));
    CGContextRestoreGState(*(a1 + 48));
  }
}

id sub_276D5E1E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 136);
  v6 = *(a2 + 152);
  v7 = *(a2 + 168);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 168) = v7;
  *(a1 + 152) = v6;
  *(a1 + 136) = v5;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v9 = *(a2 + 208);
  v8 = *(a2 + 224);
  v10 = *(a2 + 192);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v9;
  *(a1 + 224) = v8;
  *(a1 + 192) = v10;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  result = *(a2 + 264);
  *(a1 + 264) = result;
  return result;
}

void sub_276D5E2B4(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_276D5E384(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_storage(*(a1 + 32), a2, a3);
  if (objc_msgSend_wpKind(v4, v5, v6))
  {
    v9 = objc_msgSend_supportsNonBodyBookmarks(TSWPBookmarkField, v7, v8);

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v10 = *(*(a1 + 40) + 16);

  v10();
}

void sub_276D5E438(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v3 | v4)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_276D5E9E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v30 = v6;
  v10 = objc_msgSend_type(v6, v8, v9);
  v13 = objc_msgSend_stroke(v30, v11, v12);
  v16 = objc_msgSend_fill(v30, v14, v15);
  objc_msgSend_rect(v30, v17, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v29 = objc_msgSend_paragraphPath(v30, v27, v28);
  (*(v7 + 16))(v7, v10, v13, v16, v29, a4, v20, v22, v24, v26);
}

void sub_276D5EEA0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_276D5EF0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276D5EF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276D5EFA0(va);
  _Unwind_Resume(a1);
}

void ***sub_276D5EFA0(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    sub_276D5F0D4(&v4);
    MEMORY[0x277CA3D00](v2, 0x20C40960023A9);
  }

  return a1;
}

void sub_276D5F000(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276D5F040(uint64_t a1, uint64_t a2)
{
  if (sub_276D5F174(a2, &unk_2885FE658))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_276D5F080(uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    sub_276D5F0D4(&v4);
    return MEMORY[0x277CA3D00](a2, 0x20C40960023A9);
  }

  return result;
}

void sub_276D5F0D4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276D5F128(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276D5F128(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_276D5EEA0(v4);
    }
  }

  a1[1] = v2;
}

BOOL sub_276D5F174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

char *sub_276D5F1C8(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      sub_276D34ED8();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      sub_276D5F3FC(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 5;
  if (v18 >= a5)
  {
    v31 = &__dst[32 * a5];
    v32 = (v10 - 32 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[1];
      v32 += 2;
      *v33 = v34;
      v33[1] = v35;
      v33 += 2;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v31);
    }

    v30 = 32 * a5;
    v28 = v5;
    v29 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[32 * a5];
    v23 = v10 + v20;
    if (&v21[-32 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -32 * a5];
      do
      {
        v26 = (v24 - v7);
        v27 = *(v25 - v7 + 16);
        *v26 = *(v25 - v7);
        v26[1] = v27;
        v25 += 32;
        v24 += 32;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[32 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v28 = v5;
      v29 = v7;
      v30 = v10 - v5;
LABEL_29:
      memmove(v28, v29, v30);
    }
  }

  return v5;
}

void sub_276D5F3FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_276D34F38();
}

void sub_276D5F7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSWPLayoutManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276D60BF4(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v3, 0x10E1C40BF9E100ELL);

  _Unwind_Resume(a1);
}

uint64_t sub_276D624F8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_info(a2, a2, a3);
  v6 = objc_msgSend_owningAttachmentNoRecurse(v3, v4, v5);

  LODWORD(v3) = objc_msgSend_isHTMLWrap(v6, v7, v8);
  return v3 ^ 1;
}

void sub_276D6396C(uint64_t a1, void *a2, void *a3)
{
  v45 = a2;
  objc_msgSend_CGPointValue(a3, v5, v6);
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v13 = objc_msgSend_context(*(*(a1 + 32) + 8), v11, v12);
  v15 = objc_msgSend_objectWithUUIDPath_(v13, v14, v45);
  v16 = TSUDynamicCast();

  v19 = objc_msgSend_owningAttachmentNoRecurse(v16, v17, v18);
  if (objc_msgSend_isAnchored(v19, v20, v21))
  {
    objc_opt_class();
    v22 = TSUDynamicCast();
    isHTMLWrap = objc_msgSend_isHTMLWrap(v22, v23, v24);

    if ((isHTMLWrap & 1) == 0)
    {
      v29 = objc_msgSend_validatedLayoutForAnchoredDrawable_(*(a1 + 40), v26, v16);
      if (!v29)
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPLayoutManager inflateTarget:fromHints:childHint:anchoredDrawablePositions:footnoteLayoutRange:]_block_invoke");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 1005, 0, "invalid nil value for '%{public}s'", "layout");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
      }

      objc_msgSend_setInterimPositionX_(v29, v27, v28, v8);
      objc_msgSend_setInterimPositionY_(v29, v37, v38, v10);
      objc_msgSend_fixTransformFromInterimPosition(v29, v39, v40);
      v43 = objc_msgSend_anchoredDrawablesForRelayout(*(a1 + 40), v41, v42);
      objc_msgSend_addObject_(v43, v44, v16);
    }
  }
}

void sub_276D63BDC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276D63C20()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276D63C64()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276D640C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 248) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = a1 + 304;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 440) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 456) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v4 = *(a1 + 208);
  *(a1 + 200) = 0u;

  *(a1 + 24) = 0;
  *(a1 + 104) = *byte_276F98C20;
  *(a1 + 136) = *&byte_276F98C20[32];
  *(a1 + 152) = *&byte_276F98C20[48];
  *(a1 + 168) = *&byte_276F98C20[64];
  *(a1 + 184) = *&byte_276F98C20[80];
  *(a1 + 120) = *&byte_276F98C20[16];
  *(a1 + 240) = 0;
  *(a1 + 32) = 0x7FF0000000000000;
  v5 = *(a1 + 408);
  *(a1 + 400) = 0u;

  v6 = *(a1 + 416);
  *(a1 + 416) = 0;

  v7 = *(a1 + 432);
  *(a1 + 432) = 0;

  *(a1 + 392) = 0;
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 16);
  *(a1 + 40) = *MEMORY[0x277CBF398];
  *(a1 + 56) = v9;
  *(a1 + 72) = v8;
  *(a1 + 88) = v9;
  v10 = *(a1 + 440);
  *(a1 + 440) = 0;

  v11 = *(a1 + 480);
  *(a1 + 480) = 0;

  v12 = objc_opt_new();
  v13 = *(a1 + 424);
  *(a1 + 424) = v12;

  v14 = objc_opt_new();
  v15 = *(a1 + 336);
  *(a1 + 336) = v14;

  v16 = objc_opt_new();
  v17 = *(a1 + 344);
  *(a1 + 344) = v16;

  v18 = objc_opt_new();
  v19 = *(a1 + 352);
  *(a1 + 352) = v18;

  v20 = objc_opt_new();
  v21 = *(a1 + 360);
  *(a1 + 360) = v20;

  v22 = objc_opt_new();
  v23 = *(a1 + 368);
  *(a1 + 368) = v22;

  v24 = objc_opt_new();
  v25 = *(a1 + 384);
  *(a1 + 384) = v24;

  v26 = dispatch_semaphore_create(1);
  v27 = *(a1 + 320);
  *(a1 + 320) = v26;

  v28 = dispatch_semaphore_create(1);
  v29 = *(a1 + 328);
  *(a1 + 328) = v28;

  return a1;
}

void sub_276D642B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 488);
  if (v12)
  {
    *(v10 + 496) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 456);
  if (v13)
  {
    *(v10 + 464) = v13;
    operator delete(v13);
  }

  sub_276D6D04C(v10 + 296, *(v10 + 304));
  a10 = (v10 + 272);
  sub_276D6CFC8(&a10);
  sub_276D6CFC8(&a10);
  a10 = (v10 + 216);
  sub_276D6CFC8(&a10);

  _Unwind_Resume(a1);
}

uint64_t sub_276D643B0(uint64_t a1)
{
  *(a1 + 24) = 0x8000000000000000;
  v2 = *(a1 + 488);
  if (v2)
  {
    *(a1 + 496) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 456);
  if (v3)
  {
    *(a1 + 464) = v3;
    operator delete(v3);
  }

  sub_276D6D04C(a1 + 296, *(a1 + 304));
  v5 = (a1 + 272);
  sub_276D6CFC8(&v5);
  v5 = (a1 + 248);
  sub_276D6CFC8(&v5);
  v5 = (a1 + 216);
  sub_276D6CFC8(&v5);

  return a1;
}

void sub_276D644D4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 208))
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSWPLineFragment::setTextSource(__strong id<TSWPTextSource>)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 156, 0, "expected nil value for '%{public}s'", "_textSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = *(a1 + 208);
  *(a1 + 208) = v4;
}

uint64_t sub_276D645D4(uint64_t a1, const char *a2)
{
  v3 = a1 + 216;
  if (*(a1 + 224) != *(a1 + 216))
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPLineFragment::setLineRef(const TSWPLineRef &)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 161, 0, "Line ref is already set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  return sub_276D646B8(v3, 1uLL, a2);
}

uint64_t sub_276D646B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    sub_276D6D0A0(a1);
    if (a2 <= 0x276276276276276)
    {
      v7 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v8 = 0x276276276276276;
      }

      else
      {
        v8 = v7;
      }

      sub_276D6D100(a1, v8);
    }

    sub_276D34ED8();
  }

  v9 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - v6) >> 3);
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - v6) >> 3);
  }

  for (; v10; --v10)
  {
    sub_276DD1EC0(v6, a3);
    v6 += 104;
  }

  if (a2 <= v9)
  {
    result = *(a1 + 8);
    v15 = *a1 + 104 * a2;
    while (result != v15)
    {
      result = sub_276DD1EBC(result - 104);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = v11 + 104 * (a2 - v9);
    v13 = 104 * a2 - 104 * v9;
    do
    {
      result = sub_276DD1E84(v11, a3);
      v11 += 104;
      v13 -= 104;
    }

    while (v13);
    *(a1 + 8) = v12;
  }

  return result;
}

uint64_t sub_276D64858(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_276D6D1AC(a1, a2);
  }

  else
  {
    sub_276DD1E84(a1[1], a2);
    result = v3 + 104;
    a1[1] = v3 + 104;
  }

  a1[1] = result;
  return result;
}

id sub_276D649A0(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v52 = a2;
  v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ((*(a1 + 24) & 4) != 0)
  {
    v5 = *(a1 + 224) - *(a1 + 216);
    if (v5)
    {
      v6 = 0;
      v7 = 0x4EC4EC4EC4EC4EC5 * (v5 >> 3);
      if (v7 <= 1)
      {
        v7 = 1;
      }

      v48 = v7;
      v49 = a1;
      do
      {
        v50 = v6;
        sub_276DD1E84(v60, *(a1 + 216) + 104 * v6);
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v8 = sub_276DD1F38(v60);
        obj = CTLineGetGlyphRuns(v8);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v56, v61, 16);
        if (v10)
        {
          v11 = *v57;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v57 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = CTRunGetAttributes(*(*(&v56 + 1) + 8 * i));
              v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"__wpAttachmentMap");
              v18 = objc_msgSend_attachment(v15, v16, v17);
              if (objc_msgSend_isDrawable(v18, v19, v20) && (objc_msgSend_isAnchored(v18, v21, v22) & 1) == 0 && (objc_msgSend_isPartitioned(v18, v23, v24) & 1) == 0)
              {
                v53 = v18;
                v54 = objc_msgSend_drawable(v53, v25, v26);
                if (!v54)
                {
                  v29 = MEMORY[0x277D81150];
                  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "NSSet<TSDLayout *> *TSWPLineFragment::layoutsForInlineDrawables(NSSet<TSDDrawableInfo *> *__strong) const");
                  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 299, 0, "invalid nil value for '%{public}s'", "drawable");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
                }

                if (!v52 || objc_msgSend_containsObject_(v52, v27, v54))
                {
                  v37 = objc_msgSend_layout(v15, v27, v28);
                  if (v37)
                  {
                    objc_msgSend_addObject_(v51, v36, v37);
                  }

                  else
                  {
                    v38 = MEMORY[0x277D81150];
                    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "NSSet<TSDLayout *> *TSWPLineFragment::layoutsForInlineDrawables(NSSet<TSDDrawableInfo *> *__strong) const");
                    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 302, 0, "invalid nil value for '%{public}s'", "layout");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
                  }
                }
              }
            }

            v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v56, v61, 16);
          }

          while (v10);
        }

        sub_276DD1EBC(v60);
        a1 = v49;
        v6 = v50 + 1;
      }

      while (v50 + 1 != v48);
    }
  }

  v46 = objc_msgSend_copy(v51, v3, v4);

  return v46;
}

uint64_t sub_276D64E30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*a1 >= a3)
  {
    *a1 += a2;
    sub_276D6D04C(a1 + 296, *(a1 + 304));
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = a1 + 304;
  }

  v6 = *(a1 + 16);
  if (v6 >= a3)
  {
    *(a1 + 16) = v6 + a2;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = *(a1 + 424);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v10)
  {
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_incrementCharIndexes_startingAt_(*(*(&v25 + 1) + 8 * v12++), v9, a2, a3, v25);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v29, 16);
    }

    while (v10);
  }

  objc_msgSend_adjustRangesByDelta_startingAt_(*(a1 + 208), v13, a2, a3);
  *(a1 + 464) = *(a1 + 456);
  *(a1 + 496) = *(a1 + 488);
  result = objc_msgSend_count(*(a1 + 368), v14, v15);
  if (result)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSWPLineFragment::incrementStartCharIndex(const NSInteger, const TSWPCharIndex, const NSUInteger)");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 355, 0, "Don't expect to be called with UI attachments");

    return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  return result;
}

double sub_276D65040(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v12 = objc_msgSend_characterStyleAtCharIndex_left_effectiveRange_(v9, v11, a1, a4, 0);
  v15 = objc_msgSend_styleProvider(v10, v13, v14);

  if (!v15)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "static CGFloat TSWPLineFragment::baselineAdjustAtCharIndex(TSWPCharIndex, TSWPStorage *__strong, TSWPColumn *__strong, BOOL, NSUInteger)");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 362, 0, "No style provider.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_styleProvider(v10, v16, v17);
  v27 = objc_msgSend_paragraphIndexAtCharIndex_(v9, v26, a1);
  v29 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v25, v28, v27, 0);

  v30 = sub_276D386B0(v12, v29, 37, 0);
  if (v30)
  {
    FontForStyle = TSWPFastCreateFontForStyle(v12, v29, a5);
    Size = CTFontGetSize(FontForStyle);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(FontForStyle, Size * 1.5, 0, 0);
    v34 = CopyWithAttributes;
    if (v30 == 2)
    {
      Descent = CTFontGetDescent(CopyWithAttributes);
      v35 = Descent - CTFontGetDescent(FontForStyle);
    }

    else
    {
      v35 = 0.0;
      if (v30 == 1)
      {
        CapHeight = CTFontGetCapHeight(CopyWithAttributes);
        v35 = CTFontGetCapHeight(FontForStyle) - CapHeight;
      }
    }

    CFRelease(v34);
    CFRelease(FontForStyle);
  }

  else
  {
    v35 = 0.0;
  }

  v38 = v35 - sub_276D388FC(v12, v29, 34, 0.0);

  return v38;
}

double sub_276D652B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v11 = objc_msgSend_storage(v7, v9, v10);
  v14 = objc_msgSend_scaleTextPercent(v7, v12, v13);
  v15 = v8 + sub_276D65040(a2, v11, v7, a4, v14);

  return v15;
}

double sub_276D6534C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v12 = objc_msgSend_storage(v7, v9, v10);
  v13 = a2 + a3;
  while (a2 < v13)
  {
    v14 = *(a1 + 32);
    v15 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v12, v11, a2, &v56);
    v18 = objc_msgSend_styleProvider(v7, v16, v17);

    if (!v18)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "CGFloat TSWPLineFragment::lowestBaselineInRange(NSRange, TSWPColumn *__strong) const");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 403, 0, "No style provider.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    v28 = objc_msgSend_styleProvider(v7, v19, v20);
    v30 = objc_msgSend_paragraphIndexAtCharIndex_(v12, v29, a2);
    v32 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v28, v31, v30, &v54);

    v33 = TSWPResolvePropertyForStyles(v15, v32, 37);
    v36 = v33;
    if (v33)
    {
      v39 = objc_msgSend_intValue(v33, v34, v35);
      if (v39)
      {
        v40 = objc_msgSend_scaleTextPercent(v7, v37, v38);
        FontForStyle = TSWPFastCreateFontForStyle(v15, v32, v40);
        Size = CTFontGetSize(FontForStyle);
        CopyWithAttributes = CTFontCreateCopyWithAttributes(FontForStyle, Size * 1.5, 0, 0);
        if (v39 == 2)
        {
          Descent = CTFontGetDescent(FontForStyle);
          v14 = v14 - (Descent + CTFontGetDescent(CopyWithAttributes));
        }

        else if (v39 == 1)
        {
          CapHeight = CTFontGetCapHeight(FontForStyle);
          v14 = v14 + CapHeight - CTFontGetCapHeight(CopyWithAttributes);
        }

        CFRelease(CopyWithAttributes);
        CFRelease(FontForStyle);
      }
    }

    v46 = TSWPResolvePropertyForStyles(v15, v32, 34);
    v49 = v46;
    if (v46)
    {
      objc_msgSend_doubleValue(v46, v47, v48);
    }

    else
    {
      v50 = 0.0;
    }

    v51 = v14 - v50;
    if (v51 > v8)
    {
      v8 = v51;
    }

    v52 = v56 + v57;
    if (v56 + v57 >= (v55 + v54))
    {
      v52 = v55 + v54;
    }

    if (v57)
    {
      a2 = v52;
    }

    else
    {
      a2 = v55 + v54;
    }
  }

  return v8;
}

double sub_276D65668(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_objectForKeyedSubscript_(v1, v2, @"TSWPBaselineShift");
  v6 = v3;
  if (v3)
  {
    objc_msgSend_doubleValue(v3, v4, v5);
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(v1, v4, @"TSWPSuperscript");

  if (v9)
  {
    v13 = objc_msgSend_unsignedIntValue(v9, v10, v11);
    if (v13)
    {
      v14 = *MEMORY[0x277CC4838];
      v15 = objc_msgSend_objectForKeyedSubscript_(v1, v12, *MEMORY[0x277CC4838]);

      v17 = objc_msgSend_objectForKeyedSubscript_(v1, v16, @"__wpAttachmentMap");
      v20 = v17;
      if (v17)
      {
        v21 = objc_msgSend_lineRef(v17, v18, v19);
        if (v21)
        {
          v22 = CTLineGetGlyphRuns(v21);
          Object = objc_msgSend_firstObject(v22, v23, v24);
          if (Object)
          {
            v27 = CTRunGetAttributes(Object);
            v15 = objc_msgSend_objectForKeyedSubscript_(v27, v28, v14);
          }

          else
          {
            v29 = MEMORY[0x277D81150];
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "static CGFloat TSWPLineFragment::baselineShiftFromRunAttributes(const CFDictionaryRef, NSUInteger)");
            v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 459, 0, "invalid nil value for '%{public}s'", "run");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
          }
        }
      }

      Size = CTFontGetSize(v15);
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v15, Size * 1.5, 0, 0);
      v38 = CopyWithAttributes;
      if (v13 == 2)
      {
        Descent = CTFontGetDescent(v15);
        CapHeight = CTFontGetDescent(v38);
      }

      else
      {
        if (v13 != 1)
        {
LABEL_18:
          CFRelease(v38);

          goto LABEL_19;
        }

        Descent = CTFontGetCapHeight(CopyWithAttributes);
        CapHeight = CTFontGetCapHeight(v15);
        if (Descent <= 0.0)
        {
          Descent = CTFontGetAscent(v38);
          CapHeight = CTFontGetAscent(v15);
        }
      }

      v8 = v8 + Descent - CapHeight;
      goto LABEL_18;
    }
  }

LABEL_19:

  return v8;
}

void sub_276D65948(void *a1@<X0>, const char *a2@<X1>, NSUInteger a3@<X2>, char a4@<W3>, char a5@<W4>, int a6@<W5>, int a7@<W6>, void *a8@<X7>, void *a9@<X8>)
{
  v137 = a8;
  v138 = a1;
  if (a2 < *a1 || &a2[a3] > a1[1] + *a1)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], length, "CGRectVector TSWPLineFragment::rectsForLineRange(const NSRange, BOOL, BOOL, BOOL, BOOL, NSMutableArray<NSValue *> *__strong) const");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 499, 0, "Bad range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = a9;
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v25 = *(v138 + 56);
  v148.origin = *(v138 + 40);
  v148.size = v25;
  if ((a4 & 1) == 0)
  {
    v26 = *(v138 + 144) + *(v138 + 120);
    if (v26 < *(v138 + 112))
    {
      v26 = *(v138 + 112);
    }

    v148.size.height = *(v138 + 136) + *(v138 + 104) + v26;
  }

  if ((a5 & 1) == 0)
  {
    v27 = *(v138 + 104);
    v148.origin.y = v27 + v148.origin.y;
    v148.size.height = v148.size.height - v27;
  }

  v28 = v137;
  if (!a3)
  {
    v29 = 0;
    v148.origin.x = sub_276D664E4(v138, a2, 0, 1, 0);
    v148.size.width = 0.0;
    goto LABEL_100;
  }

  v29 = a3;
  if (!a7 || (*(v138 + 24) & 1) == 0)
  {
    v134 = *(v138 + 216);
    if (*(v138 + 224) == v134)
    {
      goto LABEL_100;
    }

    ascent = 0.0;
    descent = 0.0;
    if (a6 && *(v138 + 256) != *(v138 + 248))
    {
      v30 = sub_276DD1F38(v134);
      CTLineGetTypographicBounds(v30, &ascent, &descent, 0);
      v31 = *(v134 + 16);
      v32 = ascent;
      y = *(MEMORY[0x277CBF398] + 8);
      v34 = *(v138 + 248);
      v35 = *(v138 + 256);
      if (v34 != v35)
      {
        x = *MEMORY[0x277CBF398];
        width = *(MEMORY[0x277CBF398] + 16);
        height = *(MEMORY[0x277CBF398] + 24);
        do
        {
          v39 = sub_276DD1F38(v34);
          v161.size.width = CTLineGetTypographicBounds(v39, &ascent, &descent, 0);
          v161.origin.x = *(v34 + 8);
          v161.origin.y = *(v34 + 16) - ascent;
          v161.size.height = ascent + descent;
          v158.origin.x = x;
          v158.origin.y = y;
          v158.size.width = width;
          v158.size.height = height;
          v159 = CGRectUnion(v158, v161);
          x = v159.origin.x;
          y = v159.origin.y;
          width = v159.size.width;
          height = v159.size.height;
          v34 += 104;
        }

        while (v34 != v35);
      }

      if (y < v31 - v32)
      {
        v40 = v31 - v32 - y - *(v138 + 144);
        v148.origin.y = v148.origin.y - v40;
        v148.size.height = v40 + v148.size.height;
      }
    }

    sub_276D669A8(v138);
    v42 = *(v138 + 272);
    v41 = *(v138 + 280);
    if (v42 != v41)
    {
      v133 = *(v138 + 280);
      do
      {
        sub_276DD1E84(v142, v42);
        v43 = v143;
        v44 = v144;
        v47 = objc_msgSend_charRangeMappedToStorage_(*(v138 + 208), v45, v143, v144);
        v48 = v46;
        if (a2 > v47 || &a2[v29] < &v47[v46])
        {
          v149.location = a2;
          v149.length = v29;
          v155.location = v47;
          v155.length = v48;
          v50 = NSIntersectionRange(v149, v155);
          if (v50.length)
          {
            v150.location = objc_msgSend_charRangeMappedFromStorage_(*(v138 + 208), v50.length, a2, v29);
            range1 = v29;
            v156.location = v43;
            v156.length = v44;
            v51 = NSIntersectionRange(v150, v156);
            v52 = a2;
            v53 = objc_msgSend_charRangeMappedToStorage_(*(v138 + 208), v51.length, v51.location, v51.length);
            v55 = v54;
            v56 = v145;
            v57 = sub_276DD1F38(v142);
            v58 = v51.location - v43 + v56;
            OffsetForStringIndex = CTLineGetOffsetForStringIndex(v57, v58, 0);
            v60 = sub_276DD1F38(v142);
            v61 = CTLineGetOffsetForStringIndex(v60, v58 + v51.length, 0);
            v62 = sub_276DD1F38(v142);
            TypographicBounds = CTLineGetTypographicBounds(v62, 0, 0, 0);
            *&v139 = sub_276D664E4(v138, v47, 0, 1, 0);
            v64 = &v47[v48];
            v65 = sub_276D664E4(v138, &v47[v48], 0, 1, 0);
            v140 = v65 - *&v139;
            v66 = *(v138 + 32);
            *&v139 = *&v139 - (*(v134 + 8) + *(v138 + 40));
            *(&v139 + 1) = TypographicBounds * 0.5 + v66 - v61;
            v141 = v61 - OffsetForStringIndex;
            sub_276D67228(a9, &v139);
            if (v137)
            {
              v68 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v67, v53, v55);
              objc_msgSend_addObject_(v137, v69, v68);
            }

            v70 = *MEMORY[0x277D81490];
            v29 = *(MEMORY[0x277D81490] + 8);
            v151.location = v52;
            v151.length = range1;
            v157.location = v47;
            v157.length = v48;
            if (NSIntersectionRange(v151, v157).length)
            {
              if (v47 >= v52 && &v47[-v52] < range1 && (v64 < v52 || &v64[-v52] >= range1))
              {
                v70 = v52;
                v29 = &v47[-v52];
              }

              else if (v52 >= v47 && v52 - v47 < v48 && (range1 + v52 < v47 || range1 + v52 - v47 >= v48))
              {
                v70 = &v47[v48];
                v29 = range1 + v52 - v64;
              }
            }

            else
            {
              v70 = v52;
              v29 = range1;
            }

            a2 = v70;
            v41 = v133;
          }
        }

        sub_276DD1EBC(v142);
        v42 += 104;
      }

      while (v42 != v41);
    }

    v71 = *(v138 + 488);
    if (v71 != *(v138 + 496))
    {
      v72 = v29;
      v73 = 0;
      v74 = 0;
      while (1)
      {
        v152.location = a2;
        v152.length = v72;
        v75 = NSIntersectionRange(v152, *(v71 + 40 * v73 + 16));
        length = v75.length;
        if (!v75.length)
        {
          goto LABEL_81;
        }

        v76 = sub_276D67300(v138);
        v77 = *v76;
        if (v76[1] == *v76)
        {
          goto LABEL_81;
        }

        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = -INFINITY;
        v82 = -INFINITY;
        do
        {
          if (*(v77 + v78 + 56) == v73)
          {
            length = NSIntersectionRange(*(v77 + v78), v75).length;
            if (length)
            {
              v77 = *v76;
              if ((v79 & 1) == 0)
              {
                v81 = *(v77 + v78 + 32);
              }

              v82 = *(v77 + v78 + 40);
              v79 = 1;
            }

            else
            {
              if (v79)
              {
                goto LABEL_57;
              }

              v79 = 0;
              v77 = *v76;
            }
          }

          ++v80;
          v78 += 64;
        }

        while (v80 < (v76[1] - v77) >> 6);
        if ((v79 & 1) == 0)
        {
          goto LABEL_81;
        }

LABEL_57:
        v83 = v138;
        v84 = *(v138 + 24);
        if ((v84 & 0x800) != 0)
        {
          v85 = (v75.location + v75.length);
          if (v84 < 0)
          {
            v83 = MEMORY[0x277D81490];
          }

          if (v85 == (*v83 + v83[1]))
          {
            if ((v84 & 0x1000) != 0)
            {
              v81 = sub_276D664E4(v138, v85, 0, 1, 0) - *(v134 + 8) - *(v138 + 40);
            }

            else
            {
              v82 = sub_276D664E4(v138, v85, 0, 1, 0) - *(v134 + 8) - *(v138 + 40);
            }
          }
        }

        v148.origin.x = v81 + *(v134 + 8) + *(v138 + 40);
        v148.size.width = v82 - v81;
        if (a6)
        {
          v86 = *(v138 + 256);
          for (i = *(v138 + 248); i != v86; i += 104)
          {
            v88 = sub_276DD1F38(i);
            v89 = CTLineGetTypographicBounds(v88, 0, 0, 0);
            if (NSIntersectionRange(v75, *(i + 24)).length)
            {
              v90 = *(i + 8);
              v91 = *(v138 + 40);
              MinX = CGRectGetMinX(v148);
              v93 = v90 + v91;
              v94 = v148.origin.x;
              v95 = v148.size.width;
              if (v93 < MinX)
              {
                v96 = v148.origin.y;
                v97 = v148.size.height;
                v95 = CGRectGetMaxX(*&v94) - v93;
                v148.origin.x = v93;
                v148.size.width = v95;
                v94 = v93;
              }

              v98 = v148.origin.y;
              v99 = v148.size.height;
              v100 = v89 + v93;
              if (v100 > CGRectGetMaxX(*&v94))
              {
                v148.size.width = v100 - CGRectGetMinX(v148);
              }
            }
          }
        }

        v101 = a9[1];
        if (*a9 != v101)
        {
          MaxX = CGRectGetMaxX(*(v101 - 32));
          v103 = CGRectGetMinX(v148);
          if (MaxX == v103 || vabdd_f64(MaxX, v103) < 0.00999999978)
          {
            break;
          }
        }

        sub_276D67228(a9, &v148);
        if (v137)
        {
          v104 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], length, v75.location, v75.length);
          objc_msgSend_addObject_(v137, v105, v104);
LABEL_80:
        }

LABEL_81:
        v71 = *(v138 + 488);
        v73 = ++v74;
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v138 + 496) - v71) >> 3) <= v74)
        {
          goto LABEL_99;
        }
      }

      v106 = a9[1];
      *(v106 - 32) = CGRectUnion(*(v106 - 32), v148);
      if (!v137 || a9[1] == *a9)
      {
        goto LABEL_81;
      }

      v107 = objc_msgSend_lastObject(v137, length, v16);
      v110 = objc_msgSend_rangeValue(v107, v108, v109);
      v112 = v111;

      v153.location = v110;
      v153.length = v112;
      v113 = NSUnionRange(v153, v75);
      v104 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v113.length, v113.location, v113.length);
      v116 = objc_msgSend_count(v137, v114, v115);
      objc_msgSend_setObject_atIndexedSubscript_(v137, v117, v104, v116 - 1);
      goto LABEL_80;
    }

    v122 = MEMORY[0x277D81490];
    if (*(v138 + 24) < 0)
    {
      v123 = MEMORY[0x277D81490];
    }

    else
    {
      v123 = v138;
    }

    v154.location = a2;
    v72 = v29;
    v154.length = v29;
    v124 = NSIntersectionRange(v154, *v123);
    length = v124.length;
    if (!v124.length)
    {
      goto LABEL_99;
    }

    v125 = v138;
    v126 = *(v138 + 24);
    v127 = 0.0;
    if ((v126 & 0x800) != 0)
    {
      length = (v124.location + v124.length);
      if (v126 < 0)
      {
        v125 = v122;
      }

      if (length == (*v125 + v125[1]))
      {
        if ((v126 & 0x1000) == 0)
        {
          v128 = sub_276D664E4(v138, length, 0, 1, 0) - *(v134 + 8) - *(v138 + 40);
LABEL_98:
          v148.origin.x = v127 + *(v134 + 8) + *(v138 + 40);
          v148.size.width = v128 - v127;
LABEL_99:
          v24 = a9;
          v28 = v137;
          v29 = v72;
          goto LABEL_100;
        }

        v127 = sub_276D664E4(v138, length, 0, 1, 0) - *(v134 + 8) - *(v138 + 40);
      }
    }

    v128 = 0.0;
    goto LABEL_98;
  }

  objc_msgSend_alignmentFrameForInlineLayout(*(v138 + 416), length, v16);
  v118 = v160.origin.x;
  v119 = v160.origin.y;
  v120 = v160.size.width;
  v121 = v160.size.height;
  if (!CGRectIsEmpty(v160))
  {
    v148.origin.x = v118;
    v148.origin.y = v119;
    v148.size.width = v120;
    v148.size.height = v121;
  }

LABEL_100:
  if (*v24 == v24[1])
  {
    sub_276D67228(v24, &v148);
  }

  if (v28 && !objc_msgSend_count(v28, length, v16))
  {
    v130 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v129, a2, v29);
    objc_msgSend_addObject_(v28, v131, v130);
  }
}

void sub_276D663E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

double sub_276D664E4(uint64_t a1, const char *a2, uint64_t a3, char a4, double *a5)
{
  v9 = *(a1 + 24);
  v10 = MEMORY[0x277D81490];
  if (v9 >= 0)
  {
    v10 = a1;
  }

  v12 = *v10;
  v11 = v10[1];
  if (a5)
  {
    *a5 = 0.0;
  }

  if (*(a1 + 416))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    if ((v9 & 0x1000) != 0)
    {
      if (*a1 == a2)
      {
        goto LABEL_8;
      }
    }

    else if (*a1 != a2)
    {
LABEL_8:
      MaxX = CGRectGetMaxX(*&v13);
      goto LABEL_22;
    }

    MaxX = CGRectGetMinX(*&v13);
LABEL_22:
    v31 = MaxX;
    if (a5)
    {
      *a5 = MaxX;
      if (a4)
      {
        return v31;
      }

      goto LABEL_57;
    }

LABEL_56:
    if (a4)
    {
      return v31;
    }

    goto LABEL_57;
  }

  v18 = *(a1 + 216);
  v19 = *(a1 + 224) - v18;
  if (!v19)
  {
    v31 = 0.0;
    if (a4)
    {
      return v31;
    }

    goto LABEL_57;
  }

  if ((v12 + v11) != a2)
  {
    goto LABEL_25;
  }

  if ((v9 & 0x800) != 0)
  {
    v46 = *(a1 + 208);
    if (!v46)
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL, BOOL, CGFloat *) const");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 1358, 0, "invalid nil value for '%{public}s'", "_textSource");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
      v46 = *(a1 + 208);
    }

    v54 = objc_msgSend_charIndexMappedFromStorage_(v46, a2, a2) - 1;
    secondaryOffset = 0.0;
    if ((*(a1 + 25) & 0x40) != 0)
    {
      v54 = v54 - *a1 + *(a1 + 16);
    }

    v55 = sub_276DD1F38(v18);
    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v55, v54, &secondaryOffset);
    v57 = *(v18 + 8);
    v58 = OffsetForStringIndex + v57;
    v59 = v57 + secondaryOffset;
    secondaryOffset = v57 + secondaryOffset;
    if (a5)
    {
      *a5 = v59;
    }

    else if ((v9 & 0x1000) == 0)
    {
      v58 = v59;
    }

    if (sub_276D37D44(v54, *(a1 + 208)))
    {
      v60 = 0.0;
      if ((v9 & 0x1000) == 0)
      {
        v60 = *(a1 + 56);
      }

      v32 = v60;
      if (!a5)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v61 = 7.0;
      if ((v9 & 0x1000) != 0)
      {
        v61 = -7.0;
      }

      v32 = v61 + v58;
      if (!a5)
      {
        goto LABEL_53;
      }

      v60 = v61 + *a5;
    }

    *a5 = v60;
LABEL_53:
    v62 = *(a1 + 40);
    v31 = v32 + v62;
    if (!a5)
    {
      goto LABEL_56;
    }

    v63 = v62 + *a5;
    goto LABEL_55;
  }

  if ((v9 & 0x1002) != 2)
  {
LABEL_25:
    v32 = 0.0;
    if (*a1 <= a2)
    {
      v33 = *(a1 + 208);
      if (!v33)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL, BOOL, CGFloat *) const", 0.0);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 1400, 0, "invalid nil value for '%{public}s'", "_textSource");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        v33 = *(a1 + 208);
      }

      v41 = objc_msgSend_charIndexMappedFromStorage_(v33, a2, a2, v32);
      v42 = v41;
      if ((*(a1 + 25) & 0x40) != 0)
      {
        v42 = v41 - *a1 + *(a1 + 16);
      }

      secondaryOffset = 0.0;
      v43 = sub_276DD1F38(v18);
      v44 = CTLineGetOffsetForStringIndex(v43, v42, &secondaryOffset);
      v45 = *(v18 + 8);
      if (a5)
      {
        *a5 = v45 + secondaryOffset;
      }

      v32 = v44 + v45;
    }

    goto LABEL_53;
  }

  v20 = 0x4EC4EC4EC4EC4EC5 * (v19 >> 3);
  if (v20 <= 1)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL, BOOL, CGFloat *) const");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 1389, 0, "Missing hyphen line ref");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    v18 = *(a1 + 216);
    v20 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 224) - v18) >> 3);
  }

  v28 = 0.0;
  if (v20 >= 2)
  {
    v29 = v20 - 1;
    v30 = v18 + 104;
    while ((*(v30 + 96) & 2) == 0)
    {
      v30 += 104;
      if (!--v29)
      {
        goto LABEL_61;
      }
    }

    v67 = *(v30 + 8);
    v68 = sub_276DD1F38(v30);
    v28 = v67 + CTLineGetTypographicBounds(v68, 0, 0, 0);
  }

LABEL_61:
  if (a5)
  {
    *a5 = v28;
    v63 = v28 + *(a1 + 40);
    v31 = v63;
LABEL_55:
    *a5 = v63;
    goto LABEL_56;
  }

  v31 = v28 + *(a1 + 40);
  if (a4)
  {
    return v31;
  }

LABEL_57:
  v64 = fmin(v31, CGRectGetMaxX(*(a1 + 40)));
  v31 = fmax(v64, CGRectGetMinX(*(a1 + 40)));
  if (a5)
  {
    v65 = fmin(*a5, CGRectGetMaxX(*(a1 + 40)));
    *a5 = fmax(v65, CGRectGetMinX(*(a1 + 40)));
  }

  return v31;
}

intptr_t sub_276D669A8(uint64_t a1)
{
  v120 = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(*(a1 + 328), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 496) != *(a1 + 488))
  {
    v2 = *(a1 + 328);

    return dispatch_semaphore_signal(v2);
  }

  v4 = *(a1 + 216);
  if (*(a1 + 224) == v4 || (*(a1 + 25) & 0x40) != 0)
  {
    goto LABEL_62;
  }

  v6 = sub_276DD1F38(v4);
  length = *(MEMORY[0x277D81490] + 8);
  v104 = *MEMORY[0x277D81490];
  if (!*(a1 + 208))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void TSWPLineFragment::fillWritingDirectionRuns() const");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 2099, 0, "invalid nil value for '%{public}s'", "_textSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (!*(a1 + 480))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void TSWPLineFragment::fillWritingDirectionRuns() const");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2100, 0, "invalid nil value for '%{public}s'", "_paragraphString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v107 = *(a1 + 248);
  v108 = *(a1 + 256);
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = CTLineGetGlyphRuns(v6);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v115, v119, 16);
  if (!v22)
  {

    goto LABEL_62;
  }

  v105 = 0;
  v106 = *v116;
  v23 = -1;
  v110 = 1;
  v111 = 1;
  v24 = -1;
  do
  {
    v25 = 0;
    v102 = v22;
    do
    {
      if (*v116 != v106)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v115 + 1) + 8 * v25);
      StringRange = CTRunGetStringRange(v26);
      v28 = StringRange.length != 1 || v108 == v107;
      if (v28 || (Attributes = CTRunGetAttributes(v26), !CFDictionaryContainsKey(Attributes, @"TSWPRubySpacingRunAttribute")))
      {
        Status = CTRunGetStatus(v26);
        v109 = (Status & 1) == 0;
        if (v111)
        {
          v110 = (*(a1 + 25) & 0x10) == 0;
        }

        v32 = *(a1 + 480);
        v33 = sub_276D377F4(StringRange.location, v32);
        v34 = sub_276D37F20(v33);

        if (v34 == 3 && StringRange.location != 0)
        {
          v36 = *(a1 + 480);
          location = CTRunGetStringRange(v26).location;
          v38 = CFStringGetRangeOfComposedCharactersAtIndex(v36, location - 1).location;

          v39 = *(a1 + 480);
          v40 = sub_276D377F4(v38, v39);
          v41 = sub_276D37F20(v40) != 0;

          goto LABEL_33;
        }

        v41 = 0;
        if (((v110 ^ Status) & 1) != 0 && !(BYTE4(v105) & 1 | (v34 == 3)) && ((v41 = 0, StringRange.location + StringRange.length == v104) || length + v104 == StringRange.location))
        {
          BYTE4(v105) = 0;
        }

        else
        {
LABEL_33:
          if ((v111 & 1) == 0)
          {
            v113 = v110;
            buffer[0] = v24;
            buffer[1] = v23;
            v114 = v105 & 1;
            sub_276D6ACD4(a1 + 488, buffer);
          }

          LOBYTE(v105) = v34 == 3 && v41;
          v23 = -1;
          v24 = -1;
          BYTE4(v105) = v34 == 3;
          v110 = v109;
        }

        v22 = v102;
        GlyphCount = CTRunGetGlyphCount(v26);
        sub_276D6D3E8(buffer, GlyphCount);
        v122.location = 0;
        v122.length = GlyphCount;
        CTRunGetStringIndices(v26, v122, buffer[0]);
        if (GlyphCount >= 1)
        {
          for (i = 0; i != GlyphCount; ++i)
          {
            v44 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v30, buffer[0][i]);
            if (v44 >= v24)
            {
              v45 = v24;
            }

            else
            {
              v45 = v44;
            }

            if (v24 == -1)
            {
              v24 = v44;
            }

            else
            {
              v24 = v45;
            }

            if (v44 <= v23)
            {
              v46 = v23;
            }

            else
            {
              v46 = v44;
            }

            if (v23 == -1)
            {
              v23 = v44;
            }

            else
            {
              v23 = v46;
            }
          }
        }

        if (buffer[0])
        {
          buffer[1] = buffer[0];
          operator delete(buffer[0]);
        }

        v111 = 0;
        length = StringRange.length;
        v104 = StringRange.location;
      }

      ++v25;
    }

    while (v25 != v22);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v115, v119, 16);
  }

  while (v22);

  if (v24 != -1 && v23 != -1)
  {
    v113 = v110;
    buffer[0] = v24;
    buffer[1] = v23;
    v114 = v105 & 1;
    sub_276D6ACD4(a1 + 488, buffer);
  }

LABEL_62:
  v49 = *(a1 + 488);
  v48 = *(a1 + 496);
  v50 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - v49) >> 3);
  if (v48 != v49)
  {
    v51 = 0;
    v52 = 0;
    v53 = MEMORY[0x277D81490];
    do
    {
      v54 = *a1;
      v55 = *(a1 + 24);
      v56 = v55 < 0;
      if (v55 < 0)
      {
        v57 = v53;
      }

      else
      {
        v57 = a1;
      }

      v58 = v57[1];
      v59 = *v53;
      if (!v56)
      {
        v59 = *a1;
      }

      v60 = (v59 + v58);
      v61 = (v49 + 40 * v51);
      v62 = *v61;
      v63 = v61[1];
      v64 = (v49 + 8);
      v65 = 1;
      do
      {
        v66 = *(v64 - 1);
        v67 = *v64;
        v68 = *v64 > v54 && v67 <= v62;
        v69 = !v68;
        if (v66 <= v67)
        {
          v70 = *v64;
        }

        else
        {
          v70 = *(v64 - 1);
        }

        if (v66 >= v67)
        {
          v71 = *v64;
        }

        else
        {
          v71 = *(v64 - 1);
        }

        v72 = v69 == 0;
        if (v69)
        {
          v73 = v54;
        }

        else
        {
          v73 = *v64;
        }

        if (!v72)
        {
          v70 = *(v64 - 1);
        }

        if (v66 > v62 || v66 <= v54)
        {
          v54 = v73;
        }

        else
        {
          v54 = v70;
        }

        if (v63)
        {
          v75 = v67 < v60;
        }

        else
        {
          v75 = 0;
        }

        if (!v75 || v67 <= v63)
        {
          v67 = v60;
          v78 = *(v64 - 1);
        }

        else
        {
          v78 = v71;
        }

        if (v66 > v63 && v66 < v60)
        {
          v60 = v78;
        }

        else
        {
          v60 = v67;
        }

        v64 += 5;
        v68 = v50 > v65++;
      }

      while (v68);
      if (v60 >= v54)
      {
        v61[2] = v54;
        v61[3] = &v60[-v54];
      }

      else
      {
        v80 = MEMORY[0x277D81150];
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "void TSWPLineFragment::fillWritingDirectionRuns() const", v70, v71);
        v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v84, v81, v83, 2214, 0, "Bad ranges in runs.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86);
        v49 = *(a1 + 488);
        *(v49 + 40 * v51 + 16) = xmmword_276F98AE0;
        v48 = *(a1 + 496);
      }

      v50 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - v49) >> 3);
      v51 = ++v52;
    }

    while (v50 > v52);
  }

  if (v48 != v49)
  {
    v87 = 0;
    v88 = 0;
    do
    {
      if (v50 - 1 > v87 && (v89 = v49 + 40 * (v88 + 1), v90 = *(v89 + 16), v91 = v49 + 40 * v87, v92 = *(v91 + 16), v90 <= v92) && *(v89 + 24) + v90 >= *(v91 + 24) + v92)
      {
        v99 = v49 + 40 * v87;
        v100 = v48 - (v99 + 40);
        if (v48 != v99 + 40)
        {
          memmove((v49 + 40 * v87), (v99 + 40), v48 - (v99 + 40));
        }

        v48 = v99 + v100;
        *(a1 + 496) = v99 + v100;
        --v88;
      }

      else if (v88)
      {
        v93 = v49 + 40 * (v88 - 1);
        v94 = *(v93 + 16);
        v95 = v49 + 40 * v87;
        v96 = *(v95 + 16);
        if (v94 <= v96 && *(v93 + 24) + v94 >= *(v95 + 24) + v96)
        {
          v97 = v49 + 40 * v87;
          v98 = v48 - (v97 + 40);
          if (v48 != v97 + 40)
          {
            memmove((v49 + 40 * v87), (v97 + 40), v48 - (v97 + 40));
          }

          v48 = v97 + v98;
          *(a1 + 496) = v97 + v98;
          --v88;
        }
      }

      v49 = *(a1 + 488);
      v50 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - v49) >> 3);
      v87 = ++v88;
    }

    while (v50 > v88);
  }

  return dispatch_semaphore_signal(*(a1 + 328));
}

void sub_276D67228(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_276D34ED8();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_276D5F3FC(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t sub_276D67300(uint64_t a1)
{
  if (*(a1 + 224) != *(a1 + 216) && (*(a1 + 25) & 0x40) == 0)
  {
    v2 = *(a1 + 480);
    objc_sync_enter(v2);
    if (*(a1 + 456) == *(a1 + 464))
    {
      v102 = v2;
      if (!*(a1 + 208))
      {
        v4 = MEMORY[0x277D81150];
        v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "const std::vector<TSWPLFCharIndexData> &TSWPLineFragment::getCharIndexData() const");
        v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 2328, 0, "invalid nil value for '%{public}s'", "_textSource");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
      }

      if (!*(a1 + 480))
      {
        v11 = MEMORY[0x277D81150];
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "const std::vector<TSWPLFCharIndexData> &TSWPLineFragment::getCharIndexData() const");
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 2329, 0, "invalid nil value for '%{public}s'", "_paragraphString");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      }

      sub_276D669A8(a1);
      line = sub_276DD1F38(*(a1 + 216));
      v19 = MEMORY[0x277D81490];
      if (*(a1 + 24) >= 0)
      {
        v19 = a1;
      }

      v20 = *v19;
      v21 = v19[1];
      v23 = objc_msgSend_charIndexRemappedFromStorage_(*(a1 + 208), v18, *v19);
      v103 = v20 + v21;
      if (v23 < v20 + v21)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          v26 = objc_msgSend_charRangeMappedFromStorage_(*(a1 + 208), v22, v23, 1);
          if (v27 >= 2)
          {
            v28 = *(a1 + 480);
            v30 = objc_msgSend_characterAtIndex_(v28, v29, v26);

            if (v30 == 8206)
            {
              ++v26;
            }
          }

          secondaryOffset = 0.0;
          v105[2] = CTLineGetOffsetForStringIndex(line, v26, &secondaryOffset);
          v105[3] = secondaryOffset;
          v106 = 1;
          v107 = 0x7FFFFFFFFFFFFFFFLL;
          v31 = *(a1 + 488);
          v32 = *(a1 + 496);
          v33 = 0xCCCCCCCCCCCCCCCDLL * ((v32 - v31) >> 3);
          if (v25 < v33)
          {
            v34 = v31 + 40 * v25;
            v36 = *(v34 + 16);
            v35 = *(v34 + 24);
            v38 = v23 >= v36;
            v37 = v23 - v36;
            v38 = !v38 || v37 >= v35;
            if (!v38)
            {
              goto LABEL_32;
            }
          }

          if (v32 != v31)
          {
            break;
          }

          v25 = 0;
LABEL_34:
          v43 = *(a1 + 480);
          v45 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 208), v44, v23);
          v46 = v43;
          if (objc_msgSend_length(v46, v47, v48) <= v45)
          {

            v68 = MEMORY[0x277D81150];
            v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "const std::vector<TSWPLFCharIndexData> &TSWPLineFragment::getCharIndexData() const");
            v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v70, v72, 2379, 0, "countOfComposedCharacters failed");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75);
            goto LABEL_53;
          }

          v50 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v46, v49, v45);
          v52 = v51;
          if (v50 == 0x7FFFFFFFFFFFFFFFLL || !v51)
          {
            v53 = MEMORY[0x277D81150];
            v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "NSUInteger countOfComposedCharacters(NSString *__strong, NSUInteger)");
            v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 2058, 0, "Unexpected 0 length for composed sequence.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
            if (!v52)
            {
              v52 = 1;
            }
          }

          v62 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v60, v52 + v26);
          v63 = v26 + v52;
          do
          {
            if (v62 >= v52 + v23)
            {
              break;
            }

            v62 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v61, ++v63);
          }

          while (v63 < objc_msgSend_length(*(a1 + 208), v64, v65));
          if (v23 <= v62)
          {
            v66 = v62;
          }

          else
          {
            v66 = v23;
          }

          if (v23 >= v62)
          {
            v67 = *&v62;
          }

          else
          {
            v67 = *&v23;
          }

          v105[0] = v67;
          *&v105[1] = v66 - *&v67;
          sub_276D6AE18(a1 + 456, v105);
          if (v23 >= v62)
          {
            v76 = MEMORY[0x277D81150];
            v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "const std::vector<TSWPLFCharIndexData> &TSWPLineFragment::getCharIndexData() const");
            v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v80, v77, v79, 2398, 0, "textSource failed to advance");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82);
            goto LABEL_53;
          }

          v23 = v66;
          if (v66 >= v103)
          {
            goto LABEL_53;
          }
        }

        v25 = 0;
        if (v33 <= 1)
        {
          v33 = 1;
        }

        v39 = (v31 + 24);
        while (1)
        {
          v40 = *(v39 - 1);
          v38 = v23 >= v40;
          v41 = v23 - v40;
          if (v38 && v41 < *v39)
          {
            break;
          }

          v39 += 5;
          if (v33 == ++v25)
          {
            v25 = v33;
            goto LABEL_34;
          }
        }

LABEL_32:
        v106 = *(v31 + 40 * v25 + 32);
        v107 = v25;
        goto LABEL_34;
      }

LABEL_53:
      v84 = *(a1 + 456);
      v83 = *(a1 + 464);
      v85 = (v83 - v84) >> 6;
      if (v83 != v84)
      {
        v86 = 0;
        v87 = v85 - 1;
        if (v85 <= 1)
        {
          v88 = 1;
        }

        else
        {
          v88 = (v83 - v84) >> 6;
        }

        v89 = *(a1 + 24);
        do
        {
          if ((v89 & 0x1000) != 0)
          {
            v90 = 16;
          }

          else
          {
            v90 = 24;
          }

          v91 = *(v84 + v90 + v86 * 16);
          if (v87)
          {
            v92 = LOBYTE(v84[v86 + 3]);
            if (v92 == LOBYTE(v84[v86 + 7]) || (v89 & 0x1000) == 0)
            {
              v94 = 80;
            }

            else
            {
              v94 = 88;
            }

            v24.n128_u64[0] = *(&v84[v86] + v94);
          }

          else
          {
            v105[0] = 0.0;
            v95 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 208), v83, v103);
            v24.n128_f64[0] = CTLineGetOffsetForStringIndex(line, v95, v105);
            v89 = *(a1 + 24);
            if ((v89 & 0x1000) != 0 && LOBYTE(v84[v86 + 3]))
            {
              v24.n128_f64[0] = v105[0];
            }

            LOBYTE(v92) = v84[v86 + 3];
            v84 = *(a1 + 456);
          }

          v96 = (v92 & 1) == 0;
          if (v92)
          {
            v97 = v91;
          }

          else
          {
            v97 = v24.n128_f64[0];
          }

          v98 = &v84[v86];
          if (v96)
          {
            v24.n128_f64[0] = v91;
          }

          *(v98 + 4) = v97;
          *(v98 + 5) = v24.n128_u64[0];
          --v87;
          v86 += 4;
          --v88;
        }

        while (v88);
        v83 = *(a1 + 464);
        v85 = (v83 - v84) >> 6;
      }

      *&v105[0] = sub_276D6ADDC;
      v99 = 126 - 2 * __clz(v85);
      if (v83 == v84)
      {
        v100 = 0;
      }

      else
      {
        v100 = v99;
      }

      sub_276D6D900(v84, v83, v105, v100, 1, v24);
      v2 = v102;
    }

    objc_sync_exit(v2);
  }

  return a1 + 456;
}