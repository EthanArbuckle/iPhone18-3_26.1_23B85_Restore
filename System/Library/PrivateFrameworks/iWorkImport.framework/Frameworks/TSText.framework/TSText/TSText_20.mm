uint64_t sub_276EE3858(uint64_t a1)
{
  v2 = sub_276EE38D4(a1, 1);
  *v2 = &unk_288606420;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EE38D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F580D4(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSWPSOS::TOCEntryStylePropertyChangeSetArchive::~TOCEntryStylePropertyChangeSetArchive);
}

uint64_t sub_276EE3960(uint64_t a1)
{
  v2 = sub_276EE39DC(a1, 1);
  *v2 = &unk_2886064D0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_StyleDiffArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276EE39DC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F58104(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSWPSOS::StyleDiffArchive::~StyleDiffArchive);
}

double sub_276EE3A74(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

double sub_276EE3AA8(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_276EE3ADC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 80);
  sub_276E40F9C(&v4);
  v4 = (a1 + 56);
  sub_276E40F9C(&v4);
  v4 = (a1 + 32);
  sub_276E40F9C(&v4);
  v4 = (a1 + 8);
  sub_276E40F9C(&v4);
  return a1;
}

uint64_t sub_276EE3B5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_276E410C4(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_276E410C4(a1 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_276E410C4(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_276E410C4(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
  v4 = *(a2 + 104);
  *(a1 + 112) = 0;
  *(a1 + 104) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_276EE4508(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 4);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_276EE3C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276E40F9C(va);
  sub_276E40F9C(va);
  sub_276E40F9C(va);
  sub_276E40F9C(va);
  _Unwind_Resume(a1);
}

void sub_276EE3CCC(void *a1, void *a2)
{
  v7 = a2;
  v3 = a1[1];
  v4 = a1[2];
  while (v3 != v4)
  {
    if ((*(v3 + 4) & 1) == 0)
    {
      sub_276F409E0(v3, v7);
    }

    v3 += 48;
  }

  v6 = a1[7];
  v5 = a1[8];
  while (v6 != v5)
  {
    if ((*(v6 + 4) & 1) == 0)
    {
      sub_276F409E0(v6, v7);
    }

    v6 += 48;
  }
}

uint64_t sub_276EE3D80(uint64_t a1)
{
  *a1 = 0;
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  while (v2 != v3)
  {
    v2 = sub_276F40794(v2 - 48);
  }

  *(a1 + 16) = v3;
  v5 = *(a1 + 32);
    ;
  }

  *(a1 + 40) = v5;
  v7 = *(a1 + 56);
    ;
  }

  *(a1 + 64) = v7;
  v9 = *(a1 + 80);
    ;
  }

  *(a1 + 88) = v9;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a1 + 112);
  return result;
}

uint64_t sub_276EE3E28(uint64_t a1, const char *a2)
{
  if (*a1 || (v4 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionGroup::appendForwardAction(const TSWPStorageAction &)"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionGroup.mm"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 165, 0, "TSWPStorageActionGroup: bad group kind."), v7, v5, result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10), *a1))
  {
    if (!*a2)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionGroup::appendForwardAction(const TSWPStorageAction &)");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionGroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 168, 0, "TSWPStorageAction: bad action kind.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    return sub_276EE3F9C((a1 + 8), a2);
  }

  return result;
}

uint64_t sub_276EE3F9C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_276DCFD04(a1, a2);
  }

  else
  {
    sub_276F406BC(a1[1], a2);
    result = v3 + 48;
    a1[1] = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_276EE3FF0(uint64_t a1, const char *a2, _DWORD *a3)
{
  if (*a1 || (v6 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionGroup::appendActions(const TSWPStorageAction &, const TSWPStorageAction &)"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionGroup.mm"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 183, 0, "TSWPStorageActionGroup: bad group kind."), v9, v7, result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12), *a1))
  {
    if (!(*a2 | *a3))
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionGroup::appendActions(const TSWPStorageAction &, const TSWPStorageAction &)");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionGroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 186, 0, "TSWPStorageActionGroup: bad action kinds.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    sub_276EE3F9C((a1 + 56), a2);

    return sub_276EE3F9C((a1 + 80), a3);
  }

  return result;
}

uint64_t sub_276EE4188(uint64_t a1, const char *a2, _DWORD *a3)
{
  if (*a1 || (v6 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionGroup::replaceAction(NSUInteger, const TSWPStorageAction &)"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionGroup.mm"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 193, 0, "TSWPStorageActionGroup: bad group kind."), v9, v7, result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12), *a1))
  {
    if (!*a3)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionGroup::replaceAction(NSUInteger, const TSWPStorageAction &)");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionGroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 196, 0, "TSWPStorageActionGroup: bad action kinds.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    v21 = *(a1 + 56) + 48 * a2;

    return sub_276F4136C(v21, a3);
  }

  return result;
}

void *sub_276EE4314(void *result, const char *a2)
{
  v2 = result;
  v4 = result[7];
  v3 = result[8];
  v5 = v3 - v4;
  v6 = result[11] - result[10];
  if (v3 - v4 != v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionGroup::removeUndefinedActionPairs()");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionGroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 303, 0, "Actions do not match inverse actions.");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    v4 = v2[7];
    v3 = v2[8];
    v5 = v3 - v4;
    v6 = v2[11] - v2[10];
  }

  if (v5 == v6 && v3 != v4)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
    do
    {
      while (1)
      {
        --v15;
        v16 = v2[7];
        if (!*(v16 + 48 * v15) && !*(v2[10] + 48 * v15))
        {
          break;
        }

        if (!v15)
        {
          return result;
        }
      }

      v17 = v16 + 48 * v15;
      v18 = v2[8];
      if (v17 + 48 != v18)
      {
        do
        {
          v19 = v17 + 48;
          result = sub_276F4136C(v17, v17 + 48);
          v20 = v17 + 96;
          v17 += 48;
        }

        while (v20 != v18);
        v18 = v2[8];
        v17 = v19;
      }

      while (v18 != v17)
      {
        v18 -= 48;
        result = sub_276F40794(v18);
      }

      v2[8] = v17;
      v21 = v2[11];
      v22 = v2[10] + 48 * v15;
      if (v22 + 48 != v21)
      {
        do
        {
          v23 = v22 + 48;
          result = sub_276F4136C(v22, v22 + 48);
          v24 = v22 + 96;
          v22 += 48;
        }

        while (v24 != v21);
        v21 = v2[11];
        v22 = v23;
      }

      while (v21 != v22)
      {
        v21 -= 48;
        result = sub_276F40794(v21);
      }

      v2[11] = v22;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_276EE4508(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276E40AF4(result, a4);
  }

  return result;
}

void sub_276EE4560(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_276EE8338(const __CTLine *a1, int a2, void *a3, CGFloat a4)
{
  v56 = a2;
  v64 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v54 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  Mutable = CGPathCreateMutable();
  v8 = CTLineGetGlyphRuns(a1);
  if (objc_msgSend_count(v8, v9, v10))
  {
    v12 = 0;
    v58 = *MEMORY[0x277CC4838];
    v57 = *MEMORY[0x277CC49C0];
    v55 = v8;
    while (1)
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(v8, v11, v12, Mutable);

      Attributes = CTRunGetAttributes(v13);
      Value = CFDictionaryGetValue(Attributes, v58);
      v16 = CFDictionaryGetValue(Attributes, v57);
      SymbolicTraits = CTFontGetSymbolicTraits(Value);
      v18 = (SymbolicTraits >> 13) & 1;
      if ((SymbolicTraits & 0x2000) != 0)
      {
        goto LABEL_21;
      }

      GlyphCount = CTRunGetGlyphCount(v13);
      if (GlyphCount >= 1)
      {
        break;
      }

LABEL_18:
      if (++v12 >= objc_msgSend_count(v8, v20, v21))
      {
        goto LABEL_21;
      }
    }

    v22 = GlyphCount;
    p_Mutable = &Mutable;
    MEMORY[0x28223BE20]();
    v24 = (&Mutable - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (&Mutable - 2 * MEMORY[0x28223BE20]());
    v66.location = 0;
    v66.length = 0;
    CTRunGetGlyphs(v13, v66, v24);
    v67.location = 0;
    v67.length = 0;
    CTRunGetPositions(v13, v67, v25);
    memset(&v63, 0, sizeof(v63));
    if (v56)
    {
      CTRunGetTextMatrix(&matrix, v13);
      CGAffineTransformInvert(&v63, &matrix);
      if (v16)
      {
LABEL_7:
        v26 = CGPathCreateMutable();
        goto LABEL_10;
      }
    }

    else
    {
      v27 = *(MEMORY[0x277CBF2C0] + 16);
      *&v63.a = *MEMORY[0x277CBF2C0];
      *&v63.c = v27;
      *&v63.tx = *(MEMORY[0x277CBF2C0] + 32);
      if (v16)
      {
        goto LABEL_7;
      }
    }

    v26 = 0;
LABEL_10:
    p_y = &v25->y;
    do
    {
      v29 = *(p_y - 1);
      v30 = *p_y;
      matrix = v63;
      v60 = v63;
      CGAffineTransformScale(&v61, &v60, a4, -a4);
      matrix = v61;
      v60 = v61;
      CGAffineTransformTranslate(&v61, &v60, v29, v30);
      matrix = v61;
      v31 = *v24++;
      v32 = CTFontCreatePathForGlyph(Value, v31, &matrix);
      if (v32)
      {
        v33 = v32;
        CGPathAddPathSafe();
        CFRelease(v33);
      }

      p_y += 2;
      --v22;
    }

    while (v22);
    if (v26 && !CGPathIsEmpty(v26))
    {
      v35 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v34, v26);
      objc_msgSend_addObject_(v54, v36, v35);
      v38 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v37, v16);
      objc_msgSend_addObject_(v53, v39, v38);
    }

    CGPathRelease(v26);
    v8 = v55;
    goto LABEL_18;
  }

  v18 = 0;
LABEL_21:
  v40 = Mutable;
  if (!CGPathIsEmpty(Mutable))
  {
    v42 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v41, v40);
    objc_msgSend_addObject_(v54, v43, v42);
    v46 = objc_msgSend_null(MEMORY[0x277CBEB68], v44, v45);
    objc_msgSend_addObject_(v53, v47, v46);
  }

  CGPathRelease(v40);
  if (v18)
  {
    objc_msgSend_removeAllObjects(v54, v48, v49);
  }

  v50 = v54;

  return v50;
}

uint64_t sub_276EE87BC(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v1;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v4);
          }

          if (!objc_msgSend_isEmpty(*(*(&v12 + 1) + 8 * v10), v6, v7, v12))
          {
            v8 = 0;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v12, v16, 16);
        if (v8)
        {
          continue;
        }

        break;
      }

      v8 = 1;
    }

LABEL_12:
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

double sub_276EE88D4(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v6, &v18, v22, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_bounds(*(*(&v18 + 1) + 8 * v12), v8, v9);
        v26.origin.x = v13;
        v26.origin.y = v14;
        v26.size.width = v15;
        v26.size.height = v16;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = CGRectUnion(v24, v26);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v8, &v18, v22, 16);
    }

    while (v10);
  }

  return x;
}

void sub_276EE8A20(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (CGRectGetHeight(*&a2) > 0.0 && !a1)
  {
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    MinX = CGRectGetMinX(v15);
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeTranslation(&v14, -MinX, a6);
    v13 = v14;
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGRectApplyAffineTransform(v16, &v13);
  }
}

void sub_276EE8B20(void *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v18.origin.x = sub_276EE88D4(a1);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v14 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v15 = CGRectGetHeight(v19);
  if (a2 > 0.0 && v14 > 0.0 && v15 > 0.0)
  {
    v20.origin.x = a4;
    v20.origin.y = a5;
    v20.size.width = a6;
    v20.size.height = a7;
    CGRectGetWidth(v20);
    v21.origin.x = a4;
    v21.origin.y = a5;
    v21.size.width = a6;
    v21.size.height = a7;
    CGRectGetHeight(v21);
  }
}

id sub_276EE8E9C(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v2, v3);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_appendBezierPath_(v4, v8, *(*(&v13 + 1) + 8 * i), v13);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  return v4;
}

void sub_276EE989C(uint64_t a1, const char *a2, int a3, double a4)
{
  v6 = objc_msgSend_metricsForCharIndex_(*(a1 + 32), a2, a2);
  v9 = v6;
  if (a3)
  {
    objc_msgSend_setLeadingOffset_(v6, v7, v8, a4);
  }

  else
  {
    objc_msgSend_setTrailingOffset_(v6, v7, v8, a4);
  }
}

uint64_t sub_276EE990C(uint64_t result)
{
  *result = 0;
  *(result + 12) = 0;
  *(result + 4) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_276EE9920(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 > 5)
  {
    if (*a1 <= 7u)
    {
      if (v4 == 6)
      {
        goto LABEL_27;
      }

      if (v4 != 7)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v4 == 8)
      {
        goto LABEL_15;
      }

      if (v4 != 9)
      {
        if (v4 == 10)
        {
          v5 = *(a2 + 16);
          if (v5)
          {
            CFRetain(v5);
          }

          v6 = *(a1 + 2);
          if (v6)
          {
            CFRelease(v6);
          }

          v7 = *(a2 + 8);
          *(a1 + 3) = *(a2 + 24);
          goto LABEL_28;
        }

        goto LABEL_29;
      }
    }

LABEL_23:
    v10 = *(a2 + 16);
    if (v10)
    {
      CFRetain(v10);
    }

    v11 = *(a1 + 2);
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_27;
  }

  if (*a1 <= 2u)
  {
    if (*a1)
    {
      goto LABEL_23;
    }

LABEL_27:
    v7 = *(a2 + 8);
LABEL_28:
    *(a1 + 4) = v7;
    return;
  }

  if (v4 - 4 < 2)
  {
LABEL_15:
    v8 = *(a2 + 8);
    *(a1 + 4) = *(a2 + 16);
    *(a1 + 1) = v8;
    return;
  }

  if (v4 == 3)
  {
    v9 = *(a1 + 1);
    if (!v9 || !TSWPAttributeArray::hasSingleData(v9) && !TSWPAttributeArray::hasPairedData(*(a1 + 1)))
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

LABEL_29:
  v12 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::assignFrom(const TSWPStorageTransactionObject &)");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 578, 0, "Bad undo kind for assign from.");

  v19 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v19, v17, v18);
}

uint64_t sub_276EE9ADC(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  *a1 = v3;
  *(a1 + 4) = *(a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v3)
  {
    sub_276EE9920(a1, a2);
  }

  return a1;
}

void sub_276EE9B20(unsigned __int16 *a1, const char *a2)
{
  v2 = *a1;
  if (v2 > 0xA)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::adjustRetainCount(BOOL)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 620, 0, "Bad undo kind for adjust retain count.");

    v15 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v15, v13, v14);
  }

  else
  {
    v3 = 1 << v2;
    if ((v3 & 0x175) == 0)
    {
      v4 = a2;
      if ((v3 & 0x682) != 0 || (v7 = *(a1 + 1), !v7) || TSWPAttributeArray::hasObjects(v7))
      {
        v6 = *(a1 + 2);
        if (v6)
        {
          if (v4)
          {

            CFRetain(v6);
          }

          else
          {

            CFRelease(v6);
          }
        }
      }
    }
  }
}

unsigned __int16 *sub_276EE9C78(unsigned __int16 *a1)
{
  if (*a1)
  {
    sub_276EE9B20(a1, 0);
  }

  return a1;
}

void sub_276EE9CB8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v7 = a3;
  cf = v7;
  if (HIDWORD(a2))
  {
    v10 = MEMORY[0x277D81150];
    a2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setTextTransaction(TSWPCharIndex, NSString *__strong, NSUInteger)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v13, a2, v12, 636, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    LODWORD(a2) = -1;
    v7 = cf;
  }

  *(a1 + 8) = a2;
  if (v7)
  {
    CFRetain(cf);
  }

  v9 = cf;
  *(a1 + 16) = cf;
  if (HIDWORD(a4))
  {
    v16 = MEMORY[0x277D81150];
    a4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setTextTransaction(TSWPCharIndex, NSString *__strong, NSUInteger)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v19, a4, v18, 641, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    LODWORD(a4) = -1;
    v9 = cf;
  }

  *(a1 + 12) = a4;
}

void sub_276EE9E78(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v7 = a4;
  cf = v7;
  if (HIDWORD(a2))
  {
    v9 = MEMORY[0x277D81150];
    a2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setInsertAttributeTransaction(TSWPAttributeIndex, TSWPAttributeCount, __strong id)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v12, a2, v11, 674, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    LODWORD(a2) = -1;
    v7 = cf;
  }

  *(a1 + 8) = a2;
  if (HIDWORD(a3))
  {
    v15 = MEMORY[0x277D81150];
    a3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setInsertAttributeTransaction(TSWPAttributeIndex, TSWPAttributeCount, __strong id)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v18, a3, v17, 675, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    LODWORD(a3) = -1;
    v7 = cf;
  }

  *(a1 + 12) = a3;
  if (v7)
  {
    CFRetain(cf);
  }

  *(a1 + 16) = cf;
}

void sub_276EEA038(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v7 = a4;
  cf = v7;
  if (HIDWORD(a2))
  {
    v9 = MEMORY[0x277D81150];
    a2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setCharIndexTransaction(TSWPCharIndex, TSWPAttributeCount, __strong id)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v12, a2, v11, 646, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    LODWORD(a2) = -1;
    v7 = cf;
  }

  *(a1 + 8) = a2;
  if (HIDWORD(a3))
  {
    v15 = MEMORY[0x277D81150];
    a3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setCharIndexTransaction(TSWPCharIndex, TSWPAttributeCount, __strong id)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v18, a3, v17, 647, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    LODWORD(a3) = -1;
    v7 = cf;
  }

  *(a1 + 12) = a3;
  if (v7)
  {
    CFRetain(cf);
  }

  *(a1 + 16) = cf;
}

uint64_t sub_276EEA1F8(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v6 = result;
  if (HIDWORD(a2))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt32)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 702, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    a2 = 0xFFFFFFFFLL;
  }

  v6[2] = a2;
  v6[3] = a4;
  if (HIDWORD(a3))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt32)");
    a3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v17, v15, a3, 704, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    LODWORD(a3) = -1;
  }

  v6[4] = a3;
  return result;
}

uint64_t sub_276EEA364(uint64_t result, unint64_t a2, unint64_t a3, __int16 a4, __int16 a5)
{
  v8 = result;
  if (HIDWORD(a2))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt16, UInt16)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 693, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    a2 = 0xFFFFFFFFLL;
  }

  *(v8 + 8) = a2;
  *(v8 + 12) = a4;
  *(v8 + 14) = a5;
  if (HIDWORD(a3))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt16, UInt16)");
    a3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v19, v17, a3, 696, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    LODWORD(a3) = -1;
  }

  *(v8 + 16) = a3;
  return result;
}

void sub_276EEA4DC(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v7 = a4;
  cf = v7;
  if (HIDWORD(a2))
  {
    v9 = MEMORY[0x277D81150];
    a2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setAttributeIndexTransaction(TSWPAttributeIndex, TSWPCharIndex, __strong id)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v12, a2, v11, 664, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    LODWORD(a2) = -1;
    v7 = cf;
  }

  *(a1 + 8) = a2;
  if (HIDWORD(a3))
  {
    v15 = MEMORY[0x277D81150];
    a3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPStorageTransactionObject::setAttributeIndexTransaction(TSWPAttributeIndex, TSWPCharIndex, __strong id)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v18, a3, v17, 665, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    LODWORD(a3) = -1;
    v7 = cf;
  }

  *(a1 + 12) = a3;
  if (v7)
  {
    CFRetain(cf);
  }

  *(a1 + 16) = cf;
}

uint64_t sub_276EEA69C(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  if (HIDWORD(a2))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 685, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    a2 = 0xFFFFFFFFLL;
  }

  v6[2] = a2;
  if (HIDWORD(a3))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)");
    a3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v17, v15, a3, 686, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    LODWORD(a3) = -1;
  }

  v6[3] = a3;
  if (a4 >= 0x80000000)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)");
    a4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v23, v21, a4, 687, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    LODWORD(a4) = 0x7FFFFFFF;
  }

  else if (a4 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)");
    a4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v29, v27, a4, 687, 0, "Out-of-bounds type assignment was clamped to min");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    LODWORD(a4) = 0x80000000;
  }

  v6[4] = a4;
  return result;
}

uint64_t sub_276EEA924(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = result;
  if (HIDWORD(a2))
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setReplaceCharIndexTransaction(TSWPAttributeIndex, TSWPCharIndex)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 656, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    a2 = 0xFFFFFFFFLL;
  }

  *(v4 + 8) = a2;
  if (HIDWORD(a3))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageTransactionObject::setReplaceCharIndexTransaction(TSWPAttributeIndex, TSWPCharIndex)");
    a3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v15, v13, a3, 657, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    LODWORD(a3) = -1;
  }

  *(v4 + 12) = a3;
  *(v4 + 16) = 0;
  return result;
}

void sub_276EEAA88(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  cf = v5;
  if (HIDWORD(a2))
  {
    v7 = MEMORY[0x277D81150];
    a2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSWPStorageTransactionObject::setCTDateTransaction(TSWPAttributeIndex, NSDate *__strong)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageAttributeAction.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v10, a2, v9, 717, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    LODWORD(a2) = -1;
    v5 = cf;
  }

  *(a1 + 8) = a2;
  if (v5)
  {
    CFRetain(cf);
  }

  *(a1 + 16) = cf;
}

uint64_t TSWPAttributeArray::TSWPAttributeArray(uint64_t result, unsigned __int8 a2)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2886069A0;
  *(result + 24) = 0;
  *(result + 28) = *(result + 28) & 0xFE00 | a2;
  return result;
}

void sub_276EEABDC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  switch(a2)
  {
    case 0:
      v10 = v59;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_276EEB38C;
      v59[3] = &unk_27A6F6468;
      v59[4] = v8;
      v33 = v7;
      v34 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v33, v35, a3, v34, 0, v59);
      goto LABEL_13;
    case 1:
    case 10:
    case 11:
    case 13:
    case 14:
    case 18:
      TSUSetCrashReporterInfo();
      v42 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "void TSWPReadAttributeTableReferenceMessage(TSPUnarchiver *__strong, TSWPAttributeArrayKind, const TSP::Reference &, void (^__strong)(id  _Nullable __strong))", "void TSWPReadAttributeTableReferenceMessage(TSPUnarchiver *__strong, TSWPAttributeArrayKind, const TSP::Reference &, void (^__strong)(id  _Nullable __strong))", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm", 122, a2);
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v44, v46, 122, 1, "Can't read object for attribute table type %lu", a2);

      TSUCrashBreakpoint();
      abort();
    case 2:
      v10 = v58;
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = sub_276EEB39C;
      v58[3] = &unk_27A6F6490;
      v58[4] = v8;
      v30 = v7;
      v31 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v30, v32, a3, v31, 0, v58);
      goto LABEL_13;
    case 3:
      v10 = v57;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_276EEB3AC;
      v57[3] = &unk_27A6F64B8;
      v57[4] = v8;
      v36 = v7;
      v37 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v36, v38, a3, v37, 0, v57);
      goto LABEL_13;
    case 4:
    case 5:
      v10 = v56;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_276EEB3BC;
      v56[3] = &unk_27A6F64E0;
      v56[4] = v8;
      v17 = v7;
      v18 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v19, a3, v18, 0, v56);
      goto LABEL_13;
    case 6:
    case 7:
    case 12:
    case 21:
      v10 = v55;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_276EEB3CC;
      v55[3] = &unk_27A6F6508;
      v55[4] = v8;
      v11 = v7;
      v12 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v13, a3, v12, 0, v55);
      goto LABEL_13;
    case 8:
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_276EEB488;
      v53[3] = &unk_27A6F6530;
      v54 = v8;
      sub_276EEB3DC(v7, a3, &unk_28865EC20, v53);
      v23 = &v54;
      goto LABEL_14;
    case 9:
      v10 = v52;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_276EEB498;
      v52[3] = &unk_27A6F6558;
      v52[4] = v8;
      v39 = v7;
      v40 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v39, v41, a3, v40, 0, v52);
      goto LABEL_13;
    case 15:
    case 16:
      v10 = v51;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_276EEB4A8;
      v51[3] = &unk_27A6F6580;
      v51[4] = v8;
      v20 = v7;
      v21 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v20, v22, a3, v21, 0, v51);
      goto LABEL_13;
    case 17:
    case 19:
      v10 = v50;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_276EEB4B8;
      v50[3] = &unk_27A6F65A8;
      v50[4] = v8;
      v14 = v7;
      v15 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v16, a3, v15, 0, v50);
      goto LABEL_13;
    case 20:
      v10 = v49;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_276EEB4C8;
      v49[3] = &unk_27A6F65D0;
      v49[4] = v8;
      v24 = v7;
      v25 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v26, a3, v25, 0, v49);
      goto LABEL_13;
    case 22:
      v10 = v48;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_276EEB4D8;
      v48[3] = &unk_27A6F65F8;
      v48[4] = v8;
      v27 = v7;
      v28 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v27, v29, a3, v28, 0, v48);
LABEL_13:
      v23 = (v10 + 4);

LABEL_14:
      break;
    default:
      break;
  }
}

void sub_276EEB3DC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_276EEB4E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  switch(a2)
  {
    case 0:
      v10 = v59;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_276EEBC98;
      v59[3] = &unk_27A6F6468;
      v59[4] = v8;
      v33 = v7;
      v34 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v33, v35, a3, v34, 0, v59);
      goto LABEL_13;
    case 1:
    case 10:
    case 11:
    case 13:
    case 14:
    case 18:
      TSUSetCrashReporterInfo();
      v42 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "void TSWPReadAttributeTableWeakReferenceMessage(TSPUnarchiver *__strong, TSWPAttributeArrayKind, const TSP::Reference &, void (^__strong)(id  _Nullable __strong))", "void TSWPReadAttributeTableWeakReferenceMessage(TSPUnarchiver *__strong, TSWPAttributeArrayKind, const TSP::Reference &, void (^__strong)(id  _Nullable __strong))", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm", 188, a2);
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v44, v46, 188, 1, "Can't read object for attribute table type %lu", a2);

      TSUCrashBreakpoint();
      abort();
    case 2:
      v10 = v58;
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = sub_276EEBCA8;
      v58[3] = &unk_27A6F6490;
      v58[4] = v8;
      v30 = v7;
      v31 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v30, v32, a3, v31, 0, v58);
      goto LABEL_13;
    case 3:
      v10 = v57;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_276EEBCB8;
      v57[3] = &unk_27A6F64B8;
      v57[4] = v8;
      v36 = v7;
      v37 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v36, v38, a3, v37, 0, v57);
      goto LABEL_13;
    case 4:
    case 5:
      v10 = v56;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_276EEBCC8;
      v56[3] = &unk_27A6F64E0;
      v56[4] = v8;
      v17 = v7;
      v18 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v17, v19, a3, v18, 0, v56);
      goto LABEL_13;
    case 6:
    case 7:
    case 12:
    case 21:
      v10 = v55;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_276EEBCD8;
      v55[3] = &unk_27A6F6508;
      v55[4] = v8;
      v11 = v7;
      v12 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v11, v13, a3, v12, 0, v55);
      goto LABEL_13;
    case 8:
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_276EEBD94;
      v53[3] = &unk_27A6F6530;
      v54 = v8;
      sub_276EEBCE8(v7, a3, &unk_28865EC20, v53);
      v23 = &v54;
      goto LABEL_14;
    case 9:
      v10 = v52;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_276EEBDA4;
      v52[3] = &unk_27A6F6558;
      v52[4] = v8;
      v39 = v7;
      v40 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v39, v41, a3, v40, 0, v52);
      goto LABEL_13;
    case 15:
    case 16:
      v10 = v51;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_276EEBDB4;
      v51[3] = &unk_27A6F6580;
      v51[4] = v8;
      v20 = v7;
      v21 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v20, v22, a3, v21, 0, v51);
      goto LABEL_13;
    case 17:
    case 19:
      v10 = v50;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_276EEBDC4;
      v50[3] = &unk_27A6F65A8;
      v50[4] = v8;
      v14 = v7;
      v15 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v16, a3, v15, 0, v50);
      goto LABEL_13;
    case 20:
      v10 = v49;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_276EEBDD4;
      v49[3] = &unk_27A6F65D0;
      v49[4] = v8;
      v24 = v7;
      v25 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v24, v26, a3, v25, 0, v49);
      goto LABEL_13;
    case 22:
      v10 = v48;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_276EEBDE4;
      v48[3] = &unk_27A6F65F8;
      v48[4] = v8;
      v27 = v7;
      v28 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v27, v29, a3, v28, 0, v48);
LABEL_13:
      v23 = (v10 + 4);

LABEL_14:
      break;
    default:
      break;
  }
}

void sub_276EEBCE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void TSWPAttributeArray::setCapacity(TSWPAttributeArray *this, unint64_t a2)
{
  if (*(this + 6) < a2)
  {
    v4 = malloc_size(this->var1);
    v5 = malloc_type_realloc(this->var1, 16 * a2, 0x10820408DE112D3uLL);
    this->var1 = v5;
    if (a2 > v4 >> 4)
    {
      v6 = &v5[v4 >> 4];

      bzero(v6, 16 * (a2 - (v4 >> 4)));
    }
  }
}

unint64_t TSWPAttributeArray::shrinkAllocationIfNecessary(TSWPAttributeArray *this)
{
  v2 = *(this + 6);
  result = malloc_size(this->var1);
  if (result >= 0x90 && result >> 4 >= 2 * v2)
  {
    v5 = 4;
    if (v2 > 4)
    {
      v5 = v2;
    }

    result = malloc_type_realloc(this->var1, 16 * v5, 0x10820408DE112D3uLL);
    this->var1 = result;
  }

  return result;
}

void TSWPAttributeArray::nonUndoableFastCopy(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v9 = a3;
  v10 = *(a2 + 24);
  TSWPAttributeArray::setCapacity(a1, v10);
  if ((*(a1 + 28) & 0xFE) == 4)
  {
    if (a4)
    {
LABEL_3:
      v18 = 0;
      goto LABEL_6;
    }
  }

  else if ((a4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v18 = objc_msgSend_preserveParentStorageContext(MEMORY[0x277D805F0], v11, v12);
LABEL_6:
  if (v10)
  {
    v13 = 0;
    for (i = 0; i != v10; ++i)
    {
      v15 = *(a2 + 16);
      v20 = *(*(a2 + 8) + v13);
      v19 = 1;
      LODWORD(v17) = a4;
      shouldAddRecord_attributeArrayKind_atIndex_sourceStorage_objectContext_flags_actionState = objc_msgSend_cfRetainedNonUndoableFastCopyAttributeRecord_shouldAddRecord_attributeArrayKind_atIndex_sourceStorage_objectContext_flags_actionState_(*(a1 + 16), v11, &v20, &v19, *(a1 + 28), i, v15, v9, v17, a5);
      if (v19 == 1)
      {
        TSWPAttributeArray::nonUndoableInsertAttribute(a1, &v20, i, v18, a5);
      }

      if (shouldAddRecord_attributeArrayKind_atIndex_sourceStorage_objectContext_flags_actionState)
      {
        CFRelease(shouldAddRecord_attributeArrayKind_atIndex_sourceStorage_objectContext_flags_actionState);
      }

      v13 += 16;
    }
  }
}

void TSWPAttributeArray::nonUndoableInsertAttribute(unsigned int *a1, _OWORD *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v29 = a4;
  if (a1[6] < a3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void TSWPAttributeArray::nonUndoableInsertAttribute(const TSWPAttributeRecord &, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 520, 0, "insertAttribute: bad count.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = TSWPAttributeRecord::object(a2, *(a1 + 28));
  v18 = (*(*a1 + 408))(a1, 1, v17, a3, 1);

  v19 = *(a1 + 14) - 1;
  if (v19 < 0x12u && ((0x20601u >> v19) & 1) != 0)
  {
    IsEquivalentToObject = 0;
  }

  else
  {
    if (a1[6] <= a3)
    {
      v21 = 0;
    }

    else
    {
      v21 = TSWPAttributeRecord::object(*(a1 + 1) + 16 * a3, *(a1 + 14));
    }

    IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(*(a1 + 28), v18, v21);
    if ((IsEquivalentToObject & 1) == 0)
    {
      (*(*a1 + 376))(a1, v18, v29, a5);
    }
  }

  (*(*a1 + 328))(a1, a2);
  v22 = a1[6];
  if (v22 >= malloc_size(*(a1 + 1)) >> 4)
  {
    TSWPAttributeArray::setCapacity(a1, 2 * a1[6] + 2);
  }

  v23 = 16 * (a1[6] - a3);
  memmove((*(a1 + 1) + 16 * a3 + 16), (*(a1 + 1) + 16 * a3), v23);
  if (v23)
  {
    v26 = (*(a1 + 1) + 16 * a3);
    *v26 = 0;
    v26[1] = 0;
  }

  *(*(a1 + 1) + 16 * a3) = *a2;
  ++a1[6];
  v27 = *(a1 + 28);
  if (v27 > 0x12 || ((1 << v27) & 0x40C02) == 0)
  {
    if (IsEquivalentToObject)
    {
      if (objc_msgSend_preserveParentStorage(v29, v24, v25) & 1) == 0 && (objc_opt_respondsToSelector())
      {
        objc_msgSend_setParentStorage_(v18, v28, *(a1 + 2));
      }
    }

    else
    {
      (*(*a1 + 384))(a1, v18, v29, a5);
    }
  }
}

unint64_t TSWPAttributeArray::charIndexForAttributeIndex(TSWPAttributeArray *this, const char *a2)
{
  v4 = *(this + 6);
  if (v4 <= a2)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPCharIndex TSWPAttributeArray::charIndexForAttributeIndex(TSWPAttributeIndex) const");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 258, 0, "TSWPAttributeArray: charIndexForAttributeIndex: bad index (kind=%lu) %lu vs. %lu", *(this + 28), a2, *(this + 6));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v4 = *(this + 6);
  }

  if (v4 <= a2)
  {
    return 0;
  }

  else
  {
    return this->var1[a2].var0;
  }
}

id TSWPAttributeRecord::object(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x12 && ((1 << a2) & 0x40C02) != 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t TSWPAttributeArray::effectiveAttributeIndexForCharIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v2 = *(this + 6);
  if (!v2)
  {
    v12 = 0;
LABEL_14:
    v16 = v12 - 1;
    if (v2)
    {
      return v16;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  var1 = this->var1;
  v5 = var1;
  v6 = *(this + 6);
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[v6 >> 1];
    var0 = v8->var0;
    v9 = v8 + 1;
    v6 += ~(v6 >> 1);
    if (var0 < a2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  v11 = v5 - var1;
  v12 = *(this + 6);
  if (v11 >= v2)
  {
    goto LABEL_14;
  }

  v13 = TSWPAttributeArray::charIndexForAttributeIndex(this, (v5 - var1));
  v14 = v11 - 1;
  if (v5 == var1)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v13 == a2)
  {
    return v5 - var1;
  }

  else
  {
    return v14;
  }
}

const char *TSWPAttributeArray::exactAttributeIndexForCharIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v4 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    if (TSWPAttributeArray::charIndexForAttributeIndex(this, v4) == a2)
    {
      return v6;
    }
  }

  return v5;
}

unint64_t TSWPAttributeArray::findObject(TSWPAttributeArray *this, objc_object *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(this + 6);
  if (v6 <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  if (v7 >= v6)
  {
LABEL_8:
    if (v7)
    {
      v11 = 0;
      v9 = 0;
      while (1)
      {
        v12 = TSWPAttributeRecord::object(&this->var1[v11], *(this + 28));

        if (v12 == v5)
        {
          break;
        }

        ++v9;
        ++v11;
        if (v7 == v9)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = v7;
    v9 = v7;
    while (1)
    {
      v10 = TSWPAttributeRecord::object(&this->var1[v8], *(this + 28));

      if (v10 == v5)
      {
        break;
      }

      ++v9;
      ++v8;
      if (v9 >= *(this + 6))
      {
        goto LABEL_8;
      }
    }
  }

  return v9;
}

uint64_t TSWPAttributeArray::characterCount(TSWPAttributeArray *this, const char *a2, uint64_t a3)
{
  var2 = this->var2;
  if (!var2)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual NSUInteger TSWPAttributeArray::characterCount() const");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 342, 0, "invalid nil value for '%{public}s'", "_storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    var2 = this->var2;
  }

  return objc_msgSend_characterCount(var2, a2, a3);
}

unint64_t TSWPAttributeArray::rangeForAttributeIndex(TSWPAttributeArray *this, const char *a2)
{
  v4 = TSWPAttributeArray::charIndexForAttributeIndex(this, a2);
  if ((a2 + 1) >= *(this + 6))
  {
    (*(this->var0 + 13))(this);
  }

  else
  {
    TSWPAttributeArray::charIndexForAttributeIndex(this, a2 + 1);
  }

  return v4;
}

NSUInteger TSWPAttributeArray::rangeForAttributeRange(TSWPAttributeArray *this, _NSRange a2)
{
  v2 = MEMORY[0x277D81490];
  v3 = *MEMORY[0x277D81490];
  v4 = *(MEMORY[0x277D81490] + 8);
  if (a2.location >= a2.location + a2.length)
  {
    return *MEMORY[0x277D81490];
  }

  length = a2.length;
  location = a2.location;
  do
  {
    v9.location = TSWPAttributeArray::rangeForAttributeIndex(this, location);
    v9.length = v8;
    if (v3 != *v2 || v4 != v2[1])
    {
      v12.location = v3;
      v12.length = v4;
      v9 = NSUnionRange(v12, v9);
    }

    ++location;
    v3 = v9.location;
    v4 = v9.length;
    --length;
  }

  while (length);
  return v9.location;
}

unint64_t TSWPAttributeArray::rangeForCharIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v3 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v4 = TSWPAttributeArray::charIndexForAttributeIndex(this, v3);
    v5 = v6 + 1;
  }

  if (v5 >= *(this + 6))
  {
    (*(this->var0 + 13))(this);
  }

  else
  {
    TSWPAttributeArray::charIndexForAttributeIndex(this, v5);
  }

  return v4;
}

BOOL TSWPAttributeArray::isRangeStartingAtEndOfStorage(TSWPAttributeArray *this, _NSRange a2)
{
  if (*(this + 28) != 12)
  {
    return 0;
  }

  length = a2.length;
  return a2.location == (*(this->var0 + 13))(this) && length == 0;
}

void TSWPAttributeArray::willInsertAttributeObject(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v7 = a3;
  v8 = *(a1 + 28);
  v9 = v8 > 0x15;
  v10 = (1 << v8) & 0x3B8140;
  if (!v9 && v10 != 0 && v18 != 0)
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      if ((objc_msgSend_isDOLCSuppressed(v13, v5, v6) & 1) == 0)
      {
        v17 = objc_msgSend_documentRoot(*(a1 + 16), v14, v15);
        if (v17)
        {
          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v18, v16, v17, v7);
        }
      }
    }
  }
}

void sub_276EECB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void TSWPAttributeArray::didInsertAttribute(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v7 = a3;
  if (v18)
  {
    if (objc_msgSend_preserveParentStorage(v7, v5, v6) & 1) == 0 && (objc_opt_respondsToSelector())
    {
      objc_msgSend_setParentStorage_(v18, v8, *(a1 + 16));
    }

    v10 = *(a1 + 28);
    if (v10 <= 0x15 && ((1 << v10) & 0x3B8140) != 0 && (objc_msgSend_preserveParentStorage(v7, v8, v9) & 1) == 0)
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        if ((objc_msgSend_isDOLCSuppressed(v13, v11, v12) & 1) == 0)
        {
          v17 = objc_msgSend_documentRoot(*(a1 + 16), v14, v15);
          if (v17)
          {
            objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v18, v16, v17, v7);
          }
        }
      }
    }
  }
}

void sub_276EECC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

BOOL TSWPAttributeArray::willDeleteAttribute(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = v6;
  v8 = *(a1 + 28);
  v9 = v8 == 11 || v8 == 18;
  if (!v9 && v6 && v8 != 1 && v8 != 10)
  {
    v15 = objc_opt_respondsToSelector();
    if ((v15 & 1) == 0 || (objc_msgSend_parentStorage(v7, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), v17 = *(a1 + 16), v16, v16 == v17))
    {
      v18 = a4 + 1;
      if (a4 + 1 >= *(a1 + 24))
      {
        v19 = 0;
      }

      else
      {
        v19 = TSWPAttributeRecord::object(*(a1 + 8) + 16 * v18, *(a1 + 28));
      }

      if (a4)
      {
        v20 = TSWPAttributeRecord::object(*(a1 + 8) + 16 * a4 - 16, *(a1 + 28));
      }

      else
      {
        v20 = 0;
      }

      IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(*(a1 + 28), v7, v19);
      if ((TSWPAttributeArray::objectIsEquivalentToObject(*(a1 + 28), v7, v20) | IsEquivalentToObject))
      {
        v10 = 0;
        if ((v15 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v15)
        {
          v24 = objc_msgSend_parentStorage(v7, v22, v23);
        }

        else
        {
          v24 = 0;
        }

        v10 = 0;
        v25 = *(a1 + 28);
        if (v25 <= 0x15 && ((1 << v25) & 0x3B8140) != 0)
        {
          v26 = *(a1 + 16);
          if (v26 && (objc_msgSend_isDOLCSuppressed(v26, v22, v23) & 1) == 0)
          {
            v30 = objc_msgSend_documentRoot(*(a1 + 16), v27, v28);
            v10 = v30 != 0;
            if (v30)
            {
              if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
              {
                objc_msgSend_performSelector_withObject_withObject_(v7, v29, sel_willBeRemovedFromDocumentRoot_storage_, v30, v24);
              }

              else
              {
                objc_msgSend_willBeRemovedFromDocumentRoot_(v7, v29, v30);
              }
            }
          }

          else
          {
            v10 = 0;
          }
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (v18 >= *(a1 + 24))
      {
        v32 = 0;
      }

      else
      {
        v31 = TSWPAttributeRecord::object(*(a1 + 8) + 16 * v18, *(a1 + 28));
        v32 = v31 == v7;
      }

      if (a4)
      {
        v33 = TSWPAttributeRecord::object(*(a1 + 8) + 16 * a4 - 16, *(a1 + 28));
        v34 = v33 == v7;

        if (v34 || v32)
        {
          goto LABEL_47;
        }
      }

      else if (v32)
      {
LABEL_47:

        goto LABEL_7;
      }

      objc_msgSend_setParentStorage_(v7, v22, 0);
      goto LABEL_47;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

BOOL TSWPAttributeArray::hasObjects(uint64_t a1)
{
  v2 = a1 != 1 && a1 != 10;
  if (a1 == 18)
  {
    v2 = 0;
  }

  return a1 != 11 && v2;
}

uint64_t TSWPAttributeArray::objectIsEquivalentToObject(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v5 == v6)
  {
    isEqualToStyleDiff = 1;
  }

  else
  {
    isEqualToStyleDiff = 0;
    if (v5 && v6)
    {
      v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);
      if (v13 == v5)
      {
        goto LABEL_19;
      }

      v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);

      if (v14 != v9)
      {
        isEqualToStyleDiff = 0;
        if (a1 <= 11)
        {
          if (a1 >= 6 && (a1 - 8) >= 4)
          {
            if ((a1 - 6) >= 2)
            {
              goto LABEL_32;
            }

            goto LABEL_30;
          }

LABEL_16:
          objc_opt_class();
          v13 = TSUDynamicCast();
          if (v13)
          {
            objc_opt_class();
            v17 = TSUDynamicCast();
            if (v17)
            {
              isEqualToStyleDiff = objc_msgSend_isEqualToStyleDiff_(v13, v16, v17);
            }

            else
            {
              isEqualToStyleDiff = 0;
            }

            goto LABEL_24;
          }

LABEL_19:
          isEqualToStyleDiff = 0;
LABEL_24:

          goto LABEL_32;
        }

        if (a1 > 0x16)
        {
          goto LABEL_20;
        }

        if (((1 << a1) & 0x3A0000) != 0)
        {
          goto LABEL_30;
        }

        if (((1 << a1) & 0x18000) == 0)
        {
          if (((1 << a1) & 0x440000) != 0)
          {
            goto LABEL_16;
          }

LABEL_20:
          if ((a1 - 13) < 2)
          {
            isEqualToString = objc_msgSend_isEqualToString_(v5, v15, v9);
LABEL_31:
            isEqualToStyleDiff = isEqualToString;
            goto LABEL_32;
          }

          if (a1 != 12)
          {
            goto LABEL_32;
          }

LABEL_30:
          isEqualToString = objc_msgSend_isEquivalentToObject_(v5, v15, v9);
          goto LABEL_31;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();
        if (((isKindOfClass | v20) & 1) == 0)
        {
          goto LABEL_30;
        }

        if (isKindOfClass & v20)
        {
          isEqualToString = objc_msgSend_isEqualToDate_(v5, v15, v9);
          goto LABEL_31;
        }
      }

      isEqualToStyleDiff = 0;
    }
  }

LABEL_32:

  return isEqualToStyleDiff;
}

void TSWPAttributeArray::didDeleteAttributeObject(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v10 = v5;
    v8 = objc_msgSend_documentRoot(*(a1 + 16), v6, v7);
    objc_msgSend_wasRemovedFromDocumentRoot_(v10, v9, v8);

    v5 = v10;
  }
}

void TSWPAttributeArray::nonUndoableInsertAttribute(unsigned int *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  *&v6 = a3;
  *(&v6 + 1) = a2;
  TSWPAttributeArray::nonUndoableInsertAttribute(a1, &v6, a4, a5, a6);
}

void TSWPAttributeRecord::TSWPAttributeRecord(TSWPAttributeRecord *this, unint64_t a2, objc_object *a3)
{
  this->var0 = a2;
  this->var1.var0 = a3;
}

{
  this->var0 = a2;
  this->var1.var0 = a3;
}

void TSWPAttributeArray::nonUndoableDeleteAttributes(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  memset(__p, 0, sizeof(__p));
  sub_276E3BC18(&v50, a3);
  sub_276E0386C(__p, a3);
  v8 = a3 + a2;
  if (a3 + a2 > *(a1 + 24))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual void TSWPAttributeArray::nonUndoableDeleteAttributes(TSWPAttributeIndex, TSWPAttributeCount, TSWPStorageActionState *)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 582, 0, "Unexpected end index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (v8 > a2)
  {
    v16 = 16 * a2;
    v17 = a3;
    do
    {
      v48 = 0;
      v18 = TSWPAttributeRecord::object(*(a1 + 8) + v16, *(a1 + 28));
      if (v18)
      {
        v19 = (*(*a1 + 408))(a1, 0, v18, a2, a3);
        v20 = v48;
        v48 = v19;
      }

      sub_276E3BCA8(&v50, &v48);
      v47 = 0;
      sub_276E01794(__p, &v47);

      v16 += 16;
      --v17;
    }

    while (v17);
  }

  if (a3)
  {
    if (a3 != (v51 - v50) >> 3)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual void TSWPAttributeArray::nonUndoableDeleteAttributes(TSWPAttributeIndex, TSWPAttributeCount, TSWPStorageActionState *)");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 596, 0, "Unexpected DOLC vector count.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    if (v8 > a2)
    {
      v28 = 0;
      v29 = 16 * a2;
      v30 = a3;
      v31 = a2;
      do
      {
        if (v28 < (v51 - v50) >> 3)
        {
          v32 = *(v50 + 8 * v28);
          if (v32)
          {
            v33 = (*(*a1 + 392))(a1, v32, a4, v31);
            v34 = v28 >> 6;
            v35 = 1 << v28;
            if (v33)
            {
              v36 = *(__p[0] + v34) | v35;
            }

            else
            {
              v36 = *(__p[0] + v34) & ~v35;
            }

            *(__p[0] + v34) = v36;
          }

          ++v28;
        }

        (*(*a1 + 336))(a1, *(a1 + 8) + v29);
        ++v31;
        v29 += 16;
        --v30;
      }

      while (v30);
    }

    memmove((*(a1 + 8) + 16 * a2), (*(a1 + 8) + 16 * v8), 16 * (*(a1 + 24) - v8));
    *(a1 + 24) -= a3;
    v39 = *(a1 + 28);
    if (v39 <= 0x15 && ((1 << v39) & 0x3B8140) != 0)
    {
      v40 = *(a1 + 16);
      if (v40)
      {
        if ((objc_msgSend_isDOLCSuppressed(v40, v37, v38) & 1) == 0)
        {
          v41 = v50;
          v42 = v51;
          if (v50 != v51)
          {
            v43 = 0;
            v44 = 0;
            do
            {
              v45 = *(v41 + 8 * v44);
              if (v45)
              {
                (*(*a1 + 400))(a1, v45, (*(__p[0] + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1, a4);
              }

              ++v44;
              v43 += 8;
            }

            while (v41 + v43 != v42);
          }
        }
      }
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  __p[0] = &v50;
  sub_276E3C994(__p);
}

void sub_276EED6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_276E3C994(&__p);
  _Unwind_Resume(a1);
}

uint64_t TSWPAttributeArray::nonUndoableAdjustCharIndexStartingAtAttributeIndex(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  v5 = v4 > a3;
  v6 = v4 - a3;
  if (v5)
  {
    v7 = (*(result + 8) + 16 * a3);
    do
    {
      *v7 += a4;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

void TSWPAttributeArray::replaceObjectForAttributeIndex(unsigned __int8 *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v16 = a2;
  v9 = a4;
  v10 = *(a1 + 1) + 16 * a3;
  v11 = TSWPAttributeRecord::object(v10, a1[28]);
  if (v11 != v16)
  {
    v12 = (*(*a1 + 408))(a1, 1);
    v13 = TSWPAttributeRecord::object(v10, a1[28]);
    v14 = (*(*a1 + 408))(a1, 0, v13, a3, 1);

    (*(*a1 + 416))(a1, v12, v14);
    (*(*a1 + 376))(a1, v12, v9, a5);
    v15 = (*(*a1 + 392))(a1, v14, a5, a3);
    (*(*a1 + 336))(a1, v10);
    TSWPAttributeRecord::setObject(v10, a1[28], v16);
    (*(*a1 + 328))(a1, v10);
    (*(*a1 + 400))(a1, v14, v15, a5);
    (*(*a1 + 384))(a1, v12, v9, a5);
  }
}

void TSWPAttributeArray::replaceObjectForAttributeIndexForShallowCopy(TSWPAttributeArray *this, objc_object *a2, uint64_t a3)
{
  v7 = a2;
  v5 = &this->var1[a3];
  v6 = TSWPAttributeRecord::object(v5, *(this + 28));
  if (v6 != v7)
  {
    (*(this->var0 + 42))(this, v5);
    TSWPAttributeRecord::setObject(v5, *(this + 28), v7);
    (*(this->var0 + 41))(this, v5);
  }
}

void TSWPAttributeRecord::setObject(uint64_t a1, unint64_t a2, void *a3)
{
  v11 = a3;
  if (a2 <= 0x12 && ((1 << a2) & 0x40C02) != 0)
  {
    TSUSetCrashReporterInfo();
    v5 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSWPAttributeRecord::setObject(TSWPAttributeArrayKind, __strong id)", "void TSWPAttributeRecord::setObject(TSWPAttributeArrayKind, __strong id)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm", 2171);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 2171, 1, "setObject requires attribute kind supports objects.");

    TSUCrashBreakpoint();
    abort();
  }

  *(a1 + 8) = v11;
}

void TSWPAttributeArray::willReplaceCharactersInRangeWithString(TSWPAttributeArray *a1, NSUInteger a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a4;
  if (a3)
  {
    v15.location = a2;
    v15.length = a3;
    v11 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(a1, v15);
    if (v12)
    {
      (*(a1->var0 + 8))(a1, v11, v12, a7);
    }
  }
}

unint64_t TSWPAttributeArray::calculateAttributeRangeForCharacterRange(TSWPAttributeArray *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  v5 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(this, a2.location);
  v6 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(this, location + length);
  if (*(this + 28) == 12)
  {
    v7 = (*(this->var0 + 13))(this);
    if (!length && location == v7)
    {
      TSWPAttributeArray::charIndexForAttributeIndex(this, v6);
      (*(this->var0 + 13))(this);
    }
  }

  return v5;
}

unint64_t TSWPAttributeArray::nonUndoableAdjustCharIndexForCharRangeWithString(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(a1, a3);
  if (a6 != a4 && result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a1 + 24);
    v11 = v10 > result;
    v12 = v10 - result;
    if (v11)
    {
      v13 = (*(a1 + 8) + 16 * result);
      do
      {
        *v13 += a6 - a4;
        v13 += 2;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

unint64_t TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v4 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  result = *(this + 6);
  if (v6 < result)
  {
    if (TSWPAttributeArray::charIndexForAttributeIndex(this, v6) >= a2)
    {
      return v6;
    }

    else
    {
      return (v6 + 1);
    }
  }

  return result;
}

void TSWPAttributeArray::didReplaceCharactersInRangeWithString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a4;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = (*(*a1 + 72))(a1, 5, a2, a3, v17, a5, a7);
    if (a5)
    {
      v16 = v15;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((*(*a1 + 312))(a1))
        {
          (*(*a1 + 304))(a1, a2, a3, a5, v16, a6, a7, a9);
        }
      }
    }
  }
}

uint64_t TSWPAttributeArray::attributeRangeContainingCharacterRange(TSWPAttributeArray *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  v5 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2.location);
  if (length)
  {
    v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, length + location - 1);
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    else if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "NSRange TSWPAttributeArray::attributeRangeContainingCharacterRange(NSRange) const");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 811, 0, "Impossible: Can't have a valid range start and an invalid range end.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

void TSWPAttributeArray::willBeAddedToDocumentRoot(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = *(a1 + 28);
  v7 = v6 > 0x15;
  v8 = (1 << v6) & 0x3B8140;
  v9 = v7 || v8 == 0;
  if (!v9 && *(a1 + 24))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = TSWPAttributeRecord::object(*(a1 + 8) + v10, *(a1 + 28));
      v14 = v12;
      if (v12)
      {
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v12, v13, v16, v5);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_setParentStorage_(v14, v15, *(a1 + 16));
        }
      }

      ++v11;
      v10 += 16;
    }

    while (v11 < *(a1 + 24));
  }
}

void TSWPAttributeArray::wasAddedToDocumentRoot(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(a1 + 28);
  v7 = v6 > 0x15;
  v8 = (1 << v6) & 0x3B8140;
  v9 = v7 || v8 == 0;
  if (!v9 && *(a1 + 24))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = TSWPAttributeRecord::object(*(a1 + 8) + v10, *(a1 + 28));
      v14 = v12;
      if (v12)
      {
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v12, v13, v15, v5);
      }

      ++v11;
      v10 += 16;
    }

    while (v11 < *(a1 + 24));
  }
}

void TSWPAttributeArray::willBeRemovedFromDocumentRoot(TSWPAttributeArray *this, TSKDocumentRoot *a2)
{
  v11 = a2;
  v3 = *(this + 28);
  v4 = v3 > 0x15;
  v5 = (1 << v3) & 0x3B8140;
  v6 = v4 || v5 == 0;
  if (!v6 && *(this + 6))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v10 = TSWPAttributeRecord::object(&this->var1[v7], *(this + 28));
      if (v10)
      {
        if (this->var2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          objc_msgSend_performSelector_withObject_withObject_(v10, v9, sel_willBeRemovedFromDocumentRoot_storage_, v11, this->var2);
        }

        else
        {
          objc_msgSend_willBeRemovedFromDocumentRoot_(v10, v9, v11);
        }
      }

      ++v8;
      ++v7;
    }

    while (v8 < *(this + 6));
  }
}

void TSWPAttributeArray::wasRemovedFromDocumentRoot(TSWPAttributeArray *this, TSKDocumentRoot *a2)
{
  v26 = a2;
  v3 = *(this + 28);
  v4 = v3 > 0x15;
  v5 = (1 << v3) & 0x3B8140;
  v6 = v4 || v5 == 0;
  if (!v6 && *(this + 6))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = TSWPAttributeRecord::object(&this->var1[v7], *(this + 28));
      if (v9)
      {
        if (objc_opt_respondsToSelector())
        {
          v12 = objc_msgSend_parentStorage(v9, v10, v11);
          var2 = this->var2;

          if (v12 != var2)
          {
            v16 = MEMORY[0x277D81150];
            v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "virtual void TSWPAttributeArray::wasRemovedFromDocumentRoot(TSKDocumentRoot *__strong) const");
            v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
            v20 = (*(this->var0 + 27))(this);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v19, 879, 0, "Parent storage is wrong for attributeArray %{public}@.", v20);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
          }

          v24 = objc_msgSend_parentStorage(v9, v14, v15);
          v25 = this->var2;

          if (v24 == v25)
          {
            objc_msgSend_setParentStorage_(v9, v10, 0);
          }
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(v9, v10, v26);
      }

      ++v8;
      ++v7;
    }

    while (v8 < *(this + 6));
  }
}

id TSWPAttributeArray::descriptionAttributeDumpString(TSWPAttributeArray *this, const char *a2, uint64_t a3)
{
  v69 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  if (*(this + 6))
  {
    v4 = 0;
    v5 = 0;
    v66 = *(this + 14);
    v67 = *(this + 14);
    v6 = @"%p";
    if ((v66 - 13) < 2)
    {
      v6 = @"%@";
    }

    v68 = v6;
    do
    {
      v7 = *(this + 14);
      if (*(this + 14) > 0x12u || ((1 << v7) & 0x40C02) == 0)
      {
        v9 = TSWPAttributeRecord::object(&this->var1[v4], v7);
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v64, v68, v9);
      }

      else
      {
        v9 = 0;
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, v68, 0);
      }
      v12 = ;
      if (v67 <= 0x16 && ((1 << v67) & 0x40020D) != 0)
      {
        objc_opt_class();
        v13 = TSUCheckedDynamicCast();
        v16 = objc_msgSend_rootAncestor(v13, v14, v15);
        v19 = objc_msgSend_name(v16, v17, v18);

        if (v19)
        {
          v22 = objc_msgSend_rootAncestor(v13, v20, v21);
          v25 = objc_msgSend_name(v22, v23, v24);
          v27 = objc_msgSend_stringByAppendingFormat_(v12, v26, @" %@ ", v25);

          v12 = v27;
        }

        else
        {
          objc_msgSend_stringByAppendingString_(v12, v20, @" ");
          v12 = v22 = v12;
        }

        v30 = objc_msgSend_parent(v13, v28, v29);

        if (v30)
        {
          if (objc_msgSend_overrideCount(v13, v31, v32) <= 3 && objc_msgSend_overrideCount(v13, v33, v34))
          {
            v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v38 = objc_msgSend_overriddenProperties(v13, v36, v37);
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = sub_276EEEC9C;
            v70[3] = &unk_27A6F6620;
            v39 = v35;
            v71 = v39;
            objc_msgSend_enumeratePropertiesUsingBlock_(v38, v40, v70);

            v42 = objc_msgSend_componentsJoinedByString_(v39, v41, @",");
            v44 = objc_msgSend_stringByAppendingFormat_(v12, v43, @"(%@)", v42);

            v12 = v44;
          }

          else
          {
            v45 = objc_msgSend_overrideCount(v13, v33, v34);
            objc_msgSend_stringByAppendingFormat_(v12, v46, @"(%lu overrides)", v45);
            v12 = v39 = v12;
          }
        }
      }

      if (v66 == 4)
      {
        objc_opt_class();
        v47 = TSUDynamicCast();
        v50 = objc_msgSend_drawable(v47, v48, v49);
        if (v50)
        {
          v51 = objc_opt_class();
          v54 = objc_msgSend_objectUUID(v50, v52, v53);
          v56 = objc_msgSend_stringByAppendingFormat_(v12, v55, @" %@ (%@)", v51, v54);

          v12 = v56;
        }
      }

      v57 = *(this + 28);
      if (v57 <= 0x15 && ((1 << v57) & 0x238040) != 0)
      {
        v58 = objc_msgSend_textAttributeUUIDString(v9, v10, v11);
        v60 = v58;
        if (v58)
        {
          v61 = objc_msgSend_stringByAppendingFormat_(v12, v59, @" (%@)", v58);

          v12 = v61;
        }
      }

      v62 = TSWPAttributeArray::charIndexForAttributeIndex(this, v5);
      objc_msgSend_appendFormat_(v69, v63, @"\t%2d CharIndex: %3lu, Object: %@\n"), v5, v62, v12);

      ++v5;
      ++v4;
    }

    while (*(this + 6) > v5);
  }

  return v69;
}

void sub_276EEEC9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = String();
  objc_msgSend_addObject_(v1, v2, v3);
}

__CFString *TSWPAttributeArray::attributeArrayName(unint64_t a1, const char *a2)
{
  if (a1 >= 0x17)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSWPAttributeArrayKind-0x%lx", a1);
  }

  else
  {
    v3 = off_27A6F66B0[a1];
  }

  return v3;
}

id TSWPAttributeArray::description(TSWPAttributeArray *this, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v5 = (*(this->var0 + 27))(this);
  v6 = (*(this->var0 + 40))(this);
  objc_msgSend_appendFormat_(v4, v7, @"%s <%p> %@: Count: %lu.\n", v6, this, v5, *(this + 6));
  v8 = (*(this->var0 + 26))(this);
  objc_msgSend_appendString_(v4, v9, v8);

  return v4;
}

void sub_276EEEEB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t TSWPAttributeArray::collapseAttributesAroundAttributeIndex(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 28);
  v4 = v3 > 0x16;
  v5 = (1 << v3) & 0x400331;
  if (v4 || v5 == 0)
  {
    v9 = result;
    v10 = *(result + 24);
    if (a2 + 1 < v10)
    {
      result = (*(*result + 360))(result);
      v10 = v9[6];
    }

    if (v10 > a2)
    {
      v11 = *(*v9 + 360);

      return v11(v9, a2, a3);
    }
  }

  return result;
}

void TSWPAttributeArray::enumerateObjectAttributes(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = 0;
  v10 = 0;
  do
  {
    if (v5 >= *(a1 + 24))
    {
      break;
    }

    v7 = TSWPAttributeArray::rangeForAttributeIndex(a1, v5);
    v8 = (*(a1 + 28) & 0xFELL) == 4 ? 1 : v6;
    v9 = TSWPAttributeRecord::object(*(a1 + 8) + v4, *(a1 + 28));
    v3[2](v3, v9, v5, v7, v8, &v10);

    ++v5;
    v4 += 16;
  }

  while ((v10 & 1) == 0);
}

void TSWPAttributeArray::enumerateObjectAttributesInCharacterRange(uint64_t a1, unint64_t a2, NSUInteger a3, void *a4)
{
  v7 = a4;
  if (a3)
  {
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
    v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3 + a2 - 1);
    v10 = v9;
    v16 = 0;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      if (v8 <= v9)
      {
        v11 = 16 * v8;
        do
        {
          v13 = TSWPAttributeArray::rangeForAttributeIndex(a1, v8);
          if ((*(a1 + 28) & 0xFE) == 4)
          {
            v14 = 1;
          }

          else
          {
            v14 = v12;
          }

          v17.location = a2;
          v17.length = a3;
          v18.location = v13;
          v18.length = v14;
          if (NSIntersectionRange(v17, v18).length)
          {
            v15 = TSWPAttributeRecord::object(*(a1 + 8) + v11, *(a1 + 28));
            v7[2](v7, v15, v8, v13, v14, &v16);
          }

          if (v16)
          {
            break;
          }

          ++v8;
          v11 += 16;
        }

        while (v8 <= v10);
      }
    }
  }
}

uint64_t TSWPAttributeArray::begin@<X0>(TSWPAttributeArray *this@<X0>, const _NSRange *a2@<X1>, TSWPAttributeArray **a3@<X8>)
{
  result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2->location);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  *a3 = this;
  a3[1] = v6;
  return result;
}

uint64_t TSWPAttributeArray::end@<X0>(TSWPAttributeArray *this@<X0>, const _NSRange *a2@<X1>, uint64_t a3@<X2>, TSWPAttributeArray **a4@<X8>)
{
  v7 = a2->length + a2->location;
  result = objc_msgSend_length(this->var2, a2, a3);
  if (v7 == result)
  {
    v9 = *(this + 6);
  }

  else
  {
    result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v7 - (a2->length != 0));
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = (result + 1);
    }
  }

  *a4 = this;
  a4[1] = v9;
  return result;
}

void TSWPAttributeArray::loadFromArchive(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_276EEF6DC;
  v44 = sub_276EEF6EC;
  v45 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_276EEF6DC;
  v38 = sub_276EEF6EC;
  v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  if (*(a1 + 24))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      (*(*a1 + 336))(a1, *(a1 + 8) + v10);
      ++v11;
      v10 += 16;
    }

    while (v11 < *(a1 + 24));
  }

  *(a1 + 24) = 0;
  v12 = *(a2 + 24);
  if (v12)
  {
    TSWPAttributeArray::setCapacity(a1, *(a2 + 24));
    v14 = v12;
    do
    {
      v15 = v35[5];
      v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v13);
      objc_msgSend_addObject_(v15, v17, v16);

      --v14;
    }

    while (v14);
    do
    {
      v18 = *(*(a2 + 32) + 8 * v14 + 8);
      if ((~*(v18 + 16) & 3) == 0)
      {
        v19 = TSPNSRangeFromMessage();
        v20 = v41[5];
        v22 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v21, v19, v21);
        objc_msgSend_addObject_(v20, v23, v22);

        v24 = *(a1 + 28);
        if (*(v18 + 32))
        {
          v25 = *(v18 + 32);
        }

        else
        {
          v25 = MEMORY[0x277D80A18];
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = sub_276EEF6F4;
        v32[3] = &unk_27A6F6648;
        v32[4] = &v34;
        v33 = v14;
        sub_276EEABDC(v30, v24, v25, v32);
      }

      ++v14;
    }

    while (v12 != v14);
  }

  v26 = *(a1 + 28);
  v27 = v26 > 0x12;
  v28 = (1 << v26) & 0x40C02;
  if (v27 || v28 == 0)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_276EEF710;
    v31[3] = &unk_27A6F6670;
    v31[4] = &v40;
    v31[5] = &v34;
    v31[6] = a1;
    objc_msgSend_addFinalizeHandler_(v30, v9, v31);
  }

  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
}

{
  v6 = a3;
  v7 = *(a1 + 28);
  if (*(a1 + 24))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      (*(*a1 + 336))(a1, *(a1 + 8) + v8);
      ++v9;
      v8 += 16;
    }

    while (v9 < *(a1 + 24));
  }

  *(a1 + 24) = 0;
  v10 = *(a2 + 24);
  if (v10)
  {
    TSP::Reference::Reference();
    TSWPAttributeArray::setCapacity(a1, v10);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (v7 > 0x12) | (0x3F7FDu >> v7);
    while (1)
    {
      v15 = *(*(a2 + 32) + 8 * v12 + 8);
      v16 = (*(a1 + 8) + v11);
      *v16 = *(v15 + 32);
      v16[1] = 0;
      if (*(v15 + 16))
      {
        break;
      }

      if (((*(a1 + 28) == 0) & v13) == 1)
      {
        MEMORY[0x277CA2BF0](v25, v27);
        v17 = *(a1 + 28);
        if (v14)
        {
          v34 = MEMORY[0x277D85DD0];
          v35 = 3221225472;
          v36 = sub_276EF2858;
          v37 = &unk_27A6F6690;
          v38 = a1;
          v39 = v12;
          sub_276EEABDC(v6, v17, v25, &v34);
        }

        else
        {
          v28 = MEMORY[0x277D85DD0];
          v29 = 3221225472;
          v30 = sub_276EF2904;
          v31 = &unk_27A6F6690;
          v32 = a1;
          v33 = v12;
          sub_276EEB4E8(v6, v17, v25, &v28);
        }

        TSP::Reference::~Reference(v25);
LABEL_20:
        v13 = 1;
      }

LABEL_21:
      ++v12;
      v11 += 16;
      if (v10 == v12)
      {
        *(a1 + 24) = v10;
        TSP::Reference::~Reference(v27);
        goto LABEL_23;
      }
    }

    MEMORY[0x277CA2BF0](v26, *(v15 + 24));
    v18 = *(a1 + 28);
    if (v14)
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = sub_276EF2858;
      v37 = &unk_27A6F6690;
      v38 = a1;
      v39 = v12;
      sub_276EEABDC(v6, v18, v26, &v34);
    }

    else
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = sub_276EF2904;
      v31 = &unk_27A6F6690;
      v32 = a1;
      v33 = v12;
      sub_276EEB4E8(v6, v18, v26, &v28);
    }

    TSP::Reference::~Reference(v26);
    if (*(a1 + 28))
    {
      goto LABEL_21;
    }

    if (*(v15 + 24))
    {
      v19 = *(v15 + 24);
    }

    else
    {
      v19 = MEMORY[0x277D80A18];
    }

    TSP::Reference::CopyFrom(v27, v19);
    goto LABEL_20;
  }

LABEL_23:
  v20 = *(a1 + 28);
  v21 = v20 > 0x12;
  v22 = (1 << v20) & 0x40C02;
  if (v21 || v22 == 0)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_276EF0108;
    v24[3] = &unk_27A6F3D70;
    v24[4] = a1;
    objc_msgSend_addFinalizeHandler_(v6, v5, v24);
  }
}

void sub_276EEF66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276EEF6DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276EEF710(void *a1, const char *a2, uint64_t a3)
{
  v90 = a1[6];
  v4 = objc_msgSend_count(*(*(a1[4] + 8) + 40), a2, a3);
  if (v4 != objc_msgSend_count(*(*(a1[5] + 8) + 40), v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual void TSWPAttributeArray::loadFromArchive(const TSWP::OverlappingFieldAttributeTable &, TSPUnarchiver *__strong)_block_invoke_2");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v12, v93, v11, 1199, 0, "Unarchiving ranges and fields did not match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_count(*(*(a1[4] + 8) + 40), v7, v8);
  if (v15 == objc_msgSend_count(*(*(a1[5] + 8) + 40), v16, v17))
  {
    v94 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v18, *(*(a1[4] + 8) + 40));
    v20 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v19, *(*(a1[5] + 8) + 40));
    (*(*v90 + 56))(v90, 0, 0, 0, 0, 0);
    v23 = 0;
    *(v90 + 14) |= 0x100u;
    while (1)
    {
      if (v23 >= objc_msgSend_count(v94, v21, v22))
      {
        for (i = 0; i < objc_msgSend_count(v94, v24, v25); ++i)
        {
          v78 = objc_msgSend_objectAtIndexedSubscript_(v94, v77, i);
          v81 = objc_msgSend_rangeValue(v78, v79, v80);
          v83 = v82;

          v85 = objc_msgSend_objectAtIndexedSubscript_(v20, v84, i);
          v88 = objc_msgSend_null(MEMORY[0x277CBEB68], v86, v87);

          if (v85 != v88)
          {
            objc_msgSend_setParentStorage_(v85, v89, v90[2]);
            (*(*v90 + 32))(v90, v85, v81, v83, 0, 0);
          }
        }

        *(v90 + 14) &= ~0x100u;

        return;
      }

      v26 = objc_msgSend_objectAtIndexedSubscript_(v94, v24, v23);
      range1 = objc_msgSend_rangeValue(v26, v27, v28);
      length = v29;

      range1_8 = v23;
      v32 = objc_msgSend_objectAtIndexedSubscript_(v20, v31, v23);
      v35 = objc_msgSend_null(MEMORY[0x277CBEB68], v33, v34);

      if (v32 == v35)
      {
        goto LABEL_16;
      }

      while (1)
      {
        v38 = v23;
        if (v23 + 1 >= objc_msgSend_count(v94, v36, v37))
        {
          break;
        }

        v40 = objc_msgSend_objectAtIndexedSubscript_(v20, v39, v23 + 1);
        v43 = objc_msgSend_null(MEMORY[0x277CBEB68], v41, v42);
        v45 = v43;
        if (v40 == v43)
        {

LABEL_12:
          v23 = v38 + 1;
        }

        else
        {
          v46 = objc_msgSend_objectAtIndexedSubscript_(v20, v44, v38 + 1);
          v49 = objc_msgSend_textAttributeUUIDString(v46, v47, v48);
          v52 = objc_msgSend_textAttributeUUIDString(v32, v50, v51);
          isEqualToString = objc_msgSend_isEqualToString_(v49, v53, v52);

          v23 = v38 + 1;
          if (isEqualToString)
          {
            v55 = objc_msgSend_null(MEMORY[0x277CBEB68], v36, v37);
            objc_msgSend_setObject_atIndexedSubscript_(v20, v56, v55, v38 + 1);

            v40 = objc_msgSend_objectAtIndexedSubscript_(v94, v57, v38 + 1);
            v97.location = objc_msgSend_rangeValue(v40, v58, v59);
            v97.length = v60;
            v96.location = range1;
            v96.length = length;
            v61 = NSUnionRange(v96, v97);
            range1 = v61.location;
            length = v61.length;
            goto LABEL_12;
          }
        }
      }

      v62 = length;
      if (!length)
      {
        v63 = MEMORY[0x277D81150];
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "virtual void TSWPAttributeArray::loadFromArchive(const TSWP::OverlappingFieldAttributeTable &, TSPUnarchiver *__strong)_block_invoke_2");
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v64, v66, 1226, 0, "Unexpected range length in overlapping table.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
        v72 = objc_msgSend_null(MEMORY[0x277CBEB68], v70, v71);
        objc_msgSend_setObject_atIndexedSubscript_(v20, v73, v72, range1_8);

        v62 = 0;
      }

      v74 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v39, range1, v62);
      v23 = range1_8;
      objc_msgSend_setObject_atIndexedSubscript_(v94, v75, v74, range1_8);

LABEL_16:
      ++v23;
    }
  }
}

void sub_276EF0108(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = TSWPAttributeRecord::object(*(v1 + 8) + v2, *(v1 + 28));
      if (v4)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_setParentStorage_(v4, v5, *(v1 + 16));
        }

        if (TSWPAttributeArray::isTextSpanningObject(*(v1 + 28), v4))
        {
          v8 = objc_msgSend_textAttributeUUIDString(v4, v6, v7);

          if (!v8)
          {
            v9 = objc_alloc(MEMORY[0x277CCACA8]);
            v11 = objc_msgSend_initWithFormat_(v9, v10, @"%@_%lu", 0, v3);
            objc_msgSend_willModifyForUpgrade(v4, v12, v13);
            objc_msgSend_i_setTextAttributeUUIDString_(v4, v14, v11);
          }
        }
      }

      ++v3;
      v2 += 16;
    }

    while (v3 < *(v1 + 24));
  }
}

uint64_t TSWPAttributeArray::isTextSpanningObject(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (v3 && a1 <= 0x15 && ((1 << a1) & 0x3B90C0) != 0)
  {
    if (a1 - 15 > 1)
    {
      v4 = 1;
    }

    else
    {
      objc_opt_class();
      v4 = objc_opt_isKindOfClass() ^ 1;
    }
  }

  return v4 & 1;
}

void TSWPAttributeArray::loadFromArchive(uint64_t *a1, uint64_t a2, void *a3)
{
  v17 = a3;
  if (*(a1 + 6))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      (*(*a1 + 336))(a1, a1[1] + v5);
      ++v6;
      v5 += 16;
    }

    while (v6 < *(a1 + 6));
  }

  *(a1 + 6) = 0;
  v7 = *(a2 + 24);
  if (v7)
  {
    TSWPAttributeArray::setCapacity(a1, *(a2 + 24));
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = *(*(a2 + 32) + 8 * i + 8);
      v11 = *(v10 + 32);
      if (*(v10 + 16))
      {
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        v12 = objc_msgSend_tsp_initWithProtobufString_(v13, v14, *(v10 + 24) & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        v12 = 0;
      }

      v15 = *a1;
      v16 = (a1[1] + v8);
      *v16 = v11;
      v16[1] = v12;
      (*(v15 + 328))(a1, a1[1] + v8);

      v8 += 16;
    }

    *(a1 + 6) = v7;
  }
}

void TSWPAttributeArray::archiveObjectAttributeWithCharIndex(uint64_t a1, int a2, void *a3, void *a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9)
{
  v32 = a3;
  v15 = a4;
  v17 = a9;
  v18 = a5 - a7;
  if (a5 < a7)
  {
    v18 = 0;
  }

  if (HIDWORD(v18))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSWPAttributeArray::archiveObjectAttributeWithCharIndex(BOOL, __strong id, __strong id, TSWPCharIndex, TSWPAttributeIndex, TSWPCharIndex, TSWP::ObjectAttributeTable_ObjectAttribute &, TSPArchiver *__strong) const");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 1390, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    LODWORD(v18) = -1;
  }

  *(a8 + 16) |= 2u;
  *(a8 + 32) = v18;
  if (v15 == v32 && a2)
  {

    v15 = 0;
  }

  else if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = *(a1 + 28);
      if (v20 <= 0x12 && ((1 << v20) & 0x40802) != 0)
      {
        *(a8 + 16) |= 1u;
        v21 = *(a8 + 24);
        if (!v21)
        {
          v22 = *(a8 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277CA3250](v22);
          *(a8 + 24) = v21;
        }

        objc_msgSend_setWeakReference_message_(v17, v19, v15, v21);
      }

      else
      {
        *(a8 + 16) |= 1u;
        v23 = *(a8 + 24);
        if (!v23)
        {
          v24 = *(a8 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277CA3250](v24);
          *(a8 + 24) = v23;
        }

        objc_msgSend_setStrongReference_message_(v17, v19, v15, v23);
      }
    }
  }
}

void TSWPAttributeArray::archiveStringAttributeWithCharIndex(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v24 = a2;
  v11 = a6;
  v12 = a3 - a4;
  if (a3 < a4)
  {
    v12 = 0;
  }

  if (HIDWORD(v12))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void TSWPAttributeArray::archiveStringAttributeWithCharIndex(__strong id, TSWPCharIndex, TSWPCharIndex, TSWP::StringAttributeTable_StringAttribute &, TSPArchiver *__strong) const");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 1414, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    LODWORD(v12) = -1;
  }

  *(a5 + 16) |= 2u;
  *(a5 + 32) = v12;
  if (v24)
  {
    v13 = v24;
    v16 = objc_msgSend_UTF8String(v13, v14, v15);
    sub_276EF080C(a5, v16);
  }
}

void sub_276EF080C(uint64_t a1, char *__s)
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

void sub_276EF0904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSWPAttributeArray::saveToArchive(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, void *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v51 = a4;
  v49 = a5;
  v8 = *a3;
  v54 = a3;
  if (*a3 == *MEMORY[0x277D81490] && a3[1] == *(MEMORY[0x277D81490] + 8))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "virtual void TSWPAttributeArray::saveToArchive(TSWP::OverlappingFieldAttributeTable &, const NSRange &, TSPArchiver *__strong, __strong id<TSWPStyleProvider>) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1426, 0, "expected a valid range to archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v8 = *a3;
  }

  if (v8)
  {
    v17 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v8);
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v17;
    }
  }

  while (v8 < *(a1 + 24))
  {
    v56 = *(*(a1 + 8) + 16 * v8);
    v55 = v8;
    if (((*(*a1 + 424))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v18 = (*(*a1 + 136))(a1, v55);
    if (!v18)
    {
      goto LABEL_50;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v50 = v18;
    obj = v18;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v57, v61, 16);
    if (!v20)
    {
      goto LABEL_49;
    }

    v21 = *v58;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v57 + 1) + 8 * i);
        if (!v56 || ((*(*a1 + 144))(a1, *(*(&v57 + 1) + 8 * i), v55 - 1) & 1) == 0)
        {
          v25 = (*(*a1 + 152))(a1, v23, v55);
          v26 = length;
          v27 = *MEMORY[0x277D81490];
          v28 = *(MEMORY[0x277D81490] + 8);
          if (v25 == *MEMORY[0x277D81490] && length == v28)
          {
            v30 = MEMORY[0x277D81150];
            v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], length, "virtual void TSWPAttributeArray::saveToArchive(TSWP::OverlappingFieldAttributeTable &, const NSRange &, TSPArchiver *__strong, __strong id<TSWPStyleProvider>) const");
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 1449, 0, "Expected valid range.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
            v27 = *MEMORY[0x277D81490];
            v28 = *(MEMORY[0x277D81490] + 8);
          }

          if (v25 != v27 || v26 != v28)
          {
            v64.location = v25;
            v64.length = v26;
            v63.location = TSWPAttributeArray::rangeForAttributeRange(a1, v64);
            length = NSIntersectionRange(v63, *v54).length;
            if (length)
            {
              v38 = a2;
              v39 = *(a2 + 32);
              if (!v39)
              {
                goto LABEL_36;
              }

              v40 = *(a2 + 24);
              v41 = *v39;
              if (v40 < *v39)
              {
                *(a2 + 24) = v40 + 1;
                v42 = *&v39[2 * v40 + 2];
LABEL_38:
                *(v42 + 16) |= 1u;
                if (!*(v42 + 24))
                {
                  v45 = *(v42 + 8);
                  if (v45)
                  {
                    v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  *(v42 + 24) = MEMORY[0x277CA3230](v45);
                }

                TSPNSRangeCopyToMessage();
                *(v42 + 16) |= 2u;
                v47 = *(v42 + 32);
                if (!v47)
                {
                  v48 = *(v42 + 8);
                  if (v48)
                  {
                    v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v47 = MEMORY[0x277CA3250](v48);
                  *(v42 + 32) = v47;
                }

                objc_msgSend_setStrongReference_message_(v51, v46, v23, v47);
                continue;
              }

              if (v41 == *(a2 + 28))
              {
LABEL_36:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
                v38 = a2;
                v39 = *(a2 + 32);
                v41 = *v39;
              }

              *v39 = v41 + 1;
              v42 = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute>(*(v38 + 16));
              v43 = *(a2 + 24);
              v44 = *(a2 + 32) + 8 * v43;
              *(a2 + 24) = v43 + 1;
              *(v44 + 8) = v42;
              goto LABEL_38;
            }
          }
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, length, &v57, v61, 16);
    }

    while (v20);
LABEL_49:

    v18 = v50;
LABEL_50:

LABEL_51:
    v8 = v55 + 1;
  }
}

{
  v35 = a4;
  v9 = a5;
  if (*a3)
  {
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, *a3);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = a3[1];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = *(a1 + 28);
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = *a3 + v12;
    v13 = *(a1 + 28);
    if (v13 > 0x16u || ((1 << v13) & 0x440F07) == 0)
    {
      v14 = v15;
    }

    else
    {
      v14 = v15 + 1;
    }
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v11 == 0;
  }

  v19 = v17 && v14 == 0x7FFFFFFFFFFFFFFFLL;
  v34 = v19;
  if (v11 >= *(a1 + 24))
  {
    goto LABEL_40;
  }

  v33 = v9;
  v20 = 0;
  v21 = 16 * v11;
  while (1)
  {
    v22 = *(a1 + 8);
    v23 = *(v22 + v21);
    if (v23 >= v14)
    {
      break;
    }

    if ((*(*a1 + 424))(a1, v11, *a3, a3[1]))
    {
      v25 = TSWPAttributeRecord::object(v22 + v21, *(a1 + 28));
      v26 = *a3;
      v27 = *(a2 + 32);
      if (!v27)
      {
        goto LABEL_33;
      }

      v28 = *(a2 + 24);
      v29 = *v27;
      if (v28 < *v27)
      {
        *(a2 + 24) = v28 + 1;
        v30 = *&v27[2 * v28 + 2];
LABEL_35:
        TSWPAttributeArray::archiveObjectAttributeWithCharIndex(a1, v34, v20, v25, v23, v24, v26, v30, v35);

        v20 = v25;
        goto LABEL_36;
      }

      if (v29 == *(a2 + 28))
      {
LABEL_33:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
        v27 = *(a2 + 32);
        v29 = *v27;
      }

      *v27 = v29 + 1;
      v30 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable_ObjectAttribute>(*(a2 + 16));
      v31 = *(a2 + 24);
      v32 = *(a2 + 32) + 8 * v31;
      *(a2 + 24) = v31 + 1;
      *(v32 + 8) = v30;
      goto LABEL_35;
    }

    v25 = v20;
LABEL_36:
    ++v11;
    v21 += 16;
    if (v11 >= *(a1 + 24))
    {
      goto LABEL_39;
    }
  }

  v25 = v20;
LABEL_39:

  v9 = v33;
LABEL_40:
}

{
  v35 = a4;
  v9 = a5;
  if (*a3)
  {
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, *a3);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = *a3;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = a3[1];
  v14 = v12 + v13;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  if (v11 < *(a1 + 24))
  {
    v16 = 16 * v11;
    v34 = v9;
    while (1)
    {
      v17 = *(a1 + 8);
      v18 = *(v17 + v16);
      if (v18 >= v15)
      {
        goto LABEL_25;
      }

      if ((*(*a1 + 424))(a1, v11, *a3, a3[1]))
      {
        break;
      }

LABEL_24:
      ++v11;
      v16 += 16;
      if (v11 >= *(a1 + 24))
      {
        goto LABEL_25;
      }
    }

    v36 = TSWPAttributeRecord::object(v17 + v16, *(a1 + 28));
    if (v9)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "virtual void TSWPAttributeArray::saveToArchive(TSWP::StringAttributeTable &, const NSRange &, TSPArchiver *__strong, __strong id<TSWPStyleProvider>) const");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 1578, 0, "The style provider currently only archives with paragraph styles.");

      v9 = v34;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }

    v27 = *a3;
    v28 = *(a2 + 32);
    if (!v28)
    {
      goto LABEL_21;
    }

    v29 = *(a2 + 24);
    v30 = *v28;
    if (v29 < *v28)
    {
      *(a2 + 24) = v29 + 1;
      v31 = *&v28[2 * v29 + 2];
LABEL_23:
      TSWPAttributeArray::archiveStringAttributeWithCharIndex(v31, v36, v18, v27, v31, v35);

      goto LABEL_24;
    }

    if (v30 == *(a2 + 28))
    {
LABEL_21:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v28 = *(a2 + 32);
      v30 = *v28;
    }

    *v28 = v30 + 1;
    v31 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable_StringAttribute>(*(a2 + 16));
    v32 = *(a2 + 24);
    v33 = *(a2 + 32) + 8 * v32;
    *(a2 + 24) = v32 + 1;
    *(v33 + 8) = v31;
    goto LABEL_23;
  }

LABEL_25:
}

void TSWPAttributeArray::saveToArchiveDowngradeHighlights(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, void *a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v55 = a4;
  v52 = a5;
  if (*a3)
  {
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, *a3);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = *a3;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = a3[1];
  v12 = v10 + v11;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v54 = v12;
  if (v9 < *(a1 + 24))
  {
    v58 = a3;
    while (1)
    {
      v61 = *(*(a1 + 8) + 16 * v9);
      if (v61 >= v54)
      {
        goto LABEL_52;
      }

      if ((*(*a1 + 424))(a1, v9, *a3, a3[1]))
      {
        break;
      }

LABEL_51:
      if (++v9 >= *(a1 + 24))
      {
        goto LABEL_52;
      }
    }

    v13 = (*(*a1 + 136))(a1, v9);
    v53 = v13;
    if (v13)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v13;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v62, v66, 16);
      if (!v16)
      {
        goto LABEL_41;
      }

      v60 = *v63;
      v57 = v9 - 1;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v63 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v62 + 1) + 8 * i);
          if (!v61 || ((*(*a1 + 144))(a1, *(*(&v62 + 1) + 8 * i), v57) & 1) == 0)
          {
            v20 = v9;
            v21 = (*(*a1 + 152))(a1, v18, v9);
            v22 = v19;
            v23 = *MEMORY[0x277D81490];
            v24 = *(MEMORY[0x277D81490] + 8);
            if (v21 == *MEMORY[0x277D81490] && v19 == v24)
            {
              v26 = MEMORY[0x277D81150];
              v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "virtual void TSWPAttributeArray::saveToArchiveDowngradeHighlights(TSWP::ObjectAttributeTable &, const NSRange &, TSPArchiver *__strong, __strong id<TSWPStyleProvider>) const");
              v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1499, 0, "Expected valid range.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
              v23 = *MEMORY[0x277D81490];
              v24 = *(MEMORY[0x277D81490] + 8);
            }

            v33 = v21 == v23 && v22 == v24;
            v9 = v20;
            if (!v33)
            {
              v68.location = v21;
              v68.length = v22;
              v35 = TSWPAttributeArray::rangeForAttributeRange(a1, v68);
              v36 = *v58;
              v37 = a2;
              v38 = *(a2 + 32);
              if (!v38)
              {
                goto LABEL_36;
              }

              v39 = *(a2 + 24);
              v40 = *v38;
              if (v39 < *v38)
              {
                *(a2 + 24) = v39 + 1;
                v41 = *&v38[2 * v39 + 2];
LABEL_38:
                TSWPAttributeArray::archiveObjectAttributeWithCharIndex(a1, 0, 0, v18, v35, v34, v36, v41, v55);
                continue;
              }

              if (v40 == *(a2 + 28))
              {
LABEL_36:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
                v37 = a2;
                v38 = *(a2 + 32);
                v40 = *v38;
              }

              *v38 = v40 + 1;
              v41 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable_ObjectAttribute>(*(v37 + 16));
              v42 = *(a2 + 24);
              v43 = *(a2 + 32) + 8 * v42;
              *(a2 + 24) = v42 + 1;
              *(v43 + 8) = v41;
              goto LABEL_38;
            }
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v62, v66, 16);
        if (!v16)
        {
LABEL_41:

          goto LABEL_50;
        }
      }
    }

    v44 = *a3;
    v45 = a2;
    v46 = *(a2 + 32);
    if (!v46)
    {
      goto LABEL_47;
    }

    v47 = *(a2 + 24);
    v48 = *v46;
    if (v47 < *v46)
    {
      *(a2 + 24) = v47 + 1;
      v49 = *&v46[2 * v47 + 2];
      goto LABEL_49;
    }

    if (v48 == *(a2 + 28))
    {
LABEL_47:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v45 = a2;
      v46 = *(a2 + 32);
      v48 = *v46;
    }

    *v46 = v48 + 1;
    v49 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable_ObjectAttribute>(*(v45 + 16));
    v50 = *(a2 + 24);
    v51 = *(a2 + 32) + 8 * v50;
    *(a2 + 24) = v50 + 1;
    *(v51 + 8) = v49;
LABEL_49:
    TSWPAttributeArray::archiveObjectAttributeWithCharIndex(a1, 0, 0, 0, v61, v14, v44, v49, v55);
LABEL_50:

    a3 = v58;
    goto LABEL_51;
  }

LABEL_52:
}

uint64_t TSWPAttributeArray::shouldBeCopiedForUndo(unint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_supportsDeepCopyForUndo(v3, v4, v5);
  }

  else
  {
    v6 = 1;
  }

  v7 = 0x3A10C0u >> a1;
  if (a1 > 0x15)
  {
    LOBYTE(v7) = 0;
  }

  if (!v6)
  {
    LOBYTE(v7) = 0;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL TSWPAttributeArray::paragraphDataIsSame(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  if (a1 <= 10)
  {
    if (a1 == 1 || a1 == 10)
    {
      return *a2 == *a3 && *(a2 + 1) == a3[1];
    }

LABEL_13:
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static BOOL TSWPAttributeArray::paragraphDataIsSame(TSWPAttributeArrayKind, const TSWPParagraphData &, const TSWPParagraphData &)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1752, 0, "Do not call dataIsSame for this table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    return 0;
  }

  if (a1 != 11 && a1 != 18)
  {
    goto LABEL_13;
  }

  return *a2 == *a3;
}

uint64_t TSWPAttributeArray::allowsNilObjects(unint64_t a1)
{
  if (a1 < 0x17 && ((0x440F07u >> a1) & 1) != 0)
  {
    v1 = 0x7BF0F8u >> a1;
  }

  else
  {
    LOBYTE(v1) = (a1 & 0xFFFFFFFFFFFFFFFELL) != 4;
  }

  return v1 & 1;
}

id TSWPAttributeArray::inverseObjectForApplying(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  v12 = 0;
  if (a1 && a5)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v13 = *(a1 + 8);
    if (v13 > 0x16 || ((1 << v13) & 0x40000D) == 0)
    {
      v12 = v10;
      goto LABEL_24;
    }

    v14 = *(a5 + 8);
    v43 = objc_msgSend_stylesheet(v14, v15, v16);
    objc_opt_class();
    v17 = TSUDynamicCast();
    objc_opt_class();
    v18 = TSUDynamicCast();
    objc_opt_class();
    v19 = sub_276F40884(a1);
    v20 = TSUDynamicCast();

    if (!v20 || (objc_msgSend_previouslyAppliedChangeSet(v20, v21, v22), (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v32 = [TSWPStyleDiff alloc];
      v35 = objc_msgSend_context(v14, v33, v34);
      v12 = objc_msgSend_initWithContext_style_(v32, v36, v35, v18);
LABEL_23:

      goto LABEL_24;
    }

    v26 = v23;
    if (v17 == v18)
    {
      v12 = v20;
LABEL_22:
      v35 = v26;
      goto LABEL_23;
    }

    if (v17 && !objc_msgSend_isNamed(v17, v24, v25))
    {
      if (!v18)
      {
        v18 = objc_msgSend_defaultCharacterStyle(v43, v24, v25);
      }
    }

    else if (!v18 || objc_msgSend_isNamed(v18, v24, v25))
    {
      v27 = [TSWPStyleDiff alloc];
      v30 = objc_msgSend_context(v14, v28, v29);
      v12 = objc_msgSend_initWithContext_style_(v27, v31, v30, v18);
LABEL_21:

      goto LABEL_22;
    }

    v30 = objc_msgSend_collectUndoForStyle_(v26, v24, v18);
    v37 = [TSWPStyleDiff alloc];
    v40 = objc_msgSend_context(v14, v38, v39);
    v12 = objc_msgSend_initWithContext_changeSet_(v37, v41, v40, v30);

    goto LABEL_21;
  }

LABEL_24:

  return v12;
}

BOOL TSWPAttributeArray::attributeArrayNeedsRepair(TSWPAttributeArray *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = TSWPAttributeArray::charIndexForAttributeIndex(this, v5);
      v8 = v7;
      if (v5 | v7)
      {
        if (!v5 || v4 >= v7)
        {
          break;
        }
      }

      if (*(this + 28) == 22)
      {
        v9 = TSWPAttributeRecord::object(&this->var1[v3], 0x16uLL);
        if (v9)
        {
          objc_opt_class();
          v10 = TSUDynamicCast();

          if (!v10)
          {
            if (*MEMORY[0x277D81430] != -1)
            {
              sub_276F58148();
            }

            return v6;
          }
        }
      }

      v6 = ++v5 < v1;
      ++v3;
      v4 = v8;
      if (v1 == v5)
      {
        return 0;
      }
    }

    if (*MEMORY[0x277D81430] != -1)
    {
      sub_276F58134();
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_276EF212C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276EF2170()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

uint64_t TSWPAttributeArray::nonUndoableRepair(TSWPAttributeArray *this)
{
  result = (*(this->var0 + 8))(this, 0, *(this + 6), 0);
  v4 = *(this + 28);
  if (v4 > 0x16)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "virtual void TSWPAttributeArray::nonUndoableRepair()");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 2119, 0, "createAttributeArrayForKind: bad kind.");

    v13 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v13, v11, v12);
  }

  else if (((1 << v4) & 0x3BF0C8) != 0)
  {
    v5 = *(this->var0 + 7);

    return v5(this, 0, 0, 0, 0, 0);
  }

  return result;
}

NSUInteger TSWPAttributeArray::calculateParIndexRangeFromCharRangeAndBreakingTable(TSWPAttributeArray *this, _NSRange a2, const TSWPAttributeArray *a3)
{
  length = a2.length;
  location = a2.location;
  v7 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a2.length, this);
  if (v9 >= 0x7FFFFFFFFFFFFFFFLL && (v33 = v7, v11 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "static NSRange TSWPAttributeArray::calculateParIndexRangeFromCharRangeAndBreakingTable(NSRange, const TSWPAttributeArray *, TSWPCharIndex)"), v12 = v10 = *(length + 24);
  {
    v9 = v33;
  }

  else
  {
    v6 = v10 - v9;
    if (v10 <= v9)
    {
      v6 = 0;
    }

    else
    {
      v19 = 0;
      while (1)
      {
        v36.location = TSWPAttributeArray::rangeForAttributeIndex(length, (v9 + v19));
        v20 = v36.location;
        v21 = v36.length;
        v38.location = this;
        v38.length = location;
        v8 = NSIntersectionRange(v36, v38).length;
        if (!v8 && (v20 != this || v21))
        {
          break;
        }

        if (v6 == ++v19)
        {
          goto LABEL_12;
        }
      }

      v31 = (v20 + v21);
      if (v6 - 1 == v19 && this == a3 && v31 == this)
      {
        v6 = v19 + 1;
      }

      else
      {
        v32 = v31 >= (this + location);
        if ((location == 0) < v32)
        {
          v32 = location == 0;
        }

        if ((v21 != 0) < v32)
        {
          v32 = v21 != 0;
        }

        if (v32 >= (v20 <= this))
        {
          v32 = v20 <= this;
        }

        v6 = v32 + v19;
      }
    }
  }

LABEL_12:
  if (v9 > 0x7FFFFFFFFFFFFFFELL || v6 + v9 > 0x7FFFFFFFFFFFFFFELL)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "static NSRange TSWPAttributeArray::calculateParIndexRangeFromCharRangeAndBreakingTable(NSRange, const TSWPAttributeArray *, TSWPCharIndex)");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    v37.location = v9;
    v37.length = v6;
    v26 = NSStringFromRange(v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v25, 2153, 0, "bad parIndex: %{public}@", v26);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  return v9;
}

void TSWPAttributeRecord::TSWPAttributeRecord(TSWPAttributeRecord *this)
{
  this->var0 = 0;
  this->var1.var0 = 0;
}

{
  this->var0 = 0;
  this->var1.var0 = 0;
}

void TSWPAttributeRecord::TSWPAttributeRecord(TSWPAttributeRecord *this, unint64_t a2, TSWPParagraphData a3)
{
  this->var0 = a2;
  this->var1.var1 = a3;
}

{
  this->var0 = a2;
  this->var1.var1 = a3;
}

uint64_t TSWPAttributeRecord::paragraphData(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x12 || ((1 << a2) & 0x40C02) == 0)
  {
    TSUSetCrashReporterInfo();
    v3 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "const TSWPParagraphData &TSWPAttributeRecord::paragraphData(TSWPAttributeArrayKind) const", "const TSWPParagraphData &TSWPAttributeRecord::paragraphData(TSWPAttributeArrayKind) const", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm", 2183);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v5, v7, 2183, 1, "paragraphData requires attribute kind supports TSWPParagraphData.");

    TSUCrashBreakpoint();
    abort();
  }

  return a1 + 8;
}

uint64_t TSWPAttributeRecord::setParagraphData(uint64_t result, unint64_t a2, _DWORD *a3)
{
  if (a2 > 0x12 || ((1 << a2) & 0x40C02) == 0)
  {
    TSUSetCrashReporterInfo();
    v3 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "void TSWPAttributeRecord::setParagraphData(TSWPAttributeArrayKind, const TSWPParagraphData &)", "void TSWPAttributeRecord::setParagraphData(TSWPAttributeArrayKind, const TSWPParagraphData &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm", 2188);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v5, v7, 2188, 1, "setParagraphData requires attribute kind supports TSWPParagraphData.");

    TSUCrashBreakpoint();
    abort();
  }

  *(result + 8) = *a3;
  return result;
}

void sub_276EF2858(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  TSWPAttributeRecord::setObject(*(v4 + 8) + 16 * *(a1 + 40), *(v4 + 28), v3);
  (*(*v4 + 328))(v4, *(v4 + 8) + 16 * *(a1 + 40));
}

void sub_276EF2904(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  TSWPAttributeRecord::setObject(*(v4 + 8) + 16 * *(a1 + 40), *(v4 + 28), v3);
  (*(*v4 + 328))(v4, *(v4 + 8) + 16 * *(a1 + 40));
}

unsigned int *TSWPParagraphAttributeArray::operator=(unsigned int *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPParagraphAttributeArray &TSWPParagraphAttributeArray::operator=(const TSWPParagraphAttributeArray &)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 30, 0, "Do not assign this because it likely represents bad calling logic.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  else
  {
    v4 = *(a1 + 2);
    (*(*a1 + 64))(a1, 0, a1[6], 0);
    hasObjects = TSWPAttributeArray::hasObjects(*(a2 + 28));
    if (*(a2 + 24))
    {
      v6 = hasObjects;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = TSWPAttributeArray::charIndexForAttributeIndex(a2, v8);
        if (v6)
        {
          v10 = TSWPAttributeArray::objectForAttributeIndex(a2, v8);
          (*(*a1 + 56))(a1, v10, v9, v8, 0, 0);
        }

        else
        {
          v11.var0.var0.listStart = *TSWPAttributeRecord::paragraphData(*(a2 + 8) + v7, *(a2 + 28));
          TSWPAttributeRecord::TSWPAttributeRecord(&v20, v9, v11);
          TSWPAttributeArray::nonUndoableInsertAttribute(a1, &v20, v8, 0, 0);
        }

        ++v8;
        v7 += 16;
      }

      while (v8 < *(a2 + 24));
    }

    TSWPAttributeArray::setStorage(a1, v4);
  }

  return a1;
}

void TSWPParagraphAttributeArray::~TSWPParagraphAttributeArray(TSWPParagraphAttributeArray *this)
{
  this->var0 = &unk_288606BB0;
  if (*(this + 6))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      (*(this->var0 + 42))(this, &this->var1[v2]);
      ++v3;
      ++v2;
    }

    while (v3 < *(this + 6));
  }

  TSWPAttributeArray::~TSWPAttributeArray(this);
}

{
  TSWPParagraphAttributeArray::~TSWPParagraphAttributeArray(this);

  JUMPOUT(0x277CA3D00);
}

void TSWPParagraphAttributeArray::retain(TSWPParagraphAttributeArray *this, const TSWPAttributeRecord *a2)
{
  if (TSWPAttributeArray::hasObjects(*(this + 28)))
  {
    v4 = TSWPAttributeRecord::object(a2, *(this + 28));

    if (v4)
    {
      v5 = TSWPAttributeRecord::object(a2, *(this + 28));
      CFRetain(v5);
    }
  }
}

void TSWPParagraphAttributeArray::release(TSWPParagraphAttributeArray *this, const TSWPAttributeRecord *a2)
{
  if (TSWPAttributeArray::hasObjects(*(this + 28)))
  {
    v4 = TSWPAttributeRecord::object(a2, *(this + 28));

    if (v4)
    {
      v5 = TSWPAttributeRecord::object(a2, *(this + 28));
      CFRelease(v5);
    }
  }
}

unint64_t TSWPParagraphAttributeArray::calculateInverseRange(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if ((a7 & 0x8000) == 0)
  {
    v9 = *(a6 + 464);
    if (v9)
    {
      if ((*(v9 + 5) & 0x80) == 0)
      {
        if (TSWPAttributeArray::supportsAttributeCollapsing(*(a1 + 28)))
        {
          if (a4 <= a2 && a4 + a5 >= a2 + a3)
          {
            v12 = *(v9 + 16);
            if (a2 <= v12 && a2 + a3 >= *(v9 + 24) + v12)
            {
              return *(v9 + 16);
            }
          }
        }
      }
    }
  }

  return a4;
}

void TSWPParagraphAttributeArray::buildInverseActionsForRemove(unsigned __int8 *a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v66 = a4;
  if (a5)
  {
    if (*(a5 + 456))
    {
      v11 = *(a5 + 464);
      if (v11)
      {
        v12 = *(a5 + 16);
        if (v12)
        {
          if ((*(v12 + 216) & 1) == 0)
          {
            if (*(a5 + 472))
            {
              v13 = a1[28];
              if (*(v11 + 8) == v13)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v13 = a1[28];
            }

            if (TSWPAttributeArray::hasObjects(v13))
            {
              v60 = *(a5 + 464);
              v14 = *(v60 + 4);
              v15 = (*(*a1 + 432))(a1);
              if (a2 < &a2[a3])
              {
                v61 = v15 | v14 & 0xFFFFFFFD;
                v57 = &a2[a3 - 1];
                do
                {
                  if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(a1[28]))
                  {
                    v16 = TSWPAttributeArray::rangeForAttributeIndex(a1, a2);
                    v18 = v17 != 0;
                    v63 = v66;
                    v65 = TSWPAttributeArray::objectForAttributeIndex(a1, a2);
                    v19 = TSWPAttributeArray::inverseObjectForApplying(v60, v63, v65, 0, a5);
                    if (TSWPAttributeArray::shouldBeCopiedForUndo(a1[28], v19))
                    {
                      v20 = *(a5 + 8);
                      v23 = objc_msgSend_context(v20, v21, v22);
                      v25 = objc_msgSend_copyWithContext_(v19, v24, v23);

                      v19 = v25;
                    }

                    v26 = TSWPParagraphAttributeArray::calculateInverseRange(a1, v16, v18, v16, v18, a5, 0);
                    sub_276F3FE94(v67, a1[28], v26, v27 != 0, v19, v61);
                    sub_276F2F6C0(a5, v67, 0);
                    sub_276F40794(v67);
                    a6 = 0;
                  }

                  else
                  {
                    v64 = TSWPAttributeArray::rangeForAttributeIndex(a1, a2);
                    v29 = v28;
                    v59 = v66;
                    v65 = TSWPAttributeArray::objectForAttributeIndex(a1, a2);
                    v19 = TSWPAttributeArray::inverseObjectForApplying(v60, v59, v65, 0, a5);
                    if (TSWPAttributeArray::shouldBeCopiedForUndo(a1[28], v19))
                    {
                      v30 = *(a5 + 8);
                      v33 = objc_msgSend_context(v30, v31, v32);
                      v35 = objc_msgSend_copyWithContext_(v19, v34, v33);

                      v19 = v35;
                    }

                    v36 = TSWPParagraphAttributeArray::calculateInverseRange(a1, v64, v29, v64, v29, a5, 0);
                    v62 = v37;
                    v38 = v36;
                    v40 = TSWPAttributeArray::supportsAttributeCollapsing(a1[28]) ^ 1;
                    if (a3 != 1)
                    {
                      LOBYTE(v40) = 1;
                    }

                    if ((v40 & 1) == 0)
                    {
                      v41 = objc_msgSend_attributeArrayForKind_(*(a1 + 2), v39, 0);
                      v42 = v41;
                      if (v41)
                      {
                        v43 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v41, v64 + v29);
                        if (v43 + 1 == *(v42 + 6))
                        {
                          v58 = v43;
                          if (TSWPParagraphAttributeArray::isParagraphBreakSparse(a1, v43, v42))
                          {
                            v44 = TSWPAttributeArray::rangeForAttributeIndex(v42, v43);
                            sub_276F3FE94(v67, a1[28], v44, v45, v19, v61 | 0x8000);
                            sub_276F2F6C0(a5, v67, 0);
                            sub_276F40794(v67);
                          }

                          else
                          {
                            v46 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v64 + v29);
                            if (v46 > v57 && v46 < *(a1 + 6))
                            {
                              v47 = TSWPAttributeArray::objectForAttributeIndex(a1, v46);
                              v56 = v47;
                              if (TSWPAttributeArray::shouldBeCopiedForUndo(a1[28], v47))
                              {
                                v55 = *(a5 + 8);
                                v54 = objc_msgSend_context(v55, v48, v49);
                                v53 = objc_msgSend_copyWithContext_(v47, v50, v54);

                                v47 = v53;
                              }

                              v51 = TSWPAttributeArray::rangeForAttributeIndex(v42, v58);
                              sub_276F3FE94(v67, a1[28], v51, v52, v47, v61);
                              sub_276F2F6C0(a5, v67, 0);
                              sub_276F40794(v67);
                            }
                          }
                        }
                      }
                    }

                    if (v64 + v29 > v38 + v62)
                    {
                      sub_276F3FE94(v67, a1[28], v38 + v62, v64 + v29 - (v38 + v62), v19, v61 | 0x8000);
                      sub_276F2F6C0(a5, v67, 0);
                      sub_276F40794(v67);
                    }

                    sub_276F3FE94(v67, a1[28], v38, v62, v19, v61);
                    a6 &= TSWPAttributeArray::shouldValidateInverseActions() ^ 1;
                    sub_276F2F6C0(a5, v67, a6);
                    sub_276F40794(v67);
                  }

                  ++a2;
                  --a3;
                }

                while (a3);
              }
            }

            else
            {
              (*(*a1 + 440))(a1, a2, a3, a5);
            }
          }
        }
      }
    }
  }

LABEL_37:
}

uint64_t TSWPParagraphAttributeArray::isParagraphBreakSparse(TSWPParagraphAttributeArray *this, const char *a2, TSWPAttributeArray *a3)
{
  result = TSWPAttributeArray::supportsAttributeCollapsing(*(this + 28));
  if (result)
  {
    if (*(a3 + 6) <= a2)
    {
      return 0;
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(this, a2, a3, &v8);
      v7 = v8;
      return v7 != TSWPAttributeArray::charIndexForAttributeIndex(a3, a2);
    }
  }

  return result;
}

void TSWPParagraphAttributeArray::buildInverseActionsForAdd(unsigned __int8 *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
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
            goto LABEL_30;
          }
        }

        else
        {
          v13 = a1[28];
        }

        if (TSWPAttributeArray::hasObjects(v13))
        {
          v14 = *(*(a5 + 464) + 4);
          v15 = v14 & 0xFFFFFFFD | (*(*a1 + 432))(a1) | a6;
          if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(a1[28]))
          {
            v16 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a1, a2);
            if (v16 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = objc_msgSend_paragraphIndexAtCharIndex_(*(a1 + 2), 0x7FFFFFFFFFFFFFFFLL, a2);
              v19 = objc_msgSend_textRangeForParagraphAtIndex_(*(a1 + 2), v18, v17);
            }

            else
            {
              v19 = TSWPAttributeArray::rangeForAttributeIndex(a1, v16);
            }

            if (v19 == a2)
            {
              v34 = TSWPParagraphAttributeArray::calculateInverseRange(a1, v19, v20 != 0, v19, v20 != 0, a5, v15);
              sub_276F3FE94(v36, a1[28], v34, v35 != 0, 0, v15);
              sub_276F2F6C0(a5, v36, 0);
LABEL_29:
              sub_276F40794(v36);
            }
          }

          else
          {
            v21 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
            if (v21 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = TSWPAttributeArray::rangeForAttributeIndex(a1, v21);
              if (v23 < a2)
              {
                if (a1[28])
                {
                  v24 = v22;
                  v25 = TSWPParagraphAttributeArray::calculateInverseRange(a1, a2, a3, a2, a3, a5, v15);
                  v27 = v26;
                  if (TSWPAttributeArray::supportsAttributeCollapsing(a1[28]))
                  {
                    v29 = objc_msgSend_attributeArrayForKind_(*(a1 + 2), v28, 0);
                    v30 = v23 + v24;
                    v31 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v29, v30);
                    if (v31 + 1 == *(v29 + 24))
                    {
                      if (TSWPParagraphAttributeArray::isParagraphBreakSparse(a1, v31, v29))
                      {
                        v33 = TSWPAttributeArray::rangeForAttributeIndex(v29, v31);
                        if (v33 != v25 || v32 != v27)
                        {
                          sub_276F3FE94(v36, a1[28], v33, v32, 0, v15 | 0x8000);
                          sub_276F2F6C0(a5, v36, 0);
                          sub_276F40794(v36);
                        }
                      }
                    }
                  }

                  else
                  {
                    v30 = v23 + v24;
                  }

                  if (v30 > v25 + v27)
                  {
                    sub_276F3FE94(v36, a1[28], v25 + v27, v30 - (v25 + v27), 0, v15 | 0x8000);
                    sub_276F2F6C0(a5, v36, 0);
                    sub_276F40794(v36);
                  }

                  sub_276F3FE94(v36, a1[28], v25, v27, 0, v15);
                  sub_276F2F6C0(a5, v36, 0);
                  goto LABEL_29;
                }
              }
            }
          }
        }

        else
        {
          (*(*a1 + 448))(a1, a2, a3, a5, a6);
        }
      }
    }
  }

LABEL_30:
}

void sub_276EF42BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276F40794(&a9);

  _Unwind_Resume(a1);
}

uint64_t TSWPParagraphAttributeArray::buildInverseActionsForRemoveWithParData(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (*(a4 + 456))
    {
      v5 = *(a4 + 464);
      if (v5)
      {
        v8 = result;
        if (*(a4 + 472) != 1 || *(v5 + 8) != *(result + 28))
        {
          v9 = *(v5 + 4);
          result = (*(*result + 432))(result);
          if (a2 < &a2[a3])
          {
            v10 = result | v9 & 0xFFFFFFFD;
            v31 = &a2[a3 - 1];
            v11 = 16 * a2;
            v32 = result | v9 & 0xFFFFFFFD;
            v33 = v4;
            do
            {
              v12 = TSWPAttributeArray::rangeForAttributeIndex(v8, a2);
              v14 = v13;
              v15 = TSWPAttributeRecord::paragraphData(*(v8 + 8) + v11, *(v8 + 28));
              v16 = TSWPParagraphAttributeArray::calculateInverseRange(v8, v12, v14, v12, v14, v4, 0);
              v18 = v17;
              v19 = TSWPAttributeArray::supportsAttributeCollapsing(*(v8 + 28));
              if (a3 == 1 && (v19 & 1) != 0)
              {
                v21 = objc_msgSend_attributeArrayForKind_(*(v8 + 16), v20, 0);
                v22 = v12 + v14;
                v23 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v21, v22);
                if (v23 + 1 != *(v21 + 24))
                {
                  goto LABEL_18;
                }

                v24 = v23;
                if (TSWPParagraphAttributeArray::isParagraphBreakSparse(v8, v23, v21))
                {
                  v25 = TSWPAttributeArray::rangeForAttributeIndex(v21, v24);
                  v10 = v32;
                  sub_276F40060(v34, v32 | 0x8000, *(v8 + 28), v25, v26, v15, 0);
                  sub_276F2F6C0(v33, v34, 0);
                }

                else
                {
                  v27 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, v22);
                  if (v27 <= v31 || v27 >= *(v8 + 24))
                  {
LABEL_18:
                    v10 = v32;
                    goto LABEL_19;
                  }

                  v30 = TSWPAttributeRecord::paragraphData(*(v8 + 8) + 16 * v27, *(v8 + 28));
                  v28 = TSWPAttributeArray::rangeForAttributeIndex(v21, v24);
                  v10 = v32;
                  sub_276F40060(v34, v32, *(v8 + 28), v28, v29, v30, 0);
                  sub_276F2F6C0(v33, v34, 0);
                }

                sub_276F40794(v34);
              }

              else
              {
                v22 = v12 + v14;
              }

LABEL_19:
              if (v22 > v16 + v18)
              {
                sub_276F40060(v34, v10 | 0x8000, *(v8 + 28), v16 + v18, v22 - (v16 + v18), v15, 0);
                sub_276F2F6C0(v33, v34, 0);
                sub_276F40794(v34);
              }

              sub_276F40060(v34, v10, *(v8 + 28), v16, v18, v15, 0);
              v4 = v33;
              sub_276F2F6C0(v33, v34, 0);
              result = sub_276F40794(v34);
              ++a2;
              v11 += 16;
              --a3;
            }

            while (a3);
          }
        }
      }
    }
  }

  return result;
}

void sub_276EF460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_276F40794(va);
  _Unwind_Resume(a1);
}

uint64_t TSWPParagraphAttributeArray::buildInverseActionsForAddWithParData(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a4)
  {
    if (*(a4 + 456))
    {
      v6 = *(a4 + 464);
      if (v6)
      {
        v10 = result;
        if (*(a4 + 472) != 1 || *(v6 + 8) != *(result + 28))
        {
          v11 = *(v6 + 4);
          v12 = (*(*result + 432))(result);
          result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, a2);
          if (result != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = result;
            v14 = v11 & 0xFFFFFFFD | a5 | v12;
            v15 = TSWPAttributeRecord::paragraphData(*(v10 + 8) + 16 * result, *(v10 + 28));
            v16 = TSWPAttributeArray::rangeForAttributeIndex(v10, v13);
            v18 = v17;
            v19 = TSWPParagraphAttributeArray::calculateInverseRange(v10, a2, a3, v16, v17, a4, v14);
            v21 = v20;
            if (TSWPAttributeArray::supportsAttributeCollapsing(*(v10 + 28)))
            {
              v23 = objc_msgSend_attributeArrayForKind_(*(v10 + 16), v22, 0);
              v24 = v16 + v18;
              v25 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v23, v24);
              if (v25 + 1 == *(v23 + 24))
              {
                v26 = v25;
                if (TSWPParagraphAttributeArray::isParagraphBreakSparse(v10, v25, v23))
                {
                  v27 = TSWPAttributeArray::rangeForAttributeIndex(v23, v26);
                  sub_276F40060(v29, v14 | 0x8000, *(v10 + 28), v27, v28, v15, 0);
                  sub_276F2F6C0(a4, v29, 0);
                  sub_276F40794(v29);
                }
              }
            }

            else
            {
              v24 = v16 + v18;
            }

            if (v24 > v19 + v21)
            {
              sub_276F40060(v29, v14 | 0x8000, *(v10 + 28), v19 + v21, v24 - (v19 + v21), v15, 0);
              sub_276F2F6C0(a4, v29, 0);
              sub_276F40794(v29);
            }

            sub_276F40060(v29, v14, *(v10 + 28), v19, v21, v15, 0);
            sub_276F2F6C0(a4, v29, 0);
            return sub_276F40794(v29);
          }
        }
      }
    }
  }

  return result;
}

uint64_t TSWPParagraphAttributeArray::nextAttributeIndexToShift(TSWPParagraphAttributeArray *this, uint64_t a2, unint64_t a3, objc_object *a4)
{
  v7 = a4;
  if (TSWPAttributeArray::supportsAttributeCollapsing(*(this + 28)) && a2 + 1 < *(this + 6))
  {
    v8 = TSWPAttributeArray::objectForAttributeIndex(this, a2 + 1);

    if (a2 + 1 <= a3)
    {
      v9 = a2 + 1;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = a2 + 1;
    }

    if (v8 == v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

void TSWPParagraphAttributeArray::applyObjectToParagraphRange(NSUInteger a1, void *a2, const char *a3, NSUInteger a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v99 = v10;
  if (!a5)
  {
    v27 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void TSWPParagraphAttributeArray::applyObjectToParagraphRange(__strong id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v29, v23, v25, 433, 0, "Unexpected nil paragraphArray");
    goto LABEL_9;
  }

  v97 = a4;
  if (!a4 || &a3[a4] > *(a5 + 24))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void TSWPParagraphAttributeArray::applyObjectToParagraphRange(__strong id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    v101.location = a3;
    v101.length = a4;
    v15 = NSStringFromRange(v101);
    v16 = *(a5 + 24);
    v18 = TSWPAttributeArray::attributeArrayName(*(a5 + 28), v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v14, 437, 0, "Bad par index range %{public}@ (%lu) in %@", v15, v16, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  if (v10 || a5 != a1)
  {
    v92 = *(MEMORY[0x277D81490] + 8);
    v93 = *MEMORY[0x277D81490];
    v32 = &a3[v97];
    v94 = 0x7FFFFFFFFFFFFFFFLL;
    if (a1 == a5 || !v97)
    {
      v95 = 0;
    }

    else
    {
      if (v32 < *(a5 + 24) && TSWPParagraphAttributeArray::isParagraphBreakSparse(a1, &a3[v97], a5))
      {
        v33 = TSWPAttributeArray::charIndexForAttributeIndex(a5, v32);
        v34 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v33);
        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v94 = v34;
          v89 = TSWPAttributeArray::objectForAttributeIndex(a1, v34);
          if (v89 == v10)
          {
            v94 = 0x7FFFFFFFFFFFFFFFLL;
            v95 = 0;
          }

          else
          {
            v90 = TSWPAttributeArray::rangeForAttributeIndex(a1, v94);
            v92 = v91 - v33 + v90;
            v95 = v89;
            v93 = v33;
          }

          goto LABEL_18;
        }

        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0x7FFFFFFFFFFFFFFFLL, "void TSWPParagraphAttributeArray::applyObjectToParagraphRange(__strong id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 451, 0, "Bad attribute index.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
      }

      v94 = 0x7FFFFFFFFFFFFFFFLL;
      v95 = 0;
    }

LABEL_18:
    if (v32 > *(a5 + 24))
    {
LABEL_103:

      goto LABEL_104;
    }

    if (v10)
    {
      if (a3 < v32)
      {
        v42 = 0;
        v43 = a3;
        while (1)
        {
          v44 = TSWPAttributeArray::charIndexForAttributeIndex(a5, v43);
          v100 = 0x7FFFFFFFFFFFFFFFLL;
          v45 = TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(a1, v43, a5, &v100);
          v46 = TSWPAttributeArray::rangeForAttributeIndex(a1, v45);
          v48 = v47;
          if (v45 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v49 = 0;
          }

          else
          {
            v49 = TSWPAttributeArray::objectForAttributeIndex(a1, v45);
          }

          v50 = *(a1 + 28);
          if (*(a1 + 28))
          {
            if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a1 + 28)))
            {
              if (v45 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v100 == v44)
                {
LABEL_37:
                  (*(*a1 + 456))(a1, v45, 1, v99, a6, v50 == 0);
                  TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(a1, v99, v45, 0, a6);
                  goto LABEL_54;
                }

                if (v100 >= v44)
                {
                  v56 = MEMORY[0x277D81150];
                  v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "void TSWPParagraphAttributeArray::applyObjectToParagraphRange(__strong id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
                  v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 511, 0, "supportsSingleSparseBreakingTableEntries charIndex > parTableCharIndex should have been handled.");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
                  goto LABEL_54;
                }

LABEL_31:
                v52 = TSWPAttributeArray::rangeForAttributeIndex(a5, v43);
                (*(*a1 + 464))(a1, v52, v53, v99, a6, 0);
                (*(*a1 + 56))(a1, v99, v44, v45 + 1, 0, a6);
                goto LABEL_54;
              }

              (*(*a1 + 464))(a1, v44, 1, v99, a6, 0);
              (*(*a1 + 56))(a1, v99, v44, *(a1 + 24), 0, a6);
            }

            else
            {
              if (v100 == v44)
              {
                if (v49 != v99)
                {
                  if (v45)
                  {
                    v54 = TSWPAttributeArray::objectForAttributeIndex(a1, (v45 - 1));
                  }

                  else
                  {
                    v54 = 0;
                  }

                  v63 = v99;
                  if (v54 == v99 && (v64 = TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(a1 + 28)), v63 = v99, !v64))
                  {
                    (*(*a1 + 456))(a1, v45, 1, v99, a6, 0);
                    (*(*a1 + 64))(a1, v45, 1, a6);
                  }

                  else
                  {
                    (*(*a1 + 456))(a1, v45, 1, v63, a6, 0);
                    TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(a1, v99, v45, 0, a6);
                  }
                }

                goto LABEL_54;
              }

              if (v49 == v99 && !v42 && TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(a1 + 28)))
              {
                AttributeIndexToShift = TSWPParagraphAttributeArray::nextAttributeIndexToShift(a1, v45, v94, v99);
                if (AttributeIndexToShift != 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                if (v49 == v99)
                {
                  goto LABEL_54;
                }

                AttributeIndexToShift = TSWPParagraphAttributeArray::nextAttributeIndexToShift(a1, v45, v94, v99);
                if (AttributeIndexToShift != 0x7FFFFFFFFFFFFFFFLL)
                {
LABEL_53:
                  (*(*a1 + 456))(a1, AttributeIndexToShift, 1, v99, a6, 0);
                  (*(*a1 + 464))(a1, v44, v48 - v44 + v46, v99, a6, 0);
                  TSWPAttributeArray::replaceCharIndexForAttributeIndex(a1, v44, AttributeIndexToShift);
                  goto LABEL_54;
                }
              }

              (*(*a1 + 464))(a1, v44, v48 - v44 + v46, v99, a6, 0);
              (*(*a1 + 56))(a1, v99, v44, v45 + 1, 0, a6);
            }
          }

          else
          {
            if (v100 == v44)
            {
              goto LABEL_37;
            }

            if (v100 < v44)
            {
              goto LABEL_31;
            }
          }

LABEL_54:

          ++v43;
          ++v42;
          v10 = v99;
          if (v97 == v42)
          {
            goto LABEL_93;
          }
        }
      }

      goto LABEL_93;
    }

    if (a3 >= v32)
    {
LABEL_93:
      if (v93 != *MEMORY[0x277D81490] || v92 != *(MEMORY[0x277D81490] + 8))
      {
        v80 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v93);
        if (v80 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v81 = MEMORY[0x277D81150];
          v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "void TSWPParagraphAttributeArray::applyObjectToParagraphRange(__strong id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 637, 0, "Bad attribute index.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
        }

        else
        {
          v88 = TSWPAttributeArray::objectForAttributeIndex(a1, v80);

          if (v88 != v95 && TSWPAttributeArray::rangeForAttributeIndex(a1, v80) < v93)
          {
            (*(*a1 + 464))(a1, v93, v92, v95, a6, 0x8000);
            (*(*a1 + 56))(a1, v95, v93, v80 + 1, 0, a6);
          }
        }
      }

      TSWPParagraphAttributeArray::didApplyAttributes(a1, a3, v97, a5, a6);
      goto LABEL_103;
    }

    v66 = a3;
    v65 = v97;
    while (1)
    {
      v67 = TSWPAttributeArray::charIndexForAttributeIndex(a5, v66);
      v68 = (*(*a1 + 104))(a1);
      v102.location = 1;
      v102.length = a1;
      v69 = TSWPAttributeArray::calculateParIndexRangeFromCharRangeAndBreakingTable(v67, v102, v68);
      v71 = v69;
      v72 = v70;
      v73 = v70 == *(MEMORY[0x277D81490] + 8) && v69 == *MEMORY[0x277D81490];
      if (!v73 && v70 != 0)
      {
        break;
      }

LABEL_89:
      ++v66;
      if (!--v65)
      {
        goto LABEL_93;
      }
    }

    if (TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a1 + 28)) && TSWPAttributeArray::charIndexForAttributeIndex(a1, v71) < v67)
    {
      ++v71;
      --v72;
    }

    if (v71)
    {
      if (v72)
      {
        goto LABEL_71;
      }

LABEL_79:
      v75 = 0;
LABEL_80:
      v77 = v71 != *MEMORY[0x277D81490] || v75 != *(MEMORY[0x277D81490] + 8);
      if (v75 && v77)
      {
        (*(*a1 + 456))(a1, v71, v75, 0, a6, 0);
        (*(*a1 + 64))(a1, v71, v75, a6);
      }

      goto LABEL_89;
    }

    if (TSWPAttributeArray::allowsNilObjects(*(a1 + 28)))
    {
      (*(*a1 + 456))(a1, 0, 1, 0, a6, 0);
      TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(a1, 0, 0, 0, a6);
    }

    if (*(a1 + 24) >= 2u && TSWPAttributeArray::charIndexForAttributeIndex(a1, 1) <= v67)
    {
      --v72;
      v71 = 1;
      if (!v72)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v71 = *MEMORY[0x277D81490];
      v72 = *(MEMORY[0x277D81490] + 8);
      if (!v72)
      {
        goto LABEL_79;
      }
    }

LABEL_71:
    if (TSWPAttributeArray::charIndexForAttributeIndex(a1, v71) >= v67)
    {
      v75 = v72;
    }

    else
    {
      ++v71;
      v75 = v72 - 1;
    }

    goto LABEL_80;
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void TSWPParagraphAttributeArray::applyObjectToParagraphRange(__strong id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 438, 0, "Not allowed to delete paragraph styles.  Replace only!");
LABEL_9:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
LABEL_104:
}

const char *TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(TSWPParagraphAttributeArray *this, const char *a2, TSWPAttributeArray *a3, unint64_t *a4)
{
  v7 = TSWPAttributeArray::charIndexForAttributeIndex(a3, a2);
  v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v7);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "TSWPAttributeIndex TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(TSWPAttributeIndex, TSWPParagraphAttributeArray *, TSWPCharIndex *)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1379, 0, "Bad attribute index for paragraph array(%lu), count(%lu), paragraph array count(%lu), charIndex(%lu).", *(this + 28), *(this + 6), *(a3 + 6), 0x7FFFFFFFFFFFFFFFLL);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v17 = TSWPAttributeArray::charIndexForAttributeIndex(this, v9);
  if (a4)
  {
LABEL_5:
    *a4 = v17;
  }

  return v9;
}

TSWPAttributeArray *TSWPParagraphAttributeArray::didApplyAttributes(TSWPAttributeArray *result, const char *a2, uint64_t a3, TSWPAttributeArray *this, uint64_t a5)
{
  v5 = &a2[a3];
  if (!__CFADD__(a2, a3))
  {
    v8 = a2;
    v9 = result;
    do
    {
      if (v8 < *(this + 6))
      {
        v10 = TSWPAttributeArray::charIndexForAttributeIndex(this, v8);
        v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v9, v10);
        result = (*(v9->var0 + 46))(v9, v11, a5);
      }

      ++v8;
    }

    while (v8 <= v5);
  }

  return result;
}

uint64_t TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(uint64_t a1, char *a2, const char *a3, NSUInteger a4, uint64_t a5, uint64_t a6)
{
  range = a3;
  v7 = a4;
  if (a4)
  {
    v10 = a5 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10 || (v12 = &a3[a4], v13 = *(a5 + 24), &a3[a4] > v13))
  {
    v74 = v11;
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(const TSWPParagraphData &, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    v80.location = range;
    v18 = v7;
    v80.length = v7;
    v19 = NSStringFromRange(v80);
    v20 = *(a5 + 24);
    v22 = TSWPAttributeArray::attributeArrayName(*(a5 + 28), v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v23, v15, v17, 657, 0, "Bad par index range %{public}@ (%lu) in %@", v19, v20, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    v26 = *MEMORY[0x277D81490];
    v27 = *(MEMORY[0x277D81490] + 8);
    v78.var0.var0.listStart = 0;
    if ((v74 & 1) == 0)
    {
      v28 = 0;
      v7 = v18;
      a3 = range;
      v12 = &range[v18];
      goto LABEL_22;
    }

    v13 = *(a5 + 24);
    v7 = v18;
    a3 = range;
    v12 = &range[v18];
  }

  else
  {
    v26 = *MEMORY[0x277D81490];
    v27 = *(MEMORY[0x277D81490] + 8);
    v78.var0.var0.listStart = 0;
  }

  if (v12 >= v13)
  {
    v28 = 0;
  }

  else
  {
    if (TSWPParagraphAttributeArray::isParagraphBreakSparse(a1, v12, a5))
    {
      v29 = v26;
      *v72 = v7;
      v26 = TSWPAttributeArray::charIndexForAttributeIndex(a5, v12);
      v30 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v26);
      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "BOOL TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(const TSWPParagraphData &, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 669, 0, "Bad attribute index.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
LABEL_21:
        v28 = 0;
        v7 = *v72;
        a3 = range;
        v26 = v29;
        goto LABEL_22;
      }

      v39 = v30;
      v40 = TSWPAttributeRecord::paragraphData(*(a1 + 8) + 16 * v30, *(a1 + 28));
      if (TSWPAttributeArray::paragraphDataIsSame(*(a1 + 28), a2, v40))
      {
        goto LABEL_21;
      }

      v68 = TSWPAttributeArray::rangeForAttributeIndex(a1, v39);
      v27 = v69 - v26 + v68;
      v78.var0.var0.listStart = *v40;
      v28 = 1;
      v7 = *v72;
    }

    else
    {
      v28 = 0;
    }

    a3 = range;
  }

LABEL_22:
  if (v12 <= *(a5 + 24) && *(a1 + 24))
  {
    *v73 = v7;
    v75 = v28;
    v70 = v27;
    v71 = v26;
    if (a3 < v12)
    {
      v41 = a3;
      do
      {
        v42 = TSWPAttributeArray::charIndexForAttributeIndex(a5, v41);
        v43 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v42);
        if (v43 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v44 = 0;
        }

        else
        {
          v44 = v43;
        }

        v45 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v44);
        v46 = TSWPAttributeArray::rangeForAttributeIndex(a1, v44);
        v48 = v47;
        v49 = TSWPAttributeRecord::paragraphData(*(a1 + 8) + 16 * v44, *(a1 + 28));
        IsSame = TSWPAttributeArray::paragraphDataIsSame(*(a1 + 28), a2, v49);
        if (v45 == v42)
        {
          if (!IsSame)
          {
            if (v44 && (v51 = TSWPAttributeRecord::paragraphData(*(a1 + 8) + 16 * v44 - 16, *(a1 + 28)), TSWPAttributeArray::paragraphDataIsSame(*(a1 + 28), a2, v51)))
            {
              (*(*a1 + 456))(a1, v44, 1, 0, a6, 0);
              (*(*a1 + 64))(a1, v44, 1, a6);
              v75 = 1;
            }

            else
            {
              v75 = 1;
              (*(*a1 + 456))(a1, v44, 1, 0, a6, 0);
              TSWPAttributeRecord::setParagraphData(*(a1 + 8) + 16 * v44, *(a1 + 28), a2);
            }
          }
        }

        else if (!IsSame)
        {
          (*(*a1 + 464))(a1, v42, v48 - v42 + v46, 0, a6, 0);
          v52.var0.var0.listStart = *a2;
          TSWPAttributeRecord::TSWPAttributeRecord(&v79, v42, v52);
          TSWPAttributeArray::nonUndoableInsertAttribute(a1, &v79, (v44 + 1), 0, a6);
          v75 = 1;
        }

        ++v41;
      }

      while (v12 != v41);
    }

    v53 = v71 == *MEMORY[0x277D81490] && v70 == *(MEMORY[0x277D81490] + 8);
    v54 = *v73;
    if (!v53)
    {
      v55 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v71);
      if (v55 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "BOOL TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(const TSWPParagraphData &, NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 757, 0, "Bad attribute index.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
        v54 = *v73;
      }

      else
      {
        v64 = v55;
        v65 = TSWPAttributeRecord::paragraphData(*(a1 + 8) + 16 * v55, *(a1 + 28));
        if (!TSWPAttributeArray::paragraphDataIsSame(*(a1 + 28), v65, &v78) && TSWPAttributeArray::rangeForAttributeIndex(a1, v64) < v71)
        {
          (*(*a1 + 464))(a1, v71, v70, 0, a6, 0x8000);
          v66.var0.var0.listStart = v78.var0.var0.listStart;
          sub_276EF34D4(a1, v66, v71, (v64 + 1), a6);
        }
      }
    }

    TSWPParagraphAttributeArray::didApplyAttributes(a1, range, v54, a5, a6);
    v28 = v75;
  }

  return v28 & 1;
}

void TSWPParagraphAttributeArray::adoptStylesheetWithMapper(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = *(a1 + 28);
  if (v6 == 8)
  {
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = TSWPAttributeRecord::object(*(a1 + 8) + v7, *(a1 + 28));
        if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          objc_msgSend_adoptStylesheet_withMapper_(v9, v10, v16, v5);
        }

        ++v8;
        v7 += 16;
      }

      while (v8 < *(a1 + 24));
    }
  }

  else if (TSWPAttributeArray::hasObjects(v6) && *(a1 + 24))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v14 = TSWPAttributeRecord::object(*(a1 + 8) + v11, *(a1 + 28));
      if (v14)
      {
        v15 = objc_msgSend_mappedStyleForStyle_(v5, v13, v14);
        TSWPAttributeArray::replaceObjectForAttributeIndex(a1, v15, v12, 0, 0);
      }

      ++v12;
      v11 += 16;
    }

    while (v12 < *(a1 + 24));
  }

  (*(*a1 + 296))(a1);
}

uint64_t TSWPParagraphAttributeArray::paragraphRangeForCharRange(TSWPParagraphAttributeArray *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  if (a2.location >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2.location, "NSRange TSWPParagraphAttributeArray::paragraphRangeForCharRange(NSRange) const");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 817, 0, "Bad range location %lx", location);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2.location, "NSRange TSWPParagraphAttributeArray::paragraphRangeForCharRange(NSRange) const");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 818, 0, "Bad range length %lx", length);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = (*(this->var0 + 13))(this);
  v21 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, location);
  if (length)
  {
    v22 = location + length;
    if (v22 != v19 || (v23 = objc_msgSend_characterAtIndex_(this->var2, v20, v19 - 1), location = v19, (IsParagraphBreakingCharacter(v23) & 1) == 0))
    {
      location = v22 - 1;
    }
  }

  if (TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, location) - v21 == -1)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "NSRange TSWPParagraphAttributeArray::paragraphRangeForCharRange(NSRange) const");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 831, 0, "Paragraph range length should always be at least 1");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }

  return v21;
}

uint64_t TSWPParagraphAttributeArray::deletingWholeParagraphs(TSWPParagraphAttributeArray *this, _NSRange a2, TSWPAttributeArray *a3)
{
  if (!a3)
  {
    return 0;
  }

  length = a2.length;
  location = a2.location;
  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, a2.location);
  v7 = location + length;
  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v7);
  v9 = *(a3 + 6);
  if (v6 >= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = TSWPAttributeArray::charIndexForAttributeIndex(a3, v6) == location;
    v9 = *(a3 + 6);
  }

  v12 = v8 < v9 && TSWPAttributeArray::charIndexForAttributeIndex(a3, v8) == v7;
  return v10 & v12;
}

void TSWPParagraphAttributeArray::assignAttributesAtFrontOfRange(NSUInteger a1, NSUInteger a2, NSUInteger a3, TSWPParagraphAttributeArray *a4, uint64_t a5)
{
  if (!TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a1 + 28)))
  {
    v27.location = a2;
    v27.length = a3;
    v10 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(a4, v27);
    v12 = v11;
    v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2 + a3);
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSWPParagraphAttributeArray::assignAttributesAtFrontOfRange(NSRange, TSWPParagraphAttributeArray *, TSWPStorageActionState *)");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v18, v23, v17, 856, 0, "Bad attribute index in break table.");

      v21 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v21, v19, v20);
    }

    else
    {
      v22 = v13;
      if (!TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(a1 + 28)) || TSWPAttributeArray::exactAttributeIndexForCharIndex(a1, a2) != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (TSWPAttributeArray::hasObjects(*(a1 + 28)))
        {
          v24 = TSWPAttributeArray::objectForAttributeIndex(a1, v22);
          TSWPParagraphAttributeArray::applyObjectToParagraphRange(a1, v24, v10, v12, a4, a5);
        }

        else
        {
          v25 = *TSWPAttributeRecord::paragraphData(*(a1 + 8) + 16 * v22, *(a1 + 28));
          TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(a1, &v25, v10, v12, a4, a5);
        }
      }
    }
  }
}

void TSWPParagraphAttributeArray::willReplaceCharactersInRangeWithString(NSUInteger a1, NSUInteger a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a4;
  v15 = v13;
  *(a8 + 24 * *(a1 + 28)) &= ~1uLL;
  *(a8 + 24 * *(a1 + 28) + 8) = -1;
  if (a5 && *(a1 + 28) != 8)
  {
    v17 = objc_msgSend_paragraphIndexAtCharIndex_(*(a1 + 16), v14, a2 + a3);
    if (v17 + 1 >= *(a1 + 24))
    {
      v13 = (*(*a1 + 104))(a1);
      v19 = v13;
    }

    else
    {
      v13 = objc_msgSend_charIndexForParagraphAtIndex_(*(a1 + 16), v16, v17 + 1);
      v19 = (v13 - 1);
    }

    v20 = *(a8 + 24 * *(a1 + 28)) & 0xFFFFFFFFFFFFFFFELL;
    if (v19 == (a2 + a3))
    {
      ++v20;
    }

    *(a8 + 24 * *(a1 + 28)) = v20;
    if (*(a8 + 24 * *(a1 + 28)))
    {
      v21 = *(a1 + 16);
      v22 = objc_msgSend_length(v21, v14, v18);
      if (v21)
      {
        if (v19 >= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v19;
        }

        if (v19 <= v22)
        {
          v25 = v22;
        }

        else
        {
          v25 = v19;
        }

        objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_requireHidden_(v21, v23, v24, v25 - v24, 0, 0);
      }

      else
      {
        memset(&v76, 0, sizeof(v76));
      }

      *(a8 + 24 * *(a1 + 28) + 8) = TSWPParagraphEnumerator::relevantParagraphIndex(&v76);
      v26 = a8 + 24 * *(a1 + 28);
      v28 = *(v26 + 8);
      v27 = (v26 + 8);
      if (v17 == v28)
      {
        *v27 = -1;
      }

      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v76);
    }
  }

  if (!a3)
  {
    goto LABEL_75;
  }

  v29 = a1;
  if (*(a1 + 28))
  {
    v13 = objc_msgSend_attributeArrayForKind_(*(a1 + 16), v14, 0);
    v29 = v13;
  }

  if (!a5)
  {
    if (v29)
    {
      v77.location = a2;
      v77.length = a3;
      if (TSWPParagraphAttributeArray::deletingWholeParagraphs(v13, v77, v29))
      {
        if (*(a1 + 28) != 8)
        {
          TSWPParagraphAttributeArray::assignAttributesAtFrontOfRange(a1, a2, a3, v29, a7);
        }
      }
    }
  }

  if (!TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a1 + 28)))
  {
    v38 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
    v39 = a2 + a3;
    v41 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2 + a3);
    if (v38 >= *(a1 + 24))
    {
      v42 = 0;
    }

    else
    {
      v42 = TSWPAttributeArray::objectForAttributeIndex(a1, v38);
    }

    v43 = *(a1 + 24);
    if (v38 >= v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v38) == a2;
      v43 = *(a1 + 24);
    }

    if (v41 >= v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v41) == v39;
      v43 = *(a1 + 24);
    }

    v46 = v38 + 1;
    if ((v38 + 1) < v43 && v39 >= TSWPAttributeArray::charIndexForAttributeIndex(a1, v46))
    {
      v61.length = a3 - v44 + v45;
      if (v61.length)
      {
        v61.location = a2 + v44;
        v62 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(a1, v61);
        v64 = v63;
        if (v63)
        {
          v65 = v62;
          v66 = TSWPAttributeArray::supportsAttributeCollapsing(*(a1 + 28));
          v67 = v29 ? v66 : 0;
          if (v67 != 1 || (v68 = (TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v29, v39) + 1), v68 >= *(v29 + 24)) || !TSWPParagraphAttributeArray::isParagraphBreakSparse(a1, v68, v29) || (v69 = TSWPAttributeArray::charIndexForAttributeIndex(v29, v68), v70 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v69), v70 == 0x7FFFFFFFFFFFFFFFLL) || (!TSWPAttributeArray::hasObjects(*(a1 + 28)) ? (v71 = 0) : (TSWPAttributeArray::objectForAttributeIndex(a1, v70), v71 = objc_claimAutoreleasedReturnValue()), --v64, (*(*a1 + 456))(a1, v64 + v65, 1, v71, a7, 0), v73 = TSWPAttributeArray::rangeForAttributeIndex(a1, v70), (*(*a1 + 464))(a1, v69, v74 - v69 + v73, v71, a7, 0), TSWPAttributeArray::replaceCharIndexForAttributeIndex(a1, v69, v64 + v65), v71, v64))
          {
            (*(*a1 + 456))(a1, v65, v64, 0, a7, *(a1 + 28) == 0);
            (*(*a1 + 64))(a1, v65, v64, a7);
            (*(*a1 + 368))(a1, v65, a7);
          }
        }
      }

      goto LABEL_74;
    }

    v47 = *(a1 + 28);
    if (v47 == 2 && v42)
    {
      v48 = objc_msgSend_stylesheet(*(a1 + 16), v46, v40);
      v50 = objc_msgSend_styleWithIdentifier_(v48, v49, @"text-0-liststyle-None");

      if (v42 != v50)
      {
LABEL_51:
        v78.location = a2;
        v78.length = a3;
        v51 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(a1, v78);
        (*(*a1 + 456))(a1, v51, v52, 0, a7, 0);
LABEL_74:

        goto LABEL_75;
      }

      v47 = *(a1 + 28);
    }

    if (v47)
    {
      goto LABEL_74;
    }

    if (!v42)
    {
      goto LABEL_74;
    }

    v72 = objc_msgSend_followingParagraphStyle(v42, v46, v40);

    if (v72 == v42)
    {
      goto LABEL_74;
    }

    goto LABEL_51;
  }

  if (v29)
  {
    v30 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v29, a2);
    v31 = TSWPAttributeArray::charIndexForAttributeIndex(v29, v30);
    v32 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v29, a2 + a3);
    v33 = TSWPAttributeArray::charIndexForAttributeIndex(v29, v32);
    v34 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v31);
    v35 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v33);
    if (TSWPAttributeArray::charIndexForAttributeIndex(a1, v34) <= v31)
    {
      if (++v34 >= *(a1 + 24))
      {
        goto LABEL_75;
      }

      if (TSWPAttributeArray::charIndexForAttributeIndex(a1, v34) <= v31)
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "virtual void TSWPParagraphAttributeArray::willReplaceCharactersInRangeWithString(NSRange, NSString *__strong, NSUInteger, TSWPMarkers *, TSWPStorageActionState *, TSWPAttributeArrayDataContext &)");
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 943, 0, "Expected the next item to be after the paragraph char index.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
      }
    }

    if (v34 != 0x7FFFFFFFFFFFFFFFLL && v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = v35 - v34;
      if (v35 >= v34)
      {
        v37 = v36 + 1;
        if (v36 != -1)
        {
          (*(*a1 + 456))(a1, v34, v37, 0, a7, *(a1 + 28) == 0);
          (*(*a1 + 64))(a1, v34, v37, a7);
          (*(*a1 + 368))(a1, v34, a7);
        }
      }
    }
  }

LABEL_75:
}

uint64_t TSWPParagraphAttributeArray::nonUndoableAdjustCharIndexForCharRangeWithString(TSWPAttributeArray *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (a6 != a4)
  {
    TSWPAttributeArray::nonUndoableAdjustCharIndexStartingAtAttributeIndex(a1, a2, v11 + 1, a6 - a4);
  }

  return v11;
}

void TSWPParagraphAttributeArray::didReplaceCharactersInRangeWithString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a4;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = (*(*a1 + 72))(a1, 5, a2, a3, v17, a5, a7);
    if (a5)
    {
      v16 = v15;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((*(*a1 + 312))(a1))
        {
          (*(*a1 + 304))(a1, a2, a3, a5, v16, a6, a7, a9);
        }
      }
    }
  }
}

void TSWPParagraphAttributeArray::insertAttributesForMarkers(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "virtual void TSWPParagraphAttributeArray::insertAttributesForMarkers(NSRange, NSUInteger, TSWPAttributeIndex, TSWPMarkers *, TSWPStorageActionState *, TSWPAttributeArrayDataContext &)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 1127, 0, "insertAttributesForMarkers: we should not be in this method without objects or starts.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  if (!a6)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "virtual void TSWPParagraphAttributeArray::insertAttributesForMarkers(NSRange, NSUInteger, TSWPAttributeIndex, TSWPMarkers *, TSWPStorageActionState *, TSWPAttributeArrayDataContext &)");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 1128, 0, "insertAttributesForMarkers: No markers object.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    goto LABEL_13;
  }

  v24 = 0;
  v25 = a1[28];
  if (v25 > 7)
  {
    if (v25 == 8)
    {
      v58 = *a6;
      v57 = a6[1];
      if (*a6 != v57)
      {
        v59 = a2 + 1;
        do
        {
          if (*(v58 + 8) == 4)
          {
            (*(*a1 + 56))(a1, 0, v59 + *v58, ++a5, 0, a7);
            v57 = a6[1];
          }

          v58 += 16;
        }

        while (v58 != v57);
      }

      goto LABEL_13;
    }

    if (v25 != 11)
    {
      if (v25 != 18)
      {
        goto LABEL_14;
      }

      v39 = *(a8 + 440);
      if (v39 != -1)
      {
        objc_msgSend_writingDirectionForParagraphAtParIndex_(*(a1 + 2), v15, v39);
        for (i = *a6; i != a6[1]; i += 16)
        {
          IsParagraphBreakingCharacter(*(i + 8));
        }
      }

      goto LABEL_13;
    }

    v66 = *a6;
    if (*a6 != a6[1])
    {
      while (!IsParagraphBreakingCharacter(*(v66 + 8)))
      {
        v24 = 0;
        v66 += 16;
        if (v66 == a6[1])
        {
          goto LABEL_14;
        }
      }

      v72 = *(a8 + 24 * a1[28] + 8);
      if (v72 == -1)
      {
        v72 = a5;
      }

      if (v72 < *(a1 + 6) && *TSWPAttributeRecord::paragraphData(*(a1 + 1) + 16 * v72, a1[28]))
      {
        v24 = 0;
        if (a4 && *v66 + a2 != 0x7FFFFFFFFFFFFFFELL)
        {
          if (*(a1 + 2))
          {
            v73 = a6[1];
            if (v73 != *a6 && *(v73 - 16) == a4 - 1)
            {
              IsParagraphBreakingCharacter(*(v73 - 8));
            }
          }

          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  if (!a1[28])
  {
    v75 = objc_msgSend_isInInit(*(a1 + 2), v15, v16);
    v43 = objc_msgSend_documentRoot(*(a1 + 2), v41, v42);
    isBeingLocalized = objc_msgSend_isBeingLocalized(v43, v44, v45);

    v46 = *a6;
    if (*a6 != a6[1])
    {
      v24 = 0;
      v76 = a2 + 1;
      while (!IsParagraphBreakingCharacter(*(v46 + 8)))
      {
LABEL_45:
        v46 += 16;
        if (v46 == a6[1])
        {
          goto LABEL_14;
        }
      }

      v47 = v76 + *v46;
      if (v24)
      {
        v48 = 0;
LABEL_42:
        (*(*a1 + 56))(a1, v24, v47, ++a5, 0, a7);
        if (v48)
        {
          (*(*a1 + 456))(a1, a5, 1, v48, a7, 0);
          TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(a1, v48, a5, 0, a7);
        }

        goto LABEL_45;
      }

      if (*(a8 + 24 * a1[28] + 8) == -1)
      {
        v49 = a5;
      }

      else
      {
        v49 = *(a8 + 24 * a1[28] + 8);
      }

      v50 = TSWPAttributeArray::objectForAttributeIndex(a1, v49);
      v53 = v50;
      if (!(v75 & 1 | ((*(a8 + 24 * a1[28]) & 1) == 0) | isBeingLocalized & 1))
      {
        v54 = objc_msgSend_followingParagraphStyle(v50, v51, v52);
        if (v54)
        {
          v55 = v54 == v53;
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          v56 = (a8 + 24 * a1[28]);
          if ((~*v56 & 0x1FFFFFFFELL) == 0)
          {
            *v56 = *v56 & 0xFFFFFFFE00000001 | (2 * v47);
            *(a8 + 48) = *(a8 + 48) & 0xFFFFFFFE00000001 | (2 * v47);
          }

          v48 = v54;
          goto LABEL_41;
        }
      }

      v48 = 0;
LABEL_41:
      v24 = v53;
      goto LABEL_42;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  if (v25 == 1)
  {
    v60 = *(a8 + 32);
    if (v60 != -1)
    {
      v61 = objc_msgSend_paragraphLevelAtParIndex_(*(a1 + 2), v15, v60);
      v62 = *a6;
      if (*a6 != a6[1])
      {
        v63 = v61;
        do
        {
          if (IsParagraphBreakingCharacter(*(v62 + 8)))
          {
            objc_msgSend_paragraphFlagsAtCharIndex_(*(a1 + 2), v64, a2);
            TSWPParagraphAttributeArray::checkedCast16BitParDataValue(a1, v63, v65);
          }

          v62 += 16;
        }

        while (v62 != a6[1]);
      }
    }

    goto LABEL_13;
  }

  if (v25 == 2)
  {
    if (a4 && (*(a8 + 48) & 0x1FFFFFFFELL) != 0x1FFFFFFFELL && (v26 = *(a1 + 2)) != 0)
    {
      v27 = objc_msgSend_stylesheet(v26, v15, v16);
      v30 = objc_msgSend_defaultListStyle(v27, v28, v29);

      objc_msgSend_listStyleAtCharIndex_effectiveRange_(*(a1 + 2), v31, (*(a8 + 24 * a1[28]) >> 1), v77);
    }

    else
    {
      v67 = *(a8 + 56);
      if (v67 != -1)
      {
        v68 = objc_msgSend_listStyleAtParIndex_effectiveRange_(*(a1 + 2), v15, v67, 0);
        v69 = *a6;
        v70 = a6[1];
        if (*a6 != v70)
        {
          do
          {
            if (IsParagraphBreakingCharacter(*(v69 + 8)))
            {
              (*(*a1 + 56))(a1, v68, a2 + 1 + *v69, ++a5, 0, a7);
            }

            v69 += 16;
          }

          while (v69 != v70);
          v69 = *a6;
          v70 = a6[1];
        }

        for (; v69 != v70; v69 += 16)
        {
          if (IsParagraphBreakingCharacter(*(v69 + 8)))
          {
            v71 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2 + 1 + *v69);
            (*(*a1 + 368))(a1, v71, a7);
          }
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  *(a8 + 24 * a1[28]) &= ~1uLL;
  *(a8 + 24 * a1[28] + 8) = -1;
  *(a8 + 24 * a1[28]) |= 0x1FFFFFFFEuLL;
}

uint64_t TSWPParagraphAttributeArray::checkedCast16BitParDataValue(TSWPParagraphAttributeArray *this, const char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = objc_msgSend_wpKind(this->var2, a2, a3);
  if (v3 >= 0x10000)
  {
    v8 = v5;
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "UInt16 TSWPParagraphAttributeArray::checkedCast16BitParDataValue(NSUInteger)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1798, 0, "Out-of-bounds type assignment failed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v16 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "UInt16 TSWPParagraphAttributeArray::checkedCast16BitParDataValue(NSUInteger)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v18, v20, 1800, 0, "Paragraph level equals or exceeds 16 bit max. [attribute kind: %u][WPKind %u][level %u hex: %lx]", *(this + 28), v8, v3, v3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    LOWORD(v3) = 0;
  }

  return v3;
}

BOOL TSWPParagraphAttributeArray::canCollapseAttributes(TSWPParagraphAttributeArray *this, const TSWPAttributeRecord *a2, const TSWPAttributeRecord *a3)
{
  hasObjects = TSWPAttributeArray::hasObjects(*(this + 28));
  v7 = *(this + 28);
  if (hasObjects)
  {
    v8 = TSWPAttributeRecord::object(a2, v7);
    v9 = TSWPAttributeRecord::object(a3, *(this + 28));
    v10 = v8 == v9;

    return v10;
  }

  else
  {
    v12 = TSWPAttributeRecord::paragraphData(a2, v7);
    v13 = TSWPAttributeRecord::paragraphData(a3, *(this + 28));
    v14 = *(this + 28);

    return TSWPAttributeArray::paragraphDataIsSame(v14, v12, v13);
  }
}

TSWPAttributeArray *TSWPParagraphAttributeArray::collapseAttributesAtAttributeIndex(TSWPAttributeArray *this, const char *a2, uint64_t a3)
{
  v5 = this;
  if (a2 && *(this + 6) > a2 && (this = (*(this->var0 + 43))(this, &this->var1[a2], &this->var1[a2 - 1]), (this & 1) != 0) || (*(v5 + 6) - 1) == a2 && (v6 = TSWPAttributeArray::charIndexForAttributeIndex(v5, a2), this = (*(v5->var0 + 13))(v5), v6 > this))
  {
    v7 = *(v5->var0 + 8);

    return v7(v5, a2, 1, a3);
  }

  return this;
}

uint64_t TSWPParagraphAttributeArray::collapseAttributes(TSWPParagraphAttributeArray *this)
{
  result = TSWPAttributeArray::supportsAttributeCollapsing(*(this + 28));
  if (result)
  {
    v3 = *(this + 6);
    if (v3)
    {
      v4 = 0;
      do
      {
        result = (*(this->var0 + 45))(this, v4, 0);
        v5 = *(this + 6);
        if (v3 == v5)
        {
          ++v4;
        }

        v3 = *(this + 6);
      }

      while (v4 < v5);
    }
  }

  return result;
}

id TSWPParagraphAttributeArray::description(TSWPParagraphAttributeArray *this, const char *a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(this + 28);
  if (v5 > 0xA)
  {
    if (v5 == 11)
    {
      v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
      v29 = (*(this->var0 + 40))(this);
      objc_msgSend_appendFormat_(v4, v30, @"%s <%p> %@: Count: %lu.\n", v29, this, @"ParagraphListStarts", *(this + 6));
      if (*(this + 6))
      {
        v31 = 0;
        v32 = 0;
        do
        {
          v33 = TSWPAttributeArray::charIndexForAttributeIndex(this, v32);
          v34 = TSWPAttributeRecord::paragraphData(&this->var1[v31], *(this + 28));
          objc_msgSend_appendFormat_(v4, v35, @"\t%u CharIndex: %lu, start %lu\n"), v32++, v33, *v34);
          ++v31;
        }

        while (v32 < *(this + 6));
      }
    }

    else if (v5 == 18)
    {
      v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
      v14 = (*(this->var0 + 40))(this);
      objc_msgSend_appendFormat_(v4, v15, @"%s <%p> %@: Count: %lu.\n", v14, this, @"ParagraphWritingDirection", *(this + 6));
      if (*(this + 6))
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *TSWPAttributeRecord::paragraphData(&this->var1[v16], *(this + 28));
          v19 = TSWPAttributeArray::charIndexForAttributeIndex(this, v17);
          objc_msgSend_appendFormat_(v4, v20, @"\t%u CharIndex: %lu, direction %d\n"), v17++, v19, v18);
          ++v16;
        }

        while (v17 < *(this + 6));
      }
    }
  }

  else if (v5 == 1)
  {
    v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
    v21 = (*(this->var0 + 40))(this);
    objc_msgSend_appendFormat_(v4, v22, @"%s <%p> %@: Count: %lu.\n", v21, this, @"ParagraphData", *(this + 6));
    if (*(this + 6))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = TSWPAttributeArray::charIndexForAttributeIndex(this, v24);
        v26 = *TSWPAttributeRecord::paragraphData(&this->var1[v23], *(this + 28));
        v27 = TSWPAttributeRecord::paragraphData(&this->var1[v23], *(this + 28));
        objc_msgSend_appendFormat_(v4, v28, @"\t%u CharIndex: %lu, level %d flags %d\n"), v24++, v25, v26, *(v27 + 2));
        ++v23;
      }

      while (v24 < *(this + 6));
    }
  }

  else if (v5 == 10)
  {
    v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
    v6 = (*(this->var0 + 40))(this);
    objc_msgSend_appendFormat_(v4, v7, @"%s <%p> %@: Count: %u.\n", v6, this, @"CellData", *(this + 6));
    if (*(this + 6))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = TSWPAttributeArray::charIndexForAttributeIndex(this, v9);
        v11 = *TSWPAttributeRecord::paragraphData(&this->var1[v8], *(this + 28));
        v12 = TSWPAttributeRecord::paragraphData(&this->var1[v8], *(this + 28));
        objc_msgSend_appendFormat_(v4, v13, @"\t%u CharIndex: %lu, row %d column %d\n"), v9++, v10, v11, *(v12 + 2));
        ++v8;
      }

      while (v9 < *(this + 6));
    }
  }

  return v4;
}

void TSWPParagraphAttributeArray::loadFromArchive(TSWPParagraphAttributeArray *this, const TSWP::ParaDataAttributeTable *a2)
{
  *(this + 6) = 0;
  v3 = *(a2 + 6);
  if (v3)
  {
    TSWPAttributeArray::setCapacity(this, *(a2 + 6));
    v6 = 0;
    for (i = 0; i != v3; ++i)
    {
      v8 = *(*(a2 + 4) + 8 * i + 8);
      v9 = v8[6];
      v10 = *(this + 14);
      v11 = *(this + 14) == 11 || v10 == 18;
      if (v11 || (hasPairedData = TSWPAttributeArray::hasPairedData(v10)))
      {
        v12 = TSWPParagraphAttributeArray::checkedCast16BitParDataValue(this, v8[7], v5);
        v14.var0.var0.listStart = v12 | (TSWPParagraphAttributeArray::checkedCast16BitParDataValue(this, v8[8], v13) << 16);
      }

      else
      {
        v14.var0.var0.listStart = v8[7];
      }

      TSWPAttributeRecord::TSWPAttributeRecord(&v20, v9, v14);
      this->var1[v6++] = v20;
    }

    *(this + 6) = v3;
  }

  if (TSWPAttributeArray::hasObjects(*(this + 28)) && *(this + 6))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = TSWPAttributeRecord::object(&this->var1[v16], *(this + 28));
      if (v18)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_setParentStorage_(v18, v19, this->var2);
        }
      }

      ++v17;
      ++v16;
    }

    while (v17 < *(this + 6));
  }
}

TSWPParagraphAttributeArray *TSWPParagraphAttributeArray::saveToArchive(TSWPParagraphAttributeArray *this, TSWP::ParaDataAttributeTable *a2, const _NSRange *a3)
{
  v5 = this;
  location = a3->location;
  if (a3->location)
  {
    this = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, location);
    if (this == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = this;
    }

    v8 = a3->location;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  length = a3->length;
  v10 = v8 + length;
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v7 < *(v5 + 6))
  {
    for (i = v7; ; ++i)
    {
      var1 = v5->var1;
      var0 = var1[i].var0;
      if (var0 > v11)
      {
        return this;
      }

      v15 = var0 >= a3->location;
      v16 = var0 - a3->location;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a2 + 4);
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = *(a2 + 6);
      v20 = *v18;
      if (v19 >= *v18)
      {
        break;
      }

      *(a2 + 6) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
LABEL_23:
      if (HIDWORD(v17))
      {
        v34 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], location, "void TSWPParagraphAttributeArray::saveToArchive(TSWP::ParaDataAttributeTable &, const NSRange &) const");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphAttributeArray.mm");
        v30 = v34;
        v35 = v29;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v31, v17, v29, 1566, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
        LODWORD(v17) = -1;
      }

      v21[4] |= 1u;
      v21[6] = v17;
      v24 = *(v5 + 14);
      if (*(v5 + 14) == 11 || v24 == 18 || (hasPairedData = TSWPAttributeArray::hasPairedData(v24), LODWORD(v24) = *(v5 + 28), hasPairedData))
      {
        this = TSWPAttributeRecord::paragraphData(&var1[i], v24);
        var0_low_high = HIWORD(LODWORD(this->var0));
        var0_low = LODWORD(this->var0);
      }

      else
      {
        this = TSWPAttributeRecord::paragraphData(&var1[i], *(v5 + 28));
        var0_low_high = 0;
        var0_low = this->var0;
      }

      v21[4] |= 6u;
      v21[7] = var0_low;
      v21[8] = var0_low_high;
      v7 = (v7 + 1);
      if (v7 >= *(v5 + 6))
      {
        return this;
      }
    }

    if (v20 == *(a2 + 7))
    {
LABEL_21:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v18 = *(a2 + 4);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable_ParaDataAttribute>(*(a2 + 2));
    v22 = *(a2 + 6);
    v23 = *(a2 + 4) + 8 * v22;
    *(a2 + 6) = v22 + 1;
    *(v23 + 8) = v21;
    goto LABEL_23;
  }

  return this;
}

uint64_t TSWPParagraphAttributeArray::attributeIndexForOrderedParagraphData(TSWPParagraphAttributeArray *this, const TSWPParagraphData *a2)
{
  v3.var0.var0.listStart = a2->var0.var0.listStart;
  TSWPAttributeRecord::TSWPAttributeRecord(&v9, 0, v3);
  var1 = this->var1;
  v5 = *(this + 6);
  if (TSWPAttributeArray::hasSingleData(*(this + 28)))
  {
    v6 = sub_276EF8740;
  }

  else
  {
    v6 = sub_276EF878C;
  }

  v7 = bsearch(&v9, var1, v5, 0x10uLL, v6);
  if (v7)
  {
    return (v7 - this->var1) >> 4;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t sub_276EF8740(uint64_t a1, uint64_t a2)
{
  v3 = TSWPAttributeRecord::paragraphData(a1, 1uLL);
  v4 = TSWPAttributeRecord::paragraphData(a2, 1uLL);
  if (*v3 < *v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v3 != *v4;
  }
}

uint64_t sub_276EF878C(uint64_t a1, uint64_t a2)
{
  v3 = TSWPAttributeRecord::paragraphData(a1, 1uLL);
  v4 = TSWPAttributeRecord::paragraphData(a2, 1uLL);
  v5 = *v3;
  v6 = *v4;
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 != v6)
  {
    return 1;
  }

  v8 = v3[1];
  v9 = v4[1];
  v10 = v8 >= v9;
  v11 = v8 != v9;
  if (v10)
  {
    return v11;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_276EF8828(TSWPAttributeArray *this)
{
  this->var0 = &unk_288606DB0;
  if (*(this + 6))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      (*(this->var0 + 42))(this, &this->var1[v2]);
      ++v3;
      ++v2;
    }

    while (v3 < *(this + 6));
  }

  TSWPAttributeArray::~TSWPAttributeArray(this);
}

void sub_276EF88E0(TSWPAttributeArray *a1)
{
  sub_276EF8828(a1);

  JUMPOUT(0x277CA3D00);
}

void sub_276EF8918(uint64_t a1, uint64_t a2)
{
  v4 = TSWPAttributeRecord::object(a2, *(a1 + 28));

  if (v4)
  {
    v5 = TSWPAttributeRecord::object(a2, *(a1 + 28));
    CFRetain(v5);
  }
}

void sub_276EF89BC(uint64_t a1, uint64_t a2)
{
  v4 = TSWPAttributeRecord::object(a2, *(a1 + 28));

  if (v4)
  {
    v5 = TSWPAttributeRecord::object(a2, *(a1 + 28));
    CFRelease(v5);
  }
}

uint64_t sub_276EF8A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 28);
  v6 = TSWPAttributeRecord::object(a2, v5);
  v7 = TSWPAttributeRecord::object(a3, *(a1 + 28));
  IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(v5, v6, v7);

  return IsEquivalentToObject;
}

TSWPAttributeArray *sub_276EF8B08(TSWPAttributeArray *this, unint64_t a2, uint64_t a3)
{
  v5 = this;
  if (a2 && *(this + 6) > a2 && (this = (*(this->var0 + 43))(this, &this->var1[a2], &this->var1[a2 - 1]), (this & 1) != 0) || v5[6] - 1 == a2 && (v6 = TSWPAttributeArray::charIndexForAttributeIndex(v5, a2), this = (*(*v5 + 104))(v5), v6 == this) && *(v5 + 28) != 12 || v5[6] > a2 && (this = (*(*v5 + 352))(v5, *(v5 + 1) + 16 * a2, a2), this))
  {
    v7 = *(*v5 + 64);

    return v7(v5, a2, 1, a3);
  }

  return this;
}

void sub_276EF8C78(unsigned __int8 *a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6)
{
  v96 = a2;
  v93 = a5;
  if (a3 > (*(*a1 + 104))(a1) || a4 > (*(*a1 + 104))(a1) - a3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "virtual void TSWPStyleAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleAttributeArray.mm");
    v99.location = a3;
    v99.length = a4;
    v14 = NSStringFromRange(v99);
    v15 = (*(*a1 + 104))(a1);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 81, 0, "Bad input char range %{public}@; count=%lu, kind=%lu.", v14, v15, a1[28]);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v90 = *(MEMORY[0x277D81490] + 8);
  v91 = *MEMORY[0x277D81490];
  v94 = a3 + a4;
  v19 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3 + a4);
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v92 = 0;
  }

  else
  {
    v20 = TSWPAttributeArray::rangeForAttributeIndex(a1, v19);
    v90 = v21;
    v91 = v20;
    v92 = TSWPAttributeArray::objectForAttributeIndex(a1, v19);
  }

  v101.location = a3;
  v101.length = a4;
  v22 = TSWPAttributeArray::attributeRangeContainingCharacterRange(a1, v101);
  v24 = v23;
  v25 = TSWPAttributeArray::rangeForAttributeIndex(a1, v22);
  v88 = v26;
  v89 = v25;
  if (v22 < &v22[v24])
  {
    v27 = v22;
    do
    {
      v28 = TSWPAttributeArray::rangeForAttributeIndex(a1, v27);
      v30 = v29;
      v31 = TSWPAttributeArray::objectForAttributeIndex(a1, v27);
      v100.location = v28;
      v100.length = v30;
      v102.location = a3;
      v102.length = a4;
      if (NSIntersectionRange(v100, v102).length)
      {
        v33 = NSIntersectionRangeInclusive();
        v34 = v32;
        if (v28 <= a3)
        {
          if ((TSWPAttributeArray::objectIsEquivalentToObject(a1[28], v31, v96) & 1) == 0)
          {
            if (v28 == a3)
            {
              if ((v27 + 1) < *(a1 + 6))
              {
                v35 = a1[28];
                v87 = v27 + 1;
                v36 = TSWPAttributeArray::objectForAttributeIndex(a1, (v27 + 1));
                LODWORD(v35) = TSWPAttributeArray::objectIsEquivalentToObject(v35, v36, v96);

                if (v35)
                {
                  if (TSWPAttributeArray::charIndexForAttributeIndex(a1, v87) <= v94)
                  {
                    (*(*a1 + 456))(a1, v87, 1, v96, a6, 0);
                    (*(*a1 + 64))(a1, v87, 1, a6);
                    --v24;
                  }
                }
              }

              if (v27)
              {
                v37 = TSWPAttributeArray::objectForAttributeIndex(a1, (v27 - 1));
                IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(a1[28], v37, v96);
                v39 = *(*a1 + 456);
                if (IsEquivalentToObject)
                {
                  v39(a1, v33, v34, v96, a6, 0);
                  (*(*a1 + 64))(a1, v27, 1, a6);
                  --v24;
                  --v27;
                }

                else
                {
                  v39(a1, v33, v34, v96, a6, 0);
                  TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(a1, v96, v27, v93, a6);
                }
              }

              else
              {
                (*(*a1 + 456))(a1, v33, v34, v96, a6, 0);
                TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(a1, v96, 0, v93, a6);
                v27 = 0;
              }
            }

            else
            {
              (*(*a1 + 464))(a1, v33, v34, v96, a6, 0);
              (*(*a1 + 56))(a1, v96, a3, ++v27, v93, a6);
              ++v24;
            }
          }
        }

        else if (v28 < v94 && v28 + v30 <= v94)
        {
          (*(*a1 + 456))(a1, v33, v32, v96, a6, 0);
          (*(*a1 + 64))(a1, v27--, 1, a6);
          --v24;
        }
      }

      ++v27;
    }

    while (v27 < &v22[v24]);
  }

  v40 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, v94);
  v42 = v40;
  if ((v90 != *(MEMORY[0x277D81490] + 8) || v91 != *MEMORY[0x277D81490]) && v40 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v45 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v40);
    v46 = TSWPAttributeArray::objectIsEquivalentToObject(a1[28], v92, v96);
    TSWPAttributeArray::rangeForAttributeIndex(a1, v42);
    v47 = NSIntersectionRangeInclusive();
    v48 = v41;
    v49 = *(a1 + 6);
    if (v42 < v49)
    {
      if (((TSWPAttributeArray::charIndexForAttributeIndex(a1, v42) == v94) & v46) != 0)
      {
        goto LABEL_53;
      }

      v49 = *(a1 + 6);
    }

    if (v42 < v49 && TSWPAttributeArray::charIndexForAttributeIndex(a1, v42) == v94 || ((v45 <= a3) & v46) != 0)
    {
      goto LABEL_55;
    }

    if (v45 <= a3)
    {
      goto LABEL_42;
    }

    if ((v45 > v94) | (v46 ^ 1) & 1)
    {
      if ((v45 > v94) | v46 & 1)
      {
LABEL_42:
        if (v94 < (*(*a1 + 104))(a1))
        {
          v50 = v91 + v90;
          if (v89 > v94 || v89 + v88 < v50)
          {
            v51 = MEMORY[0x277D81150];
            v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "virtual void TSWPStyleAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
            v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleAttributeArray.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 207, 0, "Unexpected condition. This case should have been handled sonewhere above.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
            (*(*a1 + 464))(a1, v94, v50 - v94, v92, a6, 0);
          }

          (*(*a1 + 56))(a1, v92, v94, v42 + 1, v93, a6);
        }

        goto LABEL_55;
      }

      v58 = (*(*a1 + 104))(a1);
      v59 = *(*a1 + 456);
      if (v94 != v58)
      {
        v59(a1, v47, v48, v96, a6, 0);
        if (v91 + v90 == v94)
        {
          v61 = MEMORY[0x277D81150];
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "virtual void TSWPStyleAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleAttributeArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 194, 0, "Expected length.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
        }

        (*(*a1 + 464))(a1, v94, v91 + v90 - v94, v92, a6, 0);
        TSWPAttributeArray::nonUndoableReplaceCharIndexForAttributeIndex(a1, v94, v42);
        goto LABEL_55;
      }

LABEL_54:
      v59(a1, v47, v48, v96, a6, 0);
      (*(*a1 + 64))(a1, v42, 1, a6);
      goto LABEL_55;
    }

LABEL_53:
    v59 = *(*a1 + 456);
    goto LABEL_54;
  }

LABEL_55:
  v68 = *(a1 + 6);
  if (v68 || (v69 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "virtual void TSWPStyleAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)"), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleAttributeArray.mm"), v72 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v73, v70, v72, 215, 0, "Unexpected 0 count attribute index."), v72, v70, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75), (v68 = *(a1 + 6)) != 0))
  {
    v76 = TSWPAttributeArray::charIndexForAttributeIndex(a1, (v68 - 1));
    if (v76 >= (*(*a1 + 104))(a1) && (!objc_msgSend_isInInit(*(a1 + 2), v77, v78) || v76 < (*(*a1 + 104))(a1)) && (v76 != (*(*a1 + 104))(a1) || !TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(a1[28])))
    {
      v80 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "virtual void TSWPStyleAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v84, v81, v83, 221, 0, "Unxpected attribute at end of storage.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86);
    }
  }
}

id sub_276EF9918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (TSWPAttributeArray::attributeKindTextReplacementAlwaysDeletes(*(a1 + 28)))
  {
    v8 = 0;
  }

  else
  {
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
    v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2 + a3);
    v8 = 0;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL && v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = TSWPAttributeArray::rangeForAttributeIndex(a1, v10);
      v8 = 0;
      if (!a3)
      {
        if (a4)
        {
          if (v14 == a2)
          {
            if (!v10 || (TSWPAttributeArray::objectForAttributeIndex(a1, (v10 - 1)), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
            }
          }
        }
      }
    }
  }

  return v8;
}

void sub_276EF99FC(uint64_t a1, NSUInteger location, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a4;
  v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, location);
  v13 = location + a3;
  v14 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, location + a3);
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = a7;
      v38 = TSWPAttributeArray::rangeForAttributeIndex(a1, v12);
      v36 = v17;
      range2 = a3;
      v18 = a5 == 0;
      if (a5)
      {
        v19 = a3 == 0;
      }

      else
      {
        v19 = 0;
      }

      v20 = !v18 && a3 != 0;
      v21 = v18 && a3 != 0;
      v37 = (*(*a1 + 104))(a1);
      if ((*(*a1 + 104))(a1))
      {
        v22 = TSWPAttributeArray::charIndexForAttributeIndex(a1, (*(a1 + 24) - 1));
        v23 = v22 == (*(*a1 + 104))(a1);
        if (v21)
        {
LABEL_14:
          v24 = v16;
          if (TSWPAttributeArray::attributeKindDoesNotGrow(*(a1 + 28)))
          {
            if (v38 != location)
            {
              if (v38 + v36 > v13)
              {
                v15 = v12;
LABEL_21:
                v25 = TSWPAttributeArray::objectForAttributeIndex(a1, v15);
LABEL_65:
                (*(*a1 + 32))(a1, v25, location, range2, 0, v24);
LABEL_66:

                goto LABEL_67;
              }

              v25 = TSWPAttributeArray::objectForAttributeIndex(a1, v12);
              if (!v25)
              {
                goto LABEL_65;
              }

LABEL_44:
              (*(*a1 + 32))(a1, 0, location, range2, 0, v16);
              goto LABEL_65;
            }

            if (v13 < v37 || v23)
            {
              v25 = TSWPAttributeArray::objectForAttributeIndex(a1, v15);
              if (!v25)
              {
                goto LABEL_65;
              }

              goto LABEL_44;
            }

            v25 = 0;
            if (!location || !v12)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v29 = v38 != location || v13 < v37;
            if (v29 || v23)
            {
              if (v38 != location)
              {
                v25 = TSWPAttributeArray::objectForAttributeIndex(a1, v12);
                if (v15 == (*(a1 + 24) - 1))
                {
                  v30 = v38;
                  v31 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v15);
                  v32 = v31 == (*(*a1 + 104))(a1);
                }

                else
                {
                  v32 = 0;
                  v30 = v38;
                }

                if (v30 + v36 <= v13 && !v32)
                {
                  v35 = TSWPAttributeArray::objectForAttributeIndex(a1, v15);
                  (*(*a1 + 32))(a1, v35, location, range2, 0, v16);
                }

                goto LABEL_65;
              }

              if (location + v36 >= v13 && v15 == v12)
              {
                (*(*a1 + 456))(a1, location, range2, 0, v16, 0);
              }

              goto LABEL_21;
            }

            if (!location)
            {
              v25 = 0;
              goto LABEL_65;
            }

            v33 = TSWPAttributeArray::objectForAttributeIndex(a1, v12);

            v25 = 0;
            if (v33 || !v12)
            {
              goto LABEL_65;
            }
          }

          v25 = TSWPAttributeArray::objectForAttributeIndex(a1, (v12 - 1));
          v42.location = TSWPAttributeArray::rangeForAttributeIndex(a1, v12 - 1);
          v43.location = location;
          v43.length = range2;
          v34 = NSUnionRange(v42, v43);
          range2 = v34.length;
          location = v34.location;
LABEL_57:
          if (!range2)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v23 = 0;
        if (v21)
        {
          goto LABEL_14;
        }
      }

      if (v20)
      {
        v15 = v12;
        v24 = v16;
        goto LABEL_21;
      }

      if (v19)
      {
        if (TSWPAttributeArray::attributeKindTextReplacementAlwaysDeletes(*(a1 + 28)))
        {
          v26 = TSWPAttributeArray::objectForAttributeIndex(a1, v12);
          if (v26)
          {
            v27 = (*(*a1 + 104))(a1);
            if (v38 + v36 == v13 && v38 + v36 == v27)
            {
              (*(*a1 + 32))(a1, 0, v38, v36, 0, v16);
              (*(*a1 + 32))(a1, v26, v38, v36, 0, v16);
            }
          }
        }

        if (v38 == location)
        {
          v25 = 0;
        }

        else
        {
          v25 = TSWPAttributeArray::objectForAttributeIndex(a1, v12);
        }

        goto LABEL_66;
      }

      v25 = 0;
      v24 = v16;
      goto LABEL_57;
    }
  }

LABEL_67:
}

void sub_276EFA0B0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a4;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = a5 == 0;
    }

    v15 = !v14;
    if (a3 | a5 && *(a1 + 24))
    {
      v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = TSWPAttributeArray::rangeForAttributeIndex(a1, v16);
        if ((v15 & TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(*(a1 + 28))) == 1 && v17 == (*(*a1 + 104))(a1) - a5)
        {
          v18 = TSWPAttributeArray::objectForAttributeIndex(a1, v16);
          v19 = v18 != 0;
        }

        else
        {
          v19 = 0;
        }

        if (v17 > a2 || v19)
        {
          v21 = *(a1 + 24);
          v22 = v16 || v21 == 0;
          v20 = !v22;
        }

        else
        {
          v20 = 0;
          ++v16;
          v21 = *(a1 + 24);
        }

        if (v16 < v21)
        {
          TSWPAttributeArray::nonUndoableAdjustCharIndexStartingAtAttributeIndex(a1, 4, v16, a5 - a3);
          if (v20)
          {
            (*(*a1 + 56))(a1, 0, 0, v16, 0, a7);
          }
        }
      }

      v23 = *(a9 + 24 * *(a1 + 28) + 16);
      if (v23)
      {
        v24 = v23;
        v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26);

        if (v24 == v27)
        {

          v24 = 0;
        }

        (*(*a1 + 32))(a1, v24, a2, a5, 0, a7);
        v28 = a9 + 24 * *(a1 + 28);
        v29 = *(v28 + 16);
        *(v28 + 16) = 0;
      }
    }

    if (!TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(*(a1 + 28)))
    {
      if (*(a1 + 24))
      {
        if (a2 == (*(*a1 + 104))(a1))
        {
          v30 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a1, a2);
          if (v30 != 0x7FFFFFFFFFFFFFFFLL)
          {
            (*(*a1 + 64))(a1, v30, 1, a7);
            if (!*(a1 + 24))
            {
              (*(*a1 + 56))(a1, 0, 0, 0, 0, a7);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_276EFA428(TSWPAttributeArray *a1)
{
  if (!TSWPAttributeArray::attributeArrayNeedsRepair(a1))
  {
    if (sub_276EFA484(a1))
    {
      return 0;
    }

    if (*MEMORY[0x277D81430] != -1)
    {
      sub_276F5815C();
    }
  }

  return 1;
}

BOOL sub_276EFA484(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 1;
  }

  v3 = TSWPAttributeArray::charIndexForAttributeIndex(a1, (v1 - 1));
  if (v3 < (*(*a1 + 104))(a1))
  {
    return 1;
  }

  result = TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(*(a1 + 28));
  if (result)
  {
    v5 = TSWPAttributeArray::charIndexForAttributeIndex(a1, (*(a1 + 24) - 1));
    return v5 == (*(*a1 + 104))(a1);
  }

  return result;
}

void sub_276EFA54C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

uint64_t sub_276EFA590(uint64_t a1)
{
  result = TSWPAttributeArray::nonUndoableRepair(a1);
  if (*(a1 + 24) >= 2u)
  {
    result = sub_276EFA484(a1);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 24) - 1;
      v4 = *(*a1 + 64);

      return v4(a1, v3, 1, 0);
    }
  }

  return result;
}

void sub_276EFA61C(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a1 + 8);
      v9 = TSWPAttributeRecord::object(v8 + v6, *(a1 + 28));

      if (v9)
      {
        v10 = TSWPAttributeRecord::object(v8 + v6, *(a1 + 28));
        v12 = objc_msgSend_mappedStyleForStyle_(v5, v11, v10);

        TSWPAttributeArray::replaceObjectForAttributeIndex(a1, v12, v7, 0, 0);
      }

      ++v7;
      v6 += 16;
    }

    while (v7 < *(a1 + 24));
  }

  if (TSWPAttributeArray::supportsAttributeCollapsing(*(a1 + 28)))
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = 0;
      do
      {
        (*(*a1 + 360))(a1, v14, 0);
        v15 = *(a1 + 24);
        if (v13 == v15)
        {
          ++v14;
        }

        v13 = *(a1 + 24);
      }

      while (v14 < v15);
    }
  }
}

void sub_276EFA7B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = TSWPAttributeArray::objectForAttributeIndex(a1, 0);

    if (!v4)
    {
      v5 = *(*a1 + 64);

      v5(a1, 0, 1, a2);
    }
  }
}

void sub_276EFA864(TSWPAttributeArray *a1)
{
  sub_276EF8828(a1);

  JUMPOUT(0x277CA3D00);
}

void sub_276EFA8A8(uint64_t a1, void *a2, void *a3)
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

uint64_t sub_276EFA984(TSWPAttributeArray *this, unint64_t a2, _NSRange a3)
{
  length = a3.length;
  location = a3.location;
  if (*(this + 28) == 7)
  {
    v7 = TSWPAttributeArray::objectForAttributeIndex(this, a2);
    v9 = v7;
    if (v7)
    {
      canCopy = objc_msgSend_canCopy_(v7, v8, location, length);
    }

    else
    {
      v14.location = location;
      v14.length = length;
      canCopy = TSWPAttributeArray::shouldArchiveAttributeIndex(this, a2, v14);
    }

    v12 = canCopy;

    return v12;
  }

  else
  {

    return TSWPAttributeArray::shouldArchiveAttributeIndex(this, a2, a3);
  }
}

void sub_276EFAA5C(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6)
{
  v17 = a2;
  v11 = a5;
  v19.location = a3;
  v19.length = a4;
  if (TSWPAttributeArray::isRangeStartingAtEndOfStorage(a1, v19))
  {
    v12 = *(a1 + 24);
    if (v12 && (v13 = v12 - 1, v14 = TSWPAttributeArray::charIndexForAttributeIndex(a1, (v12 - 1)), v14 == (*(*a1 + 104))(a1)))
    {
      v15 = TSWPAttributeArray::objectForAttributeIndex(a1, v13);
      if ((TSWPAttributeArray::objectIsEquivalentToObject(*(a1 + 28), v15, v17) & 1) == 0)
      {
        v16 = *(*a1 + 456);
        if (v17)
        {
          v16(a1, a3, a4, v17, a6, 0);
          TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(a1, v17, v13, v11, a6);
        }

        else
        {
          v16(a1, a3, a4, 0, a6, 0);
          (*(*a1 + 64))(a1, v13, 1, a6);
        }
      }
    }

    else
    {
      (*(*a1 + 464))(a1, a3, a4, v17, a6, 0);
      (*(*a1 + 56))(a1, v17, a3, *(a1 + 24), v11, a6);
    }
  }

  else
  {
    sub_276EF8C78(a1, v17, a3, a4, v11, a6);
  }
}

void sub_276EFACE0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ((objc_msgSend_preserveParentStorage(v5, v6, v7) & 1) == 0)
  {
    objc_msgSend_setParentStorage_(v9, v8, *(a1 + 16));
  }

  TSWPAttributeArray::didInsertAttribute(a1, v9, v5);
}

void sub_276EFAD80(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  TSWPAttributeArray::loadFromArchive(a1, a2, v7);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = TSWPAttributeArray::charIndexForAttributeIndex(a1, (v5 - 1));
    if (v6 == (*(*a1 + 104))(a1) + 1)
    {
      (*(*a1 + 64))(a1, *(a1 + 24) - 1, 1, 0);
    }
  }
}

void sub_276EFAE74(TSWPAttributeArray *a1)
{
  sub_276EF8828(a1);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276EFAEAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFDA0 = v4;
  TSWP::_AddFlowInfoCommandArchive_default_instance_ = &unk_288608D40;
  if (atomic_load_explicit(scc_info_AddFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFDD0 = 0;
  unk_2812DFDC0 = 0u;
  unk_2812DFDB0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_AddFlowInfoCommandArchive_default_instance_);
}

uint64_t sub_276EFAF68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF938 = v4;
  TSWP::_AnchorAttachmentCommandArchive_default_instance_ = &unk_288607F80;
  if (atomic_load_explicit(scc_info_AnchorAttachmentCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DF978 = 0;
  unk_2812DF968 = 0u;
  unk_2812DF958 = 0u;
  unk_2812DF948 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_AnchorAttachmentCommandArchive_default_instance_);
}

uint64_t sub_276EFB028(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ApplyPlaceholderTextCommandArchive::ApplyPlaceholderTextCommandArchive(&TSWP::_ApplyPlaceholderTextCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ApplyPlaceholderTextCommandArchive_default_instance_);
}

uint64_t sub_276EFB098(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ApplyRubyTextCommandArchive::ApplyRubyTextCommandArchive(&TSWP::_ApplyRubyTextCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ApplyRubyTextCommandArchive_default_instance_);
}

uint64_t sub_276EFB108(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::CharacterStyleChangePropertyCommand_GArchive::CharacterStyleChangePropertyCommand_GArchive(&TSWP::_CharacterStyleChangePropertyCommand_GArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_CharacterStyleChangePropertyCommand_GArchive_default_instance_);
}

uint64_t sub_276EFB178(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ContainedObjectsCommandArchive::ContainedObjectsCommandArchive(&TSWP::_ContainedObjectsCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ContainedObjectsCommandArchive_default_instance_);
}

uint64_t sub_276EFB1E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::ContainedObjectsCommandArchive_AddBehaviorArgs(&TSWP::_ContainedObjectsCommandArchive_AddBehaviorArgs_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ContainedObjectsCommandArchive_AddBehaviorArgs_default_instance_);
}

uint64_t sub_276EFB258(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::ContainedObjectsCommandArchive_RearrangeBehaviorArgs(&TSWP::_ContainedObjectsCommandArchive_RearrangeBehaviorArgs_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ContainedObjectsCommandArchive_RearrangeBehaviorArgs_default_instance_);
}

uint64_t sub_276EFB2C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::ContainedObjectsCommandArchive_RemoveBehaviorArgs(&TSWP::_ContainedObjectsCommandArchive_RemoveBehaviorArgs_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ContainedObjectsCommandArchive_RemoveBehaviorArgs_default_instance_);
}

uint64_t sub_276EFB338(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF568 = v4;
  TSWP::_DummyCommandArchive_default_instance_ = &unk_2886073D0;
  dword_2812DF578 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_DummyCommandArchive_default_instance_);
}

uint64_t sub_276EFB3BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DFF50 = v4;
  TSWP::_EquationInfoGeometryCommandArchive_default_instance_ = &unk_288609210;
  if (atomic_load_explicit(scc_info_EquationInfoGeometryCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFF60 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_EquationInfoGeometryCommandArchive_default_instance_);
}

uint64_t sub_276EFB46C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF698 = v4;
  TSWP::_InsertColumnsCommandArchive_default_instance_ = &unk_288607740;
  if (atomic_load_explicit(scc_info_InsertColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF6B8 = 0u;
  unk_2812DF6A8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_InsertColumnsCommandArchive_default_instance_);
}

uint64_t sub_276EFB524(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DF6D0 = v4;
  TSWP::_InsertRowsCommandArchive_default_instance_ = &unk_2886077F0;
  if (atomic_load_explicit(scc_info_InsertRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *&algn_2812DF6D0[32] = 0u;
  *&algn_2812DF6D0[16] = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_InsertRowsCommandArchive_default_instance_);
}

uint64_t sub_276EFB5DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF778 = v4;
  TSWP::_MergeCellsCommandArchive_default_instance_ = &unk_288607A00;
  if (atomic_load_explicit(scc_info_MergeCellsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF7A8 = 0;
  unk_2812DF798 = 0u;
  unk_2812DF788 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_MergeCellsCommandArchive_default_instance_);
}

uint64_t sub_276EFB698(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ModifyRubyTextCommandArchive::ModifyRubyTextCommandArchive(&TSWP::_ModifyRubyTextCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ModifyRubyTextCommandArchive_default_instance_);
}

uint64_t sub_276EFB708(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DF8B0 = v4;
  TSWP::_ModifyTOCSettingsBaseCommandArchive_default_instance_ = &unk_288607D70;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsBaseCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF8C0 = 0;
  unk_2812DF8C8 = 0;
  qword_2812DF8D0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ModifyTOCSettingsBaseCommandArchive_default_instance_);
}

uint64_t sub_276EFB7BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF8E0 = v4;
  TSWP::_ModifyTOCSettingsForTOCInfoCommandArchive_default_instance_ = &unk_288607E20;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsForTOCInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF8F0 = 0;
  unk_2812DF8F8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ModifyTOCSettingsForTOCInfoCommandArchive_default_instance_);
}

uint64_t sub_276EFB86C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF908 = v4;
  TSWP::_ModifyTOCSettingsPresetForThemeCommandArchive_default_instance_ = &unk_288607ED0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsPresetForThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF918 = 0;
  unk_2812DF920 = 0;
  dword_2812DF928 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ModifyTOCSettingsPresetForThemeCommandArchive_default_instance_);
}

uint64_t sub_276EFB920(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF9B8 = v4;
  TSWP::_MoveColumnsCommandArchive_default_instance_ = &unk_2886080E0;
  if (atomic_load_explicit(scc_info_MoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DF9E8 = 0;
  unk_2812DF9D8 = 0u;
  unk_2812DF9C8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_MoveColumnsCommandArchive_default_instance_);
}

uint64_t sub_276EFB9DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF9F8 = v4;
  TSWP::_MoveRowsCommandArchive_default_instance_ = &unk_288608190;
  if (atomic_load_explicit(scc_info_MoveRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DFA28 = 0;
  unk_2812DFA18 = 0u;
  unk_2812DFA08 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_MoveRowsCommandArchive_default_instance_);
}

uint64_t sub_276EFBA98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ObjectPropertyArchive::ObjectPropertyArchive(&TSWP::_ObjectPropertyArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ObjectPropertyArchive_default_instance_);
}

uint64_t sub_276EFBB08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::ParagraphStyleChangePropertyCommand_GArchive::ParagraphStyleChangePropertyCommand_GArchive(&TSWP::_ParagraphStyleChangePropertyCommand_GArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_ParagraphStyleChangePropertyCommand_GArchive_default_instance_);
}

uint64_t sub_276EFBB78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::PencilAnnotationSelectionTransformerArchive::PencilAnnotationSelectionTransformerArchive(&TSWP::_PencilAnnotationSelectionTransformerArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_PencilAnnotationSelectionTransformerArchive_default_instance_);
}

uint64_t sub_276EFBBE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF708 = v4;
  TSWP::_RemoveColumnsCommandArchive_default_instance_ = &unk_2886078A0;
  if (atomic_load_explicit(scc_info_RemoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF728 = 0u;
  unk_2812DF718 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_RemoveColumnsCommandArchive_default_instance_);
}

uint64_t sub_276EFBCA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFDE0 = v4;
  TSWP::_RemoveFlowInfoCommandArchive_default_instance_ = &unk_288608DF0;
  if (atomic_load_explicit(scc_info_RemoveFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DFE00 = 0u;
  unk_2812DFDF0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_RemoveFlowInfoCommandArchive_default_instance_);
}

uint64_t sub_276EFBD58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF740 = v4;
  TSWP::_RemoveRowsCommandArchive_default_instance_ = &unk_288607950;
  if (atomic_load_explicit(scc_info_RemoveRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF760 = 0u;
  unk_2812DF750 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_RemoveRowsCommandArchive_default_instance_);
}

uint64_t sub_276EFBE10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF668 = v4;
  TSWP::_ReplaceAllUsesOfStyleCommandArchive_default_instance_ = &unk_288607690;
  if (atomic_load_explicit(scc_info_ReplaceAllUsesOfStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF678 = 0;
  unk_2812DF680 = 0;
  qword_2812DF688 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ReplaceAllUsesOfStyleCommandArchive_default_instance_);
}

uint64_t sub_276EFBEC4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DFBB0 = v4;
  TSWP::_SelectionTransformerArchive_default_instance_ = &unk_288608870;
  if (atomic_load_explicit(scc_info_SelectionTransformerArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFBC0 = 0;
  unk_2812DFBC8 = 0;
  byte_2812DFBD0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_SelectionTransformerArchive_default_instance_);
}

uint64_t sub_276EFBF78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF638 = v4;
  TSWP::_SetColumnStyleCommandArchive_default_instance_ = &unk_2886075E0;
  if (atomic_load_explicit(scc_info_SetColumnStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF648 = 0;
  unk_2812DF650 = 0;
  qword_2812DF658 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_SetColumnStyleCommandArchive_default_instance_);
}

uint64_t sub_276EFC02C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::SetObjectPropertiesCommandArchive::SetObjectPropertiesCommandArchive(&TSWP::_SetObjectPropertiesCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_SetObjectPropertiesCommandArchive_default_instance_);
}

uint64_t sub_276EFC09C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFA38 = v4;
  TSWP::_ShapeApplyPresetCommandArchive_default_instance_ = &unk_288608240;
  if (atomic_load_explicit(scc_info_ShapeApplyPresetCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFA48 = 0;
  unk_2812DFA50 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ShapeApplyPresetCommandArchive_default_instance_);
}

uint64_t sub_276EFC14C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DFC30 = v4;
  TSWP::_ShapeContentDescription_default_instance_ = &unk_288608A80;
  if (atomic_load_explicit(scc_info_ShapeContentDescription_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFC40 = 0;
  unk_2812DFC48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ShapeContentDescription_default_instance_);
}

uint64_t sub_276EFC1FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFC08 = v4;
  TSWP::_ShapeSelectionTransformerArchive_default_instance_ = &unk_2886089D0;
  if (atomic_load_explicit(scc_info_ShapeSelectionTransformerArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFC18 = 0;
  unk_2812DFC20 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ShapeSelectionTransformerArchive_default_instance_);
}

uint64_t sub_276EFC2AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFB88 = v4;
  TSWP::_ShapeStyleSetValueCommandArchive_default_instance_ = &unk_2886087C0;
  if (atomic_load_explicit(scc_info_ShapeStyleSetValueCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFB98 = 0;
  unk_2812DFBA0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_ShapeStyleSetValueCommandArchive_default_instance_);
}

uint64_t sub_276EFC35C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::StorageActionCommandArchive::StorageActionCommandArchive(&TSWP::_StorageActionCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_StorageActionCommandArchive_default_instance_);
}

uint64_t sub_276EFC3CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFA60 = v4;
  TSWP::_StyleBaseCommandArchive_default_instance_ = &unk_2886082F0;
  if (atomic_load_explicit(scc_info_StyleBaseCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFA70 = 0;
  unk_2812DFA78 = 0;
  qword_2812DFA80 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_StyleBaseCommandArchive_default_instance_);
}

uint64_t sub_276EFC480(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DFA90 = v4;
  TSWP::_StyleCreateCommandArchive_default_instance_ = &unk_2886083A0;
  if (atomic_load_explicit(scc_info_StyleCreateCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DFAA8 = 0;
  qword_2812DFAA0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_StyleCreateCommandArchive_default_instance_);
}

uint64_t sub_276EFC534(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFB18 = v4;
  TSWP::_StyleDeleteCommandArchive_default_instance_ = &unk_2886085B0;
  if (atomic_load_explicit(scc_info_StyleDeleteCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812DFB30 = 0;
  qword_2812DFB28 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_StyleDeleteCommandArchive_default_instance_);
}

uint64_t sub_276EFC5E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::StyleRenameCommandArchive::StyleRenameCommandArchive(&TSWP::_StyleRenameCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_StyleRenameCommandArchive_default_instance_);
}

uint64_t sub_276EFC658(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFB40 = v4;
  TSWP::_StyleReorderCommandArchive_default_instance_ = &unk_288608660;
  if (atomic_load_explicit(scc_info_StyleReorderCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFB50 = 0;
  unk_2812DFB58 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_StyleReorderCommandArchive_default_instance_);
}

uint64_t sub_276EFC708(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFAE8 = v4;
  TSWP::_StyleUpdateCommandArchive_default_instance_ = &unk_288608500;
  if (atomic_load_explicit(scc_info_StyleUpdateCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFAF8 = 0;
  unk_2812DFB00 = 0;
  qword_2812DFB08 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_StyleUpdateCommandArchive_default_instance_);
}

uint64_t sub_276EFC7BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DFB68 = v4;
  TSWP::_StyleUpdatePropertyMapCommandArchive_default_instance_ = &unk_288608710;
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DFB78 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_StyleUpdatePropertyMapCommandArchive_default_instance_);
}

uint64_t sub_276EFC86C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF988 = v4;
  TSWP::_TextApplyThemeCommandArchive_default_instance_ = &unk_288608030;
  if (atomic_load_explicit(scc_info_TextApplyThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF998 = 0;
  unk_2812DF9A0 = 0;
  qword_2812DF9A8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TextApplyThemeCommandArchive_default_instance_);
}

uint64_t sub_276EFC920(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF588 = v4;
  TSWP::_TextCommandArchive_default_instance_ = &unk_288607480;
  if (atomic_load_explicit(scc_info_TextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF5B8 = 0u;
  unk_2812DF5A8 = 0u;
  unk_2812DF598 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_TextCommandArchive_default_instance_);
}

uint64_t sub_276EFC9DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::TextCommentReplyCommandArchive::TextCommentReplyCommandArchive(&TSWP::_TextCommentReplyCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_TextCommentReplyCommandArchive_default_instance_);
}

uint64_t sub_276EFCA4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF7F8 = v4;
  TSWP::_UpdateDateTimeFieldCommandArchive_default_instance_ = &unk_288607B60;
  if (atomic_load_explicit(scc_info_UpdateDateTimeFieldCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF818 = 0u;
  unk_2812DF808 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWP::_UpdateDateTimeFieldCommandArchive_default_instance_);
}

uint64_t sub_276EFCB04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPCommandArchives.pb.cc", a4);
  TSWP::UpdateFlowInfoCommandArchive::UpdateFlowInfoCommandArchive(&TSWP::_UpdateFlowInfoCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWP::_UpdateFlowInfoCommandArchive_default_instance_);
}

uint64_t TSWP::DummyCommandArchive::DummyCommandArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2886073D0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_2886073D0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSWP::DummyCommandArchive *TSWP::DummyCommandArchive::DummyCommandArchive(TSWP::DummyCommandArchive *this, const TSWP::DummyCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886073D0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSWP::DummyCommandArchive::~DummyCommandArchive(TSWP::DummyCommandArchive *this)
{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::DummyCommandArchive::default_instance(TSWP::DummyCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DummyCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_DummyCommandArchive_default_instance_;
}

uint64_t *TSWP::DummyCommandArchive::Clear(TSWP::DummyCommandArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::DummyCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v18) & 1) == 0)
  {
    while (1)
    {
      v6 = (v18 + 1);
      v7 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_27;
      }

      v6 = TagFallback;
      v7 = v14;
LABEL_6:
      if (v7 == 8)
      {
        v10 = (v6 + 1);
        LODWORD(v11) = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v12 = *v10;
        v11 = (v11 + (v12 << 7) - 128);
        if ((v12 & 0x80000000) == 0)
        {
          v10 = (v6 + 2);
LABEL_18:
          v18 = v10;
          *(a1 + 24) = v11;
          v5 = 1;
          goto LABEL_19;
        }

        v15 = google::protobuf::internal::VarintParseSlow32(v6, v11);
        v18 = v15;
        *(a1 + 24) = v16;
        v5 = 1;
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_27:
          v18 = 0;
          goto LABEL_26;
        }
      }

LABEL_19:
      if (sub_276EA4A1C(a3, &v18))
      {
        goto LABEL_26;
      }
    }

    v6 = (v18 + 2);
LABEL_5:
    v18 = v6;
    goto LABEL_6;
  }

LABEL_26:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *TSWP::DummyCommandArchive::_InternalSerialize(TSWP::DummyCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v4 = *(this + 6);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2[1] = v4 | 0x80;
      v5 = v4 >> 7;
      if (v4 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v5 | 0x80;
          v6 = v5 >> 7;
          ++a2;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
        *(a2 - 1) = v6;
      }

      else
      {
        a2[2] = v5;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
    }
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}