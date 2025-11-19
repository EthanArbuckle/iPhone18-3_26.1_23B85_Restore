void sub_276E2208C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v8 = objc_msgSend_fontWithDesiredPostScriptName_(TSWPFont, v6, a4);
  objc_msgSend_addObject_(v5, v7, v8);
}

void sub_276E241CC(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v7 = objc_msgSend_firstNamedAncestor(a2, v5, v6);
  if (v7)
  {
    v8 = [TSWPTOCMapEntry alloc];
    v10 = objc_msgSend_initWithTOCEntryStyle_showInTOC_(v8, v9, v12, *(a1 + 40));
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 80), v11, v10, v7);
  }
}

void sub_276E25524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_276E25568(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v7 = objc_msgSend_tocEntryStyle(a3, v5, v6);
  v8 = *(a1 + 32);
  if (objc_msgSend_showInTOCForParagraphStyle_(*(a1 + 40), v9, v16))
  {
    v10 = @"SHOW";
  }

  else
  {
    v10 = @"    ";
  }

  v11 = String();
  v12 = String();
  v13 = String();
  v14 = String();
  objc_msgSend_appendFormat_(v8, v15, @"%@ %p|%@|%@|=>|%p|%@|%@$", v10, v16, v11, v12, v7, v13, v14);
}

id sub_276E257A8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), a2, a2);

  return v2;
}

void sub_276E258B0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_msgSend_addObject_(*(a1 + 32), v6, v12);
  v7 = *(a1 + 32);
  v10 = objc_msgSend_tocEntryStyle(v5, v8, v9);
  objc_msgSend_addObject_(v7, v11, v10);
}

void sub_276E25C08(uint64_t a1, void *a2, void *a3)
{
  v64 = a2;
  v5 = a3;
  objc_msgSend_stylesheet(v64, v6, v7);

  objc_opt_class();
  v8 = (*(*(a1 + 40) + 16))();
  v9 = TSUCheckedDynamicCast();

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = objc_opt_class();
    v62 = NSStringFromClass(v28);
    TSUSetCrashReporterInfo();

    v29 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPTOCSettings replaceReferencedStylesUsingBlock:]_block_invoke", "[TSWPTOCSettings replaceReferencedStylesUsingBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm", 360, v27, v64, v62, v9);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v38, v31, v33, 360, 1, "Bad style mapping [%{public}@ %p] -> [%{public}@ %p]", v35, v64, v37, v9);

    TSUCrashBreakpoint();
    goto LABEL_9;
  }

  objc_opt_class();
  v12 = objc_msgSend_firstNamedAncestor(v9, v10, v11);
  v13 = TSUCheckedDynamicCast();

  v14 = *(a1 + 40);
  v17 = objc_msgSend_tocEntryStyle(v5, v15, v16);
  v18 = (*(v14 + 16))(v14, v17);

  if (!v18 || (objc_msgSend_tocEntryStyle(v5, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v21, (isKindOfClass & 1) == 0))
  {
    v39 = objc_msgSend_tocEntryStyle(v5, v19, v20);
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v44 = objc_msgSend_tocEntryStyle(v5, v42, v43);
    v45 = objc_opt_class();
    v63 = NSStringFromClass(v45);
    TSUSetCrashReporterInfo();

    v46 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSWPTOCSettings replaceReferencedStylesUsingBlock:]_block_invoke", "[TSWPTOCSettings replaceReferencedStylesUsingBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm", 366, v41, v44, v63, v18);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
    v53 = objc_msgSend_tocEntryStyle(v5, v51, v52);
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v58 = objc_msgSend_tocEntryStyle(v5, v56, v57);
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v61, v48, v50, 366, 1, "Bad style mapping [%{public}@ %p] -> [%{public}@ %p]", v55, v58, v60, v18);

    TSUCrashBreakpoint();
LABEL_9:
    abort();
  }

  objc_opt_class();
  v23 = TSUDynamicCast();
  objc_msgSend_setTocEntryStyle_(v5, v24, v23);

  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v25, v5, v13);
}

void sub_276E26398(uint64_t a1, const char *a2, void *a3)
{
  v10 = objc_msgSend_tocEntryStyle(a3, a2, a3);
  objc_msgSend_stylesheet(v10, v4, v5);

  v9 = objc_msgSend_parent(v10, v6, v7);
  if (v9)
  {
    objc_msgSend_p_upgradeStyle_withStylesheet_(*(a1 + 32), v8, v9, *(a1 + 40));
  }

  objc_msgSend_p_upgradeStyle_withStylesheet_(*(a1 + 32), v8, v10, *(a1 + 40));
}

void sub_276E26924(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___TSWPTOCEntryStyle;
  v1 = objc_msgSendSuper2(&v5, sel_properties);
  v3 = objc_msgSend_propertySetByAddingProperties_(v1, v2, 136, 137, 0);
  v4 = qword_280A584F0;
  qword_280A584F0 = v3;
}

void sub_276E26A48(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___TSWPTOCEntryStyle;
  v1 = objc_msgSendSuper2(&v5, sel_propertiesAllowingNSNull);
  v3 = objc_msgSend_propertySetByAddingProperties_(v1, v2, 137, 0);
  v4 = qword_280A58500;
  qword_280A58500 = v3;
}

void sub_276E26C28(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276E26F50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  v5 = objc_opt_class();
  LODWORD(v4) = objc_msgSend_validateObjectValue_withClass_forProperty_(v4, v6, &v9, v5, 137);
  v7 = v9;

  if (v4)
  {
    objc_msgSend_setObject_forProperty_(*(a1 + 32), v8, v7, 137);
  }
}

void sub_276E2732C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isVariation(*(a1 + 32), a2, a3))
  {
    v6 = objc_msgSend_parent(*(a1 + 32), v4, v5);

    if (!v6)
    {
      v22 = objc_msgSend_stylesheet(*(a1 + 32), v7, v8);
      objc_msgSend_willModifyForUpgrade(v22, v9, v10);
      v11 = [TSWPTOCEntryStyle alloc];
      v14 = objc_msgSend_context(*(a1 + 32), v12, v13);
      v17 = objc_msgSend_defaultParagraphStyle(v22, v15, v16);
      v19 = objc_msgSend_initWithContext_name_basedOnParagraphStyle_(v11, v18, v14, 0, v17);

      objc_msgSend_addStyle_(v22, v20, v19);
      objc_msgSend_setParent_ofStyle_(v22, v21, v19, *(a1 + 32));
    }
  }
}

id sub_276E2756C(void *a1)
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

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParagraphStyleArchive>(v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSWPTOCEntryStyle;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

uint64_t sub_276E27C74(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v7 = objc_msgSend_tocSettings(*(a1 + 32), v4, v5);
    v10 = objc_msgSend_indexedStyle(v6, v8, v9);
    v12 = objc_msgSend_showInTOCForParagraphStyle_(v7, v11, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_276E294EC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_276E2952C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  v7 = objc_msgSend_indexedStyle(v3, v5, v6);
  objc_msgSend_addObject_(v4, v8, v7);

  v9 = *(a1 + 32);
  v12 = objc_msgSend_indexedListStyle(v14, v10, v11);
  objc_msgSend_addObject_(v9, v13, v12);
}

void sub_276E29A10(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!v4[34])
  {
    v32 = objc_msgSend_documentRoot(v4, a2, a3);
    v7 = objc_msgSend_theme(v32, v5, v6);
    v9 = objc_msgSend_presetsOfKind_(v7, v8, *MEMORY[0x277D80B98]);
    v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
    v14 = objc_msgSend_copy(v11, v12, v13);
    v15 = *(a1 + 32);
    v16 = *(v15 + 272);
    *(v15 + 272) = v14;

    v4 = *(a1 + 32);
    if (!v4[34])
    {
      v17 = [TSWPTOCSettings alloc];
      v33 = objc_msgSend_context(*(a1 + 32), v18, v19);
      v21 = objc_msgSend_initWithContext_(v17, v20, v33);
      v22 = *(a1 + 32);
      v23 = *(v22 + 272);
      *(v22 + 272) = v21;

      objc_msgSend_setScope_(*(*(a1 + 32) + 272), v24, 1);
      v4 = *(a1 + 32);
    }
  }

  v34 = objc_msgSend_tocSettings(v4, a2, a3);
  v27 = objc_msgSend_textStorage(*(a1 + 32), v25, v26);
  v30 = objc_msgSend_stylesheet(v27, v28, v29);
  objc_msgSend_upgradeWithStylesheet_(v34, v31, v30);
}

id sub_276E29F90(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 72);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeInfoArchive>(v5);
    *(v3 + 72) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSWPTOCInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_276E2CDDC(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v9 = *(a1 + 64);
  if (v9 <= a3)
  {
    if (*(a1 + 72) + v9 <= a3)
    {
      *a4 = 1;
    }

    else
    {
      v31 = v7;
      v10 = objc_msgSend_textRangeForParagraphAtIndex_(*(a1 + 32), v8, a3);
      v12 = objc_msgSend_selectionWithRange_(TSWPSelection, v11, v10, v11);
      v14 = objc_msgSend_newPathForSelection_(*(a1 + 40), v13, v12);
      if (v14)
      {
        v15 = v14;
        v16 = objc_opt_class();
        v19 = objc_msgSend_paragraphIndex(v31, v17, v18);
        v21 = objc_msgSend_TOCReferenceNameWithParagraphIndex_(v16, v20, v19);
        v23 = objc_msgSend_stringByAppendingString_(@"#", v22, v21);
        v25 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v24, v23);
        v27 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v26, v15);
        v29 = objc_msgSend_hyperlinkRegionWithURL_bezierPath_(MEMORY[0x277D80298], v28, v25, v27);
        objc_msgSend_addObject_(*(a1 + 56), v30, v29);
        CGPathRelease(v15);
      }

      v7 = v31;
    }
  }
}

void sub_276E2E788()
{
  v0 = objc_alloc_init(TSWPImageBulletProvider);
  v1 = qword_280A58510;
  qword_280A58510 = v0;
}

uint64_t sub_276E30470@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_276E30510(uint64_t a1, __int128 *a2)
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
      sub_276E316F4(a1, v11);
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

__n128 *sub_276E30F28(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_276D34ED8();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      sub_276E316F4(a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    sub_276E318F4(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    v6[1].n128_u64[0] = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = (__src + 24);
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = &v6[1].n128_i8[8];
      v10 = *(v6 - 24);
      v6[1].n128_u64[0] = v6[-1].n128_u64[1];
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_276E31104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E316F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_276D34F38();
}

void *sub_276E3174C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_276E318A8(v6, v11);
    }

    sub_276D34ED8();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_276E318A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_276E316F4(a1, a2);
  }

  sub_276D34ED8();
}

__n128 sub_276E318F4(__n128 **a1, __n128 *a2)
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
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      sub_276E316F4(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = (v5 + 24 * v7);
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] = (a1[2] + 24);
  return result;
}

TSWPAttributeEnumerator *TSWPAttributeEnumerator::TSWPAttributeEnumerator(TSWPAttributeEnumerator *a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5, BOOL a6)
{
  v11 = a2;
  a1->var0 = &unk_2885FF848;
  a1->var1 = v11;
  a1->var2 = objc_msgSend_length(v11, v12, v13);
  a1->var4 = objc_msgSend_attributeArrayForKind_(v11, v14, a5);
  a1->var5 = 0;
  a1->var6 = 0x7FFFFFFFFFFFFFFFLL;
  a1->var7 = a6;
  TSWPAttributeRecord::TSWPAttributeRecord(&a1->var8);
  v17.location = a3;
  v17.length = a4;
  TSWPAttributeEnumerator::resetRange(a1, v17);
  if (a1->var7)
  {
    var4 = a1->var4;
    if (var4 && *(var4 + 6))
    {
      if (a1->var6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        a1->var7 = 0;
      }
    }

    else
    {
      a1->var5 = 1;
    }
  }

  return a1;
}

TSWPAttributeArray *TSWPAttributeEnumerator::resetRange(TSWPAttributeEnumerator *this, _NSRange a2)
{
  this->var3 = a2.location + a2.length;
  result = this->var4;
  v4 = result && (!*(result + 6) || (this->var6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a2.location), (result = this->var4) != 0)) && *(result + 6) != 0;
  this->var5 = v4;
  return result;
}

TSWPAttributeRecord *TSWPAttributeEnumerator::nextAttributeIndex(TSWPAttributeEnumerator *this, _NSRange *a2, uint64_t a3)
{
  if (objc_msgSend_length(this->var1, a2, a3) != this->var2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSWPAttributeRecord *TSWPAttributeEnumerator::nextAttributeIndex(NSRange *)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 55, 0, "Storage was modified while enumerating attributes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (this->var5)
  {
    var4 = this->var4;
    if (!this->var7)
    {
      var6 = this->var6;
      p_var8 = &var4->var1[var6];
      v19 = TSWPAttributeArray::charIndexForAttributeIndex(var4, var6);
      v20 = (this->var6 + 1);
      this->var6 = v20;
      v21 = this->var4;
      if (v20 >= *(v21 + 6))
      {
        this->var5 = 0;
        v25 = objc_msgSend_length(this->var1, v20, v18);
        if (!a2)
        {
          return p_var8;
        }
      }

      else
      {
        v22 = TSWPAttributeArray::charIndexForAttributeIndex(v21, v20);
        v25 = v22;
        var3 = this->var3;
        if (v22 < var3 || v22 == var3 && v22 == objc_msgSend_length(this->var1, v23, v24))
        {
          this->var5 = 1;
          if (!a2)
          {
            return p_var8;
          }
        }

        else
        {
          this->var5 = 0;
          if (!a2)
          {
            return p_var8;
          }
        }
      }

      a2->location = v19;
      a2->length = v25 - v19;
      return p_var8;
    }

    if (var4 && *(var4 + 6))
    {
      v15 = TSWPAttributeArray::charIndexForAttributeIndex(var4, 0);
      p_var8 = &this->var8;
      if (a2)
      {
        a2->location = 0;
        a2->length = v15;
      }

      this->var6 = 0;
      this->var7 = 0;
      this->var5 = this->var3 >= v15;
    }

    else
    {
      p_var8 = &this->var8;
      if (a2)
      {
        v27 = objc_msgSend_length(this->var1, v5, v6);
        a2->location = 0;
        a2->length = v27;
      }

      this->var5 = 0;
    }
  }

  else
  {
    p_var8 = 0;
    if (a2)
    {
      a2->location = objc_msgSend_length(this->var1, v5, v6);
      a2->length = 0;
    }
  }

  return p_var8;
}

uint64_t sub_276E329C0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  *a1 = &unk_2885FF868;
  v10 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = objc_msgSend_length(v10, v11, v12);
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v16 = vnegq_f64(v13);
  *(a1 + 24) = v16;
  *(a1 + 40) = objc_msgSend_attributeArrayForKind_(v10, v14, a5);
  *(a1 + 48) = 0;
  *(a1 + 56) = v16;
  *(a1 + 72) = 0;
  sub_276E32AA8(a1, a3, a4);

  return a1;
}

uint64_t sub_276E32AA8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a2 + a3;
  v4 = *(a1 + 40);
  if (v4 && *(v4 + 24))
  {
    *(a1 + 64) = 0;
    result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a2);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    result = 0x7FFFFFFFFFFFFFFFLL;
    *(a1 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a1 + 56) = result;
  *(a1 + 48) = v6;
  return result;
}

void sub_276E32B3C(uint64_t a1)
{

  JUMPOUT(0x277CA3D00);
}

float64x2_t sub_276E32B90(uint64_t a1)
{
  v2 = (*(a1 + 56) + 1);
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  v3 = *(a1 + 40);
  if (v2 >= *(v3 + 24) || TSWPAttributeArray::charIndexForAttributeIndex(v3, v2) >= *(a1 + 32))
  {
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    result = vnegq_f64(v17);
    *(a1 + 56) = result;
    *(a1 + 48) = 0;
    return result;
  }

  v4 = TSWPAttributeArray::objectForAttributeIndex(*(a1 + 40), *(a1 + 56));
  if (!v4)
  {
    v5 = (*(a1 + 56) + 1);
    *(a1 + 56) = v5;
    v6 = *(a1 + 40);
    if (v5 >= *(v6 + 24) || TSWPAttributeArray::charIndexForAttributeIndex(v6, v5) >= *(a1 + 32))
    {
      goto LABEL_8;
    }

    v4 = TSWPAttributeArray::objectForAttributeIndex(*(a1 + 40), *(a1 + 56));
    if (!v4)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSWPOverlappingFieldEnumerator::advanceByAttributeIndex()");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 248, 0, "invalid nil value for '%{public}s'", "wrapper");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
LABEL_8:
      v4 = 0;
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      *(a1 + 56) = vnegq_f64(v15);
      *(a1 + 48) = 0;
    }
  }

  return result;
}

void sub_276E32D28(void *a1)
{
  v2 = a1[7];
  v3 = a1[5];
  v4 = *(v3 + 24);
  if (v2 >= v4)
  {
    v5 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "void TSWPOverlappingFieldEnumerator::advanceByFieldIndexOrAttributeIndex()");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v8, v25, v7, 261, 0, "Unexpected attribute index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v2 = a1[7];
    v3 = a1[5];
    v4 = *(v3 + 24);
  }

  if (v2 < v4)
  {
    v26 = TSWPAttributeArray::objectForAttributeIndex(v3, v2);
    if (!v26)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSWPOverlappingFieldEnumerator::advanceByFieldIndexOrAttributeIndex()");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 264, 0, "invalid nil value for '%{public}s'", "wrapper");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

    v20 = a1[8];
    v21 = objc_msgSend_fields(v26, v11, v12);
    v24 = objc_msgSend_count(v21, v22, v23);

    if (v20 + 1 >= v24)
    {
      sub_276E32B90(a1);
    }

    else
    {
      ++a1[8];
    }
  }
}

uint64_t sub_276E32F28(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 56);
    if (v2 >= *(*(a1 + 40) + 24))
    {
      v3 = MEMORY[0x277D81150];
      v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "BOOL TSWPOverlappingFieldEnumerator::doesCurrentFieldAppearPrior() const");
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 277, 0, "Unexpected attribute index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
      v2 = *(a1 + 56);
    }

    if (v2)
    {
      v10 = *(a1 + 40);
      if (v2 < *(v10 + 24))
      {
        v11 = TSWPAttributeArray::objectForAttributeIndex(v10, v2);
        v14 = v11;
        if (v11)
        {
          v15 = *(a1 + 64);
          v16 = objc_msgSend_fields(v11, v12, v13);
          v19 = objc_msgSend_count(v16, v17, v18);

          if (v15 >= v19)
          {
            v22 = MEMORY[0x277D81150];
            v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "BOOL TSWPOverlappingFieldEnumerator::doesCurrentFieldAppearPrior() const");
            v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 283, 0, "Did someone modify the attribute array while enumerating?");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
          }

          v29 = *(a1 + 64);
          v30 = objc_msgSend_fields(v14, v20, v21);
          v33 = objc_msgSend_count(v30, v31, v32);

          if (v29 < v33)
          {
            v36 = objc_msgSend_fields(v14, v34, v35);
            v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, *(a1 + 64));

            v40 = objc_msgSend_containsObject_(*(a1 + 72), v39, v38);
LABEL_15:

            return v40;
          }
        }

        else
        {
          v42 = MEMORY[0x277D81150];
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "BOOL TSWPOverlappingFieldEnumerator::doesCurrentFieldAppearPrior() const");
          v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 281, 0, "invalid nil value for '%{public}s'", "wrapper");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
        }

        v40 = 0;
        goto LABEL_15;
      }
    }
  }

  return 0;
}

id sub_276E331F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (objc_msgSend_length(*(a1 + 8), a2, a3) != *(a1 + 16))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "id<TSWPOverlappingField> TSWPOverlappingFieldEnumerator::nextField(NSRange *, NSRange *)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 300, 0, "Storage was modified while enumerating attributes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = MEMORY[0x277D81490];
  if (a3)
  {
    *a3 = *MEMORY[0x277D81490];
  }

  if (a2)
  {
    *a2 = *v14;
    v15 = (a1 + 48);
    if ((*(a1 + 48) & 1) == 0)
    {
      v16 = 0;
      *a2 = *(a1 + 32);
      *(a2 + 8) = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v15 = (a1 + 48);
    if ((*(a1 + 48) & 1) == 0)
    {
      v16 = 0;
      goto LABEL_40;
    }
  }

  v17 = TSWPAttributeArray::objectForAttributeIndex(*(a1 + 40), *(a1 + 56));
  if (v17)
  {
    goto LABEL_10;
  }

  sub_276E32B90(a1);
  v51 = *v15;
  if (v51 == 1)
  {
    v17 = TSWPAttributeArray::objectForAttributeIndex(*(a1 + 40), *(a1 + 56));
    if (!v17)
    {
LABEL_30:
      v51 = *v15;
      goto LABEL_35;
    }

LABEL_10:
    v18 = *(a1 + 56);
    v19 = *(a1 + 40);
    if (v18 < *(v19 + 24) && TSWPAttributeArray::charIndexForAttributeIndex(v19, v18) < *(a1 + 32))
    {
      if (*v15 == 1)
      {
        v22 = *(a1 + 64);
        v23 = objc_msgSend_fields(v17, v20, v21);
        v26 = objc_msgSend_count(v23, v24, v25);

        if (v22 >= v26)
        {
          v29 = MEMORY[0x277D81150];
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "id<TSWPOverlappingField> TSWPOverlappingFieldEnumerator::nextField(NSRange *, NSRange *)");
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 336, 0, "Did someone modify the attribute array while enumerating?");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
        }

        v36 = *(a1 + 64);
        v37 = objc_msgSend_fields(v17, v27, v28);
        v40 = objc_msgSend_count(v37, v38, v39);

        if (v36 >= v40)
        {
          v16 = 0;
          v60.f64[0] = NAN;
          v60.f64[1] = NAN;
          *(a1 + 56) = vnegq_f64(v60);
          *(a1 + 48) = 0;
        }

        else
        {
          v43 = objc_msgSend_fields(v17, v41, v42);
          v16 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, *(a1 + 64));

          if (a2 | a3)
          {
            v46 = (*(**(a1 + 40) + 152))(*(a1 + 40), v16, *(a1 + 56));
            if (a3)
            {
              *a3 = v46;
              *(a3 + 8) = v45;
            }

            if (a2)
            {
              *a2 = objc_msgSend_charRangeForAttributeRange_attributeKind_(*(a1 + 8), v45, v46, v45, *(*(a1 + 40) + 28));
              *(a2 + 8) = v45;
            }
          }

          if (!*(a1 + 72))
          {
            v47 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v48 = *(a1 + 72);
            *(a1 + 72) = v47;
          }

          if (v16)
          {
            objc_msgSend_addObject_(*(a1 + 72), v45, v16);
          }

          do
          {
            if (*v15 != 1)
            {
              break;
            }

            sub_276E32D28(a1);
            if (*v15 != 1)
            {
              break;
            }
          }

          while ((sub_276E32F28(a1) & 1) != 0);
        }

        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    *(a1 + 56) = vnegq_f64(v49);
    *(a1 + 48) = 0;

    goto LABEL_30;
  }

LABEL_35:
  if (!v51)
  {
    v17 = 0;
LABEL_38:
    v16 = 0;
    goto LABEL_39;
  }

  v52 = MEMORY[0x277D81150];
  v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "id<TSWPOverlappingField> TSWPOverlappingFieldEnumerator::nextField(NSRange *, NSRange *)");
  v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeEnumerator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 334, 0, "Expected no more attributes or to have a wrapper.");

  v17 = 0;
  v16 = 0;
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
LABEL_39:

LABEL_40:

  return v16;
}

void sub_276E33B44(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276E35914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E35930(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  v14 = TSUDynamicCast();

  v12 = objc_msgSend_change(*(a1 + 32), v10, v11);

  if (v14 == v12)
  {
    v13 = *(*(a1 + 40) + 8);
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    *a5 = 1;
  }
}

void sub_276E35F18(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tswp_invisibleCharacterSet(MEMORY[0x277CCA900], a2, a3);
  v25 = objc_msgSend_mutableCopy(v4, v5, v6);

  v9 = objc_msgSend_tswp_spaceCharacterSet(MEMORY[0x277CCA900], v7, v8);
  v12 = objc_msgSend_invertedSet(v9, v10, v11);
  objc_msgSend_formIntersectionWithCharacterSet_(v25, v13, v12);

  v16 = objc_msgSend_copy(v25, v14, v15);
  v17 = qword_280A58518;
  qword_280A58518 = v16;

  v20 = objc_msgSend_invertedSet(*(a1 + 32), v18, v19);
  v23 = objc_msgSend_copy(v20, v21, v22);
  v24 = qword_280A58520;
  qword_280A58520 = v23;
}

void sub_276E36674()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276E36778()
{
  v0 = objc_alloc_init(TSWPFontList);
  v1 = qword_280A58530;
  qword_280A58530 = v0;
}

void sub_276E367F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = sub_276E32640(a1, a2, a3);
  v9 = objc_msgSend_pathForResource_ofType_(v3, v4, @"FontExclusionList", @"plist");

  if (v9)
  {
    v5 = objc_alloc(MEMORY[0x277CBEA60]);
    v7 = objc_msgSend_initWithContentsOfFile_(v5, v6, v9);
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v8 = qword_280A58540;
  qword_280A58540 = v7;
}

id sub_276E36A64(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_componentsSeparatedByString_(a2, a2, @"|");
  if (objc_msgSend_count(v2, v3, v4))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v2, v5, 0);
    if (objc_msgSend_count(v2, v8, v9) < 2 || (objc_msgSend_objectAtIndexedSubscript_(v2, v10, 1), v11 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v11, v12, &stru_28860A0F0), v11, (isEqualToString & 1) != 0))
    {
      v15 = 0;
    }

    else
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(v2, v14, 1);
    }

    v17 = [TSWPOpaqueFontID alloc];
    v16 = objc_msgSend_initWithPostScriptName_familyName_(v17, v18, v7, v15);
  }

  else
  {
    v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  return v16;
}

BOOL sub_276E36B68(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB68];
  v3 = a2;
  v6 = objc_msgSend_null(v2, v4, v5);

  return v6 != v3;
}

uint64_t sub_276E36CB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276E36CC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 16), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_276E37BB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

void sub_276E380B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_allKeys(*(*(a1 + 32) + 16), a2, a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276E3817C;
  v8[3] = &unk_27A6F5A00;
  v9 = *(a1 + 40);
  v6 = objc_msgSend_tsu_arrayByTransformingWithBlock_(v4, v5, v8);
  objc_msgSend_removeObjectsForKeys_(*(*(a1 + 32) + 16), v7, v6);
}

id sub_276E3817C(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_hasPrefix_(v3, v6, *(*(&v11 + 1) + 8 * i), v11))
        {
          v7 = v3;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

uint64_t sub_276E3848C(uint64_t a1, void *a2)
{
  v22 = a2;
  v4 = objc_msgSend_overridesProperty_(v22, v3, 46);
  v6 = v22;
  if ((v4 & 1) != 0 || (v7 = objc_msgSend_overridesProperty_(v22, v5, 16), v6 = v22, v7))
  {
    v8 = objc_msgSend_fontFromStyle_(*(a1 + 32), v5, v6);
    v11 = v8;
    if (v8)
    {
      v12 = *(a1 + 40);
      v13 = objc_msgSend_displayName(v8, v9, v10);
      LOBYTE(v12) = objc_msgSend_containsObject_(v12, v14, v13);

      if ((v12 & 1) == 0)
      {
        objc_msgSend_addObject_(*(a1 + 48), v15, v11);
        v16 = *(a1 + 40);
        v19 = objc_msgSend_displayName(v11, v17, v18);
        objc_msgSend_addObject_(v16, v20, v19);
      }
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t sub_276E38570(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_displayName(a2, v5, v6);
  v10 = objc_msgSend_displayName(v4, v8, v9);

  v12 = objc_msgSend_localizedCompare_(v7, v11, v10);
  return v12;
}

uint64_t sub_276E38F78(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();

  isRequestedFont = objc_msgSend_isRequestedFont(v3, v4, v5);
  return isRequestedFont;
}

id sub_276E3904C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v6 = objc_msgSend_desiredPostScriptName(v3, v4, v5);
  v9 = objc_msgSend_familyName(v3, v7, v8);

  v11 = objc_msgSend_stringWithFormat_(v2, v10, @"%@|%@", v6, v9);

  return v11;
}

void sub_276E39204()
{
  v0 = objc_alloc_init(TSWPItemNumbering);
  v1 = qword_280A58550;
  qword_280A58550 = v0;
}

void sub_276E3A768()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = qword_280A58560;
  qword_280A58560 = v0;
}

void sub_276E3AE6C(TSWPAttributeArray *this)
{
  this->var0 = &unk_2885FFA28;
  if (*(this + 6))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = TSWPAttributeRecord::object(&this->var1[v2], *(this + 28));
      v7 = objc_msgSend_parentStorage(v4, v5, v6);
      var2 = this->var2;

      if (v7 == var2)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_clearParentStorageForDealloc(v4, v9, v10);
        }

        else
        {
          objc_msgSend_setParentStorage_(v4, v9, 0);
        }
      }

      (*(this->var0 + 42))(this, &this->var1[v2]);

      ++v3;
      ++v2;
    }

    while (*(this + 6) > v3);
  }

  TSWPAttributeArray::~TSWPAttributeArray(this);
}

void sub_276E3AF9C(TSWPAttributeArray *a1)
{
  sub_276E3AE6C(a1);

  JUMPOUT(0x277CA3D00);
}

void sub_276E3AFD4(uint64_t a1, uint64_t a2)
{
  v4 = TSWPAttributeRecord::object(a2, *(a1 + 28));

  if (v4)
  {
    v5 = TSWPAttributeRecord::object(a2, *(a1 + 28));
    CFRetain(v5);
  }
}

void sub_276E3B078(uint64_t a1, uint64_t a2)
{
  v4 = TSWPAttributeRecord::object(a2, *(a1 + 28));

  if (v4)
  {
    v5 = TSWPAttributeRecord::object(a2, *(a1 + 28));
    CFRelease(v5);
  }
}

uint64_t sub_276E3B128(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if (*(a5 + 456))
    {
      v6 = *(a5 + 464);
      if (v6)
      {
        if (*(a5 + 472) != 1 || *(v6 + 8) != *(result + 28))
        {
          if (*(a5 + 16))
          {
            v7 = MEMORY[0x277D81150];
            v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSWPAttachmentAttributeArray::buildInverseActionsForRemove(NSRange, __strong id, TSWPStorageActionState *, BOOL)");
            v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttachmentAttributeArray.mm");
            v11 = *(a5 + 16);
            v13 = *v11;
            v12 = v11[1];
            if (*(a5 + 472))
            {
              v14 = @"YES";
            }

            else
            {
              v14 = @"NO";
            }

            v15 = v14;
            v17 = TSWPAttributeArray::attributeArrayName(*(*(a5 + 464) + 8), v16);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v18, v8, v10, 70, 0, "Unexpected usage, expected storageTransaction to be NULL in buildInverseActionsForRemove, transaction count (%lu), isFlipping (%{public}@), table (%@)", (v12 - v13) >> 5, v15, v17);

            v21 = MEMORY[0x277D81150];

            return objc_msgSend_logBacktraceThrottled(v21, v19, v20);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_276E3B2B8(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if (*(a5 + 456))
    {
      v6 = *(a5 + 464);
      if (v6)
      {
        if (*(a5 + 472) != 1 || *(v6 + 8) != *(result + 28))
        {
          v7 = MEMORY[0x277D81150];
          v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSWPAttachmentAttributeArray::buildInverseActionsForAdd(NSRange, __strong id, TSWPStorageActionState *, UInt32)");
          v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttachmentAttributeArray.mm");
          if (*(a5 + 472))
          {
            v11 = @"YES";
          }

          else
          {
            v11 = @"NO";
          }

          v12 = v11;
          v14 = TSWPAttributeArray::attributeArrayName(*(*(a5 + 464) + 8), v13);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v8, v10, 85, 0, "Unexpected usage, expected isFlipping (%{public}@) for table (%@) in buildInverseActionsForAdd", v12, v14);

          v18 = MEMORY[0x277D81150];

          return objc_msgSend_logBacktraceThrottled(v18, v16, v17);
        }
      }
    }
  }

  return result;
}

void sub_276E3B420(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4)
{
  if (a2 && a4 >= 2)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSWPAttachmentAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttachmentAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 90, 0, "Bad char range.");

    v11 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v11, v9, v10);
  }
}

uint64_t sub_276E3B4F4(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (a6)
  {
    v11 = result;
    if (a7 && (v12 = *(a7 + 16)) != 0 && (*(v12 + 216) & 1) == 0)
    {
      v13 = *(a7 + 448);
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v16 = *a6;
    v15 = a6[1];
    if (*a6 != v15)
    {
      do
      {
        v17 = *(v16 + 8);
        if (v17 == 14)
        {
          if (v11[28] != 5)
          {
            goto LABEL_12;
          }
        }

        else if (v17 != 65532 || v11[28] != 4)
        {
          goto LABEL_12;
        }

        v18 = a5 + 1;
        result = (*(*v11 + 56))(v11, 0, &a2[*v16]);
        v15 = a6[1];
        a5 = v18;
LABEL_12:
        v16 += 16;
      }

      while (v16 != v15);
    }

    if (v14)
    {
      v19 = *(a7 + 448);
    }

    else
    {
      v19 = 0;
    }

    if (v13 != v19)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSWPAttachmentAttributeArray::insertAttributesForMarkers(NSRange, NSUInteger, TSWPAttributeIndex, TSWPMarkers *, TSWPStorageActionState *, TSWPAttributeArrayDataContext &)", a5);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttachmentAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 111, 0, "Unexpected storage modification in insertAttributesForMarkers.");

      v27 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v27, v25, v26);
    }
  }

  return result;
}

void sub_276E3B6D0(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v7 = a3;
  if (v13)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if ((objc_msgSend_isDOLCSuppressed(v8, v5, v6) & 1) == 0)
      {
        v12 = objc_msgSend_documentRoot(*(a1 + 16), v9, v10);
        if (v12)
        {
          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v13, v11, v12, v7);
        }
      }
    }
  }
}

void sub_276E3B764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276E3B790(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v7 = a3;
  if (v15)
  {
    if ((objc_msgSend_preserveParentStorage(v7, v5, v6) & 1) == 0)
    {
      objc_msgSend_setParentStorage_(v15, v8, *(a1 + 16));
    }

    v10 = *(a1 + 16);
    if (v10 && (objc_msgSend_isDOLCSuppressed(v10, v8, v9) & 1) == 0)
    {
      v14 = objc_msgSend_documentRoot(*(a1 + 16), v11, v12);
      if (v14)
      {
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v15, v13, v14, v7);
      }
    }
  }
}

void sub_276E3B83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

BOOL sub_276E3B868(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3 && (objc_msgSend_parentStorage(v3, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 16), v7, v7 == v8) && (objc_msgSend_setParentStorage_(v6, v9, 0), (v14 = *(a1 + 16)) != 0) && (objc_msgSend_isDOLCSuppressed(v14, v12, v13) & 1) == 0)
  {
    v18 = objc_msgSend_documentRoot(*(a1 + 16), v15, v16);
    v10 = v18 != 0;
    if (v18)
    {
      if (*(a1 + 16) && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_performSelector_withObject_withObject_(v6, v17, sel_willBeRemovedFromDocumentRoot_storage_, v18, *(a1 + 16));
      }

      else
      {
        objc_msgSend_willBeRemovedFromDocumentRoot_(v6, v17, v18);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_276E3B974(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v13 = v3;
    v8 = objc_msgSend_parentStorage(v3, v3, v4);
    if (v8 || (v9 = *(a1 + 16)) == 0)
    {
LABEL_3:

      v5 = v13;
      goto LABEL_4;
    }

    isDOLCSuppressed = objc_msgSend_isDOLCSuppressed(v9, v6, v7);
    v5 = v13;
    if ((isDOLCSuppressed & 1) == 0)
    {
      v8 = objc_msgSend_documentRoot(*(a1 + 16), v13, v11);
      if (v8)
      {
        objc_msgSend_wasRemovedFromDocumentRoot_(v13, v12, v8);
      }

      goto LABEL_3;
    }
  }

LABEL_4:
}

void sub_276E3BA38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = *(a1 + 16);
  if (!v8 || (objc_msgSend_isDOLCSuppressed(v8, a2, a3) & 1) == 0)
  {
    if (v5 == 1)
    {
      v12 = TSWPAttributeRecord::object(*(a1 + 8) + 16 * a2, *(a1 + 28));
      (*(*a1 + 400))(a1);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      sub_276E3BC18(&v13, v5);
      if (&a2[v5] > a2)
      {
        v9 = 16 * a2;
        do
        {
          v16 = TSWPAttributeRecord::object(*(a1 + 8) + v9, *(a1 + 28));
          if (v16)
          {
            sub_276E3BCA8(&v13, &v16);
          }

          v9 += 16;
          --v5;
        }

        while (v5);
      }

      v10 = v13;
      v11 = v14;
      while (v10 != v11)
      {
        (*(*a1 + 400))(a1, *v10++, 1, a4);
      }

      v16 = &v13;
      sub_276E3C994(&v16);
    }
  }
}

void sub_276E3BBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, char a11, uint64_t a12, uint64_t a13, char *a14)
{
  a14 = &a11;
  sub_276E3C994(&a14);
  _Unwind_Resume(a1);
}

void *sub_276E3BC18(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_276E3CAC4(result, a2);
    }

    sub_276D34ED8();
  }

  return result;
}

void sub_276E3BC94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276E3CB0C(va);
  _Unwind_Resume(a1);
}

id sub_276E3BCA8(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_276D34ED8();
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
      sub_276E3CAC4(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_276E3CA14(a1, v13);
    v7 = a1[1];
    result = sub_276E3CB0C(v13);
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

void sub_276E3BD88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276E3CB0C(va);
  _Unwind_Resume(a1);
}

void sub_276E3BD9C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = TSWPAttributeRecord::object(*(a1 + 8) + v6, *(a1 + 28));
      v10 = v8;
      if (v8)
      {
        objc_msgSend_adoptStylesheet_withMapper_(v8, v9, v11, v5);
      }

      ++v7;
      v6 += 16;
    }

    while (v7 < *(a1 + 24));
  }
}

void sub_276E3BE78(uint64_t a1, NSUInteger a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a4;
  if (!a7)
  {
    goto LABEL_17;
  }

  if (*(a7 + 472) != 1)
  {
    goto LABEL_17;
  }

  v12 = *(a7 + 464);
  if (!v12 || *(v12 + 8) != *(a1 + 28))
  {
    goto LABEL_17;
  }

  v13 = *(a7 + 16);
  if (!v13 || (*(v13 + 216) & 1) != 0)
  {
    v15 = 0;
    v14 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_10:
    v27.location = a2;
    v27.length = a3;
    v16 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(a1, v27);
    if (v11)
    {
      (*(*a1 + 64))(a1, v16, v11, a7);
    }

    goto LABEL_12;
  }

  v14 = *(a7 + 448);
  v15 = 1;
  if (a3)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v15)
  {
    v17 = *(a7 + 448);
  }

  else
  {
    v17 = 0;
  }

  if (v14 != v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "virtual void TSWPAttachmentAttributeArray::willReplaceCharactersInRangeWithString(NSRange, NSString *__strong, NSUInteger, TSWPMarkers *, TSWPStorageActionState *, TSWPAttributeArrayDataContext &)");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttachmentAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 251, 0, "Unexpected storage modification in willReplaceCharactersInRangeWithString.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

LABEL_17:
}

void sub_276E3C030(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = TSWPAttributeRecord::object(*(a1 + 8) + v6, *(a1 + 28));
      v10 = v8;
      if (v8)
      {
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v8, v9, v11, v5);
      }

      ++v7;
      v6 += 16;
    }

    while (v7 < *(a1 + 24));
  }
}

void sub_276E3C10C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = TSWPAttributeRecord::object(*(a1 + 8) + v6, *(a1 + 28));
      v10 = v8;
      if (v8)
      {
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v8, v9, v11, v5);
      }

      ++v7;
      v6 += 16;
    }

    while (v7 < *(a1 + 24));
  }
}

void sub_276E3C1E8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(a1 + 24))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v6 = TSWPAttributeRecord::object(*(a1 + 8) + v3, *(a1 + 28));
      if (v6)
      {
        if (*(a1 + 16) && (objc_opt_respondsToSelector() & 1) != 0)
        {
          objc_msgSend_performSelector_withObject_withObject_(v6, v5, sel_willBeRemovedFromDocumentRoot_storage_, v7, *(a1 + 16));
        }

        else
        {
          objc_msgSend_willBeRemovedFromDocumentRoot_(v6, v5, v7);
        }
      }

      ++v4;
      v3 += 16;
    }

    while (v4 < *(a1 + 24));
  }
}

void sub_276E3C2E4(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 24))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = TSWPAttributeRecord::object(*(a1 + 8) + v3, *(a1 + 28));
      v7 = v5;
      if (v5)
      {
        objc_msgSend_wasRemovedFromDocumentRoot_(v5, v6, v8);
      }

      ++v4;
      v3 += 16;
    }

    while (v4 < *(a1 + 24));
  }
}

void sub_276E3C3D4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, void *a5)
{
  v51 = a4;
  v9 = a5;
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, *a3);
    v12 = v11 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v11;
    v13 = v10 - v12;
    if (v10 > v12)
    {
      v14 = 16 * v12;
      v50 = v9;
      while (1)
      {
        v15 = *(a1 + 8);
        v16 = *(v15 + v14);
        if (v16 >= a3[1] + *a3)
        {
          goto LABEL_31;
        }

        if (v16 >= *a3)
        {
          break;
        }

LABEL_30:
        v14 += 16;
        if (!--v13)
        {
          goto LABEL_31;
        }
      }

      v19 = TSWPAttributeRecord::object(v15 + v14, *(a1 + 28));
      if (!v19)
      {
LABEL_29:

        goto LABEL_30;
      }

      if (objc_msgSend_wpKind(*(a1 + 16), v17, v18))
      {
        objc_opt_class();
        v21 = TSUDynamicCast();
        v24 = v21;
        if (v21 && objc_msgSend_isAnchored(v21, v22, v23))
        {
          v26 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "virtual void TSWPAttachmentAttributeArray::saveToArchive(TSWP::ObjectAttributeTable &, const NSRange &, TSPArchiver *__strong, __strong id<TSWPStyleProvider>) const");
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttachmentAttributeArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v29, v49, v28, 320, 0, "Disallowed anchored attachment in non-body storage");

          v9 = v50;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        }
      }

      v32 = *(a2 + 32);
      if (!v32)
      {
        goto LABEL_20;
      }

      v33 = *(a2 + 24);
      v34 = *v32;
      if (v33 < *v32)
      {
        *(a2 + 24) = v33 + 1;
        v35 = *&v32[2 * v33 + 2];
LABEL_22:
        v38 = v16 - *a3;
        if (HIDWORD(v38))
        {
          v42 = MEMORY[0x277D81150];
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "virtual void TSWPAttachmentAttributeArray::saveToArchive(TSWP::ObjectAttributeTable &, const NSRange &, TSPArchiver *__strong, __strong id<TSWPStyleProvider>) const");
          v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttachmentAttributeArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 324, 0, "Out-of-bounds type assignment was clamped to max");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
          LODWORD(v38) = -1;
          v9 = v50;
        }

        v39 = *(v35 + 16);
        *(v35 + 32) = v38;
        *(v35 + 16) = v39 | 3;
        v40 = *(v35 + 24);
        if (!v40)
        {
          v41 = *(v35 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x277CA3250](v41);
          *(v35 + 24) = v40;
        }

        objc_msgSend_setStrongReference_message_(v51, v20, v19, v40);
        goto LABEL_29;
      }

      if (v34 == *(a2 + 28))
      {
LABEL_20:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
        v32 = *(a2 + 32);
        v34 = *v32;
      }

      *v32 = v34 + 1;
      v35 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable_ObjectAttribute>(*(a2 + 16));
      v36 = *(a2 + 24);
      v37 = *(a2 + 32) + 8 * v36;
      *(a2 + 24) = v36 + 1;
      *(v37 + 8) = v35;
      goto LABEL_22;
    }
  }

LABEL_31:
}

uint64_t sub_276E3C754(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_wpKind(*(a1 + 16), a2, a3))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 16 * v4 - 16;
  do
  {
    objc_opt_class();
    v7 = TSWPAttributeRecord::object(*(a1 + 8) + v5, 4uLL);
    v8 = TSUDynamicCast();

    isAnchored = objc_msgSend_isAnchored(v8, v9, v10);
    if (v6 == v5)
    {
      v12 = 1;
    }

    else
    {
      v12 = isAnchored;
    }

    v5 += 16;
  }

  while ((v12 & 1) == 0);
  return isAnchored;
}

void sub_276E3C82C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = 0;
    v4 = 16 * v1;
    do
    {
      objc_opt_class();
      v5 = TSWPAttributeRecord::object(*(a1 + 8) + v3, 4uLL);
      v6 = TSUCheckedDynamicCast();

      if (objc_msgSend_isAnchored(v6, v7, v8))
      {
        if ((objc_msgSend_allowsElementKind_(*(a1 + 16), v9, 0x40000) & 1) == 0)
        {
          v12 = objc_msgSend_drawable(v6, v10, v11);
          v15 = objc_msgSend_exteriorTextWrap(v12, v13, v14);
          v18 = objc_msgSend_mutableCopy(v15, v16, v17);

          objc_msgSend_setType_(v18, v19, 0);
          v22 = objc_msgSend_copy(v18, v20, v21);
          objc_msgSend_setExteriorTextWrap_(v12, v23, v22);
        }
      }

      v3 += 16;
    }

    while (v4 != v3);
  }
}

void sub_276E3C994(void ***a1)
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

void sub_276E3CA14(uint64_t a1, void *a2)
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

void sub_276E3CAC4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276E3CB0C(uint64_t a1)
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

uint64_t sub_276E3E81C(uint64_t a1, char a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  *(a1 + 32) = 0u;
  *(a1 + 48) = vnegq_f64(v4);
  *(a1 + 64) = 0;
  sub_276EE3A74(a1 + 72);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 320) = a2;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  return a1;
}

void sub_276E3E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 3;
  sub_276E40EC4(&a10);
  a10 = v10;
  sub_276E40E40(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_276E3E8D4(uint64_t a1)
{
  *(a1 + 216) = 0;
  v2 = *(a1 + 8);
  v3 = *a1;
  while (v2 != v3)
  {
    v2 = sub_276EE9CB4(v2 - 32);
  }

  v4 = *(a1 + 24);
  *(a1 + 8) = v3;
    ;
  }

  *(a1 + 32) = v4;
  sub_276EE3D80(a1 + 72);
  if (*(a1 + 312))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSWPStorageTransaction::~TSWPStorageTransaction()");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 99, 0, "Disable change range increment/decrement mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (*(a1 + 304))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSWPStorageTransaction::~TSWPStorageTransaction()");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 100, 0, "Updating change range increment/decrement mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v24 = (a1 + 360);
  sub_276E40F9C(&v24);
  v24 = (a1 + 336);
  sub_276E40F9C(&v24);
  objc_destroyWeak((a1 + 328));
  v21 = *(a1 + 280);
  if (v21)
  {
    *(a1 + 288) = v21;
    operator delete(v21);
  }

  v24 = (a1 + 256);
  sub_276E40F48(&v24);
  v22 = *(a1 + 232);
  if (v22)
  {
    *(a1 + 240) = v22;
    operator delete(v22);
  }

  sub_276EE3B58(a1 + 72);
  v24 = (a1 + 24);
  sub_276E40EC4(&v24);
  v24 = a1;
  sub_276E40E40(&v24);
  return a1;
}

id sub_276E3EAC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 328));

  return WeakRetained;
}

void sub_276E3EAF4(void *a1, void *a2)
{
  v9 = a2;
  if (!a1[8])
  {
    v3 = 0x8E38E38E38E38E39 * ((a1[4] - a1[3]) >> 4);
    v4 = a1[28];
    v5 = v4 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v4 + 1;
    v6 = v3 - v5;
    if (v3 > v5)
    {
      v7 = 144 * v5;
      do
      {
        v8 = a1[3] + v7;
        if ((*(v8 + 104) & 1) == 0)
        {
          sub_276EE3CCC(v8, v9);
        }

        v7 += 144;
        --v6;
      }

      while (v6);
    }
  }
}

NSUInteger sub_276E3EBD0(NSUInteger result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = *(result + 304);
  if (!v6 || (v7 = v6 - 1, (*(result + 304) = v7) == 0))
  {
    v8 = *(result + 32) - *(result + 24);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0x8E38E38E38E38E39 * (v8 >> 4);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      do
      {
        v12 = *(result + 24);
        if (*(v12 + v9 + 104) == 1)
        {
          if (*(v12 + v9) == 1)
          {
            v13 = v12 + v9;
            *(v13 + 136) = 0;
            *(v13 + 120) = *(v12 + v9 + 112);
          }

          v10 = 1;
        }

        v9 += 144;
        --v11;
      }

      while (v11);
      if (v10)
      {
        *(result + 216) |= 2u;
        objc_msgSend_compress_(*(a2 + 8), a2, a2);
        *(v5 + 216) &= ~2u;
        v14.f64[0] = NAN;
        v14.f64[1] = NAN;
        *(v5 + 48) = vnegq_f64(v14);
      }
    }

    result = sub_276E3ECF0(v5);
    if (a3)
    {
      v16 = *(a2 + 8);

      return sub_276E3EE28(v5, v15, v16);
    }
  }

  return result;
}

uint64_t sub_276E3ECF0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 32);
  v3 = (result + 24);
  v4 = v2 - v1;
  if (v2 == v1)
  {
    return result;
  }

  v5 = MEMORY[0x277D81490];
  v6 = *MEMORY[0x277D81490];
  v7 = *(MEMORY[0x277D81490] + 8);
  v8 = 0x8E38E38E38E38E39 * (v4 >> 4) - 1;
  for (i = v4 - 64; ; i -= 144)
  {
    v10 = *v3;
    v11 = *v3 + i;
    if (*(v11 - 64) != *(v11 - 72) || *(v11 - 16) != *(v11 - 24) || *(v10 + i + 8) != *(v10 + i))
    {
      break;
    }

    if (v7)
    {
      --v6;
      ++v7;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!v8)
      {
        v6 = 0;
        v7 = 1;
        goto LABEL_16;
      }

      v7 = 1;
      v6 = v8;
    }

LABEL_9:
    --v8;
  }

  if (v7)
  {
    result = sub_276E3F95C(v3, v10 + 144 * v6, v10 + 144 * (v7 + v6));
    v6 = *v5;
    v7 = v5[1];
  }

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (!v7)
  {
    return result;
  }

LABEL_16:
  v12 = *v3 + 144 * v6;
  v13 = *v3 + 144 * (v7 + v6);

  return sub_276E3F95C(v3, v12, v13);
}

NSUInteger sub_276E3EE28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = MEMORY[0x277D81490];
  v7 = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  if (!*(a1 + 304))
  {
    v33 = v4;
    sub_276E3F1D0(v4, (a1 + 256), &v36);
    for (i = v36; i != v37; i += 16)
    {
      sub_276E3F2A4(a1, v5, *i, *(i + 1));
    }

    v11 = *(a1 + 280);
    v12 = *(a1 + 288);
    if (v11 != v12)
    {
      do
      {
        objc_msgSend_didChangeParagraphAttributeLocation_delta_(v5, v9, *v11, v11[1], v33);
        v11 += 2;
      }

      while (v11 != v12);
      v11 = *(a1 + 280);
    }

    *(a1 + 288) = v11;
    sub_276E3F1D0(v5, (a1 + 256), &__p);
    for (j = __p; j != v35; j += 2)
    {
      objc_msgSend_didChangeParagraphsInIndexRange_(v5, v13, *j, j[1]);
    }

    v16 = *(a1 + 256);
    v15 = *(a1 + 264);
    if (v16 != v15)
    {
      while (1)
      {
        location = v16[1].location;
        if (location)
        {
          goto LABEL_13;
        }

        if (v16 == sub_276E41540(*(a1 + 256), v16, v16))
        {
          break;
        }

LABEL_24:
        v16 = (v16 + 56);
        v15 = *(a1 + 264);
        if (v16 == v15)
        {
          v16 = *(a1 + 256);
          goto LABEL_27;
        }
      }

      location = v16[1].location;
LABEL_13:
      v18 = v8;
      v19 = v7;
      v20 = v6;
      v21 = v16->location;
      length = v16->length;
      v23 = v16[1].length;
      v24 = sub_276E3F734(v16, v13, v15);
      objc_msgSend_didChangeRange_delta_broadcastKind_attributeKindChanges_(v33, v25, v21, length, location, v23, v24);

      v6 = v20;
      v26 = *v20;
      v27 = v20[1];
      v28 = *v16;
      if (v19 == *v20 && v18 == v27)
      {
        v7 = v16->location;
        v8 = v16->length;
        v5 = v33;
      }

      else
      {
        v7 = v19;
        v8 = v18;
        v30 = v28.location == v26 && v28.length == v27;
        v5 = v33;
        if (!v30)
        {
          v38.location = v7;
          v38.length = v8;
          v31 = NSUnionRange(v38, v28);
          v13 = v31.length;
          v7 = v31.location;
          v8 = v31.length;
        }
      }

      goto LABEL_24;
    }

LABEL_27:
    sub_276E3F7FC((a1 + 256), v16, v15);
    *(a1 + 240) = *(a1 + 232);
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  return v7;
}

void sub_276E3F054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_276E3F0BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2[1];
  if (v5 == *a2)
  {
    goto LABEL_8;
  }

  v6 = sub_276E3F168((v5 - 16), a3);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  if (v6)
  {
    v9 = a3[1] + v8;
    v10 = a2[1];
    *(v10 - 16) = v7;
    *(v10 - 8) = v9;
    return;
  }

  if (v8 + v7 == *a3 && a3[1] + *a3 == v7)
  {
    a2[1] -= 16;
  }

  else
  {
LABEL_8:

    sub_276D20ABC(a2, a3);
  }
}

BOOL sub_276E3F168(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2 >= 1)
  {
    if (a2[1] < 1)
    {
      return 0;
    }

    return *a1 + v2 == *a2 || *a2 == *a1;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v5 = a2[1];
  if ((v5 & 0x8000000000000000) != 0 && *a1 + v2 == *a2)
  {
    return 1;
  }

  return v5 >> 63;
}

void sub_276E3F1D0(void *a1@<X1>, _NSRange **a2@<X2>, void *a3@<X8>)
{
  v5 = a1;
  v7 = v5;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5)
  {
    v8 = objc_msgSend_attributeArrayForKind_(v5, v6, 0);
    if (v8)
    {
      for (i = *a2; i != a2[1]; i = (i + 56))
      {
        v10 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(v8, *i);
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *&v12 = v10;
          *(&v12 + 1) = v11;
          sub_276D20ABC(a3, &v12);
        }
      }
    }
  }
}

void sub_276E3F27C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_276E3F2A4(uint64_t *a1, void *a2, const char *a3, uint64_t a4)
{
  v35 = a2;
  if (v35)
  {
    v36 = objc_msgSend_attributeArrayForKind_(v35, v7, 0);
    v9 = objc_msgSend_attributeArrayForKind_(v35, v8, 4);
    if (v36)
    {
      v11 = v9;
      if (v9)
      {
        v12 = &a3[a4];
        if (a3 < &a3[a4])
        {
          v37 = *(v36 + 6);
          v13 = *(v9 + 24);
          do
          {
            if (a3 < v37)
            {
              v14 = TSWPAttributeArray::rangeForAttributeIndex(v36, a3);
              v16 = v15;
              v17 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v11, v14);
              v18 = v17 <= v13 ? v17 : 0;
              v19 = (v13 ? v18 : v17);
              if (v19 < v13)
              {
                v20 = v14 + v16;
                do
                {
                  v21 = TSWPAttributeArray::charIndexForAttributeIndex(v11, v19);
                  if (v21 >= v20)
                  {
                    break;
                  }

                  if (v21 >= v14)
                  {
                    v22 = TSWPAttributeArray::objectForAttributeIndex(v11, v19);
                    v25 = v22;
                    if (v22 && objc_msgSend_shouldInvalidateWhenTextPropertiesChange(v22, v23, v24))
                    {
                      sub_276F3FE94(v38, 4, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), v25, 0);
                      v26 = a1[43];
                      if (v26 >= a1[44])
                      {
                        v27 = sub_276DCFD04(a1 + 42, v38);
                      }

                      else
                      {
                        sub_276F406BC(a1[43], v38);
                        v27 = v26 + 48;
                        a1[43] = v26 + 48;
                      }

                      a1[43] = v27;
                      sub_276F40794(v38);
                    }
                  }

                  ++v19;
                }

                while (v13 != v19);
              }
            }

            ++a3;
          }

          while (a3 != v12);
        }
      }
    }

    else
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void TSWPStorageTransaction::collectObjectsForUpdatingInParagraphIndexRange(TSWPStorage *__strong, NSRange)");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 227, 0, "invalid nil value for '%{public}s'", "paragraphArray");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    }
  }
}

void sub_276E3F53C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_276E3F58C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_276E411A8(a1, a2);
  }

  else
  {
    sub_276E4114C(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void sub_276E3F5CC(uint64_t *a1, const char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (a3 >= a4)
    {
      if (!a4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransaction::addStorageChangeRange(NSRange, NSInteger, TSWPBroadcastKind)");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 275, 0, "delta doesn't match changed range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }
  }

  sub_276E3F53C(a1 + 32);
LABEL_6:
  if (!a1[39])
  {
    v17[0] = a2;
    v17[1] = a3;
    v17[2] = a4;
    v17[3] = a5;
    v19 = 0;
    v20 = 0;
    __p = 0;
    sub_276E40934(&__p, a1[29], a1[30], (a1[30] - a1[29]) >> 3);
    a1[30] = a1[29];
    sub_276E3F58C(a1 + 32, v17);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }
}

id sub_276E3F734(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 == *(a1 + 40))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (!v5)
      {
        v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
      }

      v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, *v3);
      objc_msgSend_addObject_(v5, v7, v6);

      ++v3;
    }

    while (v3 != *(a1 + 40));
  }

  return v5;
}

uint64_t sub_276E3F7FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = *a1 + a2;
      v8 = -*a1;
      v9 = *a1 + a3;
      do
      {
        v10 = (v7 + v8);
        v11 = *(v9 + v8 + 16);
        *v10 = *(v9 + v8);
        v10[1] = v11;
        sub_276E41588(v7 + v8 + 32, (v9 + v8 + 32));
        v7 += 56;
        v9 += 56;
      }

      while (v9 + v8 != v5);
      v5 = a1[1];
      v12 = v7 - v6;
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 24);
      if (v13)
      {
        *(v5 - 16) = v13;
        operator delete(v13);
      }

      v5 -= 56;
    }

    a1[1] = v12;
  }

  return a2;
}

NSUInteger sub_276E3F8C4(uint64_t a1)
{
  v1 = MEMORY[0x277D81490];
  v2 = *MEMORY[0x277D81490];
  v3 = *(MEMORY[0x277D81490] + 8);
  v5 = *(a1 + 256);
  v4 = *(a1 + 264);
  if (v5 == v4)
  {
    return *MEMORY[0x277D81490];
  }

  v7 = **&MEMORY[0x277D81490];
  do
  {
    v8 = *v5;
    if (v7.location != v2 || v7.length != v3)
    {
      v8 = NSUnionRange(v7, v8);
      v2 = *v1;
      v3 = v1[1];
      v4 = *(a1 + 264);
    }

    v5 = (v5 + 56);
    v7 = v8;
  }

  while (v5 != v4);
  return v8.location;
}

uint64_t sub_276E3F95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_276E3FC2C(v7, v4);
        v4 += 144;
        v7 += 144;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 144;
      sub_276EE3B58(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_276E3F9EC(void *a1)
{
  if (a1[8] != 1)
  {
    return 0;
  }

  if (a1[11] != a1[10] || 0x8E38E38E38E38E39 * ((a1[4] - a1[3]) >> 4) < 2)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = v2 - 288;
  v4 = *(v2 - 136);
  v5 = *(v2 - 128);
  while (v4 != v5)
  {
    sub_276EE3E28(v3, v4);
    v4 += 48;
  }

  v7 = *(v2 - 56) - *(v2 - 64);
  if (v7)
  {
    v8 = 0;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      sub_276EE3FF0(v3, (*(v2 - 88) + v8), (*(v2 - 64) + v8));
      v8 += 48;
      --v10;
    }

    while (v10);
  }

  v11 = sub_276EE3B58(a1[4] - 144);
  a1[4] = v11;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (a1[28] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v11 != a1[3])
    {
      v12 = 0x8E38E38E38E38E39 * ((v11 - a1[3]) >> 4) - 1;
    }

    a1[28] = v12;
  }

  return 1;
}

uint64_t sub_276E3FB24(uint64_t a1, int a2)
{
  ++*(a1 + 64);
  sub_276EE3AA8(&v4, a2);
  *(a1 + 72) = v4;
  if ((a1 + 72) == &v4)
  {
    *(a1 + 176) = v13;
  }

  else
  {
    sub_276E40B78(a1 + 80, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4));
    sub_276E40B78(a1 + 104, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4));
    sub_276E40B78(a1 + 128, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 4));
    sub_276E40B78(a1 + 152, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 4));
    *(a1 + 176) = v13;
    sub_276E409B0((a1 + 184), v14, v15, (v15 - v14) >> 4);
  }

  *(a1 + 208) = v16;
  return sub_276EE3B58(&v4);
}

uint64_t sub_276E3FC2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    sub_276E40B78(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
    sub_276E40B78(a1 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
    sub_276E40B78(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
    sub_276E40B78(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
    *(a1 + 104) = *(a2 + 104);
    sub_276E409B0((a1 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 4);
  }

  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_276E3FD04(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *(a1 + 64);
  if (v4 || (v5 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransaction::closeActionGroup(BOOL)"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 431, 0, "TSWPStorageTransaction: countOfOpenActionGroups should be > 0"), v8, v6, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11), (v4 = *(a1 + 64)) != 0))
  {
    *(a1 + 64) = v4 - 1;
  }

  if (*(a1 + 136) != *(a1 + 128) || v2 && *(a1 + 88) != *(a1 + 80))
  {
    if (!*(a1 + 72))
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransaction::closeActionGroup(BOOL)");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 436, 0, "TSWPStorageTransaction: action group kind should be kTSWPStorageGroupActionUnknown");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    sub_276E3FE98((a1 + 24), a1 + 72);
  }

  return sub_276EE3D80(a1 + 72);
}

uint64_t sub_276E3FE98(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_276E415DC(a1, a2);
  }

  else
  {
    sub_276EE3CC8(a1[1], a2);
    result = v3 + 144;
    a1[1] = v3 + 144;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_276E3FEEC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (a2 != 5 || (v12 = a1[7], v12 == 0x7FFFFFFFFFFFFFFFLL))
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v15 = a1[1];
    if (v15 == *a1 || *(v15 - 32) != a2 || *(v15 - 28))
    {
      goto LABEL_6;
    }

    if (a2 == 2)
    {
      v18 = *(v15 - 20);
      if (v18 + *(v15 - 24) == a4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a2 == 7)
      {
        if (*(v15 - 20) + *(v15 - 24) != a4)
        {
          goto LABEL_6;
        }
      }

      else if (a2 != 3 || a1[6] != a4)
      {
        goto LABEL_6;
      }

      v16 = *(v15 - 16);
      v17 = TSWPAttributeRecord::object(a5, 0);

      if (v16 == v17)
      {
        v18 = *(v15 - 20);
LABEL_20:
        *(v15 - 20) = v18 + 1;
        v13 = 1;
        goto LABEL_7;
      }
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = 1;
  if (a3 != -1)
  {
    *(*a1 + 32 * v12 + 4) |= 1 << a3;
  }

LABEL_7:

  return v13;
}

void sub_276E40050(uint64_t a1, int a2, const char *a3, unint64_t a4, uint64_t a5, unint64_t *a6, void *a7, unint64_t a8, unint64_t a9, uint64_t a10)
{
  v51 = a3;
  v17 = a7;
  if (a3 != -1)
  {
    v19 = *(a1 + 232);
    v20 = *(a1 + 240);
    v18 = (a1 + 232);
    if (v19 != v20)
    {
      while (*v19 != a3)
      {
        if (++v19 == v20)
        {
          goto LABEL_9;
        }
      }
    }

    if (v19 == v20)
    {
LABEL_9:
      sub_276D19CF0(v18, &v51);
      if (v51)
      {
        goto LABEL_18;
      }
    }

    else if (a3)
    {
      goto LABEL_18;
    }

    if ((a2 & 0xFFFFFFFE) == 2 && a4 != 0x7FFFFFFFFFFFFFFFLL && a5 && a5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a2 == 3)
      {
        v21 = -a5;
      }

      else
      {
        v21 = a5;
      }

      v50[0] = a4;
      v50[1] = v21;
      sub_276E3F0BC(v18, (a1 + 280), v50);
    }
  }

LABEL_18:
  if (*(a1 + 320) == 1)
  {
    sub_276EE990C(v50);
    LOWORD(v50[0]) = a2;
    if (a2 != 1)
    {
      sub_276E4057C(v50, v51);
    }

    if (sub_276E3FEEC(a1, a2, v51, a4, a6, v17))
    {
      goto LABEL_55;
    }

    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        sub_276EE9CB8(v50, a8, v17, a9);
        *(a1 + 56) = (*(a1 + 8) - *a1) >> 5;
        goto LABEL_54;
      }

      if (a2 == 2)
      {
        sub_276EE9E78(v50, a4, 1uLL, 0);
        goto LABEL_54;
      }

      if (a2 != 3)
      {
        goto LABEL_43;
      }

      if (v51)
      {
        if (TSWPAttributeArray::hasPairedData(v51))
        {
          goto LABEL_46;
        }

        hasSingleData = TSWPAttributeArray::hasSingleData(v51);
        v23 = *a6;
        if (hasSingleData)
        {
          v24 = TSWPAttributeRecord::paragraphData(a6, v51);
          goto LABEL_50;
        }

        v33 = TSWPAttributeRecord::object(a6, v51);
        sub_276EEA4DC(v50, a4, v23, v33);
      }

      else
      {
        v45 = *a6;
        v33 = TSWPAttributeRecord::object(a6, 0);
        sub_276EEA038(v50, v45, 1uLL, v33);
      }
    }

    else
    {
      if (a2 <= 6)
      {
        if ((a2 - 4) < 2)
        {
          LOWORD(v50[0]) = 4;
          sub_276EEA69C(v50, *a6, a4, a10);
LABEL_54:
          sub_276E40648(a1, v50);
LABEL_55:
          *(a1 + 48) = a4;
          sub_276EE9CB4(v50);
          goto LABEL_56;
        }

        if (a2 == 6)
        {
          sub_276EEA924(v50, a4, *a6);
          goto LABEL_54;
        }

        goto LABEL_43;
      }

      if (a2 != 7)
      {
        if (a2 == 8)
        {
          if (TSWPAttributeArray::hasSingleData(v51))
          {
            v23 = *a6;
            v24 = TSWPAttributeRecord::paragraphData(a6, v51);
LABEL_50:
            sub_276EEA1F8(v50, a4, v23, *v24);
            goto LABEL_54;
          }

          if (!TSWPAttributeArray::hasPairedData(v51))
          {
            v47 = MEMORY[0x277D81150];
            v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "void TSWPStorageTransaction::addAttributeAction(TSWPStorageAttributeActionKind, TSWPAttributeArrayKind, TSWPAttributeIndex, TSWPAttributeCount, const TSWPAttributeRecord &, NSString *__strong, TSWPCharIndex, NSUInteger, NSInteger)");
            v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v49, v35, v37, 627, 0, "Bad undo kind: kStorageAttributeActionKindReplaceParagraphData.");
            goto LABEL_44;
          }

LABEL_46:
          v42 = *a6;
          v43 = *TSWPAttributeRecord::paragraphData(a6, v51);
          v44 = TSWPAttributeRecord::paragraphData(a6, v51);
          sub_276EEA364(v50, a4, v42, v43, *(v44 + 2));
          goto LABEL_54;
        }

LABEL_43:
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "void TSWPStorageTransaction::addAttributeAction(TSWPStorageAttributeActionKind, TSWPAttributeArrayKind, TSWPAttributeIndex, TSWPAttributeCount, const TSWPAttributeRecord &, NSString *__strong, TSWPCharIndex, NSUInteger, NSInteger)");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 632, 0, "Bad undo kind for add to transaction.");
LABEL_44:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        goto LABEL_54;
      }

      if (!TSWPAttributeArray::hasObjects(v51))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "void TSWPStorageTransaction::addAttributeAction(TSWPStorageAttributeActionKind, TSWPAttributeArrayKind, TSWPAttributeIndex, TSWPAttributeCount, const TSWPAttributeRecord &, NSString *__strong, TSWPCharIndex, NSUInteger, NSInteger)");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageTransaction.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 617, 0, "Bad undo kind: kStorageAttributeActionKindReplaceObject.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      }

      v33 = TSWPAttributeRecord::object(a6, v51);
      sub_276EE9E78(v50, a4, 1uLL, v33);
    }

    goto LABEL_54;
  }

LABEL_56:
}

void sub_276E4050C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_276EE9CB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276E4057C(uint64_t result, const char *a2)
{
  v2 = result;
  if (a2 >> 32)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setTable(TSWPAttributeArrayKind)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 123, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
    LODWORD(a2) = -1;
  }

  *(v2 + 4) = a2;
  return result;
}

uint64_t sub_276E40648(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_276E41818(a1, a2);
  }

  else
  {
    sub_276EE9ADC(*(a1 + 8), a2);
    result = v3 + 32;
    *(a1 + 8) = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_276E406C8(uint64_t a1, int a2, void *a3, unint64_t a4, unint64_t a5)
{
  v9 = a3;
  TSWPAttributeRecord::TSWPAttributeRecord(&v10);
  sub_276E40050(a1, a2, 0xFFFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFLL, &v10.var0, v9, a4, a5, 0);
}

void sub_276E40758(uint64_t a1, unsigned __int16 a2, const char *a3, unint64_t a4, void *a5)
{
  v13 = a3;
  v9 = a5;
  if (a3 != -1)
  {
    v10 = *(a1 + 232);
    v11 = *(a1 + 240);
    if (v10 != v11)
    {
      while (*v10 != a3)
      {
        if (++v10 == v11)
        {
          goto LABEL_7;
        }
      }
    }

    if (v10 == v11)
    {
LABEL_7:
      sub_276D19CF0((a1 + 232), &v13);
    }
  }

  if (*(a1 + 320) == 1)
  {
    sub_276EE990C(v12);
    v12[0] = a2;
    sub_276E4057C(v12, v13);
    sub_276EEAA88(v12, a4, v9);
    sub_276E40648(a1, v12);
    *(a1 + 48) = 0x7FFFFFFFFFFFFFFFLL;
    sub_276EE9CB4(v12);
  }
}

uint64_t sub_276E40864()
{
  objc_opt_class();
  v0 = TSUDynamicCast();
  v3 = objc_msgSend_length(v0, v1, v2);

  return v3;
}

BOOL sub_276E408C0(_DWORD *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  objc_opt_class();
  v1 = TSUDynamicCast();
  v4 = objc_msgSend_length(v1, v2, v3) != 0;

  return v4;
}

uint64_t sub_276E40934(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276D6D460(result, a4);
  }

  return result;
}

void sub_276E40994(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_276E409B0(char **a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_276E40AF4(a1, v10);
    }

    sub_276D34ED8();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 4) = *(v5 + 8);
      v5 += 16;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 4) = *(v5 + 8);
        v5 += 16;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11;
      do
      {
        v14 = *v12++;
        *v11 = v14;
        v11 += 16;
        v13 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

void sub_276E40AF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_276E40B30(a1, a2);
  }

  sub_276D34ED8();
}

void sub_276E40B30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276E40B78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *result) >> 4) < a4)
  {
    sub_276E40D10(result);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((v7[2] - *v7) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v7[2] - *v7) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_276E40D70(v7, v10);
    }

    sub_276D34ED8();
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_276F4136C(v8, v6);
        v6 += 48;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    while (v11 != v8)
    {
      v11 -= 48;
      result = sub_276F40794(v11);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_276F4136C(v8, v14);
        v14 += 48;
        v8 += 48;
        v13 -= 48;
      }

      while (v13);
      v11 = v7[1];
    }

    result = sub_276E40DBC(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void sub_276E40D10(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_276F40794(v3 - 48);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_276E40D70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_276DCFE34(a1, a2);
  }

  sub_276D34ED8();
}

uint64_t sub_276E40DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_276F406BC(a4, v6);
      v6 += 48;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_276E40E1C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      v4 = sub_276F40794(v4) - 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E40E40(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_276EE9CB4(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_276E40EC4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_276EE3B58(v4 - 144);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_276E40F48(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276E3F53C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276E40F9C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_276F40794(v4 - 48);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_276E41020(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_276D34F38();
}

void sub_276E41068(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276E410C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276E40D70(result, a4);
  }

  return result;
}

void sub_276E4112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_276E40F9C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_276E4114C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  result = sub_276E40934(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 8) = v3 + 56;
  return result;
}

uint64_t sub_276E411A8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_276D34ED8();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_276E41308(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = (56 * v2);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  sub_276E40934(56 * v2 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_276E41364(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_276E414A8(&v15);
  return v14;
}

void sub_276E412F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276E414A8(va);
  _Unwind_Resume(a1);
}

void sub_276E41308(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276E41364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 32);
      if (v8)
      {
        *(v5 + 40) = v8;
        operator delete(v8);
      }

      v5 += 56;
    }
  }

  return sub_276E41428(v10);
}

uint64_t sub_276E41428(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276E41460(a1);
  }

  return a1;
}

void sub_276E41460(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t sub_276E414A8(uint64_t a1)
{
  sub_276E414E0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276E414E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

void *sub_276E41540(void *result, void *a2, void *a3)
{
  for (; result != a2; result += 7)
  {
    if (a3[2] == result[2] && a3[3] == result[3] && *a3 == *result && a3[1] == result[1])
    {
      break;
    }
  }

  return result;
}

__n128 sub_276E41588(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_276E415DC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_276D34ED8();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_276E41068(a1, v6);
  }

  v13 = 0;
  v14 = 144 * v2;
  sub_276EE3CC8(144 * v2, a2);
  v15 = 144 * v2 + 144;
  v7 = a1[1];
  v8 = 144 * v2 + *a1 - v7;
  sub_276E41724(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_276E417C8(&v13);
  return v12;
}

void sub_276E41710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276E417C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276E41724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_276EE3CC8(a4, v8);
      v8 += 144;
      a4 += 144;
      v7 -= 144;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_276EE3B58(v6);
      v6 += 144;
    }
  }

  return result;
}

void sub_276E417A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 144;
    do
    {
      v4 = sub_276EE3B58(v4) - 144;
      v2 += 144;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276E417C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_276EE3B58(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_276E41818(uint64_t a1, unsigned __int16 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_276D34ED8();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_276E41020(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_276EE9ADC(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = 32 * v2 + *a1 - v8;
  sub_276E41928(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_276E419CC(&v14);
  return v13;
}

void sub_276E41914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276E419CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276E41928(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_276EE9ADC(a4, v8);
      v8 += 16;
      a4 += 32;
      v7 -= 32;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_276EE9CB4(v6);
      v6 += 16;
    }
  }

  return result;
}

void sub_276E419A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = sub_276EE9CB4(v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276E419CC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_276EE9CB4(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276E41FFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276E421C8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_276E42BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a26)
  {
    free(a26);
  }

  _Unwind_Resume(a1);
}

void sub_276E42C1C(uint64_t a1, char *__s)
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

void sub_276E42D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E43198(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_276E43544(uint64_t a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D80660]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_initWithRootModelObject_filter_(v5, v6, a1, &unk_2885FFC18);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v19;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (v15 && (objc_msgSend_elementKind(v15, v10, v11, v18) & a3) != 0)
        {
          v16 = 1;
          goto LABEL_12;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

uint64_t sub_276E43670(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_276E436CC(void *a1, uint64_t a2, __int16 a3)
{
  v4.receiver = a1;
  v4.super_class = &off_288664A40;
  return objc_msgSendSuper2(&v4, sel_containsDisallowedElementKind_) | ((a3 & 0x4000) >> 14);
}

uint64_t sub_276E43718(void *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_allNestedChildrenInfos(a1, a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if ((objc_msgSend_elementKind(*(*(&v14 + 1) + 8 * v11), v7, v8) & v3) != 0)
        {
          v12 = 1;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

uint64_t sub_276E43820(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isAudioOnly(a1, a2, a3))
  {
    return 0x8000;
  }

  v5.receiver = a1;
  v5.super_class = &off_2886653B0;
  return objc_msgSendSuper2(&v5, sel_elementKind);
}

void sub_276E43F18(TSWPAttributeArray *a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6)
{
  v17 = a2;
  v11 = a5;
  if (a4)
  {
    v19.location = a3;
    v19.length = a4;
    v12 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(a1, v19);
    v14 = v13;
    if (v13)
    {
      v15 = v12;
      (*(a1->var0 + 57))(a1, a3, a4, 0, a6, 0);
      (*(a1->var0 + 8))(a1, v15, v14, a6);
    }

    if (v17)
    {
      v16 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(a1, a3);
      (*(a1->var0 + 58))(a1, a3, a4, v17, a6, 0);
      (*(a1->var0 + 7))(a1, v17, a3, v16, v11, a6);
    }
  }
}

void sub_276E440E8(uint64_t a1, NSUInteger a2, NSUInteger a3, void *a4, uint64_t a5)
{
  v30.location = a2;
  v30.length = a3;
  v7 = a4;
  if (a5)
  {
    if (*(a5 + 456))
    {
      v8 = *(a5 + 464);
      if (v8)
      {
        v9 = *(a5 + 16);
        if (v9)
        {
          if ((*(v9 + 216) & 1) == 0 && (*(a5 + 472) != 1 || *(v8 + 8) != *(a1 + 28)))
          {
            v24 = v7;
            v10 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(a1, v30);
            v12 = v11;
            if (TSWPAttributeArray::hasObjects(*(a1 + 28)))
            {
              v28 = *(a5 + 464);
              v13 = *(v28 + 4);
              v27 = (*(*a1 + 432))(a1);
              if (v10 < &v10[v12])
              {
                v26 = v13 & 0xFFFFFFFD;
                do
                {
                  TSWPAttributeArray::rangeForAttributeIndex(a1, v10);
                  v14 = v7;
                  v29 = TSWPAttributeArray::objectForAttributeIndex(a1, v10);
                  v15 = TSWPAttributeArray::inverseObjectForApplying(v28, v14, v29, 0, a5);
                  if (TSWPAttributeArray::shouldBeCopiedForUndo(*(a1 + 28), v15))
                  {
                    v25 = v14;
                    v16 = *(a5 + 8);
                    v19 = objc_msgSend_context(v16, v17, v18);
                    v21 = objc_msgSend_copyWithContext_(v15, v20, v19);

                    v15 = v21;
                    v7 = v24;
                    v14 = v25;
                  }

                  v22 = NSIntersectionRangeInclusive();
                  sub_276F3FE94(v31, *(a1 + 28), v22, v23, v15, v27 | v26);
                  sub_276F2F6C0(a5, v31, 0);
                  sub_276F40794(v31);

                  ++v10;
                  --v12;
                }

                while (v12);
              }
            }

            else
            {
              (*(*a1 + 440))(a1, v10, v12, a5);
            }
          }
        }
      }
    }
  }
}

void sub_276E443CC(unsigned __int8 *a1, unint64_t a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  if (a5)
  {
    if (*(a5 + 456))
    {
      v12 = *(a5 + 464);
      if (v12)
      {
        if (*(a5 + 472))
        {
          v13 = a1[28];
          if (*(v12 + 8) == v13)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = a1[28];
        }

        if (TSWPAttributeArray::hasObjects(v13))
        {
          v14 = *(a5 + 464);
          v27 = *(v14 + 4);
          v26 = (*(*a1 + 432))(a1);
          v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v29.location = a2;
            v29.length = a3;
            if (TSWPAttributeArray::isRangeStartingAtEndOfStorage(a1, v29))
            {
              v16 = 0;
            }

            else
            {
              v16 = TSWPAttributeArray::objectForAttributeIndex(a1, v15);
            }

            v17 = TSWPAttributeArray::inverseObjectForApplying(v14, v11, v16, 0, a5);
            if (TSWPAttributeArray::shouldBeCopiedForUndo(a1[28], v17))
            {
              v25 = v16;
              v20 = objc_msgSend_context(*(a5 + 8), v18, v19);
              v22 = objc_msgSend_copyWithContext_(v17, v21, v20);

              v17 = v22;
              v16 = v25;
            }

            TSWPAttributeArray::rangeForAttributeIndex(a1, v15);
            v23 = NSIntersectionRangeInclusive();
            sub_276F3FE94(v28, a1[28], v23, v24, v17, v27 & 0xFFFFFFFD | v26 | a6);
            sub_276F2F6C0(a5, v28, 0);
            sub_276F40794(v28);
          }
        }

        else
        {
          (*(*a1 + 448))(a1, a2, a3, a5, a6);
        }
      }
    }
  }

LABEL_17:
}

void sub_276E44D64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276E451A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v19 = v15;

  _Unwind_Resume(a1);
}

void sub_276E47E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_276E47E6C()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A57828;
  qword_280A57828 = v0;
}

void sub_276E480E4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 48) < 0x4000100000005uLL)
  {
    v4 = objc_msgSend_style(*(a1 + 32), a2, a3);
    v5 = objc_opt_class();
    objc_msgSend_upgradeFontColorToIncludeCharacterFillInPropertyMap_forOwningTSPObject_(v5, v6, *(*(a1 + 32) + 400));
  }

  if (objc_msgSend_containsProperty_(*(*(a1 + 32) + 400), a2, 18))
  {
    objc_msgSend_removeValueForProperty_(*(*(a1 + 32) + 400), v7, 18);
  }

  v8 = *(a1 + 48);
  v9 = v8 < 0x3000100000002;
  v10 = *(a1 + 40);
  if (v10)
  {
    v13 = v10;
LABEL_7:
    v14 = objc_msgSend_copy(v13, v11, v12);
    v15 = *(a1 + 32);
    v16 = *(v15 + 384);
    *(v15 + 384) = v14;

    v17 = objc_opt_class();
    v20 = objc_msgSend_context(*(a1 + 32), v18, v19);
    v65 = 0;
    v22 = objc_msgSend_eqKitEquationWithWithContext_source_error_(v17, v21, v20, v13, &v65);
    v23 = v65;
    v24 = *(a1 + 32);
    v25 = *(v24 + 376);
    *(v24 + 376) = v22;

    v26 = *(*(a1 + 32) + 376);
    if (!v26 && *MEMORY[0x277D81500] != -1)
    {
      sub_276F4F8C8();
    }

    goto LABEL_21;
  }

  v27 = objc_msgSend_imageData(*(a1 + 32), v11, v12);
  v30 = v27;
  if (!v27 || (v32 = objc_msgSend_newCGDataProvider(v27, v28, v29)) == 0)
  {

    v13 = 0;
    goto LABEL_21;
  }

  v13 = objc_msgSend_equationSourceFromDataProvider_(MEMORY[0x277D7FF70], v31, v32);
  CGDataProviderRelease(v32);
  if (v13)
  {
    v33 = 0;
  }

  else
  {
    v33 = v8 >= 0x3000100000002;
  }

  v9 = !v33;

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_21:
  v34 = *(a1 + 32);
  if (!v34[50])
  {
    isInlineWithText = objc_msgSend_isInlineWithText(v34, v11, v12);
    v34 = *(a1 + 32);
    if ((isInlineWithText & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(v34, v11, v12);
      v36 = objc_opt_class();
      v39 = objc_msgSend_defaultTextProperties(v36, v37, v38);
      v40 = *(a1 + 32);
      v41 = *(v40 + 400);
      *(v40 + 400) = v39;

      v34 = *(a1 + 32);
    }

    v9 = 1;
  }

  v42 = objc_msgSend_maskInfo(v34, v11, v12);
  if (v42)
  {
  }

  else
  {
    v47 = objc_msgSend_instantAlphaPathIgnoringNaturalSize(*(a1 + 32), v43, v44);

    if (!v47)
    {
      if (!v9 && (*(a1 + 48) > 0x300020000000BuLL || objc_msgSend_rangeOfString_options_(*(*(a1 + 32) + 384), v45, @"\\\\text[ ]*\\{", 1024) == 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }
  }

  objc_msgSend_willModifyForUpgrade(*(a1 + 32), v45, v46);
  objc_msgSend_setMaskInfo_(*(a1 + 32), v48, 0);
  objc_msgSend_setInstantAlphaPath_(*(a1 + 32), v49, 0);
LABEL_29:
  v52 = objc_msgSend_isInlineWithText(*(a1 + 32), v45, v46);
  v53 = *(a1 + 32);
  if (v52)
  {
    v54 = v53[50];
    v53[50] = 0;
  }

  else
  {
    v55 = objc_msgSend_geometry(v53, v50, v51);
    v54 = objc_msgSend_copy(v55, v56, v57);

    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v58, v59);
    objc_msgSend_rebuildEquationPDFIncludingGeometry_(*(a1 + 32), v60, 0);
    v63 = objc_msgSend_geometry(*(a1 + 32), v61, v62);
    if ((objc_msgSend_isEqual_(v63, v64, v54) & 1) == 0 && qword_280A57DD0 != -1)
    {
      sub_276F4F8F0();
    }
  }

LABEL_36:
}

void sub_276E484B8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276E484FC()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A57828;
  qword_280A57828 = v0;
}

void sub_276E48964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276E48A08(TSWP::CharacterStylePropertiesArchive *a1)
{
  v1 = *(a1 + 4);
  v2 = *(v1 + 400);
  TSWP::CharacterStylePropertiesArchive::default_instance(a1);
  google::protobuf::internal::ExtensionSet::MutableMessage();

  return MEMORY[0x2821F9670](v1, sel_saveCharacterStylePropertiesFromPropertyMap_toArchive_archiver_, v2);
}

void *sub_276E4972C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_276D128DC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_276E49FD4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_276E4A9C8(result, a2);
    }

    sub_276D34ED8();
  }

  return result;
}

void sub_276E4A074(uint64_t a1, _OWORD *a2)
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
      sub_276E4A9C8(a1, v10);
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

uint64_t sub_276E4A910(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276E4A98C(result, a4);
  }

  return result;
}

void sub_276E4A970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E4A98C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_276E4A9C8(a1, a2);
  }

  sub_276D34ED8();
}

void sub_276E4A9C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_276D34F38();
}

void *sub_276E4AA10(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_276E4A98C(v6, v10);
    }

    sub_276D34ED8();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_276E4AB3C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_targetCharIndex(a2, v5, v6);
  v10 = objc_msgSend_targetCharIndex(v4, v8, v9);

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

uint64_t sub_276E4AB94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::BibliographySmartFieldArchive::BibliographySmartFieldArchive(&TSWP::_BibliographySmartFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_BibliographySmartFieldArchive_default_instance_);
}

uint64_t sub_276E4AC04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::BookmarkFieldArchive::BookmarkFieldArchive(&TSWP::_BookmarkFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_BookmarkFieldArchive_default_instance_);
}

uint64_t sub_276E4AC74(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ChangeArchive::ChangeArchive(&TSWP::_ChangeArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ChangeArchive_default_instance_);
}

uint64_t sub_276E4ACE4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE840 = v4;
  TSWP::_ChangeSessionArchive_default_instance_ = &unk_288603750;
  if (atomic_load_explicit(scc_info_ChangeSessionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE850 = 0;
  unk_2812DE858 = 0;
  dword_2812DE860 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ChangeSessionArchive_default_instance_);
}

uint64_t sub_276E4AD98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DD820 = v4;
  TSWP::_CharacterStyleArchive_default_instance_ = &unk_288600680;
  if (atomic_load_explicit(scc_info_CharacterStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DD830 = 0;
  unk_2812DD838 = 0;
  dword_2812DD840 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_CharacterStyleArchive_default_instance_);
}

uint64_t sub_276E4AE4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::CharacterStylePropertiesArchive::CharacterStylePropertiesArchive(&TSWP::_CharacterStylePropertiesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_CharacterStylePropertiesArchive_default_instance_);
}

uint64_t sub_276E4AEBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::CitationRecordArchive::CitationRecordArchive(&TSWP::_CitationRecordArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_CitationRecordArchive_default_instance_);
}

uint64_t sub_276E4AF2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::CitationSmartFieldArchive::CitationSmartFieldArchive(&TSWP::_CitationSmartFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_CitationSmartFieldArchive_default_instance_);
}

uint64_t sub_276E4AF9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEA08 = v4;
  TSWP::_CollaboratorTextCursorSubselectionArchive_default_instance_ = &unk_288603D80;
  if (atomic_load_explicit(scc_info_CollaboratorTextCursorSubselectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEA18 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_CollaboratorTextCursorSubselectionArchive_default_instance_);
}

uint64_t sub_276E4B04C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDC38 = v4;
  TSWP::_ColumnStyleArchive_default_instance_ = &unk_288601180;
  if (atomic_load_explicit(scc_info_ColumnStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DDC48 = 0;
  unk_2812DDC50 = 0;
  dword_2812DDC58 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ColumnStyleArchive_default_instance_);
}

uint64_t sub_276E4B100(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ColumnStylePropertiesArchive::ColumnStylePropertiesArchive(&TSWP::_ColumnStylePropertiesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ColumnStylePropertiesArchive_default_instance_);
}

uint64_t sub_276E4B170(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDBA0 = v4;
  TSWP::_ColumnsArchive_default_instance_ = &unk_288600F70;
  if (atomic_load_explicit(scc_info_ColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DDBB0 = 0;
  unk_2812DDBB8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ColumnsArchive_default_instance_);
}

uint64_t sub_276E4B220(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DDB28 = 0;
  unk_2812DDB30 = 0;
  TSWP::_ColumnsArchive_EqualColumnsArchive_default_instance_ = &unk_288600D60;
  qword_2812DDB38 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ColumnsArchive_EqualColumnsArchive_default_instance_);
}

uint64_t sub_276E4B29C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ColumnsArchive_NonEqualColumnsArchive::ColumnsArchive_NonEqualColumnsArchive(&TSWP::_ColumnsArchive_NonEqualColumnsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ColumnsArchive_NonEqualColumnsArchive_default_instance_);
}

uint64_t sub_276E4B30C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DDB48 = 0;
  unk_2812DDB50 = 0;
  TSWP::_ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive_default_instance_ = &unk_288600E10;
  qword_2812DDB58 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive_default_instance_);
}

uint64_t sub_276E4B388(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE298 = v4;
  TSWP::_CommentInfoArchive_default_instance_ = &unk_288602410;
  if (atomic_load_explicit(scc_info_CommentInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE2A8 = 0;
  unk_2812DE2B0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_CommentInfoArchive_default_instance_);
}

uint64_t sub_276E4B438(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::_DateTimeSelectionArchive_default_instance_ = &unk_288603960;
  *algn_2812DE8A8 = 0;
  dword_2812DE8B0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_DateTimeSelectionArchive_default_instance_);
}

uint64_t sub_276E4B4B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::DateTimeSmartFieldArchive::DateTimeSmartFieldArchive(&TSWP::_DateTimeSmartFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_DateTimeSmartFieldArchive_default_instance_);
}

uint64_t sub_276E4B520(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE3C8 = v4;
  TSWP::_DrawableAttachmentArchive_default_instance_ = &unk_2886028E0;
  if (atomic_load_explicit(scc_info_DrawableAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE3D8 = 0;
  unk_2812DE3E0 = 0;
  qword_2812DE3E8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_DrawableAttachmentArchive_default_instance_);
}

uint64_t sub_276E4B5D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::_DropCapArchive_default_instance_ = &unk_288603B70;
  *algn_2812DE938 = 0;
  xmmword_2812DE940 = 0u;
  unk_2812DE950 = 0u;
  xmmword_2812DE960 = 0u;
  unk_2812DE970 = 0u;
  qword_2812DE980 = 0x100000003;
  qword_2812DE988 = 0x3FF0000000000000;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_DropCapArchive_default_instance_);
}

uint64_t sub_276E4B668(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DE9D0 = v4;
  TSWP::_DropCapStyleArchive_default_instance_ = &unk_288603CD0;
  if (atomic_load_explicit(scc_info_DropCapStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE9E0 = 0;
  unk_2812DE9E8 = 0;
  dword_2812DE9F8 = 0;
  qword_2812DE9F0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_DropCapStyleArchive_default_instance_);
}

uint64_t sub_276E4B720(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE998 = v4;
  TSWP::_DropCapStylePropertiesArchive_default_instance_ = &unk_288603C20;
  if (atomic_load_explicit(scc_info_DropCapStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE9A8 = 0;
  unk_2812DE9B0 = 0;
  byte_2812DE9C0 = 0;
  qword_2812DE9B8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_DropCapStylePropertiesArchive_default_instance_);
}

uint64_t sub_276E4B7D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::_EquationInfoArchive_default_instance_ = &unk_288602620;
  unk_2812DE340 = 0;
  dword_2812DE348 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_EquationInfoArchive_default_instance_);
}

uint64_t sub_276E4B850(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE698 = v4;
  TSWP::_FilenameSmartFieldArchive_default_instance_ = &unk_2886031D0;
  if (atomic_load_explicit(scc_info_FilenameSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DE6B0 = 0;
  qword_2812DE6A8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_FilenameSmartFieldArchive_default_instance_);
}

uint64_t sub_276E4B904(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::FlowInfoArchive::FlowInfoArchive(&TSWP::_FlowInfoArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_FlowInfoArchive_default_instance_);
}

uint64_t sub_276E4B974(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::FlowInfoContainerArchive::FlowInfoContainerArchive(&TSWP::_FlowInfoContainerArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_FlowInfoContainerArchive_default_instance_);
}

uint64_t sub_276E4B9E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DD718 = 0;
  unk_2812DD720 = 0;
  TSWP::_FontFeatureArchive_default_instance_ = &unk_288600520;
  qword_2812DD728 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_FontFeatureArchive_default_instance_);
}

uint64_t sub_276E4BA60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::FootnoteReferenceAttachmentArchive::FootnoteReferenceAttachmentArchive(&TSWP::_FootnoteReferenceAttachmentArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_FootnoteReferenceAttachmentArchive_default_instance_);
}

uint64_t sub_276E4BAD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::HighlightArchive::HighlightArchive(&TSWP::_HighlightArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_HighlightArchive_default_instance_);
}

uint64_t sub_276E4BB40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::HyperlinkFieldArchive::HyperlinkFieldArchive(&TSWP::_HyperlinkFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_HyperlinkFieldArchive_default_instance_);
}

uint64_t sub_276E4BBB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::_HyperlinkSelectionArchive_default_instance_ = &unk_2886038B0;
  unk_2812DE890 = 0;
  dword_2812DE898 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_HyperlinkSelectionArchive_default_instance_);
}

uint64_t sub_276E4BC28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DD8A8 = 0;
  unk_2812DD8B0 = 0;
  TSWP::_LineSpacingArchive_default_instance_ = &unk_288600890;
  qword_2812DD8B8 = 0;
  dword_2812DD8C0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_LineSpacingArchive_default_instance_);
}

uint64_t sub_276E4BCA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ListStyleArchive::ListStyleArchive(&TSWP::_ListStyleArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ListStyleArchive_default_instance_);
}

uint64_t sub_276E4BD18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DD9C0 = v4;
  TSWP::_ListStyleArchive_LabelGeometry_default_instance_ = &unk_288600AA0;
  qword_2812DD9D0 = 0x3F80000000000000;
  byte_2812DD9D8 = 1;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ListStyleArchive_LabelGeometry_default_instance_);
}

uint64_t sub_276E4BDAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DD9E8 = v4;
  TSWP::_ListStyleArchive_LabelImage_default_instance_ = &unk_288600B50;
  if (atomic_load_explicit(scc_info_ListStyleArchive_LabelImage_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DD9F8 = 0;
  unk_2812DDA00 = 0;
  byte_2812DDA08 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ListStyleArchive_LabelImage_default_instance_);
}

uint64_t sub_276E4BE60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::MergeFieldTypeArchive::MergeFieldTypeArchive(&TSWP::_MergeFieldTypeArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_MergeFieldTypeArchive_default_instance_);
}

uint64_t sub_276E4BED0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::MergeSmartFieldArchive::MergeSmartFieldArchive(&TSWP::_MergeSmartFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_MergeSmartFieldArchive_default_instance_);
}

uint64_t sub_276E4BF40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::NumberAttachmentArchive::NumberAttachmentArchive(&TSWP::_NumberAttachmentArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_NumberAttachmentArchive_default_instance_);
}

uint64_t sub_276E4BFB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ObjectAttributeTable::ObjectAttributeTable(&TSWP::_ObjectAttributeTable_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ObjectAttributeTable_default_instance_);
}

uint64_t sub_276E4C020(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DD478 = v4;
  TSWP::_ObjectAttributeTable_ObjectAttribute_default_instance_ = &unk_2885FFD90;
  if (atomic_load_explicit(scc_info_ObjectAttributeTable_ObjectAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DD490 = 0;
  qword_2812DD488 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ObjectAttributeTable_ObjectAttribute_default_instance_);
}

uint64_t sub_276E4C0D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::OverlappingFieldAttributeTable::OverlappingFieldAttributeTable(&TSWP::_OverlappingFieldAttributeTable_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_OverlappingFieldAttributeTable_default_instance_);
}

uint64_t sub_276E4C144(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DD580 = v4;
  TSWP::_OverlappingFieldAttributeTable_OverlappingFieldAttribute_default_instance_ = &unk_2886001B0;
  if (atomic_load_explicit(scc_info_OverlappingFieldAttributeTable_OverlappingFieldAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DD590 = 0;
  unk_2812DD598 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_OverlappingFieldAttributeTable_OverlappingFieldAttribute_default_instance_);
}

uint64_t sub_276E4C1F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DDBC8 = 0;
  unk_2812DDBD0 = 0;
  TSWP::_PaddingArchive_default_instance_ = &unk_288601020;
  qword_2812DDBD8 = 0;
  unk_2812DDBE0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_PaddingArchive_default_instance_);
}

uint64_t sub_276E4C270(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ParaDataAttributeTable::ParaDataAttributeTable(&TSWP::_ParaDataAttributeTable_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ParaDataAttributeTable_default_instance_);
}

uint64_t sub_276E4C2E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DD528 = 0;
  unk_2812DD530 = 0;
  TSWP::_ParaDataAttributeTable_ParaDataAttribute_default_instance_ = &unk_288600050;
  qword_2812DD538 = 0;
  dword_2812DD540 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ParaDataAttributeTable_ParaDataAttribute_default_instance_);
}

uint64_t sub_276E4C360(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DD988 = v4;
  TSWP::_ParagraphStyleArchive_default_instance_ = &unk_2886009F0;
  if (atomic_load_explicit(scc_info_ParagraphStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DD998 = 0;
  unk_2812DD9A0 = 0;
  dword_2812DD9B0 = 0;
  qword_2812DD9A8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ParagraphStyleArchive_default_instance_);
}

uint64_t sub_276E4C418(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ParagraphStylePropertiesArchive::ParagraphStylePropertiesArchive(&TSWP::_ParagraphStylePropertiesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ParagraphStylePropertiesArchive_default_instance_);
}

uint64_t sub_276E4C488(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::PencilAnnotationArchive::PencilAnnotationArchive(&TSWP::_PencilAnnotationArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_PencilAnnotationArchive_default_instance_);
}

uint64_t sub_276E4C4F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::PlaceholderSmartFieldArchive::PlaceholderSmartFieldArchive(&TSWP::_PlaceholderSmartFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_PlaceholderSmartFieldArchive_default_instance_);
}

uint64_t sub_276E4C568(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::RubyFieldArchive::RubyFieldArchive(&TSWP::_RubyFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_RubyFieldArchive_default_instance_);
}

uint64_t sub_276E4C5D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DE870 = v4;
  TSWP::_SectionPlaceholderArchive_default_instance_ = &unk_288603800;
  if (atomic_load_explicit(scc_info_SectionPlaceholderArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE880 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_SectionPlaceholderArchive_default_instance_);
}

uint64_t sub_276E4C688(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::SelectionArchive::SelectionArchive(&TSWP::_SelectionArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_SelectionArchive_default_instance_);
}

uint64_t sub_276E4C6F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE258 = v4;
  TSWP::_ShapeInfoArchive_default_instance_ = &unk_288602360;
  if (atomic_load_explicit(scc_info_ShapeInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812DE288 = 0;
  unk_2812DE278 = 0u;
  unk_2812DE268 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ShapeInfoArchive_default_instance_);
}

uint64_t sub_276E4C7B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDCA8 = v4;
  TSWP::_ShapeStyleArchive_default_instance_ = &unk_2886012E0;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DDCB8 = 0;
  unk_2812DDCC0 = 0;
  dword_2812DDCC8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ShapeStyleArchive_default_instance_);
}

uint64_t sub_276E4C868(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDC68 = v4;
  TSWP::_ShapeStylePropertiesArchive_default_instance_ = &unk_288601230;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DDC96 = 0;
  unk_2812DDC88 = 0u;
  unk_2812DDC78 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ShapeStylePropertiesArchive_default_instance_);
}

uint64_t sub_276E4C924(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE480 = v4;
  TSWP::_SmartFieldArchive_default_instance_ = &unk_288602BA0;
  if (atomic_load_explicit(scc_info_SmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE490 = MEMORY[0x277D80A90];
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_SmartFieldArchive_default_instance_);
}

uint64_t sub_276E4C9DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::StorageArchive::StorageArchive(&TSWP::_StorageArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_StorageArchive_default_instance_);
}

uint64_t sub_276E4CA4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::StringAttributeTable::StringAttributeTable(&TSWP::_StringAttributeTable_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_StringAttributeTable_default_instance_);
}

uint64_t sub_276E4CABC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::StringAttributeTable_StringAttribute::StringAttributeTable_StringAttribute(&TSWP::_StringAttributeTable_StringAttribute_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_StringAttributeTable_StringAttribute_default_instance_);
}

uint64_t sub_276E4CB2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE3F8 = v4;
  TSWP::_TOCAttachmentArchive_default_instance_ = &unk_288602990;
  if (atomic_load_explicit(scc_info_TOCAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE408 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TOCAttachmentArchive_default_instance_);
}

uint64_t sub_276E4CBDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TOCEntryInstanceArchive::TOCEntryInstanceArchive(&TSWP::_TOCEntryInstanceArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TOCEntryInstanceArchive_default_instance_);
}

uint64_t sub_276E4CC4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDE00 = v4;
  TSWP::_TOCEntryStyleArchive_default_instance_ = &unk_2886015A0;
  if (atomic_load_explicit(scc_info_TOCEntryStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DDE10 = 0;
  unk_2812DDE18 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TOCEntryStyleArchive_default_instance_);
}

uint64_t sub_276E4CCFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDDD8 = v4;
  TSWP::_TOCEntryStylePropertiesArchive_default_instance_ = &unk_2886014F0;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812DDDF0 = 0;
  qword_2812DDDE8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TOCEntryStylePropertiesArchive_default_instance_);
}

uint64_t sub_276E4CDB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TOCInfoArchive::TOCInfoArchive(&TSWP::_TOCInfoArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TOCInfoArchive_default_instance_);
}

uint64_t sub_276E4CE20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE320 = v4;
  TSWP::_TOCLayoutHintArchive_default_instance_ = &unk_288602570;
  if (atomic_load_explicit(scc_info_TOCLayoutHintArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE330 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TOCLayoutHintArchive_default_instance_);
}

uint64_t sub_276E4CED0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TOCSettingsArchive::TOCSettingsArchive(&TSWP::_TOCSettingsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TOCSettingsArchive_default_instance_);
}

uint64_t sub_276E4CF40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDE28 = v4;
  TSWP::_TOCSettingsArchive_TOCEntryData_default_instance_ = &unk_288601650;
  if (atomic_load_explicit(scc_info_TOCSettingsArchive_TOCEntryData_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DDE38 = 0;
  unk_2812DDE40 = 0;
  byte_2812DDE48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TOCSettingsArchive_TOCEntryData_default_instance_);
}

uint64_t sub_276E4CFF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TOCSmartFieldArchive::TOCSmartFieldArchive(&TSWP::_TOCSmartFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TOCSmartFieldArchive_default_instance_);
}

uint64_t sub_276E4D064(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TOCSmartFieldArchive_TOCEntry::TOCSmartFieldArchive_TOCEntry(&TSWP::_TOCSmartFieldArchive_TOCEntry_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TOCSmartFieldArchive_TOCEntry_default_instance_);
}

uint64_t sub_276E4D0D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TSWPTOCPageNumberAttachmentArchive::TSWPTOCPageNumberAttachmentArchive(&TSWP::_TSWPTOCPageNumberAttachmentArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TSWPTOCPageNumberAttachmentArchive_default_instance_);
}

uint64_t sub_276E4D144(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TabArchive::TabArchive(&TSWP::_TabArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TabArchive_default_instance_);
}

uint64_t sub_276E4D1B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TabsArchive::TabsArchive(&TSWP::_TabsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TabsArchive_default_instance_);
}

uint64_t sub_276E4D224(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE7E8 = v4;
  TSWP::_TateChuYokoFieldArchive_default_instance_ = &unk_2886035F0;
  if (atomic_load_explicit(scc_info_TateChuYokoFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE7F8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TateChuYokoFieldArchive_default_instance_);
}

uint64_t sub_276E4D2D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TextPresetDisplayItemArchive::TextPresetDisplayItemArchive(&TSWP::_TextPresetDisplayItemArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TextPresetDisplayItemArchive_default_instance_);
}

uint64_t sub_276E4D344(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TextStylePresetArchive::TextStylePresetArchive(&TSWP::_TextStylePresetArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TextStylePresetArchive_default_instance_);
}

uint64_t sub_276E4D3B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::TextualAttachmentArchive::TextualAttachmentArchive(&TSWP::_TextualAttachmentArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TextualAttachmentArchive_default_instance_);
}

uint64_t sub_276E4D424(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::ThemePresetsArchive::ThemePresetsArchive(&TSWP::_ThemePresetsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ThemePresetsArchive_default_instance_);
}

uint64_t sub_276E4D494(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::_UIGraphicalAttachment_default_instance_ = &unk_288602830;
  unk_2812DE3B0 = 0;
  dword_2812DE3B8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UIGraphicalAttachment_default_instance_);
}

uint64_t sub_276E4D50C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UndoTransaction::UndoTransaction(&TSWP::_UndoTransaction_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_default_instance_);
}

uint64_t sub_276E4D57C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UndoTransaction_AttributeIndexTransaction::UndoTransaction_AttributeIndexTransaction(&TSWP::_UndoTransaction_AttributeIndexTransaction_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_AttributeIndexTransaction_default_instance_);
}

uint64_t sub_276E4D5EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE078 = v4;
  TSWP::_UndoTransaction_CTDateTransaction_default_instance_ = &unk_288601F40;
  if (atomic_load_explicit(scc_info_UndoTransaction_CTDateTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DE090 = 0;
  qword_2812DE088 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_UndoTransaction_CTDateTransaction_default_instance_);
}

uint64_t sub_276E4D6A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DE000 = 0;
  unk_2812DE008 = 0;
  TSWP::_UndoTransaction_CharDeltaTransaction_default_instance_ = &unk_288601D30;
  qword_2812DE010 = 0;
  dword_2812DE018 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_CharDeltaTransaction_default_instance_);
}

uint64_t sub_276E4D720(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DDF38 = v4;
  TSWP::_UndoTransaction_CharIndexTransaction_default_instance_ = &unk_2886019C0;
  if (atomic_load_explicit(scc_info_UndoTransaction_CharIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DDF48 = 0;
  unk_2812DDF50 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_UndoTransaction_CharIndexTransaction_default_instance_);
}

uint64_t sub_276E4D7D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DDEE8 = 0;
  unk_2812DDEF0 = 0;
  TSWP::_UndoTransaction_GenericTransaction_default_instance_ = &unk_288601860;
  qword_2812DDEF8 = 0;
  dword_2812DDF00 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_GenericTransaction_default_instance_);
}

uint64_t sub_276E4D850(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UndoTransaction_InsertAttributeTransaction::UndoTransaction_InsertAttributeTransaction(&TSWP::_UndoTransaction_InsertAttributeTransaction_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_InsertAttributeTransaction_default_instance_);
}

uint64_t sub_276E4D8C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DDFE0 = 0;
  unk_2812DDFE8 = 0;
  TSWP::_UndoTransaction_InsertNilTransaction_default_instance_ = &unk_288601C80;
  qword_2812DDFF0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_InsertNilTransaction_default_instance_);
}

uint64_t sub_276E4D93C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DE050 = v4;
  TSWP::_UndoTransaction_ObjectDOLCTransaction_default_instance_ = &unk_288601E90;
  if (atomic_load_explicit(scc_info_UndoTransaction_ObjectDOLCTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DE068 = 0;
  qword_2812DE060 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_UndoTransaction_ObjectDOLCTransaction_default_instance_);
}

uint64_t sub_276E4D9F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DE028 = 0;
  unk_2812DE030 = 0;
  TSWP::_UndoTransaction_ParagraphDataTransaction_default_instance_ = &unk_288601DE0;
  qword_2812DE038 = 0;
  unk_2812DE040 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_ParagraphDataTransaction_default_instance_);
}

uint64_t sub_276E4DA6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  qword_2812DDF60 = 0;
  unk_2812DDF68 = 0;
  TSWP::_UndoTransaction_ReplaceCharIndexTransaction_default_instance_ = &unk_288601A70;
  qword_2812DDF70 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_ReplaceCharIndexTransaction_default_instance_);
}

uint64_t sub_276E4DAE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UndoTransaction_StorageAction::UndoTransaction_StorageAction(&TSWP::_UndoTransaction_StorageAction_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_StorageAction_default_instance_);
}

uint64_t sub_276E4DB58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UndoTransaction_StorageActionGroup::UndoTransaction_StorageActionGroup(&TSWP::_UndoTransaction_StorageActionGroup_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_StorageActionGroup_default_instance_);
}

uint64_t sub_276E4DBC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UndoTransaction_TextTransaction::UndoTransaction_TextTransaction(&TSWP::_UndoTransaction_TextTransaction_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_TextTransaction_default_instance_);
}

uint64_t sub_276E4DC38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UndoTransaction_UnionTransaction::UndoTransaction_UnionTransaction(&TSWP::_UndoTransaction_UnionTransaction_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UndoTransaction_UnionTransaction_default_instance_);
}

uint64_t sub_276E4DCA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DE238 = v4;
  TSWP::_UndoTransactionWrapperArchive_default_instance_ = &unk_2886022B0;
  if (atomic_load_explicit(scc_info_UndoTransactionWrapperArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DE248 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_UndoTransactionWrapperArchive_default_instance_);
}

uint64_t sub_276E4DD58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.pb.cc", a4);
  TSWP::UnsupportedHyperlinkFieldArchive::UnsupportedHyperlinkFieldArchive(&TSWP::_UnsupportedHyperlinkFieldArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UnsupportedHyperlinkFieldArchive_default_instance_);
}

TSP::Range *TSWP::SelectionArchive::clear_visual_definition_range(TSWP::SelectionArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Range *TSWP::SelectionArchive::clear_smart_field_range(TSWP::SelectionArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSWP::SelectionArchive::clear_ranges(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSWP::SelectionArchive *TSWP::SelectionArchive::SelectionArchive(TSWP::SelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885FFCE0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SelectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

TSWP::SelectionArchive *TSWP::SelectionArchive::SelectionArchive(TSWP::SelectionArchive *this, const TSWP::SelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885FFCE0;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276EA4D78(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v12 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v12;
  return this;
}

void sub_276E4E744(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x1081C404FE48876);
  sub_276EA4C58((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::SelectionArchive::~SelectionArchive(TSWP::SelectionArchive *this)
{
  if (this != &TSWP::_SelectionArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Range::~Range(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::Range::~Range(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
  sub_276EA4C58(this + 3);
}

{
  TSWP::SelectionArchive::~SelectionArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276E4E808(uint64_t *result)
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

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::SelectionArchive::default_instance(TSWP::SelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_SelectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_SelectionArchive_default_instance_;
}

uint64_t *TSWP::SelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSP::Range::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSP::Range::Clear(*(v1 + 56));
    }
  }

  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_276EA4D28(v6);
  }

  return this;
}

google::protobuf::internal *TSWP::SelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v52 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v52) & 1) == 0)
  {
    while (1)
    {
      v7 = (v52 + 1);
      v8 = *v52;
      if ((*v52 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v52, (v9 - 128));
      v52 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_114;
      }

      v7 = TagFallback;
      v8 = v31;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 != 24)
            {
              goto LABEL_87;
            }

            v36 = (v7 + 1);
            v35 = *v7;
            if ((v35 & 0x8000000000000000) != 0)
            {
              v37 = *v36;
              v35 = (v37 << 7) + v35 - 128;
              if ((v37 & 0x80000000) == 0)
              {
                v36 = (v7 + 2);
                goto LABEL_65;
              }

              v52 = google::protobuf::internal::VarintParseSlow64(v7, v35);
              if (!v52)
              {
                goto LABEL_114;
              }
            }

            else
            {
LABEL_65:
              v52 = v36;
            }

            if (v35 > 2)
            {
              sub_276F53E6C();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 68) = v35;
            }

            goto LABEL_95;
          }

          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_87;
          }

          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) != 0)
          {
            v26 = *v25;
            v24 = (v26 << 7) + v24 - 128;
            if ((v26 & 0x80000000) == 0)
            {
              v25 = (v7 + 2);
              goto LABEL_42;
            }

            v52 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            if (!v52)
            {
              goto LABEL_114;
            }
          }

          else
          {
LABEL_42:
            v52 = v25;
          }

          if (v24 > 1)
          {
            sub_276F53E30();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 72) = v24;
          }

          goto LABEL_95;
        }

        if (v10 != 1)
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_87;
          }

          *(a1 + 16) |= 1u;
          v21 = *(a1 + 48);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = MEMORY[0x277CA3230](v22);
            LODWORD(v21) = v23;
            *(a1 + 48) = v23;
LABEL_78:
            v7 = v52;
          }

LABEL_79:
          v43 = sub_276F4F918(a3, v21, v7);
          goto LABEL_94;
        }

        if (v8 != 8)
        {
          goto LABEL_87;
        }

        v33 = (v7 + 1);
        v32 = *v7;
        if ((v32 & 0x8000000000000000) != 0)
        {
          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if ((v34 & 0x80000000) == 0)
          {
            v33 = (v7 + 2);
            goto LABEL_58;
          }

          v52 = google::protobuf::internal::VarintParseSlow64(v7, v32);
          if (!v52)
          {
            goto LABEL_114;
          }
        }

        else
        {
LABEL_58:
          v52 = v33;
        }

        if (v32 > 8)
        {
          sub_276F53EA8();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 64) = v32;
        }

        goto LABEL_95;
      }

      if (v8 >> 3 <= 6)
      {
        if (v10 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 2u;
            v21 = *(a1 + 56);
            if (!v21)
            {
              v41 = *(a1 + 8);
              if (v41)
              {
                v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
              }

              v42 = MEMORY[0x277CA3230](v41);
              LODWORD(v21) = v42;
              *(a1 + 56) = v42;
              goto LABEL_78;
            }

            goto LABEL_79;
          }

LABEL_87:
          if (v8)
          {
            v47 = (v8 & 7) == 4;
          }

          else
          {
            v47 = 1;
          }

          if (v47)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v43 = google::protobuf::internal::UnknownFieldParse();
LABEL_94:
          v52 = v43;
          if (!v43)
          {
            goto LABEL_114;
          }

          goto LABEL_95;
        }

        if (v10 != 6 || v8 != 48)
        {
          goto LABEL_87;
        }

        v5 |= 0x20u;
        v28 = (v7 + 1);
        v27 = *v7;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v7 + 2);
LABEL_51:
          v52 = v28;
          *(a1 + 76) = v27 != 0;
          goto LABEL_95;
        }

        v48 = google::protobuf::internal::VarintParseSlow64(v7, v27);
        v52 = v48;
        *(a1 + 76) = v49 != 0;
        if (!v48)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v10 != 7)
        {
          if (v10 != 8)
          {
            if (v10 == 9 && v8 == 74)
            {
              v11 = v7 - 1;
              while (1)
              {
                v12 = (v11 + 1);
                v52 = (v11 + 1);
                v13 = *(a1 + 40);
                if (!v13)
                {
                  goto LABEL_15;
                }

                v19 = *(a1 + 32);
                v14 = *v13;
                if (v19 < *v13)
                {
                  *(a1 + 32) = v19 + 1;
                  v16 = *&v13[2 * v19 + 2];
                  goto LABEL_19;
                }

                if (v14 == *(a1 + 36))
                {
LABEL_15:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v13 = *(a1 + 40);
                  v14 = *v13;
                }

                *v13 = v14 + 1;
                v15 = MEMORY[0x277CA3230](*(a1 + 24));
                LODWORD(v16) = v15;
                v17 = *(a1 + 32);
                v18 = *(a1 + 40) + 8 * v17;
                *(a1 + 32) = v17 + 1;
                *(v18 + 8) = v15;
                v12 = v52;
LABEL_19:
                v11 = sub_276F4F918(a3, v16, v12);
                v52 = v11;
                if (!v11)
                {
                  goto LABEL_114;
                }

                if (*a3 <= v11 || *v11 != 74)
                {
                  goto LABEL_95;
                }
              }
            }

            goto LABEL_87;
          }

          if (v8 != 64)
          {
            goto LABEL_87;
          }

          v45 = (v7 + 1);
          v44 = *v7;
          if ((v44 & 0x8000000000000000) != 0)
          {
            v46 = *v45;
            v44 = (v46 << 7) + v44 - 128;
            if ((v46 & 0x80000000) == 0)
            {
              v45 = (v7 + 2);
              goto LABEL_84;
            }

            v52 = google::protobuf::internal::VarintParseSlow64(v7, v44);
            if (!v52)
            {
LABEL_114:
              v52 = 0;
              goto LABEL_2;
            }
          }

          else
          {
LABEL_84:
            v52 = v45;
          }

          if (v44 > 8)
          {
            sub_276F53DF4();
          }

          else
          {
            *(a1 + 16) |= 0x80u;
            *(a1 + 84) = v44;
          }

          goto LABEL_95;
        }

        if (v8 != 56)
        {
          goto LABEL_87;
        }

        v5 |= 0x40u;
        v38 = (v7 + 1);
        LODWORD(v39) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v40 = *v38;
        v39 = (v39 + (v40 << 7) - 128);
        if ((v40 & 0x80000000) == 0)
        {
          v38 = (v7 + 2);
LABEL_72:
          v52 = v38;
          *(a1 + 80) = v39;
          goto LABEL_95;
        }

        v50 = google::protobuf::internal::VarintParseSlow32(v7, v39);
        v52 = v50;
        *(a1 + 80) = v51;
        if (!v50)
        {
          goto LABEL_114;
        }
      }

LABEL_95:
      if (sub_276EA4A1C(a3, &v52))
      {
        goto LABEL_2;
      }
    }

    v7 = (v52 + 2);
LABEL_6:
    v52 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v52;
}

unsigned __int8 *TSWP::SelectionArchive::_InternalSerialize(TSWP::SelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 16);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v9 | 0x80;
          v12 = v9 >> 7;
          ++a2;
          v13 = v9 >> 14;
          v9 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if (v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        a2[2] = v9;
        a2 += 3;
        if (v5)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if (v5)
      {
        goto LABEL_29;
      }
    }

LABEL_3:
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 6);
  *a2 = 18;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    a2[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = a2 + 3;
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
      a2[2] = v17;
      v16 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v15;
    v16 = a2 + 2;
  }

  a2 = TSP::Range::_InternalSerialize(v14, v16, a3);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_50:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 18);
    *a2 = 32;
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v25 = v24 >> 7;
      if (v24 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++a2;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(a2 - 1) = v26;
        if ((v5 & 2) != 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_61;
      }
    }

LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 17);
  *a2 = 24;
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v21 = v20 >> 7;
    if (v20 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++a2;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(a2 - 1) = v22;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_50;
    }
  }

LABEL_5:
  if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 7);
  *a2 = 42;
  v29 = *(v28 + 5);
  if (v29 > 0x7F)
  {
    a2[1] = v29 | 0x80;
    v31 = v29 >> 7;
    if (v29 >> 14)
    {
      v30 = a2 + 3;
      do
      {
        *(v30 - 1) = v31 | 0x80;
        v32 = v31 >> 7;
        ++v30;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
      *(v30 - 1) = v32;
    }

    else
    {
      a2[2] = v31;
      v30 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v29;
    v30 = a2 + 2;
  }

  a2 = TSP::Range::_InternalSerialize(v28, v30, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 76);
  *a2 = 48;
  a2[1] = v34;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_9;
  }

LABEL_74:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 20);
  *a2 = 56;
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v36 = v35 >> 7;
    if (v35 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++a2;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(a2 - 1) = v37;
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      a2[2] = v36;
      a2 += 3;
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_85;
      }
    }
  }

  else
  {
    a2[1] = v35;
    a2 += 2;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_85;
    }
  }

LABEL_9:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 21);
  *a2 = 64;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v10 = v8 >> 7;
        ++a2;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
    }

    else
    {
      a2[2] = v8;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_85:
  v39 = *(this + 8);
  if (v39)
  {
    for (i = 0; i != v39; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v41 = *(*(this + 5) + 8 * i + 8);
      *a2 = 74;
      v42 = *(v41 + 5);
      if (v42 > 0x7F)
      {
        a2[1] = v42 | 0x80;
        v44 = v42 >> 7;
        if (v42 >> 14)
        {
          v43 = a2 + 3;
          do
          {
            *(v43 - 1) = v44 | 0x80;
            v45 = v44 >> 7;
            ++v43;
            v46 = v44 >> 14;
            v44 >>= 7;
          }

          while (v46);
          *(v43 - 1) = v45;
        }

        else
        {
          a2[2] = v44;
          v43 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v42;
        v43 = a2 + 2;
      }

      a2 = TSP::Range::_InternalSerialize(v41, v43, a3);
    }
  }

  v47 = *(this + 1);
  if ((v47 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v47 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::SelectionArchive::RequiredFieldsByteSizeFallback(TSWP::SelectionArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Range::ByteSizeLong(*(this + 6));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Range::ByteSizeLong(*(this + 7));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 16);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return v3;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(this + 17);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v9;
  if ((v2 & 0x10) != 0)
  {
LABEL_18:
    v10 = *(this + 18);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v11;
  }

  return v3;
}

uint64_t TSWP::SelectionArchive::ByteSizeLong(TSP::Range **this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    v15 = TSWP::SelectionArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Range::ByteSizeLong(this[6]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = TSP::Range::ByteSizeLong(this[7]);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = 10;
    v7 = *(this + 16);
    v8 = *(this + 17);
    v9 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    if (v7 >= 0)
    {
      v6 = v9;
    }

    v10 = 10;
    v11 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    if (v8 >= 0)
    {
      v10 = v11;
    }

    v12 = *(this + 18);
    v13 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 10;
    }

    v15 = v2 + v4 + v3 + v5 + v6 + v10 + v14 + 5;
  }

  v16 = *(this + 8);
  v17 = v15 + v16;
  v18 = this[5];
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = TSP::Range::ByteSizeLong(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(this + 4);
  if ((v23 & 0xE0) != 0)
  {
    v17 += (v23 >> 4) & 2;
    if ((v23 & 0x40) != 0)
    {
      v17 += ((9 * (__clz(*(this + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v23 & 0x80) != 0)
    {
      v24 = *(this + 21);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 11;
      }

      v17 += v26;
    }
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v17, this + 20);
  }

  else
  {
    *(this + 5) = v17;
    return v17;
  }
}

uint64_t TSWP::SelectionArchive::MergeFrom(TSWP::SelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::SelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::SelectionArchive::MergeFrom(uint64_t this, const TSWP::SelectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA4D78(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if (v10)
  {
    v11 = MEMORY[0x277D809F8];
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v12 = *(v3 + 48);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277CA3230](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = v11;
      }

      this = TSP::Range::MergeFrom(v12, v14);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_34;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v15 = *(v3 + 56);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277CA3230](v16);
      *(v3 + 56) = v15;
    }

    if (*(a2 + 7))
    {
      v17 = *(a2 + 7);
    }

    else
    {
      v17 = v11;
    }

    this = TSP::Range::MergeFrom(v15, v17);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(v3 + 64) = *(a2 + 16);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(v3 + 68) = *(a2 + 17);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(v3 + 72) = *(a2 + 18);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(v3 + 76) = *(a2 + 76);
    if ((v10 & 0x40) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v10;
        return this;
      }

LABEL_15:
      *(v3 + 84) = *(a2 + 21);
      goto LABEL_16;
    }

LABEL_38:
    *(v3 + 80) = *(a2 + 20);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return this;
}

uint64_t *TSWP::SelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SelectionArchive::Clear(this);

    return TSWP::SelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::SelectionArchive::CopyFrom(uint64_t *this, const TSWP::SelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SelectionArchive::Clear(this);

    return TSWP::SelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::SelectionArchive::IsInitialized(TSWP::SelectionArchive *this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Range::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSP::Range::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Range::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::SelectionArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  v8 = this[3].n128_u64[1];
  this[3] = a2[3];
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  v9 = this[4].n128_u64[0];
  v10 = this[4].n128_u64[1];
  result = a2[4];
  this[4] = result;
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v10;
  v12 = this[5].n128_u64[0];
  this[5].n128_u64[0] = a2[5].n128_u64[0];
  a2[5].n128_u64[0] = v12;
  return result;
}

uint64_t *sub_276E4FC00(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_276EA4A94(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_276EA4E38(v2, v4);
}

TSP::Reference *TSWP::ObjectAttributeTable_ObjectAttribute::clear_object(TSWP::ObjectAttributeTable_ObjectAttribute *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::ObjectAttributeTable_ObjectAttribute *TSWP::ObjectAttributeTable_ObjectAttribute::ObjectAttributeTable_ObjectAttribute(TSWP::ObjectAttributeTable_ObjectAttribute *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885FFD90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ObjectAttributeTable_ObjectAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885FFD90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ObjectAttributeTable_ObjectAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSWP::ObjectAttributeTable_ObjectAttribute *TSWP::ObjectAttributeTable_ObjectAttribute::ObjectAttributeTable_ObjectAttribute(TSWP::ObjectAttributeTable_ObjectAttribute *this, const TSWP::ObjectAttributeTable_ObjectAttribute *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885FFD90;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSWP::ObjectAttributeTable_ObjectAttribute::~ObjectAttributeTable_ObjectAttribute(TSWP::ObjectAttributeTable_ObjectAttribute *this)
{
  if (this != &TSWP::_ObjectAttributeTable_ObjectAttribute_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ObjectAttributeTable_ObjectAttribute::~ObjectAttributeTable_ObjectAttribute(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ObjectAttributeTable_ObjectAttribute::default_instance(TSWP::ObjectAttributeTable_ObjectAttribute *this)
{
  if (atomic_load_explicit(scc_info_ObjectAttributeTable_ObjectAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ObjectAttributeTable_ObjectAttribute_default_instance_;
}

uint64_t *TSWP::ObjectAttributeTable_ObjectAttribute::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWP::ObjectAttributeTable_ObjectAttribute::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v23) & 1) == 0)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277CA3250](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v7 = v23;
          }

          v12 = sub_276F4F9E8(a3, v13, v7);
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
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v16 = (v7 + 1);
      LODWORD(v17) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v18 = *v16;
      v17 = (v17 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_30:
        v23 = v16;
        *(a1 + 32) = v17;
        goto LABEL_31;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v17);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_38:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_276EA4A1C(a3, &v23))
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

unsigned __int8 *TSWP::ObjectAttributeTable_ObjectAttribute::_InternalSerialize(TSWP::ObjectAttributeTable_ObjectAttribute *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 8);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v12 = v7 >> 7;
        ++a2;
        v13 = v7 >> 14;
        v7 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 3);
  *a2 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = a2 + 3;
      do
      {
        *(v10 - 1) = v11 | 0x80;
        v14 = v11 >> 7;
        ++v10;
        v15 = v11 >> 14;
        v11 >>= 7;
      }

      while (v15);
      *(v10 - 1) = v14;
    }

    else
    {
      a2[2] = v11;
      v10 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v9;
    v10 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ObjectAttributeTable_ObjectAttribute::ByteSizeLong(TSWP::ObjectAttributeTable_ObjectAttribute *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v3 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSWP::ObjectAttributeTable_ObjectAttribute::MergeFrom(TSWP::ObjectAttributeTable_ObjectAttribute *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ObjectAttributeTable_ObjectAttribute::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ObjectAttributeTable_ObjectAttribute::MergeFrom(uint64_t this, const TSWP::ObjectAttributeTable_ObjectAttribute *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
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

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWP::ObjectAttributeTable_ObjectAttribute::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ObjectAttributeTable_ObjectAttribute::Clear(this);

    return TSWP::ObjectAttributeTable_ObjectAttribute::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ObjectAttributeTable_ObjectAttribute::CopyFrom(uint64_t *this, const TSWP::ObjectAttributeTable_ObjectAttribute *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ObjectAttributeTable_ObjectAttribute::Clear(this);

    return TSWP::ObjectAttributeTable_ObjectAttribute::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ObjectAttributeTable_ObjectAttribute::IsInitialized(TSWP::ObjectAttributeTable_ObjectAttribute *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWP::ObjectAttributeTable_ObjectAttribute::InternalSwap(TSWP::ObjectAttributeTable_ObjectAttribute *this, TSWP::ObjectAttributeTable_ObjectAttribute *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TSWP::ObjectAttributeTable *TSWP::ObjectAttributeTable::ObjectAttributeTable(TSWP::ObjectAttributeTable *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885FFE40;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ObjectAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::ObjectAttributeTable *TSWP::ObjectAttributeTable::ObjectAttributeTable(TSWP::ObjectAttributeTable *this, const TSWP::ObjectAttributeTable *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2885FFE40;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276EA4F24(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::ObjectAttributeTable::~ObjectAttributeTable(TSWP::ObjectAttributeTable *this)
{
  sub_276E4E808(this + 1);
  sub_276EA4EA0(this + 2);
}

{
  TSWP::ObjectAttributeTable::~ObjectAttributeTable(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ObjectAttributeTable::default_instance(TSWP::ObjectAttributeTable *this)
{
  if (atomic_load_explicit(scc_info_ObjectAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ObjectAttributeTable_default_instance_;
}

uint64_t *TSWP::ObjectAttributeTable::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ObjectAttributeTable_ObjectAttribute::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::ObjectAttributeTable::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_276EA4A1C(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable_ObjectAttribute>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_276F4FAB8(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

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
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TSWP::ObjectAttributeTable::_InternalSerialize(TSWP::ObjectAttributeTable *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSWP::ObjectAttributeTable_ObjectAttribute::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ObjectAttributeTable::ByteSizeLong(TSWP::ObjectAttributeTable *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSWP::ObjectAttributeTable_ObjectAttribute::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TSWP::ObjectAttributeTable::MergeFrom(TSWP::ObjectAttributeTable *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ObjectAttributeTable::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ObjectAttributeTable::MergeFrom(uint64_t this, const TSWP::ObjectAttributeTable *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276EA4F24(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TSWP::ObjectAttributeTable::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ObjectAttributeTable::Clear(this);

    return TSWP::ObjectAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ObjectAttributeTable::CopyFrom(uint64_t *this, const TSWP::ObjectAttributeTable *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ObjectAttributeTable::Clear(this);

    return TSWP::ObjectAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t sub_276E50F14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    v4 = *(v3 + 16);
    if ((v4 & 2) == 0)
    {
      break;
    }

    if (v4)
    {
      result = TSP::Reference::IsInitialized(*(v3 + 24));
      if (!result)
      {
        return result;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 TSWP::ObjectAttributeTable::InternalSwap(TSWP::ObjectAttributeTable *this, TSWP::ObjectAttributeTable *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSWP::StringAttributeTable_StringAttribute *TSWP::StringAttributeTable_StringAttribute::StringAttributeTable_StringAttribute(TSWP::StringAttributeTable_StringAttribute *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885FFEF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StringAttributeTable_StringAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 8) = 0;
  return this;
}

TSWP::StringAttributeTable_StringAttribute *TSWP::StringAttributeTable_StringAttribute::StringAttributeTable_StringAttribute(TSWP::StringAttributeTable_StringAttribute *this, const TSWP::StringAttributeTable_StringAttribute *a2)
{
  *(this + 1) = 0;
  *this = &unk_2885FFEF0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 8) = *(a2 + 8);
  return this;
}

void TSWP::StringAttributeTable_StringAttribute::~StringAttributeTable_StringAttribute(TSWP::StringAttributeTable_StringAttribute *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::StringAttributeTable_StringAttribute::~StringAttributeTable_StringAttribute(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::StringAttributeTable_StringAttribute::default_instance(TSWP::StringAttributeTable_StringAttribute *this)
{
  if (atomic_load_explicit(scc_info_StringAttributeTable_StringAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_StringAttributeTable_StringAttribute_default_instance_;
}

uint64_t *TSWP::StringAttributeTable_StringAttribute::Clear(TSWP::StringAttributeTable_StringAttribute *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 6) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::StringAttributeTable_StringAttribute::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v7 = (v20 + 1);
      v8 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_34;
      }

      v7 = TagFallback;
      v8 = v17;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v12 = google::protobuf::internal::InlineGreedyStringParser();
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
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v20 = v12;
        if (!v12)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_26:
        v20 = v13;
        *(a1 + 32) = v14;
        goto LABEL_27;
      }

      v18 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v20 = v18;
      *(a1 + 32) = v19;
      if (!v18)
      {
LABEL_34:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_27:
      if (sub_276EA4A1C(a3, &v20))
      {
        goto LABEL_2;
      }
    }

    v7 = (v20 + 2);
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}